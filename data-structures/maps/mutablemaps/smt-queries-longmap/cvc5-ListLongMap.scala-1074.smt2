; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22138 () Bool)

(assert start!22138)

(declare-fun b!230421 () Bool)

(declare-fun b_free!6193 () Bool)

(declare-fun b_next!6193 () Bool)

(assert (=> b!230421 (= b_free!6193 (not b_next!6193))))

(declare-fun tp!21720 () Bool)

(declare-fun b_and!13109 () Bool)

(assert (=> b!230421 (= tp!21720 b_and!13109)))

(declare-fun b!230416 () Bool)

(declare-fun res!113347 () Bool)

(declare-fun e!149550 () Bool)

(assert (=> b!230416 (=> (not res!113347) (not e!149550))))

(declare-datatypes ((V!7721 0))(
  ( (V!7722 (val!3072 Int)) )
))
(declare-datatypes ((ValueCell!2684 0))(
  ( (ValueCellFull!2684 (v!5088 V!7721)) (EmptyCell!2684) )
))
(declare-datatypes ((array!11352 0))(
  ( (array!11353 (arr!5395 (Array (_ BitVec 32) ValueCell!2684)) (size!5728 (_ BitVec 32))) )
))
(declare-datatypes ((array!11354 0))(
  ( (array!11355 (arr!5396 (Array (_ BitVec 32) (_ BitVec 64))) (size!5729 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3268 0))(
  ( (LongMapFixedSize!3269 (defaultEntry!4293 Int) (mask!10185 (_ BitVec 32)) (extraKeys!4030 (_ BitVec 32)) (zeroValue!4134 V!7721) (minValue!4134 V!7721) (_size!1683 (_ BitVec 32)) (_keys!6347 array!11354) (_values!4276 array!11352) (_vacant!1683 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3268)

(declare-datatypes ((SeekEntryResult!947 0))(
  ( (MissingZero!947 (index!5958 (_ BitVec 32))) (Found!947 (index!5959 (_ BitVec 32))) (Intermediate!947 (undefined!1759 Bool) (index!5960 (_ BitVec 32)) (x!23455 (_ BitVec 32))) (Undefined!947) (MissingVacant!947 (index!5961 (_ BitVec 32))) )
))
(declare-fun lt!116014 () SeekEntryResult!947)

(assert (=> b!230416 (= res!113347 (= (select (arr!5396 (_keys!6347 thiss!1504)) (index!5958 lt!116014)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230417 () Bool)

(declare-datatypes ((Unit!7052 0))(
  ( (Unit!7053) )
))
(declare-fun e!149543 () Unit!7052)

(declare-fun Unit!7054 () Unit!7052)

(assert (=> b!230417 (= e!149543 Unit!7054)))

(declare-fun lt!116011 () Unit!7052)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!124 (array!11354 array!11352 (_ BitVec 32) (_ BitVec 32) V!7721 V!7721 (_ BitVec 64) (_ BitVec 32) Int) Unit!7052)

(assert (=> b!230417 (= lt!116011 (lemmaArrayContainsKeyThenInListMap!124 (_keys!6347 thiss!1504) (_values!4276 thiss!1504) (mask!10185 thiss!1504) (extraKeys!4030 thiss!1504) (zeroValue!4134 thiss!1504) (minValue!4134 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4293 thiss!1504)))))

(assert (=> b!230417 false))

(declare-fun b!230418 () Bool)

(declare-fun res!113344 () Bool)

(declare-fun e!149551 () Bool)

(assert (=> b!230418 (=> (not res!113344) (not e!149551))))

(assert (=> b!230418 (= res!113344 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10252 () Bool)

(declare-fun mapRes!10252 () Bool)

(declare-fun tp!21721 () Bool)

(declare-fun e!149539 () Bool)

(assert (=> mapNonEmpty!10252 (= mapRes!10252 (and tp!21721 e!149539))))

(declare-fun mapKey!10252 () (_ BitVec 32))

(declare-fun mapRest!10252 () (Array (_ BitVec 32) ValueCell!2684))

(declare-fun mapValue!10252 () ValueCell!2684)

(assert (=> mapNonEmpty!10252 (= (arr!5395 (_values!4276 thiss!1504)) (store mapRest!10252 mapKey!10252 mapValue!10252))))

(declare-fun res!113345 () Bool)

(assert (=> start!22138 (=> (not res!113345) (not e!149551))))

(declare-fun valid!1293 (LongMapFixedSize!3268) Bool)

(assert (=> start!22138 (= res!113345 (valid!1293 thiss!1504))))

(assert (=> start!22138 e!149551))

(declare-fun e!149546 () Bool)

(assert (=> start!22138 e!149546))

(assert (=> start!22138 true))

(declare-fun tp_is_empty!6055 () Bool)

(assert (=> start!22138 tp_is_empty!6055))

(declare-fun c!38234 () Bool)

(declare-fun call!21412 () Bool)

(declare-fun bm!21408 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21408 (= call!21412 (inRange!0 (ite c!38234 (index!5958 lt!116014) (index!5961 lt!116014)) (mask!10185 thiss!1504)))))

(declare-fun bm!21409 () Bool)

(declare-fun call!21411 () Bool)

(declare-fun arrayContainsKey!0 (array!11354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21409 (= call!21411 (arrayContainsKey!0 (_keys!6347 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230419 () Bool)

(declare-fun res!113340 () Bool)

(assert (=> b!230419 (= res!113340 (= (select (arr!5396 (_keys!6347 thiss!1504)) (index!5961 lt!116014)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149548 () Bool)

(assert (=> b!230419 (=> (not res!113340) (not e!149548))))

(declare-fun mapIsEmpty!10252 () Bool)

(assert (=> mapIsEmpty!10252 mapRes!10252))

(declare-fun b!230420 () Bool)

(declare-fun e!149549 () Unit!7052)

(declare-fun lt!116021 () Unit!7052)

(assert (=> b!230420 (= e!149549 lt!116021)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!305 (array!11354 array!11352 (_ BitVec 32) (_ BitVec 32) V!7721 V!7721 (_ BitVec 64) Int) Unit!7052)

(assert (=> b!230420 (= lt!116021 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!305 (_keys!6347 thiss!1504) (_values!4276 thiss!1504) (mask!10185 thiss!1504) (extraKeys!4030 thiss!1504) (zeroValue!4134 thiss!1504) (minValue!4134 thiss!1504) key!932 (defaultEntry!4293 thiss!1504)))))

(assert (=> b!230420 (= c!38234 (is-MissingZero!947 lt!116014))))

(declare-fun e!149541 () Bool)

(assert (=> b!230420 e!149541))

(declare-fun e!149547 () Bool)

(declare-fun array_inv!3549 (array!11354) Bool)

(declare-fun array_inv!3550 (array!11352) Bool)

(assert (=> b!230421 (= e!149546 (and tp!21720 tp_is_empty!6055 (array_inv!3549 (_keys!6347 thiss!1504)) (array_inv!3550 (_values!4276 thiss!1504)) e!149547))))

(declare-fun b!230422 () Bool)

(assert (=> b!230422 (= e!149539 tp_is_empty!6055)))

(declare-fun b!230423 () Bool)

(declare-fun Unit!7055 () Unit!7052)

(assert (=> b!230423 (= e!149543 Unit!7055)))

(declare-fun b!230424 () Bool)

(declare-fun e!149540 () Bool)

(assert (=> b!230424 (= e!149540 (is-Undefined!947 lt!116014))))

(declare-fun b!230425 () Bool)

(assert (=> b!230425 (= e!149550 (not call!21411))))

(declare-fun b!230426 () Bool)

(assert (=> b!230426 (= e!149540 e!149548)))

(declare-fun res!113346 () Bool)

(assert (=> b!230426 (= res!113346 call!21412)))

(assert (=> b!230426 (=> (not res!113346) (not e!149548))))

(declare-fun b!230427 () Bool)

(declare-fun e!149538 () Bool)

(assert (=> b!230427 (= e!149538 (not true))))

(declare-fun lt!116017 () array!11354)

(assert (=> b!230427 (arrayContainsKey!0 lt!116017 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116016 () Unit!7052)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11354 (_ BitVec 64) (_ BitVec 32)) Unit!7052)

(assert (=> b!230427 (= lt!116016 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116017 key!932 index!297))))

(declare-fun v!346 () V!7721)

(declare-datatypes ((tuple2!4528 0))(
  ( (tuple2!4529 (_1!2274 (_ BitVec 64)) (_2!2274 V!7721)) )
))
(declare-datatypes ((List!3475 0))(
  ( (Nil!3472) (Cons!3471 (h!4119 tuple2!4528) (t!8442 List!3475)) )
))
(declare-datatypes ((ListLongMap!3455 0))(
  ( (ListLongMap!3456 (toList!1743 List!3475)) )
))
(declare-fun lt!116015 () ListLongMap!3455)

(declare-fun +!601 (ListLongMap!3455 tuple2!4528) ListLongMap!3455)

(declare-fun getCurrentListMap!1266 (array!11354 array!11352 (_ BitVec 32) (_ BitVec 32) V!7721 V!7721 (_ BitVec 32) Int) ListLongMap!3455)

(assert (=> b!230427 (= (+!601 lt!116015 (tuple2!4529 key!932 v!346)) (getCurrentListMap!1266 lt!116017 (array!11353 (store (arr!5395 (_values!4276 thiss!1504)) index!297 (ValueCellFull!2684 v!346)) (size!5728 (_values!4276 thiss!1504))) (mask!10185 thiss!1504) (extraKeys!4030 thiss!1504) (zeroValue!4134 thiss!1504) (minValue!4134 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4293 thiss!1504)))))

(declare-fun lt!116020 () Unit!7052)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!60 (array!11354 array!11352 (_ BitVec 32) (_ BitVec 32) V!7721 V!7721 (_ BitVec 32) (_ BitVec 64) V!7721 Int) Unit!7052)

(assert (=> b!230427 (= lt!116020 (lemmaAddValidKeyToArrayThenAddPairToListMap!60 (_keys!6347 thiss!1504) (_values!4276 thiss!1504) (mask!10185 thiss!1504) (extraKeys!4030 thiss!1504) (zeroValue!4134 thiss!1504) (minValue!4134 thiss!1504) index!297 key!932 v!346 (defaultEntry!4293 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11354 (_ BitVec 32)) Bool)

(assert (=> b!230427 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116017 (mask!10185 thiss!1504))))

(declare-fun lt!116019 () Unit!7052)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11354 (_ BitVec 32) (_ BitVec 32)) Unit!7052)

(assert (=> b!230427 (= lt!116019 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6347 thiss!1504) index!297 (mask!10185 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11354 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230427 (= (arrayCountValidKeys!0 lt!116017 #b00000000000000000000000000000000 (size!5729 (_keys!6347 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6347 thiss!1504) #b00000000000000000000000000000000 (size!5729 (_keys!6347 thiss!1504)))))))

(declare-fun lt!116012 () Unit!7052)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11354 (_ BitVec 32) (_ BitVec 64)) Unit!7052)

(assert (=> b!230427 (= lt!116012 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6347 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3476 0))(
  ( (Nil!3473) (Cons!3472 (h!4120 (_ BitVec 64)) (t!8443 List!3476)) )
))
(declare-fun arrayNoDuplicates!0 (array!11354 (_ BitVec 32) List!3476) Bool)

(assert (=> b!230427 (arrayNoDuplicates!0 lt!116017 #b00000000000000000000000000000000 Nil!3473)))

(assert (=> b!230427 (= lt!116017 (array!11355 (store (arr!5396 (_keys!6347 thiss!1504)) index!297 key!932) (size!5729 (_keys!6347 thiss!1504))))))

(declare-fun lt!116022 () Unit!7052)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11354 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3476) Unit!7052)

(assert (=> b!230427 (= lt!116022 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6347 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3473))))

(declare-fun lt!116018 () Unit!7052)

(assert (=> b!230427 (= lt!116018 e!149543)))

(declare-fun c!38236 () Bool)

(assert (=> b!230427 (= c!38236 (arrayContainsKey!0 (_keys!6347 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230428 () Bool)

(declare-fun e!149542 () Bool)

(assert (=> b!230428 (= e!149547 (and e!149542 mapRes!10252))))

(declare-fun condMapEmpty!10252 () Bool)

(declare-fun mapDefault!10252 () ValueCell!2684)

