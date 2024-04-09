; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90704 () Bool)

(assert start!90704)

(declare-fun b!1036949 () Bool)

(declare-fun b_free!20883 () Bool)

(declare-fun b_next!20883 () Bool)

(assert (=> b!1036949 (= b_free!20883 (not b_next!20883))))

(declare-fun tp!73788 () Bool)

(declare-fun b_and!33433 () Bool)

(assert (=> b!1036949 (= tp!73788 b_and!33433)))

(declare-fun mapNonEmpty!38426 () Bool)

(declare-fun mapRes!38426 () Bool)

(declare-fun tp!73789 () Bool)

(declare-fun e!586537 () Bool)

(assert (=> mapNonEmpty!38426 (= mapRes!38426 (and tp!73789 e!586537))))

(declare-datatypes ((V!37677 0))(
  ( (V!37678 (val!12352 Int)) )
))
(declare-datatypes ((ValueCell!11598 0))(
  ( (ValueCellFull!11598 (v!14936 V!37677)) (EmptyCell!11598) )
))
(declare-fun mapValue!38426 () ValueCell!11598)

(declare-fun mapRest!38426 () (Array (_ BitVec 32) ValueCell!11598))

(declare-datatypes ((array!65290 0))(
  ( (array!65291 (arr!31425 (Array (_ BitVec 32) (_ BitVec 64))) (size!31955 (_ BitVec 32))) )
))
(declare-datatypes ((array!65292 0))(
  ( (array!65293 (arr!31426 (Array (_ BitVec 32) ValueCell!11598)) (size!31956 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5790 0))(
  ( (LongMapFixedSize!5791 (defaultEntry!6277 Int) (mask!30178 (_ BitVec 32)) (extraKeys!6005 (_ BitVec 32)) (zeroValue!6111 V!37677) (minValue!6111 V!37677) (_size!2950 (_ BitVec 32)) (_keys!11465 array!65290) (_values!6300 array!65292) (_vacant!2950 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5790)

(declare-fun mapKey!38426 () (_ BitVec 32))

(assert (=> mapNonEmpty!38426 (= (arr!31426 (_values!6300 thiss!1427)) (store mapRest!38426 mapKey!38426 mapValue!38426))))

(declare-fun res!692070 () Bool)

(declare-fun e!586541 () Bool)

(assert (=> start!90704 (=> (not res!692070) (not e!586541))))

(declare-fun valid!2135 (LongMapFixedSize!5790) Bool)

(assert (=> start!90704 (= res!692070 (valid!2135 thiss!1427))))

(assert (=> start!90704 e!586541))

(declare-fun e!586543 () Bool)

(assert (=> start!90704 e!586543))

(assert (=> start!90704 true))

(declare-fun tp_is_empty!24603 () Bool)

(declare-fun e!586540 () Bool)

(declare-fun array_inv!24137 (array!65290) Bool)

(declare-fun array_inv!24138 (array!65292) Bool)

(assert (=> b!1036949 (= e!586543 (and tp!73788 tp_is_empty!24603 (array_inv!24137 (_keys!11465 thiss!1427)) (array_inv!24138 (_values!6300 thiss!1427)) e!586540))))

(declare-fun b!1036950 () Bool)

(declare-fun res!692066 () Bool)

(assert (=> b!1036950 (=> (not res!692066) (not e!586541))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1036950 (= res!692066 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1036951 () Bool)

(declare-fun e!586536 () Bool)

(assert (=> b!1036951 (= e!586536 tp_is_empty!24603)))

(declare-fun b!1036952 () Bool)

(assert (=> b!1036952 (= e!586537 tp_is_empty!24603)))

(declare-fun b!1036953 () Bool)

(declare-fun res!692069 () Bool)

(declare-fun e!586539 () Bool)

(assert (=> b!1036953 (=> res!692069 e!586539)))

(declare-datatypes ((SeekEntryResult!9743 0))(
  ( (MissingZero!9743 (index!41342 (_ BitVec 32))) (Found!9743 (index!41343 (_ BitVec 32))) (Intermediate!9743 (undefined!10555 Bool) (index!41344 (_ BitVec 32)) (x!92480 (_ BitVec 32))) (Undefined!9743) (MissingVacant!9743 (index!41345 (_ BitVec 32))) )
))
(declare-fun lt!457346 () SeekEntryResult!9743)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1036953 (= res!692069 (not (validKeyInArray!0 (select (arr!31425 (_keys!11465 thiss!1427)) (index!41343 lt!457346)))))))

(declare-fun b!1036954 () Bool)

(declare-fun e!586538 () Bool)

(assert (=> b!1036954 (= e!586541 e!586538)))

(declare-fun res!692067 () Bool)

(assert (=> b!1036954 (=> (not res!692067) (not e!586538))))

(get-info :version)

(assert (=> b!1036954 (= res!692067 ((_ is Found!9743) lt!457346))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65290 (_ BitVec 32)) SeekEntryResult!9743)

(assert (=> b!1036954 (= lt!457346 (seekEntry!0 key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)))))

(declare-fun b!1036955 () Bool)

(assert (=> b!1036955 (= e!586539 (bvsge (size!31955 (_keys!11465 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1036956 () Bool)

(assert (=> b!1036956 (= e!586540 (and e!586536 mapRes!38426))))

(declare-fun condMapEmpty!38426 () Bool)

(declare-fun mapDefault!38426 () ValueCell!11598)

(assert (=> b!1036956 (= condMapEmpty!38426 (= (arr!31426 (_values!6300 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11598)) mapDefault!38426)))))

(declare-fun mapIsEmpty!38426 () Bool)

(assert (=> mapIsEmpty!38426 mapRes!38426))

(declare-fun b!1036957 () Bool)

(assert (=> b!1036957 (= e!586538 e!586539)))

(declare-fun res!692068 () Bool)

(assert (=> b!1036957 (=> res!692068 e!586539)))

(assert (=> b!1036957 (= res!692068 (or (bvslt (index!41343 lt!457346) #b00000000000000000000000000000000) (bvsge (index!41343 lt!457346) (size!31955 (_keys!11465 thiss!1427)))))))

(assert (= (and start!90704 res!692070) b!1036950))

(assert (= (and b!1036950 res!692066) b!1036954))

(assert (= (and b!1036954 res!692067) b!1036957))

(assert (= (and b!1036957 (not res!692068)) b!1036953))

(assert (= (and b!1036953 (not res!692069)) b!1036955))

(assert (= (and b!1036956 condMapEmpty!38426) mapIsEmpty!38426))

(assert (= (and b!1036956 (not condMapEmpty!38426)) mapNonEmpty!38426))

(assert (= (and mapNonEmpty!38426 ((_ is ValueCellFull!11598) mapValue!38426)) b!1036952))

(assert (= (and b!1036956 ((_ is ValueCellFull!11598) mapDefault!38426)) b!1036951))

(assert (= b!1036949 b!1036956))

(assert (= start!90704 b!1036949))

(declare-fun m!957449 () Bool)

(assert (=> mapNonEmpty!38426 m!957449))

(declare-fun m!957451 () Bool)

(assert (=> start!90704 m!957451))

(declare-fun m!957453 () Bool)

(assert (=> b!1036949 m!957453))

(declare-fun m!957455 () Bool)

(assert (=> b!1036949 m!957455))

(declare-fun m!957457 () Bool)

(assert (=> b!1036954 m!957457))

(declare-fun m!957459 () Bool)

(assert (=> b!1036953 m!957459))

(assert (=> b!1036953 m!957459))

(declare-fun m!957461 () Bool)

(assert (=> b!1036953 m!957461))

(check-sat (not start!90704) tp_is_empty!24603 (not b!1036949) (not b!1036953) (not b_next!20883) b_and!33433 (not mapNonEmpty!38426) (not b!1036954))
(check-sat b_and!33433 (not b_next!20883))
(get-model)

(declare-fun b!1036997 () Bool)

(declare-fun c!105007 () Bool)

(declare-fun lt!457358 () (_ BitVec 64))

(assert (=> b!1036997 (= c!105007 (= lt!457358 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586575 () SeekEntryResult!9743)

(declare-fun e!586576 () SeekEntryResult!9743)

(assert (=> b!1036997 (= e!586575 e!586576)))

(declare-fun b!1036998 () Bool)

(declare-fun e!586574 () SeekEntryResult!9743)

(assert (=> b!1036998 (= e!586574 Undefined!9743)))

(declare-fun b!1036999 () Bool)

(declare-fun lt!457359 () SeekEntryResult!9743)

(assert (=> b!1036999 (= e!586575 (Found!9743 (index!41344 lt!457359)))))

(declare-fun b!1037001 () Bool)

(assert (=> b!1037001 (= e!586576 (MissingZero!9743 (index!41344 lt!457359)))))

(declare-fun b!1037002 () Bool)

(assert (=> b!1037002 (= e!586574 e!586575)))

(assert (=> b!1037002 (= lt!457358 (select (arr!31425 (_keys!11465 thiss!1427)) (index!41344 lt!457359)))))

(declare-fun c!105008 () Bool)

(assert (=> b!1037002 (= c!105008 (= lt!457358 key!909))))

(declare-fun d!125133 () Bool)

(declare-fun lt!457361 () SeekEntryResult!9743)

(assert (=> d!125133 (and (or ((_ is MissingVacant!9743) lt!457361) (not ((_ is Found!9743) lt!457361)) (and (bvsge (index!41343 lt!457361) #b00000000000000000000000000000000) (bvslt (index!41343 lt!457361) (size!31955 (_keys!11465 thiss!1427))))) (not ((_ is MissingVacant!9743) lt!457361)) (or (not ((_ is Found!9743) lt!457361)) (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41343 lt!457361)) key!909)))))

(assert (=> d!125133 (= lt!457361 e!586574)))

(declare-fun c!105006 () Bool)

(assert (=> d!125133 (= c!105006 (and ((_ is Intermediate!9743) lt!457359) (undefined!10555 lt!457359)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65290 (_ BitVec 32)) SeekEntryResult!9743)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125133 (= lt!457359 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30178 thiss!1427)) key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125133 (validMask!0 (mask!30178 thiss!1427))))

(assert (=> d!125133 (= (seekEntry!0 key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)) lt!457361)))

(declare-fun b!1037000 () Bool)

(declare-fun lt!457360 () SeekEntryResult!9743)

(assert (=> b!1037000 (= e!586576 (ite ((_ is MissingVacant!9743) lt!457360) (MissingZero!9743 (index!41345 lt!457360)) lt!457360))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65290 (_ BitVec 32)) SeekEntryResult!9743)

(assert (=> b!1037000 (= lt!457360 (seekKeyOrZeroReturnVacant!0 (x!92480 lt!457359) (index!41344 lt!457359) (index!41344 lt!457359) key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)))))

(assert (= (and d!125133 c!105006) b!1036998))

(assert (= (and d!125133 (not c!105006)) b!1037002))

(assert (= (and b!1037002 c!105008) b!1036999))

(assert (= (and b!1037002 (not c!105008)) b!1036997))

(assert (= (and b!1036997 c!105007) b!1037001))

(assert (= (and b!1036997 (not c!105007)) b!1037000))

(declare-fun m!957477 () Bool)

(assert (=> b!1037002 m!957477))

(declare-fun m!957479 () Bool)

(assert (=> d!125133 m!957479))

(declare-fun m!957481 () Bool)

(assert (=> d!125133 m!957481))

(assert (=> d!125133 m!957481))

(declare-fun m!957483 () Bool)

(assert (=> d!125133 m!957483))

(declare-fun m!957485 () Bool)

(assert (=> d!125133 m!957485))

(declare-fun m!957487 () Bool)

(assert (=> b!1037000 m!957487))

(assert (=> b!1036954 d!125133))

(declare-fun d!125135 () Bool)

(assert (=> d!125135 (= (array_inv!24137 (_keys!11465 thiss!1427)) (bvsge (size!31955 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1036949 d!125135))

(declare-fun d!125137 () Bool)

(assert (=> d!125137 (= (array_inv!24138 (_values!6300 thiss!1427)) (bvsge (size!31956 (_values!6300 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1036949 d!125137))

(declare-fun d!125139 () Bool)

(assert (=> d!125139 (= (validKeyInArray!0 (select (arr!31425 (_keys!11465 thiss!1427)) (index!41343 lt!457346))) (and (not (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41343 lt!457346)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41343 lt!457346)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1036953 d!125139))

(declare-fun d!125141 () Bool)

(declare-fun res!692092 () Bool)

(declare-fun e!586579 () Bool)

(assert (=> d!125141 (=> (not res!692092) (not e!586579))))

(declare-fun simpleValid!414 (LongMapFixedSize!5790) Bool)

(assert (=> d!125141 (= res!692092 (simpleValid!414 thiss!1427))))

(assert (=> d!125141 (= (valid!2135 thiss!1427) e!586579)))

(declare-fun b!1037009 () Bool)

(declare-fun res!692093 () Bool)

(assert (=> b!1037009 (=> (not res!692093) (not e!586579))))

(declare-fun arrayCountValidKeys!0 (array!65290 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037009 (= res!692093 (= (arrayCountValidKeys!0 (_keys!11465 thiss!1427) #b00000000000000000000000000000000 (size!31955 (_keys!11465 thiss!1427))) (_size!2950 thiss!1427)))))

(declare-fun b!1037010 () Bool)

(declare-fun res!692094 () Bool)

(assert (=> b!1037010 (=> (not res!692094) (not e!586579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65290 (_ BitVec 32)) Bool)

(assert (=> b!1037010 (= res!692094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)))))

(declare-fun b!1037011 () Bool)

(declare-datatypes ((List!22037 0))(
  ( (Nil!22034) (Cons!22033 (h!23235 (_ BitVec 64)) (t!31258 List!22037)) )
))
(declare-fun arrayNoDuplicates!0 (array!65290 (_ BitVec 32) List!22037) Bool)

(assert (=> b!1037011 (= e!586579 (arrayNoDuplicates!0 (_keys!11465 thiss!1427) #b00000000000000000000000000000000 Nil!22034))))

(assert (= (and d!125141 res!692092) b!1037009))

(assert (= (and b!1037009 res!692093) b!1037010))

(assert (= (and b!1037010 res!692094) b!1037011))

(declare-fun m!957489 () Bool)

(assert (=> d!125141 m!957489))

(declare-fun m!957491 () Bool)

(assert (=> b!1037009 m!957491))

(declare-fun m!957493 () Bool)

(assert (=> b!1037010 m!957493))

(declare-fun m!957495 () Bool)

(assert (=> b!1037011 m!957495))

(assert (=> start!90704 d!125141))

(declare-fun mapNonEmpty!38432 () Bool)

(declare-fun mapRes!38432 () Bool)

(declare-fun tp!73798 () Bool)

(declare-fun e!586584 () Bool)

(assert (=> mapNonEmpty!38432 (= mapRes!38432 (and tp!73798 e!586584))))

(declare-fun mapValue!38432 () ValueCell!11598)

(declare-fun mapKey!38432 () (_ BitVec 32))

(declare-fun mapRest!38432 () (Array (_ BitVec 32) ValueCell!11598))

(assert (=> mapNonEmpty!38432 (= mapRest!38426 (store mapRest!38432 mapKey!38432 mapValue!38432))))

(declare-fun b!1037018 () Bool)

(assert (=> b!1037018 (= e!586584 tp_is_empty!24603)))

(declare-fun condMapEmpty!38432 () Bool)

(declare-fun mapDefault!38432 () ValueCell!11598)

(assert (=> mapNonEmpty!38426 (= condMapEmpty!38432 (= mapRest!38426 ((as const (Array (_ BitVec 32) ValueCell!11598)) mapDefault!38432)))))

(declare-fun e!586585 () Bool)

(assert (=> mapNonEmpty!38426 (= tp!73789 (and e!586585 mapRes!38432))))

(declare-fun b!1037019 () Bool)

(assert (=> b!1037019 (= e!586585 tp_is_empty!24603)))

(declare-fun mapIsEmpty!38432 () Bool)

(assert (=> mapIsEmpty!38432 mapRes!38432))

(assert (= (and mapNonEmpty!38426 condMapEmpty!38432) mapIsEmpty!38432))

(assert (= (and mapNonEmpty!38426 (not condMapEmpty!38432)) mapNonEmpty!38432))

(assert (= (and mapNonEmpty!38432 ((_ is ValueCellFull!11598) mapValue!38432)) b!1037018))

(assert (= (and mapNonEmpty!38426 ((_ is ValueCellFull!11598) mapDefault!38432)) b!1037019))

(declare-fun m!957497 () Bool)

(assert (=> mapNonEmpty!38432 m!957497))

(check-sat (not d!125141) (not b!1037010) (not b!1037009) b_and!33433 (not d!125133) (not mapNonEmpty!38432) (not b!1037011) tp_is_empty!24603 (not b_next!20883) (not b!1037000))
(check-sat b_and!33433 (not b_next!20883))
(get-model)

(declare-fun bm!43903 () Bool)

(declare-fun call!43906 () Bool)

(assert (=> bm!43903 (= call!43906 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!11465 thiss!1427) (mask!30178 thiss!1427)))))

(declare-fun b!1037029 () Bool)

(declare-fun e!586594 () Bool)

(assert (=> b!1037029 (= e!586594 call!43906)))

(declare-fun b!1037030 () Bool)

(declare-fun e!586592 () Bool)

(assert (=> b!1037030 (= e!586592 call!43906)))

(declare-fun b!1037031 () Bool)

(declare-fun e!586593 () Bool)

(assert (=> b!1037031 (= e!586593 e!586592)))

(declare-fun c!105011 () Bool)

(assert (=> b!1037031 (= c!105011 (validKeyInArray!0 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037028 () Bool)

(assert (=> b!1037028 (= e!586592 e!586594)))

(declare-fun lt!457370 () (_ BitVec 64))

(assert (=> b!1037028 (= lt!457370 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33920 0))(
  ( (Unit!33921) )
))
(declare-fun lt!457369 () Unit!33920)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65290 (_ BitVec 64) (_ BitVec 32)) Unit!33920)

(assert (=> b!1037028 (= lt!457369 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!11465 thiss!1427) lt!457370 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!65290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1037028 (arrayContainsKey!0 (_keys!11465 thiss!1427) lt!457370 #b00000000000000000000000000000000)))

(declare-fun lt!457368 () Unit!33920)

(assert (=> b!1037028 (= lt!457368 lt!457369)))

(declare-fun res!692099 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65290 (_ BitVec 32)) SeekEntryResult!9743)

(assert (=> b!1037028 (= res!692099 (= (seekEntryOrOpen!0 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000) (_keys!11465 thiss!1427) (mask!30178 thiss!1427)) (Found!9743 #b00000000000000000000000000000000)))))

(assert (=> b!1037028 (=> (not res!692099) (not e!586594))))

(declare-fun d!125143 () Bool)

(declare-fun res!692100 () Bool)

(assert (=> d!125143 (=> res!692100 e!586593)))

(assert (=> d!125143 (= res!692100 (bvsge #b00000000000000000000000000000000 (size!31955 (_keys!11465 thiss!1427))))))

(assert (=> d!125143 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)) e!586593)))

(assert (= (and d!125143 (not res!692100)) b!1037031))

(assert (= (and b!1037031 c!105011) b!1037028))

(assert (= (and b!1037031 (not c!105011)) b!1037030))

(assert (= (and b!1037028 res!692099) b!1037029))

(assert (= (or b!1037029 b!1037030) bm!43903))

(declare-fun m!957499 () Bool)

(assert (=> bm!43903 m!957499))

(declare-fun m!957501 () Bool)

(assert (=> b!1037031 m!957501))

(assert (=> b!1037031 m!957501))

(declare-fun m!957503 () Bool)

(assert (=> b!1037031 m!957503))

(assert (=> b!1037028 m!957501))

(declare-fun m!957505 () Bool)

(assert (=> b!1037028 m!957505))

(declare-fun m!957507 () Bool)

(assert (=> b!1037028 m!957507))

(assert (=> b!1037028 m!957501))

(declare-fun m!957509 () Bool)

(assert (=> b!1037028 m!957509))

(assert (=> b!1037010 d!125143))

(declare-fun b!1037044 () Bool)

(declare-fun e!586602 () SeekEntryResult!9743)

(declare-fun e!586601 () SeekEntryResult!9743)

(assert (=> b!1037044 (= e!586602 e!586601)))

(declare-fun c!105019 () Bool)

(declare-fun lt!457376 () (_ BitVec 64))

(assert (=> b!1037044 (= c!105019 (= lt!457376 key!909))))

(declare-fun b!1037045 () Bool)

(declare-fun e!586603 () SeekEntryResult!9743)

(assert (=> b!1037045 (= e!586603 (MissingVacant!9743 (index!41344 lt!457359)))))

(declare-fun b!1037046 () Bool)

(assert (=> b!1037046 (= e!586602 Undefined!9743)))

(declare-fun lt!457375 () SeekEntryResult!9743)

(declare-fun d!125145 () Bool)

(assert (=> d!125145 (and (or ((_ is Undefined!9743) lt!457375) (not ((_ is Found!9743) lt!457375)) (and (bvsge (index!41343 lt!457375) #b00000000000000000000000000000000) (bvslt (index!41343 lt!457375) (size!31955 (_keys!11465 thiss!1427))))) (or ((_ is Undefined!9743) lt!457375) ((_ is Found!9743) lt!457375) (not ((_ is MissingVacant!9743) lt!457375)) (not (= (index!41345 lt!457375) (index!41344 lt!457359))) (and (bvsge (index!41345 lt!457375) #b00000000000000000000000000000000) (bvslt (index!41345 lt!457375) (size!31955 (_keys!11465 thiss!1427))))) (or ((_ is Undefined!9743) lt!457375) (ite ((_ is Found!9743) lt!457375) (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41343 lt!457375)) key!909) (and ((_ is MissingVacant!9743) lt!457375) (= (index!41345 lt!457375) (index!41344 lt!457359)) (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41345 lt!457375)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!125145 (= lt!457375 e!586602)))

(declare-fun c!105020 () Bool)

(assert (=> d!125145 (= c!105020 (bvsge (x!92480 lt!457359) #b01111111111111111111111111111110))))

(assert (=> d!125145 (= lt!457376 (select (arr!31425 (_keys!11465 thiss!1427)) (index!41344 lt!457359)))))

(assert (=> d!125145 (validMask!0 (mask!30178 thiss!1427))))

(assert (=> d!125145 (= (seekKeyOrZeroReturnVacant!0 (x!92480 lt!457359) (index!41344 lt!457359) (index!41344 lt!457359) key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)) lt!457375)))

(declare-fun b!1037047 () Bool)

(assert (=> b!1037047 (= e!586601 (Found!9743 (index!41344 lt!457359)))))

(declare-fun b!1037048 () Bool)

(declare-fun c!105018 () Bool)

(assert (=> b!1037048 (= c!105018 (= lt!457376 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1037048 (= e!586601 e!586603)))

(declare-fun b!1037049 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037049 (= e!586603 (seekKeyOrZeroReturnVacant!0 (bvadd (x!92480 lt!457359) #b00000000000000000000000000000001) (nextIndex!0 (index!41344 lt!457359) (x!92480 lt!457359) (mask!30178 thiss!1427)) (index!41344 lt!457359) key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)))))

(assert (= (and d!125145 c!105020) b!1037046))

(assert (= (and d!125145 (not c!105020)) b!1037044))

(assert (= (and b!1037044 c!105019) b!1037047))

(assert (= (and b!1037044 (not c!105019)) b!1037048))

(assert (= (and b!1037048 c!105018) b!1037045))

(assert (= (and b!1037048 (not c!105018)) b!1037049))

(declare-fun m!957511 () Bool)

(assert (=> d!125145 m!957511))

(declare-fun m!957513 () Bool)

(assert (=> d!125145 m!957513))

(assert (=> d!125145 m!957477))

(assert (=> d!125145 m!957485))

(declare-fun m!957515 () Bool)

(assert (=> b!1037049 m!957515))

(assert (=> b!1037049 m!957515))

(declare-fun m!957517 () Bool)

(assert (=> b!1037049 m!957517))

(assert (=> b!1037000 d!125145))

(declare-fun d!125147 () Bool)

(declare-fun lt!457379 () (_ BitVec 32))

(assert (=> d!125147 (and (bvsge lt!457379 #b00000000000000000000000000000000) (bvsle lt!457379 (bvsub (size!31955 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!586609 () (_ BitVec 32))

(assert (=> d!125147 (= lt!457379 e!586609)))

(declare-fun c!105025 () Bool)

(assert (=> d!125147 (= c!105025 (bvsge #b00000000000000000000000000000000 (size!31955 (_keys!11465 thiss!1427))))))

(assert (=> d!125147 (and (bvsle #b00000000000000000000000000000000 (size!31955 (_keys!11465 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31955 (_keys!11465 thiss!1427)) (size!31955 (_keys!11465 thiss!1427))))))

(assert (=> d!125147 (= (arrayCountValidKeys!0 (_keys!11465 thiss!1427) #b00000000000000000000000000000000 (size!31955 (_keys!11465 thiss!1427))) lt!457379)))

(declare-fun b!1037058 () Bool)

(declare-fun e!586608 () (_ BitVec 32))

(declare-fun call!43909 () (_ BitVec 32))

(assert (=> b!1037058 (= e!586608 call!43909)))

(declare-fun b!1037059 () Bool)

(assert (=> b!1037059 (= e!586609 #b00000000000000000000000000000000)))

(declare-fun b!1037060 () Bool)

(assert (=> b!1037060 (= e!586608 (bvadd #b00000000000000000000000000000001 call!43909))))

(declare-fun b!1037061 () Bool)

(assert (=> b!1037061 (= e!586609 e!586608)))

(declare-fun c!105026 () Bool)

(assert (=> b!1037061 (= c!105026 (validKeyInArray!0 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!43906 () Bool)

(assert (=> bm!43906 (= call!43909 (arrayCountValidKeys!0 (_keys!11465 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31955 (_keys!11465 thiss!1427))))))

(assert (= (and d!125147 c!105025) b!1037059))

(assert (= (and d!125147 (not c!105025)) b!1037061))

(assert (= (and b!1037061 c!105026) b!1037060))

(assert (= (and b!1037061 (not c!105026)) b!1037058))

(assert (= (or b!1037060 b!1037058) bm!43906))

(assert (=> b!1037061 m!957501))

(assert (=> b!1037061 m!957501))

(assert (=> b!1037061 m!957503))

(declare-fun m!957519 () Bool)

(assert (=> bm!43906 m!957519))

(assert (=> b!1037009 d!125147))

(declare-fun b!1037072 () Bool)

(declare-fun res!692110 () Bool)

(declare-fun e!586612 () Bool)

(assert (=> b!1037072 (=> (not res!692110) (not e!586612))))

(declare-fun size!31959 (LongMapFixedSize!5790) (_ BitVec 32))

(assert (=> b!1037072 (= res!692110 (= (size!31959 thiss!1427) (bvadd (_size!2950 thiss!1427) (bvsdiv (bvadd (extraKeys!6005 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1037070 () Bool)

(declare-fun res!692109 () Bool)

(assert (=> b!1037070 (=> (not res!692109) (not e!586612))))

(assert (=> b!1037070 (= res!692109 (and (= (size!31956 (_values!6300 thiss!1427)) (bvadd (mask!30178 thiss!1427) #b00000000000000000000000000000001)) (= (size!31955 (_keys!11465 thiss!1427)) (size!31956 (_values!6300 thiss!1427))) (bvsge (_size!2950 thiss!1427) #b00000000000000000000000000000000) (bvsle (_size!2950 thiss!1427) (bvadd (mask!30178 thiss!1427) #b00000000000000000000000000000001))))))

(declare-fun d!125149 () Bool)

(declare-fun res!692111 () Bool)

(assert (=> d!125149 (=> (not res!692111) (not e!586612))))

(assert (=> d!125149 (= res!692111 (validMask!0 (mask!30178 thiss!1427)))))

(assert (=> d!125149 (= (simpleValid!414 thiss!1427) e!586612)))

(declare-fun b!1037071 () Bool)

(declare-fun res!692112 () Bool)

(assert (=> b!1037071 (=> (not res!692112) (not e!586612))))

(assert (=> b!1037071 (= res!692112 (bvsge (size!31959 thiss!1427) (_size!2950 thiss!1427)))))

(declare-fun b!1037073 () Bool)

(assert (=> b!1037073 (= e!586612 (and (bvsge (extraKeys!6005 thiss!1427) #b00000000000000000000000000000000) (bvsle (extraKeys!6005 thiss!1427) #b00000000000000000000000000000011) (bvsge (_vacant!2950 thiss!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!125149 res!692111) b!1037070))

(assert (= (and b!1037070 res!692109) b!1037071))

(assert (= (and b!1037071 res!692112) b!1037072))

(assert (= (and b!1037072 res!692110) b!1037073))

(declare-fun m!957521 () Bool)

(assert (=> b!1037072 m!957521))

(assert (=> d!125149 m!957485))

(assert (=> b!1037071 m!957521))

(assert (=> d!125141 d!125149))

(declare-fun b!1037092 () Bool)

(declare-fun lt!457384 () SeekEntryResult!9743)

(assert (=> b!1037092 (and (bvsge (index!41344 lt!457384) #b00000000000000000000000000000000) (bvslt (index!41344 lt!457384) (size!31955 (_keys!11465 thiss!1427))))))

(declare-fun res!692119 () Bool)

(assert (=> b!1037092 (= res!692119 (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41344 lt!457384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586627 () Bool)

(assert (=> b!1037092 (=> res!692119 e!586627)))

(declare-fun b!1037093 () Bool)

(declare-fun e!586625 () SeekEntryResult!9743)

(declare-fun e!586624 () SeekEntryResult!9743)

(assert (=> b!1037093 (= e!586625 e!586624)))

(declare-fun c!105034 () Bool)

(declare-fun lt!457385 () (_ BitVec 64))

(assert (=> b!1037093 (= c!105034 (or (= lt!457385 key!909) (= (bvadd lt!457385 lt!457385) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1037094 () Bool)

(declare-fun e!586626 () Bool)

(declare-fun e!586623 () Bool)

(assert (=> b!1037094 (= e!586626 e!586623)))

(declare-fun res!692121 () Bool)

(assert (=> b!1037094 (= res!692121 (and ((_ is Intermediate!9743) lt!457384) (not (undefined!10555 lt!457384)) (bvslt (x!92480 lt!457384) #b01111111111111111111111111111110) (bvsge (x!92480 lt!457384) #b00000000000000000000000000000000) (bvsge (x!92480 lt!457384) #b00000000000000000000000000000000)))))

(assert (=> b!1037094 (=> (not res!692121) (not e!586623))))

(declare-fun b!1037095 () Bool)

(assert (=> b!1037095 (and (bvsge (index!41344 lt!457384) #b00000000000000000000000000000000) (bvslt (index!41344 lt!457384) (size!31955 (_keys!11465 thiss!1427))))))

(declare-fun res!692120 () Bool)

(assert (=> b!1037095 (= res!692120 (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41344 lt!457384)) key!909))))

(assert (=> b!1037095 (=> res!692120 e!586627)))

(assert (=> b!1037095 (= e!586623 e!586627)))

(declare-fun d!125151 () Bool)

(assert (=> d!125151 e!586626))

(declare-fun c!105033 () Bool)

(assert (=> d!125151 (= c!105033 (and ((_ is Intermediate!9743) lt!457384) (undefined!10555 lt!457384)))))

(assert (=> d!125151 (= lt!457384 e!586625)))

(declare-fun c!105035 () Bool)

(assert (=> d!125151 (= c!105035 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!125151 (= lt!457385 (select (arr!31425 (_keys!11465 thiss!1427)) (toIndex!0 key!909 (mask!30178 thiss!1427))))))

(assert (=> d!125151 (validMask!0 (mask!30178 thiss!1427))))

(assert (=> d!125151 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30178 thiss!1427)) key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)) lt!457384)))

(declare-fun b!1037096 () Bool)

(assert (=> b!1037096 (and (bvsge (index!41344 lt!457384) #b00000000000000000000000000000000) (bvslt (index!41344 lt!457384) (size!31955 (_keys!11465 thiss!1427))))))

(assert (=> b!1037096 (= e!586627 (= (select (arr!31425 (_keys!11465 thiss!1427)) (index!41344 lt!457384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037097 () Bool)

(assert (=> b!1037097 (= e!586625 (Intermediate!9743 true (toIndex!0 key!909 (mask!30178 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1037098 () Bool)

(assert (=> b!1037098 (= e!586624 (Intermediate!9743 false (toIndex!0 key!909 (mask!30178 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun b!1037099 () Bool)

(assert (=> b!1037099 (= e!586626 (bvsge (x!92480 lt!457384) #b01111111111111111111111111111110))))

(declare-fun b!1037100 () Bool)

(assert (=> b!1037100 (= e!586624 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!909 (mask!30178 thiss!1427)) #b00000000000000000000000000000000 (mask!30178 thiss!1427)) key!909 (_keys!11465 thiss!1427) (mask!30178 thiss!1427)))))

(assert (= (and d!125151 c!105035) b!1037097))

(assert (= (and d!125151 (not c!105035)) b!1037093))

(assert (= (and b!1037093 c!105034) b!1037098))

(assert (= (and b!1037093 (not c!105034)) b!1037100))

(assert (= (and d!125151 c!105033) b!1037099))

(assert (= (and d!125151 (not c!105033)) b!1037094))

(assert (= (and b!1037094 res!692121) b!1037095))

(assert (= (and b!1037095 (not res!692120)) b!1037092))

(assert (= (and b!1037092 (not res!692119)) b!1037096))

(assert (=> d!125151 m!957481))

(declare-fun m!957523 () Bool)

(assert (=> d!125151 m!957523))

(assert (=> d!125151 m!957485))

(declare-fun m!957525 () Bool)

(assert (=> b!1037092 m!957525))

(assert (=> b!1037096 m!957525))

(assert (=> b!1037100 m!957481))

(declare-fun m!957527 () Bool)

(assert (=> b!1037100 m!957527))

(assert (=> b!1037100 m!957527))

(declare-fun m!957529 () Bool)

(assert (=> b!1037100 m!957529))

(assert (=> b!1037095 m!957525))

(assert (=> d!125133 d!125151))

(declare-fun d!125153 () Bool)

(declare-fun lt!457391 () (_ BitVec 32))

(declare-fun lt!457390 () (_ BitVec 32))

(assert (=> d!125153 (= lt!457391 (bvmul (bvxor lt!457390 (bvlshr lt!457390 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!125153 (= lt!457390 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!125153 (and (bvsge (mask!30178 thiss!1427) #b00000000000000000000000000000000) (let ((res!692122 (let ((h!23236 ((_ extract 31 0) (bvand (bvxor key!909 (bvlshr key!909 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!92498 (bvmul (bvxor h!23236 (bvlshr h!23236 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!92498 (bvlshr x!92498 #b00000000000000000000000000001101)) (mask!30178 thiss!1427)))))) (and (bvslt res!692122 (bvadd (mask!30178 thiss!1427) #b00000000000000000000000000000001)) (bvsge res!692122 #b00000000000000000000000000000000))))))

(assert (=> d!125153 (= (toIndex!0 key!909 (mask!30178 thiss!1427)) (bvand (bvxor lt!457391 (bvlshr lt!457391 #b00000000000000000000000000001101)) (mask!30178 thiss!1427)))))

(assert (=> d!125133 d!125153))

(declare-fun d!125155 () Bool)

(assert (=> d!125155 (= (validMask!0 (mask!30178 thiss!1427)) (and (or (= (mask!30178 thiss!1427) #b00000000000000000000000000000111) (= (mask!30178 thiss!1427) #b00000000000000000000000000001111) (= (mask!30178 thiss!1427) #b00000000000000000000000000011111) (= (mask!30178 thiss!1427) #b00000000000000000000000000111111) (= (mask!30178 thiss!1427) #b00000000000000000000000001111111) (= (mask!30178 thiss!1427) #b00000000000000000000000011111111) (= (mask!30178 thiss!1427) #b00000000000000000000000111111111) (= (mask!30178 thiss!1427) #b00000000000000000000001111111111) (= (mask!30178 thiss!1427) #b00000000000000000000011111111111) (= (mask!30178 thiss!1427) #b00000000000000000000111111111111) (= (mask!30178 thiss!1427) #b00000000000000000001111111111111) (= (mask!30178 thiss!1427) #b00000000000000000011111111111111) (= (mask!30178 thiss!1427) #b00000000000000000111111111111111) (= (mask!30178 thiss!1427) #b00000000000000001111111111111111) (= (mask!30178 thiss!1427) #b00000000000000011111111111111111) (= (mask!30178 thiss!1427) #b00000000000000111111111111111111) (= (mask!30178 thiss!1427) #b00000000000001111111111111111111) (= (mask!30178 thiss!1427) #b00000000000011111111111111111111) (= (mask!30178 thiss!1427) #b00000000000111111111111111111111) (= (mask!30178 thiss!1427) #b00000000001111111111111111111111) (= (mask!30178 thiss!1427) #b00000000011111111111111111111111) (= (mask!30178 thiss!1427) #b00000000111111111111111111111111) (= (mask!30178 thiss!1427) #b00000001111111111111111111111111) (= (mask!30178 thiss!1427) #b00000011111111111111111111111111) (= (mask!30178 thiss!1427) #b00000111111111111111111111111111) (= (mask!30178 thiss!1427) #b00001111111111111111111111111111) (= (mask!30178 thiss!1427) #b00011111111111111111111111111111) (= (mask!30178 thiss!1427) #b00111111111111111111111111111111)) (bvsle (mask!30178 thiss!1427) #b00111111111111111111111111111111)))))

(assert (=> d!125133 d!125155))

(declare-fun b!1037111 () Bool)

(declare-fun e!586637 () Bool)

(declare-fun e!586638 () Bool)

(assert (=> b!1037111 (= e!586637 e!586638)))

(declare-fun c!105038 () Bool)

(assert (=> b!1037111 (= c!105038 (validKeyInArray!0 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037112 () Bool)

(declare-fun e!586636 () Bool)

(declare-fun contains!6047 (List!22037 (_ BitVec 64)) Bool)

(assert (=> b!1037112 (= e!586636 (contains!6047 Nil!22034 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037113 () Bool)

(declare-fun call!43912 () Bool)

(assert (=> b!1037113 (= e!586638 call!43912)))

(declare-fun b!1037114 () Bool)

(declare-fun e!586639 () Bool)

(assert (=> b!1037114 (= e!586639 e!586637)))

(declare-fun res!692131 () Bool)

(assert (=> b!1037114 (=> (not res!692131) (not e!586637))))

(assert (=> b!1037114 (= res!692131 (not e!586636))))

(declare-fun res!692130 () Bool)

(assert (=> b!1037114 (=> (not res!692130) (not e!586636))))

(assert (=> b!1037114 (= res!692130 (validKeyInArray!0 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037115 () Bool)

(assert (=> b!1037115 (= e!586638 call!43912)))

(declare-fun d!125157 () Bool)

(declare-fun res!692129 () Bool)

(assert (=> d!125157 (=> res!692129 e!586639)))

(assert (=> d!125157 (= res!692129 (bvsge #b00000000000000000000000000000000 (size!31955 (_keys!11465 thiss!1427))))))

(assert (=> d!125157 (= (arrayNoDuplicates!0 (_keys!11465 thiss!1427) #b00000000000000000000000000000000 Nil!22034) e!586639)))

(declare-fun bm!43909 () Bool)

(assert (=> bm!43909 (= call!43912 (arrayNoDuplicates!0 (_keys!11465 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!105038 (Cons!22033 (select (arr!31425 (_keys!11465 thiss!1427)) #b00000000000000000000000000000000) Nil!22034) Nil!22034)))))

(assert (= (and d!125157 (not res!692129)) b!1037114))

(assert (= (and b!1037114 res!692130) b!1037112))

(assert (= (and b!1037114 res!692131) b!1037111))

(assert (= (and b!1037111 c!105038) b!1037113))

(assert (= (and b!1037111 (not c!105038)) b!1037115))

(assert (= (or b!1037113 b!1037115) bm!43909))

(assert (=> b!1037111 m!957501))

(assert (=> b!1037111 m!957501))

(assert (=> b!1037111 m!957503))

(assert (=> b!1037112 m!957501))

(assert (=> b!1037112 m!957501))

(declare-fun m!957531 () Bool)

(assert (=> b!1037112 m!957531))

(assert (=> b!1037114 m!957501))

(assert (=> b!1037114 m!957501))

(assert (=> b!1037114 m!957503))

(assert (=> bm!43909 m!957501))

(declare-fun m!957533 () Bool)

(assert (=> bm!43909 m!957533))

(assert (=> b!1037011 d!125157))

(declare-fun mapNonEmpty!38433 () Bool)

(declare-fun mapRes!38433 () Bool)

(declare-fun tp!73799 () Bool)

(declare-fun e!586640 () Bool)

(assert (=> mapNonEmpty!38433 (= mapRes!38433 (and tp!73799 e!586640))))

(declare-fun mapRest!38433 () (Array (_ BitVec 32) ValueCell!11598))

(declare-fun mapKey!38433 () (_ BitVec 32))

(declare-fun mapValue!38433 () ValueCell!11598)

(assert (=> mapNonEmpty!38433 (= mapRest!38432 (store mapRest!38433 mapKey!38433 mapValue!38433))))

(declare-fun b!1037116 () Bool)

(assert (=> b!1037116 (= e!586640 tp_is_empty!24603)))

(declare-fun condMapEmpty!38433 () Bool)

(declare-fun mapDefault!38433 () ValueCell!11598)

(assert (=> mapNonEmpty!38432 (= condMapEmpty!38433 (= mapRest!38432 ((as const (Array (_ BitVec 32) ValueCell!11598)) mapDefault!38433)))))

(declare-fun e!586641 () Bool)

(assert (=> mapNonEmpty!38432 (= tp!73798 (and e!586641 mapRes!38433))))

(declare-fun b!1037117 () Bool)

(assert (=> b!1037117 (= e!586641 tp_is_empty!24603)))

(declare-fun mapIsEmpty!38433 () Bool)

(assert (=> mapIsEmpty!38433 mapRes!38433))

(assert (= (and mapNonEmpty!38432 condMapEmpty!38433) mapIsEmpty!38433))

(assert (= (and mapNonEmpty!38432 (not condMapEmpty!38433)) mapNonEmpty!38433))

(assert (= (and mapNonEmpty!38433 ((_ is ValueCellFull!11598) mapValue!38433)) b!1037116))

(assert (= (and mapNonEmpty!38432 ((_ is ValueCellFull!11598) mapDefault!38433)) b!1037117))

(declare-fun m!957535 () Bool)

(assert (=> mapNonEmpty!38433 m!957535))

(check-sat tp_is_empty!24603 (not b!1037028) (not d!125145) (not b!1037031) (not b!1037049) (not d!125149) (not b!1037071) (not b_next!20883) b_and!33433 (not b!1037112) (not b!1037100) (not bm!43906) (not mapNonEmpty!38433) (not b!1037072) (not b!1037114) (not bm!43903) (not b!1037111) (not bm!43909) (not d!125151) (not b!1037061))
(check-sat b_and!33433 (not b_next!20883))
