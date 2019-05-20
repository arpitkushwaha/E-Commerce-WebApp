/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author RUCHI CHAUHAN
 */
public class OrderBean {
    private int order_id,product_id,quantity,amount,tax;
    private String order_date,status,pay_mode,customer_id;

    /**
     * @return the order_id
     */
    public int getOrder_id() { //naming convention of function .....
        return order_id;
    }

    /**
     * @param order_id the order_id to set
     */
    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    /**
     * @return the Order_date
     */
    public String getOrder_date() {
        return order_date;
    }

    /**
     * @param Order_date the Order_date to set
     */
    public void setOrder_date(String Order_date) {
        this.order_date = Order_date;
    }

    /**
 
 

    /**
     * @param Product_id the Product_id to set
     */
    public void setProduct_id(int Product_id) {
        this.product_id = Product_id;
    }

    
    public int getProduct_id(){
        return product_id;
    }
    /**
     * @return the Status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param Status the Status to set
     */
    public void setStatus(String Status) {
        this.status = Status;
    }

    /**
     * @return the Quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param Quantity the Quantity to set
     */
    public void setQuantity(int Quantity) {
        this.quantity = Quantity;
    }

    /**
     * @return the Amount
     */
    public int getAmount() {
        return amount;
    }

    /**
     * @param Amount the Amount to set
     */
    public void setAmount(int Amount) {
        this.amount = Amount;
    }

    /**
     * @return the Tax
     */
    public int getTax() {
        return tax;
    }

    /**
     * @param Tax the Tax to set
     */
    public void setTax(int Tax) {
        this.tax = Tax;
    }

    /**
     * @return the Pay_mode
     */
    public String getPay_mode() {
        return pay_mode;
    }

    /**
     * @param Pay_mode the Pay_mode to set
     */
    public void setPay_mode(String Pay_mode) {
        this.pay_mode = Pay_mode;
    }
       
   
       /**
     * @return the Customer_id
     */
    public String getCustomer_id() {
        return customer_id;
    }

    /**
     * @param Customer_id the Customer_id to set
     */
    public void setCustomer_id(String Customer_id) {
        this.customer_id = Customer_id;
    }

  

    
    
    
    public void insertRecord() throws Exception
    {   String qry="insert into ordermaster values("+order_id+",'"+order_date+"','"+customer_id+"',"+product_id+",'"+status+"',"+quantity+","+amount+","+tax+",'"+pay_mode+"')";
        DataManager.executeUpdate(qry);
    }
    public void updateRecord() throws Exception
    {
        DataManager.executeUpdate("update ordermaster set Quantity='"+quantity+"' where order_id='"+order_id+"'");
    }
    public void deleteRecord() throws Exception
    {
        DataManager.executeUpdate("delete from ordermaster where order_id='"+order_id+"'");
    }
    public static List<OrderBean> getRecords(String sqlQry) throws Exception
    {
        List<OrderBean> list=new ArrayList<OrderBean>();
        
        ResultSet rs=DataManager.executeQuery(sqlQry);
        while(rs.next())
        {
            OrderBean or=new OrderBean();
            
            or.setOrder_id(rs.getInt(1));
            or.setOrder_date(rs.getString(2));
            or.setCustomer_id(rs.getString(3));
            or.setProduct_id(rs.getInt(4));
            or.setStatus(rs.getString(5));
            or.setQuantity(rs.getInt(6));
            or.setAmount(rs.getInt(7));
            or.setTax(rs.getInt(8));
            or.setPay_mode(rs.getString(9));
            
            
           
            list.add(or);
        }
        return list;
    }

 public static int getNewId() throws Exception
 {
     ResultSet rs=DataManager.executeQuery("select max(order_id) from ordermaster");
     if(rs==null)
         return 100;
     
     rs.next();
     int n=rs.getInt(1);
     rs.close();
     return n+1;    
 }
    
 }
