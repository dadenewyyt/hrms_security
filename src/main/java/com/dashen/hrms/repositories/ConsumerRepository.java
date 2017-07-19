package com.dashen.hrms.repositories;

import java.util.Collection;
import java.util.List;

import com.dashen.hrms.model.Consumer;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface ConsumerRepository extends CrudRepository<Consumer, Long>  {

    List<Consumer> findByLastName(String lastName);
    List<Consumer> findByFirstName(String firstName);

    @Query("select c from Consumer as c where c.firstName like %?1%")
    Collection<Consumer> searchByNameContains(String word);

    @Query(value = "SELECT * FROM ppc_consumer ppc WHERE firstName = ?1",
          countQuery = "SELECT count(ppc) FROM ppc_consumer ppc WHERE firstName = ?1",
          nativeQuery = true)
    Collection<Consumer> searchName(String lastname);




 }