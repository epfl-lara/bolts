; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16674 () Bool)

(assert start!16674)

(declare-fun b!166627 () Bool)

(declare-fun b_free!3967 () Bool)

(declare-fun b_next!3967 () Bool)

(assert (=> b!166627 (= b_free!3967 (not b_next!3967))))

(declare-fun tp!14501 () Bool)

(declare-fun b_and!10399 () Bool)

(assert (=> b!166627 (= tp!14501 b_and!10399)))

(declare-fun b!166624 () Bool)

(declare-datatypes ((Unit!5072 0))(
  ( (Unit!5073) )
))
(declare-fun e!109358 () Unit!5072)

(declare-fun Unit!5074 () Unit!5072)

(assert (=> b!166624 (= e!109358 Unit!5074)))

(declare-fun lt!83419 () Unit!5072)

(declare-datatypes ((V!4673 0))(
  ( (V!4674 (val!1929 Int)) )
))
(declare-datatypes ((ValueCell!1541 0))(
  ( (ValueCellFull!1541 (v!3790 V!4673)) (EmptyCell!1541) )
))
(declare-datatypes ((array!6634 0))(
  ( (array!6635 (arr!3152 (Array (_ BitVec 32) (_ BitVec 64))) (size!3440 (_ BitVec 32))) )
))
(declare-datatypes ((array!6636 0))(
  ( (array!6637 (arr!3153 (Array (_ BitVec 32) ValueCell!1541)) (size!3441 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1990 0))(
  ( (LongMapFixedSize!1991 (defaultEntry!3437 Int) (mask!8172 (_ BitVec 32)) (extraKeys!3178 (_ BitVec 32)) (zeroValue!3280 V!4673) (minValue!3280 V!4673) (_size!1044 (_ BitVec 32)) (_keys!5262 array!6634) (_values!3420 array!6636) (_vacant!1044 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1990)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!90 (array!6634 array!6636 (_ BitVec 32) (_ BitVec 32) V!4673 V!4673 (_ BitVec 64) Int) Unit!5072)

(assert (=> b!166624 (= lt!83419 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!90 (_keys!5262 thiss!1248) (_values!3420 thiss!1248) (mask!8172 thiss!1248) (extraKeys!3178 thiss!1248) (zeroValue!3280 thiss!1248) (minValue!3280 thiss!1248) key!828 (defaultEntry!3437 thiss!1248)))))

(assert (=> b!166624 false))

(declare-fun b!166625 () Bool)

(declare-fun e!109351 () Bool)

(declare-fun e!109360 () Bool)

(assert (=> b!166625 (= e!109351 e!109360)))

(declare-fun res!79218 () Bool)

(assert (=> b!166625 (=> (not res!79218) (not e!109360))))

(declare-datatypes ((SeekEntryResult!471 0))(
  ( (MissingZero!471 (index!4052 (_ BitVec 32))) (Found!471 (index!4053 (_ BitVec 32))) (Intermediate!471 (undefined!1283 Bool) (index!4054 (_ BitVec 32)) (x!18467 (_ BitVec 32))) (Undefined!471) (MissingVacant!471 (index!4055 (_ BitVec 32))) )
))
(declare-fun lt!83417 () SeekEntryResult!471)

(assert (=> b!166625 (= res!79218 (and (not (is-Undefined!471 lt!83417)) (not (is-MissingVacant!471 lt!83417)) (not (is-MissingZero!471 lt!83417)) (is-Found!471 lt!83417)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6634 (_ BitVec 32)) SeekEntryResult!471)

(assert (=> b!166625 (= lt!83417 (seekEntryOrOpen!0 key!828 (_keys!5262 thiss!1248) (mask!8172 thiss!1248)))))

(declare-fun b!166626 () Bool)

(declare-fun e!109355 () Bool)

(assert (=> b!166626 (= e!109355 false)))

(declare-fun lt!83420 () Bool)

(declare-datatypes ((List!2120 0))(
  ( (Nil!2117) (Cons!2116 (h!2733 (_ BitVec 64)) (t!6930 List!2120)) )
))
(declare-fun arrayNoDuplicates!0 (array!6634 (_ BitVec 32) List!2120) Bool)

(assert (=> b!166626 (= lt!83420 (arrayNoDuplicates!0 (_keys!5262 thiss!1248) #b00000000000000000000000000000000 Nil!2117))))

(declare-fun tp_is_empty!3769 () Bool)

(declare-fun e!109354 () Bool)

(declare-fun e!109357 () Bool)

(declare-fun array_inv!2015 (array!6634) Bool)

(declare-fun array_inv!2016 (array!6636) Bool)

(assert (=> b!166627 (= e!109354 (and tp!14501 tp_is_empty!3769 (array_inv!2015 (_keys!5262 thiss!1248)) (array_inv!2016 (_values!3420 thiss!1248)) e!109357))))

(declare-fun res!79219 () Bool)

(assert (=> start!16674 (=> (not res!79219) (not e!109351))))

(declare-fun valid!865 (LongMapFixedSize!1990) Bool)

(assert (=> start!16674 (= res!79219 (valid!865 thiss!1248))))

(assert (=> start!16674 e!109351))

(assert (=> start!16674 e!109354))

(assert (=> start!16674 true))

(declare-fun b!166628 () Bool)

(declare-fun lt!83416 () Unit!5072)

(assert (=> b!166628 (= e!109358 lt!83416)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!92 (array!6634 array!6636 (_ BitVec 32) (_ BitVec 32) V!4673 V!4673 (_ BitVec 64) Int) Unit!5072)

(assert (=> b!166628 (= lt!83416 (lemmaInListMapThenSeekEntryOrOpenFindsIt!92 (_keys!5262 thiss!1248) (_values!3420 thiss!1248) (mask!8172 thiss!1248) (extraKeys!3178 thiss!1248) (zeroValue!3280 thiss!1248) (minValue!3280 thiss!1248) key!828 (defaultEntry!3437 thiss!1248)))))

(declare-fun res!79221 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166628 (= res!79221 (inRange!0 (index!4053 lt!83417) (mask!8172 thiss!1248)))))

(declare-fun e!109353 () Bool)

(assert (=> b!166628 (=> (not res!79221) (not e!109353))))

(assert (=> b!166628 e!109353))

(declare-fun b!166629 () Bool)

(declare-fun e!109359 () Bool)

(assert (=> b!166629 (= e!109359 tp_is_empty!3769)))

(declare-fun b!166630 () Bool)

(declare-fun res!79222 () Bool)

(assert (=> b!166630 (=> (not res!79222) (not e!109351))))

(assert (=> b!166630 (= res!79222 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166631 () Bool)

(assert (=> b!166631 (= e!109353 (= (select (arr!3152 (_keys!5262 thiss!1248)) (index!4053 lt!83417)) key!828))))

(declare-fun mapIsEmpty!6372 () Bool)

(declare-fun mapRes!6372 () Bool)

(assert (=> mapIsEmpty!6372 mapRes!6372))

(declare-fun b!166632 () Bool)

(declare-fun res!79220 () Bool)

(assert (=> b!166632 (=> (not res!79220) (not e!109355))))

(assert (=> b!166632 (= res!79220 (and (= (size!3441 (_values!3420 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8172 thiss!1248))) (= (size!3440 (_keys!5262 thiss!1248)) (size!3441 (_values!3420 thiss!1248))) (bvsge (mask!8172 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3178 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3178 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166633 () Bool)

(assert (=> b!166633 (= e!109360 e!109355)))

(declare-fun res!79224 () Bool)

(assert (=> b!166633 (=> (not res!79224) (not e!109355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166633 (= res!79224 (validMask!0 (mask!8172 thiss!1248)))))

(declare-fun lt!83418 () Unit!5072)

(assert (=> b!166633 (= lt!83418 e!109358)))

(declare-fun c!30213 () Bool)

(declare-datatypes ((tuple2!3108 0))(
  ( (tuple2!3109 (_1!1564 (_ BitVec 64)) (_2!1564 V!4673)) )
))
(declare-datatypes ((List!2121 0))(
  ( (Nil!2118) (Cons!2117 (h!2734 tuple2!3108) (t!6931 List!2121)) )
))
(declare-datatypes ((ListLongMap!2077 0))(
  ( (ListLongMap!2078 (toList!1054 List!2121)) )
))
(declare-fun contains!1090 (ListLongMap!2077 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!707 (array!6634 array!6636 (_ BitVec 32) (_ BitVec 32) V!4673 V!4673 (_ BitVec 32) Int) ListLongMap!2077)

(assert (=> b!166633 (= c!30213 (contains!1090 (getCurrentListMap!707 (_keys!5262 thiss!1248) (_values!3420 thiss!1248) (mask!8172 thiss!1248) (extraKeys!3178 thiss!1248) (zeroValue!3280 thiss!1248) (minValue!3280 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3437 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!6372 () Bool)

(declare-fun tp!14502 () Bool)

(declare-fun e!109356 () Bool)

(assert (=> mapNonEmpty!6372 (= mapRes!6372 (and tp!14502 e!109356))))

(declare-fun mapRest!6372 () (Array (_ BitVec 32) ValueCell!1541))

(declare-fun mapValue!6372 () ValueCell!1541)

(declare-fun mapKey!6372 () (_ BitVec 32))

(assert (=> mapNonEmpty!6372 (= (arr!3153 (_values!3420 thiss!1248)) (store mapRest!6372 mapKey!6372 mapValue!6372))))

(declare-fun b!166634 () Bool)

(assert (=> b!166634 (= e!109356 tp_is_empty!3769)))

(declare-fun b!166635 () Bool)

(assert (=> b!166635 (= e!109357 (and e!109359 mapRes!6372))))

(declare-fun condMapEmpty!6372 () Bool)

(declare-fun mapDefault!6372 () ValueCell!1541)

