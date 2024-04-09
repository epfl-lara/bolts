; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89842 () Bool)

(assert start!89842)

(declare-fun b!1029076 () Bool)

(declare-fun b_free!20593 () Bool)

(declare-fun b_next!20593 () Bool)

(assert (=> b!1029076 (= b_free!20593 (not b_next!20593))))

(declare-fun tp!72840 () Bool)

(declare-fun b_and!32929 () Bool)

(assert (=> b!1029076 (= tp!72840 b_and!32929)))

(declare-fun tp_is_empty!24313 () Bool)

(declare-fun e!581014 () Bool)

(declare-fun e!581012 () Bool)

(declare-datatypes ((V!37291 0))(
  ( (V!37292 (val!12207 Int)) )
))
(declare-datatypes ((ValueCell!11453 0))(
  ( (ValueCellFull!11453 (v!14781 V!37291)) (EmptyCell!11453) )
))
(declare-datatypes ((array!64668 0))(
  ( (array!64669 (arr!31135 (Array (_ BitVec 32) (_ BitVec 64))) (size!31651 (_ BitVec 32))) )
))
(declare-datatypes ((array!64670 0))(
  ( (array!64671 (arr!31136 (Array (_ BitVec 32) ValueCell!11453)) (size!31652 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5500 0))(
  ( (LongMapFixedSize!5501 (defaultEntry!6114 Int) (mask!29861 (_ BitVec 32)) (extraKeys!5846 (_ BitVec 32)) (zeroValue!5950 V!37291) (minValue!5950 V!37291) (_size!2805 (_ BitVec 32)) (_keys!11272 array!64668) (_values!6137 array!64670) (_vacant!2805 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5500)

(declare-fun array_inv!23951 (array!64668) Bool)

(declare-fun array_inv!23952 (array!64670) Bool)

(assert (=> b!1029076 (= e!581012 (and tp!72840 tp_is_empty!24313 (array_inv!23951 (_keys!11272 thiss!1427)) (array_inv!23952 (_values!6137 thiss!1427)) e!581014))))

(declare-fun mapNonEmpty!37912 () Bool)

(declare-fun mapRes!37912 () Bool)

(declare-fun tp!72839 () Bool)

(declare-fun e!581017 () Bool)

(assert (=> mapNonEmpty!37912 (= mapRes!37912 (and tp!72839 e!581017))))

(declare-fun mapKey!37912 () (_ BitVec 32))

(declare-fun mapValue!37912 () ValueCell!11453)

(declare-fun mapRest!37912 () (Array (_ BitVec 32) ValueCell!11453))

(assert (=> mapNonEmpty!37912 (= (arr!31136 (_values!6137 thiss!1427)) (store mapRest!37912 mapKey!37912 mapValue!37912))))

(declare-fun b!1029077 () Bool)

(assert (=> b!1029077 (= e!581017 tp_is_empty!24313)))

(declare-fun b!1029078 () Bool)

(declare-fun e!581015 () Bool)

(declare-fun e!581010 () Bool)

(assert (=> b!1029078 (= e!581015 (not e!581010))))

(declare-fun res!688525 () Bool)

(assert (=> b!1029078 (=> res!688525 e!581010)))

(declare-datatypes ((Unit!33566 0))(
  ( (Unit!33567) )
))
(declare-datatypes ((tuple2!15644 0))(
  ( (tuple2!15645 (_1!7832 Unit!33566) (_2!7832 LongMapFixedSize!5500)) )
))
(declare-fun lt!453534 () tuple2!15644)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1029078 (= res!688525 (not (validMask!0 (mask!29861 (_2!7832 lt!453534)))))))

(declare-fun lt!453529 () array!64668)

(declare-fun lt!453531 () array!64670)

(declare-fun Unit!33568 () Unit!33566)

(declare-fun Unit!33569 () Unit!33566)

(assert (=> b!1029078 (= lt!453534 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2805 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15645 Unit!33568 (LongMapFixedSize!5501 (defaultEntry!6114 thiss!1427) (mask!29861 thiss!1427) (extraKeys!5846 thiss!1427) (zeroValue!5950 thiss!1427) (minValue!5950 thiss!1427) (bvsub (_size!2805 thiss!1427) #b00000000000000000000000000000001) lt!453529 lt!453531 (bvadd #b00000000000000000000000000000001 (_vacant!2805 thiss!1427)))) (tuple2!15645 Unit!33569 (LongMapFixedSize!5501 (defaultEntry!6114 thiss!1427) (mask!29861 thiss!1427) (extraKeys!5846 thiss!1427) (zeroValue!5950 thiss!1427) (minValue!5950 thiss!1427) (bvsub (_size!2805 thiss!1427) #b00000000000000000000000000000001) lt!453529 lt!453531 (_vacant!2805 thiss!1427)))))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15646 0))(
  ( (tuple2!15647 (_1!7833 (_ BitVec 64)) (_2!7833 V!37291)) )
))
(declare-datatypes ((List!21927 0))(
  ( (Nil!21924) (Cons!21923 (h!23123 tuple2!15646) (t!31022 List!21927)) )
))
(declare-datatypes ((ListLongMap!13785 0))(
  ( (ListLongMap!13786 (toList!6908 List!21927)) )
))
(declare-fun -!484 (ListLongMap!13785 (_ BitVec 64)) ListLongMap!13785)

(declare-fun getCurrentListMap!3915 (array!64668 array!64670 (_ BitVec 32) (_ BitVec 32) V!37291 V!37291 (_ BitVec 32) Int) ListLongMap!13785)

(assert (=> b!1029078 (= (-!484 (getCurrentListMap!3915 (_keys!11272 thiss!1427) (_values!6137 thiss!1427) (mask!29861 thiss!1427) (extraKeys!5846 thiss!1427) (zeroValue!5950 thiss!1427) (minValue!5950 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6114 thiss!1427)) key!909) (getCurrentListMap!3915 lt!453529 lt!453531 (mask!29861 thiss!1427) (extraKeys!5846 thiss!1427) (zeroValue!5950 thiss!1427) (minValue!5950 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6114 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9670 0))(
  ( (MissingZero!9670 (index!41050 (_ BitVec 32))) (Found!9670 (index!41051 (_ BitVec 32))) (Intermediate!9670 (undefined!10482 Bool) (index!41052 (_ BitVec 32)) (x!91569 (_ BitVec 32))) (Undefined!9670) (MissingVacant!9670 (index!41053 (_ BitVec 32))) )
))
(declare-fun lt!453533 () SeekEntryResult!9670)

(declare-fun dynLambda!1959 (Int (_ BitVec 64)) V!37291)

(assert (=> b!1029078 (= lt!453531 (array!64671 (store (arr!31136 (_values!6137 thiss!1427)) (index!41051 lt!453533) (ValueCellFull!11453 (dynLambda!1959 (defaultEntry!6114 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31652 (_values!6137 thiss!1427))))))

(declare-fun lt!453526 () Unit!33566)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!8 (array!64668 array!64670 (_ BitVec 32) (_ BitVec 32) V!37291 V!37291 (_ BitVec 32) (_ BitVec 64) Int) Unit!33566)

(assert (=> b!1029078 (= lt!453526 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!8 (_keys!11272 thiss!1427) (_values!6137 thiss!1427) (mask!29861 thiss!1427) (extraKeys!5846 thiss!1427) (zeroValue!5950 thiss!1427) (minValue!5950 thiss!1427) (index!41051 lt!453533) key!909 (defaultEntry!6114 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1029078 (not (arrayContainsKey!0 lt!453529 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!453528 () Unit!33566)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64668 (_ BitVec 32) (_ BitVec 64)) Unit!33566)

(assert (=> b!1029078 (= lt!453528 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11272 thiss!1427) (index!41051 lt!453533) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64668 (_ BitVec 32)) Bool)

(assert (=> b!1029078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453529 (mask!29861 thiss!1427))))

(declare-fun lt!453532 () Unit!33566)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64668 (_ BitVec 32) (_ BitVec 32)) Unit!33566)

(assert (=> b!1029078 (= lt!453532 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11272 thiss!1427) (index!41051 lt!453533) (mask!29861 thiss!1427)))))

(declare-datatypes ((List!21928 0))(
  ( (Nil!21925) (Cons!21924 (h!23124 (_ BitVec 64)) (t!31023 List!21928)) )
))
(declare-fun arrayNoDuplicates!0 (array!64668 (_ BitVec 32) List!21928) Bool)

(assert (=> b!1029078 (arrayNoDuplicates!0 lt!453529 #b00000000000000000000000000000000 Nil!21925)))

(declare-fun lt!453530 () Unit!33566)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64668 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21928) Unit!33566)

(assert (=> b!1029078 (= lt!453530 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11272 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41051 lt!453533) #b00000000000000000000000000000000 Nil!21925))))

(declare-fun arrayCountValidKeys!0 (array!64668 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1029078 (= (arrayCountValidKeys!0 lt!453529 #b00000000000000000000000000000000 (size!31651 (_keys!11272 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11272 thiss!1427) #b00000000000000000000000000000000 (size!31651 (_keys!11272 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1029078 (= lt!453529 (array!64669 (store (arr!31135 (_keys!11272 thiss!1427)) (index!41051 lt!453533) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31651 (_keys!11272 thiss!1427))))))

(declare-fun lt!453527 () Unit!33566)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64668 (_ BitVec 32) (_ BitVec 64)) Unit!33566)

(assert (=> b!1029078 (= lt!453527 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11272 thiss!1427) (index!41051 lt!453533) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!688526 () Bool)

(declare-fun e!581013 () Bool)

(assert (=> start!89842 (=> (not res!688526) (not e!581013))))

(declare-fun valid!2037 (LongMapFixedSize!5500) Bool)

(assert (=> start!89842 (= res!688526 (valid!2037 thiss!1427))))

(assert (=> start!89842 e!581013))

(assert (=> start!89842 e!581012))

(assert (=> start!89842 true))

(declare-fun b!1029079 () Bool)

(declare-fun res!688523 () Bool)

(assert (=> b!1029079 (=> (not res!688523) (not e!581013))))

(assert (=> b!1029079 (= res!688523 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1029080 () Bool)

(declare-fun e!581011 () Bool)

(assert (=> b!1029080 (= e!581011 tp_is_empty!24313)))

(declare-fun mapIsEmpty!37912 () Bool)

(assert (=> mapIsEmpty!37912 mapRes!37912))

(declare-fun b!1029081 () Bool)

(assert (=> b!1029081 (= e!581014 (and e!581011 mapRes!37912))))

(declare-fun condMapEmpty!37912 () Bool)

(declare-fun mapDefault!37912 () ValueCell!11453)

