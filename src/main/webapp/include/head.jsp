<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理</title>
    <meta name="keywords" content="后台管理" />
    <meta name="description" content="后台管理" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap -->
    <link href="<%=basePath %>plugin/bootstrap/css/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="<%=basePath %>plugin/bootstrap/css/bootstrap/bootstrap-overrides.css" type="text/css" rel="stylesheet" />

    <!-- libraries -->
    <link href="<%=basePath %>plugin/bootstrap/css/lib/jquery-ui-1.10.2.custom.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath %>plugin/bootstrap/css/lib/font-awesome.css" type="text/css" rel="stylesheet" />

    <!-- global styles -->
    <link rel="stylesheet" type="text/css" href="<%=basePath %>plugin/bootstrap/css/compiled/layout.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>plugin/bootstrap/css/compiled/elements.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath %>plugin/bootstrap/css/compiled/icons.css">

    <!-- this page specific styles -->
    <link rel="stylesheet" href="<%=basePath %>plugin/bootstrap/css/compiled/index.css" type="text/css" media="screen" />

    <!-- open sans font -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- lato font -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>



    <script src="<%=basePath %>plugin/js/jquery/jquery.min.js"></script>

    <script src="<%=basePath %>plugin/bootstrap/js/theme.js"></script>



</head>