package io.renren.tb.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 帖子表
 * 
 * @author zhy
 * @email 24340173670@qq.com
 * @date 2019-09-29 15:28:24
 */
@Data
@TableName("tb_post")
public class TbPostEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 发布用户id
	 */
	private Long userId;
	/**
	 * 内容
	 */
	private String content;
	/**
	 * 图片
	 */
	private String images;
	/**
	 * 对应的话题id
	 */
	private Long topicId;
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

	/**
	 * 类型 0：实名  1：匿名 2：公众号
	 */
	private Integer type;

	/**
	 * 匿名用户id
	 */
	private Long anonymousId;

	/**
	 * 公众号id
	 */
	private Long public_id;

	private Integer grade;


	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Long getTopicId() {
		return topicId;
	}

	public void setTopicId(Long topicId) {
		this.topicId = topicId;
	}

	public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Long getAnonymousId() {
		return anonymousId;
	}

	public void setAnonymousId(Long anonymousId) {
		this.anonymousId = anonymousId;
	}

	public Long getPublic_id() {
		return public_id;
	}

	public void setPublic_id(Long public_id) {
		this.public_id = public_id;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}
}
