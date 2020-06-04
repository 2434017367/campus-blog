package io.renren.tb.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.tb.dao.TbPublicUserDao;
import io.renren.tb.entity.TbPublicUserEntity;
import io.renren.tb.service.TbPublicUserService;


@Service("tbPublicUserService")
public class TbPublicUserServiceImpl extends ServiceImpl<TbPublicUserDao, TbPublicUserEntity> implements TbPublicUserService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TbPublicUserEntity> page = this.page(
                new Query<TbPublicUserEntity>().getPage(params),
                new QueryWrapper<TbPublicUserEntity>()
        );

        return new PageUtils(page);
    }

}
