

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
String vsno=request.getParameter("sno");     
String vname=request.getParameter("fname"); 
String veml=request.getParameter("email"); 
String mno=request.getParameter("mnum"); 
int vote=0;

String vsql="insert into APP.cadidate1 values(?,?,?,?,?)";
PreparedStatement pst = con.prepareStatement(vsql);
pst.setString(1,vname);
 pst.setString(2,veml); 
pst.setString(3,mno);
pst.setInt(5,Integer.parseInt(vsno));
pst.setInt(4,vote); 
 pst.executeUpdate(); 
out.println("inserted successfully"); 
con.close();
}

catch(Exception e)

{

response.sendError(504,"Err Msg--> "+e);

}

%>

</html>


