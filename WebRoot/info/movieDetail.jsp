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
	<script src="../dist/clipboard.min.js"></script>
</head>
<body style="background: #F6F6F6">
	<div class="container">
		<h1>
			<s:form id="form" action="movieService!getPageListByName"
				method="post">
				<a href="index.jsp"><img src="img/logo.jpg"></a>
				<font size="9">凯哥电影网</font>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
				
						<input name="movie.name" type="text" />
				<button type="submit" class="btn btn-lg btn-info">立即搜索</button>
			</s:form>


		</h1>
	</div>
	<hr>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
			    <center>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#"><font size="6"
								color="black">类型</font></a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=动作'>
								<font size="6" color="#555">动作</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=剧情'>
								<font size="6" color="#555">剧情</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=科幻'>
								<font size="6" color="#555">科幻</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=爱情'>
								<font size="6" color="#555">爱情</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=悬疑'>
								<font size="6" color="#555">悬疑</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=恐怖'>
								<font size="6" color="#555">恐怖</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=喜剧'>
								<font size="6" color="#555">喜剧</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=战争'>
								<font size="6" color="#555">战争</font>
							</s:a></li>
						<li><s:a href='/Movie/movieService!getPageListByType?type=动画'>
								<font size="6" color="#555">动画</font>
							</s:a></li>
						<li><s:a
								href='/Movie/movieService!getPageListByType?type=纪录片'>
								<font size="6" color="#555">纪录片</font>
							</s:a></li>

					</ul>

					<center>

						<div class="col-md-3">
							<table class="table table-bordered"">
								<tr>

									<li style="  background: #D1EEEE" class="list-group-item"><font
										size="5">最新电影推荐</font></li>
								</tr>
								<td><a
									href='/Movie/movieService!findMoviebyDescription?description=2017年美国8.1分剧情片《天才少女》HD高清中英双字'><font
										size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国8.1分剧情片《天才少女》HD高清中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年美国7.7分喜剧片《一条狗的使命》BD中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国7.7分喜剧片《一条狗的使命》BD中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年国产7.1分动作片《决战食神》BD国粤双语中字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年国产7.1分动作片《决战食神》BD国粤双语中字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年国产7.0分喜剧片《乘风破浪》BD高清国语中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年国产7.0分喜剧片《乘风破浪》BD高清国语中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年欧美7.3分动作片《星球大战外传：侠盗一号》BD中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美7.3分动作片《星球大战外传：侠盗一号》BD中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年欧美6.1分动作片《黑夜传说5：血战》BD中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美6.1分动作片《黑夜传说5：血战》BD中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年美国剧情片《墙里的声音》BD中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国剧情片《墙里的声音》BD中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年美国8.1分剧情片《天才少女》HD高清中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国8.1分剧情片《天才少女》HD高清中英双字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年欧美6.6分战争片《沙堡》BD中字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美6.6分战争片《沙堡》BD中字</font></a>
								</tr>
								<tr>
									<td><a
										href='/Movie/movieService!findMoviebyDescription?description=2017年欧美6.2分爱情片《苦涩的收割》BD中英双字'><font
											size="4"><span class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美6.2分爱情片《苦涩的收割》BD中英双字</font></a>
								</tr>

							</table>
						</div>

						<div class="col-md-9">
							<s:iterator value="#session.movie1" id="Movie">
								<h1>
									<font color="black"><s:property
											value="#Movie.description" /></font>
								</h1>
								<br>
								<ul style="float:left; " class="list-group">
									<div style="text-align:left; ">
										<li><p>
												<font size="5">电影名&nbsp&nbsp<s:property
														value="#Movie.name" /></font>
											</p></li> <br>
										<li><p>
												<font size="5">导演&nbsp&nbsp <s:property
														value="#Movie.director" /></font>
											</p></li> <br>
										<li><p>
												<font size="5">类型&nbsp&nbsp <s:property
														value="#Movie.type" /></font>
											</p></li> <br>
										<li><p>
												<font size="5">评分&nbsp&nbsp &nbsp&nbsp <s:property
														value="#Movie.rank" /></font>
											</p></li> <br>
										<li><p>
												<font size="5">国家&nbsp&nbsp <s:property
														value="#Movie.country" /></font>
											</p></li> <br>
										<li><p>
												<font size="5">迅雷下载链接:&nbsp&nbsp </font>
											</p></li>
										<script type="text/javascript">
											function copyUrl2() {
												var Url2 = document
														.getElementById("biao1");
												Url2.select(); // 选择对象
												document.execCommand("Copy"); // 执行浏览器复制命令
												
											}
										</script>
										
										<textarea  style=" font-size:22px; color:#3399ff" class="form-control" cols="100px"  readonly="readonly" id="biao1" ><s:property value="#Movie.download" /></textarea>
									
										<input  type="button" onClick="copyUrl2()" class="btn btn-info" value="点此迅雷下载" />
								</ul>



							</s:iterator>
						</div>
					</center>
			</div>
			<div class="col-md-2"></div>
</body>
</html>