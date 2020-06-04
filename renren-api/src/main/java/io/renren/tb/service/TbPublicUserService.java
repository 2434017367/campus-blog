package io.renren.tb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.tb.entity.TbPublicUserEntity;

import java.util.Map;

/**
 * 公众用户关联号
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
public interface TbPublicUserService extends IService<TbPublicUserEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

