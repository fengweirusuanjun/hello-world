prompt PL/SQL Developer import file
prompt Created on 2018年10月26日 by lenovo
set feedback off
set define off
prompt Creating DISASTER...
create table DISASTER
(
  id             VARCHAR2(64) default SYS_GUID() not null,
  area           VARCHAR2(64),
  collapse       VARCHAR2(64),
  rocktype       VARCHAR2(64),
  casualties     VARCHAR2(64),
  directloss     VARCHAR2(64),
  threatened     VARCHAR2(64),
  maybeloss      VARCHAR2(64),
  landslidesoil  VARCHAR2(64),
  supply         VARCHAR2(64),
  accumulation   VARCHAR2(64),
  grade          VARCHAR2(64),
  regional       VARCHAR2(64),
  coverage       VARCHAR2(64),
  channelchange  VARCHAR2(64),
  lithology      VARCHAR2(64),
  trenchdeposits VARCHAR2(64),
  gullyslope     VARCHAR2(64),
  sandproducing  VARCHAR2(64),
  drainagearea   VARCHAR2(64),
  difference     VARCHAR2(64),
  blockage       VARCHAR2(64),
  catchment      VARCHAR2(64),
  debris         VARCHAR2(64),
  sediment       VARCHAR2(64),
  accumulated    VARCHAR2(64),
  rate           VARCHAR2(64),
  producetime    DATE,
  analysisresult VARCHAR2(64),
  disastertype   VARCHAR2(32) not null,
  sandweight     VARCHAR2(64),
  occurtime      DATE,
  disaster       VARCHAR2(64)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column DISASTER.area
  is '所属区域';
comment on column DISASTER.collapse
  is '崩塌体体积';
comment on column DISASTER.rocktype
  is '崩塌危岩体类型';
comment on column DISASTER.casualties
  is '人员伤亡情况';
comment on column DISASTER.directloss
  is '直接经济损失(direct economic loss)';
comment on column DISASTER.threatened
  is '受威胁人员(Threatened person)';
comment on column DISASTER.maybeloss
  is '可能直接经济损失';
comment on column DISASTER.landslidesoil
  is '崩塌滑坡及水土流失的严重程度(The severity of landslide and soil erosion)';
comment on column DISASTER.supply
  is '泥沙沿途补给长(Head of sediment supply)';
comment on column DISASTER.accumulation
  is '沟口泥石流堆积活动(Gully debris flow accumulation activities)';
comment on column DISASTER.grade
  is '河沟纵坡(County grade)';
comment on column DISASTER.regional
  is '区域构造影响程度(Regional structure influence degree)';
comment on column DISASTER.coverage
  is '河流植被覆盖率(River vegetation coverage)';
comment on column DISASTER.channelchange
  is '河沟近期一次变幅(A recent change in the river channel)';
comment on column DISASTER.lithology
  is '岩性影响(The lithology influence)';
comment on column DISASTER.trenchdeposits
  is '沿沟松散物储量(Loose deposits along the trench)';
comment on column DISASTER.gullyslope
  is '沟岸山坡坡度(Slope of gully bank slope)';
comment on column DISASTER.sandproducing
  is '产沙区沟槽切断面(Sand producing area groove cut surface)';
comment on column DISASTER.drainagearea
  is '流域面积 (drainage area)';
comment on column DISASTER.difference
  is '流域相对高差(Drainage area relative elevation difference)';
comment on column DISASTER.blockage
  is '河沟堵塞程度(Degree of channel blockage)';
comment on column DISASTER.catchment
  is '流域汇水面积 Catchment area';
comment on column DISASTER.debris
  is '泥石流重度(Severity of debris flow)';
comment on column DISASTER.sediment
  is '泥沙颗粒重度(Sediment particle weight)';
comment on column DISASTER.accumulated
  is '累计地面沉降量(Accumulated land subsidence)';
comment on column DISASTER.rate
  is '沉降速率(sedimentation rate)';
comment on column DISASTER.producetime
  is '上传日期';
comment on column DISASTER.analysisresult
  is '数据分析结果';
comment on column DISASTER.disastertype
  is '地灾所属类型（bt崩塌，nsl泥石流，dmcj地面沉降）';
comment on column DISASTER.sandweight
  is '产沙区松散物平均厚度';
comment on column DISASTER.occurtime
  is '发生日期';
comment on column DISASTER.disaster
  is '灾情易发程度';
alter table DISASTER
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for DISASTER...
alter table DISASTER disable all triggers;
prompt Loading DISASTER...
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('1', '2', '2', '2', '23', '33', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', to_date('30-09-2018', 'dd-mm-yyyy'), 'A', 'bt', '3', null, null);
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('2', '3', '2', '2', '23', '33', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', to_date('30-09-2018', 'dd-mm-yyyy'), 'B', 'nsl', '3', null, null);
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('3', '5', '2', '2', '23', '33', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', to_date('30-09-2018', 'dd-mm-yyyy'), 'C', 'dmcj', '3', null, null);
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('4eb35b63-57bc-4b53-ae98-4cac0482f5b4', '区块3', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'C', 'C', to_date('22-10-2018 11:17:58', 'dd-mm-yyyy hh24:mi:ss'), 'C', 'dmcj', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'C');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('863745fe-0779-4633-adb7-d1aaefba2c80', '区块1', '3000.0', '倾倒式', 'A', '2500.0', '22', '5000.0', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'A', 'bt', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('dc78e195-46f2-41d7-85a1-9f6f8223336b', '区块1', '333.0', '滑移式', 'C', '300.0', '2', '500.0', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'C', 'bt', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('8037521e-0764-4a64-8d43-36542478b892', '区块2', 'null', 'null', 'null', 'null', 'null', 'null', 'A', 'B', 'A', 'A', 'D', 'A', 'B', 'C', 'C', 'C', 'A', 'B', 'B', 'B', '3000.0', '22.0', '333.0', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'A', 'nsl', 'B', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('f43d66c7-623c-4d86-bd14-cc2b47222edb', '区块3', 'null', 'null', 'null', 'null', 'null', 'null', 'A', 'B', 'B', 'A', 'C', 'D', 'A', 'A', 'D', 'D', 'C', 'D', 'D', 'D', '300.0', '10.0', '20.0', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'B', 'nsl', 'B', to_date('22-10-2018 09:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('ab31db27-24a2-452c-ac9f-ab1b6f7f099e', '区块2', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'B', 'B', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'A', 'dmcj', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'A');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('5e5ee5de-4bdb-41d2-8f3c-e3e02c697c74', '区块3', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'C', 'C', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'C', 'dmcj', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'C');
commit;
prompt 10 records loaded
prompt Enabling triggers for DISASTER...
alter table DISASTER enable all triggers;
set feedback on
set define on
prompt Done.
