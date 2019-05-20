<%-- 
    Document   : Form
    Created on : 6 Jul, 2017, 6:49:59 PM
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
        <jsp:useBean id="ob" scope="page" class="pack.OrderBean" />
        <jsp:setProperty name="ob" property="order_id" param="order_id" />
        <jsp:setProperty name="ob" property="order_date" param="order_date" />
        <jsp:setProperty name="ob" property="product_id" param="product_id" />
        <jsp:setProperty name="ob" property="status" param="status" />
        <jsp:setProperty name="ob" property="quantity" param="quantity" />
        <jsp:setProperty name="ob" property="amount" param="amount" />
        <jsp:setProperty name="ob" property="tax" param="tax" />
        <jsp:setProperty name="ob" property="pay_mode" param="pay_mode" />
        
        
        <%
            
            String dd=request.getParameter("dd");
            String mm=request.getParameter("mm");
            String yy=request.getParameter("yy");
            ob.setOrder_date(yy+"-02-"+dd);
            ob.insertRecord();
            out.print("Order Placed Successfully");
        %>
        <a href="index.html" >home</a>
    </body>
</html>
