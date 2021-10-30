use productmanager;
select distinct c.cName,p.pName
from customer c join order1 o on c.cID = o.cID join orderdetail o2 on o.oID = o2.oID join product p on p.pID = o2.pID;

