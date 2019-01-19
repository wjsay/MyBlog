<%@ Page Title="myorange's blog" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyBlog._Default" %>

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
                <li class="active"><a href="default">首页</a></li>
                <li><a href="Study" title="learning">学无止境</a></li>
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
                                from passage, account where passage.aid = account.aid order by time desc"
                            DeleteCommand="DELETE FROM passage WHERE (pid=@pid)"
                            >                          

                        </asp:SqlDataSource>
					</div>
					
					
					<div class="col-xs-3 tuijian">
			 			<div class="panel panel-default itemborder">
			 				<br/>
			 				<br/>
			 				<div class="panel-heading" style="border:1;background-color:white;" >
			 					<h2>散文推荐</h2>
			 				</div>
			 				<div class="panel-body">
			 					<h3><a href="#" target="_parent">谁的青春，忘不记的流年</a></h3>
			 					<p>谁的流年，忘不记的青春，岁月的曾经，那是美好的一刹那，，，，
                                     时间如白驹过隙，，那是我们可曾感叹光阴的故事，忆往昔，初相聚
                                     ，彼陌生，话不语，时流水，两相望，时刻心，兄弟情，姐妹心，难忘怀，
                                     分离别。忆往昔，在相聚，彼陌生，时日期，兄弟情，一二三，二三年，
                                     有离别，逐梦想，奔天涯，何日聚，君在来，何日聚，君回首忆往昔，那是放肆了的青春，
                                     我们是脱缰的野马，，想想那时，浊酒一杯，...... </p>
			 				</div>
			 				<div class="panel-body">
			 					<h3><a href="#" target="_parent">语文笔记</a></h3>
			 					<p>1、如果时光肯回到三年前，我一定坚定走到你身边 你一定迷茫地看着我，
                                     我也只会说一句喂，好久不见。2、窗外雨潺潺春雨阑珊，罗衾耐玉更寒。
                                     3、梦里不知身是客，一晌贪欢。4、独自莫凭栏，无限江山，别时容易见.........</p>
			 				</div>
			 				<div class="panel-body">
			 					<h3><a href="#" target="_parent">Rainbow comes after a strom</a></h3>
			 					<p>What is the secret ingredient of tough people that enables them to 
                                     succeed? Why do they survive the touch times wgen others are overcome
                                     by them? Why do they win when others.......</p>
			 				</div>
			 			</div>
			 		</div>		
						
				</div>
			</div>
			
    </form>
    <br />
    <br />
			
</body>
</html>
