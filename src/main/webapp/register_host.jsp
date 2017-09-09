<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>领客先行</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(2).css">
    <link rel="stylesheet" type="text/css" href="./css/metinfo(1).css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
</head>

<body>
<div class="container met-head">

    <div class="row">
        <div class="col-xs-6 col-sm-6 logo">
            <ul class="list-none">
                <li><a href="/" class="met-logo"><img src="./img/logoquan14440786348.png" width="100px;"></a></li>

                <li>主播注册</li>

            </ul>
        </div>

        <div class="col-xs-6 col-sm-6 user-info">
            <ol class="breadcrumb pull-right">

                <li><a href="/" title="返回首页">返回首页</a></li>
            </ol>
        </div>
    </div>

</div>

<%--<div class="met-member">
    <div class="container"  style="background-color: #ffffff">
        <form style="max-width:none;">
            <table class="host_info">
                <tr>
                    <td class="d1">用户名</td>
                    <td class="d2"><input type="text" id="username"><span>*请输入用户名</span></td>
                    <td class="d1">密码</td>
                    <td class="d2"><input type="text" id="password"><span>*请输入密码</span></td>
                </tr>
                <tr>
                    <td>真实姓名</td>
                    <td><input type="text" id="realname"><span>*请输入真实姓名</span></td>
                    <td>身份证号</td>
                    <td><input type="text" id="idCard"><span>*请输入身份证号</span></td>
                </tr>
                <tr>
                    <td>手机号</td>
                    <td><input type="text" id="phonenum"><span>*请输入手机号</span></td>
                    <td>邮箱</td>
                    <td><input type="text" id="email"><span>*请输入邮箱</span></td>
                </tr>
                <tr>
                    <td>出生地</td>
                    <td><input type="text" id="birthplace"><span>*请输入出生地</span></td>
                    <td>生日</td>
                    <td><input type="text" id="birth"><span>*请输入生日</span></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">
                        <a class="reg" id="reg">注册</a>
                    </td>
                </tr>
            </table>
        </form>

    </div>
</div>--%>


<div class="register_index met-member">
    <div class="container">
        <form class="form-register met-form bv-form" novalidate="novalidate">


            <div class="form-group met-form-choice" id="info_100Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">真实姓名</div>
                    <div class="col-md-9">
                        <input id="info_100" type="text" name="info_100" class="form-control" value="" placeholder="真实姓名">
                        <span class="help-block">请输入真实姓名</span>
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice" id="info_103Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">身份证号</div>
                    <div class="col-md-9">
                        <input id="info_103" type="text" name="info_103" class="form-control" value="" placeholder="身份证号">
                        <span class="help-block">实名验证未通过</span>
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice" id="info_106Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">手机号</div>
                    <div class="col-md-9">
                        <input id="info_106" type="text" name="info_106" class="form-control" value="" placeholder="手机号">
                        <span class="help-block">请输入手机号</span>
                    </div>
                </div>
            </div>









            <div class="form-group met-form-choice" id="info_109Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">邮箱</div>
                    <div class="col-md-9">
                        <input id="info_109" type="text" name="info_109" class="form-control" value="" placeholder="邮箱">
                        <span class="help-block">请输入邮箱</span>
                    </div>
                </div>
            </div>

            <div class="form-group met-form-choice" id="info_107Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">出生地</div>
                    <div class="col-md-9">
                        <input id="info_107" type="text" name="info_106" class="form-control" value="" placeholder="手机号">
                        <span class="help-block">请输入出生地</span>
                    </div>
                </div>
            </div>


            <div class="form-group met-form-choice" id="info_108Wrapper">
                <div class="row">
                    <div class="met-form-file-title col-md-3">生日</div>
                    <div class="col-md-9">
                        <input id="info_108" type="text" name="info_106" class="form-control" value="" placeholder="手机号">
                        <span class="help-block">请输入生日</span>
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




            <button class="btn btn-lg btn-primary btn-block" onclick="sitt();" type="button">立即注册</button>
            <div class="login_link"><a href="./login.jsp">已有账号？</a></div>
        </form>
    </div>
</div>

<footer class="container met-footer">
    <p>北京领客先行科技有限公司&nbsp;&nbsp;&nbsp;京ICP备16037571号-1 </p>

</footer>
<script src="./js/jquery-3.2.1.js"></script>
<script src="./js/input_check.js"></script>
<script>

    $(function () {
        //var checkIds = ['username','username','password','realname','idCard','phonenum','email','birthplace','birth'];
       /* addHelper2('username');
        addHelper2('password');
        addHelper2('realname');
        addHelper2('idCard','idCard');
        addHelper2('phonenum');
        addHelper2('email');
        addHelper2('birthplace');
        addHelper2('birth');
*/
        /*$("#reg").click(function () {
            for(var i=0;i<checkIds.length;i++){
                if($('#'+checkIds[i]).val().length==0){
                    $('#'+checkIds[i]).parent().addClass('error');
                }
            }
            alert("注册失败");
        })*/

        addHelper('info_100');
        addHelper('info_103','idCard');
        addHelper('info_106');
        addHelper('info_107');
        addHelper('info_108');
        addHelper('info_109');
    });

</script>
</body></html>