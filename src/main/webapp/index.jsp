<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>求职者主页</title>
    <meta name="keywords" content=""/>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet" type="text/css"
          media="all" charset="utf-8"/>
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet" type="text/css"
          media="all" charset="utf-8"/>
    <link href="${pageContext.request.contextPath}/static/css/owl.carousel.css" rel="stylesheet" charset="utf-8"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/jquery-ui.css" charset="utf-8"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/chocolat.css" type="text/css" charset="utf-8"/>
    <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css" media="all" charset="utf-8"/>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" charset="utf-8"/>
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet" charset="utf-8"/>
</head>
<body>
<!-- Banner-->
<div class="w3_banner">
    <nav class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <h1><a class="navbar-brand" href="#">Alpha+</a></h1>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">主页</a></li>
                    <li><a href="#myResume" class="page-scroll">我的简历</a></li>
                    <li><a href="#sendResume" class="page-scroll">投递简历</a></li>

                    <c:choose>
                        <c:when test="true">
                            <li><a href="#me" class="page-scroll">个人中心</a></li>
                            <li><a href="#logout" class="page-scroll">注销</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="#login" class="page-scroll">登录</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>
    <div class="w3_bannerinfo">
        <h2>找到一份适合你的好工作</h2>
        <p>Find A Good Job For You. </p>
        <!-- Search-->
        <div class="w3l_banser">
            <div class="w3_banner_info_button">
                <ul>
                    <li><a href="about.html" class="w3l_contact">制作简历</a></li>
                    <li><a href="#" class="w3ls_more" data-toggle="modal" data-target="#myModal">企业列表</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
