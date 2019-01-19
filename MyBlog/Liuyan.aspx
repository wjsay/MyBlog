﻿<%@ Page Title="留言" Language="C#" AutoEventWireup="true" CodeBehind="Liuyan.aspx.cs" Inherits="MyBlog.Liuyan" %>

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
         table th {  
                color: #000;  
                background: #C8C8C8;  
                font-weight: normal;  
                padding: 2px; 
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
                <li  class="active dropdown"><a href="Liuyan"  title="talking">留言</a> </li>
                <li><a href="About"  title="about wjsay">关于我</a> </li>
                <li>
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
        <li class="active"><a href="#">留言</a></li>
    </ol>
    <form id="form1" runat="server">
        <div style="margin-left: 360px">
            <br />
            留言区
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 240px" runat="server" id="isay">
            博主留言：墨香醉人何须酒，缱绻馨香无需花</p><br />
        <div>
            <p style="margin-left: 240px">
                撰写评论</p>
            <p style="margin-left: 240px">
                <textarea id="TextArea1" name="S1" runat="server"></textarea></p>
            <div style="margin-left: 520px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
                <br />
                <br />
                <br />
            </div>
        </div>
        
        <div style="margin-left: 200px; margin-right:456px">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                 DataKeyNames="tid"
                OnSelectedIndexChanged="ListView1_SelectedIndexChanged">                        
            <ItemTemplate>  
                <tr style="">  
                      
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("aname") %>' />  
                        
                        <asp:Label style="margin-left:9px;font-size:smaller" ID="idLabel"
                            runat="server" Text='<%# Eval("time") %>' />  
                        <br />
                    
                        <asp:Label style="font-size:medium" ID="tcontentLabel" runat="server" Text='<%# Eval("tcontent") %>' />  
                        <br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" /> 
                        <br /><br /><br />
                </tr>  
            </ItemTemplate>  
            <LayoutTemplate>  
                <table style="width:650px" runat="server" cellpadding="0" cellspacing="0">  
                    <tr runat="server">  
                       <td runat="server">  
                               <table id="itemPlaceholderContainer" runat="server" border="0" style="">  
                                     
                                    <tr id="itemPlaceholder" runat="server">  
                                    </tr>  
                                </table>  
                            </td>  
                        </tr>
                        <tr runat="server">  
                            <td runat="server" style="background-color:#C8C8C8;">  
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="5">  
                                    <Fields>  
                                        <asp:NextPreviousPagerField ButtonType="Button"   
                                            ShowFirstPageButton="True"   
                                            ShowLastPageButton="True" />  
                                        <asp:NumericPagerField ButtonType="Button" ButtonCount="3" />  
                                    </Fields>  
                                </asp:DataPager>  
                            </td>  
                        </tr>
                    </table>    
                </LayoutTemplate>                
            </asp:ListView>                
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ 
                ConnectionStrings:myblogConnectionString %>" 
                DeleteCommand="DELETE FROM talking WHERE (tid=@tid)"
                SelectCommand="select * from liuyan order by time desc">
                <DeleteParameters>  
                    <asp:ControlParameter ControlID="ListView1" Name="tid" PropertyName="SelectedValue" />  
                </DeleteParameters>  
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        
    </form>

</body>
</html>
