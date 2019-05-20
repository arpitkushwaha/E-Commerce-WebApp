<%-- 
    Document   : CustomerStatusProcess
    Created on : 13 Jul, 2017, 6:09:44 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.DataManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="CheckSession.jsp" %>
        <%
            String custid=request.getParameter("customerid");
            String status=request.getParameter("status");
            DataManager.executeUpdate("update customer set Status='"+status+"' where Customer_id='"+custid+"'");
            response.sendRedirect("CustomerStatusForm.jsp");
        %> 
    </body>
</html>
