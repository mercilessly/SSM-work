/**
 * FileName: MeberServiceImpl
 * Author:   wlc
 * Date:     2019/6/15 上午10:24
 * Description:
 */
package com.itheima.core.service.impl;

import com.itheima.common.utils.Page;
import com.itheima.core.dao.MemberDao;
import com.itheima.core.po.Member;
import com.itheima.core.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service("memberService")
public class MeberServiceImpl implements MemberService {
    @Autowired
    private MemberDao memberDao;

    @Override
    public Page<Member> findMemberList(Integer page, Integer rows) {
        Member member=new Member();
        // 当前页
        member.setStart((page - 1) * rows);
        // 每页数
        member.setRows(rows);
        // 查询客户列表
        List<Member> members =
                memberDao.selectMemberList(member);
        // 查询客户列表总记录数
        Integer count = memberDao.selectMemberListCount(member);
        // 创建Page返回对象
        Page<Member> result = new Page<>();
        result.setPage(page);
        result.setRows(members);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public Page<Member> findMemberListBy(Integer page, Integer rows,String member_code) {
        Member member=new Member();
        // 当前页
        member.setStart((page - 1) * rows);
        // 每页数
        member.setRows(rows);
        // 查询客户列表
        List<Member> members =
                memberDao.selectMemberListBy(member_code);
        // 查询客户列表总记录数
        Integer count = memberDao.selectMemberListByCount(member_code);
        // 创建Page返回对象
        Page<Member> result = new Page<>();
        result.setPage(page);
        result.setRows(members);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int createMember(Member member) {
        return memberDao.createMember(member);
    }

    @Override
    public Member getMemberByCode(Integer code) {
        Member member = memberDao.getMemberByCode(code);
        return member;
    }
    @Override
    public Member getMemberById(Integer id) {
        Member member = memberDao.getMemberById(id);
        return member;
    }

    @Override
    public int updateMember(Member member) {
        return memberDao.updateMember(member);
    }

    @Override
    public int deleteMember(Integer id) {
        return memberDao.deleteMember(id);
    }

    @Override
    public int addPhoto(Member member) {
        return memberDao.addPhoto(member);
    }

    @Override
    public String searchPhotoPath(String member_photo_name) {
        return memberDao.searchPhotoPath(member_photo_name);
    }

    @Override
    public int changeMemberStatus(Integer id) {
        return memberDao.changeMemberStatus(id);
    }

    /**
     * 批量删除
     */
    @Override
    public void batchDeletes(List delList) {
        memberDao.batchDeletes(delList);
    }
}
