package com.jscd.app.admin.dao;

import com.jscd.app.admin.dto.DailySummaryDto;
import com.jscd.app.facility.dto.LockerDto;

import java.util.List;

public interface DailySummaryDao {

    int insert(DailySummaryDto dto) throws Exception;

    List<DailySummaryDto> selectDailySummary();

    List<DailySummaryDto> selectMonthData();

    //최근 7일 주문수 조회
    int selectWeekOrders();

    //최근 7일 매출액 조회
    int selectWeekRevenue();

    //최근 7일 방문자수 조회
    int selectWeekVisitors();

    //최근 7일 가입자수 조회
    int selectWeekSignups();

    //최근 7일 문의수 조회
    int selectWeekInquiries();

    //최근 7일 후기 조회
    int selectWeekReviews();

    //이번달 주문수 조회
    int selectMonthOrders();

    //이번달 매출액 조회
    int selectMonthRevenue();

    //이번달 방문자수 조회
    int selectMonthVisitors();

    //이번달 가입자수 조회
    int selectMonthSignups();

    //이번달 문의수 조회
    int selectMonthInquires();

    //이번달 후기수 조회
    int selectMonthReviews();

}