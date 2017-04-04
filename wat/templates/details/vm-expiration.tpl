<%
    if (!expiration_soft && !expiration_hard) {
%>
        <div class="no-elements" data-i18n="No"></div>
<%
    }
    else {
        if (remainingTimeHard.expired) {
%>
            <td class="js-details-expiration"><span class="error" data-i18n="Expired"></span></div>
<%
        }
        else {
%>
            <div class="inner-table" class="js-details-expiration">
                <table class="expiration-table">
                    <tbody>
                        <%
                            if (expiration_soft) {
                        %>
                            <tr>
                                <td class="<%= remainingTimeSoft.priorityClass %>" data-i18n="Soft"></td>
                                <td class="<%= remainingTimeSoft.priorityClass %>"><%= expiration_soft.replace('T',' ') %></td>
                                <td class="<%= remainingTimeSoft.priorityClass %>" <%= remainingTimeSoft.remainingTimeAttr %> data-countdown data-raw="<%= time_until_expiration_soft_raw %>"><%= remainingTimeSoft.remainingTime %></td>
                            </tr>
                        <%
                            }
                            if (expiration_hard) {
                        %>
                            <tr>
                                <td class="<%= remainingTimeHard.priorityClass %>" data-i18n="Hard"></td>
                                <td class="<%= remainingTimeHard.priorityClass %>"><%= expiration_hard.replace('T',' ') %></td>
                                <td class="<%= remainingTimeHard.priorityClass %>" <%= remainingTimeHard.remainingTimeAttr %> data-countdown data-raw="<%= time_until_expiration_hard_raw %>"><%= remainingTimeHard.remainingTime %></td>
                            </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
<%
        }
    }
%>