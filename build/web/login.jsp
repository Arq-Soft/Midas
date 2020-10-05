<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       

        <title>Login</title>
        <meta charset="UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <script src="js/adminVal.js"></script>
    </head>
    <body>
         <div class="overlay"></div>
        <div class="masthead">
            <div class="masthead-bg"></div>
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 my-auto">
                        <div class="masthead-content text-white py-5 py-md-0">
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <br><div class="login"><br/>
            <img src="img/midas.png" class="midas" alt="midas">
            <h1>LOGIN</h1>
            <form name="admin"   onsubmit="return validateAdmin()" > 
                <br><p>USERNAME *</p><br/>
                <input type="text" name="usr" placeholder="" required>
                <br><p>PASSWORD *</p><br/>
                <input type="password" class="inp" name="psw" placeholder="" required>
                <br></br>
                <input type="submit" value="LOGIN"  >
            </form> 
        </div>
        
    </body>
</html>
