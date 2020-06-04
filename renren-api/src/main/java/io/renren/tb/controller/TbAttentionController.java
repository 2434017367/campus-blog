package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbAttentionEntity;
import io.renren.tb.service.TbAttentionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 用户关注表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@RestController
@RequestMapping("tb/tbattention")
public class TbAttentionController {
    @Autowired
    private TbAttentionService tbAttentionService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbAttentionService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TbAttentionEntity tbAttention = tbAttentionService.getById(id);

        return R.ok().put("tbAttention", tbAttention);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbAttentionEntity tbAttention){
        tbAttentionService.save(tbAttention);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbAttentionEntity tbAttention){
        ValidatorUtils.validateEntity(tbAttention);
        tbAttentionService.updateById(tbAttention);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tbAttentionService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
