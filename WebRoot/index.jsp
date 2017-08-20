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
<title>首页</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body style="background: #F6F6F6">
	<div class="container">
		<h1>
			<s:form id="form" action="movieService!getPageListByName"
				method="post">
				<a href="index.jsp"><img src="img/logo.jpg"></a>
				<font size="9">凯哥电影网</font>
			&nbsp&nbsp&nbsp&nbsp&nbsp
				
				<input name="movie.name" type="text" />
				<button type="submit" class="btn btn-lg btn-info">立即搜索</button>
			</s:form>


		</h1>
	</div>
	<br>

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
<br><br>
					<div class="col-md-6">
						<table class="table table-bordered"">
							<tr>
								<td><font size="6" color="3399cc">最热科幻电影推荐</font></td>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国6.6分动作片《攻壳机动队真人版》HD高清韩版中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国6.6分动作片《攻壳机动队真人版》HD高清韩版中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年俄罗斯科幻片《莫斯科陷落》BD中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年俄罗斯科幻片《莫斯科陷落》BD中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国8.2分科幻片《降临》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国8.2分科幻片《降临》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美7.3分动作片《星球大战外传：侠盗一号》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美7.3分动作片《星球大战外传：侠盗一号》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年俄罗斯动作片《守护者：世纪战元》BD中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年俄罗斯动作片《守护者：世纪战元》BD中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国6.8分动作片《生化危机6：终章》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国6.8分动作片《生化危机6：终章》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2013年英国7.3分喜剧科幻片《世界尽头》BD'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2013年英国7.3分喜剧科幻片《世界尽头》BD</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2013年美国7.0分喜剧奇幻片《世界末日》BD中英双字修复版'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2013年美国7.0分喜剧奇幻片《世界末日》BD中英双字修复版</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2012年科幻剧情《机器人大爷》720p.BD中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2012年科幻剧情《机器人大爷》720p.BD中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2012年最新科幻动作《黑衣人3》720p.BD中英双字幕'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2012年最新科幻动作《黑衣人3》720p.BD中英双字幕</font></a>
							</tr>
						</table>
						<br>
						<table class="table table-bordered"">
							<tr>
								<td><font size="6" color="3399cc">2017新片推荐<font></td>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国8.1分剧情片《天才少女》HD高清中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国8.1分剧情片《天才少女》HD高清中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国7.7分喜剧片《一条狗的使命》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国7.7分喜剧片《一条狗的使命》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年国产7.1分动作片《决战食神》BD国粤双语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年国产7.1分动作片《决战食神》BD国粤双语中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年国产7.0分喜剧片《乘风破浪》BD高清国语中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年国产7.0分喜剧片《乘风破浪》BD高清国语中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美7.3分动作片《星球大战外传：侠盗一号》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美7.3分动作片《星球大战外传：侠盗一号》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美6.1分动作片《黑夜传说5：血战》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美6.1分动作片《黑夜传说5：血战》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国剧情片《墙里的声音》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国剧情片《墙里的声音》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国8.1分剧情片《天才少女》HD高清中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国8.1分剧情片《天才少女》HD高清中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美6.6分战争片《沙堡》BD中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美6.6分战争片《沙堡》BD中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美6.2分爱情片《苦涩的收割》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美6.2分爱情片《苦涩的收割》BD中英双字</font></a>
							</tr>
						</table>
					</div>
					
					<div class="col-md-6">
						<table class="table table-bordered"">
							<tr>
								<td><font size="6" color="3399cc">高分电影推荐<font></td>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2014年张震刘诗诗动作武侠片《绣春刀》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2014年张震刘诗诗动作武侠片《绣春刀》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年欧美7.9分剧情片《毕业会考》BD法语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年欧美7.9分剧情片《毕业会考》BD法语中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年日本7.7分剧情片《永远的托词》BD日语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年日本7.7分剧情片《永远的托词》BD日语中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年美国7.9分喜剧片《二十世纪女人》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年美国7.9分喜剧片《二十世纪女人》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年美国9.2分动作片《终极斗士4》BD中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年美国9.2分动作片《终极斗士4》BD中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年欧美8.3分动作片《金刚狼3：殊死一战》HD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年国产7.7分悬疑片《罗曼蒂克消亡史》HD高清国语中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年国产7.7分悬疑片《罗曼蒂克消亡史》HD高清国语中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年美国8.4分爱情片《爱乐之城》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年美国8.4分爱情片《爱乐之城》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国8.1分剧情片《天才少女》HD高清中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国8.1分剧情片《天才少女》HD高清中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国8.2分科幻片《降临》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国8.2分科幻片《降临》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2015年美国8.2分纪录片《马龙，听我说》BD英语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2015年美国8.2分纪录片《马龙，听我说》BD英语中字</font></a>
							</tr>
						</table>
						<br>
					<table class="table table-bordered"">
							<tr>
								<td><font size="6" color="3399cc">精品动画推荐<font></td>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2011年动画喜剧《兔侠传奇》720p.BD中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2011年动画喜剧《兔侠传奇》720p.BD中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2017年美国7.7分动画片《黑暗正义联盟》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2017年美国7.7分动画片《黑暗正义联盟》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年日本动画片《蜡笔小新：梦境世界大突击》BD国粤日语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年日本动画片《蜡笔小新：梦境世界大突击》BD国粤日语中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年欧美7.5分动画片《魔发精灵》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年欧美7.5分动画片《魔发精灵》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年7.9分动画片《航海王之黄金城》BD日语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年7.9分动画片《航海王之黄金城》BD日语中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年美国8.2分动画片《久保与二弦琴》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年美国8.2分动画片《久保与二弦琴》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年美国7.7分动画片《逗鸟外传：萌宝满天飞》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年美国7.7分动画片《逗鸟外传：萌宝满天飞》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年美国7.7分动画片《海底总动员2》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年美国7.7分动画片《海底总动员2》BD中英双字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年日本7.6分动画片《名侦探柯南：纯黑的噩梦》BD日语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年日本7.6分动画片《名侦探柯南：纯黑的噩梦》BD日语中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年日本7.6分动画片《名侦探柯南：纯黑的噩梦》BD日语中字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年日本7.6分动画片《名侦探柯南：纯黑的噩梦》BD日语中字</font></a>
							</tr>
							<tr>
								<td><a href='/Movie/movieService!findMoviebyDescription?description=2016年美国7.4分动画片《香肠派对》BD中英双字'><font size="4"><span
											class="glyphicon glyphicon-play-circle"></span>&nbsp&nbsp&nbsp&nbsp2016年美国7.4分动画片《香肠派对》BD中英双字</font></a>
							</tr>
						</table>
					</div>
				</center>
			  </div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>