<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>购物商城</title>
<link href="${pageContext.request.contextPath}/css/slider.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/common.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/css/product.css"
		rel="stylesheet" type="text/css" />
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<!-- <style>
	.go-top {
		background: url("${pageContext.request.contextPath}/image/12.jpg") no-repeat scroll left top transparent;
		bottom: 65px;
		color: #444444;
		display: none;
		height: 50px;
		margin-left: 510px;
		position: fixed;
		right: 160px;
		text-align: center;
		width: 50px;
	}
	.go-top:hover {
		background-position: -50px top;
	}

</style> -->




</head>
<body>
	<div class="container header">
		<div class="span5">
			<div class="logo">
				<a href="${pageContext.request.contextPath}/index.action"> <img
					src="${pageContext.request.contextPath}/image/r___________renleipic_01/123.jpg"
					alt="拼装模型装卖店" />
				</a>
			</div>
		</div>
		<div class="span9">
			<div class="headerAd">
				
			</div>
		</div>
		<%@ include file="menu.jsp"%>
	</div>
	
	<div class="container productList">
			<div class="span6">
				<div class="hotProductCategory">
					<c:forEach var="c" items="${cList}">
						<dl>
							<dt>
								<a
									href="${pageContext.request.contextPath}/findCategorySecond.action?cid=${c.cid}&page=1">
									${c.cname} </a>
							</dt>
							<c:forEach items="${c.csList}" var="cs">
								<dd>
									<a
										href="${pageContext.request.contextPath}/findCategorySecond1.action?csid=${cs.csid}&page=1">
										${cs.csname}</a>
								</dd>
							</c:forEach>
						</dl>
					</c:forEach>
				</div>
			</div>
	
		<div class="span18 last">
			<div id="result" class="result table clearfix">
				<div class="title">
					<strong>最新商品</strong>
				</div> 
				<ul>
					<c:forEach items="${hList}" var="p"> 
						<li><a
							href="${pageContext.request.contextPath}/productFindByPid.action?pid=${p.pid}"
							target="_blank">
							 <img
								src="${pageContext.request.contextPath}/${p.image}"
								width="170" height="170" style="display: inline-block;">
								<span
									style='color: green;align:center;'>${p.pname}</span> <span class="price">
										商城价： ￥${p.shopPrice} </span>
								</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="span18 last">
			<div id="result" class="result table clearfix">
				<div class="title">
					<strong>促销商品</strong> <a target="_blank"></a>
				</div>
				<ul>
					<c:forEach items="${nList}" var="n"> 
						<li><a
							href="${pageContext.request.contextPath}/productFindByPid.action?pid=${n.pid}"
							target="_blank">
							 <img
								src="${pageContext.request.contextPath}/${n.image}"
								width="170" height="170" style="display: inline-block;">
								<span
									style='color: green'>${n.pname}</span> <span class="price">
										商城价： ￥${n.shopPrice} </span>
								</a>
								
								</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
	</div>
	
	<button id="test" style="position:fixed;right:0;bottom:0;background-color:red">回到顶部</button>

<script>

test.onclick = function(){

scrollTo(0,0);

}

</script>
	<div class="container footer">
	
	
		<div class="span24">
			<div class="footerAd">
				
			</div>
		</div>
		<div class="span24">
			<ul class="bottomNav">
				<li><hr></hr></li>
			</ul>
		</div>
		<div class="span24">
		</div>
	</div>

     
	
</body>
</html>