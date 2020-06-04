package io.renren.tb.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.renren.common.utils.PageUtils;
import io.renren.tb.dao.TbAnonymousDao;
import io.renren.tb.dao.TbPostDao;
import io.renren.tb.entity.TbPostEntity;
import io.renren.tb.service.TbPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service("tbPostService")
public class TbPostServiceImpl extends ServiceImpl<TbPostDao, TbPostEntity> implements TbPostService {

    @Autowired
    private TbPostDao tbPostDao;

    @Autowired
    private TbAnonymousDao tbAnonymousDao;


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        tbPostDao.queryPage(new Page(), params);
        return null;
    }


}
