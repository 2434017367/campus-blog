package io.renren.tb.dao;

import io.renren.tb.entity.TbPublicUserEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;

/**
 * 公众用户关联号
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Mapper
public interface TbPublicUserDao extends BaseMapper<TbPublicUserEntity> {
	
}
