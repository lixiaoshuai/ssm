<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>


<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="login-bg">
<head>
	<title>后台登录页面 Bootstrap响应式后台管理系统模版Detail - JS代码网</title>
	<meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文,后台管理系统模版,后台模版下载,后台管理系统,后台管理模版" />
	<meta name="description" content="JS代码网提供Bootstrap模版,后台管理系统模版,后台管理界面,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<%=basePath %>plugin/bootstrap/css/bootstrap/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath %>plugin/bootstrap/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet">

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<%=basePath %>plugin/bootstrap/css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>plugin/bootstrap/css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>plugin/bootstrap/css/compiled/icons.css">

    <!-- libraries -->
    <link rel="stylesheet" type="text/css" href="<%=basePath %>plugin/bootstrap/css/lib/font-awesome.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%=basePath %>plugin/bootstrap/css/compiled/signin.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="<%=basePath %>plugin/css/bootstrapValidator.css"/>
    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

    <div class="login-wrapper">
        <a href="views/index.jsp">
            <img class="logo" src="<%=basePath %>plugin/bootstrap/img/logo-white.png">
        </a>

        <div class="box">
            <div class="content-wrap">
                <form id="defaultForm" method="post" class="form-horizontal" action="<%=basePath %>userInfoLogin/dologin">
                    <h6>登录</h6>

                    <div class="form-group has-error">
                        <input type="text" class="form-control" name="username" placeholder="邮箱地址" check-type="required">
                    </div>
                    <div class="form-group has-error">
                        <input type="password" class="form-control" name="password" placeholder="密   码" check-type="required">
                    </div>

                    <a href="#" class="forgot">忘记密码?</a>
                    <div class="remember">
                        <input id="remember-me" type="checkbox">
                        <label for="remember-me">记住密码</label>
                    </div>


                    <button type="submit" id="submit2" class="btn btn-primary btn-glow primary login">登录</button>
                </form>
            </div>
        </div>

        <div class="no-account">
            <p>还没账号?</p>
            <a href="signup.html">注册</a>
        </div>
    </div>

	<!-- scripts -->




    <script src="<%=basePath %>plugin/js/jquery/jquery.min.js"></script>
    <script src="<%=basePath %>plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=basePath %>plugin/bootstrap/js/theme.js"></script>

    <script src="<%=basePath %>plugin/js/bootstrapValidator.js"></script>


    <!-- pre load bg imgs -->
    <script type="text/javascript">

    </script>
</body>
</html>