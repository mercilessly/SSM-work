/**
 * FileName: MemberDao
 * Author:   wlc
 * Date:     2019/6/14 下午11:06
 * Description:
 */
package com.itheima.core.dao;

import com.itheima.core.po.Member;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MemberDao {
    // 客户列表
    List<Member> selectMemberList(Member member);

    // 客户数
    Integer selectMemberListCount(Member member);

    // 创建客户
    int createMember(Member member);

    // 通过code查询客户
    Member getMemberByCode(Integer code);

    // 通过id查询客户
    Member getMemberById(Integer id);

    // 更新客户信息
    int updateMember(Member member);

    // 删除客户
    int deleteMember(Integer id);

    // 条件查看客户数
    Integer selectMemberListByCount(String member_code);

    //多字段匹配查询
    List<Member> selectMemberListBy(String member_code);

//    查找存放图片path
    String searchPhotoPath(String member_photo_name);

//    存放图片信息
    int addPhoto(Member member);

    // 修改状态
    int changeMemberStatus(Integer id);

    /**
     * 批量删除
     */
    void batchDeletes(List delList);
}
