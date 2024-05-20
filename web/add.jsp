<%-- 
    Document   : add
    Created on : Jan 6, 2024, 10:41:02 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add person</title>
        <%@include file="common/header.jsp" %>
    </head>
    <body>
        <div class="d-flex justify-content-center">
           <div>
            <%@include file="header.jsp" %>
            <h1>Add person</h1>
            <form action="add" method="post" class="form-min-width"  >

                <div class="mb-3">
                    <label for="name" class="form-label">Name</label>
                    <input  type="text" name="name" id="name" placeholder="Name" class="form-control" required> <br>
                </div>
                <div class="mb-3 "> 
                    <label>Gender</label> <br>
                    <input  class="form-check-input" type="radio" id="male" name="gender" value="male" checked="checked" > 
                    <label for="male" class="form-check-label" >Male</label><br>
                    <input  class="form-check-input" type="radio" id="female" name="gender" value="female">
                    <label for="female">Female</label> <br>
                    <input  class="form-check-input" type="radio" id="unknown" name="gender" value="unknown">
                    <label class="form-check-label" for="unknown">Unknown</label> 
                </div>
                
                <div class="mb-3">
                <label for="age" class="form-label"  >Age</label>
                <input type="number" class="form-control"  name="age"  id="age" placeholder="Age" values ="${age}" required>
                </div>

                <div class="mb-3">
                <label for="address"  class="form-check-label"  >Address:</label>
                <select  class="form-select"  id="address" name="address">
                    <c:forEach var="address" items="${addressList}">
                        <option value="${address.sid}">${address.address} </option>
                    </c:forEach>
                </select> 
                </div>
                <input type = "submit" class="btn btn-primary" value="Add">

            </form>
            <p style="color: red">${msg}</p>
           </div>
        </div>
    </body>
</html>
