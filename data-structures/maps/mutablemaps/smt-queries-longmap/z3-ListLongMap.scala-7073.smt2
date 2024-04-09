; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89530 () Bool)

(assert start!89530)

(declare-fun b!1026289 () Bool)

(declare-fun b_free!20493 () Bool)

(declare-fun b_next!20493 () Bool)

(assert (=> b!1026289 (= b_free!20493 (not b_next!20493))))

(declare-fun tp!72526 () Bool)

(declare-fun b_and!32757 () Bool)

(assert (=> b!1026289 (= tp!72526 b_and!32757)))

(declare-fun b!1026287 () Bool)

(declare-fun e!578978 () Bool)

(declare-fun e!578981 () Bool)

(assert (=> b!1026287 (= e!578978 e!578981)))

(declare-fun res!687102 () Bool)

(assert (=> b!1026287 (=> (not res!687102) (not e!578981))))

(declare-datatypes ((SeekEntryResult!9632 0))(
  ( (MissingZero!9632 (index!40898 (_ BitVec 32))) (Found!9632 (index!40899 (_ BitVec 32))) (Intermediate!9632 (undefined!10444 Bool) (index!40900 (_ BitVec 32)) (x!91281 (_ BitVec 32))) (Undefined!9632) (MissingVacant!9632 (index!40901 (_ BitVec 32))) )
))
(declare-fun lt!451470 () SeekEntryResult!9632)

(get-info :version)

(assert (=> b!1026287 (= res!687102 ((_ is Found!9632) lt!451470))))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((V!37157 0))(
  ( (V!37158 (val!12157 Int)) )
))
(declare-datatypes ((ValueCell!11403 0))(
  ( (ValueCellFull!11403 (v!14727 V!37157)) (EmptyCell!11403) )
))
(declare-datatypes ((array!64460 0))(
  ( (array!64461 (arr!31035 (Array (_ BitVec 32) (_ BitVec 64))) (size!31549 (_ BitVec 32))) )
))
(declare-datatypes ((array!64462 0))(
  ( (array!64463 (arr!31036 (Array (_ BitVec 32) ValueCell!11403)) (size!31550 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5400 0))(
  ( (LongMapFixedSize!5401 (defaultEntry!6052 Int) (mask!29739 (_ BitVec 32)) (extraKeys!5784 (_ BitVec 32)) (zeroValue!5888 V!37157) (minValue!5888 V!37157) (_size!2755 (_ BitVec 32)) (_keys!11196 array!64460) (_values!6075 array!64462) (_vacant!2755 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5400)

(declare-fun seekEntry!0 ((_ BitVec 64) array!64460 (_ BitVec 32)) SeekEntryResult!9632)

(assert (=> b!1026287 (= lt!451470 (seekEntry!0 key!909 (_keys!11196 thiss!1427) (mask!29739 thiss!1427)))))

(declare-fun b!1026288 () Bool)

(declare-fun res!687105 () Bool)

(declare-fun e!578980 () Bool)

(assert (=> b!1026288 (=> res!687105 e!578980)))

(assert (=> b!1026288 (= res!687105 (or (not (= (size!31550 (_values!6075 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29739 thiss!1427)))) (not (= (size!31549 (_keys!11196 thiss!1427)) (size!31550 (_values!6075 thiss!1427)))) (bvslt (mask!29739 thiss!1427) #b00000000000000000000000000000000) (bvslt (extraKeys!5784 thiss!1427) #b00000000000000000000000000000000) (bvsgt (extraKeys!5784 thiss!1427) #b00000000000000000000000000000011)))))

(declare-fun e!578982 () Bool)

(declare-fun tp_is_empty!24213 () Bool)

(declare-fun e!578977 () Bool)

(declare-fun array_inv!23885 (array!64460) Bool)

(declare-fun array_inv!23886 (array!64462) Bool)

(assert (=> b!1026289 (= e!578977 (and tp!72526 tp_is_empty!24213 (array_inv!23885 (_keys!11196 thiss!1427)) (array_inv!23886 (_values!6075 thiss!1427)) e!578982))))

(declare-fun b!1026291 () Bool)

(declare-fun e!578983 () Bool)

(assert (=> b!1026291 (= e!578983 tp_is_empty!24213)))

(declare-fun mapNonEmpty!37748 () Bool)

(declare-fun mapRes!37748 () Bool)

(declare-fun tp!72525 () Bool)

(declare-fun e!578979 () Bool)

(assert (=> mapNonEmpty!37748 (= mapRes!37748 (and tp!72525 e!578979))))

(declare-fun mapValue!37748 () ValueCell!11403)

(declare-fun mapKey!37748 () (_ BitVec 32))

(declare-fun mapRest!37748 () (Array (_ BitVec 32) ValueCell!11403))

(assert (=> mapNonEmpty!37748 (= (arr!31036 (_values!6075 thiss!1427)) (store mapRest!37748 mapKey!37748 mapValue!37748))))

(declare-fun b!1026292 () Bool)

(assert (=> b!1026292 (= e!578981 (not e!578980))))

(declare-fun res!687103 () Bool)

(assert (=> b!1026292 (=> res!687103 e!578980)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1026292 (= res!687103 (not (validMask!0 (mask!29739 thiss!1427))))))

(declare-fun lt!451467 () array!64460)

(declare-fun arrayContainsKey!0 (array!64460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1026292 (not (arrayContainsKey!0 lt!451467 key!909 #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!33398 0))(
  ( (Unit!33399) )
))
(declare-fun lt!451469 () Unit!33398)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64460 (_ BitVec 32) (_ BitVec 64)) Unit!33398)

(assert (=> b!1026292 (= lt!451469 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11196 thiss!1427) (index!40899 lt!451470) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64460 (_ BitVec 32)) Bool)

(assert (=> b!1026292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!451467 (mask!29739 thiss!1427))))

(declare-fun lt!451465 () Unit!33398)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64460 (_ BitVec 32) (_ BitVec 32)) Unit!33398)

(assert (=> b!1026292 (= lt!451465 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11196 thiss!1427) (index!40899 lt!451470) (mask!29739 thiss!1427)))))

(declare-datatypes ((List!21884 0))(
  ( (Nil!21881) (Cons!21880 (h!23078 (_ BitVec 64)) (t!30953 List!21884)) )
))
(declare-fun arrayNoDuplicates!0 (array!64460 (_ BitVec 32) List!21884) Bool)

(assert (=> b!1026292 (arrayNoDuplicates!0 lt!451467 #b00000000000000000000000000000000 Nil!21881)))

(declare-fun lt!451466 () Unit!33398)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64460 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21884) Unit!33398)

(assert (=> b!1026292 (= lt!451466 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11196 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40899 lt!451470) #b00000000000000000000000000000000 Nil!21881))))

(declare-fun arrayCountValidKeys!0 (array!64460 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1026292 (= (arrayCountValidKeys!0 lt!451467 #b00000000000000000000000000000000 (size!31549 (_keys!11196 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11196 thiss!1427) #b00000000000000000000000000000000 (size!31549 (_keys!11196 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1026292 (= lt!451467 (array!64461 (store (arr!31035 (_keys!11196 thiss!1427)) (index!40899 lt!451470) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31549 (_keys!11196 thiss!1427))))))

(declare-fun lt!451471 () Unit!33398)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64460 (_ BitVec 32) (_ BitVec 64)) Unit!33398)

(assert (=> b!1026292 (= lt!451471 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11196 thiss!1427) (index!40899 lt!451470) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1026293 () Bool)

(declare-fun res!687100 () Bool)

(assert (=> b!1026293 (=> res!687100 e!578980)))

(assert (=> b!1026293 (= res!687100 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11196 thiss!1427) (mask!29739 thiss!1427))))))

(declare-fun mapIsEmpty!37748 () Bool)

(assert (=> mapIsEmpty!37748 mapRes!37748))

(declare-fun b!1026294 () Bool)

(declare-fun res!687101 () Bool)

(assert (=> b!1026294 (=> (not res!687101) (not e!578978))))

(assert (=> b!1026294 (= res!687101 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1026290 () Bool)

(assert (=> b!1026290 (= e!578982 (and e!578983 mapRes!37748))))

(declare-fun condMapEmpty!37748 () Bool)

(declare-fun mapDefault!37748 () ValueCell!11403)

(assert (=> b!1026290 (= condMapEmpty!37748 (= (arr!31036 (_values!6075 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11403)) mapDefault!37748)))))

(declare-fun res!687104 () Bool)

(assert (=> start!89530 (=> (not res!687104) (not e!578978))))

(declare-fun valid!2003 (LongMapFixedSize!5400) Bool)

(assert (=> start!89530 (= res!687104 (valid!2003 thiss!1427))))

(assert (=> start!89530 e!578978))

(assert (=> start!89530 e!578977))

(assert (=> start!89530 true))

(declare-fun b!1026295 () Bool)

(assert (=> b!1026295 (= e!578980 true)))

(declare-fun lt!451468 () Bool)

(assert (=> b!1026295 (= lt!451468 (arrayNoDuplicates!0 (_keys!11196 thiss!1427) #b00000000000000000000000000000000 Nil!21881))))

(declare-fun b!1026296 () Bool)

(assert (=> b!1026296 (= e!578979 tp_is_empty!24213)))

(assert (= (and start!89530 res!687104) b!1026294))

(assert (= (and b!1026294 res!687101) b!1026287))

(assert (= (and b!1026287 res!687102) b!1026292))

(assert (= (and b!1026292 (not res!687103)) b!1026288))

(assert (= (and b!1026288 (not res!687105)) b!1026293))

(assert (= (and b!1026293 (not res!687100)) b!1026295))

(assert (= (and b!1026290 condMapEmpty!37748) mapIsEmpty!37748))

(assert (= (and b!1026290 (not condMapEmpty!37748)) mapNonEmpty!37748))

(assert (= (and mapNonEmpty!37748 ((_ is ValueCellFull!11403) mapValue!37748)) b!1026296))

(assert (= (and b!1026290 ((_ is ValueCellFull!11403) mapDefault!37748)) b!1026291))

(assert (= b!1026289 b!1026290))

(assert (= start!89530 b!1026289))

(declare-fun m!944671 () Bool)

(assert (=> b!1026293 m!944671))

(declare-fun m!944673 () Bool)

(assert (=> start!89530 m!944673))

(declare-fun m!944675 () Bool)

(assert (=> b!1026295 m!944675))

(declare-fun m!944677 () Bool)

(assert (=> b!1026287 m!944677))

(declare-fun m!944679 () Bool)

(assert (=> b!1026292 m!944679))

(declare-fun m!944681 () Bool)

(assert (=> b!1026292 m!944681))

(declare-fun m!944683 () Bool)

(assert (=> b!1026292 m!944683))

(declare-fun m!944685 () Bool)

(assert (=> b!1026292 m!944685))

(declare-fun m!944687 () Bool)

(assert (=> b!1026292 m!944687))

(declare-fun m!944689 () Bool)

(assert (=> b!1026292 m!944689))

(declare-fun m!944691 () Bool)

(assert (=> b!1026292 m!944691))

(declare-fun m!944693 () Bool)

(assert (=> b!1026292 m!944693))

(declare-fun m!944695 () Bool)

(assert (=> b!1026292 m!944695))

(declare-fun m!944697 () Bool)

(assert (=> b!1026292 m!944697))

(declare-fun m!944699 () Bool)

(assert (=> b!1026292 m!944699))

(declare-fun m!944701 () Bool)

(assert (=> mapNonEmpty!37748 m!944701))

(declare-fun m!944703 () Bool)

(assert (=> b!1026289 m!944703))

(declare-fun m!944705 () Bool)

(assert (=> b!1026289 m!944705))

(check-sat tp_is_empty!24213 (not b!1026287) (not b!1026295) (not mapNonEmpty!37748) (not b_next!20493) (not start!89530) b_and!32757 (not b!1026293) (not b!1026289) (not b!1026292))
(check-sat b_and!32757 (not b_next!20493))
