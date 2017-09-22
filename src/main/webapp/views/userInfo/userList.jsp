<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<%@include file="/include/head.jsp"%>

<!DOCTYPE html>
<html>
<head>


    <link rel="stylesheet" type="text/css" href="/plugin/css/bootstrap-table.css">

    <script src="/plugin/js/bootstrap-table.js"></script>

</head>
<body>

<header class="navbar navbar-inverse" role="banner">
    <%@include file="/views/header.jsp"%>
</header>
<!-- end navbar -->

<!-- sidebar -->
<div id="sidebar-nav">
    <%@include file="/views/left.jsp"%>
</div>


	<!-- main container -->
    <div class="content">
        
        <!-- settings changer -->
        <div class="skins-nav">
            <a href="#" class="skin first_nav selected">
                <span class="icon"></span><span class="text">Default</span>
            </a>
            <a href="#" class="skin second_nav" data-file="css/compiled/skins/dark.css">
                <span class="icon"></span><span class="text">Dark skin</span>
            </a>
        </div>
        
        <div id="pad-wrapper">
            
            <!-- products table-->
            <!-- the script for the toggle all checkboxes from header is located in js/theme.js -->
            <div class="table-wrapper products-table section">
                <div class="row head">
                    <div class="col-md-12">
                        <h4>用户信息</h4>
                    </div>
                </div>



                <div class="row">
                    <table id="userTable" class="table">

                    </table>
                </div>
            </div>
            <!-- end products table -->




        </div>
    </div>
    <!-- end main container -->

	<!-- scripts -->





    <script type="text/javascript">


        $('#userTable').bootstrapTable({

            url: "<%=basePath%>userInfo/userInfoList",

            dataType: "json",
            cache: false,
            striped: true,//條紋行
            contentType:"application/x-www-form-urlencoded; charset=UTF-8",//   post 类型专用
            sidePagination: "server",  // 设置在哪里进行分页，可选值为 'client' 或者 'server'
            pagination: true, //启动分页

            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 10,                       //每页的记录行数（*）
            pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
            queryParamsType: "limit", //参数格式,发送标准的RESTFul类型的参数请求
            queryParams: queryParams,//参数
//            responseHandler: responseHandler,
            singleSelect: false,//仅允许单选
            method:"post",//使用post请求到服务器获取数据
            search: true, //显示搜索框
            showRefresh : true, // 显示刷新按钮
//            toolbar:"#toolbar",
            idField:"id",
            columns: [{
                field: 'id',
                align : 'center',
                title: '编号'
            }, {
                field: 'username',
                align : 'center',
                title: '姓名'
            }, {
                field: 'sex',
                align : 'center',
                formatter : sexPara,
                title: '性别'
            }, {
                field: 'phone',
                align : 'center',
                title: '电话号码'
            }, {
                field: 'email',
                align : 'center',
                title: '邮箱'
            }],
            formatLoadingMessage: function () {
                return "请稍等，正在加载中...";
            }
        });

        function sexPara(value) {
            if (value==1) {
                return "女";
            } else if(value==0){
                return "男";
            }
        }
        function queryParams(params){
            params.enabled = $("#enabled").val();
            params.querys = $("#querys").val();
            params.pageNo = this.pageNumber;
            params.pageSize = this.pageSize;
            params.num = this.limit;
            return params;
        }

        /** 刷新页面 */
        function refresh() {
            $('#userTable').bootstrapTable('refresh');
        }
    </script>
</body>
</html>