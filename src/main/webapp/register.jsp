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
                               data-bv-notempty-message="请输入真实姓名"

                               data-bv-stringlength="true"
                               maxlength="4"
                               minlength="2"
                               data-bv-stringlength-message="长度应为2~4个字符"
                               data-bv-stringlength-mix="长度小于2个字符"
                               data-bv-stringlength-mix="长度大于4个字符"


                               data-bv-callback="true"
                               data-bv-callback-callback="checkName"
                               data-bv-callback-message="请输入真实姓名"

                               pattern="^[\u2E80-\u9FFF]+$"
                               data-bv-regexp-message="请确保姓名为汉字"



                        />

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

                               data-bv-callback="true"
                               data-bv-callback-callback="checkIdNum"
                               data-bv-callback-message="身份证号输入有误"
                        />
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

    function checkName(value){
        if(value.length == 0){
            return true;
        }

        var names ="赵钱孙李周吴郑王冯陈褚卫蒋沈韩杨朱秦尤许何吕施张孔曹严华金魏陶姜戚谢邹喻柏水窦章云苏潘葛奚范彭郎鲁韦昌马苗凤花方俞任袁柳酆鲍史唐费廉岑薛雷贺倪汤滕殷罗毕郝邬安常乐于时傅皮卞齐康伍余元卜顾孟平黄和穆萧尹姚邵湛汪祁毛禹狄米贝明臧计伏成戴谈宋茅庞熊纪舒屈项祝董梁杜阮蓝闵席季麻强贾路娄危江童颜郭梅盛林刁钟徐邱骆高夏蔡田樊胡凌霍虞万支柯咎管卢莫经房裘缪干解应宗宣丁贲邓郁单杭洪包诸左石崔吉钮龚程嵇邢滑裴陆荣翁荀羊於惠甄魏加封芮羿储靳汲邴糜松井段富巫乌焦巴弓牧隗山谷车侯宓蓬全郗班仰秋仲伊宫宁仇栾暴甘钭厉戎祖武符刘姜詹束龙叶幸司韶郜黎蓟薄印宿白怀蒲台从鄂索咸籍赖卓蔺屠蒙池乔阴郁胥能苍双闻莘党翟谭贡劳逄姬申扶堵冉宰郦雍却璩桑桂濮牛寿通边扈燕冀郏浦尚农温别庄晏柴瞿阎充慕连茹习宦艾鱼容向古易慎戈廖庚终暨居衡步都耿满弘匡国文寇广禄阙东殴殳沃利蔚越夔隆师巩厍聂晁勾敖融冷訾辛阚那简饶空曾毋沙乜养鞠须丰巢关蒯相查后江红游竺权逯盖益桓公万俟司马上官欧阳夏侯诸葛闻人东方赫连皇甫尉迟公羊澹台公冶宗政濮阳淳于仲孙太叔申屠公孙乐正轩辕令狐钟离闾丘长孙慕容鲜于宇文司徒司空亓官司寇仉督子车颛孙端木巫马公西漆雕乐正壤驷公良拓拔夹谷宰父谷粱晋楚阎法汝鄢涂钦段干百里东郭南门呼延归海羊舌微生岳帅缑亢况后有琴梁丘左丘东门西门商牟佘佴伯赏南宫墨哈谯笪年爱阳佟第五言福百家姓续";
        if(names.indexOf(value[0])==-1){
            return false;
        }else{
            return true;
        }
    }


    function checkIdNum(idcode, validator){

        if(idcode.length==0){
            return true;
        }

        // 加权因子
        var weight_factor = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2];
        // 校验码
        var check_code = ['1', '0', 'X' , '9', '8', '7', '6', '5', '4', '3', '2'];

        var code = idcode + "";
        var last = idcode[17];//最后一个

        var seventeen = code.substring(0,17);

        // ISO 7064:1983.MOD 11-2
        // 判断最后一位校验码是否正确
        var arr = seventeen.split("");
        var len = arr.length;
        var num = 0;
        for(var i = 0; i < len; i++){
            num = num + arr[i] * weight_factor[i];
        }

        // 获取余数
        var resisue = num%11;
        var last_no = check_code[resisue];

        // 格式的正则
        // 正则思路
        /*
        第一位不可能是0
        第二位到第六位可以是0-9
        第七位到第十位是年份，所以七八位为19或者20
        十一位和十二位是月份，这两位是01-12之间的数值
        十三位和十四位是日期，是从01-31之间的数值
        十五，十六，十七都是数字0-9
        十八位可能是数字0-9，也可能是X
        */
        var idcard_patter = /^[1-9][0-9]{5}([1][9][0-9]{2}|[2][0][0|1][0-9])([0][1-9]|[1][0|1|2])([0][1-9]|[1|2][0-9]|[3][0|1])[0-9]{3}([0-9]|[X])$/;

        // 判断格式是否正确
        var format = idcard_patter.test(idcode);

        // 返回验证结果，校验码和格式同时正确才算是合法的身份证号码
        return last === last_no && format ? true : false;
    }

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