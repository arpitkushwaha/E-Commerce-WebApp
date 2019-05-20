<%-- 
    Document   : VendorCheckLoginProcess
    Created on : 8 Jul, 2017, 12:51:34 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.VendorBean"%>
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
            
            if(VendorBean.checkLogin(userid, password)==1)
            {   session.setAttribute("userid", userid);
                session.setAttribute("usertype", "vendor");
                session.setMaxInactiveInterval(600);
                response.sendRedirect("VendorProfile.jsp");
                return;
            }
            else if(VendorBean.checkLogin(userid, password)==2)
                out.println("<h2>User Disabled.Contact to Administrator. <a href=index.jsp>retry</a></h2>");
            else
                out.println("<h2>Invalid Userid or password. <a href=index.jsp>retry</a></h2>");
        %>
       
    </body>
</html>
