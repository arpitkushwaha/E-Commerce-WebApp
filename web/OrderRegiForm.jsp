<%-- 
    Document   : CustomerRegistration
    Created on : 6 Jul, 2017, 6:01:07 PM
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
    <form method="post" action="OrderRegiProcess.jsp" >
		<table align=center >
			<tr>
				<td>Enter order_id:</td>
				<td><input type=text name="order_id">  </td>
			</tr>
			
			
			<tr>
				<td>Enter order_date:</td>
				<td>
					Day
					<select name=dd >
						<script>
							for(i=1;i<=31;i++)
								document.write("<option value='"+i+"' >"+i+"</option>");
						</script>
					</select>
					Month
					<select name=mm >
						<script>
							//arr=["1","2","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"];
							for(i=1;i<=12;i++)
								document.write("<option value='"+i+"' >"+i+"</option>");
						</script>
					</select>
					Year
					<select name=yy >
						<script>
							d=new Date();
							y=d.getFullYear();
							for(i=y;i>=1970;i--)
								document.write("<option value='"+i+"' >"+i+"</option>");
						</script>
					</select>
				</td>
			</tr>
			
                        <tr>
				<td>Enter order_id:</td>
				<td><input type=text name="order_id" >  </td>
			</tr>
                        <tr>
				<td>Enter product_id:</td>
				<td><input type=text name="product_id" >  </td>
			</tr>
					<tr>
				<td>status:</td>
				<td>
					<input type=radio name=status value="enable" checked="checked" >enable
					<input type=radio name=status value="disable" >disable
				</td>
			</tr>
                          <tr>
				<td>Enter quantity:</td>
				<td><input type=text name="quantity" >  </td>
			</tr>
                        <tr>
				<td>Enter amount:</td>
				<td><input type=text name="amount" >  </td>
			</tr>
                          <tr>
				<td>Enter tax:</td>
				<td><input type=text name="tax" >  </td>
			</tr>
                   
			
			<tr>
				<td>pay_mode</td>
				<td>
					<select name="pay_mode" >
						<option value="cod" >cod</option>
						<option value="net" >net_banking</option>
						<option value="credit" >credit</option>
						<option value="debit" selected >debit</option>
						
					</select>
				</td>
			</tr>

			<tr>
				<td><input type=reset value="Clear Form" ></td>
				<td><input type=submit value="Place Order" ></td>
			</tr>

		</table>
		
	</form>
</body>
</html>
    