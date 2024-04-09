; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90778 () Bool)

(assert start!90778)

(declare-fun b!1037475 () Bool)

(declare-fun b_free!20907 () Bool)

(declare-fun b_next!20907 () Bool)

(assert (=> b!1037475 (= b_free!20907 (not b_next!20907))))

(declare-fun tp!73870 () Bool)

(declare-fun b_and!33457 () Bool)

(assert (=> b!1037475 (= tp!73870 b_and!33457)))

(declare-fun b!1037473 () Bool)

(declare-fun res!692277 () Bool)

(declare-fun e!586941 () Bool)

(assert (=> b!1037473 (=> (not res!692277) (not e!586941))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1037473 (= res!692277 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38472 () Bool)

(declare-fun mapRes!38472 () Bool)

(declare-fun tp!73871 () Bool)

(declare-fun e!586935 () Bool)

(assert (=> mapNonEmpty!38472 (= mapRes!38472 (and tp!73871 e!586935))))

(declare-fun mapKey!38472 () (_ BitVec 32))

(declare-datatypes ((V!37709 0))(
  ( (V!37710 (val!12364 Int)) )
))
(declare-datatypes ((ValueCell!11610 0))(
  ( (ValueCellFull!11610 (v!14948 V!37709)) (EmptyCell!11610) )
))
(declare-fun mapValue!38472 () ValueCell!11610)

(declare-fun mapRest!38472 () (Array (_ BitVec 32) ValueCell!11610))

(declare-datatypes ((array!65344 0))(
  ( (array!65345 (arr!31449 (Array (_ BitVec 32) (_ BitVec 64))) (size!31980 (_ BitVec 32))) )
))
(declare-datatypes ((array!65346 0))(
  ( (array!65347 (arr!31450 (Array (_ BitVec 32) ValueCell!11610)) (size!31981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5814 0))(
  ( (LongMapFixedSize!5815 (defaultEntry!6289 Int) (mask!30206 (_ BitVec 32)) (extraKeys!6017 (_ BitVec 32)) (zeroValue!6123 V!37709) (minValue!6123 V!37709) (_size!2962 (_ BitVec 32)) (_keys!11483 array!65344) (_values!6312 array!65346) (_vacant!2962 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5814)

(assert (=> mapNonEmpty!38472 (= (arr!31450 (_values!6312 thiss!1427)) (store mapRest!38472 mapKey!38472 mapValue!38472))))

(declare-fun res!692276 () Bool)

(assert (=> start!90778 (=> (not res!692276) (not e!586941))))

(declare-fun valid!2144 (LongMapFixedSize!5814) Bool)

(assert (=> start!90778 (= res!692276 (valid!2144 thiss!1427))))

(assert (=> start!90778 e!586941))

(declare-fun e!586942 () Bool)

(assert (=> start!90778 e!586942))

(assert (=> start!90778 true))

(declare-fun b!1037474 () Bool)

(declare-fun e!586940 () Bool)

(declare-datatypes ((List!22041 0))(
  ( (Nil!22038) (Cons!22037 (h!23240 (_ BitVec 64)) (t!31262 List!22041)) )
))
(declare-fun noDuplicate!1490 (List!22041) Bool)

(assert (=> b!1037474 (= e!586940 (noDuplicate!1490 Nil!22038))))

(declare-fun tp_is_empty!24627 () Bool)

(declare-fun e!586938 () Bool)

(declare-fun array_inv!24157 (array!65344) Bool)

(declare-fun array_inv!24158 (array!65346) Bool)

(assert (=> b!1037475 (= e!586942 (and tp!73870 tp_is_empty!24627 (array_inv!24157 (_keys!11483 thiss!1427)) (array_inv!24158 (_values!6312 thiss!1427)) e!586938))))

(declare-fun mapIsEmpty!38472 () Bool)

(assert (=> mapIsEmpty!38472 mapRes!38472))

(declare-fun b!1037476 () Bool)

(declare-fun e!586936 () Bool)

(assert (=> b!1037476 (= e!586936 (not e!586940))))

(declare-fun res!692278 () Bool)

(assert (=> b!1037476 (=> res!692278 e!586940)))

(assert (=> b!1037476 (= res!692278 (or (bvsge (size!31980 (_keys!11483 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427)))))))

(declare-datatypes ((SeekEntryResult!9754 0))(
  ( (MissingZero!9754 (index!41386 (_ BitVec 32))) (Found!9754 (index!41387 (_ BitVec 32))) (Intermediate!9754 (undefined!10566 Bool) (index!41388 (_ BitVec 32)) (x!92556 (_ BitVec 32))) (Undefined!9754) (MissingVacant!9754 (index!41389 (_ BitVec 32))) )
))
(declare-fun lt!457495 () SeekEntryResult!9754)

(declare-fun arrayCountValidKeys!0 (array!65344 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1037476 (= (arrayCountValidKeys!0 (array!65345 (store (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31980 (_keys!11483 thiss!1427))) #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11483 thiss!1427) #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33940 0))(
  ( (Unit!33941) )
))
(declare-fun lt!457494 () Unit!33940)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65344 (_ BitVec 32) (_ BitVec 64)) Unit!33940)

(assert (=> b!1037476 (= lt!457494 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11483 thiss!1427) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037477 () Bool)

(assert (=> b!1037477 (= e!586941 e!586936)))

(declare-fun res!692275 () Bool)

(assert (=> b!1037477 (=> (not res!692275) (not e!586936))))

(get-info :version)

(assert (=> b!1037477 (= res!692275 ((_ is Found!9754) lt!457495))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65344 (_ BitVec 32)) SeekEntryResult!9754)

(assert (=> b!1037477 (= lt!457495 (seekEntry!0 key!909 (_keys!11483 thiss!1427) (mask!30206 thiss!1427)))))

(declare-fun b!1037478 () Bool)

(declare-fun e!586937 () Bool)

(assert (=> b!1037478 (= e!586937 tp_is_empty!24627)))

(declare-fun b!1037479 () Bool)

(assert (=> b!1037479 (= e!586935 tp_is_empty!24627)))

(declare-fun b!1037480 () Bool)

(assert (=> b!1037480 (= e!586938 (and e!586937 mapRes!38472))))

(declare-fun condMapEmpty!38472 () Bool)

(declare-fun mapDefault!38472 () ValueCell!11610)

(assert (=> b!1037480 (= condMapEmpty!38472 (= (arr!31450 (_values!6312 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11610)) mapDefault!38472)))))

(assert (= (and start!90778 res!692276) b!1037473))

(assert (= (and b!1037473 res!692277) b!1037477))

(assert (= (and b!1037477 res!692275) b!1037476))

(assert (= (and b!1037476 (not res!692278)) b!1037474))

(assert (= (and b!1037480 condMapEmpty!38472) mapIsEmpty!38472))

(assert (= (and b!1037480 (not condMapEmpty!38472)) mapNonEmpty!38472))

(assert (= (and mapNonEmpty!38472 ((_ is ValueCellFull!11610) mapValue!38472)) b!1037479))

(assert (= (and b!1037480 ((_ is ValueCellFull!11610) mapDefault!38472)) b!1037478))

(assert (= b!1037475 b!1037480))

(assert (= start!90778 b!1037475))

(declare-fun m!957799 () Bool)

(assert (=> b!1037477 m!957799))

(declare-fun m!957801 () Bool)

(assert (=> b!1037474 m!957801))

(declare-fun m!957803 () Bool)

(assert (=> b!1037476 m!957803))

(declare-fun m!957805 () Bool)

(assert (=> b!1037476 m!957805))

(declare-fun m!957807 () Bool)

(assert (=> b!1037476 m!957807))

(declare-fun m!957809 () Bool)

(assert (=> b!1037476 m!957809))

(declare-fun m!957811 () Bool)

(assert (=> b!1037475 m!957811))

(declare-fun m!957813 () Bool)

(assert (=> b!1037475 m!957813))

(declare-fun m!957815 () Bool)

(assert (=> mapNonEmpty!38472 m!957815))

(declare-fun m!957817 () Bool)

(assert (=> start!90778 m!957817))

(check-sat tp_is_empty!24627 (not b!1037477) (not start!90778) (not b!1037476) (not mapNonEmpty!38472) (not b!1037475) (not b!1037474) b_and!33457 (not b_next!20907))
(check-sat b_and!33457 (not b_next!20907))
(get-model)

(declare-fun d!125195 () Bool)

(assert (=> d!125195 (= (array_inv!24157 (_keys!11483 thiss!1427)) (bvsge (size!31980 (_keys!11483 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037475 d!125195))

(declare-fun d!125197 () Bool)

(assert (=> d!125197 (= (array_inv!24158 (_values!6312 thiss!1427)) (bvsge (size!31981 (_values!6312 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1037475 d!125197))

(declare-fun d!125199 () Bool)

(declare-fun res!692297 () Bool)

(declare-fun e!586969 () Bool)

(assert (=> d!125199 (=> (not res!692297) (not e!586969))))

(declare-fun simpleValid!417 (LongMapFixedSize!5814) Bool)

(assert (=> d!125199 (= res!692297 (simpleValid!417 thiss!1427))))

(assert (=> d!125199 (= (valid!2144 thiss!1427) e!586969)))

(declare-fun b!1037511 () Bool)

(declare-fun res!692298 () Bool)

(assert (=> b!1037511 (=> (not res!692298) (not e!586969))))

(assert (=> b!1037511 (= res!692298 (= (arrayCountValidKeys!0 (_keys!11483 thiss!1427) #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) (_size!2962 thiss!1427)))))

(declare-fun b!1037512 () Bool)

(declare-fun res!692299 () Bool)

(assert (=> b!1037512 (=> (not res!692299) (not e!586969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65344 (_ BitVec 32)) Bool)

(assert (=> b!1037512 (= res!692299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11483 thiss!1427) (mask!30206 thiss!1427)))))

(declare-fun b!1037513 () Bool)

(declare-fun arrayNoDuplicates!0 (array!65344 (_ BitVec 32) List!22041) Bool)

(assert (=> b!1037513 (= e!586969 (arrayNoDuplicates!0 (_keys!11483 thiss!1427) #b00000000000000000000000000000000 Nil!22038))))

(assert (= (and d!125199 res!692297) b!1037511))

(assert (= (and b!1037511 res!692298) b!1037512))

(assert (= (and b!1037512 res!692299) b!1037513))

(declare-fun m!957839 () Bool)

(assert (=> d!125199 m!957839))

(assert (=> b!1037511 m!957807))

(declare-fun m!957841 () Bool)

(assert (=> b!1037512 m!957841))

(declare-fun m!957843 () Bool)

(assert (=> b!1037513 m!957843))

(assert (=> start!90778 d!125199))

(declare-fun d!125201 () Bool)

(declare-fun res!692304 () Bool)

(declare-fun e!586974 () Bool)

(assert (=> d!125201 (=> res!692304 e!586974)))

(assert (=> d!125201 (= res!692304 ((_ is Nil!22038) Nil!22038))))

(assert (=> d!125201 (= (noDuplicate!1490 Nil!22038) e!586974)))

(declare-fun b!1037518 () Bool)

(declare-fun e!586975 () Bool)

(assert (=> b!1037518 (= e!586974 e!586975)))

(declare-fun res!692305 () Bool)

(assert (=> b!1037518 (=> (not res!692305) (not e!586975))))

(declare-fun contains!6048 (List!22041 (_ BitVec 64)) Bool)

(assert (=> b!1037518 (= res!692305 (not (contains!6048 (t!31262 Nil!22038) (h!23240 Nil!22038))))))

(declare-fun b!1037519 () Bool)

(assert (=> b!1037519 (= e!586975 (noDuplicate!1490 (t!31262 Nil!22038)))))

(assert (= (and d!125201 (not res!692304)) b!1037518))

(assert (= (and b!1037518 res!692305) b!1037519))

(declare-fun m!957845 () Bool)

(assert (=> b!1037518 m!957845))

(declare-fun m!957847 () Bool)

(assert (=> b!1037519 m!957847))

(assert (=> b!1037474 d!125201))

(declare-fun b!1037532 () Bool)

(declare-fun e!586983 () SeekEntryResult!9754)

(assert (=> b!1037532 (= e!586983 Undefined!9754)))

(declare-fun b!1037533 () Bool)

(declare-fun e!586982 () SeekEntryResult!9754)

(declare-fun lt!457512 () SeekEntryResult!9754)

(assert (=> b!1037533 (= e!586982 (Found!9754 (index!41388 lt!457512)))))

(declare-fun b!1037535 () Bool)

(declare-fun e!586984 () SeekEntryResult!9754)

(assert (=> b!1037535 (= e!586984 (MissingZero!9754 (index!41388 lt!457512)))))

(declare-fun b!1037536 () Bool)

(declare-fun c!105081 () Bool)

(declare-fun lt!457513 () (_ BitVec 64))

(assert (=> b!1037536 (= c!105081 (= lt!457513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1037536 (= e!586982 e!586984)))

(declare-fun b!1037537 () Bool)

(assert (=> b!1037537 (= e!586983 e!586982)))

(assert (=> b!1037537 (= lt!457513 (select (arr!31449 (_keys!11483 thiss!1427)) (index!41388 lt!457512)))))

(declare-fun c!105080 () Bool)

(assert (=> b!1037537 (= c!105080 (= lt!457513 key!909))))

(declare-fun d!125203 () Bool)

(declare-fun lt!457511 () SeekEntryResult!9754)

(assert (=> d!125203 (and (or ((_ is MissingVacant!9754) lt!457511) (not ((_ is Found!9754) lt!457511)) (and (bvsge (index!41387 lt!457511) #b00000000000000000000000000000000) (bvslt (index!41387 lt!457511) (size!31980 (_keys!11483 thiss!1427))))) (not ((_ is MissingVacant!9754) lt!457511)) (or (not ((_ is Found!9754) lt!457511)) (= (select (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457511)) key!909)))))

(assert (=> d!125203 (= lt!457511 e!586983)))

(declare-fun c!105079 () Bool)

(assert (=> d!125203 (= c!105079 (and ((_ is Intermediate!9754) lt!457512) (undefined!10566 lt!457512)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65344 (_ BitVec 32)) SeekEntryResult!9754)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!125203 (= lt!457512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30206 thiss!1427)) key!909 (_keys!11483 thiss!1427) (mask!30206 thiss!1427)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!125203 (validMask!0 (mask!30206 thiss!1427))))

(assert (=> d!125203 (= (seekEntry!0 key!909 (_keys!11483 thiss!1427) (mask!30206 thiss!1427)) lt!457511)))

(declare-fun b!1037534 () Bool)

(declare-fun lt!457510 () SeekEntryResult!9754)

(assert (=> b!1037534 (= e!586984 (ite ((_ is MissingVacant!9754) lt!457510) (MissingZero!9754 (index!41389 lt!457510)) lt!457510))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65344 (_ BitVec 32)) SeekEntryResult!9754)

(assert (=> b!1037534 (= lt!457510 (seekKeyOrZeroReturnVacant!0 (x!92556 lt!457512) (index!41388 lt!457512) (index!41388 lt!457512) key!909 (_keys!11483 thiss!1427) (mask!30206 thiss!1427)))))

(assert (= (and d!125203 c!105079) b!1037532))

(assert (= (and d!125203 (not c!105079)) b!1037537))

(assert (= (and b!1037537 c!105080) b!1037533))

(assert (= (and b!1037537 (not c!105080)) b!1037536))

(assert (= (and b!1037536 c!105081) b!1037535))

(assert (= (and b!1037536 (not c!105081)) b!1037534))

(declare-fun m!957849 () Bool)

(assert (=> b!1037537 m!957849))

(declare-fun m!957851 () Bool)

(assert (=> d!125203 m!957851))

(declare-fun m!957853 () Bool)

(assert (=> d!125203 m!957853))

(assert (=> d!125203 m!957853))

(declare-fun m!957855 () Bool)

(assert (=> d!125203 m!957855))

(declare-fun m!957857 () Bool)

(assert (=> d!125203 m!957857))

(declare-fun m!957859 () Bool)

(assert (=> b!1037534 m!957859))

(assert (=> b!1037477 d!125203))

(declare-fun b!1037546 () Bool)

(declare-fun e!586989 () (_ BitVec 32))

(declare-fun e!586990 () (_ BitVec 32))

(assert (=> b!1037546 (= e!586989 e!586990)))

(declare-fun c!105087 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1037546 (= c!105087 (validKeyInArray!0 (select (arr!31449 (array!65345 (store (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31980 (_keys!11483 thiss!1427)))) #b00000000000000000000000000000000)))))

(declare-fun b!1037547 () Bool)

(declare-fun call!43923 () (_ BitVec 32))

(assert (=> b!1037547 (= e!586990 (bvadd #b00000000000000000000000000000001 call!43923))))

(declare-fun d!125205 () Bool)

(declare-fun lt!457516 () (_ BitVec 32))

(assert (=> d!125205 (and (bvsge lt!457516 #b00000000000000000000000000000000) (bvsle lt!457516 (bvsub (size!31980 (array!65345 (store (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31980 (_keys!11483 thiss!1427)))) #b00000000000000000000000000000000)))))

(assert (=> d!125205 (= lt!457516 e!586989)))

(declare-fun c!105086 () Bool)

(assert (=> d!125205 (= c!105086 (bvsge #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))))))

(assert (=> d!125205 (and (bvsle #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31980 (_keys!11483 thiss!1427)) (size!31980 (array!65345 (store (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31980 (_keys!11483 thiss!1427))))))))

(assert (=> d!125205 (= (arrayCountValidKeys!0 (array!65345 (store (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31980 (_keys!11483 thiss!1427))) #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) lt!457516)))

(declare-fun bm!43920 () Bool)

(assert (=> bm!43920 (= call!43923 (arrayCountValidKeys!0 (array!65345 (store (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31980 (_keys!11483 thiss!1427))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31980 (_keys!11483 thiss!1427))))))

(declare-fun b!1037548 () Bool)

(assert (=> b!1037548 (= e!586990 call!43923)))

(declare-fun b!1037549 () Bool)

(assert (=> b!1037549 (= e!586989 #b00000000000000000000000000000000)))

(assert (= (and d!125205 c!105086) b!1037549))

(assert (= (and d!125205 (not c!105086)) b!1037546))

(assert (= (and b!1037546 c!105087) b!1037547))

(assert (= (and b!1037546 (not c!105087)) b!1037548))

(assert (= (or b!1037547 b!1037548) bm!43920))

(declare-fun m!957861 () Bool)

(assert (=> b!1037546 m!957861))

(assert (=> b!1037546 m!957861))

(declare-fun m!957863 () Bool)

(assert (=> b!1037546 m!957863))

(declare-fun m!957865 () Bool)

(assert (=> bm!43920 m!957865))

(assert (=> b!1037476 d!125205))

(declare-fun b!1037550 () Bool)

(declare-fun e!586991 () (_ BitVec 32))

(declare-fun e!586992 () (_ BitVec 32))

(assert (=> b!1037550 (= e!586991 e!586992)))

(declare-fun c!105089 () Bool)

(assert (=> b!1037550 (= c!105089 (validKeyInArray!0 (select (arr!31449 (_keys!11483 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1037551 () Bool)

(declare-fun call!43924 () (_ BitVec 32))

(assert (=> b!1037551 (= e!586992 (bvadd #b00000000000000000000000000000001 call!43924))))

(declare-fun d!125207 () Bool)

(declare-fun lt!457517 () (_ BitVec 32))

(assert (=> d!125207 (and (bvsge lt!457517 #b00000000000000000000000000000000) (bvsle lt!457517 (bvsub (size!31980 (_keys!11483 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!125207 (= lt!457517 e!586991)))

(declare-fun c!105088 () Bool)

(assert (=> d!125207 (= c!105088 (bvsge #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))))))

(assert (=> d!125207 (and (bvsle #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31980 (_keys!11483 thiss!1427)) (size!31980 (_keys!11483 thiss!1427))))))

(assert (=> d!125207 (= (arrayCountValidKeys!0 (_keys!11483 thiss!1427) #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) lt!457517)))

(declare-fun bm!43921 () Bool)

(assert (=> bm!43921 (= call!43924 (arrayCountValidKeys!0 (_keys!11483 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31980 (_keys!11483 thiss!1427))))))

(declare-fun b!1037552 () Bool)

(assert (=> b!1037552 (= e!586992 call!43924)))

(declare-fun b!1037553 () Bool)

(assert (=> b!1037553 (= e!586991 #b00000000000000000000000000000000)))

(assert (= (and d!125207 c!105088) b!1037553))

(assert (= (and d!125207 (not c!105088)) b!1037550))

(assert (= (and b!1037550 c!105089) b!1037551))

(assert (= (and b!1037550 (not c!105089)) b!1037552))

(assert (= (or b!1037551 b!1037552) bm!43921))

(declare-fun m!957867 () Bool)

(assert (=> b!1037550 m!957867))

(assert (=> b!1037550 m!957867))

(declare-fun m!957869 () Bool)

(assert (=> b!1037550 m!957869))

(declare-fun m!957871 () Bool)

(assert (=> bm!43921 m!957871))

(assert (=> b!1037476 d!125207))

(declare-fun b!1037565 () Bool)

(declare-fun e!586998 () Bool)

(assert (=> b!1037565 (= e!586998 (= (arrayCountValidKeys!0 (array!65345 (store (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31980 (_keys!11483 thiss!1427))) #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11483 thiss!1427) #b00000000000000000000000000000000 (size!31980 (_keys!11483 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!125209 () Bool)

(assert (=> d!125209 e!586998))

(declare-fun res!692314 () Bool)

(assert (=> d!125209 (=> (not res!692314) (not e!586998))))

(assert (=> d!125209 (= res!692314 (and (bvsge (index!41387 lt!457495) #b00000000000000000000000000000000) (bvslt (index!41387 lt!457495) (size!31980 (_keys!11483 thiss!1427)))))))

(declare-fun lt!457520 () Unit!33940)

(declare-fun choose!82 (array!65344 (_ BitVec 32) (_ BitVec 64)) Unit!33940)

(assert (=> d!125209 (= lt!457520 (choose!82 (_keys!11483 thiss!1427) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!586997 () Bool)

(assert (=> d!125209 e!586997))

(declare-fun res!692316 () Bool)

(assert (=> d!125209 (=> (not res!692316) (not e!586997))))

(assert (=> d!125209 (= res!692316 (and (bvsge (index!41387 lt!457495) #b00000000000000000000000000000000) (bvslt (index!41387 lt!457495) (size!31980 (_keys!11483 thiss!1427)))))))

(assert (=> d!125209 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11483 thiss!1427) (index!41387 lt!457495) #b1000000000000000000000000000000000000000000000000000000000000000) lt!457520)))

(declare-fun b!1037563 () Bool)

(declare-fun res!692317 () Bool)

(assert (=> b!1037563 (=> (not res!692317) (not e!586997))))

(assert (=> b!1037563 (= res!692317 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1037562 () Bool)

(declare-fun res!692315 () Bool)

(assert (=> b!1037562 (=> (not res!692315) (not e!586997))))

(assert (=> b!1037562 (= res!692315 (validKeyInArray!0 (select (arr!31449 (_keys!11483 thiss!1427)) (index!41387 lt!457495))))))

(declare-fun b!1037564 () Bool)

(assert (=> b!1037564 (= e!586997 (bvslt (size!31980 (_keys!11483 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!125209 res!692316) b!1037562))

(assert (= (and b!1037562 res!692315) b!1037563))

(assert (= (and b!1037563 res!692317) b!1037564))

(assert (= (and d!125209 res!692314) b!1037565))

(assert (=> b!1037565 m!957803))

(assert (=> b!1037565 m!957805))

(assert (=> b!1037565 m!957807))

(declare-fun m!957873 () Bool)

(assert (=> d!125209 m!957873))

(declare-fun m!957875 () Bool)

(assert (=> b!1037563 m!957875))

(declare-fun m!957877 () Bool)

(assert (=> b!1037562 m!957877))

(assert (=> b!1037562 m!957877))

(declare-fun m!957879 () Bool)

(assert (=> b!1037562 m!957879))

(assert (=> b!1037476 d!125209))

(declare-fun mapIsEmpty!38478 () Bool)

(declare-fun mapRes!38478 () Bool)

(assert (=> mapIsEmpty!38478 mapRes!38478))

(declare-fun b!1037572 () Bool)

(declare-fun e!587004 () Bool)

(assert (=> b!1037572 (= e!587004 tp_is_empty!24627)))

(declare-fun mapNonEmpty!38478 () Bool)

(declare-fun tp!73880 () Bool)

(assert (=> mapNonEmpty!38478 (= mapRes!38478 (and tp!73880 e!587004))))

(declare-fun mapKey!38478 () (_ BitVec 32))

(declare-fun mapRest!38478 () (Array (_ BitVec 32) ValueCell!11610))

(declare-fun mapValue!38478 () ValueCell!11610)

(assert (=> mapNonEmpty!38478 (= mapRest!38472 (store mapRest!38478 mapKey!38478 mapValue!38478))))

(declare-fun condMapEmpty!38478 () Bool)

(declare-fun mapDefault!38478 () ValueCell!11610)

(assert (=> mapNonEmpty!38472 (= condMapEmpty!38478 (= mapRest!38472 ((as const (Array (_ BitVec 32) ValueCell!11610)) mapDefault!38478)))))

(declare-fun e!587003 () Bool)

(assert (=> mapNonEmpty!38472 (= tp!73871 (and e!587003 mapRes!38478))))

(declare-fun b!1037573 () Bool)

(assert (=> b!1037573 (= e!587003 tp_is_empty!24627)))

(assert (= (and mapNonEmpty!38472 condMapEmpty!38478) mapIsEmpty!38478))

(assert (= (and mapNonEmpty!38472 (not condMapEmpty!38478)) mapNonEmpty!38478))

(assert (= (and mapNonEmpty!38478 ((_ is ValueCellFull!11610) mapValue!38478)) b!1037572))

(assert (= (and mapNonEmpty!38472 ((_ is ValueCellFull!11610) mapDefault!38478)) b!1037573))

(declare-fun m!957881 () Bool)

(assert (=> mapNonEmpty!38478 m!957881))

(check-sat (not b!1037534) tp_is_empty!24627 (not bm!43921) (not b!1037519) (not d!125199) (not b!1037512) (not d!125209) (not mapNonEmpty!38478) (not b!1037511) (not b!1037546) (not b!1037563) (not d!125203) b_and!33457 (not b_next!20907) (not b!1037565) (not b!1037562) (not b!1037513) (not bm!43920) (not b!1037550) (not b!1037518))
(check-sat b_and!33457 (not b_next!20907))
