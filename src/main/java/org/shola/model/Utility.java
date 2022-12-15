package org.shola.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import java.util.List;

@Component("fanUtility")
@Data
@NoArgsConstructor
public class Utility {

    @Qualifier("fanDao")
    @Autowired
    public static FanDao userDao;

//    public static void main(String[] args){
//        System.out.println(userDao.getAllRecord());
//    }

    public int addUser(Fan user){
        return userDao.addUser(user);
    }

    public static List<Fan> getAllUsers(){
        return userDao.getAllRecord();
    }

    public Fan getUserById(int id){
        return userDao.getRecordById(id);
    }

    public int updateUser(Fan user){
        return userDao.updateRecord(user);
    }

    public int deleteUser(Fan user){
        return userDao.deleteUser(user);
    }


}
