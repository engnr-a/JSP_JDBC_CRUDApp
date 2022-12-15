<!DOCTYPE html>
<html>
    <head>
        <title>CRUD App with MVC Pattern</title>
        <meta http-equiv="Content-Type" content="text/html"; charset="ISO-8859-1">
    </head>
    <style>
        .btn{
            border: 1px solid black;
            color:white;
            padding: 14px 28px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            transition-duration:  0.4s;
            cursor:pointer;
        }

        .center{
            position: absolute;
            top:50%;
            left: 50%;
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            border-style: dotted;
        }

        .info{
            background-color: #2196F3;
        }
    </style>

    <body>

        <div class="center" >
            <h3 style="text-align: center;">My Fans</h3>
            <p style="text-align: center">My fans club CRUD application.</p>

            <button class="btn info" style="margin-left: 20px; margin-bottom: 20px" onclick="window.location.href='jsp/addFanForm.jsp'">
                Add a fan
            </button>

            <button class="btn info" style="margin-left: 20px; margin-right: 20px; margin-bottom: 20px" onclick="window.location.href='jsp/viewAllFans.jsp'">
                View all fans
            </button>

        </div>
    </body>

</html>