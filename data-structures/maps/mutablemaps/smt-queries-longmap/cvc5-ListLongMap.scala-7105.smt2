; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90112 () Bool)

(assert start!90112)

(declare-fun b!1031759 () Bool)

(declare-fun b_free!20683 () Bool)

(declare-fun b_next!20683 () Bool)

(assert (=> b!1031759 (= b_free!20683 (not b_next!20683))))

(declare-fun tp!73121 () Bool)

(declare-fun b_and!33151 () Bool)

(assert (=> b!1031759 (= tp!73121 b_and!33151)))

(declare-fun b!1031754 () Bool)

(declare-fun e!582838 () Bool)

(assert (=> b!1031754 (= e!582838 false)))

(declare-fun b!1031755 () Bool)

(declare-fun e!582845 () Bool)

(assert (=> b!1031755 (= e!582845 (not true))))

(declare-fun lt!455681 () Bool)

(declare-datatypes ((V!37411 0))(
  ( (V!37412 (val!12252 Int)) )
))
(declare-datatypes ((ValueCell!11498 0))(
  ( (ValueCellFull!11498 (v!14830 V!37411)) (EmptyCell!11498) )
))
(declare-datatypes ((Unit!33750 0))(
  ( (Unit!33751) )
))
(declare-datatypes ((array!64854 0))(
  ( (array!64855 (arr!31225 (Array (_ BitVec 32) (_ BitVec 64))) (size!31743 (_ BitVec 32))) )
))
(declare-datatypes ((array!64856 0))(
  ( (array!64857 (arr!31226 (Array (_ BitVec 32) ValueCell!11498)) (size!31744 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5590 0))(
  ( (LongMapFixedSize!5591 (defaultEntry!6169 Int) (mask!29968 (_ BitVec 32)) (extraKeys!5901 (_ BitVec 32)) (zeroValue!6005 V!37411) (minValue!6005 V!37411) (_size!2850 (_ BitVec 32)) (_keys!11339 array!64854) (_values!6192 array!64856) (_vacant!2850 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15798 0))(
  ( (tuple2!15799 (_1!7909 Unit!33750) (_2!7909 LongMapFixedSize!5590)) )
))
(declare-fun lt!455682 () tuple2!15798)

(declare-fun valid!2066 (LongMapFixedSize!5590) Bool)

(assert (=> b!1031755 (= lt!455681 (valid!2066 (_2!7909 lt!455682)))))

(declare-fun lt!455677 () Unit!33750)

(declare-fun e!582843 () Unit!33750)

(assert (=> b!1031755 (= lt!455677 e!582843)))

(declare-fun c!104201 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15800 0))(
  ( (tuple2!15801 (_1!7910 (_ BitVec 64)) (_2!7910 V!37411)) )
))
(declare-datatypes ((List!21996 0))(
  ( (Nil!21993) (Cons!21992 (h!23194 tuple2!15800) (t!31181 List!21996)) )
))
(declare-datatypes ((ListLongMap!13853 0))(
  ( (ListLongMap!13854 (toList!6942 List!21996)) )
))
(declare-fun contains!6021 (ListLongMap!13853 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3949 (array!64854 array!64856 (_ BitVec 32) (_ BitVec 32) V!37411 V!37411 (_ BitVec 32) Int) ListLongMap!13853)

(assert (=> b!1031755 (= c!104201 (contains!6021 (getCurrentListMap!3949 (_keys!11339 (_2!7909 lt!455682)) (_values!6192 (_2!7909 lt!455682)) (mask!29968 (_2!7909 lt!455682)) (extraKeys!5901 (_2!7909 lt!455682)) (zeroValue!6005 (_2!7909 lt!455682)) (minValue!6005 (_2!7909 lt!455682)) #b00000000000000000000000000000000 (defaultEntry!6169 (_2!7909 lt!455682))) key!909))))

(declare-fun lt!455676 () array!64854)

(declare-fun lt!455680 () array!64856)

(declare-fun thiss!1427 () LongMapFixedSize!5590)

(declare-fun Unit!33752 () Unit!33750)

(declare-fun Unit!33753 () Unit!33750)

(assert (=> b!1031755 (= lt!455682 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2850 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15799 Unit!33752 (LongMapFixedSize!5591 (defaultEntry!6169 thiss!1427) (mask!29968 thiss!1427) (extraKeys!5901 thiss!1427) (zeroValue!6005 thiss!1427) (minValue!6005 thiss!1427) (bvsub (_size!2850 thiss!1427) #b00000000000000000000000000000001) lt!455676 lt!455680 (bvadd #b00000000000000000000000000000001 (_vacant!2850 thiss!1427)))) (tuple2!15799 Unit!33753 (LongMapFixedSize!5591 (defaultEntry!6169 thiss!1427) (mask!29968 thiss!1427) (extraKeys!5901 thiss!1427) (zeroValue!6005 thiss!1427) (minValue!6005 thiss!1427) (bvsub (_size!2850 thiss!1427) #b00000000000000000000000000000001) lt!455676 lt!455680 (_vacant!2850 thiss!1427)))))))

(declare-fun -!518 (ListLongMap!13853 (_ BitVec 64)) ListLongMap!13853)

(assert (=> b!1031755 (= (-!518 (getCurrentListMap!3949 (_keys!11339 thiss!1427) (_values!6192 thiss!1427) (mask!29968 thiss!1427) (extraKeys!5901 thiss!1427) (zeroValue!6005 thiss!1427) (minValue!6005 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6169 thiss!1427)) key!909) (getCurrentListMap!3949 lt!455676 lt!455680 (mask!29968 thiss!1427) (extraKeys!5901 thiss!1427) (zeroValue!6005 thiss!1427) (minValue!6005 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6169 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9708 0))(
  ( (MissingZero!9708 (index!41202 (_ BitVec 32))) (Found!9708 (index!41203 (_ BitVec 32))) (Intermediate!9708 (undefined!10520 Bool) (index!41204 (_ BitVec 32)) (x!91895 (_ BitVec 32))) (Undefined!9708) (MissingVacant!9708 (index!41205 (_ BitVec 32))) )
))
(declare-fun lt!455675 () SeekEntryResult!9708)

(declare-fun dynLambda!1993 (Int (_ BitVec 64)) V!37411)

(assert (=> b!1031755 (= lt!455680 (array!64857 (store (arr!31226 (_values!6192 thiss!1427)) (index!41203 lt!455675) (ValueCellFull!11498 (dynLambda!1993 (defaultEntry!6169 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31744 (_values!6192 thiss!1427))))))

(declare-fun lt!455674 () Unit!33750)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!42 (array!64854 array!64856 (_ BitVec 32) (_ BitVec 32) V!37411 V!37411 (_ BitVec 32) (_ BitVec 64) Int) Unit!33750)

(assert (=> b!1031755 (= lt!455674 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!42 (_keys!11339 thiss!1427) (_values!6192 thiss!1427) (mask!29968 thiss!1427) (extraKeys!5901 thiss!1427) (zeroValue!6005 thiss!1427) (minValue!6005 thiss!1427) (index!41203 lt!455675) key!909 (defaultEntry!6169 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031755 (not (arrayContainsKey!0 lt!455676 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455671 () Unit!33750)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64854 (_ BitVec 32) (_ BitVec 64)) Unit!33750)

(assert (=> b!1031755 (= lt!455671 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11339 thiss!1427) (index!41203 lt!455675) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64854 (_ BitVec 32)) Bool)

(assert (=> b!1031755 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455676 (mask!29968 thiss!1427))))

(declare-fun lt!455672 () Unit!33750)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64854 (_ BitVec 32) (_ BitVec 32)) Unit!33750)

(assert (=> b!1031755 (= lt!455672 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11339 thiss!1427) (index!41203 lt!455675) (mask!29968 thiss!1427)))))

(declare-datatypes ((List!21997 0))(
  ( (Nil!21994) (Cons!21993 (h!23195 (_ BitVec 64)) (t!31182 List!21997)) )
))
(declare-fun arrayNoDuplicates!0 (array!64854 (_ BitVec 32) List!21997) Bool)

(assert (=> b!1031755 (arrayNoDuplicates!0 lt!455676 #b00000000000000000000000000000000 Nil!21994)))

(declare-fun lt!455678 () Unit!33750)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64854 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21997) Unit!33750)

(assert (=> b!1031755 (= lt!455678 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11339 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41203 lt!455675) #b00000000000000000000000000000000 Nil!21994))))

(declare-fun arrayCountValidKeys!0 (array!64854 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031755 (= (arrayCountValidKeys!0 lt!455676 #b00000000000000000000000000000000 (size!31743 (_keys!11339 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11339 thiss!1427) #b00000000000000000000000000000000 (size!31743 (_keys!11339 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031755 (= lt!455676 (array!64855 (store (arr!31225 (_keys!11339 thiss!1427)) (index!41203 lt!455675) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31743 (_keys!11339 thiss!1427))))))

(declare-fun lt!455679 () Unit!33750)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64854 (_ BitVec 32) (_ BitVec 64)) Unit!33750)

(assert (=> b!1031755 (= lt!455679 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11339 thiss!1427) (index!41203 lt!455675) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031756 () Bool)

(declare-fun e!582840 () Bool)

(assert (=> b!1031756 (= e!582840 e!582845)))

(declare-fun res!689883 () Bool)

(assert (=> b!1031756 (=> (not res!689883) (not e!582845))))

(assert (=> b!1031756 (= res!689883 (is-Found!9708 lt!455675))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64854 (_ BitVec 32)) SeekEntryResult!9708)

(assert (=> b!1031756 (= lt!455675 (seekEntry!0 key!909 (_keys!11339 thiss!1427) (mask!29968 thiss!1427)))))

(declare-fun b!1031757 () Bool)

(declare-fun Unit!33754 () Unit!33750)

(assert (=> b!1031757 (= e!582843 Unit!33754)))

(declare-fun res!689884 () Bool)

(assert (=> start!90112 (=> (not res!689884) (not e!582840))))

(assert (=> start!90112 (= res!689884 (valid!2066 thiss!1427))))

(assert (=> start!90112 e!582840))

(declare-fun e!582847 () Bool)

(assert (=> start!90112 e!582847))

(assert (=> start!90112 true))

(declare-fun b!1031758 () Bool)

(declare-fun e!582846 () Bool)

(declare-fun e!582841 () Bool)

(declare-fun mapRes!38058 () Bool)

(assert (=> b!1031758 (= e!582846 (and e!582841 mapRes!38058))))

(declare-fun condMapEmpty!38058 () Bool)

(declare-fun mapDefault!38058 () ValueCell!11498)

