; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23072 () Bool)

(assert start!23072)

(declare-fun b!241718 () Bool)

(declare-fun b_free!6497 () Bool)

(declare-fun b_next!6497 () Bool)

(assert (=> b!241718 (= b_free!6497 (not b_next!6497))))

(declare-fun tp!22698 () Bool)

(declare-fun b_and!13487 () Bool)

(assert (=> b!241718 (= tp!22698 b_and!13487)))

(declare-fun b!241708 () Bool)

(declare-fun c!40294 () Bool)

(declare-datatypes ((SeekEntryResult!1070 0))(
  ( (MissingZero!1070 (index!6450 (_ BitVec 32))) (Found!1070 (index!6451 (_ BitVec 32))) (Intermediate!1070 (undefined!1882 Bool) (index!6452 (_ BitVec 32)) (x!24240 (_ BitVec 32))) (Undefined!1070) (MissingVacant!1070 (index!6453 (_ BitVec 32))) )
))
(declare-fun lt!121480 () SeekEntryResult!1070)

(assert (=> b!241708 (= c!40294 (is-MissingVacant!1070 lt!121480))))

(declare-fun e!156889 () Bool)

(declare-fun e!156890 () Bool)

(assert (=> b!241708 (= e!156889 e!156890)))

(declare-fun b!241709 () Bool)

(assert (=> b!241709 (= e!156890 (is-Undefined!1070 lt!121480))))

(declare-fun b!241710 () Bool)

(declare-fun e!156885 () Bool)

(declare-fun tp_is_empty!6359 () Bool)

(assert (=> b!241710 (= e!156885 tp_is_empty!6359)))

(declare-fun res!118481 () Bool)

(declare-fun e!156883 () Bool)

(assert (=> start!23072 (=> (not res!118481) (not e!156883))))

(declare-datatypes ((V!8125 0))(
  ( (V!8126 (val!3224 Int)) )
))
(declare-datatypes ((ValueCell!2836 0))(
  ( (ValueCellFull!2836 (v!5259 V!8125)) (EmptyCell!2836) )
))
(declare-datatypes ((array!11998 0))(
  ( (array!11999 (arr!5699 (Array (_ BitVec 32) ValueCell!2836)) (size!6041 (_ BitVec 32))) )
))
(declare-datatypes ((array!12000 0))(
  ( (array!12001 (arr!5700 (Array (_ BitVec 32) (_ BitVec 64))) (size!6042 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3572 0))(
  ( (LongMapFixedSize!3573 (defaultEntry!4479 Int) (mask!10552 (_ BitVec 32)) (extraKeys!4216 (_ BitVec 32)) (zeroValue!4320 V!8125) (minValue!4320 V!8125) (_size!1835 (_ BitVec 32)) (_keys!6585 array!12000) (_values!4462 array!11998) (_vacant!1835 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3572)

(declare-fun valid!1395 (LongMapFixedSize!3572) Bool)

(assert (=> start!23072 (= res!118481 (valid!1395 thiss!1504))))

(assert (=> start!23072 e!156883))

(declare-fun e!156892 () Bool)

(assert (=> start!23072 e!156892))

(assert (=> start!23072 true))

(declare-fun b!241711 () Bool)

(declare-datatypes ((Unit!7446 0))(
  ( (Unit!7447) )
))
(declare-fun e!156887 () Unit!7446)

(declare-fun Unit!7448 () Unit!7446)

(assert (=> b!241711 (= e!156887 Unit!7448)))

(declare-fun lt!121482 () Unit!7446)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!155 (array!12000 array!11998 (_ BitVec 32) (_ BitVec 32) V!8125 V!8125 (_ BitVec 64) (_ BitVec 32) Int) Unit!7446)

(assert (=> b!241711 (= lt!121482 (lemmaArrayContainsKeyThenInListMap!155 (_keys!6585 thiss!1504) (_values!4462 thiss!1504) (mask!10552 thiss!1504) (extraKeys!4216 thiss!1504) (zeroValue!4320 thiss!1504) (minValue!4320 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4479 thiss!1504)))))

(assert (=> b!241711 false))

(declare-fun b!241712 () Bool)

(declare-fun Unit!7449 () Unit!7446)

(assert (=> b!241712 (= e!156887 Unit!7449)))

(declare-fun b!241713 () Bool)

(declare-fun e!156884 () Unit!7446)

(declare-fun lt!121479 () Unit!7446)

(assert (=> b!241713 (= e!156884 lt!121479)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!358 (array!12000 array!11998 (_ BitVec 32) (_ BitVec 32) V!8125 V!8125 (_ BitVec 64) Int) Unit!7446)

(assert (=> b!241713 (= lt!121479 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!358 (_keys!6585 thiss!1504) (_values!4462 thiss!1504) (mask!10552 thiss!1504) (extraKeys!4216 thiss!1504) (zeroValue!4320 thiss!1504) (minValue!4320 thiss!1504) key!932 (defaultEntry!4479 thiss!1504)))))

(declare-fun c!40295 () Bool)

(assert (=> b!241713 (= c!40295 (is-MissingZero!1070 lt!121480))))

(assert (=> b!241713 e!156889))

(declare-fun b!241714 () Bool)

(declare-fun e!156891 () Bool)

(assert (=> b!241714 (= e!156890 e!156891)))

(declare-fun res!118478 () Bool)

(declare-fun call!22495 () Bool)

(assert (=> b!241714 (= res!118478 call!22495)))

(assert (=> b!241714 (=> (not res!118478) (not e!156891))))

(declare-fun b!241715 () Bool)

(declare-fun Unit!7450 () Unit!7446)

(assert (=> b!241715 (= e!156884 Unit!7450)))

(declare-fun lt!121481 () Unit!7446)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!352 (array!12000 array!11998 (_ BitVec 32) (_ BitVec 32) V!8125 V!8125 (_ BitVec 64) Int) Unit!7446)

(assert (=> b!241715 (= lt!121481 (lemmaInListMapThenSeekEntryOrOpenFindsIt!352 (_keys!6585 thiss!1504) (_values!4462 thiss!1504) (mask!10552 thiss!1504) (extraKeys!4216 thiss!1504) (zeroValue!4320 thiss!1504) (minValue!4320 thiss!1504) key!932 (defaultEntry!4479 thiss!1504)))))

(assert (=> b!241715 false))

(declare-fun b!241716 () Bool)

(declare-fun e!156881 () Bool)

(declare-fun e!156893 () Bool)

(assert (=> b!241716 (= e!156881 e!156893)))

(declare-fun res!118479 () Bool)

(assert (=> b!241716 (=> (not res!118479) (not e!156893))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!241716 (= res!118479 (inRange!0 index!297 (mask!10552 thiss!1504)))))

(declare-fun lt!121477 () Unit!7446)

(assert (=> b!241716 (= lt!121477 e!156884)))

(declare-fun c!40293 () Bool)

(declare-datatypes ((tuple2!4744 0))(
  ( (tuple2!4745 (_1!2382 (_ BitVec 64)) (_2!2382 V!8125)) )
))
(declare-datatypes ((List!3646 0))(
  ( (Nil!3643) (Cons!3642 (h!4299 tuple2!4744) (t!8651 List!3646)) )
))
(declare-datatypes ((ListLongMap!3671 0))(
  ( (ListLongMap!3672 (toList!1851 List!3646)) )
))
(declare-fun contains!1735 (ListLongMap!3671 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1374 (array!12000 array!11998 (_ BitVec 32) (_ BitVec 32) V!8125 V!8125 (_ BitVec 32) Int) ListLongMap!3671)

(assert (=> b!241716 (= c!40293 (contains!1735 (getCurrentListMap!1374 (_keys!6585 thiss!1504) (_values!4462 thiss!1504) (mask!10552 thiss!1504) (extraKeys!4216 thiss!1504) (zeroValue!4320 thiss!1504) (minValue!4320 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4479 thiss!1504)) key!932))))

(declare-fun bm!22491 () Bool)

(declare-fun call!22494 () Bool)

(declare-fun arrayContainsKey!0 (array!12000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22491 (= call!22494 (arrayContainsKey!0 (_keys!6585 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!22492 () Bool)

(assert (=> bm!22492 (= call!22495 (inRange!0 (ite c!40295 (index!6450 lt!121480) (index!6453 lt!121480)) (mask!10552 thiss!1504)))))

(declare-fun b!241717 () Bool)

(declare-fun e!156888 () Bool)

(declare-fun mapRes!10774 () Bool)

(assert (=> b!241717 (= e!156888 (and e!156885 mapRes!10774))))

(declare-fun condMapEmpty!10774 () Bool)

(declare-fun mapDefault!10774 () ValueCell!2836)

