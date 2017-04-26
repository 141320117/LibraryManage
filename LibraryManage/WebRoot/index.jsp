<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
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
			document.getElementById("borrow_count").style.display="none";
			document.getElementById("borrow_rank").style.display="none";
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
			document.getElementById("Borrow_count").style.display="none";
			document.getElementById("Borrow_rank").style.display="none";
			document.getElementById(str).style.display="block";
		}
	</script>
    <div>
    	<div>
    		<input type="button" id="book_manage" value="图书管理" onclick="manage_show('book_manage')">
	    	<input type="button" id="book_search" value="图书查询" style="display:none;" onclick="feature_show('Book_search')">
	    	<input type="button" id="book_borrow" value="图书借阅" style="display:none;" onclick="feature_show('Book_borrow')">
	    	<input type="button" id="book_reback" value="图书归还" style="display:none;" onclick="feature_show('Book_reback')">
	    	<input type="button" id="book_add" value="添加新书" style="display:none;" onclick="feature_show('Book_add')">
	    	<input type="button" id="book_del" value="书籍注销" style="display:none;" onclick="feature_show('Book_del')">
    	</div>
	    <div>
	    	<input type="button" id="journal_manage" value="期刊管理" onclick="manage_show('journal_manage')">
	    	<input type="button" id="journal_search" value="期刊查询" style="display:none;" onclick="feature_show('Journal_search')">
	    	<input type="button" id="journal_borrow" value="期刊借阅" style="display:none;" onclick="feature_show('Journal_borrow')">
	    	<input type="button" id="journal_reback" value="期刊归还" style="display:none;" onclick="feature_show('Journal_reback')">
	    	<input type="button" id="journal_add" value="添加期刊" style="display:none;" onclick="feature_show('Journal_add')">
	    	<input type="button" id="journal_del" value="期刊注销" style="display:none;" onclick="feature_show('Journal_del')">
	    </div>
		<div>
			<input type="button" id="reader_manage" value="读者管理" onclick="manage_show('reader_manage')">
	    	<input type="button" id="reader_search" value="读者查询" style="display:none;" onclick="feature_show('Reader_search')">
	    	<input type="button" id="reader_add" value="添加读者" style="display:none;" onclick="feature_show('Reader_add')">
	    	<input type="button" id="reader_del" value="注销读者" style="display:none;" onclick="feature_show('Reader_del')">
		</div>
		<div>
			<input type="button" id="borrow_manage" value="借阅管理" onclick="manage_show('borrow_manage')">
			<input type="button" id="borrow_count" value="借阅统计" style="display:none;" onclick="feature_show('Borrow_count')">
			<input type="button" id="borrow_rank" value="借阅排行" style="display:none;" onclick="feature_show('Borrow_rank')">
		</div>
		<div id="Book_search" style="display:none;">
			<form action="Book_search">
				<table>
					<tr>
						<td>书名：</td>
						<td><input type="text" name="book_name"></td>
					</tr>
					<tr>
						<td>类别：</td>
						<td>
							<select name="book_subject">
								<option value="science">科学</option>
								<option value="computer">计算机</option>
								<option value="math">数学</option>
								<option value="english">英语</option>
								<option value="politics">政治</option>
								<option value="finance">金融</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="submit" value="查询"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Book_borrow" style="display:none;">
			<form action="Book_borrow">
				<table>
					<tr>
						<td>图书编号：</td>
						<td><input type="text" name="book_id"></td>
					</tr>
					<tr>
						<td>书名：</td>
						<td><input type="text" name="book_name"></td>
					</tr>
					<tr>
						<td>读者编号：</td>
						<td><input type="text" name="reader_id"></td>
					</tr>
					<tr>
						<td>读者姓名：</td>
						<td><input type="text" name="reader_name"></td>
					</tr>
					<tr>
						<td><input type="submit" value="保存"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Book_reback" style="display:none;">
			<form action="Book_reback">
				<table>
					<tr>
						<td>图书编号：</td>
						<td><input type="text" name="book_id"></td>
					</tr>
					<tr>
						<td>书名：</td>
						<td><input type="text" name="book_name"></td>
					</tr>
					<tr>
						<td>读者编号：</td>
						<td><input type="text" name="reader_id"></td>
					</tr>
					<tr>
						<td>读者姓名：</td>
						<td><input type="text" name="reader_name"></td>
					</tr>
					<tr>
						<td><input type="submit" value="归还"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Book_add" style="display:none;">
			<form action="Book_add">
				<table>
					<tr>
						<td>书名：</td>
						<td><input type="text" name="book_name"></td>
					</tr>
					<tr>
						<td>类别：</td>
						<td>
							<select name="book_subject">
								<option value="science">科学</option>
								<option value="computer">计算机</option>
								<option value="math">数学</option>
								<option value="english">英语</option>
								<option value="politics">政治</option>
								<option value="finance">金融</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>著者：</td>
						<td><input type="text" name="writer"></td>
					</tr>
					<tr>
						<td>出版单位：</td>
						<td><input type="text" name="publish_unit"></td>
					</tr>
					<tr>
						<td>出版地：</td>
						<td><input type="text" name="publish_place"></td>
					</tr>
					<tr>
						<td>出版日期：</td>
						<td><input type="text" name="publish_date"></td>
					</tr>
					<tr>
						<td><input type="submit" value="添加"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Book_del" style="display:none;">
			<form action="Book_del">
				<table>
					<tr>
						<td>图书编号：</td>
						<td><input type="text" name="book_id"></td>
					</tr>
					<tr>
						<td>书名：</td>
						<td><input type="text" name="book_name"></td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="删除">
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Journal_search" style="display:none;">
			<form action="Journal_search">
				<table>
					<tr>
						<td>刊名：</td>
						<td><input type="text" name="journal_subject"></td>
					</tr>
					<tr>
						<td>类别：</td>
						<td>
							<select name="journal_kind">
								<option value="science">科学</option>
								<option value="computer">计算机</option>
								<option value="math">数学</option>
								<option value="english">英语</option>
								<option value="politics">政治</option>
								<option value="finance">金融</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><input type="submit" value="查询"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Journal_borrow" style="display:none;">
			<form action="Journal_borrow">
				<table>
					<tr>
						<td>期刊编号：</td>
						<td><input type="text" name="journal_id"></td>
					</tr>
					<tr>
						<td>刊名：</td>
						<td><input type="text" name="journal_name"></td>
					</tr>
					<tr>
						<td>读者编号：</td>
						<td><input type="text" name="reader_id"></td>
					</tr>
					<tr>
						<td>读者姓名：</td>
						<td><input type="text" name="reader_name"></td>
					</tr>
					<tr>
						<td><input type="submit" value="保存"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Journal_reback" style="display:none;">
			<form action="Journal_reback">
				<table>
					<tr>
						<td>期刊编号：</td>
						<td><input type="text" name="journal_id"></td>
					</tr>
					<tr>
						<td>刊名：</td>
						<td><input type="text" name="journal_name"></td>
					</tr>
					<tr>
						<td>读者编号：</td>
						<td><input type="text" name="reader_id"></td>
					</tr>
					<tr>
						<td>读者姓名：</td>
						<td><input type="text" name="reader_name"></td>
					</tr>
					<tr>
						<td><input type="submit" value="归还"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Journal_add" style="display:none;">
			<form action="Journal_add">
				<table>
					<tr>
						<td>刊名：</td>
						<td><input type="text" name="journal_name"></td>
					</tr>
					<tr>
						<td>类别：</td>
						<td>
							<select name="journal_subject">
								<option value="science">科学</option>
								<option value="computer">计算机</option>
								<option value="math">数学</option>
								<option value="english">英语</option>
								<option value="politics">政治</option>
								<option value="finance">金融</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>著者：</td>
						<td><input type="text" name="writer"></td>
					</tr>
					<tr>
						<td>出版单位：</td>
						<td><input type="text" name="publish_unit"></td>
					</tr>
					<tr>
						<td>出版地：</td>
						<td><input type="text" name="publish_place"></td>
					</tr>
					<tr>
						<td>出版日期：</td>
						<td><input type="text" name="publish_date"></td>
					</tr>
					<tr>
						<td><input type="submit" value="添加"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Journal_del" style="display:none;">
			<form action="Journal_del">
				<table>
					<tr>
						<td>期刊编号：</td>
						<td><input type="text" name="journal_id"></td>
					</tr>
					<tr>
						<td>刊名：</td>
						<td><input type="text" name="journal_name"></td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="删除">
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Reader_search" style="display:none;">
			<form action="Reader_search">
				<table>
					<tr>
						<td>读者编号：</td>
						<td><input type="text" name="reader_id"></td>
					</tr>
					<tr>
						<td>姓名：</td>
						<td><input type="text" name="reader_name"></td>
					</tr>
					<tr>
						<td><input type="submit" value="查询"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Reader_add" style="display:none;">
			<form action="Reader_add">
				<table>
					<tr>
						<td>姓名：</td>
						<td><input type="text" name="reader_name"></td>
					</tr>
					<tr>
						<td>性别：</td>
						<td>
							<select name="sex">
								<option value="M">男</option>
								<option value="F">女</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>身份证号：</td>
						<td><input type="text" name="id_card"></td>
					</tr>
					<tr>
						<td>电话：</td>
						<td><input type="text" name="phone"></td>
					</tr>
					<tr>
						<td><input type="submit" value="添加"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Reader_del" style="display:none;">
			<form action="Reader_del">
				<table>
					<tr>
						<td>读者编号：</td>
						<td><input type="text" name="reader_id"></td>
					</tr>
					<tr>
						<td><input type="submit" value="查询"></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Borrow_count" style="display:none;">
			<form>
				<table>
					<tr>
						<td>总借阅人数：</td>
						<td></td>
					</tr>
					<tr>
						<td>总借阅数量：</td>
						<td></td>
					</tr>
					<tr>
						<td>日借阅人数：</td>
						<td></td>
					</tr>
					<tr>
						<td>日借阅数量：</td>
						<td></td>
					</tr>
				</table>
			</form>
		</div>
		<div id="Borrow_rank" style="display:none;">
			<from action="Borrow_rank">
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
				<table>
					<tr>
						<th>名次</th>
						<th>书籍编号</th>
						<th>书籍名称</th>
						<th>书籍类别</th>
						<th>借阅次数</th>
					</tr>
				</table>
			</from>
		</div>
    </div>
  </body>
</html>
