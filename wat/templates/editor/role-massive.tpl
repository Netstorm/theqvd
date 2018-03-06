<table>
    <% if (Wat.C.checkACL('role.update.description')) { %>
    <tr>
        <td>
            <span data-i18n="Description"></span>
            <a class="button fa fa-rotate-left js-no-change-reset no-change-reset invisible" data-i18n="Reset" data-field="description"></a>
        </td>
        <td>
            <textarea id="name" type="text" name="description" data-i18n="[placeholder]No changes"></textarea>
        </td>
    </tr>
    <% } %>
    <% if(Wat.C.checkACL('role.update.assign-role')) { %>
        <tr>
            <td data-i18n="Assign roles"></td>
            <td>
                <div class="bb-assign-roles assign-roles"></div>
            </td>
        </tr>
        <tr>
            <td>
                <span data-i18n="Inherit templates"></span>
                <div>
                    <a class="button2 fa fa-th js-templates-matrix-mode-btn" data-i18n="Matrix mode"></a>
                </div>
            </td>
            <td>
                <div class="bb-assign-templates assign-templates"></div>
            </td>
        </tr>
    <% } %>
 </table>