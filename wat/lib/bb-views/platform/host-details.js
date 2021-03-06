Wat.Views.HostDetailsView = Wat.Views.DetailsView.extend({  
    qvdObj: 'host',
    liveFields: ['state', 'number_of_vms_connected'],

    initialize: function (params) {
        this.model = new Wat.Models.Host(params);
        Wat.Views.DetailsView.prototype.initialize.apply(this, [params]);
    },
    
    renderSide: function () {
        var sideCheck = this.checkSide({'host.see.vm-list': '.js-side-component1', 'host.see.log': '.js-side-component2'});

        if (sideCheck === false) {
            return;
        }
        
        if (sideCheck['host.see.vm-list']) { 
            var sideContainer = '.' + this.cid + ' .bb-details-side1';     
            
            // Render Virtual Machines list on side
            var params = {};
            params.whatRender = 'list';
            params.listContainer = sideContainer;
            params.forceListColumns = {name: true};

            if (Wat.C.checkGroupACL('hostVmEmbeddedInfo')) {
                params.forceListColumns['info'] = true;
            }

            // Check ACLs to show or not info icons in Hosts list
            params.forceInfoRestrictions = {};
            if (Wat.C.checkACL('host.see.vm-list-block')) {
                params.forceInfoRestrictions.block = true;
            }
            if (Wat.C.checkACL('host.see.vm-list-expiration')) {
                params.forceInfoRestrictions.expiration = true;
            }
            if (Wat.C.checkACL('host.see.vm-list-state')) {
                params.forceInfoRestrictions.state = true;
            }
            if (Wat.C.checkACL('host.see.vm-list-user-state')) {
                params.forceInfoRestrictions.user_state = true;
            }

            params.forceSelectedActions = {};
            params.forceListActionButton = null;
            params.block = 5;
            params.filters = {"host_id": this.elementId};

            this.sideViews.push(new Wat.Views.VMListView(params));
        }
        
        
        if (sideCheck['host.see.log']) { 
            var sideContainer = '.' + this.cid + ' .bb-details-side2';

            // Render Related log list on side
            var params = this.getSideLogParams(sideContainer);

            this.sideViews.push(new Wat.Views.LogListView(params));
        
            this.renderLogGraph(params);
        }
    },
    
    bindEditorEvents: function() {
        Wat.Views.DetailsView.prototype.bindEditorEvents.apply(this);
    }
});