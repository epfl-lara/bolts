; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90052 () Bool)

(assert start!90052)

(declare-fun b!1030697 () Bool)

(declare-fun b_free!20623 () Bool)

(declare-fun b_next!20623 () Bool)

(assert (=> b!1030697 (= b_free!20623 (not b_next!20623))))

(declare-fun tp!72941 () Bool)

(declare-fun b_and!33031 () Bool)

(assert (=> b!1030697 (= tp!72941 b_and!33031)))

(declare-fun b!1030693 () Bool)

(declare-fun res!689289 () Bool)

(declare-fun e!582096 () Bool)

(assert (=> b!1030693 (=> res!689289 e!582096)))

(declare-datatypes ((V!37331 0))(
  ( (V!37332 (val!12222 Int)) )
))
(declare-datatypes ((ValueCell!11468 0))(
  ( (ValueCellFull!11468 (v!14800 V!37331)) (EmptyCell!11468) )
))
(declare-datatypes ((Unit!33642 0))(
  ( (Unit!33643) )
))
(declare-datatypes ((array!64734 0))(
  ( (array!64735 (arr!31165 (Array (_ BitVec 32) (_ BitVec 64))) (size!31683 (_ BitVec 32))) )
))
(declare-datatypes ((array!64736 0))(
  ( (array!64737 (arr!31166 (Array (_ BitVec 32) ValueCell!11468)) (size!31684 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5530 0))(
  ( (LongMapFixedSize!5531 (defaultEntry!6139 Int) (mask!29918 (_ BitVec 32)) (extraKeys!5871 (_ BitVec 32)) (zeroValue!5975 V!37331) (minValue!5975 V!37331) (_size!2820 (_ BitVec 32)) (_keys!11309 array!64734) (_values!6162 array!64736) (_vacant!2820 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15694 0))(
  ( (tuple2!15695 (_1!7857 Unit!33642) (_2!7857 LongMapFixedSize!5530)) )
))
(declare-fun lt!454758 () tuple2!15694)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030693 (= res!689289 (not (validMask!0 (mask!29918 (_2!7857 lt!454758)))))))

(declare-fun b!1030694 () Bool)

(declare-fun e!582099 () Bool)

(declare-fun e!582102 () Bool)

(assert (=> b!1030694 (= e!582099 e!582102)))

(declare-fun res!689291 () Bool)

(assert (=> b!1030694 (=> (not res!689291) (not e!582102))))

(declare-datatypes ((SeekEntryResult!9681 0))(
  ( (MissingZero!9681 (index!41094 (_ BitVec 32))) (Found!9681 (index!41095 (_ BitVec 32))) (Intermediate!9681 (undefined!10493 Bool) (index!41096 (_ BitVec 32)) (x!91728 (_ BitVec 32))) (Undefined!9681) (MissingVacant!9681 (index!41097 (_ BitVec 32))) )
))
(declare-fun lt!454754 () SeekEntryResult!9681)

(assert (=> b!1030694 (= res!689291 (is-Found!9681 lt!454754))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun thiss!1427 () LongMapFixedSize!5530)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64734 (_ BitVec 32)) SeekEntryResult!9681)

(assert (=> b!1030694 (= lt!454754 (seekEntry!0 key!909 (_keys!11309 thiss!1427) (mask!29918 thiss!1427)))))

(declare-fun b!1030695 () Bool)

(declare-fun res!689286 () Bool)

(assert (=> b!1030695 (=> (not res!689286) (not e!582099))))

(assert (=> b!1030695 (= res!689286 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1030696 () Bool)

(assert (=> b!1030696 (= e!582096 true)))

(declare-fun lt!454750 () Bool)

(declare-datatypes ((List!21949 0))(
  ( (Nil!21946) (Cons!21945 (h!23147 (_ BitVec 64)) (t!31074 List!21949)) )
))
(declare-fun arrayNoDuplicates!0 (array!64734 (_ BitVec 32) List!21949) Bool)

(assert (=> b!1030696 (= lt!454750 (arrayNoDuplicates!0 (_keys!11309 (_2!7857 lt!454758)) #b00000000000000000000000000000000 Nil!21946))))

(declare-fun e!582100 () Bool)

(declare-fun e!582097 () Bool)

(declare-fun tp_is_empty!24343 () Bool)

(declare-fun array_inv!23969 (array!64734) Bool)

(declare-fun array_inv!23970 (array!64736) Bool)

(assert (=> b!1030697 (= e!582097 (and tp!72941 tp_is_empty!24343 (array_inv!23969 (_keys!11309 thiss!1427)) (array_inv!23970 (_values!6162 thiss!1427)) e!582100))))

(declare-fun mapIsEmpty!37968 () Bool)

(declare-fun mapRes!37968 () Bool)

(assert (=> mapIsEmpty!37968 mapRes!37968))

(declare-fun b!1030698 () Bool)

(declare-fun res!689292 () Bool)

(assert (=> b!1030698 (=> res!689292 e!582096)))

(assert (=> b!1030698 (= res!689292 (or (not (= (size!31684 (_values!6162 (_2!7857 lt!454758))) (bvadd #b00000000000000000000000000000001 (mask!29918 (_2!7857 lt!454758))))) (not (= (size!31683 (_keys!11309 (_2!7857 lt!454758))) (size!31684 (_values!6162 (_2!7857 lt!454758))))) (bvslt (mask!29918 (_2!7857 lt!454758)) #b00000000000000000000000000000000) (bvslt (extraKeys!5871 (_2!7857 lt!454758)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5871 (_2!7857 lt!454758)) #b00000000000000000000000000000011)))))

(declare-fun b!1030699 () Bool)

(declare-fun e!582101 () Bool)

(assert (=> b!1030699 (= e!582101 tp_is_empty!24343)))

(declare-fun mapNonEmpty!37968 () Bool)

(declare-fun tp!72940 () Bool)

(declare-fun e!582098 () Bool)

(assert (=> mapNonEmpty!37968 (= mapRes!37968 (and tp!72940 e!582098))))

(declare-fun mapKey!37968 () (_ BitVec 32))

(declare-fun mapRest!37968 () (Array (_ BitVec 32) ValueCell!11468))

(declare-fun mapValue!37968 () ValueCell!11468)

(assert (=> mapNonEmpty!37968 (= (arr!31166 (_values!6162 thiss!1427)) (store mapRest!37968 mapKey!37968 mapValue!37968))))

(declare-fun res!689287 () Bool)

(assert (=> start!90052 (=> (not res!689287) (not e!582099))))

(declare-fun valid!2047 (LongMapFixedSize!5530) Bool)

(assert (=> start!90052 (= res!689287 (valid!2047 thiss!1427))))

(assert (=> start!90052 e!582099))

(assert (=> start!90052 e!582097))

(assert (=> start!90052 true))

(declare-fun b!1030700 () Bool)

(assert (=> b!1030700 (= e!582102 (not e!582096))))

(declare-fun res!689290 () Bool)

(assert (=> b!1030700 (=> res!689290 e!582096)))

(declare-datatypes ((tuple2!15696 0))(
  ( (tuple2!15697 (_1!7858 (_ BitVec 64)) (_2!7858 V!37331)) )
))
(declare-datatypes ((List!21950 0))(
  ( (Nil!21947) (Cons!21946 (h!23148 tuple2!15696) (t!31075 List!21950)) )
))
(declare-datatypes ((ListLongMap!13807 0))(
  ( (ListLongMap!13808 (toList!6919 List!21950)) )
))
(declare-fun contains!5998 (ListLongMap!13807 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3926 (array!64734 array!64736 (_ BitVec 32) (_ BitVec 32) V!37331 V!37331 (_ BitVec 32) Int) ListLongMap!13807)

(assert (=> b!1030700 (= res!689290 (not (contains!5998 (getCurrentListMap!3926 (_keys!11309 (_2!7857 lt!454758)) (_values!6162 (_2!7857 lt!454758)) (mask!29918 (_2!7857 lt!454758)) (extraKeys!5871 (_2!7857 lt!454758)) (zeroValue!5975 (_2!7857 lt!454758)) (minValue!5975 (_2!7857 lt!454758)) #b00000000000000000000000000000000 (defaultEntry!6139 (_2!7857 lt!454758))) key!909)))))

(declare-fun lt!454755 () array!64736)

(declare-fun lt!454752 () array!64734)

(declare-fun Unit!33644 () Unit!33642)

(declare-fun Unit!33645 () Unit!33642)

(assert (=> b!1030700 (= lt!454758 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2820 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15695 Unit!33644 (LongMapFixedSize!5531 (defaultEntry!6139 thiss!1427) (mask!29918 thiss!1427) (extraKeys!5871 thiss!1427) (zeroValue!5975 thiss!1427) (minValue!5975 thiss!1427) (bvsub (_size!2820 thiss!1427) #b00000000000000000000000000000001) lt!454752 lt!454755 (bvadd #b00000000000000000000000000000001 (_vacant!2820 thiss!1427)))) (tuple2!15695 Unit!33645 (LongMapFixedSize!5531 (defaultEntry!6139 thiss!1427) (mask!29918 thiss!1427) (extraKeys!5871 thiss!1427) (zeroValue!5975 thiss!1427) (minValue!5975 thiss!1427) (bvsub (_size!2820 thiss!1427) #b00000000000000000000000000000001) lt!454752 lt!454755 (_vacant!2820 thiss!1427)))))))

(declare-fun -!495 (ListLongMap!13807 (_ BitVec 64)) ListLongMap!13807)

(assert (=> b!1030700 (= (-!495 (getCurrentListMap!3926 (_keys!11309 thiss!1427) (_values!6162 thiss!1427) (mask!29918 thiss!1427) (extraKeys!5871 thiss!1427) (zeroValue!5975 thiss!1427) (minValue!5975 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6139 thiss!1427)) key!909) (getCurrentListMap!3926 lt!454752 lt!454755 (mask!29918 thiss!1427) (extraKeys!5871 thiss!1427) (zeroValue!5975 thiss!1427) (minValue!5975 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6139 thiss!1427)))))

(declare-fun dynLambda!1970 (Int (_ BitVec 64)) V!37331)

(assert (=> b!1030700 (= lt!454755 (array!64737 (store (arr!31166 (_values!6162 thiss!1427)) (index!41095 lt!454754) (ValueCellFull!11468 (dynLambda!1970 (defaultEntry!6139 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31684 (_values!6162 thiss!1427))))))

(declare-fun lt!454757 () Unit!33642)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!19 (array!64734 array!64736 (_ BitVec 32) (_ BitVec 32) V!37331 V!37331 (_ BitVec 32) (_ BitVec 64) Int) Unit!33642)

(assert (=> b!1030700 (= lt!454757 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!19 (_keys!11309 thiss!1427) (_values!6162 thiss!1427) (mask!29918 thiss!1427) (extraKeys!5871 thiss!1427) (zeroValue!5975 thiss!1427) (minValue!5975 thiss!1427) (index!41095 lt!454754) key!909 (defaultEntry!6139 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030700 (not (arrayContainsKey!0 lt!454752 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454749 () Unit!33642)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64734 (_ BitVec 32) (_ BitVec 64)) Unit!33642)

(assert (=> b!1030700 (= lt!454749 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11309 thiss!1427) (index!41095 lt!454754) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64734 (_ BitVec 32)) Bool)

(assert (=> b!1030700 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454752 (mask!29918 thiss!1427))))

(declare-fun lt!454756 () Unit!33642)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64734 (_ BitVec 32) (_ BitVec 32)) Unit!33642)

(assert (=> b!1030700 (= lt!454756 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11309 thiss!1427) (index!41095 lt!454754) (mask!29918 thiss!1427)))))

(assert (=> b!1030700 (arrayNoDuplicates!0 lt!454752 #b00000000000000000000000000000000 Nil!21946)))

(declare-fun lt!454753 () Unit!33642)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64734 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21949) Unit!33642)

(assert (=> b!1030700 (= lt!454753 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11309 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41095 lt!454754) #b00000000000000000000000000000000 Nil!21946))))

(declare-fun arrayCountValidKeys!0 (array!64734 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030700 (= (arrayCountValidKeys!0 lt!454752 #b00000000000000000000000000000000 (size!31683 (_keys!11309 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11309 thiss!1427) #b00000000000000000000000000000000 (size!31683 (_keys!11309 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030700 (= lt!454752 (array!64735 (store (arr!31165 (_keys!11309 thiss!1427)) (index!41095 lt!454754) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31683 (_keys!11309 thiss!1427))))))

(declare-fun lt!454751 () Unit!33642)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64734 (_ BitVec 32) (_ BitVec 64)) Unit!33642)

(assert (=> b!1030700 (= lt!454751 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11309 thiss!1427) (index!41095 lt!454754) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030701 () Bool)

(assert (=> b!1030701 (= e!582100 (and e!582101 mapRes!37968))))

(declare-fun condMapEmpty!37968 () Bool)

(declare-fun mapDefault!37968 () ValueCell!11468)

