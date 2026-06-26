<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OJPMS - Online Job Portal</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

html{
    scroll-behavior:smooth;
}

body{
    background:linear-gradient(
        -45deg,
        #0f172a,
        #1e293b,
        #0b1220,
        #111827
    );

    background-size:400% 400%;
    animation:gradientMove 15s ease infinite;
    color:#fff;
    overflow-x:hidden;
    position:relative;
}
/* Animated Background */

body::before{
    content:'';
    position:fixed;
    width:1200px;
    height:1200px;

    background:radial-gradient(
    circle,
    rgba(255,255,255,.28),
    rgba(220,220,220,.15),
    rgba(120,120,120,.08),
    transparent 75%);

    top:50%;
    left:50%;

    transform:translate(-50%,-50%);

    animation:pulseGlow 12s infinite alternate;

    z-index:-2;
}

body::after{
    content:'';
    position:fixed;

    width:1000px;
    height:1000px;

    background:radial-gradient(
    circle,
    rgba(255,255,255,.10),
    transparent 75%);

    bottom:-300px;
    right:-300px;

    animation:moveGlow 15s infinite alternate;

    z-index:-2;
}

@keyframes pulse{
    from{
        transform:translate(-50%,-50%) scale(1);
    }
    to{
        transform:translate(-50%,-50%) scale(1.4);
    }
}

@keyframes moveBg{
    from{
        transform:translate(0,0);
    }
    to{
        transform:translate(-150px,-150px);
    }
}

/* Sidebar */

.sidebar{
    position:fixed;
    left:0;
    top:0;

    width:260px;
    height:100vh;

    background:linear-gradient(
    180deg,
    #9ca3af,
    #6b7280,
    #374151,
    #1f2937);

    border-right:1px solid rgba(255,255,255,.12);

    box-shadow:10px 0 40px rgba(0,0,0,.25);

    padding-top:30px;
    z-index:1000;
}

.sidebar h2{
    text-align:center;
    color:#fff;
    font-size:28px;
    margin-bottom:35px;
    text-shadow:0 0 15px rgba(255,255,255,.3);
}

.sidebar a{
    display:block;
    padding:16px 25px;
    color:#d1d5db;
    text-decoration:none;
    transition:.4s;
    border-left:4px solid transparent;
}

.sidebar a:hover{
    background:rgba(255,255,255,.08);
    border-left:4px solid #fff;
    color:#fff;
    padding-left:35px;
}

/* Dashboard Header */

.dashboard-header{
    margin-left:260px;
    padding:30px 50px;
}

.dashboard-header h1{
    font-size:45px;
    color:#fff;
}

.dashboard-header p{
    color:#cbd5e1;
    margin-top:10px;
}

/* Main Sections */

.hero,
.companies,
.stats,
.features,
.cta,
footer{
    margin-left:260px;
}

/* Hero */

.hero{
    min-height:90vh;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:40px 60px;
    gap:60px;
    flex-wrap:wrap;
}

.hero-left{
    flex:1;
}

.hero-left h1{
    font-size:72px;
    line-height:1.1;
    background:linear-gradient(
    90deg,
    #ffffff,
    #d4d4d8,
    #ffffff);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.typing{
    color:#e5e7eb;
    margin-top:15px;
    font-size:24px;
    font-weight:600;
}

.hero-left p{
    margin-top:20px;
    color:#cbd5e1;
    line-height:1.8;
}

.search-box{
    display:flex;
    margin-top:30px;
}

.search-box input{
    flex:1;
    padding:15px;
    border:none;
    outline:none;
    border-radius:40px 0 0 40px;
    background:#fff;
}

.search-box button{
    padding:15px 25px;
    border:none;
    color:white;
    cursor:pointer;
    background:linear-gradient(
    45deg,
    #52525b,
    #27272a);
    border-radius:0 40px 40px 0;
}

/* Buttons */

.btn{
    display:inline-block;
    text-decoration:none;
    color:white;
    padding:15px 30px;
    border-radius:40px;
    transition:.4s;
}

.hero-btns{
    margin-top:25px;
}

.hero-btns .btn{
    margin-right:15px;
}

.primary-btn{
    background:linear-gradient(
    45deg,
    #52525b,
    #27272a);
}

.secondary-btn{
    border:2px solid #a1a1aa;
}

.btn:hover{
    transform:translateY(-5px);
    box-shadow:0 0 20px rgba(255,255,255,.1);
}

/* Mini Stats */

.mini-stats{
    display:flex;
    gap:20px;
    margin-top:35px;
    flex-wrap:wrap;
}

.mini-box{
    background:rgba(255,255,255,.05);
    backdrop-filter:blur(20px);
    padding:20px 30px;
    border-radius:18px;
    border:1px solid rgba(255,255,255,.08);
    transition:.4s;
}

.mini-box:hover{
    transform:translateY(-10px);
    box-shadow:0 0 25px rgba(255,255,255,.12);
}

.mini-box h3{
    color:#fff;
}

/* Job Cards */

.hero-right{
    flex:1;
    display:flex;
    flex-direction:column;
    gap:20px;
}

.job-card{
    background:rgba(255,255,255,.05);
    backdrop-filter:blur(20px);
    border:1px solid rgba(255,255,255,.08);
    padding:25px;
    border-radius:20px;
    transition:.4s;
}

.job-card:hover{
    transform:translateY(-10px);
    box-shadow:0 0 25px rgba(255,255,255,.12);
}

.job-card h3{
    color:#fff;
}

/* Companies */

.companies{
    padding:80px 60px;
}

.companies h2{
    text-align:center;
    font-size:40px;
    margin-bottom:40px;
}

.company-row{
    display:flex;
    justify-content:center;
    gap:20px;
    flex-wrap:wrap;
}

.company-row div{
    background:rgba(255,255,255,.05);
    border:1px solid rgba(255,255,255,.08);
    padding:20px 30px;
    border-radius:15px;
    transition:.4s;
}

.company-row div:hover{
    transform:translateY(-8px);
    box-shadow:0 0 20px rgba(255,255,255,.1);
}

/* Statistics */

.stats{
    padding:80px 60px;
    display:flex;
    justify-content:center;
    gap:25px;
    flex-wrap:wrap;
}

.stat{
    background:rgba(255,255,255,.05);
    backdrop-filter:blur(20px);
    border:1px solid rgba(255,255,255,.08);
    padding:35px;
    border-radius:20px;
    min-width:220px;
    text-align:center;
    transition:.4s;
}

.stat:hover{
    transform:translateY(-10px);
    box-shadow:0 0 25px rgba(255,255,255,.12);
}

.stat h2{
    color:#fff;
    font-size:42px;
}

/* Features */

.features{
    padding:80px 60px;
}

.section-title{
    text-align:center;
    font-size:40px;
    margin-bottom:40px;
}

.feature-container{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:25px;
}

.feature-card{
    background:rgba(255,255,255,.05);
    border:1px solid rgba(255,255,255,.08);
    padding:30px;
    border-radius:20px;
    transition:.4s;
}

.feature-card:hover{
    transform:translateY(-10px);
    box-shadow:0 0 25px rgba(255,255,255,.12);
}

.feature-card h3{
    color:#fff;
    margin-bottom:15px;
}

.feature-card p{
    color:#cbd5e1;
}

/* CTA */

.cta{
    text-align:center;
    padding:80px 60px;
}

.cta h2{
    font-size:40px;
    margin-bottom:20px;
}

.cta p{
    color:#cbd5e1;
    margin-bottom:30px;
}

/* Footer */

footer{
    padding:40px;
    text-align:center;
    background:rgba(255,255,255,.03);
}

/* Floating Icons */

.floating-icon{
    position:fixed;

    opacity:.03;

    font-size:100px;

    pointer-events:none;

    animation:float 12s infinite ease-in-out;

    z-index:-1;

    filter:grayscale(100%);
}

.icon1{top:20%;left:30%;}
.icon2{top:75%;right:8%;}
.icon3{top:40%;right:20%;}
.icon4{top:85%;left:35%;}

@keyframes float{
    50%{
        transform:translateY(-25px);
    }
}


@keyframes pulseGlow{

    0%{
        transform:translate(-50%,-50%) scale(1);
    }

    100%{
        transform:translate(-50%,-50%) scale(1.6);
    }

}

@keyframes moveGlow{

    0%{
        transform:translate(0,0);
    }

    100%{
        transform:translate(-250px,-200px);
    }

}

</style>

</head>
<body>

<div class="sidebar">

    <h2>OJPMS</h2>

    <a href="home.jsp">🏠 Home</a>
    <a href="login.jsp">💼 Jobs</a>
    <a href="login.jsp">👨‍💼 Applicants</a>
    <a href="login.jsp">🏢 Recruiters</a>
    <a href="register.jsp">📝 Register</a>
    <a href="login.jsp">🔑 Login</a>
    

</div>

<div class="dashboard-header">

    <h1 style="
    color:white;
    font-size:50px;
    font-weight:700;
    letter-spacing:1px;
    text-shadow:
        0 0 5px rgba(255,255,255,.25),
        0 0 10px rgba(255,255,255,.15);
">
    Digital Recruitment Hub
</h1>

    
</div>


<!-- Hero Section -->

<section class="hero">

    <div class="hero-left">

        
        
        <div class="typing" >
            Find Jobs • Hire Talent • Grow Faster
        </div>

        <p>
            Connect with top recruiters, explore thousands of opportunities,
            and take the next step towards a successful career journey with OJPMS.
        </p>

        <!-- Search Box -->

        <div class="search-box">

            <input type="text" placeholder="Search Jobs, Skills, Companies...">

            <a href="login.jsp" class="btn secondary-btn"<button>Search</button>></a>



        </div>

        <!-- Buttons -->

        <div class="hero-btns">

            <a href="register.jsp" class="btn primary-btn">
                Register
            </a>

            <a href="login.jsp" class="btn secondary-btn">
                Login
            </a>
            

        </div>

        <!-- Mini Stats -->

        <div class="mini-stats">

            <div class="mini-box">
                <h3>500+</h3>
                <span>Jobs</span>
            </div>

            <div class="mini-box">
                <h3>1000+</h3>
                <span>Applicants</span>
            </div>

            <div class="mini-box">
                <h3>150+</h3>
                <span>Recruiters</span>
            </div>

        </div>

    </div>

    <!-- Right Side -->

    <div class="hero-right">

        <div class="job-card">
            <h3>Java Developer</h3>
            <p>Pune • Full Time</p>
        </div>

        <div class="job-card">
            <h3>Frontend Developer</h3>
            <p>Mumbai • Remote</p>
        </div>

        <div class="job-card">
            <h3>Data Analyst</h3>
            <p>Bangalore • Hybrid</p>
        </div>

        <div class="job-card">
            <h3>Software Engineer</h3>
            <p>Hyderabad • Full Time</p>
        </div>

    </div>

</section>

<!-- Companies -->

<section class="companies">

    <h2>Trusted By Top Companies</h2>

    <div class="company-row">

        <div>Google</div>
        <div>Infosys</div>
        <div>TCS</div>
        <div>Wipro</div>
        <div>Microsoft</div>
        <div>Accenture</div>

    </div>

</section>

<!-- Statistics -->



<!-- Features -->



<!-- Call To Action -->

<section class="cta">

    <h2>Ready To Start Your Career Journey?</h2>

    <p>
        Join thousands of job seekers and recruiters on OJPMS today.
    </p>

    <a href="register.jsp" class="btn primary-btn">
        Join Now
    </a>

</section>

<!-- Footer -->


<!-- Floating Background Icons -->

<div class="floating-icon icon1">💼</div>
<div class="floating-icon icon2">🚀</div>
<div class="floating-icon icon3">📈</div>
<div class="floating-icon icon4">🎯</div>


</body>
</html>