/**
 * FileName: PhotoDao
 * Author:   wlc
 * Date:     2019/7/4 上午9:34
 * Description:
 */
package com.itheima.core.dao;

import com.itheima.core.po.Photo;

import java.util.List;

public interface PhotoDao {
    //按类型查找
    List<Photo> getPhotoByPage(String page);

    // 图片列表
    List<Photo> selectPhotoList(Photo photo);

    // 图片数
    Integer selectPhotoListCount(Photo photo);

    // 通过id查询图片
    Photo getPhotoById(Integer id);

    // 更新图片信息
    int updatePhoto(Photo photo);
}
