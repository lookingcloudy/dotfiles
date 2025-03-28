"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const vscode = require("vscode");
var CleanCSS = require("clean-css");
const UglifyJs = require("uglify-js");
const minifyHtml = require("html-minifier").minify;
function minifySelectedCss() {
    let textEditor = vscode.window.activeTextEditor;
    if (!textEditor) {
        vscode.window.showErrorMessage("No active text editor found.");
        return;
    }
    let selectedText = textEditor.document.getText(textEditor.selection);
    let options = {};
    let output = new CleanCSS(options).minify(selectedText);
    let minified = output.styles;
    if (minified === "") {
        vscode.window.showErrorMessage(`Could not minify selection`);
        return;
    }
    let snippet = new vscode.SnippetString(minified);
    textEditor.insertSnippet(snippet);
}
exports.minifySelectedCss = minifySelectedCss;
//# sourceMappingURL=minifySelectionCommandProvider.js.map