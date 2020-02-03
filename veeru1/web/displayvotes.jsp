<%@page import ="java.sql.*"%>

<html>

<head>

<title> voter details</title>

</head>

<body>

<br>

<div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 1080px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">RESULTS</span></div>
	<div style="background: white; padding: 15px" id="ap_style">
	<style type="text/css" scoped>
	#ap_style td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	#ap_style input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; }
	#ap_style input[type="text"], input[type="password"] { width: 100%; }
	#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	#ap_style table.center { margin-left:auto; margin-right:auto; }
	#ap_style .error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style>
<form method="post"  name="f" target="_top">
<table class='center'>

<%
 
 
Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/HELLO","VEERU","123456");
String vsql="select fname,vote from app.cadidate1";
PreparedStatement pst= con.prepareStatement(vsql);
 ResultSet rs=pst.executeQuery();
%>

<tr bgcolor=" #FFFFFF"><td align="center"><b>NAME</b></td><td align="center"><b>VOTE</b></td></tr>

<%

while(rs.next())

{

%>

<tr><td><%=rs.getString("fname")%></td>

<td><%=rs.getString("vote")%></tr>

<%}
con.close();

%>

</table>

</body>

</html>







	
