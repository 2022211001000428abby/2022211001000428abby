<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/3/14
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function $(id){
            return document.getElementById(id);/*获取HTML中指定ID的元素*/
        }
        function check(){
            if (checkEmail()&&checkBirthdate()){
                return true;
            }
            return false;
        }
        function checkEmail(){
            var d=document.getElementById("span-email")
            d.innerHTML="";
            var eValue=document.getElementById("email").value;
            if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/.test(eValue)){
                d.innerHTML="邮箱格式错误";
            }else
                d.innerHTML="邮箱格式正确";
        }
        function checkBirthday(fname){
            var sc = $("#"+fname);
            var s = sc.val();
            if (sc==null){
                alert("Not Null!!!");
                return true;
            }
            var reg=/^(?:(?!0000)[0-9]{4}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-8])|(?:0[13-9]|1[0-2])-(?:29|30)|(?:0[13578]|1[02])-31)|(?:[0-9]{2}(?:0[48]|[2468][048]|[13579][26])|(?:0[48]|[2468][048]|[13579][26])00)-02-29)$/;
            if(!s.match(reg)){
                alert("false");
            }else{
                alert("true");
            }
        }
    </script>
    <style>
        .input1{
            width: 400px;
            height: 30px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
            background-color: antiquewhite;
        }
        .input2{
            width: 130px;
            height: 20px;
            font-size: 19px;
            border: 1px solid #ccc;
            background-color: coral;
        }
    </style>
</head>
<body>
<h3>New User Registration!</h3>
<form method="post">
    <input type="text" name="username" placeholder="Username" class="input1" required/><br/>
    <input type="password" name="password" placeholder="Password" minlength="8" class="input1" required/><br/>
    <input type="text" id="email" placeholder="Email" class="input1" value="" onblur="checkEmail()" required/>
    <span id="span-email"></span><br/>
    Gender<input type="radio" name="gender" value="1"/>Male<input type="radio" name="gender" value="2"/>Female<br/>
    <input type="text" id="birthday" placeholder="Date of Birth(yyyy-mm-dd)" class="input1" onblur="checkBirthday('birthday')"/><br/>
    <input type="submit" value="Register" class="input2"/>
</form>
</body>
</html>
