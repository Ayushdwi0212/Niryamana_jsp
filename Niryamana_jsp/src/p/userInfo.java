package p;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/userInfo")
public class userInfo extends HttpServlet {
	
	protected void service(HttpServletRequest req, HttpServletResponse resp)
		    throws ServletException, IOException{
		Connection con = null;
        PreparedStatement ps = null;
        HttpSession sess = req.getSession();
        String uid = (String)sess.getAttribute("uid");
        String userPhoto = req.getParameter("userPhoto");
        String AadhaarImageURI = req.getParameter("AadhaarImageURI");
        System.out.println(uid+"\n"+userPhoto+"\n"+AadhaarImageURI);
        
        
        
		 try {
			 con = Connect_db.getCon();
			 ps= con.prepareStatement("update aadhardb set userimg=?, aadharimg=?, where u_id=?");
			   
			
			 
			    ps.setString(1,userPhoto);
			    ps.setString(2,AadhaarImageURI);
			    ps.setString(3,uid);
	            
	            ps.execute();
	         
	            System.out.println("Image uploaded in db");
	            
	            resp.sendRedirect("profile.jsp");
			 
			 
			 
		 }
		 
		 catch(Exception e){
		        e.printStackTrace(); 
		        
		        
		      }

	}
}