<%@ page import="java.sql.*,p.*"%>
<%
    try{
    	String dbAdmin= null;
    	String dbPassword=null;
    	
        String admin= request.getParameter("admin"); 
        String password= request.getParameter("password");
        //System.out.println("Pre"+admin+"\n"+password);
        Connection con= Connect_db.getCon();  
       // ResultSet rst= con.createStatement().executeQuery("select * from logincred where userid='"+admin+"' and pass='"+password+"'");
     	ResultSet rst= con.createStatement().executeQuery("select * from logincred");
     	
         while(rst.next()){
        	
        dbAdmin=rst.getString("username");
        dbPassword=rst.getString("password");}
         
     	System.out.println(dbAdmin+"\n"+dbPassword);
     	
        if(admin==dbAdmin&&password==dbPassword){
       // if(rst.next()){
        	//System.out.println(dbAdmin+"\n"+dbPassword+"\n");
        	//out.println(dbAdmin+"<br>"+dbPassword+"<br>");
        	out.println("Valid login credentials");
        }else{
        	//out.println(dbAdmin+"<br>"+dbPassword+"<br>");
            out.println("Invalid login credentials");   
            }
       
       con.close();
    }
    
    catch(Exception e){       
        out.println("Something went wrong. Please try again.");  
        e.printStackTrace(response.getWriter());
    }      
%>