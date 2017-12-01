Wat.B = {
    bindCommonEvents: function () {
        this.bindMessageEvents();  
        this.bindEditorEvents();  
        this.bindNavigationEvents();  
        this.bindFormEvents();
        this.bindDeleteConflicts();
    },
    
    bindDeleteConflicts: function () {
        // Close message layer
        this.bindEvent('click', '.js-button-force-delete', this.conflictBinds.forceDelete);
    },
    
    // Events binded in classic way to works in special places like jQueryUI dialog where Backbone events doesnt work
    bindMessageEvents: function () {         
        // Close message layer
        this.bindEvent('click', '.js-message-close', this.messageBinds.closeMessage);
        
        // Expand message
        this.bindEvent('click', '.js-expand-message', this.messageBinds.toggleExtendedMessage);
        
        // Expand message
        this.bindEvent('mouseenter', '.js-message-container', this.messageBinds.hoverInMessage);
        
        // Expand message
        this.bindEvent('mouseleave', '.js-message-container', this.messageBinds.hoverOutMessage);
    },
    
    bindFormEvents: function () {
        this.bindEvent('keydown', '[data-required]', this.formBinds.pressValidatedField);
        
        // Chosen controls hack
        this.bindEvent('click', '.not_valid', this.formBinds.pressValidatedField);
    },
    
    bindEditorEvents: function () {
        // Common Editor  
            // Hide property help when write on text input
            this.bindEvent('focus', '.custom-properties>tr>td input', this.editorBinds.hidePropertyHelp);

            // Active focus on property input when click on help message becaus it is over it
            this.bindEvent('click', '.property-help', this.editorBinds.focusPropertyField);

            // Toggle controls for expire fields (it's only needed for vm form, but it can be accesible from two views: list and details)
            this.bindEvent('change', 'input[name="expire"]', this.editorBinds.toggleExpire);
        
        // Massive editor
            // Clean fields when click on "no changes" checkbox
            this.bindEvent('change', 'input[type="checkbox"].js-no-change', this.editorBinds.clickNoChangeCheckbox); 
            
            // Uncheck "no changes" checkbox when fields changes
            this.bindEvent('change', '.js-massive-editor-table select', this.editorBinds.changeMassiveFieldSelect);
            this.bindEvent('change', '.js-massive-editor-table input[type="checkbox"], .js-massive-editor-table input[type="text"].datetimepicker', this.editorBinds.changeMassiveField);
            this.bindEvent('input', '.js-massive-editor-table input[type="text"], .js-massive-editor-table textarea', this.editorBinds.changeMassiveField);
            this.bindEvent('click', '.js-no-change-reset', this.editorBinds.resetMassiveField);
        
        // Virtual Machines Editor
        
            // Toggle controls for disk images tags retrieving when select osf (it's only needed for vm form, but it can be accesible from two views: list and details)
            this.bindEvent('change', 'select[name="osf_id"]', this.editorBinds.fillDITags, this);
        
        // User editor
                
            // Toggle controls for new password
            this.bindEvent('change', 'input[name="change_password"]', this.userEditorBinds.toggleNewPassword);
        
        // Roles editor
            // Delete positive ACL
            this.bindEvent('click', '.js-templates-matrix-mode-btn', this.roleEditorBinds.openMatrixMode);
        
            // Change ACL check from matrix view
            this.bindEvent('change', '.js-add-template-button', this.roleEditorBinds.changeMatrixACL);

            // Add/Delete inherited Role
            this.bindEvent('click', '.js-assign-role-button', this.roleEditorBinds.addRole);
            this.bindEvent('click', '.js-delete-role-button', this.roleEditorBinds.deleteRole);
            this.bindEvent('click', '.js-assign-template-button', this.roleEditorBinds.addTemplate);
            this.bindEvent('click', '.js-delete-template-button', this.roleEditorBinds.deleteTemplate);
        
        // OSFs editor
            // Edit os settings
            this.bindEvent('click', '.js-button-edit-os', this.osfEditorBinds.openOSEditor);
            
            // Show expanded os configuration
            this.bindEvent('click', '.js-expand-os-conf', this.osfEditorBinds.toggleOSConfigExpanded);
        
    },
    
    bindHomeEvents: function () {
        // Pie charts events
        this.bindEvent('mouseenter', '.js-pie-chart', this.homeBinds.pieHoverIn);
        
        this.bindEvent('mouseleave', '.js-pie-chart', this.homeBinds.pieHoverOut);
        
        this.bindEvent('click', '.js-pie-chart', this.homeBinds.pieClick);
    },
    
    bindTenantEvents: function () {
        this.bindEvent('click', '.js-button-delete-tenant-object', this.tenantBinds.purgeTenantObject);
        this.bindEvent('click', '.js-button-delete-tenant-element', this.tenantBinds.purgeTenantElement);
    },
    
    bindNavigationEvents: function () {
        this.bindEvent('click', '.menu-option[data-target]', this.navigationBinds.clickMenu);
        
        this.bindEvent('click', '.js-menu-corner .menu-option', this.navigationBinds.clickCornerMenu);
        
        this.bindEvent('click', '.js-submenu-option', this.navigationBinds.clickSubMenu);
        
        this.bindEvent('touchstart', '.needsclick', this.navigationBinds.tapNeedsClick);
        
        this.bindEvent('touchstart', 'body', this.navigationBinds.tapAny);
        
        this.bindEvent('click', '.js-mobile-menu-hamburger', this.navigationBinds.clickMenuMobile);
        
        this.bindEvent('click', '.js-delete-filter-note', this.navigationBinds.clickDeleteFilterNote);
        
        this.bindEvent('click', '.js-fix-filter-note', this.navigationBinds.clickFixFilterNote);
        
        // Show/hide the corner menu
        this.bindEvent('mouseenter', '.js-menu-corner li:has(ul)', this.navigationBinds.cornerMenuHoverIn);
        
        this.bindEvent('mouseleave', '.js-menu-corner li:has(ul)', this.navigationBinds.cornerMenuHoverOut);
        
        // Documentation menu option (workaround because backbone events dont work)
        this.bindEvent('click', '.js-doc-option', this.navigationBinds.clickDocOption);
        this.bindEvent('click', '#toc a', this.navigationBinds.clickToc);
        
        // Screen help button
        this.bindEvent('click', 'a[data-docsection]', this.navigationBinds.clickScreenHelp);
        
        // Back to top button
        this.bindEvent('click', '.js-back-top-doc-button', this.navigationBinds.goDocTop);
        this.bindEvent('click', '.js-back-top-generic-button', this.navigationBinds.goSimpleTop);
        
        // Switch desktop-mobile modes
        this.bindEvent('click', '.js-force-desktop', this.navigationBinds.forceDesktopMode);
        this.bindEvent('click', '.js-unforce-desktop', this.navigationBinds.unforceDesktopMode);

        // On any scroll
        $(window).off('scroll');
        $(window).on('scroll', this.navigationBinds.onScroll);
        
        // Kind of image source in DI creation
        this.bindEvent('change', 'select[name="images_source"]', this.navigationBinds.toggleImagesource);
        
        // OS Distro in OSF creation
        this.bindEvent('change', 'select[name="os_distro_select"]', this.navigationBinds.toggleOSDistro);
        
        // Propagate click in cells with links
        this.bindEvent('mouseenter', 'td.cell-link', function (e) { 
            var firstLink = $(e.target).find('a')[0];
            if (firstLink) {
                $(firstLink).trigger('mouseenter');
            }
        });
        this.bindEvent('mouseleave', 'td.cell-link', function (e) { 
            var firstLink = $(e.target).find('a')[0];
            if (firstLink) {
                $(firstLink).trigger('mouseleave');
            }
        });
        this.bindEvent('click', 'td.cell-link', function (e) { 
            var firstLink = $(e.target).find('a')[0];
            if (firstLink) {
                location = $(firstLink).attr('href');
                $(firstLink).trigger('click');
            }
        });
        this.bindEvent('click', 'td.cell-check, th.cell-check', function (e) { 
            var firstCheckbox = $(e.target).find('input[type="checkbox"]')[0];
            if (firstCheckbox) {
                $(firstCheckbox).trigger('click');
            }
            var firstRadiobutton = $(e.target).find('input[type="radio"]')[0];
            if (firstRadiobutton) {
                $(firstRadiobutton).trigger('click');
            }
        });
        
        // Propagate events to click on sections from widget click on homepage
        this.bindEvent('click', '.js-home-cell', function (e) { 
            $(e.target).find('a>i').trigger('click');
            $(e.target).find('.js-pie-chart').trigger('click');
        });
        
        this.bindEvent('click', '.js-home-cell>div', function (e) { 
            $(e.target).parent().find('a>i').trigger('click');
            $(e.target).find('.js-pie-chart').trigger('click');
        });
        
        this.bindEvent('mouseenter mouseleave', '.js-home-cell', function (e) { 
            $(e.target).find('canvas').trigger(e.type);
        });
        
    },
    
    bindLoginEvents: function () {
        this.bindEvent('click', '.js-login-button', this.loginBinds.tryLogIn);
        
        this.bindEvent('keydown', 'input[name="admin_user"], input[name="admin_password"], input[name="admin_tenant"]', this.loginBinds.pushKeyOnLoginInput);
    },
    
    loginBinds: {
        tryLogIn: function() {
            $('.js-login-form').submit();
            Wat.L.tryLogin();
        },
        
        pushKeyOnLoginInput: function (e) {
            // If press enter, trigger login button
            if (e.which == 13 ) {
                $('.js-login-button').trigger('click');
            }
        }
    },
    
    formBinds: {
        pressValidatedField: function (e) {
            if ($(e.target).hasClass('not_valid')) {
                $(e.target).removeClass('not_valid');
                $(e.target).parent().find('.validation-message').remove();
            }
            
            // Chosen controls hack
            if ($(e.target).parent().hasClass('not_valid')) {
                $(e.target).parent().removeClass('not_valid');
                $(e.target).parent().parent().parent().find('.validation-message').remove();
            }
        }
    },
    
    navigationBinds: {
        // When click on a menu option, redirect to this section
        clickMenu: function() {
            // If in mobule mode, hide menu when click
            if (Wat.I.isMobile()) {
                $('.menu').slideUp();
            }
                        
            var id = $(this).attr('data-target');
            window.location = '#/' + id;
            Wat.I.M.closeMessage();
        }, 
        
        // When click on a corner menu option
        clickCornerMenu: function(e) {
        },        
        
        // When click on a submenu option, show properly subsection
        clickSubMenu: function() {
            var submenu = $(this).attr('data-show-submenu');
            
            $(this).parent().find('li').removeClass('menu-option--selected');
            $('table.acls-management').hide();
            $(this).addClass('menu-option--selected');
            $('table.' + submenu).show();
        },
        
        // When click on elements that FastClick library ignore, trigger hover but prevent click
        tapNeedsClick: function (e) {
            if ($(e.target).hasClass('needsclick')) {
                // Walk along the DOM tree until find UL of submenu to know if is visible or not
                // This swich have not "beak;" willfully
                var element = $(e.target);
                switch ($(e.target).prop('tagName')) {
                    case "I":
                    case "SPAN":
                        element = element.parent();
                    case "LI":
                        element = element.parent();
                    default:
                        var isAlreadyShown = element.find('ul').css('display') != 'none';
                }
                
                // Close submenus for touch devices compatibility
                $('.js-menu-corner li ul').hide();
                
                if (!isAlreadyShown) {
                    // Trigger hover event
                    $(e.target).trigger('mouseover');
                }
                
                // Prevent click event triggering
                e.preventDefault();
                e.stopPropagation();
            }
        },
        
        // When tap in any part of the screen but the "needsClick" elements because this behavior is prevent
        tapAny: function (e) {
            // Close submenus for touch devices compatibility
            setTimeout( function() { 
                $('.js-menu-corner li ul').hide();
            }, 100);
        },
        
        clickMenuMobile: function () {
            $('.js-menu-mobile').slideToggle();
        },
        
        cornerMenuHoverIn: function (e) {
            $(this).find('ul').css({display: "block"});
            
            // If the submenu layer has overflow in the screen, add negative margin left to adapt to the visible area
            var divRigth = $(this).find('ul').offset().left + $(this).find('ul').width();
            var winWidth = $(window).width();

            if (divRigth > winWidth) {
                $(this).find('ul').css('margin-left', (winWidth - divRigth - 5) + 'px');
            }
        },
        
        cornerMenuHoverOut: function (e) {
            $(this).find('ul').css({display: "none"});
        },
        
        clickDocOption: function (e) {
            var guideKey = $(e.target).attr('data-guide');
            
            window.location = '#documentation/' + guideKey;
        },
        
        clickToc: function (e) {
            e.preventDefault();
            
            var targetId = $(e.target).attr('href');
            
            $('html,body').animate({
                scrollTop: $(targetId).offset().top - 50
            }, 'fast');
            
            // Remove prefix '#_' from id
            targetId = targetId.substring(2, targetId.length+1);
            
            var currentHash = '#documentation/' + Wat.CurrentView.selectedGuide + '/' + targetId;

            // If pushState is available in browser, modify hash with current section
            if (history.pushState) {
                history.pushState(null, null, currentHash);
            }
        },
        
        goSimpleTop: function () {
            Wat.I.goTop();
        }, 
        
        goDocTop: function () {
            Wat.I.goTop();    
            
            var currentHash = '#documentation/' + Wat.CurrentView.selectedGuide;

            // If pushState is available in browser, modify hash with current section
            if (history.pushState) {
                history.pushState(null, null, currentHash);
            }
        },
        
        forceDesktopMode: function () {
            $.cookie('forceDesktop', "1", { expires: 7, path: '/' });
            window.location.reload();
        },   
        
        unforceDesktopMode: function () {
            $.removeCookie('forceDesktop', { path: '/' });
            window.location.reload();
        },
        
        toggleImagesource: function (e) {
            var selectedSource = $(e.target).val();
            
            switch (selectedSource) {
                case 'computer':
                    $('.image_computer_row').show();
                    $('.image_staging_row').hide();
                    $('.image_url_row').hide();
                    break;
                case 'staging':
                    $('.image_computer_row').hide();
                    $('.image_staging_row').show();
                    $('.image_url_row').hide();
                    break;
                case 'url':
                    $('.image_computer_row').hide();
                    $('.image_staging_row').hide();
                    $('.image_url_row').show();
                    break;
            }
        },
        
        toggleOSDistro: function (e) {
            var selectedDistro = $(e.target).val();
            
            switch (selectedDistro) {
                case "-1":
                    $('.js-os-configuration-row').hide();
                    break;
                default:
                    var distroModel = Wat.CurrentView.distros.where({id: parseInt(selectedDistro)})[0];
                    
                    var attributes = {
                        name: distroModel.get('id') + "", // Only for testing
                        distro_id: distroModel.get('id'),
                        distro_name: distroModel.get('name') + ' ' + distroModel.get('version'),
                        distro_icon: distroModel.get('icon'),
                        scripts: distroModel.get('scripts'),
                        shortcuts: distroModel.get('shortcuts'),
                        config_params: distroModel.get('config_params')
                    };
                    
                    $.each(distroModel.get('config_params'), function (param_name, param_def) {
                        attributes[param_name] = distroModel.get(param_name);
                    });
                    
                    Wat.CurrentView.OSDmodel = new Wat.Models.OSD(attributes);
                    
                    var template = Wat.CurrentView.getOsDetailsRender(Wat.CurrentView.OSDmodel, {shrinked: true, editable: true});
                    $('.editor-container .bb-os-configuration').html(template);
                    $('.js-os-configuration-row').show();
                    
                    break;
            }
        },
        
        onScroll: function () {
            if ($('.js-back-top-button').length) {
                if ($(window).scrollTop() > $(window).height()) {
                    $('.js-back-top-button').show();
                }
                else {
                    $('.js-back-top-button').hide();
                }
            }
            
            // When move scroll, minify header
            if ($(window).scrollTop() > 0) {
                $('.js-header-wrapper').addClass('header-wrapper--mini');
                $('.js-mobile-menu-hamburger').addClass('mobile-menu--mini');
                $('.js-server-datetime-wrapper').addClass('server-datetime-wrapper--mini');
                $('.js-menu-corner').css('top', '5px');
                $('.js-customizer-wrapper').css('top', '40px');
            }
            else {
                $('.js-header-wrapper').removeClass('header-wrapper--mini');
                $('.js-mobile-menu-hamburger').removeClass('mobile-menu--mini');
                $('.js-server-datetime-wrapper').removeClass('server-datetime-wrapper--mini');
                $('.js-menu-corner').css('top', '20px');
                $('.js-customizer-wrapper').css('top', '60px');
            }
            
            $('.js-header-wrapper').css('left', -$(window).scrollLeft());
        },
        
        clickScreenHelp: function (e) {
            var docSection = $(e.target).attr('data-docsection');
            
            var lan = Wat.C.getEffectiveLan();
            
            var section = Wat.I.docSections[docSection][lan];
            var guide = Wat.I.docSections[docSection].guide;
            
            var guideSection = [
                {
                    section: section,
                    guide: guide
                }
            ];
            
            var docSectionMultitenant = docSection + '_multitenant';
            
            if (Wat.I.docSections[docSectionMultitenant] != undefined) {
                guideSection.push({
                    section: Wat.I.docSections[docSectionMultitenant][lan],
                    guide: Wat.I.docSections[docSectionMultitenant].guide
                });
            }
            
            // If doc dialog is opened from breadcrumbs link and there are not relate docs, open directly doc about current section step by step
            if ($(e.target).hasClass('screen-help') && Wat.CurrentView.relatedDoc != undefined) {
                Wat.CurrentView.openRelatedDocsDialog();
            }
            // Otherwise, open related doc options
            else {
                Wat.I.loadDialogDoc(guideSection);
            }
            
            $('html,body').animate({
                scrollTop: 0
            }, 'fast');
        },
        
        clickDeleteFilterNote: function (e) {
            var name = $(e.target).attr('data-filter-name');
            var type = $(e.target).attr('data-filter-type');
            
            switch(type) {
                case 'select':
                    Wat.CurrentView.cleanFilter($('[name="' + name + '"]').attr('data-filter-field'));
                    
                    $('[name="' + name + '"]').val(FILTER_ALL);
                    $('[name="' + name + '"]').trigger('change');
                    break;
                case 'text':
                    Wat.CurrentView.cleanFilter($('[name="' + name + '"]').attr('data-filter-field'));
                    
                    $('[name="' + name + '"]').val('');
                    break;
                case 'filter':
                    // If is fussion note clean both filters
                    if (name.indexOf('__') > -1) {
                        var fussionNames = name.split('__');
                        $.each(fussionNames, function (iFN, fName) {
                            Wat.I.cleanFussionFilter(fName);
                        });
                    }
                    else {
                        Wat.CurrentView.cleanFilter(name);
                    }
                    break;
            }
            
        },
        
        clickFixFilterNote: function (e) {
            var name = $(e.target).attr('data-filter-name');
            var value = $('[name="' + name + '"]').val();                    
            var field = $('[name="' + name + '"]').attr('data-filter-field');                  
            var enabled = $(e.target).hasClass('fix-filter-note--enabled');
            
            if (enabled) {
                $(e.target).removeClass('fix-filter-note--enabled');
                delete Wat.I.fixedFilters[field];
            }
            else {
                $(e.target).addClass('fix-filter-note--enabled');
                Wat.I.fixedFilters[field] = value;
            }
        }
    },
    
    homeBinds: {
        pieHoverIn: function (e) {
            var percentLabel = $(e.target).parent().parent().find('.home-percent');
            percentLabel.css('opacity', '1');
            percentLabel.css('font-weight', 'bold');
        },
            
        pieHoverOut: function (e) {
            var percentLabel = $(e.target).parent().parent().find('.home-percent');
            percentLabel.css('opacity', '0.5');
            percentLabel.css('font-weight', 'normal');
        },
        
        pieClick: function (e) {
            // Check if canvas was clicked or any other div, to obtain target
            if (e.target.nodeName == 'CANVAS') {
            var target = $(e.target).parent().attr('data-target');
            }
            else {
                var target = $(e.target).find('canvas').parent().attr('data-target');
            }
            
            window.location = '#/' + target;
        }
    },
    
    // Generic function to bind events receiving the event, the selector and the callback function to be called when event is triggered
    bindEvent: function (event, selector, callback, params) {
        // First unbind event to avoid duplicated bindings
        $(document).off(event, selector);
        $(document).on(event, selector, params, callback);
    },
    
    // Functions to bind events on conflict resolution
    conflictBinds: {
        forceDelete: function (e) {
            var id = $(e.target).attr('data-id');
            var qvdObj = $('.js-elements-list').attr('data-qvd-obj');
            var qvdObjDependency = QVD_OBJ_DEPENDENCIES[qvdObj];
            
            // Link field is user_id, osf_id, etc.
            var filters = {};
            filters[qvdObj + '_id'] = id;
            
            var auxModel = Wat.U.getModelFromQvdObj(qvdObj);            
            var auxModelDependency = Wat.U.getModelFromQvdObj(qvdObjDependency);
            
            // Get all the dependent items
            Wat.A.performAction(qvdObjDependency + '_get_list', {}, filters, {}, function (response) {
                var filterIds = [];
                
                var elementsDependency = {};
                $.each (response.retrievedData.rows, function (i, data) {
                    filterIds.push(data.id);
                    elementsDependency[data.id] = data[Wat.U.getNameFieldFromQvdObj(qvdObjDependency)];
                });
                
                
                Wat.CurrentView.deleteModel({id: filterIds}, function (response) {
                    if (response.retrievedData.status != STATUS_SUCCESS) {
                        // When some element deletion fails, continue deleting pending elements
                        var warningIcon = Wat.I.getWarningIcon(qvdObjDependency, response.retrievedData, elementsDependency);
                        
                        $('.js-notifications[data-id="' + id + '"]').html(warningIcon);
                        
                        Wat.A.deletePending('.js-button-force-delete');
                        return;
                    }
                    
                    Wat.CurrentView.deleteModel({id: id}, function (response) {
                        if (response.retrievedData.status != STATUS_SUCCESS) {
                            // When some element deletion fails, continue deleting pending elements
                            Wat.A.deletePending('.js-button-force-delete');
                            return;
                        }
                        
                        // Delete row
                        $('.js-force-delete-row[data-id="' + id + '"]').remove();
                        
                        // Delete removed id from DOM list
                        var allIds = $('.js-elements-list').attr('data-all-ids').split(',');
                        
                        // Fetch and render behind view
                        Wat.CurrentView.fetchAny();

                        allIds.splice(allIds.indexOf(id), 1);

                        if (allIds == 0) {
                            Wat.I.closeDialog(Wat.CurrentView.dependencyDialog);
                        }

                        $('.js-elements-list').attr('data-all-ids', allIds.join(','));
                        
                        // If some other element is marked to be deleted, trigger button
                        Wat.A.deletePending('.js-button-force-delete');
                    }, auxModel);
                }, auxModelDependency);
            }, undefined, ['id', Wat.U.getNameFieldFromQvdObj(qvdObjDependency)]);
        }
    },

    // Callbacks of the events binded for messages system
    messageBinds: {
        closeMessage: function () {
            Wat.I.M.closeMessage();
        },
        
        toggleExtendedMessage: function () { 
            var extendedMessage = $(this).parent().find('article');
            Wat.I.M.clearMessageTimeout();
            
            if (extendedMessage.css('display') == 'none') {
                $(this).removeClass('fa-plus-square-o');
                $(this).addClass('fa-minus-square-o');
            }
            else {
                $(this).removeClass('fa-minus-square-o');
                $(this).addClass('fa-plus-square-o');
            }
            
            extendedMessage.toggle();
        },
        
        hoverInMessage: function (e) {
            Wat.I.M.clearMessageTimeout();
        },
        
        hoverOutMessage: function (e) {
            if ($(e.target).find('.expandedMessage').css('display') != 'none') {
                return;
            }
                        
            // Error messages need to be closed manually
            if (!$(e.target).hasClass('error')) {
                Wat.I.M.setMessageTimeout();
            }
        }
    },
    
    // Callbacks of the events binded on editor
    editorBinds: {
        hidePropertyHelp: function () {
            $(this).parent().find('.property-help').hide();
        },

        focusPropertyField: function () {
            $(this).parent().find('input').focus();
        },
        
        toggleExpire: function () {
            $('.expiration_row').toggle();
        },
        
        // Fill the select combo with the available tags in the disk images of an OSF
        fillDITags: function (event) {
            var that = event.data;
            
            $('[name="di_tag"]').find('option').remove();
            
            // Fill DI Tags select on virtual machines creation form
            var params = {
                'actionAuto': 'tag',
                'selectedId': '',
                'controlName': 'di_tag',
                'filters': {
                    'osf_id': $('[name="osf_id"]').val()
                },
                'nameAsId': true,
                'chosenType': 'advanced100'
            };

            Wat.A.fillSelect(params);
        },
        
        filterTenantOSFs: function () {
            var params = {
                'actionAuto': 'osf',
                'selectedId': '',
                'controlName': 'osf_id',
                
            };
            
            if ($(this).val() > 0) {
                params.filters =  {
                    'tenant_id': $(this).val()
                };
            }

            // Remove all osf options and fill filtering with new selected tenant
            $('[name="osf_id"] option').remove();
            
            Wat.A.fillSelect(params, function () {
                // Update chosen control for osf
                Wat.I.updateChosenControls('[name="osf_id"]');

                // Trigger change event to update tags
                $('[name="osf_id"]').trigger('change');
            }); 
        },
        
        filterTenantUsers: function () {
            var params = {
                'actionAuto': 'user',
                'selectedId': '',
                'controlName': 'user_id'
            };

            if ($(this).val() > 0) {
                params.filters =  {
                    'tenant_id': $(this).val()
                };
            }
            
            // Remove all osf options and fill filtering with new selected tenant
            $('[name="user_id"] option').remove();
            
            Wat.A.fillSelect(params, function () {
                // Update chosen control for user
                Wat.I.updateChosenControls('[name="user_id"]');
            }); 
        },
        
        updatePropertyRows: function () {
            $('.js-editor-property-row').hide();
            $('.js-editor-property-row[data-tenant-id="' + $('[name="tenant_id"]').val() + '"]').show();
            $('.js-editor-property-row[data-tenant-id="' + SUPERTENANT_ID + '"]').show();
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
        
        clickNoChangeCheckbox: function (e) {
            if ($(e.target).is(':checked')) {
                var field = $(e.target).attr('data-field');
                $('.js-massive-editor-table td:last-child input[name="' + field + '"], .js-editor-table td:last-child textarea[name="' + field + '"]').val('');
            }
        },
    },
    
    userEditorBinds: {
        toggleNewPassword: function () {
            $('.new_password_row').toggle();
        }
    },
    
    osfEditorBinds: {
        openOSEditor: function (e) {
            var osfId = $(e.target).attr('data-osf-id');
            var massive = false;
            
            if (osfId == -1) {
                osfIds = Wat.CurrentView.selectedItems.join(',');
                var massive = true;
            }
            
            var dialogConf = {
                title: "Software configuration",
                buttons : {
                    "Cancel": function () {
                        Wat.I.closeDialog($(this));
                        
                        // Send primary dialog to front again
                        $('.ui-dialog').eq(0).css('z-index','');
                        
                        Wat.CurrentView.OSDdialogView.remove();
                        delete Wat.CurrentView.OSDdialogView;
                    },
                    "Save": function () {
                        Wat.U.setFormChangesOnModel('.js-editor-form-osf-os', Wat.CurrentView.OSDmodel);
                        var template = Wat.CurrentView.getOsDetailsRender(Wat.CurrentView.OSDmodel, {shrinked: true, editable: true});
                        $('.editor-container .bb-os-configuration').html(template);
                        Wat.I.closeDialog($(this));
                        
                        // Send primary dialog to front again
                        $('.ui-dialog').eq(0).css('z-index','');
                        
                        Wat.CurrentView.OSDdialogView.remove();
                        delete Wat.CurrentView.OSDdialogView;
                    }
                },
                buttonClasses: ['fa fa-ban js-button-close','fa fa-save js-button-save'],

                fillCallback: function (target) {
                    Wat.CurrentView.OSDdialogView = new Wat.Views.OSDEditorView({
                        el: $(target),
                        osfId: osfId,
                        massive: massive
                    });
                },
            }

            Wat.CurrentView.osDialog = Wat.I.dialog(dialogConf);
            
            // Add secondary dialog class to new dialog to give different look
            Wat.CurrentView.osDialog.parent().addClass('ui-dialog-secondary');
            Wat.CurrentView.osDialog.dialog("option", "position", {my: "center", at: "center", of: window});
            // Send primary dialog to back because jquery ui doesnt handle it properly
            $('.ui-dialog').eq(0).css('z-index','100');
            
            Wat.I.chosenElement('select[name="icons-collection"]','single100');
        },
        
        toggleOSConfigExpanded: function (e) {
            if ($(e.target).hasClass('fa-chevron-down')) {
                $(e.target).removeClass('fa-chevron-down').addClass('fa-chevron-up');
            }
            else {
                $(e.target).removeClass('fa-chevron-up').addClass('fa-chevron-down');
            }
            
            $('.js-os-configuration-expanded').toggle();
        },
    },
    
    roleEditorBinds: {
        openMatrixMode: function (e) {            
            var dialogConf = {
                title: $.i18n.t('Matrix mode'),
                buttons : {
                    "Close": function () {                    
                        Wat.I.closeDialog($(this));
                    }
                },
                buttonClasses: ['fa fa-ban js-button-close'],

                fillCallback: function (target) {
                    // Add common parts of editor to dialog
                    var template = _.template(
                        Wat.TPL.inheritanceToolsTemplatesMatrix, {
                            templates: Wat.CurrentView.editorTemplates
                        }
                    );

                    target.html(template);
                }
            }

            Wat.CurrentView.matrixDialog = Wat.I.dialog(dialogConf);
        },
        
        changeMatrixACL: function (e) {
            var templateId = $(e.target).attr('data-role-template-id');
            var checked = $(e.target).is(':checked');
            
            if (checked) {
                $('select[name="template_to_be_assigned"]').val(templateId);
                $('.js-assign-template-button').trigger('click');
            }
            else {
                $('.js-delete-template-button[data-id="' + templateId + '"]').trigger('click');
            }
        },
        
        addRole: function (e) {
            var roleId = $('select[name="role_to_be_assigned"]').val();
            
            Wat.CurrentView.editorAssignRole(roleId);
        },
        
        deleteRole: function (e) {
            var roleId = $(e.target).attr('data-id');
            
            Wat.CurrentView.editorDeleteRole(roleId);
        },
        
        addTemplate: function (e) {
            var templateId = $('select[name="template_to_be_assigned"]').val();
            
            Wat.CurrentView.editorAssignTemplate(templateId);
        },
        
        deleteTemplate: function (e) {
            var templateId = $(e.target).attr('data-id');
            
            Wat.CurrentView.editorDeleteTemplate(templateId);
        },
    },
    
    tenantBinds: {
        purgeTenantObject: function (e) {
            var qvdObj = $(e.target).attr('data-qvd-obj');
            
            Wat.CurrentView.applyCascadeDelete(qvdObj, false);
        },
        purgeTenantElement: function (e) {
            var qvdObj = $(e.target).attr('data-qvd-obj');
            var elementId = $(e.target).attr('data-id');
            
            Wat.CurrentView.applyDeleteElement(qvdObj, elementId);
        }
    },
}