<%-- 
    Document   : Video_Stream
    Created on : Jun 24, 2014, 5:44:17 PM
    Author     : vinoth
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html>
<head>
<title>Free Retail Hosting Website Template | Hosting :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>

<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript">
				jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
		</script>
</head>
<body>
<div class="header">
       <div class="header_top">
            <div style="font-size: 25px;color: white;margin-left: 120px" >Implementing TAAC in Cloud for Video Content Sharing & Hiding
</div>
	 <div class="wrap">		
		 	
					<div class="menu">
					    <ul>
                                                 <li class="active"><a href="Play_Video.jsp">Home</a></li>
                                                 <li><a href="Profile.jsp">Profile</a></li>
                                                <li><a href="Purchase.jsp">Purchase</a></li>
							
							<li><a href="Logout.jsp">Logout</a></li>
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	   </div>
  </div>
<%
String Ad_sess=(String)session.getAttribute("username");
String v_name=request.getParameter("name").trim();
String time=request.getParameter("time");
String S_Time=null;
if(Ad_sess.equals("vinoth")){

 try{ Class.forName("com.mysql.jdbc.Driver");
      Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

               Statement stw =  con.createStatement();
              
                stw.executeUpdate("update video set time='"+time+"' where F_Name='"+v_name+"' ");
 }
 catch(Exception w){
              out.println(w);
              }

}
Statement s2;


try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

     String qry1="select * FROM VIDEO where F_Name='"+v_name+"'  ";

           s2 = con.createStatement();  
               ResultSet  r = s2.executeQuery(qry1);
              if(r.next())
                    {
                        
              S_Time=  r.getString("time");
                    
                    }}
catch(Exception r){
out.println(r);
}
%>


  <div class="main">
  	    		
     		 <div class="services_heading">
     		
     		  <p></p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
		  			 	<%
String video=request.getParameter("name");
System.out.println("video name:"+video);
int Time=0;

Statement s1;



 
        DateFormat df = new SimpleDateFormat("HH:mm:ss");
 String formattedDate = df.format(new Date());
        out.println(formattedDate);
        
try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

     String qry1="SELECT (minute (TIMEDIFF('"+formattedDate+"','"+S_Time+"'))*60)+Second (TIMEDIFF('"+formattedDate+"','"+S_Time+"')) AS 't1 - t2', TIMEDIFF(@t2,@t1) AS 't2 - t1'";
System.out.println(qry1);
           s1 = con.createStatement();
               ResultSet  rstt = s1.executeQuery(qry1);
              if(rstt.next())
                    {
                        
                  Time=rstt.getInt(1);
                    
                    }}
catch(Exception r){
out.println(r);
}

 out.println(Time);
 
%>
<div style="">
    <video width="1024" height="300"  controls="" >
      <source src="<%=video%>#t=<%=Time%>" type="video/mp4">
      <!--object data="<%=video%>#t=<%=Time%>" width="320" height="240">
        <embed width="320" height="240" src="111.swf">
      </object-->
    </video>
</div>
			 
     		</div   >
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

