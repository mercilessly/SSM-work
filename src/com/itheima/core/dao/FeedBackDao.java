/**
 * FileName: FeedBackDao
 * Author:   wlc
 * Date:     2019/7/1 下午3:26
 * Description:
 */
package com.itheima.core.dao;

import com.itheima.core.po.FeedBack;
import java.util.List;

public interface FeedBackDao {
    // 反馈列表
    List<FeedBack> selectFeedBackList(FeedBack feedBack);

    // 反馈数
    Integer selectFeedBackListCount(FeedBack feedBack);

    // 通过code查询反馈
    FeedBack getFeedBackByCode(String feedback_code);

    // 通过id查询反馈
    FeedBack getFeedBackById(Integer id);

    // 删除反馈
    int deleteFeedBack(Integer id);

    // 条件查看反馈总数
    Integer selectFeedBackListByCount(String feedback_code);

    //多字段匹配查询
    List<FeedBack> selectFeedBackListBy(String feedback_code);

    // 修改状态
    int changeFeedBackStatus(Integer id);

    //未读总数
    Integer selectStatusCount();

    //未读反馈列表
    List<FeedBack> getFeedBackByStatusList(FeedBack feedBack);

    /**
     * 批量删除
     */
    void batchDeletes(List delList);

    /*提交反馈*/
    int sendFeedBack(FeedBack feedBack);
}
