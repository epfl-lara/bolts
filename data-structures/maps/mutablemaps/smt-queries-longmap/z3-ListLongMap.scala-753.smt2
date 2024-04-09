; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17680 () Bool)

(assert start!17680)

(declare-fun b!176577 () Bool)

(declare-fun b_free!4359 () Bool)

(declare-fun b_next!4359 () Bool)

(assert (=> b!176577 (= b_free!4359 (not b_next!4359))))

(declare-fun tp!15771 () Bool)

(declare-fun b_and!10873 () Bool)

(assert (=> b!176577 (= tp!15771 b_and!10873)))

(declare-fun e!116495 () Bool)

(declare-fun tp_is_empty!4131 () Bool)

(declare-fun e!116497 () Bool)

(declare-datatypes ((V!5155 0))(
  ( (V!5156 (val!2110 Int)) )
))
(declare-datatypes ((ValueCell!1722 0))(
  ( (ValueCellFull!1722 (v!3984 V!5155)) (EmptyCell!1722) )
))
(declare-datatypes ((array!7408 0))(
  ( (array!7409 (arr!3514 (Array (_ BitVec 32) (_ BitVec 64))) (size!3818 (_ BitVec 32))) )
))
(declare-datatypes ((array!7410 0))(
  ( (array!7411 (arr!3515 (Array (_ BitVec 32) ValueCell!1722)) (size!3819 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2352 0))(
  ( (LongMapFixedSize!2353 (defaultEntry!3637 Int) (mask!8559 (_ BitVec 32)) (extraKeys!3374 (_ BitVec 32)) (zeroValue!3478 V!5155) (minValue!3478 V!5155) (_size!1225 (_ BitVec 32)) (_keys!5500 array!7408) (_values!3620 array!7410) (_vacant!1225 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2352)

(declare-fun array_inv!2241 (array!7408) Bool)

(declare-fun array_inv!2242 (array!7410) Bool)

(assert (=> b!176577 (= e!116497 (and tp!15771 tp_is_empty!4131 (array_inv!2241 (_keys!5500 thiss!1248)) (array_inv!2242 (_values!3620 thiss!1248)) e!116495))))

(declare-fun b!176578 () Bool)

(declare-fun e!116496 () Bool)

(assert (=> b!176578 (= e!116496 tp_is_empty!4131)))

(declare-fun mapIsEmpty!7053 () Bool)

(declare-fun mapRes!7053 () Bool)

(assert (=> mapIsEmpty!7053 mapRes!7053))

(declare-fun b!176579 () Bool)

(declare-fun res!83693 () Bool)

(declare-fun e!116493 () Bool)

(assert (=> b!176579 (=> (not res!83693) (not e!116493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176579 (= res!83693 (validMask!0 (mask!8559 thiss!1248)))))

(declare-fun b!176580 () Bool)

(declare-fun e!116494 () Bool)

(assert (=> b!176580 (= e!116495 (and e!116494 mapRes!7053))))

(declare-fun condMapEmpty!7053 () Bool)

(declare-fun mapDefault!7053 () ValueCell!1722)

(assert (=> b!176580 (= condMapEmpty!7053 (= (arr!3515 (_values!3620 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1722)) mapDefault!7053)))))

(declare-fun res!83698 () Bool)

(assert (=> start!17680 (=> (not res!83698) (not e!116493))))

(declare-fun valid!980 (LongMapFixedSize!2352) Bool)

(assert (=> start!17680 (= res!83698 (valid!980 thiss!1248))))

(assert (=> start!17680 e!116493))

(assert (=> start!17680 e!116497))

(assert (=> start!17680 true))

(declare-fun b!176581 () Bool)

(declare-fun res!83694 () Bool)

(assert (=> b!176581 (=> (not res!83694) (not e!116493))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7408 (_ BitVec 32)) Bool)

(assert (=> b!176581 (= res!83694 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5500 thiss!1248) (mask!8559 thiss!1248)))))

(declare-fun b!176582 () Bool)

(declare-fun res!83697 () Bool)

(assert (=> b!176582 (=> (not res!83697) (not e!116493))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!176582 (= res!83697 (not (= key!828 (bvneg key!828))))))

(declare-fun b!176583 () Bool)

(declare-fun res!83699 () Bool)

(assert (=> b!176583 (=> (not res!83699) (not e!116493))))

(declare-datatypes ((tuple2!3280 0))(
  ( (tuple2!3281 (_1!1650 (_ BitVec 64)) (_2!1650 V!5155)) )
))
(declare-datatypes ((List!2257 0))(
  ( (Nil!2254) (Cons!2253 (h!2874 tuple2!3280) (t!7091 List!2257)) )
))
(declare-datatypes ((ListLongMap!2221 0))(
  ( (ListLongMap!2222 (toList!1126 List!2257)) )
))
(declare-fun contains!1184 (ListLongMap!2221 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!773 (array!7408 array!7410 (_ BitVec 32) (_ BitVec 32) V!5155 V!5155 (_ BitVec 32) Int) ListLongMap!2221)

(assert (=> b!176583 (= res!83699 (contains!1184 (getCurrentListMap!773 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)) key!828))))

(declare-fun b!176584 () Bool)

(assert (=> b!176584 (= e!116494 tp_is_empty!4131)))

(declare-fun b!176585 () Bool)

(declare-fun res!83696 () Bool)

(assert (=> b!176585 (=> (not res!83696) (not e!116493))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!566 0))(
  ( (MissingZero!566 (index!4432 (_ BitVec 32))) (Found!566 (index!4433 (_ BitVec 32))) (Intermediate!566 (undefined!1378 Bool) (index!4434 (_ BitVec 32)) (x!19394 (_ BitVec 32))) (Undefined!566) (MissingVacant!566 (index!4435 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7408 (_ BitVec 32)) SeekEntryResult!566)

(assert (=> b!176585 (= res!83696 ((_ is Undefined!566) (seekEntryOrOpen!0 key!828 (_keys!5500 thiss!1248) (mask!8559 thiss!1248))))))

(declare-fun b!176586 () Bool)

(declare-fun res!83695 () Bool)

(assert (=> b!176586 (=> (not res!83695) (not e!116493))))

(assert (=> b!176586 (= res!83695 (and (= (size!3819 (_values!3620 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8559 thiss!1248))) (= (size!3818 (_keys!5500 thiss!1248)) (size!3819 (_values!3620 thiss!1248))) (bvsge (mask!8559 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3374 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3374 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7053 () Bool)

(declare-fun tp!15770 () Bool)

(assert (=> mapNonEmpty!7053 (= mapRes!7053 (and tp!15770 e!116496))))

(declare-fun mapKey!7053 () (_ BitVec 32))

(declare-fun mapValue!7053 () ValueCell!1722)

(declare-fun mapRest!7053 () (Array (_ BitVec 32) ValueCell!1722))

(assert (=> mapNonEmpty!7053 (= (arr!3515 (_values!3620 thiss!1248)) (store mapRest!7053 mapKey!7053 mapValue!7053))))

(declare-fun b!176587 () Bool)

(declare-datatypes ((List!2258 0))(
  ( (Nil!2255) (Cons!2254 (h!2875 (_ BitVec 64)) (t!7092 List!2258)) )
))
(declare-fun arrayNoDuplicates!0 (array!7408 (_ BitVec 32) List!2258) Bool)

(assert (=> b!176587 (= e!116493 (not (arrayNoDuplicates!0 (_keys!5500 thiss!1248) #b00000000000000000000000000000000 Nil!2255)))))

(assert (= (and start!17680 res!83698) b!176582))

(assert (= (and b!176582 res!83697) b!176585))

(assert (= (and b!176585 res!83696) b!176583))

(assert (= (and b!176583 res!83699) b!176579))

(assert (= (and b!176579 res!83693) b!176586))

(assert (= (and b!176586 res!83695) b!176581))

(assert (= (and b!176581 res!83694) b!176587))

(assert (= (and b!176580 condMapEmpty!7053) mapIsEmpty!7053))

(assert (= (and b!176580 (not condMapEmpty!7053)) mapNonEmpty!7053))

(assert (= (and mapNonEmpty!7053 ((_ is ValueCellFull!1722) mapValue!7053)) b!176578))

(assert (= (and b!176580 ((_ is ValueCellFull!1722) mapDefault!7053)) b!176584))

(assert (= b!176577 b!176580))

(assert (= start!17680 b!176577))

(declare-fun m!205361 () Bool)

(assert (=> b!176579 m!205361))

(declare-fun m!205363 () Bool)

(assert (=> b!176583 m!205363))

(assert (=> b!176583 m!205363))

(declare-fun m!205365 () Bool)

(assert (=> b!176583 m!205365))

(declare-fun m!205367 () Bool)

(assert (=> b!176585 m!205367))

(declare-fun m!205369 () Bool)

(assert (=> b!176587 m!205369))

(declare-fun m!205371 () Bool)

(assert (=> mapNonEmpty!7053 m!205371))

(declare-fun m!205373 () Bool)

(assert (=> b!176577 m!205373))

(declare-fun m!205375 () Bool)

(assert (=> b!176577 m!205375))

(declare-fun m!205377 () Bool)

(assert (=> b!176581 m!205377))

(declare-fun m!205379 () Bool)

(assert (=> start!17680 m!205379))

(check-sat (not b!176585) (not b!176579) (not b!176583) (not mapNonEmpty!7053) (not start!17680) (not b_next!4359) (not b!176587) (not b!176577) tp_is_empty!4131 b_and!10873 (not b!176581))
(check-sat b_and!10873 (not b_next!4359))
(get-model)

(declare-fun d!53603 () Bool)

(assert (=> d!53603 (= (validMask!0 (mask!8559 thiss!1248)) (and (or (= (mask!8559 thiss!1248) #b00000000000000000000000000000111) (= (mask!8559 thiss!1248) #b00000000000000000000000000001111) (= (mask!8559 thiss!1248) #b00000000000000000000000000011111) (= (mask!8559 thiss!1248) #b00000000000000000000000000111111) (= (mask!8559 thiss!1248) #b00000000000000000000000001111111) (= (mask!8559 thiss!1248) #b00000000000000000000000011111111) (= (mask!8559 thiss!1248) #b00000000000000000000000111111111) (= (mask!8559 thiss!1248) #b00000000000000000000001111111111) (= (mask!8559 thiss!1248) #b00000000000000000000011111111111) (= (mask!8559 thiss!1248) #b00000000000000000000111111111111) (= (mask!8559 thiss!1248) #b00000000000000000001111111111111) (= (mask!8559 thiss!1248) #b00000000000000000011111111111111) (= (mask!8559 thiss!1248) #b00000000000000000111111111111111) (= (mask!8559 thiss!1248) #b00000000000000001111111111111111) (= (mask!8559 thiss!1248) #b00000000000000011111111111111111) (= (mask!8559 thiss!1248) #b00000000000000111111111111111111) (= (mask!8559 thiss!1248) #b00000000000001111111111111111111) (= (mask!8559 thiss!1248) #b00000000000011111111111111111111) (= (mask!8559 thiss!1248) #b00000000000111111111111111111111) (= (mask!8559 thiss!1248) #b00000000001111111111111111111111) (= (mask!8559 thiss!1248) #b00000000011111111111111111111111) (= (mask!8559 thiss!1248) #b00000000111111111111111111111111) (= (mask!8559 thiss!1248) #b00000001111111111111111111111111) (= (mask!8559 thiss!1248) #b00000011111111111111111111111111) (= (mask!8559 thiss!1248) #b00000111111111111111111111111111) (= (mask!8559 thiss!1248) #b00001111111111111111111111111111) (= (mask!8559 thiss!1248) #b00011111111111111111111111111111) (= (mask!8559 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8559 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!176579 d!53603))

(declare-fun d!53605 () Bool)

(declare-fun e!116520 () Bool)

(assert (=> d!53605 e!116520))

(declare-fun res!83723 () Bool)

(assert (=> d!53605 (=> res!83723 e!116520)))

(declare-fun lt!87407 () Bool)

(assert (=> d!53605 (= res!83723 (not lt!87407))))

(declare-fun lt!87408 () Bool)

(assert (=> d!53605 (= lt!87407 lt!87408)))

(declare-datatypes ((Unit!5405 0))(
  ( (Unit!5406) )
))
(declare-fun lt!87409 () Unit!5405)

(declare-fun e!116521 () Unit!5405)

(assert (=> d!53605 (= lt!87409 e!116521)))

(declare-fun c!31644 () Bool)

(assert (=> d!53605 (= c!31644 lt!87408)))

(declare-fun containsKey!196 (List!2257 (_ BitVec 64)) Bool)

(assert (=> d!53605 (= lt!87408 (containsKey!196 (toList!1126 (getCurrentListMap!773 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248))) key!828))))

(assert (=> d!53605 (= (contains!1184 (getCurrentListMap!773 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)) key!828) lt!87407)))

(declare-fun b!176627 () Bool)

(declare-fun lt!87406 () Unit!5405)

(assert (=> b!176627 (= e!116521 lt!87406)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!145 (List!2257 (_ BitVec 64)) Unit!5405)

(assert (=> b!176627 (= lt!87406 (lemmaContainsKeyImpliesGetValueByKeyDefined!145 (toList!1126 (getCurrentListMap!773 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248))) key!828))))

(declare-datatypes ((Option!198 0))(
  ( (Some!197 (v!3986 V!5155)) (None!196) )
))
(declare-fun isDefined!146 (Option!198) Bool)

(declare-fun getValueByKey!192 (List!2257 (_ BitVec 64)) Option!198)

(assert (=> b!176627 (isDefined!146 (getValueByKey!192 (toList!1126 (getCurrentListMap!773 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248))) key!828))))

(declare-fun b!176628 () Bool)

(declare-fun Unit!5407 () Unit!5405)

(assert (=> b!176628 (= e!116521 Unit!5407)))

(declare-fun b!176629 () Bool)

(assert (=> b!176629 (= e!116520 (isDefined!146 (getValueByKey!192 (toList!1126 (getCurrentListMap!773 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248))) key!828)))))

(assert (= (and d!53605 c!31644) b!176627))

(assert (= (and d!53605 (not c!31644)) b!176628))

(assert (= (and d!53605 (not res!83723)) b!176629))

(declare-fun m!205401 () Bool)

(assert (=> d!53605 m!205401))

(declare-fun m!205403 () Bool)

(assert (=> b!176627 m!205403))

(declare-fun m!205405 () Bool)

(assert (=> b!176627 m!205405))

(assert (=> b!176627 m!205405))

(declare-fun m!205407 () Bool)

(assert (=> b!176627 m!205407))

(assert (=> b!176629 m!205405))

(assert (=> b!176629 m!205405))

(assert (=> b!176629 m!205407))

(assert (=> b!176583 d!53605))

(declare-fun b!176672 () Bool)

(declare-fun e!116557 () Bool)

(declare-fun e!116551 () Bool)

(assert (=> b!176672 (= e!116557 e!116551)))

(declare-fun res!83744 () Bool)

(assert (=> b!176672 (=> (not res!83744) (not e!116551))))

(declare-fun lt!87460 () ListLongMap!2221)

(assert (=> b!176672 (= res!83744 (contains!1184 lt!87460 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!176672 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))))))

(declare-fun b!176673 () Bool)

(declare-fun e!116554 () Bool)

(declare-fun apply!138 (ListLongMap!2221 (_ BitVec 64)) V!5155)

(assert (=> b!176673 (= e!116554 (= (apply!138 lt!87460 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3478 thiss!1248)))))

(declare-fun b!176674 () Bool)

(declare-fun e!116553 () Bool)

(assert (=> b!176674 (= e!116553 (= (apply!138 lt!87460 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3478 thiss!1248)))))

(declare-fun b!176675 () Bool)

(declare-fun e!116548 () Unit!5405)

(declare-fun lt!87458 () Unit!5405)

(assert (=> b!176675 (= e!116548 lt!87458)))

(declare-fun lt!87474 () ListLongMap!2221)

(declare-fun getCurrentListMapNoExtraKeys!168 (array!7408 array!7410 (_ BitVec 32) (_ BitVec 32) V!5155 V!5155 (_ BitVec 32) Int) ListLongMap!2221)

(assert (=> b!176675 (= lt!87474 (getCurrentListMapNoExtraKeys!168 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)))))

(declare-fun lt!87465 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87465 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87462 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87462 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87466 () Unit!5405)

(declare-fun addStillContains!114 (ListLongMap!2221 (_ BitVec 64) V!5155 (_ BitVec 64)) Unit!5405)

(assert (=> b!176675 (= lt!87466 (addStillContains!114 lt!87474 lt!87465 (zeroValue!3478 thiss!1248) lt!87462))))

(declare-fun +!250 (ListLongMap!2221 tuple2!3280) ListLongMap!2221)

(assert (=> b!176675 (contains!1184 (+!250 lt!87474 (tuple2!3281 lt!87465 (zeroValue!3478 thiss!1248))) lt!87462)))

(declare-fun lt!87464 () Unit!5405)

(assert (=> b!176675 (= lt!87464 lt!87466)))

(declare-fun lt!87470 () ListLongMap!2221)

(assert (=> b!176675 (= lt!87470 (getCurrentListMapNoExtraKeys!168 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)))))

(declare-fun lt!87459 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87459 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87469 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87469 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87473 () Unit!5405)

(declare-fun addApplyDifferent!114 (ListLongMap!2221 (_ BitVec 64) V!5155 (_ BitVec 64)) Unit!5405)

(assert (=> b!176675 (= lt!87473 (addApplyDifferent!114 lt!87470 lt!87459 (minValue!3478 thiss!1248) lt!87469))))

(assert (=> b!176675 (= (apply!138 (+!250 lt!87470 (tuple2!3281 lt!87459 (minValue!3478 thiss!1248))) lt!87469) (apply!138 lt!87470 lt!87469))))

(declare-fun lt!87467 () Unit!5405)

(assert (=> b!176675 (= lt!87467 lt!87473)))

(declare-fun lt!87457 () ListLongMap!2221)

(assert (=> b!176675 (= lt!87457 (getCurrentListMapNoExtraKeys!168 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)))))

(declare-fun lt!87471 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87471 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87475 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87475 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87463 () Unit!5405)

(assert (=> b!176675 (= lt!87463 (addApplyDifferent!114 lt!87457 lt!87471 (zeroValue!3478 thiss!1248) lt!87475))))

(assert (=> b!176675 (= (apply!138 (+!250 lt!87457 (tuple2!3281 lt!87471 (zeroValue!3478 thiss!1248))) lt!87475) (apply!138 lt!87457 lt!87475))))

(declare-fun lt!87461 () Unit!5405)

(assert (=> b!176675 (= lt!87461 lt!87463)))

(declare-fun lt!87456 () ListLongMap!2221)

(assert (=> b!176675 (= lt!87456 (getCurrentListMapNoExtraKeys!168 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)))))

(declare-fun lt!87472 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87472 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87455 () (_ BitVec 64))

(assert (=> b!176675 (= lt!87455 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176675 (= lt!87458 (addApplyDifferent!114 lt!87456 lt!87472 (minValue!3478 thiss!1248) lt!87455))))

(assert (=> b!176675 (= (apply!138 (+!250 lt!87456 (tuple2!3281 lt!87472 (minValue!3478 thiss!1248))) lt!87455) (apply!138 lt!87456 lt!87455))))

(declare-fun call!17883 () ListLongMap!2221)

(declare-fun c!31662 () Bool)

(declare-fun c!31661 () Bool)

(declare-fun call!17887 () ListLongMap!2221)

(declare-fun call!17882 () ListLongMap!2221)

(declare-fun bm!17879 () Bool)

(declare-fun call!17885 () ListLongMap!2221)

(assert (=> bm!17879 (= call!17887 (+!250 (ite c!31661 call!17883 (ite c!31662 call!17885 call!17882)) (ite (or c!31661 c!31662) (tuple2!3281 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3478 thiss!1248)) (tuple2!3281 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3478 thiss!1248)))))))

(declare-fun b!176677 () Bool)

(declare-fun e!116560 () Bool)

(declare-fun call!17884 () Bool)

(assert (=> b!176677 (= e!116560 (not call!17884))))

(declare-fun bm!17880 () Bool)

(assert (=> bm!17880 (= call!17882 call!17885)))

(declare-fun bm!17881 () Bool)

(declare-fun call!17888 () ListLongMap!2221)

(assert (=> bm!17881 (= call!17888 call!17887)))

(declare-fun b!176678 () Bool)

(declare-fun e!116552 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!176678 (= e!116552 (validKeyInArray!0 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176679 () Bool)

(declare-fun c!31657 () Bool)

(assert (=> b!176679 (= c!31657 (and (not (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!116550 () ListLongMap!2221)

(declare-fun e!116556 () ListLongMap!2221)

(assert (=> b!176679 (= e!116550 e!116556)))

(declare-fun b!176680 () Bool)

(declare-fun get!2008 (ValueCell!1722 V!5155) V!5155)

(declare-fun dynLambda!476 (Int (_ BitVec 64)) V!5155)

(assert (=> b!176680 (= e!116551 (= (apply!138 lt!87460 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)) (get!2008 (select (arr!3515 (_values!3620 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!476 (defaultEntry!3637 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!176680 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3819 (_values!3620 thiss!1248))))))

(assert (=> b!176680 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))))))

(declare-fun b!176681 () Bool)

(assert (=> b!176681 (= e!116560 e!116554)))

(declare-fun res!83746 () Bool)

(assert (=> b!176681 (= res!83746 call!17884)))

(assert (=> b!176681 (=> (not res!83746) (not e!116554))))

(declare-fun b!176682 () Bool)

(declare-fun res!83749 () Bool)

(declare-fun e!116558 () Bool)

(assert (=> b!176682 (=> (not res!83749) (not e!116558))))

(assert (=> b!176682 (= res!83749 e!116560)))

(declare-fun c!31658 () Bool)

(assert (=> b!176682 (= c!31658 (not (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!176683 () Bool)

(declare-fun e!116549 () Bool)

(assert (=> b!176683 (= e!116549 (validKeyInArray!0 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17882 () Bool)

(declare-fun call!17886 () Bool)

(assert (=> bm!17882 (= call!17886 (contains!1184 lt!87460 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!176684 () Bool)

(assert (=> b!176684 (= e!116556 call!17888)))

(declare-fun d!53607 () Bool)

(assert (=> d!53607 e!116558))

(declare-fun res!83742 () Bool)

(assert (=> d!53607 (=> (not res!83742) (not e!116558))))

(assert (=> d!53607 (= res!83742 (or (bvsge #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))))))))

(declare-fun lt!87454 () ListLongMap!2221)

(assert (=> d!53607 (= lt!87460 lt!87454)))

(declare-fun lt!87468 () Unit!5405)

(assert (=> d!53607 (= lt!87468 e!116548)))

(declare-fun c!31659 () Bool)

(assert (=> d!53607 (= c!31659 e!116549)))

(declare-fun res!83743 () Bool)

(assert (=> d!53607 (=> (not res!83743) (not e!116549))))

(assert (=> d!53607 (= res!83743 (bvslt #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))))))

(declare-fun e!116555 () ListLongMap!2221)

(assert (=> d!53607 (= lt!87454 e!116555)))

(assert (=> d!53607 (= c!31661 (and (not (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53607 (validMask!0 (mask!8559 thiss!1248))))

(assert (=> d!53607 (= (getCurrentListMap!773 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)) lt!87460)))

(declare-fun b!176676 () Bool)

(declare-fun res!83745 () Bool)

(assert (=> b!176676 (=> (not res!83745) (not e!116558))))

(assert (=> b!176676 (= res!83745 e!116557)))

(declare-fun res!83748 () Bool)

(assert (=> b!176676 (=> res!83748 e!116557)))

(assert (=> b!176676 (= res!83748 (not e!116552))))

(declare-fun res!83750 () Bool)

(assert (=> b!176676 (=> (not res!83750) (not e!116552))))

(assert (=> b!176676 (= res!83750 (bvslt #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))))))

(declare-fun b!176685 () Bool)

(declare-fun e!116559 () Bool)

(assert (=> b!176685 (= e!116559 e!116553)))

(declare-fun res!83747 () Bool)

(assert (=> b!176685 (= res!83747 call!17886)))

(assert (=> b!176685 (=> (not res!83747) (not e!116553))))

(declare-fun bm!17883 () Bool)

(assert (=> bm!17883 (= call!17883 (getCurrentListMapNoExtraKeys!168 (_keys!5500 thiss!1248) (_values!3620 thiss!1248) (mask!8559 thiss!1248) (extraKeys!3374 thiss!1248) (zeroValue!3478 thiss!1248) (minValue!3478 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3637 thiss!1248)))))

(declare-fun b!176686 () Bool)

(assert (=> b!176686 (= e!116559 (not call!17886))))

(declare-fun b!176687 () Bool)

(assert (=> b!176687 (= e!116555 (+!250 call!17887 (tuple2!3281 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3478 thiss!1248))))))

(declare-fun b!176688 () Bool)

(assert (=> b!176688 (= e!116558 e!116559)))

(declare-fun c!31660 () Bool)

(assert (=> b!176688 (= c!31660 (not (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!17884 () Bool)

(assert (=> bm!17884 (= call!17884 (contains!1184 lt!87460 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!176689 () Bool)

(assert (=> b!176689 (= e!116550 call!17888)))

(declare-fun bm!17885 () Bool)

(assert (=> bm!17885 (= call!17885 call!17883)))

(declare-fun b!176690 () Bool)

(assert (=> b!176690 (= e!116555 e!116550)))

(assert (=> b!176690 (= c!31662 (and (not (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3374 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!176691 () Bool)

(assert (=> b!176691 (= e!116556 call!17882)))

(declare-fun b!176692 () Bool)

(declare-fun Unit!5408 () Unit!5405)

(assert (=> b!176692 (= e!116548 Unit!5408)))

(assert (= (and d!53607 c!31661) b!176687))

(assert (= (and d!53607 (not c!31661)) b!176690))

(assert (= (and b!176690 c!31662) b!176689))

(assert (= (and b!176690 (not c!31662)) b!176679))

(assert (= (and b!176679 c!31657) b!176684))

(assert (= (and b!176679 (not c!31657)) b!176691))

(assert (= (or b!176684 b!176691) bm!17880))

(assert (= (or b!176689 bm!17880) bm!17885))

(assert (= (or b!176689 b!176684) bm!17881))

(assert (= (or b!176687 bm!17885) bm!17883))

(assert (= (or b!176687 bm!17881) bm!17879))

(assert (= (and d!53607 res!83743) b!176683))

(assert (= (and d!53607 c!31659) b!176675))

(assert (= (and d!53607 (not c!31659)) b!176692))

(assert (= (and d!53607 res!83742) b!176676))

(assert (= (and b!176676 res!83750) b!176678))

(assert (= (and b!176676 (not res!83748)) b!176672))

(assert (= (and b!176672 res!83744) b!176680))

(assert (= (and b!176676 res!83745) b!176682))

(assert (= (and b!176682 c!31658) b!176681))

(assert (= (and b!176682 (not c!31658)) b!176677))

(assert (= (and b!176681 res!83746) b!176673))

(assert (= (or b!176681 b!176677) bm!17884))

(assert (= (and b!176682 res!83749) b!176688))

(assert (= (and b!176688 c!31660) b!176685))

(assert (= (and b!176688 (not c!31660)) b!176686))

(assert (= (and b!176685 res!83747) b!176674))

(assert (= (or b!176685 b!176686) bm!17882))

(declare-fun b_lambda!7073 () Bool)

(assert (=> (not b_lambda!7073) (not b!176680)))

(declare-fun t!7096 () Bool)

(declare-fun tb!2795 () Bool)

(assert (=> (and b!176577 (= (defaultEntry!3637 thiss!1248) (defaultEntry!3637 thiss!1248)) t!7096) tb!2795))

(declare-fun result!4643 () Bool)

(assert (=> tb!2795 (= result!4643 tp_is_empty!4131)))

(assert (=> b!176680 t!7096))

(declare-fun b_and!10877 () Bool)

(assert (= b_and!10873 (and (=> t!7096 result!4643) b_and!10877)))

(declare-fun m!205409 () Bool)

(assert (=> b!176678 m!205409))

(assert (=> b!176678 m!205409))

(declare-fun m!205411 () Bool)

(assert (=> b!176678 m!205411))

(assert (=> b!176672 m!205409))

(assert (=> b!176672 m!205409))

(declare-fun m!205413 () Bool)

(assert (=> b!176672 m!205413))

(declare-fun m!205415 () Bool)

(assert (=> bm!17884 m!205415))

(declare-fun m!205417 () Bool)

(assert (=> bm!17883 m!205417))

(declare-fun m!205419 () Bool)

(assert (=> bm!17882 m!205419))

(declare-fun m!205421 () Bool)

(assert (=> b!176674 m!205421))

(assert (=> b!176680 m!205409))

(declare-fun m!205423 () Bool)

(assert (=> b!176680 m!205423))

(declare-fun m!205425 () Bool)

(assert (=> b!176680 m!205425))

(declare-fun m!205427 () Bool)

(assert (=> b!176680 m!205427))

(assert (=> b!176680 m!205425))

(assert (=> b!176680 m!205409))

(declare-fun m!205429 () Bool)

(assert (=> b!176680 m!205429))

(assert (=> b!176680 m!205423))

(declare-fun m!205431 () Bool)

(assert (=> b!176687 m!205431))

(declare-fun m!205433 () Bool)

(assert (=> b!176673 m!205433))

(assert (=> d!53607 m!205361))

(assert (=> b!176683 m!205409))

(assert (=> b!176683 m!205409))

(assert (=> b!176683 m!205411))

(declare-fun m!205435 () Bool)

(assert (=> b!176675 m!205435))

(declare-fun m!205437 () Bool)

(assert (=> b!176675 m!205437))

(declare-fun m!205439 () Bool)

(assert (=> b!176675 m!205439))

(declare-fun m!205441 () Bool)

(assert (=> b!176675 m!205441))

(declare-fun m!205443 () Bool)

(assert (=> b!176675 m!205443))

(declare-fun m!205445 () Bool)

(assert (=> b!176675 m!205445))

(assert (=> b!176675 m!205417))

(declare-fun m!205447 () Bool)

(assert (=> b!176675 m!205447))

(declare-fun m!205449 () Bool)

(assert (=> b!176675 m!205449))

(assert (=> b!176675 m!205449))

(declare-fun m!205451 () Bool)

(assert (=> b!176675 m!205451))

(assert (=> b!176675 m!205437))

(declare-fun m!205453 () Bool)

(assert (=> b!176675 m!205453))

(assert (=> b!176675 m!205435))

(declare-fun m!205455 () Bool)

(assert (=> b!176675 m!205455))

(assert (=> b!176675 m!205409))

(declare-fun m!205457 () Bool)

(assert (=> b!176675 m!205457))

(declare-fun m!205459 () Bool)

(assert (=> b!176675 m!205459))

(declare-fun m!205461 () Bool)

(assert (=> b!176675 m!205461))

(assert (=> b!176675 m!205445))

(declare-fun m!205463 () Bool)

(assert (=> b!176675 m!205463))

(declare-fun m!205465 () Bool)

(assert (=> bm!17879 m!205465))

(assert (=> b!176583 d!53607))

(declare-fun b!176705 () Bool)

(declare-fun e!116571 () Bool)

(declare-fun contains!1186 (List!2258 (_ BitVec 64)) Bool)

(assert (=> b!176705 (= e!116571 (contains!1186 Nil!2255 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!176706 () Bool)

(declare-fun e!116569 () Bool)

(declare-fun call!17891 () Bool)

(assert (=> b!176706 (= e!116569 call!17891)))

(declare-fun b!176707 () Bool)

(assert (=> b!176707 (= e!116569 call!17891)))

(declare-fun d!53609 () Bool)

(declare-fun res!83758 () Bool)

(declare-fun e!116572 () Bool)

(assert (=> d!53609 (=> res!83758 e!116572)))

(assert (=> d!53609 (= res!83758 (bvsge #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))))))

(assert (=> d!53609 (= (arrayNoDuplicates!0 (_keys!5500 thiss!1248) #b00000000000000000000000000000000 Nil!2255) e!116572)))

(declare-fun b!176708 () Bool)

(declare-fun e!116570 () Bool)

(assert (=> b!176708 (= e!116570 e!116569)))

(declare-fun c!31665 () Bool)

(assert (=> b!176708 (= c!31665 (validKeyInArray!0 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17888 () Bool)

(assert (=> bm!17888 (= call!17891 (arrayNoDuplicates!0 (_keys!5500 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31665 (Cons!2254 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000) Nil!2255) Nil!2255)))))

(declare-fun b!176709 () Bool)

(assert (=> b!176709 (= e!116572 e!116570)))

(declare-fun res!83757 () Bool)

(assert (=> b!176709 (=> (not res!83757) (not e!116570))))

(assert (=> b!176709 (= res!83757 (not e!116571))))

(declare-fun res!83759 () Bool)

(assert (=> b!176709 (=> (not res!83759) (not e!116571))))

(assert (=> b!176709 (= res!83759 (validKeyInArray!0 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53609 (not res!83758)) b!176709))

(assert (= (and b!176709 res!83759) b!176705))

(assert (= (and b!176709 res!83757) b!176708))

(assert (= (and b!176708 c!31665) b!176707))

(assert (= (and b!176708 (not c!31665)) b!176706))

(assert (= (or b!176707 b!176706) bm!17888))

(assert (=> b!176705 m!205409))

(assert (=> b!176705 m!205409))

(declare-fun m!205467 () Bool)

(assert (=> b!176705 m!205467))

(assert (=> b!176708 m!205409))

(assert (=> b!176708 m!205409))

(assert (=> b!176708 m!205411))

(assert (=> bm!17888 m!205409))

(declare-fun m!205469 () Bool)

(assert (=> bm!17888 m!205469))

(assert (=> b!176709 m!205409))

(assert (=> b!176709 m!205409))

(assert (=> b!176709 m!205411))

(assert (=> b!176587 d!53609))

(declare-fun b!176718 () Bool)

(declare-fun e!116580 () Bool)

(declare-fun call!17894 () Bool)

(assert (=> b!176718 (= e!116580 call!17894)))

(declare-fun b!176719 () Bool)

(declare-fun e!116581 () Bool)

(declare-fun e!116579 () Bool)

(assert (=> b!176719 (= e!116581 e!116579)))

(declare-fun c!31668 () Bool)

(assert (=> b!176719 (= c!31668 (validKeyInArray!0 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!53611 () Bool)

(declare-fun res!83765 () Bool)

(assert (=> d!53611 (=> res!83765 e!116581)))

(assert (=> d!53611 (= res!83765 (bvsge #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))))))

(assert (=> d!53611 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5500 thiss!1248) (mask!8559 thiss!1248)) e!116581)))

(declare-fun b!176720 () Bool)

(assert (=> b!176720 (= e!116579 call!17894)))

(declare-fun b!176721 () Bool)

(assert (=> b!176721 (= e!116579 e!116580)))

(declare-fun lt!87484 () (_ BitVec 64))

(assert (=> b!176721 (= lt!87484 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87483 () Unit!5405)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7408 (_ BitVec 64) (_ BitVec 32)) Unit!5405)

(assert (=> b!176721 (= lt!87483 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5500 thiss!1248) lt!87484 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!176721 (arrayContainsKey!0 (_keys!5500 thiss!1248) lt!87484 #b00000000000000000000000000000000)))

(declare-fun lt!87482 () Unit!5405)

(assert (=> b!176721 (= lt!87482 lt!87483)))

(declare-fun res!83764 () Bool)

(assert (=> b!176721 (= res!83764 (= (seekEntryOrOpen!0 (select (arr!3514 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000) (_keys!5500 thiss!1248) (mask!8559 thiss!1248)) (Found!566 #b00000000000000000000000000000000)))))

(assert (=> b!176721 (=> (not res!83764) (not e!116580))))

(declare-fun bm!17891 () Bool)

(assert (=> bm!17891 (= call!17894 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5500 thiss!1248) (mask!8559 thiss!1248)))))

(assert (= (and d!53611 (not res!83765)) b!176719))

(assert (= (and b!176719 c!31668) b!176721))

(assert (= (and b!176719 (not c!31668)) b!176720))

(assert (= (and b!176721 res!83764) b!176718))

(assert (= (or b!176718 b!176720) bm!17891))

(assert (=> b!176719 m!205409))

(assert (=> b!176719 m!205409))

(assert (=> b!176719 m!205411))

(assert (=> b!176721 m!205409))

(declare-fun m!205471 () Bool)

(assert (=> b!176721 m!205471))

(declare-fun m!205473 () Bool)

(assert (=> b!176721 m!205473))

(assert (=> b!176721 m!205409))

(declare-fun m!205475 () Bool)

(assert (=> b!176721 m!205475))

(declare-fun m!205477 () Bool)

(assert (=> bm!17891 m!205477))

(assert (=> b!176581 d!53611))

(declare-fun d!53613 () Bool)

(assert (=> d!53613 (= (array_inv!2241 (_keys!5500 thiss!1248)) (bvsge (size!3818 (_keys!5500 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176577 d!53613))

(declare-fun d!53615 () Bool)

(assert (=> d!53615 (= (array_inv!2242 (_values!3620 thiss!1248)) (bvsge (size!3819 (_values!3620 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!176577 d!53615))

(declare-fun b!176734 () Bool)

(declare-fun e!116589 () SeekEntryResult!566)

(declare-fun lt!87492 () SeekEntryResult!566)

(assert (=> b!176734 (= e!116589 (MissingZero!566 (index!4434 lt!87492)))))

(declare-fun b!176735 () Bool)

(declare-fun c!31676 () Bool)

(declare-fun lt!87491 () (_ BitVec 64))

(assert (=> b!176735 (= c!31676 (= lt!87491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!116588 () SeekEntryResult!566)

(assert (=> b!176735 (= e!116588 e!116589)))

(declare-fun b!176736 () Bool)

(declare-fun e!116590 () SeekEntryResult!566)

(assert (=> b!176736 (= e!116590 e!116588)))

(assert (=> b!176736 (= lt!87491 (select (arr!3514 (_keys!5500 thiss!1248)) (index!4434 lt!87492)))))

(declare-fun c!31677 () Bool)

(assert (=> b!176736 (= c!31677 (= lt!87491 key!828))))

(declare-fun d!53617 () Bool)

(declare-fun lt!87493 () SeekEntryResult!566)

(assert (=> d!53617 (and (or ((_ is Undefined!566) lt!87493) (not ((_ is Found!566) lt!87493)) (and (bvsge (index!4433 lt!87493) #b00000000000000000000000000000000) (bvslt (index!4433 lt!87493) (size!3818 (_keys!5500 thiss!1248))))) (or ((_ is Undefined!566) lt!87493) ((_ is Found!566) lt!87493) (not ((_ is MissingZero!566) lt!87493)) (and (bvsge (index!4432 lt!87493) #b00000000000000000000000000000000) (bvslt (index!4432 lt!87493) (size!3818 (_keys!5500 thiss!1248))))) (or ((_ is Undefined!566) lt!87493) ((_ is Found!566) lt!87493) ((_ is MissingZero!566) lt!87493) (not ((_ is MissingVacant!566) lt!87493)) (and (bvsge (index!4435 lt!87493) #b00000000000000000000000000000000) (bvslt (index!4435 lt!87493) (size!3818 (_keys!5500 thiss!1248))))) (or ((_ is Undefined!566) lt!87493) (ite ((_ is Found!566) lt!87493) (= (select (arr!3514 (_keys!5500 thiss!1248)) (index!4433 lt!87493)) key!828) (ite ((_ is MissingZero!566) lt!87493) (= (select (arr!3514 (_keys!5500 thiss!1248)) (index!4432 lt!87493)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!566) lt!87493) (= (select (arr!3514 (_keys!5500 thiss!1248)) (index!4435 lt!87493)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53617 (= lt!87493 e!116590)))

(declare-fun c!31675 () Bool)

(assert (=> d!53617 (= c!31675 (and ((_ is Intermediate!566) lt!87492) (undefined!1378 lt!87492)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7408 (_ BitVec 32)) SeekEntryResult!566)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53617 (= lt!87492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8559 thiss!1248)) key!828 (_keys!5500 thiss!1248) (mask!8559 thiss!1248)))))

(assert (=> d!53617 (validMask!0 (mask!8559 thiss!1248))))

(assert (=> d!53617 (= (seekEntryOrOpen!0 key!828 (_keys!5500 thiss!1248) (mask!8559 thiss!1248)) lt!87493)))

(declare-fun b!176737 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7408 (_ BitVec 32)) SeekEntryResult!566)

(assert (=> b!176737 (= e!116589 (seekKeyOrZeroReturnVacant!0 (x!19394 lt!87492) (index!4434 lt!87492) (index!4434 lt!87492) key!828 (_keys!5500 thiss!1248) (mask!8559 thiss!1248)))))

(declare-fun b!176738 () Bool)

(assert (=> b!176738 (= e!116590 Undefined!566)))

(declare-fun b!176739 () Bool)

(assert (=> b!176739 (= e!116588 (Found!566 (index!4434 lt!87492)))))

(assert (= (and d!53617 c!31675) b!176738))

(assert (= (and d!53617 (not c!31675)) b!176736))

(assert (= (and b!176736 c!31677) b!176739))

(assert (= (and b!176736 (not c!31677)) b!176735))

(assert (= (and b!176735 c!31676) b!176734))

(assert (= (and b!176735 (not c!31676)) b!176737))

(declare-fun m!205479 () Bool)

(assert (=> b!176736 m!205479))

(declare-fun m!205481 () Bool)

(assert (=> d!53617 m!205481))

(declare-fun m!205483 () Bool)

(assert (=> d!53617 m!205483))

(declare-fun m!205485 () Bool)

(assert (=> d!53617 m!205485))

(declare-fun m!205487 () Bool)

(assert (=> d!53617 m!205487))

(assert (=> d!53617 m!205483))

(assert (=> d!53617 m!205361))

(declare-fun m!205489 () Bool)

(assert (=> d!53617 m!205489))

(declare-fun m!205491 () Bool)

(assert (=> b!176737 m!205491))

(assert (=> b!176585 d!53617))

(declare-fun d!53619 () Bool)

(declare-fun res!83772 () Bool)

(declare-fun e!116593 () Bool)

(assert (=> d!53619 (=> (not res!83772) (not e!116593))))

(declare-fun simpleValid!151 (LongMapFixedSize!2352) Bool)

(assert (=> d!53619 (= res!83772 (simpleValid!151 thiss!1248))))

(assert (=> d!53619 (= (valid!980 thiss!1248) e!116593)))

(declare-fun b!176746 () Bool)

(declare-fun res!83773 () Bool)

(assert (=> b!176746 (=> (not res!83773) (not e!116593))))

(declare-fun arrayCountValidKeys!0 (array!7408 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!176746 (= res!83773 (= (arrayCountValidKeys!0 (_keys!5500 thiss!1248) #b00000000000000000000000000000000 (size!3818 (_keys!5500 thiss!1248))) (_size!1225 thiss!1248)))))

(declare-fun b!176747 () Bool)

(declare-fun res!83774 () Bool)

(assert (=> b!176747 (=> (not res!83774) (not e!116593))))

(assert (=> b!176747 (= res!83774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5500 thiss!1248) (mask!8559 thiss!1248)))))

(declare-fun b!176748 () Bool)

(assert (=> b!176748 (= e!116593 (arrayNoDuplicates!0 (_keys!5500 thiss!1248) #b00000000000000000000000000000000 Nil!2255))))

(assert (= (and d!53619 res!83772) b!176746))

(assert (= (and b!176746 res!83773) b!176747))

(assert (= (and b!176747 res!83774) b!176748))

(declare-fun m!205493 () Bool)

(assert (=> d!53619 m!205493))

(declare-fun m!205495 () Bool)

(assert (=> b!176746 m!205495))

(assert (=> b!176747 m!205377))

(assert (=> b!176748 m!205369))

(assert (=> start!17680 d!53619))

(declare-fun condMapEmpty!7059 () Bool)

(declare-fun mapDefault!7059 () ValueCell!1722)

(assert (=> mapNonEmpty!7053 (= condMapEmpty!7059 (= mapRest!7053 ((as const (Array (_ BitVec 32) ValueCell!1722)) mapDefault!7059)))))

(declare-fun e!116598 () Bool)

(declare-fun mapRes!7059 () Bool)

(assert (=> mapNonEmpty!7053 (= tp!15770 (and e!116598 mapRes!7059))))

(declare-fun mapNonEmpty!7059 () Bool)

(declare-fun tp!15780 () Bool)

(declare-fun e!116599 () Bool)

(assert (=> mapNonEmpty!7059 (= mapRes!7059 (and tp!15780 e!116599))))

(declare-fun mapKey!7059 () (_ BitVec 32))

(declare-fun mapRest!7059 () (Array (_ BitVec 32) ValueCell!1722))

(declare-fun mapValue!7059 () ValueCell!1722)

(assert (=> mapNonEmpty!7059 (= mapRest!7053 (store mapRest!7059 mapKey!7059 mapValue!7059))))

(declare-fun b!176756 () Bool)

(assert (=> b!176756 (= e!116598 tp_is_empty!4131)))

(declare-fun b!176755 () Bool)

(assert (=> b!176755 (= e!116599 tp_is_empty!4131)))

(declare-fun mapIsEmpty!7059 () Bool)

(assert (=> mapIsEmpty!7059 mapRes!7059))

(assert (= (and mapNonEmpty!7053 condMapEmpty!7059) mapIsEmpty!7059))

(assert (= (and mapNonEmpty!7053 (not condMapEmpty!7059)) mapNonEmpty!7059))

(assert (= (and mapNonEmpty!7059 ((_ is ValueCellFull!1722) mapValue!7059)) b!176755))

(assert (= (and mapNonEmpty!7053 ((_ is ValueCellFull!1722) mapDefault!7059)) b!176756))

(declare-fun m!205497 () Bool)

(assert (=> mapNonEmpty!7059 m!205497))

(declare-fun b_lambda!7075 () Bool)

(assert (= b_lambda!7073 (or (and b!176577 b_free!4359) b_lambda!7075)))

(check-sat (not b!176719) (not b!176674) tp_is_empty!4131 (not b!176721) (not b!176675) (not b!176746) (not b_lambda!7075) (not d!53607) (not b!176705) (not b!176737) (not b!176629) (not b!176683) (not b!176687) (not b!176708) (not b!176627) b_and!10877 (not b!176678) (not b!176748) (not b!176672) (not b!176680) (not d!53619) (not bm!17884) (not bm!17879) (not b!176709) (not d!53617) (not bm!17888) (not b!176673) (not mapNonEmpty!7059) (not d!53605) (not bm!17883) (not bm!17891) (not b_next!4359) (not bm!17882) (not b!176747))
(check-sat b_and!10877 (not b_next!4359))
