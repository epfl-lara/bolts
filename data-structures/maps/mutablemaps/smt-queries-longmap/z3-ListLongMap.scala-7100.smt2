; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90084 () Bool)

(assert start!90084)

(declare-fun b!1031253 () Bool)

(declare-fun b_free!20655 () Bool)

(declare-fun b_next!20655 () Bool)

(assert (=> b!1031253 (= b_free!20655 (not b_next!20655))))

(declare-fun tp!73036 () Bool)

(declare-fun b_and!33095 () Bool)

(assert (=> b!1031253 (= tp!73036 b_and!33095)))

(declare-fun e!582487 () Bool)

(declare-datatypes ((V!37373 0))(
  ( (V!37374 (val!12238 Int)) )
))
(declare-datatypes ((ValueCell!11484 0))(
  ( (ValueCellFull!11484 (v!14816 V!37373)) (EmptyCell!11484) )
))
(declare-datatypes ((array!64798 0))(
  ( (array!64799 (arr!31197 (Array (_ BitVec 32) (_ BitVec 64))) (size!31715 (_ BitVec 32))) )
))
(declare-datatypes ((array!64800 0))(
  ( (array!64801 (arr!31198 (Array (_ BitVec 32) ValueCell!11484)) (size!31716 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5562 0))(
  ( (LongMapFixedSize!5563 (defaultEntry!6155 Int) (mask!29944 (_ BitVec 32)) (extraKeys!5887 (_ BitVec 32)) (zeroValue!5991 V!37373) (minValue!5991 V!37373) (_size!2836 (_ BitVec 32)) (_keys!11325 array!64798) (_values!6178 array!64800) (_vacant!2836 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5562)

(declare-fun tp_is_empty!24375 () Bool)

(declare-fun e!582480 () Bool)

(declare-fun array_inv!23993 (array!64798) Bool)

(declare-fun array_inv!23994 (array!64800) Bool)

(assert (=> b!1031253 (= e!582480 (and tp!73036 tp_is_empty!24375 (array_inv!23993 (_keys!11325 thiss!1427)) (array_inv!23994 (_values!6178 thiss!1427)) e!582487))))

(declare-fun b!1031254 () Bool)

(declare-fun e!582482 () Bool)

(assert (=> b!1031254 (= e!582482 tp_is_empty!24375)))

(declare-fun b!1031255 () Bool)

(declare-fun e!582485 () Bool)

(declare-fun mapRes!38016 () Bool)

(assert (=> b!1031255 (= e!582487 (and e!582485 mapRes!38016))))

(declare-fun condMapEmpty!38016 () Bool)

(declare-fun mapDefault!38016 () ValueCell!11484)

(assert (=> b!1031255 (= condMapEmpty!38016 (= (arr!31198 (_values!6178 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11484)) mapDefault!38016)))))

(declare-fun b!1031256 () Bool)

(declare-fun e!582481 () Bool)

(declare-fun e!582486 () Bool)

(assert (=> b!1031256 (= e!582481 (not e!582486))))

(declare-fun res!689626 () Bool)

(assert (=> b!1031256 (=> res!689626 e!582486)))

(declare-datatypes ((Unit!33702 0))(
  ( (Unit!33703) )
))
(declare-datatypes ((tuple2!15754 0))(
  ( (tuple2!15755 (_1!7887 Unit!33702) (_2!7887 LongMapFixedSize!5562)) )
))
(declare-fun lt!455230 () tuple2!15754)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15756 0))(
  ( (tuple2!15757 (_1!7888 (_ BitVec 64)) (_2!7888 V!37373)) )
))
(declare-datatypes ((List!21978 0))(
  ( (Nil!21975) (Cons!21974 (h!23176 tuple2!15756) (t!31135 List!21978)) )
))
(declare-datatypes ((ListLongMap!13835 0))(
  ( (ListLongMap!13836 (toList!6933 List!21978)) )
))
(declare-fun contains!6012 (ListLongMap!13835 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3940 (array!64798 array!64800 (_ BitVec 32) (_ BitVec 32) V!37373 V!37373 (_ BitVec 32) Int) ListLongMap!13835)

(assert (=> b!1031256 (= res!689626 (not (contains!6012 (getCurrentListMap!3940 (_keys!11325 (_2!7887 lt!455230)) (_values!6178 (_2!7887 lt!455230)) (mask!29944 (_2!7887 lt!455230)) (extraKeys!5887 (_2!7887 lt!455230)) (zeroValue!5991 (_2!7887 lt!455230)) (minValue!5991 (_2!7887 lt!455230)) #b00000000000000000000000000000000 (defaultEntry!6155 (_2!7887 lt!455230))) key!909)))))

(declare-fun lt!455238 () array!64798)

(declare-fun lt!455236 () array!64800)

(declare-fun Unit!33704 () Unit!33702)

(declare-fun Unit!33705 () Unit!33702)

(assert (=> b!1031256 (= lt!455230 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2836 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15755 Unit!33704 (LongMapFixedSize!5563 (defaultEntry!6155 thiss!1427) (mask!29944 thiss!1427) (extraKeys!5887 thiss!1427) (zeroValue!5991 thiss!1427) (minValue!5991 thiss!1427) (bvsub (_size!2836 thiss!1427) #b00000000000000000000000000000001) lt!455238 lt!455236 (bvadd #b00000000000000000000000000000001 (_vacant!2836 thiss!1427)))) (tuple2!15755 Unit!33705 (LongMapFixedSize!5563 (defaultEntry!6155 thiss!1427) (mask!29944 thiss!1427) (extraKeys!5887 thiss!1427) (zeroValue!5991 thiss!1427) (minValue!5991 thiss!1427) (bvsub (_size!2836 thiss!1427) #b00000000000000000000000000000001) lt!455238 lt!455236 (_vacant!2836 thiss!1427)))))))

(declare-fun -!509 (ListLongMap!13835 (_ BitVec 64)) ListLongMap!13835)

(assert (=> b!1031256 (= (-!509 (getCurrentListMap!3940 (_keys!11325 thiss!1427) (_values!6178 thiss!1427) (mask!29944 thiss!1427) (extraKeys!5887 thiss!1427) (zeroValue!5991 thiss!1427) (minValue!5991 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6155 thiss!1427)) key!909) (getCurrentListMap!3940 lt!455238 lt!455236 (mask!29944 thiss!1427) (extraKeys!5887 thiss!1427) (zeroValue!5991 thiss!1427) (minValue!5991 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6155 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9697 0))(
  ( (MissingZero!9697 (index!41158 (_ BitVec 32))) (Found!9697 (index!41159 (_ BitVec 32))) (Intermediate!9697 (undefined!10509 Bool) (index!41160 (_ BitVec 32)) (x!91816 (_ BitVec 32))) (Undefined!9697) (MissingVacant!9697 (index!41161 (_ BitVec 32))) )
))
(declare-fun lt!455229 () SeekEntryResult!9697)

(declare-fun dynLambda!1984 (Int (_ BitVec 64)) V!37373)

(assert (=> b!1031256 (= lt!455236 (array!64801 (store (arr!31198 (_values!6178 thiss!1427)) (index!41159 lt!455229) (ValueCellFull!11484 (dynLambda!1984 (defaultEntry!6155 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31716 (_values!6178 thiss!1427))))))

(declare-fun lt!455235 () Unit!33702)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!33 (array!64798 array!64800 (_ BitVec 32) (_ BitVec 32) V!37373 V!37373 (_ BitVec 32) (_ BitVec 64) Int) Unit!33702)

(assert (=> b!1031256 (= lt!455235 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!33 (_keys!11325 thiss!1427) (_values!6178 thiss!1427) (mask!29944 thiss!1427) (extraKeys!5887 thiss!1427) (zeroValue!5991 thiss!1427) (minValue!5991 thiss!1427) (index!41159 lt!455229) key!909 (defaultEntry!6155 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64798 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031256 (not (arrayContainsKey!0 lt!455238 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455233 () Unit!33702)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64798 (_ BitVec 32) (_ BitVec 64)) Unit!33702)

(assert (=> b!1031256 (= lt!455233 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11325 thiss!1427) (index!41159 lt!455229) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64798 (_ BitVec 32)) Bool)

(assert (=> b!1031256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455238 (mask!29944 thiss!1427))))

(declare-fun lt!455232 () Unit!33702)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64798 (_ BitVec 32) (_ BitVec 32)) Unit!33702)

(assert (=> b!1031256 (= lt!455232 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11325 thiss!1427) (index!41159 lt!455229) (mask!29944 thiss!1427)))))

(declare-datatypes ((List!21979 0))(
  ( (Nil!21976) (Cons!21975 (h!23177 (_ BitVec 64)) (t!31136 List!21979)) )
))
(declare-fun arrayNoDuplicates!0 (array!64798 (_ BitVec 32) List!21979) Bool)

(assert (=> b!1031256 (arrayNoDuplicates!0 lt!455238 #b00000000000000000000000000000000 Nil!21976)))

(declare-fun lt!455234 () Unit!33702)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64798 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21979) Unit!33702)

(assert (=> b!1031256 (= lt!455234 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11325 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41159 lt!455229) #b00000000000000000000000000000000 Nil!21976))))

(declare-fun arrayCountValidKeys!0 (array!64798 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031256 (= (arrayCountValidKeys!0 lt!455238 #b00000000000000000000000000000000 (size!31715 (_keys!11325 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11325 thiss!1427) #b00000000000000000000000000000000 (size!31715 (_keys!11325 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031256 (= lt!455238 (array!64799 (store (arr!31197 (_keys!11325 thiss!1427)) (index!41159 lt!455229) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31715 (_keys!11325 thiss!1427))))))

(declare-fun lt!455237 () Unit!33702)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64798 (_ BitVec 32) (_ BitVec 64)) Unit!33702)

(assert (=> b!1031256 (= lt!455237 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11325 thiss!1427) (index!41159 lt!455229) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!689627 () Bool)

(declare-fun e!582483 () Bool)

(assert (=> start!90084 (=> (not res!689627) (not e!582483))))

(declare-fun valid!2058 (LongMapFixedSize!5562) Bool)

(assert (=> start!90084 (= res!689627 (valid!2058 thiss!1427))))

(assert (=> start!90084 e!582483))

(assert (=> start!90084 e!582480))

(assert (=> start!90084 true))

(declare-fun b!1031257 () Bool)

(declare-fun res!689622 () Bool)

(assert (=> b!1031257 (=> res!689622 e!582486)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1031257 (= res!689622 (not (validMask!0 (mask!29944 (_2!7887 lt!455230)))))))

(declare-fun b!1031258 () Bool)

(declare-fun res!689623 () Bool)

(assert (=> b!1031258 (=> (not res!689623) (not e!582483))))

(assert (=> b!1031258 (= res!689623 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38016 () Bool)

(declare-fun tp!73037 () Bool)

(assert (=> mapNonEmpty!38016 (= mapRes!38016 (and tp!73037 e!582482))))

(declare-fun mapValue!38016 () ValueCell!11484)

(declare-fun mapKey!38016 () (_ BitVec 32))

(declare-fun mapRest!38016 () (Array (_ BitVec 32) ValueCell!11484))

(assert (=> mapNonEmpty!38016 (= (arr!31198 (_values!6178 thiss!1427)) (store mapRest!38016 mapKey!38016 mapValue!38016))))

(declare-fun b!1031259 () Bool)

(declare-fun res!689624 () Bool)

(assert (=> b!1031259 (=> res!689624 e!582486)))

(assert (=> b!1031259 (= res!689624 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11325 (_2!7887 lt!455230)) (mask!29944 (_2!7887 lt!455230)))))))

(declare-fun b!1031260 () Bool)

(assert (=> b!1031260 (= e!582486 true)))

(declare-fun lt!455231 () Bool)

(assert (=> b!1031260 (= lt!455231 (arrayNoDuplicates!0 (_keys!11325 (_2!7887 lt!455230)) #b00000000000000000000000000000000 Nil!21976))))

(declare-fun b!1031261 () Bool)

(assert (=> b!1031261 (= e!582483 e!582481)))

(declare-fun res!689625 () Bool)

(assert (=> b!1031261 (=> (not res!689625) (not e!582481))))

(get-info :version)

(assert (=> b!1031261 (= res!689625 ((_ is Found!9697) lt!455229))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64798 (_ BitVec 32)) SeekEntryResult!9697)

(assert (=> b!1031261 (= lt!455229 (seekEntry!0 key!909 (_keys!11325 thiss!1427) (mask!29944 thiss!1427)))))

(declare-fun b!1031262 () Bool)

(declare-fun res!689628 () Bool)

(assert (=> b!1031262 (=> res!689628 e!582486)))

(assert (=> b!1031262 (= res!689628 (or (not (= (size!31716 (_values!6178 (_2!7887 lt!455230))) (bvadd #b00000000000000000000000000000001 (mask!29944 (_2!7887 lt!455230))))) (not (= (size!31715 (_keys!11325 (_2!7887 lt!455230))) (size!31716 (_values!6178 (_2!7887 lt!455230))))) (bvslt (mask!29944 (_2!7887 lt!455230)) #b00000000000000000000000000000000) (bvslt (extraKeys!5887 (_2!7887 lt!455230)) #b00000000000000000000000000000000) (bvsgt (extraKeys!5887 (_2!7887 lt!455230)) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38016 () Bool)

(assert (=> mapIsEmpty!38016 mapRes!38016))

(declare-fun b!1031263 () Bool)

(assert (=> b!1031263 (= e!582485 tp_is_empty!24375)))

(assert (= (and start!90084 res!689627) b!1031258))

(assert (= (and b!1031258 res!689623) b!1031261))

(assert (= (and b!1031261 res!689625) b!1031256))

(assert (= (and b!1031256 (not res!689626)) b!1031257))

(assert (= (and b!1031257 (not res!689622)) b!1031262))

(assert (= (and b!1031262 (not res!689628)) b!1031259))

(assert (= (and b!1031259 (not res!689624)) b!1031260))

(assert (= (and b!1031255 condMapEmpty!38016) mapIsEmpty!38016))

(assert (= (and b!1031255 (not condMapEmpty!38016)) mapNonEmpty!38016))

(assert (= (and mapNonEmpty!38016 ((_ is ValueCellFull!11484) mapValue!38016)) b!1031254))

(assert (= (and b!1031255 ((_ is ValueCellFull!11484) mapDefault!38016)) b!1031263))

(assert (= b!1031253 b!1031255))

(assert (= start!90084 b!1031253))

(declare-fun b_lambda!16029 () Bool)

(assert (=> (not b_lambda!16029) (not b!1031256)))

(declare-fun t!31134 () Bool)

(declare-fun tb!6981 () Bool)

(assert (=> (and b!1031253 (= (defaultEntry!6155 thiss!1427) (defaultEntry!6155 thiss!1427)) t!31134) tb!6981))

(declare-fun result!14283 () Bool)

(assert (=> tb!6981 (= result!14283 tp_is_empty!24375)))

(assert (=> b!1031256 t!31134))

(declare-fun b_and!33097 () Bool)

(assert (= b_and!33095 (and (=> t!31134 result!14283) b_and!33097)))

(declare-fun m!951445 () Bool)

(assert (=> b!1031261 m!951445))

(declare-fun m!951447 () Bool)

(assert (=> b!1031259 m!951447))

(declare-fun m!951449 () Bool)

(assert (=> mapNonEmpty!38016 m!951449))

(declare-fun m!951451 () Bool)

(assert (=> start!90084 m!951451))

(declare-fun m!951453 () Bool)

(assert (=> b!1031257 m!951453))

(declare-fun m!951455 () Bool)

(assert (=> b!1031253 m!951455))

(declare-fun m!951457 () Bool)

(assert (=> b!1031253 m!951457))

(declare-fun m!951459 () Bool)

(assert (=> b!1031256 m!951459))

(declare-fun m!951461 () Bool)

(assert (=> b!1031256 m!951461))

(declare-fun m!951463 () Bool)

(assert (=> b!1031256 m!951463))

(declare-fun m!951465 () Bool)

(assert (=> b!1031256 m!951465))

(declare-fun m!951467 () Bool)

(assert (=> b!1031256 m!951467))

(declare-fun m!951469 () Bool)

(assert (=> b!1031256 m!951469))

(declare-fun m!951471 () Bool)

(assert (=> b!1031256 m!951471))

(declare-fun m!951473 () Bool)

(assert (=> b!1031256 m!951473))

(declare-fun m!951475 () Bool)

(assert (=> b!1031256 m!951475))

(assert (=> b!1031256 m!951473))

(declare-fun m!951477 () Bool)

(assert (=> b!1031256 m!951477))

(declare-fun m!951479 () Bool)

(assert (=> b!1031256 m!951479))

(declare-fun m!951481 () Bool)

(assert (=> b!1031256 m!951481))

(declare-fun m!951483 () Bool)

(assert (=> b!1031256 m!951483))

(declare-fun m!951485 () Bool)

(assert (=> b!1031256 m!951485))

(declare-fun m!951487 () Bool)

(assert (=> b!1031256 m!951487))

(declare-fun m!951489 () Bool)

(assert (=> b!1031256 m!951489))

(declare-fun m!951491 () Bool)

(assert (=> b!1031256 m!951491))

(declare-fun m!951493 () Bool)

(assert (=> b!1031256 m!951493))

(assert (=> b!1031256 m!951461))

(declare-fun m!951495 () Bool)

(assert (=> b!1031260 m!951495))

(check-sat (not b_lambda!16029) (not b!1031260) (not start!90084) (not mapNonEmpty!38016) (not b_next!20655) tp_is_empty!24375 (not b!1031257) (not b!1031256) b_and!33097 (not b!1031253) (not b!1031261) (not b!1031259))
(check-sat b_and!33097 (not b_next!20655))
