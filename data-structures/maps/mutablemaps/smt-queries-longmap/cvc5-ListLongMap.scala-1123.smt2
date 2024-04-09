; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23062 () Bool)

(assert start!23062)

(declare-fun b!241424 () Bool)

(declare-fun b_free!6487 () Bool)

(declare-fun b_next!6487 () Bool)

(assert (=> b!241424 (= b_free!6487 (not b_next!6487))))

(declare-fun tp!22669 () Bool)

(declare-fun b_and!13477 () Bool)

(assert (=> b!241424 (= tp!22669 b_and!13477)))

(declare-fun mapNonEmpty!10759 () Bool)

(declare-fun mapRes!10759 () Bool)

(declare-fun tp!22668 () Bool)

(declare-fun e!156674 () Bool)

(assert (=> mapNonEmpty!10759 (= mapRes!10759 (and tp!22668 e!156674))))

(declare-datatypes ((V!8113 0))(
  ( (V!8114 (val!3219 Int)) )
))
(declare-datatypes ((ValueCell!2831 0))(
  ( (ValueCellFull!2831 (v!5254 V!8113)) (EmptyCell!2831) )
))
(declare-datatypes ((array!11978 0))(
  ( (array!11979 (arr!5689 (Array (_ BitVec 32) ValueCell!2831)) (size!6031 (_ BitVec 32))) )
))
(declare-datatypes ((array!11980 0))(
  ( (array!11981 (arr!5690 (Array (_ BitVec 32) (_ BitVec 64))) (size!6032 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3562 0))(
  ( (LongMapFixedSize!3563 (defaultEntry!4474 Int) (mask!10545 (_ BitVec 32)) (extraKeys!4211 (_ BitVec 32)) (zeroValue!4315 V!8113) (minValue!4315 V!8113) (_size!1830 (_ BitVec 32)) (_keys!6580 array!11980) (_values!4457 array!11978) (_vacant!1830 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3562)

(declare-fun mapValue!10759 () ValueCell!2831)

(declare-fun mapRest!10759 () (Array (_ BitVec 32) ValueCell!2831))

(declare-fun mapKey!10759 () (_ BitVec 32))

(assert (=> mapNonEmpty!10759 (= (arr!5689 (_values!4457 thiss!1504)) (store mapRest!10759 mapKey!10759 mapValue!10759))))

(declare-fun b!241408 () Bool)

(declare-fun e!156677 () Bool)

(declare-fun e!156672 () Bool)

(assert (=> b!241408 (= e!156677 e!156672)))

(declare-fun res!118361 () Bool)

(assert (=> b!241408 (=> (not res!118361) (not e!156672))))

(declare-datatypes ((SeekEntryResult!1065 0))(
  ( (MissingZero!1065 (index!6430 (_ BitVec 32))) (Found!1065 (index!6431 (_ BitVec 32))) (Intermediate!1065 (undefined!1877 Bool) (index!6432 (_ BitVec 32)) (x!24227 (_ BitVec 32))) (Undefined!1065) (MissingVacant!1065 (index!6433 (_ BitVec 32))) )
))
(declare-fun lt!121391 () SeekEntryResult!1065)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!241408 (= res!118361 (or (= lt!121391 (MissingZero!1065 index!297)) (= lt!121391 (MissingVacant!1065 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11980 (_ BitVec 32)) SeekEntryResult!1065)

(assert (=> b!241408 (= lt!121391 (seekEntryOrOpen!0 key!932 (_keys!6580 thiss!1504) (mask!10545 thiss!1504)))))

(declare-fun b!241409 () Bool)

(declare-fun e!156671 () Bool)

(assert (=> b!241409 (= e!156671 false)))

(declare-datatypes ((Unit!7430 0))(
  ( (Unit!7431) )
))
(declare-fun lt!121390 () Unit!7430)

(declare-fun e!156676 () Unit!7430)

(assert (=> b!241409 (= lt!121390 e!156676)))

(declare-fun c!40234 () Bool)

(declare-fun arrayContainsKey!0 (array!11980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!241409 (= c!40234 (arrayContainsKey!0 (_keys!6580 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241410 () Bool)

(declare-fun e!156683 () Bool)

(declare-fun call!22464 () Bool)

(assert (=> b!241410 (= e!156683 (not call!22464))))

(declare-fun b!241411 () Bool)

(assert (=> b!241411 (= e!156672 e!156671)))

(declare-fun res!118359 () Bool)

(assert (=> b!241411 (=> (not res!118359) (not e!156671))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!241411 (= res!118359 (inRange!0 index!297 (mask!10545 thiss!1504)))))

(declare-fun lt!121392 () Unit!7430)

(declare-fun e!156673 () Unit!7430)

(assert (=> b!241411 (= lt!121392 e!156673)))

(declare-fun c!40232 () Bool)

(declare-datatypes ((tuple2!4738 0))(
  ( (tuple2!4739 (_1!2379 (_ BitVec 64)) (_2!2379 V!8113)) )
))
(declare-datatypes ((List!3643 0))(
  ( (Nil!3640) (Cons!3639 (h!4296 tuple2!4738) (t!8648 List!3643)) )
))
(declare-datatypes ((ListLongMap!3665 0))(
  ( (ListLongMap!3666 (toList!1848 List!3643)) )
))
(declare-fun contains!1732 (ListLongMap!3665 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1371 (array!11980 array!11978 (_ BitVec 32) (_ BitVec 32) V!8113 V!8113 (_ BitVec 32) Int) ListLongMap!3665)

(assert (=> b!241411 (= c!40232 (contains!1732 (getCurrentListMap!1371 (_keys!6580 thiss!1504) (_values!4457 thiss!1504) (mask!10545 thiss!1504) (extraKeys!4211 thiss!1504) (zeroValue!4315 thiss!1504) (minValue!4315 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4474 thiss!1504)) key!932))))

(declare-fun b!241412 () Bool)

(declare-fun res!118360 () Bool)

(assert (=> b!241412 (= res!118360 (= (select (arr!5690 (_keys!6580 thiss!1504)) (index!6433 lt!121391)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156679 () Bool)

(assert (=> b!241412 (=> (not res!118360) (not e!156679))))

(declare-fun b!241413 () Bool)

(assert (=> b!241413 (= e!156679 (not call!22464))))

(declare-fun res!118362 () Bool)

(assert (=> start!23062 (=> (not res!118362) (not e!156677))))

(declare-fun valid!1392 (LongMapFixedSize!3562) Bool)

(assert (=> start!23062 (= res!118362 (valid!1392 thiss!1504))))

(assert (=> start!23062 e!156677))

(declare-fun e!156678 () Bool)

(assert (=> start!23062 e!156678))

(assert (=> start!23062 true))

(declare-fun b!241414 () Bool)

(declare-fun tp_is_empty!6349 () Bool)

(assert (=> b!241414 (= e!156674 tp_is_empty!6349)))

(declare-fun bm!22461 () Bool)

(assert (=> bm!22461 (= call!22464 (arrayContainsKey!0 (_keys!6580 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!241415 () Bool)

(declare-fun res!118355 () Bool)

(assert (=> b!241415 (=> (not res!118355) (not e!156683))))

(declare-fun call!22465 () Bool)

(assert (=> b!241415 (= res!118355 call!22465)))

(declare-fun e!156682 () Bool)

(assert (=> b!241415 (= e!156682 e!156683)))

(declare-fun b!241416 () Bool)

(declare-fun e!156684 () Bool)

(assert (=> b!241416 (= e!156684 tp_is_empty!6349)))

(declare-fun b!241417 () Bool)

(declare-fun e!156675 () Bool)

(assert (=> b!241417 (= e!156675 (is-Undefined!1065 lt!121391))))

(declare-fun b!241418 () Bool)

(declare-fun Unit!7432 () Unit!7430)

(assert (=> b!241418 (= e!156673 Unit!7432)))

(declare-fun lt!121387 () Unit!7430)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!348 (array!11980 array!11978 (_ BitVec 32) (_ BitVec 32) V!8113 V!8113 (_ BitVec 64) Int) Unit!7430)

(assert (=> b!241418 (= lt!121387 (lemmaInListMapThenSeekEntryOrOpenFindsIt!348 (_keys!6580 thiss!1504) (_values!4457 thiss!1504) (mask!10545 thiss!1504) (extraKeys!4211 thiss!1504) (zeroValue!4315 thiss!1504) (minValue!4315 thiss!1504) key!932 (defaultEntry!4474 thiss!1504)))))

(assert (=> b!241418 false))

(declare-fun b!241419 () Bool)

(assert (=> b!241419 (= e!156675 e!156679)))

(declare-fun res!118358 () Bool)

(assert (=> b!241419 (= res!118358 call!22465)))

(assert (=> b!241419 (=> (not res!118358) (not e!156679))))

(declare-fun b!241420 () Bool)

(declare-fun e!156680 () Bool)

(assert (=> b!241420 (= e!156680 (and e!156684 mapRes!10759))))

(declare-fun condMapEmpty!10759 () Bool)

(declare-fun mapDefault!10759 () ValueCell!2831)

