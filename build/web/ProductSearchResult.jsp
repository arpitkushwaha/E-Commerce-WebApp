<%-- 
    Document   : ProductSearchResult
    Created on : 8 Jul, 2017, 5:42:03 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="java.util.List"%>
<%@page import="pack.ProductBean"%>
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
                      $("img").mouseover(function() { $(this).fadeTo(500,0.7); });
                      $("img").mouseout(function() { $(this).fadeTo(500,1); });
                  }
              </script>
    </head>
    <body>
       <%
           String pname=request.getParameter("pname");
           String brandid=request.getParameter("brandid");
           String catid=request.getParameter("catid");
           String price=request.getParameter("price");
           String qry=ProductBean.QueryGenerater(pname, brandid, catid, price);
    %>
    
   <form method="post" action="AddToCart.jsp" >
        <%
           
           List<ProductBean> plist=ProductBean.getRecords(qry);
           for(int i=0;i<plist.size();i++)
           {
               
       %>
       
       <div style="width:400px;height:450px;float:left;border:1px silver solid">
        
           <div style="float:left"><img src="<%= "images/products/"+plist.get(i).getProduct_id()+".jpg" %>" width="200" height="250" ></div>
           <h3>Product Id: <%= plist.get(i).getProduct_id() %></h3>
           <h3>Product Name: <%= plist.get(i).getProduct_name() %></h3>
           <h3>Brand Id: <%= plist.get(i).getBrand_id() %></h3>
           <h3>Category Id: <%= plist.get(i).getCateg_id() %></h3>
           <h3>Price : <%= plist.get(i).getPrice() %></h3>
           <h3>Model : <%= plist.get(i).getModel() %></h3> 
           
           <%
               if(plist.get(i).getQuantity()<=0)
                out.println("<div style='color:red'><h2>Out of Stock</h2></div>");
               else
                out.println("<input type=checkbox name=productid value="+plist.get(i).getProduct_id()+" />");
           %>
       </div>
       
       <%
           }
       %>
       <input type="submit" value="Add to Cart" >
       </form>
        
    </body>
</html>
