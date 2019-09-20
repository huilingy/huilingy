<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/assets/css/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/assets/css/global_color.css" /> 
   		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.7.min.js"></script>
<script language="javascript" type="text/javascript">
	//显示角色详细信息
	function showDetail(flag, a) {
		var detailDiv = a.parentNode.getElementsByTagName("div")[0];
		if (flag) {
			detailDiv.style.display = "block";
		} else
			detailDiv.style.display = "none";
	}
	//重置密码
	function resetPwd() {
	//var a = document.getElementByName("check");
	//	if(a.length>0){
				document.getElementById("form").submit();
	      /// location.href="${pageContext.request.contextPath}/controuser/reultApwdAction.do?strid="+str;
		//}else{
			//alert("请至少选择一条数据！");
	//	}
		//document.getElementById("operate_result_info").style.display = "block";
	}
	//删除
	function deleteAdmin(str) {
		var r = window.confirm("确定要删除此管理员吗？");
		if(r){
	        location.href="${pageContext.request.contextPath}/controuser/reultApwdAction.do";
		}
	}
	//全选
	function selectAdmins(inputObj) {
		var inputArray = document.getElementById("datalist")
				.getElementsByTagName("input");
		for (var i = 1; i < inputArray.length; i++) {
			if (inputArray[i].type == "checkbox") {
				inputArray[i].checked = inputObj.checked;
			}
		}
	}
	
	function send(){
		var str =$('#selectid option:selected').val();//获得选中的值;
		//var str = select.val()
        location.href="${pageContext.request.contextPath}/controuser/LookAdminAction.do?strid="+str;
	}
	function addlook(){
		location.href="${pageContext.request.contextPath}/controuser/LookAllRoleAction.do";
	}
	function modi(str){
		//var str = select.val()
        location.href="${pageContext.request.contextPath}/controuser/UpdateAdminAction.do?strid="+str;
	}
	
</script>
</head>
<body>
	<!--Logo区域开始-->
	<%@include file="../meau/exit.jsp"%>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<%@include file="../meau/meau.jsp"%>
	<!--导航区域结束-->
	<!--主要区域开始-->
	<div id="main">
		<form action="${pageContext.request.contextPath}/controuser/reultApwdAction.do?" method="post" name="form">
			<!--查询-->
			<div class="search_add">
				<div>
					模块： <select id="selectid" class="select_search" onclick="send()">
						<c:forEach items="${pl}" var="priv">
							<option  value="${priv.pid}" >${priv.pname }
							</option>							
						</c:forEach>						
					</select>
				</div>
				<div>
					角色：<input type="text" value="" class="text_search width200" />
				</div>
				<div>
					<input type="button" value="搜索" class="btn_search" onclick="send(${op})"/>
				</div>
				<input type="submit" value="密码重置" class="btn_add" />
					 <input type="button" value="增加"
					class="btn_add" onclick="addlook()" />
			</div>
			<!--删除和密码重置的操作提示-->
			<div id="operate_result_info" class="operate_fail">
				<img src="../images/close.png"
					onclick="this.parentNode.style.display='none';" /> <span>删除失败！数据并发错误。</span>
				<!--密码重置失败！数据并发错误。-->
			</div>
			<!--数据区域：用表格展示数据-->
			<div id="data">
				<table id="datalist">
					<tr>
						<th class="th_select_all"><input type="checkbox"
							onclick="selectAdmins(this);" /> <span>全选</span></th>
						<th>管理员ID</th>
						<th>姓名</th>
						<th>登录名</th>
						<th>电话</th>
						<th>电子邮件</th>
						<th>授权日期</th>
						<th class="width100">拥有角色</th>
						<th></th>
					</tr>
					<c:forEach items="${listst}" var="admin">
						<tr>
							<td><input type="checkbox" name="check" value="${admin.aid }"/></td>
							<td>${admin.aid}</td>
							<td>${admin.aname}</td>
							<td>${admin.acname}</td>
							<td>${admin.atel}</td>
							<td>${admin.aemail}</td>
							<td>${admin.createtime}</td>
							
							<td>
							<c:forEach items="${admin.rlist}" var="r">
								<a class="summary" onmouseover="showDetail(true,this);"
								onmouseout="showDetail(false,this);">${r.rname}</a> 
							</c:forEach>
								<!--浮动的详细信息-->
								<div class="detail_info">
									</div></td>
							
							<td class="td_modi"><input type="button" value="修改"
								class="btn_modify" onclick="modi(${admin.aid})" />
								<input type="button" value="删除" class=""
								onclick="deleteAdmin(${admin.aid});" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!--分页-->
			<div id="pages">
				<a href="#">上一页</a> <a href="#" class="current_page">1</a> <a
					href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
				<a href="#">下一页</a>
			</div>
		</form>
	</div>
	<!--主要区域结束-->
	<div id="footer"></div>
</body>
</html>
