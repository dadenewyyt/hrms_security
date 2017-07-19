package com.dashen.hrms.services;

import com.dashen.hrms.repositories.AdRepository;
import com.dashen.hrms.repositories.KeywordRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * Created by dantheman on 7/21/16.
 */
@Service("searchService")
public class SearchServiceImpl implements SearchService {

    @Autowired
    AdRepository adRepository;

    @Autowired
    KeywordRepository keywordRepository;

    @Override
    public ArrayList<String> searchByKeyWord(String keyword) {

     ArrayList<String> keywords = keywordRepository.findByKnameLike(keyword);

        return keywords;
    }
}
