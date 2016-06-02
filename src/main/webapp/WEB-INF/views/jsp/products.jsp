<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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
	href="${pageContext.servletContext.contextPath }/themes/bootshop/bootstrap.min.css"
	media="screen" />
<link
	href="${pageContext.servletContext.contextPath }/themes/css/base.css"
	rel="stylesheet" media="screen" />
<!-- Bootstrap style responsive -->
<link
	href="${pageContext.servletContext.contextPath }/themes/css/bootstrap-responsive.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.servletContext.contextPath }/themes/css/font-awesome.css"
	rel="stylesheet" type="text/css">
<!-- Google-code-prettify -->
<link
	href="${pageContext.servletContext.contextPath }/themes/js/google-code-prettify/prettify.css"
	rel="stylesheet" />
<!-- fav and touch icons -->
<link rel="shortcut icon"
	href="${pageContext.servletContext.contextPath }/themes/images/ico/favicon.ico">
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
	<div class="span9">
		<ul class="breadcrumb">
			<li><a
				href="${pageContext.servletContext.contextPath }/home.html">Home</a>
				<span class="divider">/</span></li>
			<li class="active">Products Name</li>
		</ul>
		<h3>
			${lsp.tenloai } <small class="pull-right"> ${fn:length(dshh) }
				products are available </small>
		</h3>
		<hr class="soft" />
		<form class="form-horizontal span6">
			<div class="control-group">
				<label class="control-label alignL">Sort By </label> <select>
					<option>Product name A - Z</option>
					<option>Product name Z - A</option>
					<option>Product Stoke</option>
					<option>Proce Lowest first</option>
				</select>
			</div>
		</form>

		<div id="myTab" class="pull-right">
			<a href="#listView" data-toggle="tab"><span class="btn btn-large"><i
					class="icon-list"></i></span></a> <a href="#blockView" data-toggle="tab"><span
				class="btn btn-large btn-primary"><i class="icon-th-large"></i></span></a>
		</div>
		<br class="clr" />
		<div class="tab-content">
			<div class="tab-pane" id="listView">
				<c:forEach var="h" items="${dshh }">
					<div class="row">
						<div class="span2">
							<a
								href="${pageContext.servletContext.contextPath }/productdetail/${h.mahang}.html"><img
								src="${pageContext.servletContext.contextPath }/${h.hinhanh }"
								alt="" /></a>
						</div>
						<div class="span4">
							<h3>New | Available</h3>
							<hr class="soft" />
							<h5>${h.tenhang }</h5>
							<p>${h.mota }</p>
							<a class="btn btn-small pull-right" href="product_details.html">View
								Details</a> <br class="clr" />
						</div>
						<div class="span3 alignR">
							<!--  	<form class="form-horizontal qtyFrm">-->
							<form method="post"
								action="${pageContext.servletContext.contextPath }/thanhtoan.html">
								<h3>$${h.giaban }</h3>
								<label class="checkbox"> <input type="checkbox">
									Adds product to compair
								</label><br /> <input type="hidden" value="${h.mahang }" name="mahang">
								<input type="hidden" name="buy" value="1">
								<button type="submit" class="btn btn-large btn-primary">
									Add to <i class=" icon-shopping-cart"></i>
								</button>
								<a href="product_details.html" class="btn btn-large"><i
									class="icon-zoom-in"></i></a>
							</form>
						</div>
					</div>
					<hr class="soft" />
				</c:forEach>
			</div>
			<!-- End of listview -->
			<!-- Begin block view -->
			<div class="tab-pane  active" id="blockView">
				<ul class="thumbnails">
					<c:forEach var="h" items="${dshh }">
						<li class="span3">
							<div class="thumbnail">
								<a
									href="${pageContext.servletContext.contextPath }/productdetail/${h.mahang}.html"><img
									src="${pageContext.servletContext.contextPath }/${h.hinhanh }"
									alt="" /></a>
								<div class="caption">
									<h5>${h.tenhang }</h5>
									<form method="post"
										action="${pageContext.servletContext.contextPath }/thanhtoan.html">
										<h4 style="text-align: center">
											<a class="btn" href="#"> <i class="icon-zoom-in"></i></a> <input
												type="hidden" value="${h.mahang }" name="mahang"> <input
												type="hidden" name="buy" value="1">
											<button type="submit" class="btn">
												Add to <i class="icon-shopping-cart"></i>
											</button>

											<a class="btn btn-primary" href="#"><span
												class="glyphicon glyphicon-gbp"></span> $${h.giaban }</a>
										</h4>
									</form>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
				<hr class="soft" />
			</div>
		</div>
		<a href="compair.html" class="btn btn-large pull-right">Compair
			Product</a>
		<div class="pagination">
			<ul>

				<li><a href="#">&lsaquo;</a></li>
				<li><a href="#">&rsaquo;</a></li>


			</ul>
		</div>
		<br class="clr" />
	</div>
	<!-- Placed at the end of the document so the pages load faster ============================================= -->
	<script
		src="${pageContext.servletContext.contextPath }/themes/js/jquery.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.servletContext.contextPath }/themes/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.servletContext.contextPath }/themes/js/google-code-prettify/prettify.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/themes/js/bootshop.js"></script>
	<script
		src="${pageContext.servletContext.contextPath }/themes/js/jquery.lightbox-0.5.js"></script>

	<!-- Themes switcher section ============================================================================================= -->
</body>
</html>