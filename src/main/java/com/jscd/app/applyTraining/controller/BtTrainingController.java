package com.jscd.app.applyTraining.controller;

import com.jscd.app.applyTraining.dto.BtApplicationDto;
import com.jscd.app.applyTraining.service.BtApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/btTraining")
public class BtTrainingController {
    @Autowired
    BtApplicationService btApplicationService;

    // 부트캠프 신청서 제출 메서드
    @PostMapping("btApplication")
    public String btApplicationWrite(BtApplicationDto btApplicationDto, Model m, RedirectAttributes rattr){

        try {
            int cnt = btApplicationService.write(btApplicationDto);

            if(cnt != 1)
                throw new Exception("write err");

            rattr.addFlashAttribute("msg", "write ok");
            // 신청서 제출 후 마이페이지 강의 신청 현황으로 이동 시켜야함.
            return null;
        } catch (Exception e) {
            // 신청서 제출 실패시
            // 작성했던 내용, 에러 메세지와 함께 신청서 페이지로 이동
            e.printStackTrace();
            m.addAttribute(btApplicationDto);
            m.addAttribute("msg", "write err");
            return "/applyTraining/btApplication";
        }
    }

    // 부트캠프 신청서 이동 메서드
    @GetMapping("btApplication")
    public String btApplicationWrite(Model m){
        // registCode 얻어서 넘겨줘야 함.
        // mebrNo 얻어서 넘겨줘야 함.

        return "/applyTraining/btApplication";
    }
}