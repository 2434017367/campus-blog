package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbPublicEntity;
import io.renren.tb.service.TbPublicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 公众号表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@RestController
@RequestMapping("tb/tbpublic")
public class TbPublicController {
    @Autowired
    private TbPublicService tbPublicService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbPublicService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{publicId}")
    public R info(@PathVariable("publicId") Long publicId){
        TbPublicEntity tbPublic = tbPublicService.getById(publicId);

        return R.ok().put("tbPublic", tbPublic);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbPublicEntity tbPublic){
        tbPublicService.save(tbPublic);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbPublicEntity tbPublic){
        ValidatorUtils.validateEntity(tbPublic);
        tbPublicService.updateById(tbPublic);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] publicIds){
        tbPublicService.removeByIds(Arrays.asList(publicIds));

        return R.ok();
    }

}
