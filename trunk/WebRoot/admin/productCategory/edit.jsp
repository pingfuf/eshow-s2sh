<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<s:action name="productCategory!view" id="view" executeResult="false"></s:action>
<head>
	<title>修改产品分类</title>
	<link rel="stylesheet"
		href="<c:url value='/admin/styles/productCategory.css'/>" type="text/css" />
	<link media="screen" type="text/css"
		href="<c:url value='/scripts/validate/theme/grey/formcheck.css'/>"
		rel="stylesheet" />
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/lang/zh-CN.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/scripts/validate/formcheck.js'/>"></script>
	<script type="text/javascript">
	 	window.addEvent('domready', function() {
			new FormCheck('productCategoryForm');
		});
    </script>
</head>
<body>
	<div class="container mt">
		<div class="row-fluid">
			<s:include value="../left.jsp"></s:include>
			<div class="span10">
				<ul class="breadcrumb">
					<li><a href="${ctx}/admin/index">首页</a> <span class="divider">/</span>
					</li>
					<li class="active">${title}</li>
				</ul>
				<s:include value="../title.jsp"></s:include>
				<div class="well com">
					<div class="page-header">
						<h3 class="yahei">产品</h3>
					</div>
					<ul id="myTab" class="nav nav-tabs">
						<li><a data-toggle="tab"
							href="<c:url value='/admin/product'/>"> 产品列表</a></li>
						<li class="active"><a data-toggle="tab"
							href="<c:url value='/admin/productCategory'/>"> 产品分类</a></li>
						<li><a data-toggle="tab"
							href="<c:url value='/admin/product/view'/>"> </a></li>
						<li><a data-toggle="tab"
							href="<c:url value='/admin/product/add'/>"> 添加产品</a></li>
					</ul>
					<div id="securitiesTxt">
						<form id="productCategoryForm" action="productCategory!update.html" method="post">
							<s:hidden name="id" value="%{#view.productCategory.id}"></s:hidden>
							<p>
								<span class="l">产品分类：</span><span class="r"><input
										style="width: 150px;" class="inputtext text-input validate['required']"  type="text"
										onblur="this.className='inputtext'"
										onfocus="this.className='inputtext2'" id="name"
										name="productCategory.name" value="${view.productCategory.name}" /> </span><span
									class="t"><font	color="red">*</font>必填</span>
							</p>
							<p>
								<span class="l">产品描述：</span><span class="r"><textarea
										class="inputtext text-input validate['required']"  style="width: 400px; height: 60px;"
										name="productCategory.description" id="description"
										onblur="this.className='textarea'"
										onfocus="this.className='textarea2'" />${view.productCategory.description}</textarea>
								</span><span class="t"> <font color="red">*</font>必填</span>
							</p>
							<div class="c"></div>
							<div class="c h5"></div>
							<span class="l"></span>
							<div class="c h10"></div>
							<p>
								<span class="l"></span><span class="r"><input
										type="submit" class="botton" value="修改"
										onMouseOut="this.className='botton';"
										onMouseOver="this.className='botton2';" /> </span>
							</p>
						</form>
						<div class="c"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
