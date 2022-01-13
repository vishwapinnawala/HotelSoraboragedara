

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
                                }       }
                                
                      }
                            
      %>
      
<!DOCTYPE html>
<html lang="en">
   <head>
      
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>Soraboragedara</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
     
   </head>
   <!-- body -->
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
          
         <!-- header inner -->
         <div class="header">
             
            <div class="container">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                      
                     <div class="full">
                          
                        <div class="center-desk">
                           
                            <div class="logo">
                              <a href="index.html"><img src="images/logo.png" style="margin-top: -30px;" alt="index.jsp" /></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                           <ul class="navbar-nav mr-auto">
                             
                              <li class="nav-item">
                                 <a class="nav-link" href="feedback.jsp">FeedBack</a>
                              </li>
                              <li class="nav-item">
                                 <a class="nav-link" href="payment.jsp">Payments</a>
                              </li>
                           </ul>
                            
                        <% 
      if(uname=="none")
      {
      out.print("<div class='sign_btn'><a href='login.jsp'>Sign in</a></div>");
      }
      else
      {
      out.print("<div class='sign_btn'><a href='./logout'>Sign out</a></div>");
      }
      
 
if(uname.equals("admin")){
out.print("<div class='sign_btn'><a href='./admindashboard.jsp'>Dashboard</a></div>");
}
  //                        

          %>
                           
                           
                           
                        </div>
                     </nav>
                  </div>
               </div>
            </div>
         </div>
      </header>
      <!-- end header inner -->
      <!-- end header -->
      <!-- banner -->
      
      <section class="banner_main">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="text-bg">
                     <div class="padding_lert">
                         <h2 class="wel" style="font-size: 45px;color:#fff;font-weight:bold;text-transform: capitalize">
             <%
                 if(!(uname=="none"))
                                {out.print( "Hello "+uname);}
                                   %>
             </h3>
                        <h1>WELCOME TO HOTEL Sorabora gedara </h1>
                        
                        <p>"Sorabora Gedara" is a hotel in Mahiyanganaya Area, Sri Lanka. There is a great tourist attraction to Sorabora Wewa this is a famous ancient reservoir in Sri Lanka. Here Sorabora cooperation has built a beauty nature as Sorabora Gedara Hotel</p>
                        <a href="booking.jsp">Book Now</a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end banner -->
      <!-- form_lebal -->
      <section>
         <div class="container">
            <div class="row">
               
            </div>
         </div>
      </section>
      <!-- end form_lebal -->
      <!-- choose  section -->
      <div class="choose">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="choose_box">
                     <div class="titlepage">
                        <h2><span class="text_norlam">Choose The Perfect</span> <br>Accommodation</h2>
                     </div>
                     <p>"A home away from your home, Sorabora Gedara is your holiday recluse. Experience the wonders hidden away in the heart of Mahiyanganaya."</p>
                     <a class="read_more" href="#">See More</a>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="row">
                     <div class="col-md-12">
                        <div class="img_box">
                           <figure><img src="images/img1.jpg" alt="#"/></figure>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="img_box">
                           <figure><img src="images/img2.jpg" alt="#"/></figure>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="img_box">
                           <figure><img src="images/img3.jpg" alt="#"/></figure>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end choose  section -->
      <!-- our  section -->
      <div class="our">
         <div class="container">
            <div class="row d_flex">
               <div class="col-md-6">
                  <div class="img_box">
                     <figure><img src="images/img4.jpg" alt="#"/></figure>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="our_box">
                     <div class="titlepage">
                        <h2><span class="text_norlam">Our Best </span> <br>Breakfast</h2>
                     </div>
                     <p>With favorites like Café Kumbuk, Butter Boutique, and Black Cat Café , and more, get ready to experience the best flavors around here.  </p>
                     <a class="read_more" href="#">Read More</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end our  section -->
      <!-- about -->
      <div id="about"  class="about">
         <div class="container-fluid">
            <div class="row d_flex">
               <div class="col-md-6">
                  <div class="about_text">
                     <div class="titlepage">
                        <h2>About Our Hotel</h2>
                        <p>Discover the splendour of Mahiyanganaya whilst at Hotel Soraboragedara. ... your meals outdoors, enjoying the serene ambience and nature surrounding the hotel!</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="about_img">
                     <figure><img src="images/about_img.jpg" alt="#"/></figure>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end about -->
      <!-- testimonial -->
      <div class="testimonial">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Testimonial</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div id="myCarousel" class="carousel slide testimonial_Carousel " data-ride="carousel">
                     <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                     </ol>
                     <div class="carousel-inner">
                        <div class="carousel-item active">
                           <div class="container">
                              <div class="carousel-caption ">
                                 <div class="row">
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                          <h4>Awanthika</h4>
                                          <i><img src="images/te1.png" alt="#"/></i>
                                          <p>Calm n peaceful surroundings. Ample parking outside. Service and food average. A bit expensive compare to service. Swimming pool and bar available.
Suitable for families</p>
                                       </div>
                                    </div>
                                    <div class="col-md-6">
                                       <div class="test_box">
                                          <h4>Parinda</h4>
                                          <i><img src="images/te1.png" alt="#"/></i>
                                          <p>A free quiet place. A place where you can get more value for money. Also the food and bar area here is superb</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                          <h4>Shehan</h4>
                                          <i><img src="images/te1.png" alt="#"/></i>
                                          <p>Their service was beyond our expectation in a rural aria like Mahiyanganaya. The staff was very friendly, professional and everything seems properly managed. They know what hotel management means.  Even after one month of our stay, me and my wife always talks about their service. Thank you guys. Great job.

</p>
                                       </div>
                                    </div>
                                    <div class="col-md-6">
                                       <div class="test_box">
                                          <h4>Vishwa</h4>
                                          <i><img src="images/te1.png" alt="#"/></i>
                                          <p>Awesome place for a visit, limited number of rooms.but great service and theres a deer that will be a nice thing for people to see overall friendly crowd front office supun is one great guy to welcome you there, cheers</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                           <div class="container">
                              <div class="carousel-caption">
                                 <div class="row">
                                    <div class="col-md-6 margin_boot">
                                       <div class="test_box">
                                          <h4>Tishan</h4>
                                          <i><img src="images/te1.png" alt="#"/></i>
                                          <p>Awesome place where is included swimming pool, liquor and with comfortable room. They have kindly and warmly service. Such a good place for weekend and less distance for Sorabora lake. </p>
                                       </div>
                                    </div>
                                    <div class="col-md-6">
                                       <div class="test_box">
                                          <h4>Yasiru</h4>
                                          <i><img src="images/te1.png" alt="#"/></i>
                                          <p> Awesome place for a visit, limited number of rooms.but great service and theres a deer that will be a nice thing for people to see overall friendly crowd front office supun is one great guy to welcome you there, cheers</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                     </a>
                     <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end testimonial -->
      <!--  footer -->
      <footer id="contact">
         <div class="footer">
            <div class="container">
               <div class="row">
                  <div class="col-md-6">
                     <div class="titlepage">
                        <h2>Contact Us</h2>
                     </div>
                     <div class="cont">
                        
                         <p style="text-align: justify;">Sorabora Gedara Hotel. An excellent choice for entertaining your selected guests for all your special events. We specialize in wedding receptions, business functions, conventions, reunions, celebrations, fine dining, bridal showers, company luncheons & more! The exquisite interior has high ceilings, separate areas for each important part of our event, a separate area for a wedding ceremony, a bridal suite, and is subtly decorated giving each space a comfortable and airy atmosphere. We have two banquet halls that combine to prove suitable for any event. Portable walls inside these halls enable you to combine the two halls. Whether your event is for up to 50 guests or up to 150 guests, you will find Sorabora Gedara Hotel able to accommodate all your planning details.</p>
                     </div>
                  </div>
                  <div class="col-md-6">
                      <form action="./contactus"  class="main_form" method="post">
                        <div class="row">
                           <div class="col-md-12 ">
                              <input class="contactus" placeholder="Full Name" type="type" name="name"> 
                           </div>
                           <div class="col-md-12">
                              <input class="contactus" placeholder="Email" type="type" name="email"> 
                           </div>
                           <div class="col-md-12">
                              <input class="contactus" placeholder="Phone Number" type="type" name="phmo">                          
                           </div>
                           <div class="col-md-12">
                              <textarea class="textarea" placeholder="Message" type="type" name="msg">Message </textarea>
                           </div>
                           <div class="col-sm-12">
                              <button class="send_btn">Send</button>
                           </div>
                        </div>
                     </form>
                  </div>
               </div>
            </div>
            <div class="copyright">
               <div class="container">
                  <div class="row">
                     <div class="col-md-12">
                        <p>Copyright 2021 All Right Reserved By Hotel Sorabora Gedara</a></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!--<script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>-->
   </body>
</html>

