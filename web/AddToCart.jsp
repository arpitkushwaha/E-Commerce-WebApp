<%-- 
    Document   : AddToCart
    Created on : 8 Jul, 2017, 6:21:12 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
            String productids[]=request.getParameterValues("productid");
            session.setAttribute("cart", productids);
            
            
            
            
            String []ids=(String[])session.getAttribute("cart");
            for(int i=0;i<ids.length;i++)
            {   out.println("<br>product id:"+ids[i]);
            }
        %>
        <a href="MakeOrder.jsp" >Purchase</a>
    </body>
</html>
