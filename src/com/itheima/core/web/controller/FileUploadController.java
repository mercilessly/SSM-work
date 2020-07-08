package com.itheima.core.web.controller;

import com.itheima.core.po.Member;
import com.itheima.core.service.MemberService;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * 文件上传
 */
@Controller
public class FileUploadController {
    /**
     * 执行文件上传
     */
    @Controller
    public class FileController {
        @Autowired
        private MemberService memberService;

        //单文件上传
        @RequestMapping(value = "/upload.action")
        public String queryFileData(@RequestParam("member_id") int member_id,
                                    @RequestParam("uploadfile") CommonsMultipartFile file,
                                    HttpServletRequest request, Member member) {
            // MultipartFile是对当前上传的文件的封装，当要同时上传多个文件时，可以给定多个MultipartFile参数(数组)
            if (!file.isEmpty()) {
                String type = file.getOriginalFilename().substring(
                        file.getOriginalFilename().indexOf("."));// 取文件格式后缀名
                String filename = System.currentTimeMillis() + type;// 取当前时间戳作为文件名
                String path = request.getSession().getServletContext()
                        .getRealPath("/upload/" + filename);// 存放位置
                System.out.println(path);
                File destFile = new File(path);
                try {
                    // FileUtils.copyInputStreamToFile()这个方法里对IO进行了自动操作，不需要额外的再去关闭IO流
                    FileUtils
                            .copyInputStreamToFile(file.getInputStream(), destFile);// 复制临时文件到指定目录下
                } catch (IOException e) {
                    e.printStackTrace();
                    return"error";
                }
                member.setId(member_id);
                member.setMember_photo_name(filename);
                member.setMember_photo_path("/upload/" + filename);
                int rows = memberService.addPhoto(member);
                return "success";
            } else {
                return "error";
            }
        }
    }

    @RequestMapping("/download.action")
    public ResponseEntity<byte[]> fileDownload(HttpServletRequest request,String filename) throws Exception {
        // 指定要下载的文件所在路径
        String path = request.getServletContext().getRealPath("/upload/");
        // 创建该文件对象
        File file = new File(path + filename);
        // 对文件名编码，防止中文文件乱码
        filename = this.getFilename(request, filename);
        // 设置响应头
        HttpHeaders headers = new HttpHeaders();
        // 通知浏览器以下载的方式打开文件
        headers.setContentDispositionFormData("attachment", filename);
        // 定义以流的形式下载返回文件数据
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        // 使用Sring MVC框架的ResponseEntity对象封装返回下载数据
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
                headers, HttpStatus.OK);
    }

    /**
     * 根据浏览器的不同进行编码设置，返回编码后的文件名
     */
    public String getFilename(HttpServletRequest request,
                              String filename) throws Exception {
        // IE不同版本User-Agent中出现的关键词
        String[] IEBrowserKeyWords = {"MSIE", "Trident", "Edge"};
        // 获取请求头代理信息
        String userAgent = request.getHeader("User-Agent");
        for (String keyWord : IEBrowserKeyWords) {
            if (userAgent.contains(keyWord)) {
                //IE内核浏览器，统一为UTF-8编码显示
                return URLEncoder.encode(filename, "UTF-8");
            }
        }
        //火狐等其它浏览器统一为ISO-8859-1编码显示
        return new String(filename.getBytes("UTF-8"), "ISO-8859-1");
    }


}
