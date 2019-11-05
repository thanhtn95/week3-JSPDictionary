<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<html>
<head>
    <title>$Title$</title>
</head>
<% String[][] dic = new String[][]{{"house", "nhà"}, {"condom", "bcs"}, {"darkness", "bóng tối"}, {"fear", "sợ hãi"}};
    String originalWord = request.getParameter("originalWord");
    String result = "That word isn't this dictionary right now!!!!";
    for (String[] s : dic) {
        if (s[0].equalsIgnoreCase(originalWord)) {
            result = s[1].toUpperCase();
            break;
        }
    }%>
<body>
<h1>Search Word:&nbsp;<%=originalWord%>
</h1>
<h1>Result:&nbsp;<%=result%>
</h1>
<a href="index.jsp">
    <button type="button">Back</button>
</a>
</body>
</html>