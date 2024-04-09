; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90010 () Bool)

(assert start!90010)

(declare-fun b!1030325 () Bool)

(declare-fun b_free!20613 () Bool)

(declare-fun b_next!20613 () Bool)

(assert (=> b!1030325 (= b_free!20613 (not b_next!20613))))

(declare-fun tp!72908 () Bool)

(declare-fun b_and!33005 () Bool)

(assert (=> b!1030325 (= tp!72908 b_and!33005)))

(declare-fun b!1030321 () Bool)

(declare-fun e!581853 () Bool)

(declare-fun e!581849 () Bool)

(assert (=> b!1030321 (= e!581853 (not e!581849))))

(declare-fun res!689090 () Bool)

(assert (=> b!1030321 (=> res!689090 e!581849)))

(declare-datatypes ((V!37317 0))(
  ( (V!37318 (val!12217 Int)) )
))
(declare-datatypes ((ValueCell!11463 0))(
  ( (ValueCellFull!11463 (v!14795 V!37317)) (EmptyCell!11463) )
))
(declare-datatypes ((Unit!33626 0))(
  ( (Unit!33627) )
))
(declare-datatypes ((array!64712 0))(
  ( (array!64713 (arr!31155 (Array (_ BitVec 32) (_ BitVec 64))) (size!31673 (_ BitVec 32))) )
))
(declare-datatypes ((array!64714 0))(
  ( (array!64715 (arr!31156 (Array (_ BitVec 32) ValueCell!11463)) (size!31674 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5520 0))(
  ( (LongMapFixedSize!5521 (defaultEntry!6132 Int) (mask!29903 (_ BitVec 32)) (extraKeys!5864 (_ BitVec 32)) (zeroValue!5968 V!37317) (minValue!5968 V!37317) (_size!2815 (_ BitVec 32)) (_keys!11300 array!64712) (_values!6155 array!64714) (_vacant!2815 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15680 0))(
  ( (tuple2!15681 (_1!7850 Unit!33626) (_2!7850 LongMapFixedSize!5520)) )
))
(declare-fun lt!454482 () tuple2!15680)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1030321 (= res!689090 (not (validMask!0 (mask!29903 (_2!7850 lt!454482)))))))

(declare-fun lt!454479 () array!64714)

(declare-fun thiss!1427 () LongMapFixedSize!5520)

(declare-fun lt!454486 () array!64712)

(declare-fun Unit!33628 () Unit!33626)

(declare-fun Unit!33629 () Unit!33626)

(assert (=> b!1030321 (= lt!454482 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2815 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15681 Unit!33628 (LongMapFixedSize!5521 (defaultEntry!6132 thiss!1427) (mask!29903 thiss!1427) (extraKeys!5864 thiss!1427) (zeroValue!5968 thiss!1427) (minValue!5968 thiss!1427) (bvsub (_size!2815 thiss!1427) #b00000000000000000000000000000001) lt!454486 lt!454479 (bvadd #b00000000000000000000000000000001 (_vacant!2815 thiss!1427)))) (tuple2!15681 Unit!33629 (LongMapFixedSize!5521 (defaultEntry!6132 thiss!1427) (mask!29903 thiss!1427) (extraKeys!5864 thiss!1427) (zeroValue!5968 thiss!1427) (minValue!5968 thiss!1427) (bvsub (_size!2815 thiss!1427) #b00000000000000000000000000000001) lt!454486 lt!454479 (_vacant!2815 thiss!1427)))))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15682 0))(
  ( (tuple2!15683 (_1!7851 (_ BitVec 64)) (_2!7851 V!37317)) )
))
(declare-datatypes ((List!21943 0))(
  ( (Nil!21940) (Cons!21939 (h!23141 tuple2!15682) (t!31058 List!21943)) )
))
(declare-datatypes ((ListLongMap!13801 0))(
  ( (ListLongMap!13802 (toList!6916 List!21943)) )
))
(declare-fun -!492 (ListLongMap!13801 (_ BitVec 64)) ListLongMap!13801)

(declare-fun getCurrentListMap!3923 (array!64712 array!64714 (_ BitVec 32) (_ BitVec 32) V!37317 V!37317 (_ BitVec 32) Int) ListLongMap!13801)

(assert (=> b!1030321 (= (-!492 (getCurrentListMap!3923 (_keys!11300 thiss!1427) (_values!6155 thiss!1427) (mask!29903 thiss!1427) (extraKeys!5864 thiss!1427) (zeroValue!5968 thiss!1427) (minValue!5968 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6132 thiss!1427)) key!909) (getCurrentListMap!3923 lt!454486 lt!454479 (mask!29903 thiss!1427) (extraKeys!5864 thiss!1427) (zeroValue!5968 thiss!1427) (minValue!5968 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6132 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9678 0))(
  ( (MissingZero!9678 (index!41082 (_ BitVec 32))) (Found!9678 (index!41083 (_ BitVec 32))) (Intermediate!9678 (undefined!10490 Bool) (index!41084 (_ BitVec 32)) (x!91681 (_ BitVec 32))) (Undefined!9678) (MissingVacant!9678 (index!41085 (_ BitVec 32))) )
))
(declare-fun lt!454485 () SeekEntryResult!9678)

(declare-fun dynLambda!1967 (Int (_ BitVec 64)) V!37317)

(assert (=> b!1030321 (= lt!454479 (array!64715 (store (arr!31156 (_values!6155 thiss!1427)) (index!41083 lt!454485) (ValueCellFull!11463 (dynLambda!1967 (defaultEntry!6132 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31674 (_values!6155 thiss!1427))))))

(declare-fun lt!454480 () Unit!33626)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!16 (array!64712 array!64714 (_ BitVec 32) (_ BitVec 32) V!37317 V!37317 (_ BitVec 32) (_ BitVec 64) Int) Unit!33626)

(assert (=> b!1030321 (= lt!454480 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!16 (_keys!11300 thiss!1427) (_values!6155 thiss!1427) (mask!29903 thiss!1427) (extraKeys!5864 thiss!1427) (zeroValue!5968 thiss!1427) (minValue!5968 thiss!1427) (index!41083 lt!454485) key!909 (defaultEntry!6132 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1030321 (not (arrayContainsKey!0 lt!454486 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!454483 () Unit!33626)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64712 (_ BitVec 32) (_ BitVec 64)) Unit!33626)

(assert (=> b!1030321 (= lt!454483 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11300 thiss!1427) (index!41083 lt!454485) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64712 (_ BitVec 32)) Bool)

(assert (=> b!1030321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!454486 (mask!29903 thiss!1427))))

(declare-fun lt!454484 () Unit!33626)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64712 (_ BitVec 32) (_ BitVec 32)) Unit!33626)

(assert (=> b!1030321 (= lt!454484 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11300 thiss!1427) (index!41083 lt!454485) (mask!29903 thiss!1427)))))

(declare-datatypes ((List!21944 0))(
  ( (Nil!21941) (Cons!21940 (h!23142 (_ BitVec 64)) (t!31059 List!21944)) )
))
(declare-fun arrayNoDuplicates!0 (array!64712 (_ BitVec 32) List!21944) Bool)

(assert (=> b!1030321 (arrayNoDuplicates!0 lt!454486 #b00000000000000000000000000000000 Nil!21941)))

(declare-fun lt!454478 () Unit!33626)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64712 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21944) Unit!33626)

(assert (=> b!1030321 (= lt!454478 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11300 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41083 lt!454485) #b00000000000000000000000000000000 Nil!21941))))

(declare-fun arrayCountValidKeys!0 (array!64712 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1030321 (= (arrayCountValidKeys!0 lt!454486 #b00000000000000000000000000000000 (size!31673 (_keys!11300 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11300 thiss!1427) #b00000000000000000000000000000000 (size!31673 (_keys!11300 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1030321 (= lt!454486 (array!64713 (store (arr!31155 (_keys!11300 thiss!1427)) (index!41083 lt!454485) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31673 (_keys!11300 thiss!1427))))))

(declare-fun lt!454481 () Unit!33626)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64712 (_ BitVec 32) (_ BitVec 64)) Unit!33626)

(assert (=> b!1030321 (= lt!454481 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11300 thiss!1427) (index!41083 lt!454485) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1030322 () Bool)

(declare-fun e!581848 () Bool)

(declare-fun e!581847 () Bool)

(declare-fun mapRes!37950 () Bool)

(assert (=> b!1030322 (= e!581848 (and e!581847 mapRes!37950))))

(declare-fun condMapEmpty!37950 () Bool)

(declare-fun mapDefault!37950 () ValueCell!11463)

(assert (=> b!1030322 (= condMapEmpty!37950 (= (arr!31156 (_values!6155 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11463)) mapDefault!37950)))))

(declare-fun b!1030323 () Bool)

(declare-fun tp_is_empty!24333 () Bool)

(assert (=> b!1030323 (= e!581847 tp_is_empty!24333)))

(declare-fun b!1030324 () Bool)

(declare-fun e!581851 () Bool)

(assert (=> b!1030324 (= e!581851 e!581853)))

(declare-fun res!689093 () Bool)

(assert (=> b!1030324 (=> (not res!689093) (not e!581853))))

(get-info :version)

(assert (=> b!1030324 (= res!689093 ((_ is Found!9678) lt!454485))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64712 (_ BitVec 32)) SeekEntryResult!9678)

(assert (=> b!1030324 (= lt!454485 (seekEntry!0 key!909 (_keys!11300 thiss!1427) (mask!29903 thiss!1427)))))

(declare-fun e!581846 () Bool)

(declare-fun array_inv!23963 (array!64712) Bool)

(declare-fun array_inv!23964 (array!64714) Bool)

(assert (=> b!1030325 (= e!581846 (and tp!72908 tp_is_empty!24333 (array_inv!23963 (_keys!11300 thiss!1427)) (array_inv!23964 (_values!6155 thiss!1427)) e!581848))))

(declare-fun b!1030326 () Bool)

(declare-fun e!581850 () Bool)

(assert (=> b!1030326 (= e!581850 tp_is_empty!24333)))

(declare-fun b!1030327 () Bool)

(declare-fun res!689095 () Bool)

(assert (=> b!1030327 (=> res!689095 e!581849)))

(assert (=> b!1030327 (= res!689095 (or (not (= (size!31674 (_values!6155 (_2!7850 lt!454482))) (bvadd #b00000000000000000000000000000001 (mask!29903 (_2!7850 lt!454482))))) (not (= (size!31673 (_keys!11300 (_2!7850 lt!454482))) (size!31674 (_values!6155 (_2!7850 lt!454482))))) (bvslt (mask!29903 (_2!7850 lt!454482)) #b00000000000000000000000000000000) (bvslt (extraKeys!5864 (_2!7850 lt!454482)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5864 (_2!7850 lt!454482)) #b00000000000000000000000000000011)))))

(declare-fun b!1030328 () Bool)

(declare-fun res!689094 () Bool)

(assert (=> b!1030328 (=> res!689094 e!581849)))

(assert (=> b!1030328 (= res!689094 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11300 (_2!7850 lt!454482)) (mask!29903 (_2!7850 lt!454482)))))))

(declare-fun b!1030329 () Bool)

(declare-fun res!689092 () Bool)

(assert (=> b!1030329 (=> (not res!689092) (not e!581851))))

(assert (=> b!1030329 (= res!689092 (not (= key!909 (bvneg key!909))))))

(declare-fun res!689091 () Bool)

(assert (=> start!90010 (=> (not res!689091) (not e!581851))))

(declare-fun valid!2044 (LongMapFixedSize!5520) Bool)

(assert (=> start!90010 (= res!689091 (valid!2044 thiss!1427))))

(assert (=> start!90010 e!581851))

(assert (=> start!90010 e!581846))

(assert (=> start!90010 true))

(declare-fun mapIsEmpty!37950 () Bool)

(assert (=> mapIsEmpty!37950 mapRes!37950))

(declare-fun b!1030330 () Bool)

(assert (=> b!1030330 (= e!581849 (arrayNoDuplicates!0 (_keys!11300 (_2!7850 lt!454482)) #b00000000000000000000000000000000 Nil!21941))))

(declare-fun mapNonEmpty!37950 () Bool)

(declare-fun tp!72907 () Bool)

(assert (=> mapNonEmpty!37950 (= mapRes!37950 (and tp!72907 e!581850))))

(declare-fun mapValue!37950 () ValueCell!11463)

(declare-fun mapRest!37950 () (Array (_ BitVec 32) ValueCell!11463))

(declare-fun mapKey!37950 () (_ BitVec 32))

(assert (=> mapNonEmpty!37950 (= (arr!31156 (_values!6155 thiss!1427)) (store mapRest!37950 mapKey!37950 mapValue!37950))))

(assert (= (and start!90010 res!689091) b!1030329))

(assert (= (and b!1030329 res!689092) b!1030324))

(assert (= (and b!1030324 res!689093) b!1030321))

(assert (= (and b!1030321 (not res!689090)) b!1030327))

(assert (= (and b!1030327 (not res!689095)) b!1030328))

(assert (= (and b!1030328 (not res!689094)) b!1030330))

(assert (= (and b!1030322 condMapEmpty!37950) mapIsEmpty!37950))

(assert (= (and b!1030322 (not condMapEmpty!37950)) mapNonEmpty!37950))

(assert (= (and mapNonEmpty!37950 ((_ is ValueCellFull!11463) mapValue!37950)) b!1030326))

(assert (= (and b!1030322 ((_ is ValueCellFull!11463) mapDefault!37950)) b!1030323))

(assert (= b!1030325 b!1030322))

(assert (= start!90010 b!1030325))

(declare-fun b_lambda!15973 () Bool)

(assert (=> (not b_lambda!15973) (not b!1030321)))

(declare-fun t!31057 () Bool)

(declare-fun tb!6939 () Bool)

(assert (=> (and b!1030325 (= (defaultEntry!6132 thiss!1427) (defaultEntry!6132 thiss!1427)) t!31057) tb!6939))

(declare-fun result!14197 () Bool)

(assert (=> tb!6939 (= result!14197 tp_is_empty!24333)))

(assert (=> b!1030321 t!31057))

(declare-fun b_and!33007 () Bool)

(assert (= b_and!33005 (and (=> t!31057 result!14197) b_and!33007)))

(declare-fun m!950177 () Bool)

(assert (=> start!90010 m!950177))

(declare-fun m!950179 () Bool)

(assert (=> mapNonEmpty!37950 m!950179))

(declare-fun m!950181 () Bool)

(assert (=> b!1030321 m!950181))

(declare-fun m!950183 () Bool)

(assert (=> b!1030321 m!950183))

(declare-fun m!950185 () Bool)

(assert (=> b!1030321 m!950185))

(declare-fun m!950187 () Bool)

(assert (=> b!1030321 m!950187))

(declare-fun m!950189 () Bool)

(assert (=> b!1030321 m!950189))

(declare-fun m!950191 () Bool)

(assert (=> b!1030321 m!950191))

(declare-fun m!950193 () Bool)

(assert (=> b!1030321 m!950193))

(declare-fun m!950195 () Bool)

(assert (=> b!1030321 m!950195))

(declare-fun m!950197 () Bool)

(assert (=> b!1030321 m!950197))

(declare-fun m!950199 () Bool)

(assert (=> b!1030321 m!950199))

(assert (=> b!1030321 m!950195))

(declare-fun m!950201 () Bool)

(assert (=> b!1030321 m!950201))

(declare-fun m!950203 () Bool)

(assert (=> b!1030321 m!950203))

(declare-fun m!950205 () Bool)

(assert (=> b!1030321 m!950205))

(declare-fun m!950207 () Bool)

(assert (=> b!1030321 m!950207))

(declare-fun m!950209 () Bool)

(assert (=> b!1030321 m!950209))

(declare-fun m!950211 () Bool)

(assert (=> b!1030321 m!950211))

(declare-fun m!950213 () Bool)

(assert (=> b!1030321 m!950213))

(declare-fun m!950215 () Bool)

(assert (=> b!1030324 m!950215))

(declare-fun m!950217 () Bool)

(assert (=> b!1030328 m!950217))

(declare-fun m!950219 () Bool)

(assert (=> b!1030325 m!950219))

(declare-fun m!950221 () Bool)

(assert (=> b!1030325 m!950221))

(declare-fun m!950223 () Bool)

(assert (=> b!1030330 m!950223))

(check-sat (not mapNonEmpty!37950) (not start!90010) (not b!1030325) (not b_lambda!15973) b_and!33007 (not b_next!20613) tp_is_empty!24333 (not b!1030330) (not b!1030321) (not b!1030324) (not b!1030328))
(check-sat b_and!33007 (not b_next!20613))
