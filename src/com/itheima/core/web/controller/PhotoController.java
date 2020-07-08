/**
 * FileName: PhotoController
 * Author:   wlc
 * Date:     2019/7/4 上午9:39
 * Description:
 */
package com.itheima.core.web.controller;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Photo;
import com.itheima.core.service.PhotoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PhotoController {
    @Autowired
    private PhotoService photoService;

    /**
     * 图片列表
     * @return
     */
    @RequestMapping(value = "/adminphoto/list.action")
    @ResponseBody
    public ModelAndView photolist(@RequestParam(defaultValue = "1") Integer page,
                             @RequestParam(defaultValue = "5") Integer rows, Model model) {
        ModelAndView mav = new ModelAndView();
        // 查询所有图片
        Page<Photo> photos = photoService.findPhotoList(page, rows);
        model.addAttribute("page", photos);
        mav.addObject("photolist",photos);
        mav.setViewName("picturelist");
        System.out.println(mav);
        return mav;
    }

    /**
     * 通过id获取图片信息
     */
    @RequestMapping("/adminphoto/getPhotoById.action")
    @ResponseBody
    public Photo getPhotoById(Integer id) {
        Photo photo = photoService.getPhotoById(id);
        return photo;
    }

    /**
     * 更新图片信息
     */
    @RequestMapping("/adminphoto/update.action")
    @ResponseBody
    public String memberUpdate(Photo photo) {
        int rows = photoService.updatePhoto(photo);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    @RequestMapping("/photo/getPhotoByType.action")
    @ResponseBody
    public ModelAndView learnGetPhotoByPage(String page){
        ModelAndView mav = new ModelAndView();
        Page<Photo> photos=photoService.getPhotoByPage(page);
        mav.addObject("photos",photos);
        mav.setViewName("learn");
        System.out.println(photos.toString());
        return mav;
    }

    @RequestMapping("/photo/teacher.action")
    @ResponseBody
    public ModelAndView financialConsultingGetPhotoByPage(String page){
        ModelAndView mav = new ModelAndView();
        Page<Photo> photos=photoService.getPhotoByPage(page);
        mav.addObject("teacher",photos);
        mav.setViewName("financial_consulting");
        System.out.println(photos.toString());
        return mav;
    }

    @RequestMapping("/photo/resources.action")
    @ResponseBody
    public ModelAndView enterpriseResidenceGetPhotoByPage(String page){
        ModelAndView mav = new ModelAndView();
        Page<Photo> photos=photoService.getPhotoByPage(page);
        mav.addObject("resources",photos);
        mav.setViewName("enterprise_residence");
        System.out.println(photos.toString());
        return mav;
    }

    @RequestMapping("/photo/index.action")
    @ResponseBody
    public ModelAndView indexGetPhotoByPage(String page){
        ModelAndView mav = new ModelAndView();
        Page<Photo> photos=photoService.getPhotoByPage(page);
        mav.addObject("resources",photos);
        mav.setViewName("index");
        System.out.println(photos.toString());
        return mav;
    }
}
