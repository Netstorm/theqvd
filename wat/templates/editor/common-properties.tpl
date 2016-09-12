<% 
    $.each(properties, function(propertyId, property) { 
%>
        <tr style="display: none;" class="js-editor-property-row" data-tenant-id="<%= property.tenant_id %>">
            <td>
                <input type="hidden" class="custom-prop-id" value="<%= property.property_id %>">
                <span class="custom-prop-name"><%= property.key %></span>
                <% if (property.tenant_id == SUPERTENANT_ID) { %>
                    <a class="fright fa fa-eye-slash needsclick" data-i18n="[title]Property only visible from outside of the tenant"></a>
                <% } %>
                <% if (property.description) { %>
                    <a class="fright fa fa-question-circle needsclick" data-i18n="[title]<%= property.description %>" style="margin-left: 6px;"></a>
                <% } %>
                <% if (editorMode == 'massive-edit') { %>
                    <div class="second_row"><span data-i18n="No changes"></span><input type="checkbox" class="js-no-change js-no-change-prop" data-field="<%= property.property_id %>" checked="checked"></div>
                <% } %>
            </td>
            <td>
                <input type="text" class="custom-prop-value" data-current="<%= property.value %>" value="<%= property.value %>" name="<%= property.property_id %>">
            </td>
        </tr>
<%
    });
%>
