package io.renren.tb.dao;

import io.renren.tb.entity.TbAttentionEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 用户关注表
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Mapper
public interface TbAttentionDao extends BaseMapper<TbAttentionEntity> {
	
}
