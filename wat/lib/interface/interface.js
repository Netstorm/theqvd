// Pure interface utilities
Wat.I = {
        // Styles Customizer Tool (interface-customize.js)
    C: {},
    // Graphs (interface-graphs.js)
    G: {},
    // Templates (interface-templates.js)
    T: {},
    // Messages (interface-messages.js)
    M: {},
    
    menu : {},
    mobileMenu : {},
    cornerMenu : {},
    
    fixedFilters: {},
    
    getCornerMenu: function () {
        return $.extend(true, [], this.cornerMenu);
    },
    
    detailsFields: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        role: {},
        administrator: {},
        log: {}
    }, 
    
    editorCategories: {},
    
    detailsDefaultFields: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        role: {},
        administrator: {},
        log: {}
    },
    
    getDetailsFields: function (qvdObj) {
        return $.extend(true, {}, this.detailsFields[qvdObj]);
    },
    
    listFields: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        role: {},
        administrator: {},
        log: {}
    },
    
    listDefaultFields: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        role: {},
        administrator: {},
        log: {}
    }, 
    
    getListColumns: function (qvdObj) {
        return $.extend(true, {}, this.listFields[qvdObj]);
    },
    
    getListDefaultColumns: function (qvdObj) {
        return $.extend(true, {}, this.listDefaultFields[qvdObj]);
    },
    
    restoreListColumns: function () {
        this.listFields = $.extend(true, {}, this.listDefaultFields);
    },
    
    formFilters: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        log: {}
    }, 
    
    formDefaultFilters: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        log: {}
    },
    
    getFormFilters: function (qvdObj) {
        return $.extend(true, {}, this.formFilters[qvdObj]);
    },   
    
    getFormDefaultFilters: function (qvdObj) {
        return $.extend(true, {}, this.formDefaultFilters[qvdObj]);
    },
        
    restoreFormFilters: function () {
        this.formFilters = $.extend(true, {}, this.formDefaultFilters);
    },
    
    setCustomizationFields: function (qvdObj) {
        return;
        var filters = {};

        // If qvd object is not specified, all will be setted
        if (qvdObj) {
            filters.qvd_obj = qvdObj;
        }

        Wat.A.performAction('config_field_get_list', {}, filters, {}, this.setCustomizationFieldsCallback, this);
    },
    
    setCustomizationFieldsCallback: function (that) {
        if (that.retrievedData.status === 0 && that.retrievedData) {
            var fields = that.retrievedData.rows;

            $.each(fields, function (iField, field) {
                // If field options are not defined, we keep the default options doing nothing
                if (!field.filter_options) {
                    return;
                }
                
                var fieldName = field.name;               
                var qvdObj = field.qvd_obj;
                
                // Fix bad JSON format returned by API
                optionsJSON = field.filter_options.replace(/\\"/g,'"');
                optionsJSON = optionsJSON.replace(/^"/,'');
                optionsJSON = optionsJSON.replace(/"$/,'');
                
                var options = JSON.parse(optionsJSON);
                
                if (options.listFields) {
                    $.each(options.listFields, function (columnName, display) {
                        that.listFields[qvdObj][columnName].display = display;
                    });
                }
                
                if (options.mobileFilters) {
                    $.each(options.mobileFilters, function (columnName, display) {
                        that.formFilters[qvdObj][columnName].displayMobile = display;
                    });
                }
                
                if (options.desktopFilters) {
                    $.each(options.desktopFilters, function (columnName, display) {
                        that.formFilters[qvdObj][columnName].displayDesktop = display;
                    });
                }
            });            
        }
    },
    
    selectedActions: {
        vm: [],
        user: [],
        host: [],
        osf: [],
        di: []
    },
    
    getSelectedActions: function (qvdObj) {
        return $.extend(true, {}, this.selectedActions[qvdObj]);
    },
    
    listActionButton: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {}
    },
    
    docSections: {
    },
    
    getListActionButton: function (qvdObj) {
        return $.extend(true, [], this.listActionButton[qvdObj]);
    },
    
    // Breadcrumbs
    
    homeBreadCrumbs: {
        'screen': 'Home',
        'link': '#'
    },
    
    // List breadcrumbs
    listBreadCrumbs: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        administrator: {},
        tenant: {},
        role: {},
        acl: {},
        log: {}
    },   
        
    getListBreadCrumbs: function (qvdObj) {
        var breadcrumbs = this.listBreadCrumbs[qvdObj];
        
        return breadcrumbs;
    },
    
    // List breadcrumbs
    detailsBreadCrumbs: {
        vm: {},
        user: {},
        host: {},
        osf: {},
        di: {},
        administrator: {},
        tenant: {},
        role: {},
        acl: {},
        log: {}
    },   
        
    getDetailsBreadCrumbs: function (qvdObj) {
        var breadcrumbs = this.detailsBreadCrumbs[qvdObj];
        
        this.applyBredcrumbsACLs(breadcrumbs);
        
        return breadcrumbs;
    },
    
    applyBredcrumbsACLs: function (breadcrumbs) {
        var level = breadcrumbs;
        while (1) {
            if (level.linkACL != undefined && !Wat.C.checkACL(level.linkACL)) {
                delete level.link;
            }
            
            if (level.next != undefined) {
                level = level.next;
            }
            else {
                break;
            }
        }
    },
    
    showAll: function () {
        var firstLoad = $('.content').html() == '' || !this.showed;
        
        if (firstLoad) {
            this.showed = true;
        }

        this.showContent();

		// When session is not started, header will not be shown
        if (Wat.C.sid && firstLoad) {
            $('.header-wrapper').css('visibility','visible').hide().fadeIn('fast');
        }
        
        if (!Wat.C.sid) {
            $('.header-wrapper').hide();
        }

        if (firstLoad) {
            $('.wrapper').css('visibility','visible').hide().fadeIn('fast');
            $('.menu').css('visibility','visible');
            $('.js-content').css('visibility','visible').hide().fadeIn('fast');
            $('.breadcrumbs').css('visibility','visible').hide().fadeIn('fast');
            $('.js-menu-corner').css('visibility','visible');
            $('.js-mobile-menu-hamburger').css('visibility','visible');
            $('.js-server-datetime-wrapper').css('visibility','visible');
            $('.related-doc').css('visibility','visible');                
            $('.loading').show();
        }
    },
    
    showContent: function () {
        $('.breadcrumbs').css('visibility','visible').hide().show();
        $('.js-content').css('visibility','visible').hide().show();
        $('.footer').css('visibility','visible').hide().show();
        $('.loading').hide();
        $('.related-doc').css('visibility','visible').hide().show();
        $('.js-shown-elements').hide().show();
        
        this.adaptSideSize();
    },

    showLoading: function () {
        var firstLoad = $('.wrapper').css('visibility') == 'hidden';

        if (!firstLoad) {
            $('.breadcrumbs').hide();
            $('.js-content').hide();
            $('.footer').hide();
            $('.loading').show();
            $('.related-doc').hide();
        }
    },
    
    // Adapt size of the side layer to the content to show separator line from top to bottom
    adaptSideSize: function () {
        // Set to the side box the same height of the content box
        $('.js-side').css('min-height', $('.list-block').height());
    },
    
    addSortIcons: function (cid) {
        $('.' + cid + ' th.sortable').prepend(HTML_SORT_ICON);
    },
    
    updateSortIcons: function (view) {
        // If not view is passed, use currentView
            if (view === undefined) {
                view = Wat.CurrentView;
            }
        
        // Get the context to the view
            var context = $('.' + view.cid);

        // Add sort icons to the table headers            
            var sortClassDefault = 'fa-sort';
            var sortClassAsc = 'fa-sort-asc';
            var sortClassDesc = 'fa-sort-desc';
                
            if (view.sortedBy != '') {
                switch(view.sortedOrder) {
                    case '': 
                        var sortClassSorted = '';
                        break;
                    case '-asc':            
                        var sortClassSorted = sortClassAsc;
                        break;
                    case '-desc':
                        var sortClassSorted = sortClassDesc;
                        break;
                }
            }

            context.find('th.sortable i.sort-icon').removeClass(sortClassDefault + ' ' + sortClassAsc + ' ' + sortClassDesc);
            context.find('th.sortable i.sort-icon').addClass(sortClassDefault);

            if (view.sortedBy != '') {
                context.find('[data-sortby="' + view.sortedBy + '"]').addClass('sorted');
                context.find('[data-sortby="' + view.sortedBy + '"] i').removeClass(sortClassDefault);
                context.find('[data-sortby="' + view.sortedBy + '"] i').addClass(sortClassSorted);
            }
    },
    
    enableDataPickers: function () {
        var options = {
            dayOfWeekStart: 1,
            format:'Y-m-d H:i',
            minDate: 0
        };
        
        var optionsPast = {
            dayOfWeekStart: 1,
            lang: Wat.C.language,
            format:'Y-m-d',
            maxDate: 0,
            timepicker: false,
            onSelectDate: function (content, target) {
                $(target).trigger('input');
            },
            closeOnDateSelect: true
        };
        
        options['lang'] = Wat.C.getEffectiveLan();
        optionsPast['lang'] = Wat.C.getEffectiveLan();
        
        $('.datetimepicker').datetimepicker(options);
        
        $('.datepicker-past').datetimepicker(optionsPast);
    },
    
    chosenConfiguration: function () {
        // Convert the filter selects to library chosen style
            var chosenOptions = {};
            chosenOptions.no_results_text = i18n.t('No results match');
            chosenOptions.placeholder_text_single = i18n.t('Loading');
            chosenOptions.placeholder_text_multiple = i18n.t('Select some options');
            chosenOptions.search_contains = true;

            var chosenOptionsSingle = jQuery.extend({}, chosenOptions);
            chosenOptionsSingle.disable_search = true;
            chosenOptionsSingle.width = "150px";

            var chosenOptionsSingle100 = jQuery.extend({}, chosenOptionsSingle);
            chosenOptionsSingle100.width = "100%"; 

            var chosenOptionsAdvanced = jQuery.extend({}, chosenOptions);
        
            var chosenOptionsAdvanced100 = jQuery.extend({}, chosenOptions);
            chosenOptionsAdvanced100.width = "100%";
        
            // Store options to be retrieved in dinamic loads
            this.chosenOptions = {
                'single': chosenOptionsSingle,
                'single100': chosenOptionsSingle100,
                'advanced': chosenOptionsAdvanced,
                'advanced100': chosenOptionsAdvanced100
            };

            $('.filter-control select.chosen-advanced').chosen(chosenOptionsAdvanced100);
            $('.filter-control select.chosen-single').chosen(chosenOptionsSingle100);
            $('select.chosen-single').chosen(chosenOptionsSingle100);
    },
    
    chosenElement: function (selector, type) {
        if (type == 'single100' || type == 'advanced100' ) {
            $(selector).addClass('mob-col-width-100');
        }
        
        $(selector).chosen(this.chosenOptions[type]);
        
        // Workaround to fix concurrency problems when chosen controls too soon after modify options
        setTimeout(function  () {
            $(selector).trigger('chosen:updated');
        }, 100);
    },
    
    updateChosenControls: function (selector) {
        var selector = selector || 'select.chosen-advanced, select.chosen-single';
        $(selector).trigger('chosen:updated');
                                
        if ($(selector).find('option').length == 0) {
            $(selector + '+.chosen-container span').html($.i18n.t('Empty'));
        }

    },
    
    disableChosenControls: function (selector) {
        var selector = selector || 'select.chosen-advanced, select.chosen-single';
        $(selector).prop('disabled', true).trigger('chosen:updated');
    },    
    
    enableChosenControls: function (selector) {
        var selector = selector || 'select.chosen-advanced, select.chosen-single';
        $(selector).prop('disabled', false).trigger('chosen:updated');
    },
    
    // Set specific menu section as selected
    setMenuOpt: function (opt) {
        // Set as selected the menu option
        $('.menu-option').removeClass('menu-option--selected');
        $('.menu-option[data-target="' + opt + '"]').addClass('menu-option--selected');
        
        // Change styles on corner menu current option
        var menu = $('.menu-option[data-target="' + opt + '"]').attr('data-menu');
        
        $('.js-menu-corner .menu-option').removeClass('menu-option-current');
        $('.js-menu-corner .js-menu-option-' + menu).addClass('menu-option-current');
        
        if (opt == 'home' || !opt) {
            var menu = 'platform';
        }
        $('.menu').hide();
        $('.js-' + menu + '-menu').show();
    },
    
    renderMain: function () { 
        var that = this;
        
        // Fill the html with the template and the collection
        var template = _.template(
            Wat.TPL.main, {
                loggedIn: Wat.C.loggedIn,
                cornerMenu: this.cornerMenu,
                forceDesktop: $.cookie('forceDesktop')
            });
        
        $('.bb-super-wrapper').html(template);
        
        that.renderFooter();
        
        if (Wat.C.loggedIn) {
            this.renderMenu();
        }
        else {
            $('.js-menu-corner').hide();
            $('.js-mobile-menu-hamburger').hide();
            $('.js-server-datetime-wrapper').hide();
        }
        
        this.updateLoginOnMenu();
    },
    
    renderFooter: function () {
        var template = _.template(
            Wat.TPL.footer, {
                footerLinks: Wat.C.publicConfig.footer && Wat.C.publicConfig.footer.link ? Wat.C.publicConfig.footer.link : {},
                lan: Wat.C.getEffectiveLan()
            });
        
        $('.bb-footer').html(template);
    },
    
    renderMenu: function () {
        // Fill the html with the template and the collection
        var template = _.template(
            Wat.TPL.menu, {
                userMenu: Wat.I.userMenu,
                helpMenu: Wat.I.helpMenu,
                configMenu: Wat.I.configMenu,
                setupMenu: Wat.I.setupMenu,
                menu: Wat.I.menu,
                mobileMenu: Wat.I.mobileMenu
            });

        $('.bb-menu').html(template);
    },
    
    tooltipBind: function () {
        $('[title]').qtip({
            position: { 
                target: 'mouse', // Track the mouse as the positioning target
                adjust: { x: 5, y: 5 }, // Offset it slightly from under the mouse
                viewport: $(window)
            },
            adjust: {
                method: 'flip'
        }
        });
    },
    
    tagsInputConfiguration: function () {
        $('[name="tags"]').tagsInput({
            'defaultText': i18n.t('Add a tag')
        });
    },
    
    dialog: function (dialogConf, that) {
        var div = document.createElement("DIV");
        $(div).addClass('dialog-container js-dialog-container bb-dialog-container');
        document.body.appendChild(div);
        
        $(div).dialog({
            dialogClass: "loadingScreenWindow",
            resizable: false,
            resize: true,
            dialogClass: 'no-close',
            collision: 'fit',
            modal: true,
            buttons: dialogConf.buttons,
            open: function(e) {
                // Empty dialog content
                    $(e.target).html('');

                // Close message if open
                    $('.message-close').trigger('click');

                // Set title content manually to support HTML
                    $(e.target).prev().html(dialogConf.title);
                
                // Buttons style
                    var buttons = $(e.target).next().find('button');
                    var buttonsText = $(e.target).next().find(".ui-dialog-buttonset .ui-button .ui-button-text");

                    // Delete jQuery UI default classes
                    buttons.attr('class', '');
                    // Add our button class
                    buttons.addClass('button');
                
                    $.each (buttonsText, function (iBT, button) {
                        Wat.T.translateElementContain($(button));
                        $(button).addClass(dialogConf.buttonClasses[iBT]);
                    });
                
                // Call to the callback function that will fill the dialog
                    dialogConf.fillCallback($(this), that);
                
                // Translate dialog strings
                    Wat.T.translateElement($(this).find('[data-i18n]'));
                
                // Focus on first text input
                    $(this).find('input[type="text"]').eq(0).trigger('focus');
                
                // Disable scrolling in window to improve dialog experience
                    $('html, body').css({
                        'overflow': 'hidden',
                        'height': '100%'
                    });
            },
            
            close: function () {
                // Enable scrolling in window when close
                    $('html, body').attr('style', '');
                    $(this).empty().dialog('destroy');
            }
        });
        
        return $(div);
    },
    
    updateLoginOnMenu: function () {
        $('.js-menu-corner').find('.js-login').html(Wat.C.getLoginData());
    },
    
    controls: {
        CheckBox: function (params) {
            var checked = '';
            if (params.checked){
                checked = 'checked';
            }

            var control = '<input type="checkbox" value="1" ' + checked + '/>';

            return control;
        },
    },
    
    getFieldTypeName: function (type) {
        var fieldType = '';
        switch(type) {
            case 'text':
                fieldType = 'Text input';
                break;
            case 'select':
                fieldType = 'Combo box';
                break;
        }
        
        return fieldType;
    },
    
    validateForm: function (context) {
        var fieldsToValidate = 'visible';
        
        if ($(context + '.js-editor-tabs').length) {
            var fieldsToValidate = 'all';
        }
        
        switch (fieldsToValidate) {
            case 'all':
                var blankControls = $( context + " input[data-required]:blank" );
                break;
            case 'visible':
                var blankControls = $( context + " input[data-required]:blank:visible" );
                break;
        }
        
        if(blankControls.length > 0) {
            blankControls.addClass('not_valid');
            blankControls.parent().find('.validation-message').remove();
            blankControls.parent().append('<div class="second_row--error validation-message">' + i18n.t('Required field') + '</div>');
            
            // Switch to error tab if necessary
            if ($(context + '.js-editor-tabs').length) {
                var dataField = $(blankControls).eq(0).closest('tr').attr('data-tab-field');
                var errorTab = $('[data-tab="' + dataField + '"]');
                if (!$(errorTab).hasClass('tab-active')) {
                    $(errorTab).trigger('click');
                }
            }
            
            return false;
        }
        
        var equalControls = $( context + " input[data-equal]:visible" );
        var equalValues = {};
        
        var returnFalse = false;
        
        $.each(equalControls, function (iEqual, equal) {
            var equalID = $(equal).attr('data-equal');
            if (equalValues[equalID]) {
                if (equalValues[equalID] != $(equal).val()) {
                    $(equal).addClass('not_valid');
                    $(equal).parent().find('.validation-message').remove();
                    $(equal).parent().append('<div class="second_row--error validation-message">' + i18n.t('Value doesnt match') + '</div>');
                    returnFalse = true;
                }
            }
            else {
                equalValues[equalID] = $(equal).val();
            }
        });
        
        var anySelectedControls = $('[data-any-selected]');
        $.each(anySelectedControls, function (iAny, any) {
            if (!$(any).val()) {
                $(any).parent().find('.chosen-single').addClass('not_valid');
                $(any).parent().find('.validation-message').remove();
                $(any).parent().append('<div class="second_row--error validation-message">' + i18n.t('No value is selected') + '</div>');
                returnFalse = true;
            }
        });
        
        if (returnFalse) {
            return false;
        }
        
        return true;
    },
    
    
    // Update the indicator of selected items situated under the list table
    updateSelectedItems: function (selectedItems, that) {
        var that = that || Wat.CurrentView;
        
        if (selectedItems == 0) {
            this.hideSelectedItemsMenu(that.cid);
        }
        else {
            this.showSelectedItemsMenu(that.selectedActions, that.cid);
            
            this.checkVisibilityConditions(that);
                
            if (selectedItems == 1) {
                $('.js-only-massive[data-cid="' + that.cid + '"]').hide();
                $('.js-only-one[data-cid="' + that.cid + '"]').show();
            }
            else {
                $('.js-only-one[data-cid="' + that.cid + '"]').hide();
                $('.js-only-massive[data-cid="' + that.cid + '"]').show();
            }
        }
        
        $('.elements-selected[data-cid="' + that.cid + '"]').html(selectedItems);
    },
    
    checkVisibilityConditions: function (that) {
        var that = that || Wat.CurrentView;
        
        if ($('[data-visibility-conditioned]').length > 0) {
            $.each($('[data-visibility-conditioned]'), function (i, element) {
                var conditionType = $(element).attr('data-visibility-cond-type');
                var conditionField = $(element).attr('data-visibility-cond-field');
                var conditionValue = $(element).attr('data-visibility-cond-value');
                    
                // Process AND/OR clauses

                // For single and OR clauses, necessary matches will be just one
                var necessaryMatches = 1;
                
                // AND
                if (conditionValue.indexOf(' AND ') != -1) {
                    var conditionValues = conditionValue.split(' AND ');
                    var necessaryMatches = conditionValues.length;
                }
                // OR
                else if (conditionValue.indexOf(' OR ') != -1) {
                    var conditionValues = conditionValue.split(' OR ');
                }
                // Single
                else {
                    var conditionValues = [conditionValue];
                }
                
                $(element).hide();
                
                var positiveItems = 0;
                
                $.each(that.selectedItems, function (i, selectedId) {
                    var selectedModel = that.collection.where({id: selectedId})[0];      
                    
                    // If any item is out of view (other page), all options will be shown
                    if (selectedModel == undefined) {
                        $(element).show();
                        return false;
                    }
                    
                    var matches = 0;
                    $.each(conditionValues, function (iVal, conditionValue) {     
                        switch(conditionType) {
                            case 'eq':
                                    if (selectedModel.get(conditionField) == conditionValue) {
                                            matches++;   
                                    }
                                break;
                            case 'ne':
                                    if (selectedModel.get(conditionField) != conditionValue) {
                                            matches++;     
                                    }
                                break;
                        }
                    });
                    
                    if (matches >= necessaryMatches) {
                        positiveItems++;
                    }
                });
                
                // If any item was positive in check, show the conditioned option
                if (positiveItems > 0) {
                    $(element).show();
                }
            });
        }
    },

    hideSelectedItemsMenu: function () {
        $('.js-side.filter').show();
        $('.js-action-selected').hide("slide");
        $('.list-block').css('margin-left', '');
    },
    
    showSelectedItemsMenu: function (selectedActions, cid) {
        var selectedActions = selectedActions || Wat.CurrentView.selectedActions;
        var cid = cid || Wat.CurrentView.cid;
        
        // Fill the html with the template of the selected actions
        var template = _.template(
            Wat.TPL.selectedOptionsMenu, {
                selectedActions: selectedActions,
                cid: cid
            });
        
        $('.bb-action-selected').html(template);
        
        $('.js-side.filter').hide();
        $('.list-block').css('margin-left', '15%');
        $('.js-action-selected').show("slide");

        Wat.T.translate();
    },
    
    confirm: function (templateName, successCallback, that, loadingBlock) {        
        var dialogConf = {
            title: '<i class="fa fa-question"></i>',
            buttons : {
                "Cancel": function () {
                    Wat.I.closeDialog($(this));
                },
                "Accept": function () {
                    Wat.I.closeDialog($(this));
                    if (loadingBlock) {
                        Wat.I.loadingBlock($.i18n.t('Please, wait while action is performed') + '<br><br>' + $.i18n.t('Do not close or refresh the window'));
                    }
                    successCallback(that);
                }
            },
            buttonClasses : ['fa fa-ban js-button-cancel', 'fa fa-check js-button-accept'],
            fillCallback : function(target) { 
                var templates = Wat.I.T.getTemplateList('confirm', {templateName: templateName});

                Wat.A.getTemplates(templates, Wat.I.fillTemplate, {
                    target: target,
                    templateName: 'confirmTemplate'
                });
            }
        }
        
        $("html, body").animate({ scrollTop: 0 }, 200);
        this.dialog(dialogConf);
    },
    
    loadingBlock: function (message) {
        $('.loading-big-message').html(message);
        $('.loading-big').show();
        $('html, body').css({
            'overflow': 'hidden',
            'height': '100%'
        });
    },
    
    loadingUnblock: function () {
        $('.loading-big').hide();
        $('html, body').attr('style', '');
    },
    
    loadDialogDoc: function (guideSection) {
        var dialogConf = {};

        dialogConf.title = $.i18n.t("Documentation");

        dialogConf.buttons = {
            "Read full documentation": function (e) {
                Wat.I.closeDialog($(this));
                window.location = '#documentation/' + guideSection[0].guide;
            },
            Close: function (e) {
                Wat.I.closeDialog($(this));
            }
        };

        dialogConf.buttonClasses = ['fa fa-book js-button-read-full-doc', 'fa fa-check js-button-close'];

        dialogConf.fillCallback = function (target, that) {
            // Back scroll of the div to top position
            target.html('');
            $('.js-dialog-container').animate({scrollTop:0});

            // Fill div with section documentation
            $.each (guideSection, function (iGS, gS) {
                Wat.D.fillDocSection(gS.guide, gS.section, undefined, undefined, target);
            });
        };


        Wat.I.dialog(dialogConf, this);
    },
    
    getFilterStartingOptions: function (options) {
        if (!options) {
            return undefined;
        }
        
        var returnedOptions = {};
        
        $.each (options, function (iOption, option) {
            returnedOptions[option.value] = option.text;
        });
        
        return returnedOptions;
    },
    
    getFilterSelectedId: function (options) {
        if (!options) {
            return undefined;
        }
        
        var selectedId = FILTER_ALL;
        
        $.each (options, function (iOption, option) {
            if (option.selected) {
                selectedId = option.value;
                return false;
            }
        });
        
        return selectedId;
    },
    
    goTop: function () {
        $('html,body').animate({
            scrollTop: 0
        }, 'fast');
    },
    
    // Return view where the affected model of collection is. Useful to recover focus from embedded views or dialogs
    getRealView: function (that) {
        var realView = null;
        
        // If view where code is executed is the root view, this will be the real view
        if (Wat.CurrentView.cid == that.cid) {
            realView = Wat.CurrentView;
        }
        // If there is a parent view, this will be the real view
        else if (that.parentView) {
            realView = that.parentView;
        }
        else {
            $.each (Wat.CurrentView.sideViews, function (iV, view) {
                if (view != undefined && view.cid == that.cid) {
                    realView = view;
                }
            });
            $.each (Wat.CurrentView.embeddedViews, function (iV, view) {
                if (view != undefined && view.cid == that.cid) {
                    realView = view;
                }
            });
        }
        
        return realView;
    },
    
    // Get first view among current and side views with a determinate function
    getUsefulView: function (qvdObj, functionName) {
        var usefulView = null;
        if (typeof Wat.CurrentView[functionName] == 'function' && Wat.CurrentView.qvdObj == qvdObj) {
            usefulView = Wat.CurrentView;
        }
        else {
            $.each (Wat.CurrentView.sideViews, function (iV, view) {
                if (view != undefined && typeof view[functionName] == 'function' && view.qvdObj == qvdObj) {
                    usefulView = view;
                }
            });
            $.each (Wat.CurrentView.embeddedViews, function (iV, view) {
                if (view != undefined && typeof view[functionName] == 'function' && view.qvdObj == qvdObj) {
                    usefulView = view;
                }
            });
        }
        return usefulView;
    },
    
    getCurrentView: function (qvdObj) {
        return this.getUsefulView(qvdObj, 'initialize');
    },
    
    closeDialog: function (dialog, that) {
        that = that || Wat.CurrentView;
        
        dialog.dialog('close').remove();
        
        delete that.dialog;
    },
    
    fixTableScrollStyles: function () {
        // Add table styles to header
        $('.tablescroll .tablescroll_head').addClass('role-template-tools');

        // Reduce the wrapper layer because header will be increased due class application
        var currentHeight = $('.tablescroll .tablescroll_wrapper').height();
        $('.tablescroll .tablescroll_wrapper').css('height', (currentHeight - 50) + 'px');
        $('.tablescroll .tablescroll_wrapper').css('min-height', '200px');

        // Remove horizontal scroll to wrapper layer
        $('.tablescroll .tablescroll_wrapper').css('overflow-x', 'hidden');

        // Get max width of each column and apply it on header cells
        var maxWidths = [];
        $.each($('.tablescroll .tablescroll_body tr').eq(0).children(), function (i, cell) {
            var cellWidth = $(cell).css('width');
            var head = $('.tablescroll .tablescroll_head tr').eq(0).children().eq(i);
            var headWidth = $(head).css('width');

            if (cellWidth > headWidth) {
                maxWidths[i] = cellWidth;
            }
            else {
                maxWidths[i] = headWidth;
            }

            $(head).css('width', maxWidths[i]);
            $(head).css('min-width', maxWidths[i]);
            $(head).css('max-width', maxWidths[i]);
        });

        // Apply max widths on each row within body
        $.each($('.tablescroll .tablescroll_body tr'), function (i, row) {
            $.each(maxWidths, function (imw, mw) {
                var cell = $(row).children().eq(imw);
                $(cell).css('width', mw);
                $(cell).css('min-width', mw);
                $(cell).css('max-width', mw);
            });
        });
    },
    
    addOddEvenRowClass: function (listContainer) {
        $.each($(listContainer).find('table.list tr'), function (i, row) {
            if ($(row).children().eq(0).prop("tagName") != 'TD') {
                return;
            }
            
            var type = 'odd';
            if (i % 2 == 0) {
                type = 'even';
            }
            
            $(row).find('td.cell-link').addClass(type);
        });
    },
    
    startServerClock: function () {
        if (Wat.C.serverTimeUpdater == undefined && Wat.C.serverDatetime) {
            // Get timestamp from configuration and print on interface
            var d = new Date (Wat.C.serverDatetime);
            var date = d.toString().slice(0, 15);
            var time = d.toString().slice(16, 24);
            $('.js-server-date').html(date);
            $('.js-server-time').html(time);
        
            // Create a loop to update timestamp every second
            Wat.C.serverTimeUpdater = setInterval(function(){
                var currentDatetime = $('.js-server-date').html() + ' ' + $('.js-server-time').html();
                var currentUnixTimestamp = Math.round(new Date(currentDatetime).getTime()/1000);
                currentUnixTimestamp++;
                var d = new Date (currentUnixTimestamp*1000);
                var date = d.toString().slice(0, 15);
                var time = d.toString().slice(16, 24);
                $('.js-server-date').html(date);
                $('.js-server-time').html(time);
            }, 1000);
        }
    },
    
    stopServerClock: function () {
        $('.js-server-datetime-wrapper').hide();
        clearInterval(Wat.C.serverTimeUpdater);
        delete Wat.C.serverTimeUpdater;
        delete Wat.C.serverDatetime;
    },
    
    attachFastClick: function () {
        // Items with class "needsclick" will be ignored
        FastClick.attach(document.body);
    },
    
    // If desktop mode is forced, change viewport's meta tag
    forceDesktop: function () {
        if ($.cookie('forceDesktop')) {
            $('meta[name="viewport"]').prop('content', 'width=1024, initial-scale=1, maximum-scale=1');
        }
    },
    
    
    // Fill template given target and templateName
    fillTemplate: function (element) {
        element.target.html(Wat.TPL[element.templateName]);
        
        Wat.T.translate();
    },

    // When change a filter, check fussion notes to delete the associated filter if is necessary
    solveFilterDependences: function (name, field) {        
        $.each(FUSSION_NOTES, function (fNKey, fNote) {
            var fName = '';
            
            if (fNote.qvdObj != Wat.CurrentView.qvdObj) {
                return;
            }
            
            if (fNote.label == name) {
                fName = fNote.value;
            }
            
            if (fNote.value == name) {
                fName = fNote.label;
            }
            
            if (fName != '') {
                Wat.I.cleanFussionFilter(fName);
            }
        });
    },
    
    // Clean list filter checking if is used in control or not
    cleanFussionFilter: function (fName) {
        // If not exist in filters use name directly
        if (!$('[name="' + fName + '"]').length) {
            Wat.CurrentView.cleanFilter(fName);
        }
        else {
            Wat.CurrentView.cleanFilter($('[name="' + fName + '"]').attr('data-filter-field'));

            switch($('[name="' + fName + '"]').prop('tagName')) {
                case 'INPUT':
                    $('[name="' + fName + '"]').val('');
                    break;
                case 'SELECT':
                    $('[name="' + fName + '"]').val(FILTER_ALL);
                    $('[name="' + fName + '"]').trigger('chosen:updated');
                    break;
            }
        }
    },  
    
    // Return bool value to indicate if we are in a mobile or not
    isMobile: function () {
        return $('.js-mobile-menu-hamburger').css('display') != 'none';
    },
    
    // Get warning icon from API retrieved data
    getWarningIcon: function (qvdObj, retrievedData, names) {      
        var errorMessage = retrievedData.message;
        var qvdObjName = LOG_TYPE_OBJECTS[qvdObj];

        var warningMessage = '';
        warningMessage += '<div>' + $.i18n.t(errorMessage) + "</div>";
        warningMessage += '<br>';

        $.each(retrievedData.failures, function (elementId, failure) {
            var failureMessage = failure.message;
            var elementName = names[elementId];

            warningMessage += '<div>' + $.i18n.t(qvdObjName) + ': ' + elementName + "</div>";
            warningMessage += '<div>' + $.i18n.t(failureMessage) + "</div>";
            warningMessage += '<br>';
        });

        var warningIcon = '<i class="fa fa-warning" title="' + warningMessage + '"></i>';
        
        return warningIcon;
    },
    
    // Return boolean giving a form field name on massive editor to know if this field is changing or must be ignored
    isMassiveFieldChanging: function (fieldName) {
        // Invisible class of no change reset button means avoid field updating
        return !$('.js-no-change-reset[data-field="' + fieldName + '"]').hasClass('invisible');
    },
    
    // Show an error template given template code as parameter
    showErrorTemplate: function (template) {
        $(Wat.CurrentView.el).html(Wat.TPL[template]);
        Wat.I.showAll();
        Wat.T.translate();
    },
    
    getVisibilityConditionAttrs: function (visibilityCondition) {
        var visibilityConditionAttrs = '';
        if (visibilityCondition) {
            visibilityConditionAttrs += ' data-visibility-conditioned="true" ';
            $.each(visibilityCondition, function (tokenName, tokenValue) {
                // Replace macros
                switch(tokenValue) {
                    case '__currentAdminId__':
                        tokenValue = Wat.C.adminID;
                        break;
                }

                visibilityConditionAttrs += ' data-visibility-cond-' + tokenName + '="' + tokenValue + '" ';
            });
        }
        
        return visibilityConditionAttrs;
    }
}