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
public class CategoryBean {
    private String categ_name;
    private int categ_id;

    /**
     * @return the categ_id
     */
    public int getCateg_id() {
        return categ_id;
    }

    /**
     * @param categ_id the categ_id to set
     */
    public void setCateg_id(int categ_id) {
        this.categ_id = categ_id;
    }

    /**
     * @return the categ_name
     */
    public String getCateg_name() {
        return categ_name;
    }

    /**
     * @param categ_name the categ_name to set
     */
    public void setCateg_name(String categ_name) {
        this.categ_name = categ_name;
    }
    
   
    public void insertRecord() throws Exception
    {
        DataManager.executeUpdate("insert into category values("+categ_id+",'"+categ_name+"')");
    }
    public void updateRecord() throws Exception
    {
        DataManager.executeUpdate("update category set categ_name='"+categ_name+"' where categ_id='"+categ_id+"'");
    }
    public void deleteRecord() throws Exception
    {
        DataManager.executeUpdate("delete from category where categ_id='"+categ_id+"'");
    }
    public static List<CategoryBean> getRecords(String sqlQry) throws Exception
    {
        List<CategoryBean> list=new ArrayList<CategoryBean>();
        
        ResultSet rs=DataManager.executeQuery(sqlQry);
        while(rs.next())
        {
            CategoryBean cg=new CategoryBean();
            cg.setCateg_id(rs.getInt(1));
            cg.setCateg_name(rs.getString(2));
          
            list.add(cg);
        }
        return list;
    }

    public static int getNewId() throws Exception
 {
     ResultSet rs=DataManager.executeQuery("select max(Categ_id) from category");
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