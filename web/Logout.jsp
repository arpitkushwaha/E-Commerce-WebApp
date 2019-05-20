<%-- 
    Document   : Logout
    Created on : 7 Jul, 2017, 6:34:37 PM
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
        <%
            if(session!=null)
            {
                session.removeAttribute("userid");
                session.removeAttribute("usertype");
                session.invalidate();
            }
            response.sendRedirect("index.jsp");
            %>
    </body>
</html>
