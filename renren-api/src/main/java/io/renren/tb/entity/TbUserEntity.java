package io.renren.tb.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 用户表
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Data
@TableName("tb_user")
public class TbUserEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long userId;
	/**
	 * 用户名称
	 */
	private String username;
	/**
	 * 头像
	 */
	private String image;
	/**
	 * 密码
	 */
	private String password;
	/**
	 * 姓名
	 */
	private String name;
	/**
	 * 学号,登录账号
	 */
	private String account;
	/**
	 * 认证图片，学生证照片
	 */
	private String attestImage;
	/**
	 * 微信id
	 */
	private Long wechatId;
	/**
	 * 部门id
	 */
	private Long deptId;
	/**
	 * 等级
	 */
	private Integer grade;
	/**
	 * 审核管理员id
	 */
	private Long verifyAdminId;
	/**
	 * 状态 0：正常 1：禁止 2：删除  -1:待认证
	 */
	private Integer status;
	/**
	 * 创建时间
	 */
	private Date createDate;

}
