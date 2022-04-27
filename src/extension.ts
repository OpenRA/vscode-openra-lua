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

export function activate(context: vscode.ExtensionContext) {

	const apiPath = path.resolve(context.extensionPath, "api");
	const config = vscode.workspace.getConfiguration("Lua");
	const mapPath = path.resolve(context.storagePath as string, "map");
	fs.mkdirSync(mapPath, { recursive: true } );
	config.update('workspace.library', [ apiPath, mapPath ], false );

	for (const document of vscode.workspace.textDocuments) {
		addMapGlobals(document, mapPath);
	}

	vscode.workspace.onDidOpenTextDocument(document => addMapGlobals(document, mapPath));

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
				mapLua = mapLua.concat("---@type Actor\n");
				mapLua = mapLua.concat(actorMatch[1] + " = { }\n\n");
			}
		}
	}

	const file = path.resolve(mapPath, path.basename(document.fileName));

	try {
		if (fs.readFileSync(file).length == mapLua.length)
			return;
	}
	catch {
		// file does not exist
	}

	try {
		fs.writeFileSync(file, mapLua);
	}
	catch (e) {
		vscode.window.showErrorMessage((e as Error).message);
	}

	const answer = await vscode.window.showInformationMessage(`There are unresolved map globals.`, 'Reload', 'Dismiss');
	if (answer == 'Reload')
		vscode.commands.executeCommand('workbench.action.reloadWindow');
}