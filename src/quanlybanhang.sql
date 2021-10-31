use productmanager;
select o.oID,o.oDate,oTotalPrice
from order1 o ;
select distinct c.cName,p.pName
from customer c join order1 o on c.cID = o.cID join orderdetail o2 on o.oID = o2.oID join product p on p.pID = o2.pID;
select c.cName,count(o2.odQTY) as 'so lan mua'
from customer c left join order1 o on c.cID = o.cID left join orderdetail o2 on o.oID = o2.oID
group by c.cName
having count(o2.odQTY)=0;
select o1.oID,sum(o.odQTY*p.pPrice)
from order1 o1 join orderdetail o on o1.oID = o.oID join product p on p.pID = o.pID
group by o1.oID