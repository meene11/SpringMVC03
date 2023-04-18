<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Spring MVC03</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type = "text/javascript">
		$(document).ready(function(){
			if(${!empty msgType}){
				$("#messageType").attr("class", "modal-content panel-warning")
				$("#myMessage").modal("show");
			}
		});
   </script>
</head>
<body>

<jsp:include page="../common/header.jsp" />
 
<div class="container">
  <h2>Panel Heading</h2>
  <div class="panel panel-default">
    <div class="panel-heading">로그인화면</div>
    <div class="panel-body">
    	<form action="${contextPath}/memLogin.do" method="post">
    		<table class="table table-boredered" style="text-align: center; border: 1px solid #ddd;">
    			<tr>
    				<td style="width:110px; vertical-align:middle;">아이디</td>
    				<td><input id="memID" name="memID" class="form-control" type="text" maxlength="20" placeholder="아이디를 입력하세요."/></td>
    			</tr>
    			
    			<tr>
    				<td style="width:110px; vertical-align:middle;">비밀번호</td>
    				<td colspan="2"><input id="memPassword" name="memPassword" class="form-control" type="password" maxlength="20" placeholder="비밀번호를 입력하세요."/></td>
    			</tr>
    			

    			<tr>
    				<td colspan="3" style="text-align: left;">
    					<input type="submit" class="btn btn-primary btn-sm pull-right" value="로그인" onclick="goInsert()"/>
    				</td>
    			</tr>
    			
    		</table>
    	</form>
    	
    </div>
    
    <!-- 실패 메세지 -->
    <!-- Modal -->
	<div id="myMessage" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	
	    <!-- Modal content-->
	    <div id="messageType" class="modal-content">
	      <div class="modal-header panel-heading">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">${msgType}</h4>
	      </div>
	      <div class="modal-body">
	        <p>${msg}</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	
	  </div>
	</div>
    
    
    <div class="panel-footer">스프1탄_인프런_이미네</div>
  </div>
</div>

</body>
</html>
    