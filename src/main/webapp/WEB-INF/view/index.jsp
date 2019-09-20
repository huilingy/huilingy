<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/assets/css/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath }/assets/css/global_color.css" /> 
        <script type="text/javascript">
   			function sumit(){
   				document.getElementById("loginForm").submit();
   			}
   		</script>
    </head>
    <body class="index">
     <!--Logo区域开始-->
                <%@include file="meau/exit.jsp" %>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <div id="index_navi">
            <ul id="menu">
            
            	<c:forEach items="${admin1.plist }" var="plist1">
                	<li><a href="${plist1.purl }" class="${plist1.pclass }"></a></li>
               	</c:forEach>
            </ul>
        </div>
    </body>
</html>
