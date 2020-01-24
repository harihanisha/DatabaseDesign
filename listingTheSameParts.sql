/*
File:               template.sql
Author:             Hellen Harry
Oracle Username:    S11_harryhe    
Description:List the same set of parts as #11 but add (orderno, orderdate) if
            they were ordered.
*/
SET LINESIZE 132
SET PAGESIZE 255



SELECT p.partno,partdesc,unitprice,so.orderno,orderdate
  FROM s11.sh_part p
 INNER JOIN s11.sh_orderprod op
    ON op.partno = p.partno
 INNER JOIN s11.sh_salesorder so
    ON so.orderno = op.orderno
 WHERE partdesc LIKE 'A%'
    OR partdesc like 'C%'
    OR partdesc like 'S%';




/* 
------------output results -start------------

PARTNO PARTDESC                                                                                              UNITPRICE ORDER ORDERDATE 
------ ---------------------------------------------------------------------------------------------------- ---------- ----- ----------
C60041 Cherry                                                                                                     1000 00268 2008-10-03
A14152 Apple Basic                                                                                                2000 00268 2008-10-03
A63244 Air Duct                                                                                                   12.5 00270 2008-10-24
S52586 Samsung Oven                                                                                               3291 00284 2009-02-23
C12520 CPU Component                                                                                            259.99 00293 2009-04-28
S31045 Stove                                                                                                    599.99 00247 2008-05-15
C52033 Chain Saw                                                                                                   160 00248 2008-05-20
S54122 Sony Laptop                                                                                              799.99 00256 2008-06-28
S23696 Seagate Hard Drive                                                                                       149.99 00261 2008-07-27
S26517 Soccer net mesh                                                                                           50.43 00266 2008-09-18

115 rows selected. 

------------output results -end--------------
*/