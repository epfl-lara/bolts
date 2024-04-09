; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90090 () Bool)

(assert start!90090)

(declare-fun b!1031368 () Bool)

(declare-fun b_free!20661 () Bool)

(declare-fun b_next!20661 () Bool)

(assert (=> b!1031368 (= b_free!20661 (not b_next!20661))))

(declare-fun tp!73055 () Bool)

(declare-fun b_and!33107 () Bool)

(assert (=> b!1031368 (= tp!73055 b_and!33107)))

(declare-fun b!1031358 () Bool)

(declare-fun e!582559 () Bool)

(declare-fun e!582552 () Bool)

(declare-fun mapRes!38025 () Bool)

(assert (=> b!1031358 (= e!582559 (and e!582552 mapRes!38025))))

(declare-fun condMapEmpty!38025 () Bool)

(declare-datatypes ((V!37381 0))(
  ( (V!37382 (val!12241 Int)) )
))
(declare-datatypes ((ValueCell!11487 0))(
  ( (ValueCellFull!11487 (v!14819 V!37381)) (EmptyCell!11487) )
))
(declare-datatypes ((array!64810 0))(
  ( (array!64811 (arr!31203 (Array (_ BitVec 32) (_ BitVec 64))) (size!31721 (_ BitVec 32))) )
))
(declare-datatypes ((array!64812 0))(
  ( (array!64813 (arr!31204 (Array (_ BitVec 32) ValueCell!11487)) (size!31722 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5568 0))(
  ( (LongMapFixedSize!5569 (defaultEntry!6158 Int) (mask!29949 (_ BitVec 32)) (extraKeys!5890 (_ BitVec 32)) (zeroValue!5994 V!37381) (minValue!5994 V!37381) (_size!2839 (_ BitVec 32)) (_keys!11328 array!64810) (_values!6181 array!64812) (_vacant!2839 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5568)

(declare-fun mapDefault!38025 () ValueCell!11487)

(assert (=> b!1031358 (= condMapEmpty!38025 (= (arr!31204 (_values!6181 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11487)) mapDefault!38025)))))

(declare-fun b!1031359 () Bool)

(declare-fun res!689687 () Bool)

(declare-fun e!582555 () Bool)

(assert (=> b!1031359 (=> res!689687 e!582555)))

(declare-datatypes ((Unit!33714 0))(
  ( (Unit!33715) )
))
(declare-datatypes ((tuple2!15766 0))(
  ( (tuple2!15767 (_1!7893 Unit!33714) (_2!7893 LongMapFixedSize!5568)) )
))
(declare-fun lt!455325 () tuple2!15766)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64810 (_ BitVec 32)) Bool)

(assert (=> b!1031359 (= res!689687 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11328 (_2!7893 lt!455325)) (mask!29949 (_2!7893 lt!455325)))))))

(declare-fun b!1031360 () Bool)

(declare-fun e!582554 () Bool)

(declare-fun tp_is_empty!24381 () Bool)

(assert (=> b!1031360 (= e!582554 tp_is_empty!24381)))

(declare-fun b!1031361 () Bool)

(declare-fun e!582557 () Bool)

(declare-fun e!582558 () Bool)

(assert (=> b!1031361 (= e!582557 e!582558)))

(declare-fun res!689691 () Bool)

(assert (=> b!1031361 (=> (not res!689691) (not e!582558))))

(declare-datatypes ((SeekEntryResult!9700 0))(
  ( (MissingZero!9700 (index!41170 (_ BitVec 32))) (Found!9700 (index!41171 (_ BitVec 32))) (Intermediate!9700 (undefined!10512 Bool) (index!41172 (_ BitVec 32)) (x!91833 (_ BitVec 32))) (Undefined!9700) (MissingVacant!9700 (index!41173 (_ BitVec 32))) )
))
(declare-fun lt!455320 () SeekEntryResult!9700)

(get-info :version)

(assert (=> b!1031361 (= res!689691 ((_ is Found!9700) lt!455320))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64810 (_ BitVec 32)) SeekEntryResult!9700)

(assert (=> b!1031361 (= lt!455320 (seekEntry!0 key!909 (_keys!11328 thiss!1427) (mask!29949 thiss!1427)))))

(declare-fun b!1031362 () Bool)

(declare-fun res!689688 () Bool)

(assert (=> b!1031362 (=> (not res!689688) (not e!582557))))

(assert (=> b!1031362 (= res!689688 (not (= key!909 (bvneg key!909))))))

(declare-fun res!689690 () Bool)

(assert (=> start!90090 (=> (not res!689690) (not e!582557))))

(declare-fun valid!2060 (LongMapFixedSize!5568) Bool)

(assert (=> start!90090 (= res!689690 (valid!2060 thiss!1427))))

(assert (=> start!90090 e!582557))

(declare-fun e!582553 () Bool)

(assert (=> start!90090 e!582553))

(assert (=> start!90090 true))

(declare-fun b!1031363 () Bool)

(declare-fun res!689685 () Bool)

(assert (=> b!1031363 (=> res!689685 e!582555)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031363 (= res!689685 (not (validMask!0 (mask!29949 (_2!7893 lt!455325)))))))

(declare-fun b!1031364 () Bool)

(declare-fun res!689689 () Bool)

(assert (=> b!1031364 (=> res!689689 e!582555)))

(assert (=> b!1031364 (= res!689689 (or (not (= (size!31722 (_values!6181 (_2!7893 lt!455325))) (bvadd #b00000000000000000000000000000001 (mask!29949 (_2!7893 lt!455325))))) (not (= (size!31721 (_keys!11328 (_2!7893 lt!455325))) (size!31722 (_values!6181 (_2!7893 lt!455325))))) (bvslt (mask!29949 (_2!7893 lt!455325)) #b00000000000000000000000000000000) (bvslt (extraKeys!5890 (_2!7893 lt!455325)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5890 (_2!7893 lt!455325)) #b00000000000000000000000000000011)))))

(declare-fun b!1031365 () Bool)

(assert (=> b!1031365 (= e!582555 true)))

(declare-fun lt!455322 () Bool)

(declare-datatypes ((List!21984 0))(
  ( (Nil!21981) (Cons!21980 (h!23182 (_ BitVec 64)) (t!31147 List!21984)) )
))
(declare-fun arrayNoDuplicates!0 (array!64810 (_ BitVec 32) List!21984) Bool)

(assert (=> b!1031365 (= lt!455322 (arrayNoDuplicates!0 (_keys!11328 (_2!7893 lt!455325)) #b00000000000000000000000000000000 Nil!21981))))

(declare-fun b!1031366 () Bool)

(assert (=> b!1031366 (= e!582558 (not e!582555))))

(declare-fun res!689686 () Bool)

(assert (=> b!1031366 (=> res!689686 e!582555)))

(declare-datatypes ((tuple2!15768 0))(
  ( (tuple2!15769 (_1!7894 (_ BitVec 64)) (_2!7894 V!37381)) )
))
(declare-datatypes ((List!21985 0))(
  ( (Nil!21982) (Cons!21981 (h!23183 tuple2!15768) (t!31148 List!21985)) )
))
(declare-datatypes ((ListLongMap!13841 0))(
  ( (ListLongMap!13842 (toList!6936 List!21985)) )
))
(declare-fun contains!6015 (ListLongMap!13841 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3943 (array!64810 array!64812 (_ BitVec 32) (_ BitVec 32) V!37381 V!37381 (_ BitVec 32) Int) ListLongMap!13841)

(assert (=> b!1031366 (= res!689686 (not (contains!6015 (getCurrentListMap!3943 (_keys!11328 (_2!7893 lt!455325)) (_values!6181 (_2!7893 lt!455325)) (mask!29949 (_2!7893 lt!455325)) (extraKeys!5890 (_2!7893 lt!455325)) (zeroValue!5994 (_2!7893 lt!455325)) (minValue!5994 (_2!7893 lt!455325)) #b00000000000000000000000000000000 (defaultEntry!6158 (_2!7893 lt!455325))) key!909)))))

(declare-fun lt!455327 () array!64810)

(declare-fun lt!455321 () array!64812)

(declare-fun Unit!33716 () Unit!33714)

(declare-fun Unit!33717 () Unit!33714)

(assert (=> b!1031366 (= lt!455325 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2839 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15767 Unit!33716 (LongMapFixedSize!5569 (defaultEntry!6158 thiss!1427) (mask!29949 thiss!1427) (extraKeys!5890 thiss!1427) (zeroValue!5994 thiss!1427) (minValue!5994 thiss!1427) (bvsub (_size!2839 thiss!1427) #b00000000000000000000000000000001) lt!455327 lt!455321 (bvadd #b00000000000000000000000000000001 (_vacant!2839 thiss!1427)))) (tuple2!15767 Unit!33717 (LongMapFixedSize!5569 (defaultEntry!6158 thiss!1427) (mask!29949 thiss!1427) (extraKeys!5890 thiss!1427) (zeroValue!5994 thiss!1427) (minValue!5994 thiss!1427) (bvsub (_size!2839 thiss!1427) #b00000000000000000000000000000001) lt!455327 lt!455321 (_vacant!2839 thiss!1427)))))))

(declare-fun -!512 (ListLongMap!13841 (_ BitVec 64)) ListLongMap!13841)

(assert (=> b!1031366 (= (-!512 (getCurrentListMap!3943 (_keys!11328 thiss!1427) (_values!6181 thiss!1427) (mask!29949 thiss!1427) (extraKeys!5890 thiss!1427) (zeroValue!5994 thiss!1427) (minValue!5994 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6158 thiss!1427)) key!909) (getCurrentListMap!3943 lt!455327 lt!455321 (mask!29949 thiss!1427) (extraKeys!5890 thiss!1427) (zeroValue!5994 thiss!1427) (minValue!5994 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6158 thiss!1427)))))

(declare-fun dynLambda!1987 (Int (_ BitVec 64)) V!37381)

(assert (=> b!1031366 (= lt!455321 (array!64813 (store (arr!31204 (_values!6181 thiss!1427)) (index!41171 lt!455320) (ValueCellFull!11487 (dynLambda!1987 (defaultEntry!6158 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31722 (_values!6181 thiss!1427))))))

(declare-fun lt!455328 () Unit!33714)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!36 (array!64810 array!64812 (_ BitVec 32) (_ BitVec 32) V!37381 V!37381 (_ BitVec 32) (_ BitVec 64) Int) Unit!33714)

(assert (=> b!1031366 (= lt!455328 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!36 (_keys!11328 thiss!1427) (_values!6181 thiss!1427) (mask!29949 thiss!1427) (extraKeys!5890 thiss!1427) (zeroValue!5994 thiss!1427) (minValue!5994 thiss!1427) (index!41171 lt!455320) key!909 (defaultEntry!6158 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031366 (not (arrayContainsKey!0 lt!455327 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455326 () Unit!33714)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64810 (_ BitVec 32) (_ BitVec 64)) Unit!33714)

(assert (=> b!1031366 (= lt!455326 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11328 thiss!1427) (index!41171 lt!455320) key!909))))

(assert (=> b!1031366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455327 (mask!29949 thiss!1427))))

(declare-fun lt!455319 () Unit!33714)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64810 (_ BitVec 32) (_ BitVec 32)) Unit!33714)

(assert (=> b!1031366 (= lt!455319 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11328 thiss!1427) (index!41171 lt!455320) (mask!29949 thiss!1427)))))

(assert (=> b!1031366 (arrayNoDuplicates!0 lt!455327 #b00000000000000000000000000000000 Nil!21981)))

(declare-fun lt!455324 () Unit!33714)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64810 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21984) Unit!33714)

(assert (=> b!1031366 (= lt!455324 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11328 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41171 lt!455320) #b00000000000000000000000000000000 Nil!21981))))

(declare-fun arrayCountValidKeys!0 (array!64810 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031366 (= (arrayCountValidKeys!0 lt!455327 #b00000000000000000000000000000000 (size!31721 (_keys!11328 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11328 thiss!1427) #b00000000000000000000000000000000 (size!31721 (_keys!11328 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031366 (= lt!455327 (array!64811 (store (arr!31203 (_keys!11328 thiss!1427)) (index!41171 lt!455320) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31721 (_keys!11328 thiss!1427))))))

(declare-fun lt!455323 () Unit!33714)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64810 (_ BitVec 32) (_ BitVec 64)) Unit!33714)

(assert (=> b!1031366 (= lt!455323 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11328 thiss!1427) (index!41171 lt!455320) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031367 () Bool)

(assert (=> b!1031367 (= e!582552 tp_is_empty!24381)))

(declare-fun mapNonEmpty!38025 () Bool)

(declare-fun tp!73054 () Bool)

(assert (=> mapNonEmpty!38025 (= mapRes!38025 (and tp!73054 e!582554))))

(declare-fun mapRest!38025 () (Array (_ BitVec 32) ValueCell!11487))

(declare-fun mapKey!38025 () (_ BitVec 32))

(declare-fun mapValue!38025 () ValueCell!11487)

(assert (=> mapNonEmpty!38025 (= (arr!31204 (_values!6181 thiss!1427)) (store mapRest!38025 mapKey!38025 mapValue!38025))))

(declare-fun mapIsEmpty!38025 () Bool)

(assert (=> mapIsEmpty!38025 mapRes!38025))

(declare-fun array_inv!23999 (array!64810) Bool)

(declare-fun array_inv!24000 (array!64812) Bool)

(assert (=> b!1031368 (= e!582553 (and tp!73055 tp_is_empty!24381 (array_inv!23999 (_keys!11328 thiss!1427)) (array_inv!24000 (_values!6181 thiss!1427)) e!582559))))

(assert (= (and start!90090 res!689690) b!1031362))

(assert (= (and b!1031362 res!689688) b!1031361))

(assert (= (and b!1031361 res!689691) b!1031366))

(assert (= (and b!1031366 (not res!689686)) b!1031363))

(assert (= (and b!1031363 (not res!689685)) b!1031364))

(assert (= (and b!1031364 (not res!689689)) b!1031359))

(assert (= (and b!1031359 (not res!689687)) b!1031365))

(assert (= (and b!1031358 condMapEmpty!38025) mapIsEmpty!38025))

(assert (= (and b!1031358 (not condMapEmpty!38025)) mapNonEmpty!38025))

(assert (= (and mapNonEmpty!38025 ((_ is ValueCellFull!11487) mapValue!38025)) b!1031360))

(assert (= (and b!1031358 ((_ is ValueCellFull!11487) mapDefault!38025)) b!1031367))

(assert (= b!1031368 b!1031358))

(assert (= start!90090 b!1031368))

(declare-fun b_lambda!16035 () Bool)

(assert (=> (not b_lambda!16035) (not b!1031366)))

(declare-fun t!31146 () Bool)

(declare-fun tb!6987 () Bool)

(assert (=> (and b!1031368 (= (defaultEntry!6158 thiss!1427) (defaultEntry!6158 thiss!1427)) t!31146) tb!6987))

(declare-fun result!14295 () Bool)

(assert (=> tb!6987 (= result!14295 tp_is_empty!24381)))

(assert (=> b!1031366 t!31146))

(declare-fun b_and!33109 () Bool)

(assert (= b_and!33107 (and (=> t!31146 result!14295) b_and!33109)))

(declare-fun m!951601 () Bool)

(assert (=> mapNonEmpty!38025 m!951601))

(declare-fun m!951603 () Bool)

(assert (=> b!1031366 m!951603))

(declare-fun m!951605 () Bool)

(assert (=> b!1031366 m!951605))

(declare-fun m!951607 () Bool)

(assert (=> b!1031366 m!951607))

(declare-fun m!951609 () Bool)

(assert (=> b!1031366 m!951609))

(declare-fun m!951611 () Bool)

(assert (=> b!1031366 m!951611))

(declare-fun m!951613 () Bool)

(assert (=> b!1031366 m!951613))

(declare-fun m!951615 () Bool)

(assert (=> b!1031366 m!951615))

(declare-fun m!951617 () Bool)

(assert (=> b!1031366 m!951617))

(declare-fun m!951619 () Bool)

(assert (=> b!1031366 m!951619))

(declare-fun m!951621 () Bool)

(assert (=> b!1031366 m!951621))

(assert (=> b!1031366 m!951619))

(declare-fun m!951623 () Bool)

(assert (=> b!1031366 m!951623))

(declare-fun m!951625 () Bool)

(assert (=> b!1031366 m!951625))

(declare-fun m!951627 () Bool)

(assert (=> b!1031366 m!951627))

(declare-fun m!951629 () Bool)

(assert (=> b!1031366 m!951629))

(assert (=> b!1031366 m!951609))

(declare-fun m!951631 () Bool)

(assert (=> b!1031366 m!951631))

(declare-fun m!951633 () Bool)

(assert (=> b!1031366 m!951633))

(declare-fun m!951635 () Bool)

(assert (=> b!1031366 m!951635))

(declare-fun m!951637 () Bool)

(assert (=> b!1031366 m!951637))

(declare-fun m!951639 () Bool)

(assert (=> b!1031363 m!951639))

(declare-fun m!951641 () Bool)

(assert (=> start!90090 m!951641))

(declare-fun m!951643 () Bool)

(assert (=> b!1031365 m!951643))

(declare-fun m!951645 () Bool)

(assert (=> b!1031361 m!951645))

(declare-fun m!951647 () Bool)

(assert (=> b!1031368 m!951647))

(declare-fun m!951649 () Bool)

(assert (=> b!1031368 m!951649))

(declare-fun m!951651 () Bool)

(assert (=> b!1031359 m!951651))

(check-sat (not b!1031363) (not b!1031361) (not b!1031366) (not b!1031359) (not start!90090) (not mapNonEmpty!38025) (not b_next!20661) b_and!33109 tp_is_empty!24381 (not b!1031368) (not b_lambda!16035) (not b!1031365))
(check-sat b_and!33109 (not b_next!20661))
