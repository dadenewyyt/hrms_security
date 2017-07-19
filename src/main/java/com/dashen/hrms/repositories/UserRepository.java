package com.dashen.hrms.repositories;


import com.dashen.hrms.model.UserModel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by user on 5/8/2017.
 */
@Repository
public interface UserRepository extends CrudRepository<UserModel, Long> {

    //User findByLastName(String lastName);
    UserModel findUserByUsername(String username);

}
