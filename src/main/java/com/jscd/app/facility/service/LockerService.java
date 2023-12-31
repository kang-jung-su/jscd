package com.jscd.app.facility.service;

import com.jscd.app.facility.dto.LockerDto;
import java.util.List;
import java.util.Map;

public interface LockerService {

    List<Map<String, Object>> lockerAlert() throws Exception;

    List<LockerDto> adminGetLockers();

    List<LockerDto> mebrGetLockers();

    List<LockerDto> mebrIDLockers(String mebrID) throws Exception;

    LockerDto getLocker(String lockerId);

    int registerLocker(LockerDto lockerDto) throws Exception;

    int extendLocker(String lockerId, LockerDto lockerDto);

    int moveLocker(LockerDto oldLocker, String newLockerId);

    int deleteLocker(String lockerId, LockerDto lockerDto);

    void deleteExpiredLockers() throws Exception;
}
