<%@page import="java.sql.*,java.io.*,java.util.*,p.*" %>


<%
	String uid = (String)session.getAttribute("uid");
	System.out.println(uid);
	User currUser = new User();
	currUser.setUid("uid");

	try{
		Connection con= Connect_db.getCon();
		System.out.println("test2");
		//PreparedStatement pst= con.prepareStatement("select name, dob, city, state, reqcount, postcount from userdb where u_id=uid");
		// System.out.println("test3");
		//ResultSet rs = pst.executeQuery();
		ResultSet rs= con.createStatement().executeQuery("select name, dob, email, city, state, reqcount, postcount, proimg from userdb where u_id='"+uid+"'");
		System.out.println("test3");
		
		while(rs.next()) {
			currUser.setName(rs.getString("name"));
			currUser.setDob(rs.getString("dob"));
			currUser.setEmail(rs.getString("email"));
			currUser.setCity(rs.getString("city"));
			currUser.setState(rs.getString("state"));
			currUser.setReqCount(rs.getInt("reqcount"));
			currUser.setPostCount(rs.getInt("postcount"));
			Clob pImg = rs.getClob("proimg");
			currUser.setProImg(ClobStringConversion.clobStringConversion (pImg));
		}

		System.out.println("test5");
		System.out.println(currUser.getName());
		System.out.println(currUser.getDob());
		System.out.println(currUser.getEmail());
		System.out.println(currUser.getCity());
		System.out.println(currUser.getState());
		System.out.println(currUser.getReqCount());
		System.out.println(currUser.getPostCount());
		System.out.println(currUser.getProImg());
		
		session.setAttribute("name", currUser.getName());
		session.setAttribute("dob", currUser.getDob());
		session.setAttribute("city", currUser.getCity());
		session.setAttribute("state", currUser.getState());
		session.setAttribute("reqcount", currUser.getReqCount());
		session.setAttribute("postcount", currUser.getPostCount());
		session.setAttribute("proImg", currUser.getProImg());
		
		response.sendRedirect("profile.jsp");
		
	}
	catch(Exception e){
		e.printStackTrace(response.getWriter());
	}
%>