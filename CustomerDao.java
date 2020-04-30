/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;


import connection.MyCon;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;
import model.Customer;
import model.Vehicle;

public class CustomerDao {
   
 
   public boolean checkLogin(String user,String pass) throws SQLException
    {
         String sql;
        Connection con=null;
        sql="select * from login where username=? and password=?";
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        ps=con.prepareStatement(sql);
        ps.setString(1, user);
        ps.setString(2, pass);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
          return true;
        
     return false;
    }            
    
    public int autoIncr() throws SQLException
    {
        String sql;
        Connection con=null;
        sql="select max(Rno) from student";
        int max=101;
        PreparedStatement ps=null;
        con=MyCon.getConnection();
        ps=con.prepareStatement(sql);
        ResultSet rs=null;
        rs=ps.executeQuery();
        if(rs.next())
        {     
            max=rs.getInt(1);
            max=max+1;
        }    
      return max;
    }
    public int insertcustomer(Customer S) throws SQLException
    {
        String sql;
        Connection con=null;
       
        sql="insert into customer values(?,?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
         con=MyCon.getConnection();
         ps=con.prepareStatement(sql);
         ps.setInt(1, S.getId());
         ps.setString(2, S.getName());
         ps.setString(3, S.getAdd());
         ps.setString(4, S.getEmail());
          ps.setString(5, S.getRoute());
         ps.setLong(6, S.getMobile());
          ps.setString(7, S.getDate());
          ps.setString(8, S.getVehicle());
         int n=0; 
         n=ps.executeUpdate();
         return(n);   
        
      }

 public List<Customer> searchAll()throws SQLException
    {
       Connection con=null;
       ResultSet rs=null;
       PreparedStatement ps=null;
       con=MyCon.getConnection();
       String sql;
       sql="select * from customer";
       ps=con.prepareStatement(sql);
       rs=ps.executeQuery();
       List<Customer>mylist=new ArrayList<Customer>();
       while(rs.next())
       {
                Customer S=new Customer();
                
                S.setId(rs.getInt(1));
                S.setName(rs.getString(2));
                S.setAdd(rs.getString(3));
                S.setEmail(rs.getString(4));
                S.setRoute(rs.getString(5));
                 S.setMobile(rs.getLong(6));
                  S.setDate(rs.getString(7));
                S.setVehicle(rs.getString(8));
                mylist.add(S);
                S=null;
       }    
       return mylist;
       
    }
  public Customer searchById(int id) throws SQLException
   {
       Connection con=null;
       ResultSet rs=null;
       PreparedStatement ps=null;
       con=MyCon.getConnection();
       String sql;
       sql="select * from customer where id=?";
       ps=con.prepareStatement(sql);
       ps.setInt(1, id);
       rs=ps.executeQuery();
      Customer S=new Customer();
       if(rs.next())
       {
                 S.setId(rs.getInt(1));
                S.setName(rs.getString(2));
                S.setAdd(rs.getString(3));
                S.setEmail(rs.getString(4));
                S.setRoute(rs.getString(5));
                 S.setMobile(rs.getLong(6));
                  S.setDate(rs.getString(7));
                S.setVehicle(rs.getString(8));
       }
       else
       {
           S=null;
       }    
       
      return S;   
   }

  public boolean updateCustomer(Customer S)throws SQLException
    {
        String sql;
        Connection con=null;
        sql="update customer set Name=?,Address=?,Email=?,Route=?,Mobile=?,DOT=?,VehicleType=? where ID=?";
        PreparedStatement ps=null;
         con=MyCon.getConnection();
         ps=con.prepareStatement(sql);
          ps.setInt(1, S.getId());
         ps.setString(2, S.getName());
         ps.setString(3, S.getAdd());
         ps.setString(4, S.getEmail());
          ps.setString(5, S.getRoute());
         ps.setLong(6, S.getMobile());
          ps.setString(7, S.getDate());
          ps.setString(8, S.getVehicle());
         
         if(ps.executeUpdate()>0)
             return true;
       return false;  
    }        
public int insertVehicle(Vehicle V) throws SQLException
    {
        String sql;
        Connection con=null;
       
        sql="insert into vehicle values(?,?,?,?,?,?,?)";
        PreparedStatement ps=null;
         con=MyCon.getConnection();
         ps=con.prepareStatement(sql);
         ps.setString(1, V.getType());
         ps.setString(2, V.getNumber());
         ps.setString(3, V.getDriver());
         ps.setString(4, V.getConductor());
          ps.setString(5, V.getRoute());
         ps.setString(6, V.getShift());
          ps.setFloat(7, V.getPrice());
    
         int n=0; 
         n=ps.executeUpdate();
         return(n);   
        
      }
public List<Vehicle> searchVehicle()throws SQLException
    {
       Connection con=null;
       ResultSet rs=null;
       PreparedStatement ps=null;
       con=MyCon.getConnection();
       String sql;
       sql="select * from vehicle";
       ps=con.prepareStatement(sql);
       rs=ps.executeQuery();
       List<Vehicle>mylist=new ArrayList<Vehicle>();
       while(rs.next())
       {
       Vehicle S=new Vehicle();
                
                S.setType(rs.getString(1));
                S.setNumber(rs.getString(2));
                S.setDriver(rs.getString(3));
                S.setConductor(rs.getString(4));
                S.setRoute(rs.getString(5));
                 S.setShift(rs.getString(6));
                  S.setPrice(rs.getFloat(7));
               
                mylist.add(S);
                S=null;
       }    
       return mylist;
       
    }
 public Vehicle searchByVno(String Vno) throws SQLException
   {
       Connection con=null;
       ResultSet rs=null;
       PreparedStatement ps=null;
       con=MyCon.getConnection();
       String sql;
       sql="select * from Vehicle where Vno=?";
       ps=con.prepareStatement(sql);
       ps.setString(1, Vno);
       rs=ps.executeQuery();
      Vehicle S=new Vehicle();
       if(rs.next())
       {
           S.setType(rs.getString(1));
                S.setNumber(rs.getString(2));
                S.setDriver(rs.getString(3));
                S.setConductor(rs.getString(4));
                S.setRoute(rs.getString(5));
                 S.setShift(rs.getString(6));
                  S.setPrice(rs.getFloat(7));
              
       }
       else
       {
           S=null;
       }    
       
      return S;   
   }

}
