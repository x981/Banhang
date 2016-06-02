<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div class="span9">
	<h4>Latest Products</h4>
	<ul class="thumbnails">
		<c:forEach var="h" items="${dshh }">
			<li class="span3">
				<div class="thumbnail">
					<a
						href="${pageContext.servletContext.contextPath }/productdetail/${h.mahang}.html"><img
						src="${pageContext.servletContext.contextPath }/${h.hinhanh }"
						alt="" /></a>
					<div class="caption">
						<h5>
							<a
								href="${pageContext.servletContext.contextPath }/productdetail/${h.mahang}">${h.tenhang }</a>
						</h5>
						<form method="post" action="${pageContext.servletContext.contextPath }/thanhtoan.html">
							<h4 style="text-align: center">
								<a class="btn" href="#"> <i class="icon-zoom-in"></i></a> <input
									type="hidden" value="${h.mahang }" name="mahang">
								<input type="hidden" name="buy" value="1">	
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
</div>
