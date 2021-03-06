create table tbl_Customer
(
    Customer_ID number(38,0) CONSTRAINT pk_Customer_id primary key not null,
    External_ID varchar2(32) default SYS_GUID() not null,
    Customer_xml xmltype null,
    Status number(1) check (Status in (0,1)),
    User_name varchar2(50) default user not null,
    Date_From date default sysdate not null,
    Date_To date default TO_DATE('31.12.9999 23:59:59', 'dd/mm/yyyy hh24:mi:ss')
);