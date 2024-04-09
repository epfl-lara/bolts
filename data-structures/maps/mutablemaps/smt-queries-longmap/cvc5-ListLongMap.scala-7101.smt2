; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90088 () Bool)

(assert start!90088)

(declare-fun b!1031326 () Bool)

(declare-fun b_free!20659 () Bool)

(declare-fun b_next!20659 () Bool)

(assert (=> b!1031326 (= b_free!20659 (not b_next!20659))))

(declare-fun tp!73049 () Bool)

(declare-fun b_and!33103 () Bool)

(assert (=> b!1031326 (= tp!73049 b_and!33103)))

(declare-fun b!1031323 () Bool)

(declare-fun e!582530 () Bool)

(declare-fun tp_is_empty!24379 () Bool)

(assert (=> b!1031323 (= e!582530 tp_is_empty!24379)))

(declare-fun mapNonEmpty!38022 () Bool)

(declare-fun mapRes!38022 () Bool)

(declare-fun tp!73048 () Bool)

(assert (=> mapNonEmpty!38022 (= mapRes!38022 (and tp!73048 e!582530))))

(declare-datatypes ((V!37379 0))(
  ( (V!37380 (val!12240 Int)) )
))
(declare-datatypes ((ValueCell!11486 0))(
  ( (ValueCellFull!11486 (v!14818 V!37379)) (EmptyCell!11486) )
))
(declare-fun mapValue!38022 () ValueCell!11486)

(declare-fun mapKey!38022 () (_ BitVec 32))

(declare-fun mapRest!38022 () (Array (_ BitVec 32) ValueCell!11486))

(declare-datatypes ((array!64806 0))(
  ( (array!64807 (arr!31201 (Array (_ BitVec 32) (_ BitVec 64))) (size!31719 (_ BitVec 32))) )
))
(declare-datatypes ((array!64808 0))(
  ( (array!64809 (arr!31202 (Array (_ BitVec 32) ValueCell!11486)) (size!31720 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5566 0))(
  ( (LongMapFixedSize!5567 (defaultEntry!6157 Int) (mask!29948 (_ BitVec 32)) (extraKeys!5889 (_ BitVec 32)) (zeroValue!5993 V!37379) (minValue!5993 V!37379) (_size!2838 (_ BitVec 32)) (_keys!11327 array!64806) (_values!6180 array!64808) (_vacant!2838 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5566)

(assert (=> mapNonEmpty!38022 (= (arr!31202 (_values!6180 thiss!1427)) (store mapRest!38022 mapKey!38022 mapValue!38022))))

(declare-fun b!1031324 () Bool)

(declare-fun e!582531 () Bool)

(declare-fun e!582535 () Bool)

(assert (=> b!1031324 (= e!582531 e!582535)))

(declare-fun res!689667 () Bool)

(assert (=> b!1031324 (=> (not res!689667) (not e!582535))))

(declare-datatypes ((SeekEntryResult!9699 0))(
  ( (MissingZero!9699 (index!41166 (_ BitVec 32))) (Found!9699 (index!41167 (_ BitVec 32))) (Intermediate!9699 (undefined!10511 Bool) (index!41168 (_ BitVec 32)) (x!91830 (_ BitVec 32))) (Undefined!9699) (MissingVacant!9699 (index!41169 (_ BitVec 32))) )
))
(declare-fun lt!455294 () SeekEntryResult!9699)

(assert (=> b!1031324 (= res!689667 (is-Found!9699 lt!455294))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64806 (_ BitVec 32)) SeekEntryResult!9699)

(assert (=> b!1031324 (= lt!455294 (seekEntry!0 key!909 (_keys!11327 thiss!1427) (mask!29948 thiss!1427)))))

(declare-fun b!1031325 () Bool)

(declare-fun e!582534 () Bool)

(assert (=> b!1031325 (= e!582534 true)))

(declare-fun lt!455289 () Bool)

(declare-datatypes ((Unit!33710 0))(
  ( (Unit!33711) )
))
(declare-datatypes ((tuple2!15762 0))(
  ( (tuple2!15763 (_1!7891 Unit!33710) (_2!7891 LongMapFixedSize!5566)) )
))
(declare-fun lt!455293 () tuple2!15762)

(declare-datatypes ((List!21982 0))(
  ( (Nil!21979) (Cons!21978 (h!23180 (_ BitVec 64)) (t!31143 List!21982)) )
))
(declare-fun arrayNoDuplicates!0 (array!64806 (_ BitVec 32) List!21982) Bool)

(assert (=> b!1031325 (= lt!455289 (arrayNoDuplicates!0 (_keys!11327 (_2!7891 lt!455293)) #b00000000000000000000000000000000 Nil!21979))))

(declare-fun e!582529 () Bool)

(declare-fun e!582533 () Bool)

(declare-fun array_inv!23997 (array!64806) Bool)

(declare-fun array_inv!23998 (array!64808) Bool)

(assert (=> b!1031326 (= e!582529 (and tp!73049 tp_is_empty!24379 (array_inv!23997 (_keys!11327 thiss!1427)) (array_inv!23998 (_values!6180 thiss!1427)) e!582533))))

(declare-fun b!1031327 () Bool)

(declare-fun res!689664 () Bool)

(assert (=> b!1031327 (=> res!689664 e!582534)))

(assert (=> b!1031327 (= res!689664 (or (not (= (size!31720 (_values!6180 (_2!7891 lt!455293))) (bvadd #b00000000000000000000000000000001 (mask!29948 (_2!7891 lt!455293))))) (not (= (size!31719 (_keys!11327 (_2!7891 lt!455293))) (size!31720 (_values!6180 (_2!7891 lt!455293))))) (bvslt (mask!29948 (_2!7891 lt!455293)) #b00000000000000000000000000000000) (bvslt (extraKeys!5889 (_2!7891 lt!455293)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5889 (_2!7891 lt!455293)) #b00000000000000000000000000000011)))))

(declare-fun b!1031328 () Bool)

(assert (=> b!1031328 (= e!582535 (not e!582534))))

(declare-fun res!689668 () Bool)

(assert (=> b!1031328 (=> res!689668 e!582534)))

(declare-datatypes ((tuple2!15764 0))(
  ( (tuple2!15765 (_1!7892 (_ BitVec 64)) (_2!7892 V!37379)) )
))
(declare-datatypes ((List!21983 0))(
  ( (Nil!21980) (Cons!21979 (h!23181 tuple2!15764) (t!31144 List!21983)) )
))
(declare-datatypes ((ListLongMap!13839 0))(
  ( (ListLongMap!13840 (toList!6935 List!21983)) )
))
(declare-fun contains!6014 (ListLongMap!13839 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3942 (array!64806 array!64808 (_ BitVec 32) (_ BitVec 32) V!37379 V!37379 (_ BitVec 32) Int) ListLongMap!13839)

(assert (=> b!1031328 (= res!689668 (not (contains!6014 (getCurrentListMap!3942 (_keys!11327 (_2!7891 lt!455293)) (_values!6180 (_2!7891 lt!455293)) (mask!29948 (_2!7891 lt!455293)) (extraKeys!5889 (_2!7891 lt!455293)) (zeroValue!5993 (_2!7891 lt!455293)) (minValue!5993 (_2!7891 lt!455293)) #b00000000000000000000000000000000 (defaultEntry!6157 (_2!7891 lt!455293))) key!909)))))

(declare-fun lt!455291 () array!64808)

(declare-fun lt!455297 () array!64806)

(declare-fun Unit!33712 () Unit!33710)

(declare-fun Unit!33713 () Unit!33710)

(assert (=> b!1031328 (= lt!455293 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2838 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15763 Unit!33712 (LongMapFixedSize!5567 (defaultEntry!6157 thiss!1427) (mask!29948 thiss!1427) (extraKeys!5889 thiss!1427) (zeroValue!5993 thiss!1427) (minValue!5993 thiss!1427) (bvsub (_size!2838 thiss!1427) #b00000000000000000000000000000001) lt!455297 lt!455291 (bvadd #b00000000000000000000000000000001 (_vacant!2838 thiss!1427)))) (tuple2!15763 Unit!33713 (LongMapFixedSize!5567 (defaultEntry!6157 thiss!1427) (mask!29948 thiss!1427) (extraKeys!5889 thiss!1427) (zeroValue!5993 thiss!1427) (minValue!5993 thiss!1427) (bvsub (_size!2838 thiss!1427) #b00000000000000000000000000000001) lt!455297 lt!455291 (_vacant!2838 thiss!1427)))))))

(declare-fun -!511 (ListLongMap!13839 (_ BitVec 64)) ListLongMap!13839)

(assert (=> b!1031328 (= (-!511 (getCurrentListMap!3942 (_keys!11327 thiss!1427) (_values!6180 thiss!1427) (mask!29948 thiss!1427) (extraKeys!5889 thiss!1427) (zeroValue!5993 thiss!1427) (minValue!5993 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6157 thiss!1427)) key!909) (getCurrentListMap!3942 lt!455297 lt!455291 (mask!29948 thiss!1427) (extraKeys!5889 thiss!1427) (zeroValue!5993 thiss!1427) (minValue!5993 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6157 thiss!1427)))))

(declare-fun dynLambda!1986 (Int (_ BitVec 64)) V!37379)

(assert (=> b!1031328 (= lt!455291 (array!64809 (store (arr!31202 (_values!6180 thiss!1427)) (index!41167 lt!455294) (ValueCellFull!11486 (dynLambda!1986 (defaultEntry!6157 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31720 (_values!6180 thiss!1427))))))

(declare-fun lt!455298 () Unit!33710)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!35 (array!64806 array!64808 (_ BitVec 32) (_ BitVec 32) V!37379 V!37379 (_ BitVec 32) (_ BitVec 64) Int) Unit!33710)

(assert (=> b!1031328 (= lt!455298 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!35 (_keys!11327 thiss!1427) (_values!6180 thiss!1427) (mask!29948 thiss!1427) (extraKeys!5889 thiss!1427) (zeroValue!5993 thiss!1427) (minValue!5993 thiss!1427) (index!41167 lt!455294) key!909 (defaultEntry!6157 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031328 (not (arrayContainsKey!0 lt!455297 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455292 () Unit!33710)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64806 (_ BitVec 32) (_ BitVec 64)) Unit!33710)

(assert (=> b!1031328 (= lt!455292 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11327 thiss!1427) (index!41167 lt!455294) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64806 (_ BitVec 32)) Bool)

(assert (=> b!1031328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455297 (mask!29948 thiss!1427))))

(declare-fun lt!455290 () Unit!33710)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64806 (_ BitVec 32) (_ BitVec 32)) Unit!33710)

(assert (=> b!1031328 (= lt!455290 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11327 thiss!1427) (index!41167 lt!455294) (mask!29948 thiss!1427)))))

(assert (=> b!1031328 (arrayNoDuplicates!0 lt!455297 #b00000000000000000000000000000000 Nil!21979)))

(declare-fun lt!455295 () Unit!33710)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64806 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21982) Unit!33710)

(assert (=> b!1031328 (= lt!455295 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11327 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41167 lt!455294) #b00000000000000000000000000000000 Nil!21979))))

(declare-fun arrayCountValidKeys!0 (array!64806 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031328 (= (arrayCountValidKeys!0 lt!455297 #b00000000000000000000000000000000 (size!31719 (_keys!11327 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11327 thiss!1427) #b00000000000000000000000000000000 (size!31719 (_keys!11327 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031328 (= lt!455297 (array!64807 (store (arr!31201 (_keys!11327 thiss!1427)) (index!41167 lt!455294) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31719 (_keys!11327 thiss!1427))))))

(declare-fun lt!455296 () Unit!33710)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64806 (_ BitVec 32) (_ BitVec 64)) Unit!33710)

(assert (=> b!1031328 (= lt!455296 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11327 thiss!1427) (index!41167 lt!455294) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031329 () Bool)

(declare-fun res!689670 () Bool)

(assert (=> b!1031329 (=> (not res!689670) (not e!582531))))

(assert (=> b!1031329 (= res!689670 (not (= key!909 (bvneg key!909))))))

(declare-fun mapIsEmpty!38022 () Bool)

(assert (=> mapIsEmpty!38022 mapRes!38022))

(declare-fun b!1031331 () Bool)

(declare-fun e!582532 () Bool)

(assert (=> b!1031331 (= e!582533 (and e!582532 mapRes!38022))))

(declare-fun condMapEmpty!38022 () Bool)

(declare-fun mapDefault!38022 () ValueCell!11486)

