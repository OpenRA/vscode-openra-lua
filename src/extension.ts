/*---------------------------------------------------------
 * Copyright 2021 The OpenRA Developers (see AUTHORS)
   This file is part of OpenRA, which is free software. It is made
   available to you under the terms of the GNU General Public License
   as published by the Free Software Foundation, either version 3 of
   the License, or (at your option) any later version. For more
   information, see COPYING.
 *--------------------------------------------------------*/

import * as vscode from 'vscode';

export function activate(context: vscode.ExtensionContext) {

	const newScript = vscode.languages.registerCompletionItemProvider('lua', {

		provideCompletionItems(document: vscode.TextDocument, position: vscode.Position, token: vscode.CancellationToken, context: vscode.CompletionContext) {
			const snippetCompletion = new vscode.CompletionItem('New OpenRA Lua mission script.');
			snippetCompletion.insertText = new vscode.SnippetString('WorldLoaded = function()\n\nend\n\nTick = function()\n\nend');
			snippetCompletion.documentation = new vscode.MarkdownString("Inserts a barebone script with the function the engine will call.");

			const userInterfaceCompletion = new vscode.CompletionItem('UserInterface');

			return [
				snippetCompletion,
				userInterfaceCompletion,
			];
		}
	});

	const ui = vscode.languages.registerCompletionItemProvider(
		'lua',
		{
			provideCompletionItems(document: vscode.TextDocument, position: vscode.Position) {

				const linePrefix = document.lineAt(position).text.substr(0, position.character);
				if (!linePrefix.endsWith('UserInterface.')) {
					return undefined;
				}

				const setMissionText = new vscode.CompletionItem('SetMissionText', vscode.CompletionItemKind.Method);
				setMissionText.documentation = "Displays a text message at the top center of the screen.";

				return [
					setMissionText,
				];
			}
		},
		'.'
	);

	context.subscriptions.push(newScript, ui);

	const result = new vscode.MarkdownString();
	result.appendCodeblock("SetMissionText(string text, color = nil)", "lua");
	result.appendMarkdown("---\nDisplays a text message at the top center of the screen.");

	vscode.languages.registerHoverProvider('lua', {
		provideHover(document, position) {
			const hoveredWordPosition = document.getWordRangeAtPosition(position, /[\w.]+/);
			const hoveredWord = document.getText(hoveredWordPosition);
			if (hoveredWord == 'UserInterface.SetMissionText')
				return new vscode.Hover(result);
		}
	});

	vscode.workspace.getConfiguration().update('Lua.diagnostics.globals', [ 'UserInterface' ] );
}
