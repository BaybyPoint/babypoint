<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
    
    
<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='<c:url value="/resources/JS/wow.min.js" />' > </script>
<script src='<c:url value="/resources/JS/custom.js" />' > </script>

<script>
function loginsubmit(){
	var a = document.getElementById("email").value;
	var b = document.getElementById("matkhau").value;
	if(a== "" && b==""){
		alert("Nhập email với password cho cẩn thận vào, dmm !!!");
	}else
	if(a== ""){
		alert("Nhập email cho cẩn thận vào, dmm !!!");
	}else
	if(b== ""){
		alert("Nhập password cho cẩn thận vào, dmm !!!");
	}
	
}
</script>













