<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title></title>
               <%@include file="../meau/header.jsp" %>
        <script language="javascript" type="text/javascript">
            //保存成功的提示消息
           $(function(){
        	    var umsg='${xxxxx}';
        	    showResult(umsg);
	       		$("#sub").click(function(){
	 		   		$(".main_form").submit();
	 	   		});
           });
            function showResult(umsg) {
                showResultDiv(true,umsg);
                window.setTimeout("showResultDiv(false,'');", 3000);
            }
            function showResultDiv(flag,umsg) {
                if (flag){
                	if(umsg != ''){
                		$("#save_result_info").html(umsg);
                    	$("#save_result_info").css("display","block");
                	}
                } else {
                	$("#save_result_info").html(umsg);
                	$("#save_result_info").css("display","none");
                }
            }
           
            function updateRole(rid) {
                location.href="${pageContext.request.contextPath}/role/UpdateRolePrivAtion.do?rid="+rid;
            }
            
        </script>
    </head>
    <body>
          <!--Logo区域开始-->
                <%@include file="../meau/exit.jsp" %>
        <!--Logo区域结束-->
       <!--导航区域开始-->
                <%@include  file="../meau/meau.jsp" %>
        <!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">           
            <!--保存操作后的提示信息：成功或者失败-->
            <div id="save_result_info" class="save_success" style="display: none;"></div>
            <form action="${pageContext.request.contextPath}/role/UpdateRolePrivAtion.do?rid='${rrid}'"  method="get" class="main_form">
                <div class="text_info clearfix"><span>角色名称：</span></div>
                <div class="input_info">
                    <input type="text" class="width200" value="${sname }" name="rname"/>
                    <span class="required"></span>
                </div>                    
                <div class="text_info clearfix"><span>设置权限：</span></div>
                <div class="input_info_high">
                    <div class="input_info_scroll">
                         <ul>
                        	<c:forEach items="${allplist }" var="allplist">
                            	<li><input type="checkbox" name="priv" value="${allplist.pid}" 
                            	<c:forEach items="${pl }" var="p">
                            			<c:if test="${p.pid==allplist.pid }"> 
                            				checked="checked"
                            			</c:if>
                            		</c:forEach>
                            	/>${allplist.pname }</li>
                            </c:forEach>
                        </ul>
                    </div>
                    <span class="required"></span>
                    <div class="validate_msg_tiny">至少选择一个权限</div>
                </div>
                <div class="button_info clearfix">
                    <input type="button" value="保存" class="btn_save" onclick="sub()"  id="sub"/>
                    <input type="button" value="取消" class="btn_save" />
  					 <input type="text" value="${rrid }" name="rid" style="display:none" />
                </div>
            </form> 
        </div>
        <!--主要区域结束-->
        <div id="footer">
            
        </div>
    </body>
</html>
