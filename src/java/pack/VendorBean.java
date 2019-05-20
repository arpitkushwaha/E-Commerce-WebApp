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
public class VendorBean {
    private String vendor_id,vendor_name,contact,address,password,status;

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
     * @return the Vendor_name
     */
    public String getVendor_name() {
        return vendor_name;
    }

    /**
     * @param Vendor_name the Vendor_name to set
     */
    public void setVendor_name(String Vendor_name) {
        this.vendor_name = Vendor_name;
    }

    /**
     * @return the Contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param Contact the Contact to set
     */
    public void setContact(String Contact) {
        this.contact = Contact;
    }

    /**
     * @return the Address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param Address the Address to set
     */
    public void setAddress(String Address) {
        this.address = Address;
    }

    /**
     * @return the Password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param Password the Password to set
     */
    public void setPassword(String Password) {
        this.password = Password;
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
    
    
    
    
    
        
    public static int checkLogin(String userid,String password) throws Exception
    {
        List<VendorBean> list=getRecords("select * from vendor where Vendor_id='"+userid+"' and Password='"+password+"'");
       
        if(list.size()!=1)
            return 0;
        else
           if(list.get(0).getStatus().equals("ENABLE"))
            return 1;
           else
               return 2;
    }
    
    
    
    
    
    
        public void insertRecord() throws Exception
    {
        DataManager.executeUpdate("insert into Vendor values('"+vendor_id+"','"+vendor_name+"','"+contact+"','"+address+"','"+password+"','"+status+"')");
    }
    public void updateRecord() throws Exception
    {
        DataManager.executeUpdate("update Vendor set Password='"+password+"' where Vendor_id='"+vendor_id+"'");
    }
    public void deleteRecord() throws Exception
    {
        DataManager.executeUpdate("delete from Vendor where Vendor_id='"+vendor_id+"'");
    }
    public static List<VendorBean> getRecords(String sqlQry) throws Exception
    {
        List<VendorBean> list=new ArrayList<VendorBean>();
        
        ResultSet rs=DataManager.executeQuery(sqlQry);
        while(rs.next())
        {
            VendorBean vr=new VendorBean();
            vr.setVendor_id(rs.getString(1));
            vr.setVendor_name(rs.getString(2));
            vr.setContact(rs.getString(3));
             vr.setAddress(rs.getString(4));
            vr.setPassword(rs.getString(5));
            vr.setStatus(rs.getString(6));
   
            list.add(vr);
        }
        return list;
    }

    
    
}
