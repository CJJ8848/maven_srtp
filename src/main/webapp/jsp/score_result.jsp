<%--
  Created by IntelliJ IDEA.
  User: cuijiajun
  Date: 2020/9/15
  Time: 11:23 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

    <title>score_result</title>
    <script src="<%=request.getContextPath()%>/loading.js"></script>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.js"></script>
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/static/css/contact.css" rel="stylesheet">


</head>
<body>

<div class="content" style="font-size: 1.5rem;">
    <jsp:include page="nav.jsp"/>
    <jsp:include page="header.jsp"/>
    <main class="container" role="main" style="margin-bottom: 150px;padding: 20px">
        <h2>
            <br>
        </h2>
        <br>
        <div><h2>
            Sample info
        </h2>
            <br>
            ${strinput}
            <div>The species : ${species} </div><br>
            <div>The genome : ${genome} </div><br>
            <div>The cell line : ${cellline} </div><br>
        </div>
        <div style="padding-top: 20px"><h2>
            Feature values (log10)
        </h2>
            <br>
        </div>
        <c:if test="${species == 'Human'}">
            <c:forEach items="${nextlinelist}" var="item">
            <br>
                <div>The sequence : ${item[23]} </div><br>
            <div>The coordinate : ${item[5]},${item[6]},${item[7]},${item[8]} </div><br>
            <div class="table-responsive">
                    <table class="table table-striped table-sm table-bordered">
                        <thead>
                        <tr>
                            <th>${features[0]}</th>
                            <th>${features[1]}</th>
                            <th>${features[2]}</th>
                            <th>${features[3]}</th>
                            <th>${features[4]}</th>
                            <th>${features[5]}</th>
                            <th>${features[6]}</th>
                            <th>${features[7]}</th>
                            <th>${features[8]}</th>
                            <th>${features[9]}</th>
                            <th>${features[10]}</th>
                            <th>${features[11]}</th>
                            <th>${features[12]}</th>
                            <th>${features[13]}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>${item[9]}</td>
                            <td>${item[10]}</td>
                            <td>${item[11]}</td>
                            <td>${item[12]}</td>
                            <td>${item[13]}</td>
                            <td>${item[14]}</td>
                            <td>${item[15]}</td>
                            <td>${item[16]}</td>
                            <td>${item[17]}</td>
                            <td>${item[18]}</td>
                            <td>${item[19]}</td>
                            <td>${item[20]}</td>
                            <td>${item[21]}</td>
                            <td>${item[22]}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </c:forEach>
        </c:if>
        <c:if test="${species == 'Mouse'}">
            <div class="table-responsive">
                <table class="table table-striped table-sm table-bordered">
                    <thead>
                    <tr>
                        <th>BaggingRegressor</th>
                        <th>ExtraTreeRegressor</th>
                        <th>RandomForestRegressor</th>
                        <th>XGBRegressor</th>
                        <th>Average</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${list[0]}</td>
                        <td>${list[1]}</td>
                        <td>${list[2]}</td>
                        <td>${list[3]}</td>
                        <td>${list[4]}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </c:if>
        <div style="padding-top: 20px"><h2>
            Activity scores
        </h2>
        <br>
        </div>
        <c:if test="${species == 'Human'}">
            <c:forEach items="${nextlinelist}" var="item">
                <br>
                <div>The sequence : ${item[23]} </div><br>
                <div>The coordinate : ${item[5]},${item[6]},${item[7]},${item[8]} </div><br>
                <div class="table-responsive">
                    <table class="table table-striped table-sm table-bordered">
                        <thead>
                        <tr>
                            <th>BaggingRegressor</th>
                            <th>ExtraTreeRegressor</th>
                            <th>RandomForestRegressor</th>
                            <th>XGBRegressor</th>
                            <th>Average</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>${item[0]}</td>
                            <td>${item[1]}</td>
                            <td>${item[2]}</td>
                            <td>${item[3]}</td>
                            <td>${item[4]}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div>
                    <div>
                        The score histogram:
                        <br>
                        <br>
                        <br>

                    <img  src="<%=request.getContextPath()%>/plots/Scores_ ${start} .png"/>
                </div>
            </c:forEach>
        </c:if>
        <c:if test="${species == 'Mouse'}">
            <div class="table-responsive">
                <table class="table table-striped table-sm table-bordered">
                    <thead>
                    <tr>
                        <th>BaggingRegressor</th>
                        <th>ExtraTreeRegressor</th>
                        <th>RandomForestRegressor</th>
                        <th>XGBRegressor</th>
                        <th>Average</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${list[0]}</td>
                        <td>${list[1]}</td>
                        <td>${list[2]}</td>
                        <td>${list[3]}</td>
                        <td>${list[4]}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </c:if>
    </main>

    <jsp:include page="tail.jsp"/>
</div>
<script type="text/javascript">
    window.onload = function() {
        setTimeout(function () {
            var loader = document.getElementsByClassName("loader")[0];
            loader.className = "loader fadeout";//使用渐隐的方法淡出loading page
            setTimeout(function () {
                loader.style.display = "none"
            }, 1000)
        }, 1000)//强制显示loading page 1s
    }
</script>
</body>
</html>
