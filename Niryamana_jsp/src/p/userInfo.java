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
        InputStream is = null;
        InputStream isu = null;
        HttpSession sess = req.getSession();
        String uid = (String)sess.getAttribute("uid");
        String userPhoto = req.getParameter("userPhoto");
        String AadhaarImage = req.getParameter("AadhaarImage");
        System.out.println(uid+"\n"+userPhoto+"\n"+AadhaarImage);
        
        
        
		 try {
			 con = Connect_db.getCon();
			 ps= con.prepareStatement("insert into aadhardb values(?,?,?,?)");
			   
			 is = new FileInputStream(new File(req.getParameter("userPhoto")));
			 
			    ps.setString(1,uid);
			    ps.setBinaryStream(2,is);
			    ps.setBinaryStream(3,isu);
			    ps.setString(4,"N");
	            
	            ps.execute();
	         
	            System.out.println("Image uploaded in db");
	            
	            resp.sendRedirect("profile.jsp");
			 
			 
			 
		 }
		 
		 catch(Exception e){
		        e.printStackTrace(); 
		        
		        
		      }

	}
}