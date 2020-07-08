/**
 * FileName: FeedBackServiceImpl
 * Author:   wlc
 * Date:     2019/7/1 下午3:56
 * Description:
 */
package com.itheima.core.service.impl;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.FeedBackDao;
import com.itheima.core.po.FeedBack;
import com.itheima.core.service.FeedBackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service(value = "feedBackService")
public class FeedBackServiceImpl implements FeedBackService {
    @Autowired
    private FeedBackDao feedBackDao;

    @Override
    public Page<FeedBack> findFeedBackList(Integer page, Integer rows) {
        FeedBack feedBack=new FeedBack();
        // 当前页
        feedBack.setStart((page - 1) * rows);
        // 每页数
        feedBack.setRows(rows);
        // 查询客户列表
        List<FeedBack> feedBacks =
                feedBackDao.selectFeedBackList(feedBack);
        // 查询客户列表总记录数
        Integer count = feedBackDao.selectFeedBackListCount(feedBack);
        // 创建Page返回对象
        Page<FeedBack> result = new Page<>();
        result.setPage(page);
        result.setRows(feedBacks);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public Page<FeedBack> findFeedBackListBy(Integer page, Integer rows,String feedback_code) {
        FeedBack feedBack=new FeedBack();
        // 当前页
        feedBack.setStart((page - 1) * rows);
        // 每页数
        feedBack.setRows(rows);
        // 查询客户列表
        List<FeedBack> feedBacks =
                feedBackDao.selectFeedBackListBy(feedback_code);
        // 查询客户列表总记录数
        Integer count = feedBackDao.selectFeedBackListByCount(feedback_code);
        // 创建Page返回对象
        Page<FeedBack> result = new Page<>();
        result.setPage(page);
        result.setRows(feedBacks);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public FeedBack getFeedBackByCode(String feedback_code) {
        FeedBack feedBack = feedBackDao.getFeedBackByCode(feedback_code);
        return feedBack;
    }
    @Override
    public FeedBack getFeedBackById(Integer id) {
        FeedBack feedBack = feedBackDao.getFeedBackById(id);
        return feedBack;
    }

    @Override
    public Page<FeedBack> findFeedBackStatusList(Integer page, Integer rows) {
        FeedBack feedBack=new FeedBack();
        // 当前页
        feedBack.setStart((page - 1) * rows);
        // 每页数
        feedBack.setRows(rows);
        // 查询客户列表
        List<FeedBack> feedBacks =
                feedBackDao.getFeedBackByStatusList(feedBack);
        // 查询客户列表总记录数
        Integer count = feedBackDao.selectStatusCount();
        // 创建Page返回对象
        Page<FeedBack> result = new Page<>();
        result.setPage(page);
        result.setRows(feedBacks);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int selectStatusCount(){
        Integer count = feedBackDao.selectStatusCount();
        return count;
    }

    @Override
    public int deleteFeedBack(Integer id) {
        return feedBackDao.deleteFeedBack(id);
    }

    @Override
    public int changeFeedBackStatus(Integer id) {
        return feedBackDao.changeFeedBackStatus(id);
    }

    /**
     * 批量删除
     */
    @Override
    public void batchDeletes(List delList) {
        feedBackDao.batchDeletes(delList);
    }

    @Override
    public  int sendFeedBack(FeedBack feedBack){return feedBackDao.sendFeedBack(feedBack);}
}
