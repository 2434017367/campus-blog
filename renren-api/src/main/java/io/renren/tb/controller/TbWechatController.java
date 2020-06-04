package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbWechatEntity;
import io.renren.tb.service.TbWechatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 微信表
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@RestController
@RequestMapping("tb/tbwechat")
public class TbWechatController {
    @Autowired
    private TbWechatService tbWechatService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbWechatService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TbWechatEntity tbWechat = tbWechatService.getById(id);

        return R.ok().put("tbWechat", tbWechat);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbWechatEntity tbWechat){
        tbWechatService.save(tbWechat);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbWechatEntity tbWechat){
        ValidatorUtils.validateEntity(tbWechat);
        tbWechatService.updateById(tbWechat);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tbWechatService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
