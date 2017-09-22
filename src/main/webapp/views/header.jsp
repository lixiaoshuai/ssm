<%@ page language="java"  contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<div class="navbar-header">
    <button class="navbar-toggle" type="button" data-toggle="collapse" id="menu-toggler">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="index.jsp"><img src="<%=basePath %>plugin/bootstrap/img/logo.png"></a>
</div>
<ul class="nav navbar-nav pull-right hidden-xs">
    <li class="hidden-xs hidden-sm">
        <input class="search" type="text" />
    </li>
    <li class="notification-dropdown hidden-xs hidden-sm">
        <a href="#" class="trigger">
            <i class="icon-warning-sign"></i>
            <span class="count">8</span>
        </a>
        <div class="pop-dialog">
            <div class="pointer right">
                <div class="arrow"></div>
                <div class="arrow_border"></div>
            </div>
            <div class="body">
                <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                <div class="notifications">
                    <h3>你有6条信息</h3>
                    <a href="#" class="item">
                        <i class="icon-signin"></i> 新用户注册
                        <span class="time"><i class="icon-time"></i> 13分钟前.</span>
                    </a>
                    <a href="#" class="item">
                        <i class="icon-signin"></i> 新用户注册
                        <span class="time"><i class="icon-time"></i> 18分钟前.</span>
                    </a>
                    <a href="#" class="item">
                        <i class="icon-envelope-alt"></i> 新消息来自Alejandra
                        <span class="time"><i class="icon-time"></i> 28分钟前.</span>
                    </a>
                    <a href="#" class="item">
                        <i class="icon-signin"></i> 新用户注册
                        <span class="time"><i class="icon-time"></i> 49分钟前.</span>
                    </a>
                    <a href="#" class="item">
                        <i class="icon-download-alt"></i> 新订单
                        <span class="time"><i class="icon-time"></i> 1天前.</span>
                    </a>
                    <div class="footer">
                        <a href="#" class="logout">查看所有消息</a>
                    </div>
                </div>
            </div>
        </div>
    </li>
    <li class="notification-dropdown hidden-xs hidden-sm">
        <a href="#" class="trigger">
            <i class="icon-envelope"></i>
        </a>
        <div class="pop-dialog">
            <div class="pointer right">
                <div class="arrow"></div>
                <div class="arrow_border"></div>
            </div>
            <div class="body">
                <a href="#" class="close-icon"><i class="icon-remove-sign"></i></a>
                <div class="messages">
                    <a href="#" class="item">
                        <img src="<%=basePath %>plugin/bootstrap/img/contact-img.png" class="display" />
                        <div class="name">DEMO</div>
                        <div class="msg">
                            回家来吃饭了.
                        </div>
                        <span class="time"><i class="icon-time"></i> 13分钟前.</span>
                    </a>
                    <a href="#" class="item">
                        <img src="<%=basePath %>plugin/bootstrap/img/contact-img2.png" class="display" />
                        <div class="name">Galván</div>
                        <div class="msg">
                            照片很不错哦.
                        </div>
                        <span class="time"><i class="icon-time"></i> 26分钟前.</span>
                    </a>
                    <a href="#" class="item last">
                        <img src="<%=basePath %>plugin/bootstrap/img/contact-img.png" class="display" />
                        <div class="name">后台</div>
                        <div class="msg">
                            模版很不错赶紧下载.
                        </div>
                        <span class="time"><i class="icon-time"></i> 48分钟前.</span>
                    </a>
                    <div class="footer">
                        <a href="#" class="logout">查看所有消息</a>
                    </div>
                </div>
            </div>
        </div>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle hidden-xs hidden-sm" data-toggle="dropdown">
            你的账号
            <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
            <li><a href="personal-info.html">个人信息</a></li>
            <li><a href="#">账号设置</a></li>
            <li><a href="#">账单</a></li>
            <li><a href="#">导出数据</a></li>
            <li><a href="#">发送反馈</a></li>
        </ul>
    </li>
    <li class="settings hidden-xs hidden-sm">
        <a href="personal-info.html" role="button">
            <i class="icon-cog"></i>
        </a>
    </li>
    <li class="settings hidden-xs hidden-sm">
        <a href="signin.html" role="button">
            <i class="icon-share-alt"></i>
        </a>
    </li>
</ul>
