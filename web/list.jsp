<%-- 
    Document   : list
    Created on : Jan 6, 2024, 10:58:19 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student</title>
        <%@include file="common/header.jsp" %>    
    </head>
    <body>
        <div class="d-flex justify-content-center">
            <div style="min-width: 400px">
                <%@include file="header.jsp" %> 
                <h1 class="mt-5 mb-3" >Member</h1>
                <div class="d-flex justify-content-between">    
                    <form action="list" method="get" class="row g-2" >
                        <div class="col-auto">
                            <label for="inputName"  class="visually-hidden">Name</label>
                            <input type="text" id="inputName" name="name"  value="${name}" placeholder="Name"
                                   class="form-control">
                        </div>
                        <div class="col-auto">
                            <button type="submit"  class="btn btn-primary mb-3">Search</button>
                        </div>
                    </form> 
                    <c:if test="${admin!=null}">
                        <a href="add"><button type="button" class="btn btn-success">+ Add</button></a>
                    </c:if>            
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">sid</th>
                            <th scope="col">name</th>
                            <th scope="col">gender</th>
                            <th scope="col">age</th>
                            <th scope="col">Address</th>
                                <c:if test="${admin!=null}">
                                <th>Update</th>
                                <th>Delete</th>
                                </c:if>
                        </tr>

                    </thead>
                    <tbody>
                        <c:forEach var="student" items="${list}" varStatus="loop">
                            <tr>
                                <th scope="row">${loop.index + 1}</th>
                                <td>${student.sid}</td>
                                <td>${student.name}</td>
                                <td>${student.gender}</td>
                                <td>${student.age}</td>
                                <td>${student.address}</td>
                                <c:if test="${admin!=null}">
                                    <td style="text-align: center">
                                        <form action="update" method="GET">
                                            <input type="hidden" name="sid" value="${student.sid}">
                                            <input type="submit" value="🖊" />
                                        </form>
                                    </td>
                                    <td style="text-align: center">
                                        <form action="delete" method="POST">
                                            <input type="hidden" name="sid" value="${student.sid}">
                                            <input type="submit" value="✖" />
                                        </form>
                                    </td>
                                </c:if>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <p style="color: tomato">${msg}</p>
                <c:set var="msg" value="${null}" scope="session"></c:set>
            </div>
        </div>
    </body>
</html>
