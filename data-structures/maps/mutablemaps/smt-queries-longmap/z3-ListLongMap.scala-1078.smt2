; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22164 () Bool)

(assert start!22164)

(declare-fun b!231210 () Bool)

(declare-fun b_free!6219 () Bool)

(declare-fun b_next!6219 () Bool)

(assert (=> b!231210 (= b_free!6219 (not b_next!6219))))

(declare-fun tp!21798 () Bool)

(declare-fun b_and!13135 () Bool)

(assert (=> b!231210 (= tp!21798 b_and!13135)))

(declare-fun b!231196 () Bool)

(declare-fun c!38392 () Bool)

(declare-datatypes ((SeekEntryResult!959 0))(
  ( (MissingZero!959 (index!6006 (_ BitVec 32))) (Found!959 (index!6007 (_ BitVec 32))) (Intermediate!959 (undefined!1771 Bool) (index!6008 (_ BitVec 32)) (x!23499 (_ BitVec 32))) (Undefined!959) (MissingVacant!959 (index!6009 (_ BitVec 32))) )
))
(declare-fun lt!116554 () SeekEntryResult!959)

(get-info :version)

(assert (=> b!231196 (= c!38392 ((_ is MissingVacant!959) lt!116554))))

(declare-fun e!150088 () Bool)

(declare-fun e!150092 () Bool)

(assert (=> b!231196 (= e!150088 e!150092)))

(declare-fun b!231197 () Bool)

(declare-fun res!113652 () Bool)

(declare-fun e!150089 () Bool)

(assert (=> b!231197 (=> (not res!113652) (not e!150089))))

(declare-fun call!21489 () Bool)

(assert (=> b!231197 (= res!113652 call!21489)))

(assert (=> b!231197 (= e!150088 e!150089)))

(declare-fun b!231198 () Bool)

(declare-datatypes ((Unit!7105 0))(
  ( (Unit!7106) )
))
(declare-fun e!150086 () Unit!7105)

(declare-fun Unit!7107 () Unit!7105)

(assert (=> b!231198 (= e!150086 Unit!7107)))

(declare-fun res!113659 () Bool)

(declare-fun e!150096 () Bool)

(assert (=> start!22164 (=> (not res!113659) (not e!150096))))

(declare-datatypes ((V!7755 0))(
  ( (V!7756 (val!3085 Int)) )
))
(declare-datatypes ((ValueCell!2697 0))(
  ( (ValueCellFull!2697 (v!5101 V!7755)) (EmptyCell!2697) )
))
(declare-datatypes ((array!11404 0))(
  ( (array!11405 (arr!5421 (Array (_ BitVec 32) ValueCell!2697)) (size!5754 (_ BitVec 32))) )
))
(declare-datatypes ((array!11406 0))(
  ( (array!11407 (arr!5422 (Array (_ BitVec 32) (_ BitVec 64))) (size!5755 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3294 0))(
  ( (LongMapFixedSize!3295 (defaultEntry!4306 Int) (mask!10206 (_ BitVec 32)) (extraKeys!4043 (_ BitVec 32)) (zeroValue!4147 V!7755) (minValue!4147 V!7755) (_size!1696 (_ BitVec 32)) (_keys!6360 array!11406) (_values!4289 array!11404) (_vacant!1696 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3294)

(declare-fun valid!1301 (LongMapFixedSize!3294) Bool)

(assert (=> start!22164 (= res!113659 (valid!1301 thiss!1504))))

(assert (=> start!22164 e!150096))

(declare-fun e!150090 () Bool)

(assert (=> start!22164 e!150090))

(assert (=> start!22164 true))

(declare-fun tp_is_empty!6081 () Bool)

(assert (=> start!22164 tp_is_empty!6081))

(declare-fun b!231199 () Bool)

(declare-fun Unit!7108 () Unit!7105)

(assert (=> b!231199 (= e!150086 Unit!7108)))

(declare-fun lt!116558 () Unit!7105)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!133 (array!11406 array!11404 (_ BitVec 32) (_ BitVec 32) V!7755 V!7755 (_ BitVec 64) (_ BitVec 32) Int) Unit!7105)

(assert (=> b!231199 (= lt!116558 (lemmaArrayContainsKeyThenInListMap!133 (_keys!6360 thiss!1504) (_values!4289 thiss!1504) (mask!10206 thiss!1504) (extraKeys!4043 thiss!1504) (zeroValue!4147 thiss!1504) (minValue!4147 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4306 thiss!1504)))))

(assert (=> b!231199 false))

(declare-fun b!231200 () Bool)

(declare-fun e!150093 () Bool)

(assert (=> b!231200 (= e!150096 e!150093)))

(declare-fun res!113658 () Bool)

(assert (=> b!231200 (=> (not res!113658) (not e!150093))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231200 (= res!113658 (or (= lt!116554 (MissingZero!959 index!297)) (= lt!116554 (MissingVacant!959 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11406 (_ BitVec 32)) SeekEntryResult!959)

(assert (=> b!231200 (= lt!116554 (seekEntryOrOpen!0 key!932 (_keys!6360 thiss!1504) (mask!10206 thiss!1504)))))

(declare-fun b!231201 () Bool)

(declare-fun e!150084 () Unit!7105)

(declare-fun Unit!7109 () Unit!7105)

(assert (=> b!231201 (= e!150084 Unit!7109)))

(declare-fun lt!116559 () Unit!7105)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!300 (array!11406 array!11404 (_ BitVec 32) (_ BitVec 32) V!7755 V!7755 (_ BitVec 64) Int) Unit!7105)

(assert (=> b!231201 (= lt!116559 (lemmaInListMapThenSeekEntryOrOpenFindsIt!300 (_keys!6360 thiss!1504) (_values!4289 thiss!1504) (mask!10206 thiss!1504) (extraKeys!4043 thiss!1504) (zeroValue!4147 thiss!1504) (minValue!4147 thiss!1504) key!932 (defaultEntry!4306 thiss!1504)))))

(assert (=> b!231201 false))

(declare-fun b!231202 () Bool)

(declare-fun e!150085 () Bool)

(declare-fun e!150095 () Bool)

(declare-fun mapRes!10291 () Bool)

(assert (=> b!231202 (= e!150085 (and e!150095 mapRes!10291))))

(declare-fun condMapEmpty!10291 () Bool)

(declare-fun mapDefault!10291 () ValueCell!2697)

(assert (=> b!231202 (= condMapEmpty!10291 (= (arr!5421 (_values!4289 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2697)) mapDefault!10291)))))

(declare-fun b!231203 () Bool)

(declare-fun e!150094 () Bool)

(assert (=> b!231203 (= e!150094 (not true))))

(declare-fun lt!116549 () array!11406)

(declare-fun arrayCountValidKeys!0 (array!11406 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231203 (= (arrayCountValidKeys!0 lt!116549 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116560 () Unit!7105)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11406 (_ BitVec 32)) Unit!7105)

(assert (=> b!231203 (= lt!116560 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116549 index!297))))

(declare-fun arrayContainsKey!0 (array!11406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231203 (arrayContainsKey!0 lt!116549 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116553 () Unit!7105)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11406 (_ BitVec 64) (_ BitVec 32)) Unit!7105)

(assert (=> b!231203 (= lt!116553 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116549 key!932 index!297))))

(declare-datatypes ((tuple2!4548 0))(
  ( (tuple2!4549 (_1!2284 (_ BitVec 64)) (_2!2284 V!7755)) )
))
(declare-datatypes ((List!3492 0))(
  ( (Nil!3489) (Cons!3488 (h!4136 tuple2!4548) (t!8459 List!3492)) )
))
(declare-datatypes ((ListLongMap!3475 0))(
  ( (ListLongMap!3476 (toList!1753 List!3492)) )
))
(declare-fun lt!116561 () ListLongMap!3475)

(declare-fun v!346 () V!7755)

(declare-fun +!608 (ListLongMap!3475 tuple2!4548) ListLongMap!3475)

(declare-fun getCurrentListMap!1276 (array!11406 array!11404 (_ BitVec 32) (_ BitVec 32) V!7755 V!7755 (_ BitVec 32) Int) ListLongMap!3475)

(assert (=> b!231203 (= (+!608 lt!116561 (tuple2!4549 key!932 v!346)) (getCurrentListMap!1276 lt!116549 (array!11405 (store (arr!5421 (_values!4289 thiss!1504)) index!297 (ValueCellFull!2697 v!346)) (size!5754 (_values!4289 thiss!1504))) (mask!10206 thiss!1504) (extraKeys!4043 thiss!1504) (zeroValue!4147 thiss!1504) (minValue!4147 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4306 thiss!1504)))))

(declare-fun lt!116555 () Unit!7105)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!67 (array!11406 array!11404 (_ BitVec 32) (_ BitVec 32) V!7755 V!7755 (_ BitVec 32) (_ BitVec 64) V!7755 Int) Unit!7105)

(assert (=> b!231203 (= lt!116555 (lemmaAddValidKeyToArrayThenAddPairToListMap!67 (_keys!6360 thiss!1504) (_values!4289 thiss!1504) (mask!10206 thiss!1504) (extraKeys!4043 thiss!1504) (zeroValue!4147 thiss!1504) (minValue!4147 thiss!1504) index!297 key!932 v!346 (defaultEntry!4306 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11406 (_ BitVec 32)) Bool)

(assert (=> b!231203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116549 (mask!10206 thiss!1504))))

(declare-fun lt!116556 () Unit!7105)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11406 (_ BitVec 32) (_ BitVec 32)) Unit!7105)

(assert (=> b!231203 (= lt!116556 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6360 thiss!1504) index!297 (mask!10206 thiss!1504)))))

(assert (=> b!231203 (= (arrayCountValidKeys!0 lt!116549 #b00000000000000000000000000000000 (size!5755 (_keys!6360 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6360 thiss!1504) #b00000000000000000000000000000000 (size!5755 (_keys!6360 thiss!1504)))))))

(declare-fun lt!116552 () Unit!7105)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11406 (_ BitVec 32) (_ BitVec 64)) Unit!7105)

(assert (=> b!231203 (= lt!116552 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6360 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3493 0))(
  ( (Nil!3490) (Cons!3489 (h!4137 (_ BitVec 64)) (t!8460 List!3493)) )
))
(declare-fun arrayNoDuplicates!0 (array!11406 (_ BitVec 32) List!3493) Bool)

(assert (=> b!231203 (arrayNoDuplicates!0 lt!116549 #b00000000000000000000000000000000 Nil!3490)))

(assert (=> b!231203 (= lt!116549 (array!11407 (store (arr!5422 (_keys!6360 thiss!1504)) index!297 key!932) (size!5755 (_keys!6360 thiss!1504))))))

(declare-fun lt!116550 () Unit!7105)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11406 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3493) Unit!7105)

(assert (=> b!231203 (= lt!116550 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6360 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3490))))

(declare-fun lt!116557 () Unit!7105)

(assert (=> b!231203 (= lt!116557 e!150086)))

(declare-fun c!38390 () Bool)

(assert (=> b!231203 (= c!38390 (arrayContainsKey!0 (_keys!6360 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231204 () Bool)

(declare-fun call!21490 () Bool)

(assert (=> b!231204 (= e!150089 (not call!21490))))

(declare-fun b!231205 () Bool)

(assert (=> b!231205 (= e!150092 ((_ is Undefined!959) lt!116554))))

(declare-fun mapNonEmpty!10291 () Bool)

(declare-fun tp!21799 () Bool)

(declare-fun e!150087 () Bool)

(assert (=> mapNonEmpty!10291 (= mapRes!10291 (and tp!21799 e!150087))))

(declare-fun mapKey!10291 () (_ BitVec 32))

(declare-fun mapValue!10291 () ValueCell!2697)

(declare-fun mapRest!10291 () (Array (_ BitVec 32) ValueCell!2697))

(assert (=> mapNonEmpty!10291 (= (arr!5421 (_values!4289 thiss!1504)) (store mapRest!10291 mapKey!10291 mapValue!10291))))

(declare-fun b!231206 () Bool)

(declare-fun e!150097 () Bool)

(assert (=> b!231206 (= e!150097 (not call!21490))))

(declare-fun b!231207 () Bool)

(declare-fun res!113656 () Bool)

(assert (=> b!231207 (=> (not res!113656) (not e!150089))))

(assert (=> b!231207 (= res!113656 (= (select (arr!5422 (_keys!6360 thiss!1504)) (index!6006 lt!116554)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!231208 () Bool)

(assert (=> b!231208 (= e!150093 e!150094)))

(declare-fun res!113655 () Bool)

(assert (=> b!231208 (=> (not res!113655) (not e!150094))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!231208 (= res!113655 (inRange!0 index!297 (mask!10206 thiss!1504)))))

(declare-fun lt!116562 () Unit!7105)

(assert (=> b!231208 (= lt!116562 e!150084)))

(declare-fun c!38391 () Bool)

(declare-fun contains!1618 (ListLongMap!3475 (_ BitVec 64)) Bool)

(assert (=> b!231208 (= c!38391 (contains!1618 lt!116561 key!932))))

(assert (=> b!231208 (= lt!116561 (getCurrentListMap!1276 (_keys!6360 thiss!1504) (_values!4289 thiss!1504) (mask!10206 thiss!1504) (extraKeys!4043 thiss!1504) (zeroValue!4147 thiss!1504) (minValue!4147 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4306 thiss!1504)))))

(declare-fun b!231209 () Bool)

(assert (=> b!231209 (= e!150092 e!150097)))

(declare-fun res!113654 () Bool)

(assert (=> b!231209 (= res!113654 call!21489)))

(assert (=> b!231209 (=> (not res!113654) (not e!150097))))

(declare-fun bm!21486 () Bool)

(assert (=> bm!21486 (= call!21490 (arrayContainsKey!0 (_keys!6360 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun array_inv!3567 (array!11406) Bool)

(declare-fun array_inv!3568 (array!11404) Bool)

(assert (=> b!231210 (= e!150090 (and tp!21798 tp_is_empty!6081 (array_inv!3567 (_keys!6360 thiss!1504)) (array_inv!3568 (_values!4289 thiss!1504)) e!150085))))

(declare-fun mapIsEmpty!10291 () Bool)

(assert (=> mapIsEmpty!10291 mapRes!10291))

(declare-fun b!231211 () Bool)

(assert (=> b!231211 (= e!150087 tp_is_empty!6081)))

(declare-fun b!231212 () Bool)

(assert (=> b!231212 (= e!150095 tp_is_empty!6081)))

(declare-fun b!231213 () Bool)

(declare-fun res!113653 () Bool)

(assert (=> b!231213 (= res!113653 (= (select (arr!5422 (_keys!6360 thiss!1504)) (index!6009 lt!116554)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!231213 (=> (not res!113653) (not e!150097))))

(declare-fun b!231214 () Bool)

(declare-fun lt!116551 () Unit!7105)

(assert (=> b!231214 (= e!150084 lt!116551)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!314 (array!11406 array!11404 (_ BitVec 32) (_ BitVec 32) V!7755 V!7755 (_ BitVec 64) Int) Unit!7105)

(assert (=> b!231214 (= lt!116551 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!314 (_keys!6360 thiss!1504) (_values!4289 thiss!1504) (mask!10206 thiss!1504) (extraKeys!4043 thiss!1504) (zeroValue!4147 thiss!1504) (minValue!4147 thiss!1504) key!932 (defaultEntry!4306 thiss!1504)))))

(declare-fun c!38393 () Bool)

(assert (=> b!231214 (= c!38393 ((_ is MissingZero!959) lt!116554))))

(assert (=> b!231214 e!150088))

(declare-fun bm!21487 () Bool)

(assert (=> bm!21487 (= call!21489 (inRange!0 (ite c!38393 (index!6006 lt!116554) (index!6009 lt!116554)) (mask!10206 thiss!1504)))))

(declare-fun b!231215 () Bool)

(declare-fun res!113657 () Bool)

(assert (=> b!231215 (=> (not res!113657) (not e!150096))))

(assert (=> b!231215 (= res!113657 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!22164 res!113659) b!231215))

(assert (= (and b!231215 res!113657) b!231200))

(assert (= (and b!231200 res!113658) b!231208))

(assert (= (and b!231208 c!38391) b!231201))

(assert (= (and b!231208 (not c!38391)) b!231214))

(assert (= (and b!231214 c!38393) b!231197))

(assert (= (and b!231214 (not c!38393)) b!231196))

(assert (= (and b!231197 res!113652) b!231207))

(assert (= (and b!231207 res!113656) b!231204))

(assert (= (and b!231196 c!38392) b!231209))

(assert (= (and b!231196 (not c!38392)) b!231205))

(assert (= (and b!231209 res!113654) b!231213))

(assert (= (and b!231213 res!113653) b!231206))

(assert (= (or b!231197 b!231209) bm!21487))

(assert (= (or b!231204 b!231206) bm!21486))

(assert (= (and b!231208 res!113655) b!231203))

(assert (= (and b!231203 c!38390) b!231199))

(assert (= (and b!231203 (not c!38390)) b!231198))

(assert (= (and b!231202 condMapEmpty!10291) mapIsEmpty!10291))

(assert (= (and b!231202 (not condMapEmpty!10291)) mapNonEmpty!10291))

(assert (= (and mapNonEmpty!10291 ((_ is ValueCellFull!2697) mapValue!10291)) b!231211))

(assert (= (and b!231202 ((_ is ValueCellFull!2697) mapDefault!10291)) b!231212))

(assert (= b!231210 b!231202))

(assert (= start!22164 b!231210))

(declare-fun m!252603 () Bool)

(assert (=> b!231201 m!252603))

(declare-fun m!252605 () Bool)

(assert (=> b!231199 m!252605))

(declare-fun m!252607 () Bool)

(assert (=> b!231208 m!252607))

(declare-fun m!252609 () Bool)

(assert (=> b!231208 m!252609))

(declare-fun m!252611 () Bool)

(assert (=> b!231208 m!252611))

(declare-fun m!252613 () Bool)

(assert (=> mapNonEmpty!10291 m!252613))

(declare-fun m!252615 () Bool)

(assert (=> bm!21487 m!252615))

(declare-fun m!252617 () Bool)

(assert (=> bm!21486 m!252617))

(declare-fun m!252619 () Bool)

(assert (=> b!231214 m!252619))

(assert (=> b!231203 m!252617))

(declare-fun m!252621 () Bool)

(assert (=> b!231203 m!252621))

(declare-fun m!252623 () Bool)

(assert (=> b!231203 m!252623))

(declare-fun m!252625 () Bool)

(assert (=> b!231203 m!252625))

(declare-fun m!252627 () Bool)

(assert (=> b!231203 m!252627))

(declare-fun m!252629 () Bool)

(assert (=> b!231203 m!252629))

(declare-fun m!252631 () Bool)

(assert (=> b!231203 m!252631))

(declare-fun m!252633 () Bool)

(assert (=> b!231203 m!252633))

(declare-fun m!252635 () Bool)

(assert (=> b!231203 m!252635))

(declare-fun m!252637 () Bool)

(assert (=> b!231203 m!252637))

(declare-fun m!252639 () Bool)

(assert (=> b!231203 m!252639))

(declare-fun m!252641 () Bool)

(assert (=> b!231203 m!252641))

(declare-fun m!252643 () Bool)

(assert (=> b!231203 m!252643))

(declare-fun m!252645 () Bool)

(assert (=> b!231203 m!252645))

(declare-fun m!252647 () Bool)

(assert (=> b!231203 m!252647))

(declare-fun m!252649 () Bool)

(assert (=> b!231203 m!252649))

(declare-fun m!252651 () Bool)

(assert (=> b!231203 m!252651))

(declare-fun m!252653 () Bool)

(assert (=> b!231213 m!252653))

(declare-fun m!252655 () Bool)

(assert (=> start!22164 m!252655))

(declare-fun m!252657 () Bool)

(assert (=> b!231207 m!252657))

(declare-fun m!252659 () Bool)

(assert (=> b!231200 m!252659))

(declare-fun m!252661 () Bool)

(assert (=> b!231210 m!252661))

(declare-fun m!252663 () Bool)

(assert (=> b!231210 m!252663))

(check-sat b_and!13135 (not b!231208) (not bm!21487) (not b!231210) (not start!22164) (not b!231200) (not b!231201) tp_is_empty!6081 (not mapNonEmpty!10291) (not b_next!6219) (not b!231203) (not bm!21486) (not b!231214) (not b!231199))
(check-sat b_and!13135 (not b_next!6219))
