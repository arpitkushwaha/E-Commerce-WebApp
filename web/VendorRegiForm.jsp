<%-- 
    Document   : VendorRegiForm
    Created on : 7 Jul, 2017, 7:27:14 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
     <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
<body>
    <form method="post" action="VendorRegiProcess.jsp" >
		<table align=center >
			<tr>
				<td>Enter vendor_id</td>
				<td><input type=text name="vendor_id">  </td>
			</tr>
			<tr>
				<td>Enter Vendor_name</td>
                                <td><input type=text name="vendor_name"></td>
			</tr>
				<tr>
				<td>Enter contact</td>
                                <td><input type=text name="contact" ></td>
			</tr>	
                       
			<tr>
				<td>Address:</td>
				<td><textarea name="address" rows=5 cols=40  ></textarea></td>
			</tr>
			<tr>
				<td>Enter password</td>
                                <td><input type=password  name="password" ></td>
			</tr>
                    
			<tr>
				<td><input type=reset value="Clear Form" ></td>
				<td><input type=submit value="Sign Up" ></td>
			</tr>

		</table>
	
	</form>
</body>
</html>