<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
  <script>
    window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')
  </script>
  <script src="js/ios-parallax.js"></script>
  <style>
    #top-image {
      background: linear-gradient( rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), url("images/shu.jpg") no-repeat fixed;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 0;
      height: 100%;
    }
  </style>
  <script type="text/javascript">
    $(document).ready(function() {
	      $('#top-image').iosParallax({
	        movementFactor: 50
	      });
	    });
  </script>
</head>

<body>
  <div id="top-image">
    <div id="content" class="container center-block">
      <div class="row">
        <div class="col-md-12">
          <div class="container">
            <p style="margin-top:40px;font-size:40px;color:#D5D6E2">悦读图书管理</p>
          </div>
          <!-- /.container -->
        </div>
      </div>
      <form action="login" method="post">
	      <div class="row">
	        <div class="col-md-7"> </div>
	        <div class="col-md-4">
	          <div class="row">
	            <div class="col-md-10 col-md-offset-2" style="text-align:center">
	              <h3 style="color:#D5D6E2"> 登入系统 </h3>
	            </div>
	          </div>
	          <div class="row">
	            <div class="container-fluid">
	              <form class="form-horizontal">
	                <div class="form-group" style="margin-bottom:5px">
	                  <div class="col-md-2"> <span class="glyphicon glyphicon-user" style="margin-top:5px;margin-left:10px;font-size:25"></span> </div>
	                  <div class="col-md-10"> <input type="text" class="form-control" name="username" placeholder="账号" style="background-color:transparent; border-width:1;"> </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-5 col-md-offset-2">
	                    <p id="账号提示信息"></p>
	                  </div>
	                </div>
	                <div class="form-group" style="margin-bottom:5px">
	                  <div class="col-md-2"> <span class="glyphicon glyphicon-lock" style="margin-top:5px;margin-left:10px;font-size:25"></span> </div>
	                  <div class="col-sm-10"> <input type="password" class="form-control" name="password" placeholder="密码" style="background-color:transparent; border-width:1;"> </div>
	                </div>
	                <div class="row">
	                  <div class="col-md-5 col-md-offset-2">
	                    <p id="密码提示信息"></p>
	                  </div>
	                </div>
	                <div class="form-group">
	                  <div class="col-md-3 col-md-offset-2" style="padding-top:7px">
	                    <p style="margin:auto">验证码:</p>
	                  </div>
	                  <div class="col-md-3" style="padding-left:0"> <input type="text" class="form-control" name="ver_code" placeholder="验证码" style="background-color:transparent; border-width:1;"> </div>
	                  <div class="col-md-3" style="padding-top:7px"> <img src="verification_code.jsp"> </div>
	                </div>
	                <div class="form-group">
	                  <div class="col-md-offset-2 col-md-10"> <input type="submit" class="btn" style="width:100%" value="登入"> </div>
	                </div>
	              </form>
	            </div>
	          </div>
	        </div>
	      </div>
      </form>
    </div>
  </div>
</body>

</html>