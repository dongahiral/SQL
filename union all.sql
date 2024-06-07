
with cte
As (
select distinct(TableA.ID) as ID from TableA
left join TableB on TableA.ID = TableB.ID
), cte1
As (
select distinct(TableB.ID) as ID from TableB
left join TableA on TableA.ID = TableB.ID
)
select * from TableB as a where a.ID not in (select ID from cte)
union all 
select * from TableA as a where a.ID not in (select ID from cte1) ; 


