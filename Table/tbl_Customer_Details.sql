create table tbl_Customer_Details
(
    Customer_Detail_ID number(38) CONSTRAINT pk_CustomerDetails_id primary key not null,
    Customer_ID number(38) not null,
    Person_Type char(2) null,
    First_Name nvarchar2(50) null,
    Last_Name nvarchar2(50) null,
    Date_From date default sysdate not null,
    Date_To date default TO_DATE('31.12.9999 23:59:59', 'dd/mm/yyyy hh24:mi:ss'),
    
    CONSTRAINT fk_CustomerDetails_ID
    FOREIGN KEY (Customer_ID)
    REFERENCES tbl_Customer(Customer_ID),
    
    constraint tbl_Customer_Details_uq unique (Customer_Detail_ID, Date_To)
);