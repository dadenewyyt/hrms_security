package com.dashen.hrms.repositories;

import com.dashen.hrms.model.Keyword;
import org.springframework.data.repository.CrudRepository;

import java.util.ArrayList;

public interface KeywordRepository extends CrudRepository<Keyword, Long>  {

    //@Query("select keywords.kname from Keyword keywords where keywords.kname like %?1%")
    ArrayList<String> findByKnameLike(String keyword);

    ArrayList<Keyword> findByCatgeory_CnameLike(String keyword);

    //Collection<Keyword> findKeywordByKnameLike(String key);

}