<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{
    height:100vh;

    background:linear-gradient(
    135deg,
    #1f2937,
    #111827,
    #0f172a,
    #020617);

    background-size:400% 400%;
    animation:bgMove 15s ease infinite;

    display:flex;
    justify-content:space-around;
    align-items:center;

    padding:0 50px;

    overflow:hidden;
    position:relative;
}

body::before{
    content:"";
    position:absolute;

    width:1000px;
    height:1000px;

    background:radial-gradient(
    circle,
    rgba(255,255,255,.10),
    rgba(150,150,150,.05),
    transparent 70%);

    top:50%;
    left:50%;

    transform:translate(-50%,-50%);

    animation:pulseGlow 10s infinite alternate;

    z-index:0;
}

body::after{
    content:"";
    position:absolute;

    width:600px;
    height:600px;

    background:radial-gradient(
    circle,
    rgba(255,255,255,.08),
    transparent 70%);

    bottom:-150px;
    right:-150px;

    animation:floatGlow 10s infinite alternate;

    z-index:0;
}

/* Left Side */

.left-content{
    position:relative;
    z-index:2;

    width:45%;

    color:white;

    margin-top:-100px;
}

.left-content h1{
    font-size:70px;
    margin-bottom:20px;

    text-shadow:
    0 0 8px rgba(255,255,255,.15);

    animation:slideLeft 1s ease;
}

.left-content p{
    font-size:20px;
    line-height:1.8;
    color:#e5e7eb;
}

/* Login Form */

.login-form{
    position:relative;
    z-index:2;

    width:420px;

    padding:20px;

    margin-top:-100px;

    animation:slideRight 1s ease;
}

.login-form h2{
    color:white;
    text-align:center;
    margin-bottom:30px;
    font-size:42px;

    text-shadow:
    0 0 8px rgba(255,255,255,.12);
}

.login-form input[type="email"],
.login-form input[type="password"]{

    width:100%;
    padding:16px;
    margin-bottom:18px;

    border:none;
    border-radius:30px;

    background:rgba(255,255,255,.92);

    font-size:15px;

    transition:.3s;
}

.login-form input:focus{

    outline:none;

    transform:translateY(-3px);

    box-shadow:
    0 0 25px rgba(255,255,255,.25);
}

.login-form input[type="email"]:hover,
.login-form input[type="password"]:hover{

    background:white;

    transform:translateY(-3px);

    box-shadow:
    0 0 20px rgba(255,255,255,.20);
}

.login-form input[type="submit"]{

    width:100%;

    padding:15px;

    border:none;

    border-radius:30px;

    background:linear-gradient(
    45deg,
    #374151,
    #111827);

    color:white;

    font-size:17px;
    font-weight:bold;

    cursor:pointer;

    transition:.4s;
}

.login-form input[type="submit"]:hover{

    transform:translateY(-4px);

    background:linear-gradient(
    45deg,
    #4b5563,
    #1f2937);

    box-shadow:
    0 0 20px rgba(255,255,255,.08);
}

.login-form a{

    display:block;

    text-align:center;

    margin-top:15px;

    text-decoration:none;

    color:#e5e7eb;

    transition:.3s;
}

.login-form a:hover{
    color:white;
}

.error{
    text-align:center;
    color:#ff6b6b;
    margin-top:10px;
    font-weight:bold;
}

.success{
    text-align:center;
    color:#4ade80;
    margin-top:10px;
    font-weight:bold;
}

/* Animations */

@keyframes slideLeft{

    from{
        opacity:0;
        transform:translateX(-100px);
    }

    to{
        opacity:1;
        transform:translateX(0);
    }
}

@keyframes slideRight{

    from{
        opacity:0;
        transform:translateX(100px);
    }

    to{
        opacity:1;
        transform:translateX(0);
    }
}

@keyframes bgMove{

    0%{
        background-position:0% 50%;
    }

    50%{
        background-position:100% 50%;
    }

    100%{
        background-position:0% 50%;
    }
}

@keyframes pulseGlow{

    from{
        transform:translate(-50%,-50%) scale(1);
    }

    to{
        transform:translate(-50%,-50%) scale(1.3);
    }
}

@keyframes floatGlow{

    from{
        transform:translate(0,0);
    }

    to{
        transform:translate(-120px,-120px);
    }
}

</style>

</head>
<body>

<div class="left-content">

    <h1>Digital Recruitment Hub</h1>

    <p>
        Connecting talented professionals with leading companies.
        Login to explore opportunities and manage your career journey.
    </p>

</div>

<form action="login" method="post" class="login-form">

    <h2>Welcome Back</h2>

    <input type="email"
           name="email"
           placeholder="Enter Email">

    <input type="password"
           name="password"
           placeholder="Enter Password">

    <input type="submit"
           value="Login">

    <a href="reset.jsp">Forgot Password?</a>
    <a href="register.jsp">Don't have account?Create Account</a>

    <p class="error">${error}</p>

    <p class="success">${msg}</p>

</form>

</body>
</html>