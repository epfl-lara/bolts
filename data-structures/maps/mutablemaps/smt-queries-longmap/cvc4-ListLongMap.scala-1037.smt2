; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21920 () Bool)

(assert start!21920)

(declare-fun b!222308 () Bool)

(declare-fun b_free!5975 () Bool)

(declare-fun b_next!5975 () Bool)

(assert (=> b!222308 (= b_free!5975 (not b_next!5975))))

(declare-fun tp!21066 () Bool)

(declare-fun b_and!12891 () Bool)

(assert (=> b!222308 (= tp!21066 b_and!12891)))

(declare-fun b!222284 () Bool)

(declare-fun res!109132 () Bool)

(declare-fun e!144478 () Bool)

(assert (=> b!222284 (=> (not res!109132) (not e!144478))))

(declare-fun call!20758 () Bool)

(assert (=> b!222284 (= res!109132 call!20758)))

(declare-fun e!144467 () Bool)

(assert (=> b!222284 (= e!144467 e!144478)))

(declare-fun b!222285 () Bool)

(declare-fun call!20757 () Bool)

(assert (=> b!222285 (= e!144478 (not call!20757))))

(declare-fun mapIsEmpty!9925 () Bool)

(declare-fun mapRes!9925 () Bool)

(assert (=> mapIsEmpty!9925 mapRes!9925))

(declare-fun b!222286 () Bool)

(declare-fun e!144477 () Bool)

(declare-fun tp_is_empty!5837 () Bool)

(assert (=> b!222286 (= e!144477 tp_is_empty!5837)))

(declare-fun b!222287 () Bool)

(declare-fun e!144469 () Bool)

(declare-fun e!144462 () Bool)

(assert (=> b!222287 (= e!144469 e!144462)))

(declare-fun res!109139 () Bool)

(assert (=> b!222287 (=> (not res!109139) (not e!144462))))

(declare-datatypes ((SeekEntryResult!846 0))(
  ( (MissingZero!846 (index!5554 (_ BitVec 32))) (Found!846 (index!5555 (_ BitVec 32))) (Intermediate!846 (undefined!1658 Bool) (index!5556 (_ BitVec 32)) (x!23058 (_ BitVec 32))) (Undefined!846) (MissingVacant!846 (index!5557 (_ BitVec 32))) )
))
(declare-fun lt!112647 () SeekEntryResult!846)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!222287 (= res!109139 (or (= lt!112647 (MissingZero!846 index!297)) (= lt!112647 (MissingVacant!846 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7429 0))(
  ( (V!7430 (val!2963 Int)) )
))
(declare-datatypes ((ValueCell!2575 0))(
  ( (ValueCellFull!2575 (v!4979 V!7429)) (EmptyCell!2575) )
))
(declare-datatypes ((array!10916 0))(
  ( (array!10917 (arr!5177 (Array (_ BitVec 32) ValueCell!2575)) (size!5510 (_ BitVec 32))) )
))
(declare-datatypes ((array!10918 0))(
  ( (array!10919 (arr!5178 (Array (_ BitVec 32) (_ BitVec 64))) (size!5511 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3050 0))(
  ( (LongMapFixedSize!3051 (defaultEntry!4184 Int) (mask!10002 (_ BitVec 32)) (extraKeys!3921 (_ BitVec 32)) (zeroValue!4025 V!7429) (minValue!4025 V!7429) (_size!1574 (_ BitVec 32)) (_keys!6238 array!10918) (_values!4167 array!10916) (_vacant!1574 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3050)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10918 (_ BitVec 32)) SeekEntryResult!846)

(assert (=> b!222287 (= lt!112647 (seekEntryOrOpen!0 key!932 (_keys!6238 thiss!1504) (mask!10002 thiss!1504)))))

(declare-fun b!222288 () Bool)

(declare-fun e!144465 () Bool)

(declare-datatypes ((List!3323 0))(
  ( (Nil!3320) (Cons!3319 (h!3967 (_ BitVec 64)) (t!8290 List!3323)) )
))
(declare-fun contains!1522 (List!3323 (_ BitVec 64)) Bool)

(assert (=> b!222288 (= e!144465 (not (contains!1522 Nil!3320 key!932)))))

(declare-fun bm!20754 () Bool)

(declare-fun arrayContainsKey!0 (array!10918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20754 (= call!20757 (arrayContainsKey!0 (_keys!6238 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!9925 () Bool)

(declare-fun tp!21067 () Bool)

(assert (=> mapNonEmpty!9925 (= mapRes!9925 (and tp!21067 e!144477))))

(declare-fun mapRest!9925 () (Array (_ BitVec 32) ValueCell!2575))

(declare-fun mapKey!9925 () (_ BitVec 32))

(declare-fun mapValue!9925 () ValueCell!2575)

(assert (=> mapNonEmpty!9925 (= (arr!5177 (_values!4167 thiss!1504)) (store mapRest!9925 mapKey!9925 mapValue!9925))))

(declare-fun b!222289 () Bool)

(declare-fun e!144474 () Bool)

(assert (=> b!222289 (= e!144474 tp_is_empty!5837)))

(declare-fun b!222290 () Bool)

(declare-datatypes ((Unit!6658 0))(
  ( (Unit!6659) )
))
(declare-fun e!144468 () Unit!6658)

(declare-fun Unit!6660 () Unit!6658)

(assert (=> b!222290 (= e!144468 Unit!6660)))

(declare-fun lt!112651 () Unit!6658)

(declare-fun lemmaArrayContainsKeyThenInListMap!60 (array!10918 array!10916 (_ BitVec 32) (_ BitVec 32) V!7429 V!7429 (_ BitVec 64) (_ BitVec 32) Int) Unit!6658)

(assert (=> b!222290 (= lt!112651 (lemmaArrayContainsKeyThenInListMap!60 (_keys!6238 thiss!1504) (_values!4167 thiss!1504) (mask!10002 thiss!1504) (extraKeys!3921 thiss!1504) (zeroValue!4025 thiss!1504) (minValue!4025 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4184 thiss!1504)))))

(assert (=> b!222290 false))

(declare-fun b!222291 () Bool)

(declare-fun c!36927 () Bool)

(assert (=> b!222291 (= c!36927 (is-MissingVacant!846 lt!112647))))

(declare-fun e!144473 () Bool)

(assert (=> b!222291 (= e!144467 e!144473)))

(declare-fun b!222292 () Bool)

(declare-fun res!109143 () Bool)

(declare-fun e!144476 () Bool)

(assert (=> b!222292 (=> (not res!109143) (not e!144476))))

(assert (=> b!222292 (= res!109143 (not (contains!1522 Nil!3320 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!222294 () Bool)

(declare-fun e!144463 () Unit!6658)

(declare-fun Unit!6661 () Unit!6658)

(assert (=> b!222294 (= e!144463 Unit!6661)))

(declare-fun lt!112648 () Unit!6658)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!225 (array!10918 array!10916 (_ BitVec 32) (_ BitVec 32) V!7429 V!7429 (_ BitVec 64) Int) Unit!6658)

(assert (=> b!222294 (= lt!112648 (lemmaInListMapThenSeekEntryOrOpenFindsIt!225 (_keys!6238 thiss!1504) (_values!4167 thiss!1504) (mask!10002 thiss!1504) (extraKeys!3921 thiss!1504) (zeroValue!4025 thiss!1504) (minValue!4025 thiss!1504) key!932 (defaultEntry!4184 thiss!1504)))))

(assert (=> b!222294 false))

(declare-fun b!222295 () Bool)

(declare-fun res!109133 () Bool)

(assert (=> b!222295 (=> (not res!109133) (not e!144478))))

(assert (=> b!222295 (= res!109133 (= (select (arr!5178 (_keys!6238 thiss!1504)) (index!5554 lt!112647)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!222296 () Bool)

(declare-fun e!144470 () Bool)

(assert (=> b!222296 (= e!144470 (contains!1522 Nil!3320 key!932))))

(declare-fun b!222297 () Bool)

(declare-fun e!144464 () Bool)

(assert (=> b!222297 (= e!144464 (not call!20757))))

(declare-fun b!222298 () Bool)

(declare-fun res!109137 () Bool)

(assert (=> b!222298 (=> (not res!109137) (not e!144476))))

(declare-fun e!144466 () Bool)

(assert (=> b!222298 (= res!109137 e!144466)))

(declare-fun res!109140 () Bool)

(assert (=> b!222298 (=> res!109140 e!144466)))

(assert (=> b!222298 (= res!109140 e!144470)))

(declare-fun res!109136 () Bool)

(assert (=> b!222298 (=> (not res!109136) (not e!144470))))

(assert (=> b!222298 (= res!109136 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!222299 () Bool)

(assert (=> b!222299 (= e!144473 (is-Undefined!846 lt!112647))))

(declare-fun b!222300 () Bool)

(assert (=> b!222300 (= e!144473 e!144464)))

(declare-fun res!109144 () Bool)

(assert (=> b!222300 (= res!109144 call!20758)))

(assert (=> b!222300 (=> (not res!109144) (not e!144464))))

(declare-fun b!222301 () Bool)

(assert (=> b!222301 (= e!144466 e!144465)))

(declare-fun res!109135 () Bool)

(assert (=> b!222301 (=> (not res!109135) (not e!144465))))

(assert (=> b!222301 (= res!109135 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!222302 () Bool)

(declare-fun res!109134 () Bool)

(assert (=> b!222302 (= res!109134 (= (select (arr!5178 (_keys!6238 thiss!1504)) (index!5557 lt!112647)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!222302 (=> (not res!109134) (not e!144464))))

(declare-fun b!222303 () Bool)

(declare-fun e!144461 () Bool)

(assert (=> b!222303 (= e!144461 (and e!144474 mapRes!9925))))

(declare-fun condMapEmpty!9925 () Bool)

(declare-fun mapDefault!9925 () ValueCell!2575)

