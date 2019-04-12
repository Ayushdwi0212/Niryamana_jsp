<%@page import="java.sql.*,java.io.*,p.*" %>

<% 
		String uid = (String)session.getAttribute("uid");
	 	String userPhoto = request.getParameter("userPhoto");
        String AadhaarImageURI = request.getParameter("AadhaarImageURI");
        System.out.println(uid+"\n"+userPhoto+"\n"+AadhaarImageURI);
        //StringReader reader1 = new StringReader(userPhoto);
        //StringReader reader2 = new StringReader(AadhaarImageURI);
        
        try {
			Connection con = Connect_db.getCon();
			PreparedStatement ps= con.prepareStatement("update aadhardb set userimg=?, aadharimg=? where u_id=?");
			   
			
			 Clob uPhoto = con.createClob();
			 uPhoto.setString(1, userPhoto);
			 Clob aImgURI = con.createClob();
			 aImgURI.setString(1,AadhaarImageURI);
			
			 
			 
			    ps.setClob(1,uPhoto);
			    ps.setClob(2,aImgURI);
			    ps.setString(3,uid);
	            
	            ps.execute();
	         
	            System.out.println("Image uploaded in db");
	            
	            response.sendRedirect("profile.jsp");
			 
			 	con.close();
			 
		 }
		 
		 catch(Exception e){
		        e.printStackTrace(); 
		        
		        
		      }

 
 %>