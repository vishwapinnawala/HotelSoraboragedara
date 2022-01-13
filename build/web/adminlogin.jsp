<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login Form Design | CodeLab</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
      <h1><span class="userflag"><%               
                          
      %></span></h1>
    <div class="wrapper">
      <div class="title">Admin Login Form</div>
       <form method="post" action="./adminlogin">
        <div class="field">
          <input type="text" name="uname" required>
          <label>Admin User Name</label>
        </div>
        <div class="field">
          <input type="password" name="password" required>
          <label>Admin Password</label>
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
        
      </form>
    </div>

  </body>
</html>
