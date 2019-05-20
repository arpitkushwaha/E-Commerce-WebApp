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
public class CustomerBean {

    private String customer_id, customer_name, gender, contact, address, password,status;

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

    /**
     * @return the Customer_name
     */
    public String getCustomer_name() {
        return customer_name;
    }

    /**
     * @param Customer_name the Customer_name to set
     */
    public void setCustomer_name(String Customer_name) {
        this.customer_name = Customer_name;
    }

    /**
     * @return the Gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param Gender the Gender to set
     */
    public void setGender(String Gender) {
        this.gender = Gender;
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
        List<CustomerBean> list=getRecords("select * from customer where Customer_id='"+userid+"' and Password='"+password+"'");
       
        if(list.size()!=1)
            return 0;
        else
        {   if(list.get(0).getStatus().equals("ENABLE"))
                return 1;
            else
                return 2;
        }
    }
    
    
    public void insertRecord() throws Exception
    {
        DataManager.executeUpdate("insert into Customer values('"+customer_id+"','"+customer_name+"','"+gender+"','"+contact+"','"+address+"','"+password+"','"+status+"')");
    }
    public void updateRecord() throws Exception
    {
        DataManager.executeUpdate("update Customer set password='"+password+"' where Customer_id='"+customer_id+"'");
    }
    public void deleteRecord() throws Exception
    {
        DataManager.executeUpdate("delete from Customer where Customer_id='"+customer_id+"'");
    }
    public static List<CustomerBean> getRecords(String sqlQry) throws Exception
    {
        List<CustomerBean> list=new ArrayList<CustomerBean>();
        
        ResultSet rs=DataManager.executeQuery(sqlQry);
        while(rs.next())
        {
            CustomerBean cr=new CustomerBean();
            
            cr.setCustomer_id(rs.getString(1));
            cr.setCustomer_name(rs.getString(2));
            cr.setGender(rs.getString(3));
            cr.setContact(rs.getString(4));
            cr.setAddress(rs.getString(5));
            cr.setPassword(rs.getString(6));
            cr.setStatus(rs.getString(7));
            
           
            list.add(cr);
        }
        return list;
    }

  


    
    
    
}

    

