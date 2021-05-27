<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="loginStyle.css"> 
</head>
<body>
    <div class="container">
        <form action="login" method="post">
            <h1 style="margin-bottom: 60px; font-size: 60px;">LOGIN</h1>
            <table align="center">
                <tr>
                    <th>User :</th>
                    <td><input id="user" type="text" name="user" onblur="userVal('user', '1')"></td>
                    <td><div id="1" value=""></div></td>
                </tr>

                <tr>
                    <th>Password :</th>
                    <td><input id="password" type="password" name="password" onblur="passwordVal('password', '2')"></td>
                    <td><div id="2" value=""></div></td>
                </tr>
            </table>

            <button type="submit" onclick="final()">Submit</button>
            <a href="./register.jsp" class= "registerLink">Click here to Register</a>
        </form>
    </div>
</body>

<!-- --------------------------------------------------------------------------------------------------------------------------- -->

<script>
    var flag1=0;
    var flag2=0;
    
    function userVal(id,lb)
    {
      var x = document.getElementById(id).value ;
      var txt = document.getElementById(lb).value ;
      var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
      if(x != ""){
        if(reg.test(x) == false){
          document.getElementById(lb).innerHTML =" <font color=red>   Enter a valid email address</font>";
        }
        else
        {
          document.getElementById(lb).innerHTML = null;
          flag1++;
        }
      }
      else
        document.getElementById(lb).innerHTML = "<font color=red>     Cant' be empty</font>";
    }

    function passwordVal(id, lb){
      var x = document.getElementById(id).value ;
      var txt = document.getElementById(lb).value ;
      if(x != ""){
          document.getElementById(lb).innerHTML = null;
          flag2++;
      }
      else{
        document.getElementById(lb).innerHTML = "<font color=red>     Cant' be empty</font>";
        flag2 = 0;
      }
    }
    
    function final()
    {
     if (flag1 !=0 && flag2 !=0)
     {
      alert("form submitted successfully!");
      location.reload();
     }
    else
     alert("Wrong");
    }
    
    </script>

</html>