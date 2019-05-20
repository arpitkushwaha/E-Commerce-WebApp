<%-- 
    Document   : CustCheckLoginProcess
    Created on : 7 Jul, 2017, 6:17:51 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.CustomerBean"%>
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
            if(CustomerBean.checkLogin(userid, password)==1)
            {   session.setAttribute("userid", userid);
                session.setAttribute("usertype", "customer");
                session.setMaxInactiveInterval(600);
                response.sendRedirect("CustomerProfile.jsp");
                return;
            }
            else if(CustomerBean.checkLogin(userid, password)==2)
                out.println("<h2>User Disabled.Contact to Administrator. <a href=index.jsp>retry</a></h2>");
            else
                out.println("<h2>Invalid Userid or password. <a href=index.jsp>retry</a></h2>");
        %>
        
    </body>
</html>
