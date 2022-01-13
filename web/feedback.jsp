<%@page import  = "javax.servlet.http.Cookie"%>
 <%@page import  = "java.io.PrintWriter"%>
 <%@page import="model.dbCon"%>
 <%@page import="model.cookieverify"%>
<%             
Cookie[] ck = request.getCookies();
String uname = "none";
cookieverify obj=new cookieverify();
                    
                            
                            
                    
                            //response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            //Cookie[] ck = request.getCookies();
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                            //String uname = "none";
                      
                    if(!(request.getCookies()==null))
                    {
                    out.print(obj.verifyindex(request, response));
                   
                    
                    uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }}
                                
                      
                            
      %>
<!DOCTYPE HTML>
<html>
    
<head>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	
	
	<link href="css/styli.css" rel='stylesheet' type='text/css' />
	
</head>

<body>
    <button class="homebtn" onclick="window.location.href = 'index.jsp';" >Home</button>	
	<h1> Hotel Soraboragedara </h1>
	<div class="main-section-w3layouts">
		<form action="./feedbackservlet" method="post">
			
			<div class="field-w3-agile-grid">
				<label>
					 Subject </label>
				<input type="text" name="subject" placeholder="" required="">
			</div>
			<div class="text-field-agileits-w3layouts">
				<label>
					 Message </label>
				<textarea name="msg" placeholder=" " required=""></textarea>
			</div>
			 <%
      if(uname=="none")
      {
      out.print("<input type='text' class='login' value='Log in First'>");
      }
      else
      {
      out.print("<input type='submit' value='Submit'>");
      }            
            %>
		</form>
	</div>
	<!--copyright-->
	<div class="copy-wthree">
		
	</div>
	<!--//copyright-->

</body>

</html>