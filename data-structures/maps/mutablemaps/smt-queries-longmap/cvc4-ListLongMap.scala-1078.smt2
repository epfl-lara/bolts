; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22166 () Bool)

(assert start!22166)

(declare-fun b!231263 () Bool)

(declare-fun b_free!6221 () Bool)

(declare-fun b_next!6221 () Bool)

(assert (=> b!231263 (= b_free!6221 (not b_next!6221))))

(declare-fun tp!21804 () Bool)

(declare-fun b_and!13137 () Bool)

(assert (=> b!231263 (= tp!21804 b_and!13137)))

(declare-fun b!231256 () Bool)

(declare-fun res!113677 () Bool)

(declare-fun e!150130 () Bool)

(assert (=> b!231256 (=> (not res!113677) (not e!150130))))

(declare-datatypes ((V!7757 0))(
  ( (V!7758 (val!3086 Int)) )
))
(declare-datatypes ((ValueCell!2698 0))(
  ( (ValueCellFull!2698 (v!5102 V!7757)) (EmptyCell!2698) )
))
(declare-datatypes ((array!11408 0))(
  ( (array!11409 (arr!5423 (Array (_ BitVec 32) ValueCell!2698)) (size!5756 (_ BitVec 32))) )
))
(declare-datatypes ((array!11410 0))(
  ( (array!11411 (arr!5424 (Array (_ BitVec 32) (_ BitVec 64))) (size!5757 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3296 0))(
  ( (LongMapFixedSize!3297 (defaultEntry!4307 Int) (mask!10207 (_ BitVec 32)) (extraKeys!4044 (_ BitVec 32)) (zeroValue!4148 V!7757) (minValue!4148 V!7757) (_size!1697 (_ BitVec 32)) (_keys!6361 array!11410) (_values!4290 array!11408) (_vacant!1697 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3296)

(declare-datatypes ((SeekEntryResult!960 0))(
  ( (MissingZero!960 (index!6010 (_ BitVec 32))) (Found!960 (index!6011 (_ BitVec 32))) (Intermediate!960 (undefined!1772 Bool) (index!6012 (_ BitVec 32)) (x!23500 (_ BitVec 32))) (Undefined!960) (MissingVacant!960 (index!6013 (_ BitVec 32))) )
))
(declare-fun lt!116601 () SeekEntryResult!960)

(assert (=> b!231256 (= res!113677 (= (select (arr!5424 (_keys!6361 thiss!1504)) (index!6010 lt!116601)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!10294 () Bool)

(declare-fun mapRes!10294 () Bool)

(assert (=> mapIsEmpty!10294 mapRes!10294))

(declare-fun b!231257 () Bool)

(declare-datatypes ((Unit!7110 0))(
  ( (Unit!7111) )
))
(declare-fun e!150137 () Unit!7110)

(declare-fun Unit!7112 () Unit!7110)

(assert (=> b!231257 (= e!150137 Unit!7112)))

(declare-fun lt!116600 () Unit!7110)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!134 (array!11410 array!11408 (_ BitVec 32) (_ BitVec 32) V!7757 V!7757 (_ BitVec 64) (_ BitVec 32) Int) Unit!7110)

(assert (=> b!231257 (= lt!116600 (lemmaArrayContainsKeyThenInListMap!134 (_keys!6361 thiss!1504) (_values!4290 thiss!1504) (mask!10207 thiss!1504) (extraKeys!4044 thiss!1504) (zeroValue!4148 thiss!1504) (minValue!4148 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4307 thiss!1504)))))

(assert (=> b!231257 false))

(declare-fun b!231258 () Bool)

(declare-fun c!38405 () Bool)

(assert (=> b!231258 (= c!38405 (is-MissingVacant!960 lt!116601))))

(declare-fun e!150139 () Bool)

(declare-fun e!150133 () Bool)

(assert (=> b!231258 (= e!150139 e!150133)))

(declare-fun b!231260 () Bool)

(declare-fun res!113683 () Bool)

(assert (=> b!231260 (=> (not res!113683) (not e!150130))))

(declare-fun call!21496 () Bool)

(assert (=> b!231260 (= res!113683 call!21496)))

(assert (=> b!231260 (= e!150139 e!150130)))

(declare-fun b!231261 () Bool)

(declare-fun res!113678 () Bool)

(declare-fun e!150134 () Bool)

(assert (=> b!231261 (=> (not res!113678) (not e!150134))))

(assert (=> b!231261 (= res!113678 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231262 () Bool)

(declare-fun e!150131 () Bool)

(declare-fun call!21495 () Bool)

(assert (=> b!231262 (= e!150131 (not call!21495))))

(declare-fun e!150138 () Bool)

(declare-fun e!150129 () Bool)

(declare-fun tp_is_empty!6083 () Bool)

(declare-fun array_inv!3569 (array!11410) Bool)

(declare-fun array_inv!3570 (array!11408) Bool)

(assert (=> b!231263 (= e!150129 (and tp!21804 tp_is_empty!6083 (array_inv!3569 (_keys!6361 thiss!1504)) (array_inv!3570 (_values!4290 thiss!1504)) e!150138))))

(declare-fun bm!21492 () Bool)

(declare-fun c!38403 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21492 (= call!21496 (inRange!0 (ite c!38403 (index!6010 lt!116601) (index!6013 lt!116601)) (mask!10207 thiss!1504)))))

(declare-fun mapNonEmpty!10294 () Bool)

(declare-fun tp!21805 () Bool)

(declare-fun e!150132 () Bool)

(assert (=> mapNonEmpty!10294 (= mapRes!10294 (and tp!21805 e!150132))))

(declare-fun mapValue!10294 () ValueCell!2698)

(declare-fun mapRest!10294 () (Array (_ BitVec 32) ValueCell!2698))

(declare-fun mapKey!10294 () (_ BitVec 32))

(assert (=> mapNonEmpty!10294 (= (arr!5423 (_values!4290 thiss!1504)) (store mapRest!10294 mapKey!10294 mapValue!10294))))

(declare-fun b!231264 () Bool)

(declare-fun e!150136 () Unit!7110)

(declare-fun lt!116598 () Unit!7110)

(assert (=> b!231264 (= e!150136 lt!116598)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!315 (array!11410 array!11408 (_ BitVec 32) (_ BitVec 32) V!7757 V!7757 (_ BitVec 64) Int) Unit!7110)

(assert (=> b!231264 (= lt!116598 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!315 (_keys!6361 thiss!1504) (_values!4290 thiss!1504) (mask!10207 thiss!1504) (extraKeys!4044 thiss!1504) (zeroValue!4148 thiss!1504) (minValue!4148 thiss!1504) key!932 (defaultEntry!4307 thiss!1504)))))

(assert (=> b!231264 (= c!38403 (is-MissingZero!960 lt!116601))))

(assert (=> b!231264 e!150139))

(declare-fun b!231265 () Bool)

(declare-fun e!150126 () Bool)

(declare-fun e!150128 () Bool)

(assert (=> b!231265 (= e!150126 e!150128)))

(declare-fun res!113681 () Bool)

(assert (=> b!231265 (=> (not res!113681) (not e!150128))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231265 (= res!113681 (inRange!0 index!297 (mask!10207 thiss!1504)))))

(declare-fun lt!116597 () Unit!7110)

(assert (=> b!231265 (= lt!116597 e!150136)))

(declare-fun c!38402 () Bool)

(declare-datatypes ((tuple2!4550 0))(
  ( (tuple2!4551 (_1!2285 (_ BitVec 64)) (_2!2285 V!7757)) )
))
(declare-datatypes ((List!3494 0))(
  ( (Nil!3491) (Cons!3490 (h!4138 tuple2!4550) (t!8461 List!3494)) )
))
(declare-datatypes ((ListLongMap!3477 0))(
  ( (ListLongMap!3478 (toList!1754 List!3494)) )
))
(declare-fun lt!116591 () ListLongMap!3477)

(declare-fun contains!1619 (ListLongMap!3477 (_ BitVec 64)) Bool)

(assert (=> b!231265 (= c!38402 (contains!1619 lt!116591 key!932))))

(declare-fun getCurrentListMap!1277 (array!11410 array!11408 (_ BitVec 32) (_ BitVec 32) V!7757 V!7757 (_ BitVec 32) Int) ListLongMap!3477)

(assert (=> b!231265 (= lt!116591 (getCurrentListMap!1277 (_keys!6361 thiss!1504) (_values!4290 thiss!1504) (mask!10207 thiss!1504) (extraKeys!4044 thiss!1504) (zeroValue!4148 thiss!1504) (minValue!4148 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4307 thiss!1504)))))

(declare-fun bm!21493 () Bool)

(declare-fun arrayContainsKey!0 (array!11410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21493 (= call!21495 (arrayContainsKey!0 (_keys!6361 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231266 () Bool)

(declare-fun e!150135 () Bool)

(assert (=> b!231266 (= e!150135 tp_is_empty!6083)))

(declare-fun b!231267 () Bool)

(assert (=> b!231267 (= e!150138 (and e!150135 mapRes!10294))))

(declare-fun condMapEmpty!10294 () Bool)

(declare-fun mapDefault!10294 () ValueCell!2698)

