/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author WUSC SRILANKA
 */
public class dbCon {
   public static Connection createConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:13306/test", "root", "");
        
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public boolean checkUser(String uname,String password)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from login where username=? and password=?");
        ps.setString(1, uname);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    
    public boolean checkadmin(String uname,String password)
    {
        boolean st = false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from adminlogin where username=? and password=?");
        ps.setString(1, uname);
        ps.setString(2,password);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    
    public boolean regUser(String uname,String fullname,String email,String phno,String password,String gender) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into login values(?,?)");
    ps.setString(1,uname);
    ps.setString(2,password);
    int i= ps.executeUpdate();
    
    PreparedStatement ps1 = createConnection().prepareStatement("insert into userdetails values(?,?,?,?,?)");
    ps1.setString(1,uname);
    ps1.setString(2,fullname);
    ps1.setString(3,email);
    ps1.setString(4,phno);
    ps1.setString(5,gender);
    int x= ps1.executeUpdate();
    
    if((i>0) && (x>0))
        return true;
    else
        return false;
    }
    
    public boolean userbooking(String uname,String cindate,String coutdate,String adult,String child,String mplan,String rooms,String requests) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into bookings values(?,?,?,?,?,?,?,?)");
    ps.setString(1,uname);
    ps.setString(2,cindate);
    ps.setString(3,coutdate);
    ps.setString(4,adult);
    ps.setString(5,child);
    ps.setString(6,mplan);
    ps.setString(7,rooms);
    ps.setString(8,requests);
   
    int i= ps.executeUpdate();
    
    if(i>0)
        return true;
    else
        return false;
    }
    
    
    
    public static List<bookingsbean> getAllEmployees(){  
        List<bookingsbean> list=new ArrayList<bookingsbean>();  
          
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from bookings");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                bookingsbean e=new bookingsbean();  
                e.setuname(rs.getString(1));  
                e.setcindate(rs.getString(2));  
                e.setcoutdate(rs.getString(3));  
                e.setadult(rs.getString(4));  
                e.setchild(rs.getString(5));  
                e.setmplan(rs.getString(6));  
                e.setrooms(rs.getString(7));  
                e.setrequests(rs.getString(8));  
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    public static List<bookingsbean> getallrooms(){  
        List<bookingsbean> list=new ArrayList<bookingsbean>();  
          
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from rooms");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                bookingsbean c=new bookingsbean();  
                c.setroomno(rs.getString(1));  
                c.setroomuname(rs.getString(2));  
                list.add(c);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    public boolean checkroom(String roomno)
    {
        boolean st=false;
        try
        {
        PreparedStatement ps = createConnection().prepareStatement("select * from rooms where roomno=?");
        ps.setString(1, roomno);
        ResultSet rs=ps.executeQuery();
        st=rs.next();
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    return st;
    }
    
    public boolean assingroom(String roomno,String uname) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into rooms values(?,?)");
    ps.setString(1,roomno);
    ps.setString(2,uname);
    int i= ps.executeUpdate();
   
    if(i>0)
        return true;
    else
        return false;
    }
    
    public int bookingsdelete(String uname)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from bookings where uname=?")) {
      
      ps.setString(1, uname);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return st;
    }
    
    public int roomsdelete(String roomno)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from rooms where roomno=?")) {
      
      ps.setString(1, roomno);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return st;
    }
    
    public String getemail(String username){  
          String email="";
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select email from userdetails where username=?");  
            ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                email=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return email;  
    }
    
    
    public static List<userdetailsbean> getuserdetails(){  
        List<userdetailsbean> list=new ArrayList<userdetailsbean>();  
          
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from userdetails");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                userdetailsbean e=new userdetailsbean();  
                e.setusername(rs.getString(1));  
                e.setfullname(rs.getString(2));  
                e.setemail(rs.getString(3));  
                e.setphno(rs.getString(4));  
                e.setgender(rs.getString(5));  
               list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    public int userdelete(String username)
    {
        int st = 0;
         
    try (
        PreparedStatement ps = createConnection().prepareStatement("delete from userdetails where username=?")) {
      
      ps.setString(1, username);
      st=ps.executeUpdate();
      
      //System.out.println("Record deleted successfully");
    } catch (SQLException e) {
      e.printStackTrace();
    }
    return st;
    }
    
  public boolean sendfeedback(String uname,String subject,String msg) throws ClassNotFoundException,SQLException
    {
    PreparedStatement ps = createConnection().prepareStatement("insert into complaints values(?,?,?)");
    ps.setString(1,uname);
    ps.setString(2,subject);
    ps.setString(3,msg);
    int i= ps.executeUpdate();
    
   
    if(i>0)
        return true;
    else
        return false;
    }  
    
   public static List<feedbackbean> getfeedbacks(){  
        List<feedbackbean> list=new ArrayList<feedbackbean>();  
          
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select * from complaints");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                feedbackbean e=new feedbackbean();  
                e.setusername(rs.getString(1));  
                e.setsubject(rs.getString(2));
                e.setmsg(rs.getString(3));
                list.add(e);  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return list;  
    }
    
    public String bookingcount(){  
          String count="";
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from bookings");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
    
    public String guestcount(){  
          String count="";
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from rooms");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
    
      public String usercount(){  
          String count="";
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from userdetails");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
      
      public String feedbackcount(){  
          String count="";
        try{  
            Connection con=dbCon.createConnection();  
            PreparedStatement ps=con.prepareStatement("select count(*) from complaints");  
            //ps.setString(1, username);
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                count=rs.getString(1);               
                  
            }  
            con.close();  
        }catch(Exception e){e.printStackTrace();}  
          
        return count;  
    }
    
}
