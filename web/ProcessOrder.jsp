<%-- 
    Document   : ProcessOrder
    Created on : 10 Jul, 2017, 6:30:18 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.DataManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><style>
        body { background-image:url('images/products/1.png');}</style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="CheckSession.jsp" %>
        <%
            String orderid=request.getParameter("orderid");
            String orderdate=request.getParameter("orderdate");
            String customerid=request.getParameter("customerid");
            String paymode=request.getParameter("paymode");
            String[] pids=(String[])session.getAttribute("cart");
            
            pack.OrderBean ob=new pack.OrderBean();
                    
            for(int i=0;i<pids.length;i++)
            {   pack.ProductBean pb=new pack.ProductBean();
                pb=pack.ProductBean.getRecords("select * from product where Product_id="+pids[i]).get(0);
                
                ob.setAmount((int)pb.getPrice());
                ob.setCustomer_id(customerid);
                ob.setOrder_date(orderdate);
                ob.setOrder_id(Integer.parseInt(orderid));
                ob.setPay_mode(paymode);
                ob.setProduct_id(Integer.parseInt(pids[i]));
                ob.setQuantity(1);
                ob.setStatus("PENDING");
                ob.setTax(pb.getTax());
                ob.insertRecord();
                
                DataManager.executeUpdate("update product set quantity=quantity-1 where Product_id="+pb.getProduct_id());
            }
            if(paymode.equals("cod"))
            {
                out.println("<h2>Order placed Successfully. Pay on Delivery</h2>");
            }
            else if(paymode.equals("net"))
            {
                response.sendRedirect("http://www.paypal.com");
            }
            else
                response.sendRedirect("http://www.icicibank.com");
        %>
        
    </body>
</html>
