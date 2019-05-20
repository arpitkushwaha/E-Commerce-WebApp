<%-- 
    Document   : CustRegiForm
    Created on : 7 Jul, 2017, 2:20:20 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
     <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="CheckSession.jsp" %>
        <form method="post" action="ProductRegiProcess.jsp" >
            <table align=center >

                <tr>
                    <td>Enter Product Name:</td>
                    <td><input type=text name="product_name">  </td>
                </tr>

                <tr>
                    <td>Brand name:</td>
                    <td>
                        <select name="brand_id" >

                            <%  List<pack.BrandBean> list1 = pack.BrandBean.getRecords("select * from brand order by brand_name");
                                for (int i = 0; i < list1.size(); i++) {
                                    out.println("<option value='" + list1.get(i).getBrand_id() + "'>" + list1.get(i).getBrand_name() + "</option>");
                                }
                            %>
                        </select>  
                    </td>
                </tr>

                <tr>
                    <td>Category:</td>
                    <td>
                        <select name="categ_id" >

                            <%
                                List<pack.CategoryBean> list2 = pack.CategoryBean.getRecords("select * from category order by Categ_name");
                                for (int i = 0; i < list2.size(); i++) {
                                    out.println("<option value='" + list2.get(i).getCateg_id() + "'>" + list2.get(i).getCateg_name() + "</option>");
                                }
                            %>
                        </select>
                    </td>
                </tr>


                <tr>
                    <td>Quantity:</td>
                    <td><input type=text name="quantity">  </td>
                </tr>


                <tr>
                    <td>Tax:</td>
                    <td><input type="text" name="tax" ></td>
                </tr>


                <tr>
                    <td>Model:</td>
                    <td><input type="text" name="model" ></td>
                </tr>

                <tr>
                    <td>Price:</td>
                    <td><input type="text" name="price" ></td>
                </tr>
                <tr>
                    <td><input type=reset value="Clear Form" ></td>
                    <td><input type=submit value="Add Product" ></td>
                </tr>

            </table>

        </form>
        <table border="1" align="center" style="border-collapse: collapse">
            <tr>
                <th >Product ID</th>
                <th>Product Name</th>
                <th>Model</th>
                <th>Price</th>
                <th>Brand ID</th>
                <th>Category ID</th>
                <th>Quantity</th>
                <th>Tax</th>  
                <th>Product Image</th>
            </tr>

            <%
                String vendorid=(String)session.getAttribute("userid");
                java.util.List<pack.ProductBean> list = pack.ProductBean.getRecords("select * from product where vendor_id='"+vendorid+"' order by product_id");
                for (int i = 0; i < list.size(); i++) {
            %>
            <tr>
                <td ><%= list.get(i).getProduct_id() %></td>
                <td><%= list.get(i).getProduct_name() %></td>
                <td><%= list.get(i).getModel() %></td>
                <td><%= list.get(i).getPrice() %></td>
                <td><%= list.get(i).getBrand_id() %></td>
                <td><%= list.get(i).getCateg_id() %></td>
                <td><%= list.get(i).getQuantity() %></td>
                <td><%= list.get(i).getTax() %></td>  
                <td><img src='images/products/<%= list.get(i).getProduct_id()+".jpg" %>' width='100' height="125" >
                    <form method="POST" action="UploadProductImage.jsp?productid=<%= list.get(i).getProduct_id() %>" enctype="multipart/form-data" >
                        
                        <input type='file' name='fupload' accept="image/jpg" >
                        <input type='submit' value='Upload' >
                    </form>
                    
                </td>  
            </tr>
            <%
                }
            %>

        </table>
    </body>
</html>