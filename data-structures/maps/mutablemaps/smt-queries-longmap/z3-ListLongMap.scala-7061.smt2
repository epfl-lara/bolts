; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89458 () Bool)

(assert start!89458)

(declare-fun b!1025267 () Bool)

(declare-fun b_free!20421 () Bool)

(declare-fun b_next!20421 () Bool)

(assert (=> b!1025267 (= b_free!20421 (not b_next!20421))))

(declare-fun tp!72309 () Bool)

(declare-fun b_and!32685 () Bool)

(assert (=> b!1025267 (= tp!72309 b_and!32685)))

(declare-fun mapIsEmpty!37640 () Bool)

(declare-fun mapRes!37640 () Bool)

(assert (=> mapIsEmpty!37640 mapRes!37640))

(declare-fun b!1025266 () Bool)

(declare-fun res!686515 () Bool)

(declare-fun e!578113 () Bool)

(assert (=> b!1025266 (=> res!686515 e!578113)))

(declare-datatypes ((V!37061 0))(
  ( (V!37062 (val!12121 Int)) )
))
(declare-datatypes ((ValueCell!11367 0))(
  ( (ValueCellFull!11367 (v!14691 V!37061)) (EmptyCell!11367) )
))
(declare-datatypes ((array!64316 0))(
  ( (array!64317 (arr!30963 (Array (_ BitVec 32) (_ BitVec 64))) (size!31477 (_ BitVec 32))) )
))
(declare-datatypes ((array!64318 0))(
  ( (array!64319 (arr!30964 (Array (_ BitVec 32) ValueCell!11367)) (size!31478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5328 0))(
  ( (LongMapFixedSize!5329 (defaultEntry!6016 Int) (mask!29679 (_ BitVec 32)) (extraKeys!5748 (_ BitVec 32)) (zeroValue!5852 V!37061) (minValue!5852 V!37061) (_size!2719 (_ BitVec 32)) (_keys!11160 array!64316) (_values!6039 array!64318) (_vacant!2719 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5328)

(declare-datatypes ((SeekEntryResult!9605 0))(
  ( (MissingZero!9605 (index!40790 (_ BitVec 32))) (Found!9605 (index!40791 (_ BitVec 32))) (Intermediate!9605 (undefined!10417 Bool) (index!40792 (_ BitVec 32)) (x!91158 (_ BitVec 32))) (Undefined!9605) (MissingVacant!9605 (index!40793 (_ BitVec 32))) )
))
(declare-fun lt!450865 () SeekEntryResult!9605)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1025266 (= res!686515 (not (validKeyInArray!0 (select (arr!30963 (_keys!11160 thiss!1427)) (index!40791 lt!450865)))))))

(declare-fun res!686513 () Bool)

(declare-fun e!578114 () Bool)

(assert (=> start!89458 (=> (not res!686513) (not e!578114))))

(declare-fun valid!1978 (LongMapFixedSize!5328) Bool)

(assert (=> start!89458 (= res!686513 (valid!1978 thiss!1427))))

(assert (=> start!89458 e!578114))

(declare-fun e!578115 () Bool)

(assert (=> start!89458 e!578115))

(assert (=> start!89458 true))

(declare-fun tp_is_empty!24141 () Bool)

(declare-fun e!578116 () Bool)

(declare-fun array_inv!23835 (array!64316) Bool)

(declare-fun array_inv!23836 (array!64318) Bool)

(assert (=> b!1025267 (= e!578115 (and tp!72309 tp_is_empty!24141 (array_inv!23835 (_keys!11160 thiss!1427)) (array_inv!23836 (_values!6039 thiss!1427)) e!578116))))

(declare-fun b!1025268 () Bool)

(declare-fun e!578120 () Bool)

(assert (=> b!1025268 (= e!578116 (and e!578120 mapRes!37640))))

(declare-fun condMapEmpty!37640 () Bool)

(declare-fun mapDefault!37640 () ValueCell!11367)

(assert (=> b!1025268 (= condMapEmpty!37640 (= (arr!30964 (_values!6039 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11367)) mapDefault!37640)))))

(declare-fun b!1025269 () Bool)

(declare-fun e!578119 () Bool)

(assert (=> b!1025269 (= e!578119 tp_is_empty!24141)))

(declare-fun b!1025270 () Bool)

(declare-fun e!578118 () Bool)

(assert (=> b!1025270 (= e!578118 (not e!578113))))

(declare-fun res!686516 () Bool)

(assert (=> b!1025270 (=> res!686516 e!578113)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1025270 (= res!686516 (not (validMask!0 (mask!29679 thiss!1427))))))

(declare-fun lt!450862 () array!64316)

(declare-datatypes ((List!21857 0))(
  ( (Nil!21854) (Cons!21853 (h!23051 (_ BitVec 64)) (t!30926 List!21857)) )
))
(declare-fun arrayNoDuplicates!0 (array!64316 (_ BitVec 32) List!21857) Bool)

(assert (=> b!1025270 (arrayNoDuplicates!0 lt!450862 #b00000000000000000000000000000000 Nil!21854)))

(declare-datatypes ((Unit!33350 0))(
  ( (Unit!33351) )
))
(declare-fun lt!450861 () Unit!33350)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64316 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21857) Unit!33350)

(assert (=> b!1025270 (= lt!450861 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11160 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!40791 lt!450865) #b00000000000000000000000000000000 Nil!21854))))

(declare-fun arrayCountValidKeys!0 (array!64316 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1025270 (= (arrayCountValidKeys!0 lt!450862 #b00000000000000000000000000000000 (size!31477 (_keys!11160 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11160 thiss!1427) #b00000000000000000000000000000000 (size!31477 (_keys!11160 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1025270 (= lt!450862 (array!64317 (store (arr!30963 (_keys!11160 thiss!1427)) (index!40791 lt!450865) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31477 (_keys!11160 thiss!1427))))))

(declare-fun lt!450864 () Unit!33350)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64316 (_ BitVec 32) (_ BitVec 64)) Unit!33350)

(assert (=> b!1025270 (= lt!450864 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11160 thiss!1427) (index!40791 lt!450865) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1025271 () Bool)

(declare-fun res!686512 () Bool)

(assert (=> b!1025271 (=> res!686512 e!578113)))

(assert (=> b!1025271 (= res!686512 (or (not (= (size!31477 (_keys!11160 thiss!1427)) (bvadd #b00000000000000000000000000000001 (mask!29679 thiss!1427)))) (bvslt (index!40791 lt!450865) #b00000000000000000000000000000000) (bvsge (index!40791 lt!450865) (size!31477 (_keys!11160 thiss!1427)))))))

(declare-fun b!1025272 () Bool)

(assert (=> b!1025272 (= e!578113 true)))

(declare-fun lt!450863 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64316 (_ BitVec 32)) Bool)

(assert (=> b!1025272 (= lt!450863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11160 thiss!1427) (mask!29679 thiss!1427)))))

(declare-fun b!1025273 () Bool)

(declare-fun res!686511 () Bool)

(assert (=> b!1025273 (=> res!686511 e!578113)))

(assert (=> b!1025273 (= res!686511 (not (arrayNoDuplicates!0 (_keys!11160 thiss!1427) #b00000000000000000000000000000000 Nil!21854)))))

(declare-fun b!1025274 () Bool)

(assert (=> b!1025274 (= e!578114 e!578118)))

(declare-fun res!686514 () Bool)

(assert (=> b!1025274 (=> (not res!686514) (not e!578118))))

(get-info :version)

(assert (=> b!1025274 (= res!686514 ((_ is Found!9605) lt!450865))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64316 (_ BitVec 32)) SeekEntryResult!9605)

(assert (=> b!1025274 (= lt!450865 (seekEntry!0 key!909 (_keys!11160 thiss!1427) (mask!29679 thiss!1427)))))

(declare-fun b!1025275 () Bool)

(declare-fun res!686517 () Bool)

(assert (=> b!1025275 (=> (not res!686517) (not e!578114))))

(assert (=> b!1025275 (= res!686517 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1025276 () Bool)

(assert (=> b!1025276 (= e!578120 tp_is_empty!24141)))

(declare-fun mapNonEmpty!37640 () Bool)

(declare-fun tp!72310 () Bool)

(assert (=> mapNonEmpty!37640 (= mapRes!37640 (and tp!72310 e!578119))))

(declare-fun mapValue!37640 () ValueCell!11367)

(declare-fun mapRest!37640 () (Array (_ BitVec 32) ValueCell!11367))

(declare-fun mapKey!37640 () (_ BitVec 32))

(assert (=> mapNonEmpty!37640 (= (arr!30964 (_values!6039 thiss!1427)) (store mapRest!37640 mapKey!37640 mapValue!37640))))

(assert (= (and start!89458 res!686513) b!1025275))

(assert (= (and b!1025275 res!686517) b!1025274))

(assert (= (and b!1025274 res!686514) b!1025270))

(assert (= (and b!1025270 (not res!686516)) b!1025271))

(assert (= (and b!1025271 (not res!686512)) b!1025266))

(assert (= (and b!1025266 (not res!686515)) b!1025273))

(assert (= (and b!1025273 (not res!686511)) b!1025272))

(assert (= (and b!1025268 condMapEmpty!37640) mapIsEmpty!37640))

(assert (= (and b!1025268 (not condMapEmpty!37640)) mapNonEmpty!37640))

(assert (= (and mapNonEmpty!37640 ((_ is ValueCellFull!11367) mapValue!37640)) b!1025269))

(assert (= (and b!1025268 ((_ is ValueCellFull!11367) mapDefault!37640)) b!1025276))

(assert (= b!1025267 b!1025268))

(assert (= start!89458 b!1025267))

(declare-fun m!943587 () Bool)

(assert (=> b!1025270 m!943587))

(declare-fun m!943589 () Bool)

(assert (=> b!1025270 m!943589))

(declare-fun m!943591 () Bool)

(assert (=> b!1025270 m!943591))

(declare-fun m!943593 () Bool)

(assert (=> b!1025270 m!943593))

(declare-fun m!943595 () Bool)

(assert (=> b!1025270 m!943595))

(declare-fun m!943597 () Bool)

(assert (=> b!1025270 m!943597))

(declare-fun m!943599 () Bool)

(assert (=> b!1025270 m!943599))

(declare-fun m!943601 () Bool)

(assert (=> start!89458 m!943601))

(declare-fun m!943603 () Bool)

(assert (=> b!1025267 m!943603))

(declare-fun m!943605 () Bool)

(assert (=> b!1025267 m!943605))

(declare-fun m!943607 () Bool)

(assert (=> b!1025272 m!943607))

(declare-fun m!943609 () Bool)

(assert (=> b!1025266 m!943609))

(assert (=> b!1025266 m!943609))

(declare-fun m!943611 () Bool)

(assert (=> b!1025266 m!943611))

(declare-fun m!943613 () Bool)

(assert (=> b!1025273 m!943613))

(declare-fun m!943615 () Bool)

(assert (=> b!1025274 m!943615))

(declare-fun m!943617 () Bool)

(assert (=> mapNonEmpty!37640 m!943617))

(check-sat b_and!32685 (not b!1025267) (not b!1025273) (not start!89458) (not b!1025270) (not b!1025274) (not b!1025266) tp_is_empty!24141 (not mapNonEmpty!37640) (not b_next!20421) (not b!1025272))
(check-sat b_and!32685 (not b_next!20421))
