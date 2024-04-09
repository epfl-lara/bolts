; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22936 () Bool)

(assert start!22936)

(declare-fun b!239145 () Bool)

(declare-fun b_free!6427 () Bool)

(declare-fun b_next!6427 () Bool)

(assert (=> b!239145 (= b_free!6427 (not b_next!6427))))

(declare-fun tp!22485 () Bool)

(declare-fun b_and!13411 () Bool)

(assert (=> b!239145 (= tp!22485 b_and!13411)))

(declare-fun b!239136 () Bool)

(declare-fun res!117214 () Bool)

(declare-fun e!155277 () Bool)

(assert (=> b!239136 (=> (not res!117214) (not e!155277))))

(declare-fun call!22239 () Bool)

(assert (=> b!239136 (= res!117214 call!22239)))

(declare-fun e!155285 () Bool)

(assert (=> b!239136 (= e!155285 e!155277)))

(declare-fun b!239137 () Bool)

(declare-fun e!155276 () Bool)

(declare-fun e!155282 () Bool)

(assert (=> b!239137 (= e!155276 e!155282)))

(declare-fun res!117220 () Bool)

(assert (=> b!239137 (=> (not res!117220) (not e!155282))))

(declare-datatypes ((SeekEntryResult!1039 0))(
  ( (MissingZero!1039 (index!6326 (_ BitVec 32))) (Found!1039 (index!6327 (_ BitVec 32))) (Intermediate!1039 (undefined!1851 Bool) (index!6328 (_ BitVec 32)) (x!24103 (_ BitVec 32))) (Undefined!1039) (MissingVacant!1039 (index!6329 (_ BitVec 32))) )
))
(declare-fun lt!120761 () SeekEntryResult!1039)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239137 (= res!117220 (or (= lt!120761 (MissingZero!1039 index!297)) (= lt!120761 (MissingVacant!1039 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8033 0))(
  ( (V!8034 (val!3189 Int)) )
))
(declare-datatypes ((ValueCell!2801 0))(
  ( (ValueCellFull!2801 (v!5223 V!8033)) (EmptyCell!2801) )
))
(declare-datatypes ((array!11856 0))(
  ( (array!11857 (arr!5629 (Array (_ BitVec 32) ValueCell!2801)) (size!5970 (_ BitVec 32))) )
))
(declare-datatypes ((array!11858 0))(
  ( (array!11859 (arr!5630 (Array (_ BitVec 32) (_ BitVec 64))) (size!5971 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3502 0))(
  ( (LongMapFixedSize!3503 (defaultEntry!4436 Int) (mask!10480 (_ BitVec 32)) (extraKeys!4173 (_ BitVec 32)) (zeroValue!4277 V!8033) (minValue!4277 V!8033) (_size!1800 (_ BitVec 32)) (_keys!6538 array!11858) (_values!4419 array!11856) (_vacant!1800 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3502)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11858 (_ BitVec 32)) SeekEntryResult!1039)

(assert (=> b!239137 (= lt!120761 (seekEntryOrOpen!0 key!932 (_keys!6538 thiss!1504) (mask!10480 thiss!1504)))))

(declare-fun mapIsEmpty!10665 () Bool)

(declare-fun mapRes!10665 () Bool)

(assert (=> mapIsEmpty!10665 mapRes!10665))

(declare-fun b!239138 () Bool)

(declare-fun e!155275 () Bool)

(assert (=> b!239138 (= e!155275 (and (= (size!5970 (_values!4419 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10480 thiss!1504))) (= (size!5971 (_keys!6538 thiss!1504)) (size!5970 (_values!4419 thiss!1504))) (bvslt (mask!10480 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!239139 () Bool)

(declare-datatypes ((Unit!7339 0))(
  ( (Unit!7340) )
))
(declare-fun e!155281 () Unit!7339)

(declare-fun lt!120763 () Unit!7339)

(assert (=> b!239139 (= e!155281 lt!120763)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!338 (array!11858 array!11856 (_ BitVec 32) (_ BitVec 32) V!8033 V!8033 (_ BitVec 64) Int) Unit!7339)

(assert (=> b!239139 (= lt!120763 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!338 (_keys!6538 thiss!1504) (_values!4419 thiss!1504) (mask!10480 thiss!1504) (extraKeys!4173 thiss!1504) (zeroValue!4277 thiss!1504) (minValue!4277 thiss!1504) key!932 (defaultEntry!4436 thiss!1504)))))

(declare-fun c!39855 () Bool)

(assert (=> b!239139 (= c!39855 (is-MissingZero!1039 lt!120761))))

(assert (=> b!239139 e!155285))

(declare-fun b!239140 () Bool)

(declare-fun c!39856 () Bool)

(assert (=> b!239140 (= c!39856 (is-MissingVacant!1039 lt!120761))))

(declare-fun e!155279 () Bool)

(assert (=> b!239140 (= e!155285 e!155279)))

(declare-fun b!239141 () Bool)

(declare-fun e!155274 () Bool)

(declare-fun tp_is_empty!6289 () Bool)

(assert (=> b!239141 (= e!155274 tp_is_empty!6289)))

(declare-fun res!117213 () Bool)

(assert (=> start!22936 (=> (not res!117213) (not e!155276))))

(declare-fun valid!1373 (LongMapFixedSize!3502) Bool)

(assert (=> start!22936 (= res!117213 (valid!1373 thiss!1504))))

(assert (=> start!22936 e!155276))

(declare-fun e!155278 () Bool)

(assert (=> start!22936 e!155278))

(assert (=> start!22936 true))

(declare-fun b!239142 () Bool)

(declare-fun res!117212 () Bool)

(assert (=> b!239142 (= res!117212 (= (select (arr!5630 (_keys!6538 thiss!1504)) (index!6329 lt!120761)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155283 () Bool)

(assert (=> b!239142 (=> (not res!117212) (not e!155283))))

(declare-fun b!239143 () Bool)

(assert (=> b!239143 (= e!155282 e!155275)))

(declare-fun res!117217 () Bool)

(assert (=> b!239143 (=> (not res!117217) (not e!155275))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239143 (= res!117217 (inRange!0 index!297 (mask!10480 thiss!1504)))))

(declare-fun lt!120762 () Unit!7339)

(assert (=> b!239143 (= lt!120762 e!155281)))

(declare-fun c!39854 () Bool)

(declare-datatypes ((tuple2!4696 0))(
  ( (tuple2!4697 (_1!2358 (_ BitVec 64)) (_2!2358 V!8033)) )
))
(declare-datatypes ((List!3612 0))(
  ( (Nil!3609) (Cons!3608 (h!4264 tuple2!4696) (t!8615 List!3612)) )
))
(declare-datatypes ((ListLongMap!3623 0))(
  ( (ListLongMap!3624 (toList!1827 List!3612)) )
))
(declare-fun contains!1709 (ListLongMap!3623 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1350 (array!11858 array!11856 (_ BitVec 32) (_ BitVec 32) V!8033 V!8033 (_ BitVec 32) Int) ListLongMap!3623)

(assert (=> b!239143 (= c!39854 (contains!1709 (getCurrentListMap!1350 (_keys!6538 thiss!1504) (_values!4419 thiss!1504) (mask!10480 thiss!1504) (extraKeys!4173 thiss!1504) (zeroValue!4277 thiss!1504) (minValue!4277 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4436 thiss!1504)) key!932))))

(declare-fun bm!22236 () Bool)

(declare-fun call!22240 () Bool)

(declare-fun arrayContainsKey!0 (array!11858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22236 (= call!22240 (arrayContainsKey!0 (_keys!6538 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239144 () Bool)

(declare-fun res!117221 () Bool)

(assert (=> b!239144 (=> (not res!117221) (not e!155276))))

(assert (=> b!239144 (= res!117221 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!155284 () Bool)

(declare-fun array_inv!3715 (array!11858) Bool)

(declare-fun array_inv!3716 (array!11856) Bool)

(assert (=> b!239145 (= e!155278 (and tp!22485 tp_is_empty!6289 (array_inv!3715 (_keys!6538 thiss!1504)) (array_inv!3716 (_values!4419 thiss!1504)) e!155284))))

(declare-fun b!239146 () Bool)

(assert (=> b!239146 (= e!155279 (is-Undefined!1039 lt!120761))))

(declare-fun mapNonEmpty!10665 () Bool)

(declare-fun tp!22484 () Bool)

(declare-fun e!155280 () Bool)

(assert (=> mapNonEmpty!10665 (= mapRes!10665 (and tp!22484 e!155280))))

(declare-fun mapKey!10665 () (_ BitVec 32))

(declare-fun mapValue!10665 () ValueCell!2801)

(declare-fun mapRest!10665 () (Array (_ BitVec 32) ValueCell!2801))

(assert (=> mapNonEmpty!10665 (= (arr!5629 (_values!4419 thiss!1504)) (store mapRest!10665 mapKey!10665 mapValue!10665))))

(declare-fun b!239147 () Bool)

(assert (=> b!239147 (= e!155277 (not call!22240))))

(declare-fun b!239148 () Bool)

(declare-fun res!117218 () Bool)

(assert (=> b!239148 (=> (not res!117218) (not e!155277))))

(assert (=> b!239148 (= res!117218 (= (select (arr!5630 (_keys!6538 thiss!1504)) (index!6326 lt!120761)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239149 () Bool)

(declare-fun res!117219 () Bool)

(assert (=> b!239149 (=> (not res!117219) (not e!155275))))

(assert (=> b!239149 (= res!117219 (arrayContainsKey!0 (_keys!6538 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239150 () Bool)

(assert (=> b!239150 (= e!155279 e!155283)))

(declare-fun res!117215 () Bool)

(assert (=> b!239150 (= res!117215 call!22239)))

(assert (=> b!239150 (=> (not res!117215) (not e!155283))))

(declare-fun b!239151 () Bool)

(assert (=> b!239151 (= e!155283 (not call!22240))))

(declare-fun b!239152 () Bool)

(assert (=> b!239152 (= e!155280 tp_is_empty!6289)))

(declare-fun bm!22237 () Bool)

(assert (=> bm!22237 (= call!22239 (inRange!0 (ite c!39855 (index!6326 lt!120761) (index!6329 lt!120761)) (mask!10480 thiss!1504)))))

(declare-fun b!239153 () Bool)

(assert (=> b!239153 (= e!155284 (and e!155274 mapRes!10665))))

(declare-fun condMapEmpty!10665 () Bool)

(declare-fun mapDefault!10665 () ValueCell!2801)

