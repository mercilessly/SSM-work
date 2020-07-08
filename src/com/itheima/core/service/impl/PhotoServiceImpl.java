/**
 * FileName: PhotoServiceImpl
 * Author:   wlc
 * Date:     2019/7/4 上午9:31
 * Description:
 */
package com.itheima.core.service.impl;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.PhotoDao;
import com.itheima.core.po.Photo;
import com.itheima.core.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("photoService")
public class PhotoServiceImpl implements PhotoService {
    @Autowired
    private PhotoDao photoDao;
    @Override
    public Page<Photo> getPhotoByPage(String page){
        // 查询客户列表
        List<Photo> photos =
                photoDao.getPhotoByPage(page);
        // 创建Page返回对象
        Page<Photo> result = new Page<>();
        result.setRows(photos);
        return result;
    }
//图片列表
    @Override
    public Page<Photo> findPhotoList(Integer page, Integer rows) {
        Photo photo=new Photo();
        // 当前页
        photo.setStart((page - 1) * rows);
        // 每页数
        photo.setRows(rows);
        // 查询客户列表
        List<Photo> photos =
                photoDao.selectPhotoList(photo);
        // 查询客户列表总记录数
        Integer count = photoDao.selectPhotoListCount(photo);
        // 创建Page返回对象
        Page<Photo> result = new Page<>();
        result.setPage(page);
        result.setRows(photos);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public Photo getPhotoById(Integer id) {
        Photo photo = photoDao.getPhotoById(id);
        return photo;
    }

    @Override
    public int updatePhoto(Photo photo) {
        return photoDao.updatePhoto(photo);
    }
}
