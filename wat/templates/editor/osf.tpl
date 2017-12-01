<table>
    <% 
    if (Wat.C.checkACL('osf.update.name')) { 
    %>
        <tr data-tab-field="general">
            <td data-i18n="Name"></td>
            <td>
                <input type="text" class="" name="name" value="<%= model.get('name') %>" data-required>
            </td>
        </tr>
    <%
    }
    if (Wat.C.checkACL('vm.update.description')) { 
    %>
    <tr data-tab-field="general">
        <td data-i18n="Description"></td>
        <td>
            <textarea id="name" type="text" name="description"><%= model.get('description') %></textarea>
        </td>
    </tr>
    <% 
    }
    if (model.get('osd_id')) {
    %>
    <tr data-tab-field="software">
        <td colspan=2 class="bb-os-configuration-editor os-configuration-editor"></td>
    </tr>
    <%
    }
    if (Wat.C.checkACL('osf.update.memory')) { 
    %>
        <tr data-tab-field="hardware">
            <td data-i18n="Memory"></td>
            <td>
                <input type="text" class="half100" name="memory" value="<%= model.get('memory') %>"> MB
                <div class="second_row">
                    <%=
                        '(' + i18n.t('Leave it blank to use the default value: __default_megabytes__ MB', {'default_megabytes': '256'}) + ')'
                    %>
                </div>
            </td>
        </tr>
    <%
    }
    if (Wat.C.checkACL('osf.update.user-storage')) { 
    %>
        <tr data-tab-field="hardware">
            <td data-i18n="User storage"></td>
            <td>
                <input type="text" class="half100" name="user_storage" value="<%= model.get('user_storage') %>"> MB
                <div class="second_row">
                    (<span data-i18n="Set to 0 for not using User storage"></span>)
                </div>
            </td>
        </tr>
    <% 
    }
    %>
</table>