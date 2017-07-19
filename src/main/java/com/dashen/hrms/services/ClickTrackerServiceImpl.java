package com.dashen.hrms.services;

import com.dashen.hrms.dao.DaoImpl;
import com.dashen.hrms.model.Click;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ClickTrackerServiceImpl implements ClickTrackerService {

    DaoImpl dao;

    public void setDao(DaoImpl dao) {
        this.dao = dao;
    }

    @Override
    public void insert(Click click ) {

    }
}



