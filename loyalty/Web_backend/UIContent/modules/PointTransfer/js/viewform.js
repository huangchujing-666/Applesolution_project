Ext.define('com.palmary.pointtransfer.js.viewform', {
    init_pop_up: function (winform, id, itemId, itemName, refreshUrl) {

        // Check user seesion 
        checkSession();

        winform.setHeight(400);
        winform.setWidth(750);

        var _id = id.substring(id.indexOf(':') + 1, id.length);

        Ext.Ajax.request({
            url: '../PointTransfer/ViewForm/' + _id,
            success: function (o) {
                var data_json = Ext.decode(o.responseText);
                new com.embraiz.component.form().editForm(winform, data_json, null, refreshUrl, 'remarkList:' + itemId, itemName);
                
            },
            scope: this
        });
    }
});