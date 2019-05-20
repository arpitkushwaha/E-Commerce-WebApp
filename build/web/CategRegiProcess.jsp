<%-- 
    Document   : CategRegiProcess
    Created on : 11 Jul, 2017, 11:30:52 AM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.CategoryBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <jsp:useBean id="ob" scope="page" class="pack.CategoryBean" />
        <jsp:setProperty name="ob" property="categ_name" param="categ_name" />
        
        <%  
            ob.setCateg_id(CategoryBean.getNewId());
            ob.insertRecord();
            response.sendRedirect("CategRegiForm.jsp");    
        %>
        
    </body>
</html>
