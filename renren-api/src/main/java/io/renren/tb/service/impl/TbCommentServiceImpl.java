package io.renren.tb.service.impl;

import io.renren.common.utils.Query;
import org.springframework.stereotype.Service;
import java.util.Map;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;

import io.renren.tb.dao.TbCommentDao;
import io.renren.tb.entity.TbCommentEntity;
import io.renren.tb.service.TbCommentService;


@Service("tbCommentService")
public class TbCommentServiceImpl extends ServiceImpl<TbCommentDao, TbCommentEntity> implements TbCommentService {

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        IPage<TbCommentEntity> page = this.page(
                new Query<TbCommentEntity>().getPage(params),
                new QueryWrapper<TbCommentEntity>()
        );

        return new PageUtils(page);
    }

}
