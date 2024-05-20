<%-- 
    Document   : update
    Created on : Jan 6, 2024, 11:23:01 PM
    Author     : admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
        <%@include file="common/header.jsp" %>
    </head>
    <body>


        <div class="d-flex justify-content-center">
            <div>
                <%@include file="header.jsp" %>
                <h1>Update Student</h1>
                <form action="update" method="post">
                    <input type="hidden" name="sid" value="${student.sid}">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name:</label> 
                        <input class="form-control"  placeholder="Name" type="text" id="name" name="name" value="${student.name}"  required>
                    </div>
                     <div class="mb-3 ">
                    <label>Gender:</label><br>
                    <input  class="form-check-input" type="radio" id="male" name="gender" value="male" ${student.gender == 'male' ? 'checked' : ''}>
                    <label  class="form-check-label" for="male" >Male</label><br>
                    <input class="form-check-input"  type="radio" id="female" name="gender" value="female" ${student.gender == 'female' ? 'checked' : ''}>
                    <label  class="form-check-label" for="female">Female</label><br>
                    <input  class="form-check-input" type="radio" id="unknown" name="gender" value="unknown" ${student.gender == 'unknown' ? 'checked' : ''}>
                    <label class="form-check-label" for="unknown"> Unknown</label><br>
                    </div>

                    <div class="mb-3">
                        <label for="age" class="form-label" >Age:</label>
                        <input  class="form-control" type="number" id="age" name="age" min="0" placeholder="Age" value="${student.age}" required>
                    </div>
                    
                     <div class="mb-3"> 
                    <label for="age" class="form-label" >Address</label>
                    <select  name="address" class="form-select">
                        <c:forEach var="address" items="${addressList}">
                            <option value="${address.sid}"  
                                    ${student.address.equals(Integer.toString(address.sid))?"selected":""}>
                                ${address.address} 
                            </option>
                        </c:forEach>
                    </select>
                    </div>

                    <input type="submit" class="btn btn-primary" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>
