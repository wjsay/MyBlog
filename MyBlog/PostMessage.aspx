<%@ Page Title="发动态" Language="C#" AutoEventWireup="true" CodeBehind="PostMessage.aspx.cs" Inherits="MyBlog.PostMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--<style type="text/css">
        #Text1 {
            width: 353px;
            height: 81px;
        }
        #TextArea1 {
            width: 312px;
            height: 124px;
        }
    </style> -->
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
                <li ><a href="default">首页</a></li>
                <li><a href="Study" title="learning">学无止境</a></li>
                <li><a href="InformalEssay" title="writing">随笔<span class="badge">5</span></a> </li>
                <li class="active"><a href="PostMessage" title="post">发动态</a> </li>
                <!--"badge徽章"-->
                <li><a href="Picture">相册<span class="badge hidden">21</span></a> </li>
                <li><a href="Friend">朋友</a> </li>
                <li  ><a href="Liuyan"  title="talking">留言</a> </li>
                <li ><a href="About"  title="about wjsay">关于我</a> </li>
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
        <li><a href="#">发动态</a></li>
    </ol>
    <form id="form1" runat="server">
        <div style="margin-left: 200px; width:500px">

            标题：<input runat="server" id="Title1" type="text" /><br />
            <br />
            内容：<br />
            <textarea runat="server" id="TextArea1" name="S1" style="width:500px; height:191px"></textarea><br />            
            类别：<input runat="server" type="radio" name="radio" id="radio0" value="0" checked /> 未分类
                <input runat="server" type="radio" name="radio" id="radio1" value="1" /> 学无止境
                <input runat="server" type="radio" name="radio" id="radio2" value="2" /> 随笔<br />
            <asp:Button ID="Button1" runat="server" Text="发布" style="margin-right:0" OnClick="Button1_Click"/>
            <br />           

        </div>
    </form>
</body>
</html>
