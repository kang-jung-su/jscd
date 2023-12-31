package com.jscd.app.applyTraining.controller;

import com.jscd.app.applyTraining.dto.BtApplicationDto;
import com.jscd.app.applyTraining.dto.ApplicationHandler;
import com.jscd.app.applyTraining.dto.SearchApplication;
import com.jscd.app.applyTraining.service.BtApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/adminManage/adminBtTraining")
//@RequestMapping("/adminBtTraining")
public class AdminBtTrainingController {
    @Autowired
    BtApplicationService btApplicationService;

    // 승인 여부 처리시
    // 소희 추가
    @PostMapping("modify")
    public String btApplicationModify(BtApplicationDto btApplicationDto, Integer page, Integer pageSize, Model m, RedirectAttributes rattr){

        try {
            // updateBoth 메서드를 호출합니다.
            btApplicationService.updateBoth(btApplicationDto);

            rattr.addFlashAttribute("page", page);
            rattr.addFlashAttribute("pageSize", pageSize);
            return "redirect:/adminManage/adminBtTraining/list";
        } catch (Exception e) {
            e.printStackTrace();
            m.addAttribute("btApplicationDto", btApplicationDto);
            m.addAttribute("page", page);
            m.addAttribute("page", pageSize);
            return "/applyTraining/adminBtApplication";
        }
    }

//    @PostMapping("modify")
//    public String btApplicationModify(BtApplicationDto btApplicationDto, Integer page, Integer pageSize, Model m, RedirectAttributes rattr){
//
//        try {
//            int cnt = btApplicationService.modify(btApplicationDto);
//
//            if(cnt != 1)
//                throw new Exception("modify failed");
//
//            rattr.addFlashAttribute("page", page);
//            rattr.addFlashAttribute("pageSize", pageSize);
//            return "redirect:/adminManage/adminBtTraining/list";
//        } catch (Exception e) {
//            e.printStackTrace();
//            m.addAttribute("btApplicationDto", btApplicationDto);
//            m.addAttribute("page", page);
//            m.addAttribute("page", pageSize);
//            return "/applyTraining/adminBtApplication";
//        }
//    }

    @GetMapping("read")
    public String btApplicationRead(Integer stfmNo, Integer page, Integer pageSize, Model m){

        try {
            BtApplicationDto btApplicationDto =  btApplicationService.read(stfmNo);

            m.addAttribute("btApplicationDto", btApplicationDto);
            m.addAttribute("page", page);
            m.addAttribute("pageSize", pageSize);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/applyTraining/adminBtApplication";
    }

    @GetMapping("list")
    public String btApplicationList(SearchApplication sa, Model m){

        try {
            int totalCnt = btApplicationService.getSearchResulCnt(sa);

            ApplicationHandler applicationHandler = new ApplicationHandler(totalCnt, sa);

            List<BtApplicationDto> list = btApplicationService.getSearchResultpage(sa);

            m.addAttribute("totalCnt", totalCnt);
            m.addAttribute("list", list);
            m.addAttribute("ah", applicationHandler);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/applyTraining/adminBtApplicationList";
    }
}
