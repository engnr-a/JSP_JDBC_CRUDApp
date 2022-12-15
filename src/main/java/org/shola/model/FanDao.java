package org.shola.model;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface FanDao {

    List<Fan> getAllRecord();
    Fan getRecordById(int id);
    int addUser(Fan u);
    int updateRecord(Fan u);
    int deleteUser(Fan usr);

}
