<%-- 
    Document   : VendorProfile
    Created on : 8 Jul, 2017, 1:01:57 PM
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
         <%@include file="CheckSession.jsp" %>
         
        <h1>Hello <%= session.getAttribute("userid").toString() %></h1>
        
        <br>
        <a href="ProductRegiForm.jsp" >Add New Product</a>
        <br>
        <a href="OrderStatusForm.jsp" >View Orders List</a>
        <br>
        <a href="Logout.jsp" >Sign Out</a>
    </body>

</html>
