; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21870 () Bool)

(assert start!21870)

(declare-fun b!220488 () Bool)

(declare-fun b_free!5925 () Bool)

(declare-fun b_next!5925 () Bool)

(assert (=> b!220488 (= b_free!5925 (not b_next!5925))))

(declare-fun tp!20916 () Bool)

(declare-fun b_and!12841 () Bool)

(assert (=> b!220488 (= tp!20916 b_and!12841)))

(declare-fun bm!20604 () Bool)

(declare-datatypes ((SeekEntryResult!823 0))(
  ( (MissingZero!823 (index!5462 (_ BitVec 32))) (Found!823 (index!5463 (_ BitVec 32))) (Intermediate!823 (undefined!1635 Bool) (index!5464 (_ BitVec 32)) (x!22971 (_ BitVec 32))) (Undefined!823) (MissingVacant!823 (index!5465 (_ BitVec 32))) )
))
(declare-fun lt!112221 () SeekEntryResult!823)

(declare-datatypes ((V!7363 0))(
  ( (V!7364 (val!2938 Int)) )
))
(declare-datatypes ((ValueCell!2550 0))(
  ( (ValueCellFull!2550 (v!4954 V!7363)) (EmptyCell!2550) )
))
(declare-datatypes ((array!10816 0))(
  ( (array!10817 (arr!5127 (Array (_ BitVec 32) ValueCell!2550)) (size!5460 (_ BitVec 32))) )
))
(declare-datatypes ((array!10818 0))(
  ( (array!10819 (arr!5128 (Array (_ BitVec 32) (_ BitVec 64))) (size!5461 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3000 0))(
  ( (LongMapFixedSize!3001 (defaultEntry!4159 Int) (mask!9961 (_ BitVec 32)) (extraKeys!3896 (_ BitVec 32)) (zeroValue!4000 V!7363) (minValue!4000 V!7363) (_size!1549 (_ BitVec 32)) (_keys!6213 array!10818) (_values!4142 array!10816) (_vacant!1549 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3000)

(declare-fun call!20607 () Bool)

(declare-fun c!36677 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20604 (= call!20607 (inRange!0 (ite c!36677 (index!5462 lt!112221) (index!5465 lt!112221)) (mask!9961 thiss!1504)))))

(declare-fun b!220478 () Bool)

(declare-fun res!108138 () Bool)

(assert (=> b!220478 (= res!108138 (= (select (arr!5128 (_keys!6213 thiss!1504)) (index!5465 lt!112221)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143367 () Bool)

(assert (=> b!220478 (=> (not res!108138) (not e!143367))))

(declare-fun b!220479 () Bool)

(declare-fun e!143357 () Bool)

(declare-fun e!143366 () Bool)

(assert (=> b!220479 (= e!143357 e!143366)))

(declare-fun res!108128 () Bool)

(assert (=> b!220479 (=> (not res!108128) (not e!143366))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220479 (= res!108128 (inRange!0 index!297 (mask!9961 thiss!1504)))))

(declare-datatypes ((Unit!6573 0))(
  ( (Unit!6574) )
))
(declare-fun lt!112222 () Unit!6573)

(declare-fun e!143364 () Unit!6573)

(assert (=> b!220479 (= lt!112222 e!143364)))

(declare-fun c!36675 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4356 0))(
  ( (tuple2!4357 (_1!2188 (_ BitVec 64)) (_2!2188 V!7363)) )
))
(declare-datatypes ((List!3282 0))(
  ( (Nil!3279) (Cons!3278 (h!3926 tuple2!4356) (t!8249 List!3282)) )
))
(declare-datatypes ((ListLongMap!3283 0))(
  ( (ListLongMap!3284 (toList!1657 List!3282)) )
))
(declare-fun contains!1494 (ListLongMap!3283 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1180 (array!10818 array!10816 (_ BitVec 32) (_ BitVec 32) V!7363 V!7363 (_ BitVec 32) Int) ListLongMap!3283)

(assert (=> b!220479 (= c!36675 (contains!1494 (getCurrentListMap!1180 (_keys!6213 thiss!1504) (_values!4142 thiss!1504) (mask!9961 thiss!1504) (extraKeys!3896 thiss!1504) (zeroValue!4000 thiss!1504) (minValue!4000 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4159 thiss!1504)) key!932))))

(declare-fun b!220480 () Bool)

(declare-fun res!108136 () Bool)

(declare-fun e!143360 () Bool)

(assert (=> b!220480 (=> (not res!108136) (not e!143360))))

(assert (=> b!220480 (= res!108136 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220481 () Bool)

(declare-fun res!108129 () Bool)

(declare-fun e!143358 () Bool)

(assert (=> b!220481 (=> (not res!108129) (not e!143358))))

(assert (=> b!220481 (= res!108129 (= (select (arr!5128 (_keys!6213 thiss!1504)) (index!5462 lt!112221)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!220482 () Bool)

(declare-fun e!143359 () Bool)

(assert (=> b!220482 (= e!143359 e!143367)))

(declare-fun res!108132 () Bool)

(assert (=> b!220482 (= res!108132 call!20607)))

(assert (=> b!220482 (=> (not res!108132) (not e!143367))))

(declare-fun b!220483 () Bool)

(declare-fun res!108130 () Bool)

(assert (=> b!220483 (=> (not res!108130) (not e!143366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10818 (_ BitVec 32)) Bool)

(assert (=> b!220483 (= res!108130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6213 thiss!1504) (mask!9961 thiss!1504)))))

(declare-fun b!220484 () Bool)

(declare-fun res!108134 () Bool)

(assert (=> b!220484 (=> (not res!108134) (not e!143358))))

(assert (=> b!220484 (= res!108134 call!20607)))

(declare-fun e!143365 () Bool)

(assert (=> b!220484 (= e!143365 e!143358)))

(declare-fun b!220485 () Bool)

(get-info :version)

(assert (=> b!220485 (= e!143359 ((_ is Undefined!823) lt!112221))))

(declare-fun b!220486 () Bool)

(declare-fun res!108135 () Bool)

(assert (=> b!220486 (=> (not res!108135) (not e!143366))))

(assert (=> b!220486 (= res!108135 (and (= (size!5460 (_values!4142 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9961 thiss!1504))) (= (size!5461 (_keys!6213 thiss!1504)) (size!5460 (_values!4142 thiss!1504))) (bvsge (mask!9961 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3896 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3896 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!220487 () Bool)

(declare-fun e!143368 () Bool)

(declare-fun tp_is_empty!5787 () Bool)

(assert (=> b!220487 (= e!143368 tp_is_empty!5787)))

(declare-fun e!143362 () Bool)

(declare-fun e!143356 () Bool)

(declare-fun array_inv!3383 (array!10818) Bool)

(declare-fun array_inv!3384 (array!10816) Bool)

(assert (=> b!220488 (= e!143356 (and tp!20916 tp_is_empty!5787 (array_inv!3383 (_keys!6213 thiss!1504)) (array_inv!3384 (_values!4142 thiss!1504)) e!143362))))

(declare-fun b!220489 () Bool)

(assert (=> b!220489 (= e!143366 false)))

(declare-fun lt!112223 () Bool)

(declare-datatypes ((List!3283 0))(
  ( (Nil!3280) (Cons!3279 (h!3927 (_ BitVec 64)) (t!8250 List!3283)) )
))
(declare-fun arrayNoDuplicates!0 (array!10818 (_ BitVec 32) List!3283) Bool)

(assert (=> b!220489 (= lt!112223 (arrayNoDuplicates!0 (_keys!6213 thiss!1504) #b00000000000000000000000000000000 Nil!3280))))

(declare-fun mapIsEmpty!9850 () Bool)

(declare-fun mapRes!9850 () Bool)

(assert (=> mapIsEmpty!9850 mapRes!9850))

(declare-fun b!220490 () Bool)

(declare-fun lt!112220 () Unit!6573)

(assert (=> b!220490 (= e!143364 lt!112220)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!214 (array!10818 array!10816 (_ BitVec 32) (_ BitVec 32) V!7363 V!7363 (_ BitVec 64) Int) Unit!6573)

(assert (=> b!220490 (= lt!112220 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!214 (_keys!6213 thiss!1504) (_values!4142 thiss!1504) (mask!9961 thiss!1504) (extraKeys!3896 thiss!1504) (zeroValue!4000 thiss!1504) (minValue!4000 thiss!1504) key!932 (defaultEntry!4159 thiss!1504)))))

(assert (=> b!220490 (= c!36677 ((_ is MissingZero!823) lt!112221))))

(assert (=> b!220490 e!143365))

(declare-fun b!220491 () Bool)

(declare-fun Unit!6575 () Unit!6573)

(assert (=> b!220491 (= e!143364 Unit!6575)))

(declare-fun lt!112224 () Unit!6573)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!204 (array!10818 array!10816 (_ BitVec 32) (_ BitVec 32) V!7363 V!7363 (_ BitVec 64) Int) Unit!6573)

(assert (=> b!220491 (= lt!112224 (lemmaInListMapThenSeekEntryOrOpenFindsIt!204 (_keys!6213 thiss!1504) (_values!4142 thiss!1504) (mask!9961 thiss!1504) (extraKeys!3896 thiss!1504) (zeroValue!4000 thiss!1504) (minValue!4000 thiss!1504) key!932 (defaultEntry!4159 thiss!1504)))))

(assert (=> b!220491 false))

(declare-fun b!220492 () Bool)

(declare-fun call!20608 () Bool)

(assert (=> b!220492 (= e!143367 (not call!20608))))

(declare-fun b!220493 () Bool)

(declare-fun e!143361 () Bool)

(assert (=> b!220493 (= e!143361 tp_is_empty!5787)))

(declare-fun b!220494 () Bool)

(declare-fun c!36676 () Bool)

(assert (=> b!220494 (= c!36676 ((_ is MissingVacant!823) lt!112221))))

(assert (=> b!220494 (= e!143365 e!143359)))

(declare-fun b!220495 () Bool)

(assert (=> b!220495 (= e!143362 (and e!143361 mapRes!9850))))

(declare-fun condMapEmpty!9850 () Bool)

(declare-fun mapDefault!9850 () ValueCell!2550)

(assert (=> b!220495 (= condMapEmpty!9850 (= (arr!5127 (_values!4142 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2550)) mapDefault!9850)))))

(declare-fun b!220496 () Bool)

(assert (=> b!220496 (= e!143360 e!143357)))

(declare-fun res!108131 () Bool)

(assert (=> b!220496 (=> (not res!108131) (not e!143357))))

(assert (=> b!220496 (= res!108131 (or (= lt!112221 (MissingZero!823 index!297)) (= lt!112221 (MissingVacant!823 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10818 (_ BitVec 32)) SeekEntryResult!823)

(assert (=> b!220496 (= lt!112221 (seekEntryOrOpen!0 key!932 (_keys!6213 thiss!1504) (mask!9961 thiss!1504)))))

(declare-fun b!220497 () Bool)

(declare-fun res!108139 () Bool)

(assert (=> b!220497 (=> (not res!108139) (not e!143366))))

(declare-fun arrayContainsKey!0 (array!10818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!220497 (= res!108139 (arrayContainsKey!0 (_keys!6213 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!20605 () Bool)

(assert (=> bm!20605 (= call!20608 (arrayContainsKey!0 (_keys!6213 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!9850 () Bool)

(declare-fun tp!20917 () Bool)

(assert (=> mapNonEmpty!9850 (= mapRes!9850 (and tp!20917 e!143368))))

(declare-fun mapKey!9850 () (_ BitVec 32))

(declare-fun mapRest!9850 () (Array (_ BitVec 32) ValueCell!2550))

(declare-fun mapValue!9850 () ValueCell!2550)

(assert (=> mapNonEmpty!9850 (= (arr!5127 (_values!4142 thiss!1504)) (store mapRest!9850 mapKey!9850 mapValue!9850))))

(declare-fun res!108133 () Bool)

(assert (=> start!21870 (=> (not res!108133) (not e!143360))))

(declare-fun valid!1202 (LongMapFixedSize!3000) Bool)

(assert (=> start!21870 (= res!108133 (valid!1202 thiss!1504))))

(assert (=> start!21870 e!143360))

(assert (=> start!21870 e!143356))

(assert (=> start!21870 true))

(declare-fun b!220498 () Bool)

(assert (=> b!220498 (= e!143358 (not call!20608))))

(declare-fun b!220499 () Bool)

(declare-fun res!108137 () Bool)

(assert (=> b!220499 (=> (not res!108137) (not e!143366))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!220499 (= res!108137 (validMask!0 (mask!9961 thiss!1504)))))

(assert (= (and start!21870 res!108133) b!220480))

(assert (= (and b!220480 res!108136) b!220496))

(assert (= (and b!220496 res!108131) b!220479))

(assert (= (and b!220479 c!36675) b!220491))

(assert (= (and b!220479 (not c!36675)) b!220490))

(assert (= (and b!220490 c!36677) b!220484))

(assert (= (and b!220490 (not c!36677)) b!220494))

(assert (= (and b!220484 res!108134) b!220481))

(assert (= (and b!220481 res!108129) b!220498))

(assert (= (and b!220494 c!36676) b!220482))

(assert (= (and b!220494 (not c!36676)) b!220485))

(assert (= (and b!220482 res!108132) b!220478))

(assert (= (and b!220478 res!108138) b!220492))

(assert (= (or b!220484 b!220482) bm!20604))

(assert (= (or b!220498 b!220492) bm!20605))

(assert (= (and b!220479 res!108128) b!220497))

(assert (= (and b!220497 res!108139) b!220499))

(assert (= (and b!220499 res!108137) b!220486))

(assert (= (and b!220486 res!108135) b!220483))

(assert (= (and b!220483 res!108130) b!220489))

(assert (= (and b!220495 condMapEmpty!9850) mapIsEmpty!9850))

(assert (= (and b!220495 (not condMapEmpty!9850)) mapNonEmpty!9850))

(assert (= (and mapNonEmpty!9850 ((_ is ValueCellFull!2550) mapValue!9850)) b!220487))

(assert (= (and b!220495 ((_ is ValueCellFull!2550) mapDefault!9850)) b!220493))

(assert (= b!220488 b!220495))

(assert (= start!21870 b!220488))

(declare-fun m!245585 () Bool)

(assert (=> b!220499 m!245585))

(declare-fun m!245587 () Bool)

(assert (=> bm!20605 m!245587))

(declare-fun m!245589 () Bool)

(assert (=> b!220491 m!245589))

(declare-fun m!245591 () Bool)

(assert (=> b!220481 m!245591))

(declare-fun m!245593 () Bool)

(assert (=> b!220478 m!245593))

(declare-fun m!245595 () Bool)

(assert (=> b!220489 m!245595))

(declare-fun m!245597 () Bool)

(assert (=> start!21870 m!245597))

(declare-fun m!245599 () Bool)

(assert (=> mapNonEmpty!9850 m!245599))

(declare-fun m!245601 () Bool)

(assert (=> b!220496 m!245601))

(declare-fun m!245603 () Bool)

(assert (=> b!220490 m!245603))

(declare-fun m!245605 () Bool)

(assert (=> b!220479 m!245605))

(declare-fun m!245607 () Bool)

(assert (=> b!220479 m!245607))

(assert (=> b!220479 m!245607))

(declare-fun m!245609 () Bool)

(assert (=> b!220479 m!245609))

(declare-fun m!245611 () Bool)

(assert (=> bm!20604 m!245611))

(declare-fun m!245613 () Bool)

(assert (=> b!220488 m!245613))

(declare-fun m!245615 () Bool)

(assert (=> b!220488 m!245615))

(declare-fun m!245617 () Bool)

(assert (=> b!220483 m!245617))

(assert (=> b!220497 m!245587))

(check-sat (not b!220488) (not b!220491) b_and!12841 (not bm!20604) (not b!220489) (not b!220499) (not b!220497) (not b!220483) tp_is_empty!5787 (not bm!20605) (not b_next!5925) (not b!220490) (not start!21870) (not b!220496) (not mapNonEmpty!9850) (not b!220479))
(check-sat b_and!12841 (not b_next!5925))
