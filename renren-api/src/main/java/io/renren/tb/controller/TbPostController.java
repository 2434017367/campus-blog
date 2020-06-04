package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbPostEntity;
import io.renren.tb.service.TbPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 帖子表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@RestController
@RequestMapping("tb/tbpost")
public class TbPostController {
    @Autowired
    private TbPostService tbPostService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbPostService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TbPostEntity tbPost = tbPostService.getById(id);

        return R.ok().put("tbPost", tbPost);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbPostEntity tbPost){
        tbPostService.save(tbPost);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbPostEntity tbPost){
        ValidatorUtils.validateEntity(tbPost);
        tbPostService.updateById(tbPost);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tbPostService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
