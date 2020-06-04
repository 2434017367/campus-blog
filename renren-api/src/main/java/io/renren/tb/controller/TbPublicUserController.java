package io.renren.tb.controller;

import io.renren.common.utils.PageUtils;
import io.renren.common.utils.R;
import io.renren.common.validator.ValidatorUtils;
import io.renren.tb.entity.TbPublicUserEntity;
import io.renren.tb.service.TbPublicUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;



/**
 * 公众用户关联号
 *
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@RestController
@RequestMapping("tb/tbpublicuser")
public class TbPublicUserController {
    @Autowired
    private TbPublicUserService tbPublicUserService;

    /**
     * 列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params){
        PageUtils page = tbPublicUserService.queryPage(params);

        return R.ok().put("page", page);
    }


    /**
     * 信息
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        TbPublicUserEntity tbPublicUser = tbPublicUserService.getById(id);

        return R.ok().put("tbPublicUser", tbPublicUser);
    }

    /**
     * 保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody TbPublicUserEntity tbPublicUser){
        tbPublicUserService.save(tbPublicUser);

        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody TbPublicUserEntity tbPublicUser){
        ValidatorUtils.validateEntity(tbPublicUser);
        tbPublicUserService.updateById(tbPublicUser);
        
        return R.ok();
    }

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        tbPublicUserService.removeByIds(Arrays.asList(ids));

        return R.ok();
    }

}
