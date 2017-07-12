Wat.Views.EditorView = Wat.Views.MainView.extend({
    initialize: function(params) {
        this.extendEvents(this.editorCommonEvents);
        
        switch (params.action) {
            case 'create':
                this.templateEditor = Wat.TPL['editorNew_' + this.qvdObj];
                this.model = this.getModel('create');
                this.renderCreate(params.target, this);
                break;
            case 'update':
                this.templateEditor = Wat.TPL['editor_' + this.qvdObj];
                this.model = this.getModel('update');
                this.renderUpdate(params.target, this);
                break;
            case 'massive_update':
                this.renderMassiveUpdate(params.target, this);
                break;
        }
    },
    
    editorCommonEvents: {
        'click  .js-no-change-reset': 'resetMassiveField',
        'change .js-massive-editor-table input[type="checkbox"]': 'changeMassiveField',
        'change .js-massive-editor-table input[type="text"].datetimepicker': 'changeMassiveField',
        'input  .js-massive-editor-table input[type="text"]': 'changeMassiveField',
        'input  .js-massive-editor-table textarea': 'changeMassiveField',
        'change .js-massive-editor-table select': 'changeMassiveFieldSelect',
        'click  .js-editor-tabs>li': 'clickEditorTab',
    },
    
    renderCreate: function (target, that) {
        this.render(target, that);
    },
    
    renderUpdate: function (target, that) {
        if (Wat.CurrentView.viewKind == 'list') {
            Wat.CurrentView.model = Wat.CurrentView.collection.where({id: Wat.CurrentView.selectedItems[0]})[0];
        }
        
        this.render(target, that);
    },
    
    renderMassiveUpdate: function (target, that) {
        var that = Wat.CurrentView;
        
        // Add common parts of editor to dialog
        that.template = _.template(
                    Wat.TPL.editorCommon, {
                        classifiedByTenant: 0,
                        editorMode: 'massive_edit',
                        isSuperadmin: Wat.C.isSuperadmin(),
                        blocked: undefined,
                        properties: [],
                        editorCategories: Wat.I.editorCategories[this.qvdObj],
                        cid: this.cid
                    }
                );
        
        $(this.el).html(that.template);

        // Add specific parts of editor to dialog
        that.template = _.template(
                    Wat.TPL.editorMassive, {
                        model: that.model
                    }
                );

        $(that.editorContainer).html(that.template);
        
        var enabledProperties = $.inArray(that.qvdObj, QVD_OBJS_WITH_PROPERTIES) != -1;
        var enabledEditProperties = Wat.C.checkACL(that.qvdObj + '.update-massive.properties');
        
        if (enabledProperties && enabledEditProperties) {
            var filters = {};
            
            var classifiedByTenant = $.inArray(that.qvdObj, QVD_OBJS_CLASSIFIED_BY_TENANT) != -1;

            // In massive edition for superadmins, only is available the specific properties for superadmins
            if (Wat.C.isSuperadmin() && classifiedByTenant) {
                filters['tenant_id'] = SUPERTENANT_ID;
            }

            that.model = new that.collection.model(); 
            
            if (that.selectedItems.length > 1) {
                that.model = that.collection.where({id: that.selectedItems[0]})[0];
            }

            that.editorMode = 'massive-edit';
                
            Wat.A.performAction(that.qvdObj + '_get_property_list', {}, filters, {}, this.renderProperties, that, undefined, {"field":"key","order":"-asc"});
        }
        
        that.configureMassiveEditor (that);
        
        this.setupEditorTabs();
    },
    
    render: function (target, that) {
        var that = that || Wat.CurrentView;
        
        var isSuperadmin = Wat.C.isSuperadmin();
                
        if (Wat.CurrentView.viewKind == 'details' || Wat.CurrentView.viewKind == 'admin' || Wat.CurrentView.editingFromList) {
            var editorMode = 'edit';
            delete Wat.CurrentView.editingFromList;
        }
        else {
            var editorMode = 'create';
        }
        
        var classifiedByTenant = $.inArray(that.qvdObj, QVD_OBJS_CLASSIFIED_BY_TENANT) != -1;
        
        // Add common parts of editor to dialog
        that.template = _.template(
                    Wat.TPL.editorCommon, {
                        classifiedByTenant: editorMode == 'create' ? classifiedByTenant : 0,
                        isSuperadmin: isSuperadmin,
                        editorMode: editorMode,
                        blocked: that.model ? that.model.attributes.blocked : 0,
                        editorCategories: Wat.I.editorCategories[this.qvdObj],
                        cid: this.cid
                    }
                );
        
        $(this.el).html(that.template);
        
        if (editorMode == 'create' && isSuperadmin && classifiedByTenant) { 
            var params = {
                'actionAuto': 'tenant',
                'selectedId': that.selectedTenant || 0,
                'controlId': 'tenant_editor',
                'chosenType': 'advanced100'
            };
            
            var existsOutTenant = $.inArray(that.qvdObj, QVD_OBJS_EXIST_OUT_TENANT) != -1;

            if (existsOutTenant) {
                    params['startingOptions'] = {};
                    params['startingOptions'][COMMON_TENANT_ID] = 'None (Shared)';   
            }
            
            Wat.A.fillSelect(params, function () {
                // Remove supertenant from tenant selector
                var existsInSupertenant = $.inArray(that.qvdObj, QVD_OBJS_EXIST_IN_SUPERTENANT) != -1;

                if (!existsInSupertenant) {
                    $('select[name="tenant_id"] option[value="0"]').remove();
                    
                    Wat.I.updateChosenControls('[name="tenant_id"]');
                }
                
                Wat.B.bindEvent('change', '.tenant-selector select[name="tenant_id"]', Wat.B.editorBinds.updatePropertyRows);
                $('[name="tenant_id"]').trigger('change');
            });
        }
        
        // Add specific parts of editor to dialog
        that.template = _.template(
                    this.templateEditor, {
                        model: that.model || that.collection.where({id: that.selectedItems[0]})[0]
                    }
                );
        
        $(that.editorContainer).html(that.template);
        
        // Apply expanding plugin to make textareas expandable
        $("textarea").expanding();
        
        // Custom Properties
        
        if (!Wat.C.checkACL(Wat.CurrentView.qvdObj + '.update.properties')) {
            var enabledProperties = false;
        }
        // Get enabled properties value from constant. Properties could be disabled by variable
        else if (that.enabledProperties != undefined) {
            var enabledProperties =  that.enabledProperties;
            // Clean enabledProperties variable
            delete that.enabledProperties;
        }
        else {
            var enabledProperties =  $.inArray(that.qvdObj, QVD_OBJS_WITH_PROPERTIES) != -1;
        }
        
        switch (editorMode) {
            case 'create':
                var enabledEditProperties = Wat.C.checkACL(that.qvdObj + '.create.properties');
                break;
            case 'edit':
                var enabledEditProperties = Wat.C.checkACL(that.qvdObj + '.update.properties');
                break;
        }

        if (enabledProperties && enabledEditProperties) {
            var filters = {};
            
            var classifiedByTenant = $.inArray(that.qvdObj, QVD_OBJS_CLASSIFIED_BY_TENANT) != -1;
            
            if (editorMode == 'edit' && classifiedByTenant) {
                if (Wat.C.isMultitenant() && Wat.C.isSuperadmin()) {
                    filters['-or'] = ['tenant_id', that.model.get('tenant_id'), 'tenant_id', SUPERTENANT_ID];
                }
                else {
                    filters['tenant_id'] = that.model.get('tenant_id');
                }
            }
            
            that.editorMode = editorMode;
            
            Wat.A.performAction(that.qvdObj + '_get_property_list', {}, filters, {}, that.renderProperties, that, undefined, {"field":"key","order":"-asc"});
        }
        
        // Store scrollHeight of the dialog container
        Wat.I.dialogScrollHeight = $('.ui-dialog .js-dialog-container')[0].scrollHeight;
        
        Wat.Views.MainView.prototype.render.apply(this, [target, that]);
        
        this.setupEditorTabs();
    },
    
    renderProperties: function (that) {
        var properties = {};
        if (that.retrievedData.total > 0) {
            $.each(that.retrievedData.rows, function (iProp, prop) {
                var value = '';
                
                // Massive editor will not show any value
                if (that.editorMode != 'massive-edit' && that.model && that.model.get('properties') && that.model.get('properties')[prop.property_id]) {
                    value = that.model.get('properties')[prop.property_id].value;
                }
                
                properties[prop.id] = {
                    value: value,
                    key: prop.key,
                    description: prop.description,
                    tenant_id: prop.tenant_id,
                    property_id: prop.id,
                };
            });
        }
            
        // Override properties including not setted on element
        that.model.set({properties: properties});
        
        that.template = _.template(
                    Wat.TPL.editorCommonProperties, {
                        properties: that.model && that.model.attributes.properties ? that.model.attributes.properties : {},
                        editorMode: that.editorMode
                    }
                );
        
        $(that.editorPropertiesContainer).html(that.template);
        
        Wat.T.translate();

        if (that.editorMode != 'create' || !Wat.C.isSuperadmin()) {
            $('.js-editor-property-row').show();
        }
        else if (Wat.C.isMultitenant() && Wat.C.isSuperadmin() && $('[name="tenant_id"]').val() != undefined) {
            $('.js-editor-property-row[data-tenant-id="' + $('[name="tenant_id"]').val() + '"]').show();
            $('.js-editor-property-row[data-tenant-id="' + SUPERTENANT_ID + '"]').show();
        }
        else {
            var existsInSupertenant = $.inArray(that.qvdObj, QVD_OBJS_EXIST_IN_SUPERTENANT) != -1;
            if (!existsInSupertenant) {
                $('.js-editor-property-row[data-tenant-id="' + Wat.C.tenantID + '"]').show();
            }
        }

        // Store scrollHeight of the dialog container
        Wat.I.dialogScrollHeight = $('.ui-dialog .js-dialog-container')[0].scrollHeight;
        
        delete that.editorMode;
    },
    
    getModel: function (action) {
        switch (action) {
            case 'create':
                var model = new Wat.Models.OSF();
                break;
            case 'update':
                if (Wat.CurrentView.viewKind == 'list') {
                    var model = Wat.CurrentView.collection.where({id: Wat.CurrentView.selectedItems[0]})[0];
                }
                else {
                    var model = Wat.CurrentView.model;
                }
                break;
        }
        
        return model;
    },
    
    validateForm: function () {
        var context = '.' + this.cid;
        
        return Wat.I.validateForm(context);
    },
    
    // Parse properties from create/edit forms
    parseProperties: function (mode) {
        var propIds = $('.' + this.cid + '.editor-container input.custom-prop-id');
        var propValues = $('.' + this.cid + '.editor-container input.custom-prop-value');
        
        switch (mode) {
            case 'create':
                var createPropertiesACL = this.qvdObj + '.create.properties';
                
                if (!createPropertiesACL) {
                    return;
                }
                break;
            case 'update':
                switch(Wat.CurrentView.viewKind) {
                    case 'list':
                        var updatePropertiesACL = this.qvdObj + '.update-massive.properties';
                        break;
                    case 'details':
                        var updatePropertiesACL = this.qvdObj + '.update.properties';
                        break;
                }
                
                if (!updatePropertiesACL) {
                    return;
                }
                break;
        }
        
        var setProps = {};
        
        for(i=0;i<propIds.length;i++) {
            var id = propIds.eq(i);
            var value = propValues.eq(i);
            
            if (!Wat.I.isMassiveFieldChanging(id.val())) {
                continue;
            }
            
            setProps[id.val()] = value.val();
        }
        
        var properties = {
            'set' : setProps
        };
        
        return properties;
    },
    
    updateMassiveElement: function (dialog, id) {
        var properties = this.parseProperties('update');
        
        var arguments = {};
        
        if (!$.isEmptyObject(properties.set) && Wat.C.checkACL(this.qvdObj + '.update-massive.properties')) {
            arguments['__properties_changes__'] = properties;
        }
        
        var context = $('.' + this.cid + '.editor-container');
        
        var description = context.find('textarea[name="description"]').val();
        
        if (Wat.I.isMassiveFieldChanging("description") && Wat.C.checkACL(this.qvdObj + '.update-massive.description')) {
            arguments["description"] = description;
        }
        
        var filters = {"id": id};
        
        Wat.CurrentView.resetSelectedItems();
        
        var auxModel = {};
        switch (this.qvdObj) {
            case 'user':
                auxModel = new Wat.Models.User();
                break;
            case 'vm':
                auxModel = new Wat.Models.VM();
                break;
            case 'host':
                auxModel = new Wat.Models.Host();
                break;
            case 'osf':
                auxModel = new Wat.Models.OSF();
                break;
            case 'di':
                auxModel = new Wat.Models.DI();
                break;
            case 'administrator':
                auxModel = new Wat.Models.Admin();
                break;
            case 'role':
                auxModel = new Wat.Models.Role();
                break;
            case 'tenant':
                auxModel = new Wat.Models.Tenant();
                break;
        }
        
        Wat.CurrentView.updateModel(arguments, filters, Wat.CurrentView.fetchList, auxModel);
    },
    
    resetMassiveField: function (e) {
        var name = $(e.target).attr('data-field');
        $(e.target).addClass('invisible');

        if ($('select[name="' + name + '"]').length) {
            $('select[name="' + name + '"]').find('option[value=""]').prop('selected', true);
            $('select[name="' + name + '"]').trigger('chosen:updated');
        }
        else {
            $('input[name="' + name + '"], textarea[name="' + name + '"]').val('').attr('placeholder', $.i18n.t('No changes'));
        }
    },
    
    changeMassiveField: function (e) {
        var name = $(e.target).attr('name');
        $(e.target).removeAttr('placeholder');
        $('.js-no-change-reset[data-field="' + name + '"]').removeClass('invisible');
    },
    
    changeMassiveFieldSelect: function (e) {
        var name = $(e.target).attr('name');
        if ($(e.target).val() != '') {
            $('.js-no-change-reset[data-field="' + name + '"]').removeClass('invisible');
        }
        else {
            $('.js-no-change-reset[data-field="' + name + '"]').addClass('invisible');
        }
    },
    
    clickEditorTab: function (e) {
        var tab = $(e.target).attr('data-tab');
        
        this.switchEditorTab(tab);
    },
    
    switchEditorTab: function (tab) {
        var valid = this.validateForm();
        
        if (!valid) {
            return;
        }
        
        $('[data-tab-field]').hide();
        $('[data-tab-field="' + tab + '"]').show();
        
        $('[data-tab]').removeClass('tab-active');
        $('[data-tab="' + tab + '"]').addClass('tab-active');
        
        // Hide continue button in last tab
        var lastTab = $('[data-tab]:last-child').attr('data-tab');
        if (tab == lastTab) {
            $('.js-next-tab').hide();
        }
        else {
            $('.js-next-tab').show();
        }
    },
    
    setupEditorTabs: function () {
        // If no tabs are present, setup is not necessary
        if ($('.' + this.cid + '.js-editor-tabs').length == 0) {
            return;
        }
        
        // Remove empty categories
        $.each($('[data-tab]'), function (iTab, tab) {
            var tabCode = $(tab).attr('data-tab');
            var catFields = $('[data-tab-field="' + tabCode + '"]');
            
            if ($(catFields).length == 0) {
                $(tab).remove();
            }
        });
        
        // Show only fields of the first tab
        var firstTab = $('[data-tab]:first-child').attr('data-tab');
        
        $('[data-tab="' + firstTab + '"]').addClass('tab-active');
        $('[data-tab-field]').hide();
        $('[data-tab-field="' + firstTab + '"]').show();
    },
    
    openFormErrorsDialog: function () {
        var that = this;
        
        var dialogConf = {
            title: $.i18n.t('Errors in form'),
            buttons : {
                "OK": function () {
                    // Send primary dialog to front again
                    $('.ui-dialog').eq(0).css('z-index','');
                    
                    Wat.I.closeDialog($(this));
                },
            },
            buttonClasses: ['fa fa-check'],
            
            fillCallback: function (target) {
                // Add common parts of editor to dialog
                var template = _.template(
                    Wat.TPL.formErrors, {
                    }
                );

                target.html(template);
            },
            width: 200,
        }

        Wat.CurrentView.warningDialog = Wat.I.dialog(dialogConf);
        
        // Add secondary dialog class to new dialog to give different look
        Wat.CurrentView.warningDialog.parent().addClass('ui-dialog-secondary');
        Wat.CurrentView.warningDialog.dialog("option", "position", {my: "center", at: "center", of: window});
        // Send primary dialog to back because jquery ui doesnt handle it properly
        $('.ui-dialog').eq(0).css('z-index','100');
    },
});