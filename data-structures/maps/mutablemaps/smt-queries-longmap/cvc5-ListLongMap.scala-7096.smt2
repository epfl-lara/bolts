; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90058 () Bool)

(assert start!90058)

(declare-fun b!1030806 () Bool)

(declare-fun b_free!20629 () Bool)

(declare-fun b_next!20629 () Bool)

(assert (=> b!1030806 (= b_free!20629 (not b_next!20629))))

(declare-fun tp!72959 () Bool)

(declare-fun b_and!33043 () Bool)

(assert (=> b!1030806 (= tp!72959 b_and!33043)))

(declare-fun b!1030798 () Bool)

(declare-fun e!582171 () Bool)

(assert (=> b!1030798 (= e!582171 true)))

(declare-fun lt!454841 () Bool)

(declare-datatypes ((V!37339 0))(
  ( (V!37340 (val!12225 Int)) )
))
(declare-datatypes ((ValueCell!11471 0))(
  ( (ValueCellFull!11471 (v!14803 V!37339)) (EmptyCell!11471) )
))
(declare-datatypes ((Unit!33654 0))(
  ( (Unit!33655) )
))
(declare-datatypes ((array!64746 0))(
  ( (array!64747 (arr!31171 (Array (_ BitVec 32) (_ BitVec 64))) (size!31689 (_ BitVec 32))) )
))
(declare-datatypes ((array!64748 0))(
  ( (array!64749 (arr!31172 (Array (_ BitVec 32) ValueCell!11471)) (size!31690 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5536 0))(
  ( (LongMapFixedSize!5537 (defaultEntry!6142 Int) (mask!29923 (_ BitVec 32)) (extraKeys!5874 (_ BitVec 32)) (zeroValue!5978 V!37339) (minValue!5978 V!37339) (_size!2823 (_ BitVec 32)) (_keys!11312 array!64746) (_values!6165 array!64748) (_vacant!2823 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15706 0))(
  ( (tuple2!15707 (_1!7863 Unit!33654) (_2!7863 LongMapFixedSize!5536)) )
))
(declare-fun lt!454840 () tuple2!15706)

(declare-datatypes ((List!21955 0))(
  ( (Nil!21952) (Cons!21951 (h!23153 (_ BitVec 64)) (t!31086 List!21955)) )
))
(declare-fun arrayNoDuplicates!0 (array!64746 (_ BitVec 32) List!21955) Bool)

(assert (=> b!1030798 (= lt!454841 (arrayNoDuplicates!0 (_keys!11312 (_2!7863 lt!454840)) #b00000000000000000000000000000000 Nil!21952))))

(declare-fun b!1030799 () Bool)

(declare-fun e!582175 () Bool)

(declare-fun tp_is_empty!24349 () Bool)

(assert (=> b!1030799 (= e!582175 tp_is_empty!24349)))

(declare-fun b!1030800 () Bool)

(declare-fun e!582169 () Bool)

(assert (=> b!1030800 (= e!582169 (not e!582171))))

(declare-fun res!689352 () Bool)

(assert (=> b!1030800 (=> res!689352 e!582171)))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15708 0))(
  ( (tuple2!15709 (_1!7864 (_ BitVec 64)) (_2!7864 V!37339)) )
))
(declare-datatypes ((List!21956 0))(
  ( (Nil!21953) (Cons!21952 (h!23154 tuple2!15708) (t!31087 List!21956)) )
))
(declare-datatypes ((ListLongMap!13813 0))(
  ( (ListLongMap!13814 (toList!6922 List!21956)) )
))
(declare-fun contains!6001 (ListLongMap!13813 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3929 (array!64746 array!64748 (_ BitVec 32) (_ BitVec 32) V!37339 V!37339 (_ BitVec 32) Int) ListLongMap!13813)

(assert (=> b!1030800 (= res!689352 (not (contains!6001 (getCurrentListMap!3929 (_keys!11312 (_2!7863 lt!454840)) (_values!6165 (_2!7863 lt!454840)) (mask!29923 (_2!7863 lt!454840)) (extraKeys!5874 (_2!7863 lt!454840)) (zeroValue!5978 (_2!7863 lt!454840)) (minValue!5978 (_2!7863 lt!454840)) #b00000000000000000000000000000000 (defaultEntry!6142 (_2!7863 lt!454840))) key!909)))))

(declare-fun lt!454843 () array!64748)

(declare-fun thiss!1427 () LongMapFixedSize!5536)

(declare-fun lt!454846 () array!64746)

(declare-fun Unit!33656 () Unit!33654)

(declare-fun Unit!33657 () Unit!33654)

(assert (=> b!1030800 (= lt!454840 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2823 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15707 Unit!33656 (LongMapFixedSize!5537 (defaultEntry!6142 thiss!1427) (mask!29923 thiss!1427) (extraKeys!5874 thiss!1427) (zeroValue!5978 thiss!1427) (minValue!5978 thiss!1427) (bvsub (_size!2823 thiss!1427) #b00000000000000000000000000000001) lt!454846 lt!454843 (bvadd #b00000000000000000000000000000001 (_vacant!2823 thiss!1427)))) (tuple2!15707 Unit!33657 (LongMapFixedSize!5537 (defaultEntry!6142 thiss!1427) (mask!29923 thiss!1427) (extraKeys!5874 thiss!1427) (zeroValue!5978 thiss!1427) (minValue!5978 thiss!1427) (bvsub (_size!2823 thiss!1427) #b00000000000000000000000000000001) lt!454846 lt!454843 (_vacant!2823 thiss!1427)))))))

(declare-fun -!498 (ListLongMap!13813 (_ BitVec 64)) ListLongMap!13813)

(assert (=> b!1030800 (= (-!498 (getCurrentListMap!3929 (_keys!11312 thiss!1427) (_values!6165 thiss!1427) (mask!29923 thiss!1427) (extraKeys!5874 thiss!1427) (zeroValue!5978 thiss!1427) (minValue!5978 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6142 thiss!1427)) key!909) (getCurrentListMap!3929 lt!454846 lt!454843 (mask!29923 thiss!1427) (extraKeys!5874 thiss!1427) (zeroValue!5978 thiss!1427) (minValue!5978 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6142 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9684 0))(
  ( (MissingZero!9684 (index!41106 (_ BitVec 32))) (Found!9684 (index!41107 (_ BitVec 32))) (Intermediate!9684 (undefined!10496 Bool) (index!41108 (_ BitVec 32)) (x!91745 (_ BitVec 32))) (Undefined!9684) (MissingVacant!9684 (index!41109 (_ BitVec 32))) )
))
(declare-fun lt!454848 () SeekEntryResult!9684)

(declare-fun dynLambda!1973 (Int (_ BitVec 64)) V!37339)

(assert (=> b!1030800 (= lt!454843 (array!64749 (store (arr!31172 (_values!6165 thiss!1427)) (index!41107 lt!454848) (ValueCellFull!11471 (dynLambda!1973 (defaultEntry!6142 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31690 (_values!6165 thiss!1427))))))

(declare-fun lt!454847 () Unit!33654)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!22 (array!64746 array!64748 (_ BitVec 32) (_ BitVec 32) V!37339 V!37339 (_ BitVec 32) (_ BitVec 64) Int) Unit!33654)

(assert (=> b!1030800 (= lt!454847 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!22 (_keys!11312 thiss!1427) (_values!6165 thiss!1427) (mask!29923 thiss!1427) (extraKeys!5874 thiss!1427) (zeroValue!5978 thiss!1427) (minValue!5978 thiss!1427) (index!41107 lt!454848) key!909 (defaultEntry!6142 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030800 (not (arrayContainsKey!0 lt!454846 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454842 () Unit!33654)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64746 (_ BitVec 32) (_ BitVec 64)) Unit!33654)

(assert (=> b!1030800 (= lt!454842 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11312 thiss!1427) (index!41107 lt!454848) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64746 (_ BitVec 32)) Bool)

(assert (=> b!1030800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454846 (mask!29923 thiss!1427))))

(declare-fun lt!454845 () Unit!33654)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64746 (_ BitVec 32) (_ BitVec 32)) Unit!33654)

(assert (=> b!1030800 (= lt!454845 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11312 thiss!1427) (index!41107 lt!454848) (mask!29923 thiss!1427)))))

(assert (=> b!1030800 (arrayNoDuplicates!0 lt!454846 #b00000000000000000000000000000000 Nil!21952)))

(declare-fun lt!454844 () Unit!33654)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64746 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21955) Unit!33654)

(assert (=> b!1030800 (= lt!454844 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11312 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41107 lt!454848) #b00000000000000000000000000000000 Nil!21952))))

(declare-fun arrayCountValidKeys!0 (array!64746 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030800 (= (arrayCountValidKeys!0 lt!454846 #b00000000000000000000000000000000 (size!31689 (_keys!11312 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11312 thiss!1427) #b00000000000000000000000000000000 (size!31689 (_keys!11312 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030800 (= lt!454846 (array!64747 (store (arr!31171 (_keys!11312 thiss!1427)) (index!41107 lt!454848) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31689 (_keys!11312 thiss!1427))))))

(declare-fun lt!454839 () Unit!33654)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64746 (_ BitVec 32) (_ BitVec 64)) Unit!33654)

(assert (=> b!1030800 (= lt!454839 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11312 thiss!1427) (index!41107 lt!454848) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37977 () Bool)

(declare-fun mapRes!37977 () Bool)

(declare-fun tp!72958 () Bool)

(declare-fun e!582173 () Bool)

(assert (=> mapNonEmpty!37977 (= mapRes!37977 (and tp!72958 e!582173))))

(declare-fun mapValue!37977 () ValueCell!11471)

(declare-fun mapRest!37977 () (Array (_ BitVec 32) ValueCell!11471))

(declare-fun mapKey!37977 () (_ BitVec 32))

(assert (=> mapNonEmpty!37977 (= (arr!31172 (_values!6165 thiss!1427)) (store mapRest!37977 mapKey!37977 mapValue!37977))))

(declare-fun b!1030801 () Bool)

(declare-fun res!689350 () Bool)

(assert (=> b!1030801 (=> res!689350 e!582171)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030801 (= res!689350 (not (validMask!0 (mask!29923 (_2!7863 lt!454840)))))))

(declare-fun b!1030802 () Bool)

(declare-fun res!689355 () Bool)

(assert (=> b!1030802 (=> res!689355 e!582171)))

(assert (=> b!1030802 (= res!689355 (or (not (= (size!31690 (_values!6165 (_2!7863 lt!454840))) (bvadd #b00000000000000000000000000000001 (mask!29923 (_2!7863 lt!454840))))) (not (= (size!31689 (_keys!11312 (_2!7863 lt!454840))) (size!31690 (_values!6165 (_2!7863 lt!454840))))) (bvslt (mask!29923 (_2!7863 lt!454840)) #b00000000000000000000000000000000) (bvslt (extraKeys!5874 (_2!7863 lt!454840)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5874 (_2!7863 lt!454840)) #b00000000000000000000000000000011)))))

(declare-fun b!1030803 () Bool)

(declare-fun res!689354 () Bool)

(assert (=> b!1030803 (=> res!689354 e!582171)))

(assert (=> b!1030803 (= res!689354 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11312 (_2!7863 lt!454840)) (mask!29923 (_2!7863 lt!454840)))))))

(declare-fun b!1030804 () Bool)

(declare-fun e!582174 () Bool)

(assert (=> b!1030804 (= e!582174 (and e!582175 mapRes!37977))))

(declare-fun condMapEmpty!37977 () Bool)

(declare-fun mapDefault!37977 () ValueCell!11471)

