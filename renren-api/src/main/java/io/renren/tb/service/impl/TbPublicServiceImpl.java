package io.renren.tb.service.impl;

import io.renren.common.utils.Query;
import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;

import io.renren.tb.dao.TbPublicDao;
import io.renren.tb.entity.TbPublicEntity;
import io.renren.tb.service.TbPublicService;


@Service("tbPublicService")
public class TbPublicServiceImpl extends ServiceImpl<TbPublicDao, TbPublicEntity> implements TbPublicService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TbPublicEntity> page = this.page(
                new Query<TbPublicEntity>().getPage(params),
                new QueryWrapper<TbPublicEntity>()
        );

        return new PageUtils(page);
    }

}
