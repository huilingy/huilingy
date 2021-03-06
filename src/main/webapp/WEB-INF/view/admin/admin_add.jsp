﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/assets/css/global.css" />
        <link type="text/css" rel="stylesheet" media="all" href="${pageContext.request.contextPath}/assets/css/global_color.css" /> 
   		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.7.min.js"> 
        <script language="javascript" type="text/javascript">
            //保存成功的提示消息
            function showResult() {
        		location.href="${pageContext.request.contextPath}/controuser/AddAdminAction.do";
                showResultDiv(true);
                window.setTimeout("showResultDiv(false);", 3000);
            }
            function showResultDiv(flag) {
                var divResult = document.getElementById("save_result_info");
                if (flag)
                    divResult.style.display = "block";
                else
                    divResult.style.display = "none";
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
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form action="${pageContext.request.contextPath}/controuser/AddAdminAction.do" method="post" class="main_form">
                    <div class="text_info clearfix" ><span >姓名：</span></div>
                    <div class="input_info">
                        <input type="text"  name="aname" />
                        <span class="required">*</span>
                        <div class="validate_msg_long">20长度以内的汉字、字母、数字的组合</div>
                    </div>
                    <div class="text_info clearfix" ><span>管理员账号：</span></div>
                    <div class="input_info">
                        <input type="text" name="acname" />
                        <span class="required">*</span>
                        <div class="validate_msg_long">30长度以内的字母、数字和下划线的组合</div>
                    </div>
                    <div class="text_info clearfix" ><span>密码：</span></div>
                    <div class="input_info">
                        <input type="password"  name="apwd"/>
                        <span class="required">*</span>
                        <div class="validate_msg_long error_msg">30长度以内的字母、数字和下划线的组合</div>
                    </div>
                    <div class="text_info clearfix"><span>重复密码：</span></div>
                    <div class="input_info">
                        <input type="password"  />
                        <span class="required">*</span>
                        <div class="validate_msg_long error_msg">两次密码必须相同</div>
                    </div>      
					<div class="text_info clearfix" ><span>上传头像</span></div>
                    <div class="input_info">
                        <input type="file" name="userimg" name="by001"/>
                        <span class="required">*</span>
                        <div class="validate_msg_long error_msg">图片大小400*400px</div>
                    </div>  
                    <div class="text_info clearfix" ><span>电话：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" name="atel"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium error_msg">正确的电话号码格式：手机或固话</div>
                    </div>
                    <div class="text_info clearfix" ><span>Email：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" name="aemail"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium error_msg">50长度以内，正确的 email 格式</div>
                    </div>
                    <div class="text_info clearfix"><span>角色：</span></div>
                    <div class="input_info_high">
                        <div class="input_info_scroll">
                            <ul>
                            	<c:forEach items="${adminlr }" var="role">
                            	    <li><input type="checkbox"  name="arole" value="${role.rid }" />${role.rname }</li>    
                                </c:forEach>                
                            </ul>
                        </div>
                        <span class="required">*</span>
                        <div class="validate_msg_tiny error_msg">至少选择一个</div>
                    </div>
                    <div class="button_info clearfix">
                        <input type="submit" value="保存" class="btn_save" />
                        <input type="button" value="取消" class="btn_save" />
                    </div>
                </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
    </body>
</html>
