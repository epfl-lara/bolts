; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23268 () Bool)

(assert start!23268)

(declare-fun b!244366 () Bool)

(declare-fun b_free!6539 () Bool)

(declare-fun b_next!6539 () Bool)

(assert (=> b!244366 (= b_free!6539 (not b_next!6539))))

(declare-fun tp!22843 () Bool)

(declare-fun b_and!13541 () Bool)

(assert (=> b!244366 (= tp!22843 b_and!13541)))

(declare-fun b!244340 () Bool)

(declare-fun e!158555 () Bool)

(declare-datatypes ((SeekEntryResult!1090 0))(
  ( (MissingZero!1090 (index!6530 (_ BitVec 32))) (Found!1090 (index!6531 (_ BitVec 32))) (Intermediate!1090 (undefined!1902 Bool) (index!6532 (_ BitVec 32)) (x!24376 (_ BitVec 32))) (Undefined!1090) (MissingVacant!1090 (index!6533 (_ BitVec 32))) )
))
(declare-fun lt!122499 () SeekEntryResult!1090)

(assert (=> b!244340 (= e!158555 (is-Undefined!1090 lt!122499))))

(declare-fun b!244341 () Bool)

(declare-fun e!158564 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!244341 (= e!158564 (not (validKeyInArray!0 key!932)))))

(declare-datatypes ((V!8181 0))(
  ( (V!8182 (val!3245 Int)) )
))
(declare-datatypes ((ValueCell!2857 0))(
  ( (ValueCellFull!2857 (v!5290 V!8181)) (EmptyCell!2857) )
))
(declare-datatypes ((array!12094 0))(
  ( (array!12095 (arr!5741 (Array (_ BitVec 32) ValueCell!2857)) (size!6083 (_ BitVec 32))) )
))
(declare-datatypes ((array!12096 0))(
  ( (array!12097 (arr!5742 (Array (_ BitVec 32) (_ BitVec 64))) (size!6084 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3614 0))(
  ( (LongMapFixedSize!3615 (defaultEntry!4524 Int) (mask!10623 (_ BitVec 32)) (extraKeys!4261 (_ BitVec 32)) (zeroValue!4365 V!8181) (minValue!4365 V!8181) (_size!1856 (_ BitVec 32)) (_keys!6636 array!12096) (_values!4507 array!12094) (_vacant!1856 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3614)

(declare-fun c!40768 () Bool)

(declare-fun call!22789 () Bool)

(declare-fun bm!22785 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22785 (= call!22789 (inRange!0 (ite c!40768 (index!6530 lt!122499) (index!6533 lt!122499)) (mask!10623 thiss!1504)))))

(declare-fun b!244342 () Bool)

(declare-fun e!158561 () Bool)

(declare-fun e!158562 () Bool)

(assert (=> b!244342 (= e!158561 e!158562)))

(declare-fun res!119854 () Bool)

(assert (=> b!244342 (=> (not res!119854) (not e!158562))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!244342 (= res!119854 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!244343 () Bool)

(declare-datatypes ((List!3678 0))(
  ( (Nil!3675) (Cons!3674 (h!4331 (_ BitVec 64)) (t!8695 List!3678)) )
))
(declare-fun contains!1763 (List!3678 (_ BitVec 64)) Bool)

(assert (=> b!244343 (= e!158562 (not (contains!1763 Nil!3675 key!932)))))

(declare-fun b!244344 () Bool)

(declare-fun e!158556 () Bool)

(assert (=> b!244344 (= e!158555 e!158556)))

(declare-fun res!119861 () Bool)

(assert (=> b!244344 (= res!119861 call!22789)))

(assert (=> b!244344 (=> (not res!119861) (not e!158556))))

(declare-fun b!244345 () Bool)

(declare-fun res!119860 () Bool)

(declare-fun e!158569 () Bool)

(assert (=> b!244345 (=> (not res!119860) (not e!158569))))

(assert (=> b!244345 (= res!119860 (= (select (arr!5742 (_keys!6636 thiss!1504)) (index!6530 lt!122499)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!244346 () Bool)

(declare-datatypes ((Unit!7542 0))(
  ( (Unit!7543) )
))
(declare-fun e!158560 () Unit!7542)

(declare-fun Unit!7544 () Unit!7542)

(assert (=> b!244346 (= e!158560 Unit!7544)))

(declare-fun b!244347 () Bool)

(declare-fun res!119848 () Bool)

(assert (=> b!244347 (=> (not res!119848) (not e!158564))))

(assert (=> b!244347 (= res!119848 (not (contains!1763 Nil!3675 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!22786 () Bool)

(declare-fun call!22788 () Bool)

(declare-fun arrayContainsKey!0 (array!12096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22786 (= call!22788 (arrayContainsKey!0 (_keys!6636 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244348 () Bool)

(declare-fun res!119863 () Bool)

(assert (=> b!244348 (= res!119863 (= (select (arr!5742 (_keys!6636 thiss!1504)) (index!6533 lt!122499)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!244348 (=> (not res!119863) (not e!158556))))

(declare-fun res!119858 () Bool)

(declare-fun e!158558 () Bool)

(assert (=> start!23268 (=> (not res!119858) (not e!158558))))

(declare-fun valid!1408 (LongMapFixedSize!3614) Bool)

(assert (=> start!23268 (= res!119858 (valid!1408 thiss!1504))))

(assert (=> start!23268 e!158558))

(declare-fun e!158557 () Bool)

(assert (=> start!23268 e!158557))

(assert (=> start!23268 true))

(declare-fun b!244349 () Bool)

(declare-fun res!119852 () Bool)

(assert (=> b!244349 (=> (not res!119852) (not e!158558))))

(assert (=> b!244349 (= res!119852 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!244350 () Bool)

(declare-fun res!119853 () Bool)

(assert (=> b!244350 (=> (not res!119853) (not e!158564))))

(declare-fun arrayNoDuplicates!0 (array!12096 (_ BitVec 32) List!3678) Bool)

(assert (=> b!244350 (= res!119853 (arrayNoDuplicates!0 (_keys!6636 thiss!1504) #b00000000000000000000000000000000 Nil!3675))))

(declare-fun b!244351 () Bool)

(declare-fun res!119850 () Bool)

(assert (=> b!244351 (=> (not res!119850) (not e!158564))))

(assert (=> b!244351 (= res!119850 (not (contains!1763 Nil!3675 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!244352 () Bool)

(declare-fun c!40766 () Bool)

(assert (=> b!244352 (= c!40766 (is-MissingVacant!1090 lt!122499))))

(declare-fun e!158567 () Bool)

(assert (=> b!244352 (= e!158567 e!158555)))

(declare-fun b!244353 () Bool)

(declare-fun e!158568 () Bool)

(assert (=> b!244353 (= e!158568 (contains!1763 Nil!3675 key!932))))

(declare-fun b!244354 () Bool)

(declare-fun res!119855 () Bool)

(assert (=> b!244354 (=> (not res!119855) (not e!158564))))

(assert (=> b!244354 (= res!119855 e!158561)))

(declare-fun res!119847 () Bool)

(assert (=> b!244354 (=> res!119847 e!158561)))

(assert (=> b!244354 (= res!119847 e!158568)))

(declare-fun res!119862 () Bool)

(assert (=> b!244354 (=> (not res!119862) (not e!158568))))

(assert (=> b!244354 (= res!119862 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!244355 () Bool)

(declare-fun e!158559 () Bool)

(declare-fun tp_is_empty!6401 () Bool)

(assert (=> b!244355 (= e!158559 tp_is_empty!6401)))

(declare-fun b!244356 () Bool)

(declare-fun Unit!7545 () Unit!7542)

(assert (=> b!244356 (= e!158560 Unit!7545)))

(declare-fun lt!122500 () Unit!7542)

(declare-fun lemmaArrayContainsKeyThenInListMap!170 (array!12096 array!12094 (_ BitVec 32) (_ BitVec 32) V!8181 V!8181 (_ BitVec 64) (_ BitVec 32) Int) Unit!7542)

(assert (=> b!244356 (= lt!122500 (lemmaArrayContainsKeyThenInListMap!170 (_keys!6636 thiss!1504) (_values!4507 thiss!1504) (mask!10623 thiss!1504) (extraKeys!4261 thiss!1504) (zeroValue!4365 thiss!1504) (minValue!4365 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4524 thiss!1504)))))

(assert (=> b!244356 false))

(declare-fun mapNonEmpty!10855 () Bool)

(declare-fun mapRes!10855 () Bool)

(declare-fun tp!22842 () Bool)

(declare-fun e!158554 () Bool)

(assert (=> mapNonEmpty!10855 (= mapRes!10855 (and tp!22842 e!158554))))

(declare-fun mapKey!10855 () (_ BitVec 32))

(declare-fun mapValue!10855 () ValueCell!2857)

(declare-fun mapRest!10855 () (Array (_ BitVec 32) ValueCell!2857))

(assert (=> mapNonEmpty!10855 (= (arr!5741 (_values!4507 thiss!1504)) (store mapRest!10855 mapKey!10855 mapValue!10855))))

(declare-fun b!244357 () Bool)

(declare-fun e!158563 () Bool)

(assert (=> b!244357 (= e!158558 e!158563)))

(declare-fun res!119859 () Bool)

(assert (=> b!244357 (=> (not res!119859) (not e!158563))))

(assert (=> b!244357 (= res!119859 (or (= lt!122499 (MissingZero!1090 index!297)) (= lt!122499 (MissingVacant!1090 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12096 (_ BitVec 32)) SeekEntryResult!1090)

(assert (=> b!244357 (= lt!122499 (seekEntryOrOpen!0 key!932 (_keys!6636 thiss!1504) (mask!10623 thiss!1504)))))

(declare-fun b!244358 () Bool)

(assert (=> b!244358 (= e!158556 (not call!22788))))

(declare-fun b!244359 () Bool)

(declare-fun e!158570 () Bool)

(assert (=> b!244359 (= e!158570 e!158564)))

(declare-fun res!119864 () Bool)

(assert (=> b!244359 (=> (not res!119864) (not e!158564))))

(assert (=> b!244359 (= res!119864 (and (bvslt (size!6084 (_keys!6636 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6084 (_keys!6636 thiss!1504)))))))

(declare-fun lt!122497 () Unit!7542)

(assert (=> b!244359 (= lt!122497 e!158560)))

(declare-fun c!40767 () Bool)

(assert (=> b!244359 (= c!40767 (arrayContainsKey!0 (_keys!6636 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!244360 () Bool)

(assert (=> b!244360 (= e!158563 e!158570)))

(declare-fun res!119856 () Bool)

(assert (=> b!244360 (=> (not res!119856) (not e!158570))))

(assert (=> b!244360 (= res!119856 (inRange!0 index!297 (mask!10623 thiss!1504)))))

(declare-fun lt!122496 () Unit!7542)

(declare-fun e!158553 () Unit!7542)

(assert (=> b!244360 (= lt!122496 e!158553)))

(declare-fun c!40769 () Bool)

(declare-datatypes ((tuple2!4772 0))(
  ( (tuple2!4773 (_1!2396 (_ BitVec 64)) (_2!2396 V!8181)) )
))
(declare-datatypes ((List!3679 0))(
  ( (Nil!3676) (Cons!3675 (h!4332 tuple2!4772) (t!8696 List!3679)) )
))
(declare-datatypes ((ListLongMap!3699 0))(
  ( (ListLongMap!3700 (toList!1865 List!3679)) )
))
(declare-fun contains!1764 (ListLongMap!3699 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1388 (array!12096 array!12094 (_ BitVec 32) (_ BitVec 32) V!8181 V!8181 (_ BitVec 32) Int) ListLongMap!3699)

(assert (=> b!244360 (= c!40769 (contains!1764 (getCurrentListMap!1388 (_keys!6636 thiss!1504) (_values!4507 thiss!1504) (mask!10623 thiss!1504) (extraKeys!4261 thiss!1504) (zeroValue!4365 thiss!1504) (minValue!4365 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4524 thiss!1504)) key!932))))

(declare-fun b!244361 () Bool)

(declare-fun lt!122495 () Unit!7542)

(assert (=> b!244361 (= e!158553 lt!122495)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!371 (array!12096 array!12094 (_ BitVec 32) (_ BitVec 32) V!8181 V!8181 (_ BitVec 64) Int) Unit!7542)

(assert (=> b!244361 (= lt!122495 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!371 (_keys!6636 thiss!1504) (_values!4507 thiss!1504) (mask!10623 thiss!1504) (extraKeys!4261 thiss!1504) (zeroValue!4365 thiss!1504) (minValue!4365 thiss!1504) key!932 (defaultEntry!4524 thiss!1504)))))

(assert (=> b!244361 (= c!40768 (is-MissingZero!1090 lt!122499))))

(assert (=> b!244361 e!158567))

(declare-fun b!244362 () Bool)

(declare-fun e!158566 () Bool)

(assert (=> b!244362 (= e!158566 (and e!158559 mapRes!10855))))

(declare-fun condMapEmpty!10855 () Bool)

(declare-fun mapDefault!10855 () ValueCell!2857)

