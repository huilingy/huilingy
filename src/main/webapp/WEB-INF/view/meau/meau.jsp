<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
		<div id="navi">
            <ul id="menu">
            	<c:forEach items="${admin1.plist }" var="plist1">
                	<li><a href="${plist1.purl }" class="${plist1.pclass }"></a></li>
               	</c:forEach>
            </ul>
        </div>