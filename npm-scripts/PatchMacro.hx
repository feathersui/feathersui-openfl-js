/*
	Feathers UI
	Copyright 2020 Bowler Hat LLC. All Rights Reserved.

	This program is free software. You can redistribute and/or modify it in
	accordance with the terms of the accompanying license agreement.
 */

#if macro
import haxe.macro.Compiler;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type.ClassType;
import sys.FileSystem;
import sys.io.File;

class PatchMacro {
	public macro static function applyPatch():Void {
		var patchExpr = "if(typeof $haxeUID === \"undefined\") $haxeUID = 0;";
		var filePath = Sys.getCwd() + "../lib/feathersui-patch.js";
		var output = File.write(filePath);
		output.writeString(patchExpr);
		output.close();
	}
}
#end
