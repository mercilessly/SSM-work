/**
 * FileName: PhotoService
 * Author:   wlc
 * Date:     2019/7/4 上午9:29
 * Description:
 */
package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Photo;

import java.util.List;

public interface PhotoService {
    //按类型查找
    Page<Photo> getPhotoByPage(String page);

    // 查询图片列表
    Page<Photo> findPhotoList(Integer page, Integer rows);

    // 通过id查询图片
    Photo getPhotoById(Integer id);

    // 更新图片信息
    int updatePhoto(Photo photo);
}
