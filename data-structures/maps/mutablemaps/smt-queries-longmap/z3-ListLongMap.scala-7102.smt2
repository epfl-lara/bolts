; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90096 () Bool)

(assert start!90096)

(declare-fun b!1031470 () Bool)

(declare-fun b_free!20667 () Bool)

(declare-fun b_next!20667 () Bool)

(assert (=> b!1031470 (= b_free!20667 (not b_next!20667))))

(declare-fun tp!73072 () Bool)

(declare-fun b_and!33119 () Bool)

(assert (=> b!1031470 (= tp!73072 b_and!33119)))

(declare-fun b!1031463 () Bool)

(declare-fun e!582631 () Bool)

(assert (=> b!1031463 (= e!582631 true)))

(declare-fun lt!455416 () Bool)

(declare-datatypes ((V!37389 0))(
  ( (V!37390 (val!12244 Int)) )
))
(declare-datatypes ((ValueCell!11490 0))(
  ( (ValueCellFull!11490 (v!14822 V!37389)) (EmptyCell!11490) )
))
(declare-datatypes ((Unit!33720 0))(
  ( (Unit!33721) )
))
(declare-datatypes ((array!64822 0))(
  ( (array!64823 (arr!31209 (Array (_ BitVec 32) (_ BitVec 64))) (size!31727 (_ BitVec 32))) )
))
(declare-datatypes ((array!64824 0))(
  ( (array!64825 (arr!31210 (Array (_ BitVec 32) ValueCell!11490)) (size!31728 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5574 0))(
  ( (LongMapFixedSize!5575 (defaultEntry!6161 Int) (mask!29954 (_ BitVec 32)) (extraKeys!5893 (_ BitVec 32)) (zeroValue!5997 V!37389) (minValue!5997 V!37389) (_size!2842 (_ BitVec 32)) (_keys!11331 array!64822) (_values!6184 array!64824) (_vacant!2842 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15772 0))(
  ( (tuple2!15773 (_1!7896 Unit!33720) (_2!7896 LongMapFixedSize!5574)) )
))
(declare-fun lt!455411 () tuple2!15772)

(declare-datatypes ((List!21986 0))(
  ( (Nil!21983) (Cons!21982 (h!23184 (_ BitVec 64)) (t!31155 List!21986)) )
))
(declare-fun arrayNoDuplicates!0 (array!64822 (_ BitVec 32) List!21986) Bool)

(assert (=> b!1031463 (= lt!455416 (arrayNoDuplicates!0 (_keys!11331 (_2!7896 lt!455411)) #b00000000000000000000000000000000 Nil!21983))))

(declare-fun b!1031464 () Bool)

(declare-fun res!689750 () Bool)

(assert (=> b!1031464 (=> res!689750 e!582631)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031464 (= res!689750 (not (validMask!0 (mask!29954 (_2!7896 lt!455411)))))))

(declare-fun mapNonEmpty!38034 () Bool)

(declare-fun mapRes!38034 () Bool)

(declare-fun tp!73073 () Bool)

(declare-fun e!582624 () Bool)

(assert (=> mapNonEmpty!38034 (= mapRes!38034 (and tp!73073 e!582624))))

(declare-fun mapValue!38034 () ValueCell!11490)

(declare-fun mapRest!38034 () (Array (_ BitVec 32) ValueCell!11490))

(declare-fun mapKey!38034 () (_ BitVec 32))

(declare-fun thiss!1427 () LongMapFixedSize!5574)

(assert (=> mapNonEmpty!38034 (= (arr!31210 (_values!6184 thiss!1427)) (store mapRest!38034 mapKey!38034 mapValue!38034))))

(declare-fun b!1031465 () Bool)

(declare-fun res!689748 () Bool)

(declare-fun e!582627 () Bool)

(assert (=> b!1031465 (=> (not res!689748) (not e!582627))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1031465 (= res!689748 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38034 () Bool)

(assert (=> mapIsEmpty!38034 mapRes!38034))

(declare-fun b!1031466 () Bool)

(declare-fun res!689749 () Bool)

(assert (=> b!1031466 (=> res!689749 e!582631)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64822 (_ BitVec 32)) Bool)

(assert (=> b!1031466 (= res!689749 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11331 (_2!7896 lt!455411)) (mask!29954 (_2!7896 lt!455411)))))))

(declare-fun b!1031467 () Bool)

(declare-fun e!582626 () Bool)

(assert (=> b!1031467 (= e!582626 (not e!582631))))

(declare-fun res!689752 () Bool)

(assert (=> b!1031467 (=> res!689752 e!582631)))

(declare-datatypes ((tuple2!15774 0))(
  ( (tuple2!15775 (_1!7897 (_ BitVec 64)) (_2!7897 V!37389)) )
))
(declare-datatypes ((List!21987 0))(
  ( (Nil!21984) (Cons!21983 (h!23185 tuple2!15774) (t!31156 List!21987)) )
))
(declare-datatypes ((ListLongMap!13843 0))(
  ( (ListLongMap!13844 (toList!6937 List!21987)) )
))
(declare-fun contains!6016 (ListLongMap!13843 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3944 (array!64822 array!64824 (_ BitVec 32) (_ BitVec 32) V!37389 V!37389 (_ BitVec 32) Int) ListLongMap!13843)

(assert (=> b!1031467 (= res!689752 (not (contains!6016 (getCurrentListMap!3944 (_keys!11331 (_2!7896 lt!455411)) (_values!6184 (_2!7896 lt!455411)) (mask!29954 (_2!7896 lt!455411)) (extraKeys!5893 (_2!7896 lt!455411)) (zeroValue!5997 (_2!7896 lt!455411)) (minValue!5997 (_2!7896 lt!455411)) #b00000000000000000000000000000000 (defaultEntry!6161 (_2!7896 lt!455411))) key!909)))))

(declare-fun lt!455415 () array!64822)

(declare-fun lt!455410 () array!64824)

(declare-fun Unit!33722 () Unit!33720)

(declare-fun Unit!33723 () Unit!33720)

(assert (=> b!1031467 (= lt!455411 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2842 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15773 Unit!33722 (LongMapFixedSize!5575 (defaultEntry!6161 thiss!1427) (mask!29954 thiss!1427) (extraKeys!5893 thiss!1427) (zeroValue!5997 thiss!1427) (minValue!5997 thiss!1427) (bvsub (_size!2842 thiss!1427) #b00000000000000000000000000000001) lt!455415 lt!455410 (bvadd #b00000000000000000000000000000001 (_vacant!2842 thiss!1427)))) (tuple2!15773 Unit!33723 (LongMapFixedSize!5575 (defaultEntry!6161 thiss!1427) (mask!29954 thiss!1427) (extraKeys!5893 thiss!1427) (zeroValue!5997 thiss!1427) (minValue!5997 thiss!1427) (bvsub (_size!2842 thiss!1427) #b00000000000000000000000000000001) lt!455415 lt!455410 (_vacant!2842 thiss!1427)))))))

(declare-fun -!513 (ListLongMap!13843 (_ BitVec 64)) ListLongMap!13843)

(assert (=> b!1031467 (= (-!513 (getCurrentListMap!3944 (_keys!11331 thiss!1427) (_values!6184 thiss!1427) (mask!29954 thiss!1427) (extraKeys!5893 thiss!1427) (zeroValue!5997 thiss!1427) (minValue!5997 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6161 thiss!1427)) key!909) (getCurrentListMap!3944 lt!455415 lt!455410 (mask!29954 thiss!1427) (extraKeys!5893 thiss!1427) (zeroValue!5997 thiss!1427) (minValue!5997 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6161 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9701 0))(
  ( (MissingZero!9701 (index!41174 (_ BitVec 32))) (Found!9701 (index!41175 (_ BitVec 32))) (Intermediate!9701 (undefined!10513 Bool) (index!41176 (_ BitVec 32)) (x!91848 (_ BitVec 32))) (Undefined!9701) (MissingVacant!9701 (index!41177 (_ BitVec 32))) )
))
(declare-fun lt!455412 () SeekEntryResult!9701)

(declare-fun dynLambda!1988 (Int (_ BitVec 64)) V!37389)

(assert (=> b!1031467 (= lt!455410 (array!64825 (store (arr!31210 (_values!6184 thiss!1427)) (index!41175 lt!455412) (ValueCellFull!11490 (dynLambda!1988 (defaultEntry!6161 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31728 (_values!6184 thiss!1427))))))

(declare-fun lt!455409 () Unit!33720)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!37 (array!64822 array!64824 (_ BitVec 32) (_ BitVec 32) V!37389 V!37389 (_ BitVec 32) (_ BitVec 64) Int) Unit!33720)

(assert (=> b!1031467 (= lt!455409 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!37 (_keys!11331 thiss!1427) (_values!6184 thiss!1427) (mask!29954 thiss!1427) (extraKeys!5893 thiss!1427) (zeroValue!5997 thiss!1427) (minValue!5997 thiss!1427) (index!41175 lt!455412) key!909 (defaultEntry!6161 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031467 (not (arrayContainsKey!0 lt!455415 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455418 () Unit!33720)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64822 (_ BitVec 32) (_ BitVec 64)) Unit!33720)

(assert (=> b!1031467 (= lt!455418 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11331 thiss!1427) (index!41175 lt!455412) key!909))))

(assert (=> b!1031467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455415 (mask!29954 thiss!1427))))

(declare-fun lt!455414 () Unit!33720)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64822 (_ BitVec 32) (_ BitVec 32)) Unit!33720)

(assert (=> b!1031467 (= lt!455414 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11331 thiss!1427) (index!41175 lt!455412) (mask!29954 thiss!1427)))))

(assert (=> b!1031467 (arrayNoDuplicates!0 lt!455415 #b00000000000000000000000000000000 Nil!21983)))

(declare-fun lt!455417 () Unit!33720)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64822 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21986) Unit!33720)

(assert (=> b!1031467 (= lt!455417 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11331 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41175 lt!455412) #b00000000000000000000000000000000 Nil!21983))))

(declare-fun arrayCountValidKeys!0 (array!64822 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031467 (= (arrayCountValidKeys!0 lt!455415 #b00000000000000000000000000000000 (size!31727 (_keys!11331 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11331 thiss!1427) #b00000000000000000000000000000000 (size!31727 (_keys!11331 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031467 (= lt!455415 (array!64823 (store (arr!31209 (_keys!11331 thiss!1427)) (index!41175 lt!455412) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31727 (_keys!11331 thiss!1427))))))

(declare-fun lt!455413 () Unit!33720)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64822 (_ BitVec 32) (_ BitVec 64)) Unit!33720)

(assert (=> b!1031467 (= lt!455413 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11331 thiss!1427) (index!41175 lt!455412) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031468 () Bool)

(declare-fun e!582628 () Bool)

(declare-fun e!582625 () Bool)

(assert (=> b!1031468 (= e!582628 (and e!582625 mapRes!38034))))

(declare-fun condMapEmpty!38034 () Bool)

(declare-fun mapDefault!38034 () ValueCell!11490)

(assert (=> b!1031468 (= condMapEmpty!38034 (= (arr!31210 (_values!6184 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11490)) mapDefault!38034)))))

(declare-fun b!1031469 () Bool)

(declare-fun res!689754 () Bool)

(assert (=> b!1031469 (=> res!689754 e!582631)))

(assert (=> b!1031469 (= res!689754 (or (not (= (size!31728 (_values!6184 (_2!7896 lt!455411))) (bvadd #b00000000000000000000000000000001 (mask!29954 (_2!7896 lt!455411))))) (not (= (size!31727 (_keys!11331 (_2!7896 lt!455411))) (size!31728 (_values!6184 (_2!7896 lt!455411))))) (bvslt (mask!29954 (_2!7896 lt!455411)) #b00000000000000000000000000000000) (bvslt (extraKeys!5893 (_2!7896 lt!455411)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5893 (_2!7896 lt!455411)) #b00000000000000000000000000000011)))))

(declare-fun res!689751 () Bool)

(assert (=> start!90096 (=> (not res!689751) (not e!582627))))

(declare-fun valid!2061 (LongMapFixedSize!5574) Bool)

(assert (=> start!90096 (= res!689751 (valid!2061 thiss!1427))))

(assert (=> start!90096 e!582627))

(declare-fun e!582629 () Bool)

(assert (=> start!90096 e!582629))

(assert (=> start!90096 true))

(declare-fun tp_is_empty!24387 () Bool)

(declare-fun array_inv!24001 (array!64822) Bool)

(declare-fun array_inv!24002 (array!64824) Bool)

(assert (=> b!1031470 (= e!582629 (and tp!73072 tp_is_empty!24387 (array_inv!24001 (_keys!11331 thiss!1427)) (array_inv!24002 (_values!6184 thiss!1427)) e!582628))))

(declare-fun b!1031471 () Bool)

(assert (=> b!1031471 (= e!582627 e!582626)))

(declare-fun res!689753 () Bool)

(assert (=> b!1031471 (=> (not res!689753) (not e!582626))))

(get-info :version)

(assert (=> b!1031471 (= res!689753 ((_ is Found!9701) lt!455412))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64822 (_ BitVec 32)) SeekEntryResult!9701)

(assert (=> b!1031471 (= lt!455412 (seekEntry!0 key!909 (_keys!11331 thiss!1427) (mask!29954 thiss!1427)))))

(declare-fun b!1031472 () Bool)

(assert (=> b!1031472 (= e!582624 tp_is_empty!24387)))

(declare-fun b!1031473 () Bool)

(assert (=> b!1031473 (= e!582625 tp_is_empty!24387)))

(assert (= (and start!90096 res!689751) b!1031465))

(assert (= (and b!1031465 res!689748) b!1031471))

(assert (= (and b!1031471 res!689753) b!1031467))

(assert (= (and b!1031467 (not res!689752)) b!1031464))

(assert (= (and b!1031464 (not res!689750)) b!1031469))

(assert (= (and b!1031469 (not res!689754)) b!1031466))

(assert (= (and b!1031466 (not res!689749)) b!1031463))

(assert (= (and b!1031468 condMapEmpty!38034) mapIsEmpty!38034))

(assert (= (and b!1031468 (not condMapEmpty!38034)) mapNonEmpty!38034))

(assert (= (and mapNonEmpty!38034 ((_ is ValueCellFull!11490) mapValue!38034)) b!1031472))

(assert (= (and b!1031468 ((_ is ValueCellFull!11490) mapDefault!38034)) b!1031473))

(assert (= b!1031470 b!1031468))

(assert (= start!90096 b!1031470))

(declare-fun b_lambda!16041 () Bool)

(assert (=> (not b_lambda!16041) (not b!1031467)))

(declare-fun t!31154 () Bool)

(declare-fun tb!6993 () Bool)

(assert (=> (and b!1031470 (= (defaultEntry!6161 thiss!1427) (defaultEntry!6161 thiss!1427)) t!31154) tb!6993))

(declare-fun result!14307 () Bool)

(assert (=> tb!6993 (= result!14307 tp_is_empty!24387)))

(assert (=> b!1031467 t!31154))

(declare-fun b_and!33121 () Bool)

(assert (= b_and!33119 (and (=> t!31154 result!14307) b_and!33121)))

(declare-fun m!951757 () Bool)

(assert (=> b!1031471 m!951757))

(declare-fun m!951759 () Bool)

(assert (=> b!1031463 m!951759))

(declare-fun m!951761 () Bool)

(assert (=> start!90096 m!951761))

(declare-fun m!951763 () Bool)

(assert (=> mapNonEmpty!38034 m!951763))

(declare-fun m!951765 () Bool)

(assert (=> b!1031470 m!951765))

(declare-fun m!951767 () Bool)

(assert (=> b!1031470 m!951767))

(declare-fun m!951769 () Bool)

(assert (=> b!1031466 m!951769))

(declare-fun m!951771 () Bool)

(assert (=> b!1031464 m!951771))

(declare-fun m!951773 () Bool)

(assert (=> b!1031467 m!951773))

(declare-fun m!951775 () Bool)

(assert (=> b!1031467 m!951775))

(declare-fun m!951777 () Bool)

(assert (=> b!1031467 m!951777))

(declare-fun m!951779 () Bool)

(assert (=> b!1031467 m!951779))

(declare-fun m!951781 () Bool)

(assert (=> b!1031467 m!951781))

(declare-fun m!951783 () Bool)

(assert (=> b!1031467 m!951783))

(declare-fun m!951785 () Bool)

(assert (=> b!1031467 m!951785))

(declare-fun m!951787 () Bool)

(assert (=> b!1031467 m!951787))

(declare-fun m!951789 () Bool)

(assert (=> b!1031467 m!951789))

(assert (=> b!1031467 m!951785))

(declare-fun m!951791 () Bool)

(assert (=> b!1031467 m!951791))

(declare-fun m!951793 () Bool)

(assert (=> b!1031467 m!951793))

(declare-fun m!951795 () Bool)

(assert (=> b!1031467 m!951795))

(assert (=> b!1031467 m!951789))

(declare-fun m!951797 () Bool)

(assert (=> b!1031467 m!951797))

(declare-fun m!951799 () Bool)

(assert (=> b!1031467 m!951799))

(declare-fun m!951801 () Bool)

(assert (=> b!1031467 m!951801))

(declare-fun m!951803 () Bool)

(assert (=> b!1031467 m!951803))

(declare-fun m!951805 () Bool)

(assert (=> b!1031467 m!951805))

(declare-fun m!951807 () Bool)

(assert (=> b!1031467 m!951807))

(check-sat (not b!1031467) (not b!1031464) (not b!1031470) (not b!1031463) (not start!90096) (not b_lambda!16041) (not mapNonEmpty!38034) (not b_next!20667) (not b!1031466) (not b!1031471) tp_is_empty!24387 b_and!33121)
(check-sat b_and!33121 (not b_next!20667))
