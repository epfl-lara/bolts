; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22142 () Bool)

(assert start!22142)

(declare-fun b!230550 () Bool)

(declare-fun b_free!6197 () Bool)

(declare-fun b_next!6197 () Bool)

(assert (=> b!230550 (= b_free!6197 (not b_next!6197))))

(declare-fun tp!21733 () Bool)

(declare-fun b_and!13113 () Bool)

(assert (=> b!230550 (= tp!21733 b_and!13113)))

(declare-fun b!230536 () Bool)

(declare-fun e!149624 () Bool)

(declare-fun e!149628 () Bool)

(assert (=> b!230536 (= e!149624 e!149628)))

(declare-fun res!113388 () Bool)

(assert (=> b!230536 (=> (not res!113388) (not e!149628))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7725 0))(
  ( (V!7726 (val!3074 Int)) )
))
(declare-datatypes ((ValueCell!2686 0))(
  ( (ValueCellFull!2686 (v!5090 V!7725)) (EmptyCell!2686) )
))
(declare-datatypes ((array!11360 0))(
  ( (array!11361 (arr!5399 (Array (_ BitVec 32) ValueCell!2686)) (size!5732 (_ BitVec 32))) )
))
(declare-datatypes ((array!11362 0))(
  ( (array!11363 (arr!5400 (Array (_ BitVec 32) (_ BitVec 64))) (size!5733 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3272 0))(
  ( (LongMapFixedSize!3273 (defaultEntry!4295 Int) (mask!10187 (_ BitVec 32)) (extraKeys!4032 (_ BitVec 32)) (zeroValue!4136 V!7725) (minValue!4136 V!7725) (_size!1685 (_ BitVec 32)) (_keys!6349 array!11362) (_values!4278 array!11360) (_vacant!1685 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3272)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!230536 (= res!113388 (inRange!0 index!297 (mask!10187 thiss!1504)))))

(declare-datatypes ((Unit!7061 0))(
  ( (Unit!7062) )
))
(declare-fun lt!116091 () Unit!7061)

(declare-fun e!149623 () Unit!7061)

(assert (=> b!230536 (= lt!116091 e!149623)))

(declare-fun c!38258 () Bool)

(declare-datatypes ((tuple2!4532 0))(
  ( (tuple2!4533 (_1!2276 (_ BitVec 64)) (_2!2276 V!7725)) )
))
(declare-datatypes ((List!3479 0))(
  ( (Nil!3476) (Cons!3475 (h!4123 tuple2!4532) (t!8446 List!3479)) )
))
(declare-datatypes ((ListLongMap!3459 0))(
  ( (ListLongMap!3460 (toList!1745 List!3479)) )
))
(declare-fun lt!116094 () ListLongMap!3459)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1611 (ListLongMap!3459 (_ BitVec 64)) Bool)

(assert (=> b!230536 (= c!38258 (contains!1611 lt!116094 key!932))))

(declare-fun getCurrentListMap!1268 (array!11362 array!11360 (_ BitVec 32) (_ BitVec 32) V!7725 V!7725 (_ BitVec 32) Int) ListLongMap!3459)

(assert (=> b!230536 (= lt!116094 (getCurrentListMap!1268 (_keys!6349 thiss!1504) (_values!4278 thiss!1504) (mask!10187 thiss!1504) (extraKeys!4032 thiss!1504) (zeroValue!4136 thiss!1504) (minValue!4136 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4295 thiss!1504)))))

(declare-fun bm!21420 () Bool)

(declare-fun call!21424 () Bool)

(declare-fun arrayContainsKey!0 (array!11362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21420 (= call!21424 (arrayContainsKey!0 (_keys!6349 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230537 () Bool)

(declare-fun res!113394 () Bool)

(declare-fun e!149635 () Bool)

(assert (=> b!230537 (=> (not res!113394) (not e!149635))))

(assert (=> b!230537 (= res!113394 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230538 () Bool)

(assert (=> b!230538 (= e!149635 e!149624)))

(declare-fun res!113391 () Bool)

(assert (=> b!230538 (=> (not res!113391) (not e!149624))))

(declare-datatypes ((SeekEntryResult!949 0))(
  ( (MissingZero!949 (index!5966 (_ BitVec 32))) (Found!949 (index!5967 (_ BitVec 32))) (Intermediate!949 (undefined!1761 Bool) (index!5968 (_ BitVec 32)) (x!23457 (_ BitVec 32))) (Undefined!949) (MissingVacant!949 (index!5969 (_ BitVec 32))) )
))
(declare-fun lt!116088 () SeekEntryResult!949)

(assert (=> b!230538 (= res!113391 (or (= lt!116088 (MissingZero!949 index!297)) (= lt!116088 (MissingVacant!949 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11362 (_ BitVec 32)) SeekEntryResult!949)

(assert (=> b!230538 (= lt!116088 (seekEntryOrOpen!0 key!932 (_keys!6349 thiss!1504) (mask!10187 thiss!1504)))))

(declare-fun b!230539 () Bool)

(declare-fun e!149633 () Bool)

(assert (=> b!230539 (= e!149633 (not call!21424))))

(declare-fun mapNonEmpty!10258 () Bool)

(declare-fun mapRes!10258 () Bool)

(declare-fun tp!21732 () Bool)

(declare-fun e!149625 () Bool)

(assert (=> mapNonEmpty!10258 (= mapRes!10258 (and tp!21732 e!149625))))

(declare-fun mapRest!10258 () (Array (_ BitVec 32) ValueCell!2686))

(declare-fun mapKey!10258 () (_ BitVec 32))

(declare-fun mapValue!10258 () ValueCell!2686)

(assert (=> mapNonEmpty!10258 (= (arr!5399 (_values!4278 thiss!1504)) (store mapRest!10258 mapKey!10258 mapValue!10258))))

(declare-fun b!230540 () Bool)

(declare-fun e!149629 () Bool)

(assert (=> b!230540 (= e!149629 (is-Undefined!949 lt!116088))))

(declare-fun b!230541 () Bool)

(declare-fun res!113389 () Bool)

(declare-fun e!149622 () Bool)

(assert (=> b!230541 (=> (not res!113389) (not e!149622))))

(assert (=> b!230541 (= res!113389 (= (select (arr!5400 (_keys!6349 thiss!1504)) (index!5966 lt!116088)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230542 () Bool)

(declare-fun tp_is_empty!6059 () Bool)

(assert (=> b!230542 (= e!149625 tp_is_empty!6059)))

(declare-fun b!230544 () Bool)

(declare-fun e!149634 () Unit!7061)

(declare-fun Unit!7063 () Unit!7061)

(assert (=> b!230544 (= e!149634 Unit!7063)))

(declare-fun b!230545 () Bool)

(declare-fun res!113393 () Bool)

(assert (=> b!230545 (=> (not res!113393) (not e!149622))))

(declare-fun call!21423 () Bool)

(assert (=> b!230545 (= res!113393 call!21423)))

(declare-fun e!149626 () Bool)

(assert (=> b!230545 (= e!149626 e!149622)))

(declare-fun b!230546 () Bool)

(declare-fun lt!116096 () Unit!7061)

(assert (=> b!230546 (= e!149623 lt!116096)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!307 (array!11362 array!11360 (_ BitVec 32) (_ BitVec 32) V!7725 V!7725 (_ BitVec 64) Int) Unit!7061)

(assert (=> b!230546 (= lt!116096 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!307 (_keys!6349 thiss!1504) (_values!4278 thiss!1504) (mask!10187 thiss!1504) (extraKeys!4032 thiss!1504) (zeroValue!4136 thiss!1504) (minValue!4136 thiss!1504) key!932 (defaultEntry!4295 thiss!1504)))))

(declare-fun c!38260 () Bool)

(assert (=> b!230546 (= c!38260 (is-MissingZero!949 lt!116088))))

(assert (=> b!230546 e!149626))

(declare-fun b!230547 () Bool)

(declare-fun e!149630 () Bool)

(assert (=> b!230547 (= e!149630 tp_is_empty!6059)))

(declare-fun b!230548 () Bool)

(declare-fun e!149632 () Bool)

(assert (=> b!230548 (= e!149632 (and e!149630 mapRes!10258))))

(declare-fun condMapEmpty!10258 () Bool)

(declare-fun mapDefault!10258 () ValueCell!2686)

