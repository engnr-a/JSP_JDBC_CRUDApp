<%@ page import="org.shola.model.Utility" %>
<%@ page isELIgnored="false" %>

<%--JSP tags userBean and setProperty--%>
<jsp:useBean id="userInstance" class="org.shola.model.Fan"></jsp:useBean>
<jsp:setProperty name="userInstance" property="*"></jsp:setProperty>

<%
    int i = Utility.addUser(userInstance);
    if(i > 0){
        out.print("<h3 align=center> Success! The fan has been added. </h3><br><br>");
    }else{
    out.print("<h3 align=center> Oh No...! There was an error when adding the Fan. </h3><br><br>");
    }
%>
<div style="margin-left: 350px"><a href="${pageContext.request.contextPath}/jsp/viewAllFans.jsp">View Fans</a></div>
