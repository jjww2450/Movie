<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="java.net.URLEncoder"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/Movie/css/bootstrap.min.css">
<script
	src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="/Movie/js/bootstrap.min.js"></script>
<link href="/Movie/time/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" media="all"
	href="/Movie/time/daterangepicker-bs3.css" />
<script type="text/javascript" src="/Movie/time/moment.js"></script>
<script type="text/javascript" src="/Movie/time/daterangepicker.js"></script>
<title>电影列表</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<title>My JSP 'fenye.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	This is my JSP page.
	<br>
	<s:iterator value="pageBean.list">
<tr>
  <td class="tocenter">
       <s:property value="name"/>
   </td>
 
 </tr>
 </s:iterator>
	 <tr>
   <td width="13%" class="tocenter">
   共
       <s:property value="pageBean.totalPage"/>
    页
   </td>
   <td width="17%" class="tocenter">
   共
       <s:property value="pageBean.allRow"/>
 条记录
  </td>
  <td width="15%" class="tocenter">
 当前第
      <s:property value="pageBean.currentPage"/>
 页
 </td>
 
 </tr>
</body>
</html>
