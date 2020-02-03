
<%@page import="java.math.BigInteger, java.util.Scanner,java.io.File, java.io.FileNotFoundException, java.io.IOException, java.sql.*,java.lang.*"%>
  	   
   	 <%! BigInteger   uprodt = BigInteger.ZERO, uprodt3 = BigInteger.ZERO, v1 = BigInteger.ZERO, v2 = BigInteger.ZERO,
            uprodt2 = BigInteger.ZERO,  v3 = BigInteger.ZERO,u1sum = BigInteger.ZERO;
   	BigInteger [] k= new BigInteger[6];
   	BigInteger u1 = BigInteger.ZERO;
      	BigInteger u2 = BigInteger.ZERO;
     	BigInteger u3 = BigInteger.ZERO; %>
    <%	File file0 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy.txt");
	File file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2.txt");%>
	<%
        PreparedStatement psmt1=null;
        try 
        {
            int[] vote=new int[6];
         
		for(int z=1;z<6;z++)
	{
	switch(z)
	{
	case 1: file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_1.txt");
		
                break;
       case 2: file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_2.txt");
		break;
	case 3: file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_3.txt");
		break;
	case 4: file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_4.txt");
                break;
	case 5: file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_5.txt");
                break;
	default:out.print (" wrong member ");
	}
        
%>
   	 <% Scanner s1 = new Scanner(file0);
	 Scanner s2 = new Scanner(file);
               	  if(s1.hasNextLine()) {
                String line =s1.nextLine();
         	 String[] ss=line.split(" ");
		for(int i=1;i<6;i++){         
		BigInteger l1=new BigInteger(ss[i]);
		k[i]=l1;//System.out.println(k[i]);
	}
  	 }uprodt3 = BigInteger.ZERO;
     		u3 = BigInteger.ZERO;
        if(s2.hasNextLine()) {
                String line =s2.nextLine();
         	 String[] ss=line.split(" ");
		for(int i=1;i<6;i++){         
		BigInteger l1=new BigInteger(ss[i]);
		uprodt3=l1.multiply(k[i]);
		//System.out.println("u3="+uprodt3);
		u3=u3.add(uprodt3);
	}//System.out.println("u3t="+u3);
   }
	
		if(s2.hasNextLine()) {
                String line =s2.nextLine();
		String[] ss=line.split(" ");
		BigInteger k1=new BigInteger(ss[1]);
		//System.out.println("v3="+k1);
		BigInteger message1 = (k1.subtract(u3)).mod(BigInteger.valueOf(100));
		
                 vote[z]=message1.intValue();
           	}
                

}
          
                
                    try
{
 Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/HELLO","VEERU","123456");


                 int j=1;
		while(j<6)
	     {
                    psmt1=con.prepareStatement("update APP.CADIDATE1 set vote="+vote[j]+" where sno="+j+"");    
     j++;
      psmt1.executeUpdate();
              }
 

con.close();
}

catch(Exception e)

{

response.sendError(504,"Err Msg--> "+e);

}

}
        catch (FileNotFoundException fe) {
            fe.printStackTrace();
        }
       

  
    

%>
<HTML><div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">VOTES ARE DECRYPTED</span></div>
	
	<style type="text/css" >
	#ap_style td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	#ap_style input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; }
	#ap_style input[type="text"], input[type="password"] { width: 100%; }
	#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	#ap_style table.center { margin-left:auto; margin-right:auto; }
	#ap_style .error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style></div></div></HTML>