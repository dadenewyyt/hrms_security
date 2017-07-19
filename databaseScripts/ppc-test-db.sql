
create database ppc;
USE ppc;
create table Campaign (
        id bigint not null auto_increment,
        keywords varchar(255),
        advertiserId varchar(255),
        campaignType varchar(255),
        campaignStatus varchar(255),
        primary key (id)
)

/*
Hibernate:
    drop table device cascade constraints
Hibernate:
    drop table ppc_ad cascade constraints
Hibernate:
    drop table ppc_ad_keyword cascade constraints
Hibernate:
    drop table ppc_adverister cascade constraints
Hibernate:
    drop table ppc_budget cascade constraints
Hibernate:
    drop table ppc_category cascade constraints
Hibernate:
    drop table ppc_charity_fund cascade constraints
Hibernate:
    drop table ppc_click cascade constraints
Hibernate:
    drop table ppc_consumer cascade constraints
Hibernate:
    drop table ppc_country cascade constraints
Hibernate:
    drop table ppc_dan cascade constraints
Hibernate:
    drop table ppc_fraud_clicks cascade constraints
Hibernate:
    drop table ppc_keyword cascade constraints
Hibernate:
    drop table ppc_restricted_sites cascade constraints
Hibernate:
    drop table ppc_target_audience cascade constraints
Hibernate:
    drop table tbl_employee_new cascade constraints
Hibernate:
    create table device (
        id number(10,0) not null,
        device_browser varchar2(255 char),
        device_browser_version varchar2(255 char),
        device_description varchar2(255 char),
        device_id varchar2(255 char),
        device_location varchar2(255 char),
        device_name varchar2(255 char),
        device_resloution varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_ad (
        id number(10,0) not null,
        advertiser_id number(10,0),
        amountused float,
        keywords varchar2(255 char),
        maxamount float,
        primary key (id)
    )
Hibernate:
    create table ppc_ad_keyword (
        ad_id number(19,0) not null,
        keyword_id number(19,0) not null,
        primary key (ad_id, keyword_id)
    )
Hibernate:
    create table ppc_adverister (
        id number(19,0) not null,
        first_name varchar2(255 char),
        gender varchar2(255 char),
        last_name varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_budget (
        id number(19,0) not null,
        per_day_budget double precision,
        per_week_budget double precision,
        primary key (id)
    )
Hibernate:
    create table ppc_category (
        id number(19,0) not null,
        cname varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_charity_fund (
        id number(10,0) not null,
        amount_due float,
        amount_paid float,
        primary key (id)
    )
Hibernate:
    create table ppc_click (
        id number(10,0) not null,
        click_value float,
        created_date timestamp,
        ip varchar2(255 char),
        timestamp timestamp,
        ad_ID number(19,0),
        click_country varchar2(255 char),
        clicked_device number(10,0),
        consumer_id number(19,0),
        keyWord_id number(19,0),
        primary key (id)
    )
Hibernate:
    create table ppc_consumer (
        id number(19,0) not null,
        firstName varchar2(255 char),
        lastName varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_country (
        id varchar2(255 char) not null,
        name varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_dan (
        ID number(19,0) not null,
        ad_text varchar2(255 char),
        ad_title varchar2(255 char),
        address varchar2(255 char),
        website varchar2(255 char),
        ad_budget_id number(19,0) not null,
        targetAudience_id number(19,0) not null,
        advertiser_id number(19,0),
        primary key (ID)
    )
Hibernate:
    create table ppc_fraud_clicks (
        id number(10,0) not null,
        advertiser_id number(10,0),
        clicktime timestamp,
        ip varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_keyword (
        id number(19,0) not null,
        kname varchar2(255 char),
        price double precision,
        catgeory_id number(19,0),
        primary key (id)
    )
Hibernate:
    create table ppc_restricted_sites (
        id number(10,0) not null,
        advertiser_id number(10,0),
        site varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_target_audience (
        id number(19,0) not null,
        isallCountry number(1,0),
        isallStates number(1,0),
        isallTerritories number(1,0),
        country_id varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table tbl_employee_new (
        ID number(19,0) not null,
        date_of_birth varchar2(255 char),
        date_of_employment varchar2(255 char),
        emergency_contact varchar2(255 char),
        employee_id varchar2(255 char),
        file_index_number varchar2(255 char),
        first_name varchar2(255 char),
        job_classification_id varchar2(255 char),
        last_name varchar2(255 char),
        middle_name varchar2(255 char),
        photo_file_name varchar2(255 char),
        sex varchar2(255 char),
        primary key (ID)
    )
Hibernate:
    alter table ppc_dan
        add constraint UK_bn0urrlr5y3qr4iud9eg3imuh  unique (ad_budget_id)
Hibernate:
    alter table ppc_dan
        add constraint UK_4ayr5dan9hwyas13ejg5rvpiv  unique (targetAudience_id)
Hibernate:
    alter table ppc_ad_keyword
        add constraint FK_34eogh6fnnym92t56n8jv3bsj
        foreign key (keyword_id)
        references ppc_keyword
Hibernate:
    alter table ppc_ad_keyword
        add constraint FK_f6j7lv02gebnylbwdk34n94kg
        foreign key (ad_id)
        references ppc_dan
Hibernate:
    alter table ppc_click
        add constraint FK_el0wys635wpcfbyyhmr2cfapg
        foreign key (ad_ID)
        references ppc_dan
Hibernate:
    alter table ppc_click
        add constraint FK_irduyl01p2vd3ljg7oa1p1sqh
        foreign key (click_country)
        references ppc_country
Hibernate:
    alter table ppc_click
        add constraint FK_jnr3y857hifi5cgm460n3atpg
        foreign key (clicked_device)
        references device
Hibernate:
    alter table ppc_click
        add constraint FK_2f8lnagd0daic5f5kd6tudahu
        foreign key (consumer_id)
        references ppc_consumer
Hibernate:
    alter table ppc_click
        add constraint FK_o3tdctyrg562wgj33n4tfst9o
        foreign key (keyWord_id)
        references ppc_keyword
Hibernate:
    alter table ppc_dan
        add constraint FK_bn0urrlr5y3qr4iud9eg3imuh
        foreign key (ad_budget_id)
        references ppc_budget
Hibernate:
    alter table ppc_dan
        add constraint FK_4ayr5dan9hwyas13ejg5rvpiv
        foreign key (targetAudience_id)
        references ppc_target_audience
Hibernate:
    alter table ppc_dan
        add constraint FK_mkqxu269xila4wyh9bndxkxhk
        foreign key (advertiser_id)
        references ppc_adverister
Hibernate:
    alter table ppc_keyword
        add constraint FK_hw2s4woqlt0ry9xv10j99orho
        foreign key (catgeory_id)
        references ppc_category
Hibernate:
    alter table ppc_target_audience
        add constraint FK_q7ewhw09x83raj6ru1rrbvg43
        foreign key (country_id)
        references ppc_country
May 08, 2017 1:38:46 PM org.hibernate.tool.hbm2ddl.SchemaExport execute
INFO: HHH000230: Schema export complete
May 08, 2017 1:38:47 PM org.hibernate.jpa.internal.util.LogHelper logPersistenceUnitInformation
INFO: HHH000204: Processing PersistenceUnitInfo [
	name: default
	...]
May 08, 2017 1:38:59 PM org.hibernate.engine.transaction.internal.TransactionFactoryInitiator initiateService
INFO: HHH000399: Using default transaction strategy (direct JDBC transactions)
May 08, 2017 1:38:59 PM org.hibernate.tool.hbm2ddl.SchemaExport execute
INFO: HHH000227: Running hbm2ddl schema export
Hibernate:
    drop table device cascade constraints
Hibernate:
    drop table ppc_ad cascade constraints
Hibernate:
    drop table ppc_ad_keyword cascade constraints
Hibernate:
    drop table ppc_adverister cascade constraints
Hibernate:
    drop table ppc_budget cascade constraints
Hibernate:
    drop table ppc_category cascade constraints
Hibernate:
    drop table ppc_charity_fund cascade constraints
Hibernate:
    drop table ppc_click cascade constraints
Hibernate:
    drop table ppc_consumer cascade constraints
Hibernate:
    drop table ppc_country cascade constraints
Hibernate:
    drop table ppc_dan cascade constraints
Hibernate:
    drop table ppc_fraud_clicks cascade constraints
Hibernate:
    drop table ppc_keyword cascade constraints
Hibernate:
    drop table ppc_restricted_sites cascade constraints
Hibernate:
    drop table ppc_target_audience cascade constraints
Hibernate:
    drop table tbl_employee_new cascade constraints
Hibernate:
    create table device (
        id number(10,0) not null,
        device_browser varchar2(255 char),
        device_browser_version varchar2(255 char),
        device_description varchar2(255 char),
        device_id varchar2(255 char),
        device_location varchar2(255 char),
        device_name varchar2(255 char),
        device_resloution varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_ad (
        id number(10,0) not null,
        advertiser_id number(10,0),
        amountused float,
        keywords varchar2(255 char),
        maxamount float,
        primary key (id)
    )
Hibernate:
    create table ppc_ad_keyword (
        ad_id number(19,0) not null,
        keyword_id number(19,0) not null,
        primary key (ad_id, keyword_id)
    )
Hibernate:
    create table ppc_adverister (
        id number(19,0) not null,
        first_name varchar2(255 char),
        gender varchar2(255 char),
        last_name varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_budget (
        id number(19,0) not null,
        per_day_budget double precision,
        per_week_budget double precision,
        primary key (id)
    )
Hibernate:
    create table ppc_category (
        id number(19,0) not null,
        cname varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_charity_fund (
        id number(10,0) not null,
        amount_due float,
        amount_paid float,
        primary key (id)
    )
Hibernate:
    create table ppc_click (
        id number(10,0) not null,
        click_value float,
        created_date timestamp,
        ip varchar2(255 char),
        timestamp timestamp,
        ad_ID number(19,0),
        click_country varchar2(255 char),
        clicked_device number(10,0),
        consumer_id number(19,0),
        keyWord_id number(19,0),
        primary key (id)
    )
Hibernate:
    create table ppc_consumer (
        id number(19,0) not null,
        firstName varchar2(255 char),
        lastName varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_country (
        id varchar2(255 char) not null,
        name varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_dan (
        ID number(19,0) not null,
        ad_text varchar2(255 char),
        ad_title varchar2(255 char),
        address varchar2(255 char),
        website varchar2(255 char),
        ad_budget_id number(19,0) not null,
        targetAudience_id number(19,0) not null,
        advertiser_id number(19,0),
        primary key (ID)
    )
Hibernate:
    create table ppc_fraud_clicks (
        id number(10,0) not null,
        advertiser_id number(10,0),
        clicktime timestamp,
        ip varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_keyword (
        id number(19,0) not null,
        kname varchar2(255 char),
        price double precision,
        catgeory_id number(19,0),
        primary key (id)
    )
Hibernate:
    create table ppc_restricted_sites (
        id number(10,0) not null,
        advertiser_id number(10,0),
        site varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table ppc_target_audience (
        id number(19,0) not null,
        isallCountry number(1,0),
        isallStates number(1,0),
        isallTerritories number(1,0),
        country_id varchar2(255 char),
        primary key (id)
    )
Hibernate:
    create table tbl_employee_new (
        ID number(19,0) not null,
        date_of_birth varchar2(255 char),
        date_of_employment varchar2(255 char),
        emergency_contact varchar2(255 char),
        employee_id varchar2(255 char),
        file_index_number varchar2(255 char),
        first_name varchar2(255 char),
        job_classification_id varchar2(255 char),
        last_name varchar2(255 char),
        middle_name varchar2(255 char),
        photo_file_name varchar2(255 char),
        sex varchar2(255 char),
        primary key (ID)
    )
Hibernate:
    alter table ppc_dan
        add constraint UK_bn0urrlr5y3qr4iud9eg3imuh  unique (ad_budget_id)
Hibernate:
    alter table ppc_dan
        add constraint UK_4ayr5dan9hwyas13ejg5rvpiv  unique (targetAudience_id)
Hibernate:
    alter table ppc_ad_keyword
        add constraint FK_34eogh6fnnym92t56n8jv3bsj
        foreign key (keyword_id)
        references ppc_keyword
Hibernate:
    alter table ppc_ad_keyword
        add constraint FK_f6j7lv02gebnylbwdk34n94kg
        foreign key (ad_id)
        references ppc_dan
Hibernate:
    alter table ppc_click
        add constraint FK_el0wys635wpcfbyyhmr2cfapg
        foreign key (ad_ID)
        references ppc_dan
Hibernate:
    alter table ppc_click
        add constraint FK_irduyl01p2vd3ljg7oa1p1sqh
        foreign key (click_country)
        references ppc_country
Hibernate:
    alter table ppc_click
        add constraint FK_jnr3y857hifi5cgm460n3atpg
        foreign key (clicked_device)
        references device
Hibernate:
    alter table ppc_click
        add constraint FK_2f8lnagd0daic5f5kd6tudahu
        foreign key (consumer_id)
        references ppc_consumer
Hibernate:
    alter table ppc_click
        add constraint FK_o3tdctyrg562wgj33n4tfst9o
        foreign key (keyWord_id)
        references ppc_keyword
Hibernate:
    alter table ppc_dan
        add constraint FK_bn0urrlr5y3qr4iud9eg3imuh
        foreign key (ad_budget_id)
        references ppc_budget
Hibernate:
    alter table ppc_dan
        add constraint FK_4ayr5dan9hwyas13ejg5rvpiv
        foreign key (targetAudience_id)
        references ppc_target_audience
Hibernate:
    alter table ppc_dan
        add constraint FK_mkqxu269xila4wyh9bndxkxhk
        foreign key (advertiser_id)
        references ppc_adverister
Hibernate:
    alter table ppc_keyword
        add constraint FK_hw2s4woqlt0ry9xv10j99orho
        foreign key (catgeory_id)
        references ppc_category
Hibernate:
    alter table ppc_target_audience
        add constraint FK_q7ewhw09x83raj6ru1rrbvg43
        foreign key (country_id)
        references ppc_country
*/