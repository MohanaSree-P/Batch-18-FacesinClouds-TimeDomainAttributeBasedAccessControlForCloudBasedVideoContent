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
   <script>
     
     
     function validateTime() {
var txt1=document.getElementById("text1").value;
var txt2=document.getElementById("text2").value;


 

if(txt1===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(txt2===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}




else{return  true;}

}
 </script>
 
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
                                                 <li ><a href="Provider_Home.jsp">Home</a></li>
                                                 <li class="active"><a href="Provider_Play.jsp">Channel Details</a></li>
                                                <li><a href="Provider_Upload.jsp">Upload Videos</a></li>
                                                <li><a href="Provider_Play_1.jsp">View Stream</a></li>
                                                        <li><a href="Logout.jsp">Logout</a></li>
							<div class="clear"></div>
						</ul>
					</div>
	    		 <div class="clear"></div>
	       </div>
	   
  </div>

  <div class="main">
  	    		
      <div class="services_heading" style="margin-right: 200px">
     		  <p>Channel Details</p>
     		  </div>
     		 <div class="wrap">
     		 	<div class="services">
     			  
 
 <div >
        <%
            String vname=request.getParameter("name");
            String t1=request.getParameter("t1");
             String t2=request.getParameter("t2");
            %>
                    
  <div >
     
                 <video width="1024" height="300"   autoplay>
  
                     <source src="<%=vname%>#t=<%=t1%>,<%=t2%>" type="video/mp4">
                     <object data="<%=vname%>#t=<%=t1%>,<%=t2%>"  width="320" height="240">
    <embed width="320" height="240" src="111.swf">
  </object> 
                    </div>
      </div>
          
			 
     		</div>
     	  </div>    	
     
   </div>       
  
 
 
		<div class="copy_right">
				<p>Company Name © All rights Reseverd  </p>
		 </div>
</body>
</html>

