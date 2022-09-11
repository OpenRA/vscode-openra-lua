/*
 Copyright 2021 The OpenRA Developers (see AUTHORS)
 This file is part of OpenRA, which is free software. It is made
 available to you under the terms of the GNU General Public License
 as published by the Free Software Foundation, either version 3 of
 the License, or (at your option) any later version. For more
 information, see LICENSE.
 */

import * as vscode from 'vscode';
import * as path from 'path';
import * as fs from 'fs';

export async function activate(context: vscode.ExtensionContext) {

	const apiPath = path.resolve(context.extensionPath, "api");
	const config = vscode.workspace.getConfiguration("Lua");
	const mapPath = path.resolve(context.storagePath as string, "map");
	fs.mkdirSync(mapPath, { recursive: true } );
	config.update('workspace.library', [ apiPath, mapPath ], false );

	// Set the default diagnostic setting for the base Lua extension.
	// Otherwise we get tons of "Undefined global" warnings for actors defined in map.yaml files.
	// Only set it if no value is set to it at any level to avoid overriding user settings, and set only for the current workspace.
	const baseLuaExtensionConfiguration = vscode.workspace.getConfiguration("Lua");
	const value = baseLuaExtensionConfiguration.inspect("diagnostics.groupFileStatus");
	if ((value?.defaultValue === undefined || value.defaultValue === null || Object.keys(value.defaultValue as Object).length === 0)
		&& (value?.globalValue === undefined || value.globalValue === null || Object.keys(value.globalValue as Object).length === 0)
		&& (value?.workspaceValue === undefined || value.workspaceValue === null || Object.keys(value.workspaceValue as Object).length === 0)
		&& (value?.workspaceFolderValue === undefined || value.workspaceFolderValue === null || Object.keys(value.workspaceFolderValue as Object).length === 0)) {

			// Only set if the current workspace is an OpenRA-related one.
			// Using ORAIDE's language server's checks for "is this an OpenRA folder / OpenRA ModSDK folder / etc." might be a bit much,
			// so using a simpler version of the check, inspired by the ORAIDE VSCode extension.
			const luaFiles = await vscode.workspace.findFiles('**/mod.yaml');
			if (luaFiles.some(f => fs.readFileSync(f.fsPath, 'utf8').includes('\t'))) {
				await baseLuaExtensionConfiguration.update("diagnostics.groupFileStatus", { global: "Opened" }, false);
			}
	}

	for (const document of vscode.workspace.textDocuments) {
		addMapGlobals(document, mapPath);
	}

	vscode.workspace.onDidOpenTextDocument(document => addMapGlobals(document, mapPath));

	vscode.workspace.onDidCloseTextDocument(document => {

		if (document.languageId != 'lua')
			return;

		const generatedMapLuaFilePath = path.resolve(mapPath, path.basename(document.fileName));
		if (generatedMapLuaFilePath != document.fileName)
			fs.rmSync(generatedMapLuaFilePath);
	});

	const newScript = vscode.languages.registerCompletionItemProvider('lua', {

		provideCompletionItems() {
			const snippetCompletion = new vscode.CompletionItem('New OpenRA Lua mission script.');
			snippetCompletion.insertText = new vscode.SnippetString('WorldLoaded = function()\n\nend\n\nTick = function()\n\nend');
			snippetCompletion.documentation = new vscode.MarkdownString("Inserts a barebone script with the function the engine will call.");

			return [
				snippetCompletion,
			];
		}
	});

	context.subscriptions.push(newScript);
}

export async function addMapGlobals(document: vscode.TextDocument, mapPath: string) {

	if (!document || !document.fileName.endsWith(".lua"))
		return;

	const mapYamlPath = path.join(path.dirname(document.fileName), "map.yaml");
	if (!fs.existsSync(mapYamlPath))
		return;

	const mapYaml = fs.readFileSync(mapYamlPath, 'utf8');
	const lines = mapYaml.split('\n');
	let actorSection = false;
	let mapLua = "";
	for (const line of lines)
	{
		if (line.startsWith("Actors:"))
		{
			actorSection = true;
			continue;
		}

		if (actorSection)
		{
			if (line === "")
			{
				actorSection = false;
				continue;
			}

			if (line.startsWith("\t\t"))
				continue;

			const actorMatch = line.match("\t(\\w*): (\\w*)");
			if (actorMatch != null)
			{
				mapLua = mapLua.concat("--- " + actorMatch[2] + "\n");
				mapLua = mapLua.concat("---@type actor\n");
				mapLua = mapLua.concat(actorMatch[1] + " = { }\n\n");
			}
		}
	}

	const file = path.resolve(mapPath, path.basename(document.fileName));

	if (fs.existsSync(file) && fs.readFileSync(file).length == mapLua.length)
		return;

	try {
		fs.writeFileSync(file, mapLua);
	}
	catch (e) {
		vscode.window.showErrorMessage((e as Error).message);
	}
}