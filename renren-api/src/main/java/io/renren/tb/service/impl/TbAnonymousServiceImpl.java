package io.renren.tb.service.impl;

import io.renren.common.utils.Query;
import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;

import io.renren.tb.dao.TbAnonymousDao;
import io.renren.tb.entity.TbAnonymousEntity;
import io.renren.tb.service.TbAnonymousService;


@Service("tbAnonymousService")
public class TbAnonymousServiceImpl extends ServiceImpl<TbAnonymousDao, TbAnonymousEntity> implements TbAnonymousService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TbAnonymousEntity> page = this.page(
                new Query<TbAnonymousEntity>().getPage(params),
                new QueryWrapper<TbAnonymousEntity>()
        );

        return new PageUtils(page);
    }

}
