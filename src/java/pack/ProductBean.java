/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author RUCHI CHAUHAN
 */
public class ProductBean {
    private int product_id,brand_id,categ_id,quantity,tax;
    private String product_name,vendor_id,model;
     private float price;
    /**
     * @return the Product_id
     */
    public int getProduct_id() {
        return product_id;
    }

    /**
     * @param Product_id the Product_id to set
     */
    public void setProduct_id(int Product_id) {
        this.product_id = Product_id;
    }

    /**
     * @return the Brand_id
     */
    public int getBrand_id() {
        return brand_id;
    }

    /**
     * @param Brand_id the Brand_id to set
     */
    public void setBrand_id(int Brand_id) {
        this.brand_id = Brand_id;
    }

    /**
     * @return the Categ_id
     */
    public int getCateg_id() {
        return categ_id;
    }

    /**
     * @param Categ_id the Categ_id to set
     */
    public void setCateg_id(int Categ_id) {
        this.categ_id = Categ_id;
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
     * @return the Product_name
     */
    public String getProduct_name() {
        return product_name;
    }

    /**
     * @param Product_name the Product_name to set
     */
    public void setProduct_name(String Product_name) {
        this.product_name = Product_name;
    }

    /**
     * @return the Vendor_id
     */
    public String getVendor_id() {
        return vendor_id;
    }

    /**
     * @param Vendor_id the Vendor_id to set
     */
    public void setVendor_id(String Vendor_id) {
        this.vendor_id = Vendor_id;
    }

    /**
     * @return the Model
     */
    public String getModel() {
        return model;
    }

    /**
     * @param Model the Model to set
     */
    public void setModel(String Model) {
        this.model = Model;
   }
    
    
    
     /**
     * @return the price
     */
    public float getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(float Price) {
        this.price = Price;
    }
    
      
    public void insertRecord() throws Exception
    {
        DataManager.executeUpdate("insert into Product values("+product_id+",'"+product_name+"',"+brand_id+","+categ_id+","+quantity+",'"+vendor_id+"',"+tax+",'"+model+"',"+price+")");
    }
    public void updateRecord() throws Exception
    {
        DataManager.executeUpdate("update Product set Quantity='"+quantity+"' where Product_id='"+product_id+"'");
    }
    public void deleteRecord() throws Exception
    {
        DataManager.executeUpdate("delete from Product where Product_id='"+product_id+"'");
    }
    public static List<ProductBean> getRecords(String sqlQry) throws Exception
    {
        List<ProductBean> list=new ArrayList<ProductBean>();
        
        ResultSet rs=DataManager.executeQuery(sqlQry);
        while(rs.next())
        {
            ProductBean pd=new ProductBean();
            
            pd.setProduct_id(rs.getInt(1));
            pd.setProduct_name(rs.getString(2));
            pd.setBrand_id(rs.getInt(3));
            pd.setCateg_id(rs.getInt(4));
            pd.setQuantity(rs.getInt(5));
            pd.setVendor_id(rs.getString(6));
            pd.setTax(rs.getInt(7));
            pd.setModel(rs.getString(8));
            pd.setPrice(rs.getFloat(9));
            
           
            list.add(pd);
        }
        return list;
    }
    public static List<String> getColumnData(String columnName) throws Exception
    {
        List<String> list=new ArrayList<String>();
        
        ResultSet rs=DataManager.executeQuery("select "+columnName+" from product group by "+columnName+" order by "+columnName);
        while(rs.next())
        {
           
            list.add(rs.getString(1));
        }
        return list;
    }

   public static String QueryGenerater(String pname,String brandid,String catid,String price)
   {
       String qry="select * from product where 1=1";
            if(!pname.equals("all"))
                qry+=" and Product_name='"+pname+"'";
           if(!brandid.equals("all"))
                qry+=" and Brand_id="+brandid+"";
           if(!catid.equals("all"))
                qry+=" and Categ_id="+catid+"";
          
           if(!price.equals("all"))
                qry+=" and Price="+price+"";
           //qry+=" and Quantity<>0";
           return qry;
   }

   public static int getNewId() throws Exception
 {
     ResultSet rs=DataManager.executeQuery("select max(Product_id) from product");
     if(rs==null)
         return 100;
     
     rs.next();
     int n=rs.getInt(1);
     rs.close();
     return n+1;    
 }
}

    


    
    
    
    
    
    
    
    
