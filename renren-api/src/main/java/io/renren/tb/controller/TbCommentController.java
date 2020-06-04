package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbCommentEntity;
import io.renren.tb.service.TbCommentService;
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
@RequestMapping("tb/tbcomment")
public class TbCommentController {
    @Autowired
    private TbCommentService tbCommentService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbCommentService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TbCommentEntity tbComment = tbCommentService.getById(id);

        return R.ok().put("tbComment", tbComment);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbCommentEntity tbComment){
        tbCommentService.save(tbComment);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbCommentEntity tbComment){
        ValidatorUtils.validateEntity(tbComment);
        tbCommentService.updateById(tbComment);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tbCommentService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
