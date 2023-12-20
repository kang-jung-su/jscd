//package com.jscd.app.admin.dao;
//
//import com.jscd.app.admin.dto.DailySummaryDto;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.Random;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
//public class DailySummaryDaoTest {
//
//    @Autowired
//    DailySummaryDao dailySummaryDao;
//
//    @Test
//    public void insertYearlyData() throws Exception {
//        Calendar cal = Calendar.getInstance();
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        Random rand = new Random();
//
//        for (int year = 2022; year <= 2023; year++) {
//            cal.set(Calendar.YEAR, year);
//            for (int month = 0; month < 12; month++) {
//                cal.set(Calendar.MONTH, month);
//                int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
//                for (int day = 1; day <= maxDay; day++) {
//                    cal.set(Calendar.DAY_OF_MONTH, day);
//                    String formattedDate = sdf.format(cal.getTime());
//                    int visitors = rand.nextInt(201);
//                    int pageviews = visitors + rand.nextInt(30);
//                    int orders = rand.nextInt(15);
//                    int revenue = (rand.nextInt(150) * 10000);
//                    int signups = rand.nextInt(10);
//                    int inquiries = rand.nextInt(101);
//                    int reviews = rand.nextInt(10);
//
//                    DailySummaryDto dto = new DailySummaryDto(formattedDate, pageviews, visitors, orders, revenue, signups, inquiries, reviews);
//
//                    dailySummaryDao.insert(dto);
//                }
//            }
//        }
//    }
//}
//
