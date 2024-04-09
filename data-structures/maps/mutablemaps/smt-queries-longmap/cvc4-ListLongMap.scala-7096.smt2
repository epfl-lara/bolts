; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90062 () Bool)

(assert start!90062)

(declare-fun b!1030875 () Bool)

(declare-fun b_free!20633 () Bool)

(declare-fun b_next!20633 () Bool)

(assert (=> b!1030875 (= b_free!20633 (not b_next!20633))))

(declare-fun tp!72971 () Bool)

(declare-fun b_and!33051 () Bool)

(assert (=> b!1030875 (= tp!72971 b_and!33051)))

(declare-fun b!1030868 () Bool)

(declare-fun e!582223 () Bool)

(declare-fun e!582219 () Bool)

(assert (=> b!1030868 (= e!582223 e!582219)))

(declare-fun res!689395 () Bool)

(assert (=> b!1030868 (=> (not res!689395) (not e!582219))))

(declare-datatypes ((SeekEntryResult!9686 0))(
  ( (MissingZero!9686 (index!41114 (_ BitVec 32))) (Found!9686 (index!41115 (_ BitVec 32))) (Intermediate!9686 (undefined!10498 Bool) (index!41116 (_ BitVec 32)) (x!91751 (_ BitVec 32))) (Undefined!9686) (MissingVacant!9686 (index!41117 (_ BitVec 32))) )
))
(declare-fun lt!454903 () SeekEntryResult!9686)

(assert (=> b!1030868 (= res!689395 (is-Found!9686 lt!454903))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37343 0))(
  ( (V!37344 (val!12227 Int)) )
))
(declare-datatypes ((ValueCell!11473 0))(
  ( (ValueCellFull!11473 (v!14805 V!37343)) (EmptyCell!11473) )
))
(declare-datatypes ((array!64754 0))(
  ( (array!64755 (arr!31175 (Array (_ BitVec 32) (_ BitVec 64))) (size!31693 (_ BitVec 32))) )
))
(declare-datatypes ((array!64756 0))(
  ( (array!64757 (arr!31176 (Array (_ BitVec 32) ValueCell!11473)) (size!31694 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5540 0))(
  ( (LongMapFixedSize!5541 (defaultEntry!6144 Int) (mask!29925 (_ BitVec 32)) (extraKeys!5876 (_ BitVec 32)) (zeroValue!5980 V!37343) (minValue!5980 V!37343) (_size!2825 (_ BitVec 32)) (_keys!11314 array!64754) (_values!6167 array!64756) (_vacant!2825 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5540)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64754 (_ BitVec 32)) SeekEntryResult!9686)

(assert (=> b!1030868 (= lt!454903 (seekEntry!0 key!909 (_keys!11314 thiss!1427) (mask!29925 thiss!1427)))))

(declare-fun mapIsEmpty!37983 () Bool)

(declare-fun mapRes!37983 () Bool)

(assert (=> mapIsEmpty!37983 mapRes!37983))

(declare-fun res!689392 () Bool)

(assert (=> start!90062 (=> (not res!689392) (not e!582223))))

(declare-fun valid!2051 (LongMapFixedSize!5540) Bool)

(assert (=> start!90062 (= res!689392 (valid!2051 thiss!1427))))

(assert (=> start!90062 e!582223))

(declare-fun e!582216 () Bool)

(assert (=> start!90062 e!582216))

(assert (=> start!90062 true))

(declare-fun b!1030869 () Bool)

(declare-fun e!582217 () Bool)

(assert (=> b!1030869 (= e!582219 (not e!582217))))

(declare-fun res!689397 () Bool)

(assert (=> b!1030869 (=> res!689397 e!582217)))

(declare-datatypes ((Unit!33662 0))(
  ( (Unit!33663) )
))
(declare-datatypes ((tuple2!15714 0))(
  ( (tuple2!15715 (_1!7867 Unit!33662) (_2!7867 LongMapFixedSize!5540)) )
))
(declare-fun lt!454908 () tuple2!15714)

(declare-datatypes ((tuple2!15716 0))(
  ( (tuple2!15717 (_1!7868 (_ BitVec 64)) (_2!7868 V!37343)) )
))
(declare-datatypes ((List!21959 0))(
  ( (Nil!21956) (Cons!21955 (h!23157 tuple2!15716) (t!31094 List!21959)) )
))
(declare-datatypes ((ListLongMap!13817 0))(
  ( (ListLongMap!13818 (toList!6924 List!21959)) )
))
(declare-fun contains!6003 (ListLongMap!13817 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3931 (array!64754 array!64756 (_ BitVec 32) (_ BitVec 32) V!37343 V!37343 (_ BitVec 32) Int) ListLongMap!13817)

(assert (=> b!1030869 (= res!689397 (not (contains!6003 (getCurrentListMap!3931 (_keys!11314 (_2!7867 lt!454908)) (_values!6167 (_2!7867 lt!454908)) (mask!29925 (_2!7867 lt!454908)) (extraKeys!5876 (_2!7867 lt!454908)) (zeroValue!5980 (_2!7867 lt!454908)) (minValue!5980 (_2!7867 lt!454908)) #b00000000000000000000000000000000 (defaultEntry!6144 (_2!7867 lt!454908))) key!909)))))

(declare-fun lt!454904 () array!64756)

(declare-fun lt!454907 () array!64754)

(declare-fun Unit!33664 () Unit!33662)

(declare-fun Unit!33665 () Unit!33662)

(assert (=> b!1030869 (= lt!454908 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2825 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15715 Unit!33664 (LongMapFixedSize!5541 (defaultEntry!6144 thiss!1427) (mask!29925 thiss!1427) (extraKeys!5876 thiss!1427) (zeroValue!5980 thiss!1427) (minValue!5980 thiss!1427) (bvsub (_size!2825 thiss!1427) #b00000000000000000000000000000001) lt!454907 lt!454904 (bvadd #b00000000000000000000000000000001 (_vacant!2825 thiss!1427)))) (tuple2!15715 Unit!33665 (LongMapFixedSize!5541 (defaultEntry!6144 thiss!1427) (mask!29925 thiss!1427) (extraKeys!5876 thiss!1427) (zeroValue!5980 thiss!1427) (minValue!5980 thiss!1427) (bvsub (_size!2825 thiss!1427) #b00000000000000000000000000000001) lt!454907 lt!454904 (_vacant!2825 thiss!1427)))))))

(declare-fun -!500 (ListLongMap!13817 (_ BitVec 64)) ListLongMap!13817)

(assert (=> b!1030869 (= (-!500 (getCurrentListMap!3931 (_keys!11314 thiss!1427) (_values!6167 thiss!1427) (mask!29925 thiss!1427) (extraKeys!5876 thiss!1427) (zeroValue!5980 thiss!1427) (minValue!5980 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6144 thiss!1427)) key!909) (getCurrentListMap!3931 lt!454907 lt!454904 (mask!29925 thiss!1427) (extraKeys!5876 thiss!1427) (zeroValue!5980 thiss!1427) (minValue!5980 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6144 thiss!1427)))))

(declare-fun dynLambda!1975 (Int (_ BitVec 64)) V!37343)

(assert (=> b!1030869 (= lt!454904 (array!64757 (store (arr!31176 (_values!6167 thiss!1427)) (index!41115 lt!454903) (ValueCellFull!11473 (dynLambda!1975 (defaultEntry!6144 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31694 (_values!6167 thiss!1427))))))

(declare-fun lt!454905 () Unit!33662)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!24 (array!64754 array!64756 (_ BitVec 32) (_ BitVec 32) V!37343 V!37343 (_ BitVec 32) (_ BitVec 64) Int) Unit!33662)

(assert (=> b!1030869 (= lt!454905 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!24 (_keys!11314 thiss!1427) (_values!6167 thiss!1427) (mask!29925 thiss!1427) (extraKeys!5876 thiss!1427) (zeroValue!5980 thiss!1427) (minValue!5980 thiss!1427) (index!41115 lt!454903) key!909 (defaultEntry!6144 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030869 (not (arrayContainsKey!0 lt!454907 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454900 () Unit!33662)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64754 (_ BitVec 32) (_ BitVec 64)) Unit!33662)

(assert (=> b!1030869 (= lt!454900 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11314 thiss!1427) (index!41115 lt!454903) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64754 (_ BitVec 32)) Bool)

(assert (=> b!1030869 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454907 (mask!29925 thiss!1427))))

(declare-fun lt!454902 () Unit!33662)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64754 (_ BitVec 32) (_ BitVec 32)) Unit!33662)

(assert (=> b!1030869 (= lt!454902 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11314 thiss!1427) (index!41115 lt!454903) (mask!29925 thiss!1427)))))

(declare-datatypes ((List!21960 0))(
  ( (Nil!21957) (Cons!21956 (h!23158 (_ BitVec 64)) (t!31095 List!21960)) )
))
(declare-fun arrayNoDuplicates!0 (array!64754 (_ BitVec 32) List!21960) Bool)

(assert (=> b!1030869 (arrayNoDuplicates!0 lt!454907 #b00000000000000000000000000000000 Nil!21957)))

(declare-fun lt!454899 () Unit!33662)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64754 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21960) Unit!33662)

(assert (=> b!1030869 (= lt!454899 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11314 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41115 lt!454903) #b00000000000000000000000000000000 Nil!21957))))

(declare-fun arrayCountValidKeys!0 (array!64754 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030869 (= (arrayCountValidKeys!0 lt!454907 #b00000000000000000000000000000000 (size!31693 (_keys!11314 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11314 thiss!1427) #b00000000000000000000000000000000 (size!31693 (_keys!11314 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030869 (= lt!454907 (array!64755 (store (arr!31175 (_keys!11314 thiss!1427)) (index!41115 lt!454903) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31693 (_keys!11314 thiss!1427))))))

(declare-fun lt!454901 () Unit!33662)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64754 (_ BitVec 32) (_ BitVec 64)) Unit!33662)

(assert (=> b!1030869 (= lt!454901 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11314 thiss!1427) (index!41115 lt!454903) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030870 () Bool)

(declare-fun e!582222 () Bool)

(declare-fun tp_is_empty!24353 () Bool)

(assert (=> b!1030870 (= e!582222 tp_is_empty!24353)))

(declare-fun mapNonEmpty!37983 () Bool)

(declare-fun tp!72970 () Bool)

(declare-fun e!582218 () Bool)

(assert (=> mapNonEmpty!37983 (= mapRes!37983 (and tp!72970 e!582218))))

(declare-fun mapKey!37983 () (_ BitVec 32))

(declare-fun mapRest!37983 () (Array (_ BitVec 32) ValueCell!11473))

(declare-fun mapValue!37983 () ValueCell!11473)

(assert (=> mapNonEmpty!37983 (= (arr!31176 (_values!6167 thiss!1427)) (store mapRest!37983 mapKey!37983 mapValue!37983))))

(declare-fun b!1030871 () Bool)

(declare-fun res!689393 () Bool)

(assert (=> b!1030871 (=> (not res!689393) (not e!582223))))

(assert (=> b!1030871 (= res!689393 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030872 () Bool)

(declare-fun res!689391 () Bool)

(assert (=> b!1030872 (=> res!689391 e!582217)))

(assert (=> b!1030872 (= res!689391 (or (not (= (size!31694 (_values!6167 (_2!7867 lt!454908))) (bvadd #b00000000000000000000000000000001 (mask!29925 (_2!7867 lt!454908))))) (not (= (size!31693 (_keys!11314 (_2!7867 lt!454908))) (size!31694 (_values!6167 (_2!7867 lt!454908))))) (bvslt (mask!29925 (_2!7867 lt!454908)) #b00000000000000000000000000000000) (bvslt (extraKeys!5876 (_2!7867 lt!454908)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5876 (_2!7867 lt!454908)) #b00000000000000000000000000000011)))))

(declare-fun b!1030873 () Bool)

(assert (=> b!1030873 (= e!582217 true)))

(declare-fun lt!454906 () Bool)

(assert (=> b!1030873 (= lt!454906 (arrayNoDuplicates!0 (_keys!11314 (_2!7867 lt!454908)) #b00000000000000000000000000000000 Nil!21957))))

(declare-fun b!1030874 () Bool)

(assert (=> b!1030874 (= e!582218 tp_is_empty!24353)))

(declare-fun e!582221 () Bool)

(declare-fun array_inv!23977 (array!64754) Bool)

(declare-fun array_inv!23978 (array!64756) Bool)

(assert (=> b!1030875 (= e!582216 (and tp!72971 tp_is_empty!24353 (array_inv!23977 (_keys!11314 thiss!1427)) (array_inv!23978 (_values!6167 thiss!1427)) e!582221))))

(declare-fun b!1030876 () Bool)

(declare-fun res!689396 () Bool)

(assert (=> b!1030876 (=> res!689396 e!582217)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030876 (= res!689396 (not (validMask!0 (mask!29925 (_2!7867 lt!454908)))))))

(declare-fun b!1030877 () Bool)

(declare-fun res!689394 () Bool)

(assert (=> b!1030877 (=> res!689394 e!582217)))

(assert (=> b!1030877 (= res!689394 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11314 (_2!7867 lt!454908)) (mask!29925 (_2!7867 lt!454908)))))))

(declare-fun b!1030878 () Bool)

(assert (=> b!1030878 (= e!582221 (and e!582222 mapRes!37983))))

(declare-fun condMapEmpty!37983 () Bool)

(declare-fun mapDefault!37983 () ValueCell!11473)

