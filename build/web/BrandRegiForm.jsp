<%-- 
    Document   : BrandRegiForm
    Created on : 11 Jul, 2017, 11:01:38 AM
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
        <form method="post" action="BrandRegiProcess.jsp" >
            <table align=center>
          
            <tbody>
                <tr>
                    
                    <td>Brand Name:<input type="text" name="brand_name"  /></td>
                    <td><input type=submit value="Add" ></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table border="1">
                            <tr><th width="30px" >Brand ID</th><th>Brand Name</th></tr>
                            
                            <%
                                java.util.List<pack.BrandBean> list=pack.BrandBean.getRecords("select * from brand order by Brand_id");
                                for(int i=0;i<list.size();i++)
                                {    
                            %>
                            <tr>
                                <td><%= list.get(i).getBrand_id() %></td>
                                <td><%= list.get(i).getBrand_name() %></td>
                            </tr>
                            <%
                                }
                            %>
                           
                        </table>
                    </td>
				
		</tr>

            </tbody>
        </table>

     </form>
    </body>
</html>
