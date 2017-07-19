package com.dashen.hrms.services;

import com.dashen.hrms.model.SponsoredAd;

import java.io.Serializable;
import java.util.List;

public interface SearchEngineService {

    public <T> Serializable insert(final T entity);

    public <T> T update(final T entity);

    public <T> void delete(final T entity);

    public List<SponsoredAd> findSponsoredAdsByCriteria(float maxAmount, float amountUsed);

    public List<SponsoredAd> findSponsoredAdsByKeyword(String keyword);

    public List<SponsoredAd> findSponsoredAdsByKeywordAndCategory(String keyword, String Category);

}
