Ext.define('com.palmary.membersearch.js.index', {
    
    gridPanel: undefined,
    addTag: function () {
        new com.embraiz.tag().openNewTag('searchgroup:401', 'Member Search Group:Add', 'com.palmary.membersearch.js.insert', 'iconUser16', 'user:add');
    },
    initTag: function (tab, url, title, id, itemId) {

        // Check user seesion 
        checkSession();

        target_div = document.createElement("div");
        tab.getEl().dom.lastChild.appendChild(target_div);
        grider_div = document.createElement("div");
        tab.getEl().dom.lastChild.appendChild(grider_div);

        Ext.Ajax.request({
            url: "../table/InitWithSearchColumn/MemberAdvanceSearch",
            async: true,
            success: function (o) {
                var data_json = Ext.decode(o.responseText);
                new com.embraiz.component.gridSearch().render(target_div, grider_div, data_json, true);
            },
            scope: this
        });       
    }
});