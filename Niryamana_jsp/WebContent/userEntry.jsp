<%@page import="java.sql.*,java.io.*,p.*" %>

<%
	String uid = request.getParameter("userUID");

    System.out.println(uid);


try{
    Connection con= Connect_db.getCon();
    System.out.println("1");
    PreparedStatement pst= con.prepareStatement("insert into userdb values(?,?,?,?,?,?,?,?,?,?)");
    pst.setString(1,uid);
    pst.setString(2,null);
    pst.setString(3,null);
    pst.setString(4,null);
    pst.setString(5,null);
    pst.setString(6,null);
    pst.setString(7,null);
    pst.setInt(8,0);
    pst.setInt(9,0);
    pst.setString(10,null);

    pst.execute();
    
    PreparedStatement ps= con.prepareStatement("insert into aadhardb values(?,?,?,?)");
    ps.setString(1,uid);
    ps.setString(2,null);
    ps.setString(3,null);
    ps.setString(4,"N");
    
    ps.execute();
    

    System.out.println("2");

    response.sendRedirect("index.jsp");
    System.out.println("3");
    con.close();
  }

  catch(Exception e){
	  e.printStackTrace(response.getWriter()); 
    
  }







%>