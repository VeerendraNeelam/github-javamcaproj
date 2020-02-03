
<%@page import="java.io.*, java.math.BigInteger , java.util.Scanner, java.io.File, java.io.FileNotFoundException, java.lang.*, java.io.BufferedWriter, java.io.FileWriter, java.io.IOException"%>
	<HTML>
  <HEAD>  <TITLE>CAST VOTE</TITLE>  
  </HEAD>
  <BODY>
  	   
  
    <%!    	
  	  BigInteger   v1 = BigInteger.ZERO, v2 = BigInteger.ZERO,m1=BigInteger.valueOf(1),
             v3 = BigInteger.ZERO;
   	int num=0,z=0;
   	BigInteger [] k1= new BigInteger[6];
	BigInteger [] k2= new BigInteger[6];
    	BigInteger [] k3= new BigInteger[6];
    	BigInteger [] u3= new BigInteger[6];%>
	 <% File file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy1.txt");
	File file1= new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2.txt");
	File file2 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy3.txt");%>
       
            <%
            if(request.getParameter("radios") != null) {
                if(request.getParameter("radios").equals("radio1")) {
                    file1 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_1.txt");
                }
                
                if(request.getParameter("radios").equals("radio2")) {
                    
                    file1 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_2.txt");
                }
                
                if(request.getParameter("radios").equals("radio3")) {
                   
                    file1 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_3.txt");
                }
                
                if(request.getParameter("radios").equals("radio4")) {
                    file1 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_4.txt");
                }
                
                if(request.getParameter("radios").equals("radio5")) {
                  
                    file1 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_5.txt");
                }
                
            }
        %>
        <div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">YOUR VOTE IS COUNTED SUCCESSFULLY</span></div>
	
	<style type="text/css" >
	#ap_style td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	#ap_style input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; }
	#ap_style input[type="text"], input[type="password"] { width: 100%; }
	#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	#ap_style table.center { margin-left:auto; margin-right:auto; }
	#ap_style .error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style></div></div>
<% try {
   	 Scanner s1 = new Scanner(file);
      	Scanner s2 = new Scanner(file1);
	Scanner s3 = new Scanner(file2);
             String res="";
		String res2="";
  	
		 if(s3.hasNextLine())
 	          {
                     
              String line =  s3.nextLine();
		 String[] ss=line.split(" ");
		 int l1=Integer.parseInt(ss[1]);%>
		<% num=l1;
		System.out.println("num="+num);
		
	             }
	 %>
  <% if(s1.hasNextLine())
 	{
                    s1.nextLine();
                         
              for(int i=0;i<(num-1);i++)
		{         
		      System.out.println("num="+num);
		      if(s1.hasNextLine())
 	                  {
                            s1.nextLine();
                           }
                }	String line = s1.nextLine();
		 String[] ss=line.split(" ");	
	       for(int i=0;i<5;i++)
	{         
	BigInteger l1=new BigInteger(ss[i]);
		k1[i]=(l1);
		
	}
 	
	}
	for(int i=0;i<(101);i++)
		{         
		 if(s1.hasNextLine())
 		   s1.nextLine();
                
		}
		//if(s1.hasNextLine())
 		{
                String line = s1.nextLine();
                String[] ss=line.split(" ");
		BigInteger k=new BigInteger(ss[0]);
		System.out.println("b1="+k);
	 v1 = k.add(m1);
	System.out.println("v1="+v1);
	}
 if(s2.hasNextLine())
 	{
                String line = s2.nextLine();
                String[] ss=line.split(" ");
		 		
                for(int i=1;i<6;i++)
	{         
		BigInteger l1=new BigInteger(ss[i]);
		k2[i-1]=(l1);
		//System.out.println("k2="+k2[i-1]);
	}
 	 
	//res+=System.lineSeparator();
	}
 if(s2.hasNextLine())
{
           String line =s2.nextLine();
         String[] ss=line.split(" ");
      	BigInteger k=new BigInteger(ss[1]);
	System.out.println("b2="+k);
	 v2 = k;
	
}

	
v3 = v1.add(v2);
num+=1;
res2=res2+"num"+" "+num;
	 res=res+"u3"+" ";
      for (int i =0; i <5; i++)
	 {
           k3[i]=(k1[i]).add(k2[i]);
	System.out.println("k1"+k1[i]+"\tk2="+k2[i]+"\tk3="+k3[i]);
           res=res+k3[i]+" ";
      	 }res+="*";
   
	 res+=System.lineSeparator();
     res=res+"v3"+" "+v3+" ";
	 res+="*";
     res+=System.lineSeparator();%>
	
  <%    FileWriter fw = new FileWriter(file1.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(res);
		bw.close();
	 FileWriter fw2 = new FileWriter(file2.getAbsoluteFile());
		BufferedWriter bw2 = new BufferedWriter(fw2);
		bw2.write(res2);
		bw2.close();
    }catch (FileNotFoundException fe) {
            fe.printStackTrace();
        }
           
  
    
%>
  </BODY>
        </HTML>