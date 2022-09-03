

  create  table "postgres"."burgers_and_shakeland"."sales__dbt_tmp"
  as (
    

select
	"Transaction EmployeeID"	                     as "employee_id",
	"Employee Name"				                     as "employee_name",
	"ItemID" 					                     as "item_id",
	"Item"						                     as "item",
	"Price" 					                     as "price",
	"Location"					                     as "location",
	("Date"::date || ' ' || "Time"::time)::timestamp as ts
from "postgres"."burgers_and_shakeland"."sales_raw"
  );