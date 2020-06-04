package io.renren.tb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.tb.entity.TbAnonymousEntity;

import java.util.Map;

/**
 * 匿名用户表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
public interface TbAnonymousService extends IService<TbAnonymousEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

