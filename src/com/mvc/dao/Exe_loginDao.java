package com.mvc.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mvc.bean.Exe_loginBean;
import com.mvc.bean.CustomerBean;
import com.mvc.util.DBConnection;

public class Exe_loginDao {
	public Boolean loginuser(Exe_loginBean loginBean)
	{
	
     String username = loginBean.getUserName();
     String password = loginBean.getPassword();
     
     Connection con ;
     PreparedStatement preparedStatement = null; 
     
     try
     {
         con = DBConnection.createConnection();
         
         String query = "select * from account_executive where username=? and password=?"; //Insert user details into the table 'USERS'
         preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
         
         preparedStatement.setString(1, username);
         preparedStatement.setString(2, password);
         
        ResultSet rs = preparedStatement.executeQuery();
         
          //Just to ensure data has been inserted into the database
        //System.out.println(rs.next());
         if( rs.next()==true)
         {
        	 return true;
         }
         else {
        	 return false;
         }
     }
     catch(SQLException e)
     {
        e.printStackTrace();
        System.out.println(e);
     }       
     return false; 
	}
	public Boolean customercreate(CustomerBean custBean)
	{
	
     int ssnid = custBean.getSsnid();
     String name = custBean.getCustomername();
     int age = custBean.getAge();
     String address = custBean.getAddress();
     String state = custBean.getState();
     String city = custBean.getCity();
     
     Connection con ;
     PreparedStatement preparedStatement = null; 
     
     try
     {
         con = DBConnection.createConnection();
         
         String query = "insert into customer(ssn_id,name,age,address,city,state) values(?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
         preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
         
         preparedStatement.setInt(1,ssnid);
         preparedStatement.setString(2, name);
         preparedStatement.setInt(3, age);
         preparedStatement.setString(4, address);
         preparedStatement.setString(5,city);
         preparedStatement.setString(6,state);
         
        int i = preparedStatement.executeUpdate();
         
          //Just to ensure data has been inserted into the database
        //System.out.println(rs.next());
         if(i!=0)
         {
        	 return true;
         }
         else {
        	 return false;
         }
     }
     catch(SQLException e)
     {
        e.printStackTrace();
        System.out.println(e);
     }       
     return false; 
	}
}
