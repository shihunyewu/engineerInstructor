<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="jsps/css/personal/bootstrap.min.css" />
	<link rel="stylesheet" href="jsps/css/personal/bootstrap-responsive.min.css" />
	<link rel="stylesheet" href="jsps/css/personal/fullcalendar.css" />
	<link rel="stylesheet" href="jsps/css/personal/matrix-style.css" />
	<link rel="stylesheet" href="jsps/css/personal/matrix-media.css" />
	<link href="jsps/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" href="jsps/css/personal/mycss.css" />
	<link rel="stylesheet" href="jsps/css/personal/jquery.gritter.css" />
	
	<script src="jsps/js/personal/jquery.min.js"></script>
	<script src="jsps/js/personal/matrix.js"></script>
	<script type="text/javascript" src="<c:url value='/js/jquery-1.5.1.js'/>"></script>
	<script src="jsps/js/personal/myCheck.js"></script>
	<link rel="stylesheet" type="text/css" href="jsps/css/personal/myBlank.css">
	<script type="text/javascript" src="jsps/js/personal/jquery-1.8.0.min.js"></script>
	<!-- 遮罩层start -->
	<script>
		jQuery(document).ready(function($) {
			$('.theme-login').click(function(){
				$('.theme-popover-mask').fadeIn(100);
				$('.theme-popover').slideDown(200);
			})
			$('.theme-poptit .close').click(function(){
				$('.theme-popover-mask').fadeOut(100);
				$('.theme-popover').slideUp(200);
			})
		
		})
	</script>
	<!-- 遮罩层end -->
	<!-- 该模块变为激活状态 -->
	<style type="text/css">
	#sidebar > ul > li.myfirst {
	    background-color: #27a9e3;
	    border-bottom: 1px solid #27a9e3;
	    border-top: 1px solid #27a9e3;
	}
	#sidebar > ul > li.myfirst a{ 
		background: url("jsps/images/menu-active.png") no-repeat scroll right center transparent !important;
		text-decoration: none;
		color:#fff; text-decoration:none;
	}
	</style>
  </head>
  
  <body>
    <!--Header-part-->
	<div id="header">
	  <div class="myHeader">个人中心</div>
	</div>
	<!--close-Header-part--> 
	
	
	<!--top-Header-menu-->
	<div id="user-nav" class="navbar navbar-inverse">
	  <ul class="nav">
		<li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
		  <ul class="dropdown-menu">
			<li><a href="#"><i class="icon-user"></i> My Profile</a></li>
			<li class="divider"></li>
			<li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
			<li class="divider"></li>
			<li><a href="#"><i class="icon-key"></i> Log Out</a></li>
		  </ul>
		</li>
		<li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
		  <ul class="dropdown-menu">
			<li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
			<li class="divider"></li>
			<li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
			<li class="divider"></li>
			<li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
			<li class="divider"></li>
			<li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
		  </ul>
		</li>
		<li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
		<li class=""><a title="" href="<c:url value='/UserServlet?method=quit'/>"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
	  </ul>
	</div>
	<!--close-top-Header-menu-->
	
	<!--start-top-serch-->
	<div id="search">
	  <input type="text" placeholder="Search here..."/>
	  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
	</div>
	<%@include file="siderby.jspf" %>
	<!--main-container-part-->
	<div id="content">
	<!--breadcrumbs-->
	  <div id="content-header">
		<div id="breadcrumb"> <a href="jsps/personal/personal.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 我的首页</a></div>
	  </div>
	<!--End-breadcrumbs-->
	
	<%@include file="actionQuick.jspf"%>  
	
	<!--Chart-box-->    
		<div class="row-fluid" style="margin:0px 10px 5px 18px;width:1058">
		  <div class="widget-box">
			<div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
			  <h5>个人简介</h5>
			</div>
			<div class="widget-content" >
			  <div class="row-fluid">
				<div class="span9">
				  <div class="chart">
					  <form action="#" method="post">
						  <div class="individual_img">
							  <div class="personImg">
							 
							  <img width="200" height="200" src="${user.u_img}"/><br/>
								</div>
							   <div class="individualName">
							  <span class="information_word">个性签名：</span><textarea name="individual" readonly >${user.u_desc}</textarea>
							  </div>
						  </div>
						  <div class="all_information">
							  <span class="information_word">昵称:</span><input style="height:30px" class="information"  type="text" name="username" readonly value="${user.u_name}"/><br/>
							  <span class="information_word">性别:</span><input style="height:30px" class="information" type="text" name="sex" readonly value="${user.u_sex}"/><br/>
							  <span class="information_word">电话:</span><input style="height:30px" class="information" type="text" name="telephone" readonly value="15092403902"/><br/>
							  <span class="information_word">邮箱:</span><input style="height:30px" class="information" type="text" name="email" readonly value="${user.u_email}"/><br/>
							  <span class="information_word">住址:</span><input style="height:30px" class="information" type="text" name="address" readonly value="青岛科技大学7#楼"/><br/>
							  <span class="information_word">单位:</span><input style="height:30px" class="information" type="text" name="work" readonly value="青岛科技大学"/><br/>				  
						  </div>
					 
					  </form>
				  </div>
				</div>
				<div class="span3" >
				  <ul class="site-stats">
					<li class="bg_lh"><i class="icon-user"></i> <strong>2540</strong> <small>粉丝数</small></li>
					<li class="bg_lh"><i class="icon-plus"></i> <strong>120</strong> <small>好友数 </small></li>
					<li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>656</strong> <small>我的路线数目</small></li>
					<li class="bg_lh"><i class="icon-tag"></i> <strong>9540</strong> <small>我的回答数</small></li>
					<li class="bg_lh"><i class="icon-repeat"></i> <strong>10</strong> <small>收藏问题数</small></li>
					<li class="bg_lh"><i class="icon-globe"></i> <strong>8540</strong> <small>收藏路线数</small></li>
				  </ul>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	<!--End-Chart-box--> 
		</div>
		
	<!--end-main-container-part-->
	<!-- 修改个人信息——遮罩层start -->
	
	<div class="theme-popover">
		 <div class="theme-poptit">
			  <a href="javascript:;" title="关闭" class="close"><h3>关闭×</h3></a>
			  <h3>修改个人信息</h3>
		 </div>
		 <div class="theme-popbod dform">
			   <form class="theme-signin" name="loginform" action="<c:url value='/PersonalCenterServlet'/>" method="post">
					<input type="hidden" name="method" value="quickUpdateInfor"/>
					
					<div class="edit_information" id="all_information">
							  <div><span class="information_word">昵称:</span><input style="height:30px" class="information"  type="text" name="u_name" id="username" value="${user.u_name}"/><span class="spanError" id="usernameError">${errors.username}</span></div>
							  <div><span class="information_word">性别:</span><input style="height:30px" class="information" type="text" name="u_sex" id="sex" value="${user.u_sex}"/><span class="spanError" id="sexError">${errors.sex}</span></div>
							  <div style="display:none"><span class="information_word">邮箱:</span><input style="height:30px" class="information" type="text" name="u_email" id="sex" value="${user.u_email}"/><span class="spanError" id="emailError">${errors.email}</span></div>
							  <div><span class="information_word">电话:</span><input style="height:30px" class="information" type="text" name="telephone" id="telephone" value="15092403902"/><span class="spanError" id="telephoneError"></span></div>
							  <div><span class="information_word">住址:</span><input style="height:30px" class="information" type="text" name="address" id="address" value="青岛科技大学7#楼"/><span class="spanError" id="homeError"></span></div>
							  <div><span class="information_word">单位:</span><input style="height:30px" class="information" type="text" name="work" id="work" value="青岛科技大学"/><span class="spanError" id="workError"></span></div>
							  <div><span class="information_word">密码:</span><input style="height:30px" class="information" type="password" name="u_pwd" id="password" value="${user.u_pwd}"/><span class="spanError" id="passwordError">${errors.password }</span></div>
							  <input class="btn btn-primary"  type="reset" id="reset" name="reset"  value=" 取消修改 " />
							  <input class="btn btn-primary editsubmit"  type="submit" id="submit" name="submit"  value=" 保存修改 " /><br/>
							  
					</div>
					
					
			   </form>
		 </div>
	</div>
	<div class="theme-popover-mask"></div>
	<!-- 修改个人信息——遮罩层end -->
	<!--Footer-part-->
	
	<div class="row-fluid">
	  <div id="footer" class="span12"> 2015 &copy; Engineer.
	   </div>
	</div>
	
		<!--end-Footer-part-->
  </body>
</html>