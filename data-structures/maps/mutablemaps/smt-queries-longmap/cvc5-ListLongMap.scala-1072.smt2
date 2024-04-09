; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22126 () Bool)

(assert start!22126)

(declare-fun b!230072 () Bool)

(declare-fun b_free!6181 () Bool)

(declare-fun b_next!6181 () Bool)

(assert (=> b!230072 (= b_free!6181 (not b_next!6181))))

(declare-fun tp!21684 () Bool)

(declare-fun b_and!13097 () Bool)

(assert (=> b!230072 (= tp!21684 b_and!13097)))

(declare-fun b!230056 () Bool)

(declare-fun e!149294 () Bool)

(assert (=> b!230056 (= e!149294 (not true))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7705 0))(
  ( (V!7706 (val!3066 Int)) )
))
(declare-datatypes ((ValueCell!2678 0))(
  ( (ValueCellFull!2678 (v!5082 V!7705)) (EmptyCell!2678) )
))
(declare-datatypes ((array!11328 0))(
  ( (array!11329 (arr!5383 (Array (_ BitVec 32) ValueCell!2678)) (size!5716 (_ BitVec 32))) )
))
(declare-datatypes ((array!11330 0))(
  ( (array!11331 (arr!5384 (Array (_ BitVec 32) (_ BitVec 64))) (size!5717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3256 0))(
  ( (LongMapFixedSize!3257 (defaultEntry!4287 Int) (mask!10175 (_ BitVec 32)) (extraKeys!4024 (_ BitVec 32)) (zeroValue!4128 V!7705) (minValue!4128 V!7705) (_size!1677 (_ BitVec 32)) (_keys!6341 array!11330) (_values!4270 array!11328) (_vacant!1677 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3256)

(declare-datatypes ((tuple2!4520 0))(
  ( (tuple2!4521 (_1!2270 (_ BitVec 64)) (_2!2270 V!7705)) )
))
(declare-datatypes ((List!3467 0))(
  ( (Nil!3464) (Cons!3463 (h!4111 tuple2!4520) (t!8434 List!3467)) )
))
(declare-datatypes ((ListLongMap!3447 0))(
  ( (ListLongMap!3448 (toList!1739 List!3467)) )
))
(declare-fun lt!115800 () ListLongMap!3447)

(declare-fun v!346 () V!7705)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lt!115793 () array!11330)

(declare-fun +!597 (ListLongMap!3447 tuple2!4520) ListLongMap!3447)

(declare-fun getCurrentListMap!1262 (array!11330 array!11328 (_ BitVec 32) (_ BitVec 32) V!7705 V!7705 (_ BitVec 32) Int) ListLongMap!3447)

(assert (=> b!230056 (= (+!597 lt!115800 (tuple2!4521 key!932 v!346)) (getCurrentListMap!1262 lt!115793 (array!11329 (store (arr!5383 (_values!4270 thiss!1504)) index!297 (ValueCellFull!2678 v!346)) (size!5716 (_values!4270 thiss!1504))) (mask!10175 thiss!1504) (extraKeys!4024 thiss!1504) (zeroValue!4128 thiss!1504) (minValue!4128 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4287 thiss!1504)))))

(declare-datatypes ((Unit!7033 0))(
  ( (Unit!7034) )
))
(declare-fun lt!115795 () Unit!7033)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!56 (array!11330 array!11328 (_ BitVec 32) (_ BitVec 32) V!7705 V!7705 (_ BitVec 32) (_ BitVec 64) V!7705 Int) Unit!7033)

(assert (=> b!230056 (= lt!115795 (lemmaAddValidKeyToArrayThenAddPairToListMap!56 (_keys!6341 thiss!1504) (_values!4270 thiss!1504) (mask!10175 thiss!1504) (extraKeys!4024 thiss!1504) (zeroValue!4128 thiss!1504) (minValue!4128 thiss!1504) index!297 key!932 v!346 (defaultEntry!4287 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11330 (_ BitVec 32)) Bool)

(assert (=> b!230056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115793 (mask!10175 thiss!1504))))

(declare-fun lt!115794 () Unit!7033)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11330 (_ BitVec 32) (_ BitVec 32)) Unit!7033)

(assert (=> b!230056 (= lt!115794 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6341 thiss!1504) index!297 (mask!10175 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11330 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230056 (= (arrayCountValidKeys!0 lt!115793 #b00000000000000000000000000000000 (size!5717 (_keys!6341 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6341 thiss!1504) #b00000000000000000000000000000000 (size!5717 (_keys!6341 thiss!1504)))))))

(declare-fun lt!115799 () Unit!7033)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11330 (_ BitVec 32) (_ BitVec 64)) Unit!7033)

(assert (=> b!230056 (= lt!115799 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6341 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3468 0))(
  ( (Nil!3465) (Cons!3464 (h!4112 (_ BitVec 64)) (t!8435 List!3468)) )
))
(declare-fun arrayNoDuplicates!0 (array!11330 (_ BitVec 32) List!3468) Bool)

(assert (=> b!230056 (arrayNoDuplicates!0 lt!115793 #b00000000000000000000000000000000 Nil!3465)))

(assert (=> b!230056 (= lt!115793 (array!11331 (store (arr!5384 (_keys!6341 thiss!1504)) index!297 key!932) (size!5717 (_keys!6341 thiss!1504))))))

(declare-fun lt!115796 () Unit!7033)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11330 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3468) Unit!7033)

(assert (=> b!230056 (= lt!115796 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6341 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3465))))

(declare-fun lt!115797 () Unit!7033)

(declare-fun e!149288 () Unit!7033)

(assert (=> b!230056 (= lt!115797 e!149288)))

(declare-fun c!38164 () Bool)

(declare-fun arrayContainsKey!0 (array!11330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!230056 (= c!38164 (arrayContainsKey!0 (_keys!6341 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230057 () Bool)

(declare-fun Unit!7035 () Unit!7033)

(assert (=> b!230057 (= e!149288 Unit!7035)))

(declare-fun lt!115803 () Unit!7033)

(declare-fun lemmaArrayContainsKeyThenInListMap!121 (array!11330 array!11328 (_ BitVec 32) (_ BitVec 32) V!7705 V!7705 (_ BitVec 64) (_ BitVec 32) Int) Unit!7033)

(assert (=> b!230057 (= lt!115803 (lemmaArrayContainsKeyThenInListMap!121 (_keys!6341 thiss!1504) (_values!4270 thiss!1504) (mask!10175 thiss!1504) (extraKeys!4024 thiss!1504) (zeroValue!4128 thiss!1504) (minValue!4128 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4287 thiss!1504)))))

(assert (=> b!230057 false))

(declare-fun b!230058 () Bool)

(declare-fun e!149291 () Unit!7033)

(declare-fun Unit!7036 () Unit!7033)

(assert (=> b!230058 (= e!149291 Unit!7036)))

(declare-fun lt!115792 () Unit!7033)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!288 (array!11330 array!11328 (_ BitVec 32) (_ BitVec 32) V!7705 V!7705 (_ BitVec 64) Int) Unit!7033)

(assert (=> b!230058 (= lt!115792 (lemmaInListMapThenSeekEntryOrOpenFindsIt!288 (_keys!6341 thiss!1504) (_values!4270 thiss!1504) (mask!10175 thiss!1504) (extraKeys!4024 thiss!1504) (zeroValue!4128 thiss!1504) (minValue!4128 thiss!1504) key!932 (defaultEntry!4287 thiss!1504)))))

(assert (=> b!230058 false))

(declare-fun mapNonEmpty!10234 () Bool)

(declare-fun mapRes!10234 () Bool)

(declare-fun tp!21685 () Bool)

(declare-fun e!149290 () Bool)

(assert (=> mapNonEmpty!10234 (= mapRes!10234 (and tp!21685 e!149290))))

(declare-fun mapValue!10234 () ValueCell!2678)

(declare-fun mapKey!10234 () (_ BitVec 32))

(declare-fun mapRest!10234 () (Array (_ BitVec 32) ValueCell!2678))

(assert (=> mapNonEmpty!10234 (= (arr!5383 (_values!4270 thiss!1504)) (store mapRest!10234 mapKey!10234 mapValue!10234))))

(declare-fun b!230060 () Bool)

(declare-fun e!149299 () Bool)

(declare-fun e!149287 () Bool)

(assert (=> b!230060 (= e!149299 e!149287)))

(declare-fun res!113198 () Bool)

(declare-fun call!21376 () Bool)

(assert (=> b!230060 (= res!113198 call!21376)))

(assert (=> b!230060 (=> (not res!113198) (not e!149287))))

(declare-fun b!230061 () Bool)

(declare-fun Unit!7037 () Unit!7033)

(assert (=> b!230061 (= e!149288 Unit!7037)))

(declare-fun b!230062 () Bool)

(declare-fun lt!115802 () Unit!7033)

(assert (=> b!230062 (= e!149291 lt!115802)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!302 (array!11330 array!11328 (_ BitVec 32) (_ BitVec 32) V!7705 V!7705 (_ BitVec 64) Int) Unit!7033)

(assert (=> b!230062 (= lt!115802 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!302 (_keys!6341 thiss!1504) (_values!4270 thiss!1504) (mask!10175 thiss!1504) (extraKeys!4024 thiss!1504) (zeroValue!4128 thiss!1504) (minValue!4128 thiss!1504) key!932 (defaultEntry!4287 thiss!1504)))))

(declare-fun c!38162 () Bool)

(declare-datatypes ((SeekEntryResult!942 0))(
  ( (MissingZero!942 (index!5938 (_ BitVec 32))) (Found!942 (index!5939 (_ BitVec 32))) (Intermediate!942 (undefined!1754 Bool) (index!5940 (_ BitVec 32)) (x!23434 (_ BitVec 32))) (Undefined!942) (MissingVacant!942 (index!5941 (_ BitVec 32))) )
))
(declare-fun lt!115798 () SeekEntryResult!942)

(assert (=> b!230062 (= c!38162 (is-MissingZero!942 lt!115798))))

(declare-fun e!149289 () Bool)

(assert (=> b!230062 e!149289))

(declare-fun b!230063 () Bool)

(declare-fun res!113197 () Bool)

(assert (=> b!230063 (= res!113197 (= (select (arr!5384 (_keys!6341 thiss!1504)) (index!5941 lt!115798)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!230063 (=> (not res!113197) (not e!149287))))

(declare-fun mapIsEmpty!10234 () Bool)

(assert (=> mapIsEmpty!10234 mapRes!10234))

(declare-fun b!230064 () Bool)

(declare-fun tp_is_empty!6043 () Bool)

(assert (=> b!230064 (= e!149290 tp_is_empty!6043)))

(declare-fun b!230065 () Bool)

(declare-fun e!149295 () Bool)

(declare-fun e!149286 () Bool)

(assert (=> b!230065 (= e!149295 e!149286)))

(declare-fun res!113200 () Bool)

(assert (=> b!230065 (=> (not res!113200) (not e!149286))))

(assert (=> b!230065 (= res!113200 (or (= lt!115798 (MissingZero!942 index!297)) (= lt!115798 (MissingVacant!942 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11330 (_ BitVec 32)) SeekEntryResult!942)

(assert (=> b!230065 (= lt!115798 (seekEntryOrOpen!0 key!932 (_keys!6341 thiss!1504) (mask!10175 thiss!1504)))))

(declare-fun b!230066 () Bool)

(declare-fun res!113196 () Bool)

(assert (=> b!230066 (=> (not res!113196) (not e!149295))))

(assert (=> b!230066 (= res!113196 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230067 () Bool)

(declare-fun call!21375 () Bool)

(assert (=> b!230067 (= e!149287 (not call!21375))))

(declare-fun b!230068 () Bool)

(assert (=> b!230068 (= e!149299 (is-Undefined!942 lt!115798))))

(declare-fun b!230069 () Bool)

(declare-fun res!113202 () Bool)

(declare-fun e!149297 () Bool)

(assert (=> b!230069 (=> (not res!113202) (not e!149297))))

(assert (=> b!230069 (= res!113202 call!21376)))

(assert (=> b!230069 (= e!149289 e!149297)))

(declare-fun b!230070 () Bool)

(declare-fun c!38163 () Bool)

(assert (=> b!230070 (= c!38163 (is-MissingVacant!942 lt!115798))))

(assert (=> b!230070 (= e!149289 e!149299)))

(declare-fun b!230071 () Bool)

(assert (=> b!230071 (= e!149297 (not call!21375))))

(declare-fun b!230059 () Bool)

(declare-fun res!113199 () Bool)

(assert (=> b!230059 (=> (not res!113199) (not e!149297))))

(assert (=> b!230059 (= res!113199 (= (select (arr!5384 (_keys!6341 thiss!1504)) (index!5938 lt!115798)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!113201 () Bool)

(assert (=> start!22126 (=> (not res!113201) (not e!149295))))

(declare-fun valid!1290 (LongMapFixedSize!3256) Bool)

(assert (=> start!22126 (= res!113201 (valid!1290 thiss!1504))))

(assert (=> start!22126 e!149295))

(declare-fun e!149296 () Bool)

(assert (=> start!22126 e!149296))

(assert (=> start!22126 true))

(assert (=> start!22126 tp_is_empty!6043))

(declare-fun e!149292 () Bool)

(declare-fun array_inv!3543 (array!11330) Bool)

(declare-fun array_inv!3544 (array!11328) Bool)

(assert (=> b!230072 (= e!149296 (and tp!21684 tp_is_empty!6043 (array_inv!3543 (_keys!6341 thiss!1504)) (array_inv!3544 (_values!4270 thiss!1504)) e!149292))))

(declare-fun bm!21372 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21372 (= call!21376 (inRange!0 (ite c!38162 (index!5938 lt!115798) (index!5941 lt!115798)) (mask!10175 thiss!1504)))))

(declare-fun bm!21373 () Bool)

(assert (=> bm!21373 (= call!21375 (arrayContainsKey!0 (_keys!6341 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230073 () Bool)

(declare-fun e!149298 () Bool)

(assert (=> b!230073 (= e!149298 tp_is_empty!6043)))

(declare-fun b!230074 () Bool)

(assert (=> b!230074 (= e!149286 e!149294)))

(declare-fun res!113203 () Bool)

(assert (=> b!230074 (=> (not res!113203) (not e!149294))))

(assert (=> b!230074 (= res!113203 (inRange!0 index!297 (mask!10175 thiss!1504)))))

(declare-fun lt!115801 () Unit!7033)

(assert (=> b!230074 (= lt!115801 e!149291)))

(declare-fun c!38165 () Bool)

(declare-fun contains!1606 (ListLongMap!3447 (_ BitVec 64)) Bool)

(assert (=> b!230074 (= c!38165 (contains!1606 lt!115800 key!932))))

(assert (=> b!230074 (= lt!115800 (getCurrentListMap!1262 (_keys!6341 thiss!1504) (_values!4270 thiss!1504) (mask!10175 thiss!1504) (extraKeys!4024 thiss!1504) (zeroValue!4128 thiss!1504) (minValue!4128 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4287 thiss!1504)))))

(declare-fun b!230075 () Bool)

(assert (=> b!230075 (= e!149292 (and e!149298 mapRes!10234))))

(declare-fun condMapEmpty!10234 () Bool)

(declare-fun mapDefault!10234 () ValueCell!2678)

