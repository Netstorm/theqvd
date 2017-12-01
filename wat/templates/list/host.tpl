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
                                <input type="checkbox" class="check_all" <%= checkedAttr %> data-check-id="host">
                            </th>
            <%
                            break;
                        case 'info':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> max-2-icons">
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
                        case 'state':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> desktop" data-sortby="state" data-i18n="State">
                                <span data-i18n="State"><%= i18n.t('State') %></span>
                            </th>
            <%
                            break;
                        case 'address':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> desktop" data-sortby="address">
                                <span data-i18n="IP address"><%= i18n.t('IP address') %></span>
                            </th>
            <%
                            break;
                        case 'vms_connected':
            %>
                            <th data-fieldname="<%= name %>" class="<%= sortAttr %> desktop col-width-15" data-sortby="vms_connected">
                                <span data-i18n="Running VMs"><%= i18n.t('Running VMs') %></span>
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
                    $.each(columns, function(name, col) {
                        if (col.display == false) {
                            return;
                        }
                    
                        switch(name) {
                            case 'checks':
                                var checkedAttr = $.inArray(parseInt(model.get('id')), selectedItems) > -1 ? 'checked' : '';

                %>
                                <td class="cell-check">
                                    <input type="checkbox" class="check-it js-check-it" data-qvd-obj="host" data-check-id="host" data-id="<%= model.get('id') %>" <%= checkedAttr %>>
                                </td>
                <%
                                break;
                            case 'info':
                %>
                                <td>
                                    <% 
                                    switch (model.get('state')) {
                                        case'stopped':
                                    %>
                                        <i class="<%= CLASS_ICON_STATUS_STOPPED %>" data-i18n="[title]Stopped" title="<%= i18n.t('Stopped') %>" data-wsupdate="state" data-id="<%= model.get('id') %>"></i>
                                    <%
                                            break;
                                        case 'running':
                                    %>
                                        <i class="<%= CLASS_ICON_STATUS_RUNNING %>" data-i18n="[title]Running" title="<%= i18n.t('Running') %>" data-wsupdate="state" data-id="<%= model.get('id') %>"></i>
                                    <%
                                            break;
                                        case 'starting':
                                    %>
                                                <i class="<%= CLASS_ICON_STATUS_STARTING %>" data-i18n="[title]Starting" title="<%= i18n.t('Starting') %>" data-wsupdate="state" data-id="<%= model.get('id') %>"></i>
                                    <%
                                            break;
                                        case 'stopping':
                                    %>
                                                <i class="<%= CLASS_ICON_STATUS_STOPPING %>" data-i18n="[title]Stopping" title="<%= i18n.t('Stopping') %>" data-wsupdate="state" data-id="<%= model.get('id') %>"></i>
                                    <%
                                            break;
                                        case 'lost':
                                    %>
                                                <i class="<%= CLASS_ICON_STATUS_LOST %>" data-i18n="[title]Lost" title="<%= i18n.t('Lost') %>" data-wsupdate="state" data-id="<%= model.get('id') %>"></i>
                                    <%
                                    }
                                    
                                    
                                    if (model.get('blocked')) {
                                    %>
                                        <i class="fa fa-lock" data-i18n="[title]Blocked" title="<%= i18n.t('Blocked') %>"></i>
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
                                if (Wat.C.checkACL('host.see-details.')) {
                                    cellClass += ' cell-link';
                                    cellAttrs += 'data-i18n="[title]Click for details"';
                                }
                                
                                cellAttrs += ' class="' + cellClass + '"';
                                
                %>
                                <td <%= cellAttrs %>>
                                    <%= Wat.C.ifACL('<a href="#/host/' + model.get('id') + '">', 'host.see-details.') %>
                                    <%= Wat.C.ifACL('<i class="fa fa-search"></i>', 'host.see-details.') %>
                                        <span class="text"><%= model.get('name') %></span>
                                    <%= Wat.C.ifACL('</a>', 'host.see-details.') %>
                                </td>
                <%
                                break;
                            case 'state':
                %>
                                <td class="desktop">
                                    <% 
                                        switch(model.get('state')) {
                                            case "running":
                                    %>
                                                <span data-i18n="Running"></span>
                                    <%
                                                break;
                                            case "stopped":
                                    %>
                                                <span data-i18n="Stopped"></span>
                                    <%
                                                break;
                                        }
                                    %>
                                </td>
                <%
                                break;
                            case 'address':
                %>
                                <td class="desktop">
                                    <%= model.get('address') %>
                                </td>
                <%
                                break;
                            case 'vms_connected':
                %>
                                <td class="desktop">
                                    <% if (model.get('number_of_vms_connected') > 0) { %>
                                    <%= Wat.C.ifACL('<a href="#/vms/' + Wat.U.transformFiltersToSearchHash({host_id: model.get('id')}) + '">', 'vm.see-main.') %>
                                        <span data-wsupdate="number_of_vms_connected" data-id="<%= model.get('id') %>"><%= model.get('number_of_vms_connected') %></span>
                                    <%= Wat.C.ifACL('</a>', 'vm.see-main.') %>
                                    <% } else {
                                    %>
                                        <span data-wsupdate="number_of_vms_connected" data-id="<%= model.get('id') %>"><%= model.get('number_of_vms_connected') %></span>
                                    <% } %>
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
                %>
            </tr>
        <% }); %>
    </tbody>
</table>