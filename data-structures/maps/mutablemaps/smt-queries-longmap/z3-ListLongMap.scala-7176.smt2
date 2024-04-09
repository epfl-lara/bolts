; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91770 () Bool)

(assert start!91770)

(declare-fun b!1043978 () Bool)

(declare-fun b_free!21111 () Bool)

(declare-fun b_next!21111 () Bool)

(assert (=> b!1043978 (= b_free!21111 (not b_next!21111))))

(declare-fun tp!74577 () Bool)

(declare-fun b_and!33687 () Bool)

(assert (=> b!1043978 (= tp!74577 b_and!33687)))

(declare-fun res!695491 () Bool)

(declare-fun e!591643 () Bool)

(assert (=> start!91770 (=> (not res!695491) (not e!591643))))

(declare-datatypes ((V!37981 0))(
  ( (V!37982 (val!12466 Int)) )
))
(declare-datatypes ((ValueCell!11712 0))(
  ( (ValueCellFull!11712 (v!15058 V!37981)) (EmptyCell!11712) )
))
(declare-datatypes ((array!65812 0))(
  ( (array!65813 (arr!31653 (Array (_ BitVec 32) (_ BitVec 64))) (size!32189 (_ BitVec 32))) )
))
(declare-datatypes ((array!65814 0))(
  ( (array!65815 (arr!31654 (Array (_ BitVec 32) ValueCell!11712)) (size!32190 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6018 0))(
  ( (LongMapFixedSize!6019 (defaultEntry!6395 Int) (mask!30491 (_ BitVec 32)) (extraKeys!6123 (_ BitVec 32)) (zeroValue!6229 V!37981) (minValue!6229 V!37981) (_size!3064 (_ BitVec 32)) (_keys!11654 array!65812) (_values!6418 array!65814) (_vacant!3064 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6018)

(declare-fun valid!2213 (LongMapFixedSize!6018) Bool)

(assert (=> start!91770 (= res!695491 (valid!2213 thiss!1427))))

(assert (=> start!91770 e!591643))

(declare-fun e!591642 () Bool)

(assert (=> start!91770 e!591642))

(assert (=> start!91770 true))

(declare-fun b!1043973 () Bool)

(declare-fun e!591636 () Bool)

(declare-fun tp_is_empty!24831 () Bool)

(assert (=> b!1043973 (= e!591636 tp_is_empty!24831)))

(declare-fun b!1043974 () Bool)

(declare-fun e!591640 () Bool)

(assert (=> b!1043974 (= e!591640 tp_is_empty!24831)))

(declare-fun b!1043975 () Bool)

(declare-fun e!591641 () Bool)

(declare-fun e!591638 () Bool)

(assert (=> b!1043975 (= e!591641 (not e!591638))))

(declare-fun res!695488 () Bool)

(assert (=> b!1043975 (=> res!695488 e!591638)))

(declare-datatypes ((Unit!34086 0))(
  ( (Unit!34087) )
))
(declare-datatypes ((tuple2!15852 0))(
  ( (tuple2!15853 (_1!7936 Unit!34086) (_2!7936 LongMapFixedSize!6018)) )
))
(declare-fun lt!460369 () tuple2!15852)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15854 0))(
  ( (tuple2!15855 (_1!7937 (_ BitVec 64)) (_2!7937 V!37981)) )
))
(declare-datatypes ((List!22128 0))(
  ( (Nil!22125) (Cons!22124 (h!23332 tuple2!15854) (t!31365 List!22128)) )
))
(declare-datatypes ((ListLongMap!13889 0))(
  ( (ListLongMap!13890 (toList!6960 List!22128)) )
))
(declare-fun contains!6089 (ListLongMap!13889 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3966 (array!65812 array!65814 (_ BitVec 32) (_ BitVec 32) V!37981 V!37981 (_ BitVec 32) Int) ListLongMap!13889)

(assert (=> b!1043975 (= res!695488 (not (contains!6089 (getCurrentListMap!3966 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))) key!909)))))

(declare-fun lt!460367 () array!65812)

(declare-fun lt!460371 () array!65814)

(declare-fun Unit!34088 () Unit!34086)

(declare-fun Unit!34089 () Unit!34086)

(assert (=> b!1043975 (= lt!460369 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3064 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15853 Unit!34088 (LongMapFixedSize!6019 (defaultEntry!6395 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) (bvsub (_size!3064 thiss!1427) #b00000000000000000000000000000001) lt!460367 lt!460371 (bvadd #b00000000000000000000000000000001 (_vacant!3064 thiss!1427)))) (tuple2!15853 Unit!34089 (LongMapFixedSize!6019 (defaultEntry!6395 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) (bvsub (_size!3064 thiss!1427) #b00000000000000000000000000000001) lt!460367 lt!460371 (_vacant!3064 thiss!1427)))))))

(declare-fun -!536 (ListLongMap!13889 (_ BitVec 64)) ListLongMap!13889)

(assert (=> b!1043975 (= (-!536 (getCurrentListMap!3966 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)) key!909) (getCurrentListMap!3966 lt!460367 lt!460371 (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9836 0))(
  ( (MissingZero!9836 (index!41714 (_ BitVec 32))) (Found!9836 (index!41715 (_ BitVec 32))) (Intermediate!9836 (undefined!10648 Bool) (index!41716 (_ BitVec 32)) (x!93215 (_ BitVec 32))) (Undefined!9836) (MissingVacant!9836 (index!41717 (_ BitVec 32))) )
))
(declare-fun lt!460368 () SeekEntryResult!9836)

(declare-fun dynLambda!2010 (Int (_ BitVec 64)) V!37981)

(assert (=> b!1043975 (= lt!460371 (array!65815 (store (arr!31654 (_values!6418 thiss!1427)) (index!41715 lt!460368) (ValueCellFull!11712 (dynLambda!2010 (defaultEntry!6395 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32190 (_values!6418 thiss!1427))))))

(declare-fun lt!460370 () Unit!34086)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!56 (array!65812 array!65814 (_ BitVec 32) (_ BitVec 32) V!37981 V!37981 (_ BitVec 32) (_ BitVec 64) Int) Unit!34086)

(assert (=> b!1043975 (= lt!460370 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!56 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) (index!41715 lt!460368) key!909 (defaultEntry!6395 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1043975 (not (arrayContainsKey!0 lt!460367 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!460374 () Unit!34086)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65812 (_ BitVec 32) (_ BitVec 64)) Unit!34086)

(assert (=> b!1043975 (= lt!460374 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11654 thiss!1427) (index!41715 lt!460368) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65812 (_ BitVec 32)) Bool)

(assert (=> b!1043975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460367 (mask!30491 thiss!1427))))

(declare-fun lt!460366 () Unit!34086)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65812 (_ BitVec 32) (_ BitVec 32)) Unit!34086)

(assert (=> b!1043975 (= lt!460366 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11654 thiss!1427) (index!41715 lt!460368) (mask!30491 thiss!1427)))))

(declare-datatypes ((List!22129 0))(
  ( (Nil!22126) (Cons!22125 (h!23333 (_ BitVec 64)) (t!31366 List!22129)) )
))
(declare-fun arrayNoDuplicates!0 (array!65812 (_ BitVec 32) List!22129) Bool)

(assert (=> b!1043975 (arrayNoDuplicates!0 lt!460367 #b00000000000000000000000000000000 Nil!22126)))

(declare-fun lt!460373 () Unit!34086)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65812 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22129) Unit!34086)

(assert (=> b!1043975 (= lt!460373 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11654 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41715 lt!460368) #b00000000000000000000000000000000 Nil!22126))))

(declare-fun arrayCountValidKeys!0 (array!65812 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1043975 (= (arrayCountValidKeys!0 lt!460367 #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11654 thiss!1427) #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1043975 (= lt!460367 (array!65813 (store (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun lt!460372 () Unit!34086)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65812 (_ BitVec 32) (_ BitVec 64)) Unit!34086)

(assert (=> b!1043975 (= lt!460372 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11654 thiss!1427) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38873 () Bool)

(declare-fun mapRes!38873 () Bool)

(declare-fun tp!74578 () Bool)

(assert (=> mapNonEmpty!38873 (= mapRes!38873 (and tp!74578 e!591636))))

(declare-fun mapKey!38873 () (_ BitVec 32))

(declare-fun mapValue!38873 () ValueCell!11712)

(declare-fun mapRest!38873 () (Array (_ BitVec 32) ValueCell!11712))

(assert (=> mapNonEmpty!38873 (= (arr!31654 (_values!6418 thiss!1427)) (store mapRest!38873 mapKey!38873 mapValue!38873))))

(declare-fun b!1043976 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1043976 (= e!591638 (validMask!0 (mask!30491 (_2!7936 lt!460369))))))

(declare-fun mapIsEmpty!38873 () Bool)

(assert (=> mapIsEmpty!38873 mapRes!38873))

(declare-fun b!1043977 () Bool)

(declare-fun e!591639 () Bool)

(assert (=> b!1043977 (= e!591639 (and e!591640 mapRes!38873))))

(declare-fun condMapEmpty!38873 () Bool)

(declare-fun mapDefault!38873 () ValueCell!11712)

(assert (=> b!1043977 (= condMapEmpty!38873 (= (arr!31654 (_values!6418 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11712)) mapDefault!38873)))))

(declare-fun array_inv!24299 (array!65812) Bool)

(declare-fun array_inv!24300 (array!65814) Bool)

(assert (=> b!1043978 (= e!591642 (and tp!74577 tp_is_empty!24831 (array_inv!24299 (_keys!11654 thiss!1427)) (array_inv!24300 (_values!6418 thiss!1427)) e!591639))))

(declare-fun b!1043979 () Bool)

(declare-fun res!695490 () Bool)

(assert (=> b!1043979 (=> (not res!695490) (not e!591643))))

(assert (=> b!1043979 (= res!695490 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1043980 () Bool)

(assert (=> b!1043980 (= e!591643 e!591641)))

(declare-fun res!695489 () Bool)

(assert (=> b!1043980 (=> (not res!695489) (not e!591641))))

(get-info :version)

(assert (=> b!1043980 (= res!695489 ((_ is Found!9836) lt!460368))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65812 (_ BitVec 32)) SeekEntryResult!9836)

(assert (=> b!1043980 (= lt!460368 (seekEntry!0 key!909 (_keys!11654 thiss!1427) (mask!30491 thiss!1427)))))

(assert (= (and start!91770 res!695491) b!1043979))

(assert (= (and b!1043979 res!695490) b!1043980))

(assert (= (and b!1043980 res!695489) b!1043975))

(assert (= (and b!1043975 (not res!695488)) b!1043976))

(assert (= (and b!1043977 condMapEmpty!38873) mapIsEmpty!38873))

(assert (= (and b!1043977 (not condMapEmpty!38873)) mapNonEmpty!38873))

(assert (= (and mapNonEmpty!38873 ((_ is ValueCellFull!11712) mapValue!38873)) b!1043973))

(assert (= (and b!1043977 ((_ is ValueCellFull!11712) mapDefault!38873)) b!1043974))

(assert (= b!1043978 b!1043977))

(assert (= start!91770 b!1043978))

(declare-fun b_lambda!16229 () Bool)

(assert (=> (not b_lambda!16229) (not b!1043975)))

(declare-fun t!31364 () Bool)

(declare-fun tb!7059 () Bool)

(assert (=> (and b!1043978 (= (defaultEntry!6395 thiss!1427) (defaultEntry!6395 thiss!1427)) t!31364) tb!7059))

(declare-fun result!14535 () Bool)

(assert (=> tb!7059 (= result!14535 tp_is_empty!24831)))

(assert (=> b!1043975 t!31364))

(declare-fun b_and!33689 () Bool)

(assert (= b_and!33687 (and (=> t!31364 result!14535) b_and!33689)))

(declare-fun m!963443 () Bool)

(assert (=> start!91770 m!963443))

(declare-fun m!963445 () Bool)

(assert (=> b!1043980 m!963445))

(declare-fun m!963447 () Bool)

(assert (=> mapNonEmpty!38873 m!963447))

(declare-fun m!963449 () Bool)

(assert (=> b!1043976 m!963449))

(declare-fun m!963451 () Bool)

(assert (=> b!1043975 m!963451))

(declare-fun m!963453 () Bool)

(assert (=> b!1043975 m!963453))

(declare-fun m!963455 () Bool)

(assert (=> b!1043975 m!963455))

(declare-fun m!963457 () Bool)

(assert (=> b!1043975 m!963457))

(declare-fun m!963459 () Bool)

(assert (=> b!1043975 m!963459))

(declare-fun m!963461 () Bool)

(assert (=> b!1043975 m!963461))

(declare-fun m!963463 () Bool)

(assert (=> b!1043975 m!963463))

(declare-fun m!963465 () Bool)

(assert (=> b!1043975 m!963465))

(declare-fun m!963467 () Bool)

(assert (=> b!1043975 m!963467))

(declare-fun m!963469 () Bool)

(assert (=> b!1043975 m!963469))

(assert (=> b!1043975 m!963467))

(assert (=> b!1043975 m!963451))

(declare-fun m!963471 () Bool)

(assert (=> b!1043975 m!963471))

(declare-fun m!963473 () Bool)

(assert (=> b!1043975 m!963473))

(declare-fun m!963475 () Bool)

(assert (=> b!1043975 m!963475))

(declare-fun m!963477 () Bool)

(assert (=> b!1043975 m!963477))

(declare-fun m!963479 () Bool)

(assert (=> b!1043975 m!963479))

(declare-fun m!963481 () Bool)

(assert (=> b!1043975 m!963481))

(declare-fun m!963483 () Bool)

(assert (=> b!1043975 m!963483))

(declare-fun m!963485 () Bool)

(assert (=> b!1043975 m!963485))

(declare-fun m!963487 () Bool)

(assert (=> b!1043978 m!963487))

(declare-fun m!963489 () Bool)

(assert (=> b!1043978 m!963489))

(check-sat (not b_next!21111) (not b!1043975) (not b!1043978) tp_is_empty!24831 b_and!33689 (not b!1043980) (not start!91770) (not b!1043976) (not b_lambda!16229) (not mapNonEmpty!38873))
(check-sat b_and!33689 (not b_next!21111))
(get-model)

(declare-fun b_lambda!16233 () Bool)

(assert (= b_lambda!16229 (or (and b!1043978 b_free!21111) b_lambda!16233)))

(check-sat (not b_next!21111) (not b!1043975) (not b!1043978) tp_is_empty!24831 (not b!1043980) (not mapNonEmpty!38873) (not start!91770) (not b!1043976) b_and!33689 (not b_lambda!16233))
(check-sat b_and!33689 (not b_next!21111))
(get-model)

(declare-fun b!1044021 () Bool)

(declare-fun e!591676 () SeekEntryResult!9836)

(declare-fun lt!460412 () SeekEntryResult!9836)

(assert (=> b!1044021 (= e!591676 (Found!9836 (index!41716 lt!460412)))))

(declare-fun b!1044022 () Bool)

(declare-fun e!591674 () SeekEntryResult!9836)

(assert (=> b!1044022 (= e!591674 Undefined!9836)))

(declare-fun d!126287 () Bool)

(declare-fun lt!460410 () SeekEntryResult!9836)

(assert (=> d!126287 (and (or ((_ is MissingVacant!9836) lt!460410) (not ((_ is Found!9836) lt!460410)) (and (bvsge (index!41715 lt!460410) #b00000000000000000000000000000000) (bvslt (index!41715 lt!460410) (size!32189 (_keys!11654 thiss!1427))))) (not ((_ is MissingVacant!9836) lt!460410)) (or (not ((_ is Found!9836) lt!460410)) (= (select (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460410)) key!909)))))

(assert (=> d!126287 (= lt!460410 e!591674)))

(declare-fun c!105983 () Bool)

(assert (=> d!126287 (= c!105983 (and ((_ is Intermediate!9836) lt!460412) (undefined!10648 lt!460412)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65812 (_ BitVec 32)) SeekEntryResult!9836)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126287 (= lt!460412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30491 thiss!1427)) key!909 (_keys!11654 thiss!1427) (mask!30491 thiss!1427)))))

(assert (=> d!126287 (validMask!0 (mask!30491 thiss!1427))))

(assert (=> d!126287 (= (seekEntry!0 key!909 (_keys!11654 thiss!1427) (mask!30491 thiss!1427)) lt!460410)))

(declare-fun b!1044023 () Bool)

(assert (=> b!1044023 (= e!591674 e!591676)))

(declare-fun lt!460413 () (_ BitVec 64))

(assert (=> b!1044023 (= lt!460413 (select (arr!31653 (_keys!11654 thiss!1427)) (index!41716 lt!460412)))))

(declare-fun c!105982 () Bool)

(assert (=> b!1044023 (= c!105982 (= lt!460413 key!909))))

(declare-fun b!1044024 () Bool)

(declare-fun c!105981 () Bool)

(assert (=> b!1044024 (= c!105981 (= lt!460413 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!591675 () SeekEntryResult!9836)

(assert (=> b!1044024 (= e!591676 e!591675)))

(declare-fun b!1044025 () Bool)

(assert (=> b!1044025 (= e!591675 (MissingZero!9836 (index!41716 lt!460412)))))

(declare-fun b!1044026 () Bool)

(declare-fun lt!460411 () SeekEntryResult!9836)

(assert (=> b!1044026 (= e!591675 (ite ((_ is MissingVacant!9836) lt!460411) (MissingZero!9836 (index!41717 lt!460411)) lt!460411))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65812 (_ BitVec 32)) SeekEntryResult!9836)

(assert (=> b!1044026 (= lt!460411 (seekKeyOrZeroReturnVacant!0 (x!93215 lt!460412) (index!41716 lt!460412) (index!41716 lt!460412) key!909 (_keys!11654 thiss!1427) (mask!30491 thiss!1427)))))

(assert (= (and d!126287 c!105983) b!1044022))

(assert (= (and d!126287 (not c!105983)) b!1044023))

(assert (= (and b!1044023 c!105982) b!1044021))

(assert (= (and b!1044023 (not c!105982)) b!1044024))

(assert (= (and b!1044024 c!105981) b!1044025))

(assert (= (and b!1044024 (not c!105981)) b!1044026))

(declare-fun m!963539 () Bool)

(assert (=> d!126287 m!963539))

(declare-fun m!963541 () Bool)

(assert (=> d!126287 m!963541))

(assert (=> d!126287 m!963541))

(declare-fun m!963543 () Bool)

(assert (=> d!126287 m!963543))

(declare-fun m!963545 () Bool)

(assert (=> d!126287 m!963545))

(declare-fun m!963547 () Bool)

(assert (=> b!1044023 m!963547))

(declare-fun m!963549 () Bool)

(assert (=> b!1044026 m!963549))

(assert (=> b!1043980 d!126287))

(declare-fun d!126289 () Bool)

(assert (=> d!126289 (= (array_inv!24299 (_keys!11654 thiss!1427)) (bvsge (size!32189 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043978 d!126289))

(declare-fun d!126291 () Bool)

(assert (=> d!126291 (= (array_inv!24300 (_values!6418 thiss!1427)) (bvsge (size!32190 (_values!6418 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1043978 d!126291))

(declare-fun d!126293 () Bool)

(declare-fun res!695508 () Bool)

(declare-fun e!591681 () Bool)

(assert (=> d!126293 (=> res!695508 e!591681)))

(assert (=> d!126293 (= res!695508 (= (select (arr!31653 lt!460367) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126293 (= (arrayContainsKey!0 lt!460367 key!909 #b00000000000000000000000000000000) e!591681)))

(declare-fun b!1044031 () Bool)

(declare-fun e!591682 () Bool)

(assert (=> b!1044031 (= e!591681 e!591682)))

(declare-fun res!695509 () Bool)

(assert (=> b!1044031 (=> (not res!695509) (not e!591682))))

(assert (=> b!1044031 (= res!695509 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32189 lt!460367)))))

(declare-fun b!1044032 () Bool)

(assert (=> b!1044032 (= e!591682 (arrayContainsKey!0 lt!460367 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126293 (not res!695508)) b!1044031))

(assert (= (and b!1044031 res!695509) b!1044032))

(declare-fun m!963551 () Bool)

(assert (=> d!126293 m!963551))

(declare-fun m!963553 () Bool)

(assert (=> b!1044032 m!963553))

(assert (=> b!1043975 d!126293))

(declare-fun bm!44311 () Bool)

(declare-fun call!44319 () ListLongMap!13889)

(declare-fun getCurrentListMapNoExtraKeys!3538 (array!65812 array!65814 (_ BitVec 32) (_ BitVec 32) V!37981 V!37981 (_ BitVec 32) Int) ListLongMap!13889)

(assert (=> bm!44311 (= call!44319 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))))))

(declare-fun bm!44312 () Bool)

(declare-fun call!44318 () ListLongMap!13889)

(assert (=> bm!44312 (= call!44318 call!44319)))

(declare-fun b!1044075 () Bool)

(declare-fun e!591712 () Bool)

(declare-fun lt!460479 () ListLongMap!13889)

(declare-fun apply!945 (ListLongMap!13889 (_ BitVec 64)) V!37981)

(assert (=> b!1044075 (= e!591712 (= (apply!945 lt!460479 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6229 (_2!7936 lt!460369))))))

(declare-fun bm!44313 () Bool)

(declare-fun call!44314 () Bool)

(assert (=> bm!44313 (= call!44314 (contains!6089 lt!460479 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!126295 () Bool)

(declare-fun e!591711 () Bool)

(assert (=> d!126295 e!591711))

(declare-fun res!695535 () Bool)

(assert (=> d!126295 (=> (not res!695535) (not e!591711))))

(assert (=> d!126295 (= res!695535 (or (bvsge #b00000000000000000000000000000000 (size!32189 (_keys!11654 (_2!7936 lt!460369)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 (_2!7936 lt!460369)))))))))

(declare-fun lt!460473 () ListLongMap!13889)

(assert (=> d!126295 (= lt!460479 lt!460473)))

(declare-fun lt!460464 () Unit!34086)

(declare-fun e!591717 () Unit!34086)

(assert (=> d!126295 (= lt!460464 e!591717)))

(declare-fun c!106001 () Bool)

(declare-fun e!591720 () Bool)

(assert (=> d!126295 (= c!106001 e!591720)))

(declare-fun res!695534 () Bool)

(assert (=> d!126295 (=> (not res!695534) (not e!591720))))

(assert (=> d!126295 (= res!695534 (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 (_2!7936 lt!460369)))))))

(declare-fun e!591715 () ListLongMap!13889)

(assert (=> d!126295 (= lt!460473 e!591715)))

(declare-fun c!105998 () Bool)

(assert (=> d!126295 (= c!105998 (and (not (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126295 (validMask!0 (mask!30491 (_2!7936 lt!460369)))))

(assert (=> d!126295 (= (getCurrentListMap!3966 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))) lt!460479)))

(declare-fun b!1044076 () Bool)

(declare-fun e!591716 () ListLongMap!13889)

(assert (=> b!1044076 (= e!591715 e!591716)))

(declare-fun c!105997 () Bool)

(assert (=> b!1044076 (= c!105997 (and (not (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044077 () Bool)

(declare-fun c!105999 () Bool)

(assert (=> b!1044077 (= c!105999 (and (not (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591721 () ListLongMap!13889)

(assert (=> b!1044077 (= e!591716 e!591721)))

(declare-fun b!1044078 () Bool)

(declare-fun e!591719 () Bool)

(assert (=> b!1044078 (= e!591719 e!591712)))

(declare-fun res!695529 () Bool)

(assert (=> b!1044078 (= res!695529 call!44314)))

(assert (=> b!1044078 (=> (not res!695529) (not e!591712))))

(declare-fun b!1044079 () Bool)

(declare-fun call!44320 () ListLongMap!13889)

(assert (=> b!1044079 (= e!591721 call!44320)))

(declare-fun b!1044080 () Bool)

(declare-fun Unit!34090 () Unit!34086)

(assert (=> b!1044080 (= e!591717 Unit!34090)))

(declare-fun bm!44314 () Bool)

(declare-fun call!44317 () Bool)

(assert (=> bm!44314 (= call!44317 (contains!6089 lt!460479 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044081 () Bool)

(declare-fun call!44316 () ListLongMap!13889)

(assert (=> b!1044081 (= e!591721 call!44316)))

(declare-fun b!1044082 () Bool)

(assert (=> b!1044082 (= e!591716 call!44316)))

(declare-fun bm!44315 () Bool)

(assert (=> bm!44315 (= call!44320 call!44318)))

(declare-fun b!1044083 () Bool)

(declare-fun e!591718 () Bool)

(assert (=> b!1044083 (= e!591718 (not call!44317))))

(declare-fun b!1044084 () Bool)

(assert (=> b!1044084 (= e!591711 e!591718)))

(declare-fun c!106000 () Bool)

(assert (=> b!1044084 (= c!106000 (not (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044085 () Bool)

(declare-fun e!591710 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1044085 (= e!591710 (validKeyInArray!0 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000)))))

(declare-fun b!1044086 () Bool)

(declare-fun lt!460477 () Unit!34086)

(assert (=> b!1044086 (= e!591717 lt!460477)))

(declare-fun lt!460458 () ListLongMap!13889)

(assert (=> b!1044086 (= lt!460458 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))))))

(declare-fun lt!460462 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460462 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460478 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460478 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000))))

(declare-fun lt!460468 () Unit!34086)

(declare-fun addStillContains!633 (ListLongMap!13889 (_ BitVec 64) V!37981 (_ BitVec 64)) Unit!34086)

(assert (=> b!1044086 (= lt!460468 (addStillContains!633 lt!460458 lt!460462 (zeroValue!6229 (_2!7936 lt!460369)) lt!460478))))

(declare-fun +!3068 (ListLongMap!13889 tuple2!15854) ListLongMap!13889)

(assert (=> b!1044086 (contains!6089 (+!3068 lt!460458 (tuple2!15855 lt!460462 (zeroValue!6229 (_2!7936 lt!460369)))) lt!460478)))

(declare-fun lt!460469 () Unit!34086)

(assert (=> b!1044086 (= lt!460469 lt!460468)))

(declare-fun lt!460460 () ListLongMap!13889)

(assert (=> b!1044086 (= lt!460460 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))))))

(declare-fun lt!460459 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460459 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460463 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460463 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000))))

(declare-fun lt!460475 () Unit!34086)

(declare-fun addApplyDifferent!485 (ListLongMap!13889 (_ BitVec 64) V!37981 (_ BitVec 64)) Unit!34086)

(assert (=> b!1044086 (= lt!460475 (addApplyDifferent!485 lt!460460 lt!460459 (minValue!6229 (_2!7936 lt!460369)) lt!460463))))

(assert (=> b!1044086 (= (apply!945 (+!3068 lt!460460 (tuple2!15855 lt!460459 (minValue!6229 (_2!7936 lt!460369)))) lt!460463) (apply!945 lt!460460 lt!460463))))

(declare-fun lt!460470 () Unit!34086)

(assert (=> b!1044086 (= lt!460470 lt!460475)))

(declare-fun lt!460476 () ListLongMap!13889)

(assert (=> b!1044086 (= lt!460476 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))))))

(declare-fun lt!460471 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460471 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460467 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460467 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000))))

(declare-fun lt!460465 () Unit!34086)

(assert (=> b!1044086 (= lt!460465 (addApplyDifferent!485 lt!460476 lt!460471 (zeroValue!6229 (_2!7936 lt!460369)) lt!460467))))

(assert (=> b!1044086 (= (apply!945 (+!3068 lt!460476 (tuple2!15855 lt!460471 (zeroValue!6229 (_2!7936 lt!460369)))) lt!460467) (apply!945 lt!460476 lt!460467))))

(declare-fun lt!460466 () Unit!34086)

(assert (=> b!1044086 (= lt!460466 lt!460465)))

(declare-fun lt!460472 () ListLongMap!13889)

(assert (=> b!1044086 (= lt!460472 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))))))

(declare-fun lt!460461 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460461 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460474 () (_ BitVec 64))

(assert (=> b!1044086 (= lt!460474 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000))))

(assert (=> b!1044086 (= lt!460477 (addApplyDifferent!485 lt!460472 lt!460461 (minValue!6229 (_2!7936 lt!460369)) lt!460474))))

(assert (=> b!1044086 (= (apply!945 (+!3068 lt!460472 (tuple2!15855 lt!460461 (minValue!6229 (_2!7936 lt!460369)))) lt!460474) (apply!945 lt!460472 lt!460474))))

(declare-fun b!1044087 () Bool)

(declare-fun e!591709 () Bool)

(assert (=> b!1044087 (= e!591718 e!591709)))

(declare-fun res!695536 () Bool)

(assert (=> b!1044087 (= res!695536 call!44317)))

(assert (=> b!1044087 (=> (not res!695536) (not e!591709))))

(declare-fun b!1044088 () Bool)

(declare-fun e!591713 () Bool)

(declare-fun get!16558 (ValueCell!11712 V!37981) V!37981)

(assert (=> b!1044088 (= e!591713 (= (apply!945 lt!460479 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000)) (get!16558 (select (arr!31654 (_values!6418 (_2!7936 lt!460369))) #b00000000000000000000000000000000) (dynLambda!2010 (defaultEntry!6395 (_2!7936 lt!460369)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044088 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32190 (_values!6418 (_2!7936 lt!460369)))))))

(assert (=> b!1044088 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 (_2!7936 lt!460369)))))))

(declare-fun b!1044089 () Bool)

(declare-fun e!591714 () Bool)

(assert (=> b!1044089 (= e!591714 e!591713)))

(declare-fun res!695530 () Bool)

(assert (=> b!1044089 (=> (not res!695530) (not e!591713))))

(assert (=> b!1044089 (= res!695530 (contains!6089 lt!460479 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000)))))

(assert (=> b!1044089 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 (_2!7936 lt!460369)))))))

(declare-fun b!1044090 () Bool)

(assert (=> b!1044090 (= e!591719 (not call!44314))))

(declare-fun b!1044091 () Bool)

(assert (=> b!1044091 (= e!591720 (validKeyInArray!0 (select (arr!31653 (_keys!11654 (_2!7936 lt!460369))) #b00000000000000000000000000000000)))))

(declare-fun call!44315 () ListLongMap!13889)

(declare-fun bm!44316 () Bool)

(assert (=> bm!44316 (= call!44315 (+!3068 (ite c!105998 call!44319 (ite c!105997 call!44318 call!44320)) (ite (or c!105998 c!105997) (tuple2!15855 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6229 (_2!7936 lt!460369))) (tuple2!15855 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6229 (_2!7936 lt!460369))))))))

(declare-fun b!1044092 () Bool)

(assert (=> b!1044092 (= e!591709 (= (apply!945 lt!460479 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6229 (_2!7936 lt!460369))))))

(declare-fun bm!44317 () Bool)

(assert (=> bm!44317 (= call!44316 call!44315)))

(declare-fun b!1044093 () Bool)

(assert (=> b!1044093 (= e!591715 (+!3068 call!44315 (tuple2!15855 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6229 (_2!7936 lt!460369)))))))

(declare-fun b!1044094 () Bool)

(declare-fun res!695528 () Bool)

(assert (=> b!1044094 (=> (not res!695528) (not e!591711))))

(assert (=> b!1044094 (= res!695528 e!591714)))

(declare-fun res!695531 () Bool)

(assert (=> b!1044094 (=> res!695531 e!591714)))

(assert (=> b!1044094 (= res!695531 (not e!591710))))

(declare-fun res!695532 () Bool)

(assert (=> b!1044094 (=> (not res!695532) (not e!591710))))

(assert (=> b!1044094 (= res!695532 (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 (_2!7936 lt!460369)))))))

(declare-fun b!1044095 () Bool)

(declare-fun res!695533 () Bool)

(assert (=> b!1044095 (=> (not res!695533) (not e!591711))))

(assert (=> b!1044095 (= res!695533 e!591719)))

(declare-fun c!105996 () Bool)

(assert (=> b!1044095 (= c!105996 (not (= (bvand (extraKeys!6123 (_2!7936 lt!460369)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!126295 c!105998) b!1044093))

(assert (= (and d!126295 (not c!105998)) b!1044076))

(assert (= (and b!1044076 c!105997) b!1044082))

(assert (= (and b!1044076 (not c!105997)) b!1044077))

(assert (= (and b!1044077 c!105999) b!1044081))

(assert (= (and b!1044077 (not c!105999)) b!1044079))

(assert (= (or b!1044081 b!1044079) bm!44315))

(assert (= (or b!1044082 bm!44315) bm!44312))

(assert (= (or b!1044082 b!1044081) bm!44317))

(assert (= (or b!1044093 bm!44312) bm!44311))

(assert (= (or b!1044093 bm!44317) bm!44316))

(assert (= (and d!126295 res!695534) b!1044091))

(assert (= (and d!126295 c!106001) b!1044086))

(assert (= (and d!126295 (not c!106001)) b!1044080))

(assert (= (and d!126295 res!695535) b!1044094))

(assert (= (and b!1044094 res!695532) b!1044085))

(assert (= (and b!1044094 (not res!695531)) b!1044089))

(assert (= (and b!1044089 res!695530) b!1044088))

(assert (= (and b!1044094 res!695528) b!1044095))

(assert (= (and b!1044095 c!105996) b!1044078))

(assert (= (and b!1044095 (not c!105996)) b!1044090))

(assert (= (and b!1044078 res!695529) b!1044075))

(assert (= (or b!1044078 b!1044090) bm!44313))

(assert (= (and b!1044095 res!695533) b!1044084))

(assert (= (and b!1044084 c!106000) b!1044087))

(assert (= (and b!1044084 (not c!106000)) b!1044083))

(assert (= (and b!1044087 res!695536) b!1044092))

(assert (= (or b!1044087 b!1044083) bm!44314))

(declare-fun b_lambda!16235 () Bool)

(assert (=> (not b_lambda!16235) (not b!1044088)))

(declare-fun t!31370 () Bool)

(declare-fun tb!7063 () Bool)

(assert (=> (and b!1043978 (= (defaultEntry!6395 thiss!1427) (defaultEntry!6395 (_2!7936 lt!460369))) t!31370) tb!7063))

(declare-fun result!14543 () Bool)

(assert (=> tb!7063 (= result!14543 tp_is_empty!24831)))

(assert (=> b!1044088 t!31370))

(declare-fun b_and!33695 () Bool)

(assert (= b_and!33689 (and (=> t!31370 result!14543) b_and!33695)))

(declare-fun m!963555 () Bool)

(assert (=> b!1044089 m!963555))

(assert (=> b!1044089 m!963555))

(declare-fun m!963557 () Bool)

(assert (=> b!1044089 m!963557))

(assert (=> b!1044091 m!963555))

(assert (=> b!1044091 m!963555))

(declare-fun m!963559 () Bool)

(assert (=> b!1044091 m!963559))

(declare-fun m!963561 () Bool)

(assert (=> b!1044093 m!963561))

(declare-fun m!963563 () Bool)

(assert (=> b!1044075 m!963563))

(declare-fun m!963565 () Bool)

(assert (=> b!1044092 m!963565))

(declare-fun m!963567 () Bool)

(assert (=> bm!44311 m!963567))

(declare-fun m!963569 () Bool)

(assert (=> bm!44314 m!963569))

(assert (=> d!126295 m!963449))

(declare-fun m!963571 () Bool)

(assert (=> b!1044086 m!963571))

(declare-fun m!963573 () Bool)

(assert (=> b!1044086 m!963573))

(assert (=> b!1044086 m!963567))

(assert (=> b!1044086 m!963555))

(declare-fun m!963575 () Bool)

(assert (=> b!1044086 m!963575))

(declare-fun m!963577 () Bool)

(assert (=> b!1044086 m!963577))

(declare-fun m!963579 () Bool)

(assert (=> b!1044086 m!963579))

(declare-fun m!963581 () Bool)

(assert (=> b!1044086 m!963581))

(assert (=> b!1044086 m!963579))

(declare-fun m!963583 () Bool)

(assert (=> b!1044086 m!963583))

(declare-fun m!963585 () Bool)

(assert (=> b!1044086 m!963585))

(declare-fun m!963587 () Bool)

(assert (=> b!1044086 m!963587))

(assert (=> b!1044086 m!963583))

(declare-fun m!963589 () Bool)

(assert (=> b!1044086 m!963589))

(declare-fun m!963591 () Bool)

(assert (=> b!1044086 m!963591))

(declare-fun m!963593 () Bool)

(assert (=> b!1044086 m!963593))

(assert (=> b!1044086 m!963575))

(declare-fun m!963595 () Bool)

(assert (=> b!1044086 m!963595))

(assert (=> b!1044086 m!963585))

(declare-fun m!963597 () Bool)

(assert (=> b!1044086 m!963597))

(declare-fun m!963599 () Bool)

(assert (=> b!1044086 m!963599))

(assert (=> b!1044085 m!963555))

(assert (=> b!1044085 m!963555))

(assert (=> b!1044085 m!963559))

(declare-fun m!963601 () Bool)

(assert (=> b!1044088 m!963601))

(assert (=> b!1044088 m!963555))

(assert (=> b!1044088 m!963555))

(declare-fun m!963603 () Bool)

(assert (=> b!1044088 m!963603))

(declare-fun m!963605 () Bool)

(assert (=> b!1044088 m!963605))

(assert (=> b!1044088 m!963601))

(assert (=> b!1044088 m!963605))

(declare-fun m!963607 () Bool)

(assert (=> b!1044088 m!963607))

(declare-fun m!963609 () Bool)

(assert (=> bm!44316 m!963609))

(declare-fun m!963611 () Bool)

(assert (=> bm!44313 m!963611))

(assert (=> b!1043975 d!126295))

(declare-fun d!126297 () Bool)

(declare-fun e!591724 () Bool)

(assert (=> d!126297 e!591724))

(declare-fun res!695539 () Bool)

(assert (=> d!126297 (=> (not res!695539) (not e!591724))))

(assert (=> d!126297 (= res!695539 (and (bvsge (index!41715 lt!460368) #b00000000000000000000000000000000) (bvslt (index!41715 lt!460368) (size!32189 (_keys!11654 thiss!1427)))))))

(declare-fun lt!460482 () Unit!34086)

(declare-fun choose!1716 (array!65812 array!65814 (_ BitVec 32) (_ BitVec 32) V!37981 V!37981 (_ BitVec 32) (_ BitVec 64) Int) Unit!34086)

(assert (=> d!126297 (= lt!460482 (choose!1716 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) (index!41715 lt!460368) key!909 (defaultEntry!6395 thiss!1427)))))

(assert (=> d!126297 (validMask!0 (mask!30491 thiss!1427))))

(assert (=> d!126297 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!56 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) (index!41715 lt!460368) key!909 (defaultEntry!6395 thiss!1427)) lt!460482)))

(declare-fun b!1044098 () Bool)

(assert (=> b!1044098 (= e!591724 (= (-!536 (getCurrentListMap!3966 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)) key!909) (getCurrentListMap!3966 (array!65813 (store (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32189 (_keys!11654 thiss!1427))) (array!65815 (store (arr!31654 (_values!6418 thiss!1427)) (index!41715 lt!460368) (ValueCellFull!11712 (dynLambda!2010 (defaultEntry!6395 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32190 (_values!6418 thiss!1427))) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427))))))

(assert (=> b!1044098 (bvslt (index!41715 lt!460368) (size!32190 (_values!6418 thiss!1427)))))

(assert (= (and d!126297 res!695539) b!1044098))

(declare-fun b_lambda!16237 () Bool)

(assert (=> (not b_lambda!16237) (not b!1044098)))

(assert (=> b!1044098 t!31364))

(declare-fun b_and!33697 () Bool)

(assert (= b_and!33695 (and (=> t!31364 result!14535) b_and!33697)))

(declare-fun m!963613 () Bool)

(assert (=> d!126297 m!963613))

(assert (=> d!126297 m!963545))

(assert (=> b!1044098 m!963465))

(assert (=> b!1044098 m!963467))

(assert (=> b!1044098 m!963467))

(assert (=> b!1044098 m!963469))

(assert (=> b!1044098 m!963475))

(declare-fun m!963615 () Bool)

(assert (=> b!1044098 m!963615))

(assert (=> b!1044098 m!963453))

(assert (=> b!1043975 d!126297))

(declare-fun d!126299 () Bool)

(declare-fun lt!460485 () ListLongMap!13889)

(assert (=> d!126299 (not (contains!6089 lt!460485 key!909))))

(declare-fun removeStrictlySorted!61 (List!22128 (_ BitVec 64)) List!22128)

(assert (=> d!126299 (= lt!460485 (ListLongMap!13890 (removeStrictlySorted!61 (toList!6960 (getCurrentListMap!3966 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427))) key!909)))))

(assert (=> d!126299 (= (-!536 (getCurrentListMap!3966 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)) key!909) lt!460485)))

(declare-fun bs!30507 () Bool)

(assert (= bs!30507 d!126299))

(declare-fun m!963617 () Bool)

(assert (=> bs!30507 m!963617))

(declare-fun m!963619 () Bool)

(assert (=> bs!30507 m!963619))

(assert (=> b!1043975 d!126299))

(declare-fun d!126301 () Bool)

(declare-fun res!695544 () Bool)

(declare-fun e!591732 () Bool)

(assert (=> d!126301 (=> res!695544 e!591732)))

(assert (=> d!126301 (= res!695544 (bvsge #b00000000000000000000000000000000 (size!32189 lt!460367)))))

(assert (=> d!126301 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!460367 (mask!30491 thiss!1427)) e!591732)))

(declare-fun bm!44320 () Bool)

(declare-fun call!44323 () Bool)

(assert (=> bm!44320 (= call!44323 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!460367 (mask!30491 thiss!1427)))))

(declare-fun b!1044107 () Bool)

(declare-fun e!591731 () Bool)

(assert (=> b!1044107 (= e!591732 e!591731)))

(declare-fun c!106004 () Bool)

(assert (=> b!1044107 (= c!106004 (validKeyInArray!0 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(declare-fun b!1044108 () Bool)

(assert (=> b!1044108 (= e!591731 call!44323)))

(declare-fun b!1044109 () Bool)

(declare-fun e!591733 () Bool)

(assert (=> b!1044109 (= e!591731 e!591733)))

(declare-fun lt!460492 () (_ BitVec 64))

(assert (=> b!1044109 (= lt!460492 (select (arr!31653 lt!460367) #b00000000000000000000000000000000))))

(declare-fun lt!460494 () Unit!34086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65812 (_ BitVec 64) (_ BitVec 32)) Unit!34086)

(assert (=> b!1044109 (= lt!460494 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!460367 lt!460492 #b00000000000000000000000000000000))))

(assert (=> b!1044109 (arrayContainsKey!0 lt!460367 lt!460492 #b00000000000000000000000000000000)))

(declare-fun lt!460493 () Unit!34086)

(assert (=> b!1044109 (= lt!460493 lt!460494)))

(declare-fun res!695545 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65812 (_ BitVec 32)) SeekEntryResult!9836)

(assert (=> b!1044109 (= res!695545 (= (seekEntryOrOpen!0 (select (arr!31653 lt!460367) #b00000000000000000000000000000000) lt!460367 (mask!30491 thiss!1427)) (Found!9836 #b00000000000000000000000000000000)))))

(assert (=> b!1044109 (=> (not res!695545) (not e!591733))))

(declare-fun b!1044110 () Bool)

(assert (=> b!1044110 (= e!591733 call!44323)))

(assert (= (and d!126301 (not res!695544)) b!1044107))

(assert (= (and b!1044107 c!106004) b!1044109))

(assert (= (and b!1044107 (not c!106004)) b!1044108))

(assert (= (and b!1044109 res!695545) b!1044110))

(assert (= (or b!1044110 b!1044108) bm!44320))

(declare-fun m!963621 () Bool)

(assert (=> bm!44320 m!963621))

(assert (=> b!1044107 m!963551))

(assert (=> b!1044107 m!963551))

(declare-fun m!963623 () Bool)

(assert (=> b!1044107 m!963623))

(assert (=> b!1044109 m!963551))

(declare-fun m!963625 () Bool)

(assert (=> b!1044109 m!963625))

(declare-fun m!963627 () Bool)

(assert (=> b!1044109 m!963627))

(assert (=> b!1044109 m!963551))

(declare-fun m!963629 () Bool)

(assert (=> b!1044109 m!963629))

(assert (=> b!1043975 d!126301))

(declare-fun b!1044119 () Bool)

(declare-fun e!591739 () (_ BitVec 32))

(declare-fun call!44326 () (_ BitVec 32))

(assert (=> b!1044119 (= e!591739 call!44326)))

(declare-fun b!1044120 () Bool)

(declare-fun e!591738 () (_ BitVec 32))

(assert (=> b!1044120 (= e!591738 e!591739)))

(declare-fun c!106010 () Bool)

(assert (=> b!1044120 (= c!106010 (validKeyInArray!0 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(declare-fun b!1044121 () Bool)

(assert (=> b!1044121 (= e!591739 (bvadd #b00000000000000000000000000000001 call!44326))))

(declare-fun d!126303 () Bool)

(declare-fun lt!460497 () (_ BitVec 32))

(assert (=> d!126303 (and (bvsge lt!460497 #b00000000000000000000000000000000) (bvsle lt!460497 (bvsub (size!32189 lt!460367) #b00000000000000000000000000000000)))))

(assert (=> d!126303 (= lt!460497 e!591738)))

(declare-fun c!106009 () Bool)

(assert (=> d!126303 (= c!106009 (bvsge #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))))))

(assert (=> d!126303 (and (bvsle #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32189 (_keys!11654 thiss!1427)) (size!32189 lt!460367)))))

(assert (=> d!126303 (= (arrayCountValidKeys!0 lt!460367 #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) lt!460497)))

(declare-fun bm!44323 () Bool)

(assert (=> bm!44323 (= call!44326 (arrayCountValidKeys!0 lt!460367 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun b!1044122 () Bool)

(assert (=> b!1044122 (= e!591738 #b00000000000000000000000000000000)))

(assert (= (and d!126303 c!106009) b!1044122))

(assert (= (and d!126303 (not c!106009)) b!1044120))

(assert (= (and b!1044120 c!106010) b!1044121))

(assert (= (and b!1044120 (not c!106010)) b!1044119))

(assert (= (or b!1044121 b!1044119) bm!44323))

(assert (=> b!1044120 m!963551))

(assert (=> b!1044120 m!963551))

(assert (=> b!1044120 m!963623))

(declare-fun m!963631 () Bool)

(assert (=> bm!44323 m!963631))

(assert (=> b!1043975 d!126303))

(declare-fun d!126305 () Bool)

(declare-fun res!695552 () Bool)

(declare-fun e!591751 () Bool)

(assert (=> d!126305 (=> res!695552 e!591751)))

(assert (=> d!126305 (= res!695552 (bvsge #b00000000000000000000000000000000 (size!32189 lt!460367)))))

(assert (=> d!126305 (= (arrayNoDuplicates!0 lt!460367 #b00000000000000000000000000000000 Nil!22126) e!591751)))

(declare-fun bm!44326 () Bool)

(declare-fun call!44329 () Bool)

(declare-fun c!106013 () Bool)

(assert (=> bm!44326 (= call!44329 (arrayNoDuplicates!0 lt!460367 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106013 (Cons!22125 (select (arr!31653 lt!460367) #b00000000000000000000000000000000) Nil!22126) Nil!22126)))))

(declare-fun b!1044133 () Bool)

(declare-fun e!591750 () Bool)

(declare-fun contains!6090 (List!22129 (_ BitVec 64)) Bool)

(assert (=> b!1044133 (= e!591750 (contains!6090 Nil!22126 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(declare-fun b!1044134 () Bool)

(declare-fun e!591748 () Bool)

(assert (=> b!1044134 (= e!591751 e!591748)))

(declare-fun res!695554 () Bool)

(assert (=> b!1044134 (=> (not res!695554) (not e!591748))))

(assert (=> b!1044134 (= res!695554 (not e!591750))))

(declare-fun res!695553 () Bool)

(assert (=> b!1044134 (=> (not res!695553) (not e!591750))))

(assert (=> b!1044134 (= res!695553 (validKeyInArray!0 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(declare-fun b!1044135 () Bool)

(declare-fun e!591749 () Bool)

(assert (=> b!1044135 (= e!591749 call!44329)))

(declare-fun b!1044136 () Bool)

(assert (=> b!1044136 (= e!591748 e!591749)))

(assert (=> b!1044136 (= c!106013 (validKeyInArray!0 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(declare-fun b!1044137 () Bool)

(assert (=> b!1044137 (= e!591749 call!44329)))

(assert (= (and d!126305 (not res!695552)) b!1044134))

(assert (= (and b!1044134 res!695553) b!1044133))

(assert (= (and b!1044134 res!695554) b!1044136))

(assert (= (and b!1044136 c!106013) b!1044135))

(assert (= (and b!1044136 (not c!106013)) b!1044137))

(assert (= (or b!1044135 b!1044137) bm!44326))

(assert (=> bm!44326 m!963551))

(declare-fun m!963633 () Bool)

(assert (=> bm!44326 m!963633))

(assert (=> b!1044133 m!963551))

(assert (=> b!1044133 m!963551))

(declare-fun m!963635 () Bool)

(assert (=> b!1044133 m!963635))

(assert (=> b!1044134 m!963551))

(assert (=> b!1044134 m!963551))

(assert (=> b!1044134 m!963623))

(assert (=> b!1044136 m!963551))

(assert (=> b!1044136 m!963551))

(assert (=> b!1044136 m!963623))

(assert (=> b!1043975 d!126305))

(declare-fun b!1044149 () Bool)

(declare-fun e!591757 () Bool)

(assert (=> b!1044149 (= e!591757 (= (arrayCountValidKeys!0 (array!65813 (store (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32189 (_keys!11654 thiss!1427))) #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11654 thiss!1427) #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun b!1044147 () Bool)

(declare-fun res!695565 () Bool)

(declare-fun e!591756 () Bool)

(assert (=> b!1044147 (=> (not res!695565) (not e!591756))))

(assert (=> b!1044147 (= res!695565 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!126307 () Bool)

(assert (=> d!126307 e!591757))

(declare-fun res!695566 () Bool)

(assert (=> d!126307 (=> (not res!695566) (not e!591757))))

(assert (=> d!126307 (= res!695566 (and (bvsge (index!41715 lt!460368) #b00000000000000000000000000000000) (bvslt (index!41715 lt!460368) (size!32189 (_keys!11654 thiss!1427)))))))

(declare-fun lt!460500 () Unit!34086)

(declare-fun choose!82 (array!65812 (_ BitVec 32) (_ BitVec 64)) Unit!34086)

(assert (=> d!126307 (= lt!460500 (choose!82 (_keys!11654 thiss!1427) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126307 e!591756))

(declare-fun res!695564 () Bool)

(assert (=> d!126307 (=> (not res!695564) (not e!591756))))

(assert (=> d!126307 (= res!695564 (and (bvsge (index!41715 lt!460368) #b00000000000000000000000000000000) (bvslt (index!41715 lt!460368) (size!32189 (_keys!11654 thiss!1427)))))))

(assert (=> d!126307 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11654 thiss!1427) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000) lt!460500)))

(declare-fun b!1044146 () Bool)

(declare-fun res!695563 () Bool)

(assert (=> b!1044146 (=> (not res!695563) (not e!591756))))

(assert (=> b!1044146 (= res!695563 (validKeyInArray!0 (select (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460368))))))

(declare-fun b!1044148 () Bool)

(assert (=> b!1044148 (= e!591756 (bvslt (size!32189 (_keys!11654 thiss!1427)) #b01111111111111111111111111111111))))

(assert (= (and d!126307 res!695564) b!1044146))

(assert (= (and b!1044146 res!695563) b!1044147))

(assert (= (and b!1044147 res!695565) b!1044148))

(assert (= (and d!126307 res!695566) b!1044149))

(assert (=> b!1044149 m!963465))

(declare-fun m!963637 () Bool)

(assert (=> b!1044149 m!963637))

(assert (=> b!1044149 m!963457))

(declare-fun m!963639 () Bool)

(assert (=> b!1044147 m!963639))

(declare-fun m!963641 () Bool)

(assert (=> d!126307 m!963641))

(declare-fun m!963643 () Bool)

(assert (=> b!1044146 m!963643))

(assert (=> b!1044146 m!963643))

(declare-fun m!963645 () Bool)

(assert (=> b!1044146 m!963645))

(assert (=> b!1043975 d!126307))

(declare-fun d!126309 () Bool)

(declare-fun e!591760 () Bool)

(assert (=> d!126309 e!591760))

(declare-fun res!695569 () Bool)

(assert (=> d!126309 (=> (not res!695569) (not e!591760))))

(assert (=> d!126309 (= res!695569 (bvslt (index!41715 lt!460368) (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun lt!460503 () Unit!34086)

(declare-fun choose!121 (array!65812 (_ BitVec 32) (_ BitVec 64)) Unit!34086)

(assert (=> d!126309 (= lt!460503 (choose!121 (_keys!11654 thiss!1427) (index!41715 lt!460368) key!909))))

(assert (=> d!126309 (bvsge (index!41715 lt!460368) #b00000000000000000000000000000000)))

(assert (=> d!126309 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11654 thiss!1427) (index!41715 lt!460368) key!909) lt!460503)))

(declare-fun b!1044152 () Bool)

(assert (=> b!1044152 (= e!591760 (not (arrayContainsKey!0 (array!65813 (store (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32189 (_keys!11654 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126309 res!695569) b!1044152))

(declare-fun m!963647 () Bool)

(assert (=> d!126309 m!963647))

(assert (=> b!1044152 m!963465))

(declare-fun m!963649 () Bool)

(assert (=> b!1044152 m!963649))

(assert (=> b!1043975 d!126309))

(declare-fun d!126311 () Bool)

(declare-fun e!591763 () Bool)

(assert (=> d!126311 e!591763))

(declare-fun res!695572 () Bool)

(assert (=> d!126311 (=> (not res!695572) (not e!591763))))

(assert (=> d!126311 (= res!695572 (and (bvsge (index!41715 lt!460368) #b00000000000000000000000000000000) (bvslt (index!41715 lt!460368) (size!32189 (_keys!11654 thiss!1427)))))))

(declare-fun lt!460506 () Unit!34086)

(declare-fun choose!53 (array!65812 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22129) Unit!34086)

(assert (=> d!126311 (= lt!460506 (choose!53 (_keys!11654 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41715 lt!460368) #b00000000000000000000000000000000 Nil!22126))))

(assert (=> d!126311 (bvslt (size!32189 (_keys!11654 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126311 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11654 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41715 lt!460368) #b00000000000000000000000000000000 Nil!22126) lt!460506)))

(declare-fun b!1044155 () Bool)

(assert (=> b!1044155 (= e!591763 (arrayNoDuplicates!0 (array!65813 (store (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32189 (_keys!11654 thiss!1427))) #b00000000000000000000000000000000 Nil!22126))))

(assert (= (and d!126311 res!695572) b!1044155))

(declare-fun m!963651 () Bool)

(assert (=> d!126311 m!963651))

(assert (=> b!1044155 m!963465))

(declare-fun m!963653 () Bool)

(assert (=> b!1044155 m!963653))

(assert (=> b!1043975 d!126311))

(declare-fun d!126313 () Bool)

(declare-fun e!591766 () Bool)

(assert (=> d!126313 e!591766))

(declare-fun res!695575 () Bool)

(assert (=> d!126313 (=> (not res!695575) (not e!591766))))

(assert (=> d!126313 (= res!695575 (and (bvsge (index!41715 lt!460368) #b00000000000000000000000000000000) (bvslt (index!41715 lt!460368) (size!32189 (_keys!11654 thiss!1427)))))))

(declare-fun lt!460509 () Unit!34086)

(declare-fun choose!25 (array!65812 (_ BitVec 32) (_ BitVec 32)) Unit!34086)

(assert (=> d!126313 (= lt!460509 (choose!25 (_keys!11654 thiss!1427) (index!41715 lt!460368) (mask!30491 thiss!1427)))))

(assert (=> d!126313 (validMask!0 (mask!30491 thiss!1427))))

(assert (=> d!126313 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11654 thiss!1427) (index!41715 lt!460368) (mask!30491 thiss!1427)) lt!460509)))

(declare-fun b!1044158 () Bool)

(assert (=> b!1044158 (= e!591766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65813 (store (arr!31653 (_keys!11654 thiss!1427)) (index!41715 lt!460368) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32189 (_keys!11654 thiss!1427))) (mask!30491 thiss!1427)))))

(assert (= (and d!126313 res!695575) b!1044158))

(declare-fun m!963655 () Bool)

(assert (=> d!126313 m!963655))

(assert (=> d!126313 m!963545))

(assert (=> b!1044158 m!963465))

(declare-fun m!963657 () Bool)

(assert (=> b!1044158 m!963657))

(assert (=> b!1043975 d!126313))

(declare-fun call!44335 () ListLongMap!13889)

(declare-fun bm!44327 () Bool)

(assert (=> bm!44327 (= call!44335 (getCurrentListMapNoExtraKeys!3538 lt!460367 lt!460371 (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun bm!44328 () Bool)

(declare-fun call!44334 () ListLongMap!13889)

(assert (=> bm!44328 (= call!44334 call!44335)))

(declare-fun b!1044159 () Bool)

(declare-fun e!591770 () Bool)

(declare-fun lt!460531 () ListLongMap!13889)

(assert (=> b!1044159 (= e!591770 (= (apply!945 lt!460531 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6229 thiss!1427)))))

(declare-fun bm!44329 () Bool)

(declare-fun call!44330 () Bool)

(assert (=> bm!44329 (= call!44330 (contains!6089 lt!460531 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!126315 () Bool)

(declare-fun e!591769 () Bool)

(assert (=> d!126315 e!591769))

(declare-fun res!695583 () Bool)

(assert (=> d!126315 (=> (not res!695583) (not e!591769))))

(assert (=> d!126315 (= res!695583 (or (bvsge #b00000000000000000000000000000000 (size!32189 lt!460367)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 lt!460367)))))))

(declare-fun lt!460525 () ListLongMap!13889)

(assert (=> d!126315 (= lt!460531 lt!460525)))

(declare-fun lt!460516 () Unit!34086)

(declare-fun e!591775 () Unit!34086)

(assert (=> d!126315 (= lt!460516 e!591775)))

(declare-fun c!106019 () Bool)

(declare-fun e!591778 () Bool)

(assert (=> d!126315 (= c!106019 e!591778)))

(declare-fun res!695582 () Bool)

(assert (=> d!126315 (=> (not res!695582) (not e!591778))))

(assert (=> d!126315 (= res!695582 (bvslt #b00000000000000000000000000000000 (size!32189 lt!460367)))))

(declare-fun e!591773 () ListLongMap!13889)

(assert (=> d!126315 (= lt!460525 e!591773)))

(declare-fun c!106016 () Bool)

(assert (=> d!126315 (= c!106016 (and (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126315 (validMask!0 (mask!30491 thiss!1427))))

(assert (=> d!126315 (= (getCurrentListMap!3966 lt!460367 lt!460371 (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)) lt!460531)))

(declare-fun b!1044160 () Bool)

(declare-fun e!591774 () ListLongMap!13889)

(assert (=> b!1044160 (= e!591773 e!591774)))

(declare-fun c!106015 () Bool)

(assert (=> b!1044160 (= c!106015 (and (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044161 () Bool)

(declare-fun c!106017 () Bool)

(assert (=> b!1044161 (= c!106017 (and (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591779 () ListLongMap!13889)

(assert (=> b!1044161 (= e!591774 e!591779)))

(declare-fun b!1044162 () Bool)

(declare-fun e!591777 () Bool)

(assert (=> b!1044162 (= e!591777 e!591770)))

(declare-fun res!695577 () Bool)

(assert (=> b!1044162 (= res!695577 call!44330)))

(assert (=> b!1044162 (=> (not res!695577) (not e!591770))))

(declare-fun b!1044163 () Bool)

(declare-fun call!44336 () ListLongMap!13889)

(assert (=> b!1044163 (= e!591779 call!44336)))

(declare-fun b!1044164 () Bool)

(declare-fun Unit!34091 () Unit!34086)

(assert (=> b!1044164 (= e!591775 Unit!34091)))

(declare-fun bm!44330 () Bool)

(declare-fun call!44333 () Bool)

(assert (=> bm!44330 (= call!44333 (contains!6089 lt!460531 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044165 () Bool)

(declare-fun call!44332 () ListLongMap!13889)

(assert (=> b!1044165 (= e!591779 call!44332)))

(declare-fun b!1044166 () Bool)

(assert (=> b!1044166 (= e!591774 call!44332)))

(declare-fun bm!44331 () Bool)

(assert (=> bm!44331 (= call!44336 call!44334)))

(declare-fun b!1044167 () Bool)

(declare-fun e!591776 () Bool)

(assert (=> b!1044167 (= e!591776 (not call!44333))))

(declare-fun b!1044168 () Bool)

(assert (=> b!1044168 (= e!591769 e!591776)))

(declare-fun c!106018 () Bool)

(assert (=> b!1044168 (= c!106018 (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044169 () Bool)

(declare-fun e!591768 () Bool)

(assert (=> b!1044169 (= e!591768 (validKeyInArray!0 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(declare-fun b!1044170 () Bool)

(declare-fun lt!460529 () Unit!34086)

(assert (=> b!1044170 (= e!591775 lt!460529)))

(declare-fun lt!460510 () ListLongMap!13889)

(assert (=> b!1044170 (= lt!460510 (getCurrentListMapNoExtraKeys!3538 lt!460367 lt!460371 (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460514 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460514 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460530 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460530 (select (arr!31653 lt!460367) #b00000000000000000000000000000000))))

(declare-fun lt!460520 () Unit!34086)

(assert (=> b!1044170 (= lt!460520 (addStillContains!633 lt!460510 lt!460514 (zeroValue!6229 thiss!1427) lt!460530))))

(assert (=> b!1044170 (contains!6089 (+!3068 lt!460510 (tuple2!15855 lt!460514 (zeroValue!6229 thiss!1427))) lt!460530)))

(declare-fun lt!460521 () Unit!34086)

(assert (=> b!1044170 (= lt!460521 lt!460520)))

(declare-fun lt!460512 () ListLongMap!13889)

(assert (=> b!1044170 (= lt!460512 (getCurrentListMapNoExtraKeys!3538 lt!460367 lt!460371 (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460511 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460511 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460515 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460515 (select (arr!31653 lt!460367) #b00000000000000000000000000000000))))

(declare-fun lt!460527 () Unit!34086)

(assert (=> b!1044170 (= lt!460527 (addApplyDifferent!485 lt!460512 lt!460511 (minValue!6229 thiss!1427) lt!460515))))

(assert (=> b!1044170 (= (apply!945 (+!3068 lt!460512 (tuple2!15855 lt!460511 (minValue!6229 thiss!1427))) lt!460515) (apply!945 lt!460512 lt!460515))))

(declare-fun lt!460522 () Unit!34086)

(assert (=> b!1044170 (= lt!460522 lt!460527)))

(declare-fun lt!460528 () ListLongMap!13889)

(assert (=> b!1044170 (= lt!460528 (getCurrentListMapNoExtraKeys!3538 lt!460367 lt!460371 (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460523 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460523 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460519 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460519 (select (arr!31653 lt!460367) #b00000000000000000000000000000000))))

(declare-fun lt!460517 () Unit!34086)

(assert (=> b!1044170 (= lt!460517 (addApplyDifferent!485 lt!460528 lt!460523 (zeroValue!6229 thiss!1427) lt!460519))))

(assert (=> b!1044170 (= (apply!945 (+!3068 lt!460528 (tuple2!15855 lt!460523 (zeroValue!6229 thiss!1427))) lt!460519) (apply!945 lt!460528 lt!460519))))

(declare-fun lt!460518 () Unit!34086)

(assert (=> b!1044170 (= lt!460518 lt!460517)))

(declare-fun lt!460524 () ListLongMap!13889)

(assert (=> b!1044170 (= lt!460524 (getCurrentListMapNoExtraKeys!3538 lt!460367 lt!460371 (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460513 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460513 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460526 () (_ BitVec 64))

(assert (=> b!1044170 (= lt!460526 (select (arr!31653 lt!460367) #b00000000000000000000000000000000))))

(assert (=> b!1044170 (= lt!460529 (addApplyDifferent!485 lt!460524 lt!460513 (minValue!6229 thiss!1427) lt!460526))))

(assert (=> b!1044170 (= (apply!945 (+!3068 lt!460524 (tuple2!15855 lt!460513 (minValue!6229 thiss!1427))) lt!460526) (apply!945 lt!460524 lt!460526))))

(declare-fun b!1044171 () Bool)

(declare-fun e!591767 () Bool)

(assert (=> b!1044171 (= e!591776 e!591767)))

(declare-fun res!695584 () Bool)

(assert (=> b!1044171 (= res!695584 call!44333)))

(assert (=> b!1044171 (=> (not res!695584) (not e!591767))))

(declare-fun e!591771 () Bool)

(declare-fun b!1044172 () Bool)

(assert (=> b!1044172 (= e!591771 (= (apply!945 lt!460531 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)) (get!16558 (select (arr!31654 lt!460371) #b00000000000000000000000000000000) (dynLambda!2010 (defaultEntry!6395 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044172 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32190 lt!460371)))))

(assert (=> b!1044172 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 lt!460367)))))

(declare-fun b!1044173 () Bool)

(declare-fun e!591772 () Bool)

(assert (=> b!1044173 (= e!591772 e!591771)))

(declare-fun res!695578 () Bool)

(assert (=> b!1044173 (=> (not res!695578) (not e!591771))))

(assert (=> b!1044173 (= res!695578 (contains!6089 lt!460531 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(assert (=> b!1044173 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 lt!460367)))))

(declare-fun b!1044174 () Bool)

(assert (=> b!1044174 (= e!591777 (not call!44330))))

(declare-fun b!1044175 () Bool)

(assert (=> b!1044175 (= e!591778 (validKeyInArray!0 (select (arr!31653 lt!460367) #b00000000000000000000000000000000)))))

(declare-fun bm!44332 () Bool)

(declare-fun call!44331 () ListLongMap!13889)

(assert (=> bm!44332 (= call!44331 (+!3068 (ite c!106016 call!44335 (ite c!106015 call!44334 call!44336)) (ite (or c!106016 c!106015) (tuple2!15855 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6229 thiss!1427)) (tuple2!15855 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6229 thiss!1427)))))))

(declare-fun b!1044176 () Bool)

(assert (=> b!1044176 (= e!591767 (= (apply!945 lt!460531 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6229 thiss!1427)))))

(declare-fun bm!44333 () Bool)

(assert (=> bm!44333 (= call!44332 call!44331)))

(declare-fun b!1044177 () Bool)

(assert (=> b!1044177 (= e!591773 (+!3068 call!44331 (tuple2!15855 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6229 thiss!1427))))))

(declare-fun b!1044178 () Bool)

(declare-fun res!695576 () Bool)

(assert (=> b!1044178 (=> (not res!695576) (not e!591769))))

(assert (=> b!1044178 (= res!695576 e!591772)))

(declare-fun res!695579 () Bool)

(assert (=> b!1044178 (=> res!695579 e!591772)))

(assert (=> b!1044178 (= res!695579 (not e!591768))))

(declare-fun res!695580 () Bool)

(assert (=> b!1044178 (=> (not res!695580) (not e!591768))))

(assert (=> b!1044178 (= res!695580 (bvslt #b00000000000000000000000000000000 (size!32189 lt!460367)))))

(declare-fun b!1044179 () Bool)

(declare-fun res!695581 () Bool)

(assert (=> b!1044179 (=> (not res!695581) (not e!591769))))

(assert (=> b!1044179 (= res!695581 e!591777)))

(declare-fun c!106014 () Bool)

(assert (=> b!1044179 (= c!106014 (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!126315 c!106016) b!1044177))

(assert (= (and d!126315 (not c!106016)) b!1044160))

(assert (= (and b!1044160 c!106015) b!1044166))

(assert (= (and b!1044160 (not c!106015)) b!1044161))

(assert (= (and b!1044161 c!106017) b!1044165))

(assert (= (and b!1044161 (not c!106017)) b!1044163))

(assert (= (or b!1044165 b!1044163) bm!44331))

(assert (= (or b!1044166 bm!44331) bm!44328))

(assert (= (or b!1044166 b!1044165) bm!44333))

(assert (= (or b!1044177 bm!44328) bm!44327))

(assert (= (or b!1044177 bm!44333) bm!44332))

(assert (= (and d!126315 res!695582) b!1044175))

(assert (= (and d!126315 c!106019) b!1044170))

(assert (= (and d!126315 (not c!106019)) b!1044164))

(assert (= (and d!126315 res!695583) b!1044178))

(assert (= (and b!1044178 res!695580) b!1044169))

(assert (= (and b!1044178 (not res!695579)) b!1044173))

(assert (= (and b!1044173 res!695578) b!1044172))

(assert (= (and b!1044178 res!695576) b!1044179))

(assert (= (and b!1044179 c!106014) b!1044162))

(assert (= (and b!1044179 (not c!106014)) b!1044174))

(assert (= (and b!1044162 res!695577) b!1044159))

(assert (= (or b!1044162 b!1044174) bm!44329))

(assert (= (and b!1044179 res!695581) b!1044168))

(assert (= (and b!1044168 c!106018) b!1044171))

(assert (= (and b!1044168 (not c!106018)) b!1044167))

(assert (= (and b!1044171 res!695584) b!1044176))

(assert (= (or b!1044171 b!1044167) bm!44330))

(declare-fun b_lambda!16239 () Bool)

(assert (=> (not b_lambda!16239) (not b!1044172)))

(assert (=> b!1044172 t!31364))

(declare-fun b_and!33699 () Bool)

(assert (= b_and!33697 (and (=> t!31364 result!14535) b_and!33699)))

(assert (=> b!1044173 m!963551))

(assert (=> b!1044173 m!963551))

(declare-fun m!963659 () Bool)

(assert (=> b!1044173 m!963659))

(assert (=> b!1044175 m!963551))

(assert (=> b!1044175 m!963551))

(assert (=> b!1044175 m!963623))

(declare-fun m!963661 () Bool)

(assert (=> b!1044177 m!963661))

(declare-fun m!963663 () Bool)

(assert (=> b!1044159 m!963663))

(declare-fun m!963665 () Bool)

(assert (=> b!1044176 m!963665))

(declare-fun m!963667 () Bool)

(assert (=> bm!44327 m!963667))

(declare-fun m!963669 () Bool)

(assert (=> bm!44330 m!963669))

(assert (=> d!126315 m!963545))

(declare-fun m!963671 () Bool)

(assert (=> b!1044170 m!963671))

(declare-fun m!963673 () Bool)

(assert (=> b!1044170 m!963673))

(assert (=> b!1044170 m!963667))

(assert (=> b!1044170 m!963551))

(declare-fun m!963675 () Bool)

(assert (=> b!1044170 m!963675))

(declare-fun m!963677 () Bool)

(assert (=> b!1044170 m!963677))

(declare-fun m!963679 () Bool)

(assert (=> b!1044170 m!963679))

(declare-fun m!963681 () Bool)

(assert (=> b!1044170 m!963681))

(assert (=> b!1044170 m!963679))

(declare-fun m!963683 () Bool)

(assert (=> b!1044170 m!963683))

(declare-fun m!963685 () Bool)

(assert (=> b!1044170 m!963685))

(declare-fun m!963687 () Bool)

(assert (=> b!1044170 m!963687))

(assert (=> b!1044170 m!963683))

(declare-fun m!963689 () Bool)

(assert (=> b!1044170 m!963689))

(declare-fun m!963691 () Bool)

(assert (=> b!1044170 m!963691))

(declare-fun m!963693 () Bool)

(assert (=> b!1044170 m!963693))

(assert (=> b!1044170 m!963675))

(declare-fun m!963695 () Bool)

(assert (=> b!1044170 m!963695))

(assert (=> b!1044170 m!963685))

(declare-fun m!963697 () Bool)

(assert (=> b!1044170 m!963697))

(declare-fun m!963699 () Bool)

(assert (=> b!1044170 m!963699))

(assert (=> b!1044169 m!963551))

(assert (=> b!1044169 m!963551))

(assert (=> b!1044169 m!963623))

(declare-fun m!963701 () Bool)

(assert (=> b!1044172 m!963701))

(assert (=> b!1044172 m!963551))

(assert (=> b!1044172 m!963551))

(declare-fun m!963703 () Bool)

(assert (=> b!1044172 m!963703))

(assert (=> b!1044172 m!963475))

(assert (=> b!1044172 m!963701))

(assert (=> b!1044172 m!963475))

(declare-fun m!963705 () Bool)

(assert (=> b!1044172 m!963705))

(declare-fun m!963707 () Bool)

(assert (=> bm!44332 m!963707))

(declare-fun m!963709 () Bool)

(assert (=> bm!44329 m!963709))

(assert (=> b!1043975 d!126315))

(declare-fun bm!44334 () Bool)

(declare-fun call!44342 () ListLongMap!13889)

(assert (=> bm!44334 (= call!44342 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun bm!44335 () Bool)

(declare-fun call!44341 () ListLongMap!13889)

(assert (=> bm!44335 (= call!44341 call!44342)))

(declare-fun b!1044180 () Bool)

(declare-fun e!591783 () Bool)

(declare-fun lt!460553 () ListLongMap!13889)

(assert (=> b!1044180 (= e!591783 (= (apply!945 lt!460553 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6229 thiss!1427)))))

(declare-fun bm!44336 () Bool)

(declare-fun call!44337 () Bool)

(assert (=> bm!44336 (= call!44337 (contains!6089 lt!460553 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!126317 () Bool)

(declare-fun e!591782 () Bool)

(assert (=> d!126317 e!591782))

(declare-fun res!695592 () Bool)

(assert (=> d!126317 (=> (not res!695592) (not e!591782))))

(assert (=> d!126317 (= res!695592 (or (bvsge #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))))))))

(declare-fun lt!460547 () ListLongMap!13889)

(assert (=> d!126317 (= lt!460553 lt!460547)))

(declare-fun lt!460538 () Unit!34086)

(declare-fun e!591788 () Unit!34086)

(assert (=> d!126317 (= lt!460538 e!591788)))

(declare-fun c!106025 () Bool)

(declare-fun e!591791 () Bool)

(assert (=> d!126317 (= c!106025 e!591791)))

(declare-fun res!695591 () Bool)

(assert (=> d!126317 (=> (not res!695591) (not e!591791))))

(assert (=> d!126317 (= res!695591 (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun e!591786 () ListLongMap!13889)

(assert (=> d!126317 (= lt!460547 e!591786)))

(declare-fun c!106022 () Bool)

(assert (=> d!126317 (= c!106022 (and (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126317 (validMask!0 (mask!30491 thiss!1427))))

(assert (=> d!126317 (= (getCurrentListMap!3966 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)) lt!460553)))

(declare-fun b!1044181 () Bool)

(declare-fun e!591787 () ListLongMap!13889)

(assert (=> b!1044181 (= e!591786 e!591787)))

(declare-fun c!106021 () Bool)

(assert (=> b!1044181 (= c!106021 (and (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044182 () Bool)

(declare-fun c!106023 () Bool)

(assert (=> b!1044182 (= c!106023 (and (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!591792 () ListLongMap!13889)

(assert (=> b!1044182 (= e!591787 e!591792)))

(declare-fun b!1044183 () Bool)

(declare-fun e!591790 () Bool)

(assert (=> b!1044183 (= e!591790 e!591783)))

(declare-fun res!695586 () Bool)

(assert (=> b!1044183 (= res!695586 call!44337)))

(assert (=> b!1044183 (=> (not res!695586) (not e!591783))))

(declare-fun b!1044184 () Bool)

(declare-fun call!44343 () ListLongMap!13889)

(assert (=> b!1044184 (= e!591792 call!44343)))

(declare-fun b!1044185 () Bool)

(declare-fun Unit!34092 () Unit!34086)

(assert (=> b!1044185 (= e!591788 Unit!34092)))

(declare-fun bm!44337 () Bool)

(declare-fun call!44340 () Bool)

(assert (=> bm!44337 (= call!44340 (contains!6089 lt!460553 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1044186 () Bool)

(declare-fun call!44339 () ListLongMap!13889)

(assert (=> b!1044186 (= e!591792 call!44339)))

(declare-fun b!1044187 () Bool)

(assert (=> b!1044187 (= e!591787 call!44339)))

(declare-fun bm!44338 () Bool)

(assert (=> bm!44338 (= call!44343 call!44341)))

(declare-fun b!1044188 () Bool)

(declare-fun e!591789 () Bool)

(assert (=> b!1044188 (= e!591789 (not call!44340))))

(declare-fun b!1044189 () Bool)

(assert (=> b!1044189 (= e!591782 e!591789)))

(declare-fun c!106024 () Bool)

(assert (=> b!1044189 (= c!106024 (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1044190 () Bool)

(declare-fun e!591781 () Bool)

(assert (=> b!1044190 (= e!591781 (validKeyInArray!0 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1044191 () Bool)

(declare-fun lt!460551 () Unit!34086)

(assert (=> b!1044191 (= e!591788 lt!460551)))

(declare-fun lt!460532 () ListLongMap!13889)

(assert (=> b!1044191 (= lt!460532 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460536 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460536 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460552 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460552 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460542 () Unit!34086)

(assert (=> b!1044191 (= lt!460542 (addStillContains!633 lt!460532 lt!460536 (zeroValue!6229 thiss!1427) lt!460552))))

(assert (=> b!1044191 (contains!6089 (+!3068 lt!460532 (tuple2!15855 lt!460536 (zeroValue!6229 thiss!1427))) lt!460552)))

(declare-fun lt!460543 () Unit!34086)

(assert (=> b!1044191 (= lt!460543 lt!460542)))

(declare-fun lt!460534 () ListLongMap!13889)

(assert (=> b!1044191 (= lt!460534 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460533 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460533 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460537 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460537 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460549 () Unit!34086)

(assert (=> b!1044191 (= lt!460549 (addApplyDifferent!485 lt!460534 lt!460533 (minValue!6229 thiss!1427) lt!460537))))

(assert (=> b!1044191 (= (apply!945 (+!3068 lt!460534 (tuple2!15855 lt!460533 (minValue!6229 thiss!1427))) lt!460537) (apply!945 lt!460534 lt!460537))))

(declare-fun lt!460544 () Unit!34086)

(assert (=> b!1044191 (= lt!460544 lt!460549)))

(declare-fun lt!460550 () ListLongMap!13889)

(assert (=> b!1044191 (= lt!460550 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460545 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460545 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460541 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460541 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!460539 () Unit!34086)

(assert (=> b!1044191 (= lt!460539 (addApplyDifferent!485 lt!460550 lt!460545 (zeroValue!6229 thiss!1427) lt!460541))))

(assert (=> b!1044191 (= (apply!945 (+!3068 lt!460550 (tuple2!15855 lt!460545 (zeroValue!6229 thiss!1427))) lt!460541) (apply!945 lt!460550 lt!460541))))

(declare-fun lt!460540 () Unit!34086)

(assert (=> b!1044191 (= lt!460540 lt!460539)))

(declare-fun lt!460546 () ListLongMap!13889)

(assert (=> b!1044191 (= lt!460546 (getCurrentListMapNoExtraKeys!3538 (_keys!11654 thiss!1427) (_values!6418 thiss!1427) (mask!30491 thiss!1427) (extraKeys!6123 thiss!1427) (zeroValue!6229 thiss!1427) (minValue!6229 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6395 thiss!1427)))))

(declare-fun lt!460535 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460535 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!460548 () (_ BitVec 64))

(assert (=> b!1044191 (= lt!460548 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1044191 (= lt!460551 (addApplyDifferent!485 lt!460546 lt!460535 (minValue!6229 thiss!1427) lt!460548))))

(assert (=> b!1044191 (= (apply!945 (+!3068 lt!460546 (tuple2!15855 lt!460535 (minValue!6229 thiss!1427))) lt!460548) (apply!945 lt!460546 lt!460548))))

(declare-fun b!1044192 () Bool)

(declare-fun e!591780 () Bool)

(assert (=> b!1044192 (= e!591789 e!591780)))

(declare-fun res!695593 () Bool)

(assert (=> b!1044192 (= res!695593 call!44340)))

(assert (=> b!1044192 (=> (not res!695593) (not e!591780))))

(declare-fun b!1044193 () Bool)

(declare-fun e!591784 () Bool)

(assert (=> b!1044193 (= e!591784 (= (apply!945 lt!460553 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000)) (get!16558 (select (arr!31654 (_values!6418 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2010 (defaultEntry!6395 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1044193 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32190 (_values!6418 thiss!1427))))))

(assert (=> b!1044193 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun b!1044194 () Bool)

(declare-fun e!591785 () Bool)

(assert (=> b!1044194 (= e!591785 e!591784)))

(declare-fun res!695587 () Bool)

(assert (=> b!1044194 (=> (not res!695587) (not e!591784))))

(assert (=> b!1044194 (= res!695587 (contains!6089 lt!460553 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1044194 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun b!1044195 () Bool)

(assert (=> b!1044195 (= e!591790 (not call!44337))))

(declare-fun b!1044196 () Bool)

(assert (=> b!1044196 (= e!591791 (validKeyInArray!0 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44339 () Bool)

(declare-fun call!44338 () ListLongMap!13889)

(assert (=> bm!44339 (= call!44338 (+!3068 (ite c!106022 call!44342 (ite c!106021 call!44341 call!44343)) (ite (or c!106022 c!106021) (tuple2!15855 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6229 thiss!1427)) (tuple2!15855 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6229 thiss!1427)))))))

(declare-fun b!1044197 () Bool)

(assert (=> b!1044197 (= e!591780 (= (apply!945 lt!460553 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6229 thiss!1427)))))

(declare-fun bm!44340 () Bool)

(assert (=> bm!44340 (= call!44339 call!44338)))

(declare-fun b!1044198 () Bool)

(assert (=> b!1044198 (= e!591786 (+!3068 call!44338 (tuple2!15855 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6229 thiss!1427))))))

(declare-fun b!1044199 () Bool)

(declare-fun res!695585 () Bool)

(assert (=> b!1044199 (=> (not res!695585) (not e!591782))))

(assert (=> b!1044199 (= res!695585 e!591785)))

(declare-fun res!695588 () Bool)

(assert (=> b!1044199 (=> res!695588 e!591785)))

(assert (=> b!1044199 (= res!695588 (not e!591781))))

(declare-fun res!695589 () Bool)

(assert (=> b!1044199 (=> (not res!695589) (not e!591781))))

(assert (=> b!1044199 (= res!695589 (bvslt #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun b!1044200 () Bool)

(declare-fun res!695590 () Bool)

(assert (=> b!1044200 (=> (not res!695590) (not e!591782))))

(assert (=> b!1044200 (= res!695590 e!591790)))

(declare-fun c!106020 () Bool)

(assert (=> b!1044200 (= c!106020 (not (= (bvand (extraKeys!6123 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!126317 c!106022) b!1044198))

(assert (= (and d!126317 (not c!106022)) b!1044181))

(assert (= (and b!1044181 c!106021) b!1044187))

(assert (= (and b!1044181 (not c!106021)) b!1044182))

(assert (= (and b!1044182 c!106023) b!1044186))

(assert (= (and b!1044182 (not c!106023)) b!1044184))

(assert (= (or b!1044186 b!1044184) bm!44338))

(assert (= (or b!1044187 bm!44338) bm!44335))

(assert (= (or b!1044187 b!1044186) bm!44340))

(assert (= (or b!1044198 bm!44335) bm!44334))

(assert (= (or b!1044198 bm!44340) bm!44339))

(assert (= (and d!126317 res!695591) b!1044196))

(assert (= (and d!126317 c!106025) b!1044191))

(assert (= (and d!126317 (not c!106025)) b!1044185))

(assert (= (and d!126317 res!695592) b!1044199))

(assert (= (and b!1044199 res!695589) b!1044190))

(assert (= (and b!1044199 (not res!695588)) b!1044194))

(assert (= (and b!1044194 res!695587) b!1044193))

(assert (= (and b!1044199 res!695585) b!1044200))

(assert (= (and b!1044200 c!106020) b!1044183))

(assert (= (and b!1044200 (not c!106020)) b!1044195))

(assert (= (and b!1044183 res!695586) b!1044180))

(assert (= (or b!1044183 b!1044195) bm!44336))

(assert (= (and b!1044200 res!695590) b!1044189))

(assert (= (and b!1044189 c!106024) b!1044192))

(assert (= (and b!1044189 (not c!106024)) b!1044188))

(assert (= (and b!1044192 res!695593) b!1044197))

(assert (= (or b!1044192 b!1044188) bm!44337))

(declare-fun b_lambda!16241 () Bool)

(assert (=> (not b_lambda!16241) (not b!1044193)))

(assert (=> b!1044193 t!31364))

(declare-fun b_and!33701 () Bool)

(assert (= b_and!33699 (and (=> t!31364 result!14535) b_and!33701)))

(declare-fun m!963711 () Bool)

(assert (=> b!1044194 m!963711))

(assert (=> b!1044194 m!963711))

(declare-fun m!963713 () Bool)

(assert (=> b!1044194 m!963713))

(assert (=> b!1044196 m!963711))

(assert (=> b!1044196 m!963711))

(declare-fun m!963715 () Bool)

(assert (=> b!1044196 m!963715))

(declare-fun m!963717 () Bool)

(assert (=> b!1044198 m!963717))

(declare-fun m!963719 () Bool)

(assert (=> b!1044180 m!963719))

(declare-fun m!963721 () Bool)

(assert (=> b!1044197 m!963721))

(declare-fun m!963723 () Bool)

(assert (=> bm!44334 m!963723))

(declare-fun m!963725 () Bool)

(assert (=> bm!44337 m!963725))

(assert (=> d!126317 m!963545))

(declare-fun m!963727 () Bool)

(assert (=> b!1044191 m!963727))

(declare-fun m!963729 () Bool)

(assert (=> b!1044191 m!963729))

(assert (=> b!1044191 m!963723))

(assert (=> b!1044191 m!963711))

(declare-fun m!963731 () Bool)

(assert (=> b!1044191 m!963731))

(declare-fun m!963733 () Bool)

(assert (=> b!1044191 m!963733))

(declare-fun m!963735 () Bool)

(assert (=> b!1044191 m!963735))

(declare-fun m!963737 () Bool)

(assert (=> b!1044191 m!963737))

(assert (=> b!1044191 m!963735))

(declare-fun m!963739 () Bool)

(assert (=> b!1044191 m!963739))

(declare-fun m!963741 () Bool)

(assert (=> b!1044191 m!963741))

(declare-fun m!963743 () Bool)

(assert (=> b!1044191 m!963743))

(assert (=> b!1044191 m!963739))

(declare-fun m!963745 () Bool)

(assert (=> b!1044191 m!963745))

(declare-fun m!963747 () Bool)

(assert (=> b!1044191 m!963747))

(declare-fun m!963749 () Bool)

(assert (=> b!1044191 m!963749))

(assert (=> b!1044191 m!963731))

(declare-fun m!963751 () Bool)

(assert (=> b!1044191 m!963751))

(assert (=> b!1044191 m!963741))

(declare-fun m!963753 () Bool)

(assert (=> b!1044191 m!963753))

(declare-fun m!963755 () Bool)

(assert (=> b!1044191 m!963755))

(assert (=> b!1044190 m!963711))

(assert (=> b!1044190 m!963711))

(assert (=> b!1044190 m!963715))

(declare-fun m!963757 () Bool)

(assert (=> b!1044193 m!963757))

(assert (=> b!1044193 m!963711))

(assert (=> b!1044193 m!963711))

(declare-fun m!963759 () Bool)

(assert (=> b!1044193 m!963759))

(assert (=> b!1044193 m!963475))

(assert (=> b!1044193 m!963757))

(assert (=> b!1044193 m!963475))

(declare-fun m!963761 () Bool)

(assert (=> b!1044193 m!963761))

(declare-fun m!963763 () Bool)

(assert (=> bm!44339 m!963763))

(declare-fun m!963765 () Bool)

(assert (=> bm!44336 m!963765))

(assert (=> b!1043975 d!126317))

(declare-fun d!126319 () Bool)

(declare-fun e!591798 () Bool)

(assert (=> d!126319 e!591798))

(declare-fun res!695596 () Bool)

(assert (=> d!126319 (=> res!695596 e!591798)))

(declare-fun lt!460563 () Bool)

(assert (=> d!126319 (= res!695596 (not lt!460563))))

(declare-fun lt!460562 () Bool)

(assert (=> d!126319 (= lt!460563 lt!460562)))

(declare-fun lt!460564 () Unit!34086)

(declare-fun e!591797 () Unit!34086)

(assert (=> d!126319 (= lt!460564 e!591797)))

(declare-fun c!106028 () Bool)

(assert (=> d!126319 (= c!106028 lt!460562)))

(declare-fun containsKey!566 (List!22128 (_ BitVec 64)) Bool)

(assert (=> d!126319 (= lt!460562 (containsKey!566 (toList!6960 (getCurrentListMap!3966 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369)))) key!909))))

(assert (=> d!126319 (= (contains!6089 (getCurrentListMap!3966 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369))) key!909) lt!460563)))

(declare-fun b!1044207 () Bool)

(declare-fun lt!460565 () Unit!34086)

(assert (=> b!1044207 (= e!591797 lt!460565)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!398 (List!22128 (_ BitVec 64)) Unit!34086)

(assert (=> b!1044207 (= lt!460565 (lemmaContainsKeyImpliesGetValueByKeyDefined!398 (toList!6960 (getCurrentListMap!3966 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369)))) key!909))))

(declare-datatypes ((Option!644 0))(
  ( (Some!643 (v!15060 V!37981)) (None!642) )
))
(declare-fun isDefined!438 (Option!644) Bool)

(declare-fun getValueByKey!593 (List!22128 (_ BitVec 64)) Option!644)

(assert (=> b!1044207 (isDefined!438 (getValueByKey!593 (toList!6960 (getCurrentListMap!3966 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369)))) key!909))))

(declare-fun b!1044208 () Bool)

(declare-fun Unit!34093 () Unit!34086)

(assert (=> b!1044208 (= e!591797 Unit!34093)))

(declare-fun b!1044209 () Bool)

(assert (=> b!1044209 (= e!591798 (isDefined!438 (getValueByKey!593 (toList!6960 (getCurrentListMap!3966 (_keys!11654 (_2!7936 lt!460369)) (_values!6418 (_2!7936 lt!460369)) (mask!30491 (_2!7936 lt!460369)) (extraKeys!6123 (_2!7936 lt!460369)) (zeroValue!6229 (_2!7936 lt!460369)) (minValue!6229 (_2!7936 lt!460369)) #b00000000000000000000000000000000 (defaultEntry!6395 (_2!7936 lt!460369)))) key!909)))))

(assert (= (and d!126319 c!106028) b!1044207))

(assert (= (and d!126319 (not c!106028)) b!1044208))

(assert (= (and d!126319 (not res!695596)) b!1044209))

(declare-fun m!963767 () Bool)

(assert (=> d!126319 m!963767))

(declare-fun m!963769 () Bool)

(assert (=> b!1044207 m!963769))

(declare-fun m!963771 () Bool)

(assert (=> b!1044207 m!963771))

(assert (=> b!1044207 m!963771))

(declare-fun m!963773 () Bool)

(assert (=> b!1044207 m!963773))

(assert (=> b!1044209 m!963771))

(assert (=> b!1044209 m!963771))

(assert (=> b!1044209 m!963773))

(assert (=> b!1043975 d!126319))

(declare-fun b!1044210 () Bool)

(declare-fun e!591800 () (_ BitVec 32))

(declare-fun call!44344 () (_ BitVec 32))

(assert (=> b!1044210 (= e!591800 call!44344)))

(declare-fun b!1044211 () Bool)

(declare-fun e!591799 () (_ BitVec 32))

(assert (=> b!1044211 (= e!591799 e!591800)))

(declare-fun c!106030 () Bool)

(assert (=> b!1044211 (= c!106030 (validKeyInArray!0 (select (arr!31653 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1044212 () Bool)

(assert (=> b!1044212 (= e!591800 (bvadd #b00000000000000000000000000000001 call!44344))))

(declare-fun d!126321 () Bool)

(declare-fun lt!460566 () (_ BitVec 32))

(assert (=> d!126321 (and (bvsge lt!460566 #b00000000000000000000000000000000) (bvsle lt!460566 (bvsub (size!32189 (_keys!11654 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126321 (= lt!460566 e!591799)))

(declare-fun c!106029 () Bool)

(assert (=> d!126321 (= c!106029 (bvsge #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))))))

(assert (=> d!126321 (and (bvsle #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32189 (_keys!11654 thiss!1427)) (size!32189 (_keys!11654 thiss!1427))))))

(assert (=> d!126321 (= (arrayCountValidKeys!0 (_keys!11654 thiss!1427) #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) lt!460566)))

(declare-fun bm!44341 () Bool)

(assert (=> bm!44341 (= call!44344 (arrayCountValidKeys!0 (_keys!11654 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32189 (_keys!11654 thiss!1427))))))

(declare-fun b!1044213 () Bool)

(assert (=> b!1044213 (= e!591799 #b00000000000000000000000000000000)))

(assert (= (and d!126321 c!106029) b!1044213))

(assert (= (and d!126321 (not c!106029)) b!1044211))

(assert (= (and b!1044211 c!106030) b!1044212))

(assert (= (and b!1044211 (not c!106030)) b!1044210))

(assert (= (or b!1044212 b!1044210) bm!44341))

(assert (=> b!1044211 m!963711))

(assert (=> b!1044211 m!963711))

(assert (=> b!1044211 m!963715))

(declare-fun m!963775 () Bool)

(assert (=> bm!44341 m!963775))

(assert (=> b!1043975 d!126321))

(declare-fun d!126323 () Bool)

(declare-fun res!695603 () Bool)

(declare-fun e!591803 () Bool)

(assert (=> d!126323 (=> (not res!695603) (not e!591803))))

(declare-fun simpleValid!447 (LongMapFixedSize!6018) Bool)

(assert (=> d!126323 (= res!695603 (simpleValid!447 thiss!1427))))

(assert (=> d!126323 (= (valid!2213 thiss!1427) e!591803)))

(declare-fun b!1044220 () Bool)

(declare-fun res!695604 () Bool)

(assert (=> b!1044220 (=> (not res!695604) (not e!591803))))

(assert (=> b!1044220 (= res!695604 (= (arrayCountValidKeys!0 (_keys!11654 thiss!1427) #b00000000000000000000000000000000 (size!32189 (_keys!11654 thiss!1427))) (_size!3064 thiss!1427)))))

(declare-fun b!1044221 () Bool)

(declare-fun res!695605 () Bool)

(assert (=> b!1044221 (=> (not res!695605) (not e!591803))))

(assert (=> b!1044221 (= res!695605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11654 thiss!1427) (mask!30491 thiss!1427)))))

(declare-fun b!1044222 () Bool)

(assert (=> b!1044222 (= e!591803 (arrayNoDuplicates!0 (_keys!11654 thiss!1427) #b00000000000000000000000000000000 Nil!22126))))

(assert (= (and d!126323 res!695603) b!1044220))

(assert (= (and b!1044220 res!695604) b!1044221))

(assert (= (and b!1044221 res!695605) b!1044222))

(declare-fun m!963777 () Bool)

(assert (=> d!126323 m!963777))

(assert (=> b!1044220 m!963457))

(declare-fun m!963779 () Bool)

(assert (=> b!1044221 m!963779))

(declare-fun m!963781 () Bool)

(assert (=> b!1044222 m!963781))

(assert (=> start!91770 d!126323))

(declare-fun d!126325 () Bool)

(assert (=> d!126325 (= (validMask!0 (mask!30491 (_2!7936 lt!460369))) (and (or (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000000000000111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000000000001111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000000000011111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000000000111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000000001111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000000011111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000000111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000001111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000011111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000000111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000001111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000011111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000000111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000001111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000011111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000000111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000001111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000011111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000000111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000001111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000011111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000000111111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000001111111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000011111111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00000111111111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00001111111111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00011111111111111111111111111111) (= (mask!30491 (_2!7936 lt!460369)) #b00111111111111111111111111111111)) (bvsle (mask!30491 (_2!7936 lt!460369)) #b00111111111111111111111111111111)))))

(assert (=> b!1043976 d!126325))

(declare-fun b!1044229 () Bool)

(declare-fun e!591808 () Bool)

(assert (=> b!1044229 (= e!591808 tp_is_empty!24831)))

(declare-fun b!1044230 () Bool)

(declare-fun e!591809 () Bool)

(assert (=> b!1044230 (= e!591809 tp_is_empty!24831)))

(declare-fun mapIsEmpty!38879 () Bool)

(declare-fun mapRes!38879 () Bool)

(assert (=> mapIsEmpty!38879 mapRes!38879))

(declare-fun mapNonEmpty!38879 () Bool)

(declare-fun tp!74587 () Bool)

(assert (=> mapNonEmpty!38879 (= mapRes!38879 (and tp!74587 e!591808))))

(declare-fun mapRest!38879 () (Array (_ BitVec 32) ValueCell!11712))

(declare-fun mapKey!38879 () (_ BitVec 32))

(declare-fun mapValue!38879 () ValueCell!11712)

(assert (=> mapNonEmpty!38879 (= mapRest!38873 (store mapRest!38879 mapKey!38879 mapValue!38879))))

(declare-fun condMapEmpty!38879 () Bool)

(declare-fun mapDefault!38879 () ValueCell!11712)

(assert (=> mapNonEmpty!38873 (= condMapEmpty!38879 (= mapRest!38873 ((as const (Array (_ BitVec 32) ValueCell!11712)) mapDefault!38879)))))

(assert (=> mapNonEmpty!38873 (= tp!74578 (and e!591809 mapRes!38879))))

(assert (= (and mapNonEmpty!38873 condMapEmpty!38879) mapIsEmpty!38879))

(assert (= (and mapNonEmpty!38873 (not condMapEmpty!38879)) mapNonEmpty!38879))

(assert (= (and mapNonEmpty!38879 ((_ is ValueCellFull!11712) mapValue!38879)) b!1044229))

(assert (= (and mapNonEmpty!38873 ((_ is ValueCellFull!11712) mapDefault!38879)) b!1044230))

(declare-fun m!963783 () Bool)

(assert (=> mapNonEmpty!38879 m!963783))

(declare-fun b_lambda!16243 () Bool)

(assert (= b_lambda!16237 (or (and b!1043978 b_free!21111) b_lambda!16243)))

(declare-fun b_lambda!16245 () Bool)

(assert (= b_lambda!16239 (or (and b!1043978 b_free!21111) b_lambda!16245)))

(declare-fun b_lambda!16247 () Bool)

(assert (= b_lambda!16241 (or (and b!1043978 b_free!21111) b_lambda!16247)))

(check-sat (not b_lambda!16243) (not b!1044197) (not bm!44334) (not d!126315) (not d!126297) (not b!1044085) (not b!1044198) (not b!1044177) (not bm!44313) b_and!33701 (not b!1044109) (not b!1044026) (not b!1044092) (not b!1044086) (not b_next!21111) (not b!1044149) (not bm!44327) (not b!1044170) (not b!1044093) (not d!126323) (not b!1044211) (not b!1044207) (not b!1044193) (not d!126311) (not b!1044155) (not b!1044147) tp_is_empty!24831 (not b!1044088) (not bm!44316) (not d!126287) (not b_lambda!16233) (not b_lambda!16245) (not b!1044158) (not d!126317) (not bm!44320) (not d!126307) (not b!1044089) (not b!1044176) (not bm!44330) (not b!1044222) (not b!1044133) (not b!1044194) (not b!1044196) (not b!1044180) (not b!1044152) (not b!1044091) (not bm!44329) (not d!126313) (not b!1044134) (not b_lambda!16247) (not bm!44311) (not d!126319) (not b!1044169) (not d!126309) (not b!1044136) (not b!1044173) (not b_lambda!16235) (not b!1044191) (not bm!44336) (not b!1044120) (not b!1044159) (not b!1044146) (not mapNonEmpty!38879) (not bm!44339) (not b!1044032) (not bm!44323) (not b!1044107) (not bm!44332) (not b!1044220) (not d!126295) (not b!1044221) (not b!1044098) (not bm!44314) (not bm!44337) (not b!1044172) (not d!126299) (not b!1044190) (not b!1044209) (not bm!44341) (not b!1044175) (not bm!44326) (not b!1044075))
(check-sat b_and!33701 (not b_next!21111))
