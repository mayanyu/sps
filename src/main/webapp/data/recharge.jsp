<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>领客先行直播</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <link rel="stylesheet" type="text/css" href="../css/metinfo.css">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/recharge1.css">
    <link rel="stylesheet" type="text/css" href="../css/common.css">

</head>
<body>
<%@include file="../head.jsp"%>
<div class="wrapper">
    <div class="m_pay">
        <form class="m_pay_form">
            <div class="m_pay_type">
                <div class="m_pay_type_name">充值方式:</div>
                <div class="m_pay_type_value">
                    <select>
                        <option value="">充值到银行卡</option>
                        <option value="">充值到平台</option>
                    </select>
                </div>
            </div>
            <div class="m_pay_type">
                <div class="m_pay_type_name">充值游戏:</div>
                <div class="m_pay_type_value">
                    <select>
                        <option value="">英雄联盟</option>
                        <option value="">穿越火线</option>
                        <option value="">球球大作战</option>
                    </select>
                </div>
            </div>
            <div class="m_pay_type">
                <div class="m_pay_type_name">充值服务器:</div>
                <div class="m_pay_type_value">
                    <select>
                        <option value="">北京</option>
                        <option value="">上海</option>
                    </select>
                </div>
            </div>
            <div class="m_pay_type">
                <div class="m_pay_type_name">充值账号:</div>
                <div class="m_pay_type_value">
                    <input type="text" value="123456">
                </div>
            </div>
            <div class="m_pay_type">
                <div class="m_pay_type_name">充值比例:</div>
                <div class="m_pay_type_value">
                    1元人民币：100平台币
                </div>
            </div>
            <div class="m_pay_type">
                <div class="m_pay_type_name">充值金额:</div>
                <div class="m_pay_type_value">
                    <select name="">
                        <option value="">10元</option>
                        <option value="">100元</option>
                        <option value="">1000元</option>
                    </select>
                </div>
            </div>
            <div class="m_pay_type_other">
                <div class="m_pay_type_name">选择银行:</div>
                <div class="m_pay_type_value">
                    <ul class="ul_rest clearfix">
                        <li><input checked name="cz" type="radio"><img src="/img/yh/yh1.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh2.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh3.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh4.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh5.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh6.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh7.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh8.gif" alt=""></li>
                        <li><input name="cz" type="radio"><img src="/img/yh/yh9.gif" alt=""></li>
                    </ul>
                </div>
            </div>

            <div class="m_pay_btn_box">
                <a target="_blank" class="m_pay_btn b_center" href="https://www.yeepay.com/app-merchant-proxy/node">立即充值</a>
            </div>
        </form>
        <div class="m_illustrate">
            <h1>银行卡支付操作流程</h1>
            <p>
                <ul class="ul_rest">
                    <li>1.在充值中心填写要充入的帐号和充值额度，确认要充值的信息，选择使用的银行，点击立即充值。</li>
                    <li>2.进入银行卡支付页面，填写银行卡号及密码等，确认金额支付。</li>
                    <li>3.确认后返回充值页面---充值成功。游戏内查收。</li>
                </ul>
            </p>
        </div>
    </div>

</div>
<%@include file="../foot.jsp"%>
</body>
</html>