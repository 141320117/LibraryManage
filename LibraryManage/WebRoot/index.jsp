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
 		 function manage_show(str){
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
				document.getElementById("book_search").style.display="block";
				document.getElementById("book_borrow").style.display="block";
				document.getElementById("book_reback").style.display="block";
				document.getElementById("book_add").style.display="block";
				document.getElementById("book_del").style.display="block";
			}else if(str=="journal_manage"){
				document.getElementById("journal_search").style.display="block";
				document.getElementById("journal_borrow").style.display="block";
				document.getElementById("journal_reback").style.display="block";
				document.getElementById("journal_add").style.display="block";
				document.getElementById("journal_del").style.display="block";
			}else if(str=="reader_manage"){
				document.getElementById("reader_search").style.display="block";
				document.getElementById("reader_add").style.display="block";
				document.getElementById("reader_del").style.display="block";
			}else if(str=="borrow_manage"){
				document.getElementById("borrow_count").style.display="block";
				document.getElementById("borrow_rank").style.display="block";
			}
		}
		function feature_show(str){
			document.getElementById("Book_search").style.display="none";
			document.getElementById("Book_borrow").style.display="none";
			document.getElementById("Book_reback").style.display="none";
			document.getElementById("Book_add").style.display="none";
			document.getElementById("Book_del").style.display="none";
			document.getElementById("Journal_search").style.display="none";
			document.getElementById("Journal_borrow").style.display="none";
			document.getElementById("Journal_reback").style.display="none";
			document.getElementById("Journal_add").style.display="none";
			document.getElementById("Journal_del").style.display="none";
			document.getElementById("Reader_search").style.display="none";
			document.getElementById("Reader_add").style.display="none";
			document.getElementById("Reader_del").style.display="none";
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
      overflow-y:visible;
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
            <span class="glyphicon glyphicon-menu-hamburger" style="font-size:3rem;margin-top:0.8rem"data-toggle="collapse" data-target="#smallmenu"></span>
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
    <a href="#book_manage" class="list-group-item">图书管理</a>
    <a href="#journal_manage" class="list-group-item">期刊管理</a>
    <a href="#reader_manage" class="list-group-item">读者管理</a>
    <a href="#borrow_manage" class="list-group-item">借阅管理</a>
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
            <li>
	            <input type="button" id="book_manage" value="图书管理" onclick="manage_show('book_manage')">
				<input type="button" id="book_search" value="图书查询" style="display:none;" onclick="feature_show('Book_search')">
		    	<input type="button" id="book_borrow" value="图书借阅" style="display:none;" onclick="feature_show('Book_borrow')">
		    	<input type="button" id="book_reback" value="图书归还" style="display:none;" onclick="feature_show('Book_reback')">
		    	<input type="button" id="book_add" value="添加新书" style="display:none;" onclick="feature_show('Book_add')">
		    	<input type="button" id="book_del" value="书籍注销" style="display:none;" onclick="feature_show('Book_del')">
            </li>
            <li>
            	<input type="button" id="journal_manage" value="期刊管理" onclick="manage_show('journal_manage')">
		    	<input type="button" id="journal_search" value="期刊查询" style="display:none;" onclick="feature_show('Journal_search')">
		    	<input type="button" id="journal_borrow" value="期刊借阅" style="display:none;" onclick="feature_show('Journal_borrow')">
		    	<input type="button" id="journal_reback" value="期刊归还" style="display:none;" onclick="feature_show('Journal_reback')">
		    	<input type="button" id="journal_add" value="添加期刊" style="display:none;" onclick="feature_show('Journal_add')">
		    	<input type="button" id="journal_del" value="期刊注销" style="display:none;" onclick="feature_show('Journal_del')">
            </li>
            <li>
	            <input type="button" id="reader_manage" value="读者管理" onclick="manage_show('reader_manage')">
		    	<input type="button" id="reader_search" value="读者查询" style="display:none;" onclick="feature_show('Reader_search')">
		    	<input type="button" id="reader_add" value="添加读者" style="display:none;" onclick="feature_show('Reader_add')">
		    	<input type="button" id="reader_del" value="注销读者" style="display:none;" onclick="feature_show('Reader_del')">
            </li>
            <li>
            	<input type="button" id="borrow_manage" value="借阅管理" onclick="feature_show('borrow_manage')">
            </li>
          </ul></nav>
       </div>
       <div class="col-md-9 scroll" data-spy="scroll" data-target="#menu" role="main">
        <div class="bs-docs-section">
          <h1 id="book_manage" class="page-header"> 图书管理 </h1>
          <p class="lead"> 对图书进行管理等操作 </p>
          <div id="Book_search" style="display:none;">
          	<h2 id="book_search" style="font-weight: 400"> 图书查询 </h2>
            <form class="form-horizontal" action="Book_search" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">书名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_name" placeholder="书名" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2  col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">类别:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <select name="book_kind" class="form-control">
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
          <div id="Book_borrow" style="display:none;">
          	<h2 id="book_borrow" style="font-weight: 400"> 图书借阅 </h2>
            <form class="form-horizontal" action="Book_borrow" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_name" placeholder="图书编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书类别:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="book_name" placeholder="图书类别" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="book_name" placeholder="读者编号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="book_name" placeholder="读者姓名" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">保存</button> </div>
              </div>
            </form>
          </div>
          <div id="Book_reback" style="display:none;">
          	<h2 id="book_reback" style="font-weight: 400"> 图书归还 </h2>
            <form class="form-horizontal" action="Book_return" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_id" placeholder="图书编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">图书书名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="book_name" placeholder="图书书名" style="background-color:transparent; border-width:1;">
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
          <div id="Book_add" style="display:none;">
          	<h2 id="book_add" style="font-weight: 400"> 添加新书 </h2>
            <form class="form-horizontal" action="Book_add" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:35px">书名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="book_name" placeholder="书名" style="background-color:transparent; border-width:1;"> </div>
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
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_data" placeholder="出版日期" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">添加</button> </div>
              </div>
            </form>
          </div>
          <div id="Book_del" style="display:none;">
          	<h2 id="book_del" style="font-weight: 400"> 书籍注销 </h2>
            <form class="form-horizontal" action="Book_add" method="post">
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
            </div>
          </form>
        </div>
        <div class="bs-docs-section">
          <h1 id="journal_manage" class="page-header"> 期刊管理 </h1>
          <div id="Journal_search" style="display:none;">
          	<h2 id="journal_search" style="font-weight: 400"> 期刊查询 </h2>
            <form class="form-horizontal" action="Journal_search" method="post">
              <div class="form-group" style="margin-bottom:5px">
               <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊名称:</p></div>
               <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_subject" placeholder="期刊名称" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
               <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊类别:</p></div>
               <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                 <select name="journal_kind" class="form-control">
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
          <div id="Journal_borrow" style="display:none;">
          	<h2 id="journal_borrow" style="font-weight: 400"> 期刊借阅 </h2>
            <form class="form-horizontal" action="Journal_borrow" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_id" placeholder="期刊编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊刊名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="journal_name" placeholder="期刊刊名" style="background-color:transparent; border-width:1;">
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
          <div id="Journal_reback" style="display:none;">
          	<h2 id="journal_reback" style="font-weight: 400"> 期刊归还 </h2>
            <form class="form-horizontal" action="Journal_return" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_id" placeholder="期刊编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊刊名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="journal_name" placeholder="期刊刊名" style="background-color:transparent; border-width:1;">
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
          <div id="Journal_add" style="display:none;">
          	<h2 id="journal_add" style="font-weight: 400"> 期刊添加 </h2>
            <form class="form-horizontal" action="Journal_add" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊刊名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_name" placeholder="期刊刊名" style="background-color:transparent; border-width:1;"> </div>
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
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊著者:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="writer" placeholder="期刊著者" style="background-color:transparent; border-width:1;"> </div>
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
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="publish_data" placeholder="出版日期" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">添加</button> </div>
              </div>
            </form>
          </div>
          <div id="Journal_del" style="display:none;">
          	<h2 id="journal_del" style="font-weight: 400"> 期刊注销 </h2>
            <form class="form-horizontal" action="Journal_del" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_id" placeholder="期刊编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">期刊刊名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="journal_name" placeholder="期刊刊名" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">删除</button> </div>
              </div>
            </form>
          </div>
        </div>
        <div class="bs-docs-section">
          <h1 id="reader_manage" class="page-header"> 读者管理 </h1>
          <div id="Reader_search" style="display:none;">
          	<h2 id="reader_search" style="font-weight: 400"> 读者查询 </h2>
            <form class="form-horizontal" action="Reader_search" method="post">
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
          <div id="Reader_add" style="display:none;">
          	<h2 id="reader_add" style="font-weight: 400"> 读者添加 </h2>
            <form class="form-horizontal" action="Reader_add" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者姓名:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者性别:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <select name="journal_subject" class="form-control">
                   <option value="science">男</option>
                   <option value="computer">女</option>
                  </select>
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">身份证号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="身份证号" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">电话:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7">
                  <input type="text" class="form-control" name="reader_name" placeholder="电话" style="background-color:transparent; border-width:1;">
                </div>
              </div>
              <div class="form-group">
                  <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">添加</button> </div>
              </div>
            </form>
          </div>
          <div id="Reader_del" style="display:none;">
          	<h2 id="reader_del" style="font-weight: 400"> 读者删除 </h2>
            <form class="form-horizontal" action="Reader_del" method="post">
              <div class="form-group" style="margin-bottom:5px">
                <div class="col-md-2 col-lg-2 col-sm-5 col-xs-5"><p style="font-size: 20px;font-weight: 300;margin-top:3px;margin-left:25px">读者编号:</p></div>
                <div class="col-md-5 col-lg-5 col-sm-7 col-xs-7"> <input type="text" class="form-control" name="reader_id" placeholder="读者编号" style="background-color:transparent; border-width:1;"> </div>
              </div>
              <div class="form-group">
                <div class="col-md-offset-2 col-md-5 col-lg-offset-2 col-lg-5 col-sm-offset-5 col-sm-7 col-xs-offset-5 col-xs-7"> <button type="submit" class="btn" style="width:100%">删除</button> </div>
              </div>
            </form>
          </div>
        </div>
        <div class="bs-docs-section">
        	<div id="Borrow_manage" style="display:none;">
        		<h1 id="borrow_manage" class="page-header"> 借阅管理 </h1>
        		<from action="Borrow_rank" method="post">
					<table>
						<tr>
							<td>搜索：</td>
							<td>
								<select name="kind">
									<option value="book">图书</option>
									<option value="journal">期刊</option>
								</select>
							</td>
							<td>
								<select name="subject">
									<option value="science">科学</option>
									<option value="computer">计算机</option>
									<option value="math">数学</option>
									<option value="english">英语</option>
									<option value="politics">政治</option>
									<option value="finance">金融</option>
								</select>
							</td>
							<td><input type="submit" value="查询"></td>
						</tr>
					</table>
				</from>
        		<table class="table table-hover">
					<tr>
						<th>总借阅人数</th>
						<th>总借阅数量</th>
						<th>日借阅人数</th>
						<th>日借阅数量</th>
					</tr>
				</table>
        	</div>
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
