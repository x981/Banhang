<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="span9">
	<ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">SHOPPING CART</li>
	</ul>
	<h3>
		SHOPPING CART [ <small>${fn:length(sessionScope.dschon) }
			Item(s) </small>]<a
			href="${pageContext.servletContext.contextPath }/home.html"
			class="btn btn-large pull-right"><i class="icon-arrow-left"></i>
			Continue Shopping </a>
	</h3>
	<hr class="soft" />
	<table class="table table-bordered">
		<tr>
			<th>I AM ALREADY REGISTERED</th>
		</tr>
		<tr>
			<td>
				<form class="form-horizontal">
					<div class="control-group">
						<label class="control-label" for="inputUsername">Username</label>
						<div class="controls">
							<input type="text" id="inputUsername" placeholder="Username">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword1">Password</label>
						<div class="controls">
							<input type="password" id="inputPassword1" placeholder="Password">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn">Sign in</button>
							OR <a href="register.html" class="btn">Register Now!</a>
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<a href="forgetpass.html" style="text-decoration: underline">Forgot
								password ?</a>
						</div>
					</div>
				</form>
			</td>
		</tr>
	</table>

	<table class="table table-bordered">
		<thead>
			<tr>
				<th>Product</th>
				<th>Description</th>
				<th>Quantity/Update</th>
				<th>Price</th>
				<th>Discount</th>
				<th>Tax</th>
				<th>Total</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="chon" items="${sessionScope.dschon }">
				<tr>
					<td><img width="60"
						src="${pageContext.servletContext.contextPath }/${chon.hanghoa.hinhanh }"
						alt="" /></td>
					<td>MASSA AST<br />Color : ${chon.hanghoa.mau }, Material :
						metal
					</td>
					<td>
						<div class="input-append">
							<input class="span1" style="max-width: 34px"
								placeholder="${chon.soluong }" id="appendedInputButtons"
								size="16" type="text" value="${chon.soluong }">
							<button class="btn" type="button" id="minus">
								<i class="icon-minus"></i>
							</button>
							<button class="btn" type="button" id="plus">
								<i class="icon-plus"></i>
							</button>
							<button class="btn btn-danger" type="button" id="remove">
								<i class="icon-remove icon-white"></i>
							</button>
						</div>
					</td>
					<td>$${chon.hanghoa.giaban }</td>
					<td>$0</td>
					<td>$${chon.hanghoa.thue }</td>
					<td>$${chon.thanhtien }</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="6" style="text-align: right"><strong>TOTAL</strong></td>
				<td class="label label-important" style="display: block"><strong>
						$${tiengiohang } </strong></td>
			</tr>
		</tbody>
	</table>


	<table class="table table-bordered">
		<tbody>
			<tr>
				<td>
					<form class="form-horizontal">
						<div class="control-group">
							<label class="control-label"><strong> VOUCHERS
									CODE: </strong> </label>
							<div class="controls">
								<input type="text" class="input-medium" placeholder="CODE">
								<button type="submit" class="btn">ADD</button>
							</div>
						</div>
					</form>
				</td>
			</tr>

		</tbody>
	</table>

	<table class="table table-bordered">
		<tr>
			<th>ESTIMATE YOUR SHIPPING</th>
		</tr>
		<tr>
			<td>
				<form class="form-horizontal">
					<div class="control-group">
						<label class="control-label" for="inputCountry">Country </label>
						<div class="controls">
							<input type="text" id="inputCountry" placeholder="Country">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPost">Post Code/
							Zipcode </label>
						<div class="controls">
							<input type="text" id="inputPost" placeholder="Postcode">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<button type="submit" class="btn">ESTIMATE</button>
						</div>
					</div>
				</form>
			</td>
		</tr>
	</table>
	<a href="products.html" class="btn btn-large"><i
		class="icon-arrow-left"></i> Continue Shopping </a> <a href="login.html"
		class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a>
</div>
