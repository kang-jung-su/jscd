package com.jscd.app.admin.dao;

import com.jscd.app.member.dto.MemberDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class MemberManageDaoImpl implements MemberManageDao {

    @Autowired
    SqlSession session;
    private static String namespace = "com.jscd.app.mapper.memberManageMapper.";

    @Override
    public int count()throws Exception{
        return session.selectOne(namespace+"count");
    }

    @Override
    public List<MemberDto> selectAll()throws Exception{
        return session.selectList(namespace+"selectAll");
    }

    @Override
    public MemberDto select(Integer mebrNo)throws Exception{
        return session.selectOne(namespace+"select",mebrNo);
    }

    @Override
    public int update(MemberDto memberDto)throws Exception{
        return session.update(namespace+"update",memberDto);
    }
    @Override
    public int updateDetail(MemberDto memberDto)throws Exception{
        return session.update(namespace+"updateDetail",memberDto);
    }
    @Override
    public int delete(Integer mebrNo)throws Exception{
        return session.delete(namespace+"delete",mebrNo);
    }
    @Override
    public void deleteAll()throws Exception{
        session.delete(namespace+"deleteAll");
    }






}