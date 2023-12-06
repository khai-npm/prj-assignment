<%-- 
    Document   : admin
    Created on : Jun 2, 2023, 12:10:59 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.users.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <style>
              a{
                  padding-left: 10px;
                  text-decoration: none;
              }
              
            table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
  font-weight: bold;
}

tr:hover {
  background-color: #f5f5f5;
}


.table-input{
    border: none;
}

.acc-info{
    background: #ffffff;
                    width: 200px;
                    height: 80px;
                    float: left;
                    padding: 5px;
                     border: 1px solid #ccc;
                      border-radius: 4px;
                      padding-left: 30px;
                   margin-bottom: 50px;
                    
}

.logout-button{
    padding-top: 30px;
                     padding:8px;
                  padding-left: 50px;
                  padding-right: 50px;
                  border-radius: 5px;
                  background-color: #009999;
                  color: white;
                  margin-bottom: 20px;
                  float: left;
}


.search-block{
    float: right;
    padding-right: 200px;
}

.search-bar{
                  width: 400px;
                  margin-top: 10px;
                  border: none;
                  border-bottom: 2px solid silver;
                  margin-bottom: 50px;
}

.search-button{
                         padding:8px;
                  padding-left: 20px;
                  padding-right: 20px;
                  border-radius: 5px;
                  background-color: #009999;
                  color: white;
                  margin-bottom: 20px;
                  
}

.update-button{
                  padding:8px;
                  border-radius: 5px;
                  background-color: #009999;
                  color: white;
                  
                  
}
            
        </style>
    </head>
    <body>
    <!c:if test="${sessionScope.LOGIN_USER ==null || sessionScope.LOGIN_USER.roleID ne 'AD'}">
        <!c:redirect url="login.html"></!c:redirect>
    </!c:if>
    <div class="acc-info">
 <h3>Account:${sessionScope.LOGIN_USER.fullName}
 </br>ID:${sessionScope.LOGIN_USER.userID}</h3>
 </div>
 <form  action="MainController" method="POST">
            </br><input class="logout-button" type="submit" name="action" value="Log out"/>
 </form>
     <c:url var="logoutLink" value="MainController">
         <c:param name="action" value="logOut"></c:param>
     </c:url>

 <form class="search-block" action="MainController">
     <input class="search-bar" placeholder="Search" type="text" name="search" value="${param.search}"/>
     <input class="search-button" type="submit" name="action" value="Search"/>    
 </form>
     <c:if test="${requestScope.LIST_USER !=null}">
         <c:if test="${not empty requestScope.LIST_USER}">
             <table border="1">
                 <thead>
                     <tr>
                         <th>No</th>
                         <th>User ID</th>
                         <th>Full Name</th>
                         <th>Role ID</th>
                         <th>Password</th>
                         <th>Update</th>
                         <th>Delete</th>
                     </tr>
                 </thead>
                 <tbody>
                     <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                     <form action="MainController" method="POST">
                         
                     <tr>
                         <td>${counter.count}</td>
                         <td>
                             <input class="table-input" type="text" name="userID" value="${user.userID}" readonly="">
                         </td>
                         <td>
                             <input class="table-input" type="text" name="fullName" value="${user.fullName}" required=""/>
                         </td>
                         <td>
                             <input class="table-input" type="text" name="roleID" value="${user.roleID}" required=""/>
                         </td>
                         <td>${user.password}</td>
                         <td>
                             <input class="update-button" type="submit" name="action" value="Update"/>
                             <input  type="hidden" name="search" value="${param.search}"/>
                         </td>
                         <td>
                             <c:url var="deleteLink" value="MainController">
                                 <c:param name="action" value="Delete"></c:param>
                                 <c:param name="userID" value="${user.userID}"></c:param>
                                 <c:param name="search" value="${param.search}"></c:param>
                             </c:url>
                             <a href="${deleteLink}">Delete</a>
                         </td>
                     </tr>
                      
                     </form>

                     </c:forEach>
                 </tbody>
             </table>

         </c:if>
     </c:if>
     <a href="${logoutLink}">Log Out JSTL</a>
      ${requestScope.ERROR}
      
    </body>
</html>
