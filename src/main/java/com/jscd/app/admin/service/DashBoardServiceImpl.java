package com.jscd.app.admin.service;

import com.jscd.app.admin.dao.DailySummaryDao;
import com.jscd.app.admin.dto.DailySummaryDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class DashBoardServiceImpl implements DashBoardService {

    @Autowired
    private DailySummaryDao dailySummaryDao;

    //대시보드 초기 메인페이지 보여줄 데이터 조회
    @Transactional(rollbackFor = Exception.class)
    @Override
    public List<DailySummaryDto> initViewData() {

        return dailySummaryDao.selectDailySummary();
    }

    //최근7일, 한달 데이터 조회
    @Transactional(rollbackFor = Exception.class)
    @Override
    public Map weekMonthData() {

        Map weekMonthData = new HashMap();

        weekMonthData.put("weekOrders", dailySummaryDao.selectWeekOrders());
        weekMonthData.put("weekRevenue", dailySummaryDao.selectWeekRevenue());
        weekMonthData.put("weekVisitors", dailySummaryDao.selectWeekVisitors());
        weekMonthData.put("weekSignups", dailySummaryDao.selectWeekSignups());
        weekMonthData.put("weekInquires", dailySummaryDao.selectWeekInquiries());
        weekMonthData.put("weekReviews", dailySummaryDao.selectWeekReviews());
        weekMonthData.put("monthOrders", dailySummaryDao.selectMonthOrders());
        weekMonthData.put("monthRevenue", dailySummaryDao.selectMonthRevenue());
        weekMonthData.put("monthVisitors", dailySummaryDao.selectMonthVisitors());
        weekMonthData.put("monthSignups", dailySummaryDao.selectMonthSignups());
        weekMonthData.put("monthInquires", dailySummaryDao.selectMonthInquires());
        weekMonthData.put("monthReviews", dailySummaryDao.selectMonthReviews());


        return weekMonthData;
    }

}