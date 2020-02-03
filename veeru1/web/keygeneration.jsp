
<%@page import= "java.math.BigInteger, java.security.SecureRandom, java.util.Random, java.util.Scanner, java.io.File, java.io.FileNotFoundException, java.io.BufferedWriter, java.io.FileWriter, java.io.IOException"%>
 <HTML>
  <HEAD>  <TITLE>KEY GENERATION</TITLE>  
  </HEAD>
  <BODY>
  	   
   	 
  	 <%! BigInteger   q,rdm, min =  BigInteger.ZERO,
         n2=BigInteger.valueOf(100),  a1s = BigInteger.ZERO, 
         a2s = BigInteger.ZERO,b1, b2, rdma, e1, e2, rdma2,product1,product2; %>
   <%!	 BigInteger [] s= new BigInteger[5]; %>
<%!	 BigInteger[][] a= new BigInteger[100][5];
  	 BigInteger [] e= new BigInteger[100];
	BigInteger [] as= new BigInteger[100];
   	 BigInteger [] b= new BigInteger[100];%>
	<% File file = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy1.txt");
	File file1 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy.txt");
	File file2 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2.txt");
	File file2_1 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_1.txt");
        File file2_2 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_2.txt");
        File file2_3 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_3.txt");
        File file2_4 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_4.txt");
        File file2_5 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy2_5.txt");
        File file3 = new File("C:/Users/DEVARAJU/Documents/NetBeansProjects/veeru1/mummy3.txt"); %>
     <%  SecureRandom rnd = new SecureRandom();
       Scanner s3 = new Scanner(file3);
             String res3="num"+" "+"1";
	Scanner sn = new Scanner(file2); 
             String resn="u3"+" "+"0"+" "+0+" "+0+" "+0+" "+0+" "+"*";
		 resn+=System.lineSeparator();
       		resn+="v3"+" "+0+" "+"*";
       Random r =new Random();
       
       q = BigInteger.probablePrime(100, rnd);
           for(int i=0;i<100;i++){      
          BigInteger n3=BigInteger.valueOf(1);
         BigInteger n4=BigInteger.valueOf((q.divide(n2)).intValue()-1);%>
<%	e1 = (new BigInteger(n4.bitLength(),rnd)).add(n3); %>
	<% e[i]=(e1); %>
	<%
   /*     out.println(i+"  "+e[i]);*/
         }   
       
      
  	/*out.println("s=  ");*/
	for(int i=0;i<5;i++){     %>    
 	<% rdm = ((new BigInteger(n2.bitLength(), rnd)).multiply( q)); %>
	<%	s[i]=(rdm); %>
<%	
         }
	for(int i=0;i<100;i++){ 
	for(int j=0;j<5;j++){  %>
	<% rdma = min.add((new BigInteger(n2.bitLength(), rnd)).multiply( q)); %>
       <% a[i][j]=(rdma); %>
	<% 	}
	}
	%>
	<%
 
	for(int i=0;i<100;i++){ 
	product1 = BigInteger.ZERO;
	a1s=BigInteger.ZERO;
	for(int j=0;j<5;j++){  %>
	<% product1 = s[j].multiply(a[i][j]); %>
       <%    a1s= a1s.add(product1); 
       } %>
        <%as[i]=a1s;
	}%>
	

	
	<%for(int i=0;i<100;i++){ %>
	<% b[i] = as[i].add((e[i]).multiply(BigInteger.valueOf(100)));
	}
     %>

               
<% try {
   	 Scanner s1 = new Scanner(file);
             String res="";
		String res1="";
		res1=res1+"s"+" ";
   	
%>

<% if(s1.hasNextLine()) {
                String line = s1.nextLine();
                String[] ss=line.split(" ");
               // res=res+"s"+"   ";
		for(int i=0;i<5;i++){         
		String l= s[i].toString();
		//res=res+l+"   ";
		res1=res1+l+" ";
		}//res+="****";
		res1+="****";
    // res+=System.lineSeparator();
}
if(s1.hasNextLine()) {
                String line = s1.nextLine();
                String[] ss=line.split(" ");
                 res=res+"a[][]"+"   ";
		res+=System.lineSeparator();
		for(int i=0;i<100;i++){ 
		for(int j=0;j<5;j++){        
		String l= a[i][j].toString();
		res=res+l+" ";
		}res+=System.lineSeparator();
               	}res+="****";
     res+=System.lineSeparator();
}
 if(s1.hasNextLine()) {
                String line = s1.nextLine();
         String[] ss=line.split(" ");
                 res=res+"b"+" ";
		 res+=System.lineSeparator();
		for(int i=0;i<100;i++){         
		String l= b[i].toString();
		res=res+l+"   ";
		res+=System.lineSeparator();
		
		}res+="****";
		
     res+=System.lineSeparator();
}
%><div style="text-align: center;">
	<div style="box-sizing: border-box; display: inline-block; width: auto; max-width: 480px; background-color: #FFFFFF; border: 2px solid #0361A8; border-radius: 5px; box-shadow: 0px 0px 8px #0361A8; margin: 50px auto auto;">
	<div style="background: #0361A8; border-radius: 5px 5px 0px 0px; padding: 15px;"><span style="font-family: verdana,arial; color: #D4D4D4; font-size: 1.00em; font-weight:bold;">Ready for new Election</span></div>
	
	<style type="text/css" >
	#ap_style td { text-align:left; font-family: verdana,arial; color: #064073; font-size: 1.00em; }
	#ap_style input { border: 1px solid #CCCCCC; border-radius: 5px; color: #666666; display: inline-block; font-size: 1.00em;  padding: 5px; }
	#ap_style input[type="text"], input[type="password"] { width: 100%; }
	#ap_style input[type="button"], #ap_style input[type="reset"], #ap_style input[type="submit"] { height: auto; width: auto; cursor: pointer; box-shadow: 0px 0px 5px #0361A8; float: right; text-align:right; margin-top: 10px; margin-left:7px;}
	#ap_style table.center { margin-left:auto; margin-right:auto; }
	#ap_style .error { font-family: verdana,arial; color: #D41313; font-size: 1.00em; }
	</style></div></div>
	<%	FileWriter fw3 = new FileWriter(file3.getAbsoluteFile());
		BufferedWriter bw3 = new BufferedWriter(fw3);
		bw3.write(res3);
		bw3.close();
		
		FileWriter fwn = new FileWriter(file2.getAbsoluteFile());
		BufferedWriter bwn = new BufferedWriter(fwn);
		bwn.write(resn);
		bwn.close();
                
                FileWriter fwn1 = new FileWriter(file2_1.getAbsoluteFile());
		BufferedWriter bwn1 = new BufferedWriter(fwn1);
		bwn1.write(resn);
		bwn1.close();
                
                FileWriter fwn2 = new FileWriter(file2_2.getAbsoluteFile());
		BufferedWriter bwn2 = new BufferedWriter(fwn2);
		bwn2.write(resn);
		bwn2.close();
                
                FileWriter fwn3 = new FileWriter(file2_3.getAbsoluteFile());
		BufferedWriter bwn3 = new BufferedWriter(fwn3);
		bwn3.write(resn);
		bwn3.close();
		
                FileWriter fwn4 = new FileWriter(file2_4.getAbsoluteFile());
		BufferedWriter bwn4 = new BufferedWriter(fwn4);
		bwn4.write(resn);
		bwn4.close();
                
                FileWriter fwn5 = new FileWriter(file2_5.getAbsoluteFile());
		BufferedWriter bwn5 = new BufferedWriter(fwn5);
		bwn5.write(resn);
		bwn5.close();
                
 		FileWriter fw = new FileWriter(file.getAbsoluteFile());
		BufferedWriter bw = new BufferedWriter(fw);
		bw.write(res);
		bw.close();
             FileWriter fw1 = new FileWriter(file1.getAbsoluteFile());
		BufferedWriter bw1 = new BufferedWriter(fw1);
		bw1.write(res1);
		bw1.close();
        } catch (FileNotFoundException fe) {
            fe.printStackTrace();
        }
%>

</BODY>
</HTML>