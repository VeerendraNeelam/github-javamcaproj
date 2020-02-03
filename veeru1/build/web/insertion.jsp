

<%@ page import="java.sql.*,java.lang.*"%>

<html>

<head>
<title>candidate details</title>

</head>
	 

<%       
ResultSet rs; 
 Connection con1=null;
try
{ Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/HELLO","VEERU","123456");
    
String vname=request.getParameter("fname");
String password=request.getParameter("password");
String veml=request.getParameter("email"); 
String mno=request.getParameter("mnum"); 
int vote=0;

String vsql="insert into APP.voter values(?,?,?,?,?)";
PreparedStatement pst = con.prepareStatement(vsql);
pst.setString(1,vname);
pst.setString(2,password);
 pst.setString(3,veml); 
pst.setString(4,mno);
pst.setInt(5,vote); 
 pst.executeUpdate(); 
 
con.close();
}

catch(Exception e)

{

response.sendError(504,"Err Msg--> "+e);

}

%>
<div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">INSERTED SUCCESFULLY</span></div>
	
	<style type="text/css" >
	#ap_style td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	#ap_style input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; }
	#ap_style input[type="text"], input[type="password"] { width: 100%; }
	#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	#ap_style table.center { margin-left:auto; margin-right:auto; }
	#ap_style .error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style></div></div>
</html>


