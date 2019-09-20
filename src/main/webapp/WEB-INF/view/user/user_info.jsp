<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta content="multipart/form-data; charset=utf-8" />
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
            //使用ajax技术进行信息修改
          
            	$(document).ready(function() {
            		$("#name").blur(function() {
            			$.ajax({
            				url : "/ssmtest1/admin/update_user_infor",
            				type : "post",        
            				data : {
            					"aname" : $("#aname").val(),
            					"atel" : $("#atel").val(),
            					"aeamil" : $("#aemail").val()
            				},
            				success : function(result) {
            					$("#save_result_info").text(result)
            				},
            				error : function(result) {
            					$("#save_result_info").text(result);

            				}
            			});
            		})
            	})
        </script>
    </head>
    <body>
        <!--Logo区域开始-->
                <%@include file="../meau/exit.jsp" %>
        <!--Logo区域结束-->
        <!--导航区域开始-->
        <!-- jsp测试代码 -->
       <        <%@include  file="../meau/meau.jsp" %>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">            
            <!--保存操作后的提示信息：成功或者失败-->
            <div id="save_result_info" class="save_success" ></div><!--保存失败，数据并发错误！-->
            <form enctype="multipart/form-data" action="0 " method="post" class="main_form"  >
                <div class="text_info clearfix"><span>管理员账号：</span></div>
                <div class="input_info"><input type="text" readonly="readonly" class="readonly" value="${admin1.acname }" /></div>
                <div class="text_info clearfix"><span>角色：</span></div>
                <%-- <div class="input_info">
                    <input type="text" readonly="readonly" class="readonly width400" value="${admin1.listrname }"/>${admin1.listrname }
                </div> --%>
                <div class="text_info clearfix"><span>姓名：</span></div>
                <div class="input_info">
                    <input type="text" value="${admin1.aname }" id="aname" />
                </div>
                <div class="text_info clearfix"><span>电话：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${admin1.atel }" id="atel" />
                </div>
                <div class="text_info clearfix"><span>Email：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${admin1.aemail}"  id="aemail"/>
                </div>
                <div class="text_info clearfix" ><span>上传头像：</span></div>
                <div class="input_info">
                    <input type="file" class="width200" value="" name="file" id="image"/>
                </div>
                <div class="text_info clearfix"><span>创建时间：</span></div>
                <div class="input_info"><input type="text" readonly="readonly" class="readonly" value="${admin1.createtime }"/></div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save" onclick="showResult();" id="name" />
                    <input type="button" value="取消" class="btn_save" />
                </div>
            </form>  
        </div>
        <!--主要区域结束-->
        <div id="footer">
          
        </div>
    </body>
</html>
