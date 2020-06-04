package io.renren.tb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.tb.entity.TbWechatEntity;

import java.util.Map;

/**
 * 微信表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
public interface TbWechatService extends IService<TbWechatEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

