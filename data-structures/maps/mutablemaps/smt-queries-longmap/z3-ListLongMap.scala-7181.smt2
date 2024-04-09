; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!91970 () Bool)

(assert start!91970)

(declare-fun b!1045520 () Bool)

(declare-fun b_free!21141 () Bool)

(declare-fun b_next!21141 () Bool)

(assert (=> b!1045520 (= b_free!21141 (not b_next!21141))))

(declare-fun tp!74682 () Bool)

(declare-fun b_and!33787 () Bool)

(assert (=> b!1045520 (= tp!74682 b_and!33787)))

(declare-fun mapIsEmpty!38933 () Bool)

(declare-fun mapRes!38933 () Bool)

(assert (=> mapIsEmpty!38933 mapRes!38933))

(declare-fun b!1045514 () Bool)

(declare-fun res!696223 () Bool)

(declare-fun e!592707 () Bool)

(assert (=> b!1045514 (=> (not res!696223) (not e!592707))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1045514 (= res!696223 (not (= key!909 (bvneg key!909))))))

(declare-fun res!696221 () Bool)

(assert (=> start!91970 (=> (not res!696221) (not e!592707))))

(declare-datatypes ((V!38021 0))(
  ( (V!38022 (val!12481 Int)) )
))
(declare-datatypes ((ValueCell!11727 0))(
  ( (ValueCellFull!11727 (v!15078 V!38021)) (EmptyCell!11727) )
))
(declare-datatypes ((array!65882 0))(
  ( (array!65883 (arr!31683 (Array (_ BitVec 32) (_ BitVec 64))) (size!32219 (_ BitVec 32))) )
))
(declare-datatypes ((array!65884 0))(
  ( (array!65885 (arr!31684 (Array (_ BitVec 32) ValueCell!11727)) (size!32220 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6048 0))(
  ( (LongMapFixedSize!6049 (defaultEntry!6420 Int) (mask!30546 (_ BitVec 32)) (extraKeys!6148 (_ BitVec 32)) (zeroValue!6254 V!38021) (minValue!6254 V!38021) (_size!3079 (_ BitVec 32)) (_keys!11689 array!65882) (_values!6443 array!65884) (_vacant!3079 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6048)

(declare-fun valid!2223 (LongMapFixedSize!6048) Bool)

(assert (=> start!91970 (= res!696221 (valid!2223 thiss!1427))))

(assert (=> start!91970 e!592707))

(declare-fun e!592708 () Bool)

(assert (=> start!91970 e!592708))

(assert (=> start!91970 true))

(declare-fun b!1045515 () Bool)

(declare-fun e!592706 () Bool)

(declare-datatypes ((Unit!34146 0))(
  ( (Unit!34147) )
))
(declare-datatypes ((tuple2!15892 0))(
  ( (tuple2!15893 (_1!7956 Unit!34146) (_2!7956 LongMapFixedSize!6048)) )
))
(declare-fun lt!461599 () tuple2!15892)

(assert (=> b!1045515 (= e!592706 (or (not (= (size!32220 (_values!6443 (_2!7956 lt!461599))) (bvadd #b00000000000000000000000000000001 (mask!30546 (_2!7956 lt!461599))))) (not (= (size!32219 (_keys!11689 (_2!7956 lt!461599))) (size!32220 (_values!6443 (_2!7956 lt!461599))))) (bvslt (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000000000000) (bvslt (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000000) (bvsle (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000011)))))

(declare-fun b!1045516 () Bool)

(declare-fun e!592709 () Bool)

(assert (=> b!1045516 (= e!592707 e!592709)))

(declare-fun res!696220 () Bool)

(assert (=> b!1045516 (=> (not res!696220) (not e!592709))))

(declare-datatypes ((SeekEntryResult!9847 0))(
  ( (MissingZero!9847 (index!41758 (_ BitVec 32))) (Found!9847 (index!41759 (_ BitVec 32))) (Intermediate!9847 (undefined!10659 Bool) (index!41760 (_ BitVec 32)) (x!93386 (_ BitVec 32))) (Undefined!9847) (MissingVacant!9847 (index!41761 (_ BitVec 32))) )
))
(declare-fun lt!461600 () SeekEntryResult!9847)

(get-info :version)

(assert (=> b!1045516 (= res!696220 ((_ is Found!9847) lt!461600))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65882 (_ BitVec 32)) SeekEntryResult!9847)

(assert (=> b!1045516 (= lt!461600 (seekEntry!0 key!909 (_keys!11689 thiss!1427) (mask!30546 thiss!1427)))))

(declare-fun b!1045517 () Bool)

(declare-fun e!592710 () Bool)

(declare-fun tp_is_empty!24861 () Bool)

(assert (=> b!1045517 (= e!592710 tp_is_empty!24861)))

(declare-fun b!1045518 () Bool)

(declare-fun res!696222 () Bool)

(assert (=> b!1045518 (=> res!696222 e!592706)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045518 (= res!696222 (not (validMask!0 (mask!30546 (_2!7956 lt!461599)))))))

(declare-fun mapNonEmpty!38933 () Bool)

(declare-fun tp!74683 () Bool)

(declare-fun e!592713 () Bool)

(assert (=> mapNonEmpty!38933 (= mapRes!38933 (and tp!74683 e!592713))))

(declare-fun mapValue!38933 () ValueCell!11727)

(declare-fun mapKey!38933 () (_ BitVec 32))

(declare-fun mapRest!38933 () (Array (_ BitVec 32) ValueCell!11727))

(assert (=> mapNonEmpty!38933 (= (arr!31684 (_values!6443 thiss!1427)) (store mapRest!38933 mapKey!38933 mapValue!38933))))

(declare-fun b!1045519 () Bool)

(assert (=> b!1045519 (= e!592713 tp_is_empty!24861)))

(declare-fun e!592712 () Bool)

(declare-fun array_inv!24319 (array!65882) Bool)

(declare-fun array_inv!24320 (array!65884) Bool)

(assert (=> b!1045520 (= e!592708 (and tp!74682 tp_is_empty!24861 (array_inv!24319 (_keys!11689 thiss!1427)) (array_inv!24320 (_values!6443 thiss!1427)) e!592712))))

(declare-fun b!1045521 () Bool)

(assert (=> b!1045521 (= e!592712 (and e!592710 mapRes!38933))))

(declare-fun condMapEmpty!38933 () Bool)

(declare-fun mapDefault!38933 () ValueCell!11727)

(assert (=> b!1045521 (= condMapEmpty!38933 (= (arr!31684 (_values!6443 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11727)) mapDefault!38933)))))

(declare-fun b!1045522 () Bool)

(assert (=> b!1045522 (= e!592709 (not e!592706))))

(declare-fun res!696219 () Bool)

(assert (=> b!1045522 (=> res!696219 e!592706)))

(declare-datatypes ((tuple2!15894 0))(
  ( (tuple2!15895 (_1!7957 (_ BitVec 64)) (_2!7957 V!38021)) )
))
(declare-datatypes ((List!22144 0))(
  ( (Nil!22141) (Cons!22140 (h!23348 tuple2!15894) (t!31421 List!22144)) )
))
(declare-datatypes ((ListLongMap!13905 0))(
  ( (ListLongMap!13906 (toList!6968 List!22144)) )
))
(declare-fun contains!6102 (ListLongMap!13905 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3974 (array!65882 array!65884 (_ BitVec 32) (_ BitVec 32) V!38021 V!38021 (_ BitVec 32) Int) ListLongMap!13905)

(assert (=> b!1045522 (= res!696219 (not (contains!6102 (getCurrentListMap!3974 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))) key!909)))))

(declare-fun lt!461596 () array!65882)

(declare-fun lt!461601 () array!65884)

(declare-fun Unit!34148 () Unit!34146)

(declare-fun Unit!34149 () Unit!34146)

(assert (=> b!1045522 (= lt!461599 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3079 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15893 Unit!34148 (LongMapFixedSize!6049 (defaultEntry!6420 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) (bvsub (_size!3079 thiss!1427) #b00000000000000000000000000000001) lt!461596 lt!461601 (bvadd #b00000000000000000000000000000001 (_vacant!3079 thiss!1427)))) (tuple2!15893 Unit!34149 (LongMapFixedSize!6049 (defaultEntry!6420 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) (bvsub (_size!3079 thiss!1427) #b00000000000000000000000000000001) lt!461596 lt!461601 (_vacant!3079 thiss!1427)))))))

(declare-fun -!544 (ListLongMap!13905 (_ BitVec 64)) ListLongMap!13905)

(assert (=> b!1045522 (= (-!544 (getCurrentListMap!3974 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)) key!909) (getCurrentListMap!3974 lt!461596 lt!461601 (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun dynLambda!2018 (Int (_ BitVec 64)) V!38021)

(assert (=> b!1045522 (= lt!461601 (array!65885 (store (arr!31684 (_values!6443 thiss!1427)) (index!41759 lt!461600) (ValueCellFull!11727 (dynLambda!2018 (defaultEntry!6420 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32220 (_values!6443 thiss!1427))))))

(declare-fun lt!461597 () Unit!34146)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!64 (array!65882 array!65884 (_ BitVec 32) (_ BitVec 32) V!38021 V!38021 (_ BitVec 32) (_ BitVec 64) Int) Unit!34146)

(assert (=> b!1045522 (= lt!461597 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!64 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) (index!41759 lt!461600) key!909 (defaultEntry!6420 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1045522 (not (arrayContainsKey!0 lt!461596 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461603 () Unit!34146)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65882 (_ BitVec 32) (_ BitVec 64)) Unit!34146)

(assert (=> b!1045522 (= lt!461603 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11689 thiss!1427) (index!41759 lt!461600) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65882 (_ BitVec 32)) Bool)

(assert (=> b!1045522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461596 (mask!30546 thiss!1427))))

(declare-fun lt!461602 () Unit!34146)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65882 (_ BitVec 32) (_ BitVec 32)) Unit!34146)

(assert (=> b!1045522 (= lt!461602 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11689 thiss!1427) (index!41759 lt!461600) (mask!30546 thiss!1427)))))

(declare-datatypes ((List!22145 0))(
  ( (Nil!22142) (Cons!22141 (h!23349 (_ BitVec 64)) (t!31422 List!22145)) )
))
(declare-fun arrayNoDuplicates!0 (array!65882 (_ BitVec 32) List!22145) Bool)

(assert (=> b!1045522 (arrayNoDuplicates!0 lt!461596 #b00000000000000000000000000000000 Nil!22142)))

(declare-fun lt!461598 () Unit!34146)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65882 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22145) Unit!34146)

(assert (=> b!1045522 (= lt!461598 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11689 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41759 lt!461600) #b00000000000000000000000000000000 Nil!22142))))

(declare-fun arrayCountValidKeys!0 (array!65882 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1045522 (= (arrayCountValidKeys!0 lt!461596 #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11689 thiss!1427) #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1045522 (= lt!461596 (array!65883 (store (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32219 (_keys!11689 thiss!1427))))))

(declare-fun lt!461604 () Unit!34146)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65882 (_ BitVec 32) (_ BitVec 64)) Unit!34146)

(assert (=> b!1045522 (= lt!461604 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11689 thiss!1427) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!91970 res!696221) b!1045514))

(assert (= (and b!1045514 res!696223) b!1045516))

(assert (= (and b!1045516 res!696220) b!1045522))

(assert (= (and b!1045522 (not res!696219)) b!1045518))

(assert (= (and b!1045518 (not res!696222)) b!1045515))

(assert (= (and b!1045521 condMapEmpty!38933) mapIsEmpty!38933))

(assert (= (and b!1045521 (not condMapEmpty!38933)) mapNonEmpty!38933))

(assert (= (and mapNonEmpty!38933 ((_ is ValueCellFull!11727) mapValue!38933)) b!1045519))

(assert (= (and b!1045521 ((_ is ValueCellFull!11727) mapDefault!38933)) b!1045517))

(assert (= b!1045520 b!1045521))

(assert (= start!91970 b!1045520))

(declare-fun b_lambda!16339 () Bool)

(assert (=> (not b_lambda!16339) (not b!1045522)))

(declare-fun t!31420 () Bool)

(declare-fun tb!7099 () Bool)

(assert (=> (and b!1045520 (= (defaultEntry!6420 thiss!1427) (defaultEntry!6420 thiss!1427)) t!31420) tb!7099))

(declare-fun result!14615 () Bool)

(assert (=> tb!7099 (= result!14615 tp_is_empty!24861)))

(assert (=> b!1045522 t!31420))

(declare-fun b_and!33789 () Bool)

(assert (= b_and!33787 (and (=> t!31420 result!14615) b_and!33789)))

(declare-fun m!965393 () Bool)

(assert (=> b!1045518 m!965393))

(declare-fun m!965395 () Bool)

(assert (=> b!1045522 m!965395))

(declare-fun m!965397 () Bool)

(assert (=> b!1045522 m!965397))

(declare-fun m!965399 () Bool)

(assert (=> b!1045522 m!965399))

(declare-fun m!965401 () Bool)

(assert (=> b!1045522 m!965401))

(declare-fun m!965403 () Bool)

(assert (=> b!1045522 m!965403))

(declare-fun m!965405 () Bool)

(assert (=> b!1045522 m!965405))

(declare-fun m!965407 () Bool)

(assert (=> b!1045522 m!965407))

(declare-fun m!965409 () Bool)

(assert (=> b!1045522 m!965409))

(declare-fun m!965411 () Bool)

(assert (=> b!1045522 m!965411))

(assert (=> b!1045522 m!965409))

(declare-fun m!965413 () Bool)

(assert (=> b!1045522 m!965413))

(declare-fun m!965415 () Bool)

(assert (=> b!1045522 m!965415))

(declare-fun m!965417 () Bool)

(assert (=> b!1045522 m!965417))

(declare-fun m!965419 () Bool)

(assert (=> b!1045522 m!965419))

(declare-fun m!965421 () Bool)

(assert (=> b!1045522 m!965421))

(assert (=> b!1045522 m!965405))

(declare-fun m!965423 () Bool)

(assert (=> b!1045522 m!965423))

(declare-fun m!965425 () Bool)

(assert (=> b!1045522 m!965425))

(declare-fun m!965427 () Bool)

(assert (=> b!1045522 m!965427))

(declare-fun m!965429 () Bool)

(assert (=> b!1045522 m!965429))

(declare-fun m!965431 () Bool)

(assert (=> start!91970 m!965431))

(declare-fun m!965433 () Bool)

(assert (=> mapNonEmpty!38933 m!965433))

(declare-fun m!965435 () Bool)

(assert (=> b!1045516 m!965435))

(declare-fun m!965437 () Bool)

(assert (=> b!1045520 m!965437))

(declare-fun m!965439 () Bool)

(assert (=> b!1045520 m!965439))

(check-sat (not start!91970) (not b!1045518) (not b_next!21141) (not b!1045516) (not b!1045522) (not mapNonEmpty!38933) tp_is_empty!24861 b_and!33789 (not b!1045520) (not b_lambda!16339))
(check-sat b_and!33789 (not b_next!21141))
(get-model)

(declare-fun b_lambda!16343 () Bool)

(assert (= b_lambda!16339 (or (and b!1045520 b_free!21141) b_lambda!16343)))

(check-sat (not start!91970) (not b!1045518) (not b_next!21141) (not b!1045516) (not b!1045522) (not b!1045520) (not b_lambda!16343) (not mapNonEmpty!38933) tp_is_empty!24861 b_and!33789)
(check-sat b_and!33789 (not b_next!21141))
(get-model)

(declare-fun d!126497 () Bool)

(assert (=> d!126497 (= (array_inv!24319 (_keys!11689 thiss!1427)) (bvsge (size!32219 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1045520 d!126497))

(declare-fun d!126499 () Bool)

(assert (=> d!126499 (= (array_inv!24320 (_values!6443 thiss!1427)) (bvsge (size!32220 (_values!6443 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1045520 d!126499))

(declare-fun d!126501 () Bool)

(declare-fun res!696245 () Bool)

(declare-fun e!592740 () Bool)

(assert (=> d!126501 (=> (not res!696245) (not e!592740))))

(declare-fun simpleValid!452 (LongMapFixedSize!6048) Bool)

(assert (=> d!126501 (= res!696245 (simpleValid!452 thiss!1427))))

(assert (=> d!126501 (= (valid!2223 thiss!1427) e!592740)))

(declare-fun b!1045560 () Bool)

(declare-fun res!696246 () Bool)

(assert (=> b!1045560 (=> (not res!696246) (not e!592740))))

(assert (=> b!1045560 (= res!696246 (= (arrayCountValidKeys!0 (_keys!11689 thiss!1427) #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) (_size!3079 thiss!1427)))))

(declare-fun b!1045561 () Bool)

(declare-fun res!696247 () Bool)

(assert (=> b!1045561 (=> (not res!696247) (not e!592740))))

(assert (=> b!1045561 (= res!696247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11689 thiss!1427) (mask!30546 thiss!1427)))))

(declare-fun b!1045562 () Bool)

(assert (=> b!1045562 (= e!592740 (arrayNoDuplicates!0 (_keys!11689 thiss!1427) #b00000000000000000000000000000000 Nil!22142))))

(assert (= (and d!126501 res!696245) b!1045560))

(assert (= (and b!1045560 res!696246) b!1045561))

(assert (= (and b!1045561 res!696247) b!1045562))

(declare-fun m!965489 () Bool)

(assert (=> d!126501 m!965489))

(assert (=> b!1045560 m!965401))

(declare-fun m!965491 () Bool)

(assert (=> b!1045561 m!965491))

(declare-fun m!965493 () Bool)

(assert (=> b!1045562 m!965493))

(assert (=> start!91970 d!126501))

(declare-fun b!1045575 () Bool)

(declare-fun e!592749 () SeekEntryResult!9847)

(declare-fun lt!461642 () SeekEntryResult!9847)

(assert (=> b!1045575 (= e!592749 (MissingZero!9847 (index!41760 lt!461642)))))

(declare-fun b!1045576 () Bool)

(declare-fun lt!461643 () SeekEntryResult!9847)

(assert (=> b!1045576 (= e!592749 (ite ((_ is MissingVacant!9847) lt!461643) (MissingZero!9847 (index!41761 lt!461643)) lt!461643))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65882 (_ BitVec 32)) SeekEntryResult!9847)

(assert (=> b!1045576 (= lt!461643 (seekKeyOrZeroReturnVacant!0 (x!93386 lt!461642) (index!41760 lt!461642) (index!41760 lt!461642) key!909 (_keys!11689 thiss!1427) (mask!30546 thiss!1427)))))

(declare-fun b!1045577 () Bool)

(declare-fun e!592748 () SeekEntryResult!9847)

(declare-fun e!592747 () SeekEntryResult!9847)

(assert (=> b!1045577 (= e!592748 e!592747)))

(declare-fun lt!461641 () (_ BitVec 64))

(assert (=> b!1045577 (= lt!461641 (select (arr!31683 (_keys!11689 thiss!1427)) (index!41760 lt!461642)))))

(declare-fun c!106263 () Bool)

(assert (=> b!1045577 (= c!106263 (= lt!461641 key!909))))

(declare-fun b!1045578 () Bool)

(assert (=> b!1045578 (= e!592747 (Found!9847 (index!41760 lt!461642)))))

(declare-fun d!126503 () Bool)

(declare-fun lt!461640 () SeekEntryResult!9847)

(assert (=> d!126503 (and (or ((_ is MissingVacant!9847) lt!461640) (not ((_ is Found!9847) lt!461640)) (and (bvsge (index!41759 lt!461640) #b00000000000000000000000000000000) (bvslt (index!41759 lt!461640) (size!32219 (_keys!11689 thiss!1427))))) (not ((_ is MissingVacant!9847) lt!461640)) (or (not ((_ is Found!9847) lt!461640)) (= (select (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461640)) key!909)))))

(assert (=> d!126503 (= lt!461640 e!592748)))

(declare-fun c!106261 () Bool)

(assert (=> d!126503 (= c!106261 (and ((_ is Intermediate!9847) lt!461642) (undefined!10659 lt!461642)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!65882 (_ BitVec 32)) SeekEntryResult!9847)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!126503 (= lt!461642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!30546 thiss!1427)) key!909 (_keys!11689 thiss!1427) (mask!30546 thiss!1427)))))

(assert (=> d!126503 (validMask!0 (mask!30546 thiss!1427))))

(assert (=> d!126503 (= (seekEntry!0 key!909 (_keys!11689 thiss!1427) (mask!30546 thiss!1427)) lt!461640)))

(declare-fun b!1045579 () Bool)

(declare-fun c!106262 () Bool)

(assert (=> b!1045579 (= c!106262 (= lt!461641 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1045579 (= e!592747 e!592749)))

(declare-fun b!1045580 () Bool)

(assert (=> b!1045580 (= e!592748 Undefined!9847)))

(assert (= (and d!126503 c!106261) b!1045580))

(assert (= (and d!126503 (not c!106261)) b!1045577))

(assert (= (and b!1045577 c!106263) b!1045578))

(assert (= (and b!1045577 (not c!106263)) b!1045579))

(assert (= (and b!1045579 c!106262) b!1045575))

(assert (= (and b!1045579 (not c!106262)) b!1045576))

(declare-fun m!965495 () Bool)

(assert (=> b!1045576 m!965495))

(declare-fun m!965497 () Bool)

(assert (=> b!1045577 m!965497))

(declare-fun m!965499 () Bool)

(assert (=> d!126503 m!965499))

(declare-fun m!965501 () Bool)

(assert (=> d!126503 m!965501))

(assert (=> d!126503 m!965501))

(declare-fun m!965503 () Bool)

(assert (=> d!126503 m!965503))

(declare-fun m!965505 () Bool)

(assert (=> d!126503 m!965505))

(assert (=> b!1045516 d!126503))

(declare-fun d!126505 () Bool)

(assert (=> d!126505 (= (validMask!0 (mask!30546 (_2!7956 lt!461599))) (and (or (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000000000111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000000001111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000000011111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000000111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000001111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000011111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000000111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000001111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000011111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000000111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000001111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000011111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000000111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000001111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000011111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000000111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000001111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000011111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000000111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000001111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000011111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000000111111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000001111111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000011111111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00000111111111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00001111111111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00011111111111111111111111111111) (= (mask!30546 (_2!7956 lt!461599)) #b00111111111111111111111111111111)) (bvsle (mask!30546 (_2!7956 lt!461599)) #b00111111111111111111111111111111)))))

(assert (=> b!1045518 d!126505))

(declare-fun b!1045589 () Bool)

(declare-fun e!592754 () (_ BitVec 32))

(assert (=> b!1045589 (= e!592754 #b00000000000000000000000000000000)))

(declare-fun b!1045590 () Bool)

(declare-fun e!592755 () (_ BitVec 32))

(declare-fun call!44527 () (_ BitVec 32))

(assert (=> b!1045590 (= e!592755 (bvadd #b00000000000000000000000000000001 call!44527))))

(declare-fun b!1045591 () Bool)

(assert (=> b!1045591 (= e!592754 e!592755)))

(declare-fun c!106269 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1045591 (= c!106269 (validKeyInArray!0 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(declare-fun d!126507 () Bool)

(declare-fun lt!461646 () (_ BitVec 32))

(assert (=> d!126507 (and (bvsge lt!461646 #b00000000000000000000000000000000) (bvsle lt!461646 (bvsub (size!32219 lt!461596) #b00000000000000000000000000000000)))))

(assert (=> d!126507 (= lt!461646 e!592754)))

(declare-fun c!106268 () Bool)

(assert (=> d!126507 (= c!106268 (bvsge #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))))))

(assert (=> d!126507 (and (bvsle #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32219 (_keys!11689 thiss!1427)) (size!32219 lt!461596)))))

(assert (=> d!126507 (= (arrayCountValidKeys!0 lt!461596 #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) lt!461646)))

(declare-fun bm!44524 () Bool)

(assert (=> bm!44524 (= call!44527 (arrayCountValidKeys!0 lt!461596 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32219 (_keys!11689 thiss!1427))))))

(declare-fun b!1045592 () Bool)

(assert (=> b!1045592 (= e!592755 call!44527)))

(assert (= (and d!126507 c!106268) b!1045589))

(assert (= (and d!126507 (not c!106268)) b!1045591))

(assert (= (and b!1045591 c!106269) b!1045590))

(assert (= (and b!1045591 (not c!106269)) b!1045592))

(assert (= (or b!1045590 b!1045592) bm!44524))

(declare-fun m!965507 () Bool)

(assert (=> b!1045591 m!965507))

(assert (=> b!1045591 m!965507))

(declare-fun m!965509 () Bool)

(assert (=> b!1045591 m!965509))

(declare-fun m!965511 () Bool)

(assert (=> bm!44524 m!965511))

(assert (=> b!1045522 d!126507))

(declare-fun d!126509 () Bool)

(declare-fun e!592758 () Bool)

(assert (=> d!126509 e!592758))

(declare-fun res!696250 () Bool)

(assert (=> d!126509 (=> (not res!696250) (not e!592758))))

(assert (=> d!126509 (= res!696250 (and (bvsge (index!41759 lt!461600) #b00000000000000000000000000000000) (bvslt (index!41759 lt!461600) (size!32219 (_keys!11689 thiss!1427)))))))

(declare-fun lt!461649 () Unit!34146)

(declare-fun choose!25 (array!65882 (_ BitVec 32) (_ BitVec 32)) Unit!34146)

(assert (=> d!126509 (= lt!461649 (choose!25 (_keys!11689 thiss!1427) (index!41759 lt!461600) (mask!30546 thiss!1427)))))

(assert (=> d!126509 (validMask!0 (mask!30546 thiss!1427))))

(assert (=> d!126509 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11689 thiss!1427) (index!41759 lt!461600) (mask!30546 thiss!1427)) lt!461649)))

(declare-fun b!1045595 () Bool)

(assert (=> b!1045595 (= e!592758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!65883 (store (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32219 (_keys!11689 thiss!1427))) (mask!30546 thiss!1427)))))

(assert (= (and d!126509 res!696250) b!1045595))

(declare-fun m!965513 () Bool)

(assert (=> d!126509 m!965513))

(assert (=> d!126509 m!965505))

(assert (=> b!1045595 m!965399))

(declare-fun m!965515 () Bool)

(assert (=> b!1045595 m!965515))

(assert (=> b!1045522 d!126509))

(declare-fun b!1045638 () Bool)

(declare-fun res!696275 () Bool)

(declare-fun e!592785 () Bool)

(assert (=> b!1045638 (=> (not res!696275) (not e!592785))))

(declare-fun e!592794 () Bool)

(assert (=> b!1045638 (= res!696275 e!592794)))

(declare-fun res!696271 () Bool)

(assert (=> b!1045638 (=> res!696271 e!592794)))

(declare-fun e!592787 () Bool)

(assert (=> b!1045638 (= res!696271 (not e!592787))))

(declare-fun res!696276 () Bool)

(assert (=> b!1045638 (=> (not res!696276) (not e!592787))))

(assert (=> b!1045638 (= res!696276 (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 (_2!7956 lt!461599)))))))

(declare-fun call!44547 () ListLongMap!13905)

(declare-fun bm!44539 () Bool)

(declare-fun c!106285 () Bool)

(declare-fun call!44546 () ListLongMap!13905)

(declare-fun c!106286 () Bool)

(declare-fun call!44542 () ListLongMap!13905)

(declare-fun call!44548 () ListLongMap!13905)

(declare-fun +!3073 (ListLongMap!13905 tuple2!15894) ListLongMap!13905)

(assert (=> bm!44539 (= call!44548 (+!3073 (ite c!106285 call!44546 (ite c!106286 call!44547 call!44542)) (ite (or c!106285 c!106286) (tuple2!15895 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6254 (_2!7956 lt!461599))) (tuple2!15895 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6254 (_2!7956 lt!461599))))))))

(declare-fun b!1045639 () Bool)

(declare-fun e!592789 () Unit!34146)

(declare-fun lt!461694 () Unit!34146)

(assert (=> b!1045639 (= e!592789 lt!461694)))

(declare-fun lt!461712 () ListLongMap!13905)

(declare-fun getCurrentListMapNoExtraKeys!3543 (array!65882 array!65884 (_ BitVec 32) (_ BitVec 32) V!38021 V!38021 (_ BitVec 32) Int) ListLongMap!13905)

(assert (=> b!1045639 (= lt!461712 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))))))

(declare-fun lt!461696 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461696 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461700 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461700 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000))))

(declare-fun lt!461704 () Unit!34146)

(declare-fun addStillContains!638 (ListLongMap!13905 (_ BitVec 64) V!38021 (_ BitVec 64)) Unit!34146)

(assert (=> b!1045639 (= lt!461704 (addStillContains!638 lt!461712 lt!461696 (zeroValue!6254 (_2!7956 lt!461599)) lt!461700))))

(assert (=> b!1045639 (contains!6102 (+!3073 lt!461712 (tuple2!15895 lt!461696 (zeroValue!6254 (_2!7956 lt!461599)))) lt!461700)))

(declare-fun lt!461709 () Unit!34146)

(assert (=> b!1045639 (= lt!461709 lt!461704)))

(declare-fun lt!461706 () ListLongMap!13905)

(assert (=> b!1045639 (= lt!461706 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))))))

(declare-fun lt!461714 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461714 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461713 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461713 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000))))

(declare-fun lt!461703 () Unit!34146)

(declare-fun addApplyDifferent!490 (ListLongMap!13905 (_ BitVec 64) V!38021 (_ BitVec 64)) Unit!34146)

(assert (=> b!1045639 (= lt!461703 (addApplyDifferent!490 lt!461706 lt!461714 (minValue!6254 (_2!7956 lt!461599)) lt!461713))))

(declare-fun apply!950 (ListLongMap!13905 (_ BitVec 64)) V!38021)

(assert (=> b!1045639 (= (apply!950 (+!3073 lt!461706 (tuple2!15895 lt!461714 (minValue!6254 (_2!7956 lt!461599)))) lt!461713) (apply!950 lt!461706 lt!461713))))

(declare-fun lt!461699 () Unit!34146)

(assert (=> b!1045639 (= lt!461699 lt!461703)))

(declare-fun lt!461695 () ListLongMap!13905)

(assert (=> b!1045639 (= lt!461695 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))))))

(declare-fun lt!461701 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461701 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461702 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461702 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000))))

(declare-fun lt!461705 () Unit!34146)

(assert (=> b!1045639 (= lt!461705 (addApplyDifferent!490 lt!461695 lt!461701 (zeroValue!6254 (_2!7956 lt!461599)) lt!461702))))

(assert (=> b!1045639 (= (apply!950 (+!3073 lt!461695 (tuple2!15895 lt!461701 (zeroValue!6254 (_2!7956 lt!461599)))) lt!461702) (apply!950 lt!461695 lt!461702))))

(declare-fun lt!461711 () Unit!34146)

(assert (=> b!1045639 (= lt!461711 lt!461705)))

(declare-fun lt!461710 () ListLongMap!13905)

(assert (=> b!1045639 (= lt!461710 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))))))

(declare-fun lt!461698 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461698 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461708 () (_ BitVec 64))

(assert (=> b!1045639 (= lt!461708 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000))))

(assert (=> b!1045639 (= lt!461694 (addApplyDifferent!490 lt!461710 lt!461698 (minValue!6254 (_2!7956 lt!461599)) lt!461708))))

(assert (=> b!1045639 (= (apply!950 (+!3073 lt!461710 (tuple2!15895 lt!461698 (minValue!6254 (_2!7956 lt!461599)))) lt!461708) (apply!950 lt!461710 lt!461708))))

(declare-fun b!1045640 () Bool)

(declare-fun e!592797 () Bool)

(declare-fun call!44543 () Bool)

(assert (=> b!1045640 (= e!592797 (not call!44543))))

(declare-fun b!1045641 () Bool)

(assert (=> b!1045641 (= e!592787 (validKeyInArray!0 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000)))))

(declare-fun bm!44540 () Bool)

(assert (=> bm!44540 (= call!44547 call!44546)))

(declare-fun b!1045643 () Bool)

(declare-fun e!592793 () Bool)

(declare-fun lt!461697 () ListLongMap!13905)

(assert (=> b!1045643 (= e!592793 (= (apply!950 lt!461697 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6254 (_2!7956 lt!461599))))))

(declare-fun b!1045644 () Bool)

(assert (=> b!1045644 (= e!592785 e!592797)))

(declare-fun c!106282 () Bool)

(assert (=> b!1045644 (= c!106282 (not (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045645 () Bool)

(declare-fun c!106283 () Bool)

(assert (=> b!1045645 (= c!106283 (and (not (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592796 () ListLongMap!13905)

(declare-fun e!592788 () ListLongMap!13905)

(assert (=> b!1045645 (= e!592796 e!592788)))

(declare-fun b!1045646 () Bool)

(declare-fun e!592795 () ListLongMap!13905)

(assert (=> b!1045646 (= e!592795 e!592796)))

(assert (=> b!1045646 (= c!106286 (and (not (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045647 () Bool)

(declare-fun e!592790 () Bool)

(assert (=> b!1045647 (= e!592794 e!592790)))

(declare-fun res!696277 () Bool)

(assert (=> b!1045647 (=> (not res!696277) (not e!592790))))

(assert (=> b!1045647 (= res!696277 (contains!6102 lt!461697 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000)))))

(assert (=> b!1045647 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 (_2!7956 lt!461599)))))))

(declare-fun bm!44541 () Bool)

(assert (=> bm!44541 (= call!44543 (contains!6102 lt!461697 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045648 () Bool)

(declare-fun e!592791 () Bool)

(assert (=> b!1045648 (= e!592791 (= (apply!950 lt!461697 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6254 (_2!7956 lt!461599))))))

(declare-fun bm!44542 () Bool)

(declare-fun call!44545 () Bool)

(assert (=> bm!44542 (= call!44545 (contains!6102 lt!461697 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44543 () Bool)

(assert (=> bm!44543 (= call!44546 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))))))

(declare-fun b!1045649 () Bool)

(declare-fun e!592792 () Bool)

(assert (=> b!1045649 (= e!592792 e!592791)))

(declare-fun res!696273 () Bool)

(assert (=> b!1045649 (= res!696273 call!44545)))

(assert (=> b!1045649 (=> (not res!696273) (not e!592791))))

(declare-fun b!1045650 () Bool)

(assert (=> b!1045650 (= e!592788 call!44542)))

(declare-fun b!1045651 () Bool)

(declare-fun call!44544 () ListLongMap!13905)

(assert (=> b!1045651 (= e!592788 call!44544)))

(declare-fun b!1045652 () Bool)

(declare-fun Unit!34152 () Unit!34146)

(assert (=> b!1045652 (= e!592789 Unit!34152)))

(declare-fun bm!44544 () Bool)

(assert (=> bm!44544 (= call!44542 call!44547)))

(declare-fun b!1045653 () Bool)

(assert (=> b!1045653 (= e!592796 call!44544)))

(declare-fun b!1045654 () Bool)

(declare-fun res!696272 () Bool)

(assert (=> b!1045654 (=> (not res!696272) (not e!592785))))

(assert (=> b!1045654 (= res!696272 e!592792)))

(declare-fun c!106287 () Bool)

(assert (=> b!1045654 (= c!106287 (not (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1045655 () Bool)

(declare-fun e!592786 () Bool)

(assert (=> b!1045655 (= e!592786 (validKeyInArray!0 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000)))))

(declare-fun b!1045656 () Bool)

(assert (=> b!1045656 (= e!592795 (+!3073 call!44548 (tuple2!15895 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6254 (_2!7956 lt!461599)))))))

(declare-fun bm!44545 () Bool)

(assert (=> bm!44545 (= call!44544 call!44548)))

(declare-fun b!1045642 () Bool)

(assert (=> b!1045642 (= e!592792 (not call!44545))))

(declare-fun d!126511 () Bool)

(assert (=> d!126511 e!592785))

(declare-fun res!696269 () Bool)

(assert (=> d!126511 (=> (not res!696269) (not e!592785))))

(assert (=> d!126511 (= res!696269 (or (bvsge #b00000000000000000000000000000000 (size!32219 (_keys!11689 (_2!7956 lt!461599)))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 (_2!7956 lt!461599)))))))))

(declare-fun lt!461715 () ListLongMap!13905)

(assert (=> d!126511 (= lt!461697 lt!461715)))

(declare-fun lt!461707 () Unit!34146)

(assert (=> d!126511 (= lt!461707 e!592789)))

(declare-fun c!106284 () Bool)

(assert (=> d!126511 (= c!106284 e!592786)))

(declare-fun res!696274 () Bool)

(assert (=> d!126511 (=> (not res!696274) (not e!592786))))

(assert (=> d!126511 (= res!696274 (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 (_2!7956 lt!461599)))))))

(assert (=> d!126511 (= lt!461715 e!592795)))

(assert (=> d!126511 (= c!106285 (and (not (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6148 (_2!7956 lt!461599)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126511 (validMask!0 (mask!30546 (_2!7956 lt!461599)))))

(assert (=> d!126511 (= (getCurrentListMap!3974 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))) lt!461697)))

(declare-fun b!1045657 () Bool)

(declare-fun get!16573 (ValueCell!11727 V!38021) V!38021)

(assert (=> b!1045657 (= e!592790 (= (apply!950 lt!461697 (select (arr!31683 (_keys!11689 (_2!7956 lt!461599))) #b00000000000000000000000000000000)) (get!16573 (select (arr!31684 (_values!6443 (_2!7956 lt!461599))) #b00000000000000000000000000000000) (dynLambda!2018 (defaultEntry!6420 (_2!7956 lt!461599)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045657 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32220 (_values!6443 (_2!7956 lt!461599)))))))

(assert (=> b!1045657 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 (_2!7956 lt!461599)))))))

(declare-fun b!1045658 () Bool)

(assert (=> b!1045658 (= e!592797 e!592793)))

(declare-fun res!696270 () Bool)

(assert (=> b!1045658 (= res!696270 call!44543)))

(assert (=> b!1045658 (=> (not res!696270) (not e!592793))))

(assert (= (and d!126511 c!106285) b!1045656))

(assert (= (and d!126511 (not c!106285)) b!1045646))

(assert (= (and b!1045646 c!106286) b!1045653))

(assert (= (and b!1045646 (not c!106286)) b!1045645))

(assert (= (and b!1045645 c!106283) b!1045651))

(assert (= (and b!1045645 (not c!106283)) b!1045650))

(assert (= (or b!1045651 b!1045650) bm!44544))

(assert (= (or b!1045653 bm!44544) bm!44540))

(assert (= (or b!1045653 b!1045651) bm!44545))

(assert (= (or b!1045656 bm!44540) bm!44543))

(assert (= (or b!1045656 bm!44545) bm!44539))

(assert (= (and d!126511 res!696274) b!1045655))

(assert (= (and d!126511 c!106284) b!1045639))

(assert (= (and d!126511 (not c!106284)) b!1045652))

(assert (= (and d!126511 res!696269) b!1045638))

(assert (= (and b!1045638 res!696276) b!1045641))

(assert (= (and b!1045638 (not res!696271)) b!1045647))

(assert (= (and b!1045647 res!696277) b!1045657))

(assert (= (and b!1045638 res!696275) b!1045654))

(assert (= (and b!1045654 c!106287) b!1045649))

(assert (= (and b!1045654 (not c!106287)) b!1045642))

(assert (= (and b!1045649 res!696273) b!1045648))

(assert (= (or b!1045649 b!1045642) bm!44542))

(assert (= (and b!1045654 res!696272) b!1045644))

(assert (= (and b!1045644 c!106282) b!1045658))

(assert (= (and b!1045644 (not c!106282)) b!1045640))

(assert (= (and b!1045658 res!696270) b!1045643))

(assert (= (or b!1045658 b!1045640) bm!44541))

(declare-fun b_lambda!16345 () Bool)

(assert (=> (not b_lambda!16345) (not b!1045657)))

(declare-fun t!31426 () Bool)

(declare-fun tb!7103 () Bool)

(assert (=> (and b!1045520 (= (defaultEntry!6420 thiss!1427) (defaultEntry!6420 (_2!7956 lt!461599))) t!31426) tb!7103))

(declare-fun result!14623 () Bool)

(assert (=> tb!7103 (= result!14623 tp_is_empty!24861)))

(assert (=> b!1045657 t!31426))

(declare-fun b_and!33795 () Bool)

(assert (= b_and!33789 (and (=> t!31426 result!14623) b_and!33795)))

(declare-fun m!965517 () Bool)

(assert (=> b!1045641 m!965517))

(assert (=> b!1045641 m!965517))

(declare-fun m!965519 () Bool)

(assert (=> b!1045641 m!965519))

(declare-fun m!965521 () Bool)

(assert (=> b!1045657 m!965521))

(declare-fun m!965523 () Bool)

(assert (=> b!1045657 m!965523))

(assert (=> b!1045657 m!965521))

(declare-fun m!965525 () Bool)

(assert (=> b!1045657 m!965525))

(assert (=> b!1045657 m!965517))

(declare-fun m!965527 () Bool)

(assert (=> b!1045657 m!965527))

(assert (=> b!1045657 m!965517))

(assert (=> b!1045657 m!965523))

(declare-fun m!965529 () Bool)

(assert (=> bm!44541 m!965529))

(declare-fun m!965531 () Bool)

(assert (=> b!1045639 m!965531))

(declare-fun m!965533 () Bool)

(assert (=> b!1045639 m!965533))

(assert (=> b!1045639 m!965517))

(declare-fun m!965535 () Bool)

(assert (=> b!1045639 m!965535))

(declare-fun m!965537 () Bool)

(assert (=> b!1045639 m!965537))

(declare-fun m!965539 () Bool)

(assert (=> b!1045639 m!965539))

(declare-fun m!965541 () Bool)

(assert (=> b!1045639 m!965541))

(declare-fun m!965543 () Bool)

(assert (=> b!1045639 m!965543))

(assert (=> b!1045639 m!965541))

(declare-fun m!965545 () Bool)

(assert (=> b!1045639 m!965545))

(declare-fun m!965547 () Bool)

(assert (=> b!1045639 m!965547))

(declare-fun m!965549 () Bool)

(assert (=> b!1045639 m!965549))

(assert (=> b!1045639 m!965535))

(declare-fun m!965551 () Bool)

(assert (=> b!1045639 m!965551))

(declare-fun m!965553 () Bool)

(assert (=> b!1045639 m!965553))

(declare-fun m!965555 () Bool)

(assert (=> b!1045639 m!965555))

(declare-fun m!965557 () Bool)

(assert (=> b!1045639 m!965557))

(declare-fun m!965559 () Bool)

(assert (=> b!1045639 m!965559))

(assert (=> b!1045639 m!965537))

(assert (=> b!1045639 m!965543))

(declare-fun m!965561 () Bool)

(assert (=> b!1045639 m!965561))

(assert (=> b!1045655 m!965517))

(assert (=> b!1045655 m!965517))

(assert (=> b!1045655 m!965519))

(declare-fun m!965563 () Bool)

(assert (=> b!1045643 m!965563))

(declare-fun m!965565 () Bool)

(assert (=> b!1045648 m!965565))

(assert (=> b!1045647 m!965517))

(assert (=> b!1045647 m!965517))

(declare-fun m!965567 () Bool)

(assert (=> b!1045647 m!965567))

(declare-fun m!965569 () Bool)

(assert (=> bm!44539 m!965569))

(assert (=> d!126511 m!965393))

(declare-fun m!965571 () Bool)

(assert (=> b!1045656 m!965571))

(assert (=> bm!44543 m!965533))

(declare-fun m!965573 () Bool)

(assert (=> bm!44542 m!965573))

(assert (=> b!1045522 d!126511))

(declare-fun d!126513 () Bool)

(declare-fun e!592800 () Bool)

(assert (=> d!126513 e!592800))

(declare-fun res!696280 () Bool)

(assert (=> d!126513 (=> (not res!696280) (not e!592800))))

(assert (=> d!126513 (= res!696280 (bvslt (index!41759 lt!461600) (size!32219 (_keys!11689 thiss!1427))))))

(declare-fun lt!461718 () Unit!34146)

(declare-fun choose!121 (array!65882 (_ BitVec 32) (_ BitVec 64)) Unit!34146)

(assert (=> d!126513 (= lt!461718 (choose!121 (_keys!11689 thiss!1427) (index!41759 lt!461600) key!909))))

(assert (=> d!126513 (bvsge (index!41759 lt!461600) #b00000000000000000000000000000000)))

(assert (=> d!126513 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11689 thiss!1427) (index!41759 lt!461600) key!909) lt!461718)))

(declare-fun b!1045661 () Bool)

(assert (=> b!1045661 (= e!592800 (not (arrayContainsKey!0 (array!65883 (store (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32219 (_keys!11689 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!126513 res!696280) b!1045661))

(declare-fun m!965575 () Bool)

(assert (=> d!126513 m!965575))

(assert (=> b!1045661 m!965399))

(declare-fun m!965577 () Bool)

(assert (=> b!1045661 m!965577))

(assert (=> b!1045522 d!126513))

(declare-fun d!126515 () Bool)

(declare-fun e!592803 () Bool)

(assert (=> d!126515 e!592803))

(declare-fun res!696283 () Bool)

(assert (=> d!126515 (=> (not res!696283) (not e!592803))))

(assert (=> d!126515 (= res!696283 (and (bvsge (index!41759 lt!461600) #b00000000000000000000000000000000) (bvslt (index!41759 lt!461600) (size!32219 (_keys!11689 thiss!1427)))))))

(declare-fun lt!461721 () Unit!34146)

(declare-fun choose!1721 (array!65882 array!65884 (_ BitVec 32) (_ BitVec 32) V!38021 V!38021 (_ BitVec 32) (_ BitVec 64) Int) Unit!34146)

(assert (=> d!126515 (= lt!461721 (choose!1721 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) (index!41759 lt!461600) key!909 (defaultEntry!6420 thiss!1427)))))

(assert (=> d!126515 (validMask!0 (mask!30546 thiss!1427))))

(assert (=> d!126515 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!64 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) (index!41759 lt!461600) key!909 (defaultEntry!6420 thiss!1427)) lt!461721)))

(declare-fun b!1045664 () Bool)

(assert (=> b!1045664 (= e!592803 (= (-!544 (getCurrentListMap!3974 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)) key!909) (getCurrentListMap!3974 (array!65883 (store (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32219 (_keys!11689 thiss!1427))) (array!65885 (store (arr!31684 (_values!6443 thiss!1427)) (index!41759 lt!461600) (ValueCellFull!11727 (dynLambda!2018 (defaultEntry!6420 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32220 (_values!6443 thiss!1427))) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427))))))

(assert (=> b!1045664 (bvslt (index!41759 lt!461600) (size!32220 (_values!6443 thiss!1427)))))

(assert (= (and d!126515 res!696283) b!1045664))

(declare-fun b_lambda!16347 () Bool)

(assert (=> (not b_lambda!16347) (not b!1045664)))

(assert (=> b!1045664 t!31420))

(declare-fun b_and!33797 () Bool)

(assert (= b_and!33795 (and (=> t!31420 result!14615) b_and!33797)))

(declare-fun m!965579 () Bool)

(assert (=> d!126515 m!965579))

(assert (=> d!126515 m!965505))

(assert (=> b!1045664 m!965409))

(assert (=> b!1045664 m!965399))

(assert (=> b!1045664 m!965429))

(assert (=> b!1045664 m!965409))

(assert (=> b!1045664 m!965411))

(declare-fun m!965581 () Bool)

(assert (=> b!1045664 m!965581))

(assert (=> b!1045664 m!965395))

(assert (=> b!1045522 d!126515))

(declare-fun b!1045665 () Bool)

(declare-fun res!696290 () Bool)

(declare-fun e!592804 () Bool)

(assert (=> b!1045665 (=> (not res!696290) (not e!592804))))

(declare-fun e!592813 () Bool)

(assert (=> b!1045665 (= res!696290 e!592813)))

(declare-fun res!696286 () Bool)

(assert (=> b!1045665 (=> res!696286 e!592813)))

(declare-fun e!592806 () Bool)

(assert (=> b!1045665 (= res!696286 (not e!592806))))

(declare-fun res!696291 () Bool)

(assert (=> b!1045665 (=> (not res!696291) (not e!592806))))

(assert (=> b!1045665 (= res!696291 (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))))))

(declare-fun c!106291 () Bool)

(declare-fun bm!44546 () Bool)

(declare-fun call!44549 () ListLongMap!13905)

(declare-fun call!44555 () ListLongMap!13905)

(declare-fun call!44554 () ListLongMap!13905)

(declare-fun call!44553 () ListLongMap!13905)

(declare-fun c!106292 () Bool)

(assert (=> bm!44546 (= call!44555 (+!3073 (ite c!106291 call!44553 (ite c!106292 call!44554 call!44549)) (ite (or c!106291 c!106292) (tuple2!15895 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6254 thiss!1427)) (tuple2!15895 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6254 thiss!1427)))))))

(declare-fun b!1045666 () Bool)

(declare-fun e!592808 () Unit!34146)

(declare-fun lt!461722 () Unit!34146)

(assert (=> b!1045666 (= e!592808 lt!461722)))

(declare-fun lt!461740 () ListLongMap!13905)

(assert (=> b!1045666 (= lt!461740 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461724 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461724 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461728 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461728 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461732 () Unit!34146)

(assert (=> b!1045666 (= lt!461732 (addStillContains!638 lt!461740 lt!461724 (zeroValue!6254 thiss!1427) lt!461728))))

(assert (=> b!1045666 (contains!6102 (+!3073 lt!461740 (tuple2!15895 lt!461724 (zeroValue!6254 thiss!1427))) lt!461728)))

(declare-fun lt!461737 () Unit!34146)

(assert (=> b!1045666 (= lt!461737 lt!461732)))

(declare-fun lt!461734 () ListLongMap!13905)

(assert (=> b!1045666 (= lt!461734 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461742 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461742 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461741 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461741 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461731 () Unit!34146)

(assert (=> b!1045666 (= lt!461731 (addApplyDifferent!490 lt!461734 lt!461742 (minValue!6254 thiss!1427) lt!461741))))

(assert (=> b!1045666 (= (apply!950 (+!3073 lt!461734 (tuple2!15895 lt!461742 (minValue!6254 thiss!1427))) lt!461741) (apply!950 lt!461734 lt!461741))))

(declare-fun lt!461727 () Unit!34146)

(assert (=> b!1045666 (= lt!461727 lt!461731)))

(declare-fun lt!461723 () ListLongMap!13905)

(assert (=> b!1045666 (= lt!461723 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461729 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461729 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461730 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461730 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!461733 () Unit!34146)

(assert (=> b!1045666 (= lt!461733 (addApplyDifferent!490 lt!461723 lt!461729 (zeroValue!6254 thiss!1427) lt!461730))))

(assert (=> b!1045666 (= (apply!950 (+!3073 lt!461723 (tuple2!15895 lt!461729 (zeroValue!6254 thiss!1427))) lt!461730) (apply!950 lt!461723 lt!461730))))

(declare-fun lt!461739 () Unit!34146)

(assert (=> b!1045666 (= lt!461739 lt!461733)))

(declare-fun lt!461738 () ListLongMap!13905)

(assert (=> b!1045666 (= lt!461738 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461726 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461726 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461736 () (_ BitVec 64))

(assert (=> b!1045666 (= lt!461736 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1045666 (= lt!461722 (addApplyDifferent!490 lt!461738 lt!461726 (minValue!6254 thiss!1427) lt!461736))))

(assert (=> b!1045666 (= (apply!950 (+!3073 lt!461738 (tuple2!15895 lt!461726 (minValue!6254 thiss!1427))) lt!461736) (apply!950 lt!461738 lt!461736))))

(declare-fun b!1045667 () Bool)

(declare-fun e!592816 () Bool)

(declare-fun call!44550 () Bool)

(assert (=> b!1045667 (= e!592816 (not call!44550))))

(declare-fun b!1045668 () Bool)

(assert (=> b!1045668 (= e!592806 (validKeyInArray!0 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun bm!44547 () Bool)

(assert (=> bm!44547 (= call!44554 call!44553)))

(declare-fun b!1045670 () Bool)

(declare-fun e!592812 () Bool)

(declare-fun lt!461725 () ListLongMap!13905)

(assert (=> b!1045670 (= e!592812 (= (apply!950 lt!461725 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6254 thiss!1427)))))

(declare-fun b!1045671 () Bool)

(assert (=> b!1045671 (= e!592804 e!592816)))

(declare-fun c!106288 () Bool)

(assert (=> b!1045671 (= c!106288 (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045672 () Bool)

(declare-fun c!106289 () Bool)

(assert (=> b!1045672 (= c!106289 (and (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592815 () ListLongMap!13905)

(declare-fun e!592807 () ListLongMap!13905)

(assert (=> b!1045672 (= e!592815 e!592807)))

(declare-fun b!1045673 () Bool)

(declare-fun e!592814 () ListLongMap!13905)

(assert (=> b!1045673 (= e!592814 e!592815)))

(assert (=> b!1045673 (= c!106292 (and (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045674 () Bool)

(declare-fun e!592809 () Bool)

(assert (=> b!1045674 (= e!592813 e!592809)))

(declare-fun res!696292 () Bool)

(assert (=> b!1045674 (=> (not res!696292) (not e!592809))))

(assert (=> b!1045674 (= res!696292 (contains!6102 lt!461725 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1045674 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))))))

(declare-fun bm!44548 () Bool)

(assert (=> bm!44548 (= call!44550 (contains!6102 lt!461725 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045675 () Bool)

(declare-fun e!592810 () Bool)

(assert (=> b!1045675 (= e!592810 (= (apply!950 lt!461725 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6254 thiss!1427)))))

(declare-fun bm!44549 () Bool)

(declare-fun call!44552 () Bool)

(assert (=> bm!44549 (= call!44552 (contains!6102 lt!461725 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44550 () Bool)

(assert (=> bm!44550 (= call!44553 (getCurrentListMapNoExtraKeys!3543 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun b!1045676 () Bool)

(declare-fun e!592811 () Bool)

(assert (=> b!1045676 (= e!592811 e!592810)))

(declare-fun res!696288 () Bool)

(assert (=> b!1045676 (= res!696288 call!44552)))

(assert (=> b!1045676 (=> (not res!696288) (not e!592810))))

(declare-fun b!1045677 () Bool)

(assert (=> b!1045677 (= e!592807 call!44549)))

(declare-fun b!1045678 () Bool)

(declare-fun call!44551 () ListLongMap!13905)

(assert (=> b!1045678 (= e!592807 call!44551)))

(declare-fun b!1045679 () Bool)

(declare-fun Unit!34153 () Unit!34146)

(assert (=> b!1045679 (= e!592808 Unit!34153)))

(declare-fun bm!44551 () Bool)

(assert (=> bm!44551 (= call!44549 call!44554)))

(declare-fun b!1045680 () Bool)

(assert (=> b!1045680 (= e!592815 call!44551)))

(declare-fun b!1045681 () Bool)

(declare-fun res!696287 () Bool)

(assert (=> b!1045681 (=> (not res!696287) (not e!592804))))

(assert (=> b!1045681 (= res!696287 e!592811)))

(declare-fun c!106293 () Bool)

(assert (=> b!1045681 (= c!106293 (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1045682 () Bool)

(declare-fun e!592805 () Bool)

(assert (=> b!1045682 (= e!592805 (validKeyInArray!0 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1045683 () Bool)

(assert (=> b!1045683 (= e!592814 (+!3073 call!44555 (tuple2!15895 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6254 thiss!1427))))))

(declare-fun bm!44552 () Bool)

(assert (=> bm!44552 (= call!44551 call!44555)))

(declare-fun b!1045669 () Bool)

(assert (=> b!1045669 (= e!592811 (not call!44552))))

(declare-fun d!126517 () Bool)

(assert (=> d!126517 e!592804))

(declare-fun res!696284 () Bool)

(assert (=> d!126517 (=> (not res!696284) (not e!592804))))

(assert (=> d!126517 (= res!696284 (or (bvsge #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))))))))

(declare-fun lt!461743 () ListLongMap!13905)

(assert (=> d!126517 (= lt!461725 lt!461743)))

(declare-fun lt!461735 () Unit!34146)

(assert (=> d!126517 (= lt!461735 e!592808)))

(declare-fun c!106290 () Bool)

(assert (=> d!126517 (= c!106290 e!592805)))

(declare-fun res!696289 () Bool)

(assert (=> d!126517 (=> (not res!696289) (not e!592805))))

(assert (=> d!126517 (= res!696289 (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))))))

(assert (=> d!126517 (= lt!461743 e!592814)))

(assert (=> d!126517 (= c!106291 (and (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126517 (validMask!0 (mask!30546 thiss!1427))))

(assert (=> d!126517 (= (getCurrentListMap!3974 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)) lt!461725)))

(declare-fun b!1045684 () Bool)

(assert (=> b!1045684 (= e!592809 (= (apply!950 lt!461725 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000)) (get!16573 (select (arr!31684 (_values!6443 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!2018 (defaultEntry!6420 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045684 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32220 (_values!6443 thiss!1427))))))

(assert (=> b!1045684 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))))))

(declare-fun b!1045685 () Bool)

(assert (=> b!1045685 (= e!592816 e!592812)))

(declare-fun res!696285 () Bool)

(assert (=> b!1045685 (= res!696285 call!44550)))

(assert (=> b!1045685 (=> (not res!696285) (not e!592812))))

(assert (= (and d!126517 c!106291) b!1045683))

(assert (= (and d!126517 (not c!106291)) b!1045673))

(assert (= (and b!1045673 c!106292) b!1045680))

(assert (= (and b!1045673 (not c!106292)) b!1045672))

(assert (= (and b!1045672 c!106289) b!1045678))

(assert (= (and b!1045672 (not c!106289)) b!1045677))

(assert (= (or b!1045678 b!1045677) bm!44551))

(assert (= (or b!1045680 bm!44551) bm!44547))

(assert (= (or b!1045680 b!1045678) bm!44552))

(assert (= (or b!1045683 bm!44547) bm!44550))

(assert (= (or b!1045683 bm!44552) bm!44546))

(assert (= (and d!126517 res!696289) b!1045682))

(assert (= (and d!126517 c!106290) b!1045666))

(assert (= (and d!126517 (not c!106290)) b!1045679))

(assert (= (and d!126517 res!696284) b!1045665))

(assert (= (and b!1045665 res!696291) b!1045668))

(assert (= (and b!1045665 (not res!696286)) b!1045674))

(assert (= (and b!1045674 res!696292) b!1045684))

(assert (= (and b!1045665 res!696290) b!1045681))

(assert (= (and b!1045681 c!106293) b!1045676))

(assert (= (and b!1045681 (not c!106293)) b!1045669))

(assert (= (and b!1045676 res!696288) b!1045675))

(assert (= (or b!1045676 b!1045669) bm!44549))

(assert (= (and b!1045681 res!696287) b!1045671))

(assert (= (and b!1045671 c!106288) b!1045685))

(assert (= (and b!1045671 (not c!106288)) b!1045667))

(assert (= (and b!1045685 res!696285) b!1045670))

(assert (= (or b!1045685 b!1045667) bm!44548))

(declare-fun b_lambda!16349 () Bool)

(assert (=> (not b_lambda!16349) (not b!1045684)))

(assert (=> b!1045684 t!31420))

(declare-fun b_and!33799 () Bool)

(assert (= b_and!33797 (and (=> t!31420 result!14615) b_and!33799)))

(declare-fun m!965583 () Bool)

(assert (=> b!1045668 m!965583))

(assert (=> b!1045668 m!965583))

(declare-fun m!965585 () Bool)

(assert (=> b!1045668 m!965585))

(assert (=> b!1045684 m!965429))

(declare-fun m!965587 () Bool)

(assert (=> b!1045684 m!965587))

(assert (=> b!1045684 m!965429))

(declare-fun m!965589 () Bool)

(assert (=> b!1045684 m!965589))

(assert (=> b!1045684 m!965583))

(declare-fun m!965591 () Bool)

(assert (=> b!1045684 m!965591))

(assert (=> b!1045684 m!965583))

(assert (=> b!1045684 m!965587))

(declare-fun m!965593 () Bool)

(assert (=> bm!44548 m!965593))

(declare-fun m!965595 () Bool)

(assert (=> b!1045666 m!965595))

(declare-fun m!965597 () Bool)

(assert (=> b!1045666 m!965597))

(assert (=> b!1045666 m!965583))

(declare-fun m!965599 () Bool)

(assert (=> b!1045666 m!965599))

(declare-fun m!965601 () Bool)

(assert (=> b!1045666 m!965601))

(declare-fun m!965603 () Bool)

(assert (=> b!1045666 m!965603))

(declare-fun m!965605 () Bool)

(assert (=> b!1045666 m!965605))

(declare-fun m!965607 () Bool)

(assert (=> b!1045666 m!965607))

(assert (=> b!1045666 m!965605))

(declare-fun m!965609 () Bool)

(assert (=> b!1045666 m!965609))

(declare-fun m!965611 () Bool)

(assert (=> b!1045666 m!965611))

(declare-fun m!965613 () Bool)

(assert (=> b!1045666 m!965613))

(assert (=> b!1045666 m!965599))

(declare-fun m!965615 () Bool)

(assert (=> b!1045666 m!965615))

(declare-fun m!965617 () Bool)

(assert (=> b!1045666 m!965617))

(declare-fun m!965619 () Bool)

(assert (=> b!1045666 m!965619))

(declare-fun m!965621 () Bool)

(assert (=> b!1045666 m!965621))

(declare-fun m!965623 () Bool)

(assert (=> b!1045666 m!965623))

(assert (=> b!1045666 m!965601))

(assert (=> b!1045666 m!965607))

(declare-fun m!965625 () Bool)

(assert (=> b!1045666 m!965625))

(assert (=> b!1045682 m!965583))

(assert (=> b!1045682 m!965583))

(assert (=> b!1045682 m!965585))

(declare-fun m!965627 () Bool)

(assert (=> b!1045670 m!965627))

(declare-fun m!965629 () Bool)

(assert (=> b!1045675 m!965629))

(assert (=> b!1045674 m!965583))

(assert (=> b!1045674 m!965583))

(declare-fun m!965631 () Bool)

(assert (=> b!1045674 m!965631))

(declare-fun m!965633 () Bool)

(assert (=> bm!44546 m!965633))

(assert (=> d!126517 m!965505))

(declare-fun m!965635 () Bool)

(assert (=> b!1045683 m!965635))

(assert (=> bm!44550 m!965597))

(declare-fun m!965637 () Bool)

(assert (=> bm!44549 m!965637))

(assert (=> b!1045522 d!126517))

(declare-fun d!126519 () Bool)

(declare-fun lt!461746 () ListLongMap!13905)

(assert (=> d!126519 (not (contains!6102 lt!461746 key!909))))

(declare-fun removeStrictlySorted!66 (List!22144 (_ BitVec 64)) List!22144)

(assert (=> d!126519 (= lt!461746 (ListLongMap!13906 (removeStrictlySorted!66 (toList!6968 (getCurrentListMap!3974 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427))) key!909)))))

(assert (=> d!126519 (= (-!544 (getCurrentListMap!3974 (_keys!11689 thiss!1427) (_values!6443 thiss!1427) (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)) key!909) lt!461746)))

(declare-fun bs!30527 () Bool)

(assert (= bs!30527 d!126519))

(declare-fun m!965639 () Bool)

(assert (=> bs!30527 m!965639))

(declare-fun m!965641 () Bool)

(assert (=> bs!30527 m!965641))

(assert (=> b!1045522 d!126519))

(declare-fun d!126521 () Bool)

(declare-fun res!696297 () Bool)

(declare-fun e!592821 () Bool)

(assert (=> d!126521 (=> res!696297 e!592821)))

(assert (=> d!126521 (= res!696297 (= (select (arr!31683 lt!461596) #b00000000000000000000000000000000) key!909))))

(assert (=> d!126521 (= (arrayContainsKey!0 lt!461596 key!909 #b00000000000000000000000000000000) e!592821)))

(declare-fun b!1045690 () Bool)

(declare-fun e!592822 () Bool)

(assert (=> b!1045690 (= e!592821 e!592822)))

(declare-fun res!696298 () Bool)

(assert (=> b!1045690 (=> (not res!696298) (not e!592822))))

(assert (=> b!1045690 (= res!696298 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32219 lt!461596)))))

(declare-fun b!1045691 () Bool)

(assert (=> b!1045691 (= e!592822 (arrayContainsKey!0 lt!461596 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!126521 (not res!696297)) b!1045690))

(assert (= (and b!1045690 res!696298) b!1045691))

(assert (=> d!126521 m!965507))

(declare-fun m!965643 () Bool)

(assert (=> b!1045691 m!965643))

(assert (=> b!1045522 d!126521))

(declare-fun b!1045702 () Bool)

(declare-fun e!592832 () Bool)

(declare-fun e!592831 () Bool)

(assert (=> b!1045702 (= e!592832 e!592831)))

(declare-fun c!106296 () Bool)

(assert (=> b!1045702 (= c!106296 (validKeyInArray!0 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(declare-fun bm!44555 () Bool)

(declare-fun call!44558 () Bool)

(assert (=> bm!44555 (= call!44558 (arrayNoDuplicates!0 lt!461596 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106296 (Cons!22141 (select (arr!31683 lt!461596) #b00000000000000000000000000000000) Nil!22142) Nil!22142)))))

(declare-fun b!1045703 () Bool)

(declare-fun e!592833 () Bool)

(assert (=> b!1045703 (= e!592833 e!592832)))

(declare-fun res!696306 () Bool)

(assert (=> b!1045703 (=> (not res!696306) (not e!592832))))

(declare-fun e!592834 () Bool)

(assert (=> b!1045703 (= res!696306 (not e!592834))))

(declare-fun res!696307 () Bool)

(assert (=> b!1045703 (=> (not res!696307) (not e!592834))))

(assert (=> b!1045703 (= res!696307 (validKeyInArray!0 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(declare-fun d!126523 () Bool)

(declare-fun res!696305 () Bool)

(assert (=> d!126523 (=> res!696305 e!592833)))

(assert (=> d!126523 (= res!696305 (bvsge #b00000000000000000000000000000000 (size!32219 lt!461596)))))

(assert (=> d!126523 (= (arrayNoDuplicates!0 lt!461596 #b00000000000000000000000000000000 Nil!22142) e!592833)))

(declare-fun b!1045704 () Bool)

(assert (=> b!1045704 (= e!592831 call!44558)))

(declare-fun b!1045705 () Bool)

(declare-fun contains!6103 (List!22145 (_ BitVec 64)) Bool)

(assert (=> b!1045705 (= e!592834 (contains!6103 Nil!22142 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(declare-fun b!1045706 () Bool)

(assert (=> b!1045706 (= e!592831 call!44558)))

(assert (= (and d!126523 (not res!696305)) b!1045703))

(assert (= (and b!1045703 res!696307) b!1045705))

(assert (= (and b!1045703 res!696306) b!1045702))

(assert (= (and b!1045702 c!106296) b!1045704))

(assert (= (and b!1045702 (not c!106296)) b!1045706))

(assert (= (or b!1045704 b!1045706) bm!44555))

(assert (=> b!1045702 m!965507))

(assert (=> b!1045702 m!965507))

(assert (=> b!1045702 m!965509))

(assert (=> bm!44555 m!965507))

(declare-fun m!965645 () Bool)

(assert (=> bm!44555 m!965645))

(assert (=> b!1045703 m!965507))

(assert (=> b!1045703 m!965507))

(assert (=> b!1045703 m!965509))

(assert (=> b!1045705 m!965507))

(assert (=> b!1045705 m!965507))

(declare-fun m!965647 () Bool)

(assert (=> b!1045705 m!965647))

(assert (=> b!1045522 d!126523))

(declare-fun b!1045715 () Bool)

(declare-fun res!696316 () Bool)

(declare-fun e!592840 () Bool)

(assert (=> b!1045715 (=> (not res!696316) (not e!592840))))

(assert (=> b!1045715 (= res!696316 (validKeyInArray!0 (select (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461600))))))

(declare-fun b!1045716 () Bool)

(declare-fun res!696319 () Bool)

(assert (=> b!1045716 (=> (not res!696319) (not e!592840))))

(assert (=> b!1045716 (= res!696319 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1045717 () Bool)

(assert (=> b!1045717 (= e!592840 (bvslt (size!32219 (_keys!11689 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1045718 () Bool)

(declare-fun e!592839 () Bool)

(assert (=> b!1045718 (= e!592839 (= (arrayCountValidKeys!0 (array!65883 (store (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32219 (_keys!11689 thiss!1427))) #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11689 thiss!1427) #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) #b00000000000000000000000000000001)))))

(declare-fun d!126525 () Bool)

(assert (=> d!126525 e!592839))

(declare-fun res!696318 () Bool)

(assert (=> d!126525 (=> (not res!696318) (not e!592839))))

(assert (=> d!126525 (= res!696318 (and (bvsge (index!41759 lt!461600) #b00000000000000000000000000000000) (bvslt (index!41759 lt!461600) (size!32219 (_keys!11689 thiss!1427)))))))

(declare-fun lt!461749 () Unit!34146)

(declare-fun choose!82 (array!65882 (_ BitVec 32) (_ BitVec 64)) Unit!34146)

(assert (=> d!126525 (= lt!461749 (choose!82 (_keys!11689 thiss!1427) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!126525 e!592840))

(declare-fun res!696317 () Bool)

(assert (=> d!126525 (=> (not res!696317) (not e!592840))))

(assert (=> d!126525 (= res!696317 (and (bvsge (index!41759 lt!461600) #b00000000000000000000000000000000) (bvslt (index!41759 lt!461600) (size!32219 (_keys!11689 thiss!1427)))))))

(assert (=> d!126525 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11689 thiss!1427) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000) lt!461749)))

(assert (= (and d!126525 res!696317) b!1045715))

(assert (= (and b!1045715 res!696316) b!1045716))

(assert (= (and b!1045716 res!696319) b!1045717))

(assert (= (and d!126525 res!696318) b!1045718))

(declare-fun m!965649 () Bool)

(assert (=> b!1045715 m!965649))

(assert (=> b!1045715 m!965649))

(declare-fun m!965651 () Bool)

(assert (=> b!1045715 m!965651))

(declare-fun m!965653 () Bool)

(assert (=> b!1045716 m!965653))

(assert (=> b!1045718 m!965399))

(declare-fun m!965655 () Bool)

(assert (=> b!1045718 m!965655))

(assert (=> b!1045718 m!965401))

(declare-fun m!965657 () Bool)

(assert (=> d!126525 m!965657))

(assert (=> b!1045522 d!126525))

(declare-fun d!126527 () Bool)

(declare-fun e!592843 () Bool)

(assert (=> d!126527 e!592843))

(declare-fun res!696322 () Bool)

(assert (=> d!126527 (=> (not res!696322) (not e!592843))))

(assert (=> d!126527 (= res!696322 (and (bvsge (index!41759 lt!461600) #b00000000000000000000000000000000) (bvslt (index!41759 lt!461600) (size!32219 (_keys!11689 thiss!1427)))))))

(declare-fun lt!461752 () Unit!34146)

(declare-fun choose!53 (array!65882 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22145) Unit!34146)

(assert (=> d!126527 (= lt!461752 (choose!53 (_keys!11689 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41759 lt!461600) #b00000000000000000000000000000000 Nil!22142))))

(assert (=> d!126527 (bvslt (size!32219 (_keys!11689 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!126527 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11689 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41759 lt!461600) #b00000000000000000000000000000000 Nil!22142) lt!461752)))

(declare-fun b!1045721 () Bool)

(assert (=> b!1045721 (= e!592843 (arrayNoDuplicates!0 (array!65883 (store (arr!31683 (_keys!11689 thiss!1427)) (index!41759 lt!461600) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32219 (_keys!11689 thiss!1427))) #b00000000000000000000000000000000 Nil!22142))))

(assert (= (and d!126527 res!696322) b!1045721))

(declare-fun m!965659 () Bool)

(assert (=> d!126527 m!965659))

(assert (=> b!1045721 m!965399))

(declare-fun m!965661 () Bool)

(assert (=> b!1045721 m!965661))

(assert (=> b!1045522 d!126527))

(declare-fun d!126529 () Bool)

(declare-fun res!696328 () Bool)

(declare-fun e!592852 () Bool)

(assert (=> d!126529 (=> res!696328 e!592852)))

(assert (=> d!126529 (= res!696328 (bvsge #b00000000000000000000000000000000 (size!32219 lt!461596)))))

(assert (=> d!126529 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461596 (mask!30546 thiss!1427)) e!592852)))

(declare-fun b!1045730 () Bool)

(declare-fun e!592850 () Bool)

(declare-fun call!44561 () Bool)

(assert (=> b!1045730 (= e!592850 call!44561)))

(declare-fun b!1045731 () Bool)

(declare-fun e!592851 () Bool)

(assert (=> b!1045731 (= e!592850 e!592851)))

(declare-fun lt!461761 () (_ BitVec 64))

(assert (=> b!1045731 (= lt!461761 (select (arr!31683 lt!461596) #b00000000000000000000000000000000))))

(declare-fun lt!461760 () Unit!34146)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!65882 (_ BitVec 64) (_ BitVec 32)) Unit!34146)

(assert (=> b!1045731 (= lt!461760 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!461596 lt!461761 #b00000000000000000000000000000000))))

(assert (=> b!1045731 (arrayContainsKey!0 lt!461596 lt!461761 #b00000000000000000000000000000000)))

(declare-fun lt!461759 () Unit!34146)

(assert (=> b!1045731 (= lt!461759 lt!461760)))

(declare-fun res!696327 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!65882 (_ BitVec 32)) SeekEntryResult!9847)

(assert (=> b!1045731 (= res!696327 (= (seekEntryOrOpen!0 (select (arr!31683 lt!461596) #b00000000000000000000000000000000) lt!461596 (mask!30546 thiss!1427)) (Found!9847 #b00000000000000000000000000000000)))))

(assert (=> b!1045731 (=> (not res!696327) (not e!592851))))

(declare-fun b!1045732 () Bool)

(assert (=> b!1045732 (= e!592852 e!592850)))

(declare-fun c!106299 () Bool)

(assert (=> b!1045732 (= c!106299 (validKeyInArray!0 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(declare-fun b!1045733 () Bool)

(assert (=> b!1045733 (= e!592851 call!44561)))

(declare-fun bm!44558 () Bool)

(assert (=> bm!44558 (= call!44561 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!461596 (mask!30546 thiss!1427)))))

(assert (= (and d!126529 (not res!696328)) b!1045732))

(assert (= (and b!1045732 c!106299) b!1045731))

(assert (= (and b!1045732 (not c!106299)) b!1045730))

(assert (= (and b!1045731 res!696327) b!1045733))

(assert (= (or b!1045733 b!1045730) bm!44558))

(assert (=> b!1045731 m!965507))

(declare-fun m!965663 () Bool)

(assert (=> b!1045731 m!965663))

(declare-fun m!965665 () Bool)

(assert (=> b!1045731 m!965665))

(assert (=> b!1045731 m!965507))

(declare-fun m!965667 () Bool)

(assert (=> b!1045731 m!965667))

(assert (=> b!1045732 m!965507))

(assert (=> b!1045732 m!965507))

(assert (=> b!1045732 m!965509))

(declare-fun m!965669 () Bool)

(assert (=> bm!44558 m!965669))

(assert (=> b!1045522 d!126529))

(declare-fun b!1045734 () Bool)

(declare-fun res!696335 () Bool)

(declare-fun e!592853 () Bool)

(assert (=> b!1045734 (=> (not res!696335) (not e!592853))))

(declare-fun e!592862 () Bool)

(assert (=> b!1045734 (= res!696335 e!592862)))

(declare-fun res!696331 () Bool)

(assert (=> b!1045734 (=> res!696331 e!592862)))

(declare-fun e!592855 () Bool)

(assert (=> b!1045734 (= res!696331 (not e!592855))))

(declare-fun res!696336 () Bool)

(assert (=> b!1045734 (=> (not res!696336) (not e!592855))))

(assert (=> b!1045734 (= res!696336 (bvslt #b00000000000000000000000000000000 (size!32219 lt!461596)))))

(declare-fun call!44562 () ListLongMap!13905)

(declare-fun call!44567 () ListLongMap!13905)

(declare-fun call!44568 () ListLongMap!13905)

(declare-fun c!106303 () Bool)

(declare-fun c!106304 () Bool)

(declare-fun call!44566 () ListLongMap!13905)

(declare-fun bm!44559 () Bool)

(assert (=> bm!44559 (= call!44568 (+!3073 (ite c!106303 call!44566 (ite c!106304 call!44567 call!44562)) (ite (or c!106303 c!106304) (tuple2!15895 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!6254 thiss!1427)) (tuple2!15895 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6254 thiss!1427)))))))

(declare-fun b!1045735 () Bool)

(declare-fun e!592857 () Unit!34146)

(declare-fun lt!461762 () Unit!34146)

(assert (=> b!1045735 (= e!592857 lt!461762)))

(declare-fun lt!461780 () ListLongMap!13905)

(assert (=> b!1045735 (= lt!461780 (getCurrentListMapNoExtraKeys!3543 lt!461596 lt!461601 (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461764 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461764 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461768 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461768 (select (arr!31683 lt!461596) #b00000000000000000000000000000000))))

(declare-fun lt!461772 () Unit!34146)

(assert (=> b!1045735 (= lt!461772 (addStillContains!638 lt!461780 lt!461764 (zeroValue!6254 thiss!1427) lt!461768))))

(assert (=> b!1045735 (contains!6102 (+!3073 lt!461780 (tuple2!15895 lt!461764 (zeroValue!6254 thiss!1427))) lt!461768)))

(declare-fun lt!461777 () Unit!34146)

(assert (=> b!1045735 (= lt!461777 lt!461772)))

(declare-fun lt!461774 () ListLongMap!13905)

(assert (=> b!1045735 (= lt!461774 (getCurrentListMapNoExtraKeys!3543 lt!461596 lt!461601 (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461782 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461782 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461781 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461781 (select (arr!31683 lt!461596) #b00000000000000000000000000000000))))

(declare-fun lt!461771 () Unit!34146)

(assert (=> b!1045735 (= lt!461771 (addApplyDifferent!490 lt!461774 lt!461782 (minValue!6254 thiss!1427) lt!461781))))

(assert (=> b!1045735 (= (apply!950 (+!3073 lt!461774 (tuple2!15895 lt!461782 (minValue!6254 thiss!1427))) lt!461781) (apply!950 lt!461774 lt!461781))))

(declare-fun lt!461767 () Unit!34146)

(assert (=> b!1045735 (= lt!461767 lt!461771)))

(declare-fun lt!461763 () ListLongMap!13905)

(assert (=> b!1045735 (= lt!461763 (getCurrentListMapNoExtraKeys!3543 lt!461596 lt!461601 (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461769 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461769 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461770 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461770 (select (arr!31683 lt!461596) #b00000000000000000000000000000000))))

(declare-fun lt!461773 () Unit!34146)

(assert (=> b!1045735 (= lt!461773 (addApplyDifferent!490 lt!461763 lt!461769 (zeroValue!6254 thiss!1427) lt!461770))))

(assert (=> b!1045735 (= (apply!950 (+!3073 lt!461763 (tuple2!15895 lt!461769 (zeroValue!6254 thiss!1427))) lt!461770) (apply!950 lt!461763 lt!461770))))

(declare-fun lt!461779 () Unit!34146)

(assert (=> b!1045735 (= lt!461779 lt!461773)))

(declare-fun lt!461778 () ListLongMap!13905)

(assert (=> b!1045735 (= lt!461778 (getCurrentListMapNoExtraKeys!3543 lt!461596 lt!461601 (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun lt!461766 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461766 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!461776 () (_ BitVec 64))

(assert (=> b!1045735 (= lt!461776 (select (arr!31683 lt!461596) #b00000000000000000000000000000000))))

(assert (=> b!1045735 (= lt!461762 (addApplyDifferent!490 lt!461778 lt!461766 (minValue!6254 thiss!1427) lt!461776))))

(assert (=> b!1045735 (= (apply!950 (+!3073 lt!461778 (tuple2!15895 lt!461766 (minValue!6254 thiss!1427))) lt!461776) (apply!950 lt!461778 lt!461776))))

(declare-fun b!1045736 () Bool)

(declare-fun e!592865 () Bool)

(declare-fun call!44563 () Bool)

(assert (=> b!1045736 (= e!592865 (not call!44563))))

(declare-fun b!1045737 () Bool)

(assert (=> b!1045737 (= e!592855 (validKeyInArray!0 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(declare-fun bm!44560 () Bool)

(assert (=> bm!44560 (= call!44567 call!44566)))

(declare-fun b!1045739 () Bool)

(declare-fun e!592861 () Bool)

(declare-fun lt!461765 () ListLongMap!13905)

(assert (=> b!1045739 (= e!592861 (= (apply!950 lt!461765 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!6254 thiss!1427)))))

(declare-fun b!1045740 () Bool)

(assert (=> b!1045740 (= e!592853 e!592865)))

(declare-fun c!106300 () Bool)

(assert (=> b!1045740 (= c!106300 (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045741 () Bool)

(declare-fun c!106301 () Bool)

(assert (=> b!1045741 (= c!106301 (and (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!592864 () ListLongMap!13905)

(declare-fun e!592856 () ListLongMap!13905)

(assert (=> b!1045741 (= e!592864 e!592856)))

(declare-fun b!1045742 () Bool)

(declare-fun e!592863 () ListLongMap!13905)

(assert (=> b!1045742 (= e!592863 e!592864)))

(assert (=> b!1045742 (= c!106304 (and (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1045743 () Bool)

(declare-fun e!592858 () Bool)

(assert (=> b!1045743 (= e!592862 e!592858)))

(declare-fun res!696337 () Bool)

(assert (=> b!1045743 (=> (not res!696337) (not e!592858))))

(assert (=> b!1045743 (= res!696337 (contains!6102 lt!461765 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(assert (=> b!1045743 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 lt!461596)))))

(declare-fun bm!44561 () Bool)

(assert (=> bm!44561 (= call!44563 (contains!6102 lt!461765 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045744 () Bool)

(declare-fun e!592859 () Bool)

(assert (=> b!1045744 (= e!592859 (= (apply!950 lt!461765 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!6254 thiss!1427)))))

(declare-fun bm!44562 () Bool)

(declare-fun call!44565 () Bool)

(assert (=> bm!44562 (= call!44565 (contains!6102 lt!461765 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!44563 () Bool)

(assert (=> bm!44563 (= call!44566 (getCurrentListMapNoExtraKeys!3543 lt!461596 lt!461601 (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)))))

(declare-fun b!1045745 () Bool)

(declare-fun e!592860 () Bool)

(assert (=> b!1045745 (= e!592860 e!592859)))

(declare-fun res!696333 () Bool)

(assert (=> b!1045745 (= res!696333 call!44565)))

(assert (=> b!1045745 (=> (not res!696333) (not e!592859))))

(declare-fun b!1045746 () Bool)

(assert (=> b!1045746 (= e!592856 call!44562)))

(declare-fun b!1045747 () Bool)

(declare-fun call!44564 () ListLongMap!13905)

(assert (=> b!1045747 (= e!592856 call!44564)))

(declare-fun b!1045748 () Bool)

(declare-fun Unit!34154 () Unit!34146)

(assert (=> b!1045748 (= e!592857 Unit!34154)))

(declare-fun bm!44564 () Bool)

(assert (=> bm!44564 (= call!44562 call!44567)))

(declare-fun b!1045749 () Bool)

(assert (=> b!1045749 (= e!592864 call!44564)))

(declare-fun b!1045750 () Bool)

(declare-fun res!696332 () Bool)

(assert (=> b!1045750 (=> (not res!696332) (not e!592853))))

(assert (=> b!1045750 (= res!696332 e!592860)))

(declare-fun c!106305 () Bool)

(assert (=> b!1045750 (= c!106305 (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1045751 () Bool)

(declare-fun e!592854 () Bool)

(assert (=> b!1045751 (= e!592854 (validKeyInArray!0 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)))))

(declare-fun b!1045752 () Bool)

(assert (=> b!1045752 (= e!592863 (+!3073 call!44568 (tuple2!15895 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!6254 thiss!1427))))))

(declare-fun bm!44565 () Bool)

(assert (=> bm!44565 (= call!44564 call!44568)))

(declare-fun b!1045738 () Bool)

(assert (=> b!1045738 (= e!592860 (not call!44565))))

(declare-fun d!126531 () Bool)

(assert (=> d!126531 e!592853))

(declare-fun res!696329 () Bool)

(assert (=> d!126531 (=> (not res!696329) (not e!592853))))

(assert (=> d!126531 (= res!696329 (or (bvsge #b00000000000000000000000000000000 (size!32219 lt!461596)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 lt!461596)))))))

(declare-fun lt!461783 () ListLongMap!13905)

(assert (=> d!126531 (= lt!461765 lt!461783)))

(declare-fun lt!461775 () Unit!34146)

(assert (=> d!126531 (= lt!461775 e!592857)))

(declare-fun c!106302 () Bool)

(assert (=> d!126531 (= c!106302 e!592854)))

(declare-fun res!696334 () Bool)

(assert (=> d!126531 (=> (not res!696334) (not e!592854))))

(assert (=> d!126531 (= res!696334 (bvslt #b00000000000000000000000000000000 (size!32219 lt!461596)))))

(assert (=> d!126531 (= lt!461783 e!592863)))

(assert (=> d!126531 (= c!106303 (and (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6148 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!126531 (validMask!0 (mask!30546 thiss!1427))))

(assert (=> d!126531 (= (getCurrentListMap!3974 lt!461596 lt!461601 (mask!30546 thiss!1427) (extraKeys!6148 thiss!1427) (zeroValue!6254 thiss!1427) (minValue!6254 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6420 thiss!1427)) lt!461765)))

(declare-fun b!1045753 () Bool)

(assert (=> b!1045753 (= e!592858 (= (apply!950 lt!461765 (select (arr!31683 lt!461596) #b00000000000000000000000000000000)) (get!16573 (select (arr!31684 lt!461601) #b00000000000000000000000000000000) (dynLambda!2018 (defaultEntry!6420 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1045753 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32220 lt!461601)))))

(assert (=> b!1045753 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32219 lt!461596)))))

(declare-fun b!1045754 () Bool)

(assert (=> b!1045754 (= e!592865 e!592861)))

(declare-fun res!696330 () Bool)

(assert (=> b!1045754 (= res!696330 call!44563)))

(assert (=> b!1045754 (=> (not res!696330) (not e!592861))))

(assert (= (and d!126531 c!106303) b!1045752))

(assert (= (and d!126531 (not c!106303)) b!1045742))

(assert (= (and b!1045742 c!106304) b!1045749))

(assert (= (and b!1045742 (not c!106304)) b!1045741))

(assert (= (and b!1045741 c!106301) b!1045747))

(assert (= (and b!1045741 (not c!106301)) b!1045746))

(assert (= (or b!1045747 b!1045746) bm!44564))

(assert (= (or b!1045749 bm!44564) bm!44560))

(assert (= (or b!1045749 b!1045747) bm!44565))

(assert (= (or b!1045752 bm!44560) bm!44563))

(assert (= (or b!1045752 bm!44565) bm!44559))

(assert (= (and d!126531 res!696334) b!1045751))

(assert (= (and d!126531 c!106302) b!1045735))

(assert (= (and d!126531 (not c!106302)) b!1045748))

(assert (= (and d!126531 res!696329) b!1045734))

(assert (= (and b!1045734 res!696336) b!1045737))

(assert (= (and b!1045734 (not res!696331)) b!1045743))

(assert (= (and b!1045743 res!696337) b!1045753))

(assert (= (and b!1045734 res!696335) b!1045750))

(assert (= (and b!1045750 c!106305) b!1045745))

(assert (= (and b!1045750 (not c!106305)) b!1045738))

(assert (= (and b!1045745 res!696333) b!1045744))

(assert (= (or b!1045745 b!1045738) bm!44562))

(assert (= (and b!1045750 res!696332) b!1045740))

(assert (= (and b!1045740 c!106300) b!1045754))

(assert (= (and b!1045740 (not c!106300)) b!1045736))

(assert (= (and b!1045754 res!696330) b!1045739))

(assert (= (or b!1045754 b!1045736) bm!44561))

(declare-fun b_lambda!16351 () Bool)

(assert (=> (not b_lambda!16351) (not b!1045753)))

(assert (=> b!1045753 t!31420))

(declare-fun b_and!33801 () Bool)

(assert (= b_and!33799 (and (=> t!31420 result!14615) b_and!33801)))

(assert (=> b!1045737 m!965507))

(assert (=> b!1045737 m!965507))

(assert (=> b!1045737 m!965509))

(assert (=> b!1045753 m!965429))

(declare-fun m!965671 () Bool)

(assert (=> b!1045753 m!965671))

(assert (=> b!1045753 m!965429))

(declare-fun m!965673 () Bool)

(assert (=> b!1045753 m!965673))

(assert (=> b!1045753 m!965507))

(declare-fun m!965675 () Bool)

(assert (=> b!1045753 m!965675))

(assert (=> b!1045753 m!965507))

(assert (=> b!1045753 m!965671))

(declare-fun m!965677 () Bool)

(assert (=> bm!44561 m!965677))

(declare-fun m!965679 () Bool)

(assert (=> b!1045735 m!965679))

(declare-fun m!965681 () Bool)

(assert (=> b!1045735 m!965681))

(assert (=> b!1045735 m!965507))

(declare-fun m!965683 () Bool)

(assert (=> b!1045735 m!965683))

(declare-fun m!965685 () Bool)

(assert (=> b!1045735 m!965685))

(declare-fun m!965687 () Bool)

(assert (=> b!1045735 m!965687))

(declare-fun m!965689 () Bool)

(assert (=> b!1045735 m!965689))

(declare-fun m!965691 () Bool)

(assert (=> b!1045735 m!965691))

(assert (=> b!1045735 m!965689))

(declare-fun m!965693 () Bool)

(assert (=> b!1045735 m!965693))

(declare-fun m!965695 () Bool)

(assert (=> b!1045735 m!965695))

(declare-fun m!965697 () Bool)

(assert (=> b!1045735 m!965697))

(assert (=> b!1045735 m!965683))

(declare-fun m!965699 () Bool)

(assert (=> b!1045735 m!965699))

(declare-fun m!965701 () Bool)

(assert (=> b!1045735 m!965701))

(declare-fun m!965703 () Bool)

(assert (=> b!1045735 m!965703))

(declare-fun m!965705 () Bool)

(assert (=> b!1045735 m!965705))

(declare-fun m!965707 () Bool)

(assert (=> b!1045735 m!965707))

(assert (=> b!1045735 m!965685))

(assert (=> b!1045735 m!965691))

(declare-fun m!965709 () Bool)

(assert (=> b!1045735 m!965709))

(assert (=> b!1045751 m!965507))

(assert (=> b!1045751 m!965507))

(assert (=> b!1045751 m!965509))

(declare-fun m!965711 () Bool)

(assert (=> b!1045739 m!965711))

(declare-fun m!965713 () Bool)

(assert (=> b!1045744 m!965713))

(assert (=> b!1045743 m!965507))

(assert (=> b!1045743 m!965507))

(declare-fun m!965715 () Bool)

(assert (=> b!1045743 m!965715))

(declare-fun m!965717 () Bool)

(assert (=> bm!44559 m!965717))

(assert (=> d!126531 m!965505))

(declare-fun m!965719 () Bool)

(assert (=> b!1045752 m!965719))

(assert (=> bm!44563 m!965681))

(declare-fun m!965721 () Bool)

(assert (=> bm!44562 m!965721))

(assert (=> b!1045522 d!126531))

(declare-fun b!1045755 () Bool)

(declare-fun e!592866 () (_ BitVec 32))

(assert (=> b!1045755 (= e!592866 #b00000000000000000000000000000000)))

(declare-fun b!1045756 () Bool)

(declare-fun e!592867 () (_ BitVec 32))

(declare-fun call!44569 () (_ BitVec 32))

(assert (=> b!1045756 (= e!592867 (bvadd #b00000000000000000000000000000001 call!44569))))

(declare-fun b!1045757 () Bool)

(assert (=> b!1045757 (= e!592866 e!592867)))

(declare-fun c!106307 () Bool)

(assert (=> b!1045757 (= c!106307 (validKeyInArray!0 (select (arr!31683 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun d!126533 () Bool)

(declare-fun lt!461784 () (_ BitVec 32))

(assert (=> d!126533 (and (bvsge lt!461784 #b00000000000000000000000000000000) (bvsle lt!461784 (bvsub (size!32219 (_keys!11689 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> d!126533 (= lt!461784 e!592866)))

(declare-fun c!106306 () Bool)

(assert (=> d!126533 (= c!106306 (bvsge #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))))))

(assert (=> d!126533 (and (bvsle #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!32219 (_keys!11689 thiss!1427)) (size!32219 (_keys!11689 thiss!1427))))))

(assert (=> d!126533 (= (arrayCountValidKeys!0 (_keys!11689 thiss!1427) #b00000000000000000000000000000000 (size!32219 (_keys!11689 thiss!1427))) lt!461784)))

(declare-fun bm!44566 () Bool)

(assert (=> bm!44566 (= call!44569 (arrayCountValidKeys!0 (_keys!11689 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32219 (_keys!11689 thiss!1427))))))

(declare-fun b!1045758 () Bool)

(assert (=> b!1045758 (= e!592867 call!44569)))

(assert (= (and d!126533 c!106306) b!1045755))

(assert (= (and d!126533 (not c!106306)) b!1045757))

(assert (= (and b!1045757 c!106307) b!1045756))

(assert (= (and b!1045757 (not c!106307)) b!1045758))

(assert (= (or b!1045756 b!1045758) bm!44566))

(assert (=> b!1045757 m!965583))

(assert (=> b!1045757 m!965583))

(assert (=> b!1045757 m!965585))

(declare-fun m!965723 () Bool)

(assert (=> bm!44566 m!965723))

(assert (=> b!1045522 d!126533))

(declare-fun d!126535 () Bool)

(declare-fun e!592872 () Bool)

(assert (=> d!126535 e!592872))

(declare-fun res!696340 () Bool)

(assert (=> d!126535 (=> res!696340 e!592872)))

(declare-fun lt!461793 () Bool)

(assert (=> d!126535 (= res!696340 (not lt!461793))))

(declare-fun lt!461794 () Bool)

(assert (=> d!126535 (= lt!461793 lt!461794)))

(declare-fun lt!461796 () Unit!34146)

(declare-fun e!592873 () Unit!34146)

(assert (=> d!126535 (= lt!461796 e!592873)))

(declare-fun c!106310 () Bool)

(assert (=> d!126535 (= c!106310 lt!461794)))

(declare-fun containsKey!571 (List!22144 (_ BitVec 64)) Bool)

(assert (=> d!126535 (= lt!461794 (containsKey!571 (toList!6968 (getCurrentListMap!3974 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599)))) key!909))))

(assert (=> d!126535 (= (contains!6102 (getCurrentListMap!3974 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599))) key!909) lt!461793)))

(declare-fun b!1045765 () Bool)

(declare-fun lt!461795 () Unit!34146)

(assert (=> b!1045765 (= e!592873 lt!461795)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!403 (List!22144 (_ BitVec 64)) Unit!34146)

(assert (=> b!1045765 (= lt!461795 (lemmaContainsKeyImpliesGetValueByKeyDefined!403 (toList!6968 (getCurrentListMap!3974 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599)))) key!909))))

(declare-datatypes ((Option!649 0))(
  ( (Some!648 (v!15080 V!38021)) (None!647) )
))
(declare-fun isDefined!443 (Option!649) Bool)

(declare-fun getValueByKey!598 (List!22144 (_ BitVec 64)) Option!649)

(assert (=> b!1045765 (isDefined!443 (getValueByKey!598 (toList!6968 (getCurrentListMap!3974 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599)))) key!909))))

(declare-fun b!1045766 () Bool)

(declare-fun Unit!34155 () Unit!34146)

(assert (=> b!1045766 (= e!592873 Unit!34155)))

(declare-fun b!1045767 () Bool)

(assert (=> b!1045767 (= e!592872 (isDefined!443 (getValueByKey!598 (toList!6968 (getCurrentListMap!3974 (_keys!11689 (_2!7956 lt!461599)) (_values!6443 (_2!7956 lt!461599)) (mask!30546 (_2!7956 lt!461599)) (extraKeys!6148 (_2!7956 lt!461599)) (zeroValue!6254 (_2!7956 lt!461599)) (minValue!6254 (_2!7956 lt!461599)) #b00000000000000000000000000000000 (defaultEntry!6420 (_2!7956 lt!461599)))) key!909)))))

(assert (= (and d!126535 c!106310) b!1045765))

(assert (= (and d!126535 (not c!106310)) b!1045766))

(assert (= (and d!126535 (not res!696340)) b!1045767))

(declare-fun m!965725 () Bool)

(assert (=> d!126535 m!965725))

(declare-fun m!965727 () Bool)

(assert (=> b!1045765 m!965727))

(declare-fun m!965729 () Bool)

(assert (=> b!1045765 m!965729))

(assert (=> b!1045765 m!965729))

(declare-fun m!965731 () Bool)

(assert (=> b!1045765 m!965731))

(assert (=> b!1045767 m!965729))

(assert (=> b!1045767 m!965729))

(assert (=> b!1045767 m!965731))

(assert (=> b!1045522 d!126535))

(declare-fun mapNonEmpty!38939 () Bool)

(declare-fun mapRes!38939 () Bool)

(declare-fun tp!74692 () Bool)

(declare-fun e!592879 () Bool)

(assert (=> mapNonEmpty!38939 (= mapRes!38939 (and tp!74692 e!592879))))

(declare-fun mapKey!38939 () (_ BitVec 32))

(declare-fun mapValue!38939 () ValueCell!11727)

(declare-fun mapRest!38939 () (Array (_ BitVec 32) ValueCell!11727))

(assert (=> mapNonEmpty!38939 (= mapRest!38933 (store mapRest!38939 mapKey!38939 mapValue!38939))))

(declare-fun b!1045775 () Bool)

(declare-fun e!592878 () Bool)

(assert (=> b!1045775 (= e!592878 tp_is_empty!24861)))

(declare-fun condMapEmpty!38939 () Bool)

(declare-fun mapDefault!38939 () ValueCell!11727)

(assert (=> mapNonEmpty!38933 (= condMapEmpty!38939 (= mapRest!38933 ((as const (Array (_ BitVec 32) ValueCell!11727)) mapDefault!38939)))))

(assert (=> mapNonEmpty!38933 (= tp!74683 (and e!592878 mapRes!38939))))

(declare-fun mapIsEmpty!38939 () Bool)

(assert (=> mapIsEmpty!38939 mapRes!38939))

(declare-fun b!1045774 () Bool)

(assert (=> b!1045774 (= e!592879 tp_is_empty!24861)))

(assert (= (and mapNonEmpty!38933 condMapEmpty!38939) mapIsEmpty!38939))

(assert (= (and mapNonEmpty!38933 (not condMapEmpty!38939)) mapNonEmpty!38939))

(assert (= (and mapNonEmpty!38939 ((_ is ValueCellFull!11727) mapValue!38939)) b!1045774))

(assert (= (and mapNonEmpty!38933 ((_ is ValueCellFull!11727) mapDefault!38939)) b!1045775))

(declare-fun m!965733 () Bool)

(assert (=> mapNonEmpty!38939 m!965733))

(declare-fun b_lambda!16353 () Bool)

(assert (= b_lambda!16347 (or (and b!1045520 b_free!21141) b_lambda!16353)))

(declare-fun b_lambda!16355 () Bool)

(assert (= b_lambda!16349 (or (and b!1045520 b_free!21141) b_lambda!16355)))

(declare-fun b_lambda!16357 () Bool)

(assert (= b_lambda!16351 (or (and b!1045520 b_free!21141) b_lambda!16357)))

(check-sat (not b!1045684) (not bm!44563) (not bm!44555) (not bm!44524) (not b!1045744) (not b!1045560) (not b!1045647) (not b!1045731) (not b!1045691) (not bm!44559) (not bm!44539) (not b!1045668) (not b!1045702) (not b!1045703) (not b!1045735) (not b!1045641) (not b!1045675) (not b!1045664) (not b_next!21141) (not d!126503) (not d!126527) (not b!1045753) (not b!1045757) (not b!1045751) (not b!1045655) (not b!1045752) (not b!1045716) (not b!1045661) (not d!126501) (not b!1045715) (not b!1045737) (not b!1045666) (not b_lambda!16357) (not bm!44543) (not d!126531) (not b!1045648) (not bm!44541) (not d!126517) (not b!1045643) (not d!126519) (not b!1045656) (not b!1045674) (not b!1045765) (not b!1045683) (not b!1045721) (not b!1045682) tp_is_empty!24861 (not b_lambda!16345) (not b!1045718) (not b!1045743) (not bm!44566) (not d!126535) (not d!126511) (not d!126515) (not mapNonEmpty!38939) (not b!1045705) (not b!1045639) (not b!1045561) (not bm!44546) (not b!1045576) (not bm!44558) (not d!126525) (not b!1045562) (not b!1045670) (not d!126513) (not b!1045595) (not bm!44562) (not b_lambda!16353) (not b!1045657) (not d!126509) (not bm!44542) b_and!33801 (not b_lambda!16343) (not bm!44550) (not b!1045739) (not bm!44549) (not bm!44561) (not b!1045591) (not bm!44548) (not b_lambda!16355) (not b!1045732) (not b!1045767))
(check-sat b_and!33801 (not b_next!21141))
