Wat.B = {
    bindCommonEvents: function () {
        this.bindMessageEvents();
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
                    
                    $('[name="' + name + '"]').val(FILTER_ALL).trigger('change');
                    break;
                case 'text':
                    Wat.CurrentView.cleanFilter($('[name="' + name + '"]').attr('data-filter-field'));
                    
                    $('[name="' + name + '"]').val('').trigger('input');
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
    },
    
    roleEditorBinds: {
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