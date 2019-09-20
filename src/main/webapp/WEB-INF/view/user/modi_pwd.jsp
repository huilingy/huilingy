<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
        <%@include file="../meau/header.jsp" %>
		 <script language="javascript" type="text/javascript">
            //保存成功的提示信息
            function showResult() {
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
           /*  $(document).ready(function() {
        		$("#sub").click(function() {
        			showResult();
        		
        		})
        	}) */
            //使用ajax技术进行信息修改
          /* 
            	$(document).ready(function() {
            		$("#sub").blur(function() {
            			$.ajax({
            				url : "../../admin/updateApwdYes",
            				type : "get",
            				data : {
            					"apwd" : $("#apwd").val()
            				},
            				success : function(result) {
            					$("#save_result_info").text(result)
            				},
            				error : function(result) {
            					$("#save_result_info").text(result);

            				}
            			});
            		})
            	}) */
        </script>
    </head>
    <body>
        <!--Logo区域开始-->
                <%@include file="../meau/exit.jsp" %>
        <!--Logo区域结束-->
        <!--导航区域开始-->
                <%@include  file="../meau/meau.jsp" %>
        <!--导航区域结束-->
        <div id="main">      
            <!--保存操作后的提示信息：成功或者失败-->      
<!--             <div id="save_result_info" class="save_success">保存成功！</div>保存失败，旧密码错误！
 -->            <form action="${pageContext.request.contextPath }/admin/updateApwdYes" method="post" class="main_form">
                <div class="text_info clearfix"><span>旧密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200"  /><span class="required">*</span>
                </div>
                <div class="text_info clearfix"><span>新密码：</span></div>
                <div class="input_info">
                    <input type="password" name="apwd" class="width200" /><span class="required">*</span>
                </div>
                <div class="text_info clearfix"><span>重复新密码：</span></div>
                <div class="input_info">
                    <input type="password" class="width200"  /><span class="required">*</span>
                </div>
                <div class="button_info clearfix">
                    <input type="submit" value="保存" class="btn_save" name="sub"  />
                    <input type="button" value="取消" class="btn_save" />
                </div>
            </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
           
        </div>
    </body>
</html>
