package io.renren.tb.dao;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.renren.tb.entity.TbPostEntity;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import javafx.scene.control.Pagination;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

/**
 * 帖子表
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Mapper
public interface TbPostDao extends BaseMapper<TbPostEntity> {

    public List<TbPostEntity> queryPage(Page page, Map<String, Object> map);

}
