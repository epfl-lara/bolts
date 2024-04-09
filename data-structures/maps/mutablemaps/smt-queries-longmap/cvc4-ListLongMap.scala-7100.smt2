; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90086 () Bool)

(assert start!90086)

(declare-fun b!1031288 () Bool)

(declare-fun b_free!20657 () Bool)

(declare-fun b_next!20657 () Bool)

(assert (=> b!1031288 (= b_free!20657 (not b_next!20657))))

(declare-fun tp!73043 () Bool)

(declare-fun b_and!33099 () Bool)

(assert (=> b!1031288 (= tp!73043 b_and!33099)))

(declare-fun tp_is_empty!24377 () Bool)

(declare-fun e!582504 () Bool)

(declare-datatypes ((V!37375 0))(
  ( (V!37376 (val!12239 Int)) )
))
(declare-datatypes ((ValueCell!11485 0))(
  ( (ValueCellFull!11485 (v!14817 V!37375)) (EmptyCell!11485) )
))
(declare-datatypes ((array!64802 0))(
  ( (array!64803 (arr!31199 (Array (_ BitVec 32) (_ BitVec 64))) (size!31717 (_ BitVec 32))) )
))
(declare-datatypes ((array!64804 0))(
  ( (array!64805 (arr!31200 (Array (_ BitVec 32) ValueCell!11485)) (size!31718 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5564 0))(
  ( (LongMapFixedSize!5565 (defaultEntry!6156 Int) (mask!29945 (_ BitVec 32)) (extraKeys!5888 (_ BitVec 32)) (zeroValue!5992 V!37375) (minValue!5992 V!37375) (_size!2837 (_ BitVec 32)) (_keys!11326 array!64802) (_values!6179 array!64804) (_vacant!2837 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5564)

(declare-fun e!582508 () Bool)

(declare-fun array_inv!23995 (array!64802) Bool)

(declare-fun array_inv!23996 (array!64804) Bool)

(assert (=> b!1031288 (= e!582504 (and tp!73043 tp_is_empty!24377 (array_inv!23995 (_keys!11326 thiss!1427)) (array_inv!23996 (_values!6179 thiss!1427)) e!582508))))

(declare-fun b!1031289 () Bool)

(declare-fun e!582511 () Bool)

(declare-fun e!582506 () Bool)

(assert (=> b!1031289 (= e!582511 (not e!582506))))

(declare-fun res!689643 () Bool)

(assert (=> b!1031289 (=> res!689643 e!582506)))

(declare-datatypes ((Unit!33706 0))(
  ( (Unit!33707) )
))
(declare-datatypes ((tuple2!15758 0))(
  ( (tuple2!15759 (_1!7889 Unit!33706) (_2!7889 LongMapFixedSize!5564)) )
))
(declare-fun lt!455260 () tuple2!15758)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15760 0))(
  ( (tuple2!15761 (_1!7890 (_ BitVec 64)) (_2!7890 V!37375)) )
))
(declare-datatypes ((List!21980 0))(
  ( (Nil!21977) (Cons!21976 (h!23178 tuple2!15760) (t!31139 List!21980)) )
))
(declare-datatypes ((ListLongMap!13837 0))(
  ( (ListLongMap!13838 (toList!6934 List!21980)) )
))
(declare-fun contains!6013 (ListLongMap!13837 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3941 (array!64802 array!64804 (_ BitVec 32) (_ BitVec 32) V!37375 V!37375 (_ BitVec 32) Int) ListLongMap!13837)

(assert (=> b!1031289 (= res!689643 (not (contains!6013 (getCurrentListMap!3941 (_keys!11326 (_2!7889 lt!455260)) (_values!6179 (_2!7889 lt!455260)) (mask!29945 (_2!7889 lt!455260)) (extraKeys!5888 (_2!7889 lt!455260)) (zeroValue!5992 (_2!7889 lt!455260)) (minValue!5992 (_2!7889 lt!455260)) #b00000000000000000000000000000000 (defaultEntry!6156 (_2!7889 lt!455260))) key!909)))))

(declare-fun lt!455268 () array!64802)

(declare-fun lt!455265 () array!64804)

(declare-fun Unit!33708 () Unit!33706)

(declare-fun Unit!33709 () Unit!33706)

(assert (=> b!1031289 (= lt!455260 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2837 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15759 Unit!33708 (LongMapFixedSize!5565 (defaultEntry!6156 thiss!1427) (mask!29945 thiss!1427) (extraKeys!5888 thiss!1427) (zeroValue!5992 thiss!1427) (minValue!5992 thiss!1427) (bvsub (_size!2837 thiss!1427) #b00000000000000000000000000000001) lt!455268 lt!455265 (bvadd #b00000000000000000000000000000001 (_vacant!2837 thiss!1427)))) (tuple2!15759 Unit!33709 (LongMapFixedSize!5565 (defaultEntry!6156 thiss!1427) (mask!29945 thiss!1427) (extraKeys!5888 thiss!1427) (zeroValue!5992 thiss!1427) (minValue!5992 thiss!1427) (bvsub (_size!2837 thiss!1427) #b00000000000000000000000000000001) lt!455268 lt!455265 (_vacant!2837 thiss!1427)))))))

(declare-fun -!510 (ListLongMap!13837 (_ BitVec 64)) ListLongMap!13837)

(assert (=> b!1031289 (= (-!510 (getCurrentListMap!3941 (_keys!11326 thiss!1427) (_values!6179 thiss!1427) (mask!29945 thiss!1427) (extraKeys!5888 thiss!1427) (zeroValue!5992 thiss!1427) (minValue!5992 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6156 thiss!1427)) key!909) (getCurrentListMap!3941 lt!455268 lt!455265 (mask!29945 thiss!1427) (extraKeys!5888 thiss!1427) (zeroValue!5992 thiss!1427) (minValue!5992 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6156 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9698 0))(
  ( (MissingZero!9698 (index!41162 (_ BitVec 32))) (Found!9698 (index!41163 (_ BitVec 32))) (Intermediate!9698 (undefined!10510 Bool) (index!41164 (_ BitVec 32)) (x!91819 (_ BitVec 32))) (Undefined!9698) (MissingVacant!9698 (index!41165 (_ BitVec 32))) )
))
(declare-fun lt!455262 () SeekEntryResult!9698)

(declare-fun dynLambda!1985 (Int (_ BitVec 64)) V!37375)

(assert (=> b!1031289 (= lt!455265 (array!64805 (store (arr!31200 (_values!6179 thiss!1427)) (index!41163 lt!455262) (ValueCellFull!11485 (dynLambda!1985 (defaultEntry!6156 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31718 (_values!6179 thiss!1427))))))

(declare-fun lt!455259 () Unit!33706)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!34 (array!64802 array!64804 (_ BitVec 32) (_ BitVec 32) V!37375 V!37375 (_ BitVec 32) (_ BitVec 64) Int) Unit!33706)

(assert (=> b!1031289 (= lt!455259 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!34 (_keys!11326 thiss!1427) (_values!6179 thiss!1427) (mask!29945 thiss!1427) (extraKeys!5888 thiss!1427) (zeroValue!5992 thiss!1427) (minValue!5992 thiss!1427) (index!41163 lt!455262) key!909 (defaultEntry!6156 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031289 (not (arrayContainsKey!0 lt!455268 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455263 () Unit!33706)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64802 (_ BitVec 32) (_ BitVec 64)) Unit!33706)

(assert (=> b!1031289 (= lt!455263 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11326 thiss!1427) (index!41163 lt!455262) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64802 (_ BitVec 32)) Bool)

(assert (=> b!1031289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455268 (mask!29945 thiss!1427))))

(declare-fun lt!455266 () Unit!33706)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64802 (_ BitVec 32) (_ BitVec 32)) Unit!33706)

(assert (=> b!1031289 (= lt!455266 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11326 thiss!1427) (index!41163 lt!455262) (mask!29945 thiss!1427)))))

(declare-datatypes ((List!21981 0))(
  ( (Nil!21978) (Cons!21977 (h!23179 (_ BitVec 64)) (t!31140 List!21981)) )
))
(declare-fun arrayNoDuplicates!0 (array!64802 (_ BitVec 32) List!21981) Bool)

(assert (=> b!1031289 (arrayNoDuplicates!0 lt!455268 #b00000000000000000000000000000000 Nil!21978)))

(declare-fun lt!455264 () Unit!33706)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64802 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21981) Unit!33706)

(assert (=> b!1031289 (= lt!455264 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11326 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41163 lt!455262) #b00000000000000000000000000000000 Nil!21978))))

(declare-fun arrayCountValidKeys!0 (array!64802 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031289 (= (arrayCountValidKeys!0 lt!455268 #b00000000000000000000000000000000 (size!31717 (_keys!11326 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11326 thiss!1427) #b00000000000000000000000000000000 (size!31717 (_keys!11326 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031289 (= lt!455268 (array!64803 (store (arr!31199 (_keys!11326 thiss!1427)) (index!41163 lt!455262) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31717 (_keys!11326 thiss!1427))))))

(declare-fun lt!455267 () Unit!33706)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64802 (_ BitVec 32) (_ BitVec 64)) Unit!33706)

(assert (=> b!1031289 (= lt!455267 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11326 thiss!1427) (index!41163 lt!455262) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031290 () Bool)

(assert (=> b!1031290 (= e!582506 true)))

(declare-fun lt!455261 () Bool)

(assert (=> b!1031290 (= lt!455261 (arrayNoDuplicates!0 (_keys!11326 (_2!7889 lt!455260)) #b00000000000000000000000000000000 Nil!21978))))

(declare-fun b!1031291 () Bool)

(declare-fun e!582507 () Bool)

(assert (=> b!1031291 (= e!582507 e!582511)))

(declare-fun res!689646 () Bool)

(assert (=> b!1031291 (=> (not res!689646) (not e!582511))))

(assert (=> b!1031291 (= res!689646 (is-Found!9698 lt!455262))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64802 (_ BitVec 32)) SeekEntryResult!9698)

(assert (=> b!1031291 (= lt!455262 (seekEntry!0 key!909 (_keys!11326 thiss!1427) (mask!29945 thiss!1427)))))

(declare-fun b!1031292 () Bool)

(declare-fun res!689644 () Bool)

(assert (=> b!1031292 (=> (not res!689644) (not e!582507))))

(assert (=> b!1031292 (= res!689644 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1031293 () Bool)

(declare-fun e!582505 () Bool)

(assert (=> b!1031293 (= e!582505 tp_is_empty!24377)))

(declare-fun b!1031294 () Bool)

(declare-fun res!689648 () Bool)

(assert (=> b!1031294 (=> res!689648 e!582506)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031294 (= res!689648 (not (validMask!0 (mask!29945 (_2!7889 lt!455260)))))))

(declare-fun res!689645 () Bool)

(assert (=> start!90086 (=> (not res!689645) (not e!582507))))

(declare-fun valid!2059 (LongMapFixedSize!5564) Bool)

(assert (=> start!90086 (= res!689645 (valid!2059 thiss!1427))))

(assert (=> start!90086 e!582507))

(assert (=> start!90086 e!582504))

(assert (=> start!90086 true))

(declare-fun mapIsEmpty!38019 () Bool)

(declare-fun mapRes!38019 () Bool)

(assert (=> mapIsEmpty!38019 mapRes!38019))

(declare-fun b!1031295 () Bool)

(declare-fun e!582509 () Bool)

(assert (=> b!1031295 (= e!582509 tp_is_empty!24377)))

(declare-fun b!1031296 () Bool)

(declare-fun res!689647 () Bool)

(assert (=> b!1031296 (=> res!689647 e!582506)))

(assert (=> b!1031296 (= res!689647 (or (not (= (size!31718 (_values!6179 (_2!7889 lt!455260))) (bvadd #b00000000000000000000000000000001 (mask!29945 (_2!7889 lt!455260))))) (not (= (size!31717 (_keys!11326 (_2!7889 lt!455260))) (size!31718 (_values!6179 (_2!7889 lt!455260))))) (bvslt (mask!29945 (_2!7889 lt!455260)) #b00000000000000000000000000000000) (bvslt (extraKeys!5888 (_2!7889 lt!455260)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5888 (_2!7889 lt!455260)) #b00000000000000000000000000000011)))))

(declare-fun b!1031297 () Bool)

(assert (=> b!1031297 (= e!582508 (and e!582509 mapRes!38019))))

(declare-fun condMapEmpty!38019 () Bool)

(declare-fun mapDefault!38019 () ValueCell!11485)

