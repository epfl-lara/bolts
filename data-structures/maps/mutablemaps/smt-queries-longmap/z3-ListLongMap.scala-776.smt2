; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18398 () Bool)

(assert start!18398)

(declare-fun b!182330 () Bool)

(declare-fun b_free!4497 () Bool)

(declare-fun b_next!4497 () Bool)

(assert (=> b!182330 (= b_free!4497 (not b_next!4497))))

(declare-fun tp!16250 () Bool)

(declare-fun b_and!11077 () Bool)

(assert (=> b!182330 (= tp!16250 b_and!11077)))

(declare-fun b!182328 () Bool)

(declare-fun res!86305 () Bool)

(declare-fun e!120074 () Bool)

(assert (=> b!182328 (=> (not res!86305) (not e!120074))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!182328 (= res!86305 (not (= key!828 (bvneg key!828))))))

(declare-fun b!182329 () Bool)

(declare-fun e!120071 () Bool)

(declare-fun tp_is_empty!4269 () Bool)

(assert (=> b!182329 (= e!120071 tp_is_empty!4269)))

(declare-fun mapIsEmpty!7325 () Bool)

(declare-fun mapRes!7325 () Bool)

(assert (=> mapIsEmpty!7325 mapRes!7325))

(declare-datatypes ((V!5339 0))(
  ( (V!5340 (val!2179 Int)) )
))
(declare-datatypes ((ValueCell!1791 0))(
  ( (ValueCellFull!1791 (v!4074 V!5339)) (EmptyCell!1791) )
))
(declare-datatypes ((array!7722 0))(
  ( (array!7723 (arr!3652 (Array (_ BitVec 32) (_ BitVec 64))) (size!3964 (_ BitVec 32))) )
))
(declare-datatypes ((array!7724 0))(
  ( (array!7725 (arr!3653 (Array (_ BitVec 32) ValueCell!1791)) (size!3965 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2490 0))(
  ( (LongMapFixedSize!2491 (defaultEntry!3731 Int) (mask!8772 (_ BitVec 32)) (extraKeys!3468 (_ BitVec 32)) (zeroValue!3572 V!5339) (minValue!3572 V!5339) (_size!1294 (_ BitVec 32)) (_keys!5642 array!7722) (_values!3714 array!7724) (_vacant!1294 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2490)

(declare-fun e!120072 () Bool)

(declare-fun e!120073 () Bool)

(declare-fun array_inv!2345 (array!7722) Bool)

(declare-fun array_inv!2346 (array!7724) Bool)

(assert (=> b!182330 (= e!120073 (and tp!16250 tp_is_empty!4269 (array_inv!2345 (_keys!5642 thiss!1248)) (array_inv!2346 (_values!3714 thiss!1248)) e!120072))))

(declare-fun b!182331 () Bool)

(declare-fun e!120076 () Bool)

(assert (=> b!182331 (= e!120076 tp_is_empty!4269)))

(declare-fun b!182332 () Bool)

(declare-fun res!86302 () Bool)

(declare-fun e!120070 () Bool)

(assert (=> b!182332 (=> (not res!86302) (not e!120070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!182332 (= res!86302 (validMask!0 (mask!8772 thiss!1248)))))

(declare-fun b!182333 () Bool)

(assert (=> b!182333 (= e!120074 e!120070)))

(declare-fun res!86307 () Bool)

(assert (=> b!182333 (=> (not res!86307) (not e!120070))))

(declare-datatypes ((SeekEntryResult!615 0))(
  ( (MissingZero!615 (index!4630 (_ BitVec 32))) (Found!615 (index!4631 (_ BitVec 32))) (Intermediate!615 (undefined!1427 Bool) (index!4632 (_ BitVec 32)) (x!19889 (_ BitVec 32))) (Undefined!615) (MissingVacant!615 (index!4633 (_ BitVec 32))) )
))
(declare-fun lt!90215 () SeekEntryResult!615)

(get-info :version)

(assert (=> b!182333 (= res!86307 (and (not ((_ is Undefined!615) lt!90215)) (not ((_ is MissingVacant!615) lt!90215)) (not ((_ is MissingZero!615) lt!90215)) ((_ is Found!615) lt!90215)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7722 (_ BitVec 32)) SeekEntryResult!615)

(assert (=> b!182333 (= lt!90215 (seekEntryOrOpen!0 key!828 (_keys!5642 thiss!1248) (mask!8772 thiss!1248)))))

(declare-fun b!182334 () Bool)

(declare-fun res!86303 () Bool)

(assert (=> b!182334 (=> (not res!86303) (not e!120070))))

(declare-datatypes ((tuple2!3392 0))(
  ( (tuple2!3393 (_1!1706 (_ BitVec 64)) (_2!1706 V!5339)) )
))
(declare-datatypes ((List!2335 0))(
  ( (Nil!2332) (Cons!2331 (h!2960 tuple2!3392) (t!7203 List!2335)) )
))
(declare-datatypes ((ListLongMap!2323 0))(
  ( (ListLongMap!2324 (toList!1177 List!2335)) )
))
(declare-fun contains!1255 (ListLongMap!2323 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!820 (array!7722 array!7724 (_ BitVec 32) (_ BitVec 32) V!5339 V!5339 (_ BitVec 32) Int) ListLongMap!2323)

(assert (=> b!182334 (= res!86303 (contains!1255 (getCurrentListMap!820 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)) key!828))))

(declare-fun res!86306 () Bool)

(assert (=> start!18398 (=> (not res!86306) (not e!120074))))

(declare-fun valid!1023 (LongMapFixedSize!2490) Bool)

(assert (=> start!18398 (= res!86306 (valid!1023 thiss!1248))))

(assert (=> start!18398 e!120074))

(assert (=> start!18398 e!120073))

(assert (=> start!18398 true))

(declare-fun b!182335 () Bool)

(declare-fun res!86304 () Bool)

(assert (=> b!182335 (=> (not res!86304) (not e!120070))))

(assert (=> b!182335 (= res!86304 (and (= (size!3965 (_values!3714 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8772 thiss!1248))) (= (size!3964 (_keys!5642 thiss!1248)) (size!3965 (_values!3714 thiss!1248))) (bvsge (mask!8772 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3468 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3468 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!182336 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7722 (_ BitVec 32)) Bool)

(assert (=> b!182336 (= e!120070 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5642 thiss!1248) (mask!8772 thiss!1248))))))

(declare-fun b!182337 () Bool)

(assert (=> b!182337 (= e!120072 (and e!120076 mapRes!7325))))

(declare-fun condMapEmpty!7325 () Bool)

(declare-fun mapDefault!7325 () ValueCell!1791)

(assert (=> b!182337 (= condMapEmpty!7325 (= (arr!3653 (_values!3714 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1791)) mapDefault!7325)))))

(declare-fun mapNonEmpty!7325 () Bool)

(declare-fun tp!16249 () Bool)

(assert (=> mapNonEmpty!7325 (= mapRes!7325 (and tp!16249 e!120071))))

(declare-fun mapRest!7325 () (Array (_ BitVec 32) ValueCell!1791))

(declare-fun mapKey!7325 () (_ BitVec 32))

(declare-fun mapValue!7325 () ValueCell!1791)

(assert (=> mapNonEmpty!7325 (= (arr!3653 (_values!3714 thiss!1248)) (store mapRest!7325 mapKey!7325 mapValue!7325))))

(assert (= (and start!18398 res!86306) b!182328))

(assert (= (and b!182328 res!86305) b!182333))

(assert (= (and b!182333 res!86307) b!182334))

(assert (= (and b!182334 res!86303) b!182332))

(assert (= (and b!182332 res!86302) b!182335))

(assert (= (and b!182335 res!86304) b!182336))

(assert (= (and b!182337 condMapEmpty!7325) mapIsEmpty!7325))

(assert (= (and b!182337 (not condMapEmpty!7325)) mapNonEmpty!7325))

(assert (= (and mapNonEmpty!7325 ((_ is ValueCellFull!1791) mapValue!7325)) b!182329))

(assert (= (and b!182337 ((_ is ValueCellFull!1791) mapDefault!7325)) b!182331))

(assert (= b!182330 b!182337))

(assert (= start!18398 b!182330))

(declare-fun m!210157 () Bool)

(assert (=> mapNonEmpty!7325 m!210157))

(declare-fun m!210159 () Bool)

(assert (=> b!182334 m!210159))

(assert (=> b!182334 m!210159))

(declare-fun m!210161 () Bool)

(assert (=> b!182334 m!210161))

(declare-fun m!210163 () Bool)

(assert (=> b!182330 m!210163))

(declare-fun m!210165 () Bool)

(assert (=> b!182330 m!210165))

(declare-fun m!210167 () Bool)

(assert (=> start!18398 m!210167))

(declare-fun m!210169 () Bool)

(assert (=> b!182333 m!210169))

(declare-fun m!210171 () Bool)

(assert (=> b!182336 m!210171))

(declare-fun m!210173 () Bool)

(assert (=> b!182332 m!210173))

(check-sat (not mapNonEmpty!7325) (not start!18398) (not b!182336) (not b!182330) tp_is_empty!4269 (not b!182332) b_and!11077 (not b!182334) (not b_next!4497) (not b!182333))
(check-sat b_and!11077 (not b_next!4497))
(get-model)

(declare-fun d!54541 () Bool)

(assert (=> d!54541 (= (array_inv!2345 (_keys!5642 thiss!1248)) (bvsge (size!3964 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182330 d!54541))

(declare-fun d!54543 () Bool)

(assert (=> d!54543 (= (array_inv!2346 (_values!3714 thiss!1248)) (bvsge (size!3965 (_values!3714 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182330 d!54543))

(declare-fun d!54545 () Bool)

(declare-fun res!86332 () Bool)

(declare-fun e!120100 () Bool)

(assert (=> d!54545 (=> (not res!86332) (not e!120100))))

(declare-fun simpleValid!170 (LongMapFixedSize!2490) Bool)

(assert (=> d!54545 (= res!86332 (simpleValid!170 thiss!1248))))

(assert (=> d!54545 (= (valid!1023 thiss!1248) e!120100)))

(declare-fun b!182374 () Bool)

(declare-fun res!86333 () Bool)

(assert (=> b!182374 (=> (not res!86333) (not e!120100))))

(declare-fun arrayCountValidKeys!0 (array!7722 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!182374 (= res!86333 (= (arrayCountValidKeys!0 (_keys!5642 thiss!1248) #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))) (_size!1294 thiss!1248)))))

(declare-fun b!182375 () Bool)

(declare-fun res!86334 () Bool)

(assert (=> b!182375 (=> (not res!86334) (not e!120100))))

(assert (=> b!182375 (= res!86334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5642 thiss!1248) (mask!8772 thiss!1248)))))

(declare-fun b!182376 () Bool)

(declare-datatypes ((List!2336 0))(
  ( (Nil!2333) (Cons!2332 (h!2961 (_ BitVec 64)) (t!7206 List!2336)) )
))
(declare-fun arrayNoDuplicates!0 (array!7722 (_ BitVec 32) List!2336) Bool)

(assert (=> b!182376 (= e!120100 (arrayNoDuplicates!0 (_keys!5642 thiss!1248) #b00000000000000000000000000000000 Nil!2333))))

(assert (= (and d!54545 res!86332) b!182374))

(assert (= (and b!182374 res!86333) b!182375))

(assert (= (and b!182375 res!86334) b!182376))

(declare-fun m!210193 () Bool)

(assert (=> d!54545 m!210193))

(declare-fun m!210195 () Bool)

(assert (=> b!182374 m!210195))

(assert (=> b!182375 m!210171))

(declare-fun m!210197 () Bool)

(assert (=> b!182376 m!210197))

(assert (=> start!18398 d!54545))

(declare-fun d!54547 () Bool)

(declare-fun res!86340 () Bool)

(declare-fun e!120107 () Bool)

(assert (=> d!54547 (=> res!86340 e!120107)))

(assert (=> d!54547 (= res!86340 (bvsge #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))))))

(assert (=> d!54547 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5642 thiss!1248) (mask!8772 thiss!1248)) e!120107)))

(declare-fun b!182385 () Bool)

(declare-fun e!120109 () Bool)

(declare-fun e!120108 () Bool)

(assert (=> b!182385 (= e!120109 e!120108)))

(declare-fun lt!90227 () (_ BitVec 64))

(assert (=> b!182385 (= lt!90227 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5529 0))(
  ( (Unit!5530) )
))
(declare-fun lt!90225 () Unit!5529)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7722 (_ BitVec 64) (_ BitVec 32)) Unit!5529)

(assert (=> b!182385 (= lt!90225 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5642 thiss!1248) lt!90227 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!182385 (arrayContainsKey!0 (_keys!5642 thiss!1248) lt!90227 #b00000000000000000000000000000000)))

(declare-fun lt!90226 () Unit!5529)

(assert (=> b!182385 (= lt!90226 lt!90225)))

(declare-fun res!86339 () Bool)

(assert (=> b!182385 (= res!86339 (= (seekEntryOrOpen!0 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000) (_keys!5642 thiss!1248) (mask!8772 thiss!1248)) (Found!615 #b00000000000000000000000000000000)))))

(assert (=> b!182385 (=> (not res!86339) (not e!120108))))

(declare-fun bm!18407 () Bool)

(declare-fun call!18410 () Bool)

(assert (=> bm!18407 (= call!18410 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5642 thiss!1248) (mask!8772 thiss!1248)))))

(declare-fun b!182386 () Bool)

(assert (=> b!182386 (= e!120108 call!18410)))

(declare-fun b!182387 () Bool)

(assert (=> b!182387 (= e!120109 call!18410)))

(declare-fun b!182388 () Bool)

(assert (=> b!182388 (= e!120107 e!120109)))

(declare-fun c!32696 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!182388 (= c!32696 (validKeyInArray!0 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54547 (not res!86340)) b!182388))

(assert (= (and b!182388 c!32696) b!182385))

(assert (= (and b!182388 (not c!32696)) b!182387))

(assert (= (and b!182385 res!86339) b!182386))

(assert (= (or b!182386 b!182387) bm!18407))

(declare-fun m!210199 () Bool)

(assert (=> b!182385 m!210199))

(declare-fun m!210201 () Bool)

(assert (=> b!182385 m!210201))

(declare-fun m!210203 () Bool)

(assert (=> b!182385 m!210203))

(assert (=> b!182385 m!210199))

(declare-fun m!210205 () Bool)

(assert (=> b!182385 m!210205))

(declare-fun m!210207 () Bool)

(assert (=> bm!18407 m!210207))

(assert (=> b!182388 m!210199))

(assert (=> b!182388 m!210199))

(declare-fun m!210209 () Bool)

(assert (=> b!182388 m!210209))

(assert (=> b!182336 d!54547))

(declare-fun d!54549 () Bool)

(declare-fun e!120115 () Bool)

(assert (=> d!54549 e!120115))

(declare-fun res!86343 () Bool)

(assert (=> d!54549 (=> res!86343 e!120115)))

(declare-fun lt!90237 () Bool)

(assert (=> d!54549 (= res!86343 (not lt!90237))))

(declare-fun lt!90236 () Bool)

(assert (=> d!54549 (= lt!90237 lt!90236)))

(declare-fun lt!90239 () Unit!5529)

(declare-fun e!120114 () Unit!5529)

(assert (=> d!54549 (= lt!90239 e!120114)))

(declare-fun c!32699 () Bool)

(assert (=> d!54549 (= c!32699 lt!90236)))

(declare-fun containsKey!215 (List!2335 (_ BitVec 64)) Bool)

(assert (=> d!54549 (= lt!90236 (containsKey!215 (toList!1177 (getCurrentListMap!820 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248))) key!828))))

(assert (=> d!54549 (= (contains!1255 (getCurrentListMap!820 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)) key!828) lt!90237)))

(declare-fun b!182395 () Bool)

(declare-fun lt!90238 () Unit!5529)

(assert (=> b!182395 (= e!120114 lt!90238)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!164 (List!2335 (_ BitVec 64)) Unit!5529)

(assert (=> b!182395 (= lt!90238 (lemmaContainsKeyImpliesGetValueByKeyDefined!164 (toList!1177 (getCurrentListMap!820 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248))) key!828))))

(declare-datatypes ((Option!217 0))(
  ( (Some!216 (v!4076 V!5339)) (None!215) )
))
(declare-fun isDefined!165 (Option!217) Bool)

(declare-fun getValueByKey!211 (List!2335 (_ BitVec 64)) Option!217)

(assert (=> b!182395 (isDefined!165 (getValueByKey!211 (toList!1177 (getCurrentListMap!820 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248))) key!828))))

(declare-fun b!182396 () Bool)

(declare-fun Unit!5531 () Unit!5529)

(assert (=> b!182396 (= e!120114 Unit!5531)))

(declare-fun b!182397 () Bool)

(assert (=> b!182397 (= e!120115 (isDefined!165 (getValueByKey!211 (toList!1177 (getCurrentListMap!820 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248))) key!828)))))

(assert (= (and d!54549 c!32699) b!182395))

(assert (= (and d!54549 (not c!32699)) b!182396))

(assert (= (and d!54549 (not res!86343)) b!182397))

(declare-fun m!210211 () Bool)

(assert (=> d!54549 m!210211))

(declare-fun m!210213 () Bool)

(assert (=> b!182395 m!210213))

(declare-fun m!210215 () Bool)

(assert (=> b!182395 m!210215))

(assert (=> b!182395 m!210215))

(declare-fun m!210217 () Bool)

(assert (=> b!182395 m!210217))

(assert (=> b!182397 m!210215))

(assert (=> b!182397 m!210215))

(assert (=> b!182397 m!210217))

(assert (=> b!182334 d!54549))

(declare-fun bm!18422 () Bool)

(declare-fun call!18430 () Bool)

(declare-fun lt!90290 () ListLongMap!2323)

(assert (=> bm!18422 (= call!18430 (contains!1255 lt!90290 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182440 () Bool)

(declare-fun res!86367 () Bool)

(declare-fun e!120147 () Bool)

(assert (=> b!182440 (=> (not res!86367) (not e!120147))))

(declare-fun e!120149 () Bool)

(assert (=> b!182440 (= res!86367 e!120149)))

(declare-fun res!86365 () Bool)

(assert (=> b!182440 (=> res!86365 e!120149)))

(declare-fun e!120153 () Bool)

(assert (=> b!182440 (= res!86365 (not e!120153))))

(declare-fun res!86370 () Bool)

(assert (=> b!182440 (=> (not res!86370) (not e!120153))))

(assert (=> b!182440 (= res!86370 (bvslt #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))))))

(declare-fun b!182441 () Bool)

(declare-fun e!120148 () Bool)

(assert (=> b!182441 (= e!120149 e!120148)))

(declare-fun res!86363 () Bool)

(assert (=> b!182441 (=> (not res!86363) (not e!120148))))

(assert (=> b!182441 (= res!86363 (contains!1255 lt!90290 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!182441 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))))))

(declare-fun d!54551 () Bool)

(assert (=> d!54551 e!120147))

(declare-fun res!86362 () Bool)

(assert (=> d!54551 (=> (not res!86362) (not e!120147))))

(assert (=> d!54551 (= res!86362 (or (bvsge #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))))))))

(declare-fun lt!90293 () ListLongMap!2323)

(assert (=> d!54551 (= lt!90290 lt!90293)))

(declare-fun lt!90291 () Unit!5529)

(declare-fun e!120150 () Unit!5529)

(assert (=> d!54551 (= lt!90291 e!120150)))

(declare-fun c!32714 () Bool)

(declare-fun e!120145 () Bool)

(assert (=> d!54551 (= c!32714 e!120145)))

(declare-fun res!86368 () Bool)

(assert (=> d!54551 (=> (not res!86368) (not e!120145))))

(assert (=> d!54551 (= res!86368 (bvslt #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))))))

(declare-fun e!120154 () ListLongMap!2323)

(assert (=> d!54551 (= lt!90293 e!120154)))

(declare-fun c!32715 () Bool)

(assert (=> d!54551 (= c!32715 (and (not (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54551 (validMask!0 (mask!8772 thiss!1248))))

(assert (=> d!54551 (= (getCurrentListMap!820 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)) lt!90290)))

(declare-fun bm!18423 () Bool)

(declare-fun call!18427 () ListLongMap!2323)

(declare-fun call!18431 () ListLongMap!2323)

(assert (=> bm!18423 (= call!18427 call!18431)))

(declare-fun b!182442 () Bool)

(declare-fun e!120144 () ListLongMap!2323)

(declare-fun call!18428 () ListLongMap!2323)

(assert (=> b!182442 (= e!120144 call!18428)))

(declare-fun b!182443 () Bool)

(assert (=> b!182443 (= e!120145 (validKeyInArray!0 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182444 () Bool)

(declare-fun e!120142 () Bool)

(declare-fun e!120152 () Bool)

(assert (=> b!182444 (= e!120142 e!120152)))

(declare-fun res!86369 () Bool)

(declare-fun call!18425 () Bool)

(assert (=> b!182444 (= res!86369 call!18425)))

(assert (=> b!182444 (=> (not res!86369) (not e!120152))))

(declare-fun b!182445 () Bool)

(declare-fun res!86366 () Bool)

(assert (=> b!182445 (=> (not res!86366) (not e!120147))))

(assert (=> b!182445 (= res!86366 e!120142)))

(declare-fun c!32713 () Bool)

(assert (=> b!182445 (= c!32713 (not (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!182446 () Bool)

(declare-fun e!120146 () Bool)

(declare-fun apply!155 (ListLongMap!2323 (_ BitVec 64)) V!5339)

(assert (=> b!182446 (= e!120146 (= (apply!155 lt!90290 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3572 thiss!1248)))))

(declare-fun bm!18424 () Bool)

(assert (=> bm!18424 (= call!18425 (contains!1255 lt!90290 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!182447 () Bool)

(assert (=> b!182447 (= e!120152 (= (apply!155 lt!90290 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3572 thiss!1248)))))

(declare-fun b!182448 () Bool)

(declare-fun e!120151 () Bool)

(assert (=> b!182448 (= e!120147 e!120151)))

(declare-fun c!32716 () Bool)

(assert (=> b!182448 (= c!32716 (not (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!182449 () Bool)

(declare-fun c!32717 () Bool)

(assert (=> b!182449 (= c!32717 (and (not (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!120143 () ListLongMap!2323)

(assert (=> b!182449 (= e!120144 e!120143)))

(declare-fun b!182450 () Bool)

(assert (=> b!182450 (= e!120154 e!120144)))

(declare-fun c!32712 () Bool)

(assert (=> b!182450 (= c!32712 (and (not (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3468 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!182451 () Bool)

(declare-fun Unit!5532 () Unit!5529)

(assert (=> b!182451 (= e!120150 Unit!5532)))

(declare-fun b!182452 () Bool)

(assert (=> b!182452 (= e!120153 (validKeyInArray!0 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!182453 () Bool)

(declare-fun get!2095 (ValueCell!1791 V!5339) V!5339)

(declare-fun dynLambda!493 (Int (_ BitVec 64)) V!5339)

(assert (=> b!182453 (= e!120148 (= (apply!155 lt!90290 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000)) (get!2095 (select (arr!3653 (_values!3714 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!493 (defaultEntry!3731 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!182453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3965 (_values!3714 thiss!1248))))))

(assert (=> b!182453 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3964 (_keys!5642 thiss!1248))))))

(declare-fun b!182454 () Bool)

(assert (=> b!182454 (= e!120151 e!120146)))

(declare-fun res!86364 () Bool)

(assert (=> b!182454 (= res!86364 call!18430)))

(assert (=> b!182454 (=> (not res!86364) (not e!120146))))

(declare-fun b!182455 () Bool)

(assert (=> b!182455 (= e!120142 (not call!18425))))

(declare-fun b!182456 () Bool)

(assert (=> b!182456 (= e!120151 (not call!18430))))

(declare-fun b!182457 () Bool)

(assert (=> b!182457 (= e!120143 call!18428)))

(declare-fun bm!18425 () Bool)

(declare-fun call!18429 () ListLongMap!2323)

(assert (=> bm!18425 (= call!18428 call!18429)))

(declare-fun bm!18426 () Bool)

(declare-fun call!18426 () ListLongMap!2323)

(declare-fun getCurrentListMapNoExtraKeys!185 (array!7722 array!7724 (_ BitVec 32) (_ BitVec 32) V!5339 V!5339 (_ BitVec 32) Int) ListLongMap!2323)

(assert (=> bm!18426 (= call!18426 (getCurrentListMapNoExtraKeys!185 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)))))

(declare-fun b!182458 () Bool)

(assert (=> b!182458 (= e!120143 call!18427)))

(declare-fun bm!18427 () Bool)

(declare-fun +!270 (ListLongMap!2323 tuple2!3392) ListLongMap!2323)

(assert (=> bm!18427 (= call!18429 (+!270 (ite c!32715 call!18426 (ite c!32712 call!18431 call!18427)) (ite (or c!32715 c!32712) (tuple2!3393 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3572 thiss!1248)) (tuple2!3393 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3572 thiss!1248)))))))

(declare-fun bm!18428 () Bool)

(assert (=> bm!18428 (= call!18431 call!18426)))

(declare-fun b!182459 () Bool)

(declare-fun lt!90294 () Unit!5529)

(assert (=> b!182459 (= e!120150 lt!90294)))

(declare-fun lt!90292 () ListLongMap!2323)

(assert (=> b!182459 (= lt!90292 (getCurrentListMapNoExtraKeys!185 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)))))

(declare-fun lt!90286 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90286 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90284 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90284 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90302 () Unit!5529)

(declare-fun addStillContains!131 (ListLongMap!2323 (_ BitVec 64) V!5339 (_ BitVec 64)) Unit!5529)

(assert (=> b!182459 (= lt!90302 (addStillContains!131 lt!90292 lt!90286 (zeroValue!3572 thiss!1248) lt!90284))))

(assert (=> b!182459 (contains!1255 (+!270 lt!90292 (tuple2!3393 lt!90286 (zeroValue!3572 thiss!1248))) lt!90284)))

(declare-fun lt!90297 () Unit!5529)

(assert (=> b!182459 (= lt!90297 lt!90302)))

(declare-fun lt!90300 () ListLongMap!2323)

(assert (=> b!182459 (= lt!90300 (getCurrentListMapNoExtraKeys!185 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)))))

(declare-fun lt!90298 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90298 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90296 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90296 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90288 () Unit!5529)

(declare-fun addApplyDifferent!131 (ListLongMap!2323 (_ BitVec 64) V!5339 (_ BitVec 64)) Unit!5529)

(assert (=> b!182459 (= lt!90288 (addApplyDifferent!131 lt!90300 lt!90298 (minValue!3572 thiss!1248) lt!90296))))

(assert (=> b!182459 (= (apply!155 (+!270 lt!90300 (tuple2!3393 lt!90298 (minValue!3572 thiss!1248))) lt!90296) (apply!155 lt!90300 lt!90296))))

(declare-fun lt!90304 () Unit!5529)

(assert (=> b!182459 (= lt!90304 lt!90288)))

(declare-fun lt!90305 () ListLongMap!2323)

(assert (=> b!182459 (= lt!90305 (getCurrentListMapNoExtraKeys!185 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)))))

(declare-fun lt!90303 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90303 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90285 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90285 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90299 () Unit!5529)

(assert (=> b!182459 (= lt!90299 (addApplyDifferent!131 lt!90305 lt!90303 (zeroValue!3572 thiss!1248) lt!90285))))

(assert (=> b!182459 (= (apply!155 (+!270 lt!90305 (tuple2!3393 lt!90303 (zeroValue!3572 thiss!1248))) lt!90285) (apply!155 lt!90305 lt!90285))))

(declare-fun lt!90289 () Unit!5529)

(assert (=> b!182459 (= lt!90289 lt!90299)))

(declare-fun lt!90287 () ListLongMap!2323)

(assert (=> b!182459 (= lt!90287 (getCurrentListMapNoExtraKeys!185 (_keys!5642 thiss!1248) (_values!3714 thiss!1248) (mask!8772 thiss!1248) (extraKeys!3468 thiss!1248) (zeroValue!3572 thiss!1248) (minValue!3572 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3731 thiss!1248)))))

(declare-fun lt!90295 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90295 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90301 () (_ BitVec 64))

(assert (=> b!182459 (= lt!90301 (select (arr!3652 (_keys!5642 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!182459 (= lt!90294 (addApplyDifferent!131 lt!90287 lt!90295 (minValue!3572 thiss!1248) lt!90301))))

(assert (=> b!182459 (= (apply!155 (+!270 lt!90287 (tuple2!3393 lt!90295 (minValue!3572 thiss!1248))) lt!90301) (apply!155 lt!90287 lt!90301))))

(declare-fun b!182460 () Bool)

(assert (=> b!182460 (= e!120154 (+!270 call!18429 (tuple2!3393 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3572 thiss!1248))))))

(assert (= (and d!54551 c!32715) b!182460))

(assert (= (and d!54551 (not c!32715)) b!182450))

(assert (= (and b!182450 c!32712) b!182442))

(assert (= (and b!182450 (not c!32712)) b!182449))

(assert (= (and b!182449 c!32717) b!182457))

(assert (= (and b!182449 (not c!32717)) b!182458))

(assert (= (or b!182457 b!182458) bm!18423))

(assert (= (or b!182442 bm!18423) bm!18428))

(assert (= (or b!182442 b!182457) bm!18425))

(assert (= (or b!182460 bm!18428) bm!18426))

(assert (= (or b!182460 bm!18425) bm!18427))

(assert (= (and d!54551 res!86368) b!182443))

(assert (= (and d!54551 c!32714) b!182459))

(assert (= (and d!54551 (not c!32714)) b!182451))

(assert (= (and d!54551 res!86362) b!182440))

(assert (= (and b!182440 res!86370) b!182452))

(assert (= (and b!182440 (not res!86365)) b!182441))

(assert (= (and b!182441 res!86363) b!182453))

(assert (= (and b!182440 res!86367) b!182445))

(assert (= (and b!182445 c!32713) b!182444))

(assert (= (and b!182445 (not c!32713)) b!182455))

(assert (= (and b!182444 res!86369) b!182447))

(assert (= (or b!182444 b!182455) bm!18424))

(assert (= (and b!182445 res!86366) b!182448))

(assert (= (and b!182448 c!32716) b!182454))

(assert (= (and b!182448 (not c!32716)) b!182456))

(assert (= (and b!182454 res!86364) b!182446))

(assert (= (or b!182454 b!182456) bm!18422))

(declare-fun b_lambda!7205 () Bool)

(assert (=> (not b_lambda!7205) (not b!182453)))

(declare-fun t!7205 () Bool)

(declare-fun tb!2829 () Bool)

(assert (=> (and b!182330 (= (defaultEntry!3731 thiss!1248) (defaultEntry!3731 thiss!1248)) t!7205) tb!2829))

(declare-fun result!4749 () Bool)

(assert (=> tb!2829 (= result!4749 tp_is_empty!4269)))

(assert (=> b!182453 t!7205))

(declare-fun b_and!11081 () Bool)

(assert (= b_and!11077 (and (=> t!7205 result!4749) b_and!11081)))

(assert (=> b!182452 m!210199))

(assert (=> b!182452 m!210199))

(assert (=> b!182452 m!210209))

(assert (=> b!182443 m!210199))

(assert (=> b!182443 m!210199))

(assert (=> b!182443 m!210209))

(declare-fun m!210219 () Bool)

(assert (=> b!182446 m!210219))

(declare-fun m!210221 () Bool)

(assert (=> bm!18424 m!210221))

(declare-fun m!210223 () Bool)

(assert (=> b!182459 m!210223))

(declare-fun m!210225 () Bool)

(assert (=> b!182459 m!210225))

(declare-fun m!210227 () Bool)

(assert (=> b!182459 m!210227))

(declare-fun m!210229 () Bool)

(assert (=> b!182459 m!210229))

(declare-fun m!210231 () Bool)

(assert (=> b!182459 m!210231))

(declare-fun m!210233 () Bool)

(assert (=> b!182459 m!210233))

(declare-fun m!210235 () Bool)

(assert (=> b!182459 m!210235))

(assert (=> b!182459 m!210233))

(declare-fun m!210237 () Bool)

(assert (=> b!182459 m!210237))

(declare-fun m!210239 () Bool)

(assert (=> b!182459 m!210239))

(assert (=> b!182459 m!210237))

(assert (=> b!182459 m!210199))

(declare-fun m!210241 () Bool)

(assert (=> b!182459 m!210241))

(assert (=> b!182459 m!210225))

(declare-fun m!210243 () Bool)

(assert (=> b!182459 m!210243))

(declare-fun m!210245 () Bool)

(assert (=> b!182459 m!210245))

(declare-fun m!210247 () Bool)

(assert (=> b!182459 m!210247))

(assert (=> b!182459 m!210229))

(declare-fun m!210249 () Bool)

(assert (=> b!182459 m!210249))

(declare-fun m!210251 () Bool)

(assert (=> b!182459 m!210251))

(declare-fun m!210253 () Bool)

(assert (=> b!182459 m!210253))

(declare-fun m!210255 () Bool)

(assert (=> b!182460 m!210255))

(assert (=> b!182441 m!210199))

(assert (=> b!182441 m!210199))

(declare-fun m!210257 () Bool)

(assert (=> b!182441 m!210257))

(declare-fun m!210259 () Bool)

(assert (=> b!182447 m!210259))

(declare-fun m!210261 () Bool)

(assert (=> bm!18422 m!210261))

(declare-fun m!210263 () Bool)

(assert (=> bm!18427 m!210263))

(declare-fun m!210265 () Bool)

(assert (=> b!182453 m!210265))

(declare-fun m!210267 () Bool)

(assert (=> b!182453 m!210267))

(assert (=> b!182453 m!210267))

(assert (=> b!182453 m!210265))

(declare-fun m!210269 () Bool)

(assert (=> b!182453 m!210269))

(assert (=> b!182453 m!210199))

(assert (=> b!182453 m!210199))

(declare-fun m!210271 () Bool)

(assert (=> b!182453 m!210271))

(assert (=> d!54551 m!210173))

(assert (=> bm!18426 m!210251))

(assert (=> b!182334 d!54551))

(declare-fun b!182475 () Bool)

(declare-fun e!120161 () SeekEntryResult!615)

(assert (=> b!182475 (= e!120161 Undefined!615)))

(declare-fun lt!90312 () SeekEntryResult!615)

(declare-fun e!120162 () SeekEntryResult!615)

(declare-fun b!182476 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7722 (_ BitVec 32)) SeekEntryResult!615)

(assert (=> b!182476 (= e!120162 (seekKeyOrZeroReturnVacant!0 (x!19889 lt!90312) (index!4632 lt!90312) (index!4632 lt!90312) key!828 (_keys!5642 thiss!1248) (mask!8772 thiss!1248)))))

(declare-fun b!182478 () Bool)

(declare-fun e!120163 () SeekEntryResult!615)

(assert (=> b!182478 (= e!120163 (Found!615 (index!4632 lt!90312)))))

(declare-fun b!182479 () Bool)

(assert (=> b!182479 (= e!120161 e!120163)))

(declare-fun lt!90313 () (_ BitVec 64))

(assert (=> b!182479 (= lt!90313 (select (arr!3652 (_keys!5642 thiss!1248)) (index!4632 lt!90312)))))

(declare-fun c!32725 () Bool)

(assert (=> b!182479 (= c!32725 (= lt!90313 key!828))))

(declare-fun b!182480 () Bool)

(declare-fun c!32724 () Bool)

(assert (=> b!182480 (= c!32724 (= lt!90313 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!182480 (= e!120163 e!120162)))

(declare-fun d!54553 () Bool)

(declare-fun lt!90314 () SeekEntryResult!615)

(assert (=> d!54553 (and (or ((_ is Undefined!615) lt!90314) (not ((_ is Found!615) lt!90314)) (and (bvsge (index!4631 lt!90314) #b00000000000000000000000000000000) (bvslt (index!4631 lt!90314) (size!3964 (_keys!5642 thiss!1248))))) (or ((_ is Undefined!615) lt!90314) ((_ is Found!615) lt!90314) (not ((_ is MissingZero!615) lt!90314)) (and (bvsge (index!4630 lt!90314) #b00000000000000000000000000000000) (bvslt (index!4630 lt!90314) (size!3964 (_keys!5642 thiss!1248))))) (or ((_ is Undefined!615) lt!90314) ((_ is Found!615) lt!90314) ((_ is MissingZero!615) lt!90314) (not ((_ is MissingVacant!615) lt!90314)) (and (bvsge (index!4633 lt!90314) #b00000000000000000000000000000000) (bvslt (index!4633 lt!90314) (size!3964 (_keys!5642 thiss!1248))))) (or ((_ is Undefined!615) lt!90314) (ite ((_ is Found!615) lt!90314) (= (select (arr!3652 (_keys!5642 thiss!1248)) (index!4631 lt!90314)) key!828) (ite ((_ is MissingZero!615) lt!90314) (= (select (arr!3652 (_keys!5642 thiss!1248)) (index!4630 lt!90314)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!615) lt!90314) (= (select (arr!3652 (_keys!5642 thiss!1248)) (index!4633 lt!90314)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54553 (= lt!90314 e!120161)))

(declare-fun c!32726 () Bool)

(assert (=> d!54553 (= c!32726 (and ((_ is Intermediate!615) lt!90312) (undefined!1427 lt!90312)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7722 (_ BitVec 32)) SeekEntryResult!615)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54553 (= lt!90312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8772 thiss!1248)) key!828 (_keys!5642 thiss!1248) (mask!8772 thiss!1248)))))

(assert (=> d!54553 (validMask!0 (mask!8772 thiss!1248))))

(assert (=> d!54553 (= (seekEntryOrOpen!0 key!828 (_keys!5642 thiss!1248) (mask!8772 thiss!1248)) lt!90314)))

(declare-fun b!182477 () Bool)

(assert (=> b!182477 (= e!120162 (MissingZero!615 (index!4632 lt!90312)))))

(assert (= (and d!54553 c!32726) b!182475))

(assert (= (and d!54553 (not c!32726)) b!182479))

(assert (= (and b!182479 c!32725) b!182478))

(assert (= (and b!182479 (not c!32725)) b!182480))

(assert (= (and b!182480 c!32724) b!182477))

(assert (= (and b!182480 (not c!32724)) b!182476))

(declare-fun m!210273 () Bool)

(assert (=> b!182476 m!210273))

(declare-fun m!210275 () Bool)

(assert (=> b!182479 m!210275))

(assert (=> d!54553 m!210173))

(declare-fun m!210277 () Bool)

(assert (=> d!54553 m!210277))

(declare-fun m!210279 () Bool)

(assert (=> d!54553 m!210279))

(declare-fun m!210281 () Bool)

(assert (=> d!54553 m!210281))

(declare-fun m!210283 () Bool)

(assert (=> d!54553 m!210283))

(declare-fun m!210285 () Bool)

(assert (=> d!54553 m!210285))

(assert (=> d!54553 m!210283))

(assert (=> b!182333 d!54553))

(declare-fun d!54555 () Bool)

(assert (=> d!54555 (= (validMask!0 (mask!8772 thiss!1248)) (and (or (= (mask!8772 thiss!1248) #b00000000000000000000000000000111) (= (mask!8772 thiss!1248) #b00000000000000000000000000001111) (= (mask!8772 thiss!1248) #b00000000000000000000000000011111) (= (mask!8772 thiss!1248) #b00000000000000000000000000111111) (= (mask!8772 thiss!1248) #b00000000000000000000000001111111) (= (mask!8772 thiss!1248) #b00000000000000000000000011111111) (= (mask!8772 thiss!1248) #b00000000000000000000000111111111) (= (mask!8772 thiss!1248) #b00000000000000000000001111111111) (= (mask!8772 thiss!1248) #b00000000000000000000011111111111) (= (mask!8772 thiss!1248) #b00000000000000000000111111111111) (= (mask!8772 thiss!1248) #b00000000000000000001111111111111) (= (mask!8772 thiss!1248) #b00000000000000000011111111111111) (= (mask!8772 thiss!1248) #b00000000000000000111111111111111) (= (mask!8772 thiss!1248) #b00000000000000001111111111111111) (= (mask!8772 thiss!1248) #b00000000000000011111111111111111) (= (mask!8772 thiss!1248) #b00000000000000111111111111111111) (= (mask!8772 thiss!1248) #b00000000000001111111111111111111) (= (mask!8772 thiss!1248) #b00000000000011111111111111111111) (= (mask!8772 thiss!1248) #b00000000000111111111111111111111) (= (mask!8772 thiss!1248) #b00000000001111111111111111111111) (= (mask!8772 thiss!1248) #b00000000011111111111111111111111) (= (mask!8772 thiss!1248) #b00000000111111111111111111111111) (= (mask!8772 thiss!1248) #b00000001111111111111111111111111) (= (mask!8772 thiss!1248) #b00000011111111111111111111111111) (= (mask!8772 thiss!1248) #b00000111111111111111111111111111) (= (mask!8772 thiss!1248) #b00001111111111111111111111111111) (= (mask!8772 thiss!1248) #b00011111111111111111111111111111) (= (mask!8772 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8772 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!182332 d!54555))

(declare-fun mapIsEmpty!7331 () Bool)

(declare-fun mapRes!7331 () Bool)

(assert (=> mapIsEmpty!7331 mapRes!7331))

(declare-fun b!182488 () Bool)

(declare-fun e!120168 () Bool)

(assert (=> b!182488 (= e!120168 tp_is_empty!4269)))

(declare-fun b!182487 () Bool)

(declare-fun e!120169 () Bool)

(assert (=> b!182487 (= e!120169 tp_is_empty!4269)))

(declare-fun mapNonEmpty!7331 () Bool)

(declare-fun tp!16259 () Bool)

(assert (=> mapNonEmpty!7331 (= mapRes!7331 (and tp!16259 e!120169))))

(declare-fun mapRest!7331 () (Array (_ BitVec 32) ValueCell!1791))

(declare-fun mapValue!7331 () ValueCell!1791)

(declare-fun mapKey!7331 () (_ BitVec 32))

(assert (=> mapNonEmpty!7331 (= mapRest!7325 (store mapRest!7331 mapKey!7331 mapValue!7331))))

(declare-fun condMapEmpty!7331 () Bool)

(declare-fun mapDefault!7331 () ValueCell!1791)

(assert (=> mapNonEmpty!7325 (= condMapEmpty!7331 (= mapRest!7325 ((as const (Array (_ BitVec 32) ValueCell!1791)) mapDefault!7331)))))

(assert (=> mapNonEmpty!7325 (= tp!16249 (and e!120168 mapRes!7331))))

(assert (= (and mapNonEmpty!7325 condMapEmpty!7331) mapIsEmpty!7331))

(assert (= (and mapNonEmpty!7325 (not condMapEmpty!7331)) mapNonEmpty!7331))

(assert (= (and mapNonEmpty!7331 ((_ is ValueCellFull!1791) mapValue!7331)) b!182487))

(assert (= (and mapNonEmpty!7325 ((_ is ValueCellFull!1791) mapDefault!7331)) b!182488))

(declare-fun m!210287 () Bool)

(assert (=> mapNonEmpty!7331 m!210287))

(declare-fun b_lambda!7207 () Bool)

(assert (= b_lambda!7205 (or (and b!182330 b_free!4497) b_lambda!7207)))

(check-sat (not mapNonEmpty!7331) (not bm!18422) (not b!182397) (not d!54545) (not b!182447) (not d!54551) (not b!182459) (not b!182460) (not d!54549) (not b_lambda!7207) (not b!182453) (not b!182443) (not d!54553) (not b!182441) (not bm!18426) (not b!182376) (not b!182374) (not bm!18424) tp_is_empty!4269 (not b!182452) b_and!11081 (not b!182385) (not b!182476) (not b!182395) (not bm!18407) (not b!182388) (not b!182375) (not b!182446) (not bm!18427) (not b_next!4497))
(check-sat b_and!11081 (not b_next!4497))
