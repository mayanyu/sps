package com.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/**
 * @author mayanyu.
 * @email mayanyu@chehejia.com.
 * @date 2017/9/4 下午11:05.
 */
@Controller
public class R {

    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String view() {
        return "test";
    }

    @RequestMapping(value = "/vidoe", method = RequestMethod.GET)
    public ModelAndView viewVideo(String zbmc, String zbms, String sfzh, String zbtx, String zxrs, String sp, String fjh, String jbs, String gzs) throws UnsupportedEncodingException {
        Map<String, String> map = new HashMap<String, String>();
//        //主播名称
//        map.put("zbmc",new String(zbmc.getBytes("ISO-8859-1"), "UTF-8"));
//        map.put("sfzh",new String(sfzh.getBytes("ISO-8859-1"), "UTF-8"));
//        //主播描述
//        map.put("zbms",new String(zbms.getBytes("ISO-8859-1"), "UTF-8"));
//        //主播头像
//        map.put("zbtx",new String(zbtx.getBytes("ISO-8859-1"), "UTF-8"));
//        //在线人数
//        map.put("zxrs",new String(zxrs.getBytes("ISO-8859-1"), "UTF-8"));
//        //视频
//        map.put("sp",new String(sp.getBytes("ISO-8859-1"), "UTF-8"));
//        //房间号
//        map.put("fjh",new String(fjh.getBytes("ISO-8859-1"), "UTF-8"));
//        //直播金币
//        map.put("jbs",new String(jbs.getBytes("ISO-8859-1"), "UTF-8"));
//        //关注数
//        map.put("gzs",new String(gzs.getBytes("ISO-8859-1"), "UTF-8"));
        //主播名称
        map.put("zbmc", zbmc);
        map.put("sfzh", sfzh);
        //主播描述
        map.put("zbms", zbms);
        //主播头像
        map.put("zbtx", zbtx);
        //在线人数
        map.put("zxrs", zxrs);
        //视频
        map.put("sp", sp);
        //房间号
        map.put("fjh", fjh);
        //直播金币
        map.put("jbs", jbs);
        //关注数
        map.put("gzs", gzs);

        return new ModelAndView("live_video", map);
    }

}
