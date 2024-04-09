; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22598 () Bool)

(assert start!22598)

(declare-fun b!236094 () Bool)

(declare-fun b_free!6357 () Bool)

(declare-fun b_next!6357 () Bool)

(assert (=> b!236094 (= b_free!6357 (not b_next!6357))))

(declare-fun tp!22246 () Bool)

(declare-fun b_and!13309 () Bool)

(assert (=> b!236094 (= tp!22246 b_and!13309)))

(declare-fun mapIsEmpty!10532 () Bool)

(declare-fun mapRes!10532 () Bool)

(assert (=> mapIsEmpty!10532 mapRes!10532))

(declare-fun res!115800 () Bool)

(declare-fun e!153348 () Bool)

(assert (=> start!22598 (=> (not res!115800) (not e!153348))))

(declare-datatypes ((V!7939 0))(
  ( (V!7940 (val!3154 Int)) )
))
(declare-datatypes ((ValueCell!2766 0))(
  ( (ValueCellFull!2766 (v!5180 V!7939)) (EmptyCell!2766) )
))
(declare-datatypes ((array!11700 0))(
  ( (array!11701 (arr!5559 (Array (_ BitVec 32) ValueCell!2766)) (size!5896 (_ BitVec 32))) )
))
(declare-datatypes ((array!11702 0))(
  ( (array!11703 (arr!5560 (Array (_ BitVec 32) (_ BitVec 64))) (size!5897 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3432 0))(
  ( (LongMapFixedSize!3433 (defaultEntry!4389 Int) (mask!10374 (_ BitVec 32)) (extraKeys!4126 (_ BitVec 32)) (zeroValue!4230 V!7939) (minValue!4230 V!7939) (_size!1765 (_ BitVec 32)) (_keys!6468 array!11702) (_values!4372 array!11700) (_vacant!1765 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3432)

(declare-fun valid!1347 (LongMapFixedSize!3432) Bool)

(assert (=> start!22598 (= res!115800 (valid!1347 thiss!1504))))

(assert (=> start!22598 e!153348))

(declare-fun e!153350 () Bool)

(assert (=> start!22598 e!153350))

(assert (=> start!22598 true))

(declare-fun b!236087 () Bool)

(declare-fun e!153349 () Bool)

(declare-fun tp_is_empty!6219 () Bool)

(assert (=> b!236087 (= e!153349 tp_is_empty!6219)))

(declare-fun b!236088 () Bool)

(declare-fun res!115799 () Bool)

(declare-fun e!153347 () Bool)

(assert (=> b!236088 (=> (not res!115799) (not e!153347))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4644 0))(
  ( (tuple2!4645 (_1!2332 (_ BitVec 64)) (_2!2332 V!7939)) )
))
(declare-datatypes ((List!3573 0))(
  ( (Nil!3570) (Cons!3569 (h!4221 tuple2!4644) (t!8560 List!3573)) )
))
(declare-datatypes ((ListLongMap!3571 0))(
  ( (ListLongMap!3572 (toList!1801 List!3573)) )
))
(declare-fun contains!1673 (ListLongMap!3571 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1324 (array!11702 array!11700 (_ BitVec 32) (_ BitVec 32) V!7939 V!7939 (_ BitVec 32) Int) ListLongMap!3571)

(assert (=> b!236088 (= res!115799 (not (contains!1673 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)) key!932)))))

(declare-fun b!236089 () Bool)

(assert (=> b!236089 (= e!153348 e!153347)))

(declare-fun res!115803 () Bool)

(assert (=> b!236089 (=> (not res!115803) (not e!153347))))

(declare-datatypes ((SeekEntryResult!1010 0))(
  ( (MissingZero!1010 (index!6210 (_ BitVec 32))) (Found!1010 (index!6211 (_ BitVec 32))) (Intermediate!1010 (undefined!1822 Bool) (index!6212 (_ BitVec 32)) (x!23866 (_ BitVec 32))) (Undefined!1010) (MissingVacant!1010 (index!6213 (_ BitVec 32))) )
))
(declare-fun lt!119396 () SeekEntryResult!1010)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!236089 (= res!115803 (or (= lt!119396 (MissingZero!1010 index!297)) (= lt!119396 (MissingVacant!1010 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11702 (_ BitVec 32)) SeekEntryResult!1010)

(assert (=> b!236089 (= lt!119396 (seekEntryOrOpen!0 key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)))))

(declare-fun b!236090 () Bool)

(assert (=> b!236090 (= e!153347 (not (= (size!5896 (_values!4372 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10374 thiss!1504)))))))

(declare-fun b!236091 () Bool)

(declare-fun e!153345 () Bool)

(assert (=> b!236091 (= e!153345 (and e!153349 mapRes!10532))))

(declare-fun condMapEmpty!10532 () Bool)

(declare-fun mapDefault!10532 () ValueCell!2766)

(assert (=> b!236091 (= condMapEmpty!10532 (= (arr!5559 (_values!4372 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2766)) mapDefault!10532)))))

(declare-fun b!236092 () Bool)

(declare-fun e!153346 () Bool)

(assert (=> b!236092 (= e!153346 tp_is_empty!6219)))

(declare-fun b!236093 () Bool)

(declare-fun res!115802 () Bool)

(assert (=> b!236093 (=> (not res!115802) (not e!153347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!236093 (= res!115802 (validMask!0 (mask!10374 thiss!1504)))))

(declare-fun array_inv!3657 (array!11702) Bool)

(declare-fun array_inv!3658 (array!11700) Bool)

(assert (=> b!236094 (= e!153350 (and tp!22246 tp_is_empty!6219 (array_inv!3657 (_keys!6468 thiss!1504)) (array_inv!3658 (_values!4372 thiss!1504)) e!153345))))

(declare-fun b!236095 () Bool)

(declare-fun res!115801 () Bool)

(assert (=> b!236095 (=> (not res!115801) (not e!153348))))

(assert (=> b!236095 (= res!115801 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10532 () Bool)

(declare-fun tp!22247 () Bool)

(assert (=> mapNonEmpty!10532 (= mapRes!10532 (and tp!22247 e!153346))))

(declare-fun mapKey!10532 () (_ BitVec 32))

(declare-fun mapRest!10532 () (Array (_ BitVec 32) ValueCell!2766))

(declare-fun mapValue!10532 () ValueCell!2766)

(assert (=> mapNonEmpty!10532 (= (arr!5559 (_values!4372 thiss!1504)) (store mapRest!10532 mapKey!10532 mapValue!10532))))

(assert (= (and start!22598 res!115800) b!236095))

(assert (= (and b!236095 res!115801) b!236089))

(assert (= (and b!236089 res!115803) b!236088))

(assert (= (and b!236088 res!115799) b!236093))

(assert (= (and b!236093 res!115802) b!236090))

(assert (= (and b!236091 condMapEmpty!10532) mapIsEmpty!10532))

(assert (= (and b!236091 (not condMapEmpty!10532)) mapNonEmpty!10532))

(get-info :version)

(assert (= (and mapNonEmpty!10532 ((_ is ValueCellFull!2766) mapValue!10532)) b!236092))

(assert (= (and b!236091 ((_ is ValueCellFull!2766) mapDefault!10532)) b!236087))

(assert (= b!236094 b!236091))

(assert (= start!22598 b!236094))

(declare-fun m!257009 () Bool)

(assert (=> start!22598 m!257009))

(declare-fun m!257011 () Bool)

(assert (=> b!236089 m!257011))

(declare-fun m!257013 () Bool)

(assert (=> b!236094 m!257013))

(declare-fun m!257015 () Bool)

(assert (=> b!236094 m!257015))

(declare-fun m!257017 () Bool)

(assert (=> b!236088 m!257017))

(assert (=> b!236088 m!257017))

(declare-fun m!257019 () Bool)

(assert (=> b!236088 m!257019))

(declare-fun m!257021 () Bool)

(assert (=> mapNonEmpty!10532 m!257021))

(declare-fun m!257023 () Bool)

(assert (=> b!236093 m!257023))

(check-sat (not b!236089) tp_is_empty!6219 (not mapNonEmpty!10532) (not b!236094) (not start!22598) (not b_next!6357) (not b!236093) b_and!13309 (not b!236088))
(check-sat b_and!13309 (not b_next!6357))
(get-model)

(declare-fun b!236136 () Bool)

(declare-fun e!153381 () SeekEntryResult!1010)

(declare-fun e!153380 () SeekEntryResult!1010)

(assert (=> b!236136 (= e!153381 e!153380)))

(declare-fun lt!119408 () (_ BitVec 64))

(declare-fun lt!119406 () SeekEntryResult!1010)

(assert (=> b!236136 (= lt!119408 (select (arr!5560 (_keys!6468 thiss!1504)) (index!6212 lt!119406)))))

(declare-fun c!39300 () Bool)

(assert (=> b!236136 (= c!39300 (= lt!119408 key!932))))

(declare-fun b!236137 () Bool)

(declare-fun c!39299 () Bool)

(assert (=> b!236137 (= c!39299 (= lt!119408 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!153379 () SeekEntryResult!1010)

(assert (=> b!236137 (= e!153380 e!153379)))

(declare-fun b!236138 () Bool)

(assert (=> b!236138 (= e!153381 Undefined!1010)))

(declare-fun b!236139 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11702 (_ BitVec 32)) SeekEntryResult!1010)

(assert (=> b!236139 (= e!153379 (seekKeyOrZeroReturnVacant!0 (x!23866 lt!119406) (index!6212 lt!119406) (index!6212 lt!119406) key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)))))

(declare-fun b!236140 () Bool)

(assert (=> b!236140 (= e!153379 (MissingZero!1010 (index!6212 lt!119406)))))

(declare-fun b!236135 () Bool)

(assert (=> b!236135 (= e!153380 (Found!1010 (index!6212 lt!119406)))))

(declare-fun d!59251 () Bool)

(declare-fun lt!119407 () SeekEntryResult!1010)

(assert (=> d!59251 (and (or ((_ is Undefined!1010) lt!119407) (not ((_ is Found!1010) lt!119407)) (and (bvsge (index!6211 lt!119407) #b00000000000000000000000000000000) (bvslt (index!6211 lt!119407) (size!5897 (_keys!6468 thiss!1504))))) (or ((_ is Undefined!1010) lt!119407) ((_ is Found!1010) lt!119407) (not ((_ is MissingZero!1010) lt!119407)) (and (bvsge (index!6210 lt!119407) #b00000000000000000000000000000000) (bvslt (index!6210 lt!119407) (size!5897 (_keys!6468 thiss!1504))))) (or ((_ is Undefined!1010) lt!119407) ((_ is Found!1010) lt!119407) ((_ is MissingZero!1010) lt!119407) (not ((_ is MissingVacant!1010) lt!119407)) (and (bvsge (index!6213 lt!119407) #b00000000000000000000000000000000) (bvslt (index!6213 lt!119407) (size!5897 (_keys!6468 thiss!1504))))) (or ((_ is Undefined!1010) lt!119407) (ite ((_ is Found!1010) lt!119407) (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6211 lt!119407)) key!932) (ite ((_ is MissingZero!1010) lt!119407) (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6210 lt!119407)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1010) lt!119407) (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6213 lt!119407)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59251 (= lt!119407 e!153381)))

(declare-fun c!39298 () Bool)

(assert (=> d!59251 (= c!39298 (and ((_ is Intermediate!1010) lt!119406) (undefined!1822 lt!119406)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11702 (_ BitVec 32)) SeekEntryResult!1010)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59251 (= lt!119406 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10374 thiss!1504)) key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)))))

(assert (=> d!59251 (validMask!0 (mask!10374 thiss!1504))))

(assert (=> d!59251 (= (seekEntryOrOpen!0 key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)) lt!119407)))

(assert (= (and d!59251 c!39298) b!236138))

(assert (= (and d!59251 (not c!39298)) b!236136))

(assert (= (and b!236136 c!39300) b!236135))

(assert (= (and b!236136 (not c!39300)) b!236137))

(assert (= (and b!236137 c!39299) b!236140))

(assert (= (and b!236137 (not c!39299)) b!236139))

(declare-fun m!257041 () Bool)

(assert (=> b!236136 m!257041))

(declare-fun m!257043 () Bool)

(assert (=> b!236139 m!257043))

(declare-fun m!257045 () Bool)

(assert (=> d!59251 m!257045))

(declare-fun m!257047 () Bool)

(assert (=> d!59251 m!257047))

(assert (=> d!59251 m!257045))

(declare-fun m!257049 () Bool)

(assert (=> d!59251 m!257049))

(declare-fun m!257051 () Bool)

(assert (=> d!59251 m!257051))

(assert (=> d!59251 m!257023))

(declare-fun m!257053 () Bool)

(assert (=> d!59251 m!257053))

(assert (=> b!236089 d!59251))

(declare-fun d!59253 () Bool)

(assert (=> d!59253 (= (array_inv!3657 (_keys!6468 thiss!1504)) (bvsge (size!5897 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236094 d!59253))

(declare-fun d!59255 () Bool)

(assert (=> d!59255 (= (array_inv!3658 (_values!4372 thiss!1504)) (bvsge (size!5896 (_values!4372 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236094 d!59255))

(declare-fun d!59257 () Bool)

(declare-fun res!115825 () Bool)

(declare-fun e!153384 () Bool)

(assert (=> d!59257 (=> (not res!115825) (not e!153384))))

(declare-fun simpleValid!235 (LongMapFixedSize!3432) Bool)

(assert (=> d!59257 (= res!115825 (simpleValid!235 thiss!1504))))

(assert (=> d!59257 (= (valid!1347 thiss!1504) e!153384)))

(declare-fun b!236147 () Bool)

(declare-fun res!115826 () Bool)

(assert (=> b!236147 (=> (not res!115826) (not e!153384))))

(declare-fun arrayCountValidKeys!0 (array!11702 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!236147 (= res!115826 (= (arrayCountValidKeys!0 (_keys!6468 thiss!1504) #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))) (_size!1765 thiss!1504)))))

(declare-fun b!236148 () Bool)

(declare-fun res!115827 () Bool)

(assert (=> b!236148 (=> (not res!115827) (not e!153384))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11702 (_ BitVec 32)) Bool)

(assert (=> b!236148 (= res!115827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)))))

(declare-fun b!236149 () Bool)

(declare-datatypes ((List!3575 0))(
  ( (Nil!3572) (Cons!3571 (h!4223 (_ BitVec 64)) (t!8564 List!3575)) )
))
(declare-fun arrayNoDuplicates!0 (array!11702 (_ BitVec 32) List!3575) Bool)

(assert (=> b!236149 (= e!153384 (arrayNoDuplicates!0 (_keys!6468 thiss!1504) #b00000000000000000000000000000000 Nil!3572))))

(assert (= (and d!59257 res!115825) b!236147))

(assert (= (and b!236147 res!115826) b!236148))

(assert (= (and b!236148 res!115827) b!236149))

(declare-fun m!257055 () Bool)

(assert (=> d!59257 m!257055))

(declare-fun m!257057 () Bool)

(assert (=> b!236147 m!257057))

(declare-fun m!257059 () Bool)

(assert (=> b!236148 m!257059))

(declare-fun m!257061 () Bool)

(assert (=> b!236149 m!257061))

(assert (=> start!22598 d!59257))

(declare-fun d!59259 () Bool)

(declare-fun e!153389 () Bool)

(assert (=> d!59259 e!153389))

(declare-fun res!115830 () Bool)

(assert (=> d!59259 (=> res!115830 e!153389)))

(declare-fun lt!119417 () Bool)

(assert (=> d!59259 (= res!115830 (not lt!119417))))

(declare-fun lt!119418 () Bool)

(assert (=> d!59259 (= lt!119417 lt!119418)))

(declare-datatypes ((Unit!7269 0))(
  ( (Unit!7270) )
))
(declare-fun lt!119420 () Unit!7269)

(declare-fun e!153390 () Unit!7269)

(assert (=> d!59259 (= lt!119420 e!153390)))

(declare-fun c!39303 () Bool)

(assert (=> d!59259 (= c!39303 lt!119418)))

(declare-fun containsKey!262 (List!3573 (_ BitVec 64)) Bool)

(assert (=> d!59259 (= lt!119418 (containsKey!262 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932))))

(assert (=> d!59259 (= (contains!1673 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)) key!932) lt!119417)))

(declare-fun b!236156 () Bool)

(declare-fun lt!119419 () Unit!7269)

(assert (=> b!236156 (= e!153390 lt!119419)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!211 (List!3573 (_ BitVec 64)) Unit!7269)

(assert (=> b!236156 (= lt!119419 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932))))

(declare-datatypes ((Option!276 0))(
  ( (Some!275 (v!5182 V!7939)) (None!274) )
))
(declare-fun isDefined!212 (Option!276) Bool)

(declare-fun getValueByKey!270 (List!3573 (_ BitVec 64)) Option!276)

(assert (=> b!236156 (isDefined!212 (getValueByKey!270 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932))))

(declare-fun b!236157 () Bool)

(declare-fun Unit!7271 () Unit!7269)

(assert (=> b!236157 (= e!153390 Unit!7271)))

(declare-fun b!236158 () Bool)

(assert (=> b!236158 (= e!153389 (isDefined!212 (getValueByKey!270 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932)))))

(assert (= (and d!59259 c!39303) b!236156))

(assert (= (and d!59259 (not c!39303)) b!236157))

(assert (= (and d!59259 (not res!115830)) b!236158))

(declare-fun m!257063 () Bool)

(assert (=> d!59259 m!257063))

(declare-fun m!257065 () Bool)

(assert (=> b!236156 m!257065))

(declare-fun m!257067 () Bool)

(assert (=> b!236156 m!257067))

(assert (=> b!236156 m!257067))

(declare-fun m!257069 () Bool)

(assert (=> b!236156 m!257069))

(assert (=> b!236158 m!257067))

(assert (=> b!236158 m!257067))

(assert (=> b!236158 m!257069))

(assert (=> b!236088 d!59259))

(declare-fun b!236201 () Bool)

(declare-fun e!153426 () ListLongMap!3571)

(declare-fun call!21964 () ListLongMap!3571)

(assert (=> b!236201 (= e!153426 call!21964)))

(declare-fun b!236202 () Bool)

(declare-fun e!153423 () Unit!7269)

(declare-fun lt!119466 () Unit!7269)

(assert (=> b!236202 (= e!153423 lt!119466)))

(declare-fun lt!119481 () ListLongMap!3571)

(declare-fun getCurrentListMapNoExtraKeys!532 (array!11702 array!11700 (_ BitVec 32) (_ BitVec 32) V!7939 V!7939 (_ BitVec 32) Int) ListLongMap!3571)

(assert (=> b!236202 (= lt!119481 (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))))

(declare-fun lt!119473 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119473 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119486 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119486 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119472 () Unit!7269)

(declare-fun addStillContains!189 (ListLongMap!3571 (_ BitVec 64) V!7939 (_ BitVec 64)) Unit!7269)

(assert (=> b!236202 (= lt!119472 (addStillContains!189 lt!119481 lt!119473 (zeroValue!4230 thiss!1504) lt!119486))))

(declare-fun +!635 (ListLongMap!3571 tuple2!4644) ListLongMap!3571)

(assert (=> b!236202 (contains!1673 (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))) lt!119486)))

(declare-fun lt!119480 () Unit!7269)

(assert (=> b!236202 (= lt!119480 lt!119472)))

(declare-fun lt!119475 () ListLongMap!3571)

(assert (=> b!236202 (= lt!119475 (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))))

(declare-fun lt!119478 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119478 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119482 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119482 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119483 () Unit!7269)

(declare-fun addApplyDifferent!189 (ListLongMap!3571 (_ BitVec 64) V!7939 (_ BitVec 64)) Unit!7269)

(assert (=> b!236202 (= lt!119483 (addApplyDifferent!189 lt!119475 lt!119478 (minValue!4230 thiss!1504) lt!119482))))

(declare-fun apply!213 (ListLongMap!3571 (_ BitVec 64)) V!7939)

(assert (=> b!236202 (= (apply!213 (+!635 lt!119475 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))) lt!119482) (apply!213 lt!119475 lt!119482))))

(declare-fun lt!119467 () Unit!7269)

(assert (=> b!236202 (= lt!119467 lt!119483)))

(declare-fun lt!119476 () ListLongMap!3571)

(assert (=> b!236202 (= lt!119476 (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))))

(declare-fun lt!119485 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119485 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119468 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119468 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119479 () Unit!7269)

(assert (=> b!236202 (= lt!119479 (addApplyDifferent!189 lt!119476 lt!119485 (zeroValue!4230 thiss!1504) lt!119468))))

(assert (=> b!236202 (= (apply!213 (+!635 lt!119476 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))) lt!119468) (apply!213 lt!119476 lt!119468))))

(declare-fun lt!119470 () Unit!7269)

(assert (=> b!236202 (= lt!119470 lt!119479)))

(declare-fun lt!119469 () ListLongMap!3571)

(assert (=> b!236202 (= lt!119469 (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))))

(declare-fun lt!119474 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119474 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!119471 () (_ BitVec 64))

(assert (=> b!236202 (= lt!119471 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!236202 (= lt!119466 (addApplyDifferent!189 lt!119469 lt!119474 (minValue!4230 thiss!1504) lt!119471))))

(assert (=> b!236202 (= (apply!213 (+!635 lt!119469 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))) lt!119471) (apply!213 lt!119469 lt!119471))))

(declare-fun bm!21961 () Bool)

(declare-fun call!21967 () ListLongMap!3571)

(declare-fun call!21965 () ListLongMap!3571)

(assert (=> bm!21961 (= call!21967 call!21965)))

(declare-fun d!59261 () Bool)

(declare-fun e!153419 () Bool)

(assert (=> d!59261 e!153419))

(declare-fun res!115855 () Bool)

(assert (=> d!59261 (=> (not res!115855) (not e!153419))))

(assert (=> d!59261 (= res!115855 (or (bvsge #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))))

(declare-fun lt!119477 () ListLongMap!3571)

(declare-fun lt!119465 () ListLongMap!3571)

(assert (=> d!59261 (= lt!119477 lt!119465)))

(declare-fun lt!119484 () Unit!7269)

(assert (=> d!59261 (= lt!119484 e!153423)))

(declare-fun c!39317 () Bool)

(declare-fun e!153420 () Bool)

(assert (=> d!59261 (= c!39317 e!153420)))

(declare-fun res!115856 () Bool)

(assert (=> d!59261 (=> (not res!115856) (not e!153420))))

(assert (=> d!59261 (= res!115856 (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun e!153427 () ListLongMap!3571)

(assert (=> d!59261 (= lt!119465 e!153427)))

(declare-fun c!39320 () Bool)

(assert (=> d!59261 (= c!39320 (and (not (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!59261 (validMask!0 (mask!10374 thiss!1504))))

(assert (=> d!59261 (= (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)) lt!119477)))

(declare-fun b!236203 () Bool)

(declare-fun e!153424 () Bool)

(declare-fun e!153417 () Bool)

(assert (=> b!236203 (= e!153424 e!153417)))

(declare-fun res!115853 () Bool)

(declare-fun call!21970 () Bool)

(assert (=> b!236203 (= res!115853 call!21970)))

(assert (=> b!236203 (=> (not res!115853) (not e!153417))))

(declare-fun b!236204 () Bool)

(declare-fun e!153418 () Bool)

(declare-fun e!153429 () Bool)

(assert (=> b!236204 (= e!153418 e!153429)))

(declare-fun res!115849 () Bool)

(assert (=> b!236204 (=> (not res!115849) (not e!153429))))

(assert (=> b!236204 (= res!115849 (contains!1673 lt!119477 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236204 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun b!236205 () Bool)

(declare-fun c!39319 () Bool)

(assert (=> b!236205 (= c!39319 (and (not (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!153422 () ListLongMap!3571)

(assert (=> b!236205 (= e!153426 e!153422)))

(declare-fun b!236206 () Bool)

(declare-fun e!153428 () Bool)

(declare-fun e!153425 () Bool)

(assert (=> b!236206 (= e!153428 e!153425)))

(declare-fun res!115854 () Bool)

(declare-fun call!21966 () Bool)

(assert (=> b!236206 (= res!115854 call!21966)))

(assert (=> b!236206 (=> (not res!115854) (not e!153425))))

(declare-fun b!236207 () Bool)

(assert (=> b!236207 (= e!153424 (not call!21970))))

(declare-fun b!236208 () Bool)

(declare-fun Unit!7272 () Unit!7269)

(assert (=> b!236208 (= e!153423 Unit!7272)))

(declare-fun call!21969 () ListLongMap!3571)

(declare-fun c!39318 () Bool)

(declare-fun call!21968 () ListLongMap!3571)

(declare-fun bm!21962 () Bool)

(assert (=> bm!21962 (= call!21969 (+!635 (ite c!39320 call!21965 (ite c!39318 call!21967 call!21968)) (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))))))

(declare-fun b!236209 () Bool)

(assert (=> b!236209 (= e!153422 call!21964)))

(declare-fun b!236210 () Bool)

(declare-fun res!115857 () Bool)

(assert (=> b!236210 (=> (not res!115857) (not e!153419))))

(assert (=> b!236210 (= res!115857 e!153418)))

(declare-fun res!115850 () Bool)

(assert (=> b!236210 (=> res!115850 e!153418)))

(declare-fun e!153421 () Bool)

(assert (=> b!236210 (= res!115850 (not e!153421))))

(declare-fun res!115851 () Bool)

(assert (=> b!236210 (=> (not res!115851) (not e!153421))))

(assert (=> b!236210 (= res!115851 (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun b!236211 () Bool)

(assert (=> b!236211 (= e!153422 call!21968)))

(declare-fun b!236212 () Bool)

(assert (=> b!236212 (= e!153428 (not call!21966))))

(declare-fun b!236213 () Bool)

(declare-fun res!115852 () Bool)

(assert (=> b!236213 (=> (not res!115852) (not e!153419))))

(assert (=> b!236213 (= res!115852 e!153428)))

(declare-fun c!39316 () Bool)

(assert (=> b!236213 (= c!39316 (not (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!236214 () Bool)

(assert (=> b!236214 (= e!153427 (+!635 call!21969 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))))

(declare-fun b!236215 () Bool)

(assert (=> b!236215 (= e!153425 (= (apply!213 lt!119477 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4230 thiss!1504)))))

(declare-fun b!236216 () Bool)

(assert (=> b!236216 (= e!153417 (= (apply!213 lt!119477 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4230 thiss!1504)))))

(declare-fun b!236217 () Bool)

(declare-fun get!2857 (ValueCell!2766 V!7939) V!7939)

(declare-fun dynLambda!551 (Int (_ BitVec 64)) V!7939)

(assert (=> b!236217 (= e!153429 (= (apply!213 lt!119477 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)) (get!2857 (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!551 (defaultEntry!4389 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!236217 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5896 (_values!4372 thiss!1504))))))

(assert (=> b!236217 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun bm!21963 () Bool)

(assert (=> bm!21963 (= call!21964 call!21969)))

(declare-fun b!236218 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!236218 (= e!153421 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236219 () Bool)

(assert (=> b!236219 (= e!153419 e!153424)))

(declare-fun c!39321 () Bool)

(assert (=> b!236219 (= c!39321 (not (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21964 () Bool)

(assert (=> bm!21964 (= call!21966 (contains!1673 lt!119477 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21965 () Bool)

(assert (=> bm!21965 (= call!21970 (contains!1673 lt!119477 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236220 () Bool)

(assert (=> b!236220 (= e!153427 e!153426)))

(assert (=> b!236220 (= c!39318 (and (not (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4126 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!21966 () Bool)

(assert (=> bm!21966 (= call!21965 (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))))

(declare-fun bm!21967 () Bool)

(assert (=> bm!21967 (= call!21968 call!21967)))

(declare-fun b!236221 () Bool)

(assert (=> b!236221 (= e!153420 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!59261 c!39320) b!236214))

(assert (= (and d!59261 (not c!39320)) b!236220))

(assert (= (and b!236220 c!39318) b!236201))

(assert (= (and b!236220 (not c!39318)) b!236205))

(assert (= (and b!236205 c!39319) b!236209))

(assert (= (and b!236205 (not c!39319)) b!236211))

(assert (= (or b!236209 b!236211) bm!21967))

(assert (= (or b!236201 bm!21967) bm!21961))

(assert (= (or b!236201 b!236209) bm!21963))

(assert (= (or b!236214 bm!21961) bm!21966))

(assert (= (or b!236214 bm!21963) bm!21962))

(assert (= (and d!59261 res!115856) b!236221))

(assert (= (and d!59261 c!39317) b!236202))

(assert (= (and d!59261 (not c!39317)) b!236208))

(assert (= (and d!59261 res!115855) b!236210))

(assert (= (and b!236210 res!115851) b!236218))

(assert (= (and b!236210 (not res!115850)) b!236204))

(assert (= (and b!236204 res!115849) b!236217))

(assert (= (and b!236210 res!115857) b!236213))

(assert (= (and b!236213 c!39316) b!236206))

(assert (= (and b!236213 (not c!39316)) b!236212))

(assert (= (and b!236206 res!115854) b!236215))

(assert (= (or b!236206 b!236212) bm!21964))

(assert (= (and b!236213 res!115852) b!236219))

(assert (= (and b!236219 c!39321) b!236203))

(assert (= (and b!236219 (not c!39321)) b!236207))

(assert (= (and b!236203 res!115853) b!236216))

(assert (= (or b!236203 b!236207) bm!21965))

(declare-fun b_lambda!7945 () Bool)

(assert (=> (not b_lambda!7945) (not b!236217)))

(declare-fun t!8563 () Bool)

(declare-fun tb!2947 () Bool)

(assert (=> (and b!236094 (= (defaultEntry!4389 thiss!1504) (defaultEntry!4389 thiss!1504)) t!8563) tb!2947))

(declare-fun result!5147 () Bool)

(assert (=> tb!2947 (= result!5147 tp_is_empty!6219)))

(assert (=> b!236217 t!8563))

(declare-fun b_and!13313 () Bool)

(assert (= b_and!13309 (and (=> t!8563 result!5147) b_and!13313)))

(declare-fun m!257071 () Bool)

(assert (=> bm!21964 m!257071))

(declare-fun m!257073 () Bool)

(assert (=> b!236215 m!257073))

(declare-fun m!257075 () Bool)

(assert (=> b!236204 m!257075))

(assert (=> b!236204 m!257075))

(declare-fun m!257077 () Bool)

(assert (=> b!236204 m!257077))

(assert (=> b!236221 m!257075))

(assert (=> b!236221 m!257075))

(declare-fun m!257079 () Bool)

(assert (=> b!236221 m!257079))

(assert (=> d!59261 m!257023))

(declare-fun m!257081 () Bool)

(assert (=> b!236202 m!257081))

(declare-fun m!257083 () Bool)

(assert (=> b!236202 m!257083))

(declare-fun m!257085 () Bool)

(assert (=> b!236202 m!257085))

(declare-fun m!257087 () Bool)

(assert (=> b!236202 m!257087))

(declare-fun m!257089 () Bool)

(assert (=> b!236202 m!257089))

(declare-fun m!257091 () Bool)

(assert (=> b!236202 m!257091))

(declare-fun m!257093 () Bool)

(assert (=> b!236202 m!257093))

(assert (=> b!236202 m!257075))

(declare-fun m!257095 () Bool)

(assert (=> b!236202 m!257095))

(declare-fun m!257097 () Bool)

(assert (=> b!236202 m!257097))

(declare-fun m!257099 () Bool)

(assert (=> b!236202 m!257099))

(declare-fun m!257101 () Bool)

(assert (=> b!236202 m!257101))

(declare-fun m!257103 () Bool)

(assert (=> b!236202 m!257103))

(assert (=> b!236202 m!257091))

(declare-fun m!257105 () Bool)

(assert (=> b!236202 m!257105))

(declare-fun m!257107 () Bool)

(assert (=> b!236202 m!257107))

(assert (=> b!236202 m!257093))

(declare-fun m!257109 () Bool)

(assert (=> b!236202 m!257109))

(assert (=> b!236202 m!257101))

(declare-fun m!257111 () Bool)

(assert (=> b!236202 m!257111))

(assert (=> b!236202 m!257087))

(declare-fun m!257113 () Bool)

(assert (=> bm!21962 m!257113))

(declare-fun m!257115 () Bool)

(assert (=> b!236217 m!257115))

(declare-fun m!257117 () Bool)

(assert (=> b!236217 m!257117))

(assert (=> b!236217 m!257075))

(declare-fun m!257119 () Bool)

(assert (=> b!236217 m!257119))

(assert (=> b!236217 m!257075))

(assert (=> b!236217 m!257115))

(assert (=> b!236217 m!257117))

(declare-fun m!257121 () Bool)

(assert (=> b!236217 m!257121))

(assert (=> b!236218 m!257075))

(assert (=> b!236218 m!257075))

(assert (=> b!236218 m!257079))

(declare-fun m!257123 () Bool)

(assert (=> b!236214 m!257123))

(assert (=> bm!21966 m!257107))

(declare-fun m!257125 () Bool)

(assert (=> b!236216 m!257125))

(declare-fun m!257127 () Bool)

(assert (=> bm!21965 m!257127))

(assert (=> b!236088 d!59261))

(declare-fun d!59263 () Bool)

(assert (=> d!59263 (= (validMask!0 (mask!10374 thiss!1504)) (and (or (= (mask!10374 thiss!1504) #b00000000000000000000000000000111) (= (mask!10374 thiss!1504) #b00000000000000000000000000001111) (= (mask!10374 thiss!1504) #b00000000000000000000000000011111) (= (mask!10374 thiss!1504) #b00000000000000000000000000111111) (= (mask!10374 thiss!1504) #b00000000000000000000000001111111) (= (mask!10374 thiss!1504) #b00000000000000000000000011111111) (= (mask!10374 thiss!1504) #b00000000000000000000000111111111) (= (mask!10374 thiss!1504) #b00000000000000000000001111111111) (= (mask!10374 thiss!1504) #b00000000000000000000011111111111) (= (mask!10374 thiss!1504) #b00000000000000000000111111111111) (= (mask!10374 thiss!1504) #b00000000000000000001111111111111) (= (mask!10374 thiss!1504) #b00000000000000000011111111111111) (= (mask!10374 thiss!1504) #b00000000000000000111111111111111) (= (mask!10374 thiss!1504) #b00000000000000001111111111111111) (= (mask!10374 thiss!1504) #b00000000000000011111111111111111) (= (mask!10374 thiss!1504) #b00000000000000111111111111111111) (= (mask!10374 thiss!1504) #b00000000000001111111111111111111) (= (mask!10374 thiss!1504) #b00000000000011111111111111111111) (= (mask!10374 thiss!1504) #b00000000000111111111111111111111) (= (mask!10374 thiss!1504) #b00000000001111111111111111111111) (= (mask!10374 thiss!1504) #b00000000011111111111111111111111) (= (mask!10374 thiss!1504) #b00000000111111111111111111111111) (= (mask!10374 thiss!1504) #b00000001111111111111111111111111) (= (mask!10374 thiss!1504) #b00000011111111111111111111111111) (= (mask!10374 thiss!1504) #b00000111111111111111111111111111) (= (mask!10374 thiss!1504) #b00001111111111111111111111111111) (= (mask!10374 thiss!1504) #b00011111111111111111111111111111) (= (mask!10374 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10374 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!236093 d!59263))

(declare-fun b!236231 () Bool)

(declare-fun e!153435 () Bool)

(assert (=> b!236231 (= e!153435 tp_is_empty!6219)))

(declare-fun mapNonEmpty!10538 () Bool)

(declare-fun mapRes!10538 () Bool)

(declare-fun tp!22256 () Bool)

(declare-fun e!153434 () Bool)

(assert (=> mapNonEmpty!10538 (= mapRes!10538 (and tp!22256 e!153434))))

(declare-fun mapValue!10538 () ValueCell!2766)

(declare-fun mapKey!10538 () (_ BitVec 32))

(declare-fun mapRest!10538 () (Array (_ BitVec 32) ValueCell!2766))

(assert (=> mapNonEmpty!10538 (= mapRest!10532 (store mapRest!10538 mapKey!10538 mapValue!10538))))

(declare-fun condMapEmpty!10538 () Bool)

(declare-fun mapDefault!10538 () ValueCell!2766)

(assert (=> mapNonEmpty!10532 (= condMapEmpty!10538 (= mapRest!10532 ((as const (Array (_ BitVec 32) ValueCell!2766)) mapDefault!10538)))))

(assert (=> mapNonEmpty!10532 (= tp!22247 (and e!153435 mapRes!10538))))

(declare-fun mapIsEmpty!10538 () Bool)

(assert (=> mapIsEmpty!10538 mapRes!10538))

(declare-fun b!236230 () Bool)

(assert (=> b!236230 (= e!153434 tp_is_empty!6219)))

(assert (= (and mapNonEmpty!10532 condMapEmpty!10538) mapIsEmpty!10538))

(assert (= (and mapNonEmpty!10532 (not condMapEmpty!10538)) mapNonEmpty!10538))

(assert (= (and mapNonEmpty!10538 ((_ is ValueCellFull!2766) mapValue!10538)) b!236230))

(assert (= (and mapNonEmpty!10532 ((_ is ValueCellFull!2766) mapDefault!10538)) b!236231))

(declare-fun m!257129 () Bool)

(assert (=> mapNonEmpty!10538 m!257129))

(declare-fun b_lambda!7947 () Bool)

(assert (= b_lambda!7945 (or (and b!236094 b_free!6357) b_lambda!7947)))

(check-sat (not mapNonEmpty!10538) (not b!236148) (not b!236147) (not b_lambda!7947) tp_is_empty!6219 (not b!236204) (not d!59259) (not d!59257) (not b!236202) (not bm!21965) (not bm!21962) (not b_next!6357) (not bm!21964) (not b!236156) (not b!236217) b_and!13313 (not b!236158) (not b!236139) (not b!236214) (not b!236215) (not b!236149) (not b!236216) (not b!236218) (not d!59251) (not d!59261) (not b!236221) (not bm!21966))
(check-sat b_and!13313 (not b_next!6357))
(get-model)

(declare-fun d!59265 () Bool)

(assert (=> d!59265 (= (apply!213 (+!635 lt!119469 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))) lt!119471) (apply!213 lt!119469 lt!119471))))

(declare-fun lt!119489 () Unit!7269)

(declare-fun choose!1112 (ListLongMap!3571 (_ BitVec 64) V!7939 (_ BitVec 64)) Unit!7269)

(assert (=> d!59265 (= lt!119489 (choose!1112 lt!119469 lt!119474 (minValue!4230 thiss!1504) lt!119471))))

(declare-fun e!153438 () Bool)

(assert (=> d!59265 e!153438))

(declare-fun res!115860 () Bool)

(assert (=> d!59265 (=> (not res!115860) (not e!153438))))

(assert (=> d!59265 (= res!115860 (contains!1673 lt!119469 lt!119471))))

(assert (=> d!59265 (= (addApplyDifferent!189 lt!119469 lt!119474 (minValue!4230 thiss!1504) lt!119471) lt!119489)))

(declare-fun b!236235 () Bool)

(assert (=> b!236235 (= e!153438 (not (= lt!119471 lt!119474)))))

(assert (= (and d!59265 res!115860) b!236235))

(assert (=> d!59265 m!257091))

(assert (=> d!59265 m!257091))

(assert (=> d!59265 m!257105))

(declare-fun m!257131 () Bool)

(assert (=> d!59265 m!257131))

(declare-fun m!257133 () Bool)

(assert (=> d!59265 m!257133))

(assert (=> d!59265 m!257085))

(assert (=> b!236202 d!59265))

(declare-fun d!59267 () Bool)

(assert (=> d!59267 (= (apply!213 (+!635 lt!119475 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))) lt!119482) (apply!213 lt!119475 lt!119482))))

(declare-fun lt!119490 () Unit!7269)

(assert (=> d!59267 (= lt!119490 (choose!1112 lt!119475 lt!119478 (minValue!4230 thiss!1504) lt!119482))))

(declare-fun e!153439 () Bool)

(assert (=> d!59267 e!153439))

(declare-fun res!115861 () Bool)

(assert (=> d!59267 (=> (not res!115861) (not e!153439))))

(assert (=> d!59267 (= res!115861 (contains!1673 lt!119475 lt!119482))))

(assert (=> d!59267 (= (addApplyDifferent!189 lt!119475 lt!119478 (minValue!4230 thiss!1504) lt!119482) lt!119490)))

(declare-fun b!236236 () Bool)

(assert (=> b!236236 (= e!153439 (not (= lt!119482 lt!119478)))))

(assert (= (and d!59267 res!115861) b!236236))

(assert (=> d!59267 m!257101))

(assert (=> d!59267 m!257101))

(assert (=> d!59267 m!257111))

(declare-fun m!257135 () Bool)

(assert (=> d!59267 m!257135))

(declare-fun m!257137 () Bool)

(assert (=> d!59267 m!257137))

(assert (=> d!59267 m!257097))

(assert (=> b!236202 d!59267))

(declare-fun d!59269 () Bool)

(declare-fun e!153442 () Bool)

(assert (=> d!59269 e!153442))

(declare-fun res!115867 () Bool)

(assert (=> d!59269 (=> (not res!115867) (not e!153442))))

(declare-fun lt!119501 () ListLongMap!3571)

(assert (=> d!59269 (= res!115867 (contains!1673 lt!119501 (_1!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))))))

(declare-fun lt!119502 () List!3573)

(assert (=> d!59269 (= lt!119501 (ListLongMap!3572 lt!119502))))

(declare-fun lt!119499 () Unit!7269)

(declare-fun lt!119500 () Unit!7269)

(assert (=> d!59269 (= lt!119499 lt!119500)))

(assert (=> d!59269 (= (getValueByKey!270 lt!119502 (_1!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!152 (List!3573 (_ BitVec 64) V!7939) Unit!7269)

(assert (=> d!59269 (= lt!119500 (lemmaContainsTupThenGetReturnValue!152 lt!119502 (_1!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))))))

(declare-fun insertStrictlySorted!154 (List!3573 (_ BitVec 64) V!7939) List!3573)

(assert (=> d!59269 (= lt!119502 (insertStrictlySorted!154 (toList!1801 lt!119481) (_1!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))))))

(assert (=> d!59269 (= (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))) lt!119501)))

(declare-fun b!236241 () Bool)

(declare-fun res!115866 () Bool)

(assert (=> b!236241 (=> (not res!115866) (not e!153442))))

(assert (=> b!236241 (= res!115866 (= (getValueByKey!270 (toList!1801 lt!119501) (_1!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))))))))

(declare-fun b!236242 () Bool)

(declare-fun contains!1675 (List!3573 tuple2!4644) Bool)

(assert (=> b!236242 (= e!153442 (contains!1675 (toList!1801 lt!119501) (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))))))

(assert (= (and d!59269 res!115867) b!236241))

(assert (= (and b!236241 res!115866) b!236242))

(declare-fun m!257139 () Bool)

(assert (=> d!59269 m!257139))

(declare-fun m!257141 () Bool)

(assert (=> d!59269 m!257141))

(declare-fun m!257143 () Bool)

(assert (=> d!59269 m!257143))

(declare-fun m!257145 () Bool)

(assert (=> d!59269 m!257145))

(declare-fun m!257147 () Bool)

(assert (=> b!236241 m!257147))

(declare-fun m!257149 () Bool)

(assert (=> b!236242 m!257149))

(assert (=> b!236202 d!59269))

(declare-fun d!59271 () Bool)

(declare-fun get!2858 (Option!276) V!7939)

(assert (=> d!59271 (= (apply!213 (+!635 lt!119475 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))) lt!119482) (get!2858 (getValueByKey!270 (toList!1801 (+!635 lt!119475 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504)))) lt!119482)))))

(declare-fun bs!8728 () Bool)

(assert (= bs!8728 d!59271))

(declare-fun m!257151 () Bool)

(assert (=> bs!8728 m!257151))

(assert (=> bs!8728 m!257151))

(declare-fun m!257153 () Bool)

(assert (=> bs!8728 m!257153))

(assert (=> b!236202 d!59271))

(declare-fun d!59273 () Bool)

(declare-fun e!153443 () Bool)

(assert (=> d!59273 e!153443))

(declare-fun res!115869 () Bool)

(assert (=> d!59273 (=> (not res!115869) (not e!153443))))

(declare-fun lt!119505 () ListLongMap!3571)

(assert (=> d!59273 (= res!115869 (contains!1673 lt!119505 (_1!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504)))))))

(declare-fun lt!119506 () List!3573)

(assert (=> d!59273 (= lt!119505 (ListLongMap!3572 lt!119506))))

(declare-fun lt!119503 () Unit!7269)

(declare-fun lt!119504 () Unit!7269)

(assert (=> d!59273 (= lt!119503 lt!119504)))

(assert (=> d!59273 (= (getValueByKey!270 lt!119506 (_1!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504)))))))

(assert (=> d!59273 (= lt!119504 (lemmaContainsTupThenGetReturnValue!152 lt!119506 (_1!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504)))))))

(assert (=> d!59273 (= lt!119506 (insertStrictlySorted!154 (toList!1801 lt!119469) (_1!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504)))))))

(assert (=> d!59273 (= (+!635 lt!119469 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))) lt!119505)))

(declare-fun b!236243 () Bool)

(declare-fun res!115868 () Bool)

(assert (=> b!236243 (=> (not res!115868) (not e!153443))))

(assert (=> b!236243 (= res!115868 (= (getValueByKey!270 (toList!1801 lt!119505) (_1!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))))))))

(declare-fun b!236244 () Bool)

(assert (=> b!236244 (= e!153443 (contains!1675 (toList!1801 lt!119505) (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))))))

(assert (= (and d!59273 res!115869) b!236243))

(assert (= (and b!236243 res!115868) b!236244))

(declare-fun m!257155 () Bool)

(assert (=> d!59273 m!257155))

(declare-fun m!257157 () Bool)

(assert (=> d!59273 m!257157))

(declare-fun m!257159 () Bool)

(assert (=> d!59273 m!257159))

(declare-fun m!257161 () Bool)

(assert (=> d!59273 m!257161))

(declare-fun m!257163 () Bool)

(assert (=> b!236243 m!257163))

(declare-fun m!257165 () Bool)

(assert (=> b!236244 m!257165))

(assert (=> b!236202 d!59273))

(declare-fun d!59275 () Bool)

(assert (=> d!59275 (contains!1673 (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))) lt!119486)))

(declare-fun lt!119509 () Unit!7269)

(declare-fun choose!1113 (ListLongMap!3571 (_ BitVec 64) V!7939 (_ BitVec 64)) Unit!7269)

(assert (=> d!59275 (= lt!119509 (choose!1113 lt!119481 lt!119473 (zeroValue!4230 thiss!1504) lt!119486))))

(assert (=> d!59275 (contains!1673 lt!119481 lt!119486)))

(assert (=> d!59275 (= (addStillContains!189 lt!119481 lt!119473 (zeroValue!4230 thiss!1504) lt!119486) lt!119509)))

(declare-fun bs!8729 () Bool)

(assert (= bs!8729 d!59275))

(assert (=> bs!8729 m!257087))

(assert (=> bs!8729 m!257087))

(assert (=> bs!8729 m!257089))

(declare-fun m!257167 () Bool)

(assert (=> bs!8729 m!257167))

(declare-fun m!257169 () Bool)

(assert (=> bs!8729 m!257169))

(assert (=> b!236202 d!59275))

(declare-fun b!236270 () Bool)

(declare-fun e!153460 () ListLongMap!3571)

(assert (=> b!236270 (= e!153460 (ListLongMap!3572 Nil!3570))))

(declare-fun b!236271 () Bool)

(declare-fun lt!119527 () Unit!7269)

(declare-fun lt!119524 () Unit!7269)

(assert (=> b!236271 (= lt!119527 lt!119524)))

(declare-fun lt!119525 () (_ BitVec 64))

(declare-fun lt!119529 () (_ BitVec 64))

(declare-fun lt!119530 () ListLongMap!3571)

(declare-fun lt!119528 () V!7939)

(assert (=> b!236271 (not (contains!1673 (+!635 lt!119530 (tuple2!4645 lt!119529 lt!119528)) lt!119525))))

(declare-fun addStillNotContains!117 (ListLongMap!3571 (_ BitVec 64) V!7939 (_ BitVec 64)) Unit!7269)

(assert (=> b!236271 (= lt!119524 (addStillNotContains!117 lt!119530 lt!119529 lt!119528 lt!119525))))

(assert (=> b!236271 (= lt!119525 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!236271 (= lt!119528 (get!2857 (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!551 (defaultEntry!4389 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!236271 (= lt!119529 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun call!21973 () ListLongMap!3571)

(assert (=> b!236271 (= lt!119530 call!21973)))

(declare-fun e!153464 () ListLongMap!3571)

(assert (=> b!236271 (= e!153464 (+!635 call!21973 (tuple2!4645 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000) (get!2857 (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!551 (defaultEntry!4389 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!236272 () Bool)

(declare-fun e!153462 () Bool)

(declare-fun e!153458 () Bool)

(assert (=> b!236272 (= e!153462 e!153458)))

(declare-fun c!39333 () Bool)

(declare-fun e!153463 () Bool)

(assert (=> b!236272 (= c!39333 e!153463)))

(declare-fun res!115881 () Bool)

(assert (=> b!236272 (=> (not res!115881) (not e!153463))))

(assert (=> b!236272 (= res!115881 (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun b!236273 () Bool)

(declare-fun e!153459 () Bool)

(declare-fun lt!119526 () ListLongMap!3571)

(assert (=> b!236273 (= e!153459 (= lt!119526 (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4389 thiss!1504))))))

(declare-fun d!59277 () Bool)

(assert (=> d!59277 e!153462))

(declare-fun res!115880 () Bool)

(assert (=> d!59277 (=> (not res!115880) (not e!153462))))

(assert (=> d!59277 (= res!115880 (not (contains!1673 lt!119526 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!59277 (= lt!119526 e!153460)))

(declare-fun c!39331 () Bool)

(assert (=> d!59277 (= c!39331 (bvsge #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(assert (=> d!59277 (validMask!0 (mask!10374 thiss!1504))))

(assert (=> d!59277 (= (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)) lt!119526)))

(declare-fun b!236274 () Bool)

(assert (=> b!236274 (= e!153464 call!21973)))

(declare-fun b!236275 () Bool)

(assert (=> b!236275 (= e!153460 e!153464)))

(declare-fun c!39332 () Bool)

(assert (=> b!236275 (= c!39332 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236276 () Bool)

(declare-fun e!153461 () Bool)

(assert (=> b!236276 (= e!153458 e!153461)))

(assert (=> b!236276 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun res!115879 () Bool)

(assert (=> b!236276 (= res!115879 (contains!1673 lt!119526 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236276 (=> (not res!115879) (not e!153461))))

(declare-fun b!236277 () Bool)

(assert (=> b!236277 (= e!153458 e!153459)))

(declare-fun c!39330 () Bool)

(assert (=> b!236277 (= c!39330 (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun b!236278 () Bool)

(assert (=> b!236278 (= e!153463 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236278 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!21970 () Bool)

(assert (=> bm!21970 (= call!21973 (getCurrentListMapNoExtraKeys!532 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4389 thiss!1504)))))

(declare-fun b!236279 () Bool)

(assert (=> b!236279 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(assert (=> b!236279 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5896 (_values!4372 thiss!1504))))))

(assert (=> b!236279 (= e!153461 (= (apply!213 lt!119526 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)) (get!2857 (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!551 (defaultEntry!4389 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!236280 () Bool)

(declare-fun res!115878 () Bool)

(assert (=> b!236280 (=> (not res!115878) (not e!153462))))

(assert (=> b!236280 (= res!115878 (not (contains!1673 lt!119526 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!236281 () Bool)

(declare-fun isEmpty!517 (ListLongMap!3571) Bool)

(assert (=> b!236281 (= e!153459 (isEmpty!517 lt!119526))))

(assert (= (and d!59277 c!39331) b!236270))

(assert (= (and d!59277 (not c!39331)) b!236275))

(assert (= (and b!236275 c!39332) b!236271))

(assert (= (and b!236275 (not c!39332)) b!236274))

(assert (= (or b!236271 b!236274) bm!21970))

(assert (= (and d!59277 res!115880) b!236280))

(assert (= (and b!236280 res!115878) b!236272))

(assert (= (and b!236272 res!115881) b!236278))

(assert (= (and b!236272 c!39333) b!236276))

(assert (= (and b!236272 (not c!39333)) b!236277))

(assert (= (and b!236276 res!115879) b!236279))

(assert (= (and b!236277 c!39330) b!236273))

(assert (= (and b!236277 (not c!39330)) b!236281))

(declare-fun b_lambda!7949 () Bool)

(assert (=> (not b_lambda!7949) (not b!236271)))

(assert (=> b!236271 t!8563))

(declare-fun b_and!13315 () Bool)

(assert (= b_and!13313 (and (=> t!8563 result!5147) b_and!13315)))

(declare-fun b_lambda!7951 () Bool)

(assert (=> (not b_lambda!7951) (not b!236279)))

(assert (=> b!236279 t!8563))

(declare-fun b_and!13317 () Bool)

(assert (= b_and!13315 (and (=> t!8563 result!5147) b_and!13317)))

(declare-fun m!257171 () Bool)

(assert (=> bm!21970 m!257171))

(assert (=> b!236276 m!257075))

(assert (=> b!236276 m!257075))

(declare-fun m!257173 () Bool)

(assert (=> b!236276 m!257173))

(declare-fun m!257175 () Bool)

(assert (=> b!236271 m!257175))

(declare-fun m!257177 () Bool)

(assert (=> b!236271 m!257177))

(assert (=> b!236271 m!257115))

(assert (=> b!236271 m!257115))

(assert (=> b!236271 m!257117))

(assert (=> b!236271 m!257121))

(declare-fun m!257179 () Bool)

(assert (=> b!236271 m!257179))

(assert (=> b!236271 m!257075))

(assert (=> b!236271 m!257117))

(declare-fun m!257181 () Bool)

(assert (=> b!236271 m!257181))

(assert (=> b!236271 m!257175))

(declare-fun m!257183 () Bool)

(assert (=> d!59277 m!257183))

(assert (=> d!59277 m!257023))

(declare-fun m!257185 () Bool)

(assert (=> b!236281 m!257185))

(assert (=> b!236278 m!257075))

(assert (=> b!236278 m!257075))

(assert (=> b!236278 m!257079))

(assert (=> b!236275 m!257075))

(assert (=> b!236275 m!257075))

(assert (=> b!236275 m!257079))

(assert (=> b!236273 m!257171))

(declare-fun m!257187 () Bool)

(assert (=> b!236280 m!257187))

(assert (=> b!236279 m!257115))

(assert (=> b!236279 m!257115))

(assert (=> b!236279 m!257117))

(assert (=> b!236279 m!257121))

(assert (=> b!236279 m!257075))

(assert (=> b!236279 m!257117))

(assert (=> b!236279 m!257075))

(declare-fun m!257189 () Bool)

(assert (=> b!236279 m!257189))

(assert (=> b!236202 d!59277))

(declare-fun d!59279 () Bool)

(declare-fun e!153465 () Bool)

(assert (=> d!59279 e!153465))

(declare-fun res!115883 () Bool)

(assert (=> d!59279 (=> (not res!115883) (not e!153465))))

(declare-fun lt!119533 () ListLongMap!3571)

(assert (=> d!59279 (= res!115883 (contains!1673 lt!119533 (_1!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504)))))))

(declare-fun lt!119534 () List!3573)

(assert (=> d!59279 (= lt!119533 (ListLongMap!3572 lt!119534))))

(declare-fun lt!119531 () Unit!7269)

(declare-fun lt!119532 () Unit!7269)

(assert (=> d!59279 (= lt!119531 lt!119532)))

(assert (=> d!59279 (= (getValueByKey!270 lt!119534 (_1!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504)))))))

(assert (=> d!59279 (= lt!119532 (lemmaContainsTupThenGetReturnValue!152 lt!119534 (_1!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504)))))))

(assert (=> d!59279 (= lt!119534 (insertStrictlySorted!154 (toList!1801 lt!119476) (_1!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504)))))))

(assert (=> d!59279 (= (+!635 lt!119476 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))) lt!119533)))

(declare-fun b!236282 () Bool)

(declare-fun res!115882 () Bool)

(assert (=> b!236282 (=> (not res!115882) (not e!153465))))

(assert (=> b!236282 (= res!115882 (= (getValueByKey!270 (toList!1801 lt!119533) (_1!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))))))))

(declare-fun b!236283 () Bool)

(assert (=> b!236283 (= e!153465 (contains!1675 (toList!1801 lt!119533) (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))))))

(assert (= (and d!59279 res!115883) b!236282))

(assert (= (and b!236282 res!115882) b!236283))

(declare-fun m!257191 () Bool)

(assert (=> d!59279 m!257191))

(declare-fun m!257193 () Bool)

(assert (=> d!59279 m!257193))

(declare-fun m!257195 () Bool)

(assert (=> d!59279 m!257195))

(declare-fun m!257197 () Bool)

(assert (=> d!59279 m!257197))

(declare-fun m!257199 () Bool)

(assert (=> b!236282 m!257199))

(declare-fun m!257201 () Bool)

(assert (=> b!236283 m!257201))

(assert (=> b!236202 d!59279))

(declare-fun d!59281 () Bool)

(declare-fun e!153466 () Bool)

(assert (=> d!59281 e!153466))

(declare-fun res!115885 () Bool)

(assert (=> d!59281 (=> (not res!115885) (not e!153466))))

(declare-fun lt!119537 () ListLongMap!3571)

(assert (=> d!59281 (= res!115885 (contains!1673 lt!119537 (_1!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504)))))))

(declare-fun lt!119538 () List!3573)

(assert (=> d!59281 (= lt!119537 (ListLongMap!3572 lt!119538))))

(declare-fun lt!119535 () Unit!7269)

(declare-fun lt!119536 () Unit!7269)

(assert (=> d!59281 (= lt!119535 lt!119536)))

(assert (=> d!59281 (= (getValueByKey!270 lt!119538 (_1!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504)))))))

(assert (=> d!59281 (= lt!119536 (lemmaContainsTupThenGetReturnValue!152 lt!119538 (_1!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504)))))))

(assert (=> d!59281 (= lt!119538 (insertStrictlySorted!154 (toList!1801 lt!119475) (_1!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504)))))))

(assert (=> d!59281 (= (+!635 lt!119475 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))) lt!119537)))

(declare-fun b!236284 () Bool)

(declare-fun res!115884 () Bool)

(assert (=> b!236284 (=> (not res!115884) (not e!153466))))

(assert (=> b!236284 (= res!115884 (= (getValueByKey!270 (toList!1801 lt!119537) (_1!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))))))))

(declare-fun b!236285 () Bool)

(assert (=> b!236285 (= e!153466 (contains!1675 (toList!1801 lt!119537) (tuple2!4645 lt!119478 (minValue!4230 thiss!1504))))))

(assert (= (and d!59281 res!115885) b!236284))

(assert (= (and b!236284 res!115884) b!236285))

(declare-fun m!257203 () Bool)

(assert (=> d!59281 m!257203))

(declare-fun m!257205 () Bool)

(assert (=> d!59281 m!257205))

(declare-fun m!257207 () Bool)

(assert (=> d!59281 m!257207))

(declare-fun m!257209 () Bool)

(assert (=> d!59281 m!257209))

(declare-fun m!257211 () Bool)

(assert (=> b!236284 m!257211))

(declare-fun m!257213 () Bool)

(assert (=> b!236285 m!257213))

(assert (=> b!236202 d!59281))

(declare-fun d!59283 () Bool)

(assert (=> d!59283 (= (apply!213 lt!119469 lt!119471) (get!2858 (getValueByKey!270 (toList!1801 lt!119469) lt!119471)))))

(declare-fun bs!8730 () Bool)

(assert (= bs!8730 d!59283))

(declare-fun m!257215 () Bool)

(assert (=> bs!8730 m!257215))

(assert (=> bs!8730 m!257215))

(declare-fun m!257217 () Bool)

(assert (=> bs!8730 m!257217))

(assert (=> b!236202 d!59283))

(declare-fun d!59285 () Bool)

(assert (=> d!59285 (= (apply!213 (+!635 lt!119469 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504))) lt!119471) (get!2858 (getValueByKey!270 (toList!1801 (+!635 lt!119469 (tuple2!4645 lt!119474 (minValue!4230 thiss!1504)))) lt!119471)))))

(declare-fun bs!8731 () Bool)

(assert (= bs!8731 d!59285))

(declare-fun m!257219 () Bool)

(assert (=> bs!8731 m!257219))

(assert (=> bs!8731 m!257219))

(declare-fun m!257221 () Bool)

(assert (=> bs!8731 m!257221))

(assert (=> b!236202 d!59285))

(declare-fun d!59287 () Bool)

(assert (=> d!59287 (= (apply!213 (+!635 lt!119476 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))) lt!119468) (apply!213 lt!119476 lt!119468))))

(declare-fun lt!119539 () Unit!7269)

(assert (=> d!59287 (= lt!119539 (choose!1112 lt!119476 lt!119485 (zeroValue!4230 thiss!1504) lt!119468))))

(declare-fun e!153467 () Bool)

(assert (=> d!59287 e!153467))

(declare-fun res!115886 () Bool)

(assert (=> d!59287 (=> (not res!115886) (not e!153467))))

(assert (=> d!59287 (= res!115886 (contains!1673 lt!119476 lt!119468))))

(assert (=> d!59287 (= (addApplyDifferent!189 lt!119476 lt!119485 (zeroValue!4230 thiss!1504) lt!119468) lt!119539)))

(declare-fun b!236286 () Bool)

(assert (=> b!236286 (= e!153467 (not (= lt!119468 lt!119485)))))

(assert (= (and d!59287 res!115886) b!236286))

(assert (=> d!59287 m!257093))

(assert (=> d!59287 m!257093))

(assert (=> d!59287 m!257109))

(declare-fun m!257223 () Bool)

(assert (=> d!59287 m!257223))

(declare-fun m!257225 () Bool)

(assert (=> d!59287 m!257225))

(assert (=> d!59287 m!257095))

(assert (=> b!236202 d!59287))

(declare-fun d!59289 () Bool)

(declare-fun e!153468 () Bool)

(assert (=> d!59289 e!153468))

(declare-fun res!115887 () Bool)

(assert (=> d!59289 (=> res!115887 e!153468)))

(declare-fun lt!119540 () Bool)

(assert (=> d!59289 (= res!115887 (not lt!119540))))

(declare-fun lt!119541 () Bool)

(assert (=> d!59289 (= lt!119540 lt!119541)))

(declare-fun lt!119543 () Unit!7269)

(declare-fun e!153469 () Unit!7269)

(assert (=> d!59289 (= lt!119543 e!153469)))

(declare-fun c!39334 () Bool)

(assert (=> d!59289 (= c!39334 lt!119541)))

(assert (=> d!59289 (= lt!119541 (containsKey!262 (toList!1801 (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))) lt!119486))))

(assert (=> d!59289 (= (contains!1673 (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504))) lt!119486) lt!119540)))

(declare-fun b!236287 () Bool)

(declare-fun lt!119542 () Unit!7269)

(assert (=> b!236287 (= e!153469 lt!119542)))

(assert (=> b!236287 (= lt!119542 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!1801 (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))) lt!119486))))

(assert (=> b!236287 (isDefined!212 (getValueByKey!270 (toList!1801 (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))) lt!119486))))

(declare-fun b!236288 () Bool)

(declare-fun Unit!7273 () Unit!7269)

(assert (=> b!236288 (= e!153469 Unit!7273)))

(declare-fun b!236289 () Bool)

(assert (=> b!236289 (= e!153468 (isDefined!212 (getValueByKey!270 (toList!1801 (+!635 lt!119481 (tuple2!4645 lt!119473 (zeroValue!4230 thiss!1504)))) lt!119486)))))

(assert (= (and d!59289 c!39334) b!236287))

(assert (= (and d!59289 (not c!39334)) b!236288))

(assert (= (and d!59289 (not res!115887)) b!236289))

(declare-fun m!257227 () Bool)

(assert (=> d!59289 m!257227))

(declare-fun m!257229 () Bool)

(assert (=> b!236287 m!257229))

(declare-fun m!257231 () Bool)

(assert (=> b!236287 m!257231))

(assert (=> b!236287 m!257231))

(declare-fun m!257233 () Bool)

(assert (=> b!236287 m!257233))

(assert (=> b!236289 m!257231))

(assert (=> b!236289 m!257231))

(assert (=> b!236289 m!257233))

(assert (=> b!236202 d!59289))

(declare-fun d!59291 () Bool)

(assert (=> d!59291 (= (apply!213 (+!635 lt!119476 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504))) lt!119468) (get!2858 (getValueByKey!270 (toList!1801 (+!635 lt!119476 (tuple2!4645 lt!119485 (zeroValue!4230 thiss!1504)))) lt!119468)))))

(declare-fun bs!8732 () Bool)

(assert (= bs!8732 d!59291))

(declare-fun m!257235 () Bool)

(assert (=> bs!8732 m!257235))

(assert (=> bs!8732 m!257235))

(declare-fun m!257237 () Bool)

(assert (=> bs!8732 m!257237))

(assert (=> b!236202 d!59291))

(declare-fun d!59293 () Bool)

(assert (=> d!59293 (= (apply!213 lt!119476 lt!119468) (get!2858 (getValueByKey!270 (toList!1801 lt!119476) lt!119468)))))

(declare-fun bs!8733 () Bool)

(assert (= bs!8733 d!59293))

(declare-fun m!257239 () Bool)

(assert (=> bs!8733 m!257239))

(assert (=> bs!8733 m!257239))

(declare-fun m!257241 () Bool)

(assert (=> bs!8733 m!257241))

(assert (=> b!236202 d!59293))

(declare-fun d!59295 () Bool)

(assert (=> d!59295 (= (apply!213 lt!119475 lt!119482) (get!2858 (getValueByKey!270 (toList!1801 lt!119475) lt!119482)))))

(declare-fun bs!8734 () Bool)

(assert (= bs!8734 d!59295))

(declare-fun m!257243 () Bool)

(assert (=> bs!8734 m!257243))

(assert (=> bs!8734 m!257243))

(declare-fun m!257245 () Bool)

(assert (=> bs!8734 m!257245))

(assert (=> b!236202 d!59295))

(declare-fun b!236299 () Bool)

(declare-fun res!115899 () Bool)

(declare-fun e!153472 () Bool)

(assert (=> b!236299 (=> (not res!115899) (not e!153472))))

(declare-fun size!5900 (LongMapFixedSize!3432) (_ BitVec 32))

(assert (=> b!236299 (= res!115899 (bvsge (size!5900 thiss!1504) (_size!1765 thiss!1504)))))

(declare-fun b!236298 () Bool)

(declare-fun res!115897 () Bool)

(assert (=> b!236298 (=> (not res!115897) (not e!153472))))

(assert (=> b!236298 (= res!115897 (and (= (size!5896 (_values!4372 thiss!1504)) (bvadd (mask!10374 thiss!1504) #b00000000000000000000000000000001)) (= (size!5897 (_keys!6468 thiss!1504)) (size!5896 (_values!4372 thiss!1504))) (bvsge (_size!1765 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1765 thiss!1504) (bvadd (mask!10374 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun d!59297 () Bool)

(declare-fun res!115896 () Bool)

(assert (=> d!59297 (=> (not res!115896) (not e!153472))))

(assert (=> d!59297 (= res!115896 (validMask!0 (mask!10374 thiss!1504)))))

(assert (=> d!59297 (= (simpleValid!235 thiss!1504) e!153472)))

(declare-fun b!236301 () Bool)

(assert (=> b!236301 (= e!153472 (and (bvsge (extraKeys!4126 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4126 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1765 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!236300 () Bool)

(declare-fun res!115898 () Bool)

(assert (=> b!236300 (=> (not res!115898) (not e!153472))))

(assert (=> b!236300 (= res!115898 (= (size!5900 thiss!1504) (bvadd (_size!1765 thiss!1504) (bvsdiv (bvadd (extraKeys!4126 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!59297 res!115896) b!236298))

(assert (= (and b!236298 res!115897) b!236299))

(assert (= (and b!236299 res!115899) b!236300))

(assert (= (and b!236300 res!115898) b!236301))

(declare-fun m!257247 () Bool)

(assert (=> b!236299 m!257247))

(assert (=> d!59297 m!257023))

(assert (=> b!236300 m!257247))

(assert (=> d!59257 d!59297))

(declare-fun d!59299 () Bool)

(declare-fun e!153473 () Bool)

(assert (=> d!59299 e!153473))

(declare-fun res!115900 () Bool)

(assert (=> d!59299 (=> res!115900 e!153473)))

(declare-fun lt!119544 () Bool)

(assert (=> d!59299 (= res!115900 (not lt!119544))))

(declare-fun lt!119545 () Bool)

(assert (=> d!59299 (= lt!119544 lt!119545)))

(declare-fun lt!119547 () Unit!7269)

(declare-fun e!153474 () Unit!7269)

(assert (=> d!59299 (= lt!119547 e!153474)))

(declare-fun c!39335 () Bool)

(assert (=> d!59299 (= c!39335 lt!119545)))

(assert (=> d!59299 (= lt!119545 (containsKey!262 (toList!1801 lt!119477) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59299 (= (contains!1673 lt!119477 #b0000000000000000000000000000000000000000000000000000000000000000) lt!119544)))

(declare-fun b!236302 () Bool)

(declare-fun lt!119546 () Unit!7269)

(assert (=> b!236302 (= e!153474 lt!119546)))

(assert (=> b!236302 (= lt!119546 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!1801 lt!119477) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236302 (isDefined!212 (getValueByKey!270 (toList!1801 lt!119477) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236303 () Bool)

(declare-fun Unit!7274 () Unit!7269)

(assert (=> b!236303 (= e!153474 Unit!7274)))

(declare-fun b!236304 () Bool)

(assert (=> b!236304 (= e!153473 (isDefined!212 (getValueByKey!270 (toList!1801 lt!119477) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59299 c!39335) b!236302))

(assert (= (and d!59299 (not c!39335)) b!236303))

(assert (= (and d!59299 (not res!115900)) b!236304))

(declare-fun m!257249 () Bool)

(assert (=> d!59299 m!257249))

(declare-fun m!257251 () Bool)

(assert (=> b!236302 m!257251))

(declare-fun m!257253 () Bool)

(assert (=> b!236302 m!257253))

(assert (=> b!236302 m!257253))

(declare-fun m!257255 () Bool)

(assert (=> b!236302 m!257255))

(assert (=> b!236304 m!257253))

(assert (=> b!236304 m!257253))

(assert (=> b!236304 m!257255))

(assert (=> bm!21964 d!59299))

(declare-fun d!59301 () Bool)

(assert (=> d!59301 (= (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!236218 d!59301))

(declare-fun d!59303 () Bool)

(declare-fun e!153475 () Bool)

(assert (=> d!59303 e!153475))

(declare-fun res!115902 () Bool)

(assert (=> d!59303 (=> (not res!115902) (not e!153475))))

(declare-fun lt!119550 () ListLongMap!3571)

(assert (=> d!59303 (= res!115902 (contains!1673 lt!119550 (_1!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))))))

(declare-fun lt!119551 () List!3573)

(assert (=> d!59303 (= lt!119550 (ListLongMap!3572 lt!119551))))

(declare-fun lt!119548 () Unit!7269)

(declare-fun lt!119549 () Unit!7269)

(assert (=> d!59303 (= lt!119548 lt!119549)))

(assert (=> d!59303 (= (getValueByKey!270 lt!119551 (_1!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))) (Some!275 (_2!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))))))

(assert (=> d!59303 (= lt!119549 (lemmaContainsTupThenGetReturnValue!152 lt!119551 (_1!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))) (_2!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))))))

(assert (=> d!59303 (= lt!119551 (insertStrictlySorted!154 (toList!1801 (ite c!39320 call!21965 (ite c!39318 call!21967 call!21968))) (_1!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))) (_2!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))))))

(assert (=> d!59303 (= (+!635 (ite c!39320 call!21965 (ite c!39318 call!21967 call!21968)) (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))) lt!119550)))

(declare-fun b!236305 () Bool)

(declare-fun res!115901 () Bool)

(assert (=> b!236305 (=> (not res!115901) (not e!153475))))

(assert (=> b!236305 (= res!115901 (= (getValueByKey!270 (toList!1801 lt!119550) (_1!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))) (Some!275 (_2!2332 (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))))))))

(declare-fun b!236306 () Bool)

(assert (=> b!236306 (= e!153475 (contains!1675 (toList!1801 lt!119550) (ite (or c!39320 c!39318) (tuple2!4645 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4230 thiss!1504)) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))))))

(assert (= (and d!59303 res!115902) b!236305))

(assert (= (and b!236305 res!115901) b!236306))

(declare-fun m!257257 () Bool)

(assert (=> d!59303 m!257257))

(declare-fun m!257259 () Bool)

(assert (=> d!59303 m!257259))

(declare-fun m!257261 () Bool)

(assert (=> d!59303 m!257261))

(declare-fun m!257263 () Bool)

(assert (=> d!59303 m!257263))

(declare-fun m!257265 () Bool)

(assert (=> b!236305 m!257265))

(declare-fun m!257267 () Bool)

(assert (=> b!236306 m!257267))

(assert (=> bm!21962 d!59303))

(declare-fun d!59305 () Bool)

(declare-fun isEmpty!518 (Option!276) Bool)

(assert (=> d!59305 (= (isDefined!212 (getValueByKey!270 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932)) (not (isEmpty!518 (getValueByKey!270 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932))))))

(declare-fun bs!8735 () Bool)

(assert (= bs!8735 d!59305))

(assert (=> bs!8735 m!257067))

(declare-fun m!257269 () Bool)

(assert (=> bs!8735 m!257269))

(assert (=> b!236158 d!59305))

(declare-fun b!236318 () Bool)

(declare-fun e!153481 () Option!276)

(assert (=> b!236318 (= e!153481 None!274)))

(declare-fun b!236316 () Bool)

(declare-fun e!153480 () Option!276)

(assert (=> b!236316 (= e!153480 e!153481)))

(declare-fun c!39341 () Bool)

(assert (=> b!236316 (= c!39341 (and ((_ is Cons!3569) (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))) (not (= (_1!2332 (h!4221 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))))) key!932))))))

(declare-fun b!236317 () Bool)

(assert (=> b!236317 (= e!153481 (getValueByKey!270 (t!8560 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))) key!932))))

(declare-fun b!236315 () Bool)

(assert (=> b!236315 (= e!153480 (Some!275 (_2!2332 (h!4221 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))))))))

(declare-fun d!59307 () Bool)

(declare-fun c!39340 () Bool)

(assert (=> d!59307 (= c!39340 (and ((_ is Cons!3569) (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))) (= (_1!2332 (h!4221 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))))) key!932)))))

(assert (=> d!59307 (= (getValueByKey!270 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932) e!153480)))

(assert (= (and d!59307 c!39340) b!236315))

(assert (= (and d!59307 (not c!39340)) b!236316))

(assert (= (and b!236316 c!39341) b!236317))

(assert (= (and b!236316 (not c!39341)) b!236318))

(declare-fun m!257271 () Bool)

(assert (=> b!236317 m!257271))

(assert (=> b!236158 d!59307))

(declare-fun d!59309 () Bool)

(assert (=> d!59309 (= (apply!213 lt!119477 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)) (get!2858 (getValueByKey!270 (toList!1801 lt!119477) (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8736 () Bool)

(assert (= bs!8736 d!59309))

(assert (=> bs!8736 m!257075))

(declare-fun m!257273 () Bool)

(assert (=> bs!8736 m!257273))

(assert (=> bs!8736 m!257273))

(declare-fun m!257275 () Bool)

(assert (=> bs!8736 m!257275))

(assert (=> b!236217 d!59309))

(declare-fun d!59311 () Bool)

(declare-fun c!39344 () Bool)

(assert (=> d!59311 (= c!39344 ((_ is ValueCellFull!2766) (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!153484 () V!7939)

(assert (=> d!59311 (= (get!2857 (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!551 (defaultEntry!4389 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!153484)))

(declare-fun b!236323 () Bool)

(declare-fun get!2859 (ValueCell!2766 V!7939) V!7939)

(assert (=> b!236323 (= e!153484 (get!2859 (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!551 (defaultEntry!4389 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!236324 () Bool)

(declare-fun get!2860 (ValueCell!2766 V!7939) V!7939)

(assert (=> b!236324 (= e!153484 (get!2860 (select (arr!5559 (_values!4372 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!551 (defaultEntry!4389 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59311 c!39344) b!236323))

(assert (= (and d!59311 (not c!39344)) b!236324))

(assert (=> b!236323 m!257115))

(assert (=> b!236323 m!257117))

(declare-fun m!257277 () Bool)

(assert (=> b!236323 m!257277))

(assert (=> b!236324 m!257115))

(assert (=> b!236324 m!257117))

(declare-fun m!257279 () Bool)

(assert (=> b!236324 m!257279))

(assert (=> b!236217 d!59311))

(assert (=> d!59261 d!59263))

(declare-fun b!236343 () Bool)

(declare-fun e!153495 () SeekEntryResult!1010)

(declare-fun e!153497 () SeekEntryResult!1010)

(assert (=> b!236343 (= e!153495 e!153497)))

(declare-fun c!39353 () Bool)

(declare-fun lt!119557 () (_ BitVec 64))

(assert (=> b!236343 (= c!39353 (or (= lt!119557 key!932) (= (bvadd lt!119557 lt!119557) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!236344 () Bool)

(declare-fun lt!119556 () SeekEntryResult!1010)

(assert (=> b!236344 (and (bvsge (index!6212 lt!119556) #b00000000000000000000000000000000) (bvslt (index!6212 lt!119556) (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun res!115910 () Bool)

(assert (=> b!236344 (= res!115910 (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6212 lt!119556)) key!932))))

(declare-fun e!153499 () Bool)

(assert (=> b!236344 (=> res!115910 e!153499)))

(declare-fun e!153496 () Bool)

(assert (=> b!236344 (= e!153496 e!153499)))

(declare-fun b!236345 () Bool)

(assert (=> b!236345 (and (bvsge (index!6212 lt!119556) #b00000000000000000000000000000000) (bvslt (index!6212 lt!119556) (size!5897 (_keys!6468 thiss!1504))))))

(assert (=> b!236345 (= e!153499 (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6212 lt!119556)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236346 () Bool)

(declare-fun e!153498 () Bool)

(assert (=> b!236346 (= e!153498 e!153496)))

(declare-fun res!115911 () Bool)

(assert (=> b!236346 (= res!115911 (and ((_ is Intermediate!1010) lt!119556) (not (undefined!1822 lt!119556)) (bvslt (x!23866 lt!119556) #b01111111111111111111111111111110) (bvsge (x!23866 lt!119556) #b00000000000000000000000000000000) (bvsge (x!23866 lt!119556) #b00000000000000000000000000000000)))))

(assert (=> b!236346 (=> (not res!115911) (not e!153496))))

(declare-fun b!236347 () Bool)

(assert (=> b!236347 (= e!153498 (bvsge (x!23866 lt!119556) #b01111111111111111111111111111110))))

(declare-fun b!236348 () Bool)

(assert (=> b!236348 (= e!153497 (Intermediate!1010 false (toIndex!0 key!932 (mask!10374 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!236349 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!236349 (= e!153497 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10374 thiss!1504)) #b00000000000000000000000000000000 (mask!10374 thiss!1504)) key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)))))

(declare-fun d!59313 () Bool)

(assert (=> d!59313 e!153498))

(declare-fun c!39351 () Bool)

(assert (=> d!59313 (= c!39351 (and ((_ is Intermediate!1010) lt!119556) (undefined!1822 lt!119556)))))

(assert (=> d!59313 (= lt!119556 e!153495)))

(declare-fun c!39352 () Bool)

(assert (=> d!59313 (= c!39352 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!59313 (= lt!119557 (select (arr!5560 (_keys!6468 thiss!1504)) (toIndex!0 key!932 (mask!10374 thiss!1504))))))

(assert (=> d!59313 (validMask!0 (mask!10374 thiss!1504))))

(assert (=> d!59313 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10374 thiss!1504)) key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)) lt!119556)))

(declare-fun b!236350 () Bool)

(assert (=> b!236350 (= e!153495 (Intermediate!1010 true (toIndex!0 key!932 (mask!10374 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!236351 () Bool)

(assert (=> b!236351 (and (bvsge (index!6212 lt!119556) #b00000000000000000000000000000000) (bvslt (index!6212 lt!119556) (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun res!115909 () Bool)

(assert (=> b!236351 (= res!115909 (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6212 lt!119556)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236351 (=> res!115909 e!153499)))

(assert (= (and d!59313 c!39352) b!236350))

(assert (= (and d!59313 (not c!39352)) b!236343))

(assert (= (and b!236343 c!39353) b!236348))

(assert (= (and b!236343 (not c!39353)) b!236349))

(assert (= (and d!59313 c!39351) b!236347))

(assert (= (and d!59313 (not c!39351)) b!236346))

(assert (= (and b!236346 res!115911) b!236344))

(assert (= (and b!236344 (not res!115910)) b!236351))

(assert (= (and b!236351 (not res!115909)) b!236345))

(assert (=> b!236349 m!257045))

(declare-fun m!257281 () Bool)

(assert (=> b!236349 m!257281))

(assert (=> b!236349 m!257281))

(declare-fun m!257283 () Bool)

(assert (=> b!236349 m!257283))

(declare-fun m!257285 () Bool)

(assert (=> b!236344 m!257285))

(assert (=> d!59313 m!257045))

(declare-fun m!257287 () Bool)

(assert (=> d!59313 m!257287))

(assert (=> d!59313 m!257023))

(assert (=> b!236351 m!257285))

(assert (=> b!236345 m!257285))

(assert (=> d!59251 d!59313))

(declare-fun d!59315 () Bool)

(declare-fun lt!119563 () (_ BitVec 32))

(declare-fun lt!119562 () (_ BitVec 32))

(assert (=> d!59315 (= lt!119563 (bvmul (bvxor lt!119562 (bvlshr lt!119562 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!59315 (= lt!119562 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!59315 (and (bvsge (mask!10374 thiss!1504) #b00000000000000000000000000000000) (let ((res!115912 (let ((h!4224 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23883 (bvmul (bvxor h!4224 (bvlshr h!4224 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23883 (bvlshr x!23883 #b00000000000000000000000000001101)) (mask!10374 thiss!1504)))))) (and (bvslt res!115912 (bvadd (mask!10374 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!115912 #b00000000000000000000000000000000))))))

(assert (=> d!59315 (= (toIndex!0 key!932 (mask!10374 thiss!1504)) (bvand (bvxor lt!119563 (bvlshr lt!119563 #b00000000000000000000000000001101)) (mask!10374 thiss!1504)))))

(assert (=> d!59251 d!59315))

(assert (=> d!59251 d!59263))

(declare-fun d!59317 () Bool)

(assert (=> d!59317 (= (apply!213 lt!119477 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2858 (getValueByKey!270 (toList!1801 lt!119477) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8737 () Bool)

(assert (= bs!8737 d!59317))

(declare-fun m!257289 () Bool)

(assert (=> bs!8737 m!257289))

(assert (=> bs!8737 m!257289))

(declare-fun m!257291 () Bool)

(assert (=> bs!8737 m!257291))

(assert (=> b!236216 d!59317))

(declare-fun d!59319 () Bool)

(assert (=> d!59319 (isDefined!212 (getValueByKey!270 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932))))

(declare-fun lt!119566 () Unit!7269)

(declare-fun choose!1114 (List!3573 (_ BitVec 64)) Unit!7269)

(assert (=> d!59319 (= lt!119566 (choose!1114 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932))))

(declare-fun e!153502 () Bool)

(assert (=> d!59319 e!153502))

(declare-fun res!115915 () Bool)

(assert (=> d!59319 (=> (not res!115915) (not e!153502))))

(declare-fun isStrictlySorted!358 (List!3573) Bool)

(assert (=> d!59319 (= res!115915 (isStrictlySorted!358 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))))))

(assert (=> d!59319 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932) lt!119566)))

(declare-fun b!236354 () Bool)

(assert (=> b!236354 (= e!153502 (containsKey!262 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932))))

(assert (= (and d!59319 res!115915) b!236354))

(assert (=> d!59319 m!257067))

(assert (=> d!59319 m!257067))

(assert (=> d!59319 m!257069))

(declare-fun m!257293 () Bool)

(assert (=> d!59319 m!257293))

(declare-fun m!257295 () Bool)

(assert (=> d!59319 m!257295))

(assert (=> b!236354 m!257063))

(assert (=> b!236156 d!59319))

(assert (=> b!236156 d!59305))

(assert (=> b!236156 d!59307))

(declare-fun b!236367 () Bool)

(declare-fun e!153510 () SeekEntryResult!1010)

(declare-fun e!153509 () SeekEntryResult!1010)

(assert (=> b!236367 (= e!153510 e!153509)))

(declare-fun c!39361 () Bool)

(declare-fun lt!119571 () (_ BitVec 64))

(assert (=> b!236367 (= c!39361 (= lt!119571 key!932))))

(declare-fun d!59321 () Bool)

(declare-fun lt!119572 () SeekEntryResult!1010)

(assert (=> d!59321 (and (or ((_ is Undefined!1010) lt!119572) (not ((_ is Found!1010) lt!119572)) (and (bvsge (index!6211 lt!119572) #b00000000000000000000000000000000) (bvslt (index!6211 lt!119572) (size!5897 (_keys!6468 thiss!1504))))) (or ((_ is Undefined!1010) lt!119572) ((_ is Found!1010) lt!119572) (not ((_ is MissingVacant!1010) lt!119572)) (not (= (index!6213 lt!119572) (index!6212 lt!119406))) (and (bvsge (index!6213 lt!119572) #b00000000000000000000000000000000) (bvslt (index!6213 lt!119572) (size!5897 (_keys!6468 thiss!1504))))) (or ((_ is Undefined!1010) lt!119572) (ite ((_ is Found!1010) lt!119572) (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6211 lt!119572)) key!932) (and ((_ is MissingVacant!1010) lt!119572) (= (index!6213 lt!119572) (index!6212 lt!119406)) (= (select (arr!5560 (_keys!6468 thiss!1504)) (index!6213 lt!119572)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!59321 (= lt!119572 e!153510)))

(declare-fun c!39362 () Bool)

(assert (=> d!59321 (= c!39362 (bvsge (x!23866 lt!119406) #b01111111111111111111111111111110))))

(assert (=> d!59321 (= lt!119571 (select (arr!5560 (_keys!6468 thiss!1504)) (index!6212 lt!119406)))))

(assert (=> d!59321 (validMask!0 (mask!10374 thiss!1504))))

(assert (=> d!59321 (= (seekKeyOrZeroReturnVacant!0 (x!23866 lt!119406) (index!6212 lt!119406) (index!6212 lt!119406) key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)) lt!119572)))

(declare-fun b!236368 () Bool)

(declare-fun e!153511 () SeekEntryResult!1010)

(assert (=> b!236368 (= e!153511 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23866 lt!119406) #b00000000000000000000000000000001) (nextIndex!0 (index!6212 lt!119406) (x!23866 lt!119406) (mask!10374 thiss!1504)) (index!6212 lt!119406) key!932 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)))))

(declare-fun b!236369 () Bool)

(assert (=> b!236369 (= e!153509 (Found!1010 (index!6212 lt!119406)))))

(declare-fun b!236370 () Bool)

(assert (=> b!236370 (= e!153511 (MissingVacant!1010 (index!6212 lt!119406)))))

(declare-fun b!236371 () Bool)

(assert (=> b!236371 (= e!153510 Undefined!1010)))

(declare-fun b!236372 () Bool)

(declare-fun c!39360 () Bool)

(assert (=> b!236372 (= c!39360 (= lt!119571 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236372 (= e!153509 e!153511)))

(assert (= (and d!59321 c!39362) b!236371))

(assert (= (and d!59321 (not c!39362)) b!236367))

(assert (= (and b!236367 c!39361) b!236369))

(assert (= (and b!236367 (not c!39361)) b!236372))

(assert (= (and b!236372 c!39360) b!236370))

(assert (= (and b!236372 (not c!39360)) b!236368))

(declare-fun m!257297 () Bool)

(assert (=> d!59321 m!257297))

(declare-fun m!257299 () Bool)

(assert (=> d!59321 m!257299))

(assert (=> d!59321 m!257041))

(assert (=> d!59321 m!257023))

(declare-fun m!257301 () Bool)

(assert (=> b!236368 m!257301))

(assert (=> b!236368 m!257301))

(declare-fun m!257303 () Bool)

(assert (=> b!236368 m!257303))

(assert (=> b!236139 d!59321))

(assert (=> b!236221 d!59301))

(declare-fun d!59323 () Bool)

(assert (=> d!59323 (= (apply!213 lt!119477 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2858 (getValueByKey!270 (toList!1801 lt!119477) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8738 () Bool)

(assert (= bs!8738 d!59323))

(assert (=> bs!8738 m!257253))

(assert (=> bs!8738 m!257253))

(declare-fun m!257305 () Bool)

(assert (=> bs!8738 m!257305))

(assert (=> b!236215 d!59323))

(declare-fun d!59325 () Bool)

(declare-fun e!153512 () Bool)

(assert (=> d!59325 e!153512))

(declare-fun res!115917 () Bool)

(assert (=> d!59325 (=> (not res!115917) (not e!153512))))

(declare-fun lt!119575 () ListLongMap!3571)

(assert (=> d!59325 (= res!115917 (contains!1673 lt!119575 (_1!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))))))

(declare-fun lt!119576 () List!3573)

(assert (=> d!59325 (= lt!119575 (ListLongMap!3572 lt!119576))))

(declare-fun lt!119573 () Unit!7269)

(declare-fun lt!119574 () Unit!7269)

(assert (=> d!59325 (= lt!119573 lt!119574)))

(assert (=> d!59325 (= (getValueByKey!270 lt!119576 (_1!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))))))

(assert (=> d!59325 (= lt!119574 (lemmaContainsTupThenGetReturnValue!152 lt!119576 (_1!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))))))

(assert (=> d!59325 (= lt!119576 (insertStrictlySorted!154 (toList!1801 call!21969) (_1!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))) (_2!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))))))

(assert (=> d!59325 (= (+!635 call!21969 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))) lt!119575)))

(declare-fun b!236373 () Bool)

(declare-fun res!115916 () Bool)

(assert (=> b!236373 (=> (not res!115916) (not e!153512))))

(assert (=> b!236373 (= res!115916 (= (getValueByKey!270 (toList!1801 lt!119575) (_1!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504)))) (Some!275 (_2!2332 (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))))))

(declare-fun b!236374 () Bool)

(assert (=> b!236374 (= e!153512 (contains!1675 (toList!1801 lt!119575) (tuple2!4645 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4230 thiss!1504))))))

(assert (= (and d!59325 res!115917) b!236373))

(assert (= (and b!236373 res!115916) b!236374))

(declare-fun m!257307 () Bool)

(assert (=> d!59325 m!257307))

(declare-fun m!257309 () Bool)

(assert (=> d!59325 m!257309))

(declare-fun m!257311 () Bool)

(assert (=> d!59325 m!257311))

(declare-fun m!257313 () Bool)

(assert (=> d!59325 m!257313))

(declare-fun m!257315 () Bool)

(assert (=> b!236373 m!257315))

(declare-fun m!257317 () Bool)

(assert (=> b!236374 m!257317))

(assert (=> b!236214 d!59325))

(declare-fun d!59327 () Bool)

(declare-fun e!153513 () Bool)

(assert (=> d!59327 e!153513))

(declare-fun res!115918 () Bool)

(assert (=> d!59327 (=> res!115918 e!153513)))

(declare-fun lt!119577 () Bool)

(assert (=> d!59327 (= res!115918 (not lt!119577))))

(declare-fun lt!119578 () Bool)

(assert (=> d!59327 (= lt!119577 lt!119578)))

(declare-fun lt!119580 () Unit!7269)

(declare-fun e!153514 () Unit!7269)

(assert (=> d!59327 (= lt!119580 e!153514)))

(declare-fun c!39363 () Bool)

(assert (=> d!59327 (= c!39363 lt!119578)))

(assert (=> d!59327 (= lt!119578 (containsKey!262 (toList!1801 lt!119477) (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59327 (= (contains!1673 lt!119477 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)) lt!119577)))

(declare-fun b!236375 () Bool)

(declare-fun lt!119579 () Unit!7269)

(assert (=> b!236375 (= e!153514 lt!119579)))

(assert (=> b!236375 (= lt!119579 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!1801 lt!119477) (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!236375 (isDefined!212 (getValueByKey!270 (toList!1801 lt!119477) (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236376 () Bool)

(declare-fun Unit!7275 () Unit!7269)

(assert (=> b!236376 (= e!153514 Unit!7275)))

(declare-fun b!236377 () Bool)

(assert (=> b!236377 (= e!153513 (isDefined!212 (getValueByKey!270 (toList!1801 lt!119477) (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!59327 c!39363) b!236375))

(assert (= (and d!59327 (not c!39363)) b!236376))

(assert (= (and d!59327 (not res!115918)) b!236377))

(assert (=> d!59327 m!257075))

(declare-fun m!257319 () Bool)

(assert (=> d!59327 m!257319))

(assert (=> b!236375 m!257075))

(declare-fun m!257321 () Bool)

(assert (=> b!236375 m!257321))

(assert (=> b!236375 m!257075))

(assert (=> b!236375 m!257273))

(assert (=> b!236375 m!257273))

(declare-fun m!257323 () Bool)

(assert (=> b!236375 m!257323))

(assert (=> b!236377 m!257075))

(assert (=> b!236377 m!257273))

(assert (=> b!236377 m!257273))

(assert (=> b!236377 m!257323))

(assert (=> b!236204 d!59327))

(assert (=> bm!21966 d!59277))

(declare-fun b!236389 () Bool)

(declare-fun e!153524 () Bool)

(declare-fun contains!1676 (List!3575 (_ BitVec 64)) Bool)

(assert (=> b!236389 (= e!153524 (contains!1676 Nil!3572 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236390 () Bool)

(declare-fun e!153523 () Bool)

(declare-fun call!21976 () Bool)

(assert (=> b!236390 (= e!153523 call!21976)))

(declare-fun b!236391 () Bool)

(declare-fun e!153525 () Bool)

(declare-fun e!153526 () Bool)

(assert (=> b!236391 (= e!153525 e!153526)))

(declare-fun res!115926 () Bool)

(assert (=> b!236391 (=> (not res!115926) (not e!153526))))

(assert (=> b!236391 (= res!115926 (not e!153524))))

(declare-fun res!115927 () Bool)

(assert (=> b!236391 (=> (not res!115927) (not e!153524))))

(assert (=> b!236391 (= res!115927 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!236392 () Bool)

(assert (=> b!236392 (= e!153523 call!21976)))

(declare-fun bm!21973 () Bool)

(declare-fun c!39366 () Bool)

(assert (=> bm!21973 (= call!21976 (arrayNoDuplicates!0 (_keys!6468 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!39366 (Cons!3571 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000) Nil!3572) Nil!3572)))))

(declare-fun b!236388 () Bool)

(assert (=> b!236388 (= e!153526 e!153523)))

(assert (=> b!236388 (= c!39366 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59329 () Bool)

(declare-fun res!115925 () Bool)

(assert (=> d!59329 (=> res!115925 e!153525)))

(assert (=> d!59329 (= res!115925 (bvsge #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(assert (=> d!59329 (= (arrayNoDuplicates!0 (_keys!6468 thiss!1504) #b00000000000000000000000000000000 Nil!3572) e!153525)))

(assert (= (and d!59329 (not res!115925)) b!236391))

(assert (= (and b!236391 res!115927) b!236389))

(assert (= (and b!236391 res!115926) b!236388))

(assert (= (and b!236388 c!39366) b!236392))

(assert (= (and b!236388 (not c!39366)) b!236390))

(assert (= (or b!236392 b!236390) bm!21973))

(assert (=> b!236389 m!257075))

(assert (=> b!236389 m!257075))

(declare-fun m!257325 () Bool)

(assert (=> b!236389 m!257325))

(assert (=> b!236391 m!257075))

(assert (=> b!236391 m!257075))

(assert (=> b!236391 m!257079))

(assert (=> bm!21973 m!257075))

(declare-fun m!257327 () Bool)

(assert (=> bm!21973 m!257327))

(assert (=> b!236388 m!257075))

(assert (=> b!236388 m!257075))

(assert (=> b!236388 m!257079))

(assert (=> b!236149 d!59329))

(declare-fun d!59331 () Bool)

(declare-fun res!115932 () Bool)

(declare-fun e!153531 () Bool)

(assert (=> d!59331 (=> res!115932 e!153531)))

(assert (=> d!59331 (= res!115932 (and ((_ is Cons!3569) (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))) (= (_1!2332 (h!4221 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))))) key!932)))))

(assert (=> d!59331 (= (containsKey!262 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))) key!932) e!153531)))

(declare-fun b!236397 () Bool)

(declare-fun e!153532 () Bool)

(assert (=> b!236397 (= e!153531 e!153532)))

(declare-fun res!115933 () Bool)

(assert (=> b!236397 (=> (not res!115933) (not e!153532))))

(assert (=> b!236397 (= res!115933 (and (or (not ((_ is Cons!3569) (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))))) (bvsle (_1!2332 (h!4221 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))))) key!932)) ((_ is Cons!3569) (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))) (bvslt (_1!2332 (h!4221 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504))))) key!932)))))

(declare-fun b!236398 () Bool)

(assert (=> b!236398 (= e!153532 (containsKey!262 (t!8560 (toList!1801 (getCurrentListMap!1324 (_keys!6468 thiss!1504) (_values!4372 thiss!1504) (mask!10374 thiss!1504) (extraKeys!4126 thiss!1504) (zeroValue!4230 thiss!1504) (minValue!4230 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4389 thiss!1504)))) key!932))))

(assert (= (and d!59331 (not res!115932)) b!236397))

(assert (= (and b!236397 res!115933) b!236398))

(declare-fun m!257329 () Bool)

(assert (=> b!236398 m!257329))

(assert (=> d!59259 d!59331))

(declare-fun b!236407 () Bool)

(declare-fun e!153540 () Bool)

(declare-fun e!153539 () Bool)

(assert (=> b!236407 (= e!153540 e!153539)))

(declare-fun c!39369 () Bool)

(assert (=> b!236407 (= c!39369 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21976 () Bool)

(declare-fun call!21979 () Bool)

(assert (=> bm!21976 (= call!21979 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6468 thiss!1504) (mask!10374 thiss!1504)))))

(declare-fun b!236408 () Bool)

(declare-fun e!153541 () Bool)

(assert (=> b!236408 (= e!153539 e!153541)))

(declare-fun lt!119589 () (_ BitVec 64))

(assert (=> b!236408 (= lt!119589 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!119588 () Unit!7269)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11702 (_ BitVec 64) (_ BitVec 32)) Unit!7269)

(assert (=> b!236408 (= lt!119588 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6468 thiss!1504) lt!119589 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11702 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!236408 (arrayContainsKey!0 (_keys!6468 thiss!1504) lt!119589 #b00000000000000000000000000000000)))

(declare-fun lt!119587 () Unit!7269)

(assert (=> b!236408 (= lt!119587 lt!119588)))

(declare-fun res!115938 () Bool)

(assert (=> b!236408 (= res!115938 (= (seekEntryOrOpen!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000) (_keys!6468 thiss!1504) (mask!10374 thiss!1504)) (Found!1010 #b00000000000000000000000000000000)))))

(assert (=> b!236408 (=> (not res!115938) (not e!153541))))

(declare-fun d!59333 () Bool)

(declare-fun res!115939 () Bool)

(assert (=> d!59333 (=> res!115939 e!153540)))

(assert (=> d!59333 (= res!115939 (bvsge #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(assert (=> d!59333 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6468 thiss!1504) (mask!10374 thiss!1504)) e!153540)))

(declare-fun b!236409 () Bool)

(assert (=> b!236409 (= e!153539 call!21979)))

(declare-fun b!236410 () Bool)

(assert (=> b!236410 (= e!153541 call!21979)))

(assert (= (and d!59333 (not res!115939)) b!236407))

(assert (= (and b!236407 c!39369) b!236408))

(assert (= (and b!236407 (not c!39369)) b!236409))

(assert (= (and b!236408 res!115938) b!236410))

(assert (= (or b!236410 b!236409) bm!21976))

(assert (=> b!236407 m!257075))

(assert (=> b!236407 m!257075))

(assert (=> b!236407 m!257079))

(declare-fun m!257331 () Bool)

(assert (=> bm!21976 m!257331))

(assert (=> b!236408 m!257075))

(declare-fun m!257333 () Bool)

(assert (=> b!236408 m!257333))

(declare-fun m!257335 () Bool)

(assert (=> b!236408 m!257335))

(assert (=> b!236408 m!257075))

(declare-fun m!257337 () Bool)

(assert (=> b!236408 m!257337))

(assert (=> b!236148 d!59333))

(declare-fun d!59335 () Bool)

(declare-fun e!153542 () Bool)

(assert (=> d!59335 e!153542))

(declare-fun res!115940 () Bool)

(assert (=> d!59335 (=> res!115940 e!153542)))

(declare-fun lt!119590 () Bool)

(assert (=> d!59335 (= res!115940 (not lt!119590))))

(declare-fun lt!119591 () Bool)

(assert (=> d!59335 (= lt!119590 lt!119591)))

(declare-fun lt!119593 () Unit!7269)

(declare-fun e!153543 () Unit!7269)

(assert (=> d!59335 (= lt!119593 e!153543)))

(declare-fun c!39370 () Bool)

(assert (=> d!59335 (= c!39370 lt!119591)))

(assert (=> d!59335 (= lt!119591 (containsKey!262 (toList!1801 lt!119477) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!59335 (= (contains!1673 lt!119477 #b1000000000000000000000000000000000000000000000000000000000000000) lt!119590)))

(declare-fun b!236411 () Bool)

(declare-fun lt!119592 () Unit!7269)

(assert (=> b!236411 (= e!153543 lt!119592)))

(assert (=> b!236411 (= lt!119592 (lemmaContainsKeyImpliesGetValueByKeyDefined!211 (toList!1801 lt!119477) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!236411 (isDefined!212 (getValueByKey!270 (toList!1801 lt!119477) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!236412 () Bool)

(declare-fun Unit!7276 () Unit!7269)

(assert (=> b!236412 (= e!153543 Unit!7276)))

(declare-fun b!236413 () Bool)

(assert (=> b!236413 (= e!153542 (isDefined!212 (getValueByKey!270 (toList!1801 lt!119477) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!59335 c!39370) b!236411))

(assert (= (and d!59335 (not c!39370)) b!236412))

(assert (= (and d!59335 (not res!115940)) b!236413))

(declare-fun m!257339 () Bool)

(assert (=> d!59335 m!257339))

(declare-fun m!257341 () Bool)

(assert (=> b!236411 m!257341))

(assert (=> b!236411 m!257289))

(assert (=> b!236411 m!257289))

(declare-fun m!257343 () Bool)

(assert (=> b!236411 m!257343))

(assert (=> b!236413 m!257289))

(assert (=> b!236413 m!257289))

(assert (=> b!236413 m!257343))

(assert (=> bm!21965 d!59335))

(declare-fun b!236422 () Bool)

(declare-fun e!153548 () (_ BitVec 32))

(assert (=> b!236422 (= e!153548 #b00000000000000000000000000000000)))

(declare-fun b!236423 () Bool)

(declare-fun e!153549 () (_ BitVec 32))

(declare-fun call!21982 () (_ BitVec 32))

(assert (=> b!236423 (= e!153549 (bvadd #b00000000000000000000000000000001 call!21982))))

(declare-fun b!236424 () Bool)

(assert (=> b!236424 (= e!153549 call!21982)))

(declare-fun bm!21979 () Bool)

(assert (=> bm!21979 (= call!21982 (arrayCountValidKeys!0 (_keys!6468 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5897 (_keys!6468 thiss!1504))))))

(declare-fun b!236425 () Bool)

(assert (=> b!236425 (= e!153548 e!153549)))

(declare-fun c!39376 () Bool)

(assert (=> b!236425 (= c!39376 (validKeyInArray!0 (select (arr!5560 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!59337 () Bool)

(declare-fun lt!119596 () (_ BitVec 32))

(assert (=> d!59337 (and (bvsge lt!119596 #b00000000000000000000000000000000) (bvsle lt!119596 (bvsub (size!5897 (_keys!6468 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!59337 (= lt!119596 e!153548)))

(declare-fun c!39375 () Bool)

(assert (=> d!59337 (= c!39375 (bvsge #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))))))

(assert (=> d!59337 (and (bvsle #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5897 (_keys!6468 thiss!1504)) (size!5897 (_keys!6468 thiss!1504))))))

(assert (=> d!59337 (= (arrayCountValidKeys!0 (_keys!6468 thiss!1504) #b00000000000000000000000000000000 (size!5897 (_keys!6468 thiss!1504))) lt!119596)))

(assert (= (and d!59337 c!39375) b!236422))

(assert (= (and d!59337 (not c!39375)) b!236425))

(assert (= (and b!236425 c!39376) b!236423))

(assert (= (and b!236425 (not c!39376)) b!236424))

(assert (= (or b!236423 b!236424) bm!21979))

(declare-fun m!257345 () Bool)

(assert (=> bm!21979 m!257345))

(assert (=> b!236425 m!257075))

(assert (=> b!236425 m!257075))

(assert (=> b!236425 m!257079))

(assert (=> b!236147 d!59337))

(declare-fun b!236427 () Bool)

(declare-fun e!153551 () Bool)

(assert (=> b!236427 (= e!153551 tp_is_empty!6219)))

(declare-fun mapNonEmpty!10539 () Bool)

(declare-fun mapRes!10539 () Bool)

(declare-fun tp!22257 () Bool)

(declare-fun e!153550 () Bool)

(assert (=> mapNonEmpty!10539 (= mapRes!10539 (and tp!22257 e!153550))))

(declare-fun mapKey!10539 () (_ BitVec 32))

(declare-fun mapRest!10539 () (Array (_ BitVec 32) ValueCell!2766))

(declare-fun mapValue!10539 () ValueCell!2766)

(assert (=> mapNonEmpty!10539 (= mapRest!10538 (store mapRest!10539 mapKey!10539 mapValue!10539))))

(declare-fun condMapEmpty!10539 () Bool)

(declare-fun mapDefault!10539 () ValueCell!2766)

(assert (=> mapNonEmpty!10538 (= condMapEmpty!10539 (= mapRest!10538 ((as const (Array (_ BitVec 32) ValueCell!2766)) mapDefault!10539)))))

(assert (=> mapNonEmpty!10538 (= tp!22256 (and e!153551 mapRes!10539))))

(declare-fun mapIsEmpty!10539 () Bool)

(assert (=> mapIsEmpty!10539 mapRes!10539))

(declare-fun b!236426 () Bool)

(assert (=> b!236426 (= e!153550 tp_is_empty!6219)))

(assert (= (and mapNonEmpty!10538 condMapEmpty!10539) mapIsEmpty!10539))

(assert (= (and mapNonEmpty!10538 (not condMapEmpty!10539)) mapNonEmpty!10539))

(assert (= (and mapNonEmpty!10539 ((_ is ValueCellFull!2766) mapValue!10539)) b!236426))

(assert (= (and mapNonEmpty!10538 ((_ is ValueCellFull!2766) mapDefault!10539)) b!236427))

(declare-fun m!257347 () Bool)

(assert (=> mapNonEmpty!10539 m!257347))

(declare-fun b_lambda!7953 () Bool)

(assert (= b_lambda!7951 (or (and b!236094 b_free!6357) b_lambda!7953)))

(declare-fun b_lambda!7955 () Bool)

(assert (= b_lambda!7949 (or (and b!236094 b_free!6357) b_lambda!7955)))

(check-sat (not d!59265) (not b_lambda!7947) (not b!236302) (not d!59309) (not b_next!6357) (not b!236273) (not b!236389) (not d!59267) (not b!236407) (not b!236241) (not b!236388) (not d!59303) (not d!59297) (not b!236375) (not d!59325) (not b!236349) (not bm!21973) (not b!236323) (not b!236408) (not b!236377) (not b!236285) (not b!236282) (not d!59295) (not b!236368) (not mapNonEmpty!10539) (not b_lambda!7955) (not b!236317) (not d!59271) (not b!236411) (not b!236244) (not b!236287) tp_is_empty!6219 (not b!236425) (not d!59289) (not d!59299) (not b!236305) (not b!236299) (not d!59317) (not b!236284) (not b!236276) (not b!236242) (not b!236304) (not bm!21970) (not d!59269) (not d!59291) (not d!59313) (not b!236354) (not b!236271) (not bm!21979) (not b!236413) (not b!236289) (not d!59281) (not d!59323) (not d!59279) (not d!59277) (not d!59321) (not b!236275) (not b_lambda!7953) (not b!236374) (not b!236283) (not d!59305) (not d!59319) (not b!236391) (not d!59285) (not d!59293) (not b!236278) (not d!59327) (not d!59283) (not d!59273) (not b!236243) (not b!236279) (not b!236300) (not d!59287) (not b!236281) (not d!59275) (not b!236398) (not b!236373) (not b!236324) (not d!59335) (not b!236280) (not b!236306) b_and!13317 (not bm!21976))
(check-sat b_and!13317 (not b_next!6357))
