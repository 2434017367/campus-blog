package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbAnonymousEntity;
import io.renren.tb.service.TbAnonymousService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 匿名用户表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@RestController
@RequestMapping("tb/tbanonymous")
public class TbAnonymousController {
    @Autowired
    private TbAnonymousService tbAnonymousService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbAnonymousService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TbAnonymousEntity tbAnonymous = tbAnonymousService.getById(id);

        return R.ok().put("tbAnonymous", tbAnonymous);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbAnonymousEntity tbAnonymous){
        tbAnonymousService.save(tbAnonymous);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbAnonymousEntity tbAnonymous){
        ValidatorUtils.validateEntity(tbAnonymous);
        tbAnonymousService.updateById(tbAnonymous);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tbAnonymousService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
