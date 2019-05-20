<%-- 
    Document   : VendorRegiProcess
    Created on : 7 Jul, 2017, 7:28:23 PM
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
      <jsp:useBean id="ob" scope="page" class="pack.VendorBean" />
        <jsp:setProperty name="ob" property="vendor_id" param="vendor_id" />
        <jsp:setProperty name="ob" property="vendor_name" param="vendor_name" />
        <jsp:setProperty name="ob" property="contact" param="contact" />
        <jsp:setProperty name="ob" property="address" param="address" />
        <jsp:setProperty name="ob" property="password" param="password" />
        <jsp:setProperty name="ob" property="status" param="status" />
      
        
        <%
            
           
            ob.insertRecord();
            out.print("Vendor Registered Successfully");
        %>
        <a href="index.jsp" >home</a>

</html>
