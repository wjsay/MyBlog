<%@ Page Title="注册" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyBlog.Register" %>

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
            width: 151px;
            height: 24px;
        }
        #TextArea1 {
            width: 312px;
            height: 124px;
        }
        #Text2 {
            width: 191px;
            height: 23px;
        }
        #Text3 {
            width: 181px;
            height: 30px;
        }
        #Text4 {
            width: 171px;
            height: 25px;
        }
        #Text5 {
            width: 179px;
            height: 28px;
        }
        #Text6 {
            width: 176px;
            height: 30px;
        }
        #Text7 {
            width: 305px;
            height: 31px;
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
                <li><a href="About"  title="about wjsay">关于我</a> </li>
                <li  class="active dropdown">
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
        <li class="active"><a href="#">注册</a></li>
    </ol>
    <form id="form1" runat="server">
        <div style="margin-left: 160px">
            昵称*：<input runat="server" id="Text1" type="text" /><br />
            密码*：<input runat="server" id="Text2" type="password" /><br />
            验证密码*：<input runat="server" id="Text3" type="password" /><br />
            性别：<input runat="server" type="radio" name="radio" id="radio0" value="0" checked />男
               <input runat="server" type="radio" name="radio" id="radio1" value="1" style="margin-left:40px" /> 女<br />
            邮箱：<input runat="server" id="Text4" type="text" /><br />
            学校：<input runat="server" id="Text5" type="text" /><br />
            电话号码：<input runat="server" id="Text6" type="text" /><br />
            座右铭：<input runat="server" id="Text7" type="text" /><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认注册" />
        </div>
    </form>
</body>
</html>
