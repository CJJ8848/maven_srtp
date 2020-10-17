<%--
  Created by IntelliJ IDEA.
  User: cuijiajun
  Date: 2020/4/22
  Time: 5:34 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>view</title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.js"></script>
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
<main role="main" class="container" style="margin-bottom: 150px;padding: 20px">
    <c:if test="${filter !=null}">
        <div style="width: 500px;height: 500px;margin: 0 auto">
        <img style="width: 300px; height:200px;display:block;margin:0 auto" src="<%=request.getContextPath()%>/gif/loading.png">
        <br>
        <br>
        <div style="font-size: large;display:block;margin:0 auto">The process will cause a few minutes, please be patient...</div>
        <form action="<%=request.getContextPath()%>/ah_score_result" class="form">
            <button type="submit" style="display:block;margin:0 auto" class="button">START NOW</button>
        </form>
        </div>
    </c:if>
    <c:if test="${filter ==null}">
        <div id="myAlert" class="alert alert-warning" style="margin-top: 80px">
            Try again! Wrong text format, please type "chr，start，end，strand", e.g. "chr22,39916226,39916325,+".
            <a href="<%=request.getContextPath()%>" style="float:right; color: #9d9d9d" data-dismiss="alert">x</a>
        </div>
    </c:if>
</main>
<jsp:include page="tail.jsp"/>
</div>
</body>
</html>