<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>领客先行直播</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">

    <link rel="stylesheet" type="text/css" href="./css/metinfo.css">
    <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./css/live_video.css">

    <link rel="stylesheet" type="text/css" href="./css/common.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/common.js"></script>
    <script src="js/tab.js"></script>
    <script>
        $(function () {
            var tab = new Tab({
                tabsContainer: 'm_gift_header',
                tab: 'm_gift_type',
                contentContainer: 'm_gift_content ',
                content: 'm_gift_content_box'
            });

            var tab2 = new Tab({
                tabsContainer: 'm_gift_content_box',
                tab: 'm_gift_content_box_item'
            });

            var tab3 = new Tab({
                tabsContainer: 'm_rank_header_box',
                tab: 'm_rank_type'
            });

            var tab4 = new Tab({
                tabsContainer: 'm_chat_header_box',
                tab: 'm_chat_type',
                contentContainer: 'm_chat_content',
                content: 'm_chat_content_detail'
            });

            $.ajax({
                url:'./data/forbidden_word.json',
                dataType:'json',
                success:function (data) {
                    getWord(data);
                }
            });

            function getWord(word) {
                //发言
                var msgContainer = $('#msgBox');
                var forbiddenWords = word;
                var makeChar = function (len) {
                    var char = '*'
                    for(var i=0;i<len-1;i++){
                        char+='*';
                    }
                    return char;
                };
                $('#send_msg').click(function () {
                    var value = $('#msg').val();
                    for(var i=0;i<forbiddenWords.length;i++){
                        if(value.indexOf(forbiddenWords[i])!=-1){
                            var len = forbiddenWords[i].length;
                            value = value.replace(forbiddenWords[i],makeChar(len));
                        }
                    }
                    var msg = '<li><span class="m_chat_content_detail_item_from">匿名：</span>' + value + '</li>'
                    msgContainer.append(msg);
                });
            }


        });
    </script>

</head>
<body>
    <%@include file="head.jsp" %>

    <section class="m_wrapper clearfix">
        <div>
            <ol class="breadcrumb breadcrumb_fix">
                <li><a href="/" title="首页">首页</a></li>
                <li><a href="#">直播</a></li>
                <li><a href="#">视频</a></li>
            </ol>
        </div>
        <div class="m_left_box">
            <div class="m_author_info_box clearfix">
                <div class="m_author_photo fl"><img src="./img/${zbtx}" alt="" title="头像"></div>
                <%--<div class="m_author_info fl">
                    <div class="m_author_info_name">${zbmc}</div>
                    <div class="m_author_info_level clearfix">
                        <div class="level level1 mgt5"></div>
                        <div class="m_author_info_level_progress">
                            <span class="m_author_info_level_tip">${jbs}金币</span>
                            <div class="m_author_info_level_progress_deep">
                                <div></div>
                            </div>
                        </div>
                        <div class="level level2 mgt5"></div>
                    </div>
                    <div class="m_author_info_room">
                        <span class="m_author_info_room_num">房间号<strong>${fjh}</strong></span>
                        <span class="m_author_info_room_attention ">关注数<strong>${gzs}</strong></span>
                        <a class="m_author_info_room_add_attention">+关注</a>
                        <a class="m_author_info_room_complain" href="./complain.jsp">&nbsp;&nbsp;投诉&nbsp;&nbsp;</a>
                    </div>
                    <div class="m_author_info_room">
                        <span class="m_author_info_room_num">身份证号<strong>${sfzh}</strong></span>
                    </div>
                </div>--%>
                <div class="m_author_info fl">
                    <div class="m_author_info_name pdl5">${zbmc}</div>
                    <div class="m_author_info_level clearfix">
                        <div class="level level1 mgt5"></div>
                        <div class="m_author_info_level_progress">
                            <span class="m_author_info_level_tip">还差${jbs}金币</span>
                            <div class="m_author_info_level_progress_deep">
                                <div></div>
                            </div>
                        </div>
                        <div class="level level2 mgt5"></div>
                    </div>
                    <div class="m_author_info_idCard pdl5">
                        <span>身份证号：${sfzh}</span>
                    </div>
                </div>
                <div class="m_room_info fl">
                    <p>
                        <span class="m_room_info_num">房间号：<strong>${fjh}</strong></span>
                    </p>
                    <p>
                        <span class="m_room_info_attention ">关注数：<strong>${gzs}</strong></span>
                    </p>
                    <p>
                        <button class="m_room_add_attention">+关注</button>
                        <button class="m_room_add_attention" style="background-color: black" onclick="window.location='./complain.jsp'">&nbsp;投诉&nbsp;</button>
                    </p>

                </div>
            </div>


            <div class="m_video" style="position: relative">
                <img src="./img/logoquan14440786348.png" width="100" height="100" alt="" style="position: absolute;top:0;right:0;width:100px;height:100px;background-color: black;">
                <video width="100%" height="100%" controls autoplay>
                    <source src="./doc/${sp}" type="video/mp4">
                </video>
            </div>

            <div class="m_goods clearfix">
                <div class="m_guard fl">
                    <div class="m_guard_header clearfix">
                        <div class="m_guard_rest fl">守护(0/20)</div>
                        <div class="m_guard_open fl"><span>开通</span></div>
                        <div class="m_guard_store fr">
                            <a href="">点我收藏哦</a>
                        </div>
                    </div>
                    <div class="m_guard_position">
                        <ul class="clearfix">
                            <li class="m_guard_position_item">
                                <a class="m_guard_position_item_detail"></a>
                            </li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                            <li class="m_guard_position_item"><a class="m_guard_position_item_detail"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="m_gift fl">
                    <div class="m_gift_header">
                        <ul class="m_gift_header_box clearfix">
                            <li class="m_gift_type active">幸运</li>
                            <li class="m_gift_type">普通</li>
                            <li class="m_gift_type">高级</li>
                            <li class="m_gift_type">奢华</li>
                            <li class="m_gift_type">时尚</li>
                            <li class="m_gift_type">浪漫</li>
                            <li class="m_gift_type">伴舞</li>
                            <li class="m_gift_type">特权</li>
                            <li class="m_gift_type last">我的仓库</li>
                        </ul>
                    </div>
                    <div class="m_gift_content">
                        <!--幸运-->
                        <ul class="m_gift_content_box active clearfix">
                            <li class="m_gift_content_box_item active">
                                <img src="img/gift/9.png" alt="" height="42" width="42">
                                <span>金牌</span>
                                <div class="m_gift_content_box_item_price">100个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/10.png" alt="" height="42" width="42">
                                <span>金条</span>
                                <div class="m_gift_content_box_item_price">800个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/19.png" alt="" height="42" width="42">
                                <span>西瓜</span>
                                <div class="m_gift_content_box_item_price">10个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/20.png" alt="" height="42" width="42">
                                <span>香蕉</span>
                                <div class="m_gift_content_box_item_price">20个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/24.png" alt="" height="42" width="42">
                                <span>打火机</span>
                                <div class="m_gift_content_box_item_price">50个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/25.png" alt="" height="42" width="42">
                                <span>爱心礼盒</span>
                                <div class="m_gift_content_box_item_price">30个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/26.png" alt="" height="42" width="42">
                                <span>钞票</span>
                                <div class="m_gift_content_box_item_price">20个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/27.png" alt="" height="42" width="42">
                                <span>相机</span>
                                <div class="m_gift_content_box_item_price">100个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/28.png" alt="" height="42" width="42">
                                <span>蛋糕</span>
                                <div class="m_gift_content_box_item_price">70个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/29.png" alt="" height="42" width="42">
                                <span>狗狗公仔</span>
                                <div class="m_gift_content_box_item_price">40个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/30.png" alt="" height="42" width="42">
                                <span>电视</span>
                                <div class="m_gift_content_box_item_price">100个金币</div>
                            </li>
                            <li class="m_gift_content_box_item">
                                <img src="img/gift/32.png" alt="" height="42" width="42">
                                <span>啤酒</span>
                                <div class="m_gift_content_box_item_price">10个金币</div>
                            </li>

                        </ul>


                    </div>
                    <div class="m_gift_send_info">
                        <div class="m_gift_send_gift clearfix">
                            <span class="m_gift_send_tip fl">数量</span>
                            <div class="m_gift_send_count_input fl">
                                <input type="text" id="send_count" value="555">
                            </div>
                            <span class="m_gift_send_tip fl">给</span>
                            <div class="m_gift_send_count_input fl">
                                <input type="text" value="${zbmc}">
                            </div>
                            <a class="m_gift_reward fl"></a>
                            <div class="m_gift_send_func_btn fr">
                                <a href="login.jsp" class="m_gift_send_func_btn_send fl">赠送</a>
                                <a href="recharge.jsp" class="m_gift_send_func_btn_recharge fl">充值</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
        <div class="m_right_box">
            <div class="m_rank_box">
                <div class="m_rank_header">
                    <ul class="m_rank_header_box clearfix">
                        <li class="m_rank_type active">本日之星</li>
                        <li class="m_rank_type">本周之星</li>
                        <li class="m_rank_type">总榜排行</li>
                    </ul>
                </div>
                <div class="m_rank_content">

                </div>
            </div>
            <div class="m_chat_room">
                <div class="m_chat_box">
                    <div class="m_chat_header">
                        <ul class="m_chat_header_box clearfix">
                            <li class="m_chat_type active">综合</li>
                            <li class="m_chat_type">礼物</li>
                            <li class="m_chat_type">点歌</li>
                            <li class="m_chat_type">观众</li>
                        </ul>
                    </div>
                    <div class="m_chat_content">
                        <div class="m_chat_content_detail active">
                            <p class="m_chat_content_detail_tip"><strong>房间公告:</strong></p>
                            <ul id="msgBox" class="m_chat_content_detail_item clearfix">
                                <!--<li><span class="m_chat_content_detail_item_from">匿名：</span>你好</li>-->
                            </ul>
                        </div>
                        <div class="m_chat_content_detail"></div>
                        <div class="m_chat_content_detail"></div>
                        <div class="m_chat_content_detail"></div>
                    </div>
                </div>
                <div class="m_chat_form">
                    <div class="m_chat_form_to clearfix">
                        <span class="fl" style="margin-left: 10px;">对</span>
                        <select class="m_chat_form_to_select fl">
                            <option value="">所有人</option>
                            <option>主播</option>
                        </select>
                    </div>
                    <div class="m_chat_form_input">
                        <input id="msg" type="text">
                        <button id="send_msg" class="m_chat_form_input_send">发言</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file="foot.jsp" %>
</body>
</html>