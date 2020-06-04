package io.renren.tb.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户关注表
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Data
@TableName("tb_attention")
public class TbAttentionEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 用户id
	 */
	private Long userId;
	/**
	 * 关注用户id
	 */
	private Long attentionUserId;
	/**
	 * 状态 0：正常 1：禁止 2：删除
	 */
	private Integer status;
	/**
	 * 创建时间
	 */
	private Date createDate;

}
