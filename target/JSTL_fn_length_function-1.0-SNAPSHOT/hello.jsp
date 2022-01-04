<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSTL_fn_length_function
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2022/1/4
  Time(创建时间)： 22:03
  Description(描述)：
  JSTL fn:length() 函数类似于 Java 中的 length() 方法，用于返回指定字符串的长度。
JSP fn:length() 函数的语法如下。
int length(String str)
其中，str 为指定的字符串。
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:set var="str" value="This is first String"/>
str的长度：${fn:length(str)}
<%
    int[] a = new int[457];
    request.setAttribute("a", a);
    ArrayList<Integer> list = new ArrayList<Integer>();
    for (int i = 0; i < 47; i++)
    {
        list.add(i);
    }
    request.setAttribute("list", list);
%>
<br/>
数组长度:
${fn:length(requestScope.a)}
<br>
集合长度:
${fn:length(list)}
</body>
</html>
