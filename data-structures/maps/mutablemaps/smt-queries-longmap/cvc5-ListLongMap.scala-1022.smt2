; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21744 () Bool)

(assert start!21744)

(declare-fun b!218580 () Bool)

(declare-fun b_free!5881 () Bool)

(declare-fun b_next!5881 () Bool)

(assert (=> b!218580 (= b_free!5881 (not b_next!5881))))

(declare-fun tp!20778 () Bool)

(declare-fun b_and!12789 () Bool)

(assert (=> b!218580 (= tp!20778 b_and!12789)))

(declare-fun b!218572 () Bool)

(declare-fun e!142203 () Bool)

(declare-fun tp_is_empty!5743 () Bool)

(assert (=> b!218572 (= e!142203 tp_is_empty!5743)))

(declare-fun b!218573 () Bool)

(declare-fun res!107171 () Bool)

(declare-fun e!142200 () Bool)

(assert (=> b!218573 (=> (not res!107171) (not e!142200))))

(declare-fun call!20403 () Bool)

(assert (=> b!218573 (= res!107171 call!20403)))

(declare-fun e!142207 () Bool)

(assert (=> b!218573 (= e!142207 e!142200)))

(declare-fun b!218574 () Bool)

(declare-fun e!142204 () Bool)

(declare-fun e!142209 () Bool)

(assert (=> b!218574 (= e!142204 e!142209)))

(declare-fun res!107172 () Bool)

(assert (=> b!218574 (= res!107172 call!20403)))

(assert (=> b!218574 (=> (not res!107172) (not e!142209))))

(declare-fun b!218575 () Bool)

(declare-fun e!142201 () Bool)

(assert (=> b!218575 (= e!142201 tp_is_empty!5743)))

(declare-fun b!218576 () Bool)

(declare-fun call!20404 () Bool)

(assert (=> b!218576 (= e!142209 (not call!20404))))

(declare-fun mapIsEmpty!9777 () Bool)

(declare-fun mapRes!9777 () Bool)

(assert (=> mapIsEmpty!9777 mapRes!9777))

(declare-fun b!218577 () Bool)

(assert (=> b!218577 (= e!142200 (not call!20404))))

(declare-fun b!218578 () Bool)

(declare-fun e!142199 () Bool)

(declare-datatypes ((V!7305 0))(
  ( (V!7306 (val!2916 Int)) )
))
(declare-datatypes ((ValueCell!2528 0))(
  ( (ValueCellFull!2528 (v!4930 V!7305)) (EmptyCell!2528) )
))
(declare-datatypes ((array!10724 0))(
  ( (array!10725 (arr!5083 (Array (_ BitVec 32) ValueCell!2528)) (size!5415 (_ BitVec 32))) )
))
(declare-datatypes ((array!10726 0))(
  ( (array!10727 (arr!5084 (Array (_ BitVec 32) (_ BitVec 64))) (size!5416 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2956 0))(
  ( (LongMapFixedSize!2957 (defaultEntry!4128 Int) (mask!9907 (_ BitVec 32)) (extraKeys!3865 (_ BitVec 32)) (zeroValue!3969 V!7305) (minValue!3969 V!7305) (_size!1527 (_ BitVec 32)) (_keys!6177 array!10726) (_values!4111 array!10724) (_vacant!1527 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2956)

(assert (=> b!218578 (= e!142199 (bvsge #b00000000000000000000000000000000 (size!5416 (_keys!6177 thiss!1504))))))

(declare-fun mapNonEmpty!9777 () Bool)

(declare-fun tp!20777 () Bool)

(assert (=> mapNonEmpty!9777 (= mapRes!9777 (and tp!20777 e!142203))))

(declare-fun mapValue!9777 () ValueCell!2528)

(declare-fun mapRest!9777 () (Array (_ BitVec 32) ValueCell!2528))

(declare-fun mapKey!9777 () (_ BitVec 32))

(assert (=> mapNonEmpty!9777 (= (arr!5083 (_values!4111 thiss!1504)) (store mapRest!9777 mapKey!9777 mapValue!9777))))

(declare-fun b!218579 () Bool)

(declare-fun e!142205 () Bool)

(declare-fun e!142202 () Bool)

(assert (=> b!218579 (= e!142205 e!142202)))

(declare-fun res!107174 () Bool)

(assert (=> b!218579 (=> (not res!107174) (not e!142202))))

(declare-datatypes ((SeekEntryResult!801 0))(
  ( (MissingZero!801 (index!5374 (_ BitVec 32))) (Found!801 (index!5375 (_ BitVec 32))) (Intermediate!801 (undefined!1613 Bool) (index!5376 (_ BitVec 32)) (x!22865 (_ BitVec 32))) (Undefined!801) (MissingVacant!801 (index!5377 (_ BitVec 32))) )
))
(declare-fun lt!111593 () SeekEntryResult!801)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!218579 (= res!107174 (or (= lt!111593 (MissingZero!801 index!297)) (= lt!111593 (MissingVacant!801 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10726 (_ BitVec 32)) SeekEntryResult!801)

(assert (=> b!218579 (= lt!111593 (seekEntryOrOpen!0 key!932 (_keys!6177 thiss!1504) (mask!9907 thiss!1504)))))

(declare-fun e!142208 () Bool)

(declare-fun e!142198 () Bool)

(declare-fun array_inv!3355 (array!10726) Bool)

(declare-fun array_inv!3356 (array!10724) Bool)

(assert (=> b!218580 (= e!142208 (and tp!20778 tp_is_empty!5743 (array_inv!3355 (_keys!6177 thiss!1504)) (array_inv!3356 (_values!4111 thiss!1504)) e!142198))))

(declare-fun b!218581 () Bool)

(assert (=> b!218581 (= e!142202 e!142199)))

(declare-fun res!107175 () Bool)

(assert (=> b!218581 (=> (not res!107175) (not e!142199))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!218581 (= res!107175 (inRange!0 index!297 (mask!9907 thiss!1504)))))

(declare-datatypes ((Unit!6512 0))(
  ( (Unit!6513) )
))
(declare-fun lt!111592 () Unit!6512)

(declare-fun e!142197 () Unit!6512)

(assert (=> b!218581 (= lt!111592 e!142197)))

(declare-fun c!36344 () Bool)

(declare-datatypes ((tuple2!4326 0))(
  ( (tuple2!4327 (_1!2173 (_ BitVec 64)) (_2!2173 V!7305)) )
))
(declare-datatypes ((List!3254 0))(
  ( (Nil!3251) (Cons!3250 (h!3897 tuple2!4326) (t!8217 List!3254)) )
))
(declare-datatypes ((ListLongMap!3253 0))(
  ( (ListLongMap!3254 (toList!1642 List!3254)) )
))
(declare-fun contains!1477 (ListLongMap!3253 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1165 (array!10726 array!10724 (_ BitVec 32) (_ BitVec 32) V!7305 V!7305 (_ BitVec 32) Int) ListLongMap!3253)

(assert (=> b!218581 (= c!36344 (contains!1477 (getCurrentListMap!1165 (_keys!6177 thiss!1504) (_values!4111 thiss!1504) (mask!9907 thiss!1504) (extraKeys!3865 thiss!1504) (zeroValue!3969 thiss!1504) (minValue!3969 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4128 thiss!1504)) key!932))))

(declare-fun b!218582 () Bool)

(declare-fun res!107178 () Bool)

(assert (=> b!218582 (=> (not res!107178) (not e!142200))))

(assert (=> b!218582 (= res!107178 (= (select (arr!5084 (_keys!6177 thiss!1504)) (index!5374 lt!111593)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20401 () Bool)

(declare-fun c!36345 () Bool)

(assert (=> bm!20401 (= call!20403 (inRange!0 (ite c!36345 (index!5374 lt!111593) (index!5377 lt!111593)) (mask!9907 thiss!1504)))))

(declare-fun b!218583 () Bool)

(declare-fun lt!111594 () Unit!6512)

(assert (=> b!218583 (= e!142197 lt!111594)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!199 (array!10726 array!10724 (_ BitVec 32) (_ BitVec 32) V!7305 V!7305 (_ BitVec 64) Int) Unit!6512)

(assert (=> b!218583 (= lt!111594 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!199 (_keys!6177 thiss!1504) (_values!4111 thiss!1504) (mask!9907 thiss!1504) (extraKeys!3865 thiss!1504) (zeroValue!3969 thiss!1504) (minValue!3969 thiss!1504) key!932 (defaultEntry!4128 thiss!1504)))))

(assert (=> b!218583 (= c!36345 (is-MissingZero!801 lt!111593))))

(assert (=> b!218583 e!142207))

(declare-fun b!218584 () Bool)

(declare-fun Unit!6514 () Unit!6512)

(assert (=> b!218584 (= e!142197 Unit!6514)))

(declare-fun lt!111595 () Unit!6512)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!189 (array!10726 array!10724 (_ BitVec 32) (_ BitVec 32) V!7305 V!7305 (_ BitVec 64) Int) Unit!6512)

(assert (=> b!218584 (= lt!111595 (lemmaInListMapThenSeekEntryOrOpenFindsIt!189 (_keys!6177 thiss!1504) (_values!4111 thiss!1504) (mask!9907 thiss!1504) (extraKeys!3865 thiss!1504) (zeroValue!3969 thiss!1504) (minValue!3969 thiss!1504) key!932 (defaultEntry!4128 thiss!1504)))))

(assert (=> b!218584 false))

(declare-fun b!218585 () Bool)

(declare-fun res!107173 () Bool)

(assert (=> b!218585 (=> (not res!107173) (not e!142205))))

(assert (=> b!218585 (= res!107173 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!107177 () Bool)

(assert (=> start!21744 (=> (not res!107177) (not e!142205))))

(declare-fun valid!1188 (LongMapFixedSize!2956) Bool)

(assert (=> start!21744 (= res!107177 (valid!1188 thiss!1504))))

(assert (=> start!21744 e!142205))

(assert (=> start!21744 e!142208))

(assert (=> start!21744 true))

(declare-fun bm!20400 () Bool)

(declare-fun arrayContainsKey!0 (array!10726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20400 (= call!20404 (arrayContainsKey!0 (_keys!6177 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!218586 () Bool)

(declare-fun res!107176 () Bool)

(assert (=> b!218586 (= res!107176 (= (select (arr!5084 (_keys!6177 thiss!1504)) (index!5377 lt!111593)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!218586 (=> (not res!107176) (not e!142209))))

(declare-fun b!218587 () Bool)

(assert (=> b!218587 (= e!142198 (and e!142201 mapRes!9777))))

(declare-fun condMapEmpty!9777 () Bool)

(declare-fun mapDefault!9777 () ValueCell!2528)

