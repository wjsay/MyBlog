<%@ Page Title="关于" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="MyBlog.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        #Text1 {
            width: 353px;
            height: 81px;
        }
        #TextArea1 {
            width: 312px;
            height: 124px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="default">我的博客</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="default">首页</a></li>
                <li><a href="Study" title="learning">学无止境</a></li>
                <li><a href="InformalEssay" title="writing">随笔<span class="badge">5</span></a> </li>
                <li><a href="PostMessage" title="post">发动态</a> </li>
                <!--"badge徽章"-->
                <li><a href="Picture">相册<span class="badge hidden">21</span></a> </li>
                <li><a href="Friend">朋友</a> </li>
                <li  ><a href="Liuyan"  title="talking">留言</a> </li>
                <li class="active"><a href="About"  title="about wjsay">关于我</a> </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        更多 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="Login">登录</a></li>
                        <li class="divider"></li>                        
                        <li><a href="Register">注册</a></li>
                        <li class="divider"></li><li><a href="ModifyProfile">修改个人信息</a></li>
                        <li class="divider"></li>
                        <li runat="server" id ="logout"><a href="Login">退出</a></li>
                    </ul>
                </li>                
            </ul>
        </div>
    </div>
</nav>
    <!--导航栏结束-->
    <br /><br /><br />
    <!--面包屑开始-->
    <ol class="breadcrumb">
        <li><a href="default">首页</a></li>
        <li class="active"><a href="#">关于我</a></li>
    </ol>
    <div style="margin-left: 120px">
        <h3 runat="server" id="nickname">未登录</h3>
        <h4 runat="server" id="moto">主人很懒，什么也没有留下</h4>
        <br />
            <p>联系方式：</p>
        <div style="margin-left:30px; margin-right:500px">
            邮箱：<label runat="server" id ="email">x@y</label>
            <br />传真：-<br />
            学校：<label runat="server" id ="school">-</label>
            <p></p>
            P:<abbr title="Phone"></abbr>
            <label runat="server" id="phone">It's a secret.</label><br />
            <label>CSDN博客：<a href="http://blog.csdn.net/baisedeqingting">白色的蜻蜓</a><br />        
            </label>
        </div>
        
    </div>
</body>
</html>
