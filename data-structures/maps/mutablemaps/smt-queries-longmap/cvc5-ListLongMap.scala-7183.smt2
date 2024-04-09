; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92014 () Bool)

(assert start!92014)

(declare-fun b!1045904 () Bool)

(declare-fun b_free!21151 () Bool)

(declare-fun b_next!21151 () Bool)

(assert (=> b!1045904 (= b_free!21151 (not b_next!21151))))

(declare-fun tp!74716 () Bool)

(declare-fun b_and!33815 () Bool)

(assert (=> b!1045904 (= tp!74716 b_and!33815)))

(declare-fun b!1045894 () Bool)

(declare-fun res!696413 () Bool)

(declare-fun e!592973 () Bool)

(assert (=> b!1045894 (=> (not res!696413) (not e!592973))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1045894 (= res!696413 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1045895 () Bool)

(declare-fun res!696415 () Bool)

(declare-fun e!592969 () Bool)

(assert (=> b!1045895 (=> res!696415 e!592969)))

(declare-datatypes ((V!38035 0))(
  ( (V!38036 (val!12486 Int)) )
))
(declare-datatypes ((ValueCell!11732 0))(
  ( (ValueCellFull!11732 (v!15084 V!38035)) (EmptyCell!11732) )
))
(declare-datatypes ((Unit!34164 0))(
  ( (Unit!34165) )
))
(declare-datatypes ((array!65904 0))(
  ( (array!65905 (arr!31693 (Array (_ BitVec 32) (_ BitVec 64))) (size!32229 (_ BitVec 32))) )
))
(declare-datatypes ((array!65906 0))(
  ( (array!65907 (arr!31694 (Array (_ BitVec 32) ValueCell!11732)) (size!32230 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6058 0))(
  ( (LongMapFixedSize!6059 (defaultEntry!6427 Int) (mask!30561 (_ BitVec 32)) (extraKeys!6155 (_ BitVec 32)) (zeroValue!6261 V!38035) (minValue!6261 V!38035) (_size!3084 (_ BitVec 32)) (_keys!11698 array!65904) (_values!6450 array!65906) (_vacant!3084 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15906 0))(
  ( (tuple2!15907 (_1!7963 Unit!34164) (_2!7963 LongMapFixedSize!6058)) )
))
(declare-fun lt!461899 () tuple2!15906)

(assert (=> b!1045895 (= res!696415 (or (not (= (size!32230 (_values!6450 (_2!7963 lt!461899))) (bvadd #b00000000000000000000000000000001 (mask!30561 (_2!7963 lt!461899))))) (not (= (size!32229 (_keys!11698 (_2!7963 lt!461899))) (size!32230 (_values!6450 (_2!7963 lt!461899))))) (bvslt (mask!30561 (_2!7963 lt!461899)) #b00000000000000000000000000000000) (bvslt (extraKeys!6155 (_2!7963 lt!461899)) #b00000000000000000000000000000000) (bvsgt (extraKeys!6155 (_2!7963 lt!461899)) #b00000000000000000000000000000011)))))

(declare-fun b!1045896 () Bool)

(declare-fun res!696411 () Bool)

(assert (=> b!1045896 (=> res!696411 e!592969)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65904 (_ BitVec 32)) Bool)

(assert (=> b!1045896 (= res!696411 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11698 (_2!7963 lt!461899)) (mask!30561 (_2!7963 lt!461899)))))))

(declare-fun b!1045897 () Bool)

(declare-fun e!592975 () Bool)

(assert (=> b!1045897 (= e!592975 (not e!592969))))

(declare-fun res!696412 () Bool)

(assert (=> b!1045897 (=> res!696412 e!592969)))

(declare-datatypes ((tuple2!15908 0))(
  ( (tuple2!15909 (_1!7964 (_ BitVec 64)) (_2!7964 V!38035)) )
))
(declare-datatypes ((List!22148 0))(
  ( (Nil!22145) (Cons!22144 (h!23352 tuple2!15908) (t!31437 List!22148)) )
))
(declare-datatypes ((ListLongMap!13909 0))(
  ( (ListLongMap!13910 (toList!6970 List!22148)) )
))
(declare-fun contains!6105 (ListLongMap!13909 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3976 (array!65904 array!65906 (_ BitVec 32) (_ BitVec 32) V!38035 V!38035 (_ BitVec 32) Int) ListLongMap!13909)

(assert (=> b!1045897 (= res!696412 (not (contains!6105 (getCurrentListMap!3976 (_keys!11698 (_2!7963 lt!461899)) (_values!6450 (_2!7963 lt!461899)) (mask!30561 (_2!7963 lt!461899)) (extraKeys!6155 (_2!7963 lt!461899)) (zeroValue!6261 (_2!7963 lt!461899)) (minValue!6261 (_2!7963 lt!461899)) #b00000000000000000000000000000000 (defaultEntry!6427 (_2!7963 lt!461899))) key!909)))))

(declare-fun thiss!1427 () LongMapFixedSize!6058)

(declare-fun lt!461896 () array!65904)

(declare-fun lt!461904 () array!65906)

(declare-fun Unit!34166 () Unit!34164)

(declare-fun Unit!34167 () Unit!34164)

(assert (=> b!1045897 (= lt!461899 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3084 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15907 Unit!34166 (LongMapFixedSize!6059 (defaultEntry!6427 thiss!1427) (mask!30561 thiss!1427) (extraKeys!6155 thiss!1427) (zeroValue!6261 thiss!1427) (minValue!6261 thiss!1427) (bvsub (_size!3084 thiss!1427) #b00000000000000000000000000000001) lt!461896 lt!461904 (bvadd #b00000000000000000000000000000001 (_vacant!3084 thiss!1427)))) (tuple2!15907 Unit!34167 (LongMapFixedSize!6059 (defaultEntry!6427 thiss!1427) (mask!30561 thiss!1427) (extraKeys!6155 thiss!1427) (zeroValue!6261 thiss!1427) (minValue!6261 thiss!1427) (bvsub (_size!3084 thiss!1427) #b00000000000000000000000000000001) lt!461896 lt!461904 (_vacant!3084 thiss!1427)))))))

(declare-fun -!546 (ListLongMap!13909 (_ BitVec 64)) ListLongMap!13909)

(assert (=> b!1045897 (= (-!546 (getCurrentListMap!3976 (_keys!11698 thiss!1427) (_values!6450 thiss!1427) (mask!30561 thiss!1427) (extraKeys!6155 thiss!1427) (zeroValue!6261 thiss!1427) (minValue!6261 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6427 thiss!1427)) key!909) (getCurrentListMap!3976 lt!461896 lt!461904 (mask!30561 thiss!1427) (extraKeys!6155 thiss!1427) (zeroValue!6261 thiss!1427) (minValue!6261 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6427 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9850 0))(
  ( (MissingZero!9850 (index!41770 (_ BitVec 32))) (Found!9850 (index!41771 (_ BitVec 32))) (Intermediate!9850 (undefined!10662 Bool) (index!41772 (_ BitVec 32)) (x!93433 (_ BitVec 32))) (Undefined!9850) (MissingVacant!9850 (index!41773 (_ BitVec 32))) )
))
(declare-fun lt!461903 () SeekEntryResult!9850)

(declare-fun dynLambda!2020 (Int (_ BitVec 64)) V!38035)

(assert (=> b!1045897 (= lt!461904 (array!65907 (store (arr!31694 (_values!6450 thiss!1427)) (index!41771 lt!461903) (ValueCellFull!11732 (dynLambda!2020 (defaultEntry!6427 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32230 (_values!6450 thiss!1427))))))

(declare-fun lt!461898 () Unit!34164)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!66 (array!65904 array!65906 (_ BitVec 32) (_ BitVec 32) V!38035 V!38035 (_ BitVec 32) (_ BitVec 64) Int) Unit!34164)

(assert (=> b!1045897 (= lt!461898 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!66 (_keys!11698 thiss!1427) (_values!6450 thiss!1427) (mask!30561 thiss!1427) (extraKeys!6155 thiss!1427) (zeroValue!6261 thiss!1427) (minValue!6261 thiss!1427) (index!41771 lt!461903) key!909 (defaultEntry!6427 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1045897 (not (arrayContainsKey!0 lt!461896 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461897 () Unit!34164)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65904 (_ BitVec 32) (_ BitVec 64)) Unit!34164)

(assert (=> b!1045897 (= lt!461897 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11698 thiss!1427) (index!41771 lt!461903) key!909))))

(assert (=> b!1045897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461896 (mask!30561 thiss!1427))))

(declare-fun lt!461902 () Unit!34164)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65904 (_ BitVec 32) (_ BitVec 32)) Unit!34164)

(assert (=> b!1045897 (= lt!461902 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11698 thiss!1427) (index!41771 lt!461903) (mask!30561 thiss!1427)))))

(declare-datatypes ((List!22149 0))(
  ( (Nil!22146) (Cons!22145 (h!23353 (_ BitVec 64)) (t!31438 List!22149)) )
))
(declare-fun arrayNoDuplicates!0 (array!65904 (_ BitVec 32) List!22149) Bool)

(assert (=> b!1045897 (arrayNoDuplicates!0 lt!461896 #b00000000000000000000000000000000 Nil!22146)))

(declare-fun lt!461901 () Unit!34164)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65904 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22149) Unit!34164)

(assert (=> b!1045897 (= lt!461901 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11698 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41771 lt!461903) #b00000000000000000000000000000000 Nil!22146))))

(declare-fun arrayCountValidKeys!0 (array!65904 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1045897 (= (arrayCountValidKeys!0 lt!461896 #b00000000000000000000000000000000 (size!32229 (_keys!11698 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11698 thiss!1427) #b00000000000000000000000000000000 (size!32229 (_keys!11698 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1045897 (= lt!461896 (array!65905 (store (arr!31693 (_keys!11698 thiss!1427)) (index!41771 lt!461903) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32229 (_keys!11698 thiss!1427))))))

(declare-fun lt!461900 () Unit!34164)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65904 (_ BitVec 32) (_ BitVec 64)) Unit!34164)

(assert (=> b!1045897 (= lt!461900 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11698 thiss!1427) (index!41771 lt!461903) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045898 () Bool)

(assert (=> b!1045898 (= e!592973 e!592975)))

(declare-fun res!696409 () Bool)

(assert (=> b!1045898 (=> (not res!696409) (not e!592975))))

(assert (=> b!1045898 (= res!696409 (is-Found!9850 lt!461903))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65904 (_ BitVec 32)) SeekEntryResult!9850)

(assert (=> b!1045898 (= lt!461903 (seekEntry!0 key!909 (_keys!11698 thiss!1427) (mask!30561 thiss!1427)))))

(declare-fun mapIsEmpty!38951 () Bool)

(declare-fun mapRes!38951 () Bool)

(assert (=> mapIsEmpty!38951 mapRes!38951))

(declare-fun b!1045899 () Bool)

(declare-fun e!592972 () Bool)

(declare-fun e!592971 () Bool)

(assert (=> b!1045899 (= e!592972 (and e!592971 mapRes!38951))))

(declare-fun condMapEmpty!38951 () Bool)

(declare-fun mapDefault!38951 () ValueCell!11732)

