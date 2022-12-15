<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
    <meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
</head>

<body>

<%@ page import="org.shola.model.Fan, org.shola.model.FanDaoImpl" %>
<%@ page import="org.shola.model.Utility" %>
<%@ page import="org.shola.model.Fan" %>


<h2 style ="text-align: center">Edit Fan</h2>


<%
    String id = request.getParameter("id");
    Fan usr = Utility.getUserById(Integer.parseInt(id));
%>
<div style="margin-left: 50px" >

    <h3>Edit Form</h3>
    <form action="editFan.jsp" method="post">
        <input type="hidden" name="id" value="<%=usr.getId()%>" />
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" value="<%= usr.getName()%>" />  </td>
            </tr>

            <tr>
                <td>Name: </td>
                <td><input type="text" name="email" value="<%= usr.getEmail()%>" />  </td>
            </tr>

            <tr>
                <td>Sex: </td>
                <td>
                    <input type="radio" name="gender" value="M">Male
                    <input type="radio" name="gender" value="F">Female
                    <input type="radio" name="gender" value="NB">Non-binary
                </td>
            </tr>

            <tr>
                <td>Country: </td>
                <td>
                    <select name="country" style="width: 155px">
                        <option>Nigeria</option>
                        <option>Czechia</option>
                        <option>Germany</option>
                        <option>Poland</option>
                        <option>Other</option>
                    </select>
                </td>
            </tr>

            <tr style="margin-top: 10px">
                <td colspan="2"><input type="submit"  align="center" value="Edit Fan" /></td>
            </tr>
        </table>

    </form>


</div>



</body>

</html>