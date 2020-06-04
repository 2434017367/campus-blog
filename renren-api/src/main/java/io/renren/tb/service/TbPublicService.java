package io.renren.tb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.tb.entity.TbPublicEntity;

import java.util.Map;

/**
 * 公众号表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
public interface TbPublicService extends IService<TbPublicEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

