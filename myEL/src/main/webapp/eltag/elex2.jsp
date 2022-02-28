<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="eltag.Customer, java.util.ArrayList" %>
<%
   ArrayList<String> singer = new ArrayList<String>();
   singer.add("소녀시대");
   request.setAttribute("singer", singer);
   
   Customer[] cs = new Customer[2];
   cs[0] = new Customer();
   cs[0].setName("손오공");
   cs[0].setEmail("son@naver.com");
   cs[0].setPhone("010-1111-1111");
   cs[1] = new Customer();
   cs[1].setName("홍길동");
   cs[1].setEmail("hong@naver.com");
   cs[1].setPhone("010-2222-2222");
   request.setAttribute("customer", cs);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL example</title>
</head>
<body>
<ul>
   <li>이름 : ${customer[0].name}</li>
   <li>메일 : ${customer[0].email}</li>
   <li>전화 : ${customer[0].phone}</li>
</ul>
<ul>
   <li>이름 : ${customer[1].name}</li>
   <li>메일 : ${customer[1].email}</li>
   <li>전화 : ${customer[1].phone}</li>
</ul>
</body>
</html>