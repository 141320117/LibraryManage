<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
  <meta charset="utf-8">
  <!--关于ie浏览器的兼容代码-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1.0">


  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <link href="http://v3.bootcss.com/assets/css/docs.min.css" rel="stylesheet">
  <!-- 可选的Bootstrap主题文件（一般不使用） -->
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
  <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
  <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
  <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="http://v3.bootcss.com/assets/js/docs.min.js"></script>

  <script>
    function manage_show_small(str){
      document.getElementById("book_manage").style.display="none";
      document.getElementById("journal_manage").style.display="none";
      document.getElementById("reader_manage").style.display="none";
      document.getElementById("borrow_manage").style.display="none";
      document.getElementById("book_manage_div").style.display="none";
      document.getElementById("journal_manage_div").style.display="none";
      document.getElementById("reader_manage_div").style.display="none";
      document.getElementById("borrow_manage_div").style.display="none";
			document.getElementById("book_search").style.display="none";
			document.getElementById("book_borrow").style.display="none";
			document.getElementById("book_reback").style.display="none";
			document.getElementById("book_add").style.display="none";
			document.getElementById("book_del").style.display="none";
			document.getElementById("journal_search").style.display="none";
			document.getElementById("journal_borrow").style.display="none";
			document.getElementById("journal_reback").style.display="none";
			document.getElementById("journal_add").style.display="none";
			document.getElementById("journal_del").style.display="none";
			document.getElementById("reader_search").style.display="none";
			document.getElementById("reader_add").style.display="none";
			document.getElementById("reader_del").style.display="none";
			//document.getElementById("borrow_count").style.display="none";
			//document.getElementById("borrow_rank").style.display="none";
			if(str=="book_manage"){
        document.getElementById("book_manage_div").style.display="block";
        document.getElementById("book_manage").style.display="block";
        document.getElementById("book_search").style.display="block";
  			document.getElementById("book_borrow").style.display="block";
  			document.getElementById("book_reback").style.display="block";
  			document.getElementById("book_add").style.display="block";
  			document.getElementById("book_del").style.display="block";
        document.getElementById("menu_small").click();

			}else if(str=="journal_manage"){
        document.getElementById("journal_manage_div").style.display="block";
        document.getElementById("journal_manage").style.display="block";
        document.getElementById("journal_search").style.display="block";
  			document.getElementById("journal_borrow").style.display="block";
  			document.getElementById("journal_reback").style.display="block";
  			document.getElementById("journal_add").style.display="block";
  			document.getElementById("journal_del").style.display="block";
        document.getElementById("menu_small").click();

			}else if(str=="reader_manage"){
        document.getElementById("reader_manage_div").style.display="block";
        document.getElementById("reader_manage").style.display="block";
        document.getElementById("reader_search").style.display="block";
  			document.getElementById("reader_add").style.display="block";
  			document.getElementById("reader_del").style.display="block";
        document.getElementById("menu_small").click();

			}else if(str=="borrow_manage"){
        document.getElementById("borrow_manage_div").style.display="block";
        document.getElementById("borrow_manage").style.display="block";
        document.getElementById("menu_small").click();

			}
    }
 		 function manage_show(str){
      document.getElementById("book_manage").style.display="none";
      document.getElementById("journal_manage").style.display="none";
      document.getElementById("reader_manage").style.display="none";
      document.getElementById("borrow_manage").style.display="none";
      document.getElementById("book_manage_div").style.display="none";
      document.getElementById("journal_manage_div").style.display="none";
      document.getElementById("reader_manage_div").style.display="none";
      document.getElementById("borrow_manage_div").style.display="none";
      document.getElementById("book_manage_menu").className="none";
      document.getElementById("journal_manage_menu").className="none";
      document.getElementById("reader_manage_menu").className="none";
      document.getElementById("borrow_manage_menu").className="none";
			document.getElementById("book_search").style.display="none";
			document.getElementById("book_borrow").style.display="none";
			document.getElementById("book_reback").style.display="none";
			document.getElementById("book_add").style.display="none";
			document.getElementById("book_del").style.display="none";
			document.getElementById("journal_search").style.display="none";
			document.getElementById("journal_borrow").style.display="none";
			document.getElementById("journal_reback").style.display="none";
			document.getElementById("journal_add").style.display="none";
			document.getElementById("journal_del").style.display="none";
			document.getElementById("reader_search").style.display="none";
			document.getElementById("reader_add").style.display="none";
			document.getElementById("reader_del").style.display="none";
			//document.getElementById("borrow_count").style.display="none";
			//document.getElementById("borrow_rank").style.display="none";
			if(str=="book_manage"){
        document.getElementById("book_manage_div").style.display="block";
        document.getElementById("book_manage").style.display="block";
        document.getElementById("book_manage_menu").className="active";

			}else if(str=="journal_manage"){
        document.getElementById("journal_manage_div").style.display="block";
        document.getElementById("journal_manage").style.display="block";
        document.getElementById("journal_manage_menu").className="active";

			}else if(str=="reader_manage"){
        document.getElementById("reader_manage_div").style.display="block";
        document.getElementById("reader_manage").style.display="block";
        document.getElementById("reader_manage_menu").className="active";

			}else if(str=="borrow_manage"){
        document.getElementById("borrow_manage_div").style.display="block";
        document.getElementById("borrow_manage").style.display="block";
        document.getElementById("borrow_manage_menu").className="active";

			}
		}
		function feature_show(str){
			document.getElementById("book_search").style.display="none";
			document.getElementById("book_borrow").style.display="none";
			document.getElementById("book_reback").style.display="none";
			document.getElementById("book_add").style.display="none";
			document.getElementById("book_del").style.display="none";
			document.getElementById("journal_search").style.display="none";
			document.getElementById("journal_borrow").style.display="none";
			document.getElementById("journal_reback").style.display="none";
			document.getElementById("journal_add").style.display="none";
			document.getElementById("journal_del").style.display="none";
			document.getElementById("reader_search").style.display="none";
			document.getElementById("reader_add").style.display="none";
			document.getElementById("reader_del").style.display="none";
			//document.getElementById("Borrow_count").style.display="none";
			//document.getElementById("Borrow_rank").style.display="none";
			document.getElementById(str).style.display="block";
		}
  </script>
  <style>
    .scroll/*用来滚动监视的样式*/
    {
      position:relative;
      height:100%;

    }
    .backtotop/*移动端用来返回顶部的浮动按钮样式div*/
    {
      position:fixed;
      bottom:5rem;
      right:1.1rem;
    }
  </style>
</head>

<body style="overflow-x:hidden">
  <div class="">
   <header class="navbar navbar-static-top bs-docs-nav" id="top" style="margin-top:10px;margin-bottom:10px">
    <div class="container">
        <div class="row">
          <div class="col-md-3 col-lg-3 col-sm-6 col-xs-7">
            <div class="navbar-header"> <a class="navbar-brand" style="font-size:3rem;color:black">系统管理</a> </div>
          </div>
          <div class="col-sm-2 col-xs-1 hidden-lg hidden-md">
            <span id="menu_small" class="glyphicon glyphicon-menu-hamburger" style="font-size:3rem;margin-top:0.8rem"data-toggle="collapse" data-target="#smallmenu"></span>
          </div>
          <div class="col-md-3 col-md-offset-6 col-lg-3 col-lg-offset-6 col-sm-2 col-sm-offset-2 col-xs-2 col-xs-offset-1">
            <button type="button" class="btn btn-default navbar-btn navbar-right">
                登出
            </button>
          </div>
        </div>
    </div>
   </header>
  </div>
  <div class="hidden-lg hidden-md collapse" id="smallmenu">
    <a href="javascript:;" onclick="manage_show_small('book_manage');" class="list-group-item">图书管理</a>
    <a href="javascript:;" onclick="manage_show_small('journal_manage');" class="list-group-item">期刊管理</a>
    <a href="javascript:;" onclick="manage_show_small('reader_manage');" class="list-group-item">读者管理</a>
    <a href="javascript:;" onclick="manage_show_small('borrow_manage');" class="list-group-item">借阅管理</a>
  </div>
  <div class="">
    <div class="bs-docs-header">
      <div class="container">
        <div class="row">
          <div class="col-md-4 col-lg-4 col-xs-4 col-sm-4">
            <div class="row">
              <div class="col-md-6 col-md-offset-2">
                <h2>今日借阅量:</h2>
              </div>
            </div>

          </div>
          <div class="col-md-4 col-lg-4 col-xs-4 col-sm-4">
            <div class="row">
              <div class="col-md-6 col-md-offset-2">
                <h2>图书总量:</h2>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-lg-4 col-xs-4 col-sm-4">
            <div class="row">
              <div class="col-md-6 col-md-offset-2">
                <h2>今日借阅率:</h2>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 col-md-offset-2">
                <h1>30%</h1>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="">
    <div class="container bs-docs-container">
      <div class="row">
       <div id="menu" class="col-md-3" role="complementary">
        <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm">
          <ul class="nav bs-docs-sidenav">
            <li id="book_manage_menu" class=""> <a href="javascript:;" onclick="manage_show('book_manage');" style="font-size:20px" class="">图书管理</a>
              <ul class="nav">
                <li><a  style="font-size:15px" href="javascript:;" onclick="feature_show('book_search');">图书查询</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('book_borrow');">图书借阅</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('book_return');">图书归还</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('book_add');">添加新书</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('book_del');">书籍注销</a></li>
              </ul>
            </li>
            <li id="journal_manage_menu" class=""> <a href="javascript:;" onclick="manage_show('journal_manage');" style="font-size:20px">期刊管理</a>
              <ul class="nav">
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('journal_search');">期刊查询</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('journal_borrow');">期刊借阅</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('journal_return');">期刊归还</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('journal_add');">添加期刊</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('journal_del');">期刊注销</a></li>
              </ul>
            </li>
            <li id="reader_manage_menu" class=""> <a href="javascript:;" onclick="manage_show('reader_manage');" style="font-size:20px">读者管理</a>
              <ul class="nav">
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('reader_search');">读者查询</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('reader_add');">读者添加</a></li>
                <li><a style="font-size:15px" href="javascript:;" onclick="feature_show('reader_del');">读者删除</a></li>
              </ul>
            </li>
            <li id="borrow_manage_menu" class=""> <a href="javascript:;" onclick="manage_show('borrow_manage');" style="font-size:20px">借阅管理</a>
              <ul class="nav">

              </ul>
            </li>
          </ul>
         </nav>
       </div>
       <div class="col-md-9" role="main">
        <div class="bs-docs-section" id="book_manage_div" style="display:none;">
          <h1 id="book_manage" class="page-header" style="display:none;"> 图书管理 </h1>
          <div id="book_search" style="display:none;">
            <h2 style="font-weight: 400"> 图书查询 </h2>
            <form class="form-horizontal" action="Book_search">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">书名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_name" placeholder="书名" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2  col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">类别:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <select name="book_subject" class="form-control">
								   <option value="science">科学</option>
								   <option value="computer">计算机</option>
								   <option value="math">数学</option>
								   <option value="english">英语</option>
								   <option value="politics">政治</option>
								   <option value="finance">金融</option>
							    </select>
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">查询</button> </div>
              </div>
            </form>
          </div>

          <div id="book_borrow" style="display:none;">
            <h2 style="font-weight: 400"> 图书借阅 </h2>
            <form class="form-horizontal" action="Book_borrow">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_id" placeholder="图书编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="book_name" placeholder="图书名称" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">保存</button> </div>
              </div>
            </form>
          </div>

          <div id="book_reback" style="display:none;">
            <h2 style="font-weight: 400"> 图书归还 </h2>
            <form class="form-horizontal" action="Book_reback">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" cbacklass="form-control" name="book_id" placeholder="图书编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="book_name" placeholder="图书名称" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%" value="归还">归还</button> </div>
              </div>
            </form>
          </div>

          <div id="book_add" style="display:none;">
            <h2 style="font-weight: 400"> 添加新书 </h2>
            <form class="form-horizontal" action="Book_add">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">图书名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_name" placeholder="图书名称" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">类别:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <select name="book_subject" class="form-control">
                   <option value="science">科学</option>
                   <option value="computer">计算机</option>
                   <option value="math">数学</option>
                   <option value="english">英语</option>
                   <option value="politics">政治</option>
                   <option value="finance">金融</option>
                  </select>
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">著者:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="writer" placeholder="著者" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">出版单位:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_unit" placeholder="出版单位" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">出版地:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_place" placeholder="出版地" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">出版日期:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_date" placeholder="出版日期" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">添加</button> </div>
              </div>
            </form>
          </div>

          <div id="book_del" style="display:none;">
            <h2 style="font-weight: 400"> 书籍注销 </h2>
            <form class="form-horizontal" action="Book_del">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_id" placeholder="图书编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_name" placeholder="图书名称" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">删除</button> </div>
              </div>

            </form>
          </div>
        </div>
        <div class="bs-docs-section" id="journal_manage_div" style="display:none;">
          <h1 id="journal_manage" class="page-header" style="display:none;"> 期刊管理 </h1>

          <div id="journal_search" style="display:none;">
            <h2 style="font-weight: 400"> 期刊查询 </h2>
            <form class="form-horizontal" action="Journal_search">
              <div class="form-group" style="margin-bottom:5px">
               <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊名称:</p></div>
               <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_name" placeholder="期刊名称" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
               <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊类别:</p></div>
               <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                 <select name="journal_subject" class="form-control">
                  <option value="science">科学</option>
                  <option value="computer">计算机</option>
                  <option value="math">数学</option>
                  <option value="english">英语</option>
                  <option value="politics">政治</option>
                  <option value="finance">金融</option>
                </select>
              </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%" value="查询">查询</button> </div>
              </div>

            </form>
          </div>

          <div id="journal_borrow" style="display:none;">
            <h2 style="font-weight: 400"> 期刊借阅 </h2>
            <form class="form-horizontal" action="Journal_borrow">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_id" placeholder="期刊编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="journal_name" placeholder="期刊名称" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%" value="保存">保存</button> </div>
              </div>
            </form>
          </div>

          <div id="journal_reback" style="display:none;">
            <h2 style="font-weight: 400"> 期刊归还 </h2>
            <form class="form-horizontal" action="Journal_reback">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_id" placeholder="期刊编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="journal_name" placeholder="期刊名称" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%" value="归还">归还</button> </div>
              </div>
            </form>
          </div>

          <div id="journal_add" style="display:none;">
            <h2 style="font-weight: 400"> 期刊添加 </h2>
            <form class="form-horizontal" action="Journal_add">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_name" placeholder="期刊名称" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊类别:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <select name="journal_subject" class="form-control">
                   <option value="science">科学</option>
                   <option value="computer">计算机</option>
                   <option value="math">数学</option>
                   <option value="english">英语</option>
                   <option value="politics">政治</option>
                   <option value="finance">金融</option>
                  </select>
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">著者:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="writer" placeholder="著者" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">出版单位:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_unit" placeholder="出版单位" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">出版地:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_place" placeholder="出版地" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">出版日期:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_date" placeholder="出版日期" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">添加</button> </div>
              </div>
            </form>
          </div>

          <div id="journal_del" style="display:none;">
            <h2 style="font-weight: 400"> 期刊注销 </h2>
            <form class="form-horizontal" action="Journal_del">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_id" placeholder="期刊编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊名称:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_name" placeholder="期刊名称" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">删除</button> </div>
              </div>
            </form>
          </div>
        </div>
        <div class="bs-docs-section" id="reader_manage_div" style="display:none;">
          <h1 id="reader_manage" class="page-header" style="display:none;"> 读者管理 </h1>

          <div id="reader_search" style="display:none;">
            <h2 style="font-weight: 400"> 读者查询 </h2>
            <form class="form-horizontal" action="Reader_search">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">查询</button> </div>
              </div>
            </form>
          </div>

          <div id="reader_add" style="display:none;">
            <h2 style="font-weight: 400"> 读者添加 </h2>
            <form class="form-horizontal" action="Reader_add">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者性别:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <select name="sex" class="form-control">
                   <option value="science">男</option>
                   <option value="computer">女</option>
                  </select>
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">身份证号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="id_card" placeholder="身份证号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">电话:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="phone" placeholder="电话" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">添加</button> </div>
              </div>
            </form>
          </div>

          <div id="reader_del" style="display:none;">
            <h2 style="font-weight: 400"> 读者删除 </h2>
            <form class="form-horizontal" action="Reader_del">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">删除</button> </div>
              </div>
            </form>
          </div>
        </div>
        <div class="bs-docs-section" id="borrow_manage_div" style="display:none;">
          <h1 id="borrow_manage" class="page-header" style="display:none;"> 借阅管理 </h1>
        </div>
       </div>
      </div>
    </div>
  </div>
  <div class="backtotop hidden-lg hidden-md" style="width:4rem;height:4rem">
    <a href="#top"><div style="color:black"><span class="glyphicon glyphicon-chevron-up" style="font-size:3rem;margin-left:0.8rem"></span></div></a>
  </div>
</body>

</html>
