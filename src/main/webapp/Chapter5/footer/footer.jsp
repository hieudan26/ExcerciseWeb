<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<%
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
    pageContext.setAttribute("Year",currentYear);
%>
<p>&copy; Copyright ${pageContext.getAttribute("Year")} Mike Murach &amp; Associates</p>
