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
public class BrandBean {
    private int brand_id;
        private  String brand_name;

    /**
     * @return the brand_id
     */
    public int getBrand_id() {
        return brand_id;
    }

    /**
     * @param brand_id the brand_id to set
     */
    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    /**
     * @return the brand_name
     */
    public String getBrand_name() {
        return brand_name;
    }

    /**
     * @param brand_name the brand_name to set
     */
    public void setBrand_name(String brand_name) {
        this.brand_name = brand_name;
    }

   
    public void insertRecord() throws Exception
    {
        DataManager.executeUpdate("insert into brand values("+brand_id+",'"+brand_name+"')");
    }
    public void updateRecord() throws Exception
    {
        DataManager.executeUpdate("update brand set brand_name='"+brand_name+"' where brand_id="+brand_id+"");
    }
    public void deleteRecord() throws Exception
    {
        DataManager.executeUpdate("delete from brand where brand_id="+brand_id+"");
    }
    public static List<BrandBean> getRecords(String sqlQry) throws Exception
    {
        List<BrandBean> list=new ArrayList<BrandBean>();
        
        ResultSet rs=DataManager.executeQuery(sqlQry);
        while(rs.next())
        {
            BrandBean bb=new BrandBean();
            bb.setBrand_id(rs.getInt(1));
            bb.setBrand_name(rs.getString(2));
           
            list.add(bb);
        }
        return list;
    }
    public static int getNewId() throws Exception
 {
     ResultSet rs=DataManager.executeQuery("select max(Brand_id) from brand");
     if(rs==null)
         return 100;
     if(rs.isAfterLast()&&rs.isBeforeFirst())
         return 100;
     rs.next();
     int n=rs.getInt(1);
     rs.close();
     return n+1;    
 }
}