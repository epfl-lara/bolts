; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23576 () Bool)

(assert start!23576)

(declare-fun b!247397 () Bool)

(declare-fun b_free!6583 () Bool)

(declare-fun b_next!6583 () Bool)

(assert (=> b!247397 (= b_free!6583 (not b_next!6583))))

(declare-fun tp!22997 () Bool)

(declare-fun b_and!13603 () Bool)

(assert (=> b!247397 (= tp!22997 b_and!13603)))

(declare-fun b!247375 () Bool)

(declare-fun res!121278 () Bool)

(declare-datatypes ((V!8241 0))(
  ( (V!8242 (val!3267 Int)) )
))
(declare-datatypes ((ValueCell!2879 0))(
  ( (ValueCellFull!2879 (v!5321 V!8241)) (EmptyCell!2879) )
))
(declare-datatypes ((array!12196 0))(
  ( (array!12197 (arr!5785 (Array (_ BitVec 32) ValueCell!2879)) (size!6128 (_ BitVec 32))) )
))
(declare-datatypes ((array!12198 0))(
  ( (array!12199 (arr!5786 (Array (_ BitVec 32) (_ BitVec 64))) (size!6129 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3658 0))(
  ( (LongMapFixedSize!3659 (defaultEntry!4578 Int) (mask!10716 (_ BitVec 32)) (extraKeys!4315 (_ BitVec 32)) (zeroValue!4419 V!8241) (minValue!4419 V!8241) (_size!1878 (_ BitVec 32)) (_keys!6700 array!12198) (_values!4561 array!12196) (_vacant!1878 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3658)

(declare-datatypes ((SeekEntryResult!1110 0))(
  ( (MissingZero!1110 (index!6610 (_ BitVec 32))) (Found!1110 (index!6611 (_ BitVec 32))) (Intermediate!1110 (undefined!1922 Bool) (index!6612 (_ BitVec 32)) (x!24538 (_ BitVec 32))) (Undefined!1110) (MissingVacant!1110 (index!6613 (_ BitVec 32))) )
))
(declare-fun lt!123950 () SeekEntryResult!1110)

(assert (=> b!247375 (= res!121278 (= (select (arr!5786 (_keys!6700 thiss!1504)) (index!6613 lt!123950)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!160481 () Bool)

(assert (=> b!247375 (=> (not res!121278) (not e!160481))))

(declare-fun bm!23165 () Bool)

(declare-fun call!23168 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23165 (= call!23168 (arrayContainsKey!0 (_keys!6700 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247376 () Bool)

(declare-fun e!160486 () Bool)

(declare-fun tp_is_empty!6445 () Bool)

(assert (=> b!247376 (= e!160486 tp_is_empty!6445)))

(declare-fun c!41406 () Bool)

(declare-fun bm!23166 () Bool)

(declare-fun call!23169 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23166 (= call!23169 (inRange!0 (ite c!41406 (index!6610 lt!123950) (index!6613 lt!123950)) (mask!10716 thiss!1504)))))

(declare-fun b!247377 () Bool)

(declare-datatypes ((Unit!7639 0))(
  ( (Unit!7640) )
))
(declare-fun e!160485 () Unit!7639)

(declare-fun Unit!7641 () Unit!7639)

(assert (=> b!247377 (= e!160485 Unit!7641)))

(declare-fun b!247378 () Bool)

(declare-fun e!160491 () Unit!7639)

(declare-fun lt!123947 () Unit!7639)

(assert (=> b!247378 (= e!160491 lt!123947)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!383 (array!12198 array!12196 (_ BitVec 32) (_ BitVec 32) V!8241 V!8241 (_ BitVec 64) Int) Unit!7639)

(assert (=> b!247378 (= lt!123947 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!383 (_keys!6700 thiss!1504) (_values!4561 thiss!1504) (mask!10716 thiss!1504) (extraKeys!4315 thiss!1504) (zeroValue!4419 thiss!1504) (minValue!4419 thiss!1504) key!932 (defaultEntry!4578 thiss!1504)))))

(assert (=> b!247378 (= c!41406 (is-MissingZero!1110 lt!123950))))

(declare-fun e!160483 () Bool)

(assert (=> b!247378 e!160483))

(declare-fun b!247379 () Bool)

(declare-fun e!160484 () Bool)

(assert (=> b!247379 (= e!160484 e!160481)))

(declare-fun res!121276 () Bool)

(assert (=> b!247379 (= res!121276 call!23169)))

(assert (=> b!247379 (=> (not res!121276) (not e!160481))))

(declare-fun b!247381 () Bool)

(declare-fun e!160490 () Bool)

(assert (=> b!247381 (= e!160490 tp_is_empty!6445)))

(declare-fun b!247382 () Bool)

(declare-fun Unit!7642 () Unit!7639)

(assert (=> b!247382 (= e!160491 Unit!7642)))

(declare-fun lt!123946 () Unit!7639)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!382 (array!12198 array!12196 (_ BitVec 32) (_ BitVec 32) V!8241 V!8241 (_ BitVec 64) Int) Unit!7639)

(assert (=> b!247382 (= lt!123946 (lemmaInListMapThenSeekEntryOrOpenFindsIt!382 (_keys!6700 thiss!1504) (_values!4561 thiss!1504) (mask!10716 thiss!1504) (extraKeys!4315 thiss!1504) (zeroValue!4419 thiss!1504) (minValue!4419 thiss!1504) key!932 (defaultEntry!4578 thiss!1504)))))

(assert (=> b!247382 false))

(declare-fun b!247383 () Bool)

(declare-fun e!160493 () Bool)

(declare-fun e!160487 () Bool)

(assert (=> b!247383 (= e!160493 e!160487)))

(declare-fun res!121277 () Bool)

(assert (=> b!247383 (=> (not res!121277) (not e!160487))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!247383 (= res!121277 (or (= lt!123950 (MissingZero!1110 index!297)) (= lt!123950 (MissingVacant!1110 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12198 (_ BitVec 32)) SeekEntryResult!1110)

(assert (=> b!247383 (= lt!123950 (seekEntryOrOpen!0 key!932 (_keys!6700 thiss!1504) (mask!10716 thiss!1504)))))

(declare-fun b!247384 () Bool)

(declare-fun res!121273 () Bool)

(declare-fun e!160492 () Bool)

(assert (=> b!247384 (=> res!121273 e!160492)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!247384 (= res!121273 (not (validKeyInArray!0 key!932)))))

(declare-fun b!247385 () Bool)

(declare-fun res!121274 () Bool)

(declare-fun e!160480 () Bool)

(assert (=> b!247385 (=> (not res!121274) (not e!160480))))

(assert (=> b!247385 (= res!121274 call!23169)))

(assert (=> b!247385 (= e!160483 e!160480)))

(declare-fun mapNonEmpty!10943 () Bool)

(declare-fun mapRes!10943 () Bool)

(declare-fun tp!22996 () Bool)

(assert (=> mapNonEmpty!10943 (= mapRes!10943 (and tp!22996 e!160490))))

(declare-fun mapRest!10943 () (Array (_ BitVec 32) ValueCell!2879))

(declare-fun mapValue!10943 () ValueCell!2879)

(declare-fun mapKey!10943 () (_ BitVec 32))

(assert (=> mapNonEmpty!10943 (= (arr!5785 (_values!4561 thiss!1504)) (store mapRest!10943 mapKey!10943 mapValue!10943))))

(declare-fun b!247386 () Bool)

(declare-fun res!121279 () Bool)

(assert (=> b!247386 (=> (not res!121279) (not e!160480))))

(assert (=> b!247386 (= res!121279 (= (select (arr!5786 (_keys!6700 thiss!1504)) (index!6610 lt!123950)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!247387 () Bool)

(declare-fun e!160479 () Bool)

(assert (=> b!247387 (= e!160479 (not e!160492))))

(declare-fun res!121269 () Bool)

(assert (=> b!247387 (=> res!121269 e!160492)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!247387 (= res!121269 (not (validMask!0 (mask!10716 thiss!1504))))))

(declare-fun lt!123943 () array!12198)

(declare-fun arrayCountValidKeys!0 (array!12198 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!247387 (= (arrayCountValidKeys!0 lt!123943 #b00000000000000000000000000000000 (size!6129 (_keys!6700 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6700 thiss!1504) #b00000000000000000000000000000000 (size!6129 (_keys!6700 thiss!1504)))))))

(declare-fun lt!123945 () Unit!7639)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12198 (_ BitVec 32) (_ BitVec 64)) Unit!7639)

(assert (=> b!247387 (= lt!123945 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6700 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3709 0))(
  ( (Nil!3706) (Cons!3705 (h!4363 (_ BitVec 64)) (t!8740 List!3709)) )
))
(declare-fun arrayNoDuplicates!0 (array!12198 (_ BitVec 32) List!3709) Bool)

(assert (=> b!247387 (arrayNoDuplicates!0 lt!123943 #b00000000000000000000000000000000 Nil!3706)))

(assert (=> b!247387 (= lt!123943 (array!12199 (store (arr!5786 (_keys!6700 thiss!1504)) index!297 key!932) (size!6129 (_keys!6700 thiss!1504))))))

(declare-fun lt!123952 () Unit!7639)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12198 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3709) Unit!7639)

(assert (=> b!247387 (= lt!123952 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6700 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3706))))

(declare-fun lt!123951 () Unit!7639)

(assert (=> b!247387 (= lt!123951 e!160485)))

(declare-fun c!41405 () Bool)

(declare-fun lt!123944 () Bool)

(assert (=> b!247387 (= c!41405 lt!123944)))

(assert (=> b!247387 (= lt!123944 (arrayContainsKey!0 (_keys!6700 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!247388 () Bool)

(declare-fun res!121271 () Bool)

(assert (=> b!247388 (=> res!121271 e!160492)))

(assert (=> b!247388 (= res!121271 (or (not (= (size!6129 (_keys!6700 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10716 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6129 (_keys!6700 thiss!1504)))))))

(declare-fun b!247389 () Bool)

(assert (=> b!247389 (= e!160484 (is-Undefined!1110 lt!123950))))

(declare-fun b!247390 () Bool)

(declare-fun res!121270 () Bool)

(assert (=> b!247390 (=> (not res!121270) (not e!160493))))

(assert (=> b!247390 (= res!121270 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!247391 () Bool)

(declare-fun c!41407 () Bool)

(assert (=> b!247391 (= c!41407 (is-MissingVacant!1110 lt!123950))))

(assert (=> b!247391 (= e!160483 e!160484)))

(declare-fun mapIsEmpty!10943 () Bool)

(assert (=> mapIsEmpty!10943 mapRes!10943))

(declare-fun b!247392 () Bool)

(assert (=> b!247392 (= e!160492 (not lt!123944))))

(declare-fun b!247393 () Bool)

(assert (=> b!247393 (= e!160481 (not call!23168))))

(declare-fun b!247394 () Bool)

(assert (=> b!247394 (= e!160480 (not call!23168))))

(declare-fun b!247395 () Bool)

(assert (=> b!247395 (= e!160487 e!160479)))

(declare-fun res!121275 () Bool)

(assert (=> b!247395 (=> (not res!121275) (not e!160479))))

(assert (=> b!247395 (= res!121275 (inRange!0 index!297 (mask!10716 thiss!1504)))))

(declare-fun lt!123949 () Unit!7639)

(assert (=> b!247395 (= lt!123949 e!160491)))

(declare-fun c!41404 () Bool)

(declare-datatypes ((tuple2!4804 0))(
  ( (tuple2!4805 (_1!2412 (_ BitVec 64)) (_2!2412 V!8241)) )
))
(declare-datatypes ((List!3710 0))(
  ( (Nil!3707) (Cons!3706 (h!4364 tuple2!4804) (t!8741 List!3710)) )
))
(declare-datatypes ((ListLongMap!3731 0))(
  ( (ListLongMap!3732 (toList!1881 List!3710)) )
))
(declare-fun contains!1789 (ListLongMap!3731 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1404 (array!12198 array!12196 (_ BitVec 32) (_ BitVec 32) V!8241 V!8241 (_ BitVec 32) Int) ListLongMap!3731)

(assert (=> b!247395 (= c!41404 (contains!1789 (getCurrentListMap!1404 (_keys!6700 thiss!1504) (_values!4561 thiss!1504) (mask!10716 thiss!1504) (extraKeys!4315 thiss!1504) (zeroValue!4419 thiss!1504) (minValue!4419 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4578 thiss!1504)) key!932))))

(declare-fun b!247396 () Bool)

(declare-fun Unit!7643 () Unit!7639)

(assert (=> b!247396 (= e!160485 Unit!7643)))

(declare-fun lt!123948 () Unit!7639)

(declare-fun lemmaArrayContainsKeyThenInListMap!184 (array!12198 array!12196 (_ BitVec 32) (_ BitVec 32) V!8241 V!8241 (_ BitVec 64) (_ BitVec 32) Int) Unit!7639)

(assert (=> b!247396 (= lt!123948 (lemmaArrayContainsKeyThenInListMap!184 (_keys!6700 thiss!1504) (_values!4561 thiss!1504) (mask!10716 thiss!1504) (extraKeys!4315 thiss!1504) (zeroValue!4419 thiss!1504) (minValue!4419 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4578 thiss!1504)))))

(assert (=> b!247396 false))

(declare-fun e!160482 () Bool)

(declare-fun e!160489 () Bool)

(declare-fun array_inv!3811 (array!12198) Bool)

(declare-fun array_inv!3812 (array!12196) Bool)

(assert (=> b!247397 (= e!160489 (and tp!22997 tp_is_empty!6445 (array_inv!3811 (_keys!6700 thiss!1504)) (array_inv!3812 (_values!4561 thiss!1504)) e!160482))))

(declare-fun b!247380 () Bool)

(assert (=> b!247380 (= e!160482 (and e!160486 mapRes!10943))))

(declare-fun condMapEmpty!10943 () Bool)

(declare-fun mapDefault!10943 () ValueCell!2879)

