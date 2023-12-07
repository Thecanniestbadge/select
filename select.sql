select 
    Zip_Code, State_Abbr, City_ID
from 
    Zipcode
on 
    Zipcode.City_ID = city.City_ID
where 
    State_Abbr = @mystate
order by 
    City_name
;