/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.PrintWriter;
import java.sql.SQLException;
import model.dbCon;
import javax.servlet.http.HttpServletResponse;

/*
 * @author WUSC SRILANKA
 */

public class roomcheckbean {
    dbCon con=new dbCon();
    public String checkroom()
    {
    int roomno=0;
        String roomnos="";
        //out.println(inqid);
        //roomcheckbean rcheck = new roomcheckbean();
        for(int i=0;i<21;i++)
        {
            roomno++;
           roomnos=Integer.toString(roomno); 
           if(con.checkroom(roomnos)==true) 
           {
           System.out.println("checking!");
           }
           else
           {
           System.out.println("Assinged room no: "+roomnos);
           break;
           }
        }
    return roomnos;
    }
    
}
