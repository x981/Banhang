<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div id="sidebar" class="span3">
	<div class="well well-small">
		<a id="myCart" href="${pageContext.servletContext.contextPath }/xemgiohang.html"><img
			src="${pageContext.servletContext.contextPath }/themes/images/ico-cart.png"
			alt="cart">
		<c:if test="${sessionScope.dschon != null }"> [ ${fn:length(sessionScope.dschon) } ] </c:if>
			<c:if test="${sessionScope.dschon == null }"> [ 0 ] </c:if> Itemes in
			your cart <span class="badge badge-warning pull-right">$${sessionScope.tiengiohang }</span></a>
	</div>
	<ul id="sideManu" class="nav nav-tabs nav-stacked">
		<c:forEach var="sp" items="${sessionScope.dssp }">
			<li class="subMenu open"><a> ${sp.tensp } [${sp.sohanghoa() }]</a>
				<ul>
					<c:forEach var="lsp" items="${sp.loaisanphams }">
						<li><a
							href="${pageContext.servletContext.contextPath }/getlistitems/${lsp.maloai }.html"><i
								class="icon-chevron-right"></i> ${lsp.tenloai } [${lsp.sohang() }]
						</a></li>
					</c:forEach>
				</ul></li>
		</c:forEach>
	</ul>
	<br />
	<div class="thumbnail">
		<img
			src="${pageContext.servletContext.contextPath }/themes/images/products/panasonic.jpg"
			alt="Bootshop panasonoc New camera" />
		<div class="caption">
			<h5>Panasonic</h5>
			<h4 style="text-align: center">
				<a class="btn" href="product_details.html"> <i
					class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
					class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a>
			</h4>
		</div>
	</div>
	<br />
	<div class="thumbnail">
		<img
			src="${pageContext.servletContext.contextPath }/themes/images/products/kindle.png"
			title="Bootshop New Kindel" alt="Bootshop Kindel">
		<div class="caption">
			<h5>Kindle</h5>
			<h4 style="text-align: center">
				<a class="btn" href="product_details.html"> <i
					class="icon-zoom-in"></i></a> <a class="btn" href="#">Add to <i
					class="icon-shopping-cart"></i></a> <a class="btn btn-primary" href="#">$222.00</a>
			</h4>
		</div>
	</div>
	<br />
	<div class="thumbnail">
		<img
			src="${pageContext.servletContext.contextPath }/themes/images/payment_methods.png"
			title="Bootshop Payment Methods" alt="Payments Methods">
		<div class="caption">
			<h5>Payment Methods</h5>
		</div>
	</div>
</div>
