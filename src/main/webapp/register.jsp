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

<div class="register_index met-member">
    <div class="container">
        <form class="form-register met-form bv-form" novalidate="novalidate">


            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">会员名</span>
                    <input id="username" type="text" name="username" required="" class="form-control" data-bv-remote="true" data-bv-remote-url="https://show.metinfo.cn/muban/res013/323/member/register_include.php?lang=cn&amp;a=douserok" data-bv-remote-message="用户名已存在" data-bv-notempty="true" data-bv-notempty-message="此项不能为空" data-bv-stringlength="true" data-bv-stringlength-min="2" data-bv-stringlength-max="30" data-bv-stringlength-message="用户名必须在2-30个字符之间" data-bv-field="username">

                </div>
                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="username" data-bv-result="NOT_VALIDATED" style="display: none;">此项不能为空</small><small class="help-block" data-bv-validator="remote" data-bv-for="username" data-bv-result="NOT_VALIDATED" style="display: none;">用户名已存在</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="username" data-bv-result="NOT_VALIDATED" style="display: none;">用户名必须在2-30个字符之间</small></div>


            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">密码</span>
                    <input id="password" type="password" name="password" required="" class="form-control" data-bv-notempty="true" data-bv-notempty-message="此项不能为空" data-bv-identical="true" data-bv-identical-field="confirmpassword" data-bv-identical-message="两次密码输入不一致" data-bv-stringlength="true" data-bv-stringlength-min="6" data-bv-stringlength-max="30" data-bv-stringlength-message="密码必须在6-30个字符之间" data-bv-field="password">
                </div>
                <small class="help-block" data-bv-validator="identical" data-bv-for="password" data-bv-result="NOT_VALIDATED" style="display: none;">两次密码输入不一致</small><small class="help-block" data-bv-validator="notEmpty" data-bv-for="password" data-bv-result="NOT_VALIDATED" style="display: none;">此项不能为空</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="password" data-bv-result="NOT_VALIDATED" style="display: none;">密码必须在6-30个字符之间</small></div>


            <div class="form-group met-more text-muted">
                <hr>
                <span>更多资料</span>
            </div>




            <div class="form-group met-form-choice">
                <div class="row">
                    <div class="met-form-file-title col-md-3">真实姓名</div>
                    <div class="col-md-9">
                        <input id="info_100" type="text" name="info_100" class="form-control" value="" placeholder="真实姓名">
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice">
                <div class="row">
                    <div class="met-form-file-title col-md-3">身份证号</div>
                    <div class="col-md-9">
                        <input id="info_103" type="text" name="info_103" class="form-control" value="" placeholder="身份证号">
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice">
                <div class="row">
                    <div class="met-form-file-title col-md-3">手机号</div>
                    <div class="col-md-9">
                        <input id="info_106" type="text" name="info_106" class="form-control" value="" placeholder="手机号">
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice">
                <div class="row">
                    <div class="met-form-file-title col-md-3">邮箱</div>
                    <div class="col-md-9">
                        <input id="info_109" type="text" name="info_109" class="form-control" value="" placeholder="邮箱">
                    </div>
                </div>
            </div>




            <button class="btn btn-lg btn-primary btn-block" onclick="sitt();" type="button">立即注册</button>
            <div class="login_link"><a href="./login.jsp">已有账号？</a></div>
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
        var info_100 = $("#info_100").val();
        var info_103 = $("#info_103").val();
        var info_106 = $("#info_106").val();
        var info_109 = $("#info_109").val();
        if(username==''||username==null){
            alert('用户名不能为空！');
            return;
        }
        if(password==''||password==null){
            alert('密码不能为空！');
            return;
        }
        if(info_100==''||info_100==null){
            alert('真实姓名不能为空！');
            return;
        }
        if(info_103.length!=18){
            alert('身份证号格式不正确！');
            return;
        }
        if(info_106.length!=11){
            alert('手机号格式不正确！');
            return;
        }
        if(info_109==''||info_109==null){
            alert('邮箱不能为空！');
            return;
        }
        if(!new RegExp(info_109).test('@')){
            alert('邮箱格式不正确！');
            return;
        }
        alert("注册完成，请等待信息验证！");
    }
</script>
</body></html>