<%-- 
    Document   : header
    Created on : Jan 6, 2024, 11:47:31 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${admin!=null}">
    <div class="d-flex justify-content-between mt-5">
    <p>Welcome, ${admin.name}</p>
    <form action="login.jsp">
        <button type="submit" class="btn btn-info" value="Logout">Logout</button>
    </form>
    </div>
</c:if>
<%@include file="menu.jsp" %>
