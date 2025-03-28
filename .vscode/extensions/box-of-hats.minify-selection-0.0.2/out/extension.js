"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
const minifySelectionCommandProvider = require("./minifySelectionCommandProvider");
function activate(context) {
    context.subscriptions.push(vscode.commands.registerCommand("extension.minifySelection.minifySelectedCSS", () => {
        minifySelectionCommandProvider.minifySelectedCss();
    }));
}
exports.activate = activate;
function deactivate() { }
exports.deactivate = deactivate;
//# sourceMappingURL=extension.js.map