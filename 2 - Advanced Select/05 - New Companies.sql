select  
        C.company_code ,
        C.founder,
        count(distinct lead_manager_Code),
        count(distinct senior_manager_Code),
        count(distinct Manager_Code),
        count(distinct Employee_Code)
        
    from Company C
        join Employee E on E.company_Code = C.company_Code

    group by C.company_code , C.founder
    
    order by C.company_code asc