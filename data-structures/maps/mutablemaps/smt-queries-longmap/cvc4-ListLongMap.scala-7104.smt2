; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90110 () Bool)

(assert start!90110)

(declare-fun b!1031726 () Bool)

(declare-fun b_free!20681 () Bool)

(declare-fun b_next!20681 () Bool)

(assert (=> b!1031726 (= b_free!20681 (not b_next!20681))))

(declare-fun tp!73114 () Bool)

(declare-fun b_and!33147 () Bool)

(assert (=> b!1031726 (= tp!73114 b_and!33147)))

(declare-fun b!1031716 () Bool)

(declare-fun e!582816 () Bool)

(declare-fun tp_is_empty!24401 () Bool)

(assert (=> b!1031716 (= e!582816 tp_is_empty!24401)))

(declare-fun b!1031717 () Bool)

(declare-fun e!582811 () Bool)

(declare-fun e!582812 () Bool)

(assert (=> b!1031717 (= e!582811 e!582812)))

(declare-fun res!689872 () Bool)

(assert (=> b!1031717 (=> (not res!689872) (not e!582812))))

(declare-datatypes ((SeekEntryResult!9707 0))(
  ( (MissingZero!9707 (index!41198 (_ BitVec 32))) (Found!9707 (index!41199 (_ BitVec 32))) (Intermediate!9707 (undefined!10519 Bool) (index!41200 (_ BitVec 32)) (x!91884 (_ BitVec 32))) (Undefined!9707) (MissingVacant!9707 (index!41201 (_ BitVec 32))) )
))
(declare-fun lt!455637 () SeekEntryResult!9707)

(assert (=> b!1031717 (= res!689872 (is-Found!9707 lt!455637))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37407 0))(
  ( (V!37408 (val!12251 Int)) )
))
(declare-datatypes ((ValueCell!11497 0))(
  ( (ValueCellFull!11497 (v!14829 V!37407)) (EmptyCell!11497) )
))
(declare-datatypes ((array!64850 0))(
  ( (array!64851 (arr!31223 (Array (_ BitVec 32) (_ BitVec 64))) (size!31741 (_ BitVec 32))) )
))
(declare-datatypes ((array!64852 0))(
  ( (array!64853 (arr!31224 (Array (_ BitVec 32) ValueCell!11497)) (size!31742 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5588 0))(
  ( (LongMapFixedSize!5589 (defaultEntry!6168 Int) (mask!29965 (_ BitVec 32)) (extraKeys!5900 (_ BitVec 32)) (zeroValue!6004 V!37407) (minValue!6004 V!37407) (_size!2849 (_ BitVec 32)) (_keys!11338 array!64850) (_values!6191 array!64852) (_vacant!2849 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5588)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64850 (_ BitVec 32)) SeekEntryResult!9707)

(assert (=> b!1031717 (= lt!455637 (seekEntry!0 key!909 (_keys!11338 thiss!1427) (mask!29965 thiss!1427)))))

(declare-fun b!1031718 () Bool)

(declare-datatypes ((Unit!33745 0))(
  ( (Unit!33746) )
))
(declare-fun e!582817 () Unit!33745)

(declare-fun Unit!33747 () Unit!33745)

(assert (=> b!1031718 (= e!582817 Unit!33747)))

(declare-fun lt!455638 () Unit!33745)

(declare-datatypes ((tuple2!15794 0))(
  ( (tuple2!15795 (_1!7907 Unit!33745) (_2!7907 LongMapFixedSize!5588)) )
))
(declare-fun lt!455642 () tuple2!15794)

(declare-fun lemmaKeyInListMapIsInArray!351 (array!64850 array!64852 (_ BitVec 32) (_ BitVec 32) V!37407 V!37407 (_ BitVec 64) Int) Unit!33745)

(assert (=> b!1031718 (= lt!455638 (lemmaKeyInListMapIsInArray!351 (_keys!11338 (_2!7907 lt!455642)) (_values!6191 (_2!7907 lt!455642)) (mask!29965 (_2!7907 lt!455642)) (extraKeys!5900 (_2!7907 lt!455642)) (zeroValue!6004 (_2!7907 lt!455642)) (minValue!6004 (_2!7907 lt!455642)) key!909 (defaultEntry!6168 (_2!7907 lt!455642))))))

(declare-fun c!104195 () Bool)

(assert (=> b!1031718 (= c!104195 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689874 () Bool)

(declare-fun e!582808 () Bool)

(assert (=> b!1031718 (= res!689874 e!582808)))

(declare-fun e!582815 () Bool)

(assert (=> b!1031718 (=> (not res!689874) (not e!582815))))

(assert (=> b!1031718 e!582815))

(declare-fun mapIsEmpty!38055 () Bool)

(declare-fun mapRes!38055 () Bool)

(assert (=> mapIsEmpty!38055 mapRes!38055))

(declare-fun res!689871 () Bool)

(assert (=> start!90110 (=> (not res!689871) (not e!582811))))

(declare-fun valid!2065 (LongMapFixedSize!5588) Bool)

(assert (=> start!90110 (= res!689871 (valid!2065 thiss!1427))))

(assert (=> start!90110 e!582811))

(declare-fun e!582813 () Bool)

(assert (=> start!90110 e!582813))

(assert (=> start!90110 true))

(declare-fun b!1031719 () Bool)

(assert (=> b!1031719 (= e!582815 false)))

(declare-fun b!1031720 () Bool)

(assert (=> b!1031720 (= e!582812 (not true))))

(declare-fun lt!455639 () Bool)

(assert (=> b!1031720 (= lt!455639 (valid!2065 (_2!7907 lt!455642)))))

(declare-fun lt!455643 () Unit!33745)

(assert (=> b!1031720 (= lt!455643 e!582817)))

(declare-fun c!104194 () Bool)

(declare-datatypes ((tuple2!15796 0))(
  ( (tuple2!15797 (_1!7908 (_ BitVec 64)) (_2!7908 V!37407)) )
))
(declare-datatypes ((List!21994 0))(
  ( (Nil!21991) (Cons!21990 (h!23192 tuple2!15796) (t!31177 List!21994)) )
))
(declare-datatypes ((ListLongMap!13851 0))(
  ( (ListLongMap!13852 (toList!6941 List!21994)) )
))
(declare-fun contains!6020 (ListLongMap!13851 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3948 (array!64850 array!64852 (_ BitVec 32) (_ BitVec 32) V!37407 V!37407 (_ BitVec 32) Int) ListLongMap!13851)

(assert (=> b!1031720 (= c!104194 (contains!6020 (getCurrentListMap!3948 (_keys!11338 (_2!7907 lt!455642)) (_values!6191 (_2!7907 lt!455642)) (mask!29965 (_2!7907 lt!455642)) (extraKeys!5900 (_2!7907 lt!455642)) (zeroValue!6004 (_2!7907 lt!455642)) (minValue!6004 (_2!7907 lt!455642)) #b00000000000000000000000000000000 (defaultEntry!6168 (_2!7907 lt!455642))) key!909))))

(declare-fun lt!455646 () array!64852)

(declare-fun lt!455641 () array!64850)

(declare-fun Unit!33748 () Unit!33745)

(declare-fun Unit!33749 () Unit!33745)

(assert (=> b!1031720 (= lt!455642 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2849 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15795 Unit!33748 (LongMapFixedSize!5589 (defaultEntry!6168 thiss!1427) (mask!29965 thiss!1427) (extraKeys!5900 thiss!1427) (zeroValue!6004 thiss!1427) (minValue!6004 thiss!1427) (bvsub (_size!2849 thiss!1427) #b00000000000000000000000000000001) lt!455641 lt!455646 (bvadd #b00000000000000000000000000000001 (_vacant!2849 thiss!1427)))) (tuple2!15795 Unit!33749 (LongMapFixedSize!5589 (defaultEntry!6168 thiss!1427) (mask!29965 thiss!1427) (extraKeys!5900 thiss!1427) (zeroValue!6004 thiss!1427) (minValue!6004 thiss!1427) (bvsub (_size!2849 thiss!1427) #b00000000000000000000000000000001) lt!455641 lt!455646 (_vacant!2849 thiss!1427)))))))

(declare-fun -!517 (ListLongMap!13851 (_ BitVec 64)) ListLongMap!13851)

(assert (=> b!1031720 (= (-!517 (getCurrentListMap!3948 (_keys!11338 thiss!1427) (_values!6191 thiss!1427) (mask!29965 thiss!1427) (extraKeys!5900 thiss!1427) (zeroValue!6004 thiss!1427) (minValue!6004 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6168 thiss!1427)) key!909) (getCurrentListMap!3948 lt!455641 lt!455646 (mask!29965 thiss!1427) (extraKeys!5900 thiss!1427) (zeroValue!6004 thiss!1427) (minValue!6004 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6168 thiss!1427)))))

(declare-fun dynLambda!1992 (Int (_ BitVec 64)) V!37407)

(assert (=> b!1031720 (= lt!455646 (array!64853 (store (arr!31224 (_values!6191 thiss!1427)) (index!41199 lt!455637) (ValueCellFull!11497 (dynLambda!1992 (defaultEntry!6168 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31742 (_values!6191 thiss!1427))))))

(declare-fun lt!455644 () Unit!33745)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!41 (array!64850 array!64852 (_ BitVec 32) (_ BitVec 32) V!37407 V!37407 (_ BitVec 32) (_ BitVec 64) Int) Unit!33745)

(assert (=> b!1031720 (= lt!455644 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!41 (_keys!11338 thiss!1427) (_values!6191 thiss!1427) (mask!29965 thiss!1427) (extraKeys!5900 thiss!1427) (zeroValue!6004 thiss!1427) (minValue!6004 thiss!1427) (index!41199 lt!455637) key!909 (defaultEntry!6168 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031720 (not (arrayContainsKey!0 lt!455641 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455640 () Unit!33745)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64850 (_ BitVec 32) (_ BitVec 64)) Unit!33745)

(assert (=> b!1031720 (= lt!455640 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11338 thiss!1427) (index!41199 lt!455637) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64850 (_ BitVec 32)) Bool)

(assert (=> b!1031720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455641 (mask!29965 thiss!1427))))

(declare-fun lt!455635 () Unit!33745)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64850 (_ BitVec 32) (_ BitVec 32)) Unit!33745)

(assert (=> b!1031720 (= lt!455635 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11338 thiss!1427) (index!41199 lt!455637) (mask!29965 thiss!1427)))))

(declare-datatypes ((List!21995 0))(
  ( (Nil!21992) (Cons!21991 (h!23193 (_ BitVec 64)) (t!31178 List!21995)) )
))
(declare-fun arrayNoDuplicates!0 (array!64850 (_ BitVec 32) List!21995) Bool)

(assert (=> b!1031720 (arrayNoDuplicates!0 lt!455641 #b00000000000000000000000000000000 Nil!21992)))

(declare-fun lt!455645 () Unit!33745)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64850 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21995) Unit!33745)

(assert (=> b!1031720 (= lt!455645 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11338 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41199 lt!455637) #b00000000000000000000000000000000 Nil!21992))))

(declare-fun arrayCountValidKeys!0 (array!64850 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031720 (= (arrayCountValidKeys!0 lt!455641 #b00000000000000000000000000000000 (size!31741 (_keys!11338 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11338 thiss!1427) #b00000000000000000000000000000000 (size!31741 (_keys!11338 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031720 (= lt!455641 (array!64851 (store (arr!31223 (_keys!11338 thiss!1427)) (index!41199 lt!455637) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31741 (_keys!11338 thiss!1427))))))

(declare-fun lt!455636 () Unit!33745)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64850 (_ BitVec 32) (_ BitVec 64)) Unit!33745)

(assert (=> b!1031720 (= lt!455636 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11338 thiss!1427) (index!41199 lt!455637) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031721 () Bool)

(declare-fun e!582809 () Bool)

(assert (=> b!1031721 (= e!582809 tp_is_empty!24401)))

(declare-fun b!1031722 () Bool)

(declare-fun res!689873 () Bool)

(assert (=> b!1031722 (=> (not res!689873) (not e!582811))))

(assert (=> b!1031722 (= res!689873 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1031723 () Bool)

(assert (=> b!1031723 (= e!582808 (arrayContainsKey!0 (_keys!11338 (_2!7907 lt!455642)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1031724 () Bool)

(declare-fun e!582814 () Bool)

(assert (=> b!1031724 (= e!582814 (and e!582809 mapRes!38055))))

(declare-fun condMapEmpty!38055 () Bool)

(declare-fun mapDefault!38055 () ValueCell!11497)

