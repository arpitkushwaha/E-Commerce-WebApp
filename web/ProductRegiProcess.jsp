<%-- 
    Document   : ProductRegiProcess
    Created on : 10 Jul, 2017, 7:25:55 PM
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
        <jsp:useBean id="pb" scope="page" class="pack.ProductBean" />
        <jsp:setProperty name="pb" property="*" />
        <%
            String vendorid=(String)session.getAttribute("userid");
            int productid=pack.ProductBean.getNewId();
            pb.setProduct_id(productid);
            pb.setVendor_id(vendorid);
            pb.insertRecord();
            response.sendRedirect("ProductRegiForm.jsp");
        %>
    </body>
</html>
