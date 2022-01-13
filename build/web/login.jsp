<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Sorabora Gedara</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
      <h1><span class="userflag"><%               
                            response.setContentType("text/html");
                            //PrintWriter out =response.getWriter();
        
                            Cookie[] ck = request.getCookies();
                            //String name=ck[0].getValue();
                            //out.print("Welcome "+name);

                            String uname = "none";
                            if(!(request.getCookies()==null))
                    {
                        for (Cookie aCookie : ck) {
                            String names = aCookie.getName();
 
                        if (names.equals("uname")) {
                            uname = aCookie.getValue();
                              break;
                                }       }
                                //out.print("Welcome "+uname);
                            
                        if(!(uname=="none"))
                        {
                         out.print("User Already Logged In");
                              }
      }
      %></span></h1>
    <div class="wrapper">
      <div class="title">Login Form</div>
       <form method="post" action="./login">
        <div class="field">
          <input type="text" name="uname" required>
          <label>User Name</label>
        </div>
        <div class="field">
          <input type="password" name="password" required>
          <label>Password</label>
        </div>
        <div class="content">
          <div class="checkbox">
            <input type="checkbox" id="remember-me">
            <label for="remember-me">Remember me</label>
          </div>
          <div class="pass-link"><a href="#">Forgot password?</a></div>
        </div>
        <div class="field">
          <input type="submit" value="Login">
        </div>
        <div class="signup-link">Not a member? <a href="registration.jsp">Signup now</a></div>
        <div class="signup-link">Admin Login - <a href="adminlogin.jsp">Click Here</a></div>
      </form>
    </div>

  </body>
</html>
