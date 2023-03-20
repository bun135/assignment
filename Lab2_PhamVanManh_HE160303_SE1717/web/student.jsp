<%-- 
    Document   : student
    Created on : Feb 8, 2023, 10:45:43 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3 style="color: red">${requestScope.err}</h3>
    <form action="StudentServlet" method="post">
                       
            Number Of Student: <input style="margin-bottom: 10px" type="text" name="numOfStudents">
      <input type="submit" value="Generate">
    </form>
    <table border="1px">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Gender</th>
        <th>DOB</th>
      </tr>
      <c:forEach items="${students}" var="student">
          
    <tr>
      <td>${student.id}</td>
      <td>${student.name}</td>
      <td>
        <input type="checkbox" name="gender" value=""
               <c:if test="${student.gender == true}">checked</c:if> disabled/>
      </td>
      <td>${student.DOB}</td>
    </tr>
  </c:forEach>
    </table>
    </body>
</html>
