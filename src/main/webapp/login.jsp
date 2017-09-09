<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>领客先行</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(2).css">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(1).css">
</head>

<body>
<div class="container met-head">

    <div class="row">
        <div class="col-xs-6 col-sm-6 logo">
            <ul class="list-none">
                <li><a href="/" class="met-logo"><img src="./img/logoquan14440786348.png" width="100px;"></a></li>

                <li>会员注册</li>

            </ul>
        </div>

        <div class="col-xs-6 col-sm-6 user-info">
            <ol class="breadcrumb pull-right">

                <li><a href="/" title="返回首页">返回首页</a></li>
            </ol>
        </div>
    </div>

</div>

<div class="login_index met-member">
    <div class="container">
        <form method="post"  novalidate="novalidate" class="bv-form">
            <input type="hidden" name="gourl" value="">
            <div class="form-group">
                <input id="username" type="text" name="username" required="" class="form-control" placeholder="用户名/邮箱/手机" data-bv-notempty="true" data-bv-notempty-message="此项不能为空" data-bv-field="username">
                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="username" data-bv-result="NOT_VALIDATED" style="display: none;">此项不能为空</small></div>
            <div class="form-group">
                <input id="password" type="password" name="password" required="" class="form-control" placeholder="密码" data-bv-notempty="true" data-bv-notempty-message="此项不能为空" data-bv-field="password">
                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="password" data-bv-result="NOT_VALIDATED" style="display: none;">此项不能为空</small></div>

            <button class="btn btn-lg btn-primary btn-block" onclick="sitt();" type="button">登录</button>


            <a class="btn btn-lg btn-info btn-block" href="./register.jsp">没有账号？现在去注册</a>

        </form>
    </div>
</div>
<footer class="container met-footer">
    <p>北京领客先行科技有限公司&nbsp;&nbsp;&nbsp;京ICP备16037571号-1 </p>

</footer>
<script src="./js/jquery-3.2.1.js"></script>
<script>

    function sitt() {
        var username = $("#username").val();
        var password = $("#password").val();
        if(username==''||username==null){
            alert('用户名不能为空！');
            return;
        }
        if(password==''||password==null){
            alert('密码不能为空！');
            return;
        }

        alert("用户名或密码错误！");
    }
</script>
</body></html>