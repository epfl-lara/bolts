; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92030 () Bool)

(assert start!92030)

(declare-fun b!1046169 () Bool)

(declare-fun b_free!21167 () Bool)

(declare-fun b_next!21167 () Bool)

(assert (=> b!1046169 (= b_free!21167 (not b_next!21167))))

(declare-fun tp!74763 () Bool)

(declare-fun b_and!33847 () Bool)

(assert (=> b!1046169 (= tp!74763 b_and!33847)))

(declare-fun b!1046166 () Bool)

(declare-fun e!593174 () Bool)

(declare-datatypes ((V!38055 0))(
  ( (V!38056 (val!12494 Int)) )
))
(declare-datatypes ((ValueCell!11740 0))(
  ( (ValueCellFull!11740 (v!15092 V!38055)) (EmptyCell!11740) )
))
(declare-datatypes ((Unit!34188 0))(
  ( (Unit!34189) )
))
(declare-datatypes ((array!65936 0))(
  ( (array!65937 (arr!31709 (Array (_ BitVec 32) (_ BitVec 64))) (size!32245 (_ BitVec 32))) )
))
(declare-datatypes ((array!65938 0))(
  ( (array!65939 (arr!31710 (Array (_ BitVec 32) ValueCell!11740)) (size!32246 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6074 0))(
  ( (LongMapFixedSize!6075 (defaultEntry!6435 Int) (mask!30573 (_ BitVec 32)) (extraKeys!6163 (_ BitVec 32)) (zeroValue!6269 V!38055) (minValue!6269 V!38055) (_size!3092 (_ BitVec 32)) (_keys!11706 array!65936) (_values!6458 array!65938) (_vacant!3092 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15930 0))(
  ( (tuple2!15931 (_1!7975 Unit!34188) (_2!7975 LongMapFixedSize!6074)) )
))
(declare-fun lt!462134 () tuple2!15930)

(declare-fun key!909 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!65936 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1046166 (= e!593174 (arrayContainsKey!0 (_keys!11706 (_2!7975 lt!462134)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1046167 () Bool)

(assert (=> b!1046167 (= e!593174 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!6163 (_2!7975 lt!462134)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!6163 (_2!7975 lt!462134)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1046168 () Bool)

(declare-fun e!593176 () Bool)

(declare-fun e!593169 () Bool)

(assert (=> b!1046168 (= e!593176 (not e!593169))))

(declare-fun res!696554 () Bool)

(assert (=> b!1046168 (=> res!696554 e!593169)))

(declare-datatypes ((tuple2!15932 0))(
  ( (tuple2!15933 (_1!7976 (_ BitVec 64)) (_2!7976 V!38055)) )
))
(declare-datatypes ((List!22160 0))(
  ( (Nil!22157) (Cons!22156 (h!23364 tuple2!15932) (t!31465 List!22160)) )
))
(declare-datatypes ((ListLongMap!13919 0))(
  ( (ListLongMap!13920 (toList!6975 List!22160)) )
))
(declare-fun contains!6110 (ListLongMap!13919 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3981 (array!65936 array!65938 (_ BitVec 32) (_ BitVec 32) V!38055 V!38055 (_ BitVec 32) Int) ListLongMap!13919)

(assert (=> b!1046168 (= res!696554 (not (contains!6110 (getCurrentListMap!3981 (_keys!11706 (_2!7975 lt!462134)) (_values!6458 (_2!7975 lt!462134)) (mask!30573 (_2!7975 lt!462134)) (extraKeys!6163 (_2!7975 lt!462134)) (zeroValue!6269 (_2!7975 lt!462134)) (minValue!6269 (_2!7975 lt!462134)) #b00000000000000000000000000000000 (defaultEntry!6435 (_2!7975 lt!462134))) key!909)))))

(declare-fun lt!462136 () array!65936)

(declare-fun thiss!1427 () LongMapFixedSize!6074)

(declare-fun lt!462135 () array!65938)

(declare-fun Unit!34190 () Unit!34188)

(declare-fun Unit!34191 () Unit!34188)

(assert (=> b!1046168 (= lt!462134 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3092 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15931 Unit!34190 (LongMapFixedSize!6075 (defaultEntry!6435 thiss!1427) (mask!30573 thiss!1427) (extraKeys!6163 thiss!1427) (zeroValue!6269 thiss!1427) (minValue!6269 thiss!1427) (bvsub (_size!3092 thiss!1427) #b00000000000000000000000000000001) lt!462136 lt!462135 (bvadd #b00000000000000000000000000000001 (_vacant!3092 thiss!1427)))) (tuple2!15931 Unit!34191 (LongMapFixedSize!6075 (defaultEntry!6435 thiss!1427) (mask!30573 thiss!1427) (extraKeys!6163 thiss!1427) (zeroValue!6269 thiss!1427) (minValue!6269 thiss!1427) (bvsub (_size!3092 thiss!1427) #b00000000000000000000000000000001) lt!462136 lt!462135 (_vacant!3092 thiss!1427)))))))

(declare-fun -!551 (ListLongMap!13919 (_ BitVec 64)) ListLongMap!13919)

(assert (=> b!1046168 (= (-!551 (getCurrentListMap!3981 (_keys!11706 thiss!1427) (_values!6458 thiss!1427) (mask!30573 thiss!1427) (extraKeys!6163 thiss!1427) (zeroValue!6269 thiss!1427) (minValue!6269 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6435 thiss!1427)) key!909) (getCurrentListMap!3981 lt!462136 lt!462135 (mask!30573 thiss!1427) (extraKeys!6163 thiss!1427) (zeroValue!6269 thiss!1427) (minValue!6269 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6435 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9857 0))(
  ( (MissingZero!9857 (index!41798 (_ BitVec 32))) (Found!9857 (index!41799 (_ BitVec 32))) (Intermediate!9857 (undefined!10669 Bool) (index!41800 (_ BitVec 32)) (x!93472 (_ BitVec 32))) (Undefined!9857) (MissingVacant!9857 (index!41801 (_ BitVec 32))) )
))
(declare-fun lt!462133 () SeekEntryResult!9857)

(declare-fun dynLambda!2025 (Int (_ BitVec 64)) V!38055)

(assert (=> b!1046168 (= lt!462135 (array!65939 (store (arr!31710 (_values!6458 thiss!1427)) (index!41799 lt!462133) (ValueCellFull!11740 (dynLambda!2025 (defaultEntry!6435 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32246 (_values!6458 thiss!1427))))))

(declare-fun lt!462130 () Unit!34188)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!71 (array!65936 array!65938 (_ BitVec 32) (_ BitVec 32) V!38055 V!38055 (_ BitVec 32) (_ BitVec 64) Int) Unit!34188)

(assert (=> b!1046168 (= lt!462130 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!71 (_keys!11706 thiss!1427) (_values!6458 thiss!1427) (mask!30573 thiss!1427) (extraKeys!6163 thiss!1427) (zeroValue!6269 thiss!1427) (minValue!6269 thiss!1427) (index!41799 lt!462133) key!909 (defaultEntry!6435 thiss!1427)))))

(assert (=> b!1046168 (not (arrayContainsKey!0 lt!462136 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!462132 () Unit!34188)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65936 (_ BitVec 32) (_ BitVec 64)) Unit!34188)

(assert (=> b!1046168 (= lt!462132 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11706 thiss!1427) (index!41799 lt!462133) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65936 (_ BitVec 32)) Bool)

(assert (=> b!1046168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!462136 (mask!30573 thiss!1427))))

(declare-fun lt!462129 () Unit!34188)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65936 (_ BitVec 32) (_ BitVec 32)) Unit!34188)

(assert (=> b!1046168 (= lt!462129 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11706 thiss!1427) (index!41799 lt!462133) (mask!30573 thiss!1427)))))

(declare-datatypes ((List!22161 0))(
  ( (Nil!22158) (Cons!22157 (h!23365 (_ BitVec 64)) (t!31466 List!22161)) )
))
(declare-fun arrayNoDuplicates!0 (array!65936 (_ BitVec 32) List!22161) Bool)

(assert (=> b!1046168 (arrayNoDuplicates!0 lt!462136 #b00000000000000000000000000000000 Nil!22158)))

(declare-fun lt!462137 () Unit!34188)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65936 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22161) Unit!34188)

(assert (=> b!1046168 (= lt!462137 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11706 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41799 lt!462133) #b00000000000000000000000000000000 Nil!22158))))

(declare-fun arrayCountValidKeys!0 (array!65936 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1046168 (= (arrayCountValidKeys!0 lt!462136 #b00000000000000000000000000000000 (size!32245 (_keys!11706 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11706 thiss!1427) #b00000000000000000000000000000000 (size!32245 (_keys!11706 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1046168 (= lt!462136 (array!65937 (store (arr!31709 (_keys!11706 thiss!1427)) (index!41799 lt!462133) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32245 (_keys!11706 thiss!1427))))))

(declare-fun lt!462131 () Unit!34188)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65936 (_ BitVec 32) (_ BitVec 64)) Unit!34188)

(assert (=> b!1046168 (= lt!462131 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11706 thiss!1427) (index!41799 lt!462133) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!38975 () Bool)

(declare-fun mapRes!38975 () Bool)

(declare-fun tp!74764 () Bool)

(declare-fun e!593168 () Bool)

(assert (=> mapNonEmpty!38975 (= mapRes!38975 (and tp!74764 e!593168))))

(declare-fun mapValue!38975 () ValueCell!11740)

(declare-fun mapRest!38975 () (Array (_ BitVec 32) ValueCell!11740))

(declare-fun mapKey!38975 () (_ BitVec 32))

(assert (=> mapNonEmpty!38975 (= (arr!31710 (_values!6458 thiss!1427)) (store mapRest!38975 mapKey!38975 mapValue!38975))))

(declare-fun tp_is_empty!24887 () Bool)

(declare-fun e!593170 () Bool)

(declare-fun e!593175 () Bool)

(declare-fun array_inv!24333 (array!65936) Bool)

(declare-fun array_inv!24334 (array!65938) Bool)

(assert (=> b!1046169 (= e!593175 (and tp!74763 tp_is_empty!24887 (array_inv!24333 (_keys!11706 thiss!1427)) (array_inv!24334 (_values!6458 thiss!1427)) e!593170))))

(declare-fun b!1046170 () Bool)

(assert (=> b!1046170 (= e!593169 false)))

(assert (=> b!1046170 e!593174))

(declare-fun c!106319 () Bool)

(assert (=> b!1046170 (= c!106319 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!462138 () Unit!34188)

(declare-fun lemmaKeyInListMapIsInArray!359 (array!65936 array!65938 (_ BitVec 32) (_ BitVec 32) V!38055 V!38055 (_ BitVec 64) Int) Unit!34188)

(assert (=> b!1046170 (= lt!462138 (lemmaKeyInListMapIsInArray!359 (_keys!11706 (_2!7975 lt!462134)) (_values!6458 (_2!7975 lt!462134)) (mask!30573 (_2!7975 lt!462134)) (extraKeys!6163 (_2!7975 lt!462134)) (zeroValue!6269 (_2!7975 lt!462134)) (minValue!6269 (_2!7975 lt!462134)) key!909 (defaultEntry!6435 (_2!7975 lt!462134))))))

(declare-fun res!696553 () Bool)

(declare-fun e!593172 () Bool)

(assert (=> start!92030 (=> (not res!696553) (not e!593172))))

(declare-fun valid!2233 (LongMapFixedSize!6074) Bool)

(assert (=> start!92030 (= res!696553 (valid!2233 thiss!1427))))

(assert (=> start!92030 e!593172))

(assert (=> start!92030 e!593175))

(assert (=> start!92030 true))

(declare-fun b!1046171 () Bool)

(declare-fun e!593173 () Bool)

(assert (=> b!1046171 (= e!593173 tp_is_empty!24887)))

(declare-fun b!1046172 () Bool)

(assert (=> b!1046172 (= e!593168 tp_is_empty!24887)))

(declare-fun b!1046173 () Bool)

(assert (=> b!1046173 (= e!593172 e!593176)))

(declare-fun res!696555 () Bool)

(assert (=> b!1046173 (=> (not res!696555) (not e!593176))))

(assert (=> b!1046173 (= res!696555 (is-Found!9857 lt!462133))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65936 (_ BitVec 32)) SeekEntryResult!9857)

(assert (=> b!1046173 (= lt!462133 (seekEntry!0 key!909 (_keys!11706 thiss!1427) (mask!30573 thiss!1427)))))

(declare-fun mapIsEmpty!38975 () Bool)

(assert (=> mapIsEmpty!38975 mapRes!38975))

(declare-fun b!1046174 () Bool)

(assert (=> b!1046174 (= e!593170 (and e!593173 mapRes!38975))))

(declare-fun condMapEmpty!38975 () Bool)

(declare-fun mapDefault!38975 () ValueCell!11740)

