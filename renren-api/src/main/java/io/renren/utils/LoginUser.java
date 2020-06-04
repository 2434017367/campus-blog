package io.renren.utils;

import io.renren.common.utils.HttpContextUtils;
import io.renren.tb.entity.TbUserEntity;
import org.apache.commons.lang.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @email 2434017367@qq.com
 * @author: zhy
 * @date: 2019/9/29
 * @time: 16:01
 */
public class LoginUser {

    public static TbUserEntity getLoginUser(){
        //获取request
        HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
        HttpSession session = request.getSession();
        TbUserEntity loginUser = (TbUserEntity)session.getAttribute("loginUser");
        return loginUser;
    }

    public static Long getLoginUserId(){
        //获取request
//        HttpServletRequest request = HttpContextUtils.getHttpServletRequest();
//        String userId = request.getParameter("userId");
//        if (StringUtils.isNotBlank(userId)){
//            return Long.parseLong(userId);
//        }else {
//            HttpSession session = request.getSession();
//            TbUserEntity loginUser = (TbUserEntity)session.getAttribute("loginUser");
//            return loginUser.getUserId();
//        }
        return getLoginUser().getUserId();
    }



}
