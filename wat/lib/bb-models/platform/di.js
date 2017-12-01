Wat.Models.DI = Wat.Models.Model.extend({
    actionPrefix: 'di',
    
    defaults: {
    },
    
    parse: function (response) {
        // If parse is done in details view, we get head and default tags 
        // to independent attributes
        if (this.detailsView && response.status != 0) {
            Wat.I.M.showMessage({message: "ERROR #" + response.status + ": " + response.message, messageType: "error"});
            return {};
        }
        
        if (response) {
            if (response.rows) {
                var model = response.rows[0];
            }
            else {
                var model = response;
            }
        }
        else {
            var model = response;
        }
        
        if (model != undefined) {
            var tags = [];
            var tagHead = false;
            var tagDefault = false;
            
            $(model.tags).each( function (index, tag) {
                if (tag.tag == 'head') {
                    tagHead = true;
                }
                else if (tag.tag == 'default') {
                    tagDefault = true;
                }
                else if (tag.tag != model.version) {
                    tags.push(tag.tag);
                }
            });
            
            model.tags = tags.join(',');
            model.default = tagDefault ? 1 : 0;
            model.head = tagHead ? 1 : 0;
            
            if (model.elapsed_time != null) {
                model.remaining_time = Wat.U.getRemainingTime(model.elapsed_time, model.percentage);
            }
        }
        
        return Wat.Models.Model.prototype.parse.apply(this, [response]);
    }

});