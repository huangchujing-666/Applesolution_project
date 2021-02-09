Ext.define('com.palmary.passcode.js.edit', {
    gridPanel: undefined,
    initTag: function (tab, url, title, id, itemId) {

        // Check user seesion 
        checkSession();

        var form_tool = new com.embraiz.component.form_tool();
        var tool_div = form_tool.genTool(tab, id);
        var target_div = form_tool.gen_form_div(tab);
        var _id = id.substring(id.indexOf(':') + 1, id.length);

        var form = new com.embraiz.component.form();
        form.viewForm(target_div, '../product/getModule/' + _id);
        form.showToolBar(tool_div, '../product/ToolbarData/' + _id, id);

    }
});