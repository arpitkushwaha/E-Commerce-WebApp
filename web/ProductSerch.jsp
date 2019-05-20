<%-- 
    Document   : ProductSerch
    Created on : 7 Jul, 2017, 6:49:27 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.ProductBean"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/jquery.js" type="text/javascript" ></script>
              <script type="text/javascript">
                  $(document).ready(abc);
                  function abc()
                  {     
                      $("#btnsearch").click(function() {
                                                   $("#productresultbox").load("ProductSearchResult.jsp",{
                                                                                                            pname:$("#pname").val(),
                                                                                                            brandid:$("#brandid").val(),
                                                                                                            catid:$("#catid").val(),
                                                                                                            price:$("#price").val()
                                                                                                        }); 
                                                } );
                  }
              </script>
    </head>
    <body>
        
            <table border="1" width="500px">
                <tr>
                    <td>
                        Product Name<br>
                        <select name="pname" id="pname" >
                            <option value="all" >All</option>
                            <%
                                List<String> list=ProductBean.getColumnData("Product_name");
                                for(int i=0;i<list.size();i++)
                                    out.println("<option value='"+list.get(i)+"'>"+list.get(i)+"</option>");
                            %>
                        </select>
                    </td>
                    <td>
                        Brand Name<br>
                        <select name="brandid" id="brandid" >
                            <option value="all" >All</option>
                            <%
                                List<pack.BrandBean> list1=pack.BrandBean.getRecords("select * from brand order by brand_name");
                                for(int i=0;i<list1.size();i++)
                                    out.println("<option value='"+list1.get(i).getBrand_id()+"'>"+list1.get(i).getBrand_name()+"</option>");
                            %>
                        </select>
                    </td>
                    <td>
                        Category Name<br>
                        <select name="catid" id="catid" >
                            <option value="all" >All</option>
                            <%
                                List<pack.CategoryBean> list2=pack.CategoryBean.getRecords("select * from category order by Categ_name");
                                for(int i=0;i<list2.size();i++)
                                    out.println("<option value='"+list2.get(i).getCateg_id()+"'>"+list2.get(i).getCateg_name()+"</option>");
                            %>
                        </select>
                    </td>
                    <td>
                        Price<br>
                        <select name="price" id="price" >
                            <option value="all" >All</option>
                        
                                <%
                                    List<String> list3=pack.ProductBean.getColumnData("price");
                                    for(int i=0;i<list3.size();i++)
                                    out.println("<option value='"+list3.get(i)+"'>"+list3.get(i)+"</option>");
                            %>
                        </select>
                    </td>
                    <td>
                        <button id="btnsearch">Search</button>
                    </td>
                </tr>
            </table>
                        <div id="productresultbox">
                        </div>
       
      
    </body>
</html>
