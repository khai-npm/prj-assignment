<%-- 
    Document   : login
    Created on : Jun 2, 2023, 12:19:35 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
          <style>
              
              body{
                  background-image:url("https://cdn.discordapp.com/attachments/813598384506142730/1126943841195413634/71574.png");
                  background-size: 100%;
                 
              }
              
              .login-box{
                  background: #ffffff;
                    width: 300px;
                    height: 100%;
                    float: right;
                    padding: 10px;
                     border: 1px solid #ccc;
                      border-radius: 4px;
                      padding-left: 50px;
                      padding-top: 150px;
                      padding-bottom: 250px;
                      
              }
              
              
              
              .input-box{
                   width: 250px;
                  margin-top: 10px;
                  border: none;
                  border-bottom: 2px solid silver;
                  margin-bottom: 50px;
                  
                  
              }
              
              .button{
                 padding:8px;
                  padding-left: 100px;
                  padding-right: 100px;
                  border-radius: 5px;
                  background-color: #009999;
                  color: white;
                  margin-bottom: 20px;
              }
              
              a{
                  padding-left: 10px;
                  text-decoration: none;
              }
     </style>
        
    </head>
    <body>
        <div class="login-box">
            <h1>LOGIN</h1>
        <form action="MainController" method="POST">
            <div>User ID </div>
            <div class="user-box">
            <input class="input-box" type="text" name="userID" required=""/>
            </div>
            
            <div>Password </div>
            <div class="user-box">
            <input class="input-box" type="password" name="password" required=""/>
            </div>
            <input class="button" type="submit" name="action" value="Login"/></br>
            <input class="button" type="reset" value="Reset"/>
        </form>
        ${requestScope.ERROR}
        <a href="MainController?action=CreatePage">Create Page | </a>
        <a href="MainController?action=shopping">Shopping Page</a>
        </div>
        
    </body>
</html>

