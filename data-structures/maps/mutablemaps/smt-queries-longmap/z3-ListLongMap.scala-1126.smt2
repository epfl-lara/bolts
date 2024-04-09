; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23128 () Bool)

(assert start!23128)

(declare-fun b!242335 () Bool)

(declare-fun b_free!6507 () Bool)

(declare-fun b_next!6507 () Bool)

(assert (=> b!242335 (= b_free!6507 (not b_next!6507))))

(declare-fun tp!22735 () Bool)

(declare-fun b_and!13501 () Bool)

(assert (=> b!242335 (= tp!22735 b_and!13501)))

(declare-fun mapIsEmpty!10795 () Bool)

(declare-fun mapRes!10795 () Bool)

(assert (=> mapIsEmpty!10795 mapRes!10795))

(declare-fun bm!22575 () Bool)

(declare-fun call!22579 () Bool)

(declare-datatypes ((V!8139 0))(
  ( (V!8140 (val!3229 Int)) )
))
(declare-datatypes ((ValueCell!2841 0))(
  ( (ValueCellFull!2841 (v!5266 V!8139)) (EmptyCell!2841) )
))
(declare-datatypes ((array!12022 0))(
  ( (array!12023 (arr!5709 (Array (_ BitVec 32) ValueCell!2841)) (size!6051 (_ BitVec 32))) )
))
(declare-datatypes ((array!12024 0))(
  ( (array!12025 (arr!5710 (Array (_ BitVec 32) (_ BitVec 64))) (size!6052 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3582 0))(
  ( (LongMapFixedSize!3583 (defaultEntry!4492 Int) (mask!10573 (_ BitVec 32)) (extraKeys!4229 (_ BitVec 32)) (zeroValue!4333 V!8139) (minValue!4333 V!8139) (_size!1840 (_ BitVec 32)) (_keys!6600 array!12024) (_values!4475 array!12022) (_vacant!1840 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3582)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22575 (= call!22579 (arrayContainsKey!0 (_keys!6600 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242328 () Bool)

(declare-datatypes ((Unit!7470 0))(
  ( (Unit!7471) )
))
(declare-fun e!157294 () Unit!7470)

(declare-fun lt!121773 () Unit!7470)

(assert (=> b!242328 (= e!157294 lt!121773)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!362 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 64) Int) Unit!7470)

(assert (=> b!242328 (= lt!121773 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!362 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 (defaultEntry!4492 thiss!1504)))))

(declare-fun c!40426 () Bool)

(declare-datatypes ((SeekEntryResult!1074 0))(
  ( (MissingZero!1074 (index!6466 (_ BitVec 32))) (Found!1074 (index!6467 (_ BitVec 32))) (Intermediate!1074 (undefined!1886 Bool) (index!6468 (_ BitVec 32)) (x!24280 (_ BitVec 32))) (Undefined!1074) (MissingVacant!1074 (index!6469 (_ BitVec 32))) )
))
(declare-fun lt!121771 () SeekEntryResult!1074)

(get-info :version)

(assert (=> b!242328 (= c!40426 ((_ is MissingZero!1074) lt!121771))))

(declare-fun e!157289 () Bool)

(assert (=> b!242328 e!157289))

(declare-fun b!242329 () Bool)

(declare-fun e!157285 () Bool)

(declare-datatypes ((List!3654 0))(
  ( (Nil!3651) (Cons!3650 (h!4307 (_ BitVec 64)) (t!8663 List!3654)) )
))
(declare-fun contains!1741 (List!3654 (_ BitVec 64)) Bool)

(assert (=> b!242329 (= e!157285 (contains!1741 Nil!3651 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242330 () Bool)

(declare-fun e!157290 () Bool)

(assert (=> b!242330 (= e!157290 (not call!22579))))

(declare-fun b!242332 () Bool)

(declare-fun e!157292 () Unit!7470)

(declare-fun Unit!7472 () Unit!7470)

(assert (=> b!242332 (= e!157292 Unit!7472)))

(declare-fun b!242333 () Bool)

(declare-fun e!157295 () Bool)

(declare-fun e!157286 () Bool)

(assert (=> b!242333 (= e!157295 e!157286)))

(declare-fun res!118753 () Bool)

(assert (=> b!242333 (=> (not res!118753) (not e!157286))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!242333 (= res!118753 (or (= lt!121771 (MissingZero!1074 index!297)) (= lt!121771 (MissingVacant!1074 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12024 (_ BitVec 32)) SeekEntryResult!1074)

(assert (=> b!242333 (= lt!121771 (seekEntryOrOpen!0 key!932 (_keys!6600 thiss!1504) (mask!10573 thiss!1504)))))

(declare-fun b!242334 () Bool)

(declare-fun e!157296 () Bool)

(assert (=> b!242334 (= e!157296 (not call!22579))))

(declare-fun e!157284 () Bool)

(declare-fun tp_is_empty!6369 () Bool)

(declare-fun e!157288 () Bool)

(declare-fun array_inv!3767 (array!12024) Bool)

(declare-fun array_inv!3768 (array!12022) Bool)

(assert (=> b!242335 (= e!157284 (and tp!22735 tp_is_empty!6369 (array_inv!3767 (_keys!6600 thiss!1504)) (array_inv!3768 (_values!4475 thiss!1504)) e!157288))))

(declare-fun bm!22576 () Bool)

(declare-fun call!22578 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22576 (= call!22578 (inRange!0 (ite c!40426 (index!6466 lt!121771) (index!6469 lt!121771)) (mask!10573 thiss!1504)))))

(declare-fun b!242336 () Bool)

(declare-fun res!118752 () Bool)

(declare-fun e!157287 () Bool)

(assert (=> b!242336 (=> (not res!118752) (not e!157287))))

(declare-fun noDuplicate!89 (List!3654) Bool)

(assert (=> b!242336 (= res!118752 (noDuplicate!89 Nil!3651))))

(declare-fun b!242337 () Bool)

(declare-fun e!157293 () Bool)

(assert (=> b!242337 (= e!157288 (and e!157293 mapRes!10795))))

(declare-fun condMapEmpty!10795 () Bool)

(declare-fun mapDefault!10795 () ValueCell!2841)

(assert (=> b!242337 (= condMapEmpty!10795 (= (arr!5709 (_values!4475 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2841)) mapDefault!10795)))))

(declare-fun b!242338 () Bool)

(declare-fun res!118755 () Bool)

(assert (=> b!242338 (= res!118755 (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6469 lt!121771)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242338 (=> (not res!118755) (not e!157290))))

(declare-fun b!242339 () Bool)

(declare-fun e!157297 () Bool)

(assert (=> b!242339 (= e!157297 ((_ is Undefined!1074) lt!121771))))

(declare-fun b!242340 () Bool)

(declare-fun Unit!7473 () Unit!7470)

(assert (=> b!242340 (= e!157294 Unit!7473)))

(declare-fun lt!121774 () Unit!7470)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!356 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 64) Int) Unit!7470)

(assert (=> b!242340 (= lt!121774 (lemmaInListMapThenSeekEntryOrOpenFindsIt!356 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 (defaultEntry!4492 thiss!1504)))))

(assert (=> b!242340 false))

(declare-fun b!242331 () Bool)

(declare-fun e!157298 () Bool)

(assert (=> b!242331 (= e!157286 e!157298)))

(declare-fun res!118756 () Bool)

(assert (=> b!242331 (=> (not res!118756) (not e!157298))))

(assert (=> b!242331 (= res!118756 (inRange!0 index!297 (mask!10573 thiss!1504)))))

(declare-fun lt!121776 () Unit!7470)

(assert (=> b!242331 (= lt!121776 e!157294)))

(declare-fun c!40425 () Bool)

(declare-datatypes ((tuple2!4754 0))(
  ( (tuple2!4755 (_1!2387 (_ BitVec 64)) (_2!2387 V!8139)) )
))
(declare-datatypes ((List!3655 0))(
  ( (Nil!3652) (Cons!3651 (h!4308 tuple2!4754) (t!8664 List!3655)) )
))
(declare-datatypes ((ListLongMap!3681 0))(
  ( (ListLongMap!3682 (toList!1856 List!3655)) )
))
(declare-fun contains!1742 (ListLongMap!3681 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1379 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 32) Int) ListLongMap!3681)

(assert (=> b!242331 (= c!40425 (contains!1742 (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)) key!932))))

(declare-fun res!118760 () Bool)

(assert (=> start!23128 (=> (not res!118760) (not e!157295))))

(declare-fun valid!1397 (LongMapFixedSize!3582) Bool)

(assert (=> start!23128 (= res!118760 (valid!1397 thiss!1504))))

(assert (=> start!23128 e!157295))

(assert (=> start!23128 e!157284))

(assert (=> start!23128 true))

(declare-fun b!242341 () Bool)

(declare-fun res!118761 () Bool)

(assert (=> b!242341 (=> (not res!118761) (not e!157295))))

(assert (=> b!242341 (= res!118761 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!242342 () Bool)

(assert (=> b!242342 (= e!157298 e!157287)))

(declare-fun res!118757 () Bool)

(assert (=> b!242342 (=> (not res!118757) (not e!157287))))

(assert (=> b!242342 (= res!118757 (and (bvslt (size!6052 (_keys!6600 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504)))))))

(declare-fun lt!121775 () Unit!7470)

(assert (=> b!242342 (= lt!121775 e!157292)))

(declare-fun c!40427 () Bool)

(assert (=> b!242342 (= c!40427 (arrayContainsKey!0 (_keys!6600 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!242343 () Bool)

(declare-fun res!118758 () Bool)

(assert (=> b!242343 (=> (not res!118758) (not e!157296))))

(assert (=> b!242343 (= res!118758 (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6466 lt!121771)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242344 () Bool)

(declare-fun res!118751 () Bool)

(assert (=> b!242344 (=> (not res!118751) (not e!157296))))

(assert (=> b!242344 (= res!118751 call!22578)))

(assert (=> b!242344 (= e!157289 e!157296)))

(declare-fun mapNonEmpty!10795 () Bool)

(declare-fun tp!22734 () Bool)

(declare-fun e!157299 () Bool)

(assert (=> mapNonEmpty!10795 (= mapRes!10795 (and tp!22734 e!157299))))

(declare-fun mapValue!10795 () ValueCell!2841)

(declare-fun mapKey!10795 () (_ BitVec 32))

(declare-fun mapRest!10795 () (Array (_ BitVec 32) ValueCell!2841))

(assert (=> mapNonEmpty!10795 (= (arr!5709 (_values!4475 thiss!1504)) (store mapRest!10795 mapKey!10795 mapValue!10795))))

(declare-fun b!242345 () Bool)

(assert (=> b!242345 (= e!157287 e!157285)))

(declare-fun res!118754 () Bool)

(assert (=> b!242345 (=> res!118754 e!157285)))

(assert (=> b!242345 (= res!118754 (contains!1741 Nil!3651 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242346 () Bool)

(assert (=> b!242346 (= e!157299 tp_is_empty!6369)))

(declare-fun b!242347 () Bool)

(declare-fun Unit!7474 () Unit!7470)

(assert (=> b!242347 (= e!157292 Unit!7474)))

(declare-fun lt!121772 () Unit!7470)

(declare-fun lemmaArrayContainsKeyThenInListMap!158 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 64) (_ BitVec 32) Int) Unit!7470)

(assert (=> b!242347 (= lt!121772 (lemmaArrayContainsKeyThenInListMap!158 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)))))

(assert (=> b!242347 false))

(declare-fun b!242348 () Bool)

(assert (=> b!242348 (= e!157297 e!157290)))

(declare-fun res!118759 () Bool)

(assert (=> b!242348 (= res!118759 call!22578)))

(assert (=> b!242348 (=> (not res!118759) (not e!157290))))

(declare-fun b!242349 () Bool)

(declare-fun c!40424 () Bool)

(assert (=> b!242349 (= c!40424 ((_ is MissingVacant!1074) lt!121771))))

(assert (=> b!242349 (= e!157289 e!157297)))

(declare-fun b!242350 () Bool)

(assert (=> b!242350 (= e!157293 tp_is_empty!6369)))

(assert (= (and start!23128 res!118760) b!242341))

(assert (= (and b!242341 res!118761) b!242333))

(assert (= (and b!242333 res!118753) b!242331))

(assert (= (and b!242331 c!40425) b!242340))

(assert (= (and b!242331 (not c!40425)) b!242328))

(assert (= (and b!242328 c!40426) b!242344))

(assert (= (and b!242328 (not c!40426)) b!242349))

(assert (= (and b!242344 res!118751) b!242343))

(assert (= (and b!242343 res!118758) b!242334))

(assert (= (and b!242349 c!40424) b!242348))

(assert (= (and b!242349 (not c!40424)) b!242339))

(assert (= (and b!242348 res!118759) b!242338))

(assert (= (and b!242338 res!118755) b!242330))

(assert (= (or b!242344 b!242348) bm!22576))

(assert (= (or b!242334 b!242330) bm!22575))

(assert (= (and b!242331 res!118756) b!242342))

(assert (= (and b!242342 c!40427) b!242347))

(assert (= (and b!242342 (not c!40427)) b!242332))

(assert (= (and b!242342 res!118757) b!242336))

(assert (= (and b!242336 res!118752) b!242345))

(assert (= (and b!242345 (not res!118754)) b!242329))

(assert (= (and b!242337 condMapEmpty!10795) mapIsEmpty!10795))

(assert (= (and b!242337 (not condMapEmpty!10795)) mapNonEmpty!10795))

(assert (= (and mapNonEmpty!10795 ((_ is ValueCellFull!2841) mapValue!10795)) b!242346))

(assert (= (and b!242337 ((_ is ValueCellFull!2841) mapDefault!10795)) b!242350))

(assert (= b!242335 b!242337))

(assert (= start!23128 b!242335))

(declare-fun m!261201 () Bool)

(assert (=> b!242343 m!261201))

(declare-fun m!261203 () Bool)

(assert (=> b!242347 m!261203))

(declare-fun m!261205 () Bool)

(assert (=> b!242335 m!261205))

(declare-fun m!261207 () Bool)

(assert (=> b!242335 m!261207))

(declare-fun m!261209 () Bool)

(assert (=> b!242342 m!261209))

(assert (=> bm!22575 m!261209))

(declare-fun m!261211 () Bool)

(assert (=> start!23128 m!261211))

(declare-fun m!261213 () Bool)

(assert (=> b!242333 m!261213))

(declare-fun m!261215 () Bool)

(assert (=> b!242328 m!261215))

(declare-fun m!261217 () Bool)

(assert (=> b!242338 m!261217))

(declare-fun m!261219 () Bool)

(assert (=> b!242331 m!261219))

(declare-fun m!261221 () Bool)

(assert (=> b!242331 m!261221))

(assert (=> b!242331 m!261221))

(declare-fun m!261223 () Bool)

(assert (=> b!242331 m!261223))

(declare-fun m!261225 () Bool)

(assert (=> mapNonEmpty!10795 m!261225))

(declare-fun m!261227 () Bool)

(assert (=> b!242340 m!261227))

(declare-fun m!261229 () Bool)

(assert (=> b!242329 m!261229))

(declare-fun m!261231 () Bool)

(assert (=> bm!22576 m!261231))

(declare-fun m!261233 () Bool)

(assert (=> b!242336 m!261233))

(declare-fun m!261235 () Bool)

(assert (=> b!242345 m!261235))

(check-sat (not b!242331) (not mapNonEmpty!10795) b_and!13501 tp_is_empty!6369 (not bm!22575) (not bm!22576) (not b_next!6507) (not b!242342) (not b!242345) (not b!242347) (not start!23128) (not b!242336) (not b!242329) (not b!242340) (not b!242333) (not b!242335) (not b!242328))
(check-sat b_and!13501 (not b_next!6507))
(get-model)

(declare-fun d!59883 () Bool)

(assert (=> d!59883 (= (inRange!0 index!297 (mask!10573 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10573 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!242331 d!59883))

(declare-fun d!59885 () Bool)

(declare-fun e!157352 () Bool)

(assert (=> d!59885 e!157352))

(declare-fun res!118797 () Bool)

(assert (=> d!59885 (=> res!118797 e!157352)))

(declare-fun lt!121804 () Bool)

(assert (=> d!59885 (= res!118797 (not lt!121804))))

(declare-fun lt!121803 () Bool)

(assert (=> d!59885 (= lt!121804 lt!121803)))

(declare-fun lt!121805 () Unit!7470)

(declare-fun e!157353 () Unit!7470)

(assert (=> d!59885 (= lt!121805 e!157353)))

(declare-fun c!40442 () Bool)

(assert (=> d!59885 (= c!40442 lt!121803)))

(declare-fun containsKey!273 (List!3655 (_ BitVec 64)) Bool)

(assert (=> d!59885 (= lt!121803 (containsKey!273 (toList!1856 (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504))) key!932))))

(assert (=> d!59885 (= (contains!1742 (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)) key!932) lt!121804)))

(declare-fun b!242426 () Bool)

(declare-fun lt!121806 () Unit!7470)

(assert (=> b!242426 (= e!157353 lt!121806)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!222 (List!3655 (_ BitVec 64)) Unit!7470)

(assert (=> b!242426 (= lt!121806 (lemmaContainsKeyImpliesGetValueByKeyDefined!222 (toList!1856 (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504))) key!932))))

(declare-datatypes ((Option!287 0))(
  ( (Some!286 (v!5269 V!8139)) (None!285) )
))
(declare-fun isDefined!223 (Option!287) Bool)

(declare-fun getValueByKey!281 (List!3655 (_ BitVec 64)) Option!287)

(assert (=> b!242426 (isDefined!223 (getValueByKey!281 (toList!1856 (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504))) key!932))))

(declare-fun b!242427 () Bool)

(declare-fun Unit!7479 () Unit!7470)

(assert (=> b!242427 (= e!157353 Unit!7479)))

(declare-fun b!242428 () Bool)

(assert (=> b!242428 (= e!157352 (isDefined!223 (getValueByKey!281 (toList!1856 (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504))) key!932)))))

(assert (= (and d!59885 c!40442) b!242426))

(assert (= (and d!59885 (not c!40442)) b!242427))

(assert (= (and d!59885 (not res!118797)) b!242428))

(declare-fun m!261273 () Bool)

(assert (=> d!59885 m!261273))

(declare-fun m!261275 () Bool)

(assert (=> b!242426 m!261275))

(declare-fun m!261277 () Bool)

(assert (=> b!242426 m!261277))

(assert (=> b!242426 m!261277))

(declare-fun m!261279 () Bool)

(assert (=> b!242426 m!261279))

(assert (=> b!242428 m!261277))

(assert (=> b!242428 m!261277))

(assert (=> b!242428 m!261279))

(assert (=> b!242331 d!59885))

(declare-fun bm!22597 () Bool)

(declare-fun call!22606 () Bool)

(declare-fun lt!121859 () ListLongMap!3681)

(assert (=> bm!22597 (= call!22606 (contains!1742 lt!121859 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242471 () Bool)

(declare-fun e!157386 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!242471 (= e!157386 (validKeyInArray!0 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!242472 () Bool)

(declare-fun e!157384 () ListLongMap!3681)

(declare-fun e!157392 () ListLongMap!3681)

(assert (=> b!242472 (= e!157384 e!157392)))

(declare-fun c!40457 () Bool)

(assert (=> b!242472 (= c!40457 (and (not (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!242473 () Bool)

(declare-fun e!157387 () Bool)

(declare-fun e!157390 () Bool)

(assert (=> b!242473 (= e!157387 e!157390)))

(declare-fun c!40456 () Bool)

(assert (=> b!242473 (= c!40456 (not (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22598 () Bool)

(declare-fun call!22603 () ListLongMap!3681)

(declare-fun call!22605 () ListLongMap!3681)

(assert (=> bm!22598 (= call!22603 call!22605)))

(declare-fun b!242474 () Bool)

(declare-fun e!157389 () Bool)

(assert (=> b!242474 (= e!157389 (validKeyInArray!0 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22599 () Bool)

(declare-fun call!22600 () ListLongMap!3681)

(declare-fun getCurrentListMapNoExtraKeys!543 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 32) Int) ListLongMap!3681)

(assert (=> bm!22599 (= call!22600 (getCurrentListMapNoExtraKeys!543 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)))))

(declare-fun b!242475 () Bool)

(declare-fun e!157381 () Bool)

(declare-fun e!157391 () Bool)

(assert (=> b!242475 (= e!157381 e!157391)))

(declare-fun res!118820 () Bool)

(assert (=> b!242475 (= res!118820 call!22606)))

(assert (=> b!242475 (=> (not res!118820) (not e!157391))))

(declare-fun c!40455 () Bool)

(declare-fun bm!22600 () Bool)

(declare-fun call!22602 () ListLongMap!3681)

(declare-fun +!646 (ListLongMap!3681 tuple2!4754) ListLongMap!3681)

(assert (=> bm!22600 (= call!22602 (+!646 (ite c!40455 call!22600 (ite c!40457 call!22605 call!22603)) (ite (or c!40455 c!40457) (tuple2!4755 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4333 thiss!1504)) (tuple2!4755 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4333 thiss!1504)))))))

(declare-fun b!242476 () Bool)

(declare-fun e!157388 () Bool)

(declare-fun apply!224 (ListLongMap!3681 (_ BitVec 64)) V!8139)

(assert (=> b!242476 (= e!157388 (= (apply!224 lt!121859 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4333 thiss!1504)))))

(declare-fun b!242477 () Bool)

(assert (=> b!242477 (= e!157384 (+!646 call!22602 (tuple2!4755 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4333 thiss!1504))))))

(declare-fun b!242478 () Bool)

(declare-fun e!157383 () Bool)

(declare-fun e!157385 () Bool)

(assert (=> b!242478 (= e!157383 e!157385)))

(declare-fun res!118823 () Bool)

(assert (=> b!242478 (=> (not res!118823) (not e!157385))))

(assert (=> b!242478 (= res!118823 (contains!1742 lt!121859 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!242478 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504))))))

(declare-fun b!242479 () Bool)

(declare-fun res!118821 () Bool)

(assert (=> b!242479 (=> (not res!118821) (not e!157387))))

(assert (=> b!242479 (= res!118821 e!157383)))

(declare-fun res!118816 () Bool)

(assert (=> b!242479 (=> res!118816 e!157383)))

(assert (=> b!242479 (= res!118816 (not e!157386))))

(declare-fun res!118818 () Bool)

(assert (=> b!242479 (=> (not res!118818) (not e!157386))))

(assert (=> b!242479 (= res!118818 (bvslt #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504))))))

(declare-fun b!242480 () Bool)

(declare-fun e!157382 () ListLongMap!3681)

(declare-fun call!22604 () ListLongMap!3681)

(assert (=> b!242480 (= e!157382 call!22604)))

(declare-fun b!242481 () Bool)

(assert (=> b!242481 (= e!157390 e!157388)))

(declare-fun res!118817 () Bool)

(declare-fun call!22601 () Bool)

(assert (=> b!242481 (= res!118817 call!22601)))

(assert (=> b!242481 (=> (not res!118817) (not e!157388))))

(declare-fun b!242482 () Bool)

(assert (=> b!242482 (= e!157391 (= (apply!224 lt!121859 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4333 thiss!1504)))))

(declare-fun b!242483 () Bool)

(declare-fun get!2933 (ValueCell!2841 V!8139) V!8139)

(declare-fun dynLambda!562 (Int (_ BitVec 64)) V!8139)

(assert (=> b!242483 (= e!157385 (= (apply!224 lt!121859 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000)) (get!2933 (select (arr!5709 (_values!4475 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!562 (defaultEntry!4492 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!242483 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6051 (_values!4475 thiss!1504))))))

(assert (=> b!242483 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504))))))

(declare-fun bm!22601 () Bool)

(assert (=> bm!22601 (= call!22605 call!22600)))

(declare-fun b!242484 () Bool)

(declare-fun res!118819 () Bool)

(assert (=> b!242484 (=> (not res!118819) (not e!157387))))

(assert (=> b!242484 (= res!118819 e!157381)))

(declare-fun c!40458 () Bool)

(assert (=> b!242484 (= c!40458 (not (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!242485 () Bool)

(declare-fun e!157380 () Unit!7470)

(declare-fun lt!121864 () Unit!7470)

(assert (=> b!242485 (= e!157380 lt!121864)))

(declare-fun lt!121852 () ListLongMap!3681)

(assert (=> b!242485 (= lt!121852 (getCurrentListMapNoExtraKeys!543 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)))))

(declare-fun lt!121866 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121866 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121870 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121870 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121865 () Unit!7470)

(declare-fun addStillContains!200 (ListLongMap!3681 (_ BitVec 64) V!8139 (_ BitVec 64)) Unit!7470)

(assert (=> b!242485 (= lt!121865 (addStillContains!200 lt!121852 lt!121866 (zeroValue!4333 thiss!1504) lt!121870))))

(assert (=> b!242485 (contains!1742 (+!646 lt!121852 (tuple2!4755 lt!121866 (zeroValue!4333 thiss!1504))) lt!121870)))

(declare-fun lt!121862 () Unit!7470)

(assert (=> b!242485 (= lt!121862 lt!121865)))

(declare-fun lt!121856 () ListLongMap!3681)

(assert (=> b!242485 (= lt!121856 (getCurrentListMapNoExtraKeys!543 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)))))

(declare-fun lt!121857 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121857 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121867 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121867 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121855 () Unit!7470)

(declare-fun addApplyDifferent!200 (ListLongMap!3681 (_ BitVec 64) V!8139 (_ BitVec 64)) Unit!7470)

(assert (=> b!242485 (= lt!121855 (addApplyDifferent!200 lt!121856 lt!121857 (minValue!4333 thiss!1504) lt!121867))))

(assert (=> b!242485 (= (apply!224 (+!646 lt!121856 (tuple2!4755 lt!121857 (minValue!4333 thiss!1504))) lt!121867) (apply!224 lt!121856 lt!121867))))

(declare-fun lt!121854 () Unit!7470)

(assert (=> b!242485 (= lt!121854 lt!121855)))

(declare-fun lt!121858 () ListLongMap!3681)

(assert (=> b!242485 (= lt!121858 (getCurrentListMapNoExtraKeys!543 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)))))

(declare-fun lt!121851 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121851 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121869 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121869 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!121872 () Unit!7470)

(assert (=> b!242485 (= lt!121872 (addApplyDifferent!200 lt!121858 lt!121851 (zeroValue!4333 thiss!1504) lt!121869))))

(assert (=> b!242485 (= (apply!224 (+!646 lt!121858 (tuple2!4755 lt!121851 (zeroValue!4333 thiss!1504))) lt!121869) (apply!224 lt!121858 lt!121869))))

(declare-fun lt!121863 () Unit!7470)

(assert (=> b!242485 (= lt!121863 lt!121872)))

(declare-fun lt!121860 () ListLongMap!3681)

(assert (=> b!242485 (= lt!121860 (getCurrentListMapNoExtraKeys!543 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)))))

(declare-fun lt!121871 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121871 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!121861 () (_ BitVec 64))

(assert (=> b!242485 (= lt!121861 (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!242485 (= lt!121864 (addApplyDifferent!200 lt!121860 lt!121871 (minValue!4333 thiss!1504) lt!121861))))

(assert (=> b!242485 (= (apply!224 (+!646 lt!121860 (tuple2!4755 lt!121871 (minValue!4333 thiss!1504))) lt!121861) (apply!224 lt!121860 lt!121861))))

(declare-fun b!242486 () Bool)

(assert (=> b!242486 (= e!157392 call!22604)))

(declare-fun bm!22602 () Bool)

(assert (=> bm!22602 (= call!22601 (contains!1742 lt!121859 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242487 () Bool)

(declare-fun c!40459 () Bool)

(assert (=> b!242487 (= c!40459 (and (not (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!242487 (= e!157392 e!157382)))

(declare-fun d!59887 () Bool)

(assert (=> d!59887 e!157387))

(declare-fun res!118824 () Bool)

(assert (=> d!59887 (=> (not res!118824) (not e!157387))))

(assert (=> d!59887 (= res!118824 (or (bvsge #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504))))))))

(declare-fun lt!121868 () ListLongMap!3681)

(assert (=> d!59887 (= lt!121859 lt!121868)))

(declare-fun lt!121853 () Unit!7470)

(assert (=> d!59887 (= lt!121853 e!157380)))

(declare-fun c!40460 () Bool)

(assert (=> d!59887 (= c!40460 e!157389)))

(declare-fun res!118822 () Bool)

(assert (=> d!59887 (=> (not res!118822) (not e!157389))))

(assert (=> d!59887 (= res!118822 (bvslt #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504))))))

(assert (=> d!59887 (= lt!121868 e!157384)))

(assert (=> d!59887 (= c!40455 (and (not (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4229 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!59887 (validMask!0 (mask!10573 thiss!1504))))

(assert (=> d!59887 (= (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)) lt!121859)))

(declare-fun b!242488 () Bool)

(assert (=> b!242488 (= e!157390 (not call!22601))))

(declare-fun b!242489 () Bool)

(assert (=> b!242489 (= e!157382 call!22603)))

(declare-fun bm!22603 () Bool)

(assert (=> bm!22603 (= call!22604 call!22602)))

(declare-fun b!242490 () Bool)

(assert (=> b!242490 (= e!157381 (not call!22606))))

(declare-fun b!242491 () Bool)

(declare-fun Unit!7480 () Unit!7470)

(assert (=> b!242491 (= e!157380 Unit!7480)))

(assert (= (and d!59887 c!40455) b!242477))

(assert (= (and d!59887 (not c!40455)) b!242472))

(assert (= (and b!242472 c!40457) b!242486))

(assert (= (and b!242472 (not c!40457)) b!242487))

(assert (= (and b!242487 c!40459) b!242480))

(assert (= (and b!242487 (not c!40459)) b!242489))

(assert (= (or b!242480 b!242489) bm!22598))

(assert (= (or b!242486 bm!22598) bm!22601))

(assert (= (or b!242486 b!242480) bm!22603))

(assert (= (or b!242477 bm!22601) bm!22599))

(assert (= (or b!242477 bm!22603) bm!22600))

(assert (= (and d!59887 res!118822) b!242474))

(assert (= (and d!59887 c!40460) b!242485))

(assert (= (and d!59887 (not c!40460)) b!242491))

(assert (= (and d!59887 res!118824) b!242479))

(assert (= (and b!242479 res!118818) b!242471))

(assert (= (and b!242479 (not res!118816)) b!242478))

(assert (= (and b!242478 res!118823) b!242483))

(assert (= (and b!242479 res!118821) b!242484))

(assert (= (and b!242484 c!40458) b!242475))

(assert (= (and b!242484 (not c!40458)) b!242490))

(assert (= (and b!242475 res!118820) b!242482))

(assert (= (or b!242475 b!242490) bm!22597))

(assert (= (and b!242484 res!118819) b!242473))

(assert (= (and b!242473 c!40456) b!242481))

(assert (= (and b!242473 (not c!40456)) b!242488))

(assert (= (and b!242481 res!118817) b!242476))

(assert (= (or b!242481 b!242488) bm!22602))

(declare-fun b_lambda!8029 () Bool)

(assert (=> (not b_lambda!8029) (not b!242483)))

(declare-fun t!8667 () Bool)

(declare-fun tb!2969 () Bool)

(assert (=> (and b!242335 (= (defaultEntry!4492 thiss!1504) (defaultEntry!4492 thiss!1504)) t!8667) tb!2969))

(declare-fun result!5213 () Bool)

(assert (=> tb!2969 (= result!5213 tp_is_empty!6369)))

(assert (=> b!242483 t!8667))

(declare-fun b_and!13505 () Bool)

(assert (= b_and!13501 (and (=> t!8667 result!5213) b_and!13505)))

(declare-fun m!261281 () Bool)

(assert (=> b!242483 m!261281))

(declare-fun m!261283 () Bool)

(assert (=> b!242483 m!261283))

(declare-fun m!261285 () Bool)

(assert (=> b!242483 m!261285))

(declare-fun m!261287 () Bool)

(assert (=> b!242483 m!261287))

(assert (=> b!242483 m!261281))

(assert (=> b!242483 m!261285))

(assert (=> b!242483 m!261287))

(declare-fun m!261289 () Bool)

(assert (=> b!242483 m!261289))

(declare-fun m!261291 () Bool)

(assert (=> b!242485 m!261291))

(declare-fun m!261293 () Bool)

(assert (=> b!242485 m!261293))

(declare-fun m!261295 () Bool)

(assert (=> b!242485 m!261295))

(declare-fun m!261297 () Bool)

(assert (=> b!242485 m!261297))

(declare-fun m!261299 () Bool)

(assert (=> b!242485 m!261299))

(declare-fun m!261301 () Bool)

(assert (=> b!242485 m!261301))

(declare-fun m!261303 () Bool)

(assert (=> b!242485 m!261303))

(declare-fun m!261305 () Bool)

(assert (=> b!242485 m!261305))

(declare-fun m!261307 () Bool)

(assert (=> b!242485 m!261307))

(declare-fun m!261309 () Bool)

(assert (=> b!242485 m!261309))

(declare-fun m!261311 () Bool)

(assert (=> b!242485 m!261311))

(declare-fun m!261313 () Bool)

(assert (=> b!242485 m!261313))

(assert (=> b!242485 m!261307))

(assert (=> b!242485 m!261299))

(assert (=> b!242485 m!261291))

(declare-fun m!261315 () Bool)

(assert (=> b!242485 m!261315))

(declare-fun m!261317 () Bool)

(assert (=> b!242485 m!261317))

(assert (=> b!242485 m!261303))

(declare-fun m!261319 () Bool)

(assert (=> b!242485 m!261319))

(declare-fun m!261321 () Bool)

(assert (=> b!242485 m!261321))

(assert (=> b!242485 m!261281))

(declare-fun m!261323 () Bool)

(assert (=> b!242477 m!261323))

(declare-fun m!261325 () Bool)

(assert (=> d!59887 m!261325))

(declare-fun m!261327 () Bool)

(assert (=> bm!22600 m!261327))

(declare-fun m!261329 () Bool)

(assert (=> bm!22602 m!261329))

(declare-fun m!261331 () Bool)

(assert (=> bm!22597 m!261331))

(declare-fun m!261333 () Bool)

(assert (=> b!242482 m!261333))

(assert (=> b!242471 m!261281))

(assert (=> b!242471 m!261281))

(declare-fun m!261335 () Bool)

(assert (=> b!242471 m!261335))

(assert (=> b!242474 m!261281))

(assert (=> b!242474 m!261281))

(assert (=> b!242474 m!261335))

(assert (=> b!242478 m!261281))

(assert (=> b!242478 m!261281))

(declare-fun m!261337 () Bool)

(assert (=> b!242478 m!261337))

(assert (=> bm!22599 m!261311))

(declare-fun m!261339 () Bool)

(assert (=> b!242476 m!261339))

(assert (=> b!242331 d!59887))

(declare-fun d!59889 () Bool)

(declare-fun e!157395 () Bool)

(assert (=> d!59889 e!157395))

(declare-fun res!118830 () Bool)

(assert (=> d!59889 (=> (not res!118830) (not e!157395))))

(declare-fun lt!121877 () SeekEntryResult!1074)

(assert (=> d!59889 (= res!118830 ((_ is Found!1074) lt!121877))))

(assert (=> d!59889 (= lt!121877 (seekEntryOrOpen!0 key!932 (_keys!6600 thiss!1504) (mask!10573 thiss!1504)))))

(declare-fun lt!121878 () Unit!7470)

(declare-fun choose!1136 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 64) Int) Unit!7470)

(assert (=> d!59889 (= lt!121878 (choose!1136 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 (defaultEntry!4492 thiss!1504)))))

(assert (=> d!59889 (validMask!0 (mask!10573 thiss!1504))))

(assert (=> d!59889 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!356 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 (defaultEntry!4492 thiss!1504)) lt!121878)))

(declare-fun b!242498 () Bool)

(declare-fun res!118829 () Bool)

(assert (=> b!242498 (=> (not res!118829) (not e!157395))))

(assert (=> b!242498 (= res!118829 (inRange!0 (index!6467 lt!121877) (mask!10573 thiss!1504)))))

(declare-fun b!242499 () Bool)

(assert (=> b!242499 (= e!157395 (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6467 lt!121877)) key!932))))

(assert (=> b!242499 (and (bvsge (index!6467 lt!121877) #b00000000000000000000000000000000) (bvslt (index!6467 lt!121877) (size!6052 (_keys!6600 thiss!1504))))))

(assert (= (and d!59889 res!118830) b!242498))

(assert (= (and b!242498 res!118829) b!242499))

(assert (=> d!59889 m!261213))

(declare-fun m!261341 () Bool)

(assert (=> d!59889 m!261341))

(assert (=> d!59889 m!261325))

(declare-fun m!261343 () Bool)

(assert (=> b!242498 m!261343))

(declare-fun m!261345 () Bool)

(assert (=> b!242499 m!261345))

(assert (=> b!242340 d!59889))

(declare-fun d!59891 () Bool)

(declare-fun res!118837 () Bool)

(declare-fun e!157398 () Bool)

(assert (=> d!59891 (=> (not res!118837) (not e!157398))))

(declare-fun simpleValid!246 (LongMapFixedSize!3582) Bool)

(assert (=> d!59891 (= res!118837 (simpleValid!246 thiss!1504))))

(assert (=> d!59891 (= (valid!1397 thiss!1504) e!157398)))

(declare-fun b!242506 () Bool)

(declare-fun res!118838 () Bool)

(assert (=> b!242506 (=> (not res!118838) (not e!157398))))

(declare-fun arrayCountValidKeys!0 (array!12024 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!242506 (= res!118838 (= (arrayCountValidKeys!0 (_keys!6600 thiss!1504) #b00000000000000000000000000000000 (size!6052 (_keys!6600 thiss!1504))) (_size!1840 thiss!1504)))))

(declare-fun b!242507 () Bool)

(declare-fun res!118839 () Bool)

(assert (=> b!242507 (=> (not res!118839) (not e!157398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12024 (_ BitVec 32)) Bool)

(assert (=> b!242507 (= res!118839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6600 thiss!1504) (mask!10573 thiss!1504)))))

(declare-fun b!242508 () Bool)

(declare-fun arrayNoDuplicates!0 (array!12024 (_ BitVec 32) List!3654) Bool)

(assert (=> b!242508 (= e!157398 (arrayNoDuplicates!0 (_keys!6600 thiss!1504) #b00000000000000000000000000000000 Nil!3651))))

(assert (= (and d!59891 res!118837) b!242506))

(assert (= (and b!242506 res!118838) b!242507))

(assert (= (and b!242507 res!118839) b!242508))

(declare-fun m!261347 () Bool)

(assert (=> d!59891 m!261347))

(declare-fun m!261349 () Bool)

(assert (=> b!242506 m!261349))

(declare-fun m!261351 () Bool)

(assert (=> b!242507 m!261351))

(declare-fun m!261353 () Bool)

(assert (=> b!242508 m!261353))

(assert (=> start!23128 d!59891))

(declare-fun d!59893 () Bool)

(declare-fun lt!121881 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!157 (List!3654) (InoxSet (_ BitVec 64)))

(assert (=> d!59893 (= lt!121881 (select (content!157 Nil!3651) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157403 () Bool)

(assert (=> d!59893 (= lt!121881 e!157403)))

(declare-fun res!118844 () Bool)

(assert (=> d!59893 (=> (not res!118844) (not e!157403))))

(assert (=> d!59893 (= res!118844 ((_ is Cons!3650) Nil!3651))))

(assert (=> d!59893 (= (contains!1741 Nil!3651 #b1000000000000000000000000000000000000000000000000000000000000000) lt!121881)))

(declare-fun b!242513 () Bool)

(declare-fun e!157404 () Bool)

(assert (=> b!242513 (= e!157403 e!157404)))

(declare-fun res!118845 () Bool)

(assert (=> b!242513 (=> res!118845 e!157404)))

(assert (=> b!242513 (= res!118845 (= (h!4307 Nil!3651) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242514 () Bool)

(assert (=> b!242514 (= e!157404 (contains!1741 (t!8663 Nil!3651) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59893 res!118844) b!242513))

(assert (= (and b!242513 (not res!118845)) b!242514))

(declare-fun m!261355 () Bool)

(assert (=> d!59893 m!261355))

(declare-fun m!261357 () Bool)

(assert (=> d!59893 m!261357))

(declare-fun m!261359 () Bool)

(assert (=> b!242514 m!261359))

(assert (=> b!242329 d!59893))

(declare-fun d!59895 () Bool)

(assert (=> d!59895 (contains!1742 (getCurrentListMap!1379 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)) key!932)))

(declare-fun lt!121884 () Unit!7470)

(declare-fun choose!1137 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 64) (_ BitVec 32) Int) Unit!7470)

(assert (=> d!59895 (= lt!121884 (choose!1137 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)))))

(assert (=> d!59895 (validMask!0 (mask!10573 thiss!1504))))

(assert (=> d!59895 (= (lemmaArrayContainsKeyThenInListMap!158 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4492 thiss!1504)) lt!121884)))

(declare-fun bs!8862 () Bool)

(assert (= bs!8862 d!59895))

(assert (=> bs!8862 m!261221))

(assert (=> bs!8862 m!261221))

(assert (=> bs!8862 m!261223))

(declare-fun m!261361 () Bool)

(assert (=> bs!8862 m!261361))

(assert (=> bs!8862 m!261325))

(assert (=> b!242347 d!59895))

(declare-fun b!242531 () Bool)

(declare-fun e!157414 () Bool)

(declare-fun e!157413 () Bool)

(assert (=> b!242531 (= e!157414 e!157413)))

(declare-fun c!40466 () Bool)

(declare-fun lt!121889 () SeekEntryResult!1074)

(assert (=> b!242531 (= c!40466 ((_ is MissingVacant!1074) lt!121889))))

(declare-fun b!242532 () Bool)

(assert (=> b!242532 (and (bvsge (index!6466 lt!121889) #b00000000000000000000000000000000) (bvslt (index!6466 lt!121889) (size!6052 (_keys!6600 thiss!1504))))))

(declare-fun res!118856 () Bool)

(assert (=> b!242532 (= res!118856 (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6466 lt!121889)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157416 () Bool)

(assert (=> b!242532 (=> (not res!118856) (not e!157416))))

(declare-fun c!40465 () Bool)

(declare-fun bm!22608 () Bool)

(declare-fun call!22612 () Bool)

(assert (=> bm!22608 (= call!22612 (inRange!0 (ite c!40465 (index!6466 lt!121889) (index!6469 lt!121889)) (mask!10573 thiss!1504)))))

(declare-fun b!242533 () Bool)

(declare-fun call!22611 () Bool)

(assert (=> b!242533 (= e!157416 (not call!22611))))

(declare-fun b!242534 () Bool)

(assert (=> b!242534 (= e!157413 ((_ is Undefined!1074) lt!121889))))

(declare-fun b!242535 () Bool)

(declare-fun res!118857 () Bool)

(declare-fun e!157415 () Bool)

(assert (=> b!242535 (=> (not res!118857) (not e!157415))))

(assert (=> b!242535 (= res!118857 call!22612)))

(assert (=> b!242535 (= e!157413 e!157415)))

(declare-fun b!242536 () Bool)

(assert (=> b!242536 (= e!157414 e!157416)))

(declare-fun res!118855 () Bool)

(assert (=> b!242536 (= res!118855 call!22612)))

(assert (=> b!242536 (=> (not res!118855) (not e!157416))))

(declare-fun d!59897 () Bool)

(assert (=> d!59897 e!157414))

(assert (=> d!59897 (= c!40465 ((_ is MissingZero!1074) lt!121889))))

(assert (=> d!59897 (= lt!121889 (seekEntryOrOpen!0 key!932 (_keys!6600 thiss!1504) (mask!10573 thiss!1504)))))

(declare-fun lt!121890 () Unit!7470)

(declare-fun choose!1138 (array!12024 array!12022 (_ BitVec 32) (_ BitVec 32) V!8139 V!8139 (_ BitVec 64) Int) Unit!7470)

(assert (=> d!59897 (= lt!121890 (choose!1138 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 (defaultEntry!4492 thiss!1504)))))

(assert (=> d!59897 (validMask!0 (mask!10573 thiss!1504))))

(assert (=> d!59897 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!362 (_keys!6600 thiss!1504) (_values!4475 thiss!1504) (mask!10573 thiss!1504) (extraKeys!4229 thiss!1504) (zeroValue!4333 thiss!1504) (minValue!4333 thiss!1504) key!932 (defaultEntry!4492 thiss!1504)) lt!121890)))

(declare-fun b!242537 () Bool)

(assert (=> b!242537 (= e!157415 (not call!22611))))

(declare-fun b!242538 () Bool)

(declare-fun res!118854 () Bool)

(assert (=> b!242538 (=> (not res!118854) (not e!157415))))

(assert (=> b!242538 (= res!118854 (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6469 lt!121889)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242538 (and (bvsge (index!6469 lt!121889) #b00000000000000000000000000000000) (bvslt (index!6469 lt!121889) (size!6052 (_keys!6600 thiss!1504))))))

(declare-fun bm!22609 () Bool)

(assert (=> bm!22609 (= call!22611 (arrayContainsKey!0 (_keys!6600 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and d!59897 c!40465) b!242536))

(assert (= (and d!59897 (not c!40465)) b!242531))

(assert (= (and b!242536 res!118855) b!242532))

(assert (= (and b!242532 res!118856) b!242533))

(assert (= (and b!242531 c!40466) b!242535))

(assert (= (and b!242531 (not c!40466)) b!242534))

(assert (= (and b!242535 res!118857) b!242538))

(assert (= (and b!242538 res!118854) b!242537))

(assert (= (or b!242536 b!242535) bm!22608))

(assert (= (or b!242533 b!242537) bm!22609))

(declare-fun m!261363 () Bool)

(assert (=> bm!22608 m!261363))

(assert (=> bm!22609 m!261209))

(declare-fun m!261365 () Bool)

(assert (=> b!242538 m!261365))

(declare-fun m!261367 () Bool)

(assert (=> b!242532 m!261367))

(assert (=> d!59897 m!261213))

(declare-fun m!261369 () Bool)

(assert (=> d!59897 m!261369))

(assert (=> d!59897 m!261325))

(assert (=> b!242328 d!59897))

(declare-fun d!59899 () Bool)

(declare-fun res!118862 () Bool)

(declare-fun e!157421 () Bool)

(assert (=> d!59899 (=> res!118862 e!157421)))

(assert (=> d!59899 (= res!118862 (= (select (arr!5710 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!59899 (= (arrayContainsKey!0 (_keys!6600 thiss!1504) key!932 #b00000000000000000000000000000000) e!157421)))

(declare-fun b!242543 () Bool)

(declare-fun e!157422 () Bool)

(assert (=> b!242543 (= e!157421 e!157422)))

(declare-fun res!118863 () Bool)

(assert (=> b!242543 (=> (not res!118863) (not e!157422))))

(assert (=> b!242543 (= res!118863 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6052 (_keys!6600 thiss!1504))))))

(declare-fun b!242544 () Bool)

(assert (=> b!242544 (= e!157422 (arrayContainsKey!0 (_keys!6600 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!59899 (not res!118862)) b!242543))

(assert (= (and b!242543 res!118863) b!242544))

(assert (=> d!59899 m!261281))

(declare-fun m!261371 () Bool)

(assert (=> b!242544 m!261371))

(assert (=> bm!22575 d!59899))

(declare-fun d!59901 () Bool)

(declare-fun res!118868 () Bool)

(declare-fun e!157427 () Bool)

(assert (=> d!59901 (=> res!118868 e!157427)))

(assert (=> d!59901 (= res!118868 ((_ is Nil!3651) Nil!3651))))

(assert (=> d!59901 (= (noDuplicate!89 Nil!3651) e!157427)))

(declare-fun b!242549 () Bool)

(declare-fun e!157428 () Bool)

(assert (=> b!242549 (= e!157427 e!157428)))

(declare-fun res!118869 () Bool)

(assert (=> b!242549 (=> (not res!118869) (not e!157428))))

(assert (=> b!242549 (= res!118869 (not (contains!1741 (t!8663 Nil!3651) (h!4307 Nil!3651))))))

(declare-fun b!242550 () Bool)

(assert (=> b!242550 (= e!157428 (noDuplicate!89 (t!8663 Nil!3651)))))

(assert (= (and d!59901 (not res!118868)) b!242549))

(assert (= (and b!242549 res!118869) b!242550))

(declare-fun m!261373 () Bool)

(assert (=> b!242549 m!261373))

(declare-fun m!261375 () Bool)

(assert (=> b!242550 m!261375))

(assert (=> b!242336 d!59901))

(declare-fun d!59903 () Bool)

(declare-fun lt!121891 () Bool)

(assert (=> d!59903 (= lt!121891 (select (content!157 Nil!3651) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!157429 () Bool)

(assert (=> d!59903 (= lt!121891 e!157429)))

(declare-fun res!118870 () Bool)

(assert (=> d!59903 (=> (not res!118870) (not e!157429))))

(assert (=> d!59903 (= res!118870 ((_ is Cons!3650) Nil!3651))))

(assert (=> d!59903 (= (contains!1741 Nil!3651 #b0000000000000000000000000000000000000000000000000000000000000000) lt!121891)))

(declare-fun b!242551 () Bool)

(declare-fun e!157430 () Bool)

(assert (=> b!242551 (= e!157429 e!157430)))

(declare-fun res!118871 () Bool)

(assert (=> b!242551 (=> res!118871 e!157430)))

(assert (=> b!242551 (= res!118871 (= (h!4307 Nil!3651) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242552 () Bool)

(assert (=> b!242552 (= e!157430 (contains!1741 (t!8663 Nil!3651) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!59903 res!118870) b!242551))

(assert (= (and b!242551 (not res!118871)) b!242552))

(assert (=> d!59903 m!261355))

(declare-fun m!261377 () Bool)

(assert (=> d!59903 m!261377))

(declare-fun m!261379 () Bool)

(assert (=> b!242552 m!261379))

(assert (=> b!242345 d!59903))

(declare-fun d!59905 () Bool)

(assert (=> d!59905 (= (inRange!0 (ite c!40426 (index!6466 lt!121771) (index!6469 lt!121771)) (mask!10573 thiss!1504)) (and (bvsge (ite c!40426 (index!6466 lt!121771) (index!6469 lt!121771)) #b00000000000000000000000000000000) (bvslt (ite c!40426 (index!6466 lt!121771) (index!6469 lt!121771)) (bvadd (mask!10573 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22576 d!59905))

(declare-fun d!59907 () Bool)

(assert (=> d!59907 (= (array_inv!3767 (_keys!6600 thiss!1504)) (bvsge (size!6052 (_keys!6600 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!242335 d!59907))

(declare-fun d!59909 () Bool)

(assert (=> d!59909 (= (array_inv!3768 (_values!4475 thiss!1504)) (bvsge (size!6051 (_values!4475 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!242335 d!59909))

(declare-fun b!242565 () Bool)

(declare-fun e!157437 () SeekEntryResult!1074)

(declare-fun e!157438 () SeekEntryResult!1074)

(assert (=> b!242565 (= e!157437 e!157438)))

(declare-fun lt!121899 () (_ BitVec 64))

(declare-fun lt!121900 () SeekEntryResult!1074)

(assert (=> b!242565 (= lt!121899 (select (arr!5710 (_keys!6600 thiss!1504)) (index!6468 lt!121900)))))

(declare-fun c!40474 () Bool)

(assert (=> b!242565 (= c!40474 (= lt!121899 key!932))))

(declare-fun b!242566 () Bool)

(declare-fun e!157439 () SeekEntryResult!1074)

(assert (=> b!242566 (= e!157439 (MissingZero!1074 (index!6468 lt!121900)))))

(declare-fun b!242567 () Bool)

(declare-fun c!40473 () Bool)

(assert (=> b!242567 (= c!40473 (= lt!121899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!242567 (= e!157438 e!157439)))

(declare-fun b!242568 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12024 (_ BitVec 32)) SeekEntryResult!1074)

(assert (=> b!242568 (= e!157439 (seekKeyOrZeroReturnVacant!0 (x!24280 lt!121900) (index!6468 lt!121900) (index!6468 lt!121900) key!932 (_keys!6600 thiss!1504) (mask!10573 thiss!1504)))))

(declare-fun b!242570 () Bool)

(assert (=> b!242570 (= e!157437 Undefined!1074)))

(declare-fun d!59911 () Bool)

(declare-fun lt!121898 () SeekEntryResult!1074)

(assert (=> d!59911 (and (or ((_ is Undefined!1074) lt!121898) (not ((_ is Found!1074) lt!121898)) (and (bvsge (index!6467 lt!121898) #b00000000000000000000000000000000) (bvslt (index!6467 lt!121898) (size!6052 (_keys!6600 thiss!1504))))) (or ((_ is Undefined!1074) lt!121898) ((_ is Found!1074) lt!121898) (not ((_ is MissingZero!1074) lt!121898)) (and (bvsge (index!6466 lt!121898) #b00000000000000000000000000000000) (bvslt (index!6466 lt!121898) (size!6052 (_keys!6600 thiss!1504))))) (or ((_ is Undefined!1074) lt!121898) ((_ is Found!1074) lt!121898) ((_ is MissingZero!1074) lt!121898) (not ((_ is MissingVacant!1074) lt!121898)) (and (bvsge (index!6469 lt!121898) #b00000000000000000000000000000000) (bvslt (index!6469 lt!121898) (size!6052 (_keys!6600 thiss!1504))))) (or ((_ is Undefined!1074) lt!121898) (ite ((_ is Found!1074) lt!121898) (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6467 lt!121898)) key!932) (ite ((_ is MissingZero!1074) lt!121898) (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6466 lt!121898)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1074) lt!121898) (= (select (arr!5710 (_keys!6600 thiss!1504)) (index!6469 lt!121898)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!59911 (= lt!121898 e!157437)))

(declare-fun c!40475 () Bool)

(assert (=> d!59911 (= c!40475 (and ((_ is Intermediate!1074) lt!121900) (undefined!1886 lt!121900)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12024 (_ BitVec 32)) SeekEntryResult!1074)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!59911 (= lt!121900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10573 thiss!1504)) key!932 (_keys!6600 thiss!1504) (mask!10573 thiss!1504)))))

(assert (=> d!59911 (validMask!0 (mask!10573 thiss!1504))))

(assert (=> d!59911 (= (seekEntryOrOpen!0 key!932 (_keys!6600 thiss!1504) (mask!10573 thiss!1504)) lt!121898)))

(declare-fun b!242569 () Bool)

(assert (=> b!242569 (= e!157438 (Found!1074 (index!6468 lt!121900)))))

(assert (= (and d!59911 c!40475) b!242570))

(assert (= (and d!59911 (not c!40475)) b!242565))

(assert (= (and b!242565 c!40474) b!242569))

(assert (= (and b!242565 (not c!40474)) b!242567))

(assert (= (and b!242567 c!40473) b!242566))

(assert (= (and b!242567 (not c!40473)) b!242568))

(declare-fun m!261381 () Bool)

(assert (=> b!242565 m!261381))

(declare-fun m!261383 () Bool)

(assert (=> b!242568 m!261383))

(declare-fun m!261385 () Bool)

(assert (=> d!59911 m!261385))

(assert (=> d!59911 m!261325))

(declare-fun m!261387 () Bool)

(assert (=> d!59911 m!261387))

(declare-fun m!261389 () Bool)

(assert (=> d!59911 m!261389))

(declare-fun m!261391 () Bool)

(assert (=> d!59911 m!261391))

(declare-fun m!261393 () Bool)

(assert (=> d!59911 m!261393))

(assert (=> d!59911 m!261391))

(assert (=> b!242333 d!59911))

(assert (=> b!242342 d!59899))

(declare-fun mapNonEmpty!10801 () Bool)

(declare-fun mapRes!10801 () Bool)

(declare-fun tp!22744 () Bool)

(declare-fun e!157444 () Bool)

(assert (=> mapNonEmpty!10801 (= mapRes!10801 (and tp!22744 e!157444))))

(declare-fun mapRest!10801 () (Array (_ BitVec 32) ValueCell!2841))

(declare-fun mapValue!10801 () ValueCell!2841)

(declare-fun mapKey!10801 () (_ BitVec 32))

(assert (=> mapNonEmpty!10801 (= mapRest!10795 (store mapRest!10801 mapKey!10801 mapValue!10801))))

(declare-fun b!242577 () Bool)

(assert (=> b!242577 (= e!157444 tp_is_empty!6369)))

(declare-fun condMapEmpty!10801 () Bool)

(declare-fun mapDefault!10801 () ValueCell!2841)

(assert (=> mapNonEmpty!10795 (= condMapEmpty!10801 (= mapRest!10795 ((as const (Array (_ BitVec 32) ValueCell!2841)) mapDefault!10801)))))

(declare-fun e!157445 () Bool)

(assert (=> mapNonEmpty!10795 (= tp!22734 (and e!157445 mapRes!10801))))

(declare-fun b!242578 () Bool)

(assert (=> b!242578 (= e!157445 tp_is_empty!6369)))

(declare-fun mapIsEmpty!10801 () Bool)

(assert (=> mapIsEmpty!10801 mapRes!10801))

(assert (= (and mapNonEmpty!10795 condMapEmpty!10801) mapIsEmpty!10801))

(assert (= (and mapNonEmpty!10795 (not condMapEmpty!10801)) mapNonEmpty!10801))

(assert (= (and mapNonEmpty!10801 ((_ is ValueCellFull!2841) mapValue!10801)) b!242577))

(assert (= (and mapNonEmpty!10795 ((_ is ValueCellFull!2841) mapDefault!10801)) b!242578))

(declare-fun m!261395 () Bool)

(assert (=> mapNonEmpty!10801 m!261395))

(declare-fun b_lambda!8031 () Bool)

(assert (= b_lambda!8029 (or (and b!242335 b_free!6507) b_lambda!8031)))

(check-sat (not d!59885) (not d!59895) (not b!242544) (not bm!22609) (not b!242568) (not b!242549) (not b!242482) (not b!242506) (not b!242485) (not bm!22600) (not b!242428) (not d!59891) (not b!242426) (not b!242498) (not bm!22602) (not d!59889) (not b!242514) (not d!59911) (not b!242552) (not b!242508) (not bm!22599) (not d!59903) (not d!59887) (not b!242476) tp_is_empty!6369 (not b!242471) (not b_lambda!8031) (not b!242478) (not mapNonEmpty!10801) (not bm!22608) b_and!13505 (not b_next!6507) (not b!242477) (not b!242507) (not b!242483) (not b!242550) (not d!59897) (not b!242474) (not bm!22597) (not d!59893))
(check-sat b_and!13505 (not b_next!6507))
