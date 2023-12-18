package com.jscd.app.admin.service;

import com.jscd.app.admin.dao.DailySummaryDao;
import com.jscd.app.admin.dto.DailySummaryDto;
import com.jscd.app.facility.dto.LockerDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DashBoardServiceImpl implements DashBoardService {

    @Autowired
    private DailySummaryDao dailySummaryDao;

    @Override
    public List<DailySummaryDto> getlast7DayData() {
        return dailySummaryDao.selectDailySummary();
    }

}