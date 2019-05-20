<%-- 
    Document   : AdminRegiProcess
    Created on : 7 Jul, 2017, 12:24:48 PM
    Author     : RUCHI CHAUHAN
--%>
<%@page import="com.oracle.jrockit.jfr.Producer"%>
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
        <jsp:useBean id="ob" scope="page" class="pack.AdministratorBean" />
        <jsp:setProperty name="ob" property="admin_id" param="admin_id" />
        <jsp:setProperty name="ob" property="password" param="password" />
      
        <%
           
             String adminid=(String)session.getAttribute("userid");
              String password=(String)session.getAttribute("password");
           
            ob.setAdmin_id(adminid);
            ob.setPassword(password);
            ob.insertRecord();
            response.sendRedirect("AdminRegiForm.jsp");
        %>    
    
        
    </body>
</html>


  
       
 