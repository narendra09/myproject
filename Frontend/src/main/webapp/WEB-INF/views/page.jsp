<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<head>


<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>Online Shopping - ${title}</title>

<script>
	window.menu = '${title}';
	
	window.contextRoot = '${contextRoot}'
	
</script>

<!-- Bootstrap core CSS -->
<link href="${css }/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">
<link href="${css}/readable-theme.css" rel="stylesheet">

</head>

<body>
	<div class="wrapper">
		<!-- Navigation -->
		<%@include file="./shared/navbar.jsp"%>

		<div class="content">

			<!-- Page Content -->
			<%-- <%@include file="./content.jsp" %> --%>
			<!-- /.container -->



			<div class="content">

				<!-- Loading the home content -->
				<c:if test="${userClickHome == true }">
					<%@include file="content.jsp"%>
				</c:if>

				<!-- Load only when user clicks about -->
				<c:if test="${userClickAbout == true }">
					<%@include file="about.jsp"%>
				</c:if>

				<!-- Load only when user clicks contact -->
				<c:if test="${userClickContact == true }">
					<%@include file="contact.jsp"%>
				</c:if>
			</div>
		</div>

		<!-- Footer -->
		<%@include file="./shared/footer.jsp"%>

		<!-- Bootstrap core JavaScript -->
		<script src="${js }/jquery.js"></script>
		<script src="${js }/nari.js"></script>
		<script src="${js}/bootstrap.bundle.min.js"></script>
</body>

</div>

</html>
