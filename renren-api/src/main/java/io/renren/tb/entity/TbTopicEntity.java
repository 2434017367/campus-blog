package io.renren.tb.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 话题表
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Data
@TableName("tb_topic")
public class TbTopicEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 标题
	 */
	private String title;
	/**
	 * 内容
	 */
	private String content;
	/**
	 * 主图
	 */
	private String image;
	/**
	 * 所能看到的部门id
	 */
	private Long deptId;
	/**
	 * 状态 0：正常 1：禁止 2：删除
	 */
	private Integer status;
	/**
	 * 创建时间
	 */
	private Date createDate;

}
