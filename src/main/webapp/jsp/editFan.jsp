<%@ page isELIgnored="false" %>
<%@ page import="org.shola.model.Utility" %>


<%--NOTE: "usr" in useBean comes from editFanForm.jsp--%>
<jsp:useBean id="usr" class="org.shola.model.Fan"></jsp:useBean>
<jsp:setProperty name="usr" property="*"></jsp:setProperty>


<%
    int i = Utility.updateUser(usr);

    if(!(i>0)){

        out.print("Unable to update the fan:"+usr.getName()+", "+usr.getId()+", "+ usr.getEmail()+", "+usr.getGender()+", "+usr.getCountry());
    }else {
        out.print("The following info fan has been deleted:"+usr.getName()+", "+usr.getId()+", "+ usr.getEmail()+", "+usr.getGender()+", "+usr.getCountry());
    }
%>

<a href="${pageContext.request.contextPath}/jsp/viewAllFans.jsp">View All Fans</a>