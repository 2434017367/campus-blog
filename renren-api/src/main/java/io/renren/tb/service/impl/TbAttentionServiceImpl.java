package io.renren.tb.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.tb.dao.TbAttentionDao;
import io.renren.tb.entity.TbAttentionEntity;
import io.renren.tb.service.TbAttentionService;


@Service("tbAttentionService")
public class TbAttentionServiceImpl extends ServiceImpl<TbAttentionDao, TbAttentionEntity> implements TbAttentionService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TbAttentionEntity> page = this.page(
                new Query<TbAttentionEntity>().getPage(params),
                new QueryWrapper<TbAttentionEntity>()
        );

        return new PageUtils(page);
    }

}
