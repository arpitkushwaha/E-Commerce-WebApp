<%-- 
    Document   : CustomerProfile
    Created on : 7 Jul, 2017, 6:21:42 PM
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
        <a href="CustOrderStatusForm.jsp" >My Order Status</a>
        <br>
        <a href="Logout.jsp" >Sign Out</a>
        
        <%@include file="ProductSerch.jsp" %>
    </body>
</html>
