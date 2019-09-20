<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/assets/css/global.css" />
<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/assets/css/global_color.css" /> 
<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/plugins/easyui/themes/default/easyui.css" />
<link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/plugins/easyui/themes/color.css" /> 
<script type="text/javascript" src="${pageContext.request.contextPath }/plugins/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/plugins/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/plugins/easyui/easyloader.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery.min.js"></script>
 <script type="text/javascript">
 </script>
 </head>
	<table id="tt" class="easyui-datagrid" style="width:700px;height:250px"
            url="admin/get_users.php"
            title="Load Data" iconCls="icon-save"
            rownumbers="true" pagination="true">
        <thead>
            <tr>
                <th field="sid" width="80">学号</th>
                <th field="sname" width="120">性名</th>
                <th field="sage" width="80" align="right">年龄</th>          
            </tr>
        </thead>
    </table>
</html>
