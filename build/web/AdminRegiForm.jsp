<%-- 
    Document   : AdminRegiForm
    Created on : 7 Jul, 2017, 12:19:56 PM
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
        <form method="post" action="AdminRegiProcess.jsp" >
            <table align=center>
          
            <tbody>
                <tr>
                    <td>enter administrator id:</td>
                    <td><input type="text" name="admin_id"  /></td>
                </tr>
                <tr>
                    <td>enter password</td>
                    <td><input type="password" name="password"  /></td>
                </tr>
                
			<tr>
				<td><input type=reset value="Clear Form" ></td>
				<td><input type=submit value="sign up" ></td>
			</tr>

            </tbody>
        </table>

   
    </body>
</html>
