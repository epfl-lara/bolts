; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16694 () Bool)

(assert start!16694)

(declare-fun b!167025 () Bool)

(declare-fun b_free!3987 () Bool)

(declare-fun b_next!3987 () Bool)

(assert (=> b!167025 (= b_free!3987 (not b_next!3987))))

(declare-fun tp!14562 () Bool)

(declare-fun b_and!10419 () Bool)

(assert (=> b!167025 (= tp!14562 b_and!10419)))

(declare-fun b!167015 () Bool)

(declare-fun e!109656 () Bool)

(declare-fun e!109655 () Bool)

(declare-fun mapRes!6402 () Bool)

(assert (=> b!167015 (= e!109656 (and e!109655 mapRes!6402))))

(declare-fun condMapEmpty!6402 () Bool)

(declare-datatypes ((V!4699 0))(
  ( (V!4700 (val!1939 Int)) )
))
(declare-datatypes ((ValueCell!1551 0))(
  ( (ValueCellFull!1551 (v!3800 V!4699)) (EmptyCell!1551) )
))
(declare-datatypes ((array!6674 0))(
  ( (array!6675 (arr!3172 (Array (_ BitVec 32) (_ BitVec 64))) (size!3460 (_ BitVec 32))) )
))
(declare-datatypes ((array!6676 0))(
  ( (array!6677 (arr!3173 (Array (_ BitVec 32) ValueCell!1551)) (size!3461 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2010 0))(
  ( (LongMapFixedSize!2011 (defaultEntry!3447 Int) (mask!8188 (_ BitVec 32)) (extraKeys!3188 (_ BitVec 32)) (zeroValue!3290 V!4699) (minValue!3290 V!4699) (_size!1054 (_ BitVec 32)) (_keys!5272 array!6674) (_values!3430 array!6676) (_vacant!1054 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2010)

(declare-fun mapDefault!6402 () ValueCell!1551)

(assert (=> b!167015 (= condMapEmpty!6402 (= (arr!3173 (_values!3430 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1551)) mapDefault!6402)))))

(declare-fun b!167016 () Bool)

(declare-datatypes ((Unit!5098 0))(
  ( (Unit!5099) )
))
(declare-fun e!109660 () Unit!5098)

(declare-fun lt!83568 () Unit!5098)

(assert (=> b!167016 (= e!109660 lt!83568)))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!99 (array!6674 array!6676 (_ BitVec 32) (_ BitVec 32) V!4699 V!4699 (_ BitVec 64) Int) Unit!5098)

(assert (=> b!167016 (= lt!83568 (lemmaInListMapThenSeekEntryOrOpenFindsIt!99 (_keys!5272 thiss!1248) (_values!3430 thiss!1248) (mask!8188 thiss!1248) (extraKeys!3188 thiss!1248) (zeroValue!3290 thiss!1248) (minValue!3290 thiss!1248) key!828 (defaultEntry!3447 thiss!1248)))))

(declare-fun res!79432 () Bool)

(declare-datatypes ((SeekEntryResult!480 0))(
  ( (MissingZero!480 (index!4088 (_ BitVec 32))) (Found!480 (index!4089 (_ BitVec 32))) (Intermediate!480 (undefined!1292 Bool) (index!4090 (_ BitVec 32)) (x!18500 (_ BitVec 32))) (Undefined!480) (MissingVacant!480 (index!4091 (_ BitVec 32))) )
))
(declare-fun lt!83566 () SeekEntryResult!480)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167016 (= res!79432 (inRange!0 (index!4089 lt!83566) (mask!8188 thiss!1248)))))

(declare-fun e!109652 () Bool)

(assert (=> b!167016 (=> (not res!79432) (not e!109652))))

(assert (=> b!167016 e!109652))

(declare-fun b!167017 () Bool)

(declare-fun e!109658 () Bool)

(assert (=> b!167017 (= e!109658 false)))

(declare-fun lt!83567 () Bool)

(declare-datatypes ((List!2134 0))(
  ( (Nil!2131) (Cons!2130 (h!2747 (_ BitVec 64)) (t!6944 List!2134)) )
))
(declare-fun arrayNoDuplicates!0 (array!6674 (_ BitVec 32) List!2134) Bool)

(assert (=> b!167017 (= lt!83567 (arrayNoDuplicates!0 (_keys!5272 thiss!1248) #b00000000000000000000000000000000 Nil!2131))))

(declare-fun b!167018 () Bool)

(declare-fun e!109657 () Bool)

(declare-fun e!109654 () Bool)

(assert (=> b!167018 (= e!109657 e!109654)))

(declare-fun res!79429 () Bool)

(assert (=> b!167018 (=> (not res!79429) (not e!109654))))

(get-info :version)

(assert (=> b!167018 (= res!79429 (and (not ((_ is Undefined!480) lt!83566)) (not ((_ is MissingVacant!480) lt!83566)) (not ((_ is MissingZero!480) lt!83566)) ((_ is Found!480) lt!83566)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6674 (_ BitVec 32)) SeekEntryResult!480)

(assert (=> b!167018 (= lt!83566 (seekEntryOrOpen!0 key!828 (_keys!5272 thiss!1248) (mask!8188 thiss!1248)))))

(declare-fun b!167019 () Bool)

(declare-fun res!79431 () Bool)

(assert (=> b!167019 (=> (not res!79431) (not e!109658))))

(assert (=> b!167019 (= res!79431 (and (= (size!3461 (_values!3430 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8188 thiss!1248))) (= (size!3460 (_keys!5272 thiss!1248)) (size!3461 (_values!3430 thiss!1248))) (bvsge (mask!8188 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3188 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3188 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167020 () Bool)

(assert (=> b!167020 (= e!109652 (= (select (arr!3172 (_keys!5272 thiss!1248)) (index!4089 lt!83566)) key!828))))

(declare-fun res!79430 () Bool)

(assert (=> start!16694 (=> (not res!79430) (not e!109657))))

(declare-fun valid!872 (LongMapFixedSize!2010) Bool)

(assert (=> start!16694 (= res!79430 (valid!872 thiss!1248))))

(assert (=> start!16694 e!109657))

(declare-fun e!109651 () Bool)

(assert (=> start!16694 e!109651))

(assert (=> start!16694 true))

(declare-fun b!167014 () Bool)

(declare-fun tp_is_empty!3789 () Bool)

(assert (=> b!167014 (= e!109655 tp_is_empty!3789)))

(declare-fun b!167021 () Bool)

(declare-fun res!79433 () Bool)

(assert (=> b!167021 (=> (not res!79433) (not e!109657))))

(assert (=> b!167021 (= res!79433 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167022 () Bool)

(declare-fun Unit!5100 () Unit!5098)

(assert (=> b!167022 (= e!109660 Unit!5100)))

(declare-fun lt!83570 () Unit!5098)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!98 (array!6674 array!6676 (_ BitVec 32) (_ BitVec 32) V!4699 V!4699 (_ BitVec 64) Int) Unit!5098)

(assert (=> b!167022 (= lt!83570 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!98 (_keys!5272 thiss!1248) (_values!3430 thiss!1248) (mask!8188 thiss!1248) (extraKeys!3188 thiss!1248) (zeroValue!3290 thiss!1248) (minValue!3290 thiss!1248) key!828 (defaultEntry!3447 thiss!1248)))))

(assert (=> b!167022 false))

(declare-fun mapIsEmpty!6402 () Bool)

(assert (=> mapIsEmpty!6402 mapRes!6402))

(declare-fun b!167023 () Bool)

(declare-fun e!109653 () Bool)

(assert (=> b!167023 (= e!109653 tp_is_empty!3789)))

(declare-fun b!167024 () Bool)

(assert (=> b!167024 (= e!109654 e!109658)))

(declare-fun res!79434 () Bool)

(assert (=> b!167024 (=> (not res!79434) (not e!109658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167024 (= res!79434 (validMask!0 (mask!8188 thiss!1248)))))

(declare-fun lt!83569 () Unit!5098)

(assert (=> b!167024 (= lt!83569 e!109660)))

(declare-fun c!30243 () Bool)

(declare-datatypes ((tuple2!3124 0))(
  ( (tuple2!3125 (_1!1572 (_ BitVec 64)) (_2!1572 V!4699)) )
))
(declare-datatypes ((List!2135 0))(
  ( (Nil!2132) (Cons!2131 (h!2748 tuple2!3124) (t!6945 List!2135)) )
))
(declare-datatypes ((ListLongMap!2093 0))(
  ( (ListLongMap!2094 (toList!1062 List!2135)) )
))
(declare-fun contains!1098 (ListLongMap!2093 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!715 (array!6674 array!6676 (_ BitVec 32) (_ BitVec 32) V!4699 V!4699 (_ BitVec 32) Int) ListLongMap!2093)

(assert (=> b!167024 (= c!30243 (contains!1098 (getCurrentListMap!715 (_keys!5272 thiss!1248) (_values!3430 thiss!1248) (mask!8188 thiss!1248) (extraKeys!3188 thiss!1248) (zeroValue!3290 thiss!1248) (minValue!3290 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3447 thiss!1248)) key!828))))

(declare-fun array_inv!2029 (array!6674) Bool)

(declare-fun array_inv!2030 (array!6676) Bool)

(assert (=> b!167025 (= e!109651 (and tp!14562 tp_is_empty!3789 (array_inv!2029 (_keys!5272 thiss!1248)) (array_inv!2030 (_values!3430 thiss!1248)) e!109656))))

(declare-fun b!167026 () Bool)

(declare-fun res!79428 () Bool)

(assert (=> b!167026 (=> (not res!79428) (not e!109658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6674 (_ BitVec 32)) Bool)

(assert (=> b!167026 (= res!79428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5272 thiss!1248) (mask!8188 thiss!1248)))))

(declare-fun mapNonEmpty!6402 () Bool)

(declare-fun tp!14561 () Bool)

(assert (=> mapNonEmpty!6402 (= mapRes!6402 (and tp!14561 e!109653))))

(declare-fun mapKey!6402 () (_ BitVec 32))

(declare-fun mapRest!6402 () (Array (_ BitVec 32) ValueCell!1551))

(declare-fun mapValue!6402 () ValueCell!1551)

(assert (=> mapNonEmpty!6402 (= (arr!3173 (_values!3430 thiss!1248)) (store mapRest!6402 mapKey!6402 mapValue!6402))))

(assert (= (and start!16694 res!79430) b!167021))

(assert (= (and b!167021 res!79433) b!167018))

(assert (= (and b!167018 res!79429) b!167024))

(assert (= (and b!167024 c!30243) b!167016))

(assert (= (and b!167024 (not c!30243)) b!167022))

(assert (= (and b!167016 res!79432) b!167020))

(assert (= (and b!167024 res!79434) b!167019))

(assert (= (and b!167019 res!79431) b!167026))

(assert (= (and b!167026 res!79428) b!167017))

(assert (= (and b!167015 condMapEmpty!6402) mapIsEmpty!6402))

(assert (= (and b!167015 (not condMapEmpty!6402)) mapNonEmpty!6402))

(assert (= (and mapNonEmpty!6402 ((_ is ValueCellFull!1551) mapValue!6402)) b!167023))

(assert (= (and b!167015 ((_ is ValueCellFull!1551) mapDefault!6402)) b!167014))

(assert (= b!167025 b!167015))

(assert (= start!16694 b!167025))

(declare-fun m!196305 () Bool)

(assert (=> b!167017 m!196305))

(declare-fun m!196307 () Bool)

(assert (=> b!167026 m!196307))

(declare-fun m!196309 () Bool)

(assert (=> b!167018 m!196309))

(declare-fun m!196311 () Bool)

(assert (=> b!167024 m!196311))

(declare-fun m!196313 () Bool)

(assert (=> b!167024 m!196313))

(assert (=> b!167024 m!196313))

(declare-fun m!196315 () Bool)

(assert (=> b!167024 m!196315))

(declare-fun m!196317 () Bool)

(assert (=> start!16694 m!196317))

(declare-fun m!196319 () Bool)

(assert (=> b!167022 m!196319))

(declare-fun m!196321 () Bool)

(assert (=> b!167016 m!196321))

(declare-fun m!196323 () Bool)

(assert (=> b!167016 m!196323))

(declare-fun m!196325 () Bool)

(assert (=> b!167025 m!196325))

(declare-fun m!196327 () Bool)

(assert (=> b!167025 m!196327))

(declare-fun m!196329 () Bool)

(assert (=> mapNonEmpty!6402 m!196329))

(declare-fun m!196331 () Bool)

(assert (=> b!167020 m!196331))

(check-sat (not b_next!3987) tp_is_empty!3789 (not b!167018) (not b!167026) (not b!167024) (not mapNonEmpty!6402) (not b!167025) (not start!16694) (not b!167016) (not b!167017) b_and!10419 (not b!167022))
(check-sat b_and!10419 (not b_next!3987))
