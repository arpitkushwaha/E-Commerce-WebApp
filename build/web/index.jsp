<%-- 
    Document   : index
    Created on : 7 Jul, 2017, 6:02:21 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<a href="Linking.jsp">Admin</a>
<div id="menu" align="middle">
<a href="index.jsp">HOME</a>|
<a href="test.jsp">CONTACT</a>|
<a href="test.jsp"  target="_blank">ABOUT</a>
</DIV> <br>        
<font face ="arial" color="#008700">
<center>  <%@include file="ProductSerch.jsp" %>
</center>
<table width="100%" border="1"> 
<tr>
<td width="15%" border="1">


<form method="POST" action="CustCheckLoginProcess.jsp">




<table border="0" >


<tr>
<th colspan="2">Customer Sign In</th>

</tr> 
<tr>
<td>User Id:</td>
<td><input type="text" name="userid"></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password" ></td>
</tr>
<tr>
<td><input type="submit" value="Sign In" ></td>
<td align="right"><a href="CustRegiForm.jsp" >Register</a></td>
</tr>

</table>




</form>

<form method="POST" action="VendorCheckLoginProcess.jsp">


<table border="0" >


<tr>
 <th colspan="2">Vendor Sign In</th>

</tr>
<tr>
  <td>User Id:</td>
  <td><input type="text" name="userid"></td>
</tr>
<tr>
  <td>Password:</td>
  <td><input type="password" name="password" ></td>
</tr>
<tr>
  <td><input type="submit" value="Sign In" ></td>
  <td align="right"><a href="VendorRegiForm.jsp" >Register</a></td>
</tr>

</table>

</form>


<form method="POST" action="AdminCheckLoginProcess.jsp">


<table border="0" >


<tr>
  <th colspan="2">Admin Sign In</th>

</tr>
<tr>
  <td>User Id:</td>
  <td><input type="text" name="userid"></td>
</tr>
<tr>
   <td>Password:</td>
   <td><input type="password" name="password" ></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Sign In" ></td>

</tr>



</table> 

</form> 
</td>
<td border="1">
<marquee bgcolor="lightyellow" scrollamount="10" direction="right">
<h1>HAPPY SHOPPING</h1>
</marquee>
</td>
</tr>
</table> 


</font>
<table border="1"   width="100%" height="200px" style="background-color:#cc99ff;">


<tr>
<td align="center">COPYRIGHT &COPY; 2017 LetsShop.com</td>
</tr>

</table>

</body>
</html>
