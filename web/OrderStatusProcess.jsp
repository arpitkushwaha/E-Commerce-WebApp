<%-- 
    Document   : OrderStatusProcess
    Created on : 11 Jul, 2017, 7:15:06 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.DataManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            String orderid=request.getParameter("orderid");
            String productid=request.getParameter("productid");
            String status=request.getParameter("status");
            DataManager.executeUpdate("update ordermaster set status='"+status+"' where order_id="+orderid+" and product_id="+productid);
            
            String usertype=(String)session.getAttribute("usertype");
            if(usertype.equals("customer"))
            {   DataManager.executeUpdate("update product set quantity=quantity+1 where Product_id="+productid); 
                response.sendRedirect("CustOrderStatusForm.jsp");
            
            }
            else
                response.sendRedirect("OrderStatusForm.jsp");
        %>
    </body>
</html>
