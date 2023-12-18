package com.jscd.app.admin.service;

import com.jscd.app.admin.dto.DailySummaryDto;
import com.jscd.app.facility.dto.LockerDto;
import java.util.List;

public interface DashBoardService {

    List<DailySummaryDto> getlast7DayData();

}
