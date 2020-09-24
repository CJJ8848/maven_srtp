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
    <title>custom</title>
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
         .a-upload{
             padding: 4px 10px;
             /*height: 34px;*/
             line-height: 28px;
             position: relative;
             cursor: pointer;
             color: #fff;
             background-color: #555555;
             border-color: #555555;
             border-radius: 4px;
             overflow: hidden;
             display: inline-block;
             *display: inline;
             *zoom: 1;
         }
        .a-upload input{
            position: absolute;
            font-size: 100px;
            right: 0;
            top: 0;
            opacity: 0;
            filter: alpha(opacity=0);
            cursor: pointer
        }
        .a-upload:hover{
            color: #FFFFFF;
            background: #555555;
            border-color: #555555;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div style="font-size: 1.5rem;">
    <jsp:include page="nav.jsp"/>
    <jsp:include page="header.jsp"/>
    <main class="container" role="main" style="margin-bottom: 150px;padding: 20px">
        <div style="color: #555">
            <h2>Human (customize)</h2>
        </div>
        <a href="<%=request.getContextPath()%>/jsp/custom_form.jsp.jsp" class="tab enabled">crispra</a>
        <a href="<%=request.getContextPath()%>/jsp/custom_form_i.jsp" class="tab disabled">crispri</a>
        <form action="" method="post" class="smart-green" style="margin-top: 5%">
            <h1> Binding Force Prediction
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
                <span>The coordinate :</span>
                <input type="text" name="site" placeholder="sgRNA binding site" />
            </label>

            <label>
                <span>The cell line :</span>
                <input type="text" name="cellline" placeholder="cell line used" />
            </label>
            <br>
            <label>
                <a href="#" id="upload" class="a-upload mr10">
                    <input type="file" name="file" id="">wait wait features diff
                </a>
                <div class="showFileName"></div>
            </label>

            <label>
                <span>&nbsp;</span>
                <br>
                <button id="uploadBtn" type="submit" class="btn" style="background: #555555; color: #FFFFFF">
                    Submit
                </button>
            </label>
        </form>

        <div style="color:#555">
            <h2>Mouse (customize)</h2>
        </div>
        <a href="<%=request.getContextPath()%>/jsp/custom_form.jsp.jsp" class="tab enabled">crispra</a>
        <a href="<%=request.getContextPath()%>/jsp/custom_form_i.jsp" class="tab disabled">crispri</a>
        <form action="" method="post" class="smart-green" style="margin-top: 5%">
            <h1> Binding Force Prediction
                <span>Please fill all the texts in the fields.</span>
            </h1>
            <label>
                <span>The genome :</span>
                <select name = "cellline">
                    <option value="2">Mouse GRCm38</option>
                </select>
            </label>
            <label>
                <span>The coordinate :</span>
                <input type="text" name="site" placeholder="sgRNA binding site" />
            </label>

            <label>
                <span>The cell line :</span>
                <input type="text" name="cellline" placeholder="cell line used" />
            </label>
            <br>
            <label>
                <a href="#" id="upload" class="a-upload mr10">
                    <input type="file" name="file" id="">wait wait features diff
                </a>
                <div class="showFileName"></div>
            </label>

            <label>
                <span>&nbsp;</span>
                <br>
                <button id="uploadBtn" type="submit" class="btn" style="background: #555555; color: #FFFFFF">
                    Submit
                </button>
            </label>
        </form>
    </main>


    <div style="float: bottom; width: 100%;padding-top: 20px; padding-bottom: 20px; padding-left:30px; padding-right: 30px;background: #222">
        <h3 style="color: #9d9d9d;"> <a href="<%=request.getContextPath()%>/jsp/custom_form.jsp" style="color: #9d9d9d">Custom Page</a></h3>
        <div style="text-align: right">
            <h4 style="color: #9d9d9d;"> Data Resource <small><p></p> <p>ENCODE</p></small></h4>
        </div>
    </div>


</div>



</body>
</html>
