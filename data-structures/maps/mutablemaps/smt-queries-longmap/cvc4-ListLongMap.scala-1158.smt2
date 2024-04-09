; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24350 () Bool)

(assert start!24350)

(declare-fun b!255071 () Bool)

(declare-fun b_free!6701 () Bool)

(declare-fun b_next!6701 () Bool)

(assert (=> b!255071 (= b_free!6701 (not b_next!6701))))

(declare-fun tp!23394 () Bool)

(declare-fun b_and!13765 () Bool)

(assert (=> b!255071 (= tp!23394 b_and!13765)))

(declare-fun b!255056 () Bool)

(declare-datatypes ((Unit!7916 0))(
  ( (Unit!7917) )
))
(declare-fun e!165350 () Unit!7916)

(declare-fun lt!127925 () Unit!7916)

(assert (=> b!255056 (= e!165350 lt!127925)))

(declare-datatypes ((V!8397 0))(
  ( (V!8398 (val!3326 Int)) )
))
(declare-datatypes ((ValueCell!2938 0))(
  ( (ValueCellFull!2938 (v!5399 V!8397)) (EmptyCell!2938) )
))
(declare-datatypes ((array!12458 0))(
  ( (array!12459 (arr!5903 (Array (_ BitVec 32) ValueCell!2938)) (size!6250 (_ BitVec 32))) )
))
(declare-datatypes ((array!12460 0))(
  ( (array!12461 (arr!5904 (Array (_ BitVec 32) (_ BitVec 64))) (size!6251 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3776 0))(
  ( (LongMapFixedSize!3777 (defaultEntry!4706 Int) (mask!10960 (_ BitVec 32)) (extraKeys!4443 (_ BitVec 32)) (zeroValue!4547 V!8397) (minValue!4547 V!8397) (_size!1937 (_ BitVec 32)) (_keys!6862 array!12460) (_values!4689 array!12458) (_vacant!1937 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3776)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!424 (array!12460 array!12458 (_ BitVec 32) (_ BitVec 32) V!8397 V!8397 (_ BitVec 64) Int) Unit!7916)

(assert (=> b!255056 (= lt!127925 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!424 (_keys!6862 thiss!1504) (_values!4689 thiss!1504) (mask!10960 thiss!1504) (extraKeys!4443 thiss!1504) (zeroValue!4547 thiss!1504) (minValue!4547 thiss!1504) key!932 (defaultEntry!4706 thiss!1504)))))

(declare-fun c!43033 () Bool)

(declare-datatypes ((SeekEntryResult!1166 0))(
  ( (MissingZero!1166 (index!6834 (_ BitVec 32))) (Found!1166 (index!6835 (_ BitVec 32))) (Intermediate!1166 (undefined!1978 Bool) (index!6836 (_ BitVec 32)) (x!24908 (_ BitVec 32))) (Undefined!1166) (MissingVacant!1166 (index!6837 (_ BitVec 32))) )
))
(declare-fun lt!127927 () SeekEntryResult!1166)

(assert (=> b!255056 (= c!43033 (is-MissingZero!1166 lt!127927))))

(declare-fun e!165344 () Bool)

(assert (=> b!255056 e!165344))

(declare-fun b!255057 () Bool)

(declare-fun e!165345 () Bool)

(assert (=> b!255057 (= e!165345 (is-Undefined!1166 lt!127927))))

(declare-fun b!255058 () Bool)

(declare-fun res!124848 () Bool)

(assert (=> b!255058 (= res!124848 (= (select (arr!5904 (_keys!6862 thiss!1504)) (index!6837 lt!127927)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165341 () Bool)

(assert (=> b!255058 (=> (not res!124848) (not e!165341))))

(declare-fun b!255059 () Bool)

(declare-fun e!165348 () Bool)

(declare-fun e!165349 () Bool)

(assert (=> b!255059 (= e!165348 e!165349)))

(declare-fun res!124845 () Bool)

(assert (=> b!255059 (=> (not res!124845) (not e!165349))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!255059 (= res!124845 (inRange!0 index!297 (mask!10960 thiss!1504)))))

(declare-fun lt!127930 () Unit!7916)

(assert (=> b!255059 (= lt!127930 e!165350)))

(declare-fun c!43035 () Bool)

(declare-datatypes ((tuple2!4894 0))(
  ( (tuple2!4895 (_1!2457 (_ BitVec 64)) (_2!2457 V!8397)) )
))
(declare-datatypes ((List!3799 0))(
  ( (Nil!3796) (Cons!3795 (h!4457 tuple2!4894) (t!8856 List!3799)) )
))
(declare-datatypes ((ListLongMap!3821 0))(
  ( (ListLongMap!3822 (toList!1926 List!3799)) )
))
(declare-fun lt!127923 () ListLongMap!3821)

(declare-fun contains!1852 (ListLongMap!3821 (_ BitVec 64)) Bool)

(assert (=> b!255059 (= c!43035 (contains!1852 lt!127923 key!932))))

(declare-fun getCurrentListMap!1449 (array!12460 array!12458 (_ BitVec 32) (_ BitVec 32) V!8397 V!8397 (_ BitVec 32) Int) ListLongMap!3821)

(assert (=> b!255059 (= lt!127923 (getCurrentListMap!1449 (_keys!6862 thiss!1504) (_values!4689 thiss!1504) (mask!10960 thiss!1504) (extraKeys!4443 thiss!1504) (zeroValue!4547 thiss!1504) (minValue!4547 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4706 thiss!1504)))))

(declare-fun mapIsEmpty!11163 () Bool)

(declare-fun mapRes!11163 () Bool)

(assert (=> mapIsEmpty!11163 mapRes!11163))

(declare-fun res!124847 () Bool)

(declare-fun e!165347 () Bool)

(assert (=> start!24350 (=> (not res!124847) (not e!165347))))

(declare-fun valid!1468 (LongMapFixedSize!3776) Bool)

(assert (=> start!24350 (= res!124847 (valid!1468 thiss!1504))))

(assert (=> start!24350 e!165347))

(declare-fun e!165351 () Bool)

(assert (=> start!24350 e!165351))

(assert (=> start!24350 true))

(declare-fun tp_is_empty!6563 () Bool)

(assert (=> start!24350 tp_is_empty!6563))

(declare-fun b!255060 () Bool)

(declare-fun e!165352 () Bool)

(declare-fun call!24091 () Bool)

(assert (=> b!255060 (= e!165352 (not call!24091))))

(declare-fun b!255061 () Bool)

(declare-fun e!165354 () Bool)

(assert (=> b!255061 (= e!165354 tp_is_empty!6563)))

(declare-fun b!255062 () Bool)

(declare-fun e!165342 () Bool)

(assert (=> b!255062 (= e!165342 tp_is_empty!6563)))

(declare-fun b!255063 () Bool)

(assert (=> b!255063 (= e!165347 e!165348)))

(declare-fun res!124851 () Bool)

(assert (=> b!255063 (=> (not res!124851) (not e!165348))))

(assert (=> b!255063 (= res!124851 (or (= lt!127927 (MissingZero!1166 index!297)) (= lt!127927 (MissingVacant!1166 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12460 (_ BitVec 32)) SeekEntryResult!1166)

(assert (=> b!255063 (= lt!127927 (seekEntryOrOpen!0 key!932 (_keys!6862 thiss!1504) (mask!10960 thiss!1504)))))

(declare-fun mapNonEmpty!11163 () Bool)

(declare-fun tp!23393 () Bool)

(assert (=> mapNonEmpty!11163 (= mapRes!11163 (and tp!23393 e!165354))))

(declare-fun mapKey!11163 () (_ BitVec 32))

(declare-fun mapValue!11163 () ValueCell!2938)

(declare-fun mapRest!11163 () (Array (_ BitVec 32) ValueCell!2938))

(assert (=> mapNonEmpty!11163 (= (arr!5903 (_values!4689 thiss!1504)) (store mapRest!11163 mapKey!11163 mapValue!11163))))

(declare-fun b!255064 () Bool)

(declare-fun e!165353 () Unit!7916)

(declare-fun Unit!7918 () Unit!7916)

(assert (=> b!255064 (= e!165353 Unit!7918)))

(declare-fun lt!127921 () Unit!7916)

(declare-fun lemmaArrayContainsKeyThenInListMap!229 (array!12460 array!12458 (_ BitVec 32) (_ BitVec 32) V!8397 V!8397 (_ BitVec 64) (_ BitVec 32) Int) Unit!7916)

(assert (=> b!255064 (= lt!127921 (lemmaArrayContainsKeyThenInListMap!229 (_keys!6862 thiss!1504) (_values!4689 thiss!1504) (mask!10960 thiss!1504) (extraKeys!4443 thiss!1504) (zeroValue!4547 thiss!1504) (minValue!4547 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4706 thiss!1504)))))

(assert (=> b!255064 false))

(declare-fun bm!24087 () Bool)

(declare-fun call!24090 () Bool)

(assert (=> bm!24087 (= call!24090 (inRange!0 (ite c!43033 (index!6834 lt!127927) (index!6837 lt!127927)) (mask!10960 thiss!1504)))))

(declare-fun b!255065 () Bool)

(declare-fun res!124846 () Bool)

(assert (=> b!255065 (=> (not res!124846) (not e!165352))))

(assert (=> b!255065 (= res!124846 call!24090)))

(assert (=> b!255065 (= e!165344 e!165352)))

(declare-fun b!255066 () Bool)

(declare-fun c!43034 () Bool)

(assert (=> b!255066 (= c!43034 (is-MissingVacant!1166 lt!127927))))

(assert (=> b!255066 (= e!165344 e!165345)))

(declare-fun b!255067 () Bool)

(assert (=> b!255067 (= e!165345 e!165341)))

(declare-fun res!124844 () Bool)

(assert (=> b!255067 (= res!124844 call!24090)))

(assert (=> b!255067 (=> (not res!124844) (not e!165341))))

(declare-fun b!255068 () Bool)

(declare-fun e!165346 () Bool)

(assert (=> b!255068 (= e!165346 (and e!165342 mapRes!11163))))

(declare-fun condMapEmpty!11163 () Bool)

(declare-fun mapDefault!11163 () ValueCell!2938)

