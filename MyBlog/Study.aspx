<%@ Page Title="学无止境" Language="C#" AutoEventWireup="true" CodeBehind="Study.aspx.cs" Inherits="MyBlog.Study" %>

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
    <form id="form1" runat="server">
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
                <li class="active"><a href="Study" title="learning">学无止境</a></li>
                <li><a href="InformalEssay" title="writing">随笔<span class="badge">5</span></a> </li>
                <li><a href="PostMessage" title="post">发动态</a> </li>
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
       <li><a href="#">学无止境</a></li>
    </ol>
			<div name="zhuye" class="container">
		    	<div class="row">
					<div class="col-xs-8">
						

					    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"
                            DataKeyNames="pid" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                            <ItemTemplate>  
                                <tr style="">  
                                        <h3><a href="#" target="_parent"><%# Eval("ptitle") %></a></h3>
                                        <p class="text-muted">
									        <small>作者：<%# Eval("aname") %></small>
									        <small class="pull-right">点赞量：<span class="badge"><%# Eval("up") %></span></small>
								            <br>
									        <small>发布时间：<%# Eval("time") %></small>
									        <small class="pull-right">阅读量：<span class="badge"><%# Eval("cnt") %></span></small>
								        </p> 
                                       <p>
									        <font size="3" color="black"><%# Eval("pcontent") %>
									        </font>
								        </p>                    
                                        
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" /> 
                                        <br /><br /><br />
                                </tr>  
                            </ItemTemplate>
                            <LayoutTemplate>  
                                <table  runat="server" cellpadding="0" cellspacing="0">  
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
                            SelectCommand="select pid, ptitle, pcontent, cnt, up, down, passage.aid, aname, 
                            type, passage.time, passage.del
                                from passage, account where passage.aid = account.aid and type = 1 order by time desc"
                            DeleteCommand="DELETE FROM passage WHERE (pid=@pid)"
                            >                          

                        </asp:SqlDataSource>
					</div>
					
					
					<div class="col-xs-3 tuijian">
			 			
			 		</div>		
						
				</div>
			</div>
			
    </form>
			
</body>
</html>
