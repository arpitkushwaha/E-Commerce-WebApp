/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 *
 * @author Dell
 */
public class DataManager {
    public static ResultSet executeQuery(String sqlQry) throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myprojectdatabase","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sqlQry);
        return rs;  
    }
    public static int executeUpdate(String sqlQry) throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/myprojectdatabase","root","");
        Statement st=con.createStatement();
        
        return st.executeUpdate(sqlQry);  
    }
    
}
