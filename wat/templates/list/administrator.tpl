<table class="list">
    <thead>
        <tr>
            <%                
                var printedColumns = 0;
                $.each(columns, function(name, col) {
                    if (col.display == false) {
                        return;
                    }
                    
                    var sortAttr = '';
                    if (col.sortable == true) {
                        sortAttr = 'sortable';
                    }

                    printedColumns++;
                    
                    switch(name) {
                        case 'checks':
                            var checkedAttr = selectedAll ? 'checked' : '';
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> max-1-icons cell-check">
                                <input type="checkbox" class="check_all" <%= checkedAttr %> data-check-id="administrator">
                            </th>
            <%
                            break;
                        case 'info':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> max-1-icons">
                                <i class="fa fa-info-circle normal" data-i18n="[title]Info" title="<%= i18n.t('Info') %>"></i>
                            </th>
            <%
                            break;
                        case 'id':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> desktop" data-sortby="id">
                                <span data-i18n="Id"><%= i18n.t('Id') %></span>
                            </th>
            <%
                            break;
                        case 'name':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> col-width-100" data-sortby="name">
                                <span data-i18n="Name"><%= i18n.t('Name') %></span>
                            </th>
            <%
                            break;
                        case 'tenant':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> desktop" data-sortby="tenant_name">
                                <span data-i18n="Tenant"><%= i18n.t('Tenant') %></span>
                            </th>
            <%
                            break;
                        default:
                            var translationAttr = '';
                            var colText = col.text;

                            if (col.noTranslatable !== true) {
                                translationAttr = 'data-i18n="' + col.text + '"';
                                colText = $.i18n.t(col.text);
                            }

            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> desktop" data-sortby="<%= name %>">
                                <span <%= translationAttr %>><%= colText %></span>
                            </th>
            <%
                            break;
                    }
                });
                
                if (Wat.C.isMultitenant()) { 
            %>
                    <th data-fieldname="<%= name %>" class="col-width-100" data-sortby="name">
                        <span data-i18n="Global username"><%= i18n.t('Global username') %></span>
                    </th>
            <%
                }
            %>
        </tr>
    </thead>
    <tbody>
        <% 
        if (models.length == 0) {
        %>  
            <tr>
                <td colspan="<%= printedColumns %>">
                    <span class="no-elements" data-i18n="There are no elements">
                        <%= i18n.t('There are no elements') %>
                    </span>
                </td>
            </tr>
        <%
        }
        _.each(models, function(model) { %>
            <tr class="row-<%= model.get('id') %>" data-id="<%= model.get('id') %>" data-name="<%= model.get('name') %>">
                <% 
                    var info = '';
                    
                    if (model.get('blocked')) {
                        info += '<i class="fa fa-lock" data-i18n="[title]Blocked" title="' + i18n.t('Blocked') + '"></i>';
                    }
                    $.each(columns, function(name, col) {
                        if (col.display == false) {
                            return;
                        }
                    
                        switch(name) {
                            case 'checks':
                                var checkedAttr = $.inArray(parseInt(model.get('id')), selectedItems) > -1 ? 'checked' : '';

                %>
                                <td class="cell-check">
                                    <input type="checkbox" class="check-it js-check-it" data-qvd-obj="administrator" data-check-id="administrator" data-id="<%= model.get('id') %>" <%= checkedAttr %>>
                                </td>
                <%
                                break;
                            case 'info':
                %>
                                <td>
                                    <% if(Wat.C.adminID == model.get('id')) { %>
                                        <i class="<%= CLASS_ICON_PERSONALAREA %>" title="<%= i18n.t('This administrator is me') %>" data-i18n="[title]This administrator is me"></i>
                                    <% } %>
                                    
                                    <%
                                    if (Object.keys(model.get('roles')).length == 0) {
                                    %>
                                        <i class="fa fa-warning warning" title="<%= i18n.t('No assigned roles') %>" data-i18n="[title]No assigned roles"></i>
                                    <%
                                    }
                                    else {
                                        var roles = [];
                                        $.each(model.get('roles'), function (iRole, role) {
                                            roles.push(role);
                                        });
                                    %>
                                        <i class="<%= CLASS_ICON_ROLES %>" title="&raquo; <%= roles.join(',').replace(/,/g,'<br /><br />&raquo; ') %>"></i>
                                    <%
                                    }
                                    %>
                                </td>
                <%
                                break;
                            case 'id':
                %>
                                <td class="desktop">
                                    <%= model.get('id') %>
                                </td>
                <%
                                break;
                            case 'name':
                                var cellClass = 'js-name';
                                var cellAttrs = '';
                                if (Wat.C.checkACL('administrator.see-details.')) {
                                    cellClass += ' cell-link';
                                    cellAttrs += 'data-i18n="[title]Click for details"';
                                }
                                
                                cellAttrs += ' class="' + cellClass + '"';
                                
                %>
                                <td <%= cellAttrs %>>
                                    <%= Wat.C.ifACL('<a href="#/administrator/' + model.get('id') + '">', 'administrator.see-details.') %>
                                    <%= Wat.C.ifACL('<i class="fa fa-search"></i>', 'administrator.see-details.') %>
                                        <span class="text"><%= model.get('name') %></span>
                                    <%= Wat.C.ifACL('</a>', 'administrator.see-details.') %>
                                    <div class="mobile info-in-name-cell">
                                        <%= info %>
                                    </div>
                                </td>
                <%
                                break;
                            case 'tenant':
                %>
                                <td class="desktop">
                                    <%= model.get('tenant_name') %>
                                </td>
                <%
                                break;
                            default:
                %>
                                <td class="desktop" data-wsupdate="<%= name %>" data-id="<%= model.get('id') %>">
                                    <% 
                                        if (!col.property) {
                                            print(model.get(name));
                                        }
                                        else if (model.get('properties') && model.get('properties')[col.property]) {
                                            print(model.get('properties')[col.property].value);
                                        }
                                    %>
                                </td>
                <%
                                break;
                        }
                    });
                
                    if (Wat.C.isMultitenant()) { 
                %>
                        <td class="desktop">
                            <%= Wat.C.getLoginData(model.get('name'), model.get('tenant_name')) %>
                        </td>
                <%
                    }
                %>
            </tr>
        <% }); %>
    </tbody>
</table>