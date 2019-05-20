<%-- 
    Document   : UploadProductImage
    Created on : 13 Jul, 2017, 7:05:20 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String productid=request.getParameter("productid");
            //out.println(productid);
            String filename=productid+".jpg";
            pack.FileBean.upload(application, request, response, "images/products", new String[]{filename}, 1024*1024*5, null);
            response.sendRedirect("ProductRegiForm.jsp");
        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
