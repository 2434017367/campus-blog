package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbTopicEntity;
import io.renren.tb.service.TbTopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 话题表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@RestController
@RequestMapping("tb/tbtopic")
public class TbTopicController {
    @Autowired
    private TbTopicService tbTopicService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbTopicService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TbTopicEntity tbTopic = tbTopicService.getById(id);

        return R.ok().put("tbTopic", tbTopic);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbTopicEntity tbTopic){
        tbTopicService.save(tbTopic);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbTopicEntity tbTopic){
        ValidatorUtils.validateEntity(tbTopic);
        tbTopicService.updateById(tbTopic);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tbTopicService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
