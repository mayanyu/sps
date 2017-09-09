<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>领客先行</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(2).css">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(1).css">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
    <%--<link rel="stylesheet" href="./css/common.css">--%>
</head>

<body>
<div class="container met-head">

    <div class="row">
        <div class="col-xs-6 col-sm-6 logo">
            <ul class="list-none">
                <li><a href="/" class="met-logo"><img src="./img/logoquan14440786348.png" width="100px;"></a></li>

                <li>投诉</li>

            </ul>
        </div>

        <div class="col-xs-6 col-sm-6 user-info">
            <ol class="breadcrumb pull-right">

                <li><a href="/" title="返回首页">返回首页</a></li>
            </ol>
        </div>
    </div>

</div>
<div class="register_index met-member">
    <div class="container" style="background-color: #ffffff">
        <form>
            <div class="form-group">
                <label for="title">标题</label>
                <input type="text" class="form-control" id="title" placeholder="标题">
            </div>
            <div class="form-group">
                <label for="content">内容</label>
                <textarea id="content" class="form-control" rows="10" placeholder="投诉内容"></textarea>
            </div>
            <div style="text-align: center">
                <button id="submit" type="button" class="btn btn-info">提交</button>
            </div>
        </form>
        <p style="text-align: center;">
            客服邮箱：777777@qq.com <br>
            客服电话：0919-6893098
        </p>
    </div>
</div>

<footer class="container met-footer">
    <p>北京领客先行科技有限公司&nbsp;&nbsp;&nbsp;京ICP备16037571号-1 </p>

</footer>
<script src="./js/jquery-3.2.1.js"></script>
<script>
    $(function () {
       $('#submit').click(function () {
           alert('投诉已提交，谢谢反馈');
       });
    });
</script>
</body></html>