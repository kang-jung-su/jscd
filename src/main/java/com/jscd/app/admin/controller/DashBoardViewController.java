package com.jscd.app.admin.controller;

import com.jscd.app.admin.dto.DailySummaryDto;
import com.jscd.app.admin.service.DashBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/dashBoard")
public class DashBoardViewController {

    @Autowired
    DashBoardService dashBoardService;

    @GetMapping("/home")
    public String DashBoard(Model model, HttpServletRequest request) {

        List<DailySummaryDto> dailySummaryDtoList = dashBoardService.initViewData();

        model.addAttribute("dailySummaryDtoList", dailySummaryDtoList);

        model.addAttribute("weekMonthData", dashBoardService.weekMonthData());

        return "admin/dashBoard";
    }
}