package com.jscd.app.admin.service;

import com.jscd.app.admin.dto.DailySummaryDto;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

public interface DashBoardService {

    List<DailySummaryDto> initViewData();

    @Transactional(rollbackFor = Exception.class)
    Map weekMonthData();
}
