<%--
  Created by IntelliJ IDEA.
  User: cuijiajun
  Date: 2020/4/7
  Time: 3:38 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <style>
        .navbar-fixed-top .navbar-inner {
            -webkit-border-radius: 0;
            -moz-border-radius: 0;
            border-radius: 0;
        }
        .whitesmoke{
            color: #9d9d9d;
        }
    </style>
</head>
    <body>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">OurCRISPR Home Page</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                      <li>
                        <c:if test="${sessionScope.username == null}">
                    <a class="nav-link" href="${pageContext.request.contextPath}/signin" style="float: right"><span class="glyphicon glyphicon-log-in"></span>   Sign in</a><a href="${pageContext.request.contextPath}/signup" style="float: right"><span class="glyphicon glyphicon-user"></span>  Sign up</a>
                        </c:if>
                        <c:if test="${sessionScope.username != null}">
                           <a class="nav-link" href="${pageContext.request.contextPath}/signout" style="float: right"><span class="glyphicon glyphicon-log-out"></span>   Sign out</a><a class="nav-link" href="${pageContext.request.contextPath}/history" style="float: right"> Hi, ${sessionScope.username} - History</a>
                        </c:if>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
</body>
