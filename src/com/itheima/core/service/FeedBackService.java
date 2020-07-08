/**
 * FileName: FeedBackService
 * Author:   wlc
 * Date:     2019/7/1 下午3:53
 * Description:反馈
 */
package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.FeedBack;

import java.util.List;

public interface FeedBackService {
    // 查询反馈列表
    Page<FeedBack> findFeedBackList(Integer page, Integer rows);

    // 通过code查询反馈
    FeedBack getFeedBackByCode(String feedBack_code);

    // 通过多字段查询反馈
    Page<FeedBack> findFeedBackListBy(Integer page, Integer rows, String feedback_code);

    // 通过id查询反馈
    FeedBack getFeedBackById(Integer id);

    // 查询反馈列表
    Page<FeedBack> findFeedBackStatusList(Integer page, Integer rows);

    // 删除客户
    int deleteFeedBack(Integer id);

    // 修改状态
    int changeFeedBackStatus(Integer id);

//    查询未读总数
    int selectStatusCount();

    /**
     * 批量删除
     */
    void batchDeletes(List delList);
    /*提交反馈*/
    int sendFeedBack(FeedBack feedBack);
}
