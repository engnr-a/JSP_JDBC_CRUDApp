<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <title>View All Fans</title>
        <meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
    </head>

    <body>
        <%--importing necesary custom classes--%>
        <%@ page import="org.shola.model.Fan" %>
        <%@ page import="org.shola.model.Utility" %>
        <%@ page import="org.springframework.context.ApplicationContext" %>
        <%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
        <%@ page import="org.shola.model.*" %>
        <%@ page import="java.util.List" %>
        <%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
        <%@ page import="jakarta.servlet.ServletContext" %>
        <%@ page import="org.springframework.beans.factory.annotation.Autowired" %>



        <%--import of the standard tag library--%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <h2 style ="text-align: center">Fan Details</h2>



        <%

//            List<Fan> us = Utility.getAllUsers();
//            request.setAttribute("us", us);
//           ClassPathXmlApplicationContext appContext = new ClassPathXmlApplicationContext("beans.xml");
//           Utility us = (Utility) appContext.getBean("fanUtil");
           
        %>

        <table border="2" align="center"  class="center" style="background-color: #FEF9E7; width: 90%">
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>Gender</th>
                <th>Country</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>

            <%--iterating over the list created above using c:forEach tag--%>
            <jsp:useBean id="us" scope="application" class="org.shola.model.FanDaoImpl" />
            <c:out value="${bean.value}" />




            <c:forEach items="${us.getAllRecord()}" var="us">

                <tr>
                    <td>${us.id}</td>
                    <td>${us.name}</td>
                    <td>${us.email}</td>
                    <td>${us.gender}</td>
                    <td>${us.country}</td>


                    <td>
                        <a href="${pageContext.request.contextPath}/jsp/editFanForm.jsp?id=${us.id}">Edit</a>
                    </td>

                    <td>
                        <a href="${pageContext.request.contextPath}/jsp/deleteFan.jsp?id=${us.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
                <br>
                <div>
<%--                    Note: 'window.location; refers to current location of the current file.--%>
                    <button class="btn info" style="align-content: center; margin-left: 60px; margin-bottom: 10px"     onclick="window.location.href='addFanForm.jsp'">
                        Add A Fan
                    </button>
                </div>
        </table>

    </body>


</html>