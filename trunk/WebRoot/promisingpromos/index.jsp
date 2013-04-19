<%@ page language="java" errorPage="/error.jsp" pageEncoding="UTF-8"
	contentType="text/html;charset=utf-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ taglib uri="/WEB-INF/stringutil.tld" prefix="util"%>
<s:action name="info!browse" id="view" executeResult="false" >
	<s:param name="query.url">home</s:param>
	<s:param name="query.website">promisingpromos</s:param>
</s:action>
<head>
	<title>${view.info.title}</title>
	<meta name="keywords" content="${view.info.title}" />
	<meta name="description" content="${view.info.title}" />
	<link rel="stylesheet" href="<c:url value='/styles/blog.css'/>"
		type="text/css" media="screen" />
</head>
<body>
    <c:set var="current">index</c:set>
	<section>
	<%@ include file="common/header.jsp"%>
	<div class="w1000 pt10 clearfix">

      <s:action name="product-category!list" id="productCategorys" executeResult="false" />
      <div class="side fl">
          <div class="yahei cate">
              <h3>CATEGORIES</h3>
              <ul>
              	  <s:iterator value="%{#productCategorys.productCategories}">
              	  		<li><a href="${ctx}/promisingpromos/product/category/${id}" title="${name }">${name }</a></li>
              	  </s:iterator>
              </ul>
          </div>
				<s:action name="product!search" id="productsByCount">
					<s:param name="query.order">count</s:param>
					<s:param name="query.desc">true</s:param>
					<s:param name="query.pagesize">6</s:param>
				</s:action>
				<div class="hotproduct">
              <h3 class="yahei">HOT PRODUCTS</h3>
              <ul class="clearfix">
               <s:iterator value="%{#productsByCount.products}">
               	<li> <a href="${ctx}/promisingpromos/product/view/${id}"><img src="${img }"/></a></li>
                </s:iterator>
              </ul>
          </div>
      </div>



      <div class="main fr">
          <div class="banner">
              <ul class="index_banner">
                <li><a href=""><img src="${ctx }/promisingpromos/images/banner01.jpg"/></a></li>
                <li><a href=""><img src="${ctx }/promisingpromos/images/banner02.jpg"/></a></li> 
              </ul>
          </div>

           <s:action name="product!list" id="products" executeResult="false" />
				<ul class="product clearfix yahei">
					<s:iterator value="%{#products.products}">
						<li><a href="${ctx}/promisingpromos/product/view/${id}"> <img src="${img}" />
								<p>
									<span class="name str">${name}</span><br>
									Item# ${code }<br> As low as <span
										class="price str">$${price}</span>
								</p> </a>
						</li>
					</s:iterator>
				</ul>
      </div>
      
 </div>
	</section>
</body>