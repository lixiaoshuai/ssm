<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Complex Layout - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>/plugin/easyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/plugin/easyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/plugin/css/demo.css">
    <script type="text/javascript" src="<%=path%>/plugin/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/plugin/easyui/jquery.easyui.min.js"></script>
    <style type="text/css">
        .logo {
            width:480px;
            height:30px;
            line-height:30px;
            text-align:center;
            font-size:20px;
            font-weight:bold;
            float:left;
            color:#fff;
        }
        .logout {
            float:right;
            padding:30px 15px 0 0;
            color:#fff;
        }
        a {
            color:#fff;
            text-decoration:none;
        }
        a:hover {
            text-decoration:underline;
        }
    </style>
</head>
<body>

<script type="text/javascript">
    $(function() {
        $("#nav").tree({
            url: 'tree.json',
            lines: true,
            onClick: function (node) {
                if ($("#nav").tree("isLeaf", node.target)) {
                    if ($('#tabs').tabs('exists', node.text)) {
                        $('#tabs').tabs('select', node.text);
                        refreshTab({tabTitle: node.text, url: node.url});
                    } else {
                        var content = "<iframe scrolling='auto' frameborder='0' src='" + node.url + "' style='width:100%;height:100%;'></iframe>";
                        $('#tabs').tabs('add', {
                            title: node.text,
                            closable: true,
                            content: content,
                        });
                    }
                }
            }
        });
    })
</script>
<body class="easyui-layout">
<div data-options="region:'north',title:'header',split:true,noheader:true" style="height:40px;background:#666;">
    <div class="logo">管理平台</div>
    <div align="right" style="color:#fff;font-size:20px">，登录中</div>
</div>
<div data-options="region:'west',title:'导航',split:true,iconCls:'icon-world'" style="width:190px;padding:10px;">
    <ul id="nav"></ul>
</div>
<div data-options="region:'center'" style="overflow:hidden;">
    <div id="tabs"></div>
</div>

</body>
</html>