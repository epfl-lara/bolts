; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90064 () Bool)

(assert start!90064)

(declare-fun b!1030912 () Bool)

(declare-fun b_free!20635 () Bool)

(declare-fun b_next!20635 () Bool)

(assert (=> b!1030912 (= b_free!20635 (not b_next!20635))))

(declare-fun tp!72976 () Bool)

(declare-fun b_and!33055 () Bool)

(assert (=> b!1030912 (= tp!72976 b_and!33055)))

(declare-fun b!1030903 () Bool)

(declare-fun res!689412 () Bool)

(declare-fun e!582243 () Bool)

(assert (=> b!1030903 (=> res!689412 e!582243)))

(declare-datatypes ((V!37347 0))(
  ( (V!37348 (val!12228 Int)) )
))
(declare-datatypes ((ValueCell!11474 0))(
  ( (ValueCellFull!11474 (v!14806 V!37347)) (EmptyCell!11474) )
))
(declare-datatypes ((Unit!33666 0))(
  ( (Unit!33667) )
))
(declare-datatypes ((array!64758 0))(
  ( (array!64759 (arr!31177 (Array (_ BitVec 32) (_ BitVec 64))) (size!31695 (_ BitVec 32))) )
))
(declare-datatypes ((array!64760 0))(
  ( (array!64761 (arr!31178 (Array (_ BitVec 32) ValueCell!11474)) (size!31696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5542 0))(
  ( (LongMapFixedSize!5543 (defaultEntry!6145 Int) (mask!29928 (_ BitVec 32)) (extraKeys!5877 (_ BitVec 32)) (zeroValue!5981 V!37347) (minValue!5981 V!37347) (_size!2826 (_ BitVec 32)) (_keys!11315 array!64758) (_values!6168 array!64760) (_vacant!2826 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15718 0))(
  ( (tuple2!15719 (_1!7869 Unit!33666) (_2!7869 LongMapFixedSize!5542)) )
))
(declare-fun lt!454933 () tuple2!15718)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64758 (_ BitVec 32)) Bool)

(assert (=> b!1030903 (= res!689412 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11315 (_2!7869 lt!454933)) (mask!29928 (_2!7869 lt!454933)))))))

(declare-fun b!1030904 () Bool)

(declare-fun res!689416 () Bool)

(declare-fun e!582245 () Bool)

(assert (=> b!1030904 (=> (not res!689416) (not e!582245))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1030904 (= res!689416 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030905 () Bool)

(declare-fun e!582240 () Bool)

(assert (=> b!1030905 (= e!582245 e!582240)))

(declare-fun res!689418 () Bool)

(assert (=> b!1030905 (=> (not res!689418) (not e!582240))))

(declare-datatypes ((SeekEntryResult!9687 0))(
  ( (MissingZero!9687 (index!41118 (_ BitVec 32))) (Found!9687 (index!41119 (_ BitVec 32))) (Intermediate!9687 (undefined!10499 Bool) (index!41120 (_ BitVec 32)) (x!91762 (_ BitVec 32))) (Undefined!9687) (MissingVacant!9687 (index!41121 (_ BitVec 32))) )
))
(declare-fun lt!454929 () SeekEntryResult!9687)

(assert (=> b!1030905 (= res!689418 (is-Found!9687 lt!454929))))

(declare-fun thiss!1427 () LongMapFixedSize!5542)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64758 (_ BitVec 32)) SeekEntryResult!9687)

(assert (=> b!1030905 (= lt!454929 (seekEntry!0 key!909 (_keys!11315 thiss!1427) (mask!29928 thiss!1427)))))

(declare-fun b!1030906 () Bool)

(assert (=> b!1030906 (= e!582240 (not e!582243))))

(declare-fun res!689417 () Bool)

(assert (=> b!1030906 (=> res!689417 e!582243)))

(declare-datatypes ((tuple2!15720 0))(
  ( (tuple2!15721 (_1!7870 (_ BitVec 64)) (_2!7870 V!37347)) )
))
(declare-datatypes ((List!21961 0))(
  ( (Nil!21958) (Cons!21957 (h!23159 tuple2!15720) (t!31098 List!21961)) )
))
(declare-datatypes ((ListLongMap!13819 0))(
  ( (ListLongMap!13820 (toList!6925 List!21961)) )
))
(declare-fun contains!6004 (ListLongMap!13819 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3932 (array!64758 array!64760 (_ BitVec 32) (_ BitVec 32) V!37347 V!37347 (_ BitVec 32) Int) ListLongMap!13819)

(assert (=> b!1030906 (= res!689417 (not (contains!6004 (getCurrentListMap!3932 (_keys!11315 (_2!7869 lt!454933)) (_values!6168 (_2!7869 lt!454933)) (mask!29928 (_2!7869 lt!454933)) (extraKeys!5877 (_2!7869 lt!454933)) (zeroValue!5981 (_2!7869 lt!454933)) (minValue!5981 (_2!7869 lt!454933)) #b00000000000000000000000000000000 (defaultEntry!6145 (_2!7869 lt!454933))) key!909)))))

(declare-fun lt!454936 () array!64758)

(declare-fun lt!454931 () array!64760)

(declare-fun Unit!33668 () Unit!33666)

(declare-fun Unit!33669 () Unit!33666)

(assert (=> b!1030906 (= lt!454933 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2826 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15719 Unit!33668 (LongMapFixedSize!5543 (defaultEntry!6145 thiss!1427) (mask!29928 thiss!1427) (extraKeys!5877 thiss!1427) (zeroValue!5981 thiss!1427) (minValue!5981 thiss!1427) (bvsub (_size!2826 thiss!1427) #b00000000000000000000000000000001) lt!454936 lt!454931 (bvadd #b00000000000000000000000000000001 (_vacant!2826 thiss!1427)))) (tuple2!15719 Unit!33669 (LongMapFixedSize!5543 (defaultEntry!6145 thiss!1427) (mask!29928 thiss!1427) (extraKeys!5877 thiss!1427) (zeroValue!5981 thiss!1427) (minValue!5981 thiss!1427) (bvsub (_size!2826 thiss!1427) #b00000000000000000000000000000001) lt!454936 lt!454931 (_vacant!2826 thiss!1427)))))))

(declare-fun -!501 (ListLongMap!13819 (_ BitVec 64)) ListLongMap!13819)

(assert (=> b!1030906 (= (-!501 (getCurrentListMap!3932 (_keys!11315 thiss!1427) (_values!6168 thiss!1427) (mask!29928 thiss!1427) (extraKeys!5877 thiss!1427) (zeroValue!5981 thiss!1427) (minValue!5981 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6145 thiss!1427)) key!909) (getCurrentListMap!3932 lt!454936 lt!454931 (mask!29928 thiss!1427) (extraKeys!5877 thiss!1427) (zeroValue!5981 thiss!1427) (minValue!5981 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6145 thiss!1427)))))

(declare-fun dynLambda!1976 (Int (_ BitVec 64)) V!37347)

(assert (=> b!1030906 (= lt!454931 (array!64761 (store (arr!31178 (_values!6168 thiss!1427)) (index!41119 lt!454929) (ValueCellFull!11474 (dynLambda!1976 (defaultEntry!6145 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31696 (_values!6168 thiss!1427))))))

(declare-fun lt!454930 () Unit!33666)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!25 (array!64758 array!64760 (_ BitVec 32) (_ BitVec 32) V!37347 V!37347 (_ BitVec 32) (_ BitVec 64) Int) Unit!33666)

(assert (=> b!1030906 (= lt!454930 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!25 (_keys!11315 thiss!1427) (_values!6168 thiss!1427) (mask!29928 thiss!1427) (extraKeys!5877 thiss!1427) (zeroValue!5981 thiss!1427) (minValue!5981 thiss!1427) (index!41119 lt!454929) key!909 (defaultEntry!6145 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64758 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030906 (not (arrayContainsKey!0 lt!454936 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454935 () Unit!33666)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64758 (_ BitVec 32) (_ BitVec 64)) Unit!33666)

(assert (=> b!1030906 (= lt!454935 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11315 thiss!1427) (index!41119 lt!454929) key!909))))

(assert (=> b!1030906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454936 (mask!29928 thiss!1427))))

(declare-fun lt!454934 () Unit!33666)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64758 (_ BitVec 32) (_ BitVec 32)) Unit!33666)

(assert (=> b!1030906 (= lt!454934 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11315 thiss!1427) (index!41119 lt!454929) (mask!29928 thiss!1427)))))

(declare-datatypes ((List!21962 0))(
  ( (Nil!21959) (Cons!21958 (h!23160 (_ BitVec 64)) (t!31099 List!21962)) )
))
(declare-fun arrayNoDuplicates!0 (array!64758 (_ BitVec 32) List!21962) Bool)

(assert (=> b!1030906 (arrayNoDuplicates!0 lt!454936 #b00000000000000000000000000000000 Nil!21959)))

(declare-fun lt!454938 () Unit!33666)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64758 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21962) Unit!33666)

(assert (=> b!1030906 (= lt!454938 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11315 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41119 lt!454929) #b00000000000000000000000000000000 Nil!21959))))

(declare-fun arrayCountValidKeys!0 (array!64758 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030906 (= (arrayCountValidKeys!0 lt!454936 #b00000000000000000000000000000000 (size!31695 (_keys!11315 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11315 thiss!1427) #b00000000000000000000000000000000 (size!31695 (_keys!11315 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030906 (= lt!454936 (array!64759 (store (arr!31177 (_keys!11315 thiss!1427)) (index!41119 lt!454929) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31695 (_keys!11315 thiss!1427))))))

(declare-fun lt!454937 () Unit!33666)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64758 (_ BitVec 32) (_ BitVec 64)) Unit!33666)

(assert (=> b!1030906 (= lt!454937 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11315 thiss!1427) (index!41119 lt!454929) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030907 () Bool)

(declare-fun e!582247 () Bool)

(declare-fun tp_is_empty!24355 () Bool)

(assert (=> b!1030907 (= e!582247 tp_is_empty!24355)))

(declare-fun b!1030908 () Bool)

(declare-fun res!689414 () Bool)

(assert (=> b!1030908 (=> res!689414 e!582243)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030908 (= res!689414 (not (validMask!0 (mask!29928 (_2!7869 lt!454933)))))))

(declare-fun b!1030909 () Bool)

(assert (=> b!1030909 (= e!582243 true)))

(declare-fun lt!454932 () Bool)

(assert (=> b!1030909 (= lt!454932 (arrayNoDuplicates!0 (_keys!11315 (_2!7869 lt!454933)) #b00000000000000000000000000000000 Nil!21959))))

(declare-fun res!689413 () Bool)

(assert (=> start!90064 (=> (not res!689413) (not e!582245))))

(declare-fun valid!2052 (LongMapFixedSize!5542) Bool)

(assert (=> start!90064 (= res!689413 (valid!2052 thiss!1427))))

(assert (=> start!90064 e!582245))

(declare-fun e!582246 () Bool)

(assert (=> start!90064 e!582246))

(assert (=> start!90064 true))

(declare-fun b!1030910 () Bool)

(declare-fun res!689415 () Bool)

(assert (=> b!1030910 (=> res!689415 e!582243)))

(assert (=> b!1030910 (= res!689415 (or (not (= (size!31696 (_values!6168 (_2!7869 lt!454933))) (bvadd #b00000000000000000000000000000001 (mask!29928 (_2!7869 lt!454933))))) (not (= (size!31695 (_keys!11315 (_2!7869 lt!454933))) (size!31696 (_values!6168 (_2!7869 lt!454933))))) (bvslt (mask!29928 (_2!7869 lt!454933)) #b00000000000000000000000000000000) (bvslt (extraKeys!5877 (_2!7869 lt!454933)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5877 (_2!7869 lt!454933)) #b00000000000000000000000000000011)))))

(declare-fun b!1030911 () Bool)

(declare-fun e!582242 () Bool)

(declare-fun e!582244 () Bool)

(declare-fun mapRes!37986 () Bool)

(assert (=> b!1030911 (= e!582242 (and e!582244 mapRes!37986))))

(declare-fun condMapEmpty!37986 () Bool)

(declare-fun mapDefault!37986 () ValueCell!11474)

