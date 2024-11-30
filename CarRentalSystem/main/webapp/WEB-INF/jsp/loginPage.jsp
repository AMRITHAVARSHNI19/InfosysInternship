<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental System - Login</title>
    <style>
        body {
            background-color: #000; /* Black background */
            color: #FFD700; /* Golden text */
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: rgba(51, 51, 51, 0.9); /* Slightly transparent black */
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            width: 300px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); /* Subtle shadow for depth */
        }

        h3 {
            margin-bottom: 20px;
            color: #FFD700; /* Golden text */
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #FFD700;
            border-radius: 5px;
            background-color: #222;
            color: #FFF;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #FFD700;
            color: #000;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #E6B800; /* Darker golden */
        }

        a {
            color: #FFD700;
            text-decoration: none;
            font-size: 14px;
            margin-top: 15px;
            display: inline-block;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>User Login</h3>
        <form action="/login" method="post">
            <input type="text" name="username" placeholder="Enter User ID" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <input type="submit" value="Login">
        </form>
        <a href="/register">Register for a new account</a>
    </div>
</body>
</html>
