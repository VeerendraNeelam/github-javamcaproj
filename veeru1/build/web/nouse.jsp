<%--
    Document   : graphcon
    Created on : Mar 11, 2014, 10:18:57 PM
    Author     : admin
--%>
<%@page import = "java.sql.*" %>
<%@ page import = "java.util.*,java.io.*"%>
<%@page import = "java.lang.*" %>
<%@page import="java.text.SimpleDateFormat,javax.servlet.*, javax.servlet.http.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int k=1,m=0,a=0,t=3,count1=0;
        double s;
	Connection con=null,con1=null;
	Statement st=null;
	ResultSet rs=null;
    ResultSet rs1=null;
    PreparedStatement psmt1=null;
	String sql=null;
	 sql="select * from y10cs839.qrg2";
	try
	{
	   con=DriverManager.getConnection("jdbc:derby://localhost:1527/search_db","y10cs839","CS");
	   con1=DriverManager.getConnection("jdbc:derby://localhost:1527/search_db","y10cs839","CS");
         st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
     String c=rs.getString("q21");
     String d=rs.getString("q22");
        if(a==0)
            {
                 count1++;
       psmt1=con1.prepareStatement("insert into y10cs839.v(vertex,num) values(?,?)");
              psmt1.setString(1,c);
              psmt1.setInt(2,count1);
              psmt1.executeUpdate();
              if(c.equalsIgnoreCase(d))
                  {
                  break;
                  }
              else
                  {
                  count1++;
                  psmt1=con1.prepareStatement("insert into y10cs839.v(vertex,num) values(?,?)");
                   psmt1.setString(1,d);
                   psmt1.setInt(2,count1);
                    psmt1.executeUpdate();
                  }

              a++;
              }
      else
          {
              Connection con2=DriverManager.getConnection("jdbc:derby://localhost:1527/search_db","y10cs839","CS");
           Statement st1=con2.createStatement();
           String sql1="select * from y10cs839.v";
	       rs1=st1.executeQuery(sql1);
           while(rs1.next())
               {
               String f=rs1.getString("vertex");
               if((c.equalsIgnoreCase(f)) || d.equalsIgnoreCase(f) && m==0)
                   {
                   m++;
                   break;
                   }
               }
            if(m==0)
                {
                   count1++;
                   psmt1=con1.prepareStatement("insert into y10cs839.v(vertex,num) values(?,?)");
                   psmt1.setString(1,c);
                   psmt1.setInt(2,count1);
                   psmt1.executeUpdate();
                   if(c.equalsIgnoreCase(d))
                  {
                  break;
                  }
                 else
                  {
                       count1++;
                  psmt1=con1.prepareStatement("insert into y10cs839.v(vertex,num) values(?,?)");
                   psmt1.setString(1,d);
                   psmt1.setInt(2,count1);
                    psmt1.executeUpdate();
                  }
              }
           m=0;
           }
         }
        %>
        <a href="relevance1.jsp" >next</a>
        <%
    }
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	 }
	finally
	{
	     st.close();
	      con.close();
	}
            %>

    </body>
</html>
