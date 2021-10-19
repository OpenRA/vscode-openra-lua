/*
 Copyright 2021 The OpenRA Developers (see AUTHORS)
 This file is part of OpenRA, which is free software. It is made
 available to you under the terms of the GNU General Public License
 as published by the Free Software Foundation, either version 3 of
 the License, or (at your option) any later version. For more
 information, see COPYING.
 */

import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {

	const extensionId = "vscode-openra-lua";
	const extensionPath = vscode.extensions.getExtension(extensionId)?.extensionPath;
	const folderPath = extensionPath+"\\"+"api";
	const config = vscode.workspace.getConfiguration("Lua");
	config.update('Lua.workspace.userThirdParty', [ folderPath ] );

	const newScript = vscode.languages.registerCompletionItemProvider('lua', {

		provideCompletionItems(document: vscode.TextDocument, position: vscode.Position, token: vscode.CancellationToken, context: vscode.CompletionContext) {
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