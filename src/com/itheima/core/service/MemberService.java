/**
 * FileName: MemberService
 * Author:   wlc
 * Date:     2019/6/14 下午11:59
 * Description:
 */
package com.itheima.core.service;

import com.itheima.common.utils.Page;
import com.itheima.core.po.Member;

import java.util.List;


public interface MemberService {
    // 查询客户列表
    Page<Member> findMemberList(Integer page, Integer rows);

    int createMember(Member member);

    // 通过code查询客户
    Member getMemberByCode(Integer code);

    // 通过多字段查询客户
    Page<Member> findMemberListBy(Integer page, Integer rows, String member_code);

    // 通过id查询客户
    Member getMemberById(Integer id);

    // 更新客户
    int updateMember(Member member);

    // 更新客户
    int addPhoto(Member member);

    // 删除客户
    int deleteMember(Integer id);

    // 查找图片path
    String searchPhotoPath(String member_photo_name);

    // 修改状态
    int changeMemberStatus(Integer id);

    /**
     * 批量删除
     */
    void batchDeletes(List delList);
}
