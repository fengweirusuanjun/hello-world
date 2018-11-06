prompt PL/SQL Developer import file
prompt Created on 2018��10��26�� by lenovo
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
  is '��������';
comment on column DISASTER.collapse
  is '���������';
comment on column DISASTER.rocktype
  is '����Σ��������';
comment on column DISASTER.casualties
  is '��Ա�������';
comment on column DISASTER.directloss
  is 'ֱ�Ӿ�����ʧ(direct economic loss)';
comment on column DISASTER.threatened
  is '����в��Ա(Threatened person)';
comment on column DISASTER.maybeloss
  is '����ֱ�Ӿ�����ʧ';
comment on column DISASTER.landslidesoil
  is '�������¼�ˮ����ʧ�����س̶�(The severity of landslide and soil erosion)';
comment on column DISASTER.supply
  is '��ɳ��;������(Head of sediment supply)';
comment on column DISASTER.accumulation
  is '������ʯ���ѻ��(Gully debris flow accumulation activities)';
comment on column DISASTER.grade
  is '�ӹ�����(County grade)';
comment on column DISASTER.regional
  is '������Ӱ��̶�(Regional structure influence degree)';
comment on column DISASTER.coverage
  is '����ֲ��������(River vegetation coverage)';
comment on column DISASTER.channelchange
  is '�ӹ�����һ�α��(A recent change in the river channel)';
comment on column DISASTER.lithology
  is '����Ӱ��(The lithology influence)';
comment on column DISASTER.trenchdeposits
  is '�ع���ɢ�ﴢ��(Loose deposits along the trench)';
comment on column DISASTER.gullyslope
  is '����ɽ���¶�(Slope of gully bank slope)';
comment on column DISASTER.sandproducing
  is '��ɳ�������ж���(Sand producing area groove cut surface)';
comment on column DISASTER.drainagearea
  is '������� (drainage area)';
comment on column DISASTER.difference
  is '������Ը߲�(Drainage area relative elevation difference)';
comment on column DISASTER.blockage
  is '�ӹ������̶�(Degree of channel blockage)';
comment on column DISASTER.catchment
  is '�����ˮ��� Catchment area';
comment on column DISASTER.debris
  is '��ʯ���ض�(Severity of debris flow)';
comment on column DISASTER.sediment
  is '��ɳ�����ض�(Sediment particle weight)';
comment on column DISASTER.accumulated
  is '�ۼƵ��������(Accumulated land subsidence)';
comment on column DISASTER.rate
  is '��������(sedimentation rate)';
comment on column DISASTER.producetime
  is '�ϴ�����';
comment on column DISASTER.analysisresult
  is '���ݷ������';
comment on column DISASTER.disastertype
  is '�����������ͣ�bt������nsl��ʯ����dmcj���������';
comment on column DISASTER.sandweight
  is '��ɳ����ɢ��ƽ�����';
comment on column DISASTER.occurtime
  is '��������';
comment on column DISASTER.disaster
  is '�����׷��̶�';
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
values ('4eb35b63-57bc-4b53-ae98-4cac0482f5b4', '����3', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'C', 'C', to_date('22-10-2018 11:17:58', 'dd-mm-yyyy hh24:mi:ss'), 'C', 'dmcj', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'C');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('863745fe-0779-4633-adb7-d1aaefba2c80', '����1', '3000.0', '�㵹ʽ', 'A', '2500.0', '22', '5000.0', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'A', 'bt', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('dc78e195-46f2-41d7-85a1-9f6f8223336b', '����1', '333.0', '����ʽ', 'C', '300.0', '2', '500.0', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'C', 'bt', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('8037521e-0764-4a64-8d43-36542478b892', '����2', 'null', 'null', 'null', 'null', 'null', 'null', 'A', 'B', 'A', 'A', 'D', 'A', 'B', 'C', 'C', 'C', 'A', 'B', 'B', 'B', '3000.0', '22.0', '333.0', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'A', 'nsl', 'B', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('f43d66c7-623c-4d86-bd14-cc2b47222edb', '����3', 'null', 'null', 'null', 'null', 'null', 'null', 'A', 'B', 'B', 'A', 'C', 'D', 'A', 'A', 'D', 'D', 'C', 'D', 'D', 'D', '300.0', '10.0', '20.0', 'null', 'null', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'B', 'nsl', 'B', to_date('22-10-2018 09:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'null');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('ab31db27-24a2-452c-ac9f-ab1b6f7f099e', '����2', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'B', 'B', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'A', 'dmcj', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'A');
insert into DISASTER (id, area, collapse, rocktype, casualties, directloss, threatened, maybeloss, landslidesoil, supply, accumulation, grade, regional, coverage, channelchange, lithology, trenchdeposits, gullyslope, sandproducing, drainagearea, difference, blockage, catchment, debris, sediment, accumulated, rate, producetime, analysisresult, disastertype, sandweight, occurtime, disaster)
values ('5e5ee5de-4bdb-41d2-8f3c-e3e02c697c74', '����3', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'C', 'C', to_date('22-10-2018 11:26:00', 'dd-mm-yyyy hh24:mi:ss'), 'C', 'dmcj', 'null', to_date('11-12-2018 12:22:13', 'dd-mm-yyyy hh24:mi:ss'), 'C');
commit;
prompt 10 records loaded
prompt Enabling triggers for DISASTER...
alter table DISASTER enable all triggers;
set feedback on
set define on
prompt Done.
