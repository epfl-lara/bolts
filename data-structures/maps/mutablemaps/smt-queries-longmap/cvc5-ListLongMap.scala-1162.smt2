; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24522 () Bool)

(assert start!24522)

(declare-fun b!256633 () Bool)

(declare-fun b_free!6721 () Bool)

(declare-fun b_next!6721 () Bool)

(assert (=> b!256633 (= b_free!6721 (not b_next!6721))))

(declare-fun tp!23466 () Bool)

(declare-fun b_and!13801 () Bool)

(assert (=> b!256633 (= tp!23466 b_and!13801)))

(declare-fun b!256615 () Bool)

(declare-fun res!125563 () Bool)

(declare-fun e!166352 () Bool)

(assert (=> b!256615 (=> (not res!125563) (not e!166352))))

(declare-datatypes ((V!8425 0))(
  ( (V!8426 (val!3336 Int)) )
))
(declare-datatypes ((ValueCell!2948 0))(
  ( (ValueCellFull!2948 (v!5421 V!8425)) (EmptyCell!2948) )
))
(declare-datatypes ((array!12506 0))(
  ( (array!12507 (arr!5923 (Array (_ BitVec 32) ValueCell!2948)) (size!6270 (_ BitVec 32))) )
))
(declare-datatypes ((array!12508 0))(
  ( (array!12509 (arr!5924 (Array (_ BitVec 32) (_ BitVec 64))) (size!6271 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3796 0))(
  ( (LongMapFixedSize!3797 (defaultEntry!4736 Int) (mask!11014 (_ BitVec 32)) (extraKeys!4473 (_ BitVec 32)) (zeroValue!4577 V!8425) (minValue!4577 V!8425) (_size!1947 (_ BitVec 32)) (_keys!6900 array!12508) (_values!4719 array!12506) (_vacant!1947 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3796)

(declare-datatypes ((SeekEntryResult!1174 0))(
  ( (MissingZero!1174 (index!6866 (_ BitVec 32))) (Found!1174 (index!6867 (_ BitVec 32))) (Intermediate!1174 (undefined!1986 Bool) (index!6868 (_ BitVec 32)) (x!24988 (_ BitVec 32))) (Undefined!1174) (MissingVacant!1174 (index!6869 (_ BitVec 32))) )
))
(declare-fun lt!128931 () SeekEntryResult!1174)

(assert (=> b!256615 (= res!125563 (= (select (arr!5924 (_keys!6900 thiss!1504)) (index!6866 lt!128931)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256616 () Bool)

(declare-fun e!166361 () Bool)

(declare-fun e!166353 () Bool)

(assert (=> b!256616 (= e!166361 e!166353)))

(declare-fun res!125564 () Bool)

(assert (=> b!256616 (=> (not res!125564) (not e!166353))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!256616 (= res!125564 (inRange!0 index!297 (mask!11014 thiss!1504)))))

(declare-datatypes ((Unit!7962 0))(
  ( (Unit!7963) )
))
(declare-fun lt!128932 () Unit!7962)

(declare-fun e!166356 () Unit!7962)

(assert (=> b!256616 (= lt!128932 e!166356)))

(declare-fun c!43377 () Bool)

(declare-datatypes ((tuple2!4908 0))(
  ( (tuple2!4909 (_1!2464 (_ BitVec 64)) (_2!2464 V!8425)) )
))
(declare-datatypes ((List!3812 0))(
  ( (Nil!3809) (Cons!3808 (h!4470 tuple2!4908) (t!8877 List!3812)) )
))
(declare-datatypes ((ListLongMap!3835 0))(
  ( (ListLongMap!3836 (toList!1933 List!3812)) )
))
(declare-fun lt!128929 () ListLongMap!3835)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1866 (ListLongMap!3835 (_ BitVec 64)) Bool)

(assert (=> b!256616 (= c!43377 (contains!1866 lt!128929 key!932))))

(declare-fun getCurrentListMap!1456 (array!12508 array!12506 (_ BitVec 32) (_ BitVec 32) V!8425 V!8425 (_ BitVec 32) Int) ListLongMap!3835)

(assert (=> b!256616 (= lt!128929 (getCurrentListMap!1456 (_keys!6900 thiss!1504) (_values!4719 thiss!1504) (mask!11014 thiss!1504) (extraKeys!4473 thiss!1504) (zeroValue!4577 thiss!1504) (minValue!4577 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4736 thiss!1504)))))

(declare-fun b!256617 () Bool)

(declare-fun e!166354 () Unit!7962)

(declare-fun Unit!7964 () Unit!7962)

(assert (=> b!256617 (= e!166354 Unit!7964)))

(declare-fun mapNonEmpty!11205 () Bool)

(declare-fun mapRes!11205 () Bool)

(declare-fun tp!23465 () Bool)

(declare-fun e!166360 () Bool)

(assert (=> mapNonEmpty!11205 (= mapRes!11205 (and tp!23465 e!166360))))

(declare-fun mapValue!11205 () ValueCell!2948)

(declare-fun mapKey!11205 () (_ BitVec 32))

(declare-fun mapRest!11205 () (Array (_ BitVec 32) ValueCell!2948))

(assert (=> mapNonEmpty!11205 (= (arr!5923 (_values!4719 thiss!1504)) (store mapRest!11205 mapKey!11205 mapValue!11205))))

(declare-fun bm!24323 () Bool)

(declare-fun call!24326 () Bool)

(declare-fun arrayContainsKey!0 (array!12508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24323 (= call!24326 (arrayContainsKey!0 (_keys!6900 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256618 () Bool)

(declare-fun res!125557 () Bool)

(assert (=> b!256618 (=> (not res!125557) (not e!166352))))

(declare-fun call!24327 () Bool)

(assert (=> b!256618 (= res!125557 call!24327)))

(declare-fun e!166359 () Bool)

(assert (=> b!256618 (= e!166359 e!166352)))

(declare-fun c!43378 () Bool)

(declare-fun bm!24324 () Bool)

(assert (=> bm!24324 (= call!24327 (inRange!0 (ite c!43378 (index!6866 lt!128931) (index!6869 lt!128931)) (mask!11014 thiss!1504)))))

(declare-fun b!256619 () Bool)

(declare-fun res!125561 () Bool)

(assert (=> b!256619 (= res!125561 (= (select (arr!5924 (_keys!6900 thiss!1504)) (index!6869 lt!128931)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166351 () Bool)

(assert (=> b!256619 (=> (not res!125561) (not e!166351))))

(declare-fun res!125556 () Bool)

(declare-fun e!166364 () Bool)

(assert (=> start!24522 (=> (not res!125556) (not e!166364))))

(declare-fun valid!1475 (LongMapFixedSize!3796) Bool)

(assert (=> start!24522 (= res!125556 (valid!1475 thiss!1504))))

(assert (=> start!24522 e!166364))

(declare-fun e!166363 () Bool)

(assert (=> start!24522 e!166363))

(assert (=> start!24522 true))

(declare-fun tp_is_empty!6583 () Bool)

(assert (=> start!24522 tp_is_empty!6583))

(declare-fun b!256620 () Bool)

(declare-fun e!166357 () Bool)

(assert (=> b!256620 (= e!166357 (bvslt (size!6271 (_keys!6900 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!256621 () Bool)

(assert (=> b!256621 (= e!166351 (not call!24326))))

(declare-fun b!256622 () Bool)

(declare-fun c!43376 () Bool)

(assert (=> b!256622 (= c!43376 (is-MissingVacant!1174 lt!128931))))

(declare-fun e!166355 () Bool)

(assert (=> b!256622 (= e!166359 e!166355)))

(declare-fun b!256623 () Bool)

(assert (=> b!256623 (= e!166355 e!166351)))

(declare-fun res!125560 () Bool)

(assert (=> b!256623 (= res!125560 call!24327)))

(assert (=> b!256623 (=> (not res!125560) (not e!166351))))

(declare-fun mapIsEmpty!11205 () Bool)

(assert (=> mapIsEmpty!11205 mapRes!11205))

(declare-fun b!256624 () Bool)

(declare-fun lt!128935 () Unit!7962)

(assert (=> b!256624 (= e!166356 lt!128935)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!429 (array!12508 array!12506 (_ BitVec 32) (_ BitVec 32) V!8425 V!8425 (_ BitVec 64) Int) Unit!7962)

(assert (=> b!256624 (= lt!128935 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!429 (_keys!6900 thiss!1504) (_values!4719 thiss!1504) (mask!11014 thiss!1504) (extraKeys!4473 thiss!1504) (zeroValue!4577 thiss!1504) (minValue!4577 thiss!1504) key!932 (defaultEntry!4736 thiss!1504)))))

(assert (=> b!256624 (= c!43378 (is-MissingZero!1174 lt!128931))))

(assert (=> b!256624 e!166359))

(declare-fun b!256625 () Bool)

(declare-fun e!166358 () Bool)

(declare-fun e!166350 () Bool)

(assert (=> b!256625 (= e!166358 (and e!166350 mapRes!11205))))

(declare-fun condMapEmpty!11205 () Bool)

(declare-fun mapDefault!11205 () ValueCell!2948)

