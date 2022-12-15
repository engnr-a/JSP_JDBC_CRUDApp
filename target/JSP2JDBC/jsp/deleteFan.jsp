<%@ page import ="org.shola.model.Utility" %>
<%@ page isELIgnored="false" %>
<jsp:useBean id="usr" class="org.shola.model.Fan"></jsp:useBean>
<jsp:setProperty name="usr" property="*"></jsp:setProperty>


<%
    int i = Utility.deleteUser(usr);

    if(!(i>0)){

        out.print("Unable to delete fan."+"Fan with ID: "+usr.getId());
    }else {
        out.print("Fan with ID: ."+usr.getId()+", has been deleted.");
    }
%>
<a href="${pageContext.request.contextPath}/jsp/viewAllFans.jsp">View All Fans</a>
