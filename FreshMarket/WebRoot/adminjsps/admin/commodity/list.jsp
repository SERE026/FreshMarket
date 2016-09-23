<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图书分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		font-size: 10pt;
	}
	.icon {
		margin:10px;
		border: solid 2px gray;
		width: 160px;
		height: 190px;
		text-align: center;
		float: left;
	}
</style>
  </head>
  
  <body>
  <c:forEach var="commodity" items="${commodities }">
   <div class="icon">
    <a href="<c:url value='/CommodityServlet?method=findCommodity&commodityID=${commodity.commodityID }'/>"><img src="${commodity.url}"  width="160" height="170" border="0"/></a>
      <br/>
   	<a href="<c:url value='/CommodityServlet?method=findCommodity&commodityID=${commodity.commodityID }'/>">${commodity.commodityName}</a>
  </div>
  </c:forEach>
  
  
  </body>
 
</html>

