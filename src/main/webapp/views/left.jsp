<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

    <ul id="dashboard-menu">
        <li class="active">
            <div class="pointer">
                <div class="arrow"></div>
                <div class="arrow_border"></div>
            </div>
            <a href="index.html">
                <i class="icon-home"></i>
                <span>首页</span>
            </a>
        </li>
        <li>
            <a href="chart-showcase.html">
                <i class="icon-signal"></i>
                <span>图表</span>
            </a>
        </li>
        <li>
            <a class="dropdown-toggle" href="#">
                <i class="icon-group"></i>
                <span>用户</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul class="submenu">
                <li><a href="<%=basePath%>views/userInfo/userList.jsp">用户列表</a></li>
                <li><a href="new-userInfo.html">新用户</a></li>
                <li><a href="userInfo-profile.html">用户资料</a></li>
            </ul>
        </li>
        <li>
            <a class="dropdown-toggle" href="#">
                <i class="icon-edit"></i>
                <span>表单</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul class="submenu">
                <li><a href="form-showcase.html">表单应用</a></li>
                <li><a href="form-wizard.html">表单验证</a></li>
            </ul>
        </li>
        <li>
            <a href="gallery.html">
                <i class="icon-picture"></i>
                <span>相册</span>
            </a>
        </li>
        <li>
            <a href="calendar.html">
                <i class="icon-calendar-empty"></i>
                <span>日历</span>
            </a>
        </li>
        <li>
            <a class="dropdown-toggle" href="tables.html">
                <i class="icon-th-large"></i>
                <span>表格</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul class="submenu">
                <li><a href="tables.html">常用表格</a></li>
                <li><a href="datatables.html">数据表格</a></li>
            </ul>
        </li>
        <li>
            <a class="dropdown-toggle ui-elements" href="#">
                <i class="icon-code-fork"></i>
                <span>UI 组件</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul class="submenu">
                <li><a href="ui-elements.html">UI 组件</a></li>
                <li><a href="icons.html">Icons图标</a></li>
            </ul>
        </li>
        <li>
            <a href="personal-info.html">
                <i class="icon-cog"></i>
                <span>我的信息</span>
            </a>
        </li>
        <li>
            <a class="dropdown-toggle" href="#">
                <i class="icon-share-alt"></i>
                <span>其他</span>
                <i class="icon-chevron-down"></i>
            </a>
            <ul class="submenu">
                <li><a href="code-editor.html">代码编辑器</a></li>
                <li><a href="grids.html">网格</a></li>
                <li><a href="signin.html">登录</a></li>
                <li><a href="signup.html">注册</a></li>
            </ul>
        </li>
    </ul>
