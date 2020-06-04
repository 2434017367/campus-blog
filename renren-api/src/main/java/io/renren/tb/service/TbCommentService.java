package io.renren.tb.service;

import com.baomidou.mybatisplus.extension.service.IService;
import io.renren.common.utils.PageUtils;
import io.renren.tb.entity.TbCommentEntity;

import java.util.Map;

/**
 * 话题表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
public interface TbCommentService extends IService<TbCommentEntity> {

    PageUtils queryPage(Map<String, Object> params);
}

