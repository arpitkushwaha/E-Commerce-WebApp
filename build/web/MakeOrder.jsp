<%-- 
    Document   : MakeOrder
    Created on : 8 Jul, 2017, 6:29:36 PM
    Author     : RUCHI CHAUHAN
--%>

<%@page import="pack.OrderBean"%>
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
            int orderid=OrderBean.getNewId();
            String orderdate=pack.Commons.getYyyymmdd(new java.util.Date());
            String customerid=(String)session.getAttribute("userid");
            String []pids=(String[])session.getAttribute("cart");
            
            
        %>
        
        <table width="1000px" align="center" border="1" style="border-collapse: collapse">
            <tr>
                <th colspan="2">
                    <h2>Order Invoice</h2>
                </th>
            </tr>
            <tr>
                <td><span class="lbl">Order Id:<%= orderid %></span></td>
                <td><span class="lbl">Order Date:<%= orderdate %></span></td>
            </tr>
            <tr>
                <td colspan="2"><span class="lbl">Customer Id:<%= customerid %></span></td>
               
            </tr>
            <tr>
                <td colspan="2">
                    <table width="100%" border="0" style="border-collapse: collapse">
                        <TR align="left">
                            <Th width="100px">
                               Product Id 
                            </Th>
                            <Th>
                                Product Name
                            </Th>
                            <Th align="right">
                                Price
                            </Th>
                            <Th align="right">
                                Tax
                            </Th>
                            <Th align="right">
                                Amount
                            </Th>
                        </TR>
                        <%
                            double totalamt=0;
                            for(int i=0;i<pids.length;i++)
                            {   pack.ProductBean pb=pack.ProductBean.getRecords("select * from product where Product_id="+pids[i]).get(0);
                        %>
                        <TR>
                            <TD>
                                <span class="lbl"><%= pids[i] %></span>
                            </TD>
                            <TD>
                                <span class="lbl"><%= pb.getProduct_name() %></span>
                            </TD>
                            <TD align="right">
                                <span class="lbl"><%= pb.getPrice()+"/-" %></span>
                            </TD>
                            <TD align="right">
                                <span class="lbl"><%= pb.getTax()+"/-" %></span>
                            </TD>
                            <TD align="right">
                                <span class="lbl"><%= pb.getTax()+pb.getPrice()+"/-" %></span>
                            </TD>
                        </TR>
                        <%
                            totalamt+=pb.getTax()+pb.getPrice();
                            }
                            String tot="TOTAL: "+totalamt;
                            tot=tot.substring(0,tot.indexOf("."));
                        %>
                    </table>
                </td>
                
            </tr>
            <tr><th colspan="2" align="right"><%= tot %></th></tr>
            <tr>
                <td colspan="2">
                    <form method="post" action="ProcessOrder.jsp">
                        <input type="hidden" name="orderid" value="<%= orderid %>" >
                        <input type="hidden" name="orderdate" value="<%= orderdate %>" >
                        <input type="hidden" name="customerid" value="<%= customerid %>" >
                    <span class="lbl">
                        <input type="radio" name="paymode" value="cod" checked >COD
                        <input type="radio" name="paymode" value="net" >Net Banking
                        <input type="radio" name="paymode" value="debit" >Dabit Card
                        <input type="submit" value="Pay" >
                    </span>
                    </form>
                </td>
                
            </tr>
        </table>
    </body>
</html>
