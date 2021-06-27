<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%
String user=request.getParameter("user");
session.setMaxInactiveInterval(24 * 60 * 60);
session.setAttribute("user",null);
response.sendRedirect("index.jsp");
%>