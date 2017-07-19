package com.dashen.hrms.controllers;

import com.dashen.hrms.services.SearchServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping("/search/api")
public class SearchController {

    @Autowired
    SearchServiceImpl searchService;

    @RequestMapping(value = "/test")
    public String getKey() {

       // Collection<Keyword> keywords =  searchService.searchByKeyWord("java");
        return "test";
    }

    @RequestMapping(value = "/getKeywords" ,method = RequestMethod.POST)
    public ArrayList<String> getKeyWords(@RequestBody String keyword) {

        ArrayList<String> keywords =  searchService.searchByKeyWord(keyword);
        System.out.println("Printing Keyword"+keywords);
        System.out.println("Quewry"+keyword);
        return keywords;

        /*

         */
    }

    @RequestMapping(value = "/getSearchKeyWords" ,method = RequestMethod.POST)
    public String getKeys(@RequestBody String keyword) {

        //<Keyword> keywords =  searchService.searchByKeyWord(keyword);
        return "";
//
//        model.addAttribute("message", "Welcome to PPC Backend Module");
//        model.addAttribute("version", "1.0.0");
//        model.addAttribute("text", "coming soon!");
//
//        try{
//            ArrayList<String> keywords =  searchService.searchByKeyWord("java");
//            System.out.println("testing key word"+keywords);
//        }catch(Exception ex) {
//            System.out.println("error"+ex.getStackTrace());
//        }
//
//
//
//        logger.debug("Testing JPA and Spring DATA repositories");
//
//        consumerRepository.save(new Consumer("Daniel", "Adenew"));
//        consumerRepository.save(new Consumer("Morgan", "FreeMan"));
//        consumerRepository.save(new Consumer("Kate", "Winston"));
//        consumerRepository.save(new Consumer("Kibrom", "Hagos"));
//
//        List<Consumer> consumer = consumerRepository.findByLastName("Adenew");
//
//        System.out.println("Found by last name Adenew , the consumer is"+ consumer);
//
//        Consumer findByOneConsumer = consumerRepository.findOne(1L);
//
//        System.out.println("findByOneConsumer when id =1"+ findByOneConsumer);
//
//        //System.out.println("getByFirstNameAndLastNameOrderByFirstName on the fly method:\n"+consumerRepository.getByFirstNameAndLastNameOrderByFirstName());
//
//        System.out.println("findAll() on the fly method:"+consumerRepository.findAll());
//
//        System.out.println("consumerRepository query select *:\n"+consumerRepository.searchName("Kibrom"));
//
//        System.out.println("Using Spring Data @Query(select count(c.id) from Consumer as c where c.firstName like %?K% => Kibrom Data"+consumerRepository.searchByNameContains("K"));
//
//        System.out.println("deleting findByOneConsumer object with id =1");
//
//        if(findByOneConsumer!=null)
//            consumerRepository.delete(findByOneConsumer);
//
//        System.out.println("deleting all");
//
//        consumerRepository.deleteAll();
//
//        System.out.println("invoking findAll() all to see if deleting all has worked ?\n"+consumerRepository.findAll());
//
//        consumerRepository.findAll();
//
//
//        /* Click Repository*/
//        Country country = new Country();
//
//        country.setCode("ETH");
//        country.setName("Ethiopia");
//
//        /*clickRepository.save(new Click(country,1,2,2.5,1,"12.54.33.33",4,new Date().toString()));
//
//        Page<Click> clicks = clickRepository.findAll(new PageRequest(1, 5));*/
//
//
//        logger.info("Love Spring data it make it very short the process of data layers!!");
//
//        //logs debug message
//        if(logger.isDebugEnabled()){
//            logger.debug("Welcome controller is executed!");
//        }
//        //logs exception
//        //logger.error("Don't Panic this is a test Error message and Exception", new CustomExceptionHandler("PPC Test"));

    }
    @ResponseBody
    @RequestMapping(value = "search/api/searchByKeyword")
    public String getSearchResultByKeyWord(@RequestBody String keyword) {
     return null;
    }
}
