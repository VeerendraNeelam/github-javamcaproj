<%@ page import="java.sql.*,java.lang.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    </head>
        
<% int n1=0;
 ResultSet rs; 
 String h=null,unm=null;
          try
          {   
           
          Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/HELLO","VEERU","123456");
		 Statement stmt =con.createStatement();
                  unm = request.getParameter("uname"); 
              String pwd = request.getParameter("pwd"); 
             String str="select * from APP.voter where fname='"+unm+"' and password='"+pwd+"'"; 
              rs=stmt.executeQuery(str); 
     
      if(rs.next()) {
        
        h=rs.getString("vote");
         n1=1;
             }
                                   else 
         out.println("no such user");
     
     
      con.close();   
         
} 
          catch(Exception e) 
                  { 
                    e.getMessage(); 
                    } 
%> 
<% 
  int hh=Integer.parseInt(h);
   if(hh==0)
{
  PreparedStatement psmt1=null;
          try
          {   
           
          Connection con1=DriverManager.getConnection("jdbc:derby://localhost:1527/HELLO","VEERU","123456");
	 
                   psmt1=con1.prepareStatement("update APP.voter set vote=1 where fname='"+unm+"'");    
                   psmt1.executeUpdate();
                           }
              catch(Exception e) 
                  { 
                    e.getMessage(); 
                    } 
if(n1==1)
 {
    %>
    <form method="post" action="home2.html" name="f" target="right">
    <div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">VOTER AUTHENTICATED SUCESSFULLY</span></div>
	
	<style type="text/css" >
	#ap_style td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	#ap_style input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; }
	#ap_style input[type="text"], input[type="password"] { width: 100%; }
	#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	#ap_style table.center { margin-left:auto; margin-right:auto; }
	#ap_style .error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style></div></div>
    
        
         <input type="image" src="submit.jpg" alt="Submit" align="RIGHT">
    </form>
     
            <% } %>
                 
                                              
                 
             
<% }
    else { %><div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;"> YOUR ARE ALREADY VOTED</span></div>
	
	<style type="text/css" >
	#ap_style td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	#ap_style input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; }
	#ap_style input[type="text"], input[type="password"] { width: 100%; }
	#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	#ap_style table.center { margin-left:auto; margin-right:auto; }
	#ap_style .error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style></div></div>
  <% } %>
  
</html>
