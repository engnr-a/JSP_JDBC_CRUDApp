<%@ page  language="java" contentType="text/html; ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Fan</title>
    <meta http-equiv="Content-Type" content="text/html"; charset="ISO-8859-1">
</head>
<style>
    table, th, td{
        border: 2px solid black;
        padding: 5px
    }

    table.center{
       margin-left:auto;
        margin-right:auto;
    }
</style>

<body>
<h3 style="text-align: center">Fan Registration</h3>

<div class="center">

    <form action="addFan.jsp" method="post">

        <table class="center" style="background-color: #FEF9E7; width: 50%;">

            <tr>
                <td>Name: </td>
                <td>
                    <input type="text" name="name">
                </td>
            </tr>

            <tr>
                <td>Email: </td>
                <td>
                    <input type="email" name="email">
                </td>
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
                        <option>Russia</option>
                        <option>United States of America</option>
                        <option>France</option>
                        <option>Other</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <input type="submit" value="submit">
                </td>
            </tr>

        </table>
    </form>
    <br>
    <div>
        <button class="btn info" onclick="window.location.href='viewAllFans.jsp'" style="margin-left: 350px">
            View All Fans
        </button>
    </div>

</div>
</body>

</html>