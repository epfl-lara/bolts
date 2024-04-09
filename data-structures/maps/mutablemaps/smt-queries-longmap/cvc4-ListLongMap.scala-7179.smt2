; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91892 () Bool)

(assert start!91892)

(declare-fun b!1044927 () Bool)

(declare-fun b_free!21131 () Bool)

(declare-fun b_next!21131 () Bool)

(assert (=> b!1044927 (= b_free!21131 (not b_next!21131))))

(declare-fun tp!74647 () Bool)

(declare-fun b_and!33751 () Bool)

(assert (=> b!1044927 (= tp!74647 b_and!33751)))

(declare-fun b!1044925 () Bool)

(declare-fun e!592309 () Bool)

(declare-fun tp_is_empty!24851 () Bool)

(assert (=> b!1044925 (= e!592309 tp_is_empty!24851)))

(declare-fun mapNonEmpty!38912 () Bool)

(declare-fun mapRes!38912 () Bool)

(declare-fun tp!74646 () Bool)

(assert (=> mapNonEmpty!38912 (= mapRes!38912 (and tp!74646 e!592309))))

(declare-datatypes ((V!38007 0))(
  ( (V!38008 (val!12476 Int)) )
))
(declare-datatypes ((ValueCell!11722 0))(
  ( (ValueCellFull!11722 (v!15071 V!38007)) (EmptyCell!11722) )
))
(declare-fun mapRest!38912 () (Array (_ BitVec 32) ValueCell!11722))

(declare-fun mapValue!38912 () ValueCell!11722)

(declare-fun mapKey!38912 () (_ BitVec 32))

(declare-datatypes ((array!65858 0))(
  ( (array!65859 (arr!31673 (Array (_ BitVec 32) (_ BitVec 64))) (size!32209 (_ BitVec 32))) )
))
(declare-datatypes ((array!65860 0))(
  ( (array!65861 (arr!31674 (Array (_ BitVec 32) ValueCell!11722)) (size!32210 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6038 0))(
  ( (LongMapFixedSize!6039 (defaultEntry!6411 Int) (mask!30525 (_ BitVec 32)) (extraKeys!6139 (_ BitVec 32)) (zeroValue!6245 V!38007) (minValue!6245 V!38007) (_size!3074 (_ BitVec 32)) (_keys!11676 array!65858) (_values!6434 array!65860) (_vacant!3074 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6038)

(assert (=> mapNonEmpty!38912 (= (arr!31674 (_values!6434 thiss!1427)) (store mapRest!38912 mapKey!38912 mapValue!38912))))

(declare-fun b!1044926 () Bool)

(declare-fun res!695940 () Bool)

(declare-fun e!592308 () Bool)

(assert (=> b!1044926 (=> (not res!695940) (not e!592308))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1044926 (= res!695940 (not (= key!909 (bvneg key!909))))))

(declare-fun e!592306 () Bool)

(declare-fun e!592302 () Bool)

(declare-fun array_inv!24313 (array!65858) Bool)

(declare-fun array_inv!24314 (array!65860) Bool)

(assert (=> b!1044927 (= e!592302 (and tp!74647 tp_is_empty!24851 (array_inv!24313 (_keys!11676 thiss!1427)) (array_inv!24314 (_values!6434 thiss!1427)) e!592306))))

(declare-fun b!1044928 () Bool)

(declare-fun e!592307 () Bool)

(assert (=> b!1044928 (= e!592307 tp_is_empty!24851)))

(declare-fun b!1044929 () Bool)

(declare-fun e!592304 () Bool)

(declare-datatypes ((Unit!34122 0))(
  ( (Unit!34123) )
))
(declare-datatypes ((tuple2!15876 0))(
  ( (tuple2!15877 (_1!7948 Unit!34122) (_2!7948 LongMapFixedSize!6038)) )
))
(declare-fun lt!461132 () tuple2!15876)

(assert (=> b!1044929 (= e!592304 (or (not (= (size!32210 (_values!6434 (_2!7948 lt!461132))) (bvadd #b00000000000000000000000000000001 (mask!30525 (_2!7948 lt!461132))))) (not (= (size!32209 (_keys!11676 (_2!7948 lt!461132))) (size!32210 (_values!6434 (_2!7948 lt!461132))))) (bvsge (mask!30525 (_2!7948 lt!461132)) #b00000000000000000000000000000000)))))

(declare-fun b!1044930 () Bool)

(declare-fun res!695941 () Bool)

(assert (=> b!1044930 (=> res!695941 e!592304)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1044930 (= res!695941 (not (validMask!0 (mask!30525 (_2!7948 lt!461132)))))))

(declare-fun b!1044932 () Bool)

(declare-fun e!592303 () Bool)

(assert (=> b!1044932 (= e!592303 (not e!592304))))

(declare-fun res!695942 () Bool)

(assert (=> b!1044932 (=> res!695942 e!592304)))

(declare-datatypes ((tuple2!15878 0))(
  ( (tuple2!15879 (_1!7949 (_ BitVec 64)) (_2!7949 V!38007)) )
))
(declare-datatypes ((List!22138 0))(
  ( (Nil!22135) (Cons!22134 (h!23342 tuple2!15878) (t!31401 List!22138)) )
))
(declare-datatypes ((ListLongMap!13899 0))(
  ( (ListLongMap!13900 (toList!6965 List!22138)) )
))
(declare-fun contains!6097 (ListLongMap!13899 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3971 (array!65858 array!65860 (_ BitVec 32) (_ BitVec 32) V!38007 V!38007 (_ BitVec 32) Int) ListLongMap!13899)

(assert (=> b!1044932 (= res!695942 (not (contains!6097 (getCurrentListMap!3971 (_keys!11676 (_2!7948 lt!461132)) (_values!6434 (_2!7948 lt!461132)) (mask!30525 (_2!7948 lt!461132)) (extraKeys!6139 (_2!7948 lt!461132)) (zeroValue!6245 (_2!7948 lt!461132)) (minValue!6245 (_2!7948 lt!461132)) #b00000000000000000000000000000000 (defaultEntry!6411 (_2!7948 lt!461132))) key!909)))))

(declare-fun lt!461135 () array!65860)

(declare-fun lt!461133 () array!65858)

(declare-fun Unit!34124 () Unit!34122)

(declare-fun Unit!34125 () Unit!34122)

(assert (=> b!1044932 (= lt!461132 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3074 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15877 Unit!34124 (LongMapFixedSize!6039 (defaultEntry!6411 thiss!1427) (mask!30525 thiss!1427) (extraKeys!6139 thiss!1427) (zeroValue!6245 thiss!1427) (minValue!6245 thiss!1427) (bvsub (_size!3074 thiss!1427) #b00000000000000000000000000000001) lt!461133 lt!461135 (bvadd #b00000000000000000000000000000001 (_vacant!3074 thiss!1427)))) (tuple2!15877 Unit!34125 (LongMapFixedSize!6039 (defaultEntry!6411 thiss!1427) (mask!30525 thiss!1427) (extraKeys!6139 thiss!1427) (zeroValue!6245 thiss!1427) (minValue!6245 thiss!1427) (bvsub (_size!3074 thiss!1427) #b00000000000000000000000000000001) lt!461133 lt!461135 (_vacant!3074 thiss!1427)))))))

(declare-fun -!541 (ListLongMap!13899 (_ BitVec 64)) ListLongMap!13899)

(assert (=> b!1044932 (= (-!541 (getCurrentListMap!3971 (_keys!11676 thiss!1427) (_values!6434 thiss!1427) (mask!30525 thiss!1427) (extraKeys!6139 thiss!1427) (zeroValue!6245 thiss!1427) (minValue!6245 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6411 thiss!1427)) key!909) (getCurrentListMap!3971 lt!461133 lt!461135 (mask!30525 thiss!1427) (extraKeys!6139 thiss!1427) (zeroValue!6245 thiss!1427) (minValue!6245 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6411 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9843 0))(
  ( (MissingZero!9843 (index!41742 (_ BitVec 32))) (Found!9843 (index!41743 (_ BitVec 32))) (Intermediate!9843 (undefined!10655 Bool) (index!41744 (_ BitVec 32)) (x!93320 (_ BitVec 32))) (Undefined!9843) (MissingVacant!9843 (index!41745 (_ BitVec 32))) )
))
(declare-fun lt!461137 () SeekEntryResult!9843)

(declare-fun dynLambda!2015 (Int (_ BitVec 64)) V!38007)

(assert (=> b!1044932 (= lt!461135 (array!65861 (store (arr!31674 (_values!6434 thiss!1427)) (index!41743 lt!461137) (ValueCellFull!11722 (dynLambda!2015 (defaultEntry!6411 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32210 (_values!6434 thiss!1427))))))

(declare-fun lt!461131 () Unit!34122)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!61 (array!65858 array!65860 (_ BitVec 32) (_ BitVec 32) V!38007 V!38007 (_ BitVec 32) (_ BitVec 64) Int) Unit!34122)

(assert (=> b!1044932 (= lt!461131 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!61 (_keys!11676 thiss!1427) (_values!6434 thiss!1427) (mask!30525 thiss!1427) (extraKeys!6139 thiss!1427) (zeroValue!6245 thiss!1427) (minValue!6245 thiss!1427) (index!41743 lt!461137) key!909 (defaultEntry!6411 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1044932 (not (arrayContainsKey!0 lt!461133 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461136 () Unit!34122)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65858 (_ BitVec 32) (_ BitVec 64)) Unit!34122)

(assert (=> b!1044932 (= lt!461136 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11676 thiss!1427) (index!41743 lt!461137) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65858 (_ BitVec 32)) Bool)

(assert (=> b!1044932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461133 (mask!30525 thiss!1427))))

(declare-fun lt!461139 () Unit!34122)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65858 (_ BitVec 32) (_ BitVec 32)) Unit!34122)

(assert (=> b!1044932 (= lt!461139 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11676 thiss!1427) (index!41743 lt!461137) (mask!30525 thiss!1427)))))

(declare-datatypes ((List!22139 0))(
  ( (Nil!22136) (Cons!22135 (h!23343 (_ BitVec 64)) (t!31402 List!22139)) )
))
(declare-fun arrayNoDuplicates!0 (array!65858 (_ BitVec 32) List!22139) Bool)

(assert (=> b!1044932 (arrayNoDuplicates!0 lt!461133 #b00000000000000000000000000000000 Nil!22136)))

(declare-fun lt!461138 () Unit!34122)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65858 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22139) Unit!34122)

(assert (=> b!1044932 (= lt!461138 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11676 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41743 lt!461137) #b00000000000000000000000000000000 Nil!22136))))

(declare-fun arrayCountValidKeys!0 (array!65858 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1044932 (= (arrayCountValidKeys!0 lt!461133 #b00000000000000000000000000000000 (size!32209 (_keys!11676 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11676 thiss!1427) #b00000000000000000000000000000000 (size!32209 (_keys!11676 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1044932 (= lt!461133 (array!65859 (store (arr!31673 (_keys!11676 thiss!1427)) (index!41743 lt!461137) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32209 (_keys!11676 thiss!1427))))))

(declare-fun lt!461134 () Unit!34122)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65858 (_ BitVec 32) (_ BitVec 64)) Unit!34122)

(assert (=> b!1044932 (= lt!461134 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11676 thiss!1427) (index!41743 lt!461137) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!38912 () Bool)

(assert (=> mapIsEmpty!38912 mapRes!38912))

(declare-fun b!1044933 () Bool)

(assert (=> b!1044933 (= e!592308 e!592303)))

(declare-fun res!695944 () Bool)

(assert (=> b!1044933 (=> (not res!695944) (not e!592303))))

(assert (=> b!1044933 (= res!695944 (is-Found!9843 lt!461137))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65858 (_ BitVec 32)) SeekEntryResult!9843)

(assert (=> b!1044933 (= lt!461137 (seekEntry!0 key!909 (_keys!11676 thiss!1427) (mask!30525 thiss!1427)))))

(declare-fun b!1044931 () Bool)

(assert (=> b!1044931 (= e!592306 (and e!592307 mapRes!38912))))

(declare-fun condMapEmpty!38912 () Bool)

(declare-fun mapDefault!38912 () ValueCell!11722)

