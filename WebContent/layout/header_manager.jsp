<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/aqua_header_manager.css?v=115">




<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/gnb.js"></script>
<script src="${pageContext.request.contextPath}/js/tab-ex-1.js"></script>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- material icon -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- bootstrap -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- joinForm icons -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<!-- swiper-wrapper script -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<!-- summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<!-- sweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<!-- Iamport -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- End of Script -->




<%
String manager_id = (String) session.getAttribute("manager_id");
%>
<c:choose>
	<c:when test="${empty manager_id}">
		<title>aqua</title>
	</c:when>
	<c:otherwise>
		<title><%=manager_id %>???????????? ???????????????
		</title>
	</c:otherwise>
</c:choose>

</head>


<body>

	<header id="header">
		<div class="bg_gnb"></div>
		<div class="inner">
			<h1 class="logo">
				<a href="${pageContext.request.contextPath}/index.jsp">??????????????????</a>
			</h1>
			<div class="nav_wrap">
				<ul class="service">
					<c:choose>
						<c:when test="${empty manager_id}">
							<li>
								<a>???????????? ???????????????.</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/manager/login/manager_login.jsp">loign</a>
							</li>
						</c:when>
						<c:otherwise>
							<li>
								<a><%=manager_id%>
									???????????? ???????????????
								</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/member/login/logout.jsp">logout</a>
							</li>
						</c:otherwise>
					</c:choose>
				</ul>
				<nav class="gnb_wrap">
					<ul class="gnb">
						<li>
							<a href="#">
								<span class="eng">member</span>
								<span class="kor">????????????</span>
							</a>
							<ul class="submenu">
								<li>
									<a href="${pageContext.request.contextPath}/manager/member/insert_member.jsp">?????? ?????? ??????</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/manager/member/manager_member_select.jsp">???????????? ??????/??????/??????</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">
								<span class="eng">product/ticket</span>
								<span class="kor">?????? ??? ??????</span>
							</a>
							<ul class="submenu">
								<li>
									<a href="${pageContext.request.contextPath}/manager/product/manager_product_insert.jsp">?????? ??????</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/manager/product/manager_product_select.jsp">?????? ?????? ??????/??????/??????</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/manager/tickets/manager_tickets_insert.jsp">?????? ??????</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/manager/tickets/manager_tickets.jsp">?????? ?????? ??????/??????</a>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">
								<span class="eng">order</span>
								<span class="kor">????????????</span>
							</a>
							<ul class="submenu">
								<li>
									<a href="${pageContext.request.contextPath}/manager/order/manager_order_select.jsp">?????? ?????? ??????</a>
								</li>

								<li>
									<a href="${pageContext.request.contextPath}/manager/order/manager_review.jsp">?????? ?????????</a>
								</li>

							</ul>
						</li>
						<li>
							<a href="#">
								<span class="eng">notice</span>
								<span class="kor">????????????</span>
							</a>
							<ul class="submenu">
								<li>
									<a href="${pageContext.request.contextPath}/manager/notice/manager_notice.jsp">???????????? ??????/??????/??????</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/manager/qna/manager_qna.jsp">???????????? ??????/??????/??????</a>
								</li>

							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<div id="header-first">
		<!-- <form id="headerSearchForm" method="POST"
		action="<%=request.getContextPath()%>/product?cmd=search">
		<button class="headerSearchForm-btn">
			<i class="tiny material-icons">search</i>
		</button>
		<input name="keyword" placeholder="????????? ?????? ?????????????????? ??????" class="headerSearchForm-input" />
	</form> -->
	</div>
</body>