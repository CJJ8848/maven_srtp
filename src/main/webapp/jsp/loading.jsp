<%--
  Created by IntelliJ IDEA.
  User: cuijiajun
  Date: 2020/9/28
  Time: 6:41 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loading</title>
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.js"></script>
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/static/css/contact.css" rel="stylesheet">

    <style>
        .loading{
        width: 150px;
        height: 4px;
        border-radius: 2px;
        margin: 0 auto;
        margin-top:100px;
        position: relative;
        background: #555555;
        -webkit-animation: changeBgColor 1.04s ease-in infinite alternate;
    }
    .loading span{
        display: inline-block;
        width: 16px;
        height: 16px;
        border-radius: 50%;
        background: #555555;
        position: absolute;
        margin-top: -7px;
        margin-left:-8px;
        -webkit-animation: changePosition 1.04s ease-in infinite alternate;
    }
    @-webkit-keyframes changeBgColor{
        0%{
            background: #555555;
        }
        100%{
            background: #d5d5d5;
        }
    }
    @-webkit-keyframes changePosition{
        0%{
            background: #555555;
        }
        100%{
            margin-left: 142px;
            background: #d5d5d5;
        }
    }
        .form {
            margin-left: auto;
            margin-right: auto;
            max-width: 800px;
            max-height: 200px;
            font: 12px Arial, Helvetica, sans-serif;
            padding: 30px 30px 20px 30px;
            color: #666;
            border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
        }
        .form .button {
            margin-left: auto;
            margin-right: auto;
            background-color: #666;
            border-radius: 5px;
            -webkit-border-radius: 5px;
            -moz-border-border-radius: 5px;
            border: none;
            padding: 10px 25px 10px 25px;
            color: #FFF;
            text-shadow: 1px 1px 1px #949494;
        }
    </style>
</head>
<body>
<div style="font-size: 1.5rem;">
    <jsp:include page="nav.jsp"/>
    <jsp:include page="header.jsp"/>
    <main class="container" role="main" style="margin-bottom: 150px;padding: 20px">
    <div style="width: 500px;height: 500px;margin: 0 auto">
<%--    <img src="<%=request.getContextPath()%>/gif/sovereign.jpg">--%>
<%--    <div class="loading">--%>
<%--        <span></span>--%>
<%--    </div>--%>
<%--    <img src="<%=request.getContextPath()%>/gif/timg.gif">--%>
    <img style="width: 300px; height:200px;display:block;margin:0 auto" src="<%=request.getContextPath()%>/gif/loading.png">
    <br>
    <br>
    <div style="font-size: large">The process will cause a few minutes, please be patient...</div>
    <form action="<%=request.getContextPath()%>/ah_score_result" class="form">
        <button type="submit" style="display:block;margin:0 auto" class="button">START NOW</button>
    </form>


</div>
    </main>
    <jsp:include page="tail.jsp"/>
</div>
</body>
</html>
