<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/plugins/easyui/themes/default/easyui.css" />
<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/plugins/easyui/themes/color.css" /> 
<script type="text/javascript" src="${pageContext.request.contextPath }/plugins/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/plugins/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/plugins/easyui/easyloader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
		<table id="tt" class="easyui-datagrid" style="width:700px;height:250px"
            url="admin/get_users.php"
            title="Load Data" iconCls="icon-save"
            rownumbers="true" pagination="true">
        <thead>
            <tr>
                <th field="aid" width="80">学号</th>
                <th field="aname" width="120">性名</th>
                <th field="acname" width="120">账户名</th>
                <th field="atel" width="120">电话</th>
                <th field="listrname" width="120">角色</th>
<!--                <th field="sage" width="80" align="right">年龄</th>          
 -->            </tr>
        </thead>
    </table>
</body>
</html>