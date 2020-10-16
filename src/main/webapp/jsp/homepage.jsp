<%--
  Created by IntelliJ IDEA.
  User: cuijiajun
  Date: 2020/9/15
  Time: 11:23 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>homepage</title>
    <!-- Bootstrap -->
    <link href="<%=request.getContextPath()%>/static/bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/static/jquery/jquery-3.4.1.js"></script>
    <script src="<%=request.getContextPath()%>/static/bootstrap/js/bootstrap.js"></script>
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/static/css/contact.css" rel="stylesheet">
    <style>
        .tab {
            border: none;
            font-family: "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
            font-size:  115%;
            font-weight:  bold;
            overflow: visible;
            padding: 1px 13px 1px 15px;
            text-decoration: none;
            width: auto;
            text-align: center;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
        }

        a.tab.enabled {
            color: #d5d5d5;
            background-color: #555555;
        }

        a.tab.disabled {
            color: black;
            background-color: rgb(240,240,240);
        }

        a.tab.enabled:hover {
            color: black;
            background-color: rgb(240,240,240);
        }

        a.tab.disabled:hover {
            color: #d5d5d5;
            background-color: #555555;
        }
    </style>
</head>
<body>
<div style="font-size: 1.5rem;">
    <jsp:include page="nav.jsp"/>
    <jsp:include page="header.jsp"/>
    <main class="container" role="main" style="margin-bottom: 150px;padding: 20px">
        <div style="color: #555">
            <h2>Human</h2>
        </div>
        <a href="<%=request.getContextPath()%>/jsp/homepage.jsp" class="tab enabled">crispra</a>
        <a href="<%=request.getContextPath()%>/jsp/homepage_i.jsp" class="tab disabled">crispri</a>
        <form action = "<%=request.getContextPath()%>/ah_info" method="post" class="smart-green" style="margin-top: 5%">
            <h1> Binding Force Prediction
                <span>Please fill all the texts in the fields.</span>
            </h1>
            <label>
                <span>The genome :</span>
                <select name = "genome">
                    <option value="hg19">Human hg19 (GRCh37)</option>
                    <option value="hg38)">Human hg38 (GRCh38)</option>
                </select>
            </label>
            <label>
                <span>The cell line :</span>
                <select name = "cellline">
                    <option value="K562">K562</option>
                    <option value="H1">H1</option>
                    <option value="IMR-90">IMR-90</option>
                    <option value="H9">H9</option>
                </select>
            </label>

            <label>
                <span>The coordinate :</span>
                <textarea class="form-control" name="site" placeholder="chr,start,end,strand   e.g. chr22,39916226,39916325,+" rows="3"></textarea>
            </label>
            <label>
                <span>&nbsp;</span>
                <br>
                <button type="submit" class="button">Submit</button>
            </label>
        </form>

        <div style="color:#555">
            <h2>Mouse</h2>
        </div>
        <a href="<%=request.getContextPath()%>/jsp/homepage.jsp" class="tab enabled">crispra</a>
        <a href="<%=request.getContextPath()%>/jsp/homepage_i.jsp" class="tab disabled">crispri</a>
        <form action="<%=request.getContextPath()%>/am_info" method="post" class="smart-green" style="margin-top: 5%">
            <h1> Binding Force Prediction
                <span>Please fill all the texts in the fields.</span>
            </h1>
            <label>
                <span>The genome :</span>
                <select name = "genome">
                    <option value="Mouse GRCm38">Mouse GRCm38</option>
                </select>
            </label>
            <label>
                <span>The cell line :</span>
                <select name = "cellline">
                    <option value="MEL">MEL</option>
                    <option value="ES">ES</option>
                </select>
            </label>

            <label>
                <span>The coordinate :</span>
                <textarea class="form-control" name="site" placeholder="chr，start，end，strand" rows="3"></textarea>
            </label>
            <label>
                <span>&nbsp;</span>
                <br>
                <button type="submit" class="button">Submit</button>
            </label>
        </form>
    </main>
    <jsp:include page="tail.jsp"/>
</div>



</body>
</html>
