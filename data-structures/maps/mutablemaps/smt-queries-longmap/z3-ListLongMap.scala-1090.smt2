; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22250 () Bool)

(assert start!22250)

(declare-fun b!233300 () Bool)

(declare-fun b_free!6291 () Bool)

(declare-fun b_next!6291 () Bool)

(assert (=> b!233300 (= b_free!6291 (not b_next!6291))))

(declare-fun tp!22017 () Bool)

(declare-fun b_and!13209 () Bool)

(assert (=> b!233300 (= tp!22017 b_and!13209)))

(declare-fun b!233293 () Bool)

(declare-fun e!151564 () Bool)

(declare-fun e!151561 () Bool)

(declare-fun mapRes!10402 () Bool)

(assert (=> b!233293 (= e!151564 (and e!151561 mapRes!10402))))

(declare-fun condMapEmpty!10402 () Bool)

(declare-datatypes ((V!7851 0))(
  ( (V!7852 (val!3121 Int)) )
))
(declare-datatypes ((ValueCell!2733 0))(
  ( (ValueCellFull!2733 (v!5138 V!7851)) (EmptyCell!2733) )
))
(declare-datatypes ((array!11550 0))(
  ( (array!11551 (arr!5493 (Array (_ BitVec 32) ValueCell!2733)) (size!5826 (_ BitVec 32))) )
))
(declare-datatypes ((array!11552 0))(
  ( (array!11553 (arr!5494 (Array (_ BitVec 32) (_ BitVec 64))) (size!5827 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3366 0))(
  ( (LongMapFixedSize!3367 (defaultEntry!4343 Int) (mask!10269 (_ BitVec 32)) (extraKeys!4080 (_ BitVec 32)) (zeroValue!4184 V!7851) (minValue!4184 V!7851) (_size!1732 (_ BitVec 32)) (_keys!6398 array!11552) (_values!4326 array!11550) (_vacant!1732 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3366)

(declare-fun mapDefault!10402 () ValueCell!2733)

(assert (=> b!233293 (= condMapEmpty!10402 (= (arr!5493 (_values!4326 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2733)) mapDefault!10402)))))

(declare-fun b!233294 () Bool)

(declare-fun res!114514 () Bool)

(declare-fun e!151565 () Bool)

(assert (=> b!233294 (=> (not res!114514) (not e!151565))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4600 0))(
  ( (tuple2!4601 (_1!2310 (_ BitVec 64)) (_2!2310 V!7851)) )
))
(declare-datatypes ((List!3536 0))(
  ( (Nil!3533) (Cons!3532 (h!4180 tuple2!4600) (t!8505 List!3536)) )
))
(declare-datatypes ((ListLongMap!3527 0))(
  ( (ListLongMap!3528 (toList!1779 List!3536)) )
))
(declare-fun contains!1641 (ListLongMap!3527 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1302 (array!11552 array!11550 (_ BitVec 32) (_ BitVec 32) V!7851 V!7851 (_ BitVec 32) Int) ListLongMap!3527)

(assert (=> b!233294 (= res!114514 (contains!1641 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)) key!932))))

(declare-fun b!233295 () Bool)

(declare-fun e!151567 () Bool)

(assert (=> b!233295 (= e!151567 e!151565)))

(declare-fun res!114516 () Bool)

(assert (=> b!233295 (=> (not res!114516) (not e!151565))))

(declare-datatypes ((SeekEntryResult!986 0))(
  ( (MissingZero!986 (index!6114 (_ BitVec 32))) (Found!986 (index!6115 (_ BitVec 32))) (Intermediate!986 (undefined!1798 Bool) (index!6116 (_ BitVec 32)) (x!23632 (_ BitVec 32))) (Undefined!986) (MissingVacant!986 (index!6117 (_ BitVec 32))) )
))
(declare-fun lt!118029 () SeekEntryResult!986)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!233295 (= res!114516 (or (= lt!118029 (MissingZero!986 index!297)) (= lt!118029 (MissingVacant!986 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11552 (_ BitVec 32)) SeekEntryResult!986)

(assert (=> b!233295 (= lt!118029 (seekEntryOrOpen!0 key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)))))

(declare-fun mapIsEmpty!10402 () Bool)

(assert (=> mapIsEmpty!10402 mapRes!10402))

(declare-fun b!233296 () Bool)

(declare-fun e!151566 () Bool)

(declare-fun tp_is_empty!6153 () Bool)

(assert (=> b!233296 (= e!151566 tp_is_empty!6153)))

(declare-fun b!233298 () Bool)

(assert (=> b!233298 (= e!151561 tp_is_empty!6153)))

(declare-fun b!233299 () Bool)

(declare-fun res!114517 () Bool)

(assert (=> b!233299 (=> (not res!114517) (not e!151565))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!233299 (= res!114517 (validMask!0 (mask!10269 thiss!1504)))))

(declare-fun e!151562 () Bool)

(declare-fun array_inv!3609 (array!11552) Bool)

(declare-fun array_inv!3610 (array!11550) Bool)

(assert (=> b!233300 (= e!151562 (and tp!22017 tp_is_empty!6153 (array_inv!3609 (_keys!6398 thiss!1504)) (array_inv!3610 (_values!4326 thiss!1504)) e!151564))))

(declare-fun mapNonEmpty!10402 () Bool)

(declare-fun tp!22018 () Bool)

(assert (=> mapNonEmpty!10402 (= mapRes!10402 (and tp!22018 e!151566))))

(declare-fun mapValue!10402 () ValueCell!2733)

(declare-fun mapKey!10402 () (_ BitVec 32))

(declare-fun mapRest!10402 () (Array (_ BitVec 32) ValueCell!2733))

(assert (=> mapNonEmpty!10402 (= (arr!5493 (_values!4326 thiss!1504)) (store mapRest!10402 mapKey!10402 mapValue!10402))))

(declare-fun b!233301 () Bool)

(assert (=> b!233301 (= e!151565 (not (= (size!5826 (_values!4326 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10269 thiss!1504)))))))

(declare-fun res!114513 () Bool)

(assert (=> start!22250 (=> (not res!114513) (not e!151567))))

(declare-fun valid!1321 (LongMapFixedSize!3366) Bool)

(assert (=> start!22250 (= res!114513 (valid!1321 thiss!1504))))

(assert (=> start!22250 e!151567))

(assert (=> start!22250 e!151562))

(assert (=> start!22250 true))

(declare-fun b!233297 () Bool)

(declare-fun res!114515 () Bool)

(assert (=> b!233297 (=> (not res!114515) (not e!151567))))

(assert (=> b!233297 (= res!114515 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!22250 res!114513) b!233297))

(assert (= (and b!233297 res!114515) b!233295))

(assert (= (and b!233295 res!114516) b!233294))

(assert (= (and b!233294 res!114514) b!233299))

(assert (= (and b!233299 res!114517) b!233301))

(assert (= (and b!233293 condMapEmpty!10402) mapIsEmpty!10402))

(assert (= (and b!233293 (not condMapEmpty!10402)) mapNonEmpty!10402))

(get-info :version)

(assert (= (and mapNonEmpty!10402 ((_ is ValueCellFull!2733) mapValue!10402)) b!233296))

(assert (= (and b!233293 ((_ is ValueCellFull!2733) mapDefault!10402)) b!233298))

(assert (= b!233300 b!233293))

(assert (= start!22250 b!233300))

(declare-fun m!254717 () Bool)

(assert (=> b!233300 m!254717))

(declare-fun m!254719 () Bool)

(assert (=> b!233300 m!254719))

(declare-fun m!254721 () Bool)

(assert (=> b!233299 m!254721))

(declare-fun m!254723 () Bool)

(assert (=> b!233295 m!254723))

(declare-fun m!254725 () Bool)

(assert (=> b!233294 m!254725))

(assert (=> b!233294 m!254725))

(declare-fun m!254727 () Bool)

(assert (=> b!233294 m!254727))

(declare-fun m!254729 () Bool)

(assert (=> start!22250 m!254729))

(declare-fun m!254731 () Bool)

(assert (=> mapNonEmpty!10402 m!254731))

(check-sat (not b_next!6291) (not start!22250) (not mapNonEmpty!10402) (not b!233295) tp_is_empty!6153 (not b!233299) b_and!13209 (not b!233294) (not b!233300))
(check-sat b_and!13209 (not b_next!6291))
(get-model)

(declare-fun d!58795 () Bool)

(assert (=> d!58795 (= (array_inv!3609 (_keys!6398 thiss!1504)) (bvsge (size!5827 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233300 d!58795))

(declare-fun d!58797 () Bool)

(assert (=> d!58797 (= (array_inv!3610 (_values!4326 thiss!1504)) (bvsge (size!5826 (_values!4326 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233300 d!58797))

(declare-fun d!58799 () Bool)

(declare-fun res!114539 () Bool)

(declare-fun e!151591 () Bool)

(assert (=> d!58799 (=> (not res!114539) (not e!151591))))

(declare-fun simpleValid!226 (LongMapFixedSize!3366) Bool)

(assert (=> d!58799 (= res!114539 (simpleValid!226 thiss!1504))))

(assert (=> d!58799 (= (valid!1321 thiss!1504) e!151591)))

(declare-fun b!233335 () Bool)

(declare-fun res!114540 () Bool)

(assert (=> b!233335 (=> (not res!114540) (not e!151591))))

(declare-fun arrayCountValidKeys!0 (array!11552 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!233335 (= res!114540 (= (arrayCountValidKeys!0 (_keys!6398 thiss!1504) #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))) (_size!1732 thiss!1504)))))

(declare-fun b!233336 () Bool)

(declare-fun res!114541 () Bool)

(assert (=> b!233336 (=> (not res!114541) (not e!151591))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11552 (_ BitVec 32)) Bool)

(assert (=> b!233336 (= res!114541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)))))

(declare-fun b!233337 () Bool)

(declare-datatypes ((List!3537 0))(
  ( (Nil!3534) (Cons!3533 (h!4181 (_ BitVec 64)) (t!8508 List!3537)) )
))
(declare-fun arrayNoDuplicates!0 (array!11552 (_ BitVec 32) List!3537) Bool)

(assert (=> b!233337 (= e!151591 (arrayNoDuplicates!0 (_keys!6398 thiss!1504) #b00000000000000000000000000000000 Nil!3534))))

(assert (= (and d!58799 res!114539) b!233335))

(assert (= (and b!233335 res!114540) b!233336))

(assert (= (and b!233336 res!114541) b!233337))

(declare-fun m!254749 () Bool)

(assert (=> d!58799 m!254749))

(declare-fun m!254751 () Bool)

(assert (=> b!233335 m!254751))

(declare-fun m!254753 () Bool)

(assert (=> b!233336 m!254753))

(declare-fun m!254755 () Bool)

(assert (=> b!233337 m!254755))

(assert (=> start!22250 d!58799))

(declare-fun b!233350 () Bool)

(declare-fun e!151599 () SeekEntryResult!986)

(declare-fun lt!118039 () SeekEntryResult!986)

(assert (=> b!233350 (= e!151599 (MissingZero!986 (index!6116 lt!118039)))))

(declare-fun b!233351 () Bool)

(declare-fun e!151598 () SeekEntryResult!986)

(declare-fun e!151600 () SeekEntryResult!986)

(assert (=> b!233351 (= e!151598 e!151600)))

(declare-fun lt!118040 () (_ BitVec 64))

(assert (=> b!233351 (= lt!118040 (select (arr!5494 (_keys!6398 thiss!1504)) (index!6116 lt!118039)))))

(declare-fun c!38793 () Bool)

(assert (=> b!233351 (= c!38793 (= lt!118040 key!932))))

(declare-fun b!233353 () Bool)

(assert (=> b!233353 (= e!151600 (Found!986 (index!6116 lt!118039)))))

(declare-fun b!233354 () Bool)

(declare-fun c!38795 () Bool)

(assert (=> b!233354 (= c!38795 (= lt!118040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!233354 (= e!151600 e!151599)))

(declare-fun b!233355 () Bool)

(assert (=> b!233355 (= e!151598 Undefined!986)))

(declare-fun b!233352 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11552 (_ BitVec 32)) SeekEntryResult!986)

(assert (=> b!233352 (= e!151599 (seekKeyOrZeroReturnVacant!0 (x!23632 lt!118039) (index!6116 lt!118039) (index!6116 lt!118039) key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)))))

(declare-fun d!58801 () Bool)

(declare-fun lt!118041 () SeekEntryResult!986)

(assert (=> d!58801 (and (or ((_ is Undefined!986) lt!118041) (not ((_ is Found!986) lt!118041)) (and (bvsge (index!6115 lt!118041) #b00000000000000000000000000000000) (bvslt (index!6115 lt!118041) (size!5827 (_keys!6398 thiss!1504))))) (or ((_ is Undefined!986) lt!118041) ((_ is Found!986) lt!118041) (not ((_ is MissingZero!986) lt!118041)) (and (bvsge (index!6114 lt!118041) #b00000000000000000000000000000000) (bvslt (index!6114 lt!118041) (size!5827 (_keys!6398 thiss!1504))))) (or ((_ is Undefined!986) lt!118041) ((_ is Found!986) lt!118041) ((_ is MissingZero!986) lt!118041) (not ((_ is MissingVacant!986) lt!118041)) (and (bvsge (index!6117 lt!118041) #b00000000000000000000000000000000) (bvslt (index!6117 lt!118041) (size!5827 (_keys!6398 thiss!1504))))) (or ((_ is Undefined!986) lt!118041) (ite ((_ is Found!986) lt!118041) (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6115 lt!118041)) key!932) (ite ((_ is MissingZero!986) lt!118041) (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6114 lt!118041)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!986) lt!118041) (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6117 lt!118041)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!58801 (= lt!118041 e!151598)))

(declare-fun c!38794 () Bool)

(assert (=> d!58801 (= c!38794 (and ((_ is Intermediate!986) lt!118039) (undefined!1798 lt!118039)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!11552 (_ BitVec 32)) SeekEntryResult!986)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!58801 (= lt!118039 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10269 thiss!1504)) key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)))))

(assert (=> d!58801 (validMask!0 (mask!10269 thiss!1504))))

(assert (=> d!58801 (= (seekEntryOrOpen!0 key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)) lt!118041)))

(assert (= (and d!58801 c!38794) b!233355))

(assert (= (and d!58801 (not c!38794)) b!233351))

(assert (= (and b!233351 c!38793) b!233353))

(assert (= (and b!233351 (not c!38793)) b!233354))

(assert (= (and b!233354 c!38795) b!233350))

(assert (= (and b!233354 (not c!38795)) b!233352))

(declare-fun m!254757 () Bool)

(assert (=> b!233351 m!254757))

(declare-fun m!254759 () Bool)

(assert (=> b!233352 m!254759))

(declare-fun m!254761 () Bool)

(assert (=> d!58801 m!254761))

(declare-fun m!254763 () Bool)

(assert (=> d!58801 m!254763))

(assert (=> d!58801 m!254761))

(declare-fun m!254765 () Bool)

(assert (=> d!58801 m!254765))

(declare-fun m!254767 () Bool)

(assert (=> d!58801 m!254767))

(declare-fun m!254769 () Bool)

(assert (=> d!58801 m!254769))

(assert (=> d!58801 m!254721))

(assert (=> b!233295 d!58801))

(declare-fun d!58803 () Bool)

(assert (=> d!58803 (= (validMask!0 (mask!10269 thiss!1504)) (and (or (= (mask!10269 thiss!1504) #b00000000000000000000000000000111) (= (mask!10269 thiss!1504) #b00000000000000000000000000001111) (= (mask!10269 thiss!1504) #b00000000000000000000000000011111) (= (mask!10269 thiss!1504) #b00000000000000000000000000111111) (= (mask!10269 thiss!1504) #b00000000000000000000000001111111) (= (mask!10269 thiss!1504) #b00000000000000000000000011111111) (= (mask!10269 thiss!1504) #b00000000000000000000000111111111) (= (mask!10269 thiss!1504) #b00000000000000000000001111111111) (= (mask!10269 thiss!1504) #b00000000000000000000011111111111) (= (mask!10269 thiss!1504) #b00000000000000000000111111111111) (= (mask!10269 thiss!1504) #b00000000000000000001111111111111) (= (mask!10269 thiss!1504) #b00000000000000000011111111111111) (= (mask!10269 thiss!1504) #b00000000000000000111111111111111) (= (mask!10269 thiss!1504) #b00000000000000001111111111111111) (= (mask!10269 thiss!1504) #b00000000000000011111111111111111) (= (mask!10269 thiss!1504) #b00000000000000111111111111111111) (= (mask!10269 thiss!1504) #b00000000000001111111111111111111) (= (mask!10269 thiss!1504) #b00000000000011111111111111111111) (= (mask!10269 thiss!1504) #b00000000000111111111111111111111) (= (mask!10269 thiss!1504) #b00000000001111111111111111111111) (= (mask!10269 thiss!1504) #b00000000011111111111111111111111) (= (mask!10269 thiss!1504) #b00000000111111111111111111111111) (= (mask!10269 thiss!1504) #b00000001111111111111111111111111) (= (mask!10269 thiss!1504) #b00000011111111111111111111111111) (= (mask!10269 thiss!1504) #b00000111111111111111111111111111) (= (mask!10269 thiss!1504) #b00001111111111111111111111111111) (= (mask!10269 thiss!1504) #b00011111111111111111111111111111) (= (mask!10269 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10269 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!233299 d!58803))

(declare-fun d!58805 () Bool)

(declare-fun e!151605 () Bool)

(assert (=> d!58805 e!151605))

(declare-fun res!114544 () Bool)

(assert (=> d!58805 (=> res!114544 e!151605)))

(declare-fun lt!118051 () Bool)

(assert (=> d!58805 (= res!114544 (not lt!118051))))

(declare-fun lt!118052 () Bool)

(assert (=> d!58805 (= lt!118051 lt!118052)))

(declare-datatypes ((Unit!7211 0))(
  ( (Unit!7212) )
))
(declare-fun lt!118053 () Unit!7211)

(declare-fun e!151606 () Unit!7211)

(assert (=> d!58805 (= lt!118053 e!151606)))

(declare-fun c!38798 () Bool)

(assert (=> d!58805 (= c!38798 lt!118052)))

(declare-fun containsKey!253 (List!3536 (_ BitVec 64)) Bool)

(assert (=> d!58805 (= lt!118052 (containsKey!253 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932))))

(assert (=> d!58805 (= (contains!1641 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)) key!932) lt!118051)))

(declare-fun b!233362 () Bool)

(declare-fun lt!118050 () Unit!7211)

(assert (=> b!233362 (= e!151606 lt!118050)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!202 (List!3536 (_ BitVec 64)) Unit!7211)

(assert (=> b!233362 (= lt!118050 (lemmaContainsKeyImpliesGetValueByKeyDefined!202 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932))))

(declare-datatypes ((Option!267 0))(
  ( (Some!266 (v!5140 V!7851)) (None!265) )
))
(declare-fun isDefined!203 (Option!267) Bool)

(declare-fun getValueByKey!261 (List!3536 (_ BitVec 64)) Option!267)

(assert (=> b!233362 (isDefined!203 (getValueByKey!261 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932))))

(declare-fun b!233363 () Bool)

(declare-fun Unit!7213 () Unit!7211)

(assert (=> b!233363 (= e!151606 Unit!7213)))

(declare-fun b!233364 () Bool)

(assert (=> b!233364 (= e!151605 (isDefined!203 (getValueByKey!261 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932)))))

(assert (= (and d!58805 c!38798) b!233362))

(assert (= (and d!58805 (not c!38798)) b!233363))

(assert (= (and d!58805 (not res!114544)) b!233364))

(declare-fun m!254771 () Bool)

(assert (=> d!58805 m!254771))

(declare-fun m!254773 () Bool)

(assert (=> b!233362 m!254773))

(declare-fun m!254775 () Bool)

(assert (=> b!233362 m!254775))

(assert (=> b!233362 m!254775))

(declare-fun m!254777 () Bool)

(assert (=> b!233362 m!254777))

(assert (=> b!233364 m!254775))

(assert (=> b!233364 m!254775))

(assert (=> b!233364 m!254777))

(assert (=> b!233294 d!58805))

(declare-fun call!21714 () ListLongMap!3527)

(declare-fun bm!21709 () Bool)

(declare-fun call!21715 () ListLongMap!3527)

(declare-fun c!38814 () Bool)

(declare-fun call!21712 () ListLongMap!3527)

(declare-fun c!38813 () Bool)

(declare-fun call!21717 () ListLongMap!3527)

(declare-fun +!626 (ListLongMap!3527 tuple2!4600) ListLongMap!3527)

(assert (=> bm!21709 (= call!21714 (+!626 (ite c!38813 call!21715 (ite c!38814 call!21717 call!21712)) (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))))))

(declare-fun b!233407 () Bool)

(declare-fun e!151640 () Unit!7211)

(declare-fun lt!118115 () Unit!7211)

(assert (=> b!233407 (= e!151640 lt!118115)))

(declare-fun lt!118099 () ListLongMap!3527)

(declare-fun getCurrentListMapNoExtraKeys!523 (array!11552 array!11550 (_ BitVec 32) (_ BitVec 32) V!7851 V!7851 (_ BitVec 32) Int) ListLongMap!3527)

(assert (=> b!233407 (= lt!118099 (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))))

(declare-fun lt!118112 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118112 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118105 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118105 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118114 () Unit!7211)

(declare-fun addStillContains!180 (ListLongMap!3527 (_ BitVec 64) V!7851 (_ BitVec 64)) Unit!7211)

(assert (=> b!233407 (= lt!118114 (addStillContains!180 lt!118099 lt!118112 (zeroValue!4184 thiss!1504) lt!118105))))

(assert (=> b!233407 (contains!1641 (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))) lt!118105)))

(declare-fun lt!118098 () Unit!7211)

(assert (=> b!233407 (= lt!118098 lt!118114)))

(declare-fun lt!118117 () ListLongMap!3527)

(assert (=> b!233407 (= lt!118117 (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))))

(declare-fun lt!118103 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118103 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118100 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118100 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118104 () Unit!7211)

(declare-fun addApplyDifferent!180 (ListLongMap!3527 (_ BitVec 64) V!7851 (_ BitVec 64)) Unit!7211)

(assert (=> b!233407 (= lt!118104 (addApplyDifferent!180 lt!118117 lt!118103 (minValue!4184 thiss!1504) lt!118100))))

(declare-fun apply!204 (ListLongMap!3527 (_ BitVec 64)) V!7851)

(assert (=> b!233407 (= (apply!204 (+!626 lt!118117 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))) lt!118100) (apply!204 lt!118117 lt!118100))))

(declare-fun lt!118102 () Unit!7211)

(assert (=> b!233407 (= lt!118102 lt!118104)))

(declare-fun lt!118110 () ListLongMap!3527)

(assert (=> b!233407 (= lt!118110 (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))))

(declare-fun lt!118107 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118107 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118116 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118116 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118111 () Unit!7211)

(assert (=> b!233407 (= lt!118111 (addApplyDifferent!180 lt!118110 lt!118107 (zeroValue!4184 thiss!1504) lt!118116))))

(assert (=> b!233407 (= (apply!204 (+!626 lt!118110 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))) lt!118116) (apply!204 lt!118110 lt!118116))))

(declare-fun lt!118119 () Unit!7211)

(assert (=> b!233407 (= lt!118119 lt!118111)))

(declare-fun lt!118108 () ListLongMap!3527)

(assert (=> b!233407 (= lt!118108 (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))))

(declare-fun lt!118113 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118113 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!118106 () (_ BitVec 64))

(assert (=> b!233407 (= lt!118106 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233407 (= lt!118115 (addApplyDifferent!180 lt!118108 lt!118113 (minValue!4184 thiss!1504) lt!118106))))

(assert (=> b!233407 (= (apply!204 (+!626 lt!118108 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))) lt!118106) (apply!204 lt!118108 lt!118106))))

(declare-fun b!233408 () Bool)

(declare-fun res!114570 () Bool)

(declare-fun e!151645 () Bool)

(assert (=> b!233408 (=> (not res!114570) (not e!151645))))

(declare-fun e!151638 () Bool)

(assert (=> b!233408 (= res!114570 e!151638)))

(declare-fun c!38812 () Bool)

(assert (=> b!233408 (= c!38812 (not (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!233409 () Bool)

(declare-fun e!151642 () ListLongMap!3527)

(declare-fun call!21716 () ListLongMap!3527)

(assert (=> b!233409 (= e!151642 call!21716)))

(declare-fun bm!21710 () Bool)

(assert (=> bm!21710 (= call!21712 call!21717)))

(declare-fun b!233410 () Bool)

(declare-fun e!151636 () Bool)

(assert (=> b!233410 (= e!151638 e!151636)))

(declare-fun res!114564 () Bool)

(declare-fun call!21713 () Bool)

(assert (=> b!233410 (= res!114564 call!21713)))

(assert (=> b!233410 (=> (not res!114564) (not e!151636))))

(declare-fun b!233411 () Bool)

(declare-fun e!151644 () Bool)

(declare-fun call!21718 () Bool)

(assert (=> b!233411 (= e!151644 (not call!21718))))

(declare-fun d!58807 () Bool)

(assert (=> d!58807 e!151645))

(declare-fun res!114568 () Bool)

(assert (=> d!58807 (=> (not res!114568) (not e!151645))))

(assert (=> d!58807 (= res!114568 (or (bvsge #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))))

(declare-fun lt!118118 () ListLongMap!3527)

(declare-fun lt!118109 () ListLongMap!3527)

(assert (=> d!58807 (= lt!118118 lt!118109)))

(declare-fun lt!118101 () Unit!7211)

(assert (=> d!58807 (= lt!118101 e!151640)))

(declare-fun c!38815 () Bool)

(declare-fun e!151639 () Bool)

(assert (=> d!58807 (= c!38815 e!151639)))

(declare-fun res!114571 () Bool)

(assert (=> d!58807 (=> (not res!114571) (not e!151639))))

(assert (=> d!58807 (= res!114571 (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun e!151635 () ListLongMap!3527)

(assert (=> d!58807 (= lt!118109 e!151635)))

(assert (=> d!58807 (= c!38813 (and (not (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58807 (validMask!0 (mask!10269 thiss!1504))))

(assert (=> d!58807 (= (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)) lt!118118)))

(declare-fun b!233412 () Bool)

(declare-fun Unit!7214 () Unit!7211)

(assert (=> b!233412 (= e!151640 Unit!7214)))

(declare-fun b!233413 () Bool)

(declare-fun e!151643 () ListLongMap!3527)

(assert (=> b!233413 (= e!151635 e!151643)))

(assert (=> b!233413 (= c!38814 (and (not (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!233414 () Bool)

(declare-fun e!151637 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!233414 (= e!151637 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233415 () Bool)

(assert (=> b!233415 (= e!151635 (+!626 call!21714 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))))

(declare-fun bm!21711 () Bool)

(assert (=> bm!21711 (= call!21715 (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))))

(declare-fun b!233416 () Bool)

(declare-fun e!151634 () Bool)

(declare-fun get!2814 (ValueCell!2733 V!7851) V!7851)

(declare-fun dynLambda!542 (Int (_ BitVec 64)) V!7851)

(assert (=> b!233416 (= e!151634 (= (apply!204 lt!118118 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)) (get!2814 (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!542 (defaultEntry!4343 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!233416 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5826 (_values!4326 thiss!1504))))))

(assert (=> b!233416 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun b!233417 () Bool)

(declare-fun e!151641 () Bool)

(assert (=> b!233417 (= e!151644 e!151641)))

(declare-fun res!114566 () Bool)

(assert (=> b!233417 (= res!114566 call!21718)))

(assert (=> b!233417 (=> (not res!114566) (not e!151641))))

(declare-fun bm!21712 () Bool)

(assert (=> bm!21712 (= call!21718 (contains!1641 lt!118118 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233418 () Bool)

(declare-fun res!114567 () Bool)

(assert (=> b!233418 (=> (not res!114567) (not e!151645))))

(declare-fun e!151633 () Bool)

(assert (=> b!233418 (= res!114567 e!151633)))

(declare-fun res!114563 () Bool)

(assert (=> b!233418 (=> res!114563 e!151633)))

(assert (=> b!233418 (= res!114563 (not e!151637))))

(declare-fun res!114569 () Bool)

(assert (=> b!233418 (=> (not res!114569) (not e!151637))))

(assert (=> b!233418 (= res!114569 (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun b!233419 () Bool)

(assert (=> b!233419 (= e!151633 e!151634)))

(declare-fun res!114565 () Bool)

(assert (=> b!233419 (=> (not res!114565) (not e!151634))))

(assert (=> b!233419 (= res!114565 (contains!1641 lt!118118 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233419 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun bm!21713 () Bool)

(assert (=> bm!21713 (= call!21716 call!21714)))

(declare-fun b!233420 () Bool)

(assert (=> b!233420 (= e!151639 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21714 () Bool)

(assert (=> bm!21714 (= call!21717 call!21715)))

(declare-fun b!233421 () Bool)

(assert (=> b!233421 (= e!151645 e!151644)))

(declare-fun c!38816 () Bool)

(assert (=> b!233421 (= c!38816 (not (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!233422 () Bool)

(assert (=> b!233422 (= e!151636 (= (apply!204 lt!118118 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4184 thiss!1504)))))

(declare-fun b!233423 () Bool)

(assert (=> b!233423 (= e!151643 call!21716)))

(declare-fun bm!21715 () Bool)

(assert (=> bm!21715 (= call!21713 (contains!1641 lt!118118 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233424 () Bool)

(assert (=> b!233424 (= e!151641 (= (apply!204 lt!118118 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4184 thiss!1504)))))

(declare-fun b!233425 () Bool)

(declare-fun c!38811 () Bool)

(assert (=> b!233425 (= c!38811 (and (not (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4080 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!233425 (= e!151643 e!151642)))

(declare-fun b!233426 () Bool)

(assert (=> b!233426 (= e!151638 (not call!21713))))

(declare-fun b!233427 () Bool)

(assert (=> b!233427 (= e!151642 call!21712)))

(assert (= (and d!58807 c!38813) b!233415))

(assert (= (and d!58807 (not c!38813)) b!233413))

(assert (= (and b!233413 c!38814) b!233423))

(assert (= (and b!233413 (not c!38814)) b!233425))

(assert (= (and b!233425 c!38811) b!233409))

(assert (= (and b!233425 (not c!38811)) b!233427))

(assert (= (or b!233409 b!233427) bm!21710))

(assert (= (or b!233423 bm!21710) bm!21714))

(assert (= (or b!233423 b!233409) bm!21713))

(assert (= (or b!233415 bm!21714) bm!21711))

(assert (= (or b!233415 bm!21713) bm!21709))

(assert (= (and d!58807 res!114571) b!233420))

(assert (= (and d!58807 c!38815) b!233407))

(assert (= (and d!58807 (not c!38815)) b!233412))

(assert (= (and d!58807 res!114568) b!233418))

(assert (= (and b!233418 res!114569) b!233414))

(assert (= (and b!233418 (not res!114563)) b!233419))

(assert (= (and b!233419 res!114565) b!233416))

(assert (= (and b!233418 res!114567) b!233408))

(assert (= (and b!233408 c!38812) b!233410))

(assert (= (and b!233408 (not c!38812)) b!233426))

(assert (= (and b!233410 res!114564) b!233422))

(assert (= (or b!233410 b!233426) bm!21715))

(assert (= (and b!233408 res!114570) b!233421))

(assert (= (and b!233421 c!38816) b!233417))

(assert (= (and b!233421 (not c!38816)) b!233411))

(assert (= (and b!233417 res!114566) b!233424))

(assert (= (or b!233417 b!233411) bm!21712))

(declare-fun b_lambda!7877 () Bool)

(assert (=> (not b_lambda!7877) (not b!233416)))

(declare-fun t!8507 () Bool)

(declare-fun tb!2929 () Bool)

(assert (=> (and b!233300 (= (defaultEntry!4343 thiss!1504) (defaultEntry!4343 thiss!1504)) t!8507) tb!2929))

(declare-fun result!5093 () Bool)

(assert (=> tb!2929 (= result!5093 tp_is_empty!6153)))

(assert (=> b!233416 t!8507))

(declare-fun b_and!13213 () Bool)

(assert (= b_and!13209 (and (=> t!8507 result!5093) b_and!13213)))

(declare-fun m!254779 () Bool)

(assert (=> b!233419 m!254779))

(assert (=> b!233419 m!254779))

(declare-fun m!254781 () Bool)

(assert (=> b!233419 m!254781))

(declare-fun m!254783 () Bool)

(assert (=> b!233407 m!254783))

(declare-fun m!254785 () Bool)

(assert (=> b!233407 m!254785))

(declare-fun m!254787 () Bool)

(assert (=> b!233407 m!254787))

(declare-fun m!254789 () Bool)

(assert (=> b!233407 m!254789))

(assert (=> b!233407 m!254785))

(declare-fun m!254791 () Bool)

(assert (=> b!233407 m!254791))

(assert (=> b!233407 m!254789))

(declare-fun m!254793 () Bool)

(assert (=> b!233407 m!254793))

(declare-fun m!254795 () Bool)

(assert (=> b!233407 m!254795))

(declare-fun m!254797 () Bool)

(assert (=> b!233407 m!254797))

(declare-fun m!254799 () Bool)

(assert (=> b!233407 m!254799))

(declare-fun m!254801 () Bool)

(assert (=> b!233407 m!254801))

(declare-fun m!254803 () Bool)

(assert (=> b!233407 m!254803))

(assert (=> b!233407 m!254779))

(declare-fun m!254805 () Bool)

(assert (=> b!233407 m!254805))

(declare-fun m!254807 () Bool)

(assert (=> b!233407 m!254807))

(assert (=> b!233407 m!254787))

(declare-fun m!254809 () Bool)

(assert (=> b!233407 m!254809))

(declare-fun m!254811 () Bool)

(assert (=> b!233407 m!254811))

(assert (=> b!233407 m!254811))

(declare-fun m!254813 () Bool)

(assert (=> b!233407 m!254813))

(declare-fun m!254815 () Bool)

(assert (=> b!233422 m!254815))

(declare-fun m!254817 () Bool)

(assert (=> b!233424 m!254817))

(declare-fun m!254819 () Bool)

(assert (=> b!233415 m!254819))

(assert (=> b!233416 m!254779))

(declare-fun m!254821 () Bool)

(assert (=> b!233416 m!254821))

(declare-fun m!254823 () Bool)

(assert (=> b!233416 m!254823))

(declare-fun m!254825 () Bool)

(assert (=> b!233416 m!254825))

(assert (=> b!233416 m!254779))

(assert (=> b!233416 m!254823))

(assert (=> b!233416 m!254825))

(declare-fun m!254827 () Bool)

(assert (=> b!233416 m!254827))

(declare-fun m!254829 () Bool)

(assert (=> bm!21712 m!254829))

(assert (=> d!58807 m!254721))

(assert (=> bm!21711 m!254799))

(declare-fun m!254831 () Bool)

(assert (=> bm!21709 m!254831))

(assert (=> b!233414 m!254779))

(assert (=> b!233414 m!254779))

(declare-fun m!254833 () Bool)

(assert (=> b!233414 m!254833))

(assert (=> b!233420 m!254779))

(assert (=> b!233420 m!254779))

(assert (=> b!233420 m!254833))

(declare-fun m!254835 () Bool)

(assert (=> bm!21715 m!254835))

(assert (=> b!233294 d!58807))

(declare-fun mapNonEmpty!10408 () Bool)

(declare-fun mapRes!10408 () Bool)

(declare-fun tp!22027 () Bool)

(declare-fun e!151651 () Bool)

(assert (=> mapNonEmpty!10408 (= mapRes!10408 (and tp!22027 e!151651))))

(declare-fun mapKey!10408 () (_ BitVec 32))

(declare-fun mapValue!10408 () ValueCell!2733)

(declare-fun mapRest!10408 () (Array (_ BitVec 32) ValueCell!2733))

(assert (=> mapNonEmpty!10408 (= mapRest!10402 (store mapRest!10408 mapKey!10408 mapValue!10408))))

(declare-fun b!233437 () Bool)

(declare-fun e!151650 () Bool)

(assert (=> b!233437 (= e!151650 tp_is_empty!6153)))

(declare-fun condMapEmpty!10408 () Bool)

(declare-fun mapDefault!10408 () ValueCell!2733)

(assert (=> mapNonEmpty!10402 (= condMapEmpty!10408 (= mapRest!10402 ((as const (Array (_ BitVec 32) ValueCell!2733)) mapDefault!10408)))))

(assert (=> mapNonEmpty!10402 (= tp!22018 (and e!151650 mapRes!10408))))

(declare-fun mapIsEmpty!10408 () Bool)

(assert (=> mapIsEmpty!10408 mapRes!10408))

(declare-fun b!233436 () Bool)

(assert (=> b!233436 (= e!151651 tp_is_empty!6153)))

(assert (= (and mapNonEmpty!10402 condMapEmpty!10408) mapIsEmpty!10408))

(assert (= (and mapNonEmpty!10402 (not condMapEmpty!10408)) mapNonEmpty!10408))

(assert (= (and mapNonEmpty!10408 ((_ is ValueCellFull!2733) mapValue!10408)) b!233436))

(assert (= (and mapNonEmpty!10402 ((_ is ValueCellFull!2733) mapDefault!10408)) b!233437))

(declare-fun m!254837 () Bool)

(assert (=> mapNonEmpty!10408 m!254837))

(declare-fun b_lambda!7879 () Bool)

(assert (= b_lambda!7877 (or (and b!233300 b_free!6291) b_lambda!7879)))

(check-sat (not bm!21709) (not d!58801) (not b!233419) (not bm!21711) (not bm!21712) (not b_lambda!7879) (not b!233414) tp_is_empty!6153 (not mapNonEmpty!10408) (not b!233364) (not b!233407) (not b!233422) (not b_next!6291) (not b!233335) (not b!233416) b_and!13213 (not b!233337) (not d!58799) (not b!233352) (not bm!21715) (not b!233336) (not b!233420) (not b!233362) (not d!58807) (not b!233424) (not d!58805) (not b!233415))
(check-sat b_and!13213 (not b_next!6291))
(get-model)

(declare-fun d!58809 () Bool)

(assert (=> d!58809 (contains!1641 (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))) lt!118105)))

(declare-fun lt!118122 () Unit!7211)

(declare-fun choose!1100 (ListLongMap!3527 (_ BitVec 64) V!7851 (_ BitVec 64)) Unit!7211)

(assert (=> d!58809 (= lt!118122 (choose!1100 lt!118099 lt!118112 (zeroValue!4184 thiss!1504) lt!118105))))

(assert (=> d!58809 (contains!1641 lt!118099 lt!118105)))

(assert (=> d!58809 (= (addStillContains!180 lt!118099 lt!118112 (zeroValue!4184 thiss!1504) lt!118105) lt!118122)))

(declare-fun bs!8651 () Bool)

(assert (= bs!8651 d!58809))

(assert (=> bs!8651 m!254811))

(assert (=> bs!8651 m!254811))

(assert (=> bs!8651 m!254813))

(declare-fun m!254839 () Bool)

(assert (=> bs!8651 m!254839))

(declare-fun m!254841 () Bool)

(assert (=> bs!8651 m!254841))

(assert (=> b!233407 d!58809))

(declare-fun d!58811 () Bool)

(declare-fun get!2815 (Option!267) V!7851)

(assert (=> d!58811 (= (apply!204 lt!118108 lt!118106) (get!2815 (getValueByKey!261 (toList!1779 lt!118108) lt!118106)))))

(declare-fun bs!8652 () Bool)

(assert (= bs!8652 d!58811))

(declare-fun m!254843 () Bool)

(assert (=> bs!8652 m!254843))

(assert (=> bs!8652 m!254843))

(declare-fun m!254845 () Bool)

(assert (=> bs!8652 m!254845))

(assert (=> b!233407 d!58811))

(declare-fun d!58813 () Bool)

(assert (=> d!58813 (= (apply!204 (+!626 lt!118110 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))) lt!118116) (apply!204 lt!118110 lt!118116))))

(declare-fun lt!118125 () Unit!7211)

(declare-fun choose!1101 (ListLongMap!3527 (_ BitVec 64) V!7851 (_ BitVec 64)) Unit!7211)

(assert (=> d!58813 (= lt!118125 (choose!1101 lt!118110 lt!118107 (zeroValue!4184 thiss!1504) lt!118116))))

(declare-fun e!151654 () Bool)

(assert (=> d!58813 e!151654))

(declare-fun res!114574 () Bool)

(assert (=> d!58813 (=> (not res!114574) (not e!151654))))

(assert (=> d!58813 (= res!114574 (contains!1641 lt!118110 lt!118116))))

(assert (=> d!58813 (= (addApplyDifferent!180 lt!118110 lt!118107 (zeroValue!4184 thiss!1504) lt!118116) lt!118125)))

(declare-fun b!233442 () Bool)

(assert (=> b!233442 (= e!151654 (not (= lt!118116 lt!118107)))))

(assert (= (and d!58813 res!114574) b!233442))

(assert (=> d!58813 m!254787))

(assert (=> d!58813 m!254809))

(declare-fun m!254847 () Bool)

(assert (=> d!58813 m!254847))

(assert (=> d!58813 m!254783))

(assert (=> d!58813 m!254787))

(declare-fun m!254849 () Bool)

(assert (=> d!58813 m!254849))

(assert (=> b!233407 d!58813))

(declare-fun d!58815 () Bool)

(assert (=> d!58815 (= (apply!204 lt!118117 lt!118100) (get!2815 (getValueByKey!261 (toList!1779 lt!118117) lt!118100)))))

(declare-fun bs!8653 () Bool)

(assert (= bs!8653 d!58815))

(declare-fun m!254851 () Bool)

(assert (=> bs!8653 m!254851))

(assert (=> bs!8653 m!254851))

(declare-fun m!254853 () Bool)

(assert (=> bs!8653 m!254853))

(assert (=> b!233407 d!58815))

(declare-fun d!58817 () Bool)

(assert (=> d!58817 (= (apply!204 (+!626 lt!118108 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))) lt!118106) (get!2815 (getValueByKey!261 (toList!1779 (+!626 lt!118108 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504)))) lt!118106)))))

(declare-fun bs!8654 () Bool)

(assert (= bs!8654 d!58817))

(declare-fun m!254855 () Bool)

(assert (=> bs!8654 m!254855))

(assert (=> bs!8654 m!254855))

(declare-fun m!254857 () Bool)

(assert (=> bs!8654 m!254857))

(assert (=> b!233407 d!58817))

(declare-fun d!58819 () Bool)

(declare-fun e!151657 () Bool)

(assert (=> d!58819 e!151657))

(declare-fun res!114579 () Bool)

(assert (=> d!58819 (=> (not res!114579) (not e!151657))))

(declare-fun lt!118134 () ListLongMap!3527)

(assert (=> d!58819 (= res!114579 (contains!1641 lt!118134 (_1!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504)))))))

(declare-fun lt!118137 () List!3536)

(assert (=> d!58819 (= lt!118134 (ListLongMap!3528 lt!118137))))

(declare-fun lt!118135 () Unit!7211)

(declare-fun lt!118136 () Unit!7211)

(assert (=> d!58819 (= lt!118135 lt!118136)))

(assert (=> d!58819 (= (getValueByKey!261 lt!118137 (_1!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!148 (List!3536 (_ BitVec 64) V!7851) Unit!7211)

(assert (=> d!58819 (= lt!118136 (lemmaContainsTupThenGetReturnValue!148 lt!118137 (_1!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504)))))))

(declare-fun insertStrictlySorted!150 (List!3536 (_ BitVec 64) V!7851) List!3536)

(assert (=> d!58819 (= lt!118137 (insertStrictlySorted!150 (toList!1779 lt!118108) (_1!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504)))))))

(assert (=> d!58819 (= (+!626 lt!118108 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))) lt!118134)))

(declare-fun b!233447 () Bool)

(declare-fun res!114580 () Bool)

(assert (=> b!233447 (=> (not res!114580) (not e!151657))))

(assert (=> b!233447 (= res!114580 (= (getValueByKey!261 (toList!1779 lt!118134) (_1!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))))))))

(declare-fun b!233448 () Bool)

(declare-fun contains!1642 (List!3536 tuple2!4600) Bool)

(assert (=> b!233448 (= e!151657 (contains!1642 (toList!1779 lt!118134) (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))))))

(assert (= (and d!58819 res!114579) b!233447))

(assert (= (and b!233447 res!114580) b!233448))

(declare-fun m!254859 () Bool)

(assert (=> d!58819 m!254859))

(declare-fun m!254861 () Bool)

(assert (=> d!58819 m!254861))

(declare-fun m!254863 () Bool)

(assert (=> d!58819 m!254863))

(declare-fun m!254865 () Bool)

(assert (=> d!58819 m!254865))

(declare-fun m!254867 () Bool)

(assert (=> b!233447 m!254867))

(declare-fun m!254869 () Bool)

(assert (=> b!233448 m!254869))

(assert (=> b!233407 d!58819))

(declare-fun d!58821 () Bool)

(assert (=> d!58821 (= (apply!204 (+!626 lt!118108 (tuple2!4601 lt!118113 (minValue!4184 thiss!1504))) lt!118106) (apply!204 lt!118108 lt!118106))))

(declare-fun lt!118138 () Unit!7211)

(assert (=> d!58821 (= lt!118138 (choose!1101 lt!118108 lt!118113 (minValue!4184 thiss!1504) lt!118106))))

(declare-fun e!151658 () Bool)

(assert (=> d!58821 e!151658))

(declare-fun res!114581 () Bool)

(assert (=> d!58821 (=> (not res!114581) (not e!151658))))

(assert (=> d!58821 (= res!114581 (contains!1641 lt!118108 lt!118106))))

(assert (=> d!58821 (= (addApplyDifferent!180 lt!118108 lt!118113 (minValue!4184 thiss!1504) lt!118106) lt!118138)))

(declare-fun b!233449 () Bool)

(assert (=> b!233449 (= e!151658 (not (= lt!118106 lt!118113)))))

(assert (= (and d!58821 res!114581) b!233449))

(assert (=> d!58821 m!254785))

(assert (=> d!58821 m!254791))

(declare-fun m!254871 () Bool)

(assert (=> d!58821 m!254871))

(assert (=> d!58821 m!254801))

(assert (=> d!58821 m!254785))

(declare-fun m!254873 () Bool)

(assert (=> d!58821 m!254873))

(assert (=> b!233407 d!58821))

(declare-fun d!58823 () Bool)

(assert (=> d!58823 (= (apply!204 (+!626 lt!118117 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))) lt!118100) (apply!204 lt!118117 lt!118100))))

(declare-fun lt!118139 () Unit!7211)

(assert (=> d!58823 (= lt!118139 (choose!1101 lt!118117 lt!118103 (minValue!4184 thiss!1504) lt!118100))))

(declare-fun e!151659 () Bool)

(assert (=> d!58823 e!151659))

(declare-fun res!114582 () Bool)

(assert (=> d!58823 (=> (not res!114582) (not e!151659))))

(assert (=> d!58823 (= res!114582 (contains!1641 lt!118117 lt!118100))))

(assert (=> d!58823 (= (addApplyDifferent!180 lt!118117 lt!118103 (minValue!4184 thiss!1504) lt!118100) lt!118139)))

(declare-fun b!233450 () Bool)

(assert (=> b!233450 (= e!151659 (not (= lt!118100 lt!118103)))))

(assert (= (and d!58823 res!114582) b!233450))

(assert (=> d!58823 m!254789))

(assert (=> d!58823 m!254793))

(declare-fun m!254875 () Bool)

(assert (=> d!58823 m!254875))

(assert (=> d!58823 m!254803))

(assert (=> d!58823 m!254789))

(declare-fun m!254877 () Bool)

(assert (=> d!58823 m!254877))

(assert (=> b!233407 d!58823))

(declare-fun d!58825 () Bool)

(assert (=> d!58825 (= (apply!204 (+!626 lt!118110 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))) lt!118116) (get!2815 (getValueByKey!261 (toList!1779 (+!626 lt!118110 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504)))) lt!118116)))))

(declare-fun bs!8655 () Bool)

(assert (= bs!8655 d!58825))

(declare-fun m!254879 () Bool)

(assert (=> bs!8655 m!254879))

(assert (=> bs!8655 m!254879))

(declare-fun m!254881 () Bool)

(assert (=> bs!8655 m!254881))

(assert (=> b!233407 d!58825))

(declare-fun d!58827 () Bool)

(declare-fun e!151660 () Bool)

(assert (=> d!58827 e!151660))

(declare-fun res!114583 () Bool)

(assert (=> d!58827 (=> (not res!114583) (not e!151660))))

(declare-fun lt!118140 () ListLongMap!3527)

(assert (=> d!58827 (= res!114583 (contains!1641 lt!118140 (_1!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504)))))))

(declare-fun lt!118143 () List!3536)

(assert (=> d!58827 (= lt!118140 (ListLongMap!3528 lt!118143))))

(declare-fun lt!118141 () Unit!7211)

(declare-fun lt!118142 () Unit!7211)

(assert (=> d!58827 (= lt!118141 lt!118142)))

(assert (=> d!58827 (= (getValueByKey!261 lt!118143 (_1!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504)))))))

(assert (=> d!58827 (= lt!118142 (lemmaContainsTupThenGetReturnValue!148 lt!118143 (_1!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504)))))))

(assert (=> d!58827 (= lt!118143 (insertStrictlySorted!150 (toList!1779 lt!118117) (_1!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504)))))))

(assert (=> d!58827 (= (+!626 lt!118117 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))) lt!118140)))

(declare-fun b!233451 () Bool)

(declare-fun res!114584 () Bool)

(assert (=> b!233451 (=> (not res!114584) (not e!151660))))

(assert (=> b!233451 (= res!114584 (= (getValueByKey!261 (toList!1779 lt!118140) (_1!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))))))))

(declare-fun b!233452 () Bool)

(assert (=> b!233452 (= e!151660 (contains!1642 (toList!1779 lt!118140) (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))))))

(assert (= (and d!58827 res!114583) b!233451))

(assert (= (and b!233451 res!114584) b!233452))

(declare-fun m!254883 () Bool)

(assert (=> d!58827 m!254883))

(declare-fun m!254885 () Bool)

(assert (=> d!58827 m!254885))

(declare-fun m!254887 () Bool)

(assert (=> d!58827 m!254887))

(declare-fun m!254889 () Bool)

(assert (=> d!58827 m!254889))

(declare-fun m!254891 () Bool)

(assert (=> b!233451 m!254891))

(declare-fun m!254893 () Bool)

(assert (=> b!233452 m!254893))

(assert (=> b!233407 d!58827))

(declare-fun bm!21718 () Bool)

(declare-fun call!21721 () ListLongMap!3527)

(assert (=> bm!21718 (= call!21721 (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4343 thiss!1504)))))

(declare-fun b!233478 () Bool)

(declare-fun e!151679 () Bool)

(declare-fun e!151678 () Bool)

(assert (=> b!233478 (= e!151679 e!151678)))

(declare-fun c!38827 () Bool)

(declare-fun e!151681 () Bool)

(assert (=> b!233478 (= c!38827 e!151681)))

(declare-fun res!114595 () Bool)

(assert (=> b!233478 (=> (not res!114595) (not e!151681))))

(assert (=> b!233478 (= res!114595 (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun b!233479 () Bool)

(assert (=> b!233479 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(assert (=> b!233479 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5826 (_values!4326 thiss!1504))))))

(declare-fun e!151680 () Bool)

(declare-fun lt!118159 () ListLongMap!3527)

(assert (=> b!233479 (= e!151680 (= (apply!204 lt!118159 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)) (get!2814 (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!542 (defaultEntry!4343 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!233480 () Bool)

(assert (=> b!233480 (= e!151678 e!151680)))

(assert (=> b!233480 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun res!114593 () Bool)

(assert (=> b!233480 (= res!114593 (contains!1641 lt!118159 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233480 (=> (not res!114593) (not e!151680))))

(declare-fun b!233481 () Bool)

(declare-fun e!151675 () Bool)

(assert (=> b!233481 (= e!151678 e!151675)))

(declare-fun c!38826 () Bool)

(assert (=> b!233481 (= c!38826 (bvslt #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun b!233482 () Bool)

(declare-fun res!114596 () Bool)

(assert (=> b!233482 (=> (not res!114596) (not e!151679))))

(assert (=> b!233482 (= res!114596 (not (contains!1641 lt!118159 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!233483 () Bool)

(declare-fun e!151676 () ListLongMap!3527)

(declare-fun e!151677 () ListLongMap!3527)

(assert (=> b!233483 (= e!151676 e!151677)))

(declare-fun c!38828 () Bool)

(assert (=> b!233483 (= c!38828 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233484 () Bool)

(assert (=> b!233484 (= e!151676 (ListLongMap!3528 Nil!3533))))

(declare-fun b!233485 () Bool)

(assert (=> b!233485 (= e!151677 call!21721)))

(declare-fun b!233486 () Bool)

(assert (=> b!233486 (= e!151675 (= lt!118159 (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4343 thiss!1504))))))

(declare-fun b!233487 () Bool)

(assert (=> b!233487 (= e!151681 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233487 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!233488 () Bool)

(declare-fun isEmpty!509 (ListLongMap!3527) Bool)

(assert (=> b!233488 (= e!151675 (isEmpty!509 lt!118159))))

(declare-fun b!233477 () Bool)

(declare-fun lt!118160 () Unit!7211)

(declare-fun lt!118163 () Unit!7211)

(assert (=> b!233477 (= lt!118160 lt!118163)))

(declare-fun lt!118158 () V!7851)

(declare-fun lt!118162 () (_ BitVec 64))

(declare-fun lt!118164 () (_ BitVec 64))

(declare-fun lt!118161 () ListLongMap!3527)

(assert (=> b!233477 (not (contains!1641 (+!626 lt!118161 (tuple2!4601 lt!118164 lt!118158)) lt!118162))))

(declare-fun addStillNotContains!113 (ListLongMap!3527 (_ BitVec 64) V!7851 (_ BitVec 64)) Unit!7211)

(assert (=> b!233477 (= lt!118163 (addStillNotContains!113 lt!118161 lt!118164 lt!118158 lt!118162))))

(assert (=> b!233477 (= lt!118162 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!233477 (= lt!118158 (get!2814 (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!542 (defaultEntry!4343 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!233477 (= lt!118164 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!233477 (= lt!118161 call!21721)))

(assert (=> b!233477 (= e!151677 (+!626 call!21721 (tuple2!4601 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000) (get!2814 (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!542 (defaultEntry!4343 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!58829 () Bool)

(assert (=> d!58829 e!151679))

(declare-fun res!114594 () Bool)

(assert (=> d!58829 (=> (not res!114594) (not e!151679))))

(assert (=> d!58829 (= res!114594 (not (contains!1641 lt!118159 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58829 (= lt!118159 e!151676)))

(declare-fun c!38825 () Bool)

(assert (=> d!58829 (= c!38825 (bvsge #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(assert (=> d!58829 (validMask!0 (mask!10269 thiss!1504))))

(assert (=> d!58829 (= (getCurrentListMapNoExtraKeys!523 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)) lt!118159)))

(assert (= (and d!58829 c!38825) b!233484))

(assert (= (and d!58829 (not c!38825)) b!233483))

(assert (= (and b!233483 c!38828) b!233477))

(assert (= (and b!233483 (not c!38828)) b!233485))

(assert (= (or b!233477 b!233485) bm!21718))

(assert (= (and d!58829 res!114594) b!233482))

(assert (= (and b!233482 res!114596) b!233478))

(assert (= (and b!233478 res!114595) b!233487))

(assert (= (and b!233478 c!38827) b!233480))

(assert (= (and b!233478 (not c!38827)) b!233481))

(assert (= (and b!233480 res!114593) b!233479))

(assert (= (and b!233481 c!38826) b!233486))

(assert (= (and b!233481 (not c!38826)) b!233488))

(declare-fun b_lambda!7881 () Bool)

(assert (=> (not b_lambda!7881) (not b!233479)))

(assert (=> b!233479 t!8507))

(declare-fun b_and!13215 () Bool)

(assert (= b_and!13213 (and (=> t!8507 result!5093) b_and!13215)))

(declare-fun b_lambda!7883 () Bool)

(assert (=> (not b_lambda!7883) (not b!233477)))

(assert (=> b!233477 t!8507))

(declare-fun b_and!13217 () Bool)

(assert (= b_and!13215 (and (=> t!8507 result!5093) b_and!13217)))

(declare-fun m!254895 () Bool)

(assert (=> d!58829 m!254895))

(assert (=> d!58829 m!254721))

(assert (=> b!233487 m!254779))

(assert (=> b!233487 m!254779))

(assert (=> b!233487 m!254833))

(declare-fun m!254897 () Bool)

(assert (=> bm!21718 m!254897))

(assert (=> b!233479 m!254825))

(assert (=> b!233479 m!254779))

(declare-fun m!254899 () Bool)

(assert (=> b!233479 m!254899))

(assert (=> b!233479 m!254779))

(assert (=> b!233479 m!254823))

(assert (=> b!233479 m!254823))

(assert (=> b!233479 m!254825))

(assert (=> b!233479 m!254827))

(declare-fun m!254901 () Bool)

(assert (=> b!233482 m!254901))

(declare-fun m!254903 () Bool)

(assert (=> b!233477 m!254903))

(declare-fun m!254905 () Bool)

(assert (=> b!233477 m!254905))

(assert (=> b!233477 m!254825))

(assert (=> b!233477 m!254903))

(assert (=> b!233477 m!254823))

(declare-fun m!254907 () Bool)

(assert (=> b!233477 m!254907))

(assert (=> b!233477 m!254823))

(assert (=> b!233477 m!254825))

(assert (=> b!233477 m!254827))

(declare-fun m!254909 () Bool)

(assert (=> b!233477 m!254909))

(assert (=> b!233477 m!254779))

(assert (=> b!233480 m!254779))

(assert (=> b!233480 m!254779))

(declare-fun m!254911 () Bool)

(assert (=> b!233480 m!254911))

(assert (=> b!233486 m!254897))

(declare-fun m!254913 () Bool)

(assert (=> b!233488 m!254913))

(assert (=> b!233483 m!254779))

(assert (=> b!233483 m!254779))

(assert (=> b!233483 m!254833))

(assert (=> b!233407 d!58829))

(declare-fun d!58831 () Bool)

(declare-fun e!151682 () Bool)

(assert (=> d!58831 e!151682))

(declare-fun res!114597 () Bool)

(assert (=> d!58831 (=> res!114597 e!151682)))

(declare-fun lt!118166 () Bool)

(assert (=> d!58831 (= res!114597 (not lt!118166))))

(declare-fun lt!118167 () Bool)

(assert (=> d!58831 (= lt!118166 lt!118167)))

(declare-fun lt!118168 () Unit!7211)

(declare-fun e!151683 () Unit!7211)

(assert (=> d!58831 (= lt!118168 e!151683)))

(declare-fun c!38829 () Bool)

(assert (=> d!58831 (= c!38829 lt!118167)))

(assert (=> d!58831 (= lt!118167 (containsKey!253 (toList!1779 (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))) lt!118105))))

(assert (=> d!58831 (= (contains!1641 (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))) lt!118105) lt!118166)))

(declare-fun b!233489 () Bool)

(declare-fun lt!118165 () Unit!7211)

(assert (=> b!233489 (= e!151683 lt!118165)))

(assert (=> b!233489 (= lt!118165 (lemmaContainsKeyImpliesGetValueByKeyDefined!202 (toList!1779 (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))) lt!118105))))

(assert (=> b!233489 (isDefined!203 (getValueByKey!261 (toList!1779 (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))) lt!118105))))

(declare-fun b!233490 () Bool)

(declare-fun Unit!7215 () Unit!7211)

(assert (=> b!233490 (= e!151683 Unit!7215)))

(declare-fun b!233491 () Bool)

(assert (=> b!233491 (= e!151682 (isDefined!203 (getValueByKey!261 (toList!1779 (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))) lt!118105)))))

(assert (= (and d!58831 c!38829) b!233489))

(assert (= (and d!58831 (not c!38829)) b!233490))

(assert (= (and d!58831 (not res!114597)) b!233491))

(declare-fun m!254915 () Bool)

(assert (=> d!58831 m!254915))

(declare-fun m!254917 () Bool)

(assert (=> b!233489 m!254917))

(declare-fun m!254919 () Bool)

(assert (=> b!233489 m!254919))

(assert (=> b!233489 m!254919))

(declare-fun m!254921 () Bool)

(assert (=> b!233489 m!254921))

(assert (=> b!233491 m!254919))

(assert (=> b!233491 m!254919))

(assert (=> b!233491 m!254921))

(assert (=> b!233407 d!58831))

(declare-fun d!58833 () Bool)

(assert (=> d!58833 (= (apply!204 (+!626 lt!118117 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504))) lt!118100) (get!2815 (getValueByKey!261 (toList!1779 (+!626 lt!118117 (tuple2!4601 lt!118103 (minValue!4184 thiss!1504)))) lt!118100)))))

(declare-fun bs!8656 () Bool)

(assert (= bs!8656 d!58833))

(declare-fun m!254923 () Bool)

(assert (=> bs!8656 m!254923))

(assert (=> bs!8656 m!254923))

(declare-fun m!254925 () Bool)

(assert (=> bs!8656 m!254925))

(assert (=> b!233407 d!58833))

(declare-fun d!58835 () Bool)

(assert (=> d!58835 (= (apply!204 lt!118110 lt!118116) (get!2815 (getValueByKey!261 (toList!1779 lt!118110) lt!118116)))))

(declare-fun bs!8657 () Bool)

(assert (= bs!8657 d!58835))

(declare-fun m!254927 () Bool)

(assert (=> bs!8657 m!254927))

(assert (=> bs!8657 m!254927))

(declare-fun m!254929 () Bool)

(assert (=> bs!8657 m!254929))

(assert (=> b!233407 d!58835))

(declare-fun d!58837 () Bool)

(declare-fun e!151684 () Bool)

(assert (=> d!58837 e!151684))

(declare-fun res!114598 () Bool)

(assert (=> d!58837 (=> (not res!114598) (not e!151684))))

(declare-fun lt!118169 () ListLongMap!3527)

(assert (=> d!58837 (= res!114598 (contains!1641 lt!118169 (_1!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504)))))))

(declare-fun lt!118172 () List!3536)

(assert (=> d!58837 (= lt!118169 (ListLongMap!3528 lt!118172))))

(declare-fun lt!118170 () Unit!7211)

(declare-fun lt!118171 () Unit!7211)

(assert (=> d!58837 (= lt!118170 lt!118171)))

(assert (=> d!58837 (= (getValueByKey!261 lt!118172 (_1!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504)))))))

(assert (=> d!58837 (= lt!118171 (lemmaContainsTupThenGetReturnValue!148 lt!118172 (_1!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504)))))))

(assert (=> d!58837 (= lt!118172 (insertStrictlySorted!150 (toList!1779 lt!118110) (_1!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504)))))))

(assert (=> d!58837 (= (+!626 lt!118110 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))) lt!118169)))

(declare-fun b!233492 () Bool)

(declare-fun res!114599 () Bool)

(assert (=> b!233492 (=> (not res!114599) (not e!151684))))

(assert (=> b!233492 (= res!114599 (= (getValueByKey!261 (toList!1779 lt!118169) (_1!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))))))))

(declare-fun b!233493 () Bool)

(assert (=> b!233493 (= e!151684 (contains!1642 (toList!1779 lt!118169) (tuple2!4601 lt!118107 (zeroValue!4184 thiss!1504))))))

(assert (= (and d!58837 res!114598) b!233492))

(assert (= (and b!233492 res!114599) b!233493))

(declare-fun m!254931 () Bool)

(assert (=> d!58837 m!254931))

(declare-fun m!254933 () Bool)

(assert (=> d!58837 m!254933))

(declare-fun m!254935 () Bool)

(assert (=> d!58837 m!254935))

(declare-fun m!254937 () Bool)

(assert (=> d!58837 m!254937))

(declare-fun m!254939 () Bool)

(assert (=> b!233492 m!254939))

(declare-fun m!254941 () Bool)

(assert (=> b!233493 m!254941))

(assert (=> b!233407 d!58837))

(declare-fun d!58839 () Bool)

(declare-fun e!151685 () Bool)

(assert (=> d!58839 e!151685))

(declare-fun res!114600 () Bool)

(assert (=> d!58839 (=> (not res!114600) (not e!151685))))

(declare-fun lt!118173 () ListLongMap!3527)

(assert (=> d!58839 (= res!114600 (contains!1641 lt!118173 (_1!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))))))

(declare-fun lt!118176 () List!3536)

(assert (=> d!58839 (= lt!118173 (ListLongMap!3528 lt!118176))))

(declare-fun lt!118174 () Unit!7211)

(declare-fun lt!118175 () Unit!7211)

(assert (=> d!58839 (= lt!118174 lt!118175)))

(assert (=> d!58839 (= (getValueByKey!261 lt!118176 (_1!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))))))

(assert (=> d!58839 (= lt!118175 (lemmaContainsTupThenGetReturnValue!148 lt!118176 (_1!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))))))

(assert (=> d!58839 (= lt!118176 (insertStrictlySorted!150 (toList!1779 lt!118099) (_1!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))))))

(assert (=> d!58839 (= (+!626 lt!118099 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))) lt!118173)))

(declare-fun b!233494 () Bool)

(declare-fun res!114601 () Bool)

(assert (=> b!233494 (=> (not res!114601) (not e!151685))))

(assert (=> b!233494 (= res!114601 (= (getValueByKey!261 (toList!1779 lt!118173) (_1!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))))))))

(declare-fun b!233495 () Bool)

(assert (=> b!233495 (= e!151685 (contains!1642 (toList!1779 lt!118173) (tuple2!4601 lt!118112 (zeroValue!4184 thiss!1504))))))

(assert (= (and d!58839 res!114600) b!233494))

(assert (= (and b!233494 res!114601) b!233495))

(declare-fun m!254943 () Bool)

(assert (=> d!58839 m!254943))

(declare-fun m!254945 () Bool)

(assert (=> d!58839 m!254945))

(declare-fun m!254947 () Bool)

(assert (=> d!58839 m!254947))

(declare-fun m!254949 () Bool)

(assert (=> d!58839 m!254949))

(declare-fun m!254951 () Bool)

(assert (=> b!233494 m!254951))

(declare-fun m!254953 () Bool)

(assert (=> b!233495 m!254953))

(assert (=> b!233407 d!58839))

(declare-fun e!151693 () SeekEntryResult!986)

(declare-fun b!233508 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!233508 (= e!151693 (seekKeyOrZeroReturnVacant!0 (bvadd (x!23632 lt!118039) #b00000000000000000000000000000001) (nextIndex!0 (index!6116 lt!118039) (x!23632 lt!118039) (mask!10269 thiss!1504)) (index!6116 lt!118039) key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)))))

(declare-fun b!233509 () Bool)

(declare-fun c!38836 () Bool)

(declare-fun lt!118182 () (_ BitVec 64))

(assert (=> b!233509 (= c!38836 (= lt!118182 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!151692 () SeekEntryResult!986)

(assert (=> b!233509 (= e!151692 e!151693)))

(declare-fun b!233510 () Bool)

(assert (=> b!233510 (= e!151692 (Found!986 (index!6116 lt!118039)))))

(declare-fun d!58841 () Bool)

(declare-fun lt!118181 () SeekEntryResult!986)

(assert (=> d!58841 (and (or ((_ is Undefined!986) lt!118181) (not ((_ is Found!986) lt!118181)) (and (bvsge (index!6115 lt!118181) #b00000000000000000000000000000000) (bvslt (index!6115 lt!118181) (size!5827 (_keys!6398 thiss!1504))))) (or ((_ is Undefined!986) lt!118181) ((_ is Found!986) lt!118181) (not ((_ is MissingVacant!986) lt!118181)) (not (= (index!6117 lt!118181) (index!6116 lt!118039))) (and (bvsge (index!6117 lt!118181) #b00000000000000000000000000000000) (bvslt (index!6117 lt!118181) (size!5827 (_keys!6398 thiss!1504))))) (or ((_ is Undefined!986) lt!118181) (ite ((_ is Found!986) lt!118181) (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6115 lt!118181)) key!932) (and ((_ is MissingVacant!986) lt!118181) (= (index!6117 lt!118181) (index!6116 lt!118039)) (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6117 lt!118181)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!151694 () SeekEntryResult!986)

(assert (=> d!58841 (= lt!118181 e!151694)))

(declare-fun c!38838 () Bool)

(assert (=> d!58841 (= c!38838 (bvsge (x!23632 lt!118039) #b01111111111111111111111111111110))))

(assert (=> d!58841 (= lt!118182 (select (arr!5494 (_keys!6398 thiss!1504)) (index!6116 lt!118039)))))

(assert (=> d!58841 (validMask!0 (mask!10269 thiss!1504))))

(assert (=> d!58841 (= (seekKeyOrZeroReturnVacant!0 (x!23632 lt!118039) (index!6116 lt!118039) (index!6116 lt!118039) key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)) lt!118181)))

(declare-fun b!233511 () Bool)

(assert (=> b!233511 (= e!151694 Undefined!986)))

(declare-fun b!233512 () Bool)

(assert (=> b!233512 (= e!151694 e!151692)))

(declare-fun c!38837 () Bool)

(assert (=> b!233512 (= c!38837 (= lt!118182 key!932))))

(declare-fun b!233513 () Bool)

(assert (=> b!233513 (= e!151693 (MissingVacant!986 (index!6116 lt!118039)))))

(assert (= (and d!58841 c!38838) b!233511))

(assert (= (and d!58841 (not c!38838)) b!233512))

(assert (= (and b!233512 c!38837) b!233510))

(assert (= (and b!233512 (not c!38837)) b!233509))

(assert (= (and b!233509 c!38836) b!233513))

(assert (= (and b!233509 (not c!38836)) b!233508))

(declare-fun m!254955 () Bool)

(assert (=> b!233508 m!254955))

(assert (=> b!233508 m!254955))

(declare-fun m!254957 () Bool)

(assert (=> b!233508 m!254957))

(declare-fun m!254959 () Bool)

(assert (=> d!58841 m!254959))

(declare-fun m!254961 () Bool)

(assert (=> d!58841 m!254961))

(assert (=> d!58841 m!254757))

(assert (=> d!58841 m!254721))

(assert (=> b!233352 d!58841))

(declare-fun d!58843 () Bool)

(declare-fun e!151695 () Bool)

(assert (=> d!58843 e!151695))

(declare-fun res!114602 () Bool)

(assert (=> d!58843 (=> (not res!114602) (not e!151695))))

(declare-fun lt!118183 () ListLongMap!3527)

(assert (=> d!58843 (= res!114602 (contains!1641 lt!118183 (_1!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))))))

(declare-fun lt!118186 () List!3536)

(assert (=> d!58843 (= lt!118183 (ListLongMap!3528 lt!118186))))

(declare-fun lt!118184 () Unit!7211)

(declare-fun lt!118185 () Unit!7211)

(assert (=> d!58843 (= lt!118184 lt!118185)))

(assert (=> d!58843 (= (getValueByKey!261 lt!118186 (_1!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))) (Some!266 (_2!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))))))

(assert (=> d!58843 (= lt!118185 (lemmaContainsTupThenGetReturnValue!148 lt!118186 (_1!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))) (_2!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))))))

(assert (=> d!58843 (= lt!118186 (insertStrictlySorted!150 (toList!1779 (ite c!38813 call!21715 (ite c!38814 call!21717 call!21712))) (_1!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))) (_2!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))))))

(assert (=> d!58843 (= (+!626 (ite c!38813 call!21715 (ite c!38814 call!21717 call!21712)) (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))) lt!118183)))

(declare-fun b!233514 () Bool)

(declare-fun res!114603 () Bool)

(assert (=> b!233514 (=> (not res!114603) (not e!151695))))

(assert (=> b!233514 (= res!114603 (= (getValueByKey!261 (toList!1779 lt!118183) (_1!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))) (Some!266 (_2!2310 (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))))))))

(declare-fun b!233515 () Bool)

(assert (=> b!233515 (= e!151695 (contains!1642 (toList!1779 lt!118183) (ite (or c!38813 c!38814) (tuple2!4601 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4184 thiss!1504)) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))))))

(assert (= (and d!58843 res!114602) b!233514))

(assert (= (and b!233514 res!114603) b!233515))

(declare-fun m!254963 () Bool)

(assert (=> d!58843 m!254963))

(declare-fun m!254965 () Bool)

(assert (=> d!58843 m!254965))

(declare-fun m!254967 () Bool)

(assert (=> d!58843 m!254967))

(declare-fun m!254969 () Bool)

(assert (=> d!58843 m!254969))

(declare-fun m!254971 () Bool)

(assert (=> b!233514 m!254971))

(declare-fun m!254973 () Bool)

(assert (=> b!233515 m!254973))

(assert (=> bm!21709 d!58843))

(assert (=> bm!21711 d!58829))

(declare-fun d!58845 () Bool)

(declare-fun e!151696 () Bool)

(assert (=> d!58845 e!151696))

(declare-fun res!114604 () Bool)

(assert (=> d!58845 (=> (not res!114604) (not e!151696))))

(declare-fun lt!118187 () ListLongMap!3527)

(assert (=> d!58845 (= res!114604 (contains!1641 lt!118187 (_1!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))))))

(declare-fun lt!118190 () List!3536)

(assert (=> d!58845 (= lt!118187 (ListLongMap!3528 lt!118190))))

(declare-fun lt!118188 () Unit!7211)

(declare-fun lt!118189 () Unit!7211)

(assert (=> d!58845 (= lt!118188 lt!118189)))

(assert (=> d!58845 (= (getValueByKey!261 lt!118190 (_1!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))))))

(assert (=> d!58845 (= lt!118189 (lemmaContainsTupThenGetReturnValue!148 lt!118190 (_1!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))))))

(assert (=> d!58845 (= lt!118190 (insertStrictlySorted!150 (toList!1779 call!21714) (_1!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))) (_2!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))))))

(assert (=> d!58845 (= (+!626 call!21714 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))) lt!118187)))

(declare-fun b!233516 () Bool)

(declare-fun res!114605 () Bool)

(assert (=> b!233516 (=> (not res!114605) (not e!151696))))

(assert (=> b!233516 (= res!114605 (= (getValueByKey!261 (toList!1779 lt!118187) (_1!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504)))) (Some!266 (_2!2310 (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))))))

(declare-fun b!233517 () Bool)

(assert (=> b!233517 (= e!151696 (contains!1642 (toList!1779 lt!118187) (tuple2!4601 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4184 thiss!1504))))))

(assert (= (and d!58845 res!114604) b!233516))

(assert (= (and b!233516 res!114605) b!233517))

(declare-fun m!254975 () Bool)

(assert (=> d!58845 m!254975))

(declare-fun m!254977 () Bool)

(assert (=> d!58845 m!254977))

(declare-fun m!254979 () Bool)

(assert (=> d!58845 m!254979))

(declare-fun m!254981 () Bool)

(assert (=> d!58845 m!254981))

(declare-fun m!254983 () Bool)

(assert (=> b!233516 m!254983))

(declare-fun m!254985 () Bool)

(assert (=> b!233517 m!254985))

(assert (=> b!233415 d!58845))

(declare-fun d!58847 () Bool)

(assert (=> d!58847 (= (apply!204 lt!118118 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2815 (getValueByKey!261 (toList!1779 lt!118118) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8658 () Bool)

(assert (= bs!8658 d!58847))

(declare-fun m!254987 () Bool)

(assert (=> bs!8658 m!254987))

(assert (=> bs!8658 m!254987))

(declare-fun m!254989 () Bool)

(assert (=> bs!8658 m!254989))

(assert (=> b!233422 d!58847))

(declare-fun d!58849 () Bool)

(assert (=> d!58849 (= (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!233414 d!58849))

(declare-fun d!58851 () Bool)

(declare-fun isEmpty!510 (Option!267) Bool)

(assert (=> d!58851 (= (isDefined!203 (getValueByKey!261 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932)) (not (isEmpty!510 (getValueByKey!261 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932))))))

(declare-fun bs!8659 () Bool)

(assert (= bs!8659 d!58851))

(assert (=> bs!8659 m!254775))

(declare-fun m!254991 () Bool)

(assert (=> bs!8659 m!254991))

(assert (=> b!233364 d!58851))

(declare-fun b!233526 () Bool)

(declare-fun e!151701 () Option!267)

(assert (=> b!233526 (= e!151701 (Some!266 (_2!2310 (h!4180 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))))))))

(declare-fun d!58853 () Bool)

(declare-fun c!38843 () Bool)

(assert (=> d!58853 (= c!38843 (and ((_ is Cons!3532) (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))) (= (_1!2310 (h!4180 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))))) key!932)))))

(assert (=> d!58853 (= (getValueByKey!261 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932) e!151701)))

(declare-fun b!233528 () Bool)

(declare-fun e!151702 () Option!267)

(assert (=> b!233528 (= e!151702 (getValueByKey!261 (t!8505 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))) key!932))))

(declare-fun b!233529 () Bool)

(assert (=> b!233529 (= e!151702 None!265)))

(declare-fun b!233527 () Bool)

(assert (=> b!233527 (= e!151701 e!151702)))

(declare-fun c!38844 () Bool)

(assert (=> b!233527 (= c!38844 (and ((_ is Cons!3532) (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))) (not (= (_1!2310 (h!4180 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))))) key!932))))))

(assert (= (and d!58853 c!38843) b!233526))

(assert (= (and d!58853 (not c!38843)) b!233527))

(assert (= (and b!233527 c!38844) b!233528))

(assert (= (and b!233527 (not c!38844)) b!233529))

(declare-fun m!254993 () Bool)

(assert (=> b!233528 m!254993))

(assert (=> b!233364 d!58853))

(assert (=> b!233420 d!58849))

(assert (=> d!58807 d!58803))

(declare-fun d!58855 () Bool)

(assert (=> d!58855 (isDefined!203 (getValueByKey!261 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932))))

(declare-fun lt!118193 () Unit!7211)

(declare-fun choose!1102 (List!3536 (_ BitVec 64)) Unit!7211)

(assert (=> d!58855 (= lt!118193 (choose!1102 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932))))

(declare-fun e!151705 () Bool)

(assert (=> d!58855 e!151705))

(declare-fun res!114608 () Bool)

(assert (=> d!58855 (=> (not res!114608) (not e!151705))))

(declare-fun isStrictlySorted!354 (List!3536) Bool)

(assert (=> d!58855 (= res!114608 (isStrictlySorted!354 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))))))

(assert (=> d!58855 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!202 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932) lt!118193)))

(declare-fun b!233532 () Bool)

(assert (=> b!233532 (= e!151705 (containsKey!253 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932))))

(assert (= (and d!58855 res!114608) b!233532))

(assert (=> d!58855 m!254775))

(assert (=> d!58855 m!254775))

(assert (=> d!58855 m!254777))

(declare-fun m!254995 () Bool)

(assert (=> d!58855 m!254995))

(declare-fun m!254997 () Bool)

(assert (=> d!58855 m!254997))

(assert (=> b!233532 m!254771))

(assert (=> b!233362 d!58855))

(assert (=> b!233362 d!58851))

(assert (=> b!233362 d!58853))

(declare-fun d!58857 () Bool)

(declare-fun e!151706 () Bool)

(assert (=> d!58857 e!151706))

(declare-fun res!114609 () Bool)

(assert (=> d!58857 (=> res!114609 e!151706)))

(declare-fun lt!118195 () Bool)

(assert (=> d!58857 (= res!114609 (not lt!118195))))

(declare-fun lt!118196 () Bool)

(assert (=> d!58857 (= lt!118195 lt!118196)))

(declare-fun lt!118197 () Unit!7211)

(declare-fun e!151707 () Unit!7211)

(assert (=> d!58857 (= lt!118197 e!151707)))

(declare-fun c!38845 () Bool)

(assert (=> d!58857 (= c!38845 lt!118196)))

(assert (=> d!58857 (= lt!118196 (containsKey!253 (toList!1779 lt!118118) (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58857 (= (contains!1641 lt!118118 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)) lt!118195)))

(declare-fun b!233533 () Bool)

(declare-fun lt!118194 () Unit!7211)

(assert (=> b!233533 (= e!151707 lt!118194)))

(assert (=> b!233533 (= lt!118194 (lemmaContainsKeyImpliesGetValueByKeyDefined!202 (toList!1779 lt!118118) (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!233533 (isDefined!203 (getValueByKey!261 (toList!1779 lt!118118) (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233534 () Bool)

(declare-fun Unit!7216 () Unit!7211)

(assert (=> b!233534 (= e!151707 Unit!7216)))

(declare-fun b!233535 () Bool)

(assert (=> b!233535 (= e!151706 (isDefined!203 (getValueByKey!261 (toList!1779 lt!118118) (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!58857 c!38845) b!233533))

(assert (= (and d!58857 (not c!38845)) b!233534))

(assert (= (and d!58857 (not res!114609)) b!233535))

(assert (=> d!58857 m!254779))

(declare-fun m!254999 () Bool)

(assert (=> d!58857 m!254999))

(assert (=> b!233533 m!254779))

(declare-fun m!255001 () Bool)

(assert (=> b!233533 m!255001))

(assert (=> b!233533 m!254779))

(declare-fun m!255003 () Bool)

(assert (=> b!233533 m!255003))

(assert (=> b!233533 m!255003))

(declare-fun m!255005 () Bool)

(assert (=> b!233533 m!255005))

(assert (=> b!233535 m!254779))

(assert (=> b!233535 m!255003))

(assert (=> b!233535 m!255003))

(assert (=> b!233535 m!255005))

(assert (=> b!233419 d!58857))

(declare-fun d!58859 () Bool)

(declare-fun res!114617 () Bool)

(declare-fun e!151718 () Bool)

(assert (=> d!58859 (=> res!114617 e!151718)))

(assert (=> d!58859 (= res!114617 (bvsge #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(assert (=> d!58859 (= (arrayNoDuplicates!0 (_keys!6398 thiss!1504) #b00000000000000000000000000000000 Nil!3534) e!151718)))

(declare-fun b!233546 () Bool)

(declare-fun e!151719 () Bool)

(declare-fun contains!1643 (List!3537 (_ BitVec 64)) Bool)

(assert (=> b!233546 (= e!151719 (contains!1643 Nil!3534 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233547 () Bool)

(declare-fun e!151717 () Bool)

(declare-fun e!151716 () Bool)

(assert (=> b!233547 (= e!151717 e!151716)))

(declare-fun c!38848 () Bool)

(assert (=> b!233547 (= c!38848 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233548 () Bool)

(assert (=> b!233548 (= e!151718 e!151717)))

(declare-fun res!114616 () Bool)

(assert (=> b!233548 (=> (not res!114616) (not e!151717))))

(assert (=> b!233548 (= res!114616 (not e!151719))))

(declare-fun res!114618 () Bool)

(assert (=> b!233548 (=> (not res!114618) (not e!151719))))

(assert (=> b!233548 (= res!114618 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!21721 () Bool)

(declare-fun call!21724 () Bool)

(assert (=> bm!21721 (= call!21724 (arrayNoDuplicates!0 (_keys!6398 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!38848 (Cons!3533 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000) Nil!3534) Nil!3534)))))

(declare-fun b!233549 () Bool)

(assert (=> b!233549 (= e!151716 call!21724)))

(declare-fun b!233550 () Bool)

(assert (=> b!233550 (= e!151716 call!21724)))

(assert (= (and d!58859 (not res!114617)) b!233548))

(assert (= (and b!233548 res!114618) b!233546))

(assert (= (and b!233548 res!114616) b!233547))

(assert (= (and b!233547 c!38848) b!233550))

(assert (= (and b!233547 (not c!38848)) b!233549))

(assert (= (or b!233550 b!233549) bm!21721))

(assert (=> b!233546 m!254779))

(assert (=> b!233546 m!254779))

(declare-fun m!255007 () Bool)

(assert (=> b!233546 m!255007))

(assert (=> b!233547 m!254779))

(assert (=> b!233547 m!254779))

(assert (=> b!233547 m!254833))

(assert (=> b!233548 m!254779))

(assert (=> b!233548 m!254779))

(assert (=> b!233548 m!254833))

(assert (=> bm!21721 m!254779))

(declare-fun m!255009 () Bool)

(assert (=> bm!21721 m!255009))

(assert (=> b!233337 d!58859))

(declare-fun b!233569 () Bool)

(declare-fun e!151734 () SeekEntryResult!986)

(assert (=> b!233569 (= e!151734 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10269 thiss!1504)) #b00000000000000000000000000000000 (mask!10269 thiss!1504)) key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)))))

(declare-fun b!233570 () Bool)

(declare-fun e!151730 () Bool)

(declare-fun lt!118203 () SeekEntryResult!986)

(assert (=> b!233570 (= e!151730 (bvsge (x!23632 lt!118203) #b01111111111111111111111111111110))))

(declare-fun b!233571 () Bool)

(assert (=> b!233571 (and (bvsge (index!6116 lt!118203) #b00000000000000000000000000000000) (bvslt (index!6116 lt!118203) (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun res!114625 () Bool)

(assert (=> b!233571 (= res!114625 (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6116 lt!118203)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!151732 () Bool)

(assert (=> b!233571 (=> res!114625 e!151732)))

(declare-fun b!233572 () Bool)

(declare-fun e!151733 () SeekEntryResult!986)

(assert (=> b!233572 (= e!151733 (Intermediate!986 true (toIndex!0 key!932 (mask!10269 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!233573 () Bool)

(assert (=> b!233573 (and (bvsge (index!6116 lt!118203) #b00000000000000000000000000000000) (bvslt (index!6116 lt!118203) (size!5827 (_keys!6398 thiss!1504))))))

(assert (=> b!233573 (= e!151732 (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6116 lt!118203)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233574 () Bool)

(assert (=> b!233574 (= e!151733 e!151734)))

(declare-fun c!38855 () Bool)

(declare-fun lt!118202 () (_ BitVec 64))

(assert (=> b!233574 (= c!38855 (or (= lt!118202 key!932) (= (bvadd lt!118202 lt!118202) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!58861 () Bool)

(assert (=> d!58861 e!151730))

(declare-fun c!38856 () Bool)

(assert (=> d!58861 (= c!38856 (and ((_ is Intermediate!986) lt!118203) (undefined!1798 lt!118203)))))

(assert (=> d!58861 (= lt!118203 e!151733)))

(declare-fun c!38857 () Bool)

(assert (=> d!58861 (= c!38857 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!58861 (= lt!118202 (select (arr!5494 (_keys!6398 thiss!1504)) (toIndex!0 key!932 (mask!10269 thiss!1504))))))

(assert (=> d!58861 (validMask!0 (mask!10269 thiss!1504))))

(assert (=> d!58861 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10269 thiss!1504)) key!932 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)) lt!118203)))

(declare-fun b!233575 () Bool)

(assert (=> b!233575 (and (bvsge (index!6116 lt!118203) #b00000000000000000000000000000000) (bvslt (index!6116 lt!118203) (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun res!114627 () Bool)

(assert (=> b!233575 (= res!114627 (= (select (arr!5494 (_keys!6398 thiss!1504)) (index!6116 lt!118203)) key!932))))

(assert (=> b!233575 (=> res!114627 e!151732)))

(declare-fun e!151731 () Bool)

(assert (=> b!233575 (= e!151731 e!151732)))

(declare-fun b!233576 () Bool)

(assert (=> b!233576 (= e!151730 e!151731)))

(declare-fun res!114626 () Bool)

(assert (=> b!233576 (= res!114626 (and ((_ is Intermediate!986) lt!118203) (not (undefined!1798 lt!118203)) (bvslt (x!23632 lt!118203) #b01111111111111111111111111111110) (bvsge (x!23632 lt!118203) #b00000000000000000000000000000000) (bvsge (x!23632 lt!118203) #b00000000000000000000000000000000)))))

(assert (=> b!233576 (=> (not res!114626) (not e!151731))))

(declare-fun b!233577 () Bool)

(assert (=> b!233577 (= e!151734 (Intermediate!986 false (toIndex!0 key!932 (mask!10269 thiss!1504)) #b00000000000000000000000000000000))))

(assert (= (and d!58861 c!38857) b!233572))

(assert (= (and d!58861 (not c!38857)) b!233574))

(assert (= (and b!233574 c!38855) b!233577))

(assert (= (and b!233574 (not c!38855)) b!233569))

(assert (= (and d!58861 c!38856) b!233570))

(assert (= (and d!58861 (not c!38856)) b!233576))

(assert (= (and b!233576 res!114626) b!233575))

(assert (= (and b!233575 (not res!114627)) b!233571))

(assert (= (and b!233571 (not res!114625)) b!233573))

(declare-fun m!255011 () Bool)

(assert (=> b!233575 m!255011))

(assert (=> b!233569 m!254761))

(declare-fun m!255013 () Bool)

(assert (=> b!233569 m!255013))

(assert (=> b!233569 m!255013))

(declare-fun m!255015 () Bool)

(assert (=> b!233569 m!255015))

(assert (=> b!233571 m!255011))

(assert (=> b!233573 m!255011))

(assert (=> d!58861 m!254761))

(declare-fun m!255017 () Bool)

(assert (=> d!58861 m!255017))

(assert (=> d!58861 m!254721))

(assert (=> d!58801 d!58861))

(declare-fun d!58863 () Bool)

(declare-fun lt!118209 () (_ BitVec 32))

(declare-fun lt!118208 () (_ BitVec 32))

(assert (=> d!58863 (= lt!118209 (bvmul (bvxor lt!118208 (bvlshr lt!118208 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!58863 (= lt!118208 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!58863 (and (bvsge (mask!10269 thiss!1504) #b00000000000000000000000000000000) (let ((res!114628 (let ((h!4182 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!23650 (bvmul (bvxor h!4182 (bvlshr h!4182 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!23650 (bvlshr x!23650 #b00000000000000000000000000001101)) (mask!10269 thiss!1504)))))) (and (bvslt res!114628 (bvadd (mask!10269 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!114628 #b00000000000000000000000000000000))))))

(assert (=> d!58863 (= (toIndex!0 key!932 (mask!10269 thiss!1504)) (bvand (bvxor lt!118209 (bvlshr lt!118209 #b00000000000000000000000000001101)) (mask!10269 thiss!1504)))))

(assert (=> d!58801 d!58863))

(assert (=> d!58801 d!58803))

(declare-fun d!58865 () Bool)

(declare-fun e!151735 () Bool)

(assert (=> d!58865 e!151735))

(declare-fun res!114629 () Bool)

(assert (=> d!58865 (=> res!114629 e!151735)))

(declare-fun lt!118211 () Bool)

(assert (=> d!58865 (= res!114629 (not lt!118211))))

(declare-fun lt!118212 () Bool)

(assert (=> d!58865 (= lt!118211 lt!118212)))

(declare-fun lt!118213 () Unit!7211)

(declare-fun e!151736 () Unit!7211)

(assert (=> d!58865 (= lt!118213 e!151736)))

(declare-fun c!38858 () Bool)

(assert (=> d!58865 (= c!38858 lt!118212)))

(assert (=> d!58865 (= lt!118212 (containsKey!253 (toList!1779 lt!118118) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!58865 (= (contains!1641 lt!118118 #b1000000000000000000000000000000000000000000000000000000000000000) lt!118211)))

(declare-fun b!233578 () Bool)

(declare-fun lt!118210 () Unit!7211)

(assert (=> b!233578 (= e!151736 lt!118210)))

(assert (=> b!233578 (= lt!118210 (lemmaContainsKeyImpliesGetValueByKeyDefined!202 (toList!1779 lt!118118) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!233578 (isDefined!203 (getValueByKey!261 (toList!1779 lt!118118) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233579 () Bool)

(declare-fun Unit!7217 () Unit!7211)

(assert (=> b!233579 (= e!151736 Unit!7217)))

(declare-fun b!233580 () Bool)

(assert (=> b!233580 (= e!151735 (isDefined!203 (getValueByKey!261 (toList!1779 lt!118118) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58865 c!38858) b!233578))

(assert (= (and d!58865 (not c!38858)) b!233579))

(assert (= (and d!58865 (not res!114629)) b!233580))

(declare-fun m!255019 () Bool)

(assert (=> d!58865 m!255019))

(declare-fun m!255021 () Bool)

(assert (=> b!233578 m!255021))

(declare-fun m!255023 () Bool)

(assert (=> b!233578 m!255023))

(assert (=> b!233578 m!255023))

(declare-fun m!255025 () Bool)

(assert (=> b!233578 m!255025))

(assert (=> b!233580 m!255023))

(assert (=> b!233580 m!255023))

(assert (=> b!233580 m!255025))

(assert (=> bm!21712 d!58865))

(declare-fun b!233589 () Bool)

(declare-fun e!151743 () Bool)

(declare-fun e!151744 () Bool)

(assert (=> b!233589 (= e!151743 e!151744)))

(declare-fun c!38861 () Bool)

(assert (=> b!233589 (= c!38861 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!233590 () Bool)

(declare-fun e!151745 () Bool)

(declare-fun call!21727 () Bool)

(assert (=> b!233590 (= e!151745 call!21727)))

(declare-fun d!58867 () Bool)

(declare-fun res!114635 () Bool)

(assert (=> d!58867 (=> res!114635 e!151743)))

(assert (=> d!58867 (= res!114635 (bvsge #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(assert (=> d!58867 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6398 thiss!1504) (mask!10269 thiss!1504)) e!151743)))

(declare-fun b!233591 () Bool)

(assert (=> b!233591 (= e!151744 call!21727)))

(declare-fun b!233592 () Bool)

(assert (=> b!233592 (= e!151744 e!151745)))

(declare-fun lt!118220 () (_ BitVec 64))

(assert (=> b!233592 (= lt!118220 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!118222 () Unit!7211)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11552 (_ BitVec 64) (_ BitVec 32)) Unit!7211)

(assert (=> b!233592 (= lt!118222 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6398 thiss!1504) lt!118220 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!11552 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!233592 (arrayContainsKey!0 (_keys!6398 thiss!1504) lt!118220 #b00000000000000000000000000000000)))

(declare-fun lt!118221 () Unit!7211)

(assert (=> b!233592 (= lt!118221 lt!118222)))

(declare-fun res!114634 () Bool)

(assert (=> b!233592 (= res!114634 (= (seekEntryOrOpen!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000) (_keys!6398 thiss!1504) (mask!10269 thiss!1504)) (Found!986 #b00000000000000000000000000000000)))))

(assert (=> b!233592 (=> (not res!114634) (not e!151745))))

(declare-fun bm!21724 () Bool)

(assert (=> bm!21724 (= call!21727 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6398 thiss!1504) (mask!10269 thiss!1504)))))

(assert (= (and d!58867 (not res!114635)) b!233589))

(assert (= (and b!233589 c!38861) b!233592))

(assert (= (and b!233589 (not c!38861)) b!233591))

(assert (= (and b!233592 res!114634) b!233590))

(assert (= (or b!233590 b!233591) bm!21724))

(assert (=> b!233589 m!254779))

(assert (=> b!233589 m!254779))

(assert (=> b!233589 m!254833))

(assert (=> b!233592 m!254779))

(declare-fun m!255027 () Bool)

(assert (=> b!233592 m!255027))

(declare-fun m!255029 () Bool)

(assert (=> b!233592 m!255029))

(assert (=> b!233592 m!254779))

(declare-fun m!255031 () Bool)

(assert (=> b!233592 m!255031))

(declare-fun m!255033 () Bool)

(assert (=> bm!21724 m!255033))

(assert (=> b!233336 d!58867))

(declare-fun d!58869 () Bool)

(declare-fun res!114640 () Bool)

(declare-fun e!151750 () Bool)

(assert (=> d!58869 (=> res!114640 e!151750)))

(assert (=> d!58869 (= res!114640 (and ((_ is Cons!3532) (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))) (= (_1!2310 (h!4180 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))))) key!932)))))

(assert (=> d!58869 (= (containsKey!253 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))) key!932) e!151750)))

(declare-fun b!233597 () Bool)

(declare-fun e!151751 () Bool)

(assert (=> b!233597 (= e!151750 e!151751)))

(declare-fun res!114641 () Bool)

(assert (=> b!233597 (=> (not res!114641) (not e!151751))))

(assert (=> b!233597 (= res!114641 (and (or (not ((_ is Cons!3532) (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))))) (bvsle (_1!2310 (h!4180 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))))) key!932)) ((_ is Cons!3532) (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))) (bvslt (_1!2310 (h!4180 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504))))) key!932)))))

(declare-fun b!233598 () Bool)

(assert (=> b!233598 (= e!151751 (containsKey!253 (t!8505 (toList!1779 (getCurrentListMap!1302 (_keys!6398 thiss!1504) (_values!4326 thiss!1504) (mask!10269 thiss!1504) (extraKeys!4080 thiss!1504) (zeroValue!4184 thiss!1504) (minValue!4184 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4343 thiss!1504)))) key!932))))

(assert (= (and d!58869 (not res!114640)) b!233597))

(assert (= (and b!233597 res!114641) b!233598))

(declare-fun m!255035 () Bool)

(assert (=> b!233598 m!255035))

(assert (=> d!58805 d!58869))

(declare-fun d!58871 () Bool)

(assert (=> d!58871 (= (apply!204 lt!118118 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2815 (getValueByKey!261 (toList!1779 lt!118118) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8660 () Bool)

(assert (= bs!8660 d!58871))

(assert (=> bs!8660 m!255023))

(assert (=> bs!8660 m!255023))

(declare-fun m!255037 () Bool)

(assert (=> bs!8660 m!255037))

(assert (=> b!233424 d!58871))

(declare-fun b!233607 () Bool)

(declare-fun e!151757 () (_ BitVec 32))

(declare-fun call!21730 () (_ BitVec 32))

(assert (=> b!233607 (= e!151757 (bvadd #b00000000000000000000000000000001 call!21730))))

(declare-fun b!233608 () Bool)

(assert (=> b!233608 (= e!151757 call!21730)))

(declare-fun bm!21727 () Bool)

(assert (=> bm!21727 (= call!21730 (arrayCountValidKeys!0 (_keys!6398 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!5827 (_keys!6398 thiss!1504))))))

(declare-fun b!233609 () Bool)

(declare-fun e!151756 () (_ BitVec 32))

(assert (=> b!233609 (= e!151756 e!151757)))

(declare-fun c!38867 () Bool)

(assert (=> b!233609 (= c!38867 (validKeyInArray!0 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!58873 () Bool)

(declare-fun lt!118225 () (_ BitVec 32))

(assert (=> d!58873 (and (bvsge lt!118225 #b00000000000000000000000000000000) (bvsle lt!118225 (bvsub (size!5827 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!58873 (= lt!118225 e!151756)))

(declare-fun c!38866 () Bool)

(assert (=> d!58873 (= c!38866 (bvsge #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))))))

(assert (=> d!58873 (and (bvsle #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!5827 (_keys!6398 thiss!1504)) (size!5827 (_keys!6398 thiss!1504))))))

(assert (=> d!58873 (= (arrayCountValidKeys!0 (_keys!6398 thiss!1504) #b00000000000000000000000000000000 (size!5827 (_keys!6398 thiss!1504))) lt!118225)))

(declare-fun b!233610 () Bool)

(assert (=> b!233610 (= e!151756 #b00000000000000000000000000000000)))

(assert (= (and d!58873 c!38866) b!233610))

(assert (= (and d!58873 (not c!38866)) b!233609))

(assert (= (and b!233609 c!38867) b!233607))

(assert (= (and b!233609 (not c!38867)) b!233608))

(assert (= (or b!233607 b!233608) bm!21727))

(declare-fun m!255039 () Bool)

(assert (=> bm!21727 m!255039))

(assert (=> b!233609 m!254779))

(assert (=> b!233609 m!254779))

(assert (=> b!233609 m!254833))

(assert (=> b!233335 d!58873))

(declare-fun b!233621 () Bool)

(declare-fun res!114653 () Bool)

(declare-fun e!151760 () Bool)

(assert (=> b!233621 (=> (not res!114653) (not e!151760))))

(declare-fun size!5830 (LongMapFixedSize!3366) (_ BitVec 32))

(assert (=> b!233621 (= res!114653 (= (size!5830 thiss!1504) (bvadd (_size!1732 thiss!1504) (bvsdiv (bvadd (extraKeys!4080 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!233622 () Bool)

(assert (=> b!233622 (= e!151760 (and (bvsge (extraKeys!4080 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4080 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1732 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun d!58875 () Bool)

(declare-fun res!114652 () Bool)

(assert (=> d!58875 (=> (not res!114652) (not e!151760))))

(assert (=> d!58875 (= res!114652 (validMask!0 (mask!10269 thiss!1504)))))

(assert (=> d!58875 (= (simpleValid!226 thiss!1504) e!151760)))

(declare-fun b!233619 () Bool)

(declare-fun res!114650 () Bool)

(assert (=> b!233619 (=> (not res!114650) (not e!151760))))

(assert (=> b!233619 (= res!114650 (and (= (size!5826 (_values!4326 thiss!1504)) (bvadd (mask!10269 thiss!1504) #b00000000000000000000000000000001)) (= (size!5827 (_keys!6398 thiss!1504)) (size!5826 (_values!4326 thiss!1504))) (bvsge (_size!1732 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1732 thiss!1504) (bvadd (mask!10269 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!233620 () Bool)

(declare-fun res!114651 () Bool)

(assert (=> b!233620 (=> (not res!114651) (not e!151760))))

(assert (=> b!233620 (= res!114651 (bvsge (size!5830 thiss!1504) (_size!1732 thiss!1504)))))

(assert (= (and d!58875 res!114652) b!233619))

(assert (= (and b!233619 res!114650) b!233620))

(assert (= (and b!233620 res!114651) b!233621))

(assert (= (and b!233621 res!114653) b!233622))

(declare-fun m!255041 () Bool)

(assert (=> b!233621 m!255041))

(assert (=> d!58875 m!254721))

(assert (=> b!233620 m!255041))

(assert (=> d!58799 d!58875))

(declare-fun d!58877 () Bool)

(assert (=> d!58877 (= (apply!204 lt!118118 (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000)) (get!2815 (getValueByKey!261 (toList!1779 lt!118118) (select (arr!5494 (_keys!6398 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8661 () Bool)

(assert (= bs!8661 d!58877))

(assert (=> bs!8661 m!254779))

(assert (=> bs!8661 m!255003))

(assert (=> bs!8661 m!255003))

(declare-fun m!255043 () Bool)

(assert (=> bs!8661 m!255043))

(assert (=> b!233416 d!58877))

(declare-fun d!58879 () Bool)

(declare-fun c!38870 () Bool)

(assert (=> d!58879 (= c!38870 ((_ is ValueCellFull!2733) (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!151763 () V!7851)

(assert (=> d!58879 (= (get!2814 (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!542 (defaultEntry!4343 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!151763)))

(declare-fun b!233627 () Bool)

(declare-fun get!2816 (ValueCell!2733 V!7851) V!7851)

(assert (=> b!233627 (= e!151763 (get!2816 (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!542 (defaultEntry!4343 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!233628 () Bool)

(declare-fun get!2817 (ValueCell!2733 V!7851) V!7851)

(assert (=> b!233628 (= e!151763 (get!2817 (select (arr!5493 (_values!4326 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!542 (defaultEntry!4343 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58879 c!38870) b!233627))

(assert (= (and d!58879 (not c!38870)) b!233628))

(assert (=> b!233627 m!254823))

(assert (=> b!233627 m!254825))

(declare-fun m!255045 () Bool)

(assert (=> b!233627 m!255045))

(assert (=> b!233628 m!254823))

(assert (=> b!233628 m!254825))

(declare-fun m!255047 () Bool)

(assert (=> b!233628 m!255047))

(assert (=> b!233416 d!58879))

(declare-fun d!58881 () Bool)

(declare-fun e!151764 () Bool)

(assert (=> d!58881 e!151764))

(declare-fun res!114654 () Bool)

(assert (=> d!58881 (=> res!114654 e!151764)))

(declare-fun lt!118227 () Bool)

(assert (=> d!58881 (= res!114654 (not lt!118227))))

(declare-fun lt!118228 () Bool)

(assert (=> d!58881 (= lt!118227 lt!118228)))

(declare-fun lt!118229 () Unit!7211)

(declare-fun e!151765 () Unit!7211)

(assert (=> d!58881 (= lt!118229 e!151765)))

(declare-fun c!38871 () Bool)

(assert (=> d!58881 (= c!38871 lt!118228)))

(assert (=> d!58881 (= lt!118228 (containsKey!253 (toList!1779 lt!118118) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!58881 (= (contains!1641 lt!118118 #b0000000000000000000000000000000000000000000000000000000000000000) lt!118227)))

(declare-fun b!233629 () Bool)

(declare-fun lt!118226 () Unit!7211)

(assert (=> b!233629 (= e!151765 lt!118226)))

(assert (=> b!233629 (= lt!118226 (lemmaContainsKeyImpliesGetValueByKeyDefined!202 (toList!1779 lt!118118) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!233629 (isDefined!203 (getValueByKey!261 (toList!1779 lt!118118) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233630 () Bool)

(declare-fun Unit!7218 () Unit!7211)

(assert (=> b!233630 (= e!151765 Unit!7218)))

(declare-fun b!233631 () Bool)

(assert (=> b!233631 (= e!151764 (isDefined!203 (getValueByKey!261 (toList!1779 lt!118118) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!58881 c!38871) b!233629))

(assert (= (and d!58881 (not c!38871)) b!233630))

(assert (= (and d!58881 (not res!114654)) b!233631))

(declare-fun m!255049 () Bool)

(assert (=> d!58881 m!255049))

(declare-fun m!255051 () Bool)

(assert (=> b!233629 m!255051))

(assert (=> b!233629 m!254987))

(assert (=> b!233629 m!254987))

(declare-fun m!255053 () Bool)

(assert (=> b!233629 m!255053))

(assert (=> b!233631 m!254987))

(assert (=> b!233631 m!254987))

(assert (=> b!233631 m!255053))

(assert (=> bm!21715 d!58881))

(declare-fun mapNonEmpty!10409 () Bool)

(declare-fun mapRes!10409 () Bool)

(declare-fun tp!22028 () Bool)

(declare-fun e!151767 () Bool)

(assert (=> mapNonEmpty!10409 (= mapRes!10409 (and tp!22028 e!151767))))

(declare-fun mapValue!10409 () ValueCell!2733)

(declare-fun mapRest!10409 () (Array (_ BitVec 32) ValueCell!2733))

(declare-fun mapKey!10409 () (_ BitVec 32))

(assert (=> mapNonEmpty!10409 (= mapRest!10408 (store mapRest!10409 mapKey!10409 mapValue!10409))))

(declare-fun b!233633 () Bool)

(declare-fun e!151766 () Bool)

(assert (=> b!233633 (= e!151766 tp_is_empty!6153)))

(declare-fun condMapEmpty!10409 () Bool)

(declare-fun mapDefault!10409 () ValueCell!2733)

(assert (=> mapNonEmpty!10408 (= condMapEmpty!10409 (= mapRest!10408 ((as const (Array (_ BitVec 32) ValueCell!2733)) mapDefault!10409)))))

(assert (=> mapNonEmpty!10408 (= tp!22027 (and e!151766 mapRes!10409))))

(declare-fun mapIsEmpty!10409 () Bool)

(assert (=> mapIsEmpty!10409 mapRes!10409))

(declare-fun b!233632 () Bool)

(assert (=> b!233632 (= e!151767 tp_is_empty!6153)))

(assert (= (and mapNonEmpty!10408 condMapEmpty!10409) mapIsEmpty!10409))

(assert (= (and mapNonEmpty!10408 (not condMapEmpty!10409)) mapNonEmpty!10409))

(assert (= (and mapNonEmpty!10409 ((_ is ValueCellFull!2733) mapValue!10409)) b!233632))

(assert (= (and mapNonEmpty!10408 ((_ is ValueCellFull!2733) mapDefault!10409)) b!233633))

(declare-fun m!255055 () Bool)

(assert (=> mapNonEmpty!10409 m!255055))

(declare-fun b_lambda!7885 () Bool)

(assert (= b_lambda!7881 (or (and b!233300 b_free!6291) b_lambda!7885)))

(declare-fun b_lambda!7887 () Bool)

(assert (= b_lambda!7883 (or (and b!233300 b_free!6291) b_lambda!7887)))

(check-sat (not b!233514) b_and!13217 (not b!233491) (not b!233620) (not bm!21718) (not b!233547) (not d!58829) (not b!233448) (not b!233629) (not b!233548) (not b!233447) (not d!58871) (not d!58877) (not b_lambda!7885) (not b!233482) (not d!58819) (not b!233628) (not b!233508) (not b!233546) (not d!58813) (not b!233532) (not d!58841) (not b!233517) (not b!233493) (not d!58811) (not d!58835) (not b!233621) (not b_next!6291) (not b!233477) (not b!233488) (not d!58827) (not b!233535) (not d!58823) (not d!58821) (not d!58831) (not d!58865) (not bm!21721) (not b!233452) (not d!58851) (not d!58881) (not bm!21724) (not b!233569) (not b!233589) (not b!233489) (not d!58833) (not b!233516) (not b!233592) (not d!58839) (not mapNonEmpty!10409) (not b!233627) (not b_lambda!7887) (not d!58809) (not d!58855) (not d!58837) (not d!58847) (not d!58815) (not b!233528) (not b!233494) (not b!233451) (not b!233492) (not b!233479) (not b_lambda!7879) (not b!233578) (not b!233631) (not d!58861) (not d!58845) (not b!233515) (not b!233483) (not b!233480) (not d!58857) (not b!233486) (not b!233598) (not d!58843) tp_is_empty!6153 (not d!58825) (not b!233495) (not bm!21727) (not d!58817) (not b!233533) (not b!233580) (not b!233487) (not b!233609) (not d!58875))
(check-sat b_and!13217 (not b_next!6291))
