<%-- 
    Document   : OrderStatusForm
    Created on : 11 Jul, 2017, 6:50:33 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="CheckSession.jsp" %>
        
        <table border="1" align="center" style="border-collapse: collapse">
            <tr>
                <th >Customer ID:</th>
                <th >Customer Name</th>
                <th>Status</th>
                <th>Update</th>
            </tr>

            <%
                //String vendorid=(String)session.getAttribute("userid");
                java.util.List<pack.CustomerBean> list = pack.CustomerBean.getRecords("select * from customer  order by Customer_name");
                for (int i = 0; i < list.size(); i++) {
            %>
            <tr>
                <td ><%= (i+1) %></td>
                <td ><%= list.get(i).getCustomer_id() %></td>
                <td><%= list.get(i).getCustomer_name() %></td>
                <td><%= list.get(i).getStatus() %></td>
                <td>
                    <form method="post" action="CustomerStatusProcess.jsp" >
                        <input type="hidden" name="customerid" value="<%= list.get(i).getCustomer_id() %>" >
                    <select name="status">
                        <option value="ENABLE" >Enable</option>
                        <option value="DISABLE" >Disable</option>
                    </select>
                        <input type="submit" value="Update" >
                    </forM>
                </td>
            </tr>
            <%
                }
            %>

        </table>
    </body>
</html>
