; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16700 () Bool)

(assert start!16700)

(declare-fun b!167142 () Bool)

(declare-fun b_free!3993 () Bool)

(declare-fun b_next!3993 () Bool)

(assert (=> b!167142 (= b_free!3993 (not b_next!3993))))

(declare-fun tp!14580 () Bool)

(declare-fun b_and!10425 () Bool)

(assert (=> b!167142 (= tp!14580 b_and!10425)))

(declare-fun b!167131 () Bool)

(declare-datatypes ((Unit!5106 0))(
  ( (Unit!5107) )
))
(declare-fun e!109744 () Unit!5106)

(declare-fun lt!83613 () Unit!5106)

(assert (=> b!167131 (= e!109744 lt!83613)))

(declare-datatypes ((V!4707 0))(
  ( (V!4708 (val!1942 Int)) )
))
(declare-datatypes ((ValueCell!1554 0))(
  ( (ValueCellFull!1554 (v!3803 V!4707)) (EmptyCell!1554) )
))
(declare-datatypes ((array!6686 0))(
  ( (array!6687 (arr!3178 (Array (_ BitVec 32) (_ BitVec 64))) (size!3466 (_ BitVec 32))) )
))
(declare-datatypes ((array!6688 0))(
  ( (array!6689 (arr!3179 (Array (_ BitVec 32) ValueCell!1554)) (size!3467 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2016 0))(
  ( (LongMapFixedSize!2017 (defaultEntry!3450 Int) (mask!8193 (_ BitVec 32)) (extraKeys!3191 (_ BitVec 32)) (zeroValue!3293 V!4707) (minValue!3293 V!4707) (_size!1057 (_ BitVec 32)) (_keys!5275 array!6686) (_values!3433 array!6688) (_vacant!1057 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2016)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!101 (array!6686 array!6688 (_ BitVec 32) (_ BitVec 32) V!4707 V!4707 (_ BitVec 64) Int) Unit!5106)

(assert (=> b!167131 (= lt!83613 (lemmaInListMapThenSeekEntryOrOpenFindsIt!101 (_keys!5275 thiss!1248) (_values!3433 thiss!1248) (mask!8193 thiss!1248) (extraKeys!3191 thiss!1248) (zeroValue!3293 thiss!1248) (minValue!3293 thiss!1248) key!828 (defaultEntry!3450 thiss!1248)))))

(declare-fun res!79494 () Bool)

(declare-datatypes ((SeekEntryResult!483 0))(
  ( (MissingZero!483 (index!4100 (_ BitVec 32))) (Found!483 (index!4101 (_ BitVec 32))) (Intermediate!483 (undefined!1295 Bool) (index!4102 (_ BitVec 32)) (x!18511 (_ BitVec 32))) (Undefined!483) (MissingVacant!483 (index!4103 (_ BitVec 32))) )
))
(declare-fun lt!83612 () SeekEntryResult!483)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167131 (= res!79494 (inRange!0 (index!4101 lt!83612) (mask!8193 thiss!1248)))))

(declare-fun e!109743 () Bool)

(assert (=> b!167131 (=> (not res!79494) (not e!109743))))

(assert (=> b!167131 e!109743))

(declare-fun b!167132 () Bool)

(declare-fun e!109746 () Bool)

(declare-fun e!109748 () Bool)

(assert (=> b!167132 (= e!109746 e!109748)))

(declare-fun res!79496 () Bool)

(assert (=> b!167132 (=> (not res!79496) (not e!109748))))

(get-info :version)

(assert (=> b!167132 (= res!79496 (and (not ((_ is Undefined!483) lt!83612)) (not ((_ is MissingVacant!483) lt!83612)) (not ((_ is MissingZero!483) lt!83612)) ((_ is Found!483) lt!83612)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6686 (_ BitVec 32)) SeekEntryResult!483)

(assert (=> b!167132 (= lt!83612 (seekEntryOrOpen!0 key!828 (_keys!5275 thiss!1248) (mask!8193 thiss!1248)))))

(declare-fun b!167133 () Bool)

(declare-fun e!109745 () Bool)

(declare-fun tp_is_empty!3795 () Bool)

(assert (=> b!167133 (= e!109745 tp_is_empty!3795)))

(declare-fun mapNonEmpty!6411 () Bool)

(declare-fun mapRes!6411 () Bool)

(declare-fun tp!14579 () Bool)

(declare-fun e!109747 () Bool)

(assert (=> mapNonEmpty!6411 (= mapRes!6411 (and tp!14579 e!109747))))

(declare-fun mapValue!6411 () ValueCell!1554)

(declare-fun mapRest!6411 () (Array (_ BitVec 32) ValueCell!1554))

(declare-fun mapKey!6411 () (_ BitVec 32))

(assert (=> mapNonEmpty!6411 (= (arr!3179 (_values!3433 thiss!1248)) (store mapRest!6411 mapKey!6411 mapValue!6411))))

(declare-fun b!167134 () Bool)

(declare-fun res!79495 () Bool)

(declare-fun e!109742 () Bool)

(assert (=> b!167134 (=> (not res!79495) (not e!109742))))

(assert (=> b!167134 (= res!79495 (and (= (size!3467 (_values!3433 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8193 thiss!1248))) (= (size!3466 (_keys!5275 thiss!1248)) (size!3467 (_values!3433 thiss!1248))) (bvsge (mask!8193 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3191 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3191 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!6411 () Bool)

(assert (=> mapIsEmpty!6411 mapRes!6411))

(declare-fun b!167136 () Bool)

(declare-fun Unit!5108 () Unit!5106)

(assert (=> b!167136 (= e!109744 Unit!5108)))

(declare-fun lt!83615 () Unit!5106)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!100 (array!6686 array!6688 (_ BitVec 32) (_ BitVec 32) V!4707 V!4707 (_ BitVec 64) Int) Unit!5106)

(assert (=> b!167136 (= lt!83615 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!100 (_keys!5275 thiss!1248) (_values!3433 thiss!1248) (mask!8193 thiss!1248) (extraKeys!3191 thiss!1248) (zeroValue!3293 thiss!1248) (minValue!3293 thiss!1248) key!828 (defaultEntry!3450 thiss!1248)))))

(assert (=> b!167136 false))

(declare-fun b!167137 () Bool)

(assert (=> b!167137 (= e!109742 false)))

(declare-fun lt!83614 () Bool)

(declare-datatypes ((List!2139 0))(
  ( (Nil!2136) (Cons!2135 (h!2752 (_ BitVec 64)) (t!6949 List!2139)) )
))
(declare-fun arrayNoDuplicates!0 (array!6686 (_ BitVec 32) List!2139) Bool)

(assert (=> b!167137 (= lt!83614 (arrayNoDuplicates!0 (_keys!5275 thiss!1248) #b00000000000000000000000000000000 Nil!2136))))

(declare-fun b!167138 () Bool)

(declare-fun e!109750 () Bool)

(assert (=> b!167138 (= e!109750 (and e!109745 mapRes!6411))))

(declare-fun condMapEmpty!6411 () Bool)

(declare-fun mapDefault!6411 () ValueCell!1554)

(assert (=> b!167138 (= condMapEmpty!6411 (= (arr!3179 (_values!3433 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1554)) mapDefault!6411)))))

(declare-fun b!167139 () Bool)

(declare-fun res!79493 () Bool)

(assert (=> b!167139 (=> (not res!79493) (not e!109746))))

(assert (=> b!167139 (= res!79493 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167140 () Bool)

(declare-fun res!79497 () Bool)

(assert (=> b!167140 (=> (not res!79497) (not e!109742))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6686 (_ BitVec 32)) Bool)

(assert (=> b!167140 (= res!79497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5275 thiss!1248) (mask!8193 thiss!1248)))))

(declare-fun b!167141 () Bool)

(assert (=> b!167141 (= e!109747 tp_is_empty!3795)))

(declare-fun e!109741 () Bool)

(declare-fun array_inv!2035 (array!6686) Bool)

(declare-fun array_inv!2036 (array!6688) Bool)

(assert (=> b!167142 (= e!109741 (and tp!14580 tp_is_empty!3795 (array_inv!2035 (_keys!5275 thiss!1248)) (array_inv!2036 (_values!3433 thiss!1248)) e!109750))))

(declare-fun b!167143 () Bool)

(assert (=> b!167143 (= e!109743 (= (select (arr!3178 (_keys!5275 thiss!1248)) (index!4101 lt!83612)) key!828))))

(declare-fun res!79492 () Bool)

(assert (=> start!16700 (=> (not res!79492) (not e!109746))))

(declare-fun valid!875 (LongMapFixedSize!2016) Bool)

(assert (=> start!16700 (= res!79492 (valid!875 thiss!1248))))

(assert (=> start!16700 e!109746))

(assert (=> start!16700 e!109741))

(assert (=> start!16700 true))

(declare-fun b!167135 () Bool)

(assert (=> b!167135 (= e!109748 e!109742)))

(declare-fun res!79491 () Bool)

(assert (=> b!167135 (=> (not res!79491) (not e!109742))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167135 (= res!79491 (validMask!0 (mask!8193 thiss!1248)))))

(declare-fun lt!83611 () Unit!5106)

(assert (=> b!167135 (= lt!83611 e!109744)))

(declare-fun c!30252 () Bool)

(declare-datatypes ((tuple2!3128 0))(
  ( (tuple2!3129 (_1!1574 (_ BitVec 64)) (_2!1574 V!4707)) )
))
(declare-datatypes ((List!2140 0))(
  ( (Nil!2137) (Cons!2136 (h!2753 tuple2!3128) (t!6950 List!2140)) )
))
(declare-datatypes ((ListLongMap!2097 0))(
  ( (ListLongMap!2098 (toList!1064 List!2140)) )
))
(declare-fun contains!1100 (ListLongMap!2097 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!717 (array!6686 array!6688 (_ BitVec 32) (_ BitVec 32) V!4707 V!4707 (_ BitVec 32) Int) ListLongMap!2097)

(assert (=> b!167135 (= c!30252 (contains!1100 (getCurrentListMap!717 (_keys!5275 thiss!1248) (_values!3433 thiss!1248) (mask!8193 thiss!1248) (extraKeys!3191 thiss!1248) (zeroValue!3293 thiss!1248) (minValue!3293 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3450 thiss!1248)) key!828))))

(assert (= (and start!16700 res!79492) b!167139))

(assert (= (and b!167139 res!79493) b!167132))

(assert (= (and b!167132 res!79496) b!167135))

(assert (= (and b!167135 c!30252) b!167131))

(assert (= (and b!167135 (not c!30252)) b!167136))

(assert (= (and b!167131 res!79494) b!167143))

(assert (= (and b!167135 res!79491) b!167134))

(assert (= (and b!167134 res!79495) b!167140))

(assert (= (and b!167140 res!79497) b!167137))

(assert (= (and b!167138 condMapEmpty!6411) mapIsEmpty!6411))

(assert (= (and b!167138 (not condMapEmpty!6411)) mapNonEmpty!6411))

(assert (= (and mapNonEmpty!6411 ((_ is ValueCellFull!1554) mapValue!6411)) b!167141))

(assert (= (and b!167138 ((_ is ValueCellFull!1554) mapDefault!6411)) b!167133))

(assert (= b!167142 b!167138))

(assert (= start!16700 b!167142))

(declare-fun m!196389 () Bool)

(assert (=> b!167132 m!196389))

(declare-fun m!196391 () Bool)

(assert (=> b!167136 m!196391))

(declare-fun m!196393 () Bool)

(assert (=> b!167137 m!196393))

(declare-fun m!196395 () Bool)

(assert (=> mapNonEmpty!6411 m!196395))

(declare-fun m!196397 () Bool)

(assert (=> b!167131 m!196397))

(declare-fun m!196399 () Bool)

(assert (=> b!167131 m!196399))

(declare-fun m!196401 () Bool)

(assert (=> b!167143 m!196401))

(declare-fun m!196403 () Bool)

(assert (=> b!167142 m!196403))

(declare-fun m!196405 () Bool)

(assert (=> b!167142 m!196405))

(declare-fun m!196407 () Bool)

(assert (=> b!167135 m!196407))

(declare-fun m!196409 () Bool)

(assert (=> b!167135 m!196409))

(assert (=> b!167135 m!196409))

(declare-fun m!196411 () Bool)

(assert (=> b!167135 m!196411))

(declare-fun m!196413 () Bool)

(assert (=> start!16700 m!196413))

(declare-fun m!196415 () Bool)

(assert (=> b!167140 m!196415))

(check-sat (not b!167132) b_and!10425 (not start!16700) tp_is_empty!3795 (not b!167135) (not b!167136) (not b!167142) (not b!167131) (not b!167137) (not b!167140) (not b_next!3993) (not mapNonEmpty!6411))
(check-sat b_and!10425 (not b_next!3993))
