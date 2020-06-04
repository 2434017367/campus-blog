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
@TableName("tb_comment")
public class TbCommentEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	@TableId
	private Long id;
	/**
	 * 帖子id
	 */
	private Long postId;
	/**
	 * 用户id
	 */
	private Long userId;
	/**
	 * 如果这是一条回复 reply_user_id 就是回复了谁的用户id
	 */
	private Long replyUserId;
	/**
	 * 内容
	 */
	private String content;
	/**
	 * 状态 0：正常 1：禁止 2：删除
	 */
	private Integer status;
	/**
	 * 创建时间
	 */
	private Date createDate;

}
