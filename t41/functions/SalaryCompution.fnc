create or replace function SalaryCompution(numapts in integer, rating1 in number) 
return float is
  --variable
  newSalary float;
  
begin
  --calc     --salary = rating * 800 + 90 * numAptms 
  newSalary := rating1 * 800 + numapts * 90;
  
  return(newSalary);
  
end SalaryCompution;
/
