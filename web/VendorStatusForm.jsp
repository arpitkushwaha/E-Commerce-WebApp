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
                <th >Vendor ID:</th>
                <th >Vendor Name</th>
                <th>Status</th>
                <th>Update</th>
            </tr>

            <%
                //String vendorid=(String)session.getAttribute("userid");
                java.util.List<pack.VendorBean> list = pack.VendorBean.getRecords("select * from vendor order by Vendor_name");
                for (int i = 0; i < list.size(); i++) {
            %>
            <tr>
               
                <td ><%= list.get(i).getVendor_id() %></td>
                <td><%= list.get(i).getVendor_name() %></td>
                <td><%= list.get(i).getStatus() %></td>
                <td>
                    <form method="post" action="VendorStatusProcess.jsp" >
                        <input type="hidden" name="vendorid" value="<%= list.get(i).getVendor_id() %>" >
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
