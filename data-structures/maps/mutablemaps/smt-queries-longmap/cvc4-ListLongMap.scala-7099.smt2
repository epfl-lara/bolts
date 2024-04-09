; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90080 () Bool)

(assert start!90080)

(declare-fun b!1031190 () Bool)

(declare-fun b_free!20651 () Bool)

(declare-fun b_next!20651 () Bool)

(assert (=> b!1031190 (= b_free!20651 (not b_next!20651))))

(declare-fun tp!73025 () Bool)

(declare-fun b_and!33087 () Bool)

(assert (=> b!1031190 (= tp!73025 b_and!33087)))

(declare-fun mapIsEmpty!38010 () Bool)

(declare-fun mapRes!38010 () Bool)

(assert (=> mapIsEmpty!38010 mapRes!38010))

(declare-fun b!1031183 () Bool)

(declare-fun res!689581 () Bool)

(declare-fun e!582432 () Bool)

(assert (=> b!1031183 (=> res!689581 e!582432)))

(declare-datatypes ((V!37367 0))(
  ( (V!37368 (val!12236 Int)) )
))
(declare-datatypes ((ValueCell!11482 0))(
  ( (ValueCellFull!11482 (v!14814 V!37367)) (EmptyCell!11482) )
))
(declare-datatypes ((Unit!33694 0))(
  ( (Unit!33695) )
))
(declare-datatypes ((array!64790 0))(
  ( (array!64791 (arr!31193 (Array (_ BitVec 32) (_ BitVec 64))) (size!31711 (_ BitVec 32))) )
))
(declare-datatypes ((array!64792 0))(
  ( (array!64793 (arr!31194 (Array (_ BitVec 32) ValueCell!11482)) (size!31712 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5558 0))(
  ( (LongMapFixedSize!5559 (defaultEntry!6153 Int) (mask!29940 (_ BitVec 32)) (extraKeys!5885 (_ BitVec 32)) (zeroValue!5989 V!37367) (minValue!5989 V!37367) (_size!2834 (_ BitVec 32)) (_keys!11323 array!64790) (_values!6176 array!64792) (_vacant!2834 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15746 0))(
  ( (tuple2!15747 (_1!7883 Unit!33694) (_2!7883 LongMapFixedSize!5558)) )
))
(declare-fun lt!455172 () tuple2!15746)

(assert (=> b!1031183 (= res!689581 (or (not (= (size!31712 (_values!6176 (_2!7883 lt!455172))) (bvadd #b00000000000000000000000000000001 (mask!29940 (_2!7883 lt!455172))))) (not (= (size!31711 (_keys!11323 (_2!7883 lt!455172))) (size!31712 (_values!6176 (_2!7883 lt!455172))))) (bvslt (mask!29940 (_2!7883 lt!455172)) #b00000000000000000000000000000000) (bvslt (extraKeys!5885 (_2!7883 lt!455172)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5885 (_2!7883 lt!455172)) #b00000000000000000000000000000011)))))

(declare-fun b!1031184 () Bool)

(declare-fun res!689580 () Bool)

(assert (=> b!1031184 (=> res!689580 e!582432)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64790 (_ BitVec 32)) Bool)

(assert (=> b!1031184 (= res!689580 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11323 (_2!7883 lt!455172)) (mask!29940 (_2!7883 lt!455172)))))))

(declare-fun res!689586 () Bool)

(declare-fun e!582435 () Bool)

(assert (=> start!90080 (=> (not res!689586) (not e!582435))))

(declare-fun thiss!1427 () LongMapFixedSize!5558)

(declare-fun valid!2056 (LongMapFixedSize!5558) Bool)

(assert (=> start!90080 (= res!689586 (valid!2056 thiss!1427))))

(assert (=> start!90080 e!582435))

(declare-fun e!582438 () Bool)

(assert (=> start!90080 e!582438))

(assert (=> start!90080 true))

(declare-fun b!1031185 () Bool)

(declare-fun e!582439 () Bool)

(assert (=> b!1031185 (= e!582435 e!582439)))

(declare-fun res!689583 () Bool)

(assert (=> b!1031185 (=> (not res!689583) (not e!582439))))

(declare-datatypes ((SeekEntryResult!9695 0))(
  ( (MissingZero!9695 (index!41150 (_ BitVec 32))) (Found!9695 (index!41151 (_ BitVec 32))) (Intermediate!9695 (undefined!10507 Bool) (index!41152 (_ BitVec 32)) (x!91802 (_ BitVec 32))) (Undefined!9695) (MissingVacant!9695 (index!41153 (_ BitVec 32))) )
))
(declare-fun lt!455177 () SeekEntryResult!9695)

(assert (=> b!1031185 (= res!689583 (is-Found!9695 lt!455177))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64790 (_ BitVec 32)) SeekEntryResult!9695)

(assert (=> b!1031185 (= lt!455177 (seekEntry!0 key!909 (_keys!11323 thiss!1427) (mask!29940 thiss!1427)))))

(declare-fun b!1031186 () Bool)

(assert (=> b!1031186 (= e!582439 (not e!582432))))

(declare-fun res!689582 () Bool)

(assert (=> b!1031186 (=> res!689582 e!582432)))

(declare-datatypes ((tuple2!15748 0))(
  ( (tuple2!15749 (_1!7884 (_ BitVec 64)) (_2!7884 V!37367)) )
))
(declare-datatypes ((List!21974 0))(
  ( (Nil!21971) (Cons!21970 (h!23172 tuple2!15748) (t!31127 List!21974)) )
))
(declare-datatypes ((ListLongMap!13831 0))(
  ( (ListLongMap!13832 (toList!6931 List!21974)) )
))
(declare-fun contains!6010 (ListLongMap!13831 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3938 (array!64790 array!64792 (_ BitVec 32) (_ BitVec 32) V!37367 V!37367 (_ BitVec 32) Int) ListLongMap!13831)

(assert (=> b!1031186 (= res!689582 (not (contains!6010 (getCurrentListMap!3938 (_keys!11323 (_2!7883 lt!455172)) (_values!6176 (_2!7883 lt!455172)) (mask!29940 (_2!7883 lt!455172)) (extraKeys!5885 (_2!7883 lt!455172)) (zeroValue!5989 (_2!7883 lt!455172)) (minValue!5989 (_2!7883 lt!455172)) #b00000000000000000000000000000000 (defaultEntry!6153 (_2!7883 lt!455172))) key!909)))))

(declare-fun lt!455175 () array!64790)

(declare-fun lt!455174 () array!64792)

(declare-fun Unit!33696 () Unit!33694)

(declare-fun Unit!33697 () Unit!33694)

(assert (=> b!1031186 (= lt!455172 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2834 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15747 Unit!33696 (LongMapFixedSize!5559 (defaultEntry!6153 thiss!1427) (mask!29940 thiss!1427) (extraKeys!5885 thiss!1427) (zeroValue!5989 thiss!1427) (minValue!5989 thiss!1427) (bvsub (_size!2834 thiss!1427) #b00000000000000000000000000000001) lt!455175 lt!455174 (bvadd #b00000000000000000000000000000001 (_vacant!2834 thiss!1427)))) (tuple2!15747 Unit!33697 (LongMapFixedSize!5559 (defaultEntry!6153 thiss!1427) (mask!29940 thiss!1427) (extraKeys!5885 thiss!1427) (zeroValue!5989 thiss!1427) (minValue!5989 thiss!1427) (bvsub (_size!2834 thiss!1427) #b00000000000000000000000000000001) lt!455175 lt!455174 (_vacant!2834 thiss!1427)))))))

(declare-fun -!507 (ListLongMap!13831 (_ BitVec 64)) ListLongMap!13831)

(assert (=> b!1031186 (= (-!507 (getCurrentListMap!3938 (_keys!11323 thiss!1427) (_values!6176 thiss!1427) (mask!29940 thiss!1427) (extraKeys!5885 thiss!1427) (zeroValue!5989 thiss!1427) (minValue!5989 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6153 thiss!1427)) key!909) (getCurrentListMap!3938 lt!455175 lt!455174 (mask!29940 thiss!1427) (extraKeys!5885 thiss!1427) (zeroValue!5989 thiss!1427) (minValue!5989 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6153 thiss!1427)))))

(declare-fun dynLambda!1982 (Int (_ BitVec 64)) V!37367)

(assert (=> b!1031186 (= lt!455174 (array!64793 (store (arr!31194 (_values!6176 thiss!1427)) (index!41151 lt!455177) (ValueCellFull!11482 (dynLambda!1982 (defaultEntry!6153 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31712 (_values!6176 thiss!1427))))))

(declare-fun lt!455173 () Unit!33694)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!31 (array!64790 array!64792 (_ BitVec 32) (_ BitVec 32) V!37367 V!37367 (_ BitVec 32) (_ BitVec 64) Int) Unit!33694)

(assert (=> b!1031186 (= lt!455173 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!31 (_keys!11323 thiss!1427) (_values!6176 thiss!1427) (mask!29940 thiss!1427) (extraKeys!5885 thiss!1427) (zeroValue!5989 thiss!1427) (minValue!5989 thiss!1427) (index!41151 lt!455177) key!909 (defaultEntry!6153 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031186 (not (arrayContainsKey!0 lt!455175 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455176 () Unit!33694)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64790 (_ BitVec 32) (_ BitVec 64)) Unit!33694)

(assert (=> b!1031186 (= lt!455176 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11323 thiss!1427) (index!41151 lt!455177) key!909))))

(assert (=> b!1031186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455175 (mask!29940 thiss!1427))))

(declare-fun lt!455178 () Unit!33694)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64790 (_ BitVec 32) (_ BitVec 32)) Unit!33694)

(assert (=> b!1031186 (= lt!455178 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11323 thiss!1427) (index!41151 lt!455177) (mask!29940 thiss!1427)))))

(declare-datatypes ((List!21975 0))(
  ( (Nil!21972) (Cons!21971 (h!23173 (_ BitVec 64)) (t!31128 List!21975)) )
))
(declare-fun arrayNoDuplicates!0 (array!64790 (_ BitVec 32) List!21975) Bool)

(assert (=> b!1031186 (arrayNoDuplicates!0 lt!455175 #b00000000000000000000000000000000 Nil!21972)))

(declare-fun lt!455170 () Unit!33694)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64790 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21975) Unit!33694)

(assert (=> b!1031186 (= lt!455170 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11323 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41151 lt!455177) #b00000000000000000000000000000000 Nil!21972))))

(declare-fun arrayCountValidKeys!0 (array!64790 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031186 (= (arrayCountValidKeys!0 lt!455175 #b00000000000000000000000000000000 (size!31711 (_keys!11323 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11323 thiss!1427) #b00000000000000000000000000000000 (size!31711 (_keys!11323 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031186 (= lt!455175 (array!64791 (store (arr!31193 (_keys!11323 thiss!1427)) (index!41151 lt!455177) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31711 (_keys!11323 thiss!1427))))))

(declare-fun lt!455171 () Unit!33694)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64790 (_ BitVec 32) (_ BitVec 64)) Unit!33694)

(assert (=> b!1031186 (= lt!455171 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11323 thiss!1427) (index!41151 lt!455177) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031187 () Bool)

(declare-fun e!582433 () Bool)

(declare-fun tp_is_empty!24371 () Bool)

(assert (=> b!1031187 (= e!582433 tp_is_empty!24371)))

(declare-fun b!1031188 () Bool)

(declare-fun e!582437 () Bool)

(declare-fun e!582436 () Bool)

(assert (=> b!1031188 (= e!582437 (and e!582436 mapRes!38010))))

(declare-fun condMapEmpty!38010 () Bool)

(declare-fun mapDefault!38010 () ValueCell!11482)

