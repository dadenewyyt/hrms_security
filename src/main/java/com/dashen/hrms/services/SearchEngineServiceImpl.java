package com.dashen.hrms.services;

import com.dashen.hrms.dao.DaoImpl;
import com.dashen.hrms.model.SponsoredAd;
import org.hibernate.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class SearchEngineServiceImpl implements SearchEngineService {

    DaoImpl dao;

    public void setDao(DaoImpl dao) {this.dao = dao;}

    @Override
    public <T> Serializable insert(T entity) {
        return dao.insert(entity);
    }

    @Override
    public <T> T update(T entity) {
        return dao.update(entity);
    }

    @Override
    public <T> void delete(T entity) {
        dao.delete(entity);
    }

    @Override
    public List<SponsoredAd> findSponsoredAdsByKeyword(String keyword) {

        String query = "SELECT * FROM ppc_ad where keywords like %"+keyword+"%";

        List<Object[]> resultSet =dao.findAll(query);

        return SponsoredAd.mapList(resultSet);

    }

    @Override
    public List<SponsoredAd> findSponsoredAdsByKeywordAndCategory(String keyword, String category) {

        String query = "SELECT * FROM ppc_ad where keywords like %"+keyword+"% and category="+category;

        List<Object[]> resultSet =dao.findAll(query);

        return SponsoredAd.mapList(resultSet);
    }

    @Override
    public List<SponsoredAd> findSponsoredAdsByCriteria(float maxAmount,float amountUsed) {

        String query = "SELECT * FROM ppc_ad where maxamount="+maxAmount+" and amountused="+amountUsed;

        List<Object[]> resultSet =dao.findAll(query);

        return SponsoredAd.mapList(resultSet);
    }
}
