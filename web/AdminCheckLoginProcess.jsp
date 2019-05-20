<%-- 
    Document   : AdminCheckLoginProcess
    Created on : 8 Jul, 2017, 2:04:29 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.AdministratorBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String userid=request.getParameter("userid");
            String password=request.getParameter("password");
            if(AdministratorBean.checkLogin(userid, password))
            {   session.setAttribute("userid", userid);
                session.setAttribute("usertype", "administrator");
                session.setMaxInactiveInterval(600);
                response.sendRedirect("AdminProfile.jsp");
                return;
            }
        %>
        <h2>Invalid userid or password <a href="index.jsp">retry</a></h2>
    </body>
</html>
