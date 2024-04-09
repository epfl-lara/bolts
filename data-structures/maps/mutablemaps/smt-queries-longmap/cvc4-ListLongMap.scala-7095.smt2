; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90056 () Bool)

(assert start!90056)

(declare-fun b!1030764 () Bool)

(declare-fun b_free!20627 () Bool)

(declare-fun b_next!20627 () Bool)

(assert (=> b!1030764 (= b_free!20627 (not b_next!20627))))

(declare-fun tp!72953 () Bool)

(declare-fun b_and!33039 () Bool)

(assert (=> b!1030764 (= tp!72953 b_and!33039)))

(declare-fun b!1030763 () Bool)

(declare-fun e!582150 () Bool)

(declare-fun e!582151 () Bool)

(assert (=> b!1030763 (= e!582150 (not e!582151))))

(declare-fun res!689332 () Bool)

(assert (=> b!1030763 (=> res!689332 e!582151)))

(declare-datatypes ((V!37335 0))(
  ( (V!37336 (val!12224 Int)) )
))
(declare-datatypes ((ValueCell!11470 0))(
  ( (ValueCellFull!11470 (v!14802 V!37335)) (EmptyCell!11470) )
))
(declare-datatypes ((Unit!33650 0))(
  ( (Unit!33651) )
))
(declare-datatypes ((array!64742 0))(
  ( (array!64743 (arr!31169 (Array (_ BitVec 32) (_ BitVec 64))) (size!31687 (_ BitVec 32))) )
))
(declare-datatypes ((array!64744 0))(
  ( (array!64745 (arr!31170 (Array (_ BitVec 32) ValueCell!11470)) (size!31688 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5534 0))(
  ( (LongMapFixedSize!5535 (defaultEntry!6141 Int) (mask!29920 (_ BitVec 32)) (extraKeys!5873 (_ BitVec 32)) (zeroValue!5977 V!37335) (minValue!5977 V!37335) (_size!2822 (_ BitVec 32)) (_keys!11311 array!64742) (_values!6164 array!64744) (_vacant!2822 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15702 0))(
  ( (tuple2!15703 (_1!7861 Unit!33650) (_2!7861 LongMapFixedSize!5534)) )
))
(declare-fun lt!454809 () tuple2!15702)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15704 0))(
  ( (tuple2!15705 (_1!7862 (_ BitVec 64)) (_2!7862 V!37335)) )
))
(declare-datatypes ((List!21953 0))(
  ( (Nil!21950) (Cons!21949 (h!23151 tuple2!15704) (t!31082 List!21953)) )
))
(declare-datatypes ((ListLongMap!13811 0))(
  ( (ListLongMap!13812 (toList!6921 List!21953)) )
))
(declare-fun contains!6000 (ListLongMap!13811 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3928 (array!64742 array!64744 (_ BitVec 32) (_ BitVec 32) V!37335 V!37335 (_ BitVec 32) Int) ListLongMap!13811)

(assert (=> b!1030763 (= res!689332 (not (contains!6000 (getCurrentListMap!3928 (_keys!11311 (_2!7861 lt!454809)) (_values!6164 (_2!7861 lt!454809)) (mask!29920 (_2!7861 lt!454809)) (extraKeys!5873 (_2!7861 lt!454809)) (zeroValue!5977 (_2!7861 lt!454809)) (minValue!5977 (_2!7861 lt!454809)) #b00000000000000000000000000000000 (defaultEntry!6141 (_2!7861 lt!454809))) key!909)))))

(declare-fun lt!454815 () array!64744)

(declare-fun thiss!1427 () LongMapFixedSize!5534)

(declare-fun lt!454818 () array!64742)

(declare-fun Unit!33652 () Unit!33650)

(declare-fun Unit!33653 () Unit!33650)

(assert (=> b!1030763 (= lt!454809 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2822 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15703 Unit!33652 (LongMapFixedSize!5535 (defaultEntry!6141 thiss!1427) (mask!29920 thiss!1427) (extraKeys!5873 thiss!1427) (zeroValue!5977 thiss!1427) (minValue!5977 thiss!1427) (bvsub (_size!2822 thiss!1427) #b00000000000000000000000000000001) lt!454818 lt!454815 (bvadd #b00000000000000000000000000000001 (_vacant!2822 thiss!1427)))) (tuple2!15703 Unit!33653 (LongMapFixedSize!5535 (defaultEntry!6141 thiss!1427) (mask!29920 thiss!1427) (extraKeys!5873 thiss!1427) (zeroValue!5977 thiss!1427) (minValue!5977 thiss!1427) (bvsub (_size!2822 thiss!1427) #b00000000000000000000000000000001) lt!454818 lt!454815 (_vacant!2822 thiss!1427)))))))

(declare-fun -!497 (ListLongMap!13811 (_ BitVec 64)) ListLongMap!13811)

(assert (=> b!1030763 (= (-!497 (getCurrentListMap!3928 (_keys!11311 thiss!1427) (_values!6164 thiss!1427) (mask!29920 thiss!1427) (extraKeys!5873 thiss!1427) (zeroValue!5977 thiss!1427) (minValue!5977 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6141 thiss!1427)) key!909) (getCurrentListMap!3928 lt!454818 lt!454815 (mask!29920 thiss!1427) (extraKeys!5873 thiss!1427) (zeroValue!5977 thiss!1427) (minValue!5977 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6141 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9683 0))(
  ( (MissingZero!9683 (index!41102 (_ BitVec 32))) (Found!9683 (index!41103 (_ BitVec 32))) (Intermediate!9683 (undefined!10495 Bool) (index!41104 (_ BitVec 32)) (x!91734 (_ BitVec 32))) (Undefined!9683) (MissingVacant!9683 (index!41105 (_ BitVec 32))) )
))
(declare-fun lt!454814 () SeekEntryResult!9683)

(declare-fun dynLambda!1972 (Int (_ BitVec 64)) V!37335)

(assert (=> b!1030763 (= lt!454815 (array!64745 (store (arr!31170 (_values!6164 thiss!1427)) (index!41103 lt!454814) (ValueCellFull!11470 (dynLambda!1972 (defaultEntry!6141 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31688 (_values!6164 thiss!1427))))))

(declare-fun lt!454813 () Unit!33650)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!21 (array!64742 array!64744 (_ BitVec 32) (_ BitVec 32) V!37335 V!37335 (_ BitVec 32) (_ BitVec 64) Int) Unit!33650)

(assert (=> b!1030763 (= lt!454813 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!21 (_keys!11311 thiss!1427) (_values!6164 thiss!1427) (mask!29920 thiss!1427) (extraKeys!5873 thiss!1427) (zeroValue!5977 thiss!1427) (minValue!5977 thiss!1427) (index!41103 lt!454814) key!909 (defaultEntry!6141 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030763 (not (arrayContainsKey!0 lt!454818 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454812 () Unit!33650)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64742 (_ BitVec 32) (_ BitVec 64)) Unit!33650)

(assert (=> b!1030763 (= lt!454812 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11311 thiss!1427) (index!41103 lt!454814) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64742 (_ BitVec 32)) Bool)

(assert (=> b!1030763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454818 (mask!29920 thiss!1427))))

(declare-fun lt!454816 () Unit!33650)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64742 (_ BitVec 32) (_ BitVec 32)) Unit!33650)

(assert (=> b!1030763 (= lt!454816 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11311 thiss!1427) (index!41103 lt!454814) (mask!29920 thiss!1427)))))

(declare-datatypes ((List!21954 0))(
  ( (Nil!21951) (Cons!21950 (h!23152 (_ BitVec 64)) (t!31083 List!21954)) )
))
(declare-fun arrayNoDuplicates!0 (array!64742 (_ BitVec 32) List!21954) Bool)

(assert (=> b!1030763 (arrayNoDuplicates!0 lt!454818 #b00000000000000000000000000000000 Nil!21951)))

(declare-fun lt!454811 () Unit!33650)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64742 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21954) Unit!33650)

(assert (=> b!1030763 (= lt!454811 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11311 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41103 lt!454814) #b00000000000000000000000000000000 Nil!21951))))

(declare-fun arrayCountValidKeys!0 (array!64742 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030763 (= (arrayCountValidKeys!0 lt!454818 #b00000000000000000000000000000000 (size!31687 (_keys!11311 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11311 thiss!1427) #b00000000000000000000000000000000 (size!31687 (_keys!11311 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030763 (= lt!454818 (array!64743 (store (arr!31169 (_keys!11311 thiss!1427)) (index!41103 lt!454814) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31687 (_keys!11311 thiss!1427))))))

(declare-fun lt!454810 () Unit!33650)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64742 (_ BitVec 32) (_ BitVec 64)) Unit!33650)

(assert (=> b!1030763 (= lt!454810 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11311 thiss!1427) (index!41103 lt!454814) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!37974 () Bool)

(declare-fun mapRes!37974 () Bool)

(declare-fun tp!72952 () Bool)

(declare-fun e!582145 () Bool)

(assert (=> mapNonEmpty!37974 (= mapRes!37974 (and tp!72952 e!582145))))

(declare-fun mapKey!37974 () (_ BitVec 32))

(declare-fun mapRest!37974 () (Array (_ BitVec 32) ValueCell!11470))

(declare-fun mapValue!37974 () ValueCell!11470)

(assert (=> mapNonEmpty!37974 (= (arr!31170 (_values!6164 thiss!1427)) (store mapRest!37974 mapKey!37974 mapValue!37974))))

(declare-fun res!689330 () Bool)

(declare-fun e!582147 () Bool)

(assert (=> start!90056 (=> (not res!689330) (not e!582147))))

(declare-fun valid!2049 (LongMapFixedSize!5534) Bool)

(assert (=> start!90056 (= res!689330 (valid!2049 thiss!1427))))

(assert (=> start!90056 e!582147))

(declare-fun e!582149 () Bool)

(assert (=> start!90056 e!582149))

(assert (=> start!90056 true))

(declare-fun e!582144 () Bool)

(declare-fun tp_is_empty!24347 () Bool)

(declare-fun array_inv!23973 (array!64742) Bool)

(declare-fun array_inv!23974 (array!64744) Bool)

(assert (=> b!1030764 (= e!582149 (and tp!72953 tp_is_empty!24347 (array_inv!23973 (_keys!11311 thiss!1427)) (array_inv!23974 (_values!6164 thiss!1427)) e!582144))))

(declare-fun b!1030765 () Bool)

(assert (=> b!1030765 (= e!582147 e!582150)))

(declare-fun res!689328 () Bool)

(assert (=> b!1030765 (=> (not res!689328) (not e!582150))))

(assert (=> b!1030765 (= res!689328 (is-Found!9683 lt!454814))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64742 (_ BitVec 32)) SeekEntryResult!9683)

(assert (=> b!1030765 (= lt!454814 (seekEntry!0 key!909 (_keys!11311 thiss!1427) (mask!29920 thiss!1427)))))

(declare-fun b!1030766 () Bool)

(declare-fun e!582148 () Bool)

(assert (=> b!1030766 (= e!582144 (and e!582148 mapRes!37974))))

(declare-fun condMapEmpty!37974 () Bool)

(declare-fun mapDefault!37974 () ValueCell!11470)

