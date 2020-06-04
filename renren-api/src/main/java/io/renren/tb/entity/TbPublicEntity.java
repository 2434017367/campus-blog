package io.renren.tb.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 公众号表
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Data
@TableName("tb_public")
public class TbPublicEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long publicId;
	/**
	 * 名称
	 */
	private String name;
	/**
	 * 头像
	 */
	private String image;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 登录账号
	 */
	private String account;
	/**
	 * 部门id
	 */
	private Long deptId;
	/**
	 * 创建管理员id
	 */
	private Long createAdminId;
	/**
	 * 状态 0：正常 1：禁止 2：删除
	 */
	private Integer status;
	/**
	 * 创建时间
	 */
	private Date createDate;

}
