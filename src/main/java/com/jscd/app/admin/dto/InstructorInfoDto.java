package com.jscd.app.admin.dto;

import java.util.Date;
import java.util.Objects;

public class InstructorInfoDto { //강사정보

        private Integer iscrNo; //pk_강사 고유 코드
        private Integer mebrNo; //회원 고유 번호
        private String intro;
        private Integer status;

        private Float hourPmt;
        private Date regDate;
        private String firstIdNo;
        private Date modifyDate;
        private String lastIdNo;
        private String etc;

        public InstructorInfoDto(){}

        public InstructorInfoDto(Integer iscrNo, Integer mebrNo, String intro, Integer status, Float hourPmt, Date regDate, String firstIdNo, Date modifyDate, String lastIdNo, String etc) {
            this.iscrNo = iscrNo;
            this.mebrNo = mebrNo;
            this.intro = intro;
            this.status = status;
            this.hourPmt = hourPmt;
            this.regDate = regDate;
            this.firstIdNo = firstIdNo;
            this.modifyDate = modifyDate;
            this.lastIdNo = lastIdNo;
            this.etc = etc;
        }

    public InstructorInfoDto(Integer iscrNo, Integer mebrNo, String intro, Integer status, Float hourPmt) {
        this.iscrNo = iscrNo;
        this.mebrNo = mebrNo;
        this.intro = intro;
        this.status = status;
        this.hourPmt = hourPmt;
    }



        public Integer getIscrNo() {
            return iscrNo;
        }

        public void setIscrNo(Integer iscrNo) {
            this.iscrNo = iscrNo;
        }

        public Integer getMebrNo() {
            return mebrNo;
        }

        public void setMebrNo(Integer mebrNo) {
            this.mebrNo = mebrNo;
        }

        public String getIntro() {
            return intro;
        }

        public void setIntro(String intro) {
            this.intro = intro;
        }

        public Integer getStatus() {
            return status;
        }

        public void setStatus(Integer status) {
            this.status = status;
        }

        public Float getHourPmt() {
            return hourPmt;
        }

        public void setHourPmt(Float hourPmt) {
            this.hourPmt = hourPmt;
        }

        public Date getRegDate() {
            return regDate;
        }

        public void setRegDate(Date regDate) {
            this.regDate = regDate;
        }

        public String getfirstIdNo() {
            return firstIdNo;
        }

        public void setfirstIdNo(String firstIdNo) {
            this.firstIdNo = firstIdNo;
        }

        public Date getModifyDate() {
            return modifyDate;
        }

        public void setModifyDate(Date modifyDate) {
            this.modifyDate = modifyDate;
        }

        public String getlastIdNo() {
            return lastIdNo;
        }

        public void setlastIdNo(String lastIdNo) {
            this.lastIdNo = lastIdNo;
        }

        public String getEtc() {
            return etc;
        }

        public void setEtc(String etc) {
            this.etc = etc;
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            InstructorInfoDto that = (InstructorInfoDto) o;
            return Objects.equals(iscrNo, that.iscrNo) && Objects.equals(mebrNo, that.mebrNo) && Objects.equals(intro, that.intro) && Objects.equals(status, that.status) && Objects.equals(hourPmt, that.hourPmt) && Objects.equals(regDate, that.regDate) && Objects.equals(firstIdNo, that.firstIdNo) && Objects.equals(modifyDate, that.modifyDate) && Objects.equals(lastIdNo, that.lastIdNo) && Objects.equals(etc, that.etc);
        }

        @Override
        public int hashCode() {
            return Objects.hash(iscrNo, mebrNo, intro, status, hourPmt, regDate, firstIdNo, modifyDate, lastIdNo, etc);
        }

        @Override
        public String toString() {
            return "InstructorInfoDto{" +
                    "iscrNo=" + iscrNo +
                    ", mebrNo=" + mebrNo +
                    ", intro='" + intro + '\'' +
                    ", status=" + status +
                    ", hourPmt=" + hourPmt +
                    ", regDate=" + regDate +
                    ", firstIdNo='" + firstIdNo + '\'' +
                    ", modifyDate=" + modifyDate +
                    ", lastIdNo='" + lastIdNo + '\'' +
                    ", etc='" + etc + '\'' +
                    '}';
        }
    }





