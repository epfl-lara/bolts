; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21740 () Bool)

(assert start!21740)

(declare-fun b!218474 () Bool)

(declare-fun b_free!5877 () Bool)

(declare-fun b_next!5877 () Bool)

(assert (=> b!218474 (= b_free!5877 (not b_next!5877))))

(declare-fun tp!20766 () Bool)

(declare-fun b_and!12785 () Bool)

(assert (=> b!218474 (= tp!20766 b_and!12785)))

(declare-fun call!20391 () Bool)

(declare-fun c!36326 () Bool)

(declare-datatypes ((V!7299 0))(
  ( (V!7300 (val!2914 Int)) )
))
(declare-datatypes ((ValueCell!2526 0))(
  ( (ValueCellFull!2526 (v!4928 V!7299)) (EmptyCell!2526) )
))
(declare-datatypes ((array!10716 0))(
  ( (array!10717 (arr!5079 (Array (_ BitVec 32) ValueCell!2526)) (size!5411 (_ BitVec 32))) )
))
(declare-datatypes ((array!10718 0))(
  ( (array!10719 (arr!5080 (Array (_ BitVec 32) (_ BitVec 64))) (size!5412 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2952 0))(
  ( (LongMapFixedSize!2953 (defaultEntry!4126 Int) (mask!9903 (_ BitVec 32)) (extraKeys!3863 (_ BitVec 32)) (zeroValue!3967 V!7299) (minValue!3967 V!7299) (_size!1525 (_ BitVec 32)) (_keys!6175 array!10718) (_values!4109 array!10716) (_vacant!1525 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2952)

(declare-datatypes ((SeekEntryResult!799 0))(
  ( (MissingZero!799 (index!5366 (_ BitVec 32))) (Found!799 (index!5367 (_ BitVec 32))) (Intermediate!799 (undefined!1611 Bool) (index!5368 (_ BitVec 32)) (x!22855 (_ BitVec 32))) (Undefined!799) (MissingVacant!799 (index!5369 (_ BitVec 32))) )
))
(declare-fun lt!111569 () SeekEntryResult!799)

(declare-fun bm!20388 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20388 (= call!20391 (inRange!0 (ite c!36326 (index!5366 lt!111569) (index!5369 lt!111569)) (mask!9903 thiss!1504)))))

(declare-fun b!218468 () Bool)

(declare-datatypes ((Unit!6507 0))(
  ( (Unit!6508) )
))
(declare-fun e!142124 () Unit!6507)

(declare-fun lt!111571 () Unit!6507)

(assert (=> b!218468 (= e!142124 lt!111571)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!197 (array!10718 array!10716 (_ BitVec 32) (_ BitVec 32) V!7299 V!7299 (_ BitVec 64) Int) Unit!6507)

(assert (=> b!218468 (= lt!111571 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!197 (_keys!6175 thiss!1504) (_values!4109 thiss!1504) (mask!9903 thiss!1504) (extraKeys!3863 thiss!1504) (zeroValue!3967 thiss!1504) (minValue!3967 thiss!1504) key!932 (defaultEntry!4126 thiss!1504)))))

(get-info :version)

(assert (=> b!218468 (= c!36326 ((_ is MissingZero!799) lt!111569))))

(declare-fun e!142127 () Bool)

(assert (=> b!218468 e!142127))

(declare-fun b!218469 () Bool)

(declare-fun res!107133 () Bool)

(declare-fun e!142130 () Bool)

(assert (=> b!218469 (=> (not res!107133) (not e!142130))))

(assert (=> b!218469 (= res!107133 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!9771 () Bool)

(declare-fun mapRes!9771 () Bool)

(declare-fun tp!20765 () Bool)

(declare-fun e!142128 () Bool)

(assert (=> mapNonEmpty!9771 (= mapRes!9771 (and tp!20765 e!142128))))

(declare-fun mapValue!9771 () ValueCell!2526)

(declare-fun mapRest!9771 () (Array (_ BitVec 32) ValueCell!2526))

(declare-fun mapKey!9771 () (_ BitVec 32))

(assert (=> mapNonEmpty!9771 (= (arr!5079 (_values!4109 thiss!1504)) (store mapRest!9771 mapKey!9771 mapValue!9771))))

(declare-fun mapIsEmpty!9771 () Bool)

(assert (=> mapIsEmpty!9771 mapRes!9771))

(declare-fun b!218471 () Bool)

(declare-fun res!107128 () Bool)

(declare-fun e!142123 () Bool)

(assert (=> b!218471 (=> (not res!107128) (not e!142123))))

(assert (=> b!218471 (= res!107128 call!20391)))

(assert (=> b!218471 (= e!142127 e!142123)))

(declare-fun b!218472 () Bool)

(declare-fun e!142133 () Bool)

(assert (=> b!218472 (= e!142130 e!142133)))

(declare-fun res!107127 () Bool)

(assert (=> b!218472 (=> (not res!107127) (not e!142133))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218472 (= res!107127 (or (= lt!111569 (MissingZero!799 index!297)) (= lt!111569 (MissingVacant!799 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10718 (_ BitVec 32)) SeekEntryResult!799)

(assert (=> b!218472 (= lt!111569 (seekEntryOrOpen!0 key!932 (_keys!6175 thiss!1504) (mask!9903 thiss!1504)))))

(declare-fun b!218473 () Bool)

(declare-fun c!36328 () Bool)

(assert (=> b!218473 (= c!36328 ((_ is MissingVacant!799) lt!111569))))

(declare-fun e!142126 () Bool)

(assert (=> b!218473 (= e!142127 e!142126)))

(declare-fun tp_is_empty!5739 () Bool)

(declare-fun e!142129 () Bool)

(declare-fun e!142132 () Bool)

(declare-fun array_inv!3353 (array!10718) Bool)

(declare-fun array_inv!3354 (array!10716) Bool)

(assert (=> b!218474 (= e!142129 (and tp!20766 tp_is_empty!5739 (array_inv!3353 (_keys!6175 thiss!1504)) (array_inv!3354 (_values!4109 thiss!1504)) e!142132))))

(declare-fun b!218475 () Bool)

(declare-fun Unit!6509 () Unit!6507)

(assert (=> b!218475 (= e!142124 Unit!6509)))

(declare-fun lt!111568 () Unit!6507)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!188 (array!10718 array!10716 (_ BitVec 32) (_ BitVec 32) V!7299 V!7299 (_ BitVec 64) Int) Unit!6507)

(assert (=> b!218475 (= lt!111568 (lemmaInListMapThenSeekEntryOrOpenFindsIt!188 (_keys!6175 thiss!1504) (_values!4109 thiss!1504) (mask!9903 thiss!1504) (extraKeys!3863 thiss!1504) (zeroValue!3967 thiss!1504) (minValue!3967 thiss!1504) key!932 (defaultEntry!4126 thiss!1504)))))

(assert (=> b!218475 false))

(declare-fun b!218476 () Bool)

(assert (=> b!218476 (= e!142133 false)))

(declare-fun lt!111570 () Unit!6507)

(assert (=> b!218476 (= lt!111570 e!142124)))

(declare-fun c!36327 () Bool)

(declare-datatypes ((tuple2!4324 0))(
  ( (tuple2!4325 (_1!2172 (_ BitVec 64)) (_2!2172 V!7299)) )
))
(declare-datatypes ((List!3253 0))(
  ( (Nil!3250) (Cons!3249 (h!3896 tuple2!4324) (t!8216 List!3253)) )
))
(declare-datatypes ((ListLongMap!3251 0))(
  ( (ListLongMap!3252 (toList!1641 List!3253)) )
))
(declare-fun contains!1476 (ListLongMap!3251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1164 (array!10718 array!10716 (_ BitVec 32) (_ BitVec 32) V!7299 V!7299 (_ BitVec 32) Int) ListLongMap!3251)

(assert (=> b!218476 (= c!36327 (contains!1476 (getCurrentListMap!1164 (_keys!6175 thiss!1504) (_values!4109 thiss!1504) (mask!9903 thiss!1504) (extraKeys!3863 thiss!1504) (zeroValue!3967 thiss!1504) (minValue!3967 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4126 thiss!1504)) key!932))))

(declare-fun b!218477 () Bool)

(declare-fun e!142131 () Bool)

(assert (=> b!218477 (= e!142131 tp_is_empty!5739)))

(declare-fun b!218478 () Bool)

(assert (=> b!218478 (= e!142128 tp_is_empty!5739)))

(declare-fun bm!20389 () Bool)

(declare-fun call!20392 () Bool)

(declare-fun arrayContainsKey!0 (array!10718 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20389 (= call!20392 (arrayContainsKey!0 (_keys!6175 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!218479 () Bool)

(declare-fun e!142134 () Bool)

(assert (=> b!218479 (= e!142126 e!142134)))

(declare-fun res!107129 () Bool)

(assert (=> b!218479 (= res!107129 call!20391)))

(assert (=> b!218479 (=> (not res!107129) (not e!142134))))

(declare-fun b!218480 () Bool)

(assert (=> b!218480 (= e!142134 (not call!20392))))

(declare-fun b!218481 () Bool)

(declare-fun res!107132 () Bool)

(assert (=> b!218481 (=> (not res!107132) (not e!142123))))

(assert (=> b!218481 (= res!107132 (= (select (arr!5080 (_keys!6175 thiss!1504)) (index!5366 lt!111569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!218482 () Bool)

(assert (=> b!218482 (= e!142123 (not call!20392))))

(declare-fun b!218483 () Bool)

(assert (=> b!218483 (= e!142132 (and e!142131 mapRes!9771))))

(declare-fun condMapEmpty!9771 () Bool)

(declare-fun mapDefault!9771 () ValueCell!2526)

(assert (=> b!218483 (= condMapEmpty!9771 (= (arr!5079 (_values!4109 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2526)) mapDefault!9771)))))

(declare-fun b!218484 () Bool)

(declare-fun res!107131 () Bool)

(assert (=> b!218484 (= res!107131 (= (select (arr!5080 (_keys!6175 thiss!1504)) (index!5369 lt!111569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218484 (=> (not res!107131) (not e!142134))))

(declare-fun b!218470 () Bool)

(assert (=> b!218470 (= e!142126 ((_ is Undefined!799) lt!111569))))

(declare-fun res!107130 () Bool)

(assert (=> start!21740 (=> (not res!107130) (not e!142130))))

(declare-fun valid!1187 (LongMapFixedSize!2952) Bool)

(assert (=> start!21740 (= res!107130 (valid!1187 thiss!1504))))

(assert (=> start!21740 e!142130))

(assert (=> start!21740 e!142129))

(assert (=> start!21740 true))

(assert (= (and start!21740 res!107130) b!218469))

(assert (= (and b!218469 res!107133) b!218472))

(assert (= (and b!218472 res!107127) b!218476))

(assert (= (and b!218476 c!36327) b!218475))

(assert (= (and b!218476 (not c!36327)) b!218468))

(assert (= (and b!218468 c!36326) b!218471))

(assert (= (and b!218468 (not c!36326)) b!218473))

(assert (= (and b!218471 res!107128) b!218481))

(assert (= (and b!218481 res!107132) b!218482))

(assert (= (and b!218473 c!36328) b!218479))

(assert (= (and b!218473 (not c!36328)) b!218470))

(assert (= (and b!218479 res!107129) b!218484))

(assert (= (and b!218484 res!107131) b!218480))

(assert (= (or b!218471 b!218479) bm!20388))

(assert (= (or b!218482 b!218480) bm!20389))

(assert (= (and b!218483 condMapEmpty!9771) mapIsEmpty!9771))

(assert (= (and b!218483 (not condMapEmpty!9771)) mapNonEmpty!9771))

(assert (= (and mapNonEmpty!9771 ((_ is ValueCellFull!2526) mapValue!9771)) b!218478))

(assert (= (and b!218483 ((_ is ValueCellFull!2526) mapDefault!9771)) b!218477))

(assert (= b!218474 b!218483))

(assert (= start!21740 b!218474))

(declare-fun m!244373 () Bool)

(assert (=> b!218484 m!244373))

(declare-fun m!244375 () Bool)

(assert (=> b!218472 m!244375))

(declare-fun m!244377 () Bool)

(assert (=> bm!20389 m!244377))

(declare-fun m!244379 () Bool)

(assert (=> bm!20388 m!244379))

(declare-fun m!244381 () Bool)

(assert (=> b!218474 m!244381))

(declare-fun m!244383 () Bool)

(assert (=> b!218474 m!244383))

(declare-fun m!244385 () Bool)

(assert (=> start!21740 m!244385))

(declare-fun m!244387 () Bool)

(assert (=> b!218481 m!244387))

(declare-fun m!244389 () Bool)

(assert (=> b!218475 m!244389))

(declare-fun m!244391 () Bool)

(assert (=> b!218476 m!244391))

(assert (=> b!218476 m!244391))

(declare-fun m!244393 () Bool)

(assert (=> b!218476 m!244393))

(declare-fun m!244395 () Bool)

(assert (=> b!218468 m!244395))

(declare-fun m!244397 () Bool)

(assert (=> mapNonEmpty!9771 m!244397))

(check-sat tp_is_empty!5739 (not bm!20389) (not b!218475) (not b_next!5877) (not start!21740) (not b!218468) (not b!218474) (not b!218476) (not bm!20388) b_and!12785 (not mapNonEmpty!9771) (not b!218472))
(check-sat b_and!12785 (not b_next!5877))
