<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <%@include file="../meau/header.jsp" %>
   		<script  type="text/javascript">
   		function sumit(){
				document.getElementById("upwdform").submit();
			}
   		</script>    
  	</head>
    <body>
        <!--Logo区域开始-->
        <%@include file="../meau/exit.jsp" %>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <%@include  file="../meau/meau.jsp" %>
        <div>
        	${plist.pclass }
        </div>
        <!--导航区域结束-->
        <div id="main">      
            <!--保存操作后的提示信息：成功或者失败-->      
            <div id="save_result_info" class="save_success" >${msg }</div><!--保存失败，旧密码错误！-->
            <form action="../../login/UpdateAdminAciton.do" method="get" class="main_form" name="upwdform">
                <div class="text_info clearfix"><span>旧密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200" name="oldpwd" /><span class="required"></span>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="text_info clearfix"><span>新密码：</span></div>
                <div class="input_info">
                    <input type="password"  class="width200" name="newpwd"/><span class="required"></span>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="text_info clearfix"><span>重复新密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200"  /><span class="required"></span>
                    <div class="validate_msg_medium"></div>
                </div>
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save"  />
                    <input type="button" value="取消" class="btn_save" />
                </div>
                <div>${msg }</div>
            </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
    </body>
</html>
