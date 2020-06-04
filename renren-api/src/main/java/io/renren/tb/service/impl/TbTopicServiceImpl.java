package io.renren.tb.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.tb.dao.TbTopicDao;
import io.renren.tb.entity.TbTopicEntity;
import io.renren.tb.service.TbTopicService;


@Service("tbTopicService")
public class TbTopicServiceImpl extends ServiceImpl<TbTopicDao, TbTopicEntity> implements TbTopicService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TbTopicEntity> page = this.page(
                new Query<TbTopicEntity>().getPage(params),
                new QueryWrapper<TbTopicEntity>()
        );

        return new PageUtils(page);
    }

}
