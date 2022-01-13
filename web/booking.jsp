<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
<%@page import="model.dbCon"%>
<%@page import="javax.servlet.http.Cookie"%>
<%@page import="model.cookieverify"%>
--><% 
    Cookie[] ck = request.getCookies();
String uname = "none";
cookieverify obj=new cookieverify();
    
                            //response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                         if(!(request.getCookies()==null))
                    {
                    out.print(obj.verifyindex(request, response));
                   
                    
                    uname = "none";
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }
                                //out.print("Welcome "+uname); 
                      }



      %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Soraboragedara</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Soraboragedara" />
<!-- Meta tag Keywords -->
<link rel="stylesheet" href="css/styles.css" type="text/css" media="all" />
<link rel="stylesheet" href="css/pay_1.css" type="text/css"/>
<link rel="stylesheet" href="css/font-awesome.min.css"><!--fontawesome-css--> 
<script src="js/jquery-2.1.4.min.js"></script>
</head>
<body>
     <button class="homebtn" onclick="window.location.href = 'index.jsp';" >Home</button>
<section class="booking-agile">
  
<h1> Sorabora Gedara Hotel booking form</h1>
<div class="headbooking-agile">
			<div class="bookingleft-agile">
				<h2>make a reservation</h2>
					<form action="./booking" method="post">
						<div class="arrival-agile">
							<p>check-in date</p>
							<input placeholder="Check in" name="cindate" class="date" id="datepicker" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required=""/>
						</div>
						<div class="departure-agile">
							<p>check-out date</p>
							<input placeholder="Check out" name="coutdate" class="date" id="datepicker1" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required="" />
						</div>
						<div class="clear"></div>
							<div class="guest-agile">
								<p>Adult</p>
									<select name="adult">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
									</select>
							</div>
							<div class="room-agile">
								
<p>Children</p>
							<select name="child">
							  <option value="0">0</option>
							  <option value="1">1</option>
							  <option value="2">2</option>
							  <option value="3">3</option>
							</select>
							</div>
							<div class="clear"></div>
							<div class="room-agile">
									<p>Meal Plan</p>
								<select name="mplan">
								  <option value="Room Only">Room Only</option>
								  <option value="Bed & Breakfast">Bed & Breakfast</option>
								  <option value="Half Board">Half Board</option>
								  <option value="Full Board">Full Board</option>
								</select>
							</div>
							<div class="room-agile">
								<p>rooms</p>
									<select name="rooms">
									  <option value="">room</option>
									  <option value="single">single</option>
									  <option value="double">double</option>
									  <option value="suite">suite</option>
									</select>

							</div>
							<div class="clear"></div>
							<div class="name-agile">
								<p>Name</p>
								<input type="text" name="name" placeholder="Name">
							</div>
							<div class="last-agile">
								<p>Additional Requests</p>
								<input type="text" name="requests" placeholder="Requests" >
							</div>
							<div class="clear"></div>
								<div class="submit-agile">
                                                                    
            <%
      if(uname=="none")
      {
      out.print("<input type='null' value='Log in First'>");
      }
      else
      {
      out.print("<input type='submit' value='Book Now'>");
      }            
            %>
								</div>
								<div class="clear"></div>
						</form>
				</div>
<div class="bookingright-agile">
<h3>get in touch</h3>
			<div class="mobile-agile">
				<div class="icon-agile">
					<span><i class="fa fa-phone" aria-hidden="true"></i></span>
				</div>
				<div class="contact-agile">
					<p>phone</p>
					<span>055 2258 307<br>077 7239 696</span>
                                      
				</div>
			</div>
			<div class="clear"></div>
			<div class="email-agile">
				<div class="mail-agile">
					<span><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
				</div>
				<div class="address-agile">
					<p>email</p>
					<span><a href="mailto:hotelsoraboragedara@gmail.com">soraboragedara@gmail.com</a></span>
				</div>
				<div class="clear"></div>
				<div class="offers-agile">
					<h4>Hotel Sorabora Gedara</h4>
				<ul class="offers">
                                    <li><li><a href="#">checkin: sunday 31 Dec 2021 from 15:00</a></li>
					<li><a href="#">checkout: monday 31 Dec 2022 from 12:00</a></li>
				</ul>
					<span> 3000 / 1 day</span>
				</div>
			</div>
</div>
<div class="clear"></div>
</div>
<footer></footer>
</section>
<!--start-date-piker-->
		<link rel="stylesheet" href="css/jquery-ui.css" />
		<script src="js/jquery-ui.js"></script>
			<script>
				$(function() {
				$( "#datepicker,#datepicker1" ).datepicker();
				});
			</script>
<!-- /End-date-piker -->
</body>
</html>