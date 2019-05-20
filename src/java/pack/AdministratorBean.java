/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import static pack.CustomerBean.getRecords;

/**
 *
 * @author RUCHI CHAUHAN
 */
public class AdministratorBean {
    


    private String admin_id,password;

    /**
     * @return the admin_id
     */
    public String getAdmin_id() {
        return admin_id;
    }

    /**
     * @param admin_id the admin_id to set
     */
    public void setAdmin_id(String admin_id) {
        this.admin_id = admin_id;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
   
    
     public static boolean checkLogin(String userid,String password) throws Exception
    {
        List<AdministratorBean> list=getRecords("select * from administrator where admin_id='"+userid+"' and password='"+password+"'");
       
        if(list.size()!=1)
            return false;
        else
            return true;
    }
    
    
    
    
    
    
    
    
    
    
    
    public void insertRecord() throws Exception
    {
        DataManager.executeUpdate("insert into administrator values('"+admin_id+"','"+password+"')");
    }
    public void updateRecord() throws Exception
    {
        DataManager.executeUpdate("update administrator set password='"+password+"' where admin_id='"+admin_id+"'");
    }
    public void deleteRecord() throws Exception
    {
        DataManager.executeUpdate("delete from administrator where admin_id='"+admin_id+"'");
    }
    public static List<AdministratorBean> getRecords(String sqlQry) throws Exception
    {
        List<AdministratorBean> list=new ArrayList<AdministratorBean>();
        
        ResultSet rs=DataManager.executeQuery(sqlQry);
        while(rs.next())
        {
            AdministratorBean cb=new AdministratorBean();
            cb.setAdmin_id(rs.getString(1));
            cb.setPassword(rs.getString(2));
           
            list.add(cb);
        }
        return list;
    }


    
    
    
}
