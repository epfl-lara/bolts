; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25150 () Bool)

(assert start!25150)

(declare-fun b!262068 () Bool)

(declare-fun b_free!6785 () Bool)

(declare-fun b_next!6785 () Bool)

(assert (=> b!262068 (= b_free!6785 (not b_next!6785))))

(declare-fun tp!23685 () Bool)

(declare-fun b_and!13937 () Bool)

(assert (=> b!262068 (= tp!23685 b_and!13937)))

(declare-fun b!262048 () Bool)

(declare-fun res!128015 () Bool)

(declare-fun e!169840 () Bool)

(assert (=> b!262048 (=> (not res!128015) (not e!169840))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!262048 (= res!128015 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!262049 () Bool)

(declare-datatypes ((Unit!8162 0))(
  ( (Unit!8163) )
))
(declare-fun e!169842 () Unit!8162)

(declare-fun Unit!8164 () Unit!8162)

(assert (=> b!262049 (= e!169842 Unit!8164)))

(declare-fun lt!132459 () Unit!8162)

(declare-datatypes ((V!8509 0))(
  ( (V!8510 (val!3368 Int)) )
))
(declare-datatypes ((ValueCell!2980 0))(
  ( (ValueCellFull!2980 (v!5489 V!8509)) (EmptyCell!2980) )
))
(declare-datatypes ((array!12650 0))(
  ( (array!12651 (arr!5987 (Array (_ BitVec 32) ValueCell!2980)) (size!6338 (_ BitVec 32))) )
))
(declare-datatypes ((array!12652 0))(
  ( (array!12653 (arr!5988 (Array (_ BitVec 32) (_ BitVec 64))) (size!6339 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3860 0))(
  ( (LongMapFixedSize!3861 (defaultEntry!4828 Int) (mask!11180 (_ BitVec 32)) (extraKeys!4565 (_ BitVec 32)) (zeroValue!4669 V!8509) (minValue!4669 V!8509) (_size!1979 (_ BitVec 32)) (_keys!7016 array!12652) (_values!4811 array!12650) (_vacant!1979 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3860)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!453 (array!12652 array!12650 (_ BitVec 32) (_ BitVec 32) V!8509 V!8509 (_ BitVec 64) Int) Unit!8162)

(assert (=> b!262049 (= lt!132459 (lemmaInListMapThenSeekEntryOrOpenFindsIt!453 (_keys!7016 thiss!1504) (_values!4811 thiss!1504) (mask!11180 thiss!1504) (extraKeys!4565 thiss!1504) (zeroValue!4669 thiss!1504) (minValue!4669 thiss!1504) key!932 (defaultEntry!4828 thiss!1504)))))

(assert (=> b!262049 false))

(declare-fun b!262050 () Bool)

(declare-fun c!44629 () Bool)

(declare-datatypes ((SeekEntryResult!1205 0))(
  ( (MissingZero!1205 (index!6990 (_ BitVec 32))) (Found!1205 (index!6991 (_ BitVec 32))) (Intermediate!1205 (undefined!2017 Bool) (index!6992 (_ BitVec 32)) (x!25211 (_ BitVec 32))) (Undefined!1205) (MissingVacant!1205 (index!6993 (_ BitVec 32))) )
))
(declare-fun lt!132453 () SeekEntryResult!1205)

(assert (=> b!262050 (= c!44629 (is-MissingVacant!1205 lt!132453))))

(declare-fun e!169835 () Bool)

(declare-fun e!169833 () Bool)

(assert (=> b!262050 (= e!169835 e!169833)))

(declare-fun mapIsEmpty!11329 () Bool)

(declare-fun mapRes!11329 () Bool)

(assert (=> mapIsEmpty!11329 mapRes!11329))

(declare-fun b!262052 () Bool)

(declare-fun e!169847 () Bool)

(declare-fun e!169845 () Bool)

(assert (=> b!262052 (= e!169847 (not e!169845))))

(declare-fun res!128017 () Bool)

(assert (=> b!262052 (=> res!128017 e!169845)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!262052 (= res!128017 (not (validMask!0 (mask!11180 thiss!1504))))))

(declare-fun lt!132460 () array!12652)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12652 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!262052 (= (arrayCountValidKeys!0 lt!132460 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!132450 () Unit!8162)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12652 (_ BitVec 32)) Unit!8162)

(assert (=> b!262052 (= lt!132450 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132460 index!297))))

(declare-fun arrayContainsKey!0 (array!12652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!262052 (arrayContainsKey!0 lt!132460 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132455 () Unit!8162)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12652 (_ BitVec 64) (_ BitVec 32)) Unit!8162)

(assert (=> b!262052 (= lt!132455 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132460 key!932 index!297))))

(declare-datatypes ((tuple2!4964 0))(
  ( (tuple2!4965 (_1!2492 (_ BitVec 64)) (_2!2492 V!8509)) )
))
(declare-datatypes ((List!3864 0))(
  ( (Nil!3861) (Cons!3860 (h!4526 tuple2!4964) (t!8945 List!3864)) )
))
(declare-datatypes ((ListLongMap!3891 0))(
  ( (ListLongMap!3892 (toList!1961 List!3864)) )
))
(declare-fun lt!132451 () ListLongMap!3891)

(declare-fun v!346 () V!8509)

(declare-fun +!702 (ListLongMap!3891 tuple2!4964) ListLongMap!3891)

(declare-fun getCurrentListMap!1484 (array!12652 array!12650 (_ BitVec 32) (_ BitVec 32) V!8509 V!8509 (_ BitVec 32) Int) ListLongMap!3891)

(assert (=> b!262052 (= (+!702 lt!132451 (tuple2!4965 key!932 v!346)) (getCurrentListMap!1484 lt!132460 (array!12651 (store (arr!5987 (_values!4811 thiss!1504)) index!297 (ValueCellFull!2980 v!346)) (size!6338 (_values!4811 thiss!1504))) (mask!11180 thiss!1504) (extraKeys!4565 thiss!1504) (zeroValue!4669 thiss!1504) (minValue!4669 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4828 thiss!1504)))))

(declare-fun lt!132448 () Unit!8162)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!117 (array!12652 array!12650 (_ BitVec 32) (_ BitVec 32) V!8509 V!8509 (_ BitVec 32) (_ BitVec 64) V!8509 Int) Unit!8162)

(assert (=> b!262052 (= lt!132448 (lemmaAddValidKeyToArrayThenAddPairToListMap!117 (_keys!7016 thiss!1504) (_values!4811 thiss!1504) (mask!11180 thiss!1504) (extraKeys!4565 thiss!1504) (zeroValue!4669 thiss!1504) (minValue!4669 thiss!1504) index!297 key!932 v!346 (defaultEntry!4828 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12652 (_ BitVec 32)) Bool)

(assert (=> b!262052 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132460 (mask!11180 thiss!1504))))

(declare-fun lt!132458 () Unit!8162)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12652 (_ BitVec 32) (_ BitVec 32)) Unit!8162)

(assert (=> b!262052 (= lt!132458 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7016 thiss!1504) index!297 (mask!11180 thiss!1504)))))

(assert (=> b!262052 (= (arrayCountValidKeys!0 lt!132460 #b00000000000000000000000000000000 (size!6339 (_keys!7016 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7016 thiss!1504) #b00000000000000000000000000000000 (size!6339 (_keys!7016 thiss!1504)))))))

(declare-fun lt!132449 () Unit!8162)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12652 (_ BitVec 32) (_ BitVec 64)) Unit!8162)

(assert (=> b!262052 (= lt!132449 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7016 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3865 0))(
  ( (Nil!3862) (Cons!3861 (h!4527 (_ BitVec 64)) (t!8946 List!3865)) )
))
(declare-fun arrayNoDuplicates!0 (array!12652 (_ BitVec 32) List!3865) Bool)

(assert (=> b!262052 (arrayNoDuplicates!0 lt!132460 #b00000000000000000000000000000000 Nil!3862)))

(assert (=> b!262052 (= lt!132460 (array!12653 (store (arr!5988 (_keys!7016 thiss!1504)) index!297 key!932) (size!6339 (_keys!7016 thiss!1504))))))

(declare-fun lt!132456 () Unit!8162)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12652 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3865) Unit!8162)

(assert (=> b!262052 (= lt!132456 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7016 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3862))))

(declare-fun lt!132447 () Unit!8162)

(declare-fun e!169846 () Unit!8162)

(assert (=> b!262052 (= lt!132447 e!169846)))

(declare-fun c!44628 () Bool)

(assert (=> b!262052 (= c!44628 (arrayContainsKey!0 (_keys!7016 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262053 () Bool)

(declare-fun e!169843 () Bool)

(declare-fun call!25026 () Bool)

(assert (=> b!262053 (= e!169843 (not call!25026))))

(declare-fun b!262054 () Bool)

(declare-fun Unit!8165 () Unit!8162)

(assert (=> b!262054 (= e!169846 Unit!8165)))

(declare-fun lt!132457 () Unit!8162)

(declare-fun lemmaArrayContainsKeyThenInListMap!259 (array!12652 array!12650 (_ BitVec 32) (_ BitVec 32) V!8509 V!8509 (_ BitVec 64) (_ BitVec 32) Int) Unit!8162)

(assert (=> b!262054 (= lt!132457 (lemmaArrayContainsKeyThenInListMap!259 (_keys!7016 thiss!1504) (_values!4811 thiss!1504) (mask!11180 thiss!1504) (extraKeys!4565 thiss!1504) (zeroValue!4669 thiss!1504) (minValue!4669 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4828 thiss!1504)))))

(assert (=> b!262054 false))

(declare-fun b!262055 () Bool)

(declare-fun e!169837 () Bool)

(assert (=> b!262055 (= e!169837 (not call!25026))))

(declare-fun b!262056 () Bool)

(assert (=> b!262056 (= e!169845 (or (not (= (size!6338 (_values!4811 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11180 thiss!1504)))) (not (= (size!6339 (_keys!7016 thiss!1504)) (size!6338 (_values!4811 thiss!1504)))) (bvslt (mask!11180 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4565 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4565 thiss!1504) #b00000000000000000000000000000011) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6339 (_keys!7016 thiss!1504))))))))

(declare-fun b!262057 () Bool)

(declare-fun Unit!8166 () Unit!8162)

(assert (=> b!262057 (= e!169846 Unit!8166)))

(declare-fun b!262058 () Bool)

(declare-fun res!128013 () Bool)

(assert (=> b!262058 (=> (not res!128013) (not e!169837))))

(assert (=> b!262058 (= res!128013 (= (select (arr!5988 (_keys!7016 thiss!1504)) (index!6990 lt!132453)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262059 () Bool)

(declare-fun lt!132454 () Unit!8162)

(assert (=> b!262059 (= e!169842 lt!132454)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!450 (array!12652 array!12650 (_ BitVec 32) (_ BitVec 32) V!8509 V!8509 (_ BitVec 64) Int) Unit!8162)

(assert (=> b!262059 (= lt!132454 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!450 (_keys!7016 thiss!1504) (_values!4811 thiss!1504) (mask!11180 thiss!1504) (extraKeys!4565 thiss!1504) (zeroValue!4669 thiss!1504) (minValue!4669 thiss!1504) key!932 (defaultEntry!4828 thiss!1504)))))

(declare-fun c!44627 () Bool)

(assert (=> b!262059 (= c!44627 (is-MissingZero!1205 lt!132453))))

(assert (=> b!262059 e!169835))

(declare-fun bm!25022 () Bool)

(assert (=> bm!25022 (= call!25026 (arrayContainsKey!0 (_keys!7016 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262060 () Bool)

(declare-fun e!169836 () Bool)

(assert (=> b!262060 (= e!169836 e!169847)))

(declare-fun res!128014 () Bool)

(assert (=> b!262060 (=> (not res!128014) (not e!169847))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!262060 (= res!128014 (inRange!0 index!297 (mask!11180 thiss!1504)))))

(declare-fun lt!132452 () Unit!8162)

(assert (=> b!262060 (= lt!132452 e!169842)))

(declare-fun c!44626 () Bool)

(declare-fun contains!1902 (ListLongMap!3891 (_ BitVec 64)) Bool)

(assert (=> b!262060 (= c!44626 (contains!1902 lt!132451 key!932))))

(assert (=> b!262060 (= lt!132451 (getCurrentListMap!1484 (_keys!7016 thiss!1504) (_values!4811 thiss!1504) (mask!11180 thiss!1504) (extraKeys!4565 thiss!1504) (zeroValue!4669 thiss!1504) (minValue!4669 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4828 thiss!1504)))))

(declare-fun mapNonEmpty!11329 () Bool)

(declare-fun tp!23686 () Bool)

(declare-fun e!169834 () Bool)

(assert (=> mapNonEmpty!11329 (= mapRes!11329 (and tp!23686 e!169834))))

(declare-fun mapKey!11329 () (_ BitVec 32))

(declare-fun mapRest!11329 () (Array (_ BitVec 32) ValueCell!2980))

(declare-fun mapValue!11329 () ValueCell!2980)

(assert (=> mapNonEmpty!11329 (= (arr!5987 (_values!4811 thiss!1504)) (store mapRest!11329 mapKey!11329 mapValue!11329))))

(declare-fun res!128016 () Bool)

(assert (=> start!25150 (=> (not res!128016) (not e!169840))))

(declare-fun valid!1497 (LongMapFixedSize!3860) Bool)

(assert (=> start!25150 (= res!128016 (valid!1497 thiss!1504))))

(assert (=> start!25150 e!169840))

(declare-fun e!169838 () Bool)

(assert (=> start!25150 e!169838))

(assert (=> start!25150 true))

(declare-fun tp_is_empty!6647 () Bool)

(assert (=> start!25150 tp_is_empty!6647))

(declare-fun b!262051 () Bool)

(declare-fun res!128018 () Bool)

(assert (=> b!262051 (= res!128018 (= (select (arr!5988 (_keys!7016 thiss!1504)) (index!6993 lt!132453)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262051 (=> (not res!128018) (not e!169843))))

(declare-fun b!262061 () Bool)

(assert (=> b!262061 (= e!169833 (is-Undefined!1205 lt!132453))))

(declare-fun b!262062 () Bool)

(assert (=> b!262062 (= e!169834 tp_is_empty!6647)))

(declare-fun b!262063 () Bool)

(declare-fun e!169839 () Bool)

(declare-fun e!169844 () Bool)

(assert (=> b!262063 (= e!169839 (and e!169844 mapRes!11329))))

(declare-fun condMapEmpty!11329 () Bool)

(declare-fun mapDefault!11329 () ValueCell!2980)

