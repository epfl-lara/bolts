; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22950 () Bool)

(assert start!22950)

(declare-fun b!239563 () Bool)

(declare-fun b_free!6441 () Bool)

(declare-fun b_next!6441 () Bool)

(assert (=> b!239563 (= b_free!6441 (not b_next!6441))))

(declare-fun tp!22527 () Bool)

(declare-fun b_and!13425 () Bool)

(assert (=> b!239563 (= tp!22527 b_and!13425)))

(declare-fun b!239556 () Bool)

(declare-fun res!117429 () Bool)

(declare-fun e!155557 () Bool)

(assert (=> b!239556 (=> (not res!117429) (not e!155557))))

(declare-datatypes ((V!8051 0))(
  ( (V!8052 (val!3196 Int)) )
))
(declare-datatypes ((ValueCell!2808 0))(
  ( (ValueCellFull!2808 (v!5230 V!8051)) (EmptyCell!2808) )
))
(declare-datatypes ((array!11884 0))(
  ( (array!11885 (arr!5643 (Array (_ BitVec 32) ValueCell!2808)) (size!5984 (_ BitVec 32))) )
))
(declare-datatypes ((array!11886 0))(
  ( (array!11887 (arr!5644 (Array (_ BitVec 32) (_ BitVec 64))) (size!5985 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3516 0))(
  ( (LongMapFixedSize!3517 (defaultEntry!4443 Int) (mask!10491 (_ BitVec 32)) (extraKeys!4180 (_ BitVec 32)) (zeroValue!4284 V!8051) (minValue!4284 V!8051) (_size!1807 (_ BitVec 32)) (_keys!6545 array!11886) (_values!4426 array!11884) (_vacant!1807 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3516)

(declare-datatypes ((SeekEntryResult!1044 0))(
  ( (MissingZero!1044 (index!6346 (_ BitVec 32))) (Found!1044 (index!6347 (_ BitVec 32))) (Intermediate!1044 (undefined!1856 Bool) (index!6348 (_ BitVec 32)) (x!24124 (_ BitVec 32))) (Undefined!1044) (MissingVacant!1044 (index!6349 (_ BitVec 32))) )
))
(declare-fun lt!120846 () SeekEntryResult!1044)

(assert (=> b!239556 (= res!117429 (= (select (arr!5644 (_keys!6545 thiss!1504)) (index!6346 lt!120846)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239557 () Bool)

(declare-fun e!155551 () Bool)

(declare-fun e!155552 () Bool)

(assert (=> b!239557 (= e!155551 e!155552)))

(declare-fun res!117426 () Bool)

(declare-fun call!22282 () Bool)

(assert (=> b!239557 (= res!117426 call!22282)))

(assert (=> b!239557 (=> (not res!117426) (not e!155552))))

(declare-fun b!239558 () Bool)

(declare-fun res!117427 () Bool)

(declare-fun e!155554 () Bool)

(assert (=> b!239558 (=> (not res!117427) (not e!155554))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239558 (= res!117427 (validMask!0 (mask!10491 thiss!1504)))))

(declare-fun bm!22278 () Bool)

(declare-fun call!22281 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11886 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22278 (= call!22281 (arrayContainsKey!0 (_keys!6545 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239559 () Bool)

(declare-fun e!155550 () Bool)

(assert (=> b!239559 (= e!155550 e!155554)))

(declare-fun res!117428 () Bool)

(assert (=> b!239559 (=> (not res!117428) (not e!155554))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239559 (= res!117428 (inRange!0 index!297 (mask!10491 thiss!1504)))))

(declare-datatypes ((Unit!7356 0))(
  ( (Unit!7357) )
))
(declare-fun lt!120845 () Unit!7356)

(declare-fun e!155558 () Unit!7356)

(assert (=> b!239559 (= lt!120845 e!155558)))

(declare-fun c!39918 () Bool)

(declare-datatypes ((tuple2!4704 0))(
  ( (tuple2!4705 (_1!2362 (_ BitVec 64)) (_2!2362 V!8051)) )
))
(declare-datatypes ((List!3616 0))(
  ( (Nil!3613) (Cons!3612 (h!4268 tuple2!4704) (t!8619 List!3616)) )
))
(declare-datatypes ((ListLongMap!3631 0))(
  ( (ListLongMap!3632 (toList!1831 List!3616)) )
))
(declare-fun contains!1713 (ListLongMap!3631 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1354 (array!11886 array!11884 (_ BitVec 32) (_ BitVec 32) V!8051 V!8051 (_ BitVec 32) Int) ListLongMap!3631)

(assert (=> b!239559 (= c!39918 (contains!1713 (getCurrentListMap!1354 (_keys!6545 thiss!1504) (_values!4426 thiss!1504) (mask!10491 thiss!1504) (extraKeys!4180 thiss!1504) (zeroValue!4284 thiss!1504) (minValue!4284 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4443 thiss!1504)) key!932))))

(declare-fun b!239560 () Bool)

(declare-fun e!155548 () Bool)

(assert (=> b!239560 (= e!155548 e!155550)))

(declare-fun res!117424 () Bool)

(assert (=> b!239560 (=> (not res!117424) (not e!155550))))

(assert (=> b!239560 (= res!117424 (or (= lt!120846 (MissingZero!1044 index!297)) (= lt!120846 (MissingVacant!1044 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11886 (_ BitVec 32)) SeekEntryResult!1044)

(assert (=> b!239560 (= lt!120846 (seekEntryOrOpen!0 key!932 (_keys!6545 thiss!1504) (mask!10491 thiss!1504)))))

(declare-fun mapIsEmpty!10686 () Bool)

(declare-fun mapRes!10686 () Bool)

(assert (=> mapIsEmpty!10686 mapRes!10686))

(declare-fun b!239562 () Bool)

(get-info :version)

(assert (=> b!239562 (= e!155551 ((_ is Undefined!1044) lt!120846))))

(declare-fun e!155553 () Bool)

(declare-fun tp_is_empty!6303 () Bool)

(declare-fun e!155546 () Bool)

(declare-fun array_inv!3723 (array!11886) Bool)

(declare-fun array_inv!3724 (array!11884) Bool)

(assert (=> b!239563 (= e!155553 (and tp!22527 tp_is_empty!6303 (array_inv!3723 (_keys!6545 thiss!1504)) (array_inv!3724 (_values!4426 thiss!1504)) e!155546))))

(declare-fun b!239564 () Bool)

(declare-fun res!117431 () Bool)

(assert (=> b!239564 (=> (not res!117431) (not e!155548))))

(assert (=> b!239564 (= res!117431 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239565 () Bool)

(declare-fun c!39919 () Bool)

(assert (=> b!239565 (= c!39919 ((_ is MissingVacant!1044) lt!120846))))

(declare-fun e!155549 () Bool)

(assert (=> b!239565 (= e!155549 e!155551)))

(declare-fun b!239566 () Bool)

(declare-fun res!117422 () Bool)

(assert (=> b!239566 (=> (not res!117422) (not e!155554))))

(assert (=> b!239566 (= res!117422 (arrayContainsKey!0 (_keys!6545 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239567 () Bool)

(assert (=> b!239567 (= e!155552 (not call!22281))))

(declare-fun b!239568 () Bool)

(declare-fun Unit!7358 () Unit!7356)

(assert (=> b!239568 (= e!155558 Unit!7358)))

(declare-fun lt!120847 () Unit!7356)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!330 (array!11886 array!11884 (_ BitVec 32) (_ BitVec 32) V!8051 V!8051 (_ BitVec 64) Int) Unit!7356)

(assert (=> b!239568 (= lt!120847 (lemmaInListMapThenSeekEntryOrOpenFindsIt!330 (_keys!6545 thiss!1504) (_values!4426 thiss!1504) (mask!10491 thiss!1504) (extraKeys!4180 thiss!1504) (zeroValue!4284 thiss!1504) (minValue!4284 thiss!1504) key!932 (defaultEntry!4443 thiss!1504)))))

(assert (=> b!239568 false))

(declare-fun b!239561 () Bool)

(declare-fun res!117430 () Bool)

(assert (=> b!239561 (=> (not res!117430) (not e!155557))))

(assert (=> b!239561 (= res!117430 call!22282)))

(assert (=> b!239561 (= e!155549 e!155557)))

(declare-fun res!117425 () Bool)

(assert (=> start!22950 (=> (not res!117425) (not e!155548))))

(declare-fun valid!1378 (LongMapFixedSize!3516) Bool)

(assert (=> start!22950 (= res!117425 (valid!1378 thiss!1504))))

(assert (=> start!22950 e!155548))

(assert (=> start!22950 e!155553))

(assert (=> start!22950 true))

(declare-fun mapNonEmpty!10686 () Bool)

(declare-fun tp!22526 () Bool)

(declare-fun e!155556 () Bool)

(assert (=> mapNonEmpty!10686 (= mapRes!10686 (and tp!22526 e!155556))))

(declare-fun mapValue!10686 () ValueCell!2808)

(declare-fun mapKey!10686 () (_ BitVec 32))

(declare-fun mapRest!10686 () (Array (_ BitVec 32) ValueCell!2808))

(assert (=> mapNonEmpty!10686 (= (arr!5643 (_values!4426 thiss!1504)) (store mapRest!10686 mapKey!10686 mapValue!10686))))

(declare-fun b!239569 () Bool)

(assert (=> b!239569 (= e!155557 (not call!22281))))

(declare-fun b!239570 () Bool)

(assert (=> b!239570 (= e!155556 tp_is_empty!6303)))

(declare-fun b!239571 () Bool)

(assert (=> b!239571 (= e!155554 (and (= (size!5984 (_values!4426 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10491 thiss!1504))) (= (size!5985 (_keys!6545 thiss!1504)) (size!5984 (_values!4426 thiss!1504))) (bvsge (mask!10491 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4180 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4180 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!239572 () Bool)

(declare-fun e!155555 () Bool)

(assert (=> b!239572 (= e!155555 tp_is_empty!6303)))

(declare-fun b!239573 () Bool)

(declare-fun res!117423 () Bool)

(assert (=> b!239573 (= res!117423 (= (select (arr!5644 (_keys!6545 thiss!1504)) (index!6349 lt!120846)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!239573 (=> (not res!117423) (not e!155552))))

(declare-fun b!239574 () Bool)

(declare-fun lt!120844 () Unit!7356)

(assert (=> b!239574 (= e!155558 lt!120844)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!343 (array!11886 array!11884 (_ BitVec 32) (_ BitVec 32) V!8051 V!8051 (_ BitVec 64) Int) Unit!7356)

(assert (=> b!239574 (= lt!120844 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!343 (_keys!6545 thiss!1504) (_values!4426 thiss!1504) (mask!10491 thiss!1504) (extraKeys!4180 thiss!1504) (zeroValue!4284 thiss!1504) (minValue!4284 thiss!1504) key!932 (defaultEntry!4443 thiss!1504)))))

(declare-fun c!39917 () Bool)

(assert (=> b!239574 (= c!39917 ((_ is MissingZero!1044) lt!120846))))

(assert (=> b!239574 e!155549))

(declare-fun b!239575 () Bool)

(assert (=> b!239575 (= e!155546 (and e!155555 mapRes!10686))))

(declare-fun condMapEmpty!10686 () Bool)

(declare-fun mapDefault!10686 () ValueCell!2808)

(assert (=> b!239575 (= condMapEmpty!10686 (= (arr!5643 (_values!4426 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2808)) mapDefault!10686)))))

(declare-fun bm!22279 () Bool)

(assert (=> bm!22279 (= call!22282 (inRange!0 (ite c!39917 (index!6346 lt!120846) (index!6349 lt!120846)) (mask!10491 thiss!1504)))))

(assert (= (and start!22950 res!117425) b!239564))

(assert (= (and b!239564 res!117431) b!239560))

(assert (= (and b!239560 res!117424) b!239559))

(assert (= (and b!239559 c!39918) b!239568))

(assert (= (and b!239559 (not c!39918)) b!239574))

(assert (= (and b!239574 c!39917) b!239561))

(assert (= (and b!239574 (not c!39917)) b!239565))

(assert (= (and b!239561 res!117430) b!239556))

(assert (= (and b!239556 res!117429) b!239569))

(assert (= (and b!239565 c!39919) b!239557))

(assert (= (and b!239565 (not c!39919)) b!239562))

(assert (= (and b!239557 res!117426) b!239573))

(assert (= (and b!239573 res!117423) b!239567))

(assert (= (or b!239561 b!239557) bm!22279))

(assert (= (or b!239569 b!239567) bm!22278))

(assert (= (and b!239559 res!117428) b!239566))

(assert (= (and b!239566 res!117422) b!239558))

(assert (= (and b!239558 res!117427) b!239571))

(assert (= (and b!239575 condMapEmpty!10686) mapIsEmpty!10686))

(assert (= (and b!239575 (not condMapEmpty!10686)) mapNonEmpty!10686))

(assert (= (and mapNonEmpty!10686 ((_ is ValueCellFull!2808) mapValue!10686)) b!239570))

(assert (= (and b!239575 ((_ is ValueCellFull!2808) mapDefault!10686)) b!239572))

(assert (= b!239563 b!239575))

(assert (= start!22950 b!239563))

(declare-fun m!259567 () Bool)

(assert (=> start!22950 m!259567))

(declare-fun m!259569 () Bool)

(assert (=> b!239563 m!259569))

(declare-fun m!259571 () Bool)

(assert (=> b!239563 m!259571))

(declare-fun m!259573 () Bool)

(assert (=> b!239560 m!259573))

(declare-fun m!259575 () Bool)

(assert (=> b!239566 m!259575))

(declare-fun m!259577 () Bool)

(assert (=> b!239556 m!259577))

(assert (=> bm!22278 m!259575))

(declare-fun m!259579 () Bool)

(assert (=> b!239558 m!259579))

(declare-fun m!259581 () Bool)

(assert (=> b!239568 m!259581))

(declare-fun m!259583 () Bool)

(assert (=> bm!22279 m!259583))

(declare-fun m!259585 () Bool)

(assert (=> b!239573 m!259585))

(declare-fun m!259587 () Bool)

(assert (=> mapNonEmpty!10686 m!259587))

(declare-fun m!259589 () Bool)

(assert (=> b!239559 m!259589))

(declare-fun m!259591 () Bool)

(assert (=> b!239559 m!259591))

(assert (=> b!239559 m!259591))

(declare-fun m!259593 () Bool)

(assert (=> b!239559 m!259593))

(declare-fun m!259595 () Bool)

(assert (=> b!239574 m!259595))

(check-sat (not b!239568) (not b!239574) (not mapNonEmpty!10686) tp_is_empty!6303 (not b!239560) (not b!239563) (not bm!22279) (not start!22950) (not b!239566) (not b!239559) (not b!239558) (not bm!22278) b_and!13425 (not b_next!6441))
(check-sat b_and!13425 (not b_next!6441))
