; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22128 () Bool)

(assert start!22128)

(declare-fun b!230131 () Bool)

(declare-fun b_free!6183 () Bool)

(declare-fun b_next!6183 () Bool)

(assert (=> b!230131 (= b_free!6183 (not b_next!6183))))

(declare-fun tp!21690 () Bool)

(declare-fun b_and!13099 () Bool)

(assert (=> b!230131 (= tp!21690 b_and!13099)))

(declare-fun b!230116 () Bool)

(declare-fun e!149333 () Bool)

(declare-fun call!21381 () Bool)

(assert (=> b!230116 (= e!149333 (not call!21381))))

(declare-fun b!230117 () Bool)

(declare-fun e!149336 () Bool)

(declare-fun e!149337 () Bool)

(assert (=> b!230117 (= e!149336 e!149337)))

(declare-fun res!113222 () Bool)

(assert (=> b!230117 (=> (not res!113222) (not e!149337))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7707 0))(
  ( (V!7708 (val!3067 Int)) )
))
(declare-datatypes ((ValueCell!2679 0))(
  ( (ValueCellFull!2679 (v!5083 V!7707)) (EmptyCell!2679) )
))
(declare-datatypes ((array!11332 0))(
  ( (array!11333 (arr!5385 (Array (_ BitVec 32) ValueCell!2679)) (size!5718 (_ BitVec 32))) )
))
(declare-datatypes ((array!11334 0))(
  ( (array!11335 (arr!5386 (Array (_ BitVec 32) (_ BitVec 64))) (size!5719 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3258 0))(
  ( (LongMapFixedSize!3259 (defaultEntry!4288 Int) (mask!10176 (_ BitVec 32)) (extraKeys!4025 (_ BitVec 32)) (zeroValue!4129 V!7707) (minValue!4129 V!7707) (_size!1678 (_ BitVec 32)) (_keys!6342 array!11334) (_values!4271 array!11332) (_vacant!1678 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3258)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!230117 (= res!113222 (inRange!0 index!297 (mask!10176 thiss!1504)))))

(declare-datatypes ((Unit!7038 0))(
  ( (Unit!7039) )
))
(declare-fun lt!115833 () Unit!7038)

(declare-fun e!149340 () Unit!7038)

(assert (=> b!230117 (= lt!115833 e!149340)))

(declare-fun c!38174 () Bool)

(declare-datatypes ((tuple2!4522 0))(
  ( (tuple2!4523 (_1!2271 (_ BitVec 64)) (_2!2271 V!7707)) )
))
(declare-datatypes ((List!3469 0))(
  ( (Nil!3466) (Cons!3465 (h!4113 tuple2!4522) (t!8436 List!3469)) )
))
(declare-datatypes ((ListLongMap!3449 0))(
  ( (ListLongMap!3450 (toList!1740 List!3469)) )
))
(declare-fun lt!115835 () ListLongMap!3449)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1607 (ListLongMap!3449 (_ BitVec 64)) Bool)

(assert (=> b!230117 (= c!38174 (contains!1607 lt!115835 key!932))))

(declare-fun getCurrentListMap!1263 (array!11334 array!11332 (_ BitVec 32) (_ BitVec 32) V!7707 V!7707 (_ BitVec 32) Int) ListLongMap!3449)

(assert (=> b!230117 (= lt!115835 (getCurrentListMap!1263 (_keys!6342 thiss!1504) (_values!4271 thiss!1504) (mask!10176 thiss!1504) (extraKeys!4025 thiss!1504) (zeroValue!4129 thiss!1504) (minValue!4129 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4288 thiss!1504)))))

(declare-fun b!230118 () Bool)

(declare-fun e!149338 () Bool)

(assert (=> b!230118 (= e!149338 e!149333)))

(declare-fun res!113221 () Bool)

(declare-fun call!21382 () Bool)

(assert (=> b!230118 (= res!113221 call!21382)))

(assert (=> b!230118 (=> (not res!113221) (not e!149333))))

(declare-fun b!230119 () Bool)

(declare-datatypes ((SeekEntryResult!943 0))(
  ( (MissingZero!943 (index!5942 (_ BitVec 32))) (Found!943 (index!5943 (_ BitVec 32))) (Intermediate!943 (undefined!1755 Bool) (index!5944 (_ BitVec 32)) (x!23435 (_ BitVec 32))) (Undefined!943) (MissingVacant!943 (index!5945 (_ BitVec 32))) )
))
(declare-fun lt!115828 () SeekEntryResult!943)

(get-info :version)

(assert (=> b!230119 (= e!149338 ((_ is Undefined!943) lt!115828))))

(declare-fun b!230120 () Bool)

(declare-fun res!113220 () Bool)

(declare-fun e!149330 () Bool)

(assert (=> b!230120 (=> (not res!113220) (not e!149330))))

(assert (=> b!230120 (= res!113220 call!21382)))

(declare-fun e!149341 () Bool)

(assert (=> b!230120 (= e!149341 e!149330)))

(declare-fun bm!21378 () Bool)

(declare-fun c!38175 () Bool)

(assert (=> bm!21378 (= call!21382 (inRange!0 (ite c!38175 (index!5942 lt!115828) (index!5945 lt!115828)) (mask!10176 thiss!1504)))))

(declare-fun mapNonEmpty!10237 () Bool)

(declare-fun mapRes!10237 () Bool)

(declare-fun tp!21691 () Bool)

(declare-fun e!149329 () Bool)

(assert (=> mapNonEmpty!10237 (= mapRes!10237 (and tp!21691 e!149329))))

(declare-fun mapKey!10237 () (_ BitVec 32))

(declare-fun mapValue!10237 () ValueCell!2679)

(declare-fun mapRest!10237 () (Array (_ BitVec 32) ValueCell!2679))

(assert (=> mapNonEmpty!10237 (= (arr!5385 (_values!4271 thiss!1504)) (store mapRest!10237 mapKey!10237 mapValue!10237))))

(declare-fun b!230121 () Bool)

(assert (=> b!230121 (= e!149337 (not true))))

(declare-fun v!346 () V!7707)

(declare-fun lt!115834 () array!11334)

(declare-fun +!598 (ListLongMap!3449 tuple2!4522) ListLongMap!3449)

(assert (=> b!230121 (= (+!598 lt!115835 (tuple2!4523 key!932 v!346)) (getCurrentListMap!1263 lt!115834 (array!11333 (store (arr!5385 (_values!4271 thiss!1504)) index!297 (ValueCellFull!2679 v!346)) (size!5718 (_values!4271 thiss!1504))) (mask!10176 thiss!1504) (extraKeys!4025 thiss!1504) (zeroValue!4129 thiss!1504) (minValue!4129 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4288 thiss!1504)))))

(declare-fun lt!115838 () Unit!7038)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!57 (array!11334 array!11332 (_ BitVec 32) (_ BitVec 32) V!7707 V!7707 (_ BitVec 32) (_ BitVec 64) V!7707 Int) Unit!7038)

(assert (=> b!230121 (= lt!115838 (lemmaAddValidKeyToArrayThenAddPairToListMap!57 (_keys!6342 thiss!1504) (_values!4271 thiss!1504) (mask!10176 thiss!1504) (extraKeys!4025 thiss!1504) (zeroValue!4129 thiss!1504) (minValue!4129 thiss!1504) index!297 key!932 v!346 (defaultEntry!4288 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11334 (_ BitVec 32)) Bool)

(assert (=> b!230121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115834 (mask!10176 thiss!1504))))

(declare-fun lt!115831 () Unit!7038)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11334 (_ BitVec 32) (_ BitVec 32)) Unit!7038)

(assert (=> b!230121 (= lt!115831 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6342 thiss!1504) index!297 (mask!10176 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11334 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230121 (= (arrayCountValidKeys!0 lt!115834 #b00000000000000000000000000000000 (size!5719 (_keys!6342 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6342 thiss!1504) #b00000000000000000000000000000000 (size!5719 (_keys!6342 thiss!1504)))))))

(declare-fun lt!115829 () Unit!7038)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11334 (_ BitVec 32) (_ BitVec 64)) Unit!7038)

(assert (=> b!230121 (= lt!115829 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6342 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3470 0))(
  ( (Nil!3467) (Cons!3466 (h!4114 (_ BitVec 64)) (t!8437 List!3470)) )
))
(declare-fun arrayNoDuplicates!0 (array!11334 (_ BitVec 32) List!3470) Bool)

(assert (=> b!230121 (arrayNoDuplicates!0 lt!115834 #b00000000000000000000000000000000 Nil!3467)))

(assert (=> b!230121 (= lt!115834 (array!11335 (store (arr!5386 (_keys!6342 thiss!1504)) index!297 key!932) (size!5719 (_keys!6342 thiss!1504))))))

(declare-fun lt!115830 () Unit!7038)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11334 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3470) Unit!7038)

(assert (=> b!230121 (= lt!115830 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6342 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3467))))

(declare-fun lt!115837 () Unit!7038)

(declare-fun e!149335 () Unit!7038)

(assert (=> b!230121 (= lt!115837 e!149335)))

(declare-fun c!38177 () Bool)

(declare-fun arrayContainsKey!0 (array!11334 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!230121 (= c!38177 (arrayContainsKey!0 (_keys!6342 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230122 () Bool)

(declare-fun c!38176 () Bool)

(assert (=> b!230122 (= c!38176 ((_ is MissingVacant!943) lt!115828))))

(assert (=> b!230122 (= e!149341 e!149338)))

(declare-fun b!230123 () Bool)

(declare-fun Unit!7040 () Unit!7038)

(assert (=> b!230123 (= e!149335 Unit!7040)))

(declare-fun lt!115832 () Unit!7038)

(declare-fun lemmaArrayContainsKeyThenInListMap!122 (array!11334 array!11332 (_ BitVec 32) (_ BitVec 32) V!7707 V!7707 (_ BitVec 64) (_ BitVec 32) Int) Unit!7038)

(assert (=> b!230123 (= lt!115832 (lemmaArrayContainsKeyThenInListMap!122 (_keys!6342 thiss!1504) (_values!4271 thiss!1504) (mask!10176 thiss!1504) (extraKeys!4025 thiss!1504) (zeroValue!4129 thiss!1504) (minValue!4129 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4288 thiss!1504)))))

(assert (=> b!230123 false))

(declare-fun b!230124 () Bool)

(declare-fun res!113226 () Bool)

(assert (=> b!230124 (= res!113226 (= (select (arr!5386 (_keys!6342 thiss!1504)) (index!5945 lt!115828)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!230124 (=> (not res!113226) (not e!149333))))

(declare-fun b!230126 () Bool)

(declare-fun Unit!7041 () Unit!7038)

(assert (=> b!230126 (= e!149335 Unit!7041)))

(declare-fun mapIsEmpty!10237 () Bool)

(assert (=> mapIsEmpty!10237 mapRes!10237))

(declare-fun b!230127 () Bool)

(assert (=> b!230127 (= e!149330 (not call!21381))))

(declare-fun b!230128 () Bool)

(declare-fun res!113225 () Bool)

(declare-fun e!149332 () Bool)

(assert (=> b!230128 (=> (not res!113225) (not e!149332))))

(assert (=> b!230128 (= res!113225 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230129 () Bool)

(declare-fun res!113223 () Bool)

(assert (=> b!230129 (=> (not res!113223) (not e!149330))))

(assert (=> b!230129 (= res!113223 (= (select (arr!5386 (_keys!6342 thiss!1504)) (index!5942 lt!115828)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21379 () Bool)

(assert (=> bm!21379 (= call!21381 (arrayContainsKey!0 (_keys!6342 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230130 () Bool)

(assert (=> b!230130 (= e!149332 e!149336)))

(declare-fun res!113224 () Bool)

(assert (=> b!230130 (=> (not res!113224) (not e!149336))))

(assert (=> b!230130 (= res!113224 (or (= lt!115828 (MissingZero!943 index!297)) (= lt!115828 (MissingVacant!943 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11334 (_ BitVec 32)) SeekEntryResult!943)

(assert (=> b!230130 (= lt!115828 (seekEntryOrOpen!0 key!932 (_keys!6342 thiss!1504) (mask!10176 thiss!1504)))))

(declare-fun e!149334 () Bool)

(declare-fun e!149331 () Bool)

(declare-fun tp_is_empty!6045 () Bool)

(declare-fun array_inv!3545 (array!11334) Bool)

(declare-fun array_inv!3546 (array!11332) Bool)

(assert (=> b!230131 (= e!149334 (and tp!21690 tp_is_empty!6045 (array_inv!3545 (_keys!6342 thiss!1504)) (array_inv!3546 (_values!4271 thiss!1504)) e!149331))))

(declare-fun b!230132 () Bool)

(declare-fun Unit!7042 () Unit!7038)

(assert (=> b!230132 (= e!149340 Unit!7042)))

(declare-fun lt!115839 () Unit!7038)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!289 (array!11334 array!11332 (_ BitVec 32) (_ BitVec 32) V!7707 V!7707 (_ BitVec 64) Int) Unit!7038)

(assert (=> b!230132 (= lt!115839 (lemmaInListMapThenSeekEntryOrOpenFindsIt!289 (_keys!6342 thiss!1504) (_values!4271 thiss!1504) (mask!10176 thiss!1504) (extraKeys!4025 thiss!1504) (zeroValue!4129 thiss!1504) (minValue!4129 thiss!1504) key!932 (defaultEntry!4288 thiss!1504)))))

(assert (=> b!230132 false))

(declare-fun b!230133 () Bool)

(declare-fun e!149328 () Bool)

(assert (=> b!230133 (= e!149328 tp_is_empty!6045)))

(declare-fun b!230134 () Bool)

(declare-fun lt!115836 () Unit!7038)

(assert (=> b!230134 (= e!149340 lt!115836)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!303 (array!11334 array!11332 (_ BitVec 32) (_ BitVec 32) V!7707 V!7707 (_ BitVec 64) Int) Unit!7038)

(assert (=> b!230134 (= lt!115836 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!303 (_keys!6342 thiss!1504) (_values!4271 thiss!1504) (mask!10176 thiss!1504) (extraKeys!4025 thiss!1504) (zeroValue!4129 thiss!1504) (minValue!4129 thiss!1504) key!932 (defaultEntry!4288 thiss!1504)))))

(assert (=> b!230134 (= c!38175 ((_ is MissingZero!943) lt!115828))))

(assert (=> b!230134 e!149341))

(declare-fun b!230135 () Bool)

(assert (=> b!230135 (= e!149329 tp_is_empty!6045)))

(declare-fun b!230125 () Bool)

(assert (=> b!230125 (= e!149331 (and e!149328 mapRes!10237))))

(declare-fun condMapEmpty!10237 () Bool)

(declare-fun mapDefault!10237 () ValueCell!2679)

(assert (=> b!230125 (= condMapEmpty!10237 (= (arr!5385 (_values!4271 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2679)) mapDefault!10237)))))

(declare-fun res!113227 () Bool)

(assert (=> start!22128 (=> (not res!113227) (not e!149332))))

(declare-fun valid!1291 (LongMapFixedSize!3258) Bool)

(assert (=> start!22128 (= res!113227 (valid!1291 thiss!1504))))

(assert (=> start!22128 e!149332))

(assert (=> start!22128 e!149334))

(assert (=> start!22128 true))

(assert (=> start!22128 tp_is_empty!6045))

(assert (= (and start!22128 res!113227) b!230128))

(assert (= (and b!230128 res!113225) b!230130))

(assert (= (and b!230130 res!113224) b!230117))

(assert (= (and b!230117 c!38174) b!230132))

(assert (= (and b!230117 (not c!38174)) b!230134))

(assert (= (and b!230134 c!38175) b!230120))

(assert (= (and b!230134 (not c!38175)) b!230122))

(assert (= (and b!230120 res!113220) b!230129))

(assert (= (and b!230129 res!113223) b!230127))

(assert (= (and b!230122 c!38176) b!230118))

(assert (= (and b!230122 (not c!38176)) b!230119))

(assert (= (and b!230118 res!113221) b!230124))

(assert (= (and b!230124 res!113226) b!230116))

(assert (= (or b!230120 b!230118) bm!21378))

(assert (= (or b!230127 b!230116) bm!21379))

(assert (= (and b!230117 res!113222) b!230121))

(assert (= (and b!230121 c!38177) b!230123))

(assert (= (and b!230121 (not c!38177)) b!230126))

(assert (= (and b!230125 condMapEmpty!10237) mapIsEmpty!10237))

(assert (= (and b!230125 (not condMapEmpty!10237)) mapNonEmpty!10237))

(assert (= (and mapNonEmpty!10237 ((_ is ValueCellFull!2679) mapValue!10237)) b!230135))

(assert (= (and b!230125 ((_ is ValueCellFull!2679) mapDefault!10237)) b!230133))

(assert (= b!230131 b!230125))

(assert (= start!22128 b!230131))

(declare-fun m!251539 () Bool)

(assert (=> bm!21379 m!251539))

(declare-fun m!251541 () Bool)

(assert (=> bm!21378 m!251541))

(declare-fun m!251543 () Bool)

(assert (=> start!22128 m!251543))

(declare-fun m!251545 () Bool)

(assert (=> b!230131 m!251545))

(declare-fun m!251547 () Bool)

(assert (=> b!230131 m!251547))

(declare-fun m!251549 () Bool)

(assert (=> b!230121 m!251549))

(declare-fun m!251551 () Bool)

(assert (=> b!230121 m!251551))

(declare-fun m!251553 () Bool)

(assert (=> b!230121 m!251553))

(declare-fun m!251555 () Bool)

(assert (=> b!230121 m!251555))

(declare-fun m!251557 () Bool)

(assert (=> b!230121 m!251557))

(declare-fun m!251559 () Bool)

(assert (=> b!230121 m!251559))

(declare-fun m!251561 () Bool)

(assert (=> b!230121 m!251561))

(declare-fun m!251563 () Bool)

(assert (=> b!230121 m!251563))

(declare-fun m!251565 () Bool)

(assert (=> b!230121 m!251565))

(assert (=> b!230121 m!251539))

(declare-fun m!251567 () Bool)

(assert (=> b!230121 m!251567))

(declare-fun m!251569 () Bool)

(assert (=> b!230121 m!251569))

(declare-fun m!251571 () Bool)

(assert (=> b!230121 m!251571))

(declare-fun m!251573 () Bool)

(assert (=> b!230123 m!251573))

(declare-fun m!251575 () Bool)

(assert (=> mapNonEmpty!10237 m!251575))

(declare-fun m!251577 () Bool)

(assert (=> b!230130 m!251577))

(declare-fun m!251579 () Bool)

(assert (=> b!230132 m!251579))

(declare-fun m!251581 () Bool)

(assert (=> b!230117 m!251581))

(declare-fun m!251583 () Bool)

(assert (=> b!230117 m!251583))

(declare-fun m!251585 () Bool)

(assert (=> b!230117 m!251585))

(declare-fun m!251587 () Bool)

(assert (=> b!230129 m!251587))

(declare-fun m!251589 () Bool)

(assert (=> b!230124 m!251589))

(declare-fun m!251591 () Bool)

(assert (=> b!230134 m!251591))

(check-sat (not b_next!6183) (not start!22128) (not b!230117) (not bm!21378) (not b!230123) (not b!230131) (not b!230121) tp_is_empty!6045 (not mapNonEmpty!10237) b_and!13099 (not b!230134) (not bm!21379) (not b!230130) (not b!230132))
(check-sat b_and!13099 (not b_next!6183))
