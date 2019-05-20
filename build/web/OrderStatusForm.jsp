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
                <th >Sr. No.</th>
                <th >Order ID</th>
                <th>Order Date</th>
                <th>Customer ID</th>
                <th>Product ID</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Tax</th>  
                <th>Payment Mode</th> 
                <th>Status</th>
                <th>Update</th>
            </tr>

            <%
                String vendorid=(String)session.getAttribute("userid");
                java.util.List<pack.OrderBean> list = pack.OrderBean.getRecords("select * from ordermaster where status<>'CANCELED' and product_id IN(select Product_id from product where vendor_id='"+vendorid+"') order by order_date desc,order_id");
                for (int i = 0; i < list.size(); i++) {
            %>
            <tr>
                <td ><%= (i+1) %></td>
                <td ><%= list.get(i).getOrder_id() %></td>
                <td><%= list.get(i).getOrder_date()%></td>
                <td><%= list.get(i).getCustomer_id() %></td>
                <td><%= list.get(i).getProduct_id() %></td>
                <td><%= list.get(i).getQuantity() %></td>
                <td><%= list.get(i).getAmount() %></td>
                <td><%= list.get(i).getTax() %></td>  
                <td><%= list.get(i).getPay_mode() %></td>
                <td><%= list.get(i).getStatus() %></td>
                <td>
                    <form method="post" action="OrderStatusProcess.jsp" >
                        <input type="hidden" name="orderid" value="<%= list.get(i).getOrder_id() %>" >
                        <input type="hidden" name="productid" value="<%= list.get(i).getProduct_id() %>" >
                    <select name="status">
                        <option value="DISPATCHED" >Dispatched</option>
                        <option value="SHIPPING" >Shipping</option>
                        <option value="DELIVERED" >Delivered</option>
                        <option value="RETURNED" >Returned</option>
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
