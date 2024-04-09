; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19012 () Bool)

(assert start!19012)

(declare-fun b!187309 () Bool)

(declare-fun b_free!4611 () Bool)

(declare-fun b_next!4611 () Bool)

(assert (=> b!187309 (= b_free!4611 (not b_next!4611))))

(declare-fun tp!16646 () Bool)

(declare-fun b_and!11247 () Bool)

(assert (=> b!187309 (= tp!16646 b_and!11247)))

(declare-fun b!187305 () Bool)

(declare-fun e!123298 () Bool)

(declare-fun tp_is_empty!4383 () Bool)

(assert (=> b!187305 (= e!123298 tp_is_empty!4383)))

(declare-fun b!187306 () Bool)

(declare-fun e!123296 () Bool)

(declare-fun e!123291 () Bool)

(assert (=> b!187306 (= e!123296 e!123291)))

(declare-fun res!88583 () Bool)

(assert (=> b!187306 (=> (not res!88583) (not e!123291))))

(declare-datatypes ((SeekEntryResult!657 0))(
  ( (MissingZero!657 (index!4798 (_ BitVec 32))) (Found!657 (index!4799 (_ BitVec 32))) (Intermediate!657 (undefined!1469 Bool) (index!4800 (_ BitVec 32)) (x!20291 (_ BitVec 32))) (Undefined!657) (MissingVacant!657 (index!4801 (_ BitVec 32))) )
))
(declare-fun lt!92704 () SeekEntryResult!657)

(get-info :version)

(assert (=> b!187306 (= res!88583 (and (not ((_ is Undefined!657) lt!92704)) (not ((_ is MissingVacant!657) lt!92704)) (not ((_ is MissingZero!657) lt!92704)) ((_ is Found!657) lt!92704)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5491 0))(
  ( (V!5492 (val!2236 Int)) )
))
(declare-datatypes ((ValueCell!1848 0))(
  ( (ValueCellFull!1848 (v!4147 V!5491)) (EmptyCell!1848) )
))
(declare-datatypes ((array!7982 0))(
  ( (array!7983 (arr!3766 (Array (_ BitVec 32) (_ BitVec 64))) (size!4084 (_ BitVec 32))) )
))
(declare-datatypes ((array!7984 0))(
  ( (array!7985 (arr!3767 (Array (_ BitVec 32) ValueCell!1848)) (size!4085 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2604 0))(
  ( (LongMapFixedSize!2605 (defaultEntry!3822 Int) (mask!8967 (_ BitVec 32)) (extraKeys!3559 (_ BitVec 32)) (zeroValue!3663 V!5491) (minValue!3663 V!5491) (_size!1351 (_ BitVec 32)) (_keys!5773 array!7982) (_values!3805 array!7984) (_vacant!1351 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2604)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7982 (_ BitVec 32)) SeekEntryResult!657)

(assert (=> b!187306 (= lt!92704 (seekEntryOrOpen!0 key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(declare-fun b!187307 () Bool)

(declare-fun e!123297 () Bool)

(declare-fun mapRes!7550 () Bool)

(assert (=> b!187307 (= e!123297 (and e!123298 mapRes!7550))))

(declare-fun condMapEmpty!7550 () Bool)

(declare-fun mapDefault!7550 () ValueCell!1848)

(assert (=> b!187307 (= condMapEmpty!7550 (= (arr!3767 (_values!3805 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1848)) mapDefault!7550)))))

(declare-fun b!187308 () Bool)

(declare-datatypes ((Unit!5643 0))(
  ( (Unit!5644) )
))
(declare-fun e!123289 () Unit!5643)

(declare-fun Unit!5645 () Unit!5643)

(assert (=> b!187308 (= e!123289 Unit!5645)))

(declare-fun lt!92703 () Unit!5643)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!151 (array!7982 array!7984 (_ BitVec 32) (_ BitVec 32) V!5491 V!5491 (_ BitVec 64) Int) Unit!5643)

(assert (=> b!187308 (= lt!92703 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!151 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)))))

(assert (=> b!187308 false))

(declare-fun e!123292 () Bool)

(declare-fun array_inv!2427 (array!7982) Bool)

(declare-fun array_inv!2428 (array!7984) Bool)

(assert (=> b!187309 (= e!123292 (and tp!16646 tp_is_empty!4383 (array_inv!2427 (_keys!5773 thiss!1248)) (array_inv!2428 (_values!3805 thiss!1248)) e!123297))))

(declare-fun b!187310 () Bool)

(declare-fun e!123295 () Bool)

(assert (=> b!187310 (= e!123295 (and (= (size!4085 (_values!3805 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8967 thiss!1248))) (= (size!4084 (_keys!5773 thiss!1248)) (size!4085 (_values!3805 thiss!1248))) (bvsge (mask!8967 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3559 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun res!88586 () Bool)

(assert (=> start!19012 (=> (not res!88586) (not e!123296))))

(declare-fun valid!1063 (LongMapFixedSize!2604) Bool)

(assert (=> start!19012 (= res!88586 (valid!1063 thiss!1248))))

(assert (=> start!19012 e!123296))

(assert (=> start!19012 e!123292))

(assert (=> start!19012 true))

(declare-fun b!187311 () Bool)

(declare-fun lt!92702 () Unit!5643)

(assert (=> b!187311 (= e!123289 lt!92702)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!150 (array!7982 array!7984 (_ BitVec 32) (_ BitVec 32) V!5491 V!5491 (_ BitVec 64) Int) Unit!5643)

(assert (=> b!187311 (= lt!92702 (lemmaInListMapThenSeekEntryOrOpenFindsIt!150 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)))))

(declare-fun res!88587 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!187311 (= res!88587 (inRange!0 (index!4799 lt!92704) (mask!8967 thiss!1248)))))

(declare-fun e!123294 () Bool)

(assert (=> b!187311 (=> (not res!88587) (not e!123294))))

(assert (=> b!187311 e!123294))

(declare-fun mapNonEmpty!7550 () Bool)

(declare-fun tp!16645 () Bool)

(declare-fun e!123290 () Bool)

(assert (=> mapNonEmpty!7550 (= mapRes!7550 (and tp!16645 e!123290))))

(declare-fun mapValue!7550 () ValueCell!1848)

(declare-fun mapRest!7550 () (Array (_ BitVec 32) ValueCell!1848))

(declare-fun mapKey!7550 () (_ BitVec 32))

(assert (=> mapNonEmpty!7550 (= (arr!3767 (_values!3805 thiss!1248)) (store mapRest!7550 mapKey!7550 mapValue!7550))))

(declare-fun mapIsEmpty!7550 () Bool)

(assert (=> mapIsEmpty!7550 mapRes!7550))

(declare-fun b!187312 () Bool)

(assert (=> b!187312 (= e!123290 tp_is_empty!4383)))

(declare-fun b!187313 () Bool)

(assert (=> b!187313 (= e!123291 e!123295)))

(declare-fun res!88585 () Bool)

(assert (=> b!187313 (=> (not res!88585) (not e!123295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!187313 (= res!88585 (validMask!0 (mask!8967 thiss!1248)))))

(declare-fun lt!92705 () Unit!5643)

(assert (=> b!187313 (= lt!92705 e!123289)))

(declare-fun c!33611 () Bool)

(declare-datatypes ((tuple2!3474 0))(
  ( (tuple2!3475 (_1!1747 (_ BitVec 64)) (_2!1747 V!5491)) )
))
(declare-datatypes ((List!2402 0))(
  ( (Nil!2399) (Cons!2398 (h!3033 tuple2!3474) (t!7302 List!2402)) )
))
(declare-datatypes ((ListLongMap!2405 0))(
  ( (ListLongMap!2406 (toList!1218 List!2402)) )
))
(declare-fun contains!1312 (ListLongMap!2405 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!861 (array!7982 array!7984 (_ BitVec 32) (_ BitVec 32) V!5491 V!5491 (_ BitVec 32) Int) ListLongMap!2405)

(assert (=> b!187313 (= c!33611 (contains!1312 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)) key!828))))

(declare-fun b!187314 () Bool)

(assert (=> b!187314 (= e!123294 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4799 lt!92704)) key!828))))

(declare-fun b!187315 () Bool)

(declare-fun res!88584 () Bool)

(assert (=> b!187315 (=> (not res!88584) (not e!123296))))

(assert (=> b!187315 (= res!88584 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!19012 res!88586) b!187315))

(assert (= (and b!187315 res!88584) b!187306))

(assert (= (and b!187306 res!88583) b!187313))

(assert (= (and b!187313 c!33611) b!187311))

(assert (= (and b!187313 (not c!33611)) b!187308))

(assert (= (and b!187311 res!88587) b!187314))

(assert (= (and b!187313 res!88585) b!187310))

(assert (= (and b!187307 condMapEmpty!7550) mapIsEmpty!7550))

(assert (= (and b!187307 (not condMapEmpty!7550)) mapNonEmpty!7550))

(assert (= (and mapNonEmpty!7550 ((_ is ValueCellFull!1848) mapValue!7550)) b!187312))

(assert (= (and b!187307 ((_ is ValueCellFull!1848) mapDefault!7550)) b!187305))

(assert (= b!187309 b!187307))

(assert (= start!19012 b!187309))

(declare-fun m!214147 () Bool)

(assert (=> b!187313 m!214147))

(declare-fun m!214149 () Bool)

(assert (=> b!187313 m!214149))

(assert (=> b!187313 m!214149))

(declare-fun m!214151 () Bool)

(assert (=> b!187313 m!214151))

(declare-fun m!214153 () Bool)

(assert (=> start!19012 m!214153))

(declare-fun m!214155 () Bool)

(assert (=> b!187309 m!214155))

(declare-fun m!214157 () Bool)

(assert (=> b!187309 m!214157))

(declare-fun m!214159 () Bool)

(assert (=> b!187314 m!214159))

(declare-fun m!214161 () Bool)

(assert (=> b!187306 m!214161))

(declare-fun m!214163 () Bool)

(assert (=> b!187308 m!214163))

(declare-fun m!214165 () Bool)

(assert (=> b!187311 m!214165))

(declare-fun m!214167 () Bool)

(assert (=> b!187311 m!214167))

(declare-fun m!214169 () Bool)

(assert (=> mapNonEmpty!7550 m!214169))

(check-sat (not b!187308) (not start!19012) (not b!187306) b_and!11247 tp_is_empty!4383 (not mapNonEmpty!7550) (not b!187311) (not b_next!4611) (not b!187313) (not b!187309))
(check-sat b_and!11247 (not b_next!4611))
(get-model)

(declare-fun b!187365 () Bool)

(declare-fun lt!92723 () SeekEntryResult!657)

(assert (=> b!187365 (and (bvsge (index!4798 lt!92723) #b00000000000000000000000000000000) (bvslt (index!4798 lt!92723) (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun res!88613 () Bool)

(assert (=> b!187365 (= res!88613 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4798 lt!92723)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!123339 () Bool)

(assert (=> b!187365 (=> (not res!88613) (not e!123339))))

(declare-fun b!187366 () Bool)

(declare-fun e!123340 () Bool)

(assert (=> b!187366 (= e!123340 ((_ is Undefined!657) lt!92723))))

(declare-fun b!187368 () Bool)

(declare-fun res!88612 () Bool)

(declare-fun e!123338 () Bool)

(assert (=> b!187368 (=> (not res!88612) (not e!123338))))

(declare-fun call!18886 () Bool)

(assert (=> b!187368 (= res!88612 call!18886)))

(assert (=> b!187368 (= e!123340 e!123338)))

(declare-fun b!187369 () Bool)

(declare-fun e!123337 () Bool)

(assert (=> b!187369 (= e!123337 e!123340)))

(declare-fun c!33620 () Bool)

(assert (=> b!187369 (= c!33620 ((_ is MissingVacant!657) lt!92723))))

(declare-fun b!187370 () Bool)

(declare-fun call!18887 () Bool)

(assert (=> b!187370 (= e!123339 (not call!18887))))

(declare-fun bm!18883 () Bool)

(declare-fun arrayContainsKey!0 (array!7982 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18883 (= call!18887 (arrayContainsKey!0 (_keys!5773 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!187371 () Bool)

(assert (=> b!187371 (= e!123337 e!123339)))

(declare-fun res!88611 () Bool)

(assert (=> b!187371 (= res!88611 call!18886)))

(assert (=> b!187371 (=> (not res!88611) (not e!123339))))

(declare-fun b!187367 () Bool)

(declare-fun res!88614 () Bool)

(assert (=> b!187367 (=> (not res!88614) (not e!123338))))

(assert (=> b!187367 (= res!88614 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4801 lt!92723)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187367 (and (bvsge (index!4801 lt!92723) #b00000000000000000000000000000000) (bvslt (index!4801 lt!92723) (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun d!55315 () Bool)

(assert (=> d!55315 e!123337))

(declare-fun c!33619 () Bool)

(assert (=> d!55315 (= c!33619 ((_ is MissingZero!657) lt!92723))))

(assert (=> d!55315 (= lt!92723 (seekEntryOrOpen!0 key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(declare-fun lt!92722 () Unit!5643)

(declare-fun choose!1004 (array!7982 array!7984 (_ BitVec 32) (_ BitVec 32) V!5491 V!5491 (_ BitVec 64) Int) Unit!5643)

(assert (=> d!55315 (= lt!92722 (choose!1004 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)))))

(assert (=> d!55315 (validMask!0 (mask!8967 thiss!1248))))

(assert (=> d!55315 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!151 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)) lt!92722)))

(declare-fun bm!18884 () Bool)

(assert (=> bm!18884 (= call!18886 (inRange!0 (ite c!33619 (index!4798 lt!92723) (index!4801 lt!92723)) (mask!8967 thiss!1248)))))

(declare-fun b!187372 () Bool)

(assert (=> b!187372 (= e!123338 (not call!18887))))

(assert (= (and d!55315 c!33619) b!187371))

(assert (= (and d!55315 (not c!33619)) b!187369))

(assert (= (and b!187371 res!88611) b!187365))

(assert (= (and b!187365 res!88613) b!187370))

(assert (= (and b!187369 c!33620) b!187368))

(assert (= (and b!187369 (not c!33620)) b!187366))

(assert (= (and b!187368 res!88612) b!187367))

(assert (= (and b!187367 res!88614) b!187372))

(assert (= (or b!187371 b!187368) bm!18884))

(assert (= (or b!187370 b!187372) bm!18883))

(declare-fun m!214195 () Bool)

(assert (=> bm!18883 m!214195))

(declare-fun m!214197 () Bool)

(assert (=> b!187367 m!214197))

(declare-fun m!214199 () Bool)

(assert (=> b!187365 m!214199))

(declare-fun m!214201 () Bool)

(assert (=> bm!18884 m!214201))

(assert (=> d!55315 m!214161))

(declare-fun m!214203 () Bool)

(assert (=> d!55315 m!214203))

(assert (=> d!55315 m!214147))

(assert (=> b!187308 d!55315))

(declare-fun d!55317 () Bool)

(declare-fun res!88621 () Bool)

(declare-fun e!123343 () Bool)

(assert (=> d!55317 (=> (not res!88621) (not e!123343))))

(declare-fun simpleValid!186 (LongMapFixedSize!2604) Bool)

(assert (=> d!55317 (= res!88621 (simpleValid!186 thiss!1248))))

(assert (=> d!55317 (= (valid!1063 thiss!1248) e!123343)))

(declare-fun b!187379 () Bool)

(declare-fun res!88622 () Bool)

(assert (=> b!187379 (=> (not res!88622) (not e!123343))))

(declare-fun arrayCountValidKeys!0 (array!7982 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!187379 (= res!88622 (= (arrayCountValidKeys!0 (_keys!5773 thiss!1248) #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))) (_size!1351 thiss!1248)))))

(declare-fun b!187380 () Bool)

(declare-fun res!88623 () Bool)

(assert (=> b!187380 (=> (not res!88623) (not e!123343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7982 (_ BitVec 32)) Bool)

(assert (=> b!187380 (= res!88623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(declare-fun b!187381 () Bool)

(declare-datatypes ((List!2403 0))(
  ( (Nil!2400) (Cons!2399 (h!3034 (_ BitVec 64)) (t!7305 List!2403)) )
))
(declare-fun arrayNoDuplicates!0 (array!7982 (_ BitVec 32) List!2403) Bool)

(assert (=> b!187381 (= e!123343 (arrayNoDuplicates!0 (_keys!5773 thiss!1248) #b00000000000000000000000000000000 Nil!2400))))

(assert (= (and d!55317 res!88621) b!187379))

(assert (= (and b!187379 res!88622) b!187380))

(assert (= (and b!187380 res!88623) b!187381))

(declare-fun m!214205 () Bool)

(assert (=> d!55317 m!214205))

(declare-fun m!214207 () Bool)

(assert (=> b!187379 m!214207))

(declare-fun m!214209 () Bool)

(assert (=> b!187380 m!214209))

(declare-fun m!214211 () Bool)

(assert (=> b!187381 m!214211))

(assert (=> start!19012 d!55317))

(declare-fun d!55319 () Bool)

(assert (=> d!55319 (= (array_inv!2427 (_keys!5773 thiss!1248)) (bvsge (size!4084 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187309 d!55319))

(declare-fun d!55321 () Bool)

(assert (=> d!55321 (= (array_inv!2428 (_values!3805 thiss!1248)) (bvsge (size!4085 (_values!3805 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187309 d!55321))

(declare-fun d!55323 () Bool)

(assert (=> d!55323 (= (validMask!0 (mask!8967 thiss!1248)) (and (or (= (mask!8967 thiss!1248) #b00000000000000000000000000000111) (= (mask!8967 thiss!1248) #b00000000000000000000000000001111) (= (mask!8967 thiss!1248) #b00000000000000000000000000011111) (= (mask!8967 thiss!1248) #b00000000000000000000000000111111) (= (mask!8967 thiss!1248) #b00000000000000000000000001111111) (= (mask!8967 thiss!1248) #b00000000000000000000000011111111) (= (mask!8967 thiss!1248) #b00000000000000000000000111111111) (= (mask!8967 thiss!1248) #b00000000000000000000001111111111) (= (mask!8967 thiss!1248) #b00000000000000000000011111111111) (= (mask!8967 thiss!1248) #b00000000000000000000111111111111) (= (mask!8967 thiss!1248) #b00000000000000000001111111111111) (= (mask!8967 thiss!1248) #b00000000000000000011111111111111) (= (mask!8967 thiss!1248) #b00000000000000000111111111111111) (= (mask!8967 thiss!1248) #b00000000000000001111111111111111) (= (mask!8967 thiss!1248) #b00000000000000011111111111111111) (= (mask!8967 thiss!1248) #b00000000000000111111111111111111) (= (mask!8967 thiss!1248) #b00000000000001111111111111111111) (= (mask!8967 thiss!1248) #b00000000000011111111111111111111) (= (mask!8967 thiss!1248) #b00000000000111111111111111111111) (= (mask!8967 thiss!1248) #b00000000001111111111111111111111) (= (mask!8967 thiss!1248) #b00000000011111111111111111111111) (= (mask!8967 thiss!1248) #b00000000111111111111111111111111) (= (mask!8967 thiss!1248) #b00000001111111111111111111111111) (= (mask!8967 thiss!1248) #b00000011111111111111111111111111) (= (mask!8967 thiss!1248) #b00000111111111111111111111111111) (= (mask!8967 thiss!1248) #b00001111111111111111111111111111) (= (mask!8967 thiss!1248) #b00011111111111111111111111111111) (= (mask!8967 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8967 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!187313 d!55323))

(declare-fun d!55325 () Bool)

(declare-fun e!123349 () Bool)

(assert (=> d!55325 e!123349))

(declare-fun res!88626 () Bool)

(assert (=> d!55325 (=> res!88626 e!123349)))

(declare-fun lt!92733 () Bool)

(assert (=> d!55325 (= res!88626 (not lt!92733))))

(declare-fun lt!92735 () Bool)

(assert (=> d!55325 (= lt!92733 lt!92735)))

(declare-fun lt!92732 () Unit!5643)

(declare-fun e!123348 () Unit!5643)

(assert (=> d!55325 (= lt!92732 e!123348)))

(declare-fun c!33623 () Bool)

(assert (=> d!55325 (= c!33623 lt!92735)))

(declare-fun containsKey!231 (List!2402 (_ BitVec 64)) Bool)

(assert (=> d!55325 (= lt!92735 (containsKey!231 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828))))

(assert (=> d!55325 (= (contains!1312 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)) key!828) lt!92733)))

(declare-fun b!187388 () Bool)

(declare-fun lt!92734 () Unit!5643)

(assert (=> b!187388 (= e!123348 lt!92734)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!180 (List!2402 (_ BitVec 64)) Unit!5643)

(assert (=> b!187388 (= lt!92734 (lemmaContainsKeyImpliesGetValueByKeyDefined!180 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828))))

(declare-datatypes ((Option!233 0))(
  ( (Some!232 (v!4149 V!5491)) (None!231) )
))
(declare-fun isDefined!181 (Option!233) Bool)

(declare-fun getValueByKey!227 (List!2402 (_ BitVec 64)) Option!233)

(assert (=> b!187388 (isDefined!181 (getValueByKey!227 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828))))

(declare-fun b!187389 () Bool)

(declare-fun Unit!5649 () Unit!5643)

(assert (=> b!187389 (= e!123348 Unit!5649)))

(declare-fun b!187390 () Bool)

(assert (=> b!187390 (= e!123349 (isDefined!181 (getValueByKey!227 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828)))))

(assert (= (and d!55325 c!33623) b!187388))

(assert (= (and d!55325 (not c!33623)) b!187389))

(assert (= (and d!55325 (not res!88626)) b!187390))

(declare-fun m!214213 () Bool)

(assert (=> d!55325 m!214213))

(declare-fun m!214215 () Bool)

(assert (=> b!187388 m!214215))

(declare-fun m!214217 () Bool)

(assert (=> b!187388 m!214217))

(assert (=> b!187388 m!214217))

(declare-fun m!214219 () Bool)

(assert (=> b!187388 m!214219))

(assert (=> b!187390 m!214217))

(assert (=> b!187390 m!214217))

(assert (=> b!187390 m!214219))

(assert (=> b!187313 d!55325))

(declare-fun b!187433 () Bool)

(declare-fun e!123378 () ListLongMap!2405)

(declare-fun call!18904 () ListLongMap!2405)

(assert (=> b!187433 (= e!123378 call!18904)))

(declare-fun c!33638 () Bool)

(declare-fun call!18907 () ListLongMap!2405)

(declare-fun call!18903 () ListLongMap!2405)

(declare-fun call!18902 () ListLongMap!2405)

(declare-fun call!18908 () ListLongMap!2405)

(declare-fun bm!18899 () Bool)

(declare-fun c!33636 () Bool)

(declare-fun +!286 (ListLongMap!2405 tuple2!3474) ListLongMap!2405)

(assert (=> bm!18899 (= call!18903 (+!286 (ite c!33638 call!18902 (ite c!33636 call!18907 call!18908)) (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))))))

(declare-fun bm!18900 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!201 (array!7982 array!7984 (_ BitVec 32) (_ BitVec 32) V!5491 V!5491 (_ BitVec 32) Int) ListLongMap!2405)

(assert (=> bm!18900 (= call!18902 (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))))

(declare-fun bm!18901 () Bool)

(declare-fun call!18906 () Bool)

(declare-fun lt!92786 () ListLongMap!2405)

(assert (=> bm!18901 (= call!18906 (contains!1312 lt!92786 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187435 () Bool)

(declare-fun res!88646 () Bool)

(declare-fun e!123387 () Bool)

(assert (=> b!187435 (=> (not res!88646) (not e!123387))))

(declare-fun e!123377 () Bool)

(assert (=> b!187435 (= res!88646 e!123377)))

(declare-fun c!33640 () Bool)

(assert (=> b!187435 (= c!33640 (not (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!187436 () Bool)

(declare-fun e!123384 () Bool)

(assert (=> b!187436 (= e!123377 e!123384)))

(declare-fun res!88653 () Bool)

(assert (=> b!187436 (= res!88653 call!18906)))

(assert (=> b!187436 (=> (not res!88653) (not e!123384))))

(declare-fun b!187437 () Bool)

(declare-fun e!123376 () Bool)

(declare-fun apply!171 (ListLongMap!2405 (_ BitVec 64)) V!5491)

(assert (=> b!187437 (= e!123376 (= (apply!171 lt!92786 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3663 thiss!1248)))))

(declare-fun b!187438 () Bool)

(declare-fun e!123381 () Unit!5643)

(declare-fun Unit!5650 () Unit!5643)

(assert (=> b!187438 (= e!123381 Unit!5650)))

(declare-fun b!187439 () Bool)

(assert (=> b!187439 (= e!123384 (= (apply!171 lt!92786 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3663 thiss!1248)))))

(declare-fun b!187434 () Bool)

(declare-fun e!123388 () ListLongMap!2405)

(assert (=> b!187434 (= e!123388 e!123378)))

(assert (=> b!187434 (= c!33636 (and (not (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!55327 () Bool)

(assert (=> d!55327 e!123387))

(declare-fun res!88645 () Bool)

(assert (=> d!55327 (=> (not res!88645) (not e!123387))))

(assert (=> d!55327 (= res!88645 (or (bvsge #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))))

(declare-fun lt!92793 () ListLongMap!2405)

(assert (=> d!55327 (= lt!92786 lt!92793)))

(declare-fun lt!92780 () Unit!5643)

(assert (=> d!55327 (= lt!92780 e!123381)))

(declare-fun c!33641 () Bool)

(declare-fun e!123380 () Bool)

(assert (=> d!55327 (= c!33641 e!123380)))

(declare-fun res!88649 () Bool)

(assert (=> d!55327 (=> (not res!88649) (not e!123380))))

(assert (=> d!55327 (= res!88649 (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> d!55327 (= lt!92793 e!123388)))

(assert (=> d!55327 (= c!33638 (and (not (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55327 (validMask!0 (mask!8967 thiss!1248))))

(assert (=> d!55327 (= (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)) lt!92786)))

(declare-fun b!187440 () Bool)

(declare-fun e!123383 () Bool)

(declare-fun call!18905 () Bool)

(assert (=> b!187440 (= e!123383 (not call!18905))))

(declare-fun b!187441 () Bool)

(assert (=> b!187441 (= e!123383 e!123376)))

(declare-fun res!88647 () Bool)

(assert (=> b!187441 (= res!88647 call!18905)))

(assert (=> b!187441 (=> (not res!88647) (not e!123376))))

(declare-fun b!187442 () Bool)

(declare-fun e!123385 () Bool)

(declare-fun e!123386 () Bool)

(assert (=> b!187442 (= e!123385 e!123386)))

(declare-fun res!88648 () Bool)

(assert (=> b!187442 (=> (not res!88648) (not e!123386))))

(assert (=> b!187442 (= res!88648 (contains!1312 lt!92786 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!187442 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun b!187443 () Bool)

(assert (=> b!187443 (= e!123388 (+!286 call!18903 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))))

(declare-fun b!187444 () Bool)

(declare-fun res!88652 () Bool)

(assert (=> b!187444 (=> (not res!88652) (not e!123387))))

(assert (=> b!187444 (= res!88652 e!123385)))

(declare-fun res!88651 () Bool)

(assert (=> b!187444 (=> res!88651 e!123385)))

(declare-fun e!123379 () Bool)

(assert (=> b!187444 (= res!88651 (not e!123379))))

(declare-fun res!88650 () Bool)

(assert (=> b!187444 (=> (not res!88650) (not e!123379))))

(assert (=> b!187444 (= res!88650 (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun b!187445 () Bool)

(assert (=> b!187445 (= e!123387 e!123383)))

(declare-fun c!33639 () Bool)

(assert (=> b!187445 (= c!33639 (not (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18902 () Bool)

(assert (=> bm!18902 (= call!18907 call!18902)))

(declare-fun bm!18903 () Bool)

(assert (=> bm!18903 (= call!18905 (contains!1312 lt!92786 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187446 () Bool)

(declare-fun e!123382 () ListLongMap!2405)

(assert (=> b!187446 (= e!123382 call!18904)))

(declare-fun bm!18904 () Bool)

(assert (=> bm!18904 (= call!18904 call!18903)))

(declare-fun b!187447 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!187447 (= e!123379 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187448 () Bool)

(declare-fun c!33637 () Bool)

(assert (=> b!187448 (= c!33637 (and (not (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3559 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!187448 (= e!123378 e!123382)))

(declare-fun b!187449 () Bool)

(assert (=> b!187449 (= e!123377 (not call!18906))))

(declare-fun b!187450 () Bool)

(declare-fun lt!92791 () Unit!5643)

(assert (=> b!187450 (= e!123381 lt!92791)))

(declare-fun lt!92797 () ListLongMap!2405)

(assert (=> b!187450 (= lt!92797 (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))))

(declare-fun lt!92798 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92798 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92784 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92784 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92792 () Unit!5643)

(declare-fun addStillContains!147 (ListLongMap!2405 (_ BitVec 64) V!5491 (_ BitVec 64)) Unit!5643)

(assert (=> b!187450 (= lt!92792 (addStillContains!147 lt!92797 lt!92798 (zeroValue!3663 thiss!1248) lt!92784))))

(assert (=> b!187450 (contains!1312 (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))) lt!92784)))

(declare-fun lt!92795 () Unit!5643)

(assert (=> b!187450 (= lt!92795 lt!92792)))

(declare-fun lt!92789 () ListLongMap!2405)

(assert (=> b!187450 (= lt!92789 (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))))

(declare-fun lt!92800 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92800 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92783 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92783 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92794 () Unit!5643)

(declare-fun addApplyDifferent!147 (ListLongMap!2405 (_ BitVec 64) V!5491 (_ BitVec 64)) Unit!5643)

(assert (=> b!187450 (= lt!92794 (addApplyDifferent!147 lt!92789 lt!92800 (minValue!3663 thiss!1248) lt!92783))))

(assert (=> b!187450 (= (apply!171 (+!286 lt!92789 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))) lt!92783) (apply!171 lt!92789 lt!92783))))

(declare-fun lt!92787 () Unit!5643)

(assert (=> b!187450 (= lt!92787 lt!92794)))

(declare-fun lt!92782 () ListLongMap!2405)

(assert (=> b!187450 (= lt!92782 (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))))

(declare-fun lt!92781 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92781 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92785 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92785 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92799 () Unit!5643)

(assert (=> b!187450 (= lt!92799 (addApplyDifferent!147 lt!92782 lt!92781 (zeroValue!3663 thiss!1248) lt!92785))))

(assert (=> b!187450 (= (apply!171 (+!286 lt!92782 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))) lt!92785) (apply!171 lt!92782 lt!92785))))

(declare-fun lt!92788 () Unit!5643)

(assert (=> b!187450 (= lt!92788 lt!92799)))

(declare-fun lt!92790 () ListLongMap!2405)

(assert (=> b!187450 (= lt!92790 (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))))

(declare-fun lt!92801 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92801 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92796 () (_ BitVec 64))

(assert (=> b!187450 (= lt!92796 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!187450 (= lt!92791 (addApplyDifferent!147 lt!92790 lt!92801 (minValue!3663 thiss!1248) lt!92796))))

(assert (=> b!187450 (= (apply!171 (+!286 lt!92790 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))) lt!92796) (apply!171 lt!92790 lt!92796))))

(declare-fun b!187451 () Bool)

(declare-fun get!2167 (ValueCell!1848 V!5491) V!5491)

(declare-fun dynLambda!509 (Int (_ BitVec 64)) V!5491)

(assert (=> b!187451 (= e!123386 (= (apply!171 lt!92786 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)) (get!2167 (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!509 (defaultEntry!3822 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!187451 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4085 (_values!3805 thiss!1248))))))

(assert (=> b!187451 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun b!187452 () Bool)

(assert (=> b!187452 (= e!123380 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18905 () Bool)

(assert (=> bm!18905 (= call!18908 call!18907)))

(declare-fun b!187453 () Bool)

(assert (=> b!187453 (= e!123382 call!18908)))

(assert (= (and d!55327 c!33638) b!187443))

(assert (= (and d!55327 (not c!33638)) b!187434))

(assert (= (and b!187434 c!33636) b!187433))

(assert (= (and b!187434 (not c!33636)) b!187448))

(assert (= (and b!187448 c!33637) b!187446))

(assert (= (and b!187448 (not c!33637)) b!187453))

(assert (= (or b!187446 b!187453) bm!18905))

(assert (= (or b!187433 bm!18905) bm!18902))

(assert (= (or b!187433 b!187446) bm!18904))

(assert (= (or b!187443 bm!18902) bm!18900))

(assert (= (or b!187443 bm!18904) bm!18899))

(assert (= (and d!55327 res!88649) b!187452))

(assert (= (and d!55327 c!33641) b!187450))

(assert (= (and d!55327 (not c!33641)) b!187438))

(assert (= (and d!55327 res!88645) b!187444))

(assert (= (and b!187444 res!88650) b!187447))

(assert (= (and b!187444 (not res!88651)) b!187442))

(assert (= (and b!187442 res!88648) b!187451))

(assert (= (and b!187444 res!88652) b!187435))

(assert (= (and b!187435 c!33640) b!187436))

(assert (= (and b!187435 (not c!33640)) b!187449))

(assert (= (and b!187436 res!88653) b!187439))

(assert (= (or b!187436 b!187449) bm!18901))

(assert (= (and b!187435 res!88646) b!187445))

(assert (= (and b!187445 c!33639) b!187441))

(assert (= (and b!187445 (not c!33639)) b!187440))

(assert (= (and b!187441 res!88647) b!187437))

(assert (= (or b!187441 b!187440) bm!18903))

(declare-fun b_lambda!7317 () Bool)

(assert (=> (not b_lambda!7317) (not b!187451)))

(declare-fun t!7304 () Bool)

(declare-fun tb!2861 () Bool)

(assert (=> (and b!187309 (= (defaultEntry!3822 thiss!1248) (defaultEntry!3822 thiss!1248)) t!7304) tb!2861))

(declare-fun result!4845 () Bool)

(assert (=> tb!2861 (= result!4845 tp_is_empty!4383)))

(assert (=> b!187451 t!7304))

(declare-fun b_and!11251 () Bool)

(assert (= b_and!11247 (and (=> t!7304 result!4845) b_and!11251)))

(declare-fun m!214221 () Bool)

(assert (=> b!187439 m!214221))

(declare-fun m!214223 () Bool)

(assert (=> b!187443 m!214223))

(declare-fun m!214225 () Bool)

(assert (=> bm!18903 m!214225))

(declare-fun m!214227 () Bool)

(assert (=> b!187447 m!214227))

(assert (=> b!187447 m!214227))

(declare-fun m!214229 () Bool)

(assert (=> b!187447 m!214229))

(assert (=> d!55327 m!214147))

(declare-fun m!214231 () Bool)

(assert (=> b!187450 m!214231))

(declare-fun m!214233 () Bool)

(assert (=> b!187450 m!214233))

(declare-fun m!214235 () Bool)

(assert (=> b!187450 m!214235))

(declare-fun m!214237 () Bool)

(assert (=> b!187450 m!214237))

(declare-fun m!214239 () Bool)

(assert (=> b!187450 m!214239))

(assert (=> b!187450 m!214227))

(declare-fun m!214241 () Bool)

(assert (=> b!187450 m!214241))

(declare-fun m!214243 () Bool)

(assert (=> b!187450 m!214243))

(declare-fun m!214245 () Bool)

(assert (=> b!187450 m!214245))

(declare-fun m!214247 () Bool)

(assert (=> b!187450 m!214247))

(declare-fun m!214249 () Bool)

(assert (=> b!187450 m!214249))

(assert (=> b!187450 m!214241))

(declare-fun m!214251 () Bool)

(assert (=> b!187450 m!214251))

(assert (=> b!187450 m!214231))

(declare-fun m!214253 () Bool)

(assert (=> b!187450 m!214253))

(declare-fun m!214255 () Bool)

(assert (=> b!187450 m!214255))

(assert (=> b!187450 m!214247))

(assert (=> b!187450 m!214235))

(declare-fun m!214257 () Bool)

(assert (=> b!187450 m!214257))

(declare-fun m!214259 () Bool)

(assert (=> b!187450 m!214259))

(declare-fun m!214261 () Bool)

(assert (=> b!187450 m!214261))

(assert (=> b!187452 m!214227))

(assert (=> b!187452 m!214227))

(assert (=> b!187452 m!214229))

(assert (=> b!187451 m!214227))

(declare-fun m!214263 () Bool)

(assert (=> b!187451 m!214263))

(assert (=> b!187451 m!214227))

(declare-fun m!214265 () Bool)

(assert (=> b!187451 m!214265))

(declare-fun m!214267 () Bool)

(assert (=> b!187451 m!214267))

(assert (=> b!187451 m!214265))

(assert (=> b!187451 m!214267))

(declare-fun m!214269 () Bool)

(assert (=> b!187451 m!214269))

(declare-fun m!214271 () Bool)

(assert (=> bm!18901 m!214271))

(assert (=> b!187442 m!214227))

(assert (=> b!187442 m!214227))

(declare-fun m!214273 () Bool)

(assert (=> b!187442 m!214273))

(declare-fun m!214275 () Bool)

(assert (=> bm!18899 m!214275))

(assert (=> bm!18900 m!214245))

(declare-fun m!214277 () Bool)

(assert (=> b!187437 m!214277))

(assert (=> b!187313 d!55327))

(declare-fun b!187468 () Bool)

(declare-fun c!33650 () Bool)

(declare-fun lt!92810 () (_ BitVec 64))

(assert (=> b!187468 (= c!33650 (= lt!92810 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!123396 () SeekEntryResult!657)

(declare-fun e!123397 () SeekEntryResult!657)

(assert (=> b!187468 (= e!123396 e!123397)))

(declare-fun b!187469 () Bool)

(declare-fun lt!92809 () SeekEntryResult!657)

(assert (=> b!187469 (= e!123396 (Found!657 (index!4800 lt!92809)))))

(declare-fun b!187470 () Bool)

(assert (=> b!187470 (= e!123397 (MissingZero!657 (index!4800 lt!92809)))))

(declare-fun b!187471 () Bool)

(declare-fun e!123395 () SeekEntryResult!657)

(assert (=> b!187471 (= e!123395 Undefined!657)))

(declare-fun d!55329 () Bool)

(declare-fun lt!92808 () SeekEntryResult!657)

(assert (=> d!55329 (and (or ((_ is Undefined!657) lt!92808) (not ((_ is Found!657) lt!92808)) (and (bvsge (index!4799 lt!92808) #b00000000000000000000000000000000) (bvslt (index!4799 lt!92808) (size!4084 (_keys!5773 thiss!1248))))) (or ((_ is Undefined!657) lt!92808) ((_ is Found!657) lt!92808) (not ((_ is MissingZero!657) lt!92808)) (and (bvsge (index!4798 lt!92808) #b00000000000000000000000000000000) (bvslt (index!4798 lt!92808) (size!4084 (_keys!5773 thiss!1248))))) (or ((_ is Undefined!657) lt!92808) ((_ is Found!657) lt!92808) ((_ is MissingZero!657) lt!92808) (not ((_ is MissingVacant!657) lt!92808)) (and (bvsge (index!4801 lt!92808) #b00000000000000000000000000000000) (bvslt (index!4801 lt!92808) (size!4084 (_keys!5773 thiss!1248))))) (or ((_ is Undefined!657) lt!92808) (ite ((_ is Found!657) lt!92808) (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4799 lt!92808)) key!828) (ite ((_ is MissingZero!657) lt!92808) (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4798 lt!92808)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!657) lt!92808) (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4801 lt!92808)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55329 (= lt!92808 e!123395)))

(declare-fun c!33649 () Bool)

(assert (=> d!55329 (= c!33649 (and ((_ is Intermediate!657) lt!92809) (undefined!1469 lt!92809)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7982 (_ BitVec 32)) SeekEntryResult!657)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55329 (= lt!92809 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8967 thiss!1248)) key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(assert (=> d!55329 (validMask!0 (mask!8967 thiss!1248))))

(assert (=> d!55329 (= (seekEntryOrOpen!0 key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)) lt!92808)))

(declare-fun b!187472 () Bool)

(assert (=> b!187472 (= e!123395 e!123396)))

(assert (=> b!187472 (= lt!92810 (select (arr!3766 (_keys!5773 thiss!1248)) (index!4800 lt!92809)))))

(declare-fun c!33648 () Bool)

(assert (=> b!187472 (= c!33648 (= lt!92810 key!828))))

(declare-fun b!187473 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7982 (_ BitVec 32)) SeekEntryResult!657)

(assert (=> b!187473 (= e!123397 (seekKeyOrZeroReturnVacant!0 (x!20291 lt!92809) (index!4800 lt!92809) (index!4800 lt!92809) key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(assert (= (and d!55329 c!33649) b!187471))

(assert (= (and d!55329 (not c!33649)) b!187472))

(assert (= (and b!187472 c!33648) b!187469))

(assert (= (and b!187472 (not c!33648)) b!187468))

(assert (= (and b!187468 c!33650) b!187470))

(assert (= (and b!187468 (not c!33650)) b!187473))

(assert (=> d!55329 m!214147))

(declare-fun m!214279 () Bool)

(assert (=> d!55329 m!214279))

(declare-fun m!214281 () Bool)

(assert (=> d!55329 m!214281))

(declare-fun m!214283 () Bool)

(assert (=> d!55329 m!214283))

(declare-fun m!214285 () Bool)

(assert (=> d!55329 m!214285))

(assert (=> d!55329 m!214279))

(declare-fun m!214287 () Bool)

(assert (=> d!55329 m!214287))

(declare-fun m!214289 () Bool)

(assert (=> b!187472 m!214289))

(declare-fun m!214291 () Bool)

(assert (=> b!187473 m!214291))

(assert (=> b!187306 d!55329))

(declare-fun d!55331 () Bool)

(declare-fun e!123400 () Bool)

(assert (=> d!55331 e!123400))

(declare-fun res!88658 () Bool)

(assert (=> d!55331 (=> (not res!88658) (not e!123400))))

(declare-fun lt!92816 () SeekEntryResult!657)

(assert (=> d!55331 (= res!88658 ((_ is Found!657) lt!92816))))

(assert (=> d!55331 (= lt!92816 (seekEntryOrOpen!0 key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(declare-fun lt!92815 () Unit!5643)

(declare-fun choose!1005 (array!7982 array!7984 (_ BitVec 32) (_ BitVec 32) V!5491 V!5491 (_ BitVec 64) Int) Unit!5643)

(assert (=> d!55331 (= lt!92815 (choose!1005 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)))))

(assert (=> d!55331 (validMask!0 (mask!8967 thiss!1248))))

(assert (=> d!55331 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!150 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)) lt!92815)))

(declare-fun b!187478 () Bool)

(declare-fun res!88659 () Bool)

(assert (=> b!187478 (=> (not res!88659) (not e!123400))))

(assert (=> b!187478 (= res!88659 (inRange!0 (index!4799 lt!92816) (mask!8967 thiss!1248)))))

(declare-fun b!187479 () Bool)

(assert (=> b!187479 (= e!123400 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4799 lt!92816)) key!828))))

(assert (=> b!187479 (and (bvsge (index!4799 lt!92816) #b00000000000000000000000000000000) (bvslt (index!4799 lt!92816) (size!4084 (_keys!5773 thiss!1248))))))

(assert (= (and d!55331 res!88658) b!187478))

(assert (= (and b!187478 res!88659) b!187479))

(assert (=> d!55331 m!214161))

(declare-fun m!214293 () Bool)

(assert (=> d!55331 m!214293))

(assert (=> d!55331 m!214147))

(declare-fun m!214295 () Bool)

(assert (=> b!187478 m!214295))

(declare-fun m!214297 () Bool)

(assert (=> b!187479 m!214297))

(assert (=> b!187311 d!55331))

(declare-fun d!55333 () Bool)

(assert (=> d!55333 (= (inRange!0 (index!4799 lt!92704) (mask!8967 thiss!1248)) (and (bvsge (index!4799 lt!92704) #b00000000000000000000000000000000) (bvslt (index!4799 lt!92704) (bvadd (mask!8967 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!187311 d!55333))

(declare-fun b!187487 () Bool)

(declare-fun e!123405 () Bool)

(assert (=> b!187487 (= e!123405 tp_is_empty!4383)))

(declare-fun mapIsEmpty!7556 () Bool)

(declare-fun mapRes!7556 () Bool)

(assert (=> mapIsEmpty!7556 mapRes!7556))

(declare-fun condMapEmpty!7556 () Bool)

(declare-fun mapDefault!7556 () ValueCell!1848)

(assert (=> mapNonEmpty!7550 (= condMapEmpty!7556 (= mapRest!7550 ((as const (Array (_ BitVec 32) ValueCell!1848)) mapDefault!7556)))))

(assert (=> mapNonEmpty!7550 (= tp!16645 (and e!123405 mapRes!7556))))

(declare-fun b!187486 () Bool)

(declare-fun e!123406 () Bool)

(assert (=> b!187486 (= e!123406 tp_is_empty!4383)))

(declare-fun mapNonEmpty!7556 () Bool)

(declare-fun tp!16655 () Bool)

(assert (=> mapNonEmpty!7556 (= mapRes!7556 (and tp!16655 e!123406))))

(declare-fun mapValue!7556 () ValueCell!1848)

(declare-fun mapKey!7556 () (_ BitVec 32))

(declare-fun mapRest!7556 () (Array (_ BitVec 32) ValueCell!1848))

(assert (=> mapNonEmpty!7556 (= mapRest!7550 (store mapRest!7556 mapKey!7556 mapValue!7556))))

(assert (= (and mapNonEmpty!7550 condMapEmpty!7556) mapIsEmpty!7556))

(assert (= (and mapNonEmpty!7550 (not condMapEmpty!7556)) mapNonEmpty!7556))

(assert (= (and mapNonEmpty!7556 ((_ is ValueCellFull!1848) mapValue!7556)) b!187486))

(assert (= (and mapNonEmpty!7550 ((_ is ValueCellFull!1848) mapDefault!7556)) b!187487))

(declare-fun m!214299 () Bool)

(assert (=> mapNonEmpty!7556 m!214299))

(declare-fun b_lambda!7319 () Bool)

(assert (= b_lambda!7317 (or (and b!187309 b_free!4611) b_lambda!7319)))

(check-sat (not d!55327) (not d!55329) (not b!187452) (not b!187439) (not bm!18903) (not mapNonEmpty!7556) tp_is_empty!4383 (not d!55317) (not b!187388) (not b!187381) (not bm!18899) (not d!55331) (not b!187443) (not b!187450) (not bm!18901) b_and!11251 (not b!187380) (not b!187379) (not bm!18883) (not bm!18884) (not b_lambda!7319) (not b!187390) (not b!187447) (not bm!18900) (not d!55315) (not d!55325) (not b!187437) (not b!187478) (not b!187442) (not b!187473) (not b!187451) (not b_next!4611))
(check-sat b_and!11251 (not b_next!4611))
(get-model)

(assert (=> d!55331 d!55329))

(declare-fun d!55335 () Bool)

(declare-fun e!123409 () Bool)

(assert (=> d!55335 e!123409))

(declare-fun res!88664 () Bool)

(assert (=> d!55335 (=> (not res!88664) (not e!123409))))

(declare-fun lt!92819 () SeekEntryResult!657)

(assert (=> d!55335 (= res!88664 ((_ is Found!657) lt!92819))))

(assert (=> d!55335 (= lt!92819 (seekEntryOrOpen!0 key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(assert (=> d!55335 true))

(declare-fun _$33!132 () Unit!5643)

(assert (=> d!55335 (= (choose!1005 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)) _$33!132)))

(declare-fun b!187492 () Bool)

(declare-fun res!88665 () Bool)

(assert (=> b!187492 (=> (not res!88665) (not e!123409))))

(assert (=> b!187492 (= res!88665 (inRange!0 (index!4799 lt!92819) (mask!8967 thiss!1248)))))

(declare-fun b!187493 () Bool)

(assert (=> b!187493 (= e!123409 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4799 lt!92819)) key!828))))

(assert (= (and d!55335 res!88664) b!187492))

(assert (= (and b!187492 res!88665) b!187493))

(assert (=> d!55335 m!214161))

(declare-fun m!214301 () Bool)

(assert (=> b!187492 m!214301))

(declare-fun m!214303 () Bool)

(assert (=> b!187493 m!214303))

(assert (=> d!55331 d!55335))

(assert (=> d!55331 d!55323))

(declare-fun d!55337 () Bool)

(declare-fun e!123412 () Bool)

(assert (=> d!55337 e!123412))

(declare-fun res!88671 () Bool)

(assert (=> d!55337 (=> (not res!88671) (not e!123412))))

(declare-fun lt!92831 () ListLongMap!2405)

(assert (=> d!55337 (= res!88671 (contains!1312 lt!92831 (_1!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))))))

(declare-fun lt!92830 () List!2402)

(assert (=> d!55337 (= lt!92831 (ListLongMap!2406 lt!92830))))

(declare-fun lt!92828 () Unit!5643)

(declare-fun lt!92829 () Unit!5643)

(assert (=> d!55337 (= lt!92828 lt!92829)))

(assert (=> d!55337 (= (getValueByKey!227 lt!92830 (_1!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))) (Some!232 (_2!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!120 (List!2402 (_ BitVec 64) V!5491) Unit!5643)

(assert (=> d!55337 (= lt!92829 (lemmaContainsTupThenGetReturnValue!120 lt!92830 (_1!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))) (_2!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))))))

(declare-fun insertStrictlySorted!122 (List!2402 (_ BitVec 64) V!5491) List!2402)

(assert (=> d!55337 (= lt!92830 (insertStrictlySorted!122 (toList!1218 (ite c!33638 call!18902 (ite c!33636 call!18907 call!18908))) (_1!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))) (_2!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))))))

(assert (=> d!55337 (= (+!286 (ite c!33638 call!18902 (ite c!33636 call!18907 call!18908)) (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))) lt!92831)))

(declare-fun b!187498 () Bool)

(declare-fun res!88670 () Bool)

(assert (=> b!187498 (=> (not res!88670) (not e!123412))))

(assert (=> b!187498 (= res!88670 (= (getValueByKey!227 (toList!1218 lt!92831) (_1!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))) (Some!232 (_2!1747 (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))))))))

(declare-fun b!187499 () Bool)

(declare-fun contains!1313 (List!2402 tuple2!3474) Bool)

(assert (=> b!187499 (= e!123412 (contains!1313 (toList!1218 lt!92831) (ite (or c!33638 c!33636) (tuple2!3475 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3663 thiss!1248)) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))))))

(assert (= (and d!55337 res!88671) b!187498))

(assert (= (and b!187498 res!88670) b!187499))

(declare-fun m!214305 () Bool)

(assert (=> d!55337 m!214305))

(declare-fun m!214307 () Bool)

(assert (=> d!55337 m!214307))

(declare-fun m!214309 () Bool)

(assert (=> d!55337 m!214309))

(declare-fun m!214311 () Bool)

(assert (=> d!55337 m!214311))

(declare-fun m!214313 () Bool)

(assert (=> b!187498 m!214313))

(declare-fun m!214315 () Bool)

(assert (=> b!187499 m!214315))

(assert (=> bm!18899 d!55337))

(declare-fun d!55339 () Bool)

(declare-fun get!2168 (Option!233) V!5491)

(assert (=> d!55339 (= (apply!171 (+!286 lt!92789 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))) lt!92783) (get!2168 (getValueByKey!227 (toList!1218 (+!286 lt!92789 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248)))) lt!92783)))))

(declare-fun bs!7563 () Bool)

(assert (= bs!7563 d!55339))

(declare-fun m!214317 () Bool)

(assert (=> bs!7563 m!214317))

(assert (=> bs!7563 m!214317))

(declare-fun m!214319 () Bool)

(assert (=> bs!7563 m!214319))

(assert (=> b!187450 d!55339))

(declare-fun d!55341 () Bool)

(assert (=> d!55341 (= (apply!171 (+!286 lt!92782 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))) lt!92785) (apply!171 lt!92782 lt!92785))))

(declare-fun lt!92834 () Unit!5643)

(declare-fun choose!1006 (ListLongMap!2405 (_ BitVec 64) V!5491 (_ BitVec 64)) Unit!5643)

(assert (=> d!55341 (= lt!92834 (choose!1006 lt!92782 lt!92781 (zeroValue!3663 thiss!1248) lt!92785))))

(declare-fun e!123415 () Bool)

(assert (=> d!55341 e!123415))

(declare-fun res!88674 () Bool)

(assert (=> d!55341 (=> (not res!88674) (not e!123415))))

(assert (=> d!55341 (= res!88674 (contains!1312 lt!92782 lt!92785))))

(assert (=> d!55341 (= (addApplyDifferent!147 lt!92782 lt!92781 (zeroValue!3663 thiss!1248) lt!92785) lt!92834)))

(declare-fun b!187503 () Bool)

(assert (=> b!187503 (= e!123415 (not (= lt!92785 lt!92781)))))

(assert (= (and d!55341 res!88674) b!187503))

(declare-fun m!214321 () Bool)

(assert (=> d!55341 m!214321))

(assert (=> d!55341 m!214235))

(assert (=> d!55341 m!214255))

(declare-fun m!214323 () Bool)

(assert (=> d!55341 m!214323))

(assert (=> d!55341 m!214235))

(assert (=> d!55341 m!214237))

(assert (=> b!187450 d!55341))

(declare-fun d!55343 () Bool)

(assert (=> d!55343 (= (apply!171 lt!92790 lt!92796) (get!2168 (getValueByKey!227 (toList!1218 lt!92790) lt!92796)))))

(declare-fun bs!7564 () Bool)

(assert (= bs!7564 d!55343))

(declare-fun m!214325 () Bool)

(assert (=> bs!7564 m!214325))

(assert (=> bs!7564 m!214325))

(declare-fun m!214327 () Bool)

(assert (=> bs!7564 m!214327))

(assert (=> b!187450 d!55343))

(declare-fun d!55345 () Bool)

(assert (=> d!55345 (= (apply!171 (+!286 lt!92782 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))) lt!92785) (get!2168 (getValueByKey!227 (toList!1218 (+!286 lt!92782 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248)))) lt!92785)))))

(declare-fun bs!7565 () Bool)

(assert (= bs!7565 d!55345))

(declare-fun m!214329 () Bool)

(assert (=> bs!7565 m!214329))

(assert (=> bs!7565 m!214329))

(declare-fun m!214331 () Bool)

(assert (=> bs!7565 m!214331))

(assert (=> b!187450 d!55345))

(declare-fun d!55347 () Bool)

(declare-fun e!123416 () Bool)

(assert (=> d!55347 e!123416))

(declare-fun res!88676 () Bool)

(assert (=> d!55347 (=> (not res!88676) (not e!123416))))

(declare-fun lt!92838 () ListLongMap!2405)

(assert (=> d!55347 (= res!88676 (contains!1312 lt!92838 (_1!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))))))

(declare-fun lt!92837 () List!2402)

(assert (=> d!55347 (= lt!92838 (ListLongMap!2406 lt!92837))))

(declare-fun lt!92835 () Unit!5643)

(declare-fun lt!92836 () Unit!5643)

(assert (=> d!55347 (= lt!92835 lt!92836)))

(assert (=> d!55347 (= (getValueByKey!227 lt!92837 (_1!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))))))

(assert (=> d!55347 (= lt!92836 (lemmaContainsTupThenGetReturnValue!120 lt!92837 (_1!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))))))

(assert (=> d!55347 (= lt!92837 (insertStrictlySorted!122 (toList!1218 lt!92797) (_1!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))))))

(assert (=> d!55347 (= (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))) lt!92838)))

(declare-fun b!187504 () Bool)

(declare-fun res!88675 () Bool)

(assert (=> b!187504 (=> (not res!88675) (not e!123416))))

(assert (=> b!187504 (= res!88675 (= (getValueByKey!227 (toList!1218 lt!92838) (_1!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))))))))

(declare-fun b!187505 () Bool)

(assert (=> b!187505 (= e!123416 (contains!1313 (toList!1218 lt!92838) (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))))))

(assert (= (and d!55347 res!88676) b!187504))

(assert (= (and b!187504 res!88675) b!187505))

(declare-fun m!214333 () Bool)

(assert (=> d!55347 m!214333))

(declare-fun m!214335 () Bool)

(assert (=> d!55347 m!214335))

(declare-fun m!214337 () Bool)

(assert (=> d!55347 m!214337))

(declare-fun m!214339 () Bool)

(assert (=> d!55347 m!214339))

(declare-fun m!214341 () Bool)

(assert (=> b!187504 m!214341))

(declare-fun m!214343 () Bool)

(assert (=> b!187505 m!214343))

(assert (=> b!187450 d!55347))

(declare-fun d!55349 () Bool)

(declare-fun e!123418 () Bool)

(assert (=> d!55349 e!123418))

(declare-fun res!88677 () Bool)

(assert (=> d!55349 (=> res!88677 e!123418)))

(declare-fun lt!92840 () Bool)

(assert (=> d!55349 (= res!88677 (not lt!92840))))

(declare-fun lt!92842 () Bool)

(assert (=> d!55349 (= lt!92840 lt!92842)))

(declare-fun lt!92839 () Unit!5643)

(declare-fun e!123417 () Unit!5643)

(assert (=> d!55349 (= lt!92839 e!123417)))

(declare-fun c!33651 () Bool)

(assert (=> d!55349 (= c!33651 lt!92842)))

(assert (=> d!55349 (= lt!92842 (containsKey!231 (toList!1218 (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))) lt!92784))))

(assert (=> d!55349 (= (contains!1312 (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))) lt!92784) lt!92840)))

(declare-fun b!187506 () Bool)

(declare-fun lt!92841 () Unit!5643)

(assert (=> b!187506 (= e!123417 lt!92841)))

(assert (=> b!187506 (= lt!92841 (lemmaContainsKeyImpliesGetValueByKeyDefined!180 (toList!1218 (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))) lt!92784))))

(assert (=> b!187506 (isDefined!181 (getValueByKey!227 (toList!1218 (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))) lt!92784))))

(declare-fun b!187507 () Bool)

(declare-fun Unit!5651 () Unit!5643)

(assert (=> b!187507 (= e!123417 Unit!5651)))

(declare-fun b!187508 () Bool)

(assert (=> b!187508 (= e!123418 (isDefined!181 (getValueByKey!227 (toList!1218 (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248)))) lt!92784)))))

(assert (= (and d!55349 c!33651) b!187506))

(assert (= (and d!55349 (not c!33651)) b!187507))

(assert (= (and d!55349 (not res!88677)) b!187508))

(declare-fun m!214345 () Bool)

(assert (=> d!55349 m!214345))

(declare-fun m!214347 () Bool)

(assert (=> b!187506 m!214347))

(declare-fun m!214349 () Bool)

(assert (=> b!187506 m!214349))

(assert (=> b!187506 m!214349))

(declare-fun m!214351 () Bool)

(assert (=> b!187506 m!214351))

(assert (=> b!187508 m!214349))

(assert (=> b!187508 m!214349))

(assert (=> b!187508 m!214351))

(assert (=> b!187450 d!55349))

(declare-fun d!55351 () Bool)

(declare-fun e!123435 () Bool)

(assert (=> d!55351 e!123435))

(declare-fun res!88686 () Bool)

(assert (=> d!55351 (=> (not res!88686) (not e!123435))))

(declare-fun lt!92861 () ListLongMap!2405)

(assert (=> d!55351 (= res!88686 (not (contains!1312 lt!92861 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!123437 () ListLongMap!2405)

(assert (=> d!55351 (= lt!92861 e!123437)))

(declare-fun c!33663 () Bool)

(assert (=> d!55351 (= c!33663 (bvsge #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> d!55351 (validMask!0 (mask!8967 thiss!1248))))

(assert (=> d!55351 (= (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)) lt!92861)))

(declare-fun b!187533 () Bool)

(declare-fun e!123439 () Bool)

(declare-fun e!123438 () Bool)

(assert (=> b!187533 (= e!123439 e!123438)))

(declare-fun c!33660 () Bool)

(assert (=> b!187533 (= c!33660 (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun b!187534 () Bool)

(declare-fun e!123433 () Bool)

(assert (=> b!187534 (= e!123439 e!123433)))

(assert (=> b!187534 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun res!88689 () Bool)

(assert (=> b!187534 (= res!88689 (contains!1312 lt!92861 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!187534 (=> (not res!88689) (not e!123433))))

(declare-fun b!187535 () Bool)

(declare-fun lt!92859 () Unit!5643)

(declare-fun lt!92857 () Unit!5643)

(assert (=> b!187535 (= lt!92859 lt!92857)))

(declare-fun lt!92860 () ListLongMap!2405)

(declare-fun lt!92863 () (_ BitVec 64))

(declare-fun lt!92858 () V!5491)

(declare-fun lt!92862 () (_ BitVec 64))

(assert (=> b!187535 (not (contains!1312 (+!286 lt!92860 (tuple2!3475 lt!92863 lt!92858)) lt!92862))))

(declare-fun addStillNotContains!93 (ListLongMap!2405 (_ BitVec 64) V!5491 (_ BitVec 64)) Unit!5643)

(assert (=> b!187535 (= lt!92857 (addStillNotContains!93 lt!92860 lt!92863 lt!92858 lt!92862))))

(assert (=> b!187535 (= lt!92862 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!187535 (= lt!92858 (get!2167 (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!509 (defaultEntry!3822 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!187535 (= lt!92863 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!18911 () ListLongMap!2405)

(assert (=> b!187535 (= lt!92860 call!18911)))

(declare-fun e!123434 () ListLongMap!2405)

(assert (=> b!187535 (= e!123434 (+!286 call!18911 (tuple2!3475 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000) (get!2167 (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!509 (defaultEntry!3822 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!187536 () Bool)

(assert (=> b!187536 (= e!123437 e!123434)))

(declare-fun c!33662 () Bool)

(assert (=> b!187536 (= c!33662 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187537 () Bool)

(assert (=> b!187537 (= e!123435 e!123439)))

(declare-fun c!33661 () Bool)

(declare-fun e!123436 () Bool)

(assert (=> b!187537 (= c!33661 e!123436)))

(declare-fun res!88688 () Bool)

(assert (=> b!187537 (=> (not res!88688) (not e!123436))))

(assert (=> b!187537 (= res!88688 (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun bm!18908 () Bool)

(assert (=> bm!18908 (= call!18911 (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3822 thiss!1248)))))

(declare-fun b!187538 () Bool)

(assert (=> b!187538 (= e!123436 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!187538 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!187539 () Bool)

(assert (=> b!187539 (= e!123434 call!18911)))

(declare-fun b!187540 () Bool)

(declare-fun isEmpty!480 (ListLongMap!2405) Bool)

(assert (=> b!187540 (= e!123438 (isEmpty!480 lt!92861))))

(declare-fun b!187541 () Bool)

(declare-fun res!88687 () Bool)

(assert (=> b!187541 (=> (not res!88687) (not e!123435))))

(assert (=> b!187541 (= res!88687 (not (contains!1312 lt!92861 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!187542 () Bool)

(assert (=> b!187542 (= e!123437 (ListLongMap!2406 Nil!2399))))

(declare-fun b!187543 () Bool)

(assert (=> b!187543 (= e!123438 (= lt!92861 (getCurrentListMapNoExtraKeys!201 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3822 thiss!1248))))))

(declare-fun b!187544 () Bool)

(assert (=> b!187544 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> b!187544 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4085 (_values!3805 thiss!1248))))))

(assert (=> b!187544 (= e!123433 (= (apply!171 lt!92861 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)) (get!2167 (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!509 (defaultEntry!3822 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!55351 c!33663) b!187542))

(assert (= (and d!55351 (not c!33663)) b!187536))

(assert (= (and b!187536 c!33662) b!187535))

(assert (= (and b!187536 (not c!33662)) b!187539))

(assert (= (or b!187535 b!187539) bm!18908))

(assert (= (and d!55351 res!88686) b!187541))

(assert (= (and b!187541 res!88687) b!187537))

(assert (= (and b!187537 res!88688) b!187538))

(assert (= (and b!187537 c!33661) b!187534))

(assert (= (and b!187537 (not c!33661)) b!187533))

(assert (= (and b!187534 res!88689) b!187544))

(assert (= (and b!187533 c!33660) b!187543))

(assert (= (and b!187533 (not c!33660)) b!187540))

(declare-fun b_lambda!7321 () Bool)

(assert (=> (not b_lambda!7321) (not b!187535)))

(assert (=> b!187535 t!7304))

(declare-fun b_and!11253 () Bool)

(assert (= b_and!11251 (and (=> t!7304 result!4845) b_and!11253)))

(declare-fun b_lambda!7323 () Bool)

(assert (=> (not b_lambda!7323) (not b!187544)))

(assert (=> b!187544 t!7304))

(declare-fun b_and!11255 () Bool)

(assert (= b_and!11253 (and (=> t!7304 result!4845) b_and!11255)))

(assert (=> b!187538 m!214227))

(assert (=> b!187538 m!214227))

(assert (=> b!187538 m!214229))

(declare-fun m!214353 () Bool)

(assert (=> d!55351 m!214353))

(assert (=> d!55351 m!214147))

(declare-fun m!214355 () Bool)

(assert (=> b!187543 m!214355))

(declare-fun m!214357 () Bool)

(assert (=> b!187535 m!214357))

(assert (=> b!187535 m!214227))

(declare-fun m!214359 () Bool)

(assert (=> b!187535 m!214359))

(declare-fun m!214361 () Bool)

(assert (=> b!187535 m!214361))

(assert (=> b!187535 m!214265))

(assert (=> b!187535 m!214267))

(assert (=> b!187535 m!214269))

(assert (=> b!187535 m!214265))

(assert (=> b!187535 m!214267))

(assert (=> b!187535 m!214357))

(declare-fun m!214363 () Bool)

(assert (=> b!187535 m!214363))

(assert (=> bm!18908 m!214355))

(declare-fun m!214365 () Bool)

(assert (=> b!187541 m!214365))

(declare-fun m!214367 () Bool)

(assert (=> b!187540 m!214367))

(assert (=> b!187544 m!214227))

(declare-fun m!214369 () Bool)

(assert (=> b!187544 m!214369))

(assert (=> b!187544 m!214227))

(assert (=> b!187544 m!214267))

(assert (=> b!187544 m!214265))

(assert (=> b!187544 m!214267))

(assert (=> b!187544 m!214269))

(assert (=> b!187544 m!214265))

(assert (=> b!187536 m!214227))

(assert (=> b!187536 m!214227))

(assert (=> b!187536 m!214229))

(assert (=> b!187534 m!214227))

(assert (=> b!187534 m!214227))

(declare-fun m!214371 () Bool)

(assert (=> b!187534 m!214371))

(assert (=> b!187450 d!55351))

(declare-fun d!55353 () Bool)

(assert (=> d!55353 (= (apply!171 lt!92782 lt!92785) (get!2168 (getValueByKey!227 (toList!1218 lt!92782) lt!92785)))))

(declare-fun bs!7566 () Bool)

(assert (= bs!7566 d!55353))

(declare-fun m!214373 () Bool)

(assert (=> bs!7566 m!214373))

(assert (=> bs!7566 m!214373))

(declare-fun m!214375 () Bool)

(assert (=> bs!7566 m!214375))

(assert (=> b!187450 d!55353))

(declare-fun d!55355 () Bool)

(assert (=> d!55355 (= (apply!171 (+!286 lt!92790 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))) lt!92796) (get!2168 (getValueByKey!227 (toList!1218 (+!286 lt!92790 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248)))) lt!92796)))))

(declare-fun bs!7567 () Bool)

(assert (= bs!7567 d!55355))

(declare-fun m!214377 () Bool)

(assert (=> bs!7567 m!214377))

(assert (=> bs!7567 m!214377))

(declare-fun m!214379 () Bool)

(assert (=> bs!7567 m!214379))

(assert (=> b!187450 d!55355))

(declare-fun d!55357 () Bool)

(assert (=> d!55357 (= (apply!171 (+!286 lt!92789 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))) lt!92783) (apply!171 lt!92789 lt!92783))))

(declare-fun lt!92864 () Unit!5643)

(assert (=> d!55357 (= lt!92864 (choose!1006 lt!92789 lt!92800 (minValue!3663 thiss!1248) lt!92783))))

(declare-fun e!123440 () Bool)

(assert (=> d!55357 e!123440))

(declare-fun res!88690 () Bool)

(assert (=> d!55357 (=> (not res!88690) (not e!123440))))

(assert (=> d!55357 (= res!88690 (contains!1312 lt!92789 lt!92783))))

(assert (=> d!55357 (= (addApplyDifferent!147 lt!92789 lt!92800 (minValue!3663 thiss!1248) lt!92783) lt!92864)))

(declare-fun b!187545 () Bool)

(assert (=> b!187545 (= e!123440 (not (= lt!92783 lt!92800)))))

(assert (= (and d!55357 res!88690) b!187545))

(declare-fun m!214381 () Bool)

(assert (=> d!55357 m!214381))

(assert (=> d!55357 m!214231))

(assert (=> d!55357 m!214257))

(declare-fun m!214383 () Bool)

(assert (=> d!55357 m!214383))

(assert (=> d!55357 m!214231))

(assert (=> d!55357 m!214233))

(assert (=> b!187450 d!55357))

(declare-fun d!55359 () Bool)

(assert (=> d!55359 (= (apply!171 (+!286 lt!92790 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))) lt!92796) (apply!171 lt!92790 lt!92796))))

(declare-fun lt!92865 () Unit!5643)

(assert (=> d!55359 (= lt!92865 (choose!1006 lt!92790 lt!92801 (minValue!3663 thiss!1248) lt!92796))))

(declare-fun e!123441 () Bool)

(assert (=> d!55359 e!123441))

(declare-fun res!88691 () Bool)

(assert (=> d!55359 (=> (not res!88691) (not e!123441))))

(assert (=> d!55359 (= res!88691 (contains!1312 lt!92790 lt!92796))))

(assert (=> d!55359 (= (addApplyDifferent!147 lt!92790 lt!92801 (minValue!3663 thiss!1248) lt!92796) lt!92865)))

(declare-fun b!187546 () Bool)

(assert (=> b!187546 (= e!123441 (not (= lt!92796 lt!92801)))))

(assert (= (and d!55359 res!88691) b!187546))

(declare-fun m!214385 () Bool)

(assert (=> d!55359 m!214385))

(assert (=> d!55359 m!214241))

(assert (=> d!55359 m!214261))

(declare-fun m!214387 () Bool)

(assert (=> d!55359 m!214387))

(assert (=> d!55359 m!214241))

(assert (=> d!55359 m!214251))

(assert (=> b!187450 d!55359))

(declare-fun d!55361 () Bool)

(declare-fun e!123442 () Bool)

(assert (=> d!55361 e!123442))

(declare-fun res!88693 () Bool)

(assert (=> d!55361 (=> (not res!88693) (not e!123442))))

(declare-fun lt!92869 () ListLongMap!2405)

(assert (=> d!55361 (= res!88693 (contains!1312 lt!92869 (_1!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248)))))))

(declare-fun lt!92868 () List!2402)

(assert (=> d!55361 (= lt!92869 (ListLongMap!2406 lt!92868))))

(declare-fun lt!92866 () Unit!5643)

(declare-fun lt!92867 () Unit!5643)

(assert (=> d!55361 (= lt!92866 lt!92867)))

(assert (=> d!55361 (= (getValueByKey!227 lt!92868 (_1!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248)))))))

(assert (=> d!55361 (= lt!92867 (lemmaContainsTupThenGetReturnValue!120 lt!92868 (_1!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248)))))))

(assert (=> d!55361 (= lt!92868 (insertStrictlySorted!122 (toList!1218 lt!92790) (_1!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248)))))))

(assert (=> d!55361 (= (+!286 lt!92790 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))) lt!92869)))

(declare-fun b!187547 () Bool)

(declare-fun res!88692 () Bool)

(assert (=> b!187547 (=> (not res!88692) (not e!123442))))

(assert (=> b!187547 (= res!88692 (= (getValueByKey!227 (toList!1218 lt!92869) (_1!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))))))))

(declare-fun b!187548 () Bool)

(assert (=> b!187548 (= e!123442 (contains!1313 (toList!1218 lt!92869) (tuple2!3475 lt!92801 (minValue!3663 thiss!1248))))))

(assert (= (and d!55361 res!88693) b!187547))

(assert (= (and b!187547 res!88692) b!187548))

(declare-fun m!214389 () Bool)

(assert (=> d!55361 m!214389))

(declare-fun m!214391 () Bool)

(assert (=> d!55361 m!214391))

(declare-fun m!214393 () Bool)

(assert (=> d!55361 m!214393))

(declare-fun m!214395 () Bool)

(assert (=> d!55361 m!214395))

(declare-fun m!214397 () Bool)

(assert (=> b!187547 m!214397))

(declare-fun m!214399 () Bool)

(assert (=> b!187548 m!214399))

(assert (=> b!187450 d!55361))

(declare-fun d!55363 () Bool)

(declare-fun e!123443 () Bool)

(assert (=> d!55363 e!123443))

(declare-fun res!88695 () Bool)

(assert (=> d!55363 (=> (not res!88695) (not e!123443))))

(declare-fun lt!92873 () ListLongMap!2405)

(assert (=> d!55363 (= res!88695 (contains!1312 lt!92873 (_1!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248)))))))

(declare-fun lt!92872 () List!2402)

(assert (=> d!55363 (= lt!92873 (ListLongMap!2406 lt!92872))))

(declare-fun lt!92870 () Unit!5643)

(declare-fun lt!92871 () Unit!5643)

(assert (=> d!55363 (= lt!92870 lt!92871)))

(assert (=> d!55363 (= (getValueByKey!227 lt!92872 (_1!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248)))))))

(assert (=> d!55363 (= lt!92871 (lemmaContainsTupThenGetReturnValue!120 lt!92872 (_1!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248)))))))

(assert (=> d!55363 (= lt!92872 (insertStrictlySorted!122 (toList!1218 lt!92782) (_1!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248)))))))

(assert (=> d!55363 (= (+!286 lt!92782 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))) lt!92873)))

(declare-fun b!187549 () Bool)

(declare-fun res!88694 () Bool)

(assert (=> b!187549 (=> (not res!88694) (not e!123443))))

(assert (=> b!187549 (= res!88694 (= (getValueByKey!227 (toList!1218 lt!92873) (_1!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))))))))

(declare-fun b!187550 () Bool)

(assert (=> b!187550 (= e!123443 (contains!1313 (toList!1218 lt!92873) (tuple2!3475 lt!92781 (zeroValue!3663 thiss!1248))))))

(assert (= (and d!55363 res!88695) b!187549))

(assert (= (and b!187549 res!88694) b!187550))

(declare-fun m!214401 () Bool)

(assert (=> d!55363 m!214401))

(declare-fun m!214403 () Bool)

(assert (=> d!55363 m!214403))

(declare-fun m!214405 () Bool)

(assert (=> d!55363 m!214405))

(declare-fun m!214407 () Bool)

(assert (=> d!55363 m!214407))

(declare-fun m!214409 () Bool)

(assert (=> b!187549 m!214409))

(declare-fun m!214411 () Bool)

(assert (=> b!187550 m!214411))

(assert (=> b!187450 d!55363))

(declare-fun d!55365 () Bool)

(declare-fun e!123444 () Bool)

(assert (=> d!55365 e!123444))

(declare-fun res!88697 () Bool)

(assert (=> d!55365 (=> (not res!88697) (not e!123444))))

(declare-fun lt!92877 () ListLongMap!2405)

(assert (=> d!55365 (= res!88697 (contains!1312 lt!92877 (_1!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248)))))))

(declare-fun lt!92876 () List!2402)

(assert (=> d!55365 (= lt!92877 (ListLongMap!2406 lt!92876))))

(declare-fun lt!92874 () Unit!5643)

(declare-fun lt!92875 () Unit!5643)

(assert (=> d!55365 (= lt!92874 lt!92875)))

(assert (=> d!55365 (= (getValueByKey!227 lt!92876 (_1!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248)))))))

(assert (=> d!55365 (= lt!92875 (lemmaContainsTupThenGetReturnValue!120 lt!92876 (_1!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248)))))))

(assert (=> d!55365 (= lt!92876 (insertStrictlySorted!122 (toList!1218 lt!92789) (_1!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248)))))))

(assert (=> d!55365 (= (+!286 lt!92789 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))) lt!92877)))

(declare-fun b!187551 () Bool)

(declare-fun res!88696 () Bool)

(assert (=> b!187551 (=> (not res!88696) (not e!123444))))

(assert (=> b!187551 (= res!88696 (= (getValueByKey!227 (toList!1218 lt!92877) (_1!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))))))))

(declare-fun b!187552 () Bool)

(assert (=> b!187552 (= e!123444 (contains!1313 (toList!1218 lt!92877) (tuple2!3475 lt!92800 (minValue!3663 thiss!1248))))))

(assert (= (and d!55365 res!88697) b!187551))

(assert (= (and b!187551 res!88696) b!187552))

(declare-fun m!214413 () Bool)

(assert (=> d!55365 m!214413))

(declare-fun m!214415 () Bool)

(assert (=> d!55365 m!214415))

(declare-fun m!214417 () Bool)

(assert (=> d!55365 m!214417))

(declare-fun m!214419 () Bool)

(assert (=> d!55365 m!214419))

(declare-fun m!214421 () Bool)

(assert (=> b!187551 m!214421))

(declare-fun m!214423 () Bool)

(assert (=> b!187552 m!214423))

(assert (=> b!187450 d!55365))

(declare-fun d!55367 () Bool)

(assert (=> d!55367 (= (apply!171 lt!92789 lt!92783) (get!2168 (getValueByKey!227 (toList!1218 lt!92789) lt!92783)))))

(declare-fun bs!7568 () Bool)

(assert (= bs!7568 d!55367))

(declare-fun m!214425 () Bool)

(assert (=> bs!7568 m!214425))

(assert (=> bs!7568 m!214425))

(declare-fun m!214427 () Bool)

(assert (=> bs!7568 m!214427))

(assert (=> b!187450 d!55367))

(declare-fun d!55369 () Bool)

(assert (=> d!55369 (contains!1312 (+!286 lt!92797 (tuple2!3475 lt!92798 (zeroValue!3663 thiss!1248))) lt!92784)))

(declare-fun lt!92880 () Unit!5643)

(declare-fun choose!1007 (ListLongMap!2405 (_ BitVec 64) V!5491 (_ BitVec 64)) Unit!5643)

(assert (=> d!55369 (= lt!92880 (choose!1007 lt!92797 lt!92798 (zeroValue!3663 thiss!1248) lt!92784))))

(assert (=> d!55369 (contains!1312 lt!92797 lt!92784)))

(assert (=> d!55369 (= (addStillContains!147 lt!92797 lt!92798 (zeroValue!3663 thiss!1248) lt!92784) lt!92880)))

(declare-fun bs!7569 () Bool)

(assert (= bs!7569 d!55369))

(assert (=> bs!7569 m!214247))

(assert (=> bs!7569 m!214247))

(assert (=> bs!7569 m!214249))

(declare-fun m!214429 () Bool)

(assert (=> bs!7569 m!214429))

(declare-fun m!214431 () Bool)

(assert (=> bs!7569 m!214431))

(assert (=> b!187450 d!55369))

(declare-fun d!55371 () Bool)

(assert (=> d!55371 (= (apply!171 lt!92786 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)) (get!2168 (getValueByKey!227 (toList!1218 lt!92786) (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7570 () Bool)

(assert (= bs!7570 d!55371))

(assert (=> bs!7570 m!214227))

(declare-fun m!214433 () Bool)

(assert (=> bs!7570 m!214433))

(assert (=> bs!7570 m!214433))

(declare-fun m!214435 () Bool)

(assert (=> bs!7570 m!214435))

(assert (=> b!187451 d!55371))

(declare-fun d!55373 () Bool)

(declare-fun c!33666 () Bool)

(assert (=> d!55373 (= c!33666 ((_ is ValueCellFull!1848) (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!123447 () V!5491)

(assert (=> d!55373 (= (get!2167 (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!509 (defaultEntry!3822 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!123447)))

(declare-fun b!187558 () Bool)

(declare-fun get!2169 (ValueCell!1848 V!5491) V!5491)

(assert (=> b!187558 (= e!123447 (get!2169 (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!509 (defaultEntry!3822 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!187559 () Bool)

(declare-fun get!2170 (ValueCell!1848 V!5491) V!5491)

(assert (=> b!187559 (= e!123447 (get!2170 (select (arr!3767 (_values!3805 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!509 (defaultEntry!3822 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55373 c!33666) b!187558))

(assert (= (and d!55373 (not c!33666)) b!187559))

(assert (=> b!187558 m!214265))

(assert (=> b!187558 m!214267))

(declare-fun m!214437 () Bool)

(assert (=> b!187558 m!214437))

(assert (=> b!187559 m!214265))

(assert (=> b!187559 m!214267))

(declare-fun m!214439 () Bool)

(assert (=> b!187559 m!214439))

(assert (=> b!187451 d!55373))

(declare-fun d!55375 () Bool)

(assert (=> d!55375 (= (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!187447 d!55375))

(assert (=> d!55315 d!55329))

(declare-fun d!55377 () Bool)

(declare-fun e!123458 () Bool)

(assert (=> d!55377 e!123458))

(declare-fun c!33671 () Bool)

(declare-fun lt!92883 () SeekEntryResult!657)

(assert (=> d!55377 (= c!33671 ((_ is MissingZero!657) lt!92883))))

(assert (=> d!55377 (= lt!92883 (seekEntryOrOpen!0 key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(assert (=> d!55377 true))

(declare-fun _$34!1066 () Unit!5643)

(assert (=> d!55377 (= (choose!1004 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) key!828 (defaultEntry!3822 thiss!1248)) _$34!1066)))

(declare-fun b!187576 () Bool)

(declare-fun e!123459 () Bool)

(assert (=> b!187576 (= e!123458 e!123459)))

(declare-fun res!88707 () Bool)

(declare-fun call!18917 () Bool)

(assert (=> b!187576 (= res!88707 call!18917)))

(assert (=> b!187576 (=> (not res!88707) (not e!123459))))

(declare-fun b!187577 () Bool)

(declare-fun e!123457 () Bool)

(assert (=> b!187577 (= e!123457 ((_ is Undefined!657) lt!92883))))

(declare-fun b!187578 () Bool)

(declare-fun res!88708 () Bool)

(declare-fun e!123456 () Bool)

(assert (=> b!187578 (=> (not res!88708) (not e!123456))))

(assert (=> b!187578 (= res!88708 call!18917)))

(assert (=> b!187578 (= e!123457 e!123456)))

(declare-fun b!187579 () Bool)

(assert (=> b!187579 (= e!123458 e!123457)))

(declare-fun c!33672 () Bool)

(assert (=> b!187579 (= c!33672 ((_ is MissingVacant!657) lt!92883))))

(declare-fun bm!18913 () Bool)

(assert (=> bm!18913 (= call!18917 (inRange!0 (ite c!33671 (index!4798 lt!92883) (index!4801 lt!92883)) (mask!8967 thiss!1248)))))

(declare-fun b!187580 () Bool)

(declare-fun res!88709 () Bool)

(assert (=> b!187580 (=> (not res!88709) (not e!123456))))

(assert (=> b!187580 (= res!88709 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4801 lt!92883)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!18914 () Bool)

(declare-fun call!18916 () Bool)

(assert (=> bm!18914 (= call!18916 (arrayContainsKey!0 (_keys!5773 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!187581 () Bool)

(assert (=> b!187581 (= e!123459 (not call!18916))))

(declare-fun b!187582 () Bool)

(assert (=> b!187582 (= e!123456 (not call!18916))))

(declare-fun b!187583 () Bool)

(declare-fun res!88706 () Bool)

(assert (=> b!187583 (= res!88706 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4798 lt!92883)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187583 (=> (not res!88706) (not e!123459))))

(assert (= (and d!55377 c!33671) b!187576))

(assert (= (and d!55377 (not c!33671)) b!187579))

(assert (= (and b!187576 res!88707) b!187583))

(assert (= (and b!187583 res!88706) b!187581))

(assert (= (and b!187579 c!33672) b!187578))

(assert (= (and b!187579 (not c!33672)) b!187577))

(assert (= (and b!187578 res!88708) b!187580))

(assert (= (and b!187580 res!88709) b!187582))

(assert (= (or b!187576 b!187578) bm!18913))

(assert (= (or b!187581 b!187582) bm!18914))

(declare-fun m!214441 () Bool)

(assert (=> bm!18913 m!214441))

(declare-fun m!214443 () Bool)

(assert (=> b!187580 m!214443))

(assert (=> bm!18914 m!214195))

(declare-fun m!214445 () Bool)

(assert (=> b!187583 m!214445))

(assert (=> d!55377 m!214161))

(assert (=> d!55315 d!55377))

(assert (=> d!55315 d!55323))

(declare-fun d!55379 () Bool)

(assert (=> d!55379 (isDefined!181 (getValueByKey!227 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828))))

(declare-fun lt!92886 () Unit!5643)

(declare-fun choose!1008 (List!2402 (_ BitVec 64)) Unit!5643)

(assert (=> d!55379 (= lt!92886 (choose!1008 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828))))

(declare-fun e!123462 () Bool)

(assert (=> d!55379 e!123462))

(declare-fun res!88712 () Bool)

(assert (=> d!55379 (=> (not res!88712) (not e!123462))))

(declare-fun isStrictlySorted!346 (List!2402) Bool)

(assert (=> d!55379 (= res!88712 (isStrictlySorted!346 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))))))

(assert (=> d!55379 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!180 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828) lt!92886)))

(declare-fun b!187586 () Bool)

(assert (=> b!187586 (= e!123462 (containsKey!231 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828))))

(assert (= (and d!55379 res!88712) b!187586))

(assert (=> d!55379 m!214217))

(assert (=> d!55379 m!214217))

(assert (=> d!55379 m!214219))

(declare-fun m!214447 () Bool)

(assert (=> d!55379 m!214447))

(declare-fun m!214449 () Bool)

(assert (=> d!55379 m!214449))

(assert (=> b!187586 m!214213))

(assert (=> b!187388 d!55379))

(declare-fun d!55381 () Bool)

(declare-fun isEmpty!481 (Option!233) Bool)

(assert (=> d!55381 (= (isDefined!181 (getValueByKey!227 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828)) (not (isEmpty!481 (getValueByKey!227 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828))))))

(declare-fun bs!7571 () Bool)

(assert (= bs!7571 d!55381))

(assert (=> bs!7571 m!214217))

(declare-fun m!214451 () Bool)

(assert (=> bs!7571 m!214451))

(assert (=> b!187388 d!55381))

(declare-fun b!187598 () Bool)

(declare-fun e!123468 () Option!233)

(assert (=> b!187598 (= e!123468 None!231)))

(declare-fun b!187595 () Bool)

(declare-fun e!123467 () Option!233)

(assert (=> b!187595 (= e!123467 (Some!232 (_2!1747 (h!3033 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))))))))

(declare-fun b!187596 () Bool)

(assert (=> b!187596 (= e!123467 e!123468)))

(declare-fun c!33678 () Bool)

(assert (=> b!187596 (= c!33678 (and ((_ is Cons!2398) (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))) (not (= (_1!1747 (h!3033 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))))) key!828))))))

(declare-fun d!55383 () Bool)

(declare-fun c!33677 () Bool)

(assert (=> d!55383 (= c!33677 (and ((_ is Cons!2398) (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))) (= (_1!1747 (h!3033 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))))) key!828)))))

(assert (=> d!55383 (= (getValueByKey!227 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828) e!123467)))

(declare-fun b!187597 () Bool)

(assert (=> b!187597 (= e!123468 (getValueByKey!227 (t!7302 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))) key!828))))

(assert (= (and d!55383 c!33677) b!187595))

(assert (= (and d!55383 (not c!33677)) b!187596))

(assert (= (and b!187596 c!33678) b!187597))

(assert (= (and b!187596 (not c!33678)) b!187598))

(declare-fun m!214453 () Bool)

(assert (=> b!187597 m!214453))

(assert (=> b!187388 d!55383))

(declare-fun b!187611 () Bool)

(declare-fun e!123475 () SeekEntryResult!657)

(assert (=> b!187611 (= e!123475 (Found!657 (index!4800 lt!92809)))))

(declare-fun b!187612 () Bool)

(declare-fun c!33687 () Bool)

(declare-fun lt!92892 () (_ BitVec 64))

(assert (=> b!187612 (= c!33687 (= lt!92892 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!123477 () SeekEntryResult!657)

(assert (=> b!187612 (= e!123475 e!123477)))

(declare-fun b!187613 () Bool)

(declare-fun e!123476 () SeekEntryResult!657)

(assert (=> b!187613 (= e!123476 Undefined!657)))

(declare-fun b!187614 () Bool)

(assert (=> b!187614 (= e!123477 (MissingVacant!657 (index!4800 lt!92809)))))

(declare-fun b!187615 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!187615 (= e!123477 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20291 lt!92809) #b00000000000000000000000000000001) (nextIndex!0 (index!4800 lt!92809) (x!20291 lt!92809) (mask!8967 thiss!1248)) (index!4800 lt!92809) key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(declare-fun b!187616 () Bool)

(assert (=> b!187616 (= e!123476 e!123475)))

(declare-fun c!33686 () Bool)

(assert (=> b!187616 (= c!33686 (= lt!92892 key!828))))

(declare-fun lt!92891 () SeekEntryResult!657)

(declare-fun d!55385 () Bool)

(assert (=> d!55385 (and (or ((_ is Undefined!657) lt!92891) (not ((_ is Found!657) lt!92891)) (and (bvsge (index!4799 lt!92891) #b00000000000000000000000000000000) (bvslt (index!4799 lt!92891) (size!4084 (_keys!5773 thiss!1248))))) (or ((_ is Undefined!657) lt!92891) ((_ is Found!657) lt!92891) (not ((_ is MissingVacant!657) lt!92891)) (not (= (index!4801 lt!92891) (index!4800 lt!92809))) (and (bvsge (index!4801 lt!92891) #b00000000000000000000000000000000) (bvslt (index!4801 lt!92891) (size!4084 (_keys!5773 thiss!1248))))) (or ((_ is Undefined!657) lt!92891) (ite ((_ is Found!657) lt!92891) (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4799 lt!92891)) key!828) (and ((_ is MissingVacant!657) lt!92891) (= (index!4801 lt!92891) (index!4800 lt!92809)) (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4801 lt!92891)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!55385 (= lt!92891 e!123476)))

(declare-fun c!33685 () Bool)

(assert (=> d!55385 (= c!33685 (bvsge (x!20291 lt!92809) #b01111111111111111111111111111110))))

(assert (=> d!55385 (= lt!92892 (select (arr!3766 (_keys!5773 thiss!1248)) (index!4800 lt!92809)))))

(assert (=> d!55385 (validMask!0 (mask!8967 thiss!1248))))

(assert (=> d!55385 (= (seekKeyOrZeroReturnVacant!0 (x!20291 lt!92809) (index!4800 lt!92809) (index!4800 lt!92809) key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)) lt!92891)))

(assert (= (and d!55385 c!33685) b!187613))

(assert (= (and d!55385 (not c!33685)) b!187616))

(assert (= (and b!187616 c!33686) b!187611))

(assert (= (and b!187616 (not c!33686)) b!187612))

(assert (= (and b!187612 c!33687) b!187614))

(assert (= (and b!187612 (not c!33687)) b!187615))

(declare-fun m!214455 () Bool)

(assert (=> b!187615 m!214455))

(assert (=> b!187615 m!214455))

(declare-fun m!214457 () Bool)

(assert (=> b!187615 m!214457))

(declare-fun m!214459 () Bool)

(assert (=> d!55385 m!214459))

(declare-fun m!214461 () Bool)

(assert (=> d!55385 m!214461))

(assert (=> d!55385 m!214289))

(assert (=> d!55385 m!214147))

(assert (=> b!187473 d!55385))

(declare-fun b!187627 () Bool)

(declare-fun res!88723 () Bool)

(declare-fun e!123480 () Bool)

(assert (=> b!187627 (=> (not res!88723) (not e!123480))))

(declare-fun size!4088 (LongMapFixedSize!2604) (_ BitVec 32))

(assert (=> b!187627 (= res!88723 (= (size!4088 thiss!1248) (bvadd (_size!1351 thiss!1248) (bvsdiv (bvadd (extraKeys!3559 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!187628 () Bool)

(assert (=> b!187628 (= e!123480 (and (bvsge (extraKeys!3559 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3559 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1351 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!55387 () Bool)

(declare-fun res!88724 () Bool)

(assert (=> d!55387 (=> (not res!88724) (not e!123480))))

(assert (=> d!55387 (= res!88724 (validMask!0 (mask!8967 thiss!1248)))))

(assert (=> d!55387 (= (simpleValid!186 thiss!1248) e!123480)))

(declare-fun b!187625 () Bool)

(declare-fun res!88721 () Bool)

(assert (=> b!187625 (=> (not res!88721) (not e!123480))))

(assert (=> b!187625 (= res!88721 (and (= (size!4085 (_values!3805 thiss!1248)) (bvadd (mask!8967 thiss!1248) #b00000000000000000000000000000001)) (= (size!4084 (_keys!5773 thiss!1248)) (size!4085 (_values!3805 thiss!1248))) (bvsge (_size!1351 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1351 thiss!1248) (bvadd (mask!8967 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!187626 () Bool)

(declare-fun res!88722 () Bool)

(assert (=> b!187626 (=> (not res!88722) (not e!123480))))

(assert (=> b!187626 (= res!88722 (bvsge (size!4088 thiss!1248) (_size!1351 thiss!1248)))))

(assert (= (and d!55387 res!88724) b!187625))

(assert (= (and b!187625 res!88721) b!187626))

(assert (= (and b!187626 res!88722) b!187627))

(assert (= (and b!187627 res!88723) b!187628))

(declare-fun m!214463 () Bool)

(assert (=> b!187627 m!214463))

(assert (=> d!55387 m!214147))

(assert (=> b!187626 m!214463))

(assert (=> d!55317 d!55387))

(declare-fun d!55389 () Bool)

(assert (=> d!55389 (= (apply!171 lt!92786 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2168 (getValueByKey!227 (toList!1218 lt!92786) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7572 () Bool)

(assert (= bs!7572 d!55389))

(declare-fun m!214465 () Bool)

(assert (=> bs!7572 m!214465))

(assert (=> bs!7572 m!214465))

(declare-fun m!214467 () Bool)

(assert (=> bs!7572 m!214467))

(assert (=> b!187437 d!55389))

(declare-fun b!187637 () Bool)

(declare-fun e!123485 () (_ BitVec 32))

(declare-fun call!18920 () (_ BitVec 32))

(assert (=> b!187637 (= e!123485 (bvadd #b00000000000000000000000000000001 call!18920))))

(declare-fun b!187638 () Bool)

(declare-fun e!123486 () (_ BitVec 32))

(assert (=> b!187638 (= e!123486 #b00000000000000000000000000000000)))

(declare-fun d!55391 () Bool)

(declare-fun lt!92895 () (_ BitVec 32))

(assert (=> d!55391 (and (bvsge lt!92895 #b00000000000000000000000000000000) (bvsle lt!92895 (bvsub (size!4084 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55391 (= lt!92895 e!123486)))

(declare-fun c!33693 () Bool)

(assert (=> d!55391 (= c!33693 (bvsge #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> d!55391 (and (bvsle #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4084 (_keys!5773 thiss!1248)) (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> d!55391 (= (arrayCountValidKeys!0 (_keys!5773 thiss!1248) #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))) lt!92895)))

(declare-fun bm!18917 () Bool)

(assert (=> bm!18917 (= call!18920 (arrayCountValidKeys!0 (_keys!5773 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun b!187639 () Bool)

(assert (=> b!187639 (= e!123486 e!123485)))

(declare-fun c!33692 () Bool)

(assert (=> b!187639 (= c!33692 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187640 () Bool)

(assert (=> b!187640 (= e!123485 call!18920)))

(assert (= (and d!55391 c!33693) b!187638))

(assert (= (and d!55391 (not c!33693)) b!187639))

(assert (= (and b!187639 c!33692) b!187637))

(assert (= (and b!187639 (not c!33692)) b!187640))

(assert (= (or b!187637 b!187640) bm!18917))

(declare-fun m!214469 () Bool)

(assert (=> bm!18917 m!214469))

(assert (=> b!187639 m!214227))

(assert (=> b!187639 m!214227))

(assert (=> b!187639 m!214229))

(assert (=> b!187379 d!55391))

(assert (=> b!187390 d!55381))

(assert (=> b!187390 d!55383))

(assert (=> bm!18900 d!55351))

(declare-fun d!55393 () Bool)

(declare-fun e!123488 () Bool)

(assert (=> d!55393 e!123488))

(declare-fun res!88725 () Bool)

(assert (=> d!55393 (=> res!88725 e!123488)))

(declare-fun lt!92897 () Bool)

(assert (=> d!55393 (= res!88725 (not lt!92897))))

(declare-fun lt!92899 () Bool)

(assert (=> d!55393 (= lt!92897 lt!92899)))

(declare-fun lt!92896 () Unit!5643)

(declare-fun e!123487 () Unit!5643)

(assert (=> d!55393 (= lt!92896 e!123487)))

(declare-fun c!33694 () Bool)

(assert (=> d!55393 (= c!33694 lt!92899)))

(assert (=> d!55393 (= lt!92899 (containsKey!231 (toList!1218 lt!92786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55393 (= (contains!1312 lt!92786 #b0000000000000000000000000000000000000000000000000000000000000000) lt!92897)))

(declare-fun b!187641 () Bool)

(declare-fun lt!92898 () Unit!5643)

(assert (=> b!187641 (= e!123487 lt!92898)))

(assert (=> b!187641 (= lt!92898 (lemmaContainsKeyImpliesGetValueByKeyDefined!180 (toList!1218 lt!92786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187641 (isDefined!181 (getValueByKey!227 (toList!1218 lt!92786) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187642 () Bool)

(declare-fun Unit!5652 () Unit!5643)

(assert (=> b!187642 (= e!123487 Unit!5652)))

(declare-fun b!187643 () Bool)

(assert (=> b!187643 (= e!123488 (isDefined!181 (getValueByKey!227 (toList!1218 lt!92786) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55393 c!33694) b!187641))

(assert (= (and d!55393 (not c!33694)) b!187642))

(assert (= (and d!55393 (not res!88725)) b!187643))

(declare-fun m!214471 () Bool)

(assert (=> d!55393 m!214471))

(declare-fun m!214473 () Bool)

(assert (=> b!187641 m!214473))

(declare-fun m!214475 () Bool)

(assert (=> b!187641 m!214475))

(assert (=> b!187641 m!214475))

(declare-fun m!214477 () Bool)

(assert (=> b!187641 m!214477))

(assert (=> b!187643 m!214475))

(assert (=> b!187643 m!214475))

(assert (=> b!187643 m!214477))

(assert (=> bm!18901 d!55393))

(assert (=> b!187452 d!55375))

(declare-fun d!55395 () Bool)

(declare-fun e!123490 () Bool)

(assert (=> d!55395 e!123490))

(declare-fun res!88726 () Bool)

(assert (=> d!55395 (=> res!88726 e!123490)))

(declare-fun lt!92901 () Bool)

(assert (=> d!55395 (= res!88726 (not lt!92901))))

(declare-fun lt!92903 () Bool)

(assert (=> d!55395 (= lt!92901 lt!92903)))

(declare-fun lt!92900 () Unit!5643)

(declare-fun e!123489 () Unit!5643)

(assert (=> d!55395 (= lt!92900 e!123489)))

(declare-fun c!33695 () Bool)

(assert (=> d!55395 (= c!33695 lt!92903)))

(assert (=> d!55395 (= lt!92903 (containsKey!231 (toList!1218 lt!92786) (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!55395 (= (contains!1312 lt!92786 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)) lt!92901)))

(declare-fun b!187644 () Bool)

(declare-fun lt!92902 () Unit!5643)

(assert (=> b!187644 (= e!123489 lt!92902)))

(assert (=> b!187644 (= lt!92902 (lemmaContainsKeyImpliesGetValueByKeyDefined!180 (toList!1218 lt!92786) (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!187644 (isDefined!181 (getValueByKey!227 (toList!1218 lt!92786) (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187645 () Bool)

(declare-fun Unit!5653 () Unit!5643)

(assert (=> b!187645 (= e!123489 Unit!5653)))

(declare-fun b!187646 () Bool)

(assert (=> b!187646 (= e!123490 (isDefined!181 (getValueByKey!227 (toList!1218 lt!92786) (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!55395 c!33695) b!187644))

(assert (= (and d!55395 (not c!33695)) b!187645))

(assert (= (and d!55395 (not res!88726)) b!187646))

(assert (=> d!55395 m!214227))

(declare-fun m!214479 () Bool)

(assert (=> d!55395 m!214479))

(assert (=> b!187644 m!214227))

(declare-fun m!214481 () Bool)

(assert (=> b!187644 m!214481))

(assert (=> b!187644 m!214227))

(assert (=> b!187644 m!214433))

(assert (=> b!187644 m!214433))

(declare-fun m!214483 () Bool)

(assert (=> b!187644 m!214483))

(assert (=> b!187646 m!214227))

(assert (=> b!187646 m!214433))

(assert (=> b!187646 m!214433))

(assert (=> b!187646 m!214483))

(assert (=> b!187442 d!55395))

(declare-fun d!55397 () Bool)

(declare-fun e!123491 () Bool)

(assert (=> d!55397 e!123491))

(declare-fun res!88728 () Bool)

(assert (=> d!55397 (=> (not res!88728) (not e!123491))))

(declare-fun lt!92907 () ListLongMap!2405)

(assert (=> d!55397 (= res!88728 (contains!1312 lt!92907 (_1!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))))))

(declare-fun lt!92906 () List!2402)

(assert (=> d!55397 (= lt!92907 (ListLongMap!2406 lt!92906))))

(declare-fun lt!92904 () Unit!5643)

(declare-fun lt!92905 () Unit!5643)

(assert (=> d!55397 (= lt!92904 lt!92905)))

(assert (=> d!55397 (= (getValueByKey!227 lt!92906 (_1!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))))))

(assert (=> d!55397 (= lt!92905 (lemmaContainsTupThenGetReturnValue!120 lt!92906 (_1!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))))))

(assert (=> d!55397 (= lt!92906 (insertStrictlySorted!122 (toList!1218 call!18903) (_1!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))) (_2!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))))))

(assert (=> d!55397 (= (+!286 call!18903 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))) lt!92907)))

(declare-fun b!187647 () Bool)

(declare-fun res!88727 () Bool)

(assert (=> b!187647 (=> (not res!88727) (not e!123491))))

(assert (=> b!187647 (= res!88727 (= (getValueByKey!227 (toList!1218 lt!92907) (_1!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248)))) (Some!232 (_2!1747 (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))))))

(declare-fun b!187648 () Bool)

(assert (=> b!187648 (= e!123491 (contains!1313 (toList!1218 lt!92907) (tuple2!3475 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3663 thiss!1248))))))

(assert (= (and d!55397 res!88728) b!187647))

(assert (= (and b!187647 res!88727) b!187648))

(declare-fun m!214485 () Bool)

(assert (=> d!55397 m!214485))

(declare-fun m!214487 () Bool)

(assert (=> d!55397 m!214487))

(declare-fun m!214489 () Bool)

(assert (=> d!55397 m!214489))

(declare-fun m!214491 () Bool)

(assert (=> d!55397 m!214491))

(declare-fun m!214493 () Bool)

(assert (=> b!187647 m!214493))

(declare-fun m!214495 () Bool)

(assert (=> b!187648 m!214495))

(assert (=> b!187443 d!55397))

(declare-fun d!55399 () Bool)

(assert (=> d!55399 (= (apply!171 lt!92786 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2168 (getValueByKey!227 (toList!1218 lt!92786) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7573 () Bool)

(assert (= bs!7573 d!55399))

(assert (=> bs!7573 m!214475))

(assert (=> bs!7573 m!214475))

(declare-fun m!214497 () Bool)

(assert (=> bs!7573 m!214497))

(assert (=> b!187439 d!55399))

(declare-fun b!187657 () Bool)

(declare-fun e!123499 () Bool)

(declare-fun e!123500 () Bool)

(assert (=> b!187657 (= e!123499 e!123500)))

(declare-fun lt!92916 () (_ BitVec 64))

(assert (=> b!187657 (= lt!92916 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92915 () Unit!5643)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7982 (_ BitVec 64) (_ BitVec 32)) Unit!5643)

(assert (=> b!187657 (= lt!92915 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5773 thiss!1248) lt!92916 #b00000000000000000000000000000000))))

(assert (=> b!187657 (arrayContainsKey!0 (_keys!5773 thiss!1248) lt!92916 #b00000000000000000000000000000000)))

(declare-fun lt!92914 () Unit!5643)

(assert (=> b!187657 (= lt!92914 lt!92915)))

(declare-fun res!88733 () Bool)

(assert (=> b!187657 (= res!88733 (= (seekEntryOrOpen!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000) (_keys!5773 thiss!1248) (mask!8967 thiss!1248)) (Found!657 #b00000000000000000000000000000000)))))

(assert (=> b!187657 (=> (not res!88733) (not e!123500))))

(declare-fun b!187658 () Bool)

(declare-fun e!123498 () Bool)

(assert (=> b!187658 (= e!123498 e!123499)))

(declare-fun c!33698 () Bool)

(assert (=> b!187658 (= c!33698 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18920 () Bool)

(declare-fun call!18923 () Bool)

(assert (=> bm!18920 (= call!18923 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(declare-fun b!187659 () Bool)

(assert (=> b!187659 (= e!123499 call!18923)))

(declare-fun b!187660 () Bool)

(assert (=> b!187660 (= e!123500 call!18923)))

(declare-fun d!55401 () Bool)

(declare-fun res!88734 () Bool)

(assert (=> d!55401 (=> res!88734 e!123498)))

(assert (=> d!55401 (= res!88734 (bvsge #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> d!55401 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)) e!123498)))

(assert (= (and d!55401 (not res!88734)) b!187658))

(assert (= (and b!187658 c!33698) b!187657))

(assert (= (and b!187658 (not c!33698)) b!187659))

(assert (= (and b!187657 res!88733) b!187660))

(assert (= (or b!187660 b!187659) bm!18920))

(assert (=> b!187657 m!214227))

(declare-fun m!214499 () Bool)

(assert (=> b!187657 m!214499))

(declare-fun m!214501 () Bool)

(assert (=> b!187657 m!214501))

(assert (=> b!187657 m!214227))

(declare-fun m!214503 () Bool)

(assert (=> b!187657 m!214503))

(assert (=> b!187658 m!214227))

(assert (=> b!187658 m!214227))

(assert (=> b!187658 m!214229))

(declare-fun m!214505 () Bool)

(assert (=> bm!18920 m!214505))

(assert (=> b!187380 d!55401))

(declare-fun b!187671 () Bool)

(declare-fun e!123512 () Bool)

(declare-fun call!18926 () Bool)

(assert (=> b!187671 (= e!123512 call!18926)))

(declare-fun bm!18923 () Bool)

(declare-fun c!33701 () Bool)

(assert (=> bm!18923 (= call!18926 (arrayNoDuplicates!0 (_keys!5773 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33701 (Cons!2399 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000) Nil!2400) Nil!2400)))))

(declare-fun b!187672 () Bool)

(declare-fun e!123509 () Bool)

(assert (=> b!187672 (= e!123509 e!123512)))

(assert (=> b!187672 (= c!33701 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!187673 () Bool)

(assert (=> b!187673 (= e!123512 call!18926)))

(declare-fun b!187674 () Bool)

(declare-fun e!123511 () Bool)

(declare-fun contains!1314 (List!2403 (_ BitVec 64)) Bool)

(assert (=> b!187674 (= e!123511 (contains!1314 Nil!2400 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!55403 () Bool)

(declare-fun res!88741 () Bool)

(declare-fun e!123510 () Bool)

(assert (=> d!55403 (=> res!88741 e!123510)))

(assert (=> d!55403 (= res!88741 (bvsge #b00000000000000000000000000000000 (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> d!55403 (= (arrayNoDuplicates!0 (_keys!5773 thiss!1248) #b00000000000000000000000000000000 Nil!2400) e!123510)))

(declare-fun b!187675 () Bool)

(assert (=> b!187675 (= e!123510 e!123509)))

(declare-fun res!88742 () Bool)

(assert (=> b!187675 (=> (not res!88742) (not e!123509))))

(assert (=> b!187675 (= res!88742 (not e!123511))))

(declare-fun res!88743 () Bool)

(assert (=> b!187675 (=> (not res!88743) (not e!123511))))

(assert (=> b!187675 (= res!88743 (validKeyInArray!0 (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55403 (not res!88741)) b!187675))

(assert (= (and b!187675 res!88743) b!187674))

(assert (= (and b!187675 res!88742) b!187672))

(assert (= (and b!187672 c!33701) b!187673))

(assert (= (and b!187672 (not c!33701)) b!187671))

(assert (= (or b!187673 b!187671) bm!18923))

(assert (=> bm!18923 m!214227))

(declare-fun m!214507 () Bool)

(assert (=> bm!18923 m!214507))

(assert (=> b!187672 m!214227))

(assert (=> b!187672 m!214227))

(assert (=> b!187672 m!214229))

(assert (=> b!187674 m!214227))

(assert (=> b!187674 m!214227))

(declare-fun m!214509 () Bool)

(assert (=> b!187674 m!214509))

(assert (=> b!187675 m!214227))

(assert (=> b!187675 m!214227))

(assert (=> b!187675 m!214229))

(assert (=> b!187381 d!55403))

(declare-fun d!55405 () Bool)

(assert (=> d!55405 (= (inRange!0 (index!4799 lt!92816) (mask!8967 thiss!1248)) (and (bvsge (index!4799 lt!92816) #b00000000000000000000000000000000) (bvslt (index!4799 lt!92816) (bvadd (mask!8967 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!187478 d!55405))

(declare-fun d!55407 () Bool)

(declare-fun e!123514 () Bool)

(assert (=> d!55407 e!123514))

(declare-fun res!88744 () Bool)

(assert (=> d!55407 (=> res!88744 e!123514)))

(declare-fun lt!92918 () Bool)

(assert (=> d!55407 (= res!88744 (not lt!92918))))

(declare-fun lt!92920 () Bool)

(assert (=> d!55407 (= lt!92918 lt!92920)))

(declare-fun lt!92917 () Unit!5643)

(declare-fun e!123513 () Unit!5643)

(assert (=> d!55407 (= lt!92917 e!123513)))

(declare-fun c!33702 () Bool)

(assert (=> d!55407 (= c!33702 lt!92920)))

(assert (=> d!55407 (= lt!92920 (containsKey!231 (toList!1218 lt!92786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!55407 (= (contains!1312 lt!92786 #b1000000000000000000000000000000000000000000000000000000000000000) lt!92918)))

(declare-fun b!187676 () Bool)

(declare-fun lt!92919 () Unit!5643)

(assert (=> b!187676 (= e!123513 lt!92919)))

(assert (=> b!187676 (= lt!92919 (lemmaContainsKeyImpliesGetValueByKeyDefined!180 (toList!1218 lt!92786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187676 (isDefined!181 (getValueByKey!227 (toList!1218 lt!92786) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187677 () Bool)

(declare-fun Unit!5654 () Unit!5643)

(assert (=> b!187677 (= e!123513 Unit!5654)))

(declare-fun b!187678 () Bool)

(assert (=> b!187678 (= e!123514 (isDefined!181 (getValueByKey!227 (toList!1218 lt!92786) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!55407 c!33702) b!187676))

(assert (= (and d!55407 (not c!33702)) b!187677))

(assert (= (and d!55407 (not res!88744)) b!187678))

(declare-fun m!214511 () Bool)

(assert (=> d!55407 m!214511))

(declare-fun m!214513 () Bool)

(assert (=> b!187676 m!214513))

(assert (=> b!187676 m!214465))

(assert (=> b!187676 m!214465))

(declare-fun m!214515 () Bool)

(assert (=> b!187676 m!214515))

(assert (=> b!187678 m!214465))

(assert (=> b!187678 m!214465))

(assert (=> b!187678 m!214515))

(assert (=> bm!18903 d!55407))

(assert (=> d!55327 d!55323))

(declare-fun b!187697 () Bool)

(declare-fun e!123527 () Bool)

(declare-fun e!123525 () Bool)

(assert (=> b!187697 (= e!123527 e!123525)))

(declare-fun res!88753 () Bool)

(declare-fun lt!92925 () SeekEntryResult!657)

(assert (=> b!187697 (= res!88753 (and ((_ is Intermediate!657) lt!92925) (not (undefined!1469 lt!92925)) (bvslt (x!20291 lt!92925) #b01111111111111111111111111111110) (bvsge (x!20291 lt!92925) #b00000000000000000000000000000000) (bvsge (x!20291 lt!92925) #b00000000000000000000000000000000)))))

(assert (=> b!187697 (=> (not res!88753) (not e!123525))))

(declare-fun d!55409 () Bool)

(assert (=> d!55409 e!123527))

(declare-fun c!33711 () Bool)

(assert (=> d!55409 (= c!33711 (and ((_ is Intermediate!657) lt!92925) (undefined!1469 lt!92925)))))

(declare-fun e!123526 () SeekEntryResult!657)

(assert (=> d!55409 (= lt!92925 e!123526)))

(declare-fun c!33709 () Bool)

(assert (=> d!55409 (= c!33709 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!92926 () (_ BitVec 64))

(assert (=> d!55409 (= lt!92926 (select (arr!3766 (_keys!5773 thiss!1248)) (toIndex!0 key!828 (mask!8967 thiss!1248))))))

(assert (=> d!55409 (validMask!0 (mask!8967 thiss!1248))))

(assert (=> d!55409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8967 thiss!1248)) key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)) lt!92925)))

(declare-fun b!187698 () Bool)

(assert (=> b!187698 (= e!123527 (bvsge (x!20291 lt!92925) #b01111111111111111111111111111110))))

(declare-fun b!187699 () Bool)

(assert (=> b!187699 (and (bvsge (index!4800 lt!92925) #b00000000000000000000000000000000) (bvslt (index!4800 lt!92925) (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun res!88752 () Bool)

(assert (=> b!187699 (= res!88752 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4800 lt!92925)) key!828))))

(declare-fun e!123528 () Bool)

(assert (=> b!187699 (=> res!88752 e!123528)))

(assert (=> b!187699 (= e!123525 e!123528)))

(declare-fun b!187700 () Bool)

(declare-fun e!123529 () SeekEntryResult!657)

(assert (=> b!187700 (= e!123529 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8967 thiss!1248)) #b00000000000000000000000000000000 (mask!8967 thiss!1248)) key!828 (_keys!5773 thiss!1248) (mask!8967 thiss!1248)))))

(declare-fun b!187701 () Bool)

(assert (=> b!187701 (= e!123526 (Intermediate!657 true (toIndex!0 key!828 (mask!8967 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!187702 () Bool)

(assert (=> b!187702 (and (bvsge (index!4800 lt!92925) #b00000000000000000000000000000000) (bvslt (index!4800 lt!92925) (size!4084 (_keys!5773 thiss!1248))))))

(assert (=> b!187702 (= e!123528 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4800 lt!92925)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!187703 () Bool)

(assert (=> b!187703 (= e!123529 (Intermediate!657 false (toIndex!0 key!828 (mask!8967 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!187704 () Bool)

(assert (=> b!187704 (= e!123526 e!123529)))

(declare-fun c!33710 () Bool)

(assert (=> b!187704 (= c!33710 (or (= lt!92926 key!828) (= (bvadd lt!92926 lt!92926) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!187705 () Bool)

(assert (=> b!187705 (and (bvsge (index!4800 lt!92925) #b00000000000000000000000000000000) (bvslt (index!4800 lt!92925) (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun res!88751 () Bool)

(assert (=> b!187705 (= res!88751 (= (select (arr!3766 (_keys!5773 thiss!1248)) (index!4800 lt!92925)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!187705 (=> res!88751 e!123528)))

(assert (= (and d!55409 c!33709) b!187701))

(assert (= (and d!55409 (not c!33709)) b!187704))

(assert (= (and b!187704 c!33710) b!187703))

(assert (= (and b!187704 (not c!33710)) b!187700))

(assert (= (and d!55409 c!33711) b!187698))

(assert (= (and d!55409 (not c!33711)) b!187697))

(assert (= (and b!187697 res!88753) b!187699))

(assert (= (and b!187699 (not res!88752)) b!187705))

(assert (= (and b!187705 (not res!88751)) b!187702))

(declare-fun m!214517 () Bool)

(assert (=> b!187699 m!214517))

(assert (=> d!55409 m!214279))

(declare-fun m!214519 () Bool)

(assert (=> d!55409 m!214519))

(assert (=> d!55409 m!214147))

(assert (=> b!187702 m!214517))

(assert (=> b!187700 m!214279))

(declare-fun m!214521 () Bool)

(assert (=> b!187700 m!214521))

(assert (=> b!187700 m!214521))

(declare-fun m!214523 () Bool)

(assert (=> b!187700 m!214523))

(assert (=> b!187705 m!214517))

(assert (=> d!55329 d!55409))

(declare-fun d!55411 () Bool)

(declare-fun lt!92932 () (_ BitVec 32))

(declare-fun lt!92931 () (_ BitVec 32))

(assert (=> d!55411 (= lt!92932 (bvmul (bvxor lt!92931 (bvlshr lt!92931 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!55411 (= lt!92931 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!55411 (and (bvsge (mask!8967 thiss!1248) #b00000000000000000000000000000000) (let ((res!88754 (let ((h!3035 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20310 (bvmul (bvxor h!3035 (bvlshr h!3035 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20310 (bvlshr x!20310 #b00000000000000000000000000001101)) (mask!8967 thiss!1248)))))) (and (bvslt res!88754 (bvadd (mask!8967 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!88754 #b00000000000000000000000000000000))))))

(assert (=> d!55411 (= (toIndex!0 key!828 (mask!8967 thiss!1248)) (bvand (bvxor lt!92932 (bvlshr lt!92932 #b00000000000000000000000000001101)) (mask!8967 thiss!1248)))))

(assert (=> d!55329 d!55411))

(assert (=> d!55329 d!55323))

(declare-fun d!55413 () Bool)

(declare-fun res!88759 () Bool)

(declare-fun e!123534 () Bool)

(assert (=> d!55413 (=> res!88759 e!123534)))

(assert (=> d!55413 (= res!88759 (= (select (arr!3766 (_keys!5773 thiss!1248)) #b00000000000000000000000000000000) key!828))))

(assert (=> d!55413 (= (arrayContainsKey!0 (_keys!5773 thiss!1248) key!828 #b00000000000000000000000000000000) e!123534)))

(declare-fun b!187710 () Bool)

(declare-fun e!123535 () Bool)

(assert (=> b!187710 (= e!123534 e!123535)))

(declare-fun res!88760 () Bool)

(assert (=> b!187710 (=> (not res!88760) (not e!123535))))

(assert (=> b!187710 (= res!88760 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4084 (_keys!5773 thiss!1248))))))

(declare-fun b!187711 () Bool)

(assert (=> b!187711 (= e!123535 (arrayContainsKey!0 (_keys!5773 thiss!1248) key!828 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!55413 (not res!88759)) b!187710))

(assert (= (and b!187710 res!88760) b!187711))

(assert (=> d!55413 m!214227))

(declare-fun m!214525 () Bool)

(assert (=> b!187711 m!214525))

(assert (=> bm!18883 d!55413))

(declare-fun d!55415 () Bool)

(declare-fun res!88765 () Bool)

(declare-fun e!123540 () Bool)

(assert (=> d!55415 (=> res!88765 e!123540)))

(assert (=> d!55415 (= res!88765 (and ((_ is Cons!2398) (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))) (= (_1!1747 (h!3033 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))))) key!828)))))

(assert (=> d!55415 (= (containsKey!231 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))) key!828) e!123540)))

(declare-fun b!187716 () Bool)

(declare-fun e!123541 () Bool)

(assert (=> b!187716 (= e!123540 e!123541)))

(declare-fun res!88766 () Bool)

(assert (=> b!187716 (=> (not res!88766) (not e!123541))))

(assert (=> b!187716 (= res!88766 (and (or (not ((_ is Cons!2398) (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))))) (bvsle (_1!1747 (h!3033 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))))) key!828)) ((_ is Cons!2398) (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))) (bvslt (_1!1747 (h!3033 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248))))) key!828)))))

(declare-fun b!187717 () Bool)

(assert (=> b!187717 (= e!123541 (containsKey!231 (t!7302 (toList!1218 (getCurrentListMap!861 (_keys!5773 thiss!1248) (_values!3805 thiss!1248) (mask!8967 thiss!1248) (extraKeys!3559 thiss!1248) (zeroValue!3663 thiss!1248) (minValue!3663 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3822 thiss!1248)))) key!828))))

(assert (= (and d!55415 (not res!88765)) b!187716))

(assert (= (and b!187716 res!88766) b!187717))

(declare-fun m!214527 () Bool)

(assert (=> b!187717 m!214527))

(assert (=> d!55325 d!55415))

(declare-fun d!55417 () Bool)

(assert (=> d!55417 (= (inRange!0 (ite c!33619 (index!4798 lt!92723) (index!4801 lt!92723)) (mask!8967 thiss!1248)) (and (bvsge (ite c!33619 (index!4798 lt!92723) (index!4801 lt!92723)) #b00000000000000000000000000000000) (bvslt (ite c!33619 (index!4798 lt!92723) (index!4801 lt!92723)) (bvadd (mask!8967 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> bm!18884 d!55417))

(declare-fun b!187719 () Bool)

(declare-fun e!123542 () Bool)

(assert (=> b!187719 (= e!123542 tp_is_empty!4383)))

(declare-fun mapIsEmpty!7557 () Bool)

(declare-fun mapRes!7557 () Bool)

(assert (=> mapIsEmpty!7557 mapRes!7557))

(declare-fun condMapEmpty!7557 () Bool)

(declare-fun mapDefault!7557 () ValueCell!1848)

(assert (=> mapNonEmpty!7556 (= condMapEmpty!7557 (= mapRest!7556 ((as const (Array (_ BitVec 32) ValueCell!1848)) mapDefault!7557)))))

(assert (=> mapNonEmpty!7556 (= tp!16655 (and e!123542 mapRes!7557))))

(declare-fun b!187718 () Bool)

(declare-fun e!123543 () Bool)

(assert (=> b!187718 (= e!123543 tp_is_empty!4383)))

(declare-fun mapNonEmpty!7557 () Bool)

(declare-fun tp!16656 () Bool)

(assert (=> mapNonEmpty!7557 (= mapRes!7557 (and tp!16656 e!123543))))

(declare-fun mapRest!7557 () (Array (_ BitVec 32) ValueCell!1848))

(declare-fun mapKey!7557 () (_ BitVec 32))

(declare-fun mapValue!7557 () ValueCell!1848)

(assert (=> mapNonEmpty!7557 (= mapRest!7556 (store mapRest!7557 mapKey!7557 mapValue!7557))))

(assert (= (and mapNonEmpty!7556 condMapEmpty!7557) mapIsEmpty!7557))

(assert (= (and mapNonEmpty!7556 (not condMapEmpty!7557)) mapNonEmpty!7557))

(assert (= (and mapNonEmpty!7557 ((_ is ValueCellFull!1848) mapValue!7557)) b!187718))

(assert (= (and mapNonEmpty!7556 ((_ is ValueCellFull!1848) mapDefault!7557)) b!187719))

(declare-fun m!214529 () Bool)

(assert (=> mapNonEmpty!7557 m!214529))

(declare-fun b_lambda!7325 () Bool)

(assert (= b_lambda!7321 (or (and b!187309 b_free!4611) b_lambda!7325)))

(declare-fun b_lambda!7327 () Bool)

(assert (= b_lambda!7323 (or (and b!187309 b_free!4611) b_lambda!7327)))

(check-sat (not b!187615) (not b!187535) (not b!187674) (not d!55363) (not b!187492) (not d!55367) (not b!187543) (not d!55335) (not d!55355) (not d!55397) (not b!187552) (not b!187657) (not d!55351) (not d!55393) (not b!187672) (not b!187644) (not b!187643) (not b!187675) (not b!187536) (not bm!18913) (not b!187550) (not d!55343) (not bm!18917) (not d!55353) (not b!187597) (not d!55337) (not d!55365) (not d!55409) (not d!55407) (not bm!18908) (not d!55385) (not bm!18914) (not d!55359) (not d!55345) (not b!187658) (not b!187551) (not b!187504) (not b!187711) (not b_lambda!7319) (not d!55387) (not d!55379) (not b!187717) (not b!187498) (not d!55381) (not d!55369) (not mapNonEmpty!7557) b_and!11255 (not b!187505) (not b!187700) (not d!55395) (not d!55357) (not b!187548) (not b!187558) (not b!187627) (not b!187639) (not b!187586) (not b!187559) (not b!187506) (not b!187647) tp_is_empty!4383 (not d!55361) (not d!55399) (not d!55371) (not b!187538) (not b!187648) (not b!187549) (not b!187641) (not b!187547) (not b!187534) (not b_lambda!7327) (not b_lambda!7325) (not d!55377) (not b!187646) (not d!55339) (not b!187508) (not d!55341) (not b!187544) (not d!55347) (not b!187626) (not b!187540) (not bm!18920) (not b_next!4611) (not b!187541) (not d!55349) (not b!187676) (not b!187678) (not d!55389) (not b!187499) (not bm!18923))
(check-sat b_and!11255 (not b_next!4611))
