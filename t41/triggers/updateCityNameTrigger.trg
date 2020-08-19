create or replace trigger updateCityName 
after update of cityname on client
for each row
  declare
  
  begin
        DBMS_OUTPUT.PUT_LINE( 'your cityName has been updated' );
        
  end updateCityName;
  
/
