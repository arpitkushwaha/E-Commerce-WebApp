<%-- 
    Document   : CustRegiProcess
    Created on : 7 Jul, 2017, 2:21:53 PM
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
        <jsp:useBean id="ob" scope="page" class="pack.CustomerBean" />
        <jsp:setProperty name="ob" property="customer_id" param="customer_id" />
        <jsp:setProperty name="ob" property="customer_name" param="customer_name" />
        <jsp:setProperty name="ob" property="gender" param="gender" />
        <jsp:setProperty name="ob" property="contact" param="contact" />
    
        <jsp:setProperty name="ob" property="address" param="address" />
        <jsp:setProperty name="ob" property="password" param="password" />
        <jsp:setProperty name="ob" property="status" param="status" />
        
        
        <%
            ob.setStatus("ENABLE");
            ob.insertRecord();
            out.print("You have Successfully registered");
        %>
        <a href="index.jsp" >home</a>
    </body>

</html>
