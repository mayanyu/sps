<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>领客先行</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(2).css">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(1).css">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/bootstrapValidator.min.css">
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
        <form id="reg_form" class="form-register met-form bv-form" novalidate="novalidate">


            <div class="form-group met-form-choice" id="usernameWrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">用户名</div>
                    <div class="col-md-9">
                        <%--<input id="username" type="text" name="username" class="form-control" value="" placeholder="用户名">
                        <span class="help-block">请输入用户名</span>--%>
                            <input type="text" class="form-control" name="username"
                                   data-bv-message="用户名输入有误"
                                   required
                                   data-bv-notempty-message="请输入用户名"
                                   pattern="^[a-zA-Z0-9]+$"
                                   data-bv-regexp-message="用户名包含非法字符"
                                   data-bv-stringlength="true"
                                   maxlength="12"
                                   minlength="4"
                                   data-bv-stringlength-message="长度为4~12个字符"
                                   data-bv-stringlength-mix="长度小于4个字符"
                                   data-bv-stringlength-mix="长度大于12个字符"
                            />
                    </div>
                </div>
            </div>


            <div class="form-group met-form-choice" id="passwordWrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">密码</div>
                    <div class="col-md-9">
                        <input id="password" type="text" name="password" class="form-control" value="" placeholder="密码"
                            data-bv-message="密码输入有误"
                            required
                            data-bv-notempty-message="请输入密码"
                               maxlength="16"
                               minlength="8"
                               data-bv-stringlength-message="长度为8~16个字符"
                               data-bv-stringlength-mix="长度小于8个字符"
                               data-bv-stringlength-mix="长度大于16个字符"
                               pattern="((?=.*[0-9].*)(?=.*[A-Za-z].*)(?=.*_.*))[_0-9A-Za-z]"
                               data-bv-regexp-message="必须同时包含字母、数字、下划线"
                         >
                    </div>
                </div>
            </div>


            <div class="form-group met-more text-muted">
                <hr>
                <span>更多资料</span>
            </div>




            <div class="form-group met-form-choice" id="info_100Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">真实姓名</div>
                    <div class="col-md-9">
                        <input id="info_100" type="text" name="info_100" class="form-control" value="" placeholder="真实姓名"
                               data-bv-message="真实姓名输入有误"
                               required
                               pattern="^[\u2E80-\u9FFF]+$"
                               data-bv-regexp-message="请确保姓名为汉字"
                               data-bv-notempty-message="请输入真实姓名" />

                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice" id="info_103Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">身份证号</div>
                    <div class="col-md-9">
                        <input id="info_103" type="text" name="info_103" class="form-control" value="" placeholder="身份证号"
                               data-bv-message="身份证号输入有误"
                               required
                               data-bv-notempty-message="请输入身份证号"
                               pattern="(^\d{15}$)|(^\d{17}([0-9]|X)$)"
                               data-bv-regexp-message="身份证号格式错误"   />
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice" id="info_106Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">手机号</div>
                    <div class="col-md-9">
                        <input id="info_106" type="text" name="info_106" class="form-control" value="" placeholder="手机号"
                               data-bv-message="手机号输入有误"
                               required
                               data-bv-notempty-message="请输入手机号"
                               data-bv-phone-country="CN"
                               data-bv-phone="true"
                               data-bv-phone-message="手机号格式错误"
                        >
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice" id="info_109Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">邮箱</div>
                    <div class="col-md-9">
                        <input id="info_109" type="text" name="info_109" class="form-control" value="" placeholder="邮箱"
                               data-bv-message="邮箱输入有误"
                               required
                               data-bv-emailaddress="true"
                               data-bv-emailaddress-message="邮箱格式错误"
                               data-bv-notempty-message="请输入邮箱"
                        >
                    </div>
                </div>
            </div>

            <div class="form-group met-form-choice" id="info_110Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3" style="position: relative;">
                        <input type="checkbox" style="position: absolute;top:0;right: 0;">
                    </div>
                    <div class="col-md-9">
                        我已阅读并同意 <a href="./agreement.jsp" target="_blank">《用户协议》</a>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>

                        </label>
                    </div>
                </div>
            </div>




            <button class="btn btn-lg btn-primary btn-block" type="submit">立即注册</button>
            <div class="login_link"><a href="./login.jsp">已有账号？</a></div>
        </form>
    </div>
</div>

<footer class="container met-footer">
    <p>北京领客先行科技有限公司&nbsp;&nbsp;&nbsp;京ICP备16037571号-1 </p>

</footer>
<script src="./js/jquery-3.2.1.js"></script>
<script src="./js/bootstrapValidator.js"></script>
<script>

    $(function () {
        $('#reg_form').bootstrapValidator({
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            }
        });
    });

</script>
</body></html>