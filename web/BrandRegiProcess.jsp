<%-- 
    Document   : BrandRegiProcess
    Created on : 11 Jul, 2017, 11:04:22 AM
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
        <jsp:useBean id="ob" scope="page" class="pack.BrandBean" />
        
        <jsp:setProperty name="ob" property="brand_name" param="brand_name" />
        
     <%  
         ob.setBrand_id(pack.BrandBean.getNewId());
         ob.insertRecord();
         response.sendRedirect("BrandRegiForm.jsp");
     %>
    </body>
</html>
