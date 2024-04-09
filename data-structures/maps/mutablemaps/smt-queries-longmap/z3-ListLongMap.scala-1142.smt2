; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23632 () Bool)

(assert start!23632)

(declare-fun b!248260 () Bool)

(declare-fun b_free!6603 () Bool)

(declare-fun b_next!6603 () Bool)

(assert (=> b!248260 (= b_free!6603 (not b_next!6603))))

(declare-fun tp!23059 () Bool)

(declare-fun b_and!13625 () Bool)

(assert (=> b!248260 (= tp!23059 b_and!13625)))

(declare-fun e!161047 () Bool)

(declare-fun tp_is_empty!6465 () Bool)

(declare-datatypes ((V!8267 0))(
  ( (V!8268 (val!3277 Int)) )
))
(declare-datatypes ((ValueCell!2889 0))(
  ( (ValueCellFull!2889 (v!5332 V!8267)) (EmptyCell!2889) )
))
(declare-datatypes ((array!12238 0))(
  ( (array!12239 (arr!5805 (Array (_ BitVec 32) ValueCell!2889)) (size!6148 (_ BitVec 32))) )
))
(declare-datatypes ((array!12240 0))(
  ( (array!12241 (arr!5806 (Array (_ BitVec 32) (_ BitVec 64))) (size!6149 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3678 0))(
  ( (LongMapFixedSize!3679 (defaultEntry!4592 Int) (mask!10740 (_ BitVec 32)) (extraKeys!4329 (_ BitVec 32)) (zeroValue!4433 V!8267) (minValue!4433 V!8267) (_size!1888 (_ BitVec 32)) (_keys!6716 array!12240) (_values!4575 array!12238) (_vacant!1888 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3678)

(declare-fun e!161046 () Bool)

(declare-fun array_inv!3823 (array!12240) Bool)

(declare-fun array_inv!3824 (array!12238) Bool)

(assert (=> b!248260 (= e!161047 (and tp!23059 tp_is_empty!6465 (array_inv!3823 (_keys!6716 thiss!1504)) (array_inv!3824 (_values!4575 thiss!1504)) e!161046))))

(declare-fun res!121688 () Bool)

(declare-fun e!161055 () Bool)

(assert (=> start!23632 (=> (not res!121688) (not e!161055))))

(declare-fun valid!1431 (LongMapFixedSize!3678) Bool)

(assert (=> start!23632 (= res!121688 (valid!1431 thiss!1504))))

(assert (=> start!23632 e!161055))

(assert (=> start!23632 e!161047))

(assert (=> start!23632 true))

(declare-fun b!248261 () Bool)

(declare-fun e!161045 () Bool)

(declare-fun e!161050 () Bool)

(assert (=> b!248261 (= e!161045 e!161050)))

(declare-fun res!121695 () Bool)

(declare-fun call!23266 () Bool)

(assert (=> b!248261 (= res!121695 call!23266)))

(assert (=> b!248261 (=> (not res!121695) (not e!161050))))

(declare-fun b!248262 () Bool)

(declare-fun e!161042 () Bool)

(declare-fun call!23265 () Bool)

(assert (=> b!248262 (= e!161042 (not call!23265))))

(declare-fun b!248263 () Bool)

(declare-fun e!161056 () Bool)

(assert (=> b!248263 (= e!161055 e!161056)))

(declare-fun res!121693 () Bool)

(assert (=> b!248263 (=> (not res!121693) (not e!161056))))

(declare-datatypes ((SeekEntryResult!1120 0))(
  ( (MissingZero!1120 (index!6650 (_ BitVec 32))) (Found!1120 (index!6651 (_ BitVec 32))) (Intermediate!1120 (undefined!1932 Bool) (index!6652 (_ BitVec 32)) (x!24582 (_ BitVec 32))) (Undefined!1120) (MissingVacant!1120 (index!6653 (_ BitVec 32))) )
))
(declare-fun lt!124359 () SeekEntryResult!1120)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!248263 (= res!121693 (or (= lt!124359 (MissingZero!1120 index!297)) (= lt!124359 (MissingVacant!1120 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12240 (_ BitVec 32)) SeekEntryResult!1120)

(assert (=> b!248263 (= lt!124359 (seekEntryOrOpen!0 key!932 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)))))

(declare-fun b!248264 () Bool)

(declare-fun res!121686 () Bool)

(assert (=> b!248264 (= res!121686 (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6653 lt!124359)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248264 (=> (not res!121686) (not e!161050))))

(declare-fun b!248265 () Bool)

(declare-datatypes ((Unit!7683 0))(
  ( (Unit!7684) )
))
(declare-fun e!161051 () Unit!7683)

(declare-fun Unit!7685 () Unit!7683)

(assert (=> b!248265 (= e!161051 Unit!7685)))

(declare-fun lt!124356 () Unit!7683)

(declare-fun lemmaArrayContainsKeyThenInListMap!192 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 64) (_ BitVec 32) Int) Unit!7683)

(assert (=> b!248265 (= lt!124356 (lemmaArrayContainsKeyThenInListMap!192 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)))))

(assert (=> b!248265 false))

(declare-fun b!248266 () Bool)

(declare-fun e!161044 () Bool)

(declare-fun e!161054 () Bool)

(assert (=> b!248266 (= e!161044 (not e!161054))))

(declare-fun res!121689 () Bool)

(assert (=> b!248266 (=> res!121689 e!161054)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!248266 (= res!121689 (not (validMask!0 (mask!10740 thiss!1504))))))

(declare-fun lt!124357 () array!12240)

(declare-fun arrayCountValidKeys!0 (array!12240 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!248266 (= (arrayCountValidKeys!0 lt!124357 #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6716 thiss!1504) #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504)))))))

(declare-fun lt!124358 () Unit!7683)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12240 (_ BitVec 32) (_ BitVec 64)) Unit!7683)

(assert (=> b!248266 (= lt!124358 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6716 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3723 0))(
  ( (Nil!3720) (Cons!3719 (h!4377 (_ BitVec 64)) (t!8756 List!3723)) )
))
(declare-fun arrayNoDuplicates!0 (array!12240 (_ BitVec 32) List!3723) Bool)

(assert (=> b!248266 (arrayNoDuplicates!0 lt!124357 #b00000000000000000000000000000000 Nil!3720)))

(assert (=> b!248266 (= lt!124357 (array!12241 (store (arr!5806 (_keys!6716 thiss!1504)) index!297 key!932) (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun lt!124355 () Unit!7683)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12240 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3723) Unit!7683)

(assert (=> b!248266 (= lt!124355 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6716 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3720))))

(declare-fun lt!124364 () Unit!7683)

(assert (=> b!248266 (= lt!124364 e!161051)))

(declare-fun c!41574 () Bool)

(declare-fun lt!124361 () Bool)

(assert (=> b!248266 (= c!41574 lt!124361)))

(declare-fun arrayContainsKey!0 (array!12240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!248266 (= lt!124361 (arrayContainsKey!0 (_keys!6716 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!248267 () Bool)

(declare-fun res!121687 () Bool)

(assert (=> b!248267 (=> res!121687 e!161054)))

(assert (=> b!248267 (= res!121687 (or (not (= (size!6149 (_keys!6716 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10740 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6149 (_keys!6716 thiss!1504)))))))

(declare-fun b!248268 () Bool)

(declare-fun res!121690 () Bool)

(assert (=> b!248268 (=> (not res!121690) (not e!161055))))

(assert (=> b!248268 (= res!121690 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!248269 () Bool)

(declare-fun e!161053 () Unit!7683)

(declare-fun lt!124363 () Unit!7683)

(assert (=> b!248269 (= e!161053 lt!124363)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!390 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 64) Int) Unit!7683)

(assert (=> b!248269 (= lt!124363 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!390 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 (defaultEntry!4592 thiss!1504)))))

(declare-fun c!41576 () Bool)

(get-info :version)

(assert (=> b!248269 (= c!41576 ((_ is MissingZero!1120) lt!124359))))

(declare-fun e!161052 () Bool)

(assert (=> b!248269 e!161052))

(declare-fun mapIsEmpty!10976 () Bool)

(declare-fun mapRes!10976 () Bool)

(assert (=> mapIsEmpty!10976 mapRes!10976))

(declare-fun b!248270 () Bool)

(declare-fun Unit!7686 () Unit!7683)

(assert (=> b!248270 (= e!161053 Unit!7686)))

(declare-fun lt!124360 () Unit!7683)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!389 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 64) Int) Unit!7683)

(assert (=> b!248270 (= lt!124360 (lemmaInListMapThenSeekEntryOrOpenFindsIt!389 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 (defaultEntry!4592 thiss!1504)))))

(assert (=> b!248270 false))

(declare-fun b!248271 () Bool)

(declare-fun res!121685 () Bool)

(assert (=> b!248271 (=> res!121685 e!161054)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!248271 (= res!121685 (not (validKeyInArray!0 key!932)))))

(declare-fun b!248272 () Bool)

(declare-fun e!161043 () Bool)

(assert (=> b!248272 (= e!161043 tp_is_empty!6465)))

(declare-fun bm!23262 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23262 (= call!23266 (inRange!0 (ite c!41576 (index!6650 lt!124359) (index!6653 lt!124359)) (mask!10740 thiss!1504)))))

(declare-fun b!248273 () Bool)

(declare-fun res!121691 () Bool)

(assert (=> b!248273 (=> (not res!121691) (not e!161042))))

(assert (=> b!248273 (= res!121691 call!23266)))

(assert (=> b!248273 (= e!161052 e!161042)))

(declare-fun b!248274 () Bool)

(assert (=> b!248274 (= e!161056 e!161044)))

(declare-fun res!121684 () Bool)

(assert (=> b!248274 (=> (not res!121684) (not e!161044))))

(assert (=> b!248274 (= res!121684 (inRange!0 index!297 (mask!10740 thiss!1504)))))

(declare-fun lt!124362 () Unit!7683)

(assert (=> b!248274 (= lt!124362 e!161053)))

(declare-fun c!41577 () Bool)

(declare-datatypes ((tuple2!4818 0))(
  ( (tuple2!4819 (_1!2419 (_ BitVec 64)) (_2!2419 V!8267)) )
))
(declare-datatypes ((List!3724 0))(
  ( (Nil!3721) (Cons!3720 (h!4378 tuple2!4818) (t!8757 List!3724)) )
))
(declare-datatypes ((ListLongMap!3745 0))(
  ( (ListLongMap!3746 (toList!1888 List!3724)) )
))
(declare-fun contains!1797 (ListLongMap!3745 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1411 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 32) Int) ListLongMap!3745)

(assert (=> b!248274 (= c!41577 (contains!1797 (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)) key!932))))

(declare-fun b!248275 () Bool)

(declare-fun res!121696 () Bool)

(assert (=> b!248275 (=> res!121696 e!161054)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12240 (_ BitVec 32)) Bool)

(assert (=> b!248275 (= res!121696 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6716 thiss!1504) (mask!10740 thiss!1504))))))

(declare-fun b!248276 () Bool)

(declare-fun res!121692 () Bool)

(assert (=> b!248276 (=> (not res!121692) (not e!161042))))

(assert (=> b!248276 (= res!121692 (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6650 lt!124359)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!248277 () Bool)

(assert (=> b!248277 (= e!161054 (arrayNoDuplicates!0 (_keys!6716 thiss!1504) #b00000000000000000000000000000000 Nil!3720))))

(declare-fun b!248278 () Bool)

(declare-fun e!161049 () Bool)

(assert (=> b!248278 (= e!161046 (and e!161049 mapRes!10976))))

(declare-fun condMapEmpty!10976 () Bool)

(declare-fun mapDefault!10976 () ValueCell!2889)

(assert (=> b!248278 (= condMapEmpty!10976 (= (arr!5805 (_values!4575 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2889)) mapDefault!10976)))))

(declare-fun b!248279 () Bool)

(assert (=> b!248279 (= e!161050 (not call!23265))))

(declare-fun b!248280 () Bool)

(declare-fun c!41575 () Bool)

(assert (=> b!248280 (= c!41575 ((_ is MissingVacant!1120) lt!124359))))

(assert (=> b!248280 (= e!161052 e!161045)))

(declare-fun b!248281 () Bool)

(assert (=> b!248281 (= e!161045 ((_ is Undefined!1120) lt!124359))))

(declare-fun b!248282 () Bool)

(declare-fun Unit!7687 () Unit!7683)

(assert (=> b!248282 (= e!161051 Unit!7687)))

(declare-fun b!248283 () Bool)

(declare-fun res!121694 () Bool)

(assert (=> b!248283 (=> res!121694 e!161054)))

(assert (=> b!248283 (= res!121694 lt!124361)))

(declare-fun b!248284 () Bool)

(assert (=> b!248284 (= e!161049 tp_is_empty!6465)))

(declare-fun bm!23263 () Bool)

(assert (=> bm!23263 (= call!23265 (arrayContainsKey!0 (_keys!6716 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10976 () Bool)

(declare-fun tp!23060 () Bool)

(assert (=> mapNonEmpty!10976 (= mapRes!10976 (and tp!23060 e!161043))))

(declare-fun mapKey!10976 () (_ BitVec 32))

(declare-fun mapRest!10976 () (Array (_ BitVec 32) ValueCell!2889))

(declare-fun mapValue!10976 () ValueCell!2889)

(assert (=> mapNonEmpty!10976 (= (arr!5805 (_values!4575 thiss!1504)) (store mapRest!10976 mapKey!10976 mapValue!10976))))

(assert (= (and start!23632 res!121688) b!248268))

(assert (= (and b!248268 res!121690) b!248263))

(assert (= (and b!248263 res!121693) b!248274))

(assert (= (and b!248274 c!41577) b!248270))

(assert (= (and b!248274 (not c!41577)) b!248269))

(assert (= (and b!248269 c!41576) b!248273))

(assert (= (and b!248269 (not c!41576)) b!248280))

(assert (= (and b!248273 res!121691) b!248276))

(assert (= (and b!248276 res!121692) b!248262))

(assert (= (and b!248280 c!41575) b!248261))

(assert (= (and b!248280 (not c!41575)) b!248281))

(assert (= (and b!248261 res!121695) b!248264))

(assert (= (and b!248264 res!121686) b!248279))

(assert (= (or b!248273 b!248261) bm!23262))

(assert (= (or b!248262 b!248279) bm!23263))

(assert (= (and b!248274 res!121684) b!248266))

(assert (= (and b!248266 c!41574) b!248265))

(assert (= (and b!248266 (not c!41574)) b!248282))

(assert (= (and b!248266 (not res!121689)) b!248267))

(assert (= (and b!248267 (not res!121687)) b!248271))

(assert (= (and b!248271 (not res!121685)) b!248283))

(assert (= (and b!248283 (not res!121694)) b!248275))

(assert (= (and b!248275 (not res!121696)) b!248277))

(assert (= (and b!248278 condMapEmpty!10976) mapIsEmpty!10976))

(assert (= (and b!248278 (not condMapEmpty!10976)) mapNonEmpty!10976))

(assert (= (and mapNonEmpty!10976 ((_ is ValueCellFull!2889) mapValue!10976)) b!248272))

(assert (= (and b!248278 ((_ is ValueCellFull!2889) mapDefault!10976)) b!248284))

(assert (= b!248260 b!248278))

(assert (= start!23632 b!248260))

(declare-fun m!265065 () Bool)

(assert (=> b!248264 m!265065))

(declare-fun m!265067 () Bool)

(assert (=> b!248277 m!265067))

(declare-fun m!265069 () Bool)

(assert (=> bm!23262 m!265069))

(declare-fun m!265071 () Bool)

(assert (=> b!248263 m!265071))

(declare-fun m!265073 () Bool)

(assert (=> b!248275 m!265073))

(declare-fun m!265075 () Bool)

(assert (=> b!248265 m!265075))

(declare-fun m!265077 () Bool)

(assert (=> b!248266 m!265077))

(declare-fun m!265079 () Bool)

(assert (=> b!248266 m!265079))

(declare-fun m!265081 () Bool)

(assert (=> b!248266 m!265081))

(declare-fun m!265083 () Bool)

(assert (=> b!248266 m!265083))

(declare-fun m!265085 () Bool)

(assert (=> b!248266 m!265085))

(declare-fun m!265087 () Bool)

(assert (=> b!248266 m!265087))

(declare-fun m!265089 () Bool)

(assert (=> b!248266 m!265089))

(declare-fun m!265091 () Bool)

(assert (=> b!248266 m!265091))

(declare-fun m!265093 () Bool)

(assert (=> b!248274 m!265093))

(declare-fun m!265095 () Bool)

(assert (=> b!248274 m!265095))

(assert (=> b!248274 m!265095))

(declare-fun m!265097 () Bool)

(assert (=> b!248274 m!265097))

(declare-fun m!265099 () Bool)

(assert (=> start!23632 m!265099))

(declare-fun m!265101 () Bool)

(assert (=> b!248276 m!265101))

(declare-fun m!265103 () Bool)

(assert (=> b!248269 m!265103))

(declare-fun m!265105 () Bool)

(assert (=> b!248260 m!265105))

(declare-fun m!265107 () Bool)

(assert (=> b!248260 m!265107))

(declare-fun m!265109 () Bool)

(assert (=> mapNonEmpty!10976 m!265109))

(declare-fun m!265111 () Bool)

(assert (=> b!248271 m!265111))

(declare-fun m!265113 () Bool)

(assert (=> b!248270 m!265113))

(assert (=> bm!23263 m!265079))

(check-sat b_and!13625 (not b!248269) (not mapNonEmpty!10976) (not b!248265) (not bm!23263) (not b!248277) (not b!248266) (not bm!23262) tp_is_empty!6465 (not b!248274) (not start!23632) (not b!248275) (not b!248271) (not b!248263) (not b!248270) (not b!248260) (not b_next!6603))
(check-sat b_and!13625 (not b_next!6603))
(get-model)

(declare-fun d!60441 () Bool)

(declare-fun e!161104 () Bool)

(assert (=> d!60441 e!161104))

(declare-fun res!121741 () Bool)

(assert (=> d!60441 (=> (not res!121741) (not e!161104))))

(declare-fun lt!124399 () SeekEntryResult!1120)

(assert (=> d!60441 (= res!121741 ((_ is Found!1120) lt!124399))))

(assert (=> d!60441 (= lt!124399 (seekEntryOrOpen!0 key!932 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)))))

(declare-fun lt!124400 () Unit!7683)

(declare-fun choose!1175 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 64) Int) Unit!7683)

(assert (=> d!60441 (= lt!124400 (choose!1175 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 (defaultEntry!4592 thiss!1504)))))

(assert (=> d!60441 (validMask!0 (mask!10740 thiss!1504))))

(assert (=> d!60441 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!389 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 (defaultEntry!4592 thiss!1504)) lt!124400)))

(declare-fun b!248364 () Bool)

(declare-fun res!121740 () Bool)

(assert (=> b!248364 (=> (not res!121740) (not e!161104))))

(assert (=> b!248364 (= res!121740 (inRange!0 (index!6651 lt!124399) (mask!10740 thiss!1504)))))

(declare-fun b!248365 () Bool)

(assert (=> b!248365 (= e!161104 (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6651 lt!124399)) key!932))))

(assert (=> b!248365 (and (bvsge (index!6651 lt!124399) #b00000000000000000000000000000000) (bvslt (index!6651 lt!124399) (size!6149 (_keys!6716 thiss!1504))))))

(assert (= (and d!60441 res!121741) b!248364))

(assert (= (and b!248364 res!121740) b!248365))

(assert (=> d!60441 m!265071))

(declare-fun m!265165 () Bool)

(assert (=> d!60441 m!265165))

(assert (=> d!60441 m!265077))

(declare-fun m!265167 () Bool)

(assert (=> b!248364 m!265167))

(declare-fun m!265169 () Bool)

(assert (=> b!248365 m!265169))

(assert (=> b!248270 d!60441))

(declare-fun d!60443 () Bool)

(assert (=> d!60443 (= (array_inv!3823 (_keys!6716 thiss!1504)) (bvsge (size!6149 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!248260 d!60443))

(declare-fun d!60445 () Bool)

(assert (=> d!60445 (= (array_inv!3824 (_values!4575 thiss!1504)) (bvsge (size!6148 (_values!4575 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!248260 d!60445))

(declare-fun d!60447 () Bool)

(assert (=> d!60447 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!248271 d!60447))

(declare-fun e!161113 () SeekEntryResult!1120)

(declare-fun lt!124409 () SeekEntryResult!1120)

(declare-fun b!248378 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12240 (_ BitVec 32)) SeekEntryResult!1120)

(assert (=> b!248378 (= e!161113 (seekKeyOrZeroReturnVacant!0 (x!24582 lt!124409) (index!6652 lt!124409) (index!6652 lt!124409) key!932 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)))))

(declare-fun b!248379 () Bool)

(assert (=> b!248379 (= e!161113 (MissingZero!1120 (index!6652 lt!124409)))))

(declare-fun b!248380 () Bool)

(declare-fun c!41597 () Bool)

(declare-fun lt!124407 () (_ BitVec 64))

(assert (=> b!248380 (= c!41597 (= lt!124407 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!161112 () SeekEntryResult!1120)

(assert (=> b!248380 (= e!161112 e!161113)))

(declare-fun d!60449 () Bool)

(declare-fun lt!124408 () SeekEntryResult!1120)

(assert (=> d!60449 (and (or ((_ is Undefined!1120) lt!124408) (not ((_ is Found!1120) lt!124408)) (and (bvsge (index!6651 lt!124408) #b00000000000000000000000000000000) (bvslt (index!6651 lt!124408) (size!6149 (_keys!6716 thiss!1504))))) (or ((_ is Undefined!1120) lt!124408) ((_ is Found!1120) lt!124408) (not ((_ is MissingZero!1120) lt!124408)) (and (bvsge (index!6650 lt!124408) #b00000000000000000000000000000000) (bvslt (index!6650 lt!124408) (size!6149 (_keys!6716 thiss!1504))))) (or ((_ is Undefined!1120) lt!124408) ((_ is Found!1120) lt!124408) ((_ is MissingZero!1120) lt!124408) (not ((_ is MissingVacant!1120) lt!124408)) (and (bvsge (index!6653 lt!124408) #b00000000000000000000000000000000) (bvslt (index!6653 lt!124408) (size!6149 (_keys!6716 thiss!1504))))) (or ((_ is Undefined!1120) lt!124408) (ite ((_ is Found!1120) lt!124408) (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6651 lt!124408)) key!932) (ite ((_ is MissingZero!1120) lt!124408) (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6650 lt!124408)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1120) lt!124408) (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6653 lt!124408)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!161111 () SeekEntryResult!1120)

(assert (=> d!60449 (= lt!124408 e!161111)))

(declare-fun c!41598 () Bool)

(assert (=> d!60449 (= c!41598 (and ((_ is Intermediate!1120) lt!124409) (undefined!1932 lt!124409)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12240 (_ BitVec 32)) SeekEntryResult!1120)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60449 (= lt!124409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10740 thiss!1504)) key!932 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)))))

(assert (=> d!60449 (validMask!0 (mask!10740 thiss!1504))))

(assert (=> d!60449 (= (seekEntryOrOpen!0 key!932 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)) lt!124408)))

(declare-fun b!248381 () Bool)

(assert (=> b!248381 (= e!161112 (Found!1120 (index!6652 lt!124409)))))

(declare-fun b!248382 () Bool)

(assert (=> b!248382 (= e!161111 e!161112)))

(assert (=> b!248382 (= lt!124407 (select (arr!5806 (_keys!6716 thiss!1504)) (index!6652 lt!124409)))))

(declare-fun c!41596 () Bool)

(assert (=> b!248382 (= c!41596 (= lt!124407 key!932))))

(declare-fun b!248383 () Bool)

(assert (=> b!248383 (= e!161111 Undefined!1120)))

(assert (= (and d!60449 c!41598) b!248383))

(assert (= (and d!60449 (not c!41598)) b!248382))

(assert (= (and b!248382 c!41596) b!248381))

(assert (= (and b!248382 (not c!41596)) b!248380))

(assert (= (and b!248380 c!41597) b!248379))

(assert (= (and b!248380 (not c!41597)) b!248378))

(declare-fun m!265171 () Bool)

(assert (=> b!248378 m!265171))

(declare-fun m!265173 () Bool)

(assert (=> d!60449 m!265173))

(declare-fun m!265175 () Bool)

(assert (=> d!60449 m!265175))

(assert (=> d!60449 m!265077))

(declare-fun m!265177 () Bool)

(assert (=> d!60449 m!265177))

(assert (=> d!60449 m!265173))

(declare-fun m!265179 () Bool)

(assert (=> d!60449 m!265179))

(declare-fun m!265181 () Bool)

(assert (=> d!60449 m!265181))

(declare-fun m!265183 () Bool)

(assert (=> b!248382 m!265183))

(assert (=> b!248263 d!60449))

(declare-fun d!60451 () Bool)

(assert (=> d!60451 (= (inRange!0 (ite c!41576 (index!6650 lt!124359) (index!6653 lt!124359)) (mask!10740 thiss!1504)) (and (bvsge (ite c!41576 (index!6650 lt!124359) (index!6653 lt!124359)) #b00000000000000000000000000000000) (bvslt (ite c!41576 (index!6650 lt!124359) (index!6653 lt!124359)) (bvadd (mask!10740 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23262 d!60451))

(declare-fun d!60453 () Bool)

(assert (=> d!60453 (contains!1797 (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)) key!932)))

(declare-fun lt!124412 () Unit!7683)

(declare-fun choose!1176 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 64) (_ BitVec 32) Int) Unit!7683)

(assert (=> d!60453 (= lt!124412 (choose!1176 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)))))

(assert (=> d!60453 (validMask!0 (mask!10740 thiss!1504))))

(assert (=> d!60453 (= (lemmaArrayContainsKeyThenInListMap!192 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)) lt!124412)))

(declare-fun bs!8936 () Bool)

(assert (= bs!8936 d!60453))

(assert (=> bs!8936 m!265095))

(assert (=> bs!8936 m!265095))

(assert (=> bs!8936 m!265097))

(declare-fun m!265185 () Bool)

(assert (=> bs!8936 m!265185))

(assert (=> bs!8936 m!265077))

(assert (=> b!248265 d!60453))

(declare-fun d!60455 () Bool)

(declare-fun res!121746 () Bool)

(declare-fun e!161118 () Bool)

(assert (=> d!60455 (=> res!121746 e!161118)))

(assert (=> d!60455 (= res!121746 (= (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60455 (= (arrayContainsKey!0 (_keys!6716 thiss!1504) key!932 #b00000000000000000000000000000000) e!161118)))

(declare-fun b!248388 () Bool)

(declare-fun e!161119 () Bool)

(assert (=> b!248388 (= e!161118 e!161119)))

(declare-fun res!121747 () Bool)

(assert (=> b!248388 (=> (not res!121747) (not e!161119))))

(assert (=> b!248388 (= res!121747 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun b!248389 () Bool)

(assert (=> b!248389 (= e!161119 (arrayContainsKey!0 (_keys!6716 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60455 (not res!121746)) b!248388))

(assert (= (and b!248388 res!121747) b!248389))

(declare-fun m!265187 () Bool)

(assert (=> d!60455 m!265187))

(declare-fun m!265189 () Bool)

(assert (=> b!248389 m!265189))

(assert (=> bm!23263 d!60455))

(declare-fun d!60457 () Bool)

(assert (=> d!60457 (= (inRange!0 index!297 (mask!10740 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10740 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!248274 d!60457))

(declare-fun d!60459 () Bool)

(declare-fun e!161125 () Bool)

(assert (=> d!60459 e!161125))

(declare-fun res!121750 () Bool)

(assert (=> d!60459 (=> res!121750 e!161125)))

(declare-fun lt!124424 () Bool)

(assert (=> d!60459 (= res!121750 (not lt!124424))))

(declare-fun lt!124422 () Bool)

(assert (=> d!60459 (= lt!124424 lt!124422)))

(declare-fun lt!124423 () Unit!7683)

(declare-fun e!161124 () Unit!7683)

(assert (=> d!60459 (= lt!124423 e!161124)))

(declare-fun c!41601 () Bool)

(assert (=> d!60459 (= c!41601 lt!124422)))

(declare-fun containsKey!285 (List!3724 (_ BitVec 64)) Bool)

(assert (=> d!60459 (= lt!124422 (containsKey!285 (toList!1888 (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504))) key!932))))

(assert (=> d!60459 (= (contains!1797 (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)) key!932) lt!124424)))

(declare-fun b!248396 () Bool)

(declare-fun lt!124421 () Unit!7683)

(assert (=> b!248396 (= e!161124 lt!124421)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!234 (List!3724 (_ BitVec 64)) Unit!7683)

(assert (=> b!248396 (= lt!124421 (lemmaContainsKeyImpliesGetValueByKeyDefined!234 (toList!1888 (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504))) key!932))))

(declare-datatypes ((Option!299 0))(
  ( (Some!298 (v!5334 V!8267)) (None!297) )
))
(declare-fun isDefined!235 (Option!299) Bool)

(declare-fun getValueByKey!293 (List!3724 (_ BitVec 64)) Option!299)

(assert (=> b!248396 (isDefined!235 (getValueByKey!293 (toList!1888 (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504))) key!932))))

(declare-fun b!248397 () Bool)

(declare-fun Unit!7693 () Unit!7683)

(assert (=> b!248397 (= e!161124 Unit!7693)))

(declare-fun b!248398 () Bool)

(assert (=> b!248398 (= e!161125 (isDefined!235 (getValueByKey!293 (toList!1888 (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504))) key!932)))))

(assert (= (and d!60459 c!41601) b!248396))

(assert (= (and d!60459 (not c!41601)) b!248397))

(assert (= (and d!60459 (not res!121750)) b!248398))

(declare-fun m!265191 () Bool)

(assert (=> d!60459 m!265191))

(declare-fun m!265193 () Bool)

(assert (=> b!248396 m!265193))

(declare-fun m!265195 () Bool)

(assert (=> b!248396 m!265195))

(assert (=> b!248396 m!265195))

(declare-fun m!265197 () Bool)

(assert (=> b!248396 m!265197))

(assert (=> b!248398 m!265195))

(assert (=> b!248398 m!265195))

(assert (=> b!248398 m!265197))

(assert (=> b!248274 d!60459))

(declare-fun b!248441 () Bool)

(declare-fun c!41616 () Bool)

(assert (=> b!248441 (= c!41616 (and (not (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!161153 () ListLongMap!3745)

(declare-fun e!161155 () ListLongMap!3745)

(assert (=> b!248441 (= e!161153 e!161155)))

(declare-fun d!60461 () Bool)

(declare-fun e!161163 () Bool)

(assert (=> d!60461 e!161163))

(declare-fun res!121775 () Bool)

(assert (=> d!60461 (=> (not res!121775) (not e!161163))))

(assert (=> d!60461 (= res!121775 (or (bvsge #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))))

(declare-fun lt!124484 () ListLongMap!3745)

(declare-fun lt!124473 () ListLongMap!3745)

(assert (=> d!60461 (= lt!124484 lt!124473)))

(declare-fun lt!124477 () Unit!7683)

(declare-fun e!161152 () Unit!7683)

(assert (=> d!60461 (= lt!124477 e!161152)))

(declare-fun c!41614 () Bool)

(declare-fun e!161164 () Bool)

(assert (=> d!60461 (= c!41614 e!161164)))

(declare-fun res!121773 () Bool)

(assert (=> d!60461 (=> (not res!121773) (not e!161164))))

(assert (=> d!60461 (= res!121773 (bvslt #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun e!161160 () ListLongMap!3745)

(assert (=> d!60461 (= lt!124473 e!161160)))

(declare-fun c!41615 () Bool)

(assert (=> d!60461 (= c!41615 (and (not (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60461 (validMask!0 (mask!10740 thiss!1504))))

(assert (=> d!60461 (= (getCurrentListMap!1411 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)) lt!124484)))

(declare-fun bm!23284 () Bool)

(declare-fun call!23291 () ListLongMap!3745)

(declare-fun getCurrentListMapNoExtraKeys!555 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 32) Int) ListLongMap!3745)

(assert (=> bm!23284 (= call!23291 (getCurrentListMapNoExtraKeys!555 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)))))

(declare-fun bm!23285 () Bool)

(declare-fun call!23288 () Bool)

(assert (=> bm!23285 (= call!23288 (contains!1797 lt!124484 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!248442 () Bool)

(declare-fun lt!124481 () Unit!7683)

(assert (=> b!248442 (= e!161152 lt!124481)))

(declare-fun lt!124490 () ListLongMap!3745)

(assert (=> b!248442 (= lt!124490 (getCurrentListMapNoExtraKeys!555 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)))))

(declare-fun lt!124486 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124486 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124476 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124476 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124474 () Unit!7683)

(declare-fun addStillContains!212 (ListLongMap!3745 (_ BitVec 64) V!8267 (_ BitVec 64)) Unit!7683)

(assert (=> b!248442 (= lt!124474 (addStillContains!212 lt!124490 lt!124486 (zeroValue!4433 thiss!1504) lt!124476))))

(declare-fun +!658 (ListLongMap!3745 tuple2!4818) ListLongMap!3745)

(assert (=> b!248442 (contains!1797 (+!658 lt!124490 (tuple2!4819 lt!124486 (zeroValue!4433 thiss!1504))) lt!124476)))

(declare-fun lt!124489 () Unit!7683)

(assert (=> b!248442 (= lt!124489 lt!124474)))

(declare-fun lt!124471 () ListLongMap!3745)

(assert (=> b!248442 (= lt!124471 (getCurrentListMapNoExtraKeys!555 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)))))

(declare-fun lt!124487 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124487 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124478 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124478 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124470 () Unit!7683)

(declare-fun addApplyDifferent!212 (ListLongMap!3745 (_ BitVec 64) V!8267 (_ BitVec 64)) Unit!7683)

(assert (=> b!248442 (= lt!124470 (addApplyDifferent!212 lt!124471 lt!124487 (minValue!4433 thiss!1504) lt!124478))))

(declare-fun apply!236 (ListLongMap!3745 (_ BitVec 64)) V!8267)

(assert (=> b!248442 (= (apply!236 (+!658 lt!124471 (tuple2!4819 lt!124487 (minValue!4433 thiss!1504))) lt!124478) (apply!236 lt!124471 lt!124478))))

(declare-fun lt!124482 () Unit!7683)

(assert (=> b!248442 (= lt!124482 lt!124470)))

(declare-fun lt!124483 () ListLongMap!3745)

(assert (=> b!248442 (= lt!124483 (getCurrentListMapNoExtraKeys!555 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)))))

(declare-fun lt!124488 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124488 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124485 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124485 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124479 () Unit!7683)

(assert (=> b!248442 (= lt!124479 (addApplyDifferent!212 lt!124483 lt!124488 (zeroValue!4433 thiss!1504) lt!124485))))

(assert (=> b!248442 (= (apply!236 (+!658 lt!124483 (tuple2!4819 lt!124488 (zeroValue!4433 thiss!1504))) lt!124485) (apply!236 lt!124483 lt!124485))))

(declare-fun lt!124480 () Unit!7683)

(assert (=> b!248442 (= lt!124480 lt!124479)))

(declare-fun lt!124469 () ListLongMap!3745)

(assert (=> b!248442 (= lt!124469 (getCurrentListMapNoExtraKeys!555 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4592 thiss!1504)))))

(declare-fun lt!124472 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124472 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124475 () (_ BitVec 64))

(assert (=> b!248442 (= lt!124475 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!248442 (= lt!124481 (addApplyDifferent!212 lt!124469 lt!124472 (minValue!4433 thiss!1504) lt!124475))))

(assert (=> b!248442 (= (apply!236 (+!658 lt!124469 (tuple2!4819 lt!124472 (minValue!4433 thiss!1504))) lt!124475) (apply!236 lt!124469 lt!124475))))

(declare-fun b!248443 () Bool)

(declare-fun e!161159 () Bool)

(assert (=> b!248443 (= e!161163 e!161159)))

(declare-fun c!41619 () Bool)

(assert (=> b!248443 (= c!41619 (not (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!23286 () Bool)

(declare-fun call!23292 () ListLongMap!3745)

(assert (=> bm!23286 (= call!23292 call!23291)))

(declare-fun b!248444 () Bool)

(declare-fun call!23289 () ListLongMap!3745)

(assert (=> b!248444 (= e!161153 call!23289)))

(declare-fun b!248445 () Bool)

(assert (=> b!248445 (= e!161159 (not call!23288))))

(declare-fun call!23290 () ListLongMap!3745)

(declare-fun c!41617 () Bool)

(declare-fun bm!23287 () Bool)

(declare-fun call!23293 () ListLongMap!3745)

(assert (=> bm!23287 (= call!23290 (+!658 (ite c!41615 call!23291 (ite c!41617 call!23292 call!23293)) (ite (or c!41615 c!41617) (tuple2!4819 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4433 thiss!1504)) (tuple2!4819 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4433 thiss!1504)))))))

(declare-fun b!248446 () Bool)

(assert (=> b!248446 (= e!161160 (+!658 call!23290 (tuple2!4819 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4433 thiss!1504))))))

(declare-fun b!248447 () Bool)

(declare-fun e!161156 () Bool)

(assert (=> b!248447 (= e!161156 (= (apply!236 lt!124484 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4433 thiss!1504)))))

(declare-fun b!248448 () Bool)

(declare-fun e!161162 () Bool)

(declare-fun e!161157 () Bool)

(assert (=> b!248448 (= e!161162 e!161157)))

(declare-fun res!121771 () Bool)

(declare-fun call!23287 () Bool)

(assert (=> b!248448 (= res!121771 call!23287)))

(assert (=> b!248448 (=> (not res!121771) (not e!161157))))

(declare-fun b!248449 () Bool)

(declare-fun e!161158 () Bool)

(declare-fun e!161161 () Bool)

(assert (=> b!248449 (= e!161158 e!161161)))

(declare-fun res!121772 () Bool)

(assert (=> b!248449 (=> (not res!121772) (not e!161161))))

(assert (=> b!248449 (= res!121772 (contains!1797 lt!124484 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!248449 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun b!248450 () Bool)

(declare-fun res!121774 () Bool)

(assert (=> b!248450 (=> (not res!121774) (not e!161163))))

(assert (=> b!248450 (= res!121774 e!161162)))

(declare-fun c!41618 () Bool)

(assert (=> b!248450 (= c!41618 (not (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!248451 () Bool)

(assert (=> b!248451 (= e!161164 (validKeyInArray!0 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248452 () Bool)

(declare-fun get!2980 (ValueCell!2889 V!8267) V!8267)

(declare-fun dynLambda!574 (Int (_ BitVec 64)) V!8267)

(assert (=> b!248452 (= e!161161 (= (apply!236 lt!124484 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)) (get!2980 (select (arr!5805 (_values!4575 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!574 (defaultEntry!4592 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!248452 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6148 (_values!4575 thiss!1504))))))

(assert (=> b!248452 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun bm!23288 () Bool)

(assert (=> bm!23288 (= call!23287 (contains!1797 lt!124484 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!248453 () Bool)

(declare-fun e!161154 () Bool)

(assert (=> b!248453 (= e!161154 (validKeyInArray!0 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23289 () Bool)

(assert (=> bm!23289 (= call!23289 call!23290)))

(declare-fun bm!23290 () Bool)

(assert (=> bm!23290 (= call!23293 call!23292)))

(declare-fun b!248454 () Bool)

(assert (=> b!248454 (= e!161157 (= (apply!236 lt!124484 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4433 thiss!1504)))))

(declare-fun b!248455 () Bool)

(assert (=> b!248455 (= e!161159 e!161156)))

(declare-fun res!121776 () Bool)

(assert (=> b!248455 (= res!121776 call!23288)))

(assert (=> b!248455 (=> (not res!121776) (not e!161156))))

(declare-fun b!248456 () Bool)

(declare-fun res!121770 () Bool)

(assert (=> b!248456 (=> (not res!121770) (not e!161163))))

(assert (=> b!248456 (= res!121770 e!161158)))

(declare-fun res!121769 () Bool)

(assert (=> b!248456 (=> res!121769 e!161158)))

(assert (=> b!248456 (= res!121769 (not e!161154))))

(declare-fun res!121777 () Bool)

(assert (=> b!248456 (=> (not res!121777) (not e!161154))))

(assert (=> b!248456 (= res!121777 (bvslt #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun b!248457 () Bool)

(assert (=> b!248457 (= e!161155 call!23289)))

(declare-fun b!248458 () Bool)

(declare-fun Unit!7694 () Unit!7683)

(assert (=> b!248458 (= e!161152 Unit!7694)))

(declare-fun b!248459 () Bool)

(assert (=> b!248459 (= e!161155 call!23293)))

(declare-fun b!248460 () Bool)

(assert (=> b!248460 (= e!161162 (not call!23287))))

(declare-fun b!248461 () Bool)

(assert (=> b!248461 (= e!161160 e!161153)))

(assert (=> b!248461 (= c!41617 (and (not (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4329 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!60461 c!41615) b!248446))

(assert (= (and d!60461 (not c!41615)) b!248461))

(assert (= (and b!248461 c!41617) b!248444))

(assert (= (and b!248461 (not c!41617)) b!248441))

(assert (= (and b!248441 c!41616) b!248457))

(assert (= (and b!248441 (not c!41616)) b!248459))

(assert (= (or b!248457 b!248459) bm!23290))

(assert (= (or b!248444 bm!23290) bm!23286))

(assert (= (or b!248444 b!248457) bm!23289))

(assert (= (or b!248446 bm!23286) bm!23284))

(assert (= (or b!248446 bm!23289) bm!23287))

(assert (= (and d!60461 res!121773) b!248451))

(assert (= (and d!60461 c!41614) b!248442))

(assert (= (and d!60461 (not c!41614)) b!248458))

(assert (= (and d!60461 res!121775) b!248456))

(assert (= (and b!248456 res!121777) b!248453))

(assert (= (and b!248456 (not res!121769)) b!248449))

(assert (= (and b!248449 res!121772) b!248452))

(assert (= (and b!248456 res!121770) b!248450))

(assert (= (and b!248450 c!41618) b!248448))

(assert (= (and b!248450 (not c!41618)) b!248460))

(assert (= (and b!248448 res!121771) b!248454))

(assert (= (or b!248448 b!248460) bm!23288))

(assert (= (and b!248450 res!121774) b!248443))

(assert (= (and b!248443 c!41619) b!248455))

(assert (= (and b!248443 (not c!41619)) b!248445))

(assert (= (and b!248455 res!121776) b!248447))

(assert (= (or b!248455 b!248445) bm!23285))

(declare-fun b_lambda!8085 () Bool)

(assert (=> (not b_lambda!8085) (not b!248452)))

(declare-fun t!8761 () Bool)

(declare-fun tb!2993 () Bool)

(assert (=> (and b!248260 (= (defaultEntry!4592 thiss!1504) (defaultEntry!4592 thiss!1504)) t!8761) tb!2993))

(declare-fun result!5285 () Bool)

(assert (=> tb!2993 (= result!5285 tp_is_empty!6465)))

(assert (=> b!248452 t!8761))

(declare-fun b_and!13629 () Bool)

(assert (= b_and!13625 (and (=> t!8761 result!5285) b_and!13629)))

(declare-fun m!265199 () Bool)

(assert (=> b!248447 m!265199))

(declare-fun m!265201 () Bool)

(assert (=> bm!23288 m!265201))

(assert (=> b!248449 m!265187))

(assert (=> b!248449 m!265187))

(declare-fun m!265203 () Bool)

(assert (=> b!248449 m!265203))

(declare-fun m!265205 () Bool)

(assert (=> bm!23287 m!265205))

(declare-fun m!265207 () Bool)

(assert (=> bm!23284 m!265207))

(declare-fun m!265209 () Bool)

(assert (=> b!248442 m!265209))

(declare-fun m!265211 () Bool)

(assert (=> b!248442 m!265211))

(assert (=> b!248442 m!265209))

(declare-fun m!265213 () Bool)

(assert (=> b!248442 m!265213))

(declare-fun m!265215 () Bool)

(assert (=> b!248442 m!265215))

(declare-fun m!265217 () Bool)

(assert (=> b!248442 m!265217))

(assert (=> b!248442 m!265211))

(declare-fun m!265219 () Bool)

(assert (=> b!248442 m!265219))

(declare-fun m!265221 () Bool)

(assert (=> b!248442 m!265221))

(assert (=> b!248442 m!265217))

(declare-fun m!265223 () Bool)

(assert (=> b!248442 m!265223))

(assert (=> b!248442 m!265207))

(declare-fun m!265225 () Bool)

(assert (=> b!248442 m!265225))

(assert (=> b!248442 m!265215))

(declare-fun m!265227 () Bool)

(assert (=> b!248442 m!265227))

(declare-fun m!265229 () Bool)

(assert (=> b!248442 m!265229))

(declare-fun m!265231 () Bool)

(assert (=> b!248442 m!265231))

(assert (=> b!248442 m!265187))

(declare-fun m!265233 () Bool)

(assert (=> b!248442 m!265233))

(declare-fun m!265235 () Bool)

(assert (=> b!248442 m!265235))

(declare-fun m!265237 () Bool)

(assert (=> b!248442 m!265237))

(declare-fun m!265239 () Bool)

(assert (=> b!248446 m!265239))

(assert (=> b!248453 m!265187))

(assert (=> b!248453 m!265187))

(declare-fun m!265241 () Bool)

(assert (=> b!248453 m!265241))

(declare-fun m!265243 () Bool)

(assert (=> bm!23285 m!265243))

(assert (=> b!248451 m!265187))

(assert (=> b!248451 m!265187))

(assert (=> b!248451 m!265241))

(assert (=> b!248452 m!265187))

(declare-fun m!265245 () Bool)

(assert (=> b!248452 m!265245))

(assert (=> b!248452 m!265187))

(declare-fun m!265247 () Bool)

(assert (=> b!248452 m!265247))

(declare-fun m!265249 () Bool)

(assert (=> b!248452 m!265249))

(assert (=> b!248452 m!265245))

(assert (=> b!248452 m!265249))

(declare-fun m!265251 () Bool)

(assert (=> b!248452 m!265251))

(assert (=> d!60461 m!265077))

(declare-fun m!265253 () Bool)

(assert (=> b!248454 m!265253))

(assert (=> b!248274 d!60461))

(declare-fun b!248472 () Bool)

(declare-fun e!161171 () Bool)

(declare-fun call!23296 () Bool)

(assert (=> b!248472 (= e!161171 call!23296)))

(declare-fun bm!23293 () Bool)

(assert (=> bm!23293 (= call!23296 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6716 thiss!1504) (mask!10740 thiss!1504)))))

(declare-fun b!248473 () Bool)

(declare-fun e!161173 () Bool)

(assert (=> b!248473 (= e!161173 e!161171)))

(declare-fun lt!124498 () (_ BitVec 64))

(assert (=> b!248473 (= lt!124498 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124499 () Unit!7683)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12240 (_ BitVec 64) (_ BitVec 32)) Unit!7683)

(assert (=> b!248473 (= lt!124499 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6716 thiss!1504) lt!124498 #b00000000000000000000000000000000))))

(assert (=> b!248473 (arrayContainsKey!0 (_keys!6716 thiss!1504) lt!124498 #b00000000000000000000000000000000)))

(declare-fun lt!124497 () Unit!7683)

(assert (=> b!248473 (= lt!124497 lt!124499)))

(declare-fun res!121782 () Bool)

(assert (=> b!248473 (= res!121782 (= (seekEntryOrOpen!0 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000) (_keys!6716 thiss!1504) (mask!10740 thiss!1504)) (Found!1120 #b00000000000000000000000000000000)))))

(assert (=> b!248473 (=> (not res!121782) (not e!161171))))

(declare-fun b!248474 () Bool)

(assert (=> b!248474 (= e!161173 call!23296)))

(declare-fun b!248475 () Bool)

(declare-fun e!161172 () Bool)

(assert (=> b!248475 (= e!161172 e!161173)))

(declare-fun c!41622 () Bool)

(assert (=> b!248475 (= c!41622 (validKeyInArray!0 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!60463 () Bool)

(declare-fun res!121783 () Bool)

(assert (=> d!60463 (=> res!121783 e!161172)))

(assert (=> d!60463 (= res!121783 (bvsge #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(assert (=> d!60463 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)) e!161172)))

(assert (= (and d!60463 (not res!121783)) b!248475))

(assert (= (and b!248475 c!41622) b!248473))

(assert (= (and b!248475 (not c!41622)) b!248474))

(assert (= (and b!248473 res!121782) b!248472))

(assert (= (or b!248472 b!248474) bm!23293))

(declare-fun m!265255 () Bool)

(assert (=> bm!23293 m!265255))

(assert (=> b!248473 m!265187))

(declare-fun m!265257 () Bool)

(assert (=> b!248473 m!265257))

(declare-fun m!265259 () Bool)

(assert (=> b!248473 m!265259))

(assert (=> b!248473 m!265187))

(declare-fun m!265261 () Bool)

(assert (=> b!248473 m!265261))

(assert (=> b!248475 m!265187))

(assert (=> b!248475 m!265187))

(assert (=> b!248475 m!265241))

(assert (=> b!248275 d!60463))

(declare-fun bm!23296 () Bool)

(declare-fun call!23299 () (_ BitVec 32))

(assert (=> bm!23296 (= call!23299 (arrayCountValidKeys!0 lt!124357 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun d!60465 () Bool)

(declare-fun lt!124502 () (_ BitVec 32))

(assert (=> d!60465 (and (bvsge lt!124502 #b00000000000000000000000000000000) (bvsle lt!124502 (bvsub (size!6149 lt!124357) #b00000000000000000000000000000000)))))

(declare-fun e!161178 () (_ BitVec 32))

(assert (=> d!60465 (= lt!124502 e!161178)))

(declare-fun c!41628 () Bool)

(assert (=> d!60465 (= c!41628 (bvsge #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(assert (=> d!60465 (and (bvsle #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6149 (_keys!6716 thiss!1504)) (size!6149 lt!124357)))))

(assert (=> d!60465 (= (arrayCountValidKeys!0 lt!124357 #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) lt!124502)))

(declare-fun b!248484 () Bool)

(declare-fun e!161179 () (_ BitVec 32))

(assert (=> b!248484 (= e!161179 call!23299)))

(declare-fun b!248485 () Bool)

(assert (=> b!248485 (= e!161178 #b00000000000000000000000000000000)))

(declare-fun b!248486 () Bool)

(assert (=> b!248486 (= e!161178 e!161179)))

(declare-fun c!41627 () Bool)

(assert (=> b!248486 (= c!41627 (validKeyInArray!0 (select (arr!5806 lt!124357) #b00000000000000000000000000000000)))))

(declare-fun b!248487 () Bool)

(assert (=> b!248487 (= e!161179 (bvadd #b00000000000000000000000000000001 call!23299))))

(assert (= (and d!60465 c!41628) b!248485))

(assert (= (and d!60465 (not c!41628)) b!248486))

(assert (= (and b!248486 c!41627) b!248487))

(assert (= (and b!248486 (not c!41627)) b!248484))

(assert (= (or b!248487 b!248484) bm!23296))

(declare-fun m!265263 () Bool)

(assert (=> bm!23296 m!265263))

(declare-fun m!265265 () Bool)

(assert (=> b!248486 m!265265))

(assert (=> b!248486 m!265265))

(declare-fun m!265267 () Bool)

(assert (=> b!248486 m!265267))

(assert (=> b!248266 d!60465))

(declare-fun b!248496 () Bool)

(declare-fun res!121794 () Bool)

(declare-fun e!161185 () Bool)

(assert (=> b!248496 (=> (not res!121794) (not e!161185))))

(assert (=> b!248496 (= res!121794 (not (validKeyInArray!0 (select (arr!5806 (_keys!6716 thiss!1504)) index!297))))))

(declare-fun b!248498 () Bool)

(assert (=> b!248498 (= e!161185 (bvslt (size!6149 (_keys!6716 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!248499 () Bool)

(declare-fun e!161184 () Bool)

(assert (=> b!248499 (= e!161184 (= (arrayCountValidKeys!0 (array!12241 (store (arr!5806 (_keys!6716 thiss!1504)) index!297 key!932) (size!6149 (_keys!6716 thiss!1504))) #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6716 thiss!1504) #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!248497 () Bool)

(declare-fun res!121792 () Bool)

(assert (=> b!248497 (=> (not res!121792) (not e!161185))))

(assert (=> b!248497 (= res!121792 (validKeyInArray!0 key!932))))

(declare-fun d!60467 () Bool)

(assert (=> d!60467 e!161184))

(declare-fun res!121793 () Bool)

(assert (=> d!60467 (=> (not res!121793) (not e!161184))))

(assert (=> d!60467 (= res!121793 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6149 (_keys!6716 thiss!1504)))))))

(declare-fun lt!124505 () Unit!7683)

(declare-fun choose!1 (array!12240 (_ BitVec 32) (_ BitVec 64)) Unit!7683)

(assert (=> d!60467 (= lt!124505 (choose!1 (_keys!6716 thiss!1504) index!297 key!932))))

(assert (=> d!60467 e!161185))

(declare-fun res!121795 () Bool)

(assert (=> d!60467 (=> (not res!121795) (not e!161185))))

(assert (=> d!60467 (= res!121795 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6149 (_keys!6716 thiss!1504)))))))

(assert (=> d!60467 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6716 thiss!1504) index!297 key!932) lt!124505)))

(assert (= (and d!60467 res!121795) b!248496))

(assert (= (and b!248496 res!121794) b!248497))

(assert (= (and b!248497 res!121792) b!248498))

(assert (= (and d!60467 res!121793) b!248499))

(declare-fun m!265269 () Bool)

(assert (=> b!248496 m!265269))

(assert (=> b!248496 m!265269))

(declare-fun m!265271 () Bool)

(assert (=> b!248496 m!265271))

(assert (=> b!248499 m!265087))

(declare-fun m!265273 () Bool)

(assert (=> b!248499 m!265273))

(assert (=> b!248499 m!265089))

(assert (=> b!248497 m!265111))

(declare-fun m!265275 () Bool)

(assert (=> d!60467 m!265275))

(assert (=> b!248266 d!60467))

(assert (=> b!248266 d!60455))

(declare-fun b!248510 () Bool)

(declare-fun e!161194 () Bool)

(declare-fun e!161196 () Bool)

(assert (=> b!248510 (= e!161194 e!161196)))

(declare-fun res!121802 () Bool)

(assert (=> b!248510 (=> (not res!121802) (not e!161196))))

(declare-fun e!161197 () Bool)

(assert (=> b!248510 (= res!121802 (not e!161197))))

(declare-fun res!121803 () Bool)

(assert (=> b!248510 (=> (not res!121803) (not e!161197))))

(assert (=> b!248510 (= res!121803 (validKeyInArray!0 (select (arr!5806 lt!124357) #b00000000000000000000000000000000)))))

(declare-fun b!248511 () Bool)

(declare-fun e!161195 () Bool)

(declare-fun call!23302 () Bool)

(assert (=> b!248511 (= e!161195 call!23302)))

(declare-fun d!60469 () Bool)

(declare-fun res!121804 () Bool)

(assert (=> d!60469 (=> res!121804 e!161194)))

(assert (=> d!60469 (= res!121804 (bvsge #b00000000000000000000000000000000 (size!6149 lt!124357)))))

(assert (=> d!60469 (= (arrayNoDuplicates!0 lt!124357 #b00000000000000000000000000000000 Nil!3720) e!161194)))

(declare-fun b!248512 () Bool)

(assert (=> b!248512 (= e!161195 call!23302)))

(declare-fun b!248513 () Bool)

(declare-fun contains!1799 (List!3723 (_ BitVec 64)) Bool)

(assert (=> b!248513 (= e!161197 (contains!1799 Nil!3720 (select (arr!5806 lt!124357) #b00000000000000000000000000000000)))))

(declare-fun b!248514 () Bool)

(assert (=> b!248514 (= e!161196 e!161195)))

(declare-fun c!41631 () Bool)

(assert (=> b!248514 (= c!41631 (validKeyInArray!0 (select (arr!5806 lt!124357) #b00000000000000000000000000000000)))))

(declare-fun bm!23299 () Bool)

(assert (=> bm!23299 (= call!23302 (arrayNoDuplicates!0 lt!124357 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41631 (Cons!3719 (select (arr!5806 lt!124357) #b00000000000000000000000000000000) Nil!3720) Nil!3720)))))

(assert (= (and d!60469 (not res!121804)) b!248510))

(assert (= (and b!248510 res!121803) b!248513))

(assert (= (and b!248510 res!121802) b!248514))

(assert (= (and b!248514 c!41631) b!248511))

(assert (= (and b!248514 (not c!41631)) b!248512))

(assert (= (or b!248511 b!248512) bm!23299))

(assert (=> b!248510 m!265265))

(assert (=> b!248510 m!265265))

(assert (=> b!248510 m!265267))

(assert (=> b!248513 m!265265))

(assert (=> b!248513 m!265265))

(declare-fun m!265277 () Bool)

(assert (=> b!248513 m!265277))

(assert (=> b!248514 m!265265))

(assert (=> b!248514 m!265265))

(assert (=> b!248514 m!265267))

(assert (=> bm!23299 m!265265))

(declare-fun m!265279 () Bool)

(assert (=> bm!23299 m!265279))

(assert (=> b!248266 d!60469))

(declare-fun bm!23300 () Bool)

(declare-fun call!23303 () (_ BitVec 32))

(assert (=> bm!23300 (= call!23303 (arrayCountValidKeys!0 (_keys!6716 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun d!60471 () Bool)

(declare-fun lt!124506 () (_ BitVec 32))

(assert (=> d!60471 (and (bvsge lt!124506 #b00000000000000000000000000000000) (bvsle lt!124506 (bvsub (size!6149 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!161198 () (_ BitVec 32))

(assert (=> d!60471 (= lt!124506 e!161198)))

(declare-fun c!41633 () Bool)

(assert (=> d!60471 (= c!41633 (bvsge #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(assert (=> d!60471 (and (bvsle #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6149 (_keys!6716 thiss!1504)) (size!6149 (_keys!6716 thiss!1504))))))

(assert (=> d!60471 (= (arrayCountValidKeys!0 (_keys!6716 thiss!1504) #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) lt!124506)))

(declare-fun b!248515 () Bool)

(declare-fun e!161199 () (_ BitVec 32))

(assert (=> b!248515 (= e!161199 call!23303)))

(declare-fun b!248516 () Bool)

(assert (=> b!248516 (= e!161198 #b00000000000000000000000000000000)))

(declare-fun b!248517 () Bool)

(assert (=> b!248517 (= e!161198 e!161199)))

(declare-fun c!41632 () Bool)

(assert (=> b!248517 (= c!41632 (validKeyInArray!0 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248518 () Bool)

(assert (=> b!248518 (= e!161199 (bvadd #b00000000000000000000000000000001 call!23303))))

(assert (= (and d!60471 c!41633) b!248516))

(assert (= (and d!60471 (not c!41633)) b!248517))

(assert (= (and b!248517 c!41632) b!248518))

(assert (= (and b!248517 (not c!41632)) b!248515))

(assert (= (or b!248518 b!248515) bm!23300))

(declare-fun m!265281 () Bool)

(assert (=> bm!23300 m!265281))

(assert (=> b!248517 m!265187))

(assert (=> b!248517 m!265187))

(assert (=> b!248517 m!265241))

(assert (=> b!248266 d!60471))

(declare-fun d!60473 () Bool)

(assert (=> d!60473 (= (validMask!0 (mask!10740 thiss!1504)) (and (or (= (mask!10740 thiss!1504) #b00000000000000000000000000000111) (= (mask!10740 thiss!1504) #b00000000000000000000000000001111) (= (mask!10740 thiss!1504) #b00000000000000000000000000011111) (= (mask!10740 thiss!1504) #b00000000000000000000000000111111) (= (mask!10740 thiss!1504) #b00000000000000000000000001111111) (= (mask!10740 thiss!1504) #b00000000000000000000000011111111) (= (mask!10740 thiss!1504) #b00000000000000000000000111111111) (= (mask!10740 thiss!1504) #b00000000000000000000001111111111) (= (mask!10740 thiss!1504) #b00000000000000000000011111111111) (= (mask!10740 thiss!1504) #b00000000000000000000111111111111) (= (mask!10740 thiss!1504) #b00000000000000000001111111111111) (= (mask!10740 thiss!1504) #b00000000000000000011111111111111) (= (mask!10740 thiss!1504) #b00000000000000000111111111111111) (= (mask!10740 thiss!1504) #b00000000000000001111111111111111) (= (mask!10740 thiss!1504) #b00000000000000011111111111111111) (= (mask!10740 thiss!1504) #b00000000000000111111111111111111) (= (mask!10740 thiss!1504) #b00000000000001111111111111111111) (= (mask!10740 thiss!1504) #b00000000000011111111111111111111) (= (mask!10740 thiss!1504) #b00000000000111111111111111111111) (= (mask!10740 thiss!1504) #b00000000001111111111111111111111) (= (mask!10740 thiss!1504) #b00000000011111111111111111111111) (= (mask!10740 thiss!1504) #b00000000111111111111111111111111) (= (mask!10740 thiss!1504) #b00000001111111111111111111111111) (= (mask!10740 thiss!1504) #b00000011111111111111111111111111) (= (mask!10740 thiss!1504) #b00000111111111111111111111111111) (= (mask!10740 thiss!1504) #b00001111111111111111111111111111) (= (mask!10740 thiss!1504) #b00011111111111111111111111111111) (= (mask!10740 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10740 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!248266 d!60473))

(declare-fun d!60475 () Bool)

(declare-fun e!161202 () Bool)

(assert (=> d!60475 e!161202))

(declare-fun res!121807 () Bool)

(assert (=> d!60475 (=> (not res!121807) (not e!161202))))

(assert (=> d!60475 (= res!121807 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6149 (_keys!6716 thiss!1504)))))))

(declare-fun lt!124509 () Unit!7683)

(declare-fun choose!41 (array!12240 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3723) Unit!7683)

(assert (=> d!60475 (= lt!124509 (choose!41 (_keys!6716 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3720))))

(assert (=> d!60475 (bvslt (size!6149 (_keys!6716 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60475 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6716 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3720) lt!124509)))

(declare-fun b!248521 () Bool)

(assert (=> b!248521 (= e!161202 (arrayNoDuplicates!0 (array!12241 (store (arr!5806 (_keys!6716 thiss!1504)) index!297 key!932) (size!6149 (_keys!6716 thiss!1504))) #b00000000000000000000000000000000 Nil!3720))))

(assert (= (and d!60475 res!121807) b!248521))

(declare-fun m!265283 () Bool)

(assert (=> d!60475 m!265283))

(assert (=> b!248521 m!265087))

(declare-fun m!265285 () Bool)

(assert (=> b!248521 m!265285))

(assert (=> b!248266 d!60475))

(declare-fun d!60477 () Bool)

(declare-fun res!121814 () Bool)

(declare-fun e!161205 () Bool)

(assert (=> d!60477 (=> (not res!121814) (not e!161205))))

(declare-fun simpleValid!258 (LongMapFixedSize!3678) Bool)

(assert (=> d!60477 (= res!121814 (simpleValid!258 thiss!1504))))

(assert (=> d!60477 (= (valid!1431 thiss!1504) e!161205)))

(declare-fun b!248528 () Bool)

(declare-fun res!121815 () Bool)

(assert (=> b!248528 (=> (not res!121815) (not e!161205))))

(assert (=> b!248528 (= res!121815 (= (arrayCountValidKeys!0 (_keys!6716 thiss!1504) #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))) (_size!1888 thiss!1504)))))

(declare-fun b!248529 () Bool)

(declare-fun res!121816 () Bool)

(assert (=> b!248529 (=> (not res!121816) (not e!161205))))

(assert (=> b!248529 (= res!121816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)))))

(declare-fun b!248530 () Bool)

(assert (=> b!248530 (= e!161205 (arrayNoDuplicates!0 (_keys!6716 thiss!1504) #b00000000000000000000000000000000 Nil!3720))))

(assert (= (and d!60477 res!121814) b!248528))

(assert (= (and b!248528 res!121815) b!248529))

(assert (= (and b!248529 res!121816) b!248530))

(declare-fun m!265287 () Bool)

(assert (=> d!60477 m!265287))

(assert (=> b!248528 m!265089))

(assert (=> b!248529 m!265073))

(assert (=> b!248530 m!265067))

(assert (=> start!23632 d!60477))

(declare-fun b!248531 () Bool)

(declare-fun e!161206 () Bool)

(declare-fun e!161208 () Bool)

(assert (=> b!248531 (= e!161206 e!161208)))

(declare-fun res!121817 () Bool)

(assert (=> b!248531 (=> (not res!121817) (not e!161208))))

(declare-fun e!161209 () Bool)

(assert (=> b!248531 (= res!121817 (not e!161209))))

(declare-fun res!121818 () Bool)

(assert (=> b!248531 (=> (not res!121818) (not e!161209))))

(assert (=> b!248531 (= res!121818 (validKeyInArray!0 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248532 () Bool)

(declare-fun e!161207 () Bool)

(declare-fun call!23304 () Bool)

(assert (=> b!248532 (= e!161207 call!23304)))

(declare-fun d!60479 () Bool)

(declare-fun res!121819 () Bool)

(assert (=> d!60479 (=> res!121819 e!161206)))

(assert (=> d!60479 (= res!121819 (bvsge #b00000000000000000000000000000000 (size!6149 (_keys!6716 thiss!1504))))))

(assert (=> d!60479 (= (arrayNoDuplicates!0 (_keys!6716 thiss!1504) #b00000000000000000000000000000000 Nil!3720) e!161206)))

(declare-fun b!248533 () Bool)

(assert (=> b!248533 (= e!161207 call!23304)))

(declare-fun b!248534 () Bool)

(assert (=> b!248534 (= e!161209 (contains!1799 Nil!3720 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248535 () Bool)

(assert (=> b!248535 (= e!161208 e!161207)))

(declare-fun c!41634 () Bool)

(assert (=> b!248535 (= c!41634 (validKeyInArray!0 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!23301 () Bool)

(assert (=> bm!23301 (= call!23304 (arrayNoDuplicates!0 (_keys!6716 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41634 (Cons!3719 (select (arr!5806 (_keys!6716 thiss!1504)) #b00000000000000000000000000000000) Nil!3720) Nil!3720)))))

(assert (= (and d!60479 (not res!121819)) b!248531))

(assert (= (and b!248531 res!121818) b!248534))

(assert (= (and b!248531 res!121817) b!248535))

(assert (= (and b!248535 c!41634) b!248532))

(assert (= (and b!248535 (not c!41634)) b!248533))

(assert (= (or b!248532 b!248533) bm!23301))

(assert (=> b!248531 m!265187))

(assert (=> b!248531 m!265187))

(assert (=> b!248531 m!265241))

(assert (=> b!248534 m!265187))

(assert (=> b!248534 m!265187))

(declare-fun m!265289 () Bool)

(assert (=> b!248534 m!265289))

(assert (=> b!248535 m!265187))

(assert (=> b!248535 m!265187))

(assert (=> b!248535 m!265241))

(assert (=> bm!23301 m!265187))

(declare-fun m!265291 () Bool)

(assert (=> bm!23301 m!265291))

(assert (=> b!248277 d!60479))

(declare-fun b!248553 () Bool)

(declare-fun e!161220 () Bool)

(declare-fun call!23310 () Bool)

(assert (=> b!248553 (= e!161220 (not call!23310))))

(declare-fun b!248554 () Bool)

(declare-fun res!121831 () Bool)

(declare-fun e!161219 () Bool)

(assert (=> b!248554 (=> (not res!121831) (not e!161219))))

(declare-fun lt!124515 () SeekEntryResult!1120)

(assert (=> b!248554 (= res!121831 (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6653 lt!124515)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248554 (and (bvsge (index!6653 lt!124515) #b00000000000000000000000000000000) (bvslt (index!6653 lt!124515) (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun b!248555 () Bool)

(declare-fun e!161218 () Bool)

(assert (=> b!248555 (= e!161218 e!161220)))

(declare-fun res!121830 () Bool)

(declare-fun call!23309 () Bool)

(assert (=> b!248555 (= res!121830 call!23309)))

(assert (=> b!248555 (=> (not res!121830) (not e!161220))))

(declare-fun bm!23306 () Bool)

(declare-fun c!41640 () Bool)

(assert (=> bm!23306 (= call!23309 (inRange!0 (ite c!41640 (index!6650 lt!124515) (index!6653 lt!124515)) (mask!10740 thiss!1504)))))

(declare-fun b!248556 () Bool)

(declare-fun e!161221 () Bool)

(assert (=> b!248556 (= e!161218 e!161221)))

(declare-fun c!41639 () Bool)

(assert (=> b!248556 (= c!41639 ((_ is MissingVacant!1120) lt!124515))))

(declare-fun d!60481 () Bool)

(assert (=> d!60481 e!161218))

(assert (=> d!60481 (= c!41640 ((_ is MissingZero!1120) lt!124515))))

(assert (=> d!60481 (= lt!124515 (seekEntryOrOpen!0 key!932 (_keys!6716 thiss!1504) (mask!10740 thiss!1504)))))

(declare-fun lt!124514 () Unit!7683)

(declare-fun choose!1177 (array!12240 array!12238 (_ BitVec 32) (_ BitVec 32) V!8267 V!8267 (_ BitVec 64) Int) Unit!7683)

(assert (=> d!60481 (= lt!124514 (choose!1177 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 (defaultEntry!4592 thiss!1504)))))

(assert (=> d!60481 (validMask!0 (mask!10740 thiss!1504))))

(assert (=> d!60481 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!390 (_keys!6716 thiss!1504) (_values!4575 thiss!1504) (mask!10740 thiss!1504) (extraKeys!4329 thiss!1504) (zeroValue!4433 thiss!1504) (minValue!4433 thiss!1504) key!932 (defaultEntry!4592 thiss!1504)) lt!124514)))

(declare-fun b!248552 () Bool)

(assert (=> b!248552 (= e!161219 (not call!23310))))

(declare-fun bm!23307 () Bool)

(assert (=> bm!23307 (= call!23310 (arrayContainsKey!0 (_keys!6716 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!248557 () Bool)

(assert (=> b!248557 (and (bvsge (index!6650 lt!124515) #b00000000000000000000000000000000) (bvslt (index!6650 lt!124515) (size!6149 (_keys!6716 thiss!1504))))))

(declare-fun res!121829 () Bool)

(assert (=> b!248557 (= res!121829 (= (select (arr!5806 (_keys!6716 thiss!1504)) (index!6650 lt!124515)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248557 (=> (not res!121829) (not e!161220))))

(declare-fun b!248558 () Bool)

(declare-fun res!121828 () Bool)

(assert (=> b!248558 (=> (not res!121828) (not e!161219))))

(assert (=> b!248558 (= res!121828 call!23309)))

(assert (=> b!248558 (= e!161221 e!161219)))

(declare-fun b!248559 () Bool)

(assert (=> b!248559 (= e!161221 ((_ is Undefined!1120) lt!124515))))

(assert (= (and d!60481 c!41640) b!248555))

(assert (= (and d!60481 (not c!41640)) b!248556))

(assert (= (and b!248555 res!121830) b!248557))

(assert (= (and b!248557 res!121829) b!248553))

(assert (= (and b!248556 c!41639) b!248558))

(assert (= (and b!248556 (not c!41639)) b!248559))

(assert (= (and b!248558 res!121828) b!248554))

(assert (= (and b!248554 res!121831) b!248552))

(assert (= (or b!248555 b!248558) bm!23306))

(assert (= (or b!248553 b!248552) bm!23307))

(declare-fun m!265293 () Bool)

(assert (=> bm!23306 m!265293))

(declare-fun m!265295 () Bool)

(assert (=> b!248554 m!265295))

(assert (=> bm!23307 m!265079))

(assert (=> d!60481 m!265071))

(declare-fun m!265297 () Bool)

(assert (=> d!60481 m!265297))

(assert (=> d!60481 m!265077))

(declare-fun m!265299 () Bool)

(assert (=> b!248557 m!265299))

(assert (=> b!248269 d!60481))

(declare-fun mapIsEmpty!10982 () Bool)

(declare-fun mapRes!10982 () Bool)

(assert (=> mapIsEmpty!10982 mapRes!10982))

(declare-fun b!248566 () Bool)

(declare-fun e!161227 () Bool)

(assert (=> b!248566 (= e!161227 tp_is_empty!6465)))

(declare-fun mapNonEmpty!10982 () Bool)

(declare-fun tp!23069 () Bool)

(assert (=> mapNonEmpty!10982 (= mapRes!10982 (and tp!23069 e!161227))))

(declare-fun mapRest!10982 () (Array (_ BitVec 32) ValueCell!2889))

(declare-fun mapValue!10982 () ValueCell!2889)

(declare-fun mapKey!10982 () (_ BitVec 32))

(assert (=> mapNonEmpty!10982 (= mapRest!10976 (store mapRest!10982 mapKey!10982 mapValue!10982))))

(declare-fun b!248567 () Bool)

(declare-fun e!161226 () Bool)

(assert (=> b!248567 (= e!161226 tp_is_empty!6465)))

(declare-fun condMapEmpty!10982 () Bool)

(declare-fun mapDefault!10982 () ValueCell!2889)

(assert (=> mapNonEmpty!10976 (= condMapEmpty!10982 (= mapRest!10976 ((as const (Array (_ BitVec 32) ValueCell!2889)) mapDefault!10982)))))

(assert (=> mapNonEmpty!10976 (= tp!23060 (and e!161226 mapRes!10982))))

(assert (= (and mapNonEmpty!10976 condMapEmpty!10982) mapIsEmpty!10982))

(assert (= (and mapNonEmpty!10976 (not condMapEmpty!10982)) mapNonEmpty!10982))

(assert (= (and mapNonEmpty!10982 ((_ is ValueCellFull!2889) mapValue!10982)) b!248566))

(assert (= (and mapNonEmpty!10976 ((_ is ValueCellFull!2889) mapDefault!10982)) b!248567))

(declare-fun m!265301 () Bool)

(assert (=> mapNonEmpty!10982 m!265301))

(declare-fun b_lambda!8087 () Bool)

(assert (= b_lambda!8085 (or (and b!248260 b_free!6603) b_lambda!8087)))

(check-sat (not b!248514) (not b!248449) (not d!60459) (not b!248475) (not b!248454) (not b!248473) (not bm!23287) (not b!248442) (not bm!23296) (not b!248531) (not b!248530) (not b!248521) (not bm!23307) (not bm!23301) (not b!248396) (not d!60449) (not d!60477) (not b!248510) (not b!248378) (not d!60481) (not d!60441) (not b!248528) (not d!60467) (not b_lambda!8087) (not b!248517) (not b!248364) (not bm!23306) (not b!248499) (not bm!23299) (not bm!23288) (not b!248398) (not mapNonEmpty!10982) (not b!248452) (not bm!23293) (not b!248513) (not b!248447) (not b!248529) (not d!60453) (not b_next!6603) (not b!248453) (not d!60475) (not b!248534) (not b!248497) tp_is_empty!6465 (not bm!23285) (not b!248389) (not bm!23284) (not b!248535) b_and!13629 (not b!248451) (not bm!23300) (not b!248446) (not d!60461) (not b!248486) (not b!248496))
(check-sat b_and!13629 (not b_next!6603))
