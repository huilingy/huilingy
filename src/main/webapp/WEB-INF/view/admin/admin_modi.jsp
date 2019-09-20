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
         <script type="text/javascript" src="../../assets/js/jquery-1.7.min.js"></script> 
   		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.7.min.js"></script>
   		<script language="javascript" type="text/javascript">
      
            function modi(str){
            	alert(123);
                location.href="${pageContext.request.contextPath}/controuser/UpdateAdminAndRoleIntro.do?strid="+str;
        	}
        </script>
    </head>
    <body>
        <<!--Logo区域开始-->
	<%@include file="../meau/exit.jsp"%>
	<!--Logo区域结束-->
	<!--导航区域开始-->
	<%@include file="../meau/meau.jsp"%>
	<!--导航区域结束-->
        <!--主要区域开始-->
        <div id="main">            
            <div id="save_result_info" class="save_success">保存成功！</div>
            <form action="${pageContext.request.contextPath}/controuser/UpdateAdminAndRoleIntro.do?strid=${ad.aid }"  method="post" class="main_form">
                    <div class="text_info clearfix"><span>姓名：</span></div>
                    <div class="input_info">
                        <input type="text" value="${ad.aname }" name="aname"/>
                        <span class="required">*</span>
                        <div class="validate_msg_long error_msg"></div>
                    </div>
                    <div class="text_info clearfix"><span>管理员账号：</span></div>
                    <div class="input_info"><input type="text" readonly="readonly" class="readonly" value="${ad.acname }" name="acname" /></div>
                    <div class="text_info clearfix"><span>电话：</span></div>
                    <div class="input_info">
                        <input type="text" value="${ad.atel }" name="atel" />
                        <span class="required"></span>
                        <div class="validate_msg_long error_msg"></div>
                    </div>
                    <div class="text_info clearfix"><span>Email：</span></div>
                    <div class="input_info">
                        <input type="text" class="width200" value="${ad.aemail }" name="aemail"/>
                        <span class="required">*</span>
                        <div class="validate_msg_medium error_msg"></div>
                    </div>
                    <div class="text_info clearfix"><span>角色：</span></div>
                    <div class="input_info_high">
                        <div class="input_info_scroll">
                            <ul>
                            	<c:forEach items="${adminlr }" var="allplist">
                            	<li><input type="checkbox" name="role" value="${allplist.rid}" 
                            	<c:forEach items="${lr11 }" var="p">
                            			<c:if test="${p.rid==allplist.rid }"> 
                            				checked="checked"
                            			</c:if>
                            		</c:forEach>
                            	/>${allplist.rname }</li>
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
