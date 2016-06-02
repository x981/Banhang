<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bootshop online Shopping cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!--Less styles -->
<!-- Other Less css file //different less files has different color scheam
	<link rel="stylesheet/less" type="text/css" href="themes/less/simplex.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/classified.less">
	<link rel="stylesheet/less" type="text/css" href="themes/less/amelia.less">  MOVE DOWN TO activate
	-->
<!--<link rel="stylesheet/less" type="text/css" href="themes/less/bootshop.less">
	<script src="themes/js/less.js" type="text/javascript"></script> -->

<!-- Bootstrap style -->
<link id="callCss" rel="stylesheet"
	href="${pageContext.servletContext.contextPath }/themes/bootshop/bootstrap.min.css" media="screen" />
<link href="${pageContext.servletContext.contextPath }/themes/css/base.css" rel="stylesheet" media="screen" />
<!-- Bootstrap style responsive -->
<link href="${pageContext.servletContext.contextPath }/themes/css/bootstrap-responsive.min.css" rel="stylesheet" />
<link href="${pageContext.servletContext.contextPath }/themes/css/font-awesome.css" rel="stylesheet"
	type="text/css">
<!-- Google-code-prettify -->
<link href="${pageContext.servletContext.contextPath }/themes/js/google-code-prettify/prettify.css"
	rel="stylesheet" />
<!-- fav and touch icons -->
<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/themes/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.servletContext.contextPath }/themes/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.servletContext.contextPath }/themes/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.servletContext.contextPath }/themes/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.servletContext.contextPath }/themes/images/ico/apple-touch-icon-57-precomposed.png">
<style type="text/css" id="enject"></style>
</head>
<body>
	<div id="header">
		<div class="container">
			<div id="welcomeLine" class="row">
				<div class="span6">
					Welcome!<strong> User</strong>
				</div>
				<div class="span6">
					<div class="pull-right">
						<a href="product_summary.html"><span class="">Fr</span></a> <a
							href="product_summary.html"><span class="">Es</span></a> <span
							class="btn btn-mini">En</span> <a href="product_summary.html"><span>&pound;</span></a>
						<span class="btn btn-mini">${sessionScope.tiengiohang }</span> <a
							href="product_summary.html"><span class="">$</span></a> <a
							href="${pageContext.servletContext.contextPath }/xemgiohang.html"><span
							class="btn btn-mini btn-primary"><i
								class="icon-shopping-cart icon-white"></i> <c:if test="${sessionScope.dschon != null }"> [ ${fn:length(sessionScope.dschon) } ] </c:if><c:if test="${sessionScope.dschon == null }"> [ 0 ] </c:if>  Itemes in your
								cart </span> </a>
					</div>
				</div>
			</div>
			<!-- Navbar ================================================== -->
			<div id="logoArea" class="navbar">
				<a id="smallScreen" data-target="#topMenu" data-toggle="collapse"
					class="btn btn-navbar"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a>
				<div class="navbar-inner">
					<a class="brand" href="${pageContext.servletContext.contextPath }/home.html"><img
						src="${pageContext.servletContext.contextPath }/themes/images/logo.png" alt="Bootsshop" /></a>
					<form class="form-inline navbar-search" method="post"
						action="products.html">
						<input id="srchFld" class="srchTxt" type="text" /> <select
							class="srchTxt">
							<option>All</option>
							<option>CLOTHES</option>
							<option>FOOD AND BEVERAGES</option>
							<option>HEALTH AND BEAUTY</option>
							<option>SPORTS AND LEISURE</option>
							<option>BOOKS AND ENTERTAINMENTS</option>
						</select>
						<button type="submit" id="submitButton" class="btn btn-primary">Go</button>
					</form>
					<ul id="topMenu" class="nav pull-right">
						<li class=""><a href="special_offer.html">Specials Offer</a></li>
						<li class=""><a href="normal.html">Delivery</a></li>
						<li class=""><a href="contact.html">Contact</a></li>
						<li class=""><a href="#login" role="button"
							data-toggle="modal" style="padding-right: 0"><span
								class="btn btn-large btn-success">Login</span></a>
							<div id="login" class="modal hide fade in" tabindex="-1"
								role="dialog" aria-labelledby="login" aria-hidden="false">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">Ã</button>
									<h3>Login Block</h3>
								</div>
								<div class="modal-body">
									<form class="form-horizontal loginFrm">
										<div class="control-group">
											<input type="text" id="inputEmail" placeholder="Email">
										</div>
										<div class="control-group">
											<input type="password" id="inputPassword"
												placeholder="Password">
										</div>
										<div class="control-group">
											<label class="checkbox"> <input type="checkbox">
												Remember me
											</label>
										</div>
									</form>
									<button type="submit" class="btn btn-success">Sign in</button>
									<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
								</div>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End====================================================================== -->
	<div id="carouselBlk">
		<tiles:insertAttribute name="carousel" />
	</div>
	<div id="mainBody">
		<div class="container">
			<div class="row">
				<!-- Sidebar ================================================== -->
				<tiles:insertAttribute name="leftmenu" />
				<!-- Sidebar end=============================================== -->
				<tiles:insertAttribute name="content" />
			</div>
		</div>
	</div>
	<!-- Footer ================================================================== -->
	<tiles:insertAttribute name="footer" />
	<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script src="${pageContext.servletContext.contextPath }/themes/js/jquery.js" type="text/javascript"></script>
	<script src="${pageContext.servletContext.contextPath }/themes/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.servletContext.contextPath }/themes/js/google-code-prettify/prettify.js"></script>
	<script src="${pageContext.servletContext.contextPath }/themes/js/bootshop.js"></script>
	<script src="${pageContext.servletContext.contextPath }/themes/js/jquery.lightbox-0.5.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#minus').click(function(){
				var sl = $("appendedInputButtons").val();
				alert(sl);
			});
			$('#plus').click(function(){
				alert("cong");
			});
			$('#remove').click(function(){
				alert("xoa");
			});
		});
		
		
	</script>

	<!-- Themes switcher section ============================================================================================= -->
</body>
</html>