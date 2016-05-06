<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${fieldType}
	${preDefineValue}
	${show_pre_data }
	
<%-- <% 	
	String a[]=request.getParameterValues("show_pre_data");
	if(a!=null)
	{
		for(int i=0;i<a.length;i++){
		//out.println(Integer.parseInt(a[i])); //If integer
		out.println(a[i]);
		}}
%>
 --%>
</body>
</html>