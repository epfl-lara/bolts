; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89404 () Bool)

(assert start!89404)

(declare-fun b!1024382 () Bool)

(declare-fun b_free!20367 () Bool)

(declare-fun b_next!20367 () Bool)

(assert (=> b!1024382 (= b_free!20367 (not b_next!20367))))

(declare-fun tp!72148 () Bool)

(declare-fun b_and!32631 () Bool)

(assert (=> b!1024382 (= tp!72148 b_and!32631)))

(declare-fun b!1024375 () Bool)

(declare-fun e!577466 () Bool)

(declare-fun e!577470 () Bool)

(assert (=> b!1024375 (= e!577466 e!577470)))

(declare-fun res!685945 () Bool)

(assert (=> b!1024375 (=> (not res!685945) (not e!577470))))

(declare-datatypes ((SeekEntryResult!9584 0))(
  ( (MissingZero!9584 (index!40706 (_ BitVec 32))) (Found!9584 (index!40707 (_ BitVec 32))) (Intermediate!9584 (undefined!10396 Bool) (index!40708 (_ BitVec 32)) (x!91065 (_ BitVec 32))) (Undefined!9584) (MissingVacant!9584 (index!40709 (_ BitVec 32))) )
))
(declare-fun lt!450590 () SeekEntryResult!9584)

(get-info :version)

(assert (=> b!1024375 (= res!685945 ((_ is Found!9584) lt!450590))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!36989 0))(
  ( (V!36990 (val!12094 Int)) )
))
(declare-datatypes ((ValueCell!11340 0))(
  ( (ValueCellFull!11340 (v!14664 V!36989)) (EmptyCell!11340) )
))
(declare-datatypes ((array!64208 0))(
  ( (array!64209 (arr!30909 (Array (_ BitVec 32) (_ BitVec 64))) (size!31423 (_ BitVec 32))) )
))
(declare-datatypes ((array!64210 0))(
  ( (array!64211 (arr!30910 (Array (_ BitVec 32) ValueCell!11340)) (size!31424 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5274 0))(
  ( (LongMapFixedSize!5275 (defaultEntry!5989 Int) (mask!29634 (_ BitVec 32)) (extraKeys!5721 (_ BitVec 32)) (zeroValue!5825 V!36989) (minValue!5825 V!36989) (_size!2692 (_ BitVec 32)) (_keys!11133 array!64208) (_values!6012 array!64210) (_vacant!2692 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5274)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64208 (_ BitVec 32)) SeekEntryResult!9584)

(assert (=> b!1024375 (= lt!450590 (seekEntry!0 key!909 (_keys!11133 thiss!1427) (mask!29634 thiss!1427)))))

(declare-fun b!1024376 () Bool)

(declare-fun e!577468 () Bool)

(declare-fun tp_is_empty!24087 () Bool)

(assert (=> b!1024376 (= e!577468 tp_is_empty!24087)))

(declare-fun mapIsEmpty!37559 () Bool)

(declare-fun mapRes!37559 () Bool)

(assert (=> mapIsEmpty!37559 mapRes!37559))

(declare-fun b!1024377 () Bool)

(declare-fun res!685948 () Bool)

(declare-fun e!577467 () Bool)

(assert (=> b!1024377 (=> res!685948 e!577467)))

(declare-datatypes ((List!21832 0))(
  ( (Nil!21829) (Cons!21828 (h!23026 (_ BitVec 64)) (t!30901 List!21832)) )
))
(declare-fun contains!5960 (List!21832 (_ BitVec 64)) Bool)

(assert (=> b!1024377 (= res!685948 (contains!5960 Nil!21829 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024378 () Bool)

(assert (=> b!1024378 (= e!577467 true)))

(declare-fun lt!450591 () Bool)

(declare-fun arrayNoDuplicates!0 (array!64208 (_ BitVec 32) List!21832) Bool)

(assert (=> b!1024378 (= lt!450591 (arrayNoDuplicates!0 (_keys!11133 thiss!1427) #b00000000000000000000000000000000 Nil!21829))))

(declare-fun b!1024379 () Bool)

(declare-fun res!685950 () Bool)

(assert (=> b!1024379 (=> res!685950 e!577467)))

(assert (=> b!1024379 (= res!685950 (contains!5960 Nil!21829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024380 () Bool)

(declare-fun e!577472 () Bool)

(assert (=> b!1024380 (= e!577472 (and e!577468 mapRes!37559))))

(declare-fun condMapEmpty!37559 () Bool)

(declare-fun mapDefault!37559 () ValueCell!11340)

(assert (=> b!1024380 (= condMapEmpty!37559 (= (arr!30910 (_values!6012 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11340)) mapDefault!37559)))))

(declare-fun res!685944 () Bool)

(assert (=> start!89404 (=> (not res!685944) (not e!577466))))

(declare-fun valid!1961 (LongMapFixedSize!5274) Bool)

(assert (=> start!89404 (= res!685944 (valid!1961 thiss!1427))))

(assert (=> start!89404 e!577466))

(declare-fun e!577465 () Bool)

(assert (=> start!89404 e!577465))

(assert (=> start!89404 true))

(declare-fun b!1024381 () Bool)

(declare-fun res!685947 () Bool)

(assert (=> b!1024381 (=> (not res!685947) (not e!577466))))

(assert (=> b!1024381 (= res!685947 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!37559 () Bool)

(declare-fun tp!72147 () Bool)

(declare-fun e!577471 () Bool)

(assert (=> mapNonEmpty!37559 (= mapRes!37559 (and tp!72147 e!577471))))

(declare-fun mapKey!37559 () (_ BitVec 32))

(declare-fun mapRest!37559 () (Array (_ BitVec 32) ValueCell!11340))

(declare-fun mapValue!37559 () ValueCell!11340)

(assert (=> mapNonEmpty!37559 (= (arr!30910 (_values!6012 thiss!1427)) (store mapRest!37559 mapKey!37559 mapValue!37559))))

(declare-fun array_inv!23807 (array!64208) Bool)

(declare-fun array_inv!23808 (array!64210) Bool)

(assert (=> b!1024382 (= e!577465 (and tp!72148 tp_is_empty!24087 (array_inv!23807 (_keys!11133 thiss!1427)) (array_inv!23808 (_values!6012 thiss!1427)) e!577472))))

(declare-fun b!1024383 () Bool)

(assert (=> b!1024383 (= e!577471 tp_is_empty!24087)))

(declare-fun b!1024384 () Bool)

(assert (=> b!1024384 (= e!577470 (not e!577467))))

(declare-fun res!685949 () Bool)

(assert (=> b!1024384 (=> res!685949 e!577467)))

(assert (=> b!1024384 (= res!685949 (or (bvsge (size!31423 (_keys!11133 thiss!1427)) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!31423 (_keys!11133 thiss!1427)))))))

(declare-fun arrayCountValidKeys!0 (array!64208 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1024384 (= (arrayCountValidKeys!0 (array!64209 (store (arr!30909 (_keys!11133 thiss!1427)) (index!40707 lt!450590) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31423 (_keys!11133 thiss!1427))) #b00000000000000000000000000000000 (size!31423 (_keys!11133 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11133 thiss!1427) #b00000000000000000000000000000000 (size!31423 (_keys!11133 thiss!1427))) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!33314 0))(
  ( (Unit!33315) )
))
(declare-fun lt!450592 () Unit!33314)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64208 (_ BitVec 32) (_ BitVec 64)) Unit!33314)

(assert (=> b!1024384 (= lt!450592 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11133 thiss!1427) (index!40707 lt!450590) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1024385 () Bool)

(declare-fun res!685946 () Bool)

(assert (=> b!1024385 (=> res!685946 e!577467)))

(declare-fun noDuplicate!1471 (List!21832) Bool)

(assert (=> b!1024385 (= res!685946 (not (noDuplicate!1471 Nil!21829)))))

(assert (= (and start!89404 res!685944) b!1024381))

(assert (= (and b!1024381 res!685947) b!1024375))

(assert (= (and b!1024375 res!685945) b!1024384))

(assert (= (and b!1024384 (not res!685949)) b!1024385))

(assert (= (and b!1024385 (not res!685946)) b!1024379))

(assert (= (and b!1024379 (not res!685950)) b!1024377))

(assert (= (and b!1024377 (not res!685948)) b!1024378))

(assert (= (and b!1024380 condMapEmpty!37559) mapIsEmpty!37559))

(assert (= (and b!1024380 (not condMapEmpty!37559)) mapNonEmpty!37559))

(assert (= (and mapNonEmpty!37559 ((_ is ValueCellFull!11340) mapValue!37559)) b!1024383))

(assert (= (and b!1024380 ((_ is ValueCellFull!11340) mapDefault!37559)) b!1024376))

(assert (= b!1024382 b!1024380))

(assert (= start!89404 b!1024382))

(declare-fun m!942861 () Bool)

(assert (=> b!1024377 m!942861))

(declare-fun m!942863 () Bool)

(assert (=> b!1024384 m!942863))

(declare-fun m!942865 () Bool)

(assert (=> b!1024384 m!942865))

(declare-fun m!942867 () Bool)

(assert (=> b!1024384 m!942867))

(declare-fun m!942869 () Bool)

(assert (=> b!1024384 m!942869))

(declare-fun m!942871 () Bool)

(assert (=> b!1024375 m!942871))

(declare-fun m!942873 () Bool)

(assert (=> b!1024379 m!942873))

(declare-fun m!942875 () Bool)

(assert (=> b!1024378 m!942875))

(declare-fun m!942877 () Bool)

(assert (=> b!1024385 m!942877))

(declare-fun m!942879 () Bool)

(assert (=> b!1024382 m!942879))

(declare-fun m!942881 () Bool)

(assert (=> b!1024382 m!942881))

(declare-fun m!942883 () Bool)

(assert (=> mapNonEmpty!37559 m!942883))

(declare-fun m!942885 () Bool)

(assert (=> start!89404 m!942885))

(check-sat (not b!1024379) (not b_next!20367) (not b!1024377) (not b!1024384) (not b!1024385) (not b!1024382) (not mapNonEmpty!37559) tp_is_empty!24087 (not b!1024375) (not b!1024378) (not start!89404) b_and!32631)
(check-sat b_and!32631 (not b_next!20367))
