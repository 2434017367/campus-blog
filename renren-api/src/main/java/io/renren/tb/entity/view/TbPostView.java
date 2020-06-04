package io.renren.tb.entity.view;

import java.util.Date;

/**
 * @email 2434017367@qq.com
 * @author: zhy
 * @date: 2019/9/29
 * @time: 20:02
 */
public class TbPostView {

    /**
     * 帖子id
     */
    private Long id;
    /**
     * 发布用户id
     */
    private Long userId;

    /**
     * 头像
     */
    private String headImage;

    /**
     * 用户名
     */
    private String username;

    /**
     * 内容
     */
    private String content;

    /**
     * 图片
     */
    private String images;

    /**
     * 创建时间
     */
    private Date createDate;

    /**
     * 类型 0：实名  1：匿名 2：公众号
     */
    private Integer type;

    /**
     * 对应的话题id
     */
    private Long topicId;

    /**
     * 话题名称
     */
    private String topicTitle;

    /**
     * 点赞数
     */
    private Integer likeNumber;

    /**
     * 评论数
     */
    private Integer commentNumber;

}
