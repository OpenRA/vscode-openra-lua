'use strict';

/*
 Copyright (c) The OpenRA Developers and Contributors
 This file is part of OpenRA, which is free software. It is made
 available to you under the terms of the GNU General Public License
 as published by the Free Software Foundation, either version 3 of
 the License, or (at your option) any later version. For more
 information, see LICENSE.
 */

import * as vscode from 'vscode';

// This entire file is a copy of ORAIDE's OpenRAFolderUtils.cs, just with inferior implementations.

const Makefile: string = "Makefile";
const VersionFile: string = "VERSION";
const ModConfigFile: string = "mod.config";
const UtilityFile: string = "OpenRA.Utility.*";

// Contains "Makefile" and "VERSION" files.
export async function isOpenRaRepositoryFolder() : Promise<boolean> {
	let files = await vscode.workspace.findFiles(Makefile);
	if (files.length != 0) {
		files = await vscode.workspace.findFiles(VersionFile);
		return files.length != 0;
	}

	return false;
}

// Contains "Makefile" and "mod.config" files.
export async function isOpenRaModSdkRepositoryFolder() : Promise<boolean> {
	let files = await vscode.workspace.findFiles(Makefile);
	if (files.length != 0) {
		files = await vscode.workspace.findFiles(ModConfigFile);
		return files.length != 0;
	}

	return false;
}

// Contains an utility file and a "VERSION" file.
export async function isOpenRaInstallationFolder() : Promise<boolean> {
	let files = await vscode.workspace.findFiles(UtilityFile);
	if (files.length != 0) {
		files = await vscode.workspace.findFiles(VersionFile);
		return files.length != 0;
	}

	return false;
}