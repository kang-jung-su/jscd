package com.jscd.app.admin.dao;

import com.jscd.app.admin.dto.DailySummaryDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DailySummaryDaoImpl implements DailySummaryDao {

    private final SqlSession sqlSession;

    @Autowired
    private SqlSession session;
    private static String namespace = "com.jscd.app.mapper.DailySummaryMapper.";

    @Autowired
    public DailySummaryDaoImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    //데이터 넣기
    @Override
    public int insert(DailySummaryDto dto) throws Exception {
        return session.insert(namespace + "insert", dto);
    }

    //최근 7일 정보 조회
    @Override
    public List<DailySummaryDto> selectDailySummary() {
        return sqlSession.selectList(namespace + "selectRecentData");
    }

    //이번달 정보 조회
    @Override
    public List<DailySummaryDto> selectMonthData() {
        return sqlSession.selectList(namespace + "selectMonthData");
    }

    //최근 7일 주문수 조회
    @Override
    public int selectWeekOrders() {
        return sqlSession.selectOne(namespace + "selectWeekOrders");
    }

    //최근 7일 매출액 조회
    @Override
    public int selectWeekRevenue() {
        return sqlSession.selectOne(namespace + "selectWeekRevenue");
    }

    //최근 7일 방문자수 조회
    @Override
    public int selectWeekVisitors() {
        return sqlSession.selectOne(namespace + "selectWeekVisitors");
    }

    //최근 7일 가입자수 조회
    @Override
    public int selectWeekSignups() {
        return sqlSession.selectOne(namespace + "selectWeekSignups");
    }

    //최근 7일 문의수 조회
    @Override
    public int selectWeekInquiries() {
        return sqlSession.selectOne(namespace + "selectWeekInquiries");
    }

    //최근 7일 후기 조회
    @Override
    public int selectWeekReviews() {
        return sqlSession.selectOne(namespace + "selectWeekReviews");
    }

    //이번달 주문수 조회
    @Override
    public int selectMonthOrders() {
        return sqlSession.selectOne(namespace + "selectMonthOrders");
    }

    //이번달 매출액 조회
    @Override
    public int selectMonthRevenue() {
        return sqlSession.selectOne(namespace + "selectMonthRevenue");
    }

    //이번달 방문자수 조회
    @Override
    public int selectMonthVisitors() {
        return sqlSession.selectOne(namespace + "selectMonthVisitors");
    }

    //이번달 가입자수 조회
    @Override
    public int selectMonthSignups() {
        return sqlSession.selectOne(namespace + "selectMonthSignups");
    }

    //이번달 문의수 조회
    @Override
    public int selectMonthInquires() {
        return sqlSession.selectOne(namespace + "selectMonthInquires");
    }

    //이번달 후기수 조회
    @Override
    public int selectMonthReviews() {
        return sqlSession.selectOne(namespace + "selectMonthReviews");
    }

}