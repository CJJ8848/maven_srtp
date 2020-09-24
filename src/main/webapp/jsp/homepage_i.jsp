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
        <a href="<%=request.getContextPath()%>/jsp/homepage.jsp" class="tab disabled">crispra</a>
        <a href="<%=request.getContextPath()%>/jsp/homepage_i.jsp" class="tab enabled">crispri</a>
        <form action="" method="post" class="smart-green" style="margin-top: 5%">
            <h1> Binding Force Prediction (iiii)
                <span>Please fill all the texts in the fields.</span>
            </h1>
            <label>
                <span>The genome :</span>
                <select name = "cellline">
                    <option value="2">Human hg19 (GRCh37)</option>
                    <option value="1">Human hg38 (GRCh38)</option>
                </select>
            </label>
            <label>
                <span>The cell line :</span>
                <select name = "cellline">
                    <option value="1">K562</option>
                    <option value="2">H1</option>
                    <option value="3">IMR-90</option>
                    <option value="3">H9</option>
                </select>
            </label>

            <label>
                <span>The coordinate :</span>
                <input type="text" name="site" placeholder="sgRNA binding site" />
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
        <a href="<%=request.getContextPath()%>/jsp/homepage.jsp" class="tab disabled">crispra</a>
        <a href="<%=request.getContextPath()%>/jsp/homepage_i.jsp" class="tab enabled">crispri</a>
        <form action="" method="post" class="smart-green" style="margin-top: 5%">
            <h1> Binding Force Prediction (iiii)
                <span>Please fill all the texts in the fields.</span>
            </h1>
            <label>
                <span>The genome :</span>
                <select name = "cellline">
                    <option value="2">Mouse GRCm38</option>
                </select>
            </label>
            <label>
                <span>The cell line :</span>
                <select name = "cellline">
                    <option value="1">MEL</option>
                    <option value="2">ES</option>
                </select>
            </label>

            <label>
                <span>The coordinate :</span>
                <input id="site" type="text" name="site" placeholder="sgRNA binding site" />
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
