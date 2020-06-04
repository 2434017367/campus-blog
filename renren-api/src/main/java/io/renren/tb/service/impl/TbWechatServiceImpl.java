package io.renren.tb.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.common.utils.Query;

import io.renren.tb.dao.TbWechatDao;
import io.renren.tb.entity.TbWechatEntity;
import io.renren.tb.service.TbWechatService;


@Service("tbWechatService")
public class TbWechatServiceImpl extends ServiceImpl<TbWechatDao, TbWechatEntity> implements TbWechatService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TbWechatEntity> page = this.page(
                new Query<TbWechatEntity>().getPage(params),
                new QueryWrapper<TbWechatEntity>()
        );

        return new PageUtils(page);
    }

}
