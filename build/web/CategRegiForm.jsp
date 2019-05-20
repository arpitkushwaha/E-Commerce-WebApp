<%-- 
    Document   : CategRegiForm
    Created on : 11 Jul, 2017, 11:29:47 AM
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
        <form method="post" action="CategRegiProcess.jsp" >
            <table align=center>
          
            <tbody>
                <tr>
                    <td>Category Name:<input type="text" name="categ_name"  /></td>
                    <td><input type=submit value="Add" ></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table border="1">
                            <tr><th width="30px" >Category ID</th><th>Category Name</th></tr>
                            
                            <%
                                java.util.List<pack.CategoryBean> list=pack.CategoryBean.getRecords("select * from category order by Categ_id");
                                for(int i=0;i<list.size();i++)
                                {    
                            %>
                            <tr>
                                <td><%= list.get(i).getCateg_id() %></td>
                                <td><%= list.get(i).getCateg_name() %></td>
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
