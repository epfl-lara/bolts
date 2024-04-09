; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22152 () Bool)

(assert start!22152)

(declare-fun b!230849 () Bool)

(declare-fun b_free!6207 () Bool)

(declare-fun b_next!6207 () Bool)

(assert (=> b!230849 (= b_free!6207 (not b_next!6207))))

(declare-fun tp!21762 () Bool)

(declare-fun b_and!13123 () Bool)

(assert (=> b!230849 (= tp!21762 b_and!13123)))

(declare-fun b!230836 () Bool)

(declare-datatypes ((Unit!7078 0))(
  ( (Unit!7079) )
))
(declare-fun e!149837 () Unit!7078)

(declare-fun lt!116302 () Unit!7078)

(assert (=> b!230836 (= e!149837 lt!116302)))

(declare-datatypes ((V!7739 0))(
  ( (V!7740 (val!3079 Int)) )
))
(declare-datatypes ((ValueCell!2691 0))(
  ( (ValueCellFull!2691 (v!5095 V!7739)) (EmptyCell!2691) )
))
(declare-datatypes ((array!11380 0))(
  ( (array!11381 (arr!5409 (Array (_ BitVec 32) ValueCell!2691)) (size!5742 (_ BitVec 32))) )
))
(declare-datatypes ((array!11382 0))(
  ( (array!11383 (arr!5410 (Array (_ BitVec 32) (_ BitVec 64))) (size!5743 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3282 0))(
  ( (LongMapFixedSize!3283 (defaultEntry!4300 Int) (mask!10196 (_ BitVec 32)) (extraKeys!4037 (_ BitVec 32)) (zeroValue!4141 V!7739) (minValue!4141 V!7739) (_size!1690 (_ BitVec 32)) (_keys!6354 array!11382) (_values!4283 array!11380) (_vacant!1690 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3282)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!310 (array!11382 array!11380 (_ BitVec 32) (_ BitVec 32) V!7739 V!7739 (_ BitVec 64) Int) Unit!7078)

(assert (=> b!230836 (= lt!116302 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!310 (_keys!6354 thiss!1504) (_values!4283 thiss!1504) (mask!10196 thiss!1504) (extraKeys!4037 thiss!1504) (zeroValue!4141 thiss!1504) (minValue!4141 thiss!1504) key!932 (defaultEntry!4300 thiss!1504)))))

(declare-fun c!38321 () Bool)

(declare-datatypes ((SeekEntryResult!953 0))(
  ( (MissingZero!953 (index!5982 (_ BitVec 32))) (Found!953 (index!5983 (_ BitVec 32))) (Intermediate!953 (undefined!1765 Bool) (index!5984 (_ BitVec 32)) (x!23477 (_ BitVec 32))) (Undefined!953) (MissingVacant!953 (index!5985 (_ BitVec 32))) )
))
(declare-fun lt!116306 () SeekEntryResult!953)

(get-info :version)

(assert (=> b!230836 (= c!38321 ((_ is MissingZero!953) lt!116306))))

(declare-fun e!149840 () Bool)

(assert (=> b!230836 e!149840))

(declare-fun b!230837 () Bool)

(declare-fun e!149834 () Bool)

(declare-fun tp_is_empty!6069 () Bool)

(assert (=> b!230837 (= e!149834 tp_is_empty!6069)))

(declare-fun b!230838 () Bool)

(declare-fun res!113512 () Bool)

(assert (=> b!230838 (= res!113512 (= (select (arr!5410 (_keys!6354 thiss!1504)) (index!5985 lt!116306)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!149844 () Bool)

(assert (=> b!230838 (=> (not res!113512) (not e!149844))))

(declare-fun mapIsEmpty!10273 () Bool)

(declare-fun mapRes!10273 () Bool)

(assert (=> mapIsEmpty!10273 mapRes!10273))

(declare-fun call!21454 () Bool)

(declare-fun bm!21450 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21450 (= call!21454 (inRange!0 (ite c!38321 (index!5982 lt!116306) (index!5985 lt!116306)) (mask!10196 thiss!1504)))))

(declare-fun b!230839 () Bool)

(declare-fun e!149839 () Bool)

(assert (=> b!230839 (= e!149839 e!149844)))

(declare-fun res!113510 () Bool)

(assert (=> b!230839 (= res!113510 call!21454)))

(assert (=> b!230839 (=> (not res!113510) (not e!149844))))

(declare-fun b!230840 () Bool)

(declare-fun res!113513 () Bool)

(declare-fun e!149841 () Bool)

(assert (=> b!230840 (=> (not res!113513) (not e!149841))))

(assert (=> b!230840 (= res!113513 call!21454)))

(assert (=> b!230840 (= e!149840 e!149841)))

(declare-fun b!230841 () Bool)

(assert (=> b!230841 (= e!149839 ((_ is Undefined!953) lt!116306))))

(declare-fun bm!21451 () Bool)

(declare-fun call!21453 () Bool)

(declare-fun arrayContainsKey!0 (array!11382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21451 (= call!21453 (arrayContainsKey!0 (_keys!6354 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230842 () Bool)

(declare-fun e!149838 () Unit!7078)

(declare-fun Unit!7080 () Unit!7078)

(assert (=> b!230842 (= e!149838 Unit!7080)))

(declare-fun b!230843 () Bool)

(declare-fun e!149835 () Bool)

(assert (=> b!230843 (= e!149835 (not true))))

(declare-fun lt!116301 () array!11382)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11382 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230843 (= (arrayCountValidKeys!0 lt!116301 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116310 () Unit!7078)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11382 (_ BitVec 32)) Unit!7078)

(assert (=> b!230843 (= lt!116310 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116301 index!297))))

(assert (=> b!230843 (arrayContainsKey!0 lt!116301 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116300 () Unit!7078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11382 (_ BitVec 64) (_ BitVec 32)) Unit!7078)

(assert (=> b!230843 (= lt!116300 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116301 key!932 index!297))))

(declare-fun v!346 () V!7739)

(declare-datatypes ((tuple2!4538 0))(
  ( (tuple2!4539 (_1!2279 (_ BitVec 64)) (_2!2279 V!7739)) )
))
(declare-datatypes ((List!3483 0))(
  ( (Nil!3480) (Cons!3479 (h!4127 tuple2!4538) (t!8450 List!3483)) )
))
(declare-datatypes ((ListLongMap!3465 0))(
  ( (ListLongMap!3466 (toList!1748 List!3483)) )
))
(declare-fun lt!116297 () ListLongMap!3465)

(declare-fun +!604 (ListLongMap!3465 tuple2!4538) ListLongMap!3465)

(declare-fun getCurrentListMap!1271 (array!11382 array!11380 (_ BitVec 32) (_ BitVec 32) V!7739 V!7739 (_ BitVec 32) Int) ListLongMap!3465)

(assert (=> b!230843 (= (+!604 lt!116297 (tuple2!4539 key!932 v!346)) (getCurrentListMap!1271 lt!116301 (array!11381 (store (arr!5409 (_values!4283 thiss!1504)) index!297 (ValueCellFull!2691 v!346)) (size!5742 (_values!4283 thiss!1504))) (mask!10196 thiss!1504) (extraKeys!4037 thiss!1504) (zeroValue!4141 thiss!1504) (minValue!4141 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4300 thiss!1504)))))

(declare-fun lt!116303 () Unit!7078)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!63 (array!11382 array!11380 (_ BitVec 32) (_ BitVec 32) V!7739 V!7739 (_ BitVec 32) (_ BitVec 64) V!7739 Int) Unit!7078)

(assert (=> b!230843 (= lt!116303 (lemmaAddValidKeyToArrayThenAddPairToListMap!63 (_keys!6354 thiss!1504) (_values!4283 thiss!1504) (mask!10196 thiss!1504) (extraKeys!4037 thiss!1504) (zeroValue!4141 thiss!1504) (minValue!4141 thiss!1504) index!297 key!932 v!346 (defaultEntry!4300 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11382 (_ BitVec 32)) Bool)

(assert (=> b!230843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116301 (mask!10196 thiss!1504))))

(declare-fun lt!116298 () Unit!7078)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11382 (_ BitVec 32) (_ BitVec 32)) Unit!7078)

(assert (=> b!230843 (= lt!116298 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6354 thiss!1504) index!297 (mask!10196 thiss!1504)))))

(assert (=> b!230843 (= (arrayCountValidKeys!0 lt!116301 #b00000000000000000000000000000000 (size!5743 (_keys!6354 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6354 thiss!1504) #b00000000000000000000000000000000 (size!5743 (_keys!6354 thiss!1504)))))))

(declare-fun lt!116304 () Unit!7078)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11382 (_ BitVec 32) (_ BitVec 64)) Unit!7078)

(assert (=> b!230843 (= lt!116304 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6354 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3484 0))(
  ( (Nil!3481) (Cons!3480 (h!4128 (_ BitVec 64)) (t!8451 List!3484)) )
))
(declare-fun arrayNoDuplicates!0 (array!11382 (_ BitVec 32) List!3484) Bool)

(assert (=> b!230843 (arrayNoDuplicates!0 lt!116301 #b00000000000000000000000000000000 Nil!3481)))

(assert (=> b!230843 (= lt!116301 (array!11383 (store (arr!5410 (_keys!6354 thiss!1504)) index!297 key!932) (size!5743 (_keys!6354 thiss!1504))))))

(declare-fun lt!116307 () Unit!7078)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11382 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3484) Unit!7078)

(assert (=> b!230843 (= lt!116307 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6354 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3481))))

(declare-fun lt!116309 () Unit!7078)

(assert (=> b!230843 (= lt!116309 e!149838)))

(declare-fun c!38320 () Bool)

(assert (=> b!230843 (= c!38320 (arrayContainsKey!0 (_keys!6354 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230844 () Bool)

(assert (=> b!230844 (= e!149844 (not call!21453))))

(declare-fun b!230845 () Bool)

(assert (=> b!230845 (= e!149841 (not call!21453))))

(declare-fun res!113511 () Bool)

(declare-fun e!149843 () Bool)

(assert (=> start!22152 (=> (not res!113511) (not e!149843))))

(declare-fun valid!1296 (LongMapFixedSize!3282) Bool)

(assert (=> start!22152 (= res!113511 (valid!1296 thiss!1504))))

(assert (=> start!22152 e!149843))

(declare-fun e!149836 () Bool)

(assert (=> start!22152 e!149836))

(assert (=> start!22152 true))

(assert (=> start!22152 tp_is_empty!6069))

(declare-fun b!230846 () Bool)

(declare-fun c!38318 () Bool)

(assert (=> b!230846 (= c!38318 ((_ is MissingVacant!953) lt!116306))))

(assert (=> b!230846 (= e!149840 e!149839)))

(declare-fun b!230847 () Bool)

(declare-fun e!149845 () Bool)

(declare-fun e!149833 () Bool)

(assert (=> b!230847 (= e!149845 (and e!149833 mapRes!10273))))

(declare-fun condMapEmpty!10273 () Bool)

(declare-fun mapDefault!10273 () ValueCell!2691)

(assert (=> b!230847 (= condMapEmpty!10273 (= (arr!5409 (_values!4283 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2691)) mapDefault!10273)))))

(declare-fun b!230848 () Bool)

(assert (=> b!230848 (= e!149833 tp_is_empty!6069)))

(declare-fun array_inv!3557 (array!11382) Bool)

(declare-fun array_inv!3558 (array!11380) Bool)

(assert (=> b!230849 (= e!149836 (and tp!21762 tp_is_empty!6069 (array_inv!3557 (_keys!6354 thiss!1504)) (array_inv!3558 (_values!4283 thiss!1504)) e!149845))))

(declare-fun b!230850 () Bool)

(declare-fun e!149842 () Bool)

(assert (=> b!230850 (= e!149843 e!149842)))

(declare-fun res!113508 () Bool)

(assert (=> b!230850 (=> (not res!113508) (not e!149842))))

(assert (=> b!230850 (= res!113508 (or (= lt!116306 (MissingZero!953 index!297)) (= lt!116306 (MissingVacant!953 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11382 (_ BitVec 32)) SeekEntryResult!953)

(assert (=> b!230850 (= lt!116306 (seekEntryOrOpen!0 key!932 (_keys!6354 thiss!1504) (mask!10196 thiss!1504)))))

(declare-fun b!230851 () Bool)

(declare-fun Unit!7081 () Unit!7078)

(assert (=> b!230851 (= e!149837 Unit!7081)))

(declare-fun lt!116305 () Unit!7078)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!295 (array!11382 array!11380 (_ BitVec 32) (_ BitVec 32) V!7739 V!7739 (_ BitVec 64) Int) Unit!7078)

(assert (=> b!230851 (= lt!116305 (lemmaInListMapThenSeekEntryOrOpenFindsIt!295 (_keys!6354 thiss!1504) (_values!4283 thiss!1504) (mask!10196 thiss!1504) (extraKeys!4037 thiss!1504) (zeroValue!4141 thiss!1504) (minValue!4141 thiss!1504) key!932 (defaultEntry!4300 thiss!1504)))))

(assert (=> b!230851 false))

(declare-fun b!230852 () Bool)

(declare-fun res!113515 () Bool)

(assert (=> b!230852 (=> (not res!113515) (not e!149841))))

(assert (=> b!230852 (= res!113515 (= (select (arr!5410 (_keys!6354 thiss!1504)) (index!5982 lt!116306)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230853 () Bool)

(assert (=> b!230853 (= e!149842 e!149835)))

(declare-fun res!113509 () Bool)

(assert (=> b!230853 (=> (not res!113509) (not e!149835))))

(assert (=> b!230853 (= res!113509 (inRange!0 index!297 (mask!10196 thiss!1504)))))

(declare-fun lt!116299 () Unit!7078)

(assert (=> b!230853 (= lt!116299 e!149837)))

(declare-fun c!38319 () Bool)

(declare-fun contains!1614 (ListLongMap!3465 (_ BitVec 64)) Bool)

(assert (=> b!230853 (= c!38319 (contains!1614 lt!116297 key!932))))

(assert (=> b!230853 (= lt!116297 (getCurrentListMap!1271 (_keys!6354 thiss!1504) (_values!4283 thiss!1504) (mask!10196 thiss!1504) (extraKeys!4037 thiss!1504) (zeroValue!4141 thiss!1504) (minValue!4141 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4300 thiss!1504)))))

(declare-fun b!230854 () Bool)

(declare-fun Unit!7082 () Unit!7078)

(assert (=> b!230854 (= e!149838 Unit!7082)))

(declare-fun lt!116308 () Unit!7078)

(declare-fun lemmaArrayContainsKeyThenInListMap!129 (array!11382 array!11380 (_ BitVec 32) (_ BitVec 32) V!7739 V!7739 (_ BitVec 64) (_ BitVec 32) Int) Unit!7078)

(assert (=> b!230854 (= lt!116308 (lemmaArrayContainsKeyThenInListMap!129 (_keys!6354 thiss!1504) (_values!4283 thiss!1504) (mask!10196 thiss!1504) (extraKeys!4037 thiss!1504) (zeroValue!4141 thiss!1504) (minValue!4141 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4300 thiss!1504)))))

(assert (=> b!230854 false))

(declare-fun b!230855 () Bool)

(declare-fun res!113514 () Bool)

(assert (=> b!230855 (=> (not res!113514) (not e!149843))))

(assert (=> b!230855 (= res!113514 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10273 () Bool)

(declare-fun tp!21763 () Bool)

(assert (=> mapNonEmpty!10273 (= mapRes!10273 (and tp!21763 e!149834))))

(declare-fun mapRest!10273 () (Array (_ BitVec 32) ValueCell!2691))

(declare-fun mapValue!10273 () ValueCell!2691)

(declare-fun mapKey!10273 () (_ BitVec 32))

(assert (=> mapNonEmpty!10273 (= (arr!5409 (_values!4283 thiss!1504)) (store mapRest!10273 mapKey!10273 mapValue!10273))))

(assert (= (and start!22152 res!113511) b!230855))

(assert (= (and b!230855 res!113514) b!230850))

(assert (= (and b!230850 res!113508) b!230853))

(assert (= (and b!230853 c!38319) b!230851))

(assert (= (and b!230853 (not c!38319)) b!230836))

(assert (= (and b!230836 c!38321) b!230840))

(assert (= (and b!230836 (not c!38321)) b!230846))

(assert (= (and b!230840 res!113513) b!230852))

(assert (= (and b!230852 res!113515) b!230845))

(assert (= (and b!230846 c!38318) b!230839))

(assert (= (and b!230846 (not c!38318)) b!230841))

(assert (= (and b!230839 res!113510) b!230838))

(assert (= (and b!230838 res!113512) b!230844))

(assert (= (or b!230840 b!230839) bm!21450))

(assert (= (or b!230845 b!230844) bm!21451))

(assert (= (and b!230853 res!113509) b!230843))

(assert (= (and b!230843 c!38320) b!230854))

(assert (= (and b!230843 (not c!38320)) b!230842))

(assert (= (and b!230847 condMapEmpty!10273) mapIsEmpty!10273))

(assert (= (and b!230847 (not condMapEmpty!10273)) mapNonEmpty!10273))

(assert (= (and mapNonEmpty!10273 ((_ is ValueCellFull!2691) mapValue!10273)) b!230837))

(assert (= (and b!230847 ((_ is ValueCellFull!2691) mapDefault!10273)) b!230848))

(assert (= b!230849 b!230847))

(assert (= start!22152 b!230849))

(declare-fun m!252231 () Bool)

(assert (=> b!230836 m!252231))

(declare-fun m!252233 () Bool)

(assert (=> b!230849 m!252233))

(declare-fun m!252235 () Bool)

(assert (=> b!230849 m!252235))

(declare-fun m!252237 () Bool)

(assert (=> bm!21450 m!252237))

(declare-fun m!252239 () Bool)

(assert (=> b!230854 m!252239))

(declare-fun m!252241 () Bool)

(assert (=> bm!21451 m!252241))

(declare-fun m!252243 () Bool)

(assert (=> b!230851 m!252243))

(declare-fun m!252245 () Bool)

(assert (=> b!230852 m!252245))

(assert (=> b!230843 m!252241))

(declare-fun m!252247 () Bool)

(assert (=> b!230843 m!252247))

(declare-fun m!252249 () Bool)

(assert (=> b!230843 m!252249))

(declare-fun m!252251 () Bool)

(assert (=> b!230843 m!252251))

(declare-fun m!252253 () Bool)

(assert (=> b!230843 m!252253))

(declare-fun m!252255 () Bool)

(assert (=> b!230843 m!252255))

(declare-fun m!252257 () Bool)

(assert (=> b!230843 m!252257))

(declare-fun m!252259 () Bool)

(assert (=> b!230843 m!252259))

(declare-fun m!252261 () Bool)

(assert (=> b!230843 m!252261))

(declare-fun m!252263 () Bool)

(assert (=> b!230843 m!252263))

(declare-fun m!252265 () Bool)

(assert (=> b!230843 m!252265))

(declare-fun m!252267 () Bool)

(assert (=> b!230843 m!252267))

(declare-fun m!252269 () Bool)

(assert (=> b!230843 m!252269))

(declare-fun m!252271 () Bool)

(assert (=> b!230843 m!252271))

(declare-fun m!252273 () Bool)

(assert (=> b!230843 m!252273))

(declare-fun m!252275 () Bool)

(assert (=> b!230843 m!252275))

(declare-fun m!252277 () Bool)

(assert (=> b!230843 m!252277))

(declare-fun m!252279 () Bool)

(assert (=> mapNonEmpty!10273 m!252279))

(declare-fun m!252281 () Bool)

(assert (=> b!230853 m!252281))

(declare-fun m!252283 () Bool)

(assert (=> b!230853 m!252283))

(declare-fun m!252285 () Bool)

(assert (=> b!230853 m!252285))

(declare-fun m!252287 () Bool)

(assert (=> b!230838 m!252287))

(declare-fun m!252289 () Bool)

(assert (=> start!22152 m!252289))

(declare-fun m!252291 () Bool)

(assert (=> b!230850 m!252291))

(check-sat (not mapNonEmpty!10273) (not b!230854) (not start!22152) (not bm!21450) tp_is_empty!6069 (not b!230849) b_and!13123 (not b!230836) (not b!230851) (not bm!21451) (not b!230843) (not b!230850) (not b!230853) (not b_next!6207))
(check-sat b_and!13123 (not b_next!6207))
