
<div class="container-fluid">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/ShoesKartFrontend/">ShoesKart</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="/ShoesKartFrontend/">Home</a></li>
				<security:authorize access="isAnonymous()">
					<li><a href="/ShoesKartFrontend/login">Sign In</a></li>
					<li><a href="/ShoesKartFrontend/signup">Sign Up</a></li>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
					<li><a href="/ShoesKartFrontend/perform_logout">Logout</a></li>
				</security:authorize>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="hasAuthority('administrator')">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Admin <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/ShoesKartFrontend/admin/category">category</a></li>
							<li><a href="/ShoesKartFrontend/admin/product">product</a></li>
							<li><a href="/ShoesKartFrontend/admin/supplier">supplier</a></li>
						</ul></li>
				</security:authorize>
				<security:authorize access="hasAuthority('administrator')">
					<li><a href="/ShoesKartFrontend/admin/contactus"> Contact Us</a></li>
					<li><a href="/ShoesKartFrontend/admin/aboutus"> About Us</a></li>
				</security:authorize>
				<security:authorize access="hasAuthority('user')">
					<li><a href="/ShoesKartFrontend/user/product"> Products</a></li>
					<li><a href="/ShoesKartFrontend/user/cart"> Cart</a></li>
					<li><a href="/ShoesKartFrontend/user/product"> Products</a></li>
					<li><a href="/ShoesKartFrontend/user/contactus"> Contact Us</a></li>
					<li><a href="/ShoesKartFrontend/user/aboutus"> About Us</a></li>
				</security:authorize>
				<security:authorize access="isAnonymous()">
					<li><a href="/ShoesKartFrontend/product"> Products</a></li>
					<li><a href="/ShoesKartFrontend/contactus"> Contact Us</a></li>
					<li><a href="/ShoesKartFrontend/aboutus"> About Us</a></li>
				</security:authorize>
			</ul>

		</div>
	</nav>
</div>