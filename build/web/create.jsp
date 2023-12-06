<%-- 
    Document   : create
    Created on : Jun 10, 2023, 4:30:04 PM
    Author     : admin
--%>

<%@page import="sample.users.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Create Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <style>
             body{
                 background-color: #ccc;
             }
             .create-box{
                 background: #ffffff;
                    width: 600px;
                    height: 100%;
                    padding: 10px;
                     border: 1px solid #ccc;
                      border-radius: 4px;
                      padding-left: 100px;
                      padding-top: 50px;
                      padding-bottom: 50px;
                      margin-left: 25%;
             }
             
             .input-create{
                 width: 500px;
                  margin-top: 10px;
                  border: none;
                  border-bottom: 2px solid silver;
                  margin-bottom: 30px;
             }
             
             .button-create{
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
              
              ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
                 color: red;
                 opacity: 1; /* Firefox */
                }

                :-ms-input-placeholder { /* Internet Explorer 10-11 */
                 color: red;
                }

                ::-ms-input-placeholder { /* Microsoft Edge */
                 color: red;
                }
            
            
        </style>
    </head>
    <body>
        
        <form class="create-box" action="MainController" method="POST">
            <h1>Create user</h1>
            
            </br>
            
            User ID
            </br><input class="input-create" placeholder="${requestScope.USER_ERROR.userIDError}" type="text" name="userID" required=""/>
            
            </br> Full Name
            </br><input class="input-create" placeholder="${requestScope.USER_ERROR.fullNameError}" type="text" name="fullName" required=""/>
            </br> Role ID
            </br><input class="input-create" type="text" name="roleID" value="US" readonly=""/>
            </br> Password
            </br><input class="input-create" placeholder="${requestScope.USER_ERROR.confirmError}" type="password" name="password" required=""/>
            </br> Confirm
            </br><input class="input-create" type="password" name="confirm" required=""/>
            </br> <input class="button-create" type="submit" name="action" Value="Create"/>
            <input class="button-create" type="reset" value="Reset"/>
            <br>${requestScope.USER_ERROR.error}
            </br><a href="login.html">Back to login</a>
        </form>
    </body>
</html>





