Wat.Views.PropertyView = Wat.Views.MainView.extend({
    sideContainer: '.bb-setup-side',
    secondaryContainer: '.bb-setup',
    setupOption: 'properties',
    qvdObj: 'property',
    selectedObj: 'all',
    selectedTenant: '0',
    editorViewClass: Wat.Views.PropertyEditorView,
    
    breadcrumbs: {
        'screen': 'Home',
        'link': '#',
        'next': {
            'screen': 'WAT Management',
            'next': {
                'screen': 'Properties'
            }
        }
    },
    
    initialize: function (params) {
        this.collection = new Wat.Collections.Properties(params);
        
        // Disable pagination
        this.collection.block = 0;
                
        Wat.Views.MainView.prototype.initialize.apply(this, [params]);
        
        var templates = Wat.I.T.getTemplateList('properties');
        
        Wat.A.getTemplates(templates, this.render); 
    },
    
    events: {
        'change select[name="obj-qvd-select"]': 'changeObjSelect',
        'change select[name="tenant-select"]': 'changeTenantSelect',
        'click input[name="property-check"]': 'checkProperty',
        'click .js-button-new': 'openNewElementDialog',
        'click .js-button-edit': 'openEditElementDialog',
        'click .js-button-delete': 'askDelete',
    },
    
    render: function () {
        // Fill the html with the template and the model
        this.template = _.template(
            Wat.TPL.property, {
                selectedObj: this.selectedObj,
                selectedTenant: this.selectedTenant,
                limitByACLs: false,
                cid: this.cid,
                qvdObj: this.qvdObj
            }
        );

        $(this.el).html(this.template);
        
        Wat.T.translateAndShow();
        
        if (Wat.C.isSuperadmin()) {
            // Fill Tenant select on viees customization view
            var params = {
                'actionAuto': 'tenant',
                'controlName': 'tenant-select',
                'selectedId': this.selectedTenant,
                'chosenType': 'advanced100'
            };

            Wat.A.fillSelect(params, function () {
                Wat.I.updateChosenControls('[name="tenant-select"]');
            });  
        }
        
        var filters = {};
        
        if (Wat.C.isSuperadmin()) {
            filters['tenant_id'] = this.selectedTenant;
        }
        
        $('.bb-property-list').html(HTML_LOADING);
                
        var that = this;

        that.collection.filters = filters;
        
        that.collection.fetch({      
            complete: function () {
                that.renderPropertyList(that);
            }
        });
        
        this.printBreadcrumbs(this.breadcrumbs, '');
    },
    
    renderPropertyList: function (that) { 
        this.template = _.template(
            Wat.TPL.listProperty, {
                model: this.model,
                cid: this.cid,
                properties: that.collection,
                selectedObj: $('select[name="obj-qvd-select"]').val()
            }
        );

        $('.bb-property-list').html(this.template);
        
        Wat.T.translate();
    },
    
    changeObjSelect: function () {
        var selectedObj = $('select[name="obj-qvd-select"]').val();
        
        $('.js-zero-properties').hide();
        
        switch (selectedObj) {
            case 'all':
                $('.js-only-all-properties').show();
                $('.js-row-property').show();
                if ($('.js-row-property').length == 0) {
                    $('.js-zero-properties').show();
                }
                break;
            default:
                //$('.js-only-all-properties').hide();
                $('.js-row-property').hide();
                $('.js-row-property-' + selectedObj).show();

                if ($('.js-row-property-' + selectedObj).length == 0) {
                    $('.js-zero-properties').show();
                }
                break;
        }
    },
    
    changeTenantSelect: function () {
        var newSelectedTenant = $('select[name="tenant-select"]').val();
        
        this.selectedTenant = newSelectedTenant;
        
        filters = {
            "tenant_id":  newSelectedTenant,
        };
        
        $('.bb-property-list').html(HTML_LOADING);
        
        var that = this;

        that.collection.filters = filters;
        
        that.collection.fetch({
            complete: function () {
                that.renderPropertyList(that);
            }
        });
    },
    
    checkProperty: function (e) {
        var checked = $(e.target).is(':checked');
        var propertyId = $(e.target).attr('data-property-id');
        var propertyInId = $(e.target).attr('data-property-in-id');
        var qvdObj = $(e.target).attr('data-qvd-object');
        var args = {};
        var filters = {};
        
        if (checked) {
            var action = qvdObj + '_create_property_list';
            args = {
                'property_id': propertyId
            };
        }
        else {
            var action = qvdObj + '_delete_property_list';
            filters = {
                'id': propertyInId
            };
        }

        
        Wat.A.performAction(action, args, filters, {}, function (that) {
            if (that.retrievedData.status == STATUS_SUCCESS) {
                var row = $(e.target).parent().parent();
                if (checked) {
                    Wat.I.M.showMessage({message: i18n.t('Successfully created'), messageType: 'success'}, that.retrievedData);
                    $(row).addClass('js-row-property-' + qvdObj);
                    
                    // Store ID of created link between property list and object
                    $(e.target).attr('data-property-in-id', that.retrievedData.rows[0].id);
                }
                else {
                    Wat.I.M.showMessage({message: i18n.t('Successfully deleted'), messageType: 'success'}, that.retrievedData);
                    $(row).removeClass('js-row-property-' + qvdObj);
                    var selectedObj = $('select[name="obj-qvd-select"]').val();
                    
                    if (selectedObj == qvdObj) {
                        $(row).hide();
                        if ($('.js-row-property-' + qvdObj).length == 0) {
                            $('.js-zero-properties').show();
                        }
                    }
                    
                    // Restore ID of link between property list and object
                    $(e.target).attr('data-property-in-id', 0);
                }
                
            }
            else {
                if (checked) {
                    Wat.I.M.showMessage({message: i18n.t('Error creating'), messageType: 'error'}, that.retrievedData);
                }
                else {
                    Wat.I.M.showMessage({message: i18n.t('Error deleting'), messageType: 'error'}, that.retrievedData);
                }
            }
        }, this);
    },
    
    openEditElementDialog: function (e) {
        // This editor is different than the others, so the modelation needs to done here because item selection is done with button click instead checkbox
        var propertyId = $(e.target).attr('data-property-id');
        this.model = this.collection.where({property_id: parseInt(propertyId)})[0];
        
        this.editingFromList = true;
        
        Wat.Views.MainView.prototype.openEditElementDialog.apply(this, [e]);
    },
    
    askDelete: function (e) {
        var propertyId = $(e.target).attr('data-property-id');
        
        // Doesnt work, do manually
        // this.model = this.collection.where({property_id: propertyId});
        
        var that = this;
        $.each(this.collection.models, function (iMod, mod) {
            if (mod.get('property_id') == propertyId) {
                that.model = mod;
            }
        });
        
        Wat.I.confirm('dialog/confirm-undone', this.applyDelete, this);
    },
        
    applyDelete: function (that) {
        that.deleteModel({id: that.model.get('property_id')}, that.render, that.model);
    },
});