; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461888 () Bool)

(assert start!461888)

(declare-fun b!4616445 () Bool)

(declare-fun e!2879581 () Bool)

(declare-fun e!2879579 () Bool)

(assert (=> b!4616445 (= e!2879581 e!2879579)))

(declare-fun res!1934295 () Bool)

(assert (=> b!4616445 (=> res!1934295 e!2879579)))

(declare-datatypes ((K!12765 0))(
  ( (K!12766 (val!18483 Int)) )
))
(declare-datatypes ((V!13011 0))(
  ( (V!13012 (val!18484 Int)) )
))
(declare-datatypes ((tuple2!52230 0))(
  ( (tuple2!52231 (_1!29409 K!12765) (_2!29409 V!13011)) )
))
(declare-datatypes ((List!51505 0))(
  ( (Nil!51381) (Cons!51381 (h!57397 tuple2!52230) (t!358513 List!51505)) )
))
(declare-datatypes ((ListMap!4161 0))(
  ( (ListMap!4162 (toList!4857 List!51505)) )
))
(declare-fun lt!1772140 () ListMap!4161)

(declare-fun lt!1772148 () ListMap!4161)

(assert (=> b!4616445 (= res!1934295 (not (= lt!1772140 lt!1772148)))))

(declare-fun lt!1772141 () ListMap!4161)

(declare-fun lt!1772143 () ListMap!4161)

(declare-fun eq!789 (ListMap!4161 ListMap!4161) Bool)

(assert (=> b!4616445 (eq!789 lt!1772141 lt!1772143)))

(declare-fun lt!1772137 () ListMap!4161)

(declare-fun key!4968 () K!12765)

(declare-fun -!536 (ListMap!4161 K!12765) ListMap!4161)

(assert (=> b!4616445 (= lt!1772143 (-!536 lt!1772137 key!4968))))

(declare-fun lt!1772138 () ListMap!4161)

(declare-datatypes ((Unit!110390 0))(
  ( (Unit!110391) )
))
(declare-fun lt!1772142 () Unit!110390)

(declare-fun lemmaRemovePreservesEq!8 (ListMap!4161 ListMap!4161 K!12765) Unit!110390)

(assert (=> b!4616445 (= lt!1772142 (lemmaRemovePreservesEq!8 lt!1772138 lt!1772137 key!4968))))

(declare-fun b!4616446 () Bool)

(declare-fun res!1934296 () Bool)

(assert (=> b!4616446 (=> res!1934296 e!2879581)))

(assert (=> b!4616446 (= res!1934296 (not (eq!789 lt!1772138 lt!1772137)))))

(declare-fun b!4616447 () Bool)

(declare-fun res!1934299 () Bool)

(declare-fun e!2879576 () Bool)

(assert (=> b!4616447 (=> (not res!1934299) (not e!2879576))))

(declare-fun oldBucket!40 () List!51505)

(declare-fun newBucket!224 () List!51505)

(declare-fun removePairForKey!1069 (List!51505 K!12765) List!51505)

(assert (=> b!4616447 (= res!1934299 (= (removePairForKey!1069 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4616448 () Bool)

(declare-datatypes ((tuple2!52232 0))(
  ( (tuple2!52233 (_1!29410 (_ BitVec 64)) (_2!29410 List!51505)) )
))
(declare-datatypes ((List!51506 0))(
  ( (Nil!51382) (Cons!51382 (h!57398 tuple2!52232) (t!358514 List!51506)) )
))
(declare-fun lt!1772136 () List!51506)

(declare-fun lambda!189588 () Int)

(declare-fun forall!10748 (List!51506 Int) Bool)

(assert (=> b!4616448 (= e!2879579 (forall!10748 lt!1772136 lambda!189588))))

(declare-fun b!4616449 () Bool)

(declare-fun e!2879584 () Bool)

(declare-fun e!2879582 () Bool)

(assert (=> b!4616449 (= e!2879584 e!2879582)))

(declare-fun res!1934282 () Bool)

(assert (=> b!4616449 (=> res!1934282 e!2879582)))

(declare-fun lt!1772145 () List!51505)

(assert (=> b!4616449 (= res!1934282 (not (= lt!1772145 newBucket!224)))))

(declare-fun tail!8093 (List!51505) List!51505)

(assert (=> b!4616449 (= lt!1772145 (tail!8093 oldBucket!40))))

(declare-fun b!4616450 () Bool)

(declare-fun e!2879580 () Bool)

(assert (=> b!4616450 (= e!2879580 e!2879581)))

(declare-fun res!1934300 () Bool)

(assert (=> b!4616450 (=> res!1934300 e!2879581)))

(declare-fun lt!1772149 () ListMap!4161)

(assert (=> b!4616450 (= res!1934300 (or (not (= lt!1772141 lt!1772148)) (not (= lt!1772137 lt!1772149))))))

(assert (=> b!4616450 (= lt!1772141 (-!536 lt!1772138 key!4968))))

(declare-fun +!1831 (ListMap!4161 tuple2!52230) ListMap!4161)

(assert (=> b!4616450 (= (-!536 (+!1831 lt!1772148 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))) key!4968) lt!1772148)))

(declare-fun lt!1772135 () Unit!110390)

(declare-fun addThenRemoveForNewKeyIsSame!19 (ListMap!4161 K!12765 V!13011) Unit!110390)

(assert (=> b!4616450 (= lt!1772135 (addThenRemoveForNewKeyIsSame!19 lt!1772148 key!4968 (_2!29409 (h!57397 oldBucket!40))))))

(declare-fun b!4616451 () Bool)

(declare-fun res!1934294 () Bool)

(declare-fun e!2879577 () Bool)

(assert (=> b!4616451 (=> res!1934294 e!2879577)))

(declare-fun lt!1772133 () ListMap!4161)

(assert (=> b!4616451 (= res!1934294 (not (= lt!1772148 lt!1772133)))))

(declare-fun b!4616452 () Bool)

(declare-fun e!2879575 () Bool)

(declare-fun lt!1772144 () ListMap!4161)

(assert (=> b!4616452 (= e!2879575 (= lt!1772144 (ListMap!4162 Nil!51381)))))

(declare-fun b!4616453 () Bool)

(declare-fun e!2879574 () Bool)

(assert (=> b!4616453 (= e!2879574 (not e!2879584))))

(declare-fun res!1934293 () Bool)

(assert (=> b!4616453 (=> res!1934293 e!2879584)))

(get-info :version)

(assert (=> b!4616453 (= res!1934293 (or (not ((_ is Cons!51381) oldBucket!40)) (not (= (_1!29409 (h!57397 oldBucket!40)) key!4968))))))

(assert (=> b!4616453 e!2879575))

(declare-fun res!1934289 () Bool)

(assert (=> b!4616453 (=> (not res!1934289) (not e!2879575))))

(declare-fun addToMapMapFromBucket!907 (List!51505 ListMap!4161) ListMap!4161)

(assert (=> b!4616453 (= res!1934289 (= lt!1772137 (addToMapMapFromBucket!907 oldBucket!40 lt!1772144)))))

(declare-fun extractMap!1502 (List!51506) ListMap!4161)

(assert (=> b!4616453 (= lt!1772144 (extractMap!1502 Nil!51382))))

(assert (=> b!4616453 true))

(declare-fun b!4616454 () Bool)

(declare-fun e!2879583 () Bool)

(assert (=> b!4616454 (= e!2879582 e!2879583)))

(declare-fun res!1934290 () Bool)

(assert (=> b!4616454 (=> res!1934290 e!2879583)))

(assert (=> b!4616454 (= res!1934290 (not (= lt!1772133 lt!1772140)))))

(assert (=> b!4616454 (= lt!1772140 (extractMap!1502 lt!1772136))))

(declare-fun lt!1772146 () List!51506)

(assert (=> b!4616454 (= lt!1772133 (extractMap!1502 lt!1772146))))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4616454 (= lt!1772136 (Cons!51382 (tuple2!52233 hash!414 newBucket!224) Nil!51382))))

(assert (=> b!4616454 (= lt!1772146 (Cons!51382 (tuple2!52233 hash!414 lt!1772145) Nil!51382))))

(declare-fun b!4616455 () Bool)

(declare-fun e!2879573 () Bool)

(assert (=> b!4616455 (= e!2879583 e!2879573)))

(declare-fun res!1934298 () Bool)

(assert (=> b!4616455 (=> res!1934298 e!2879573)))

(assert (=> b!4616455 (= res!1934298 (not (= lt!1772148 (addToMapMapFromBucket!907 newBucket!224 (ListMap!4162 Nil!51381)))))))

(assert (=> b!4616455 (= lt!1772148 (addToMapMapFromBucket!907 lt!1772145 (ListMap!4162 Nil!51381)))))

(declare-fun b!4616456 () Bool)

(assert (=> b!4616456 (= e!2879573 e!2879577)))

(declare-fun res!1934291 () Bool)

(assert (=> b!4616456 (=> res!1934291 e!2879577)))

(assert (=> b!4616456 (= res!1934291 (not (eq!789 lt!1772138 lt!1772149)))))

(assert (=> b!4616456 (= lt!1772149 (addToMapMapFromBucket!907 oldBucket!40 (ListMap!4162 Nil!51381)))))

(assert (=> b!4616456 (= lt!1772138 (+!1831 lt!1772148 (h!57397 oldBucket!40)))))

(declare-fun lt!1772134 () tuple2!52230)

(assert (=> b!4616456 (eq!789 (addToMapMapFromBucket!907 (Cons!51381 lt!1772134 lt!1772145) (ListMap!4162 Nil!51381)) (+!1831 lt!1772148 lt!1772134))))

(declare-fun lt!1772147 () Unit!110390)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!40 (tuple2!52230 List!51505 ListMap!4161) Unit!110390)

(assert (=> b!4616456 (= lt!1772147 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!40 lt!1772134 lt!1772145 (ListMap!4162 Nil!51381)))))

(declare-fun head!9606 (List!51505) tuple2!52230)

(assert (=> b!4616456 (= lt!1772134 (head!9606 oldBucket!40))))

(declare-fun res!1934287 () Bool)

(assert (=> start!461888 (=> (not res!1934287) (not e!2879576))))

(declare-fun noDuplicateKeys!1446 (List!51505) Bool)

(assert (=> start!461888 (= res!1934287 (noDuplicateKeys!1446 oldBucket!40))))

(assert (=> start!461888 e!2879576))

(assert (=> start!461888 true))

(declare-fun e!2879572 () Bool)

(assert (=> start!461888 e!2879572))

(declare-fun tp_is_empty!29077 () Bool)

(assert (=> start!461888 tp_is_empty!29077))

(declare-fun e!2879578 () Bool)

(assert (=> start!461888 e!2879578))

(declare-fun b!4616457 () Bool)

(declare-fun res!1934286 () Bool)

(assert (=> b!4616457 (=> (not res!1934286) (not e!2879576))))

(assert (=> b!4616457 (= res!1934286 (noDuplicateKeys!1446 newBucket!224))))

(declare-fun b!4616458 () Bool)

(assert (=> b!4616458 (= e!2879576 e!2879574)))

(declare-fun res!1934292 () Bool)

(assert (=> b!4616458 (=> (not res!1934292) (not e!2879574))))

(declare-fun contains!14344 (ListMap!4161 K!12765) Bool)

(assert (=> b!4616458 (= res!1934292 (contains!14344 lt!1772137 key!4968))))

(assert (=> b!4616458 (= lt!1772137 (extractMap!1502 (Cons!51382 (tuple2!52233 hash!414 oldBucket!40) Nil!51382)))))

(declare-fun tp!1341611 () Bool)

(declare-fun tp_is_empty!29079 () Bool)

(declare-fun b!4616459 () Bool)

(assert (=> b!4616459 (= e!2879578 (and tp_is_empty!29077 tp_is_empty!29079 tp!1341611))))

(declare-fun b!4616460 () Bool)

(declare-fun res!1934297 () Bool)

(assert (=> b!4616460 (=> res!1934297 e!2879577)))

(declare-fun containsKey!2330 (List!51505 K!12765) Bool)

(assert (=> b!4616460 (= res!1934297 (containsKey!2330 lt!1772145 key!4968))))

(declare-fun b!4616461 () Bool)

(declare-fun tp!1341610 () Bool)

(assert (=> b!4616461 (= e!2879572 (and tp_is_empty!29077 tp_is_empty!29079 tp!1341610))))

(declare-fun b!4616462 () Bool)

(declare-fun res!1934285 () Bool)

(assert (=> b!4616462 (=> (not res!1934285) (not e!2879576))))

(declare-datatypes ((Hashable!5843 0))(
  ( (HashableExt!5842 (__x!31546 Int)) )
))
(declare-fun hashF!1389 () Hashable!5843)

(declare-fun allKeysSameHash!1300 (List!51505 (_ BitVec 64) Hashable!5843) Bool)

(assert (=> b!4616462 (= res!1934285 (allKeysSameHash!1300 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4616463 () Bool)

(declare-fun res!1934288 () Bool)

(assert (=> b!4616463 (=> (not res!1934288) (not e!2879574))))

(assert (=> b!4616463 (= res!1934288 (allKeysSameHash!1300 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4616464 () Bool)

(declare-fun res!1934281 () Bool)

(assert (=> b!4616464 (=> res!1934281 e!2879579)))

(assert (=> b!4616464 (= res!1934281 (not (eq!789 lt!1772143 lt!1772140)))))

(declare-fun b!4616465 () Bool)

(declare-fun res!1934283 () Bool)

(assert (=> b!4616465 (=> (not res!1934283) (not e!2879574))))

(declare-fun hash!3403 (Hashable!5843 K!12765) (_ BitVec 64))

(assert (=> b!4616465 (= res!1934283 (= (hash!3403 hashF!1389 key!4968) hash!414))))

(declare-fun b!4616466 () Bool)

(assert (=> b!4616466 (= e!2879577 e!2879580)))

(declare-fun res!1934284 () Bool)

(assert (=> b!4616466 (=> res!1934284 e!2879580)))

(assert (=> b!4616466 (= res!1934284 (contains!14344 lt!1772148 key!4968))))

(assert (=> b!4616466 (not (contains!14344 lt!1772133 key!4968))))

(declare-fun lt!1772139 () Unit!110390)

(declare-datatypes ((ListLongMap!3447 0))(
  ( (ListLongMap!3448 (toList!4858 List!51506)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!360 (ListLongMap!3447 K!12765 Hashable!5843) Unit!110390)

(assert (=> b!4616466 (= lt!1772139 (lemmaNotInItsHashBucketThenNotInMap!360 (ListLongMap!3448 lt!1772146) key!4968 hashF!1389))))

(assert (= (and start!461888 res!1934287) b!4616457))

(assert (= (and b!4616457 res!1934286) b!4616447))

(assert (= (and b!4616447 res!1934299) b!4616462))

(assert (= (and b!4616462 res!1934285) b!4616458))

(assert (= (and b!4616458 res!1934292) b!4616465))

(assert (= (and b!4616465 res!1934283) b!4616463))

(assert (= (and b!4616463 res!1934288) b!4616453))

(assert (= (and b!4616453 res!1934289) b!4616452))

(assert (= (and b!4616453 (not res!1934293)) b!4616449))

(assert (= (and b!4616449 (not res!1934282)) b!4616454))

(assert (= (and b!4616454 (not res!1934290)) b!4616455))

(assert (= (and b!4616455 (not res!1934298)) b!4616456))

(assert (= (and b!4616456 (not res!1934291)) b!4616460))

(assert (= (and b!4616460 (not res!1934297)) b!4616451))

(assert (= (and b!4616451 (not res!1934294)) b!4616466))

(assert (= (and b!4616466 (not res!1934284)) b!4616450))

(assert (= (and b!4616450 (not res!1934300)) b!4616446))

(assert (= (and b!4616446 (not res!1934296)) b!4616445))

(assert (= (and b!4616445 (not res!1934295)) b!4616464))

(assert (= (and b!4616464 (not res!1934281)) b!4616448))

(assert (= (and start!461888 ((_ is Cons!51381) oldBucket!40)) b!4616461))

(assert (= (and start!461888 ((_ is Cons!51381) newBucket!224)) b!4616459))

(declare-fun m!5450791 () Bool)

(assert (=> b!4616453 m!5450791))

(declare-fun m!5450793 () Bool)

(assert (=> b!4616453 m!5450793))

(declare-fun m!5450795 () Bool)

(assert (=> b!4616456 m!5450795))

(declare-fun m!5450797 () Bool)

(assert (=> b!4616456 m!5450797))

(declare-fun m!5450799 () Bool)

(assert (=> b!4616456 m!5450799))

(declare-fun m!5450801 () Bool)

(assert (=> b!4616456 m!5450801))

(declare-fun m!5450803 () Bool)

(assert (=> b!4616456 m!5450803))

(declare-fun m!5450805 () Bool)

(assert (=> b!4616456 m!5450805))

(declare-fun m!5450807 () Bool)

(assert (=> b!4616456 m!5450807))

(assert (=> b!4616456 m!5450803))

(assert (=> b!4616456 m!5450801))

(declare-fun m!5450809 () Bool)

(assert (=> b!4616456 m!5450809))

(declare-fun m!5450811 () Bool)

(assert (=> b!4616445 m!5450811))

(declare-fun m!5450813 () Bool)

(assert (=> b!4616445 m!5450813))

(declare-fun m!5450815 () Bool)

(assert (=> b!4616445 m!5450815))

(declare-fun m!5450817 () Bool)

(assert (=> b!4616465 m!5450817))

(declare-fun m!5450819 () Bool)

(assert (=> b!4616450 m!5450819))

(declare-fun m!5450821 () Bool)

(assert (=> b!4616450 m!5450821))

(assert (=> b!4616450 m!5450821))

(declare-fun m!5450823 () Bool)

(assert (=> b!4616450 m!5450823))

(declare-fun m!5450825 () Bool)

(assert (=> b!4616450 m!5450825))

(declare-fun m!5450827 () Bool)

(assert (=> b!4616462 m!5450827))

(declare-fun m!5450829 () Bool)

(assert (=> b!4616466 m!5450829))

(declare-fun m!5450831 () Bool)

(assert (=> b!4616466 m!5450831))

(declare-fun m!5450833 () Bool)

(assert (=> b!4616466 m!5450833))

(declare-fun m!5450835 () Bool)

(assert (=> b!4616460 m!5450835))

(declare-fun m!5450837 () Bool)

(assert (=> b!4616463 m!5450837))

(declare-fun m!5450839 () Bool)

(assert (=> b!4616447 m!5450839))

(declare-fun m!5450841 () Bool)

(assert (=> b!4616464 m!5450841))

(declare-fun m!5450843 () Bool)

(assert (=> b!4616457 m!5450843))

(declare-fun m!5450845 () Bool)

(assert (=> b!4616454 m!5450845))

(declare-fun m!5450847 () Bool)

(assert (=> b!4616454 m!5450847))

(declare-fun m!5450849 () Bool)

(assert (=> start!461888 m!5450849))

(declare-fun m!5450851 () Bool)

(assert (=> b!4616446 m!5450851))

(declare-fun m!5450853 () Bool)

(assert (=> b!4616449 m!5450853))

(declare-fun m!5450855 () Bool)

(assert (=> b!4616458 m!5450855))

(declare-fun m!5450857 () Bool)

(assert (=> b!4616458 m!5450857))

(declare-fun m!5450859 () Bool)

(assert (=> b!4616448 m!5450859))

(declare-fun m!5450861 () Bool)

(assert (=> b!4616455 m!5450861))

(declare-fun m!5450863 () Bool)

(assert (=> b!4616455 m!5450863))

(check-sat (not b!4616450) (not b!4616461) (not b!4616445) (not b!4616465) (not b!4616446) (not b!4616458) (not b!4616464) (not b!4616460) (not b!4616448) (not start!461888) (not b!4616455) (not b!4616449) (not b!4616462) (not b!4616456) tp_is_empty!29079 (not b!4616459) (not b!4616466) (not b!4616453) (not b!4616454) tp_is_empty!29077 (not b!4616447) (not b!4616463) (not b!4616457))
(check-sat)
(get-model)

(declare-fun bs!1018532 () Bool)

(declare-fun d!1454137 () Bool)

(assert (= bs!1018532 (and d!1454137 b!4616448)))

(declare-fun lambda!189591 () Int)

(assert (=> bs!1018532 (= lambda!189591 lambda!189588)))

(declare-fun lt!1772172 () ListMap!4161)

(declare-fun invariantList!1171 (List!51505) Bool)

(assert (=> d!1454137 (invariantList!1171 (toList!4857 lt!1772172))))

(declare-fun e!2879595 () ListMap!4161)

(assert (=> d!1454137 (= lt!1772172 e!2879595)))

(declare-fun c!790345 () Bool)

(assert (=> d!1454137 (= c!790345 ((_ is Cons!51382) lt!1772136))))

(assert (=> d!1454137 (forall!10748 lt!1772136 lambda!189591)))

(assert (=> d!1454137 (= (extractMap!1502 lt!1772136) lt!1772172)))

(declare-fun b!4616482 () Bool)

(assert (=> b!4616482 (= e!2879595 (addToMapMapFromBucket!907 (_2!29410 (h!57398 lt!1772136)) (extractMap!1502 (t!358514 lt!1772136))))))

(declare-fun b!4616483 () Bool)

(assert (=> b!4616483 (= e!2879595 (ListMap!4162 Nil!51381))))

(assert (= (and d!1454137 c!790345) b!4616482))

(assert (= (and d!1454137 (not c!790345)) b!4616483))

(declare-fun m!5450921 () Bool)

(assert (=> d!1454137 m!5450921))

(declare-fun m!5450923 () Bool)

(assert (=> d!1454137 m!5450923))

(declare-fun m!5450925 () Bool)

(assert (=> b!4616482 m!5450925))

(assert (=> b!4616482 m!5450925))

(declare-fun m!5450927 () Bool)

(assert (=> b!4616482 m!5450927))

(assert (=> b!4616454 d!1454137))

(declare-fun bs!1018533 () Bool)

(declare-fun d!1454151 () Bool)

(assert (= bs!1018533 (and d!1454151 b!4616448)))

(declare-fun lambda!189592 () Int)

(assert (=> bs!1018533 (= lambda!189592 lambda!189588)))

(declare-fun bs!1018534 () Bool)

(assert (= bs!1018534 (and d!1454151 d!1454137)))

(assert (=> bs!1018534 (= lambda!189592 lambda!189591)))

(declare-fun lt!1772175 () ListMap!4161)

(assert (=> d!1454151 (invariantList!1171 (toList!4857 lt!1772175))))

(declare-fun e!2879596 () ListMap!4161)

(assert (=> d!1454151 (= lt!1772175 e!2879596)))

(declare-fun c!790346 () Bool)

(assert (=> d!1454151 (= c!790346 ((_ is Cons!51382) lt!1772146))))

(assert (=> d!1454151 (forall!10748 lt!1772146 lambda!189592)))

(assert (=> d!1454151 (= (extractMap!1502 lt!1772146) lt!1772175)))

(declare-fun b!4616484 () Bool)

(assert (=> b!4616484 (= e!2879596 (addToMapMapFromBucket!907 (_2!29410 (h!57398 lt!1772146)) (extractMap!1502 (t!358514 lt!1772146))))))

(declare-fun b!4616485 () Bool)

(assert (=> b!4616485 (= e!2879596 (ListMap!4162 Nil!51381))))

(assert (= (and d!1454151 c!790346) b!4616484))

(assert (= (and d!1454151 (not c!790346)) b!4616485))

(declare-fun m!5450933 () Bool)

(assert (=> d!1454151 m!5450933))

(declare-fun m!5450935 () Bool)

(assert (=> d!1454151 m!5450935))

(declare-fun m!5450937 () Bool)

(assert (=> b!4616484 m!5450937))

(assert (=> b!4616484 m!5450937))

(declare-fun m!5450939 () Bool)

(assert (=> b!4616484 m!5450939))

(assert (=> b!4616454 d!1454151))

(declare-fun d!1454155 () Bool)

(declare-fun hash!3405 (Hashable!5843 K!12765) (_ BitVec 64))

(assert (=> d!1454155 (= (hash!3403 hashF!1389 key!4968) (hash!3405 hashF!1389 key!4968))))

(declare-fun bs!1018536 () Bool)

(assert (= bs!1018536 d!1454155))

(declare-fun m!5450941 () Bool)

(assert (=> bs!1018536 m!5450941))

(assert (=> b!4616465 d!1454155))

(declare-fun d!1454157 () Bool)

(assert (=> d!1454157 true))

(assert (=> d!1454157 true))

(declare-fun lambda!189595 () Int)

(declare-fun forall!10750 (List!51505 Int) Bool)

(assert (=> d!1454157 (= (allKeysSameHash!1300 newBucket!224 hash!414 hashF!1389) (forall!10750 newBucket!224 lambda!189595))))

(declare-fun bs!1018538 () Bool)

(assert (= bs!1018538 d!1454157))

(declare-fun m!5450953 () Bool)

(assert (=> bs!1018538 m!5450953))

(assert (=> b!4616463 d!1454157))

(declare-fun d!1454165 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8736 (List!51505) (InoxSet tuple2!52230))

(assert (=> d!1454165 (= (eq!789 lt!1772143 lt!1772140) (= (content!8736 (toList!4857 lt!1772143)) (content!8736 (toList!4857 lt!1772140))))))

(declare-fun bs!1018542 () Bool)

(assert (= bs!1018542 d!1454165))

(declare-fun m!5450963 () Bool)

(assert (=> bs!1018542 m!5450963))

(declare-fun m!5450973 () Bool)

(assert (=> bs!1018542 m!5450973))

(assert (=> b!4616464 d!1454165))

(declare-fun bs!1018681 () Bool)

(declare-fun b!4616567 () Bool)

(assert (= bs!1018681 (and b!4616567 d!1454157)))

(declare-fun lambda!189676 () Int)

(assert (=> bs!1018681 (not (= lambda!189676 lambda!189595))))

(assert (=> b!4616567 true))

(declare-fun bs!1018682 () Bool)

(declare-fun b!4616563 () Bool)

(assert (= bs!1018682 (and b!4616563 d!1454157)))

(declare-fun lambda!189677 () Int)

(assert (=> bs!1018682 (not (= lambda!189677 lambda!189595))))

(declare-fun bs!1018683 () Bool)

(assert (= bs!1018683 (and b!4616563 b!4616567)))

(assert (=> bs!1018683 (= lambda!189677 lambda!189676)))

(assert (=> b!4616563 true))

(declare-fun lambda!189678 () Int)

(assert (=> bs!1018682 (not (= lambda!189678 lambda!189595))))

(declare-fun lt!1772380 () ListMap!4161)

(assert (=> bs!1018683 (= (= lt!1772380 lt!1772144) (= lambda!189678 lambda!189676))))

(assert (=> b!4616563 (= (= lt!1772380 lt!1772144) (= lambda!189678 lambda!189677))))

(assert (=> b!4616563 true))

(declare-fun bs!1018684 () Bool)

(declare-fun d!1454173 () Bool)

(assert (= bs!1018684 (and d!1454173 d!1454157)))

(declare-fun lambda!189679 () Int)

(assert (=> bs!1018684 (not (= lambda!189679 lambda!189595))))

(declare-fun bs!1018685 () Bool)

(assert (= bs!1018685 (and d!1454173 b!4616567)))

(declare-fun lt!1772399 () ListMap!4161)

(assert (=> bs!1018685 (= (= lt!1772399 lt!1772144) (= lambda!189679 lambda!189676))))

(declare-fun bs!1018686 () Bool)

(assert (= bs!1018686 (and d!1454173 b!4616563)))

(assert (=> bs!1018686 (= (= lt!1772399 lt!1772144) (= lambda!189679 lambda!189677))))

(assert (=> bs!1018686 (= (= lt!1772399 lt!1772380) (= lambda!189679 lambda!189678))))

(assert (=> d!1454173 true))

(declare-fun e!2879639 () ListMap!4161)

(assert (=> b!4616563 (= e!2879639 lt!1772380)))

(declare-fun lt!1772389 () ListMap!4161)

(assert (=> b!4616563 (= lt!1772389 (+!1831 lt!1772144 (h!57397 oldBucket!40)))))

(assert (=> b!4616563 (= lt!1772380 (addToMapMapFromBucket!907 (t!358513 oldBucket!40) (+!1831 lt!1772144 (h!57397 oldBucket!40))))))

(declare-fun lt!1772400 () Unit!110390)

(declare-fun call!321915 () Unit!110390)

(assert (=> b!4616563 (= lt!1772400 call!321915)))

(assert (=> b!4616563 (forall!10750 (toList!4857 lt!1772144) lambda!189677)))

(declare-fun lt!1772393 () Unit!110390)

(assert (=> b!4616563 (= lt!1772393 lt!1772400)))

(assert (=> b!4616563 (forall!10750 (toList!4857 lt!1772389) lambda!189678)))

(declare-fun lt!1772396 () Unit!110390)

(declare-fun Unit!110404 () Unit!110390)

(assert (=> b!4616563 (= lt!1772396 Unit!110404)))

(declare-fun call!321916 () Bool)

(assert (=> b!4616563 call!321916))

(declare-fun lt!1772394 () Unit!110390)

(declare-fun Unit!110405 () Unit!110390)

(assert (=> b!4616563 (= lt!1772394 Unit!110405)))

(declare-fun lt!1772391 () Unit!110390)

(declare-fun Unit!110406 () Unit!110390)

(assert (=> b!4616563 (= lt!1772391 Unit!110406)))

(declare-fun lt!1772383 () Unit!110390)

(declare-fun forallContained!2965 (List!51505 Int tuple2!52230) Unit!110390)

(assert (=> b!4616563 (= lt!1772383 (forallContained!2965 (toList!4857 lt!1772389) lambda!189678 (h!57397 oldBucket!40)))))

(assert (=> b!4616563 (contains!14344 lt!1772389 (_1!29409 (h!57397 oldBucket!40)))))

(declare-fun lt!1772398 () Unit!110390)

(declare-fun Unit!110407 () Unit!110390)

(assert (=> b!4616563 (= lt!1772398 Unit!110407)))

(assert (=> b!4616563 (contains!14344 lt!1772380 (_1!29409 (h!57397 oldBucket!40)))))

(declare-fun lt!1772386 () Unit!110390)

(declare-fun Unit!110409 () Unit!110390)

(assert (=> b!4616563 (= lt!1772386 Unit!110409)))

(declare-fun call!321917 () Bool)

(assert (=> b!4616563 call!321917))

(declare-fun lt!1772395 () Unit!110390)

(declare-fun Unit!110411 () Unit!110390)

(assert (=> b!4616563 (= lt!1772395 Unit!110411)))

(assert (=> b!4616563 (forall!10750 (toList!4857 lt!1772389) lambda!189678)))

(declare-fun lt!1772381 () Unit!110390)

(declare-fun Unit!110413 () Unit!110390)

(assert (=> b!4616563 (= lt!1772381 Unit!110413)))

(declare-fun lt!1772390 () Unit!110390)

(declare-fun Unit!110414 () Unit!110390)

(assert (=> b!4616563 (= lt!1772390 Unit!110414)))

(declare-fun lt!1772387 () Unit!110390)

(declare-fun addForallContainsKeyThenBeforeAdding!472 (ListMap!4161 ListMap!4161 K!12765 V!13011) Unit!110390)

(assert (=> b!4616563 (= lt!1772387 (addForallContainsKeyThenBeforeAdding!472 lt!1772144 lt!1772380 (_1!29409 (h!57397 oldBucket!40)) (_2!29409 (h!57397 oldBucket!40))))))

(assert (=> b!4616563 (forall!10750 (toList!4857 lt!1772144) lambda!189678)))

(declare-fun lt!1772384 () Unit!110390)

(assert (=> b!4616563 (= lt!1772384 lt!1772387)))

(assert (=> b!4616563 (forall!10750 (toList!4857 lt!1772144) lambda!189678)))

(declare-fun lt!1772385 () Unit!110390)

(declare-fun Unit!110418 () Unit!110390)

(assert (=> b!4616563 (= lt!1772385 Unit!110418)))

(declare-fun res!1934349 () Bool)

(assert (=> b!4616563 (= res!1934349 (forall!10750 oldBucket!40 lambda!189678))))

(declare-fun e!2879638 () Bool)

(assert (=> b!4616563 (=> (not res!1934349) (not e!2879638))))

(assert (=> b!4616563 e!2879638))

(declare-fun lt!1772382 () Unit!110390)

(declare-fun Unit!110421 () Unit!110390)

(assert (=> b!4616563 (= lt!1772382 Unit!110421)))

(declare-fun c!790362 () Bool)

(declare-fun bm!321910 () Bool)

(assert (=> bm!321910 (= call!321917 (forall!10750 (ite c!790362 (toList!4857 lt!1772144) oldBucket!40) (ite c!790362 lambda!189676 lambda!189678)))))

(declare-fun bm!321911 () Bool)

(assert (=> bm!321911 (= call!321916 (forall!10750 (ite c!790362 (toList!4857 lt!1772144) (t!358513 oldBucket!40)) (ite c!790362 lambda!189676 lambda!189678)))))

(declare-fun b!4616564 () Bool)

(assert (=> b!4616564 (= e!2879638 (forall!10750 (toList!4857 lt!1772144) lambda!189678))))

(declare-fun e!2879640 () Bool)

(assert (=> d!1454173 e!2879640))

(declare-fun res!1934350 () Bool)

(assert (=> d!1454173 (=> (not res!1934350) (not e!2879640))))

(assert (=> d!1454173 (= res!1934350 (forall!10750 oldBucket!40 lambda!189679))))

(assert (=> d!1454173 (= lt!1772399 e!2879639)))

(assert (=> d!1454173 (= c!790362 ((_ is Nil!51381) oldBucket!40))))

(assert (=> d!1454173 (noDuplicateKeys!1446 oldBucket!40)))

(assert (=> d!1454173 (= (addToMapMapFromBucket!907 oldBucket!40 lt!1772144) lt!1772399)))

(declare-fun bm!321912 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!473 (ListMap!4161) Unit!110390)

(assert (=> bm!321912 (= call!321915 (lemmaContainsAllItsOwnKeys!473 lt!1772144))))

(declare-fun b!4616565 () Bool)

(declare-fun res!1934351 () Bool)

(assert (=> b!4616565 (=> (not res!1934351) (not e!2879640))))

(assert (=> b!4616565 (= res!1934351 (forall!10750 (toList!4857 lt!1772144) lambda!189679))))

(declare-fun b!4616566 () Bool)

(assert (=> b!4616566 (= e!2879640 (invariantList!1171 (toList!4857 lt!1772399)))))

(assert (=> b!4616567 (= e!2879639 lt!1772144)))

(declare-fun lt!1772392 () Unit!110390)

(assert (=> b!4616567 (= lt!1772392 call!321915)))

(assert (=> b!4616567 call!321916))

(declare-fun lt!1772388 () Unit!110390)

(assert (=> b!4616567 (= lt!1772388 lt!1772392)))

(assert (=> b!4616567 call!321917))

(declare-fun lt!1772397 () Unit!110390)

(declare-fun Unit!110424 () Unit!110390)

(assert (=> b!4616567 (= lt!1772397 Unit!110424)))

(assert (= (and d!1454173 c!790362) b!4616567))

(assert (= (and d!1454173 (not c!790362)) b!4616563))

(assert (= (and b!4616563 res!1934349) b!4616564))

(assert (= (or b!4616567 b!4616563) bm!321912))

(assert (= (or b!4616567 b!4616563) bm!321911))

(assert (= (or b!4616567 b!4616563) bm!321910))

(assert (= (and d!1454173 res!1934350) b!4616565))

(assert (= (and b!4616565 res!1934351) b!4616566))

(declare-fun m!5451169 () Bool)

(assert (=> b!4616563 m!5451169))

(declare-fun m!5451171 () Bool)

(assert (=> b!4616563 m!5451171))

(declare-fun m!5451173 () Bool)

(assert (=> b!4616563 m!5451173))

(declare-fun m!5451175 () Bool)

(assert (=> b!4616563 m!5451175))

(declare-fun m!5451177 () Bool)

(assert (=> b!4616563 m!5451177))

(assert (=> b!4616563 m!5451173))

(assert (=> b!4616563 m!5451177))

(declare-fun m!5451179 () Bool)

(assert (=> b!4616563 m!5451179))

(declare-fun m!5451181 () Bool)

(assert (=> b!4616563 m!5451181))

(declare-fun m!5451183 () Bool)

(assert (=> b!4616563 m!5451183))

(assert (=> b!4616563 m!5451183))

(declare-fun m!5451185 () Bool)

(assert (=> b!4616563 m!5451185))

(declare-fun m!5451187 () Bool)

(assert (=> b!4616563 m!5451187))

(declare-fun m!5451189 () Bool)

(assert (=> bm!321910 m!5451189))

(declare-fun m!5451191 () Bool)

(assert (=> bm!321912 m!5451191))

(declare-fun m!5451193 () Bool)

(assert (=> d!1454173 m!5451193))

(assert (=> d!1454173 m!5450849))

(declare-fun m!5451195 () Bool)

(assert (=> bm!321911 m!5451195))

(declare-fun m!5451197 () Bool)

(assert (=> b!4616566 m!5451197))

(declare-fun m!5451199 () Bool)

(assert (=> b!4616565 m!5451199))

(assert (=> b!4616564 m!5451177))

(assert (=> b!4616453 d!1454173))

(declare-fun bs!1018687 () Bool)

(declare-fun d!1454195 () Bool)

(assert (= bs!1018687 (and d!1454195 b!4616448)))

(declare-fun lambda!189682 () Int)

(assert (=> bs!1018687 (= lambda!189682 lambda!189588)))

(declare-fun bs!1018688 () Bool)

(assert (= bs!1018688 (and d!1454195 d!1454137)))

(assert (=> bs!1018688 (= lambda!189682 lambda!189591)))

(declare-fun bs!1018689 () Bool)

(assert (= bs!1018689 (and d!1454195 d!1454151)))

(assert (=> bs!1018689 (= lambda!189682 lambda!189592)))

(declare-fun lt!1772403 () ListMap!4161)

(assert (=> d!1454195 (invariantList!1171 (toList!4857 lt!1772403))))

(declare-fun e!2879643 () ListMap!4161)

(assert (=> d!1454195 (= lt!1772403 e!2879643)))

(declare-fun c!790365 () Bool)

(assert (=> d!1454195 (= c!790365 ((_ is Cons!51382) Nil!51382))))

(assert (=> d!1454195 (forall!10748 Nil!51382 lambda!189682)))

(assert (=> d!1454195 (= (extractMap!1502 Nil!51382) lt!1772403)))

(declare-fun b!4616574 () Bool)

(assert (=> b!4616574 (= e!2879643 (addToMapMapFromBucket!907 (_2!29410 (h!57398 Nil!51382)) (extractMap!1502 (t!358514 Nil!51382))))))

(declare-fun b!4616575 () Bool)

(assert (=> b!4616575 (= e!2879643 (ListMap!4162 Nil!51381))))

(assert (= (and d!1454195 c!790365) b!4616574))

(assert (= (and d!1454195 (not c!790365)) b!4616575))

(declare-fun m!5451201 () Bool)

(assert (=> d!1454195 m!5451201))

(declare-fun m!5451203 () Bool)

(assert (=> d!1454195 m!5451203))

(declare-fun m!5451205 () Bool)

(assert (=> b!4616574 m!5451205))

(assert (=> b!4616574 m!5451205))

(declare-fun m!5451207 () Bool)

(assert (=> b!4616574 m!5451207))

(assert (=> b!4616453 d!1454195))

(declare-fun d!1454197 () Bool)

(assert (=> d!1454197 (= (eq!789 lt!1772138 lt!1772137) (= (content!8736 (toList!4857 lt!1772138)) (content!8736 (toList!4857 lt!1772137))))))

(declare-fun bs!1018691 () Bool)

(assert (= bs!1018691 d!1454197))

(declare-fun m!5451209 () Bool)

(assert (=> bs!1018691 m!5451209))

(declare-fun m!5451211 () Bool)

(assert (=> bs!1018691 m!5451211))

(assert (=> b!4616446 d!1454197))

(declare-fun d!1454199 () Bool)

(declare-fun res!1934360 () Bool)

(declare-fun e!2879653 () Bool)

(assert (=> d!1454199 (=> res!1934360 e!2879653)))

(assert (=> d!1454199 (= res!1934360 (not ((_ is Cons!51381) newBucket!224)))))

(assert (=> d!1454199 (= (noDuplicateKeys!1446 newBucket!224) e!2879653)))

(declare-fun b!4616586 () Bool)

(declare-fun e!2879654 () Bool)

(assert (=> b!4616586 (= e!2879653 e!2879654)))

(declare-fun res!1934361 () Bool)

(assert (=> b!4616586 (=> (not res!1934361) (not e!2879654))))

(assert (=> b!4616586 (= res!1934361 (not (containsKey!2330 (t!358513 newBucket!224) (_1!29409 (h!57397 newBucket!224)))))))

(declare-fun b!4616587 () Bool)

(assert (=> b!4616587 (= e!2879654 (noDuplicateKeys!1446 (t!358513 newBucket!224)))))

(assert (= (and d!1454199 (not res!1934360)) b!4616586))

(assert (= (and b!4616586 res!1934361) b!4616587))

(declare-fun m!5451221 () Bool)

(assert (=> b!4616586 m!5451221))

(declare-fun m!5451223 () Bool)

(assert (=> b!4616587 m!5451223))

(assert (=> b!4616457 d!1454199))

(declare-fun b!4616630 () Bool)

(declare-fun e!2879684 () Unit!110390)

(declare-fun Unit!110425 () Unit!110390)

(assert (=> b!4616630 (= e!2879684 Unit!110425)))

(declare-fun b!4616631 () Bool)

(declare-fun e!2879685 () Bool)

(declare-fun e!2879688 () Bool)

(assert (=> b!4616631 (= e!2879685 e!2879688)))

(declare-fun res!1934377 () Bool)

(assert (=> b!4616631 (=> (not res!1934377) (not e!2879688))))

(declare-datatypes ((Option!11474 0))(
  ( (None!11473) (Some!11473 (v!45539 V!13011)) )
))
(declare-fun isDefined!8738 (Option!11474) Bool)

(declare-fun getValueByKey!1388 (List!51505 K!12765) Option!11474)

(assert (=> b!4616631 (= res!1934377 (isDefined!8738 (getValueByKey!1388 (toList!4857 lt!1772148) key!4968)))))

(declare-fun bm!321917 () Bool)

(declare-fun call!321922 () Bool)

(declare-datatypes ((List!51508 0))(
  ( (Nil!51384) (Cons!51384 (h!57402 K!12765) (t!358518 List!51508)) )
))
(declare-fun e!2879686 () List!51508)

(declare-fun contains!14346 (List!51508 K!12765) Bool)

(assert (=> bm!321917 (= call!321922 (contains!14346 e!2879686 key!4968))))

(declare-fun c!790382 () Bool)

(declare-fun c!790383 () Bool)

(assert (=> bm!321917 (= c!790382 c!790383)))

(declare-fun b!4616632 () Bool)

(assert (=> b!4616632 false))

(declare-fun lt!1772439 () Unit!110390)

(declare-fun lt!1772443 () Unit!110390)

(assert (=> b!4616632 (= lt!1772439 lt!1772443)))

(declare-fun containsKey!2331 (List!51505 K!12765) Bool)

(assert (=> b!4616632 (containsKey!2331 (toList!4857 lt!1772148) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!620 (List!51505 K!12765) Unit!110390)

(assert (=> b!4616632 (= lt!1772443 (lemmaInGetKeysListThenContainsKey!620 (toList!4857 lt!1772148) key!4968))))

(declare-fun Unit!110426 () Unit!110390)

(assert (=> b!4616632 (= e!2879684 Unit!110426)))

(declare-fun b!4616633 () Bool)

(declare-fun e!2879687 () Unit!110390)

(assert (=> b!4616633 (= e!2879687 e!2879684)))

(declare-fun c!790381 () Bool)

(assert (=> b!4616633 (= c!790381 call!321922)))

(declare-fun b!4616634 () Bool)

(declare-fun e!2879683 () Bool)

(declare-fun keys!18061 (ListMap!4161) List!51508)

(assert (=> b!4616634 (= e!2879683 (not (contains!14346 (keys!18061 lt!1772148) key!4968)))))

(declare-fun b!4616635 () Bool)

(assert (=> b!4616635 (= e!2879688 (contains!14346 (keys!18061 lt!1772148) key!4968))))

(declare-fun b!4616636 () Bool)

(assert (=> b!4616636 (= e!2879686 (keys!18061 lt!1772148))))

(declare-fun b!4616637 () Bool)

(declare-fun getKeysList!621 (List!51505) List!51508)

(assert (=> b!4616637 (= e!2879686 (getKeysList!621 (toList!4857 lt!1772148)))))

(declare-fun d!1454203 () Bool)

(assert (=> d!1454203 e!2879685))

(declare-fun res!1934378 () Bool)

(assert (=> d!1454203 (=> res!1934378 e!2879685)))

(assert (=> d!1454203 (= res!1934378 e!2879683)))

(declare-fun res!1934376 () Bool)

(assert (=> d!1454203 (=> (not res!1934376) (not e!2879683))))

(declare-fun lt!1772440 () Bool)

(assert (=> d!1454203 (= res!1934376 (not lt!1772440))))

(declare-fun lt!1772441 () Bool)

(assert (=> d!1454203 (= lt!1772440 lt!1772441)))

(declare-fun lt!1772444 () Unit!110390)

(assert (=> d!1454203 (= lt!1772444 e!2879687)))

(assert (=> d!1454203 (= c!790383 lt!1772441)))

(assert (=> d!1454203 (= lt!1772441 (containsKey!2331 (toList!4857 lt!1772148) key!4968))))

(assert (=> d!1454203 (= (contains!14344 lt!1772148 key!4968) lt!1772440)))

(declare-fun b!4616638 () Bool)

(declare-fun lt!1772446 () Unit!110390)

(assert (=> b!4616638 (= e!2879687 lt!1772446)))

(declare-fun lt!1772445 () Unit!110390)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1289 (List!51505 K!12765) Unit!110390)

(assert (=> b!4616638 (= lt!1772445 (lemmaContainsKeyImpliesGetValueByKeyDefined!1289 (toList!4857 lt!1772148) key!4968))))

(assert (=> b!4616638 (isDefined!8738 (getValueByKey!1388 (toList!4857 lt!1772148) key!4968))))

(declare-fun lt!1772442 () Unit!110390)

(assert (=> b!4616638 (= lt!1772442 lt!1772445)))

(declare-fun lemmaInListThenGetKeysListContains!616 (List!51505 K!12765) Unit!110390)

(assert (=> b!4616638 (= lt!1772446 (lemmaInListThenGetKeysListContains!616 (toList!4857 lt!1772148) key!4968))))

(assert (=> b!4616638 call!321922))

(assert (= (and d!1454203 c!790383) b!4616638))

(assert (= (and d!1454203 (not c!790383)) b!4616633))

(assert (= (and b!4616633 c!790381) b!4616632))

(assert (= (and b!4616633 (not c!790381)) b!4616630))

(assert (= (or b!4616638 b!4616633) bm!321917))

(assert (= (and bm!321917 c!790382) b!4616637))

(assert (= (and bm!321917 (not c!790382)) b!4616636))

(assert (= (and d!1454203 res!1934376) b!4616634))

(assert (= (and d!1454203 (not res!1934378)) b!4616631))

(assert (= (and b!4616631 res!1934377) b!4616635))

(declare-fun m!5451245 () Bool)

(assert (=> b!4616634 m!5451245))

(assert (=> b!4616634 m!5451245))

(declare-fun m!5451247 () Bool)

(assert (=> b!4616634 m!5451247))

(declare-fun m!5451249 () Bool)

(assert (=> b!4616637 m!5451249))

(declare-fun m!5451251 () Bool)

(assert (=> d!1454203 m!5451251))

(declare-fun m!5451253 () Bool)

(assert (=> b!4616638 m!5451253))

(declare-fun m!5451255 () Bool)

(assert (=> b!4616638 m!5451255))

(assert (=> b!4616638 m!5451255))

(declare-fun m!5451257 () Bool)

(assert (=> b!4616638 m!5451257))

(declare-fun m!5451259 () Bool)

(assert (=> b!4616638 m!5451259))

(assert (=> b!4616631 m!5451255))

(assert (=> b!4616631 m!5451255))

(assert (=> b!4616631 m!5451257))

(assert (=> b!4616636 m!5451245))

(assert (=> b!4616635 m!5451245))

(assert (=> b!4616635 m!5451245))

(assert (=> b!4616635 m!5451247))

(declare-fun m!5451261 () Bool)

(assert (=> bm!321917 m!5451261))

(assert (=> b!4616632 m!5451251))

(declare-fun m!5451263 () Bool)

(assert (=> b!4616632 m!5451263))

(assert (=> b!4616466 d!1454203))

(declare-fun b!4616639 () Bool)

(declare-fun e!2879690 () Unit!110390)

(declare-fun Unit!110433 () Unit!110390)

(assert (=> b!4616639 (= e!2879690 Unit!110433)))

(declare-fun b!4616640 () Bool)

(declare-fun e!2879691 () Bool)

(declare-fun e!2879694 () Bool)

(assert (=> b!4616640 (= e!2879691 e!2879694)))

(declare-fun res!1934380 () Bool)

(assert (=> b!4616640 (=> (not res!1934380) (not e!2879694))))

(assert (=> b!4616640 (= res!1934380 (isDefined!8738 (getValueByKey!1388 (toList!4857 lt!1772133) key!4968)))))

(declare-fun bm!321918 () Bool)

(declare-fun call!321923 () Bool)

(declare-fun e!2879692 () List!51508)

(assert (=> bm!321918 (= call!321923 (contains!14346 e!2879692 key!4968))))

(declare-fun c!790385 () Bool)

(declare-fun c!790386 () Bool)

(assert (=> bm!321918 (= c!790385 c!790386)))

(declare-fun b!4616641 () Bool)

(assert (=> b!4616641 false))

(declare-fun lt!1772447 () Unit!110390)

(declare-fun lt!1772451 () Unit!110390)

(assert (=> b!4616641 (= lt!1772447 lt!1772451)))

(assert (=> b!4616641 (containsKey!2331 (toList!4857 lt!1772133) key!4968)))

(assert (=> b!4616641 (= lt!1772451 (lemmaInGetKeysListThenContainsKey!620 (toList!4857 lt!1772133) key!4968))))

(declare-fun Unit!110438 () Unit!110390)

(assert (=> b!4616641 (= e!2879690 Unit!110438)))

(declare-fun b!4616642 () Bool)

(declare-fun e!2879693 () Unit!110390)

(assert (=> b!4616642 (= e!2879693 e!2879690)))

(declare-fun c!790384 () Bool)

(assert (=> b!4616642 (= c!790384 call!321923)))

(declare-fun b!4616643 () Bool)

(declare-fun e!2879689 () Bool)

(assert (=> b!4616643 (= e!2879689 (not (contains!14346 (keys!18061 lt!1772133) key!4968)))))

(declare-fun b!4616644 () Bool)

(assert (=> b!4616644 (= e!2879694 (contains!14346 (keys!18061 lt!1772133) key!4968))))

(declare-fun b!4616645 () Bool)

(assert (=> b!4616645 (= e!2879692 (keys!18061 lt!1772133))))

(declare-fun b!4616646 () Bool)

(assert (=> b!4616646 (= e!2879692 (getKeysList!621 (toList!4857 lt!1772133)))))

(declare-fun d!1454213 () Bool)

(assert (=> d!1454213 e!2879691))

(declare-fun res!1934381 () Bool)

(assert (=> d!1454213 (=> res!1934381 e!2879691)))

(assert (=> d!1454213 (= res!1934381 e!2879689)))

(declare-fun res!1934379 () Bool)

(assert (=> d!1454213 (=> (not res!1934379) (not e!2879689))))

(declare-fun lt!1772448 () Bool)

(assert (=> d!1454213 (= res!1934379 (not lt!1772448))))

(declare-fun lt!1772449 () Bool)

(assert (=> d!1454213 (= lt!1772448 lt!1772449)))

(declare-fun lt!1772452 () Unit!110390)

(assert (=> d!1454213 (= lt!1772452 e!2879693)))

(assert (=> d!1454213 (= c!790386 lt!1772449)))

(assert (=> d!1454213 (= lt!1772449 (containsKey!2331 (toList!4857 lt!1772133) key!4968))))

(assert (=> d!1454213 (= (contains!14344 lt!1772133 key!4968) lt!1772448)))

(declare-fun b!4616647 () Bool)

(declare-fun lt!1772454 () Unit!110390)

(assert (=> b!4616647 (= e!2879693 lt!1772454)))

(declare-fun lt!1772453 () Unit!110390)

(assert (=> b!4616647 (= lt!1772453 (lemmaContainsKeyImpliesGetValueByKeyDefined!1289 (toList!4857 lt!1772133) key!4968))))

(assert (=> b!4616647 (isDefined!8738 (getValueByKey!1388 (toList!4857 lt!1772133) key!4968))))

(declare-fun lt!1772450 () Unit!110390)

(assert (=> b!4616647 (= lt!1772450 lt!1772453)))

(assert (=> b!4616647 (= lt!1772454 (lemmaInListThenGetKeysListContains!616 (toList!4857 lt!1772133) key!4968))))

(assert (=> b!4616647 call!321923))

(assert (= (and d!1454213 c!790386) b!4616647))

(assert (= (and d!1454213 (not c!790386)) b!4616642))

(assert (= (and b!4616642 c!790384) b!4616641))

(assert (= (and b!4616642 (not c!790384)) b!4616639))

(assert (= (or b!4616647 b!4616642) bm!321918))

(assert (= (and bm!321918 c!790385) b!4616646))

(assert (= (and bm!321918 (not c!790385)) b!4616645))

(assert (= (and d!1454213 res!1934379) b!4616643))

(assert (= (and d!1454213 (not res!1934381)) b!4616640))

(assert (= (and b!4616640 res!1934380) b!4616644))

(declare-fun m!5451265 () Bool)

(assert (=> b!4616643 m!5451265))

(assert (=> b!4616643 m!5451265))

(declare-fun m!5451267 () Bool)

(assert (=> b!4616643 m!5451267))

(declare-fun m!5451269 () Bool)

(assert (=> b!4616646 m!5451269))

(declare-fun m!5451271 () Bool)

(assert (=> d!1454213 m!5451271))

(declare-fun m!5451273 () Bool)

(assert (=> b!4616647 m!5451273))

(declare-fun m!5451275 () Bool)

(assert (=> b!4616647 m!5451275))

(assert (=> b!4616647 m!5451275))

(declare-fun m!5451277 () Bool)

(assert (=> b!4616647 m!5451277))

(declare-fun m!5451279 () Bool)

(assert (=> b!4616647 m!5451279))

(assert (=> b!4616640 m!5451275))

(assert (=> b!4616640 m!5451275))

(assert (=> b!4616640 m!5451277))

(assert (=> b!4616645 m!5451265))

(assert (=> b!4616644 m!5451265))

(assert (=> b!4616644 m!5451265))

(assert (=> b!4616644 m!5451267))

(declare-fun m!5451281 () Bool)

(assert (=> bm!321918 m!5451281))

(assert (=> b!4616641 m!5451271))

(declare-fun m!5451285 () Bool)

(assert (=> b!4616641 m!5451285))

(assert (=> b!4616466 d!1454213))

(declare-fun bs!1018703 () Bool)

(declare-fun d!1454215 () Bool)

(assert (= bs!1018703 (and d!1454215 b!4616448)))

(declare-fun lambda!189689 () Int)

(assert (=> bs!1018703 (= lambda!189689 lambda!189588)))

(declare-fun bs!1018704 () Bool)

(assert (= bs!1018704 (and d!1454215 d!1454137)))

(assert (=> bs!1018704 (= lambda!189689 lambda!189591)))

(declare-fun bs!1018705 () Bool)

(assert (= bs!1018705 (and d!1454215 d!1454151)))

(assert (=> bs!1018705 (= lambda!189689 lambda!189592)))

(declare-fun bs!1018706 () Bool)

(assert (= bs!1018706 (and d!1454215 d!1454195)))

(assert (=> bs!1018706 (= lambda!189689 lambda!189682)))

(assert (=> d!1454215 (not (contains!14344 (extractMap!1502 (toList!4858 (ListLongMap!3448 lt!1772146))) key!4968))))

(declare-fun lt!1772482 () Unit!110390)

(declare-fun choose!31096 (ListLongMap!3447 K!12765 Hashable!5843) Unit!110390)

(assert (=> d!1454215 (= lt!1772482 (choose!31096 (ListLongMap!3448 lt!1772146) key!4968 hashF!1389))))

(assert (=> d!1454215 (forall!10748 (toList!4858 (ListLongMap!3448 lt!1772146)) lambda!189689)))

(assert (=> d!1454215 (= (lemmaNotInItsHashBucketThenNotInMap!360 (ListLongMap!3448 lt!1772146) key!4968 hashF!1389) lt!1772482)))

(declare-fun bs!1018707 () Bool)

(assert (= bs!1018707 d!1454215))

(declare-fun m!5451353 () Bool)

(assert (=> bs!1018707 m!5451353))

(assert (=> bs!1018707 m!5451353))

(declare-fun m!5451355 () Bool)

(assert (=> bs!1018707 m!5451355))

(declare-fun m!5451357 () Bool)

(assert (=> bs!1018707 m!5451357))

(declare-fun m!5451359 () Bool)

(assert (=> bs!1018707 m!5451359))

(assert (=> b!4616466 d!1454215))

(declare-fun bs!1018708 () Bool)

(declare-fun b!4616681 () Bool)

(assert (= bs!1018708 (and b!4616681 b!4616563)))

(declare-fun lambda!189690 () Int)

(assert (=> bs!1018708 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189690 lambda!189678))))

(declare-fun bs!1018709 () Bool)

(assert (= bs!1018709 (and b!4616681 b!4616567)))

(assert (=> bs!1018709 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189690 lambda!189676))))

(assert (=> bs!1018708 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189690 lambda!189677))))

(declare-fun bs!1018710 () Bool)

(assert (= bs!1018710 (and b!4616681 d!1454173)))

(assert (=> bs!1018710 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189690 lambda!189679))))

(declare-fun bs!1018711 () Bool)

(assert (= bs!1018711 (and b!4616681 d!1454157)))

(assert (=> bs!1018711 (not (= lambda!189690 lambda!189595))))

(assert (=> b!4616681 true))

(declare-fun bs!1018712 () Bool)

(declare-fun b!4616677 () Bool)

(assert (= bs!1018712 (and b!4616677 b!4616563)))

(declare-fun lambda!189691 () Int)

(assert (=> bs!1018712 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189691 lambda!189678))))

(assert (=> bs!1018712 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189691 lambda!189677))))

(declare-fun bs!1018713 () Bool)

(assert (= bs!1018713 (and b!4616677 d!1454173)))

(assert (=> bs!1018713 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189691 lambda!189679))))

(declare-fun bs!1018714 () Bool)

(assert (= bs!1018714 (and b!4616677 d!1454157)))

(assert (=> bs!1018714 (not (= lambda!189691 lambda!189595))))

(declare-fun bs!1018715 () Bool)

(assert (= bs!1018715 (and b!4616677 b!4616681)))

(assert (=> bs!1018715 (= lambda!189691 lambda!189690)))

(declare-fun bs!1018716 () Bool)

(assert (= bs!1018716 (and b!4616677 b!4616567)))

(assert (=> bs!1018716 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189691 lambda!189676))))

(assert (=> b!4616677 true))

(declare-fun lt!1772483 () ListMap!4161)

(declare-fun lambda!189694 () Int)

(assert (=> bs!1018712 (= (= lt!1772483 lt!1772380) (= lambda!189694 lambda!189678))))

(assert (=> bs!1018712 (= (= lt!1772483 lt!1772144) (= lambda!189694 lambda!189677))))

(assert (=> b!4616677 (= (= lt!1772483 (ListMap!4162 Nil!51381)) (= lambda!189694 lambda!189691))))

(assert (=> bs!1018713 (= (= lt!1772483 lt!1772399) (= lambda!189694 lambda!189679))))

(assert (=> bs!1018714 (not (= lambda!189694 lambda!189595))))

(assert (=> bs!1018715 (= (= lt!1772483 (ListMap!4162 Nil!51381)) (= lambda!189694 lambda!189690))))

(assert (=> bs!1018716 (= (= lt!1772483 lt!1772144) (= lambda!189694 lambda!189676))))

(assert (=> b!4616677 true))

(declare-fun bs!1018723 () Bool)

(declare-fun d!1454227 () Bool)

(assert (= bs!1018723 (and d!1454227 b!4616563)))

(declare-fun lambda!189696 () Int)

(declare-fun lt!1772502 () ListMap!4161)

(assert (=> bs!1018723 (= (= lt!1772502 lt!1772380) (= lambda!189696 lambda!189678))))

(declare-fun bs!1018724 () Bool)

(assert (= bs!1018724 (and d!1454227 b!4616677)))

(assert (=> bs!1018724 (= (= lt!1772502 lt!1772483) (= lambda!189696 lambda!189694))))

(assert (=> bs!1018723 (= (= lt!1772502 lt!1772144) (= lambda!189696 lambda!189677))))

(assert (=> bs!1018724 (= (= lt!1772502 (ListMap!4162 Nil!51381)) (= lambda!189696 lambda!189691))))

(declare-fun bs!1018725 () Bool)

(assert (= bs!1018725 (and d!1454227 d!1454173)))

(assert (=> bs!1018725 (= (= lt!1772502 lt!1772399) (= lambda!189696 lambda!189679))))

(declare-fun bs!1018726 () Bool)

(assert (= bs!1018726 (and d!1454227 d!1454157)))

(assert (=> bs!1018726 (not (= lambda!189696 lambda!189595))))

(declare-fun bs!1018727 () Bool)

(assert (= bs!1018727 (and d!1454227 b!4616681)))

(assert (=> bs!1018727 (= (= lt!1772502 (ListMap!4162 Nil!51381)) (= lambda!189696 lambda!189690))))

(declare-fun bs!1018728 () Bool)

(assert (= bs!1018728 (and d!1454227 b!4616567)))

(assert (=> bs!1018728 (= (= lt!1772502 lt!1772144) (= lambda!189696 lambda!189676))))

(assert (=> d!1454227 true))

(declare-fun e!2879715 () ListMap!4161)

(assert (=> b!4616677 (= e!2879715 lt!1772483)))

(declare-fun lt!1772492 () ListMap!4161)

(assert (=> b!4616677 (= lt!1772492 (+!1831 (ListMap!4162 Nil!51381) (h!57397 newBucket!224)))))

(assert (=> b!4616677 (= lt!1772483 (addToMapMapFromBucket!907 (t!358513 newBucket!224) (+!1831 (ListMap!4162 Nil!51381) (h!57397 newBucket!224))))))

(declare-fun lt!1772503 () Unit!110390)

(declare-fun call!321927 () Unit!110390)

(assert (=> b!4616677 (= lt!1772503 call!321927)))

(assert (=> b!4616677 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189691)))

(declare-fun lt!1772496 () Unit!110390)

(assert (=> b!4616677 (= lt!1772496 lt!1772503)))

(assert (=> b!4616677 (forall!10750 (toList!4857 lt!1772492) lambda!189694)))

(declare-fun lt!1772499 () Unit!110390)

(declare-fun Unit!110440 () Unit!110390)

(assert (=> b!4616677 (= lt!1772499 Unit!110440)))

(declare-fun call!321928 () Bool)

(assert (=> b!4616677 call!321928))

(declare-fun lt!1772497 () Unit!110390)

(declare-fun Unit!110441 () Unit!110390)

(assert (=> b!4616677 (= lt!1772497 Unit!110441)))

(declare-fun lt!1772494 () Unit!110390)

(declare-fun Unit!110442 () Unit!110390)

(assert (=> b!4616677 (= lt!1772494 Unit!110442)))

(declare-fun lt!1772486 () Unit!110390)

(assert (=> b!4616677 (= lt!1772486 (forallContained!2965 (toList!4857 lt!1772492) lambda!189694 (h!57397 newBucket!224)))))

(assert (=> b!4616677 (contains!14344 lt!1772492 (_1!29409 (h!57397 newBucket!224)))))

(declare-fun lt!1772501 () Unit!110390)

(declare-fun Unit!110443 () Unit!110390)

(assert (=> b!4616677 (= lt!1772501 Unit!110443)))

(assert (=> b!4616677 (contains!14344 lt!1772483 (_1!29409 (h!57397 newBucket!224)))))

(declare-fun lt!1772489 () Unit!110390)

(declare-fun Unit!110444 () Unit!110390)

(assert (=> b!4616677 (= lt!1772489 Unit!110444)))

(declare-fun call!321929 () Bool)

(assert (=> b!4616677 call!321929))

(declare-fun lt!1772498 () Unit!110390)

(declare-fun Unit!110445 () Unit!110390)

(assert (=> b!4616677 (= lt!1772498 Unit!110445)))

(assert (=> b!4616677 (forall!10750 (toList!4857 lt!1772492) lambda!189694)))

(declare-fun lt!1772484 () Unit!110390)

(declare-fun Unit!110446 () Unit!110390)

(assert (=> b!4616677 (= lt!1772484 Unit!110446)))

(declare-fun lt!1772493 () Unit!110390)

(declare-fun Unit!110447 () Unit!110390)

(assert (=> b!4616677 (= lt!1772493 Unit!110447)))

(declare-fun lt!1772490 () Unit!110390)

(assert (=> b!4616677 (= lt!1772490 (addForallContainsKeyThenBeforeAdding!472 (ListMap!4162 Nil!51381) lt!1772483 (_1!29409 (h!57397 newBucket!224)) (_2!29409 (h!57397 newBucket!224))))))

(assert (=> b!4616677 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189694)))

(declare-fun lt!1772487 () Unit!110390)

(assert (=> b!4616677 (= lt!1772487 lt!1772490)))

(assert (=> b!4616677 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189694)))

(declare-fun lt!1772488 () Unit!110390)

(declare-fun Unit!110448 () Unit!110390)

(assert (=> b!4616677 (= lt!1772488 Unit!110448)))

(declare-fun res!1934391 () Bool)

(assert (=> b!4616677 (= res!1934391 (forall!10750 newBucket!224 lambda!189694))))

(declare-fun e!2879714 () Bool)

(assert (=> b!4616677 (=> (not res!1934391) (not e!2879714))))

(assert (=> b!4616677 e!2879714))

(declare-fun lt!1772485 () Unit!110390)

(declare-fun Unit!110449 () Unit!110390)

(assert (=> b!4616677 (= lt!1772485 Unit!110449)))

(declare-fun bm!321922 () Bool)

(declare-fun c!790397 () Bool)

(assert (=> bm!321922 (= call!321929 (forall!10750 (ite c!790397 (toList!4857 (ListMap!4162 Nil!51381)) newBucket!224) (ite c!790397 lambda!189690 lambda!189694)))))

(declare-fun bm!321923 () Bool)

(assert (=> bm!321923 (= call!321928 (forall!10750 (ite c!790397 (toList!4857 (ListMap!4162 Nil!51381)) (t!358513 newBucket!224)) (ite c!790397 lambda!189690 lambda!189694)))))

(declare-fun b!4616678 () Bool)

(assert (=> b!4616678 (= e!2879714 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189694))))

(declare-fun e!2879716 () Bool)

(assert (=> d!1454227 e!2879716))

(declare-fun res!1934392 () Bool)

(assert (=> d!1454227 (=> (not res!1934392) (not e!2879716))))

(assert (=> d!1454227 (= res!1934392 (forall!10750 newBucket!224 lambda!189696))))

(assert (=> d!1454227 (= lt!1772502 e!2879715)))

(assert (=> d!1454227 (= c!790397 ((_ is Nil!51381) newBucket!224))))

(assert (=> d!1454227 (noDuplicateKeys!1446 newBucket!224)))

(assert (=> d!1454227 (= (addToMapMapFromBucket!907 newBucket!224 (ListMap!4162 Nil!51381)) lt!1772502)))

(declare-fun bm!321924 () Bool)

(assert (=> bm!321924 (= call!321927 (lemmaContainsAllItsOwnKeys!473 (ListMap!4162 Nil!51381)))))

(declare-fun b!4616679 () Bool)

(declare-fun res!1934393 () Bool)

(assert (=> b!4616679 (=> (not res!1934393) (not e!2879716))))

(assert (=> b!4616679 (= res!1934393 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189696))))

(declare-fun b!4616680 () Bool)

(assert (=> b!4616680 (= e!2879716 (invariantList!1171 (toList!4857 lt!1772502)))))

(assert (=> b!4616681 (= e!2879715 (ListMap!4162 Nil!51381))))

(declare-fun lt!1772495 () Unit!110390)

(assert (=> b!4616681 (= lt!1772495 call!321927)))

(assert (=> b!4616681 call!321928))

(declare-fun lt!1772491 () Unit!110390)

(assert (=> b!4616681 (= lt!1772491 lt!1772495)))

(assert (=> b!4616681 call!321929))

(declare-fun lt!1772500 () Unit!110390)

(declare-fun Unit!110453 () Unit!110390)

(assert (=> b!4616681 (= lt!1772500 Unit!110453)))

(assert (= (and d!1454227 c!790397) b!4616681))

(assert (= (and d!1454227 (not c!790397)) b!4616677))

(assert (= (and b!4616677 res!1934391) b!4616678))

(assert (= (or b!4616681 b!4616677) bm!321924))

(assert (= (or b!4616681 b!4616677) bm!321923))

(assert (= (or b!4616681 b!4616677) bm!321922))

(assert (= (and d!1454227 res!1934392) b!4616679))

(assert (= (and b!4616679 res!1934393) b!4616680))

(declare-fun m!5451373 () Bool)

(assert (=> b!4616677 m!5451373))

(declare-fun m!5451375 () Bool)

(assert (=> b!4616677 m!5451375))

(declare-fun m!5451377 () Bool)

(assert (=> b!4616677 m!5451377))

(declare-fun m!5451379 () Bool)

(assert (=> b!4616677 m!5451379))

(declare-fun m!5451381 () Bool)

(assert (=> b!4616677 m!5451381))

(assert (=> b!4616677 m!5451377))

(assert (=> b!4616677 m!5451381))

(declare-fun m!5451383 () Bool)

(assert (=> b!4616677 m!5451383))

(declare-fun m!5451385 () Bool)

(assert (=> b!4616677 m!5451385))

(declare-fun m!5451387 () Bool)

(assert (=> b!4616677 m!5451387))

(assert (=> b!4616677 m!5451387))

(declare-fun m!5451389 () Bool)

(assert (=> b!4616677 m!5451389))

(declare-fun m!5451391 () Bool)

(assert (=> b!4616677 m!5451391))

(declare-fun m!5451393 () Bool)

(assert (=> bm!321922 m!5451393))

(declare-fun m!5451395 () Bool)

(assert (=> bm!321924 m!5451395))

(declare-fun m!5451397 () Bool)

(assert (=> d!1454227 m!5451397))

(assert (=> d!1454227 m!5450843))

(declare-fun m!5451399 () Bool)

(assert (=> bm!321923 m!5451399))

(declare-fun m!5451401 () Bool)

(assert (=> b!4616680 m!5451401))

(declare-fun m!5451403 () Bool)

(assert (=> b!4616679 m!5451403))

(assert (=> b!4616678 m!5451381))

(assert (=> b!4616455 d!1454227))

(declare-fun bs!1018729 () Bool)

(declare-fun b!4616694 () Bool)

(assert (= bs!1018729 (and b!4616694 d!1454227)))

(declare-fun lambda!189697 () Int)

(assert (=> bs!1018729 (= (= (ListMap!4162 Nil!51381) lt!1772502) (= lambda!189697 lambda!189696))))

(declare-fun bs!1018730 () Bool)

(assert (= bs!1018730 (and b!4616694 b!4616563)))

(assert (=> bs!1018730 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189697 lambda!189678))))

(declare-fun bs!1018731 () Bool)

(assert (= bs!1018731 (and b!4616694 b!4616677)))

(assert (=> bs!1018731 (= (= (ListMap!4162 Nil!51381) lt!1772483) (= lambda!189697 lambda!189694))))

(assert (=> bs!1018730 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189697 lambda!189677))))

(assert (=> bs!1018731 (= lambda!189697 lambda!189691)))

(declare-fun bs!1018732 () Bool)

(assert (= bs!1018732 (and b!4616694 d!1454173)))

(assert (=> bs!1018732 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189697 lambda!189679))))

(declare-fun bs!1018733 () Bool)

(assert (= bs!1018733 (and b!4616694 d!1454157)))

(assert (=> bs!1018733 (not (= lambda!189697 lambda!189595))))

(declare-fun bs!1018734 () Bool)

(assert (= bs!1018734 (and b!4616694 b!4616681)))

(assert (=> bs!1018734 (= lambda!189697 lambda!189690)))

(declare-fun bs!1018735 () Bool)

(assert (= bs!1018735 (and b!4616694 b!4616567)))

(assert (=> bs!1018735 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189697 lambda!189676))))

(assert (=> b!4616694 true))

(declare-fun bs!1018737 () Bool)

(declare-fun b!4616690 () Bool)

(assert (= bs!1018737 (and b!4616690 d!1454227)))

(declare-fun lambda!189698 () Int)

(assert (=> bs!1018737 (= (= (ListMap!4162 Nil!51381) lt!1772502) (= lambda!189698 lambda!189696))))

(declare-fun bs!1018738 () Bool)

(assert (= bs!1018738 (and b!4616690 b!4616563)))

(assert (=> bs!1018738 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189698 lambda!189678))))

(declare-fun bs!1018739 () Bool)

(assert (= bs!1018739 (and b!4616690 b!4616677)))

(assert (=> bs!1018739 (= (= (ListMap!4162 Nil!51381) lt!1772483) (= lambda!189698 lambda!189694))))

(assert (=> bs!1018739 (= lambda!189698 lambda!189691)))

(declare-fun bs!1018740 () Bool)

(assert (= bs!1018740 (and b!4616690 d!1454173)))

(assert (=> bs!1018740 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189698 lambda!189679))))

(declare-fun bs!1018741 () Bool)

(assert (= bs!1018741 (and b!4616690 d!1454157)))

(assert (=> bs!1018741 (not (= lambda!189698 lambda!189595))))

(declare-fun bs!1018742 () Bool)

(assert (= bs!1018742 (and b!4616690 b!4616681)))

(assert (=> bs!1018742 (= lambda!189698 lambda!189690)))

(declare-fun bs!1018743 () Bool)

(assert (= bs!1018743 (and b!4616690 b!4616567)))

(assert (=> bs!1018743 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189698 lambda!189676))))

(assert (=> bs!1018738 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189698 lambda!189677))))

(declare-fun bs!1018744 () Bool)

(assert (= bs!1018744 (and b!4616690 b!4616694)))

(assert (=> bs!1018744 (= lambda!189698 lambda!189697)))

(assert (=> b!4616690 true))

(declare-fun lambda!189699 () Int)

(declare-fun lt!1772507 () ListMap!4161)

(assert (=> bs!1018737 (= (= lt!1772507 lt!1772502) (= lambda!189699 lambda!189696))))

(assert (=> bs!1018738 (= (= lt!1772507 lt!1772380) (= lambda!189699 lambda!189678))))

(assert (=> bs!1018739 (= (= lt!1772507 lt!1772483) (= lambda!189699 lambda!189694))))

(assert (=> b!4616690 (= (= lt!1772507 (ListMap!4162 Nil!51381)) (= lambda!189699 lambda!189698))))

(assert (=> bs!1018739 (= (= lt!1772507 (ListMap!4162 Nil!51381)) (= lambda!189699 lambda!189691))))

(assert (=> bs!1018740 (= (= lt!1772507 lt!1772399) (= lambda!189699 lambda!189679))))

(assert (=> bs!1018741 (not (= lambda!189699 lambda!189595))))

(assert (=> bs!1018742 (= (= lt!1772507 (ListMap!4162 Nil!51381)) (= lambda!189699 lambda!189690))))

(assert (=> bs!1018743 (= (= lt!1772507 lt!1772144) (= lambda!189699 lambda!189676))))

(assert (=> bs!1018738 (= (= lt!1772507 lt!1772144) (= lambda!189699 lambda!189677))))

(assert (=> bs!1018744 (= (= lt!1772507 (ListMap!4162 Nil!51381)) (= lambda!189699 lambda!189697))))

(assert (=> b!4616690 true))

(declare-fun bs!1018745 () Bool)

(declare-fun d!1454233 () Bool)

(assert (= bs!1018745 (and d!1454233 d!1454227)))

(declare-fun lt!1772526 () ListMap!4161)

(declare-fun lambda!189700 () Int)

(assert (=> bs!1018745 (= (= lt!1772526 lt!1772502) (= lambda!189700 lambda!189696))))

(declare-fun bs!1018746 () Bool)

(assert (= bs!1018746 (and d!1454233 b!4616563)))

(assert (=> bs!1018746 (= (= lt!1772526 lt!1772380) (= lambda!189700 lambda!189678))))

(declare-fun bs!1018747 () Bool)

(assert (= bs!1018747 (and d!1454233 b!4616677)))

(assert (=> bs!1018747 (= (= lt!1772526 lt!1772483) (= lambda!189700 lambda!189694))))

(declare-fun bs!1018748 () Bool)

(assert (= bs!1018748 (and d!1454233 b!4616690)))

(assert (=> bs!1018748 (= (= lt!1772526 (ListMap!4162 Nil!51381)) (= lambda!189700 lambda!189698))))

(assert (=> bs!1018747 (= (= lt!1772526 (ListMap!4162 Nil!51381)) (= lambda!189700 lambda!189691))))

(declare-fun bs!1018749 () Bool)

(assert (= bs!1018749 (and d!1454233 d!1454173)))

(assert (=> bs!1018749 (= (= lt!1772526 lt!1772399) (= lambda!189700 lambda!189679))))

(declare-fun bs!1018750 () Bool)

(assert (= bs!1018750 (and d!1454233 d!1454157)))

(assert (=> bs!1018750 (not (= lambda!189700 lambda!189595))))

(declare-fun bs!1018751 () Bool)

(assert (= bs!1018751 (and d!1454233 b!4616681)))

(assert (=> bs!1018751 (= (= lt!1772526 (ListMap!4162 Nil!51381)) (= lambda!189700 lambda!189690))))

(declare-fun bs!1018752 () Bool)

(assert (= bs!1018752 (and d!1454233 b!4616567)))

(assert (=> bs!1018752 (= (= lt!1772526 lt!1772144) (= lambda!189700 lambda!189676))))

(assert (=> bs!1018748 (= (= lt!1772526 lt!1772507) (= lambda!189700 lambda!189699))))

(assert (=> bs!1018746 (= (= lt!1772526 lt!1772144) (= lambda!189700 lambda!189677))))

(declare-fun bs!1018753 () Bool)

(assert (= bs!1018753 (and d!1454233 b!4616694)))

(assert (=> bs!1018753 (= (= lt!1772526 (ListMap!4162 Nil!51381)) (= lambda!189700 lambda!189697))))

(assert (=> d!1454233 true))

(declare-fun e!2879726 () ListMap!4161)

(assert (=> b!4616690 (= e!2879726 lt!1772507)))

(declare-fun lt!1772516 () ListMap!4161)

(assert (=> b!4616690 (= lt!1772516 (+!1831 (ListMap!4162 Nil!51381) (h!57397 lt!1772145)))))

(assert (=> b!4616690 (= lt!1772507 (addToMapMapFromBucket!907 (t!358513 lt!1772145) (+!1831 (ListMap!4162 Nil!51381) (h!57397 lt!1772145))))))

(declare-fun lt!1772527 () Unit!110390)

(declare-fun call!321930 () Unit!110390)

(assert (=> b!4616690 (= lt!1772527 call!321930)))

(assert (=> b!4616690 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189698)))

(declare-fun lt!1772520 () Unit!110390)

(assert (=> b!4616690 (= lt!1772520 lt!1772527)))

(assert (=> b!4616690 (forall!10750 (toList!4857 lt!1772516) lambda!189699)))

(declare-fun lt!1772523 () Unit!110390)

(declare-fun Unit!110462 () Unit!110390)

(assert (=> b!4616690 (= lt!1772523 Unit!110462)))

(declare-fun call!321931 () Bool)

(assert (=> b!4616690 call!321931))

(declare-fun lt!1772521 () Unit!110390)

(declare-fun Unit!110463 () Unit!110390)

(assert (=> b!4616690 (= lt!1772521 Unit!110463)))

(declare-fun lt!1772518 () Unit!110390)

(declare-fun Unit!110464 () Unit!110390)

(assert (=> b!4616690 (= lt!1772518 Unit!110464)))

(declare-fun lt!1772510 () Unit!110390)

(assert (=> b!4616690 (= lt!1772510 (forallContained!2965 (toList!4857 lt!1772516) lambda!189699 (h!57397 lt!1772145)))))

(assert (=> b!4616690 (contains!14344 lt!1772516 (_1!29409 (h!57397 lt!1772145)))))

(declare-fun lt!1772525 () Unit!110390)

(declare-fun Unit!110465 () Unit!110390)

(assert (=> b!4616690 (= lt!1772525 Unit!110465)))

(assert (=> b!4616690 (contains!14344 lt!1772507 (_1!29409 (h!57397 lt!1772145)))))

(declare-fun lt!1772513 () Unit!110390)

(declare-fun Unit!110466 () Unit!110390)

(assert (=> b!4616690 (= lt!1772513 Unit!110466)))

(declare-fun call!321932 () Bool)

(assert (=> b!4616690 call!321932))

(declare-fun lt!1772522 () Unit!110390)

(declare-fun Unit!110467 () Unit!110390)

(assert (=> b!4616690 (= lt!1772522 Unit!110467)))

(assert (=> b!4616690 (forall!10750 (toList!4857 lt!1772516) lambda!189699)))

(declare-fun lt!1772508 () Unit!110390)

(declare-fun Unit!110468 () Unit!110390)

(assert (=> b!4616690 (= lt!1772508 Unit!110468)))

(declare-fun lt!1772517 () Unit!110390)

(declare-fun Unit!110469 () Unit!110390)

(assert (=> b!4616690 (= lt!1772517 Unit!110469)))

(declare-fun lt!1772514 () Unit!110390)

(assert (=> b!4616690 (= lt!1772514 (addForallContainsKeyThenBeforeAdding!472 (ListMap!4162 Nil!51381) lt!1772507 (_1!29409 (h!57397 lt!1772145)) (_2!29409 (h!57397 lt!1772145))))))

(assert (=> b!4616690 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189699)))

(declare-fun lt!1772511 () Unit!110390)

(assert (=> b!4616690 (= lt!1772511 lt!1772514)))

(assert (=> b!4616690 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189699)))

(declare-fun lt!1772512 () Unit!110390)

(declare-fun Unit!110470 () Unit!110390)

(assert (=> b!4616690 (= lt!1772512 Unit!110470)))

(declare-fun res!1934402 () Bool)

(assert (=> b!4616690 (= res!1934402 (forall!10750 lt!1772145 lambda!189699))))

(declare-fun e!2879725 () Bool)

(assert (=> b!4616690 (=> (not res!1934402) (not e!2879725))))

(assert (=> b!4616690 e!2879725))

(declare-fun lt!1772509 () Unit!110390)

(declare-fun Unit!110471 () Unit!110390)

(assert (=> b!4616690 (= lt!1772509 Unit!110471)))

(declare-fun bm!321925 () Bool)

(declare-fun c!790398 () Bool)

(assert (=> bm!321925 (= call!321932 (forall!10750 (ite c!790398 (toList!4857 (ListMap!4162 Nil!51381)) lt!1772145) (ite c!790398 lambda!189697 lambda!189699)))))

(declare-fun bm!321926 () Bool)

(assert (=> bm!321926 (= call!321931 (forall!10750 (ite c!790398 (toList!4857 (ListMap!4162 Nil!51381)) (t!358513 lt!1772145)) (ite c!790398 lambda!189697 lambda!189699)))))

(declare-fun b!4616691 () Bool)

(assert (=> b!4616691 (= e!2879725 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189699))))

(declare-fun e!2879727 () Bool)

(assert (=> d!1454233 e!2879727))

(declare-fun res!1934403 () Bool)

(assert (=> d!1454233 (=> (not res!1934403) (not e!2879727))))

(assert (=> d!1454233 (= res!1934403 (forall!10750 lt!1772145 lambda!189700))))

(assert (=> d!1454233 (= lt!1772526 e!2879726)))

(assert (=> d!1454233 (= c!790398 ((_ is Nil!51381) lt!1772145))))

(assert (=> d!1454233 (noDuplicateKeys!1446 lt!1772145)))

(assert (=> d!1454233 (= (addToMapMapFromBucket!907 lt!1772145 (ListMap!4162 Nil!51381)) lt!1772526)))

(declare-fun bm!321927 () Bool)

(assert (=> bm!321927 (= call!321930 (lemmaContainsAllItsOwnKeys!473 (ListMap!4162 Nil!51381)))))

(declare-fun b!4616692 () Bool)

(declare-fun res!1934404 () Bool)

(assert (=> b!4616692 (=> (not res!1934404) (not e!2879727))))

(assert (=> b!4616692 (= res!1934404 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189700))))

(declare-fun b!4616693 () Bool)

(assert (=> b!4616693 (= e!2879727 (invariantList!1171 (toList!4857 lt!1772526)))))

(assert (=> b!4616694 (= e!2879726 (ListMap!4162 Nil!51381))))

(declare-fun lt!1772519 () Unit!110390)

(assert (=> b!4616694 (= lt!1772519 call!321930)))

(assert (=> b!4616694 call!321931))

(declare-fun lt!1772515 () Unit!110390)

(assert (=> b!4616694 (= lt!1772515 lt!1772519)))

(assert (=> b!4616694 call!321932))

(declare-fun lt!1772524 () Unit!110390)

(declare-fun Unit!110472 () Unit!110390)

(assert (=> b!4616694 (= lt!1772524 Unit!110472)))

(assert (= (and d!1454233 c!790398) b!4616694))

(assert (= (and d!1454233 (not c!790398)) b!4616690))

(assert (= (and b!4616690 res!1934402) b!4616691))

(assert (= (or b!4616694 b!4616690) bm!321927))

(assert (= (or b!4616694 b!4616690) bm!321926))

(assert (= (or b!4616694 b!4616690) bm!321925))

(assert (= (and d!1454233 res!1934403) b!4616692))

(assert (= (and b!4616692 res!1934404) b!4616693))

(declare-fun m!5451411 () Bool)

(assert (=> b!4616690 m!5451411))

(declare-fun m!5451413 () Bool)

(assert (=> b!4616690 m!5451413))

(declare-fun m!5451415 () Bool)

(assert (=> b!4616690 m!5451415))

(declare-fun m!5451417 () Bool)

(assert (=> b!4616690 m!5451417))

(declare-fun m!5451419 () Bool)

(assert (=> b!4616690 m!5451419))

(assert (=> b!4616690 m!5451415))

(assert (=> b!4616690 m!5451419))

(declare-fun m!5451421 () Bool)

(assert (=> b!4616690 m!5451421))

(declare-fun m!5451423 () Bool)

(assert (=> b!4616690 m!5451423))

(declare-fun m!5451425 () Bool)

(assert (=> b!4616690 m!5451425))

(assert (=> b!4616690 m!5451425))

(declare-fun m!5451427 () Bool)

(assert (=> b!4616690 m!5451427))

(declare-fun m!5451429 () Bool)

(assert (=> b!4616690 m!5451429))

(declare-fun m!5451431 () Bool)

(assert (=> bm!321925 m!5451431))

(assert (=> bm!321927 m!5451395))

(declare-fun m!5451433 () Bool)

(assert (=> d!1454233 m!5451433))

(declare-fun m!5451435 () Bool)

(assert (=> d!1454233 m!5451435))

(declare-fun m!5451437 () Bool)

(assert (=> bm!321926 m!5451437))

(declare-fun m!5451439 () Bool)

(assert (=> b!4616693 m!5451439))

(declare-fun m!5451441 () Bool)

(assert (=> b!4616692 m!5451441))

(assert (=> b!4616691 m!5451419))

(assert (=> b!4616455 d!1454233))

(declare-fun d!1454237 () Bool)

(declare-fun e!2879734 () Bool)

(assert (=> d!1454237 e!2879734))

(declare-fun res!1934410 () Bool)

(assert (=> d!1454237 (=> (not res!1934410) (not e!2879734))))

(declare-fun lt!1772537 () ListMap!4161)

(assert (=> d!1454237 (= res!1934410 (contains!14344 lt!1772537 (_1!29409 lt!1772134)))))

(declare-fun lt!1772538 () List!51505)

(assert (=> d!1454237 (= lt!1772537 (ListMap!4162 lt!1772538))))

(declare-fun lt!1772539 () Unit!110390)

(declare-fun lt!1772536 () Unit!110390)

(assert (=> d!1454237 (= lt!1772539 lt!1772536)))

(assert (=> d!1454237 (= (getValueByKey!1388 lt!1772538 (_1!29409 lt!1772134)) (Some!11473 (_2!29409 lt!1772134)))))

(declare-fun lemmaContainsTupThenGetReturnValue!824 (List!51505 K!12765 V!13011) Unit!110390)

(assert (=> d!1454237 (= lt!1772536 (lemmaContainsTupThenGetReturnValue!824 lt!1772538 (_1!29409 lt!1772134) (_2!29409 lt!1772134)))))

(declare-fun insertNoDuplicatedKeys!332 (List!51505 K!12765 V!13011) List!51505)

(assert (=> d!1454237 (= lt!1772538 (insertNoDuplicatedKeys!332 (toList!4857 lt!1772148) (_1!29409 lt!1772134) (_2!29409 lt!1772134)))))

(assert (=> d!1454237 (= (+!1831 lt!1772148 lt!1772134) lt!1772537)))

(declare-fun b!4616705 () Bool)

(declare-fun res!1934409 () Bool)

(assert (=> b!4616705 (=> (not res!1934409) (not e!2879734))))

(assert (=> b!4616705 (= res!1934409 (= (getValueByKey!1388 (toList!4857 lt!1772537) (_1!29409 lt!1772134)) (Some!11473 (_2!29409 lt!1772134))))))

(declare-fun b!4616706 () Bool)

(declare-fun contains!14347 (List!51505 tuple2!52230) Bool)

(assert (=> b!4616706 (= e!2879734 (contains!14347 (toList!4857 lt!1772537) lt!1772134))))

(assert (= (and d!1454237 res!1934410) b!4616705))

(assert (= (and b!4616705 res!1934409) b!4616706))

(declare-fun m!5451443 () Bool)

(assert (=> d!1454237 m!5451443))

(declare-fun m!5451445 () Bool)

(assert (=> d!1454237 m!5451445))

(declare-fun m!5451447 () Bool)

(assert (=> d!1454237 m!5451447))

(declare-fun m!5451449 () Bool)

(assert (=> d!1454237 m!5451449))

(declare-fun m!5451451 () Bool)

(assert (=> b!4616705 m!5451451))

(declare-fun m!5451453 () Bool)

(assert (=> b!4616706 m!5451453))

(assert (=> b!4616456 d!1454237))

(declare-fun d!1454239 () Bool)

(assert (=> d!1454239 (= (eq!789 (addToMapMapFromBucket!907 (Cons!51381 lt!1772134 lt!1772145) (ListMap!4162 Nil!51381)) (+!1831 lt!1772148 lt!1772134)) (= (content!8736 (toList!4857 (addToMapMapFromBucket!907 (Cons!51381 lt!1772134 lt!1772145) (ListMap!4162 Nil!51381)))) (content!8736 (toList!4857 (+!1831 lt!1772148 lt!1772134)))))))

(declare-fun bs!1018754 () Bool)

(assert (= bs!1018754 d!1454239))

(declare-fun m!5451455 () Bool)

(assert (=> bs!1018754 m!5451455))

(declare-fun m!5451457 () Bool)

(assert (=> bs!1018754 m!5451457))

(assert (=> b!4616456 d!1454239))

(declare-fun d!1454241 () Bool)

(assert (=> d!1454241 (= (eq!789 lt!1772138 lt!1772149) (= (content!8736 (toList!4857 lt!1772138)) (content!8736 (toList!4857 lt!1772149))))))

(declare-fun bs!1018755 () Bool)

(assert (= bs!1018755 d!1454241))

(assert (=> bs!1018755 m!5451209))

(declare-fun m!5451459 () Bool)

(assert (=> bs!1018755 m!5451459))

(assert (=> b!4616456 d!1454241))

(declare-fun d!1454243 () Bool)

(assert (=> d!1454243 (= (head!9606 oldBucket!40) (h!57397 oldBucket!40))))

(assert (=> b!4616456 d!1454243))

(declare-fun bs!1018756 () Bool)

(declare-fun b!4616711 () Bool)

(assert (= bs!1018756 (and b!4616711 d!1454227)))

(declare-fun lambda!189701 () Int)

(assert (=> bs!1018756 (= (= (ListMap!4162 Nil!51381) lt!1772502) (= lambda!189701 lambda!189696))))

(declare-fun bs!1018757 () Bool)

(assert (= bs!1018757 (and b!4616711 b!4616563)))

(assert (=> bs!1018757 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189701 lambda!189678))))

(declare-fun bs!1018758 () Bool)

(assert (= bs!1018758 (and b!4616711 b!4616677)))

(assert (=> bs!1018758 (= (= (ListMap!4162 Nil!51381) lt!1772483) (= lambda!189701 lambda!189694))))

(declare-fun bs!1018759 () Bool)

(assert (= bs!1018759 (and b!4616711 b!4616690)))

(assert (=> bs!1018759 (= lambda!189701 lambda!189698)))

(declare-fun bs!1018760 () Bool)

(assert (= bs!1018760 (and b!4616711 d!1454233)))

(assert (=> bs!1018760 (= (= (ListMap!4162 Nil!51381) lt!1772526) (= lambda!189701 lambda!189700))))

(assert (=> bs!1018758 (= lambda!189701 lambda!189691)))

(declare-fun bs!1018761 () Bool)

(assert (= bs!1018761 (and b!4616711 d!1454173)))

(assert (=> bs!1018761 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189701 lambda!189679))))

(declare-fun bs!1018762 () Bool)

(assert (= bs!1018762 (and b!4616711 d!1454157)))

(assert (=> bs!1018762 (not (= lambda!189701 lambda!189595))))

(declare-fun bs!1018763 () Bool)

(assert (= bs!1018763 (and b!4616711 b!4616681)))

(assert (=> bs!1018763 (= lambda!189701 lambda!189690)))

(declare-fun bs!1018764 () Bool)

(assert (= bs!1018764 (and b!4616711 b!4616567)))

(assert (=> bs!1018764 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189701 lambda!189676))))

(assert (=> bs!1018759 (= (= (ListMap!4162 Nil!51381) lt!1772507) (= lambda!189701 lambda!189699))))

(assert (=> bs!1018757 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189701 lambda!189677))))

(declare-fun bs!1018765 () Bool)

(assert (= bs!1018765 (and b!4616711 b!4616694)))

(assert (=> bs!1018765 (= lambda!189701 lambda!189697)))

(assert (=> b!4616711 true))

(declare-fun bs!1018766 () Bool)

(declare-fun b!4616707 () Bool)

(assert (= bs!1018766 (and b!4616707 d!1454227)))

(declare-fun lambda!189702 () Int)

(assert (=> bs!1018766 (= (= (ListMap!4162 Nil!51381) lt!1772502) (= lambda!189702 lambda!189696))))

(declare-fun bs!1018767 () Bool)

(assert (= bs!1018767 (and b!4616707 b!4616563)))

(assert (=> bs!1018767 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189702 lambda!189678))))

(declare-fun bs!1018768 () Bool)

(assert (= bs!1018768 (and b!4616707 b!4616677)))

(assert (=> bs!1018768 (= (= (ListMap!4162 Nil!51381) lt!1772483) (= lambda!189702 lambda!189694))))

(declare-fun bs!1018769 () Bool)

(assert (= bs!1018769 (and b!4616707 b!4616690)))

(assert (=> bs!1018769 (= lambda!189702 lambda!189698)))

(declare-fun bs!1018770 () Bool)

(assert (= bs!1018770 (and b!4616707 d!1454233)))

(assert (=> bs!1018770 (= (= (ListMap!4162 Nil!51381) lt!1772526) (= lambda!189702 lambda!189700))))

(declare-fun bs!1018771 () Bool)

(assert (= bs!1018771 (and b!4616707 b!4616711)))

(assert (=> bs!1018771 (= lambda!189702 lambda!189701)))

(assert (=> bs!1018768 (= lambda!189702 lambda!189691)))

(declare-fun bs!1018772 () Bool)

(assert (= bs!1018772 (and b!4616707 d!1454173)))

(assert (=> bs!1018772 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189702 lambda!189679))))

(declare-fun bs!1018773 () Bool)

(assert (= bs!1018773 (and b!4616707 d!1454157)))

(assert (=> bs!1018773 (not (= lambda!189702 lambda!189595))))

(declare-fun bs!1018774 () Bool)

(assert (= bs!1018774 (and b!4616707 b!4616681)))

(assert (=> bs!1018774 (= lambda!189702 lambda!189690)))

(declare-fun bs!1018775 () Bool)

(assert (= bs!1018775 (and b!4616707 b!4616567)))

(assert (=> bs!1018775 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189702 lambda!189676))))

(assert (=> bs!1018769 (= (= (ListMap!4162 Nil!51381) lt!1772507) (= lambda!189702 lambda!189699))))

(assert (=> bs!1018767 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189702 lambda!189677))))

(declare-fun bs!1018776 () Bool)

(assert (= bs!1018776 (and b!4616707 b!4616694)))

(assert (=> bs!1018776 (= lambda!189702 lambda!189697)))

(assert (=> b!4616707 true))

(declare-fun lambda!189703 () Int)

(declare-fun lt!1772540 () ListMap!4161)

(assert (=> bs!1018766 (= (= lt!1772540 lt!1772502) (= lambda!189703 lambda!189696))))

(assert (=> bs!1018767 (= (= lt!1772540 lt!1772380) (= lambda!189703 lambda!189678))))

(assert (=> bs!1018768 (= (= lt!1772540 lt!1772483) (= lambda!189703 lambda!189694))))

(assert (=> bs!1018769 (= (= lt!1772540 (ListMap!4162 Nil!51381)) (= lambda!189703 lambda!189698))))

(assert (=> bs!1018770 (= (= lt!1772540 lt!1772526) (= lambda!189703 lambda!189700))))

(assert (=> bs!1018771 (= (= lt!1772540 (ListMap!4162 Nil!51381)) (= lambda!189703 lambda!189701))))

(assert (=> bs!1018768 (= (= lt!1772540 (ListMap!4162 Nil!51381)) (= lambda!189703 lambda!189691))))

(assert (=> bs!1018772 (= (= lt!1772540 lt!1772399) (= lambda!189703 lambda!189679))))

(assert (=> bs!1018773 (not (= lambda!189703 lambda!189595))))

(assert (=> bs!1018774 (= (= lt!1772540 (ListMap!4162 Nil!51381)) (= lambda!189703 lambda!189690))))

(assert (=> bs!1018775 (= (= lt!1772540 lt!1772144) (= lambda!189703 lambda!189676))))

(assert (=> bs!1018769 (= (= lt!1772540 lt!1772507) (= lambda!189703 lambda!189699))))

(assert (=> bs!1018767 (= (= lt!1772540 lt!1772144) (= lambda!189703 lambda!189677))))

(assert (=> b!4616707 (= (= lt!1772540 (ListMap!4162 Nil!51381)) (= lambda!189703 lambda!189702))))

(assert (=> bs!1018776 (= (= lt!1772540 (ListMap!4162 Nil!51381)) (= lambda!189703 lambda!189697))))

(assert (=> b!4616707 true))

(declare-fun bs!1018777 () Bool)

(declare-fun d!1454245 () Bool)

(assert (= bs!1018777 (and d!1454245 d!1454227)))

(declare-fun lt!1772559 () ListMap!4161)

(declare-fun lambda!189704 () Int)

(assert (=> bs!1018777 (= (= lt!1772559 lt!1772502) (= lambda!189704 lambda!189696))))

(declare-fun bs!1018778 () Bool)

(assert (= bs!1018778 (and d!1454245 b!4616563)))

(assert (=> bs!1018778 (= (= lt!1772559 lt!1772380) (= lambda!189704 lambda!189678))))

(declare-fun bs!1018779 () Bool)

(assert (= bs!1018779 (and d!1454245 b!4616677)))

(assert (=> bs!1018779 (= (= lt!1772559 lt!1772483) (= lambda!189704 lambda!189694))))

(declare-fun bs!1018780 () Bool)

(assert (= bs!1018780 (and d!1454245 b!4616690)))

(assert (=> bs!1018780 (= (= lt!1772559 (ListMap!4162 Nil!51381)) (= lambda!189704 lambda!189698))))

(declare-fun bs!1018781 () Bool)

(assert (= bs!1018781 (and d!1454245 d!1454233)))

(assert (=> bs!1018781 (= (= lt!1772559 lt!1772526) (= lambda!189704 lambda!189700))))

(declare-fun bs!1018782 () Bool)

(assert (= bs!1018782 (and d!1454245 b!4616707)))

(assert (=> bs!1018782 (= (= lt!1772559 lt!1772540) (= lambda!189704 lambda!189703))))

(declare-fun bs!1018783 () Bool)

(assert (= bs!1018783 (and d!1454245 b!4616711)))

(assert (=> bs!1018783 (= (= lt!1772559 (ListMap!4162 Nil!51381)) (= lambda!189704 lambda!189701))))

(assert (=> bs!1018779 (= (= lt!1772559 (ListMap!4162 Nil!51381)) (= lambda!189704 lambda!189691))))

(declare-fun bs!1018784 () Bool)

(assert (= bs!1018784 (and d!1454245 d!1454173)))

(assert (=> bs!1018784 (= (= lt!1772559 lt!1772399) (= lambda!189704 lambda!189679))))

(declare-fun bs!1018785 () Bool)

(assert (= bs!1018785 (and d!1454245 d!1454157)))

(assert (=> bs!1018785 (not (= lambda!189704 lambda!189595))))

(declare-fun bs!1018786 () Bool)

(assert (= bs!1018786 (and d!1454245 b!4616681)))

(assert (=> bs!1018786 (= (= lt!1772559 (ListMap!4162 Nil!51381)) (= lambda!189704 lambda!189690))))

(declare-fun bs!1018787 () Bool)

(assert (= bs!1018787 (and d!1454245 b!4616567)))

(assert (=> bs!1018787 (= (= lt!1772559 lt!1772144) (= lambda!189704 lambda!189676))))

(assert (=> bs!1018780 (= (= lt!1772559 lt!1772507) (= lambda!189704 lambda!189699))))

(assert (=> bs!1018778 (= (= lt!1772559 lt!1772144) (= lambda!189704 lambda!189677))))

(assert (=> bs!1018782 (= (= lt!1772559 (ListMap!4162 Nil!51381)) (= lambda!189704 lambda!189702))))

(declare-fun bs!1018788 () Bool)

(assert (= bs!1018788 (and d!1454245 b!4616694)))

(assert (=> bs!1018788 (= (= lt!1772559 (ListMap!4162 Nil!51381)) (= lambda!189704 lambda!189697))))

(assert (=> d!1454245 true))

(declare-fun e!2879736 () ListMap!4161)

(assert (=> b!4616707 (= e!2879736 lt!1772540)))

(declare-fun lt!1772549 () ListMap!4161)

(assert (=> b!4616707 (= lt!1772549 (+!1831 (ListMap!4162 Nil!51381) (h!57397 oldBucket!40)))))

(assert (=> b!4616707 (= lt!1772540 (addToMapMapFromBucket!907 (t!358513 oldBucket!40) (+!1831 (ListMap!4162 Nil!51381) (h!57397 oldBucket!40))))))

(declare-fun lt!1772560 () Unit!110390)

(declare-fun call!321933 () Unit!110390)

(assert (=> b!4616707 (= lt!1772560 call!321933)))

(assert (=> b!4616707 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189702)))

(declare-fun lt!1772553 () Unit!110390)

(assert (=> b!4616707 (= lt!1772553 lt!1772560)))

(assert (=> b!4616707 (forall!10750 (toList!4857 lt!1772549) lambda!189703)))

(declare-fun lt!1772556 () Unit!110390)

(declare-fun Unit!110484 () Unit!110390)

(assert (=> b!4616707 (= lt!1772556 Unit!110484)))

(declare-fun call!321934 () Bool)

(assert (=> b!4616707 call!321934))

(declare-fun lt!1772554 () Unit!110390)

(declare-fun Unit!110485 () Unit!110390)

(assert (=> b!4616707 (= lt!1772554 Unit!110485)))

(declare-fun lt!1772551 () Unit!110390)

(declare-fun Unit!110486 () Unit!110390)

(assert (=> b!4616707 (= lt!1772551 Unit!110486)))

(declare-fun lt!1772543 () Unit!110390)

(assert (=> b!4616707 (= lt!1772543 (forallContained!2965 (toList!4857 lt!1772549) lambda!189703 (h!57397 oldBucket!40)))))

(assert (=> b!4616707 (contains!14344 lt!1772549 (_1!29409 (h!57397 oldBucket!40)))))

(declare-fun lt!1772558 () Unit!110390)

(declare-fun Unit!110487 () Unit!110390)

(assert (=> b!4616707 (= lt!1772558 Unit!110487)))

(assert (=> b!4616707 (contains!14344 lt!1772540 (_1!29409 (h!57397 oldBucket!40)))))

(declare-fun lt!1772546 () Unit!110390)

(declare-fun Unit!110488 () Unit!110390)

(assert (=> b!4616707 (= lt!1772546 Unit!110488)))

(declare-fun call!321935 () Bool)

(assert (=> b!4616707 call!321935))

(declare-fun lt!1772555 () Unit!110390)

(declare-fun Unit!110489 () Unit!110390)

(assert (=> b!4616707 (= lt!1772555 Unit!110489)))

(assert (=> b!4616707 (forall!10750 (toList!4857 lt!1772549) lambda!189703)))

(declare-fun lt!1772541 () Unit!110390)

(declare-fun Unit!110490 () Unit!110390)

(assert (=> b!4616707 (= lt!1772541 Unit!110490)))

(declare-fun lt!1772550 () Unit!110390)

(declare-fun Unit!110491 () Unit!110390)

(assert (=> b!4616707 (= lt!1772550 Unit!110491)))

(declare-fun lt!1772547 () Unit!110390)

(assert (=> b!4616707 (= lt!1772547 (addForallContainsKeyThenBeforeAdding!472 (ListMap!4162 Nil!51381) lt!1772540 (_1!29409 (h!57397 oldBucket!40)) (_2!29409 (h!57397 oldBucket!40))))))

(assert (=> b!4616707 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189703)))

(declare-fun lt!1772544 () Unit!110390)

(assert (=> b!4616707 (= lt!1772544 lt!1772547)))

(assert (=> b!4616707 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189703)))

(declare-fun lt!1772545 () Unit!110390)

(declare-fun Unit!110492 () Unit!110390)

(assert (=> b!4616707 (= lt!1772545 Unit!110492)))

(declare-fun res!1934411 () Bool)

(assert (=> b!4616707 (= res!1934411 (forall!10750 oldBucket!40 lambda!189703))))

(declare-fun e!2879735 () Bool)

(assert (=> b!4616707 (=> (not res!1934411) (not e!2879735))))

(assert (=> b!4616707 e!2879735))

(declare-fun lt!1772542 () Unit!110390)

(declare-fun Unit!110493 () Unit!110390)

(assert (=> b!4616707 (= lt!1772542 Unit!110493)))

(declare-fun bm!321928 () Bool)

(declare-fun c!790399 () Bool)

(assert (=> bm!321928 (= call!321935 (forall!10750 (ite c!790399 (toList!4857 (ListMap!4162 Nil!51381)) oldBucket!40) (ite c!790399 lambda!189701 lambda!189703)))))

(declare-fun bm!321929 () Bool)

(assert (=> bm!321929 (= call!321934 (forall!10750 (ite c!790399 (toList!4857 (ListMap!4162 Nil!51381)) (t!358513 oldBucket!40)) (ite c!790399 lambda!189701 lambda!189703)))))

(declare-fun b!4616708 () Bool)

(assert (=> b!4616708 (= e!2879735 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189703))))

(declare-fun e!2879737 () Bool)

(assert (=> d!1454245 e!2879737))

(declare-fun res!1934412 () Bool)

(assert (=> d!1454245 (=> (not res!1934412) (not e!2879737))))

(assert (=> d!1454245 (= res!1934412 (forall!10750 oldBucket!40 lambda!189704))))

(assert (=> d!1454245 (= lt!1772559 e!2879736)))

(assert (=> d!1454245 (= c!790399 ((_ is Nil!51381) oldBucket!40))))

(assert (=> d!1454245 (noDuplicateKeys!1446 oldBucket!40)))

(assert (=> d!1454245 (= (addToMapMapFromBucket!907 oldBucket!40 (ListMap!4162 Nil!51381)) lt!1772559)))

(declare-fun bm!321930 () Bool)

(assert (=> bm!321930 (= call!321933 (lemmaContainsAllItsOwnKeys!473 (ListMap!4162 Nil!51381)))))

(declare-fun b!4616709 () Bool)

(declare-fun res!1934413 () Bool)

(assert (=> b!4616709 (=> (not res!1934413) (not e!2879737))))

(assert (=> b!4616709 (= res!1934413 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189704))))

(declare-fun b!4616710 () Bool)

(assert (=> b!4616710 (= e!2879737 (invariantList!1171 (toList!4857 lt!1772559)))))

(assert (=> b!4616711 (= e!2879736 (ListMap!4162 Nil!51381))))

(declare-fun lt!1772552 () Unit!110390)

(assert (=> b!4616711 (= lt!1772552 call!321933)))

(assert (=> b!4616711 call!321934))

(declare-fun lt!1772548 () Unit!110390)

(assert (=> b!4616711 (= lt!1772548 lt!1772552)))

(assert (=> b!4616711 call!321935))

(declare-fun lt!1772557 () Unit!110390)

(declare-fun Unit!110494 () Unit!110390)

(assert (=> b!4616711 (= lt!1772557 Unit!110494)))

(assert (= (and d!1454245 c!790399) b!4616711))

(assert (= (and d!1454245 (not c!790399)) b!4616707))

(assert (= (and b!4616707 res!1934411) b!4616708))

(assert (= (or b!4616711 b!4616707) bm!321930))

(assert (= (or b!4616711 b!4616707) bm!321929))

(assert (= (or b!4616711 b!4616707) bm!321928))

(assert (= (and d!1454245 res!1934412) b!4616709))

(assert (= (and b!4616709 res!1934413) b!4616710))

(declare-fun m!5451461 () Bool)

(assert (=> b!4616707 m!5451461))

(declare-fun m!5451463 () Bool)

(assert (=> b!4616707 m!5451463))

(declare-fun m!5451465 () Bool)

(assert (=> b!4616707 m!5451465))

(declare-fun m!5451467 () Bool)

(assert (=> b!4616707 m!5451467))

(declare-fun m!5451469 () Bool)

(assert (=> b!4616707 m!5451469))

(assert (=> b!4616707 m!5451465))

(assert (=> b!4616707 m!5451469))

(declare-fun m!5451471 () Bool)

(assert (=> b!4616707 m!5451471))

(declare-fun m!5451473 () Bool)

(assert (=> b!4616707 m!5451473))

(declare-fun m!5451475 () Bool)

(assert (=> b!4616707 m!5451475))

(assert (=> b!4616707 m!5451475))

(declare-fun m!5451477 () Bool)

(assert (=> b!4616707 m!5451477))

(declare-fun m!5451479 () Bool)

(assert (=> b!4616707 m!5451479))

(declare-fun m!5451481 () Bool)

(assert (=> bm!321928 m!5451481))

(assert (=> bm!321930 m!5451395))

(declare-fun m!5451483 () Bool)

(assert (=> d!1454245 m!5451483))

(assert (=> d!1454245 m!5450849))

(declare-fun m!5451485 () Bool)

(assert (=> bm!321929 m!5451485))

(declare-fun m!5451487 () Bool)

(assert (=> b!4616710 m!5451487))

(declare-fun m!5451489 () Bool)

(assert (=> b!4616709 m!5451489))

(assert (=> b!4616708 m!5451469))

(assert (=> b!4616456 d!1454245))

(declare-fun bs!1018789 () Bool)

(declare-fun b!4616716 () Bool)

(assert (= bs!1018789 (and b!4616716 d!1454227)))

(declare-fun lambda!189705 () Int)

(assert (=> bs!1018789 (= (= (ListMap!4162 Nil!51381) lt!1772502) (= lambda!189705 lambda!189696))))

(declare-fun bs!1018790 () Bool)

(assert (= bs!1018790 (and b!4616716 b!4616563)))

(assert (=> bs!1018790 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189705 lambda!189678))))

(declare-fun bs!1018791 () Bool)

(assert (= bs!1018791 (and b!4616716 b!4616677)))

(assert (=> bs!1018791 (= (= (ListMap!4162 Nil!51381) lt!1772483) (= lambda!189705 lambda!189694))))

(declare-fun bs!1018792 () Bool)

(assert (= bs!1018792 (and b!4616716 b!4616690)))

(assert (=> bs!1018792 (= lambda!189705 lambda!189698)))

(declare-fun bs!1018793 () Bool)

(assert (= bs!1018793 (and b!4616716 d!1454233)))

(assert (=> bs!1018793 (= (= (ListMap!4162 Nil!51381) lt!1772526) (= lambda!189705 lambda!189700))))

(declare-fun bs!1018794 () Bool)

(assert (= bs!1018794 (and b!4616716 d!1454245)))

(assert (=> bs!1018794 (= (= (ListMap!4162 Nil!51381) lt!1772559) (= lambda!189705 lambda!189704))))

(declare-fun bs!1018795 () Bool)

(assert (= bs!1018795 (and b!4616716 b!4616707)))

(assert (=> bs!1018795 (= (= (ListMap!4162 Nil!51381) lt!1772540) (= lambda!189705 lambda!189703))))

(declare-fun bs!1018796 () Bool)

(assert (= bs!1018796 (and b!4616716 b!4616711)))

(assert (=> bs!1018796 (= lambda!189705 lambda!189701)))

(assert (=> bs!1018791 (= lambda!189705 lambda!189691)))

(declare-fun bs!1018797 () Bool)

(assert (= bs!1018797 (and b!4616716 d!1454173)))

(assert (=> bs!1018797 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189705 lambda!189679))))

(declare-fun bs!1018798 () Bool)

(assert (= bs!1018798 (and b!4616716 d!1454157)))

(assert (=> bs!1018798 (not (= lambda!189705 lambda!189595))))

(declare-fun bs!1018799 () Bool)

(assert (= bs!1018799 (and b!4616716 b!4616681)))

(assert (=> bs!1018799 (= lambda!189705 lambda!189690)))

(declare-fun bs!1018800 () Bool)

(assert (= bs!1018800 (and b!4616716 b!4616567)))

(assert (=> bs!1018800 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189705 lambda!189676))))

(assert (=> bs!1018792 (= (= (ListMap!4162 Nil!51381) lt!1772507) (= lambda!189705 lambda!189699))))

(assert (=> bs!1018790 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189705 lambda!189677))))

(assert (=> bs!1018795 (= lambda!189705 lambda!189702)))

(declare-fun bs!1018801 () Bool)

(assert (= bs!1018801 (and b!4616716 b!4616694)))

(assert (=> bs!1018801 (= lambda!189705 lambda!189697)))

(assert (=> b!4616716 true))

(declare-fun bs!1018802 () Bool)

(declare-fun b!4616712 () Bool)

(assert (= bs!1018802 (and b!4616712 d!1454227)))

(declare-fun lambda!189706 () Int)

(assert (=> bs!1018802 (= (= (ListMap!4162 Nil!51381) lt!1772502) (= lambda!189706 lambda!189696))))

(declare-fun bs!1018803 () Bool)

(assert (= bs!1018803 (and b!4616712 b!4616563)))

(assert (=> bs!1018803 (= (= (ListMap!4162 Nil!51381) lt!1772380) (= lambda!189706 lambda!189678))))

(declare-fun bs!1018804 () Bool)

(assert (= bs!1018804 (and b!4616712 b!4616677)))

(assert (=> bs!1018804 (= (= (ListMap!4162 Nil!51381) lt!1772483) (= lambda!189706 lambda!189694))))

(declare-fun bs!1018805 () Bool)

(assert (= bs!1018805 (and b!4616712 b!4616690)))

(assert (=> bs!1018805 (= lambda!189706 lambda!189698)))

(declare-fun bs!1018806 () Bool)

(assert (= bs!1018806 (and b!4616712 d!1454233)))

(assert (=> bs!1018806 (= (= (ListMap!4162 Nil!51381) lt!1772526) (= lambda!189706 lambda!189700))))

(declare-fun bs!1018807 () Bool)

(assert (= bs!1018807 (and b!4616712 d!1454245)))

(assert (=> bs!1018807 (= (= (ListMap!4162 Nil!51381) lt!1772559) (= lambda!189706 lambda!189704))))

(declare-fun bs!1018808 () Bool)

(assert (= bs!1018808 (and b!4616712 b!4616707)))

(assert (=> bs!1018808 (= (= (ListMap!4162 Nil!51381) lt!1772540) (= lambda!189706 lambda!189703))))

(declare-fun bs!1018809 () Bool)

(assert (= bs!1018809 (and b!4616712 b!4616711)))

(assert (=> bs!1018809 (= lambda!189706 lambda!189701)))

(assert (=> bs!1018804 (= lambda!189706 lambda!189691)))

(declare-fun bs!1018810 () Bool)

(assert (= bs!1018810 (and b!4616712 d!1454173)))

(assert (=> bs!1018810 (= (= (ListMap!4162 Nil!51381) lt!1772399) (= lambda!189706 lambda!189679))))

(declare-fun bs!1018811 () Bool)

(assert (= bs!1018811 (and b!4616712 d!1454157)))

(assert (=> bs!1018811 (not (= lambda!189706 lambda!189595))))

(declare-fun bs!1018812 () Bool)

(assert (= bs!1018812 (and b!4616712 b!4616716)))

(assert (=> bs!1018812 (= lambda!189706 lambda!189705)))

(declare-fun bs!1018813 () Bool)

(assert (= bs!1018813 (and b!4616712 b!4616681)))

(assert (=> bs!1018813 (= lambda!189706 lambda!189690)))

(declare-fun bs!1018814 () Bool)

(assert (= bs!1018814 (and b!4616712 b!4616567)))

(assert (=> bs!1018814 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189706 lambda!189676))))

(assert (=> bs!1018805 (= (= (ListMap!4162 Nil!51381) lt!1772507) (= lambda!189706 lambda!189699))))

(assert (=> bs!1018803 (= (= (ListMap!4162 Nil!51381) lt!1772144) (= lambda!189706 lambda!189677))))

(assert (=> bs!1018808 (= lambda!189706 lambda!189702)))

(declare-fun bs!1018815 () Bool)

(assert (= bs!1018815 (and b!4616712 b!4616694)))

(assert (=> bs!1018815 (= lambda!189706 lambda!189697)))

(assert (=> b!4616712 true))

(declare-fun lt!1772561 () ListMap!4161)

(declare-fun lambda!189707 () Int)

(assert (=> bs!1018802 (= (= lt!1772561 lt!1772502) (= lambda!189707 lambda!189696))))

(assert (=> bs!1018803 (= (= lt!1772561 lt!1772380) (= lambda!189707 lambda!189678))))

(assert (=> bs!1018804 (= (= lt!1772561 lt!1772483) (= lambda!189707 lambda!189694))))

(assert (=> bs!1018805 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189698))))

(assert (=> bs!1018806 (= (= lt!1772561 lt!1772526) (= lambda!189707 lambda!189700))))

(assert (=> bs!1018807 (= (= lt!1772561 lt!1772559) (= lambda!189707 lambda!189704))))

(assert (=> b!4616712 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189706))))

(assert (=> bs!1018808 (= (= lt!1772561 lt!1772540) (= lambda!189707 lambda!189703))))

(assert (=> bs!1018809 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189701))))

(assert (=> bs!1018804 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189691))))

(assert (=> bs!1018810 (= (= lt!1772561 lt!1772399) (= lambda!189707 lambda!189679))))

(assert (=> bs!1018811 (not (= lambda!189707 lambda!189595))))

(assert (=> bs!1018812 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189705))))

(assert (=> bs!1018813 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189690))))

(assert (=> bs!1018814 (= (= lt!1772561 lt!1772144) (= lambda!189707 lambda!189676))))

(assert (=> bs!1018805 (= (= lt!1772561 lt!1772507) (= lambda!189707 lambda!189699))))

(assert (=> bs!1018803 (= (= lt!1772561 lt!1772144) (= lambda!189707 lambda!189677))))

(assert (=> bs!1018808 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189702))))

(assert (=> bs!1018815 (= (= lt!1772561 (ListMap!4162 Nil!51381)) (= lambda!189707 lambda!189697))))

(assert (=> b!4616712 true))

(declare-fun bs!1018816 () Bool)

(declare-fun d!1454247 () Bool)

(assert (= bs!1018816 (and d!1454247 d!1454227)))

(declare-fun lt!1772580 () ListMap!4161)

(declare-fun lambda!189708 () Int)

(assert (=> bs!1018816 (= (= lt!1772580 lt!1772502) (= lambda!189708 lambda!189696))))

(declare-fun bs!1018817 () Bool)

(assert (= bs!1018817 (and d!1454247 b!4616563)))

(assert (=> bs!1018817 (= (= lt!1772580 lt!1772380) (= lambda!189708 lambda!189678))))

(declare-fun bs!1018818 () Bool)

(assert (= bs!1018818 (and d!1454247 b!4616677)))

(assert (=> bs!1018818 (= (= lt!1772580 lt!1772483) (= lambda!189708 lambda!189694))))

(declare-fun bs!1018819 () Bool)

(assert (= bs!1018819 (and d!1454247 b!4616690)))

(assert (=> bs!1018819 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189698))))

(declare-fun bs!1018820 () Bool)

(assert (= bs!1018820 (and d!1454247 d!1454233)))

(assert (=> bs!1018820 (= (= lt!1772580 lt!1772526) (= lambda!189708 lambda!189700))))

(declare-fun bs!1018821 () Bool)

(assert (= bs!1018821 (and d!1454247 d!1454245)))

(assert (=> bs!1018821 (= (= lt!1772580 lt!1772559) (= lambda!189708 lambda!189704))))

(declare-fun bs!1018822 () Bool)

(assert (= bs!1018822 (and d!1454247 b!4616712)))

(assert (=> bs!1018822 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189706))))

(declare-fun bs!1018823 () Bool)

(assert (= bs!1018823 (and d!1454247 b!4616707)))

(assert (=> bs!1018823 (= (= lt!1772580 lt!1772540) (= lambda!189708 lambda!189703))))

(declare-fun bs!1018824 () Bool)

(assert (= bs!1018824 (and d!1454247 b!4616711)))

(assert (=> bs!1018824 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189701))))

(assert (=> bs!1018818 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189691))))

(declare-fun bs!1018825 () Bool)

(assert (= bs!1018825 (and d!1454247 d!1454173)))

(assert (=> bs!1018825 (= (= lt!1772580 lt!1772399) (= lambda!189708 lambda!189679))))

(declare-fun bs!1018826 () Bool)

(assert (= bs!1018826 (and d!1454247 d!1454157)))

(assert (=> bs!1018826 (not (= lambda!189708 lambda!189595))))

(assert (=> bs!1018822 (= (= lt!1772580 lt!1772561) (= lambda!189708 lambda!189707))))

(declare-fun bs!1018827 () Bool)

(assert (= bs!1018827 (and d!1454247 b!4616716)))

(assert (=> bs!1018827 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189705))))

(declare-fun bs!1018828 () Bool)

(assert (= bs!1018828 (and d!1454247 b!4616681)))

(assert (=> bs!1018828 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189690))))

(declare-fun bs!1018829 () Bool)

(assert (= bs!1018829 (and d!1454247 b!4616567)))

(assert (=> bs!1018829 (= (= lt!1772580 lt!1772144) (= lambda!189708 lambda!189676))))

(assert (=> bs!1018819 (= (= lt!1772580 lt!1772507) (= lambda!189708 lambda!189699))))

(assert (=> bs!1018817 (= (= lt!1772580 lt!1772144) (= lambda!189708 lambda!189677))))

(assert (=> bs!1018823 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189702))))

(declare-fun bs!1018830 () Bool)

(assert (= bs!1018830 (and d!1454247 b!4616694)))

(assert (=> bs!1018830 (= (= lt!1772580 (ListMap!4162 Nil!51381)) (= lambda!189708 lambda!189697))))

(assert (=> d!1454247 true))

(declare-fun e!2879739 () ListMap!4161)

(assert (=> b!4616712 (= e!2879739 lt!1772561)))

(declare-fun lt!1772570 () ListMap!4161)

(assert (=> b!4616712 (= lt!1772570 (+!1831 (ListMap!4162 Nil!51381) (h!57397 (Cons!51381 lt!1772134 lt!1772145))))))

(assert (=> b!4616712 (= lt!1772561 (addToMapMapFromBucket!907 (t!358513 (Cons!51381 lt!1772134 lt!1772145)) (+!1831 (ListMap!4162 Nil!51381) (h!57397 (Cons!51381 lt!1772134 lt!1772145)))))))

(declare-fun lt!1772581 () Unit!110390)

(declare-fun call!321936 () Unit!110390)

(assert (=> b!4616712 (= lt!1772581 call!321936)))

(assert (=> b!4616712 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189706)))

(declare-fun lt!1772574 () Unit!110390)

(assert (=> b!4616712 (= lt!1772574 lt!1772581)))

(assert (=> b!4616712 (forall!10750 (toList!4857 lt!1772570) lambda!189707)))

(declare-fun lt!1772577 () Unit!110390)

(declare-fun Unit!110499 () Unit!110390)

(assert (=> b!4616712 (= lt!1772577 Unit!110499)))

(declare-fun call!321937 () Bool)

(assert (=> b!4616712 call!321937))

(declare-fun lt!1772575 () Unit!110390)

(declare-fun Unit!110500 () Unit!110390)

(assert (=> b!4616712 (= lt!1772575 Unit!110500)))

(declare-fun lt!1772572 () Unit!110390)

(declare-fun Unit!110501 () Unit!110390)

(assert (=> b!4616712 (= lt!1772572 Unit!110501)))

(declare-fun lt!1772564 () Unit!110390)

(assert (=> b!4616712 (= lt!1772564 (forallContained!2965 (toList!4857 lt!1772570) lambda!189707 (h!57397 (Cons!51381 lt!1772134 lt!1772145))))))

(assert (=> b!4616712 (contains!14344 lt!1772570 (_1!29409 (h!57397 (Cons!51381 lt!1772134 lt!1772145))))))

(declare-fun lt!1772579 () Unit!110390)

(declare-fun Unit!110502 () Unit!110390)

(assert (=> b!4616712 (= lt!1772579 Unit!110502)))

(assert (=> b!4616712 (contains!14344 lt!1772561 (_1!29409 (h!57397 (Cons!51381 lt!1772134 lt!1772145))))))

(declare-fun lt!1772567 () Unit!110390)

(declare-fun Unit!110503 () Unit!110390)

(assert (=> b!4616712 (= lt!1772567 Unit!110503)))

(declare-fun call!321938 () Bool)

(assert (=> b!4616712 call!321938))

(declare-fun lt!1772576 () Unit!110390)

(declare-fun Unit!110504 () Unit!110390)

(assert (=> b!4616712 (= lt!1772576 Unit!110504)))

(assert (=> b!4616712 (forall!10750 (toList!4857 lt!1772570) lambda!189707)))

(declare-fun lt!1772562 () Unit!110390)

(declare-fun Unit!110505 () Unit!110390)

(assert (=> b!4616712 (= lt!1772562 Unit!110505)))

(declare-fun lt!1772571 () Unit!110390)

(declare-fun Unit!110506 () Unit!110390)

(assert (=> b!4616712 (= lt!1772571 Unit!110506)))

(declare-fun lt!1772568 () Unit!110390)

(assert (=> b!4616712 (= lt!1772568 (addForallContainsKeyThenBeforeAdding!472 (ListMap!4162 Nil!51381) lt!1772561 (_1!29409 (h!57397 (Cons!51381 lt!1772134 lt!1772145))) (_2!29409 (h!57397 (Cons!51381 lt!1772134 lt!1772145)))))))

(assert (=> b!4616712 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189707)))

(declare-fun lt!1772565 () Unit!110390)

(assert (=> b!4616712 (= lt!1772565 lt!1772568)))

(assert (=> b!4616712 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189707)))

(declare-fun lt!1772566 () Unit!110390)

(declare-fun Unit!110508 () Unit!110390)

(assert (=> b!4616712 (= lt!1772566 Unit!110508)))

(declare-fun res!1934414 () Bool)

(assert (=> b!4616712 (= res!1934414 (forall!10750 (Cons!51381 lt!1772134 lt!1772145) lambda!189707))))

(declare-fun e!2879738 () Bool)

(assert (=> b!4616712 (=> (not res!1934414) (not e!2879738))))

(assert (=> b!4616712 e!2879738))

(declare-fun lt!1772563 () Unit!110390)

(declare-fun Unit!110509 () Unit!110390)

(assert (=> b!4616712 (= lt!1772563 Unit!110509)))

(declare-fun bm!321931 () Bool)

(declare-fun c!790400 () Bool)

(assert (=> bm!321931 (= call!321938 (forall!10750 (ite c!790400 (toList!4857 (ListMap!4162 Nil!51381)) (Cons!51381 lt!1772134 lt!1772145)) (ite c!790400 lambda!189705 lambda!189707)))))

(declare-fun bm!321932 () Bool)

(assert (=> bm!321932 (= call!321937 (forall!10750 (ite c!790400 (toList!4857 (ListMap!4162 Nil!51381)) (t!358513 (Cons!51381 lt!1772134 lt!1772145))) (ite c!790400 lambda!189705 lambda!189707)))))

(declare-fun b!4616713 () Bool)

(assert (=> b!4616713 (= e!2879738 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189707))))

(declare-fun e!2879740 () Bool)

(assert (=> d!1454247 e!2879740))

(declare-fun res!1934415 () Bool)

(assert (=> d!1454247 (=> (not res!1934415) (not e!2879740))))

(assert (=> d!1454247 (= res!1934415 (forall!10750 (Cons!51381 lt!1772134 lt!1772145) lambda!189708))))

(assert (=> d!1454247 (= lt!1772580 e!2879739)))

(assert (=> d!1454247 (= c!790400 ((_ is Nil!51381) (Cons!51381 lt!1772134 lt!1772145)))))

(assert (=> d!1454247 (noDuplicateKeys!1446 (Cons!51381 lt!1772134 lt!1772145))))

(assert (=> d!1454247 (= (addToMapMapFromBucket!907 (Cons!51381 lt!1772134 lt!1772145) (ListMap!4162 Nil!51381)) lt!1772580)))

(declare-fun bm!321933 () Bool)

(assert (=> bm!321933 (= call!321936 (lemmaContainsAllItsOwnKeys!473 (ListMap!4162 Nil!51381)))))

(declare-fun b!4616714 () Bool)

(declare-fun res!1934416 () Bool)

(assert (=> b!4616714 (=> (not res!1934416) (not e!2879740))))

(assert (=> b!4616714 (= res!1934416 (forall!10750 (toList!4857 (ListMap!4162 Nil!51381)) lambda!189708))))

(declare-fun b!4616715 () Bool)

(assert (=> b!4616715 (= e!2879740 (invariantList!1171 (toList!4857 lt!1772580)))))

(assert (=> b!4616716 (= e!2879739 (ListMap!4162 Nil!51381))))

(declare-fun lt!1772573 () Unit!110390)

(assert (=> b!4616716 (= lt!1772573 call!321936)))

(assert (=> b!4616716 call!321937))

(declare-fun lt!1772569 () Unit!110390)

(assert (=> b!4616716 (= lt!1772569 lt!1772573)))

(assert (=> b!4616716 call!321938))

(declare-fun lt!1772578 () Unit!110390)

(declare-fun Unit!110511 () Unit!110390)

(assert (=> b!4616716 (= lt!1772578 Unit!110511)))

(assert (= (and d!1454247 c!790400) b!4616716))

(assert (= (and d!1454247 (not c!790400)) b!4616712))

(assert (= (and b!4616712 res!1934414) b!4616713))

(assert (= (or b!4616716 b!4616712) bm!321933))

(assert (= (or b!4616716 b!4616712) bm!321932))

(assert (= (or b!4616716 b!4616712) bm!321931))

(assert (= (and d!1454247 res!1934415) b!4616714))

(assert (= (and b!4616714 res!1934416) b!4616715))

(declare-fun m!5451491 () Bool)

(assert (=> b!4616712 m!5451491))

(declare-fun m!5451493 () Bool)

(assert (=> b!4616712 m!5451493))

(declare-fun m!5451495 () Bool)

(assert (=> b!4616712 m!5451495))

(declare-fun m!5451497 () Bool)

(assert (=> b!4616712 m!5451497))

(declare-fun m!5451499 () Bool)

(assert (=> b!4616712 m!5451499))

(assert (=> b!4616712 m!5451495))

(assert (=> b!4616712 m!5451499))

(declare-fun m!5451501 () Bool)

(assert (=> b!4616712 m!5451501))

(declare-fun m!5451503 () Bool)

(assert (=> b!4616712 m!5451503))

(declare-fun m!5451505 () Bool)

(assert (=> b!4616712 m!5451505))

(assert (=> b!4616712 m!5451505))

(declare-fun m!5451507 () Bool)

(assert (=> b!4616712 m!5451507))

(declare-fun m!5451509 () Bool)

(assert (=> b!4616712 m!5451509))

(declare-fun m!5451511 () Bool)

(assert (=> bm!321931 m!5451511))

(assert (=> bm!321933 m!5451395))

(declare-fun m!5451513 () Bool)

(assert (=> d!1454247 m!5451513))

(declare-fun m!5451515 () Bool)

(assert (=> d!1454247 m!5451515))

(declare-fun m!5451517 () Bool)

(assert (=> bm!321932 m!5451517))

(declare-fun m!5451519 () Bool)

(assert (=> b!4616715 m!5451519))

(declare-fun m!5451521 () Bool)

(assert (=> b!4616714 m!5451521))

(assert (=> b!4616713 m!5451499))

(assert (=> b!4616456 d!1454247))

(declare-fun d!1454249 () Bool)

(assert (=> d!1454249 (eq!789 (addToMapMapFromBucket!907 (Cons!51381 lt!1772134 lt!1772145) (ListMap!4162 Nil!51381)) (+!1831 (addToMapMapFromBucket!907 lt!1772145 (ListMap!4162 Nil!51381)) lt!1772134))))

(declare-fun lt!1772584 () Unit!110390)

(declare-fun choose!31098 (tuple2!52230 List!51505 ListMap!4161) Unit!110390)

(assert (=> d!1454249 (= lt!1772584 (choose!31098 lt!1772134 lt!1772145 (ListMap!4162 Nil!51381)))))

(assert (=> d!1454249 (noDuplicateKeys!1446 lt!1772145)))

(assert (=> d!1454249 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!40 lt!1772134 lt!1772145 (ListMap!4162 Nil!51381)) lt!1772584)))

(declare-fun bs!1018831 () Bool)

(assert (= bs!1018831 d!1454249))

(assert (=> bs!1018831 m!5451435))

(assert (=> bs!1018831 m!5450863))

(declare-fun m!5451523 () Bool)

(assert (=> bs!1018831 m!5451523))

(assert (=> bs!1018831 m!5450803))

(assert (=> bs!1018831 m!5450863))

(assert (=> bs!1018831 m!5450803))

(assert (=> bs!1018831 m!5451523))

(declare-fun m!5451525 () Bool)

(assert (=> bs!1018831 m!5451525))

(declare-fun m!5451527 () Bool)

(assert (=> bs!1018831 m!5451527))

(assert (=> b!4616456 d!1454249))

(declare-fun d!1454251 () Bool)

(declare-fun e!2879741 () Bool)

(assert (=> d!1454251 e!2879741))

(declare-fun res!1934418 () Bool)

(assert (=> d!1454251 (=> (not res!1934418) (not e!2879741))))

(declare-fun lt!1772586 () ListMap!4161)

(assert (=> d!1454251 (= res!1934418 (contains!14344 lt!1772586 (_1!29409 (h!57397 oldBucket!40))))))

(declare-fun lt!1772587 () List!51505)

(assert (=> d!1454251 (= lt!1772586 (ListMap!4162 lt!1772587))))

(declare-fun lt!1772588 () Unit!110390)

(declare-fun lt!1772585 () Unit!110390)

(assert (=> d!1454251 (= lt!1772588 lt!1772585)))

(assert (=> d!1454251 (= (getValueByKey!1388 lt!1772587 (_1!29409 (h!57397 oldBucket!40))) (Some!11473 (_2!29409 (h!57397 oldBucket!40))))))

(assert (=> d!1454251 (= lt!1772585 (lemmaContainsTupThenGetReturnValue!824 lt!1772587 (_1!29409 (h!57397 oldBucket!40)) (_2!29409 (h!57397 oldBucket!40))))))

(assert (=> d!1454251 (= lt!1772587 (insertNoDuplicatedKeys!332 (toList!4857 lt!1772148) (_1!29409 (h!57397 oldBucket!40)) (_2!29409 (h!57397 oldBucket!40))))))

(assert (=> d!1454251 (= (+!1831 lt!1772148 (h!57397 oldBucket!40)) lt!1772586)))

(declare-fun b!4616717 () Bool)

(declare-fun res!1934417 () Bool)

(assert (=> b!4616717 (=> (not res!1934417) (not e!2879741))))

(assert (=> b!4616717 (= res!1934417 (= (getValueByKey!1388 (toList!4857 lt!1772586) (_1!29409 (h!57397 oldBucket!40))) (Some!11473 (_2!29409 (h!57397 oldBucket!40)))))))

(declare-fun b!4616718 () Bool)

(assert (=> b!4616718 (= e!2879741 (contains!14347 (toList!4857 lt!1772586) (h!57397 oldBucket!40)))))

(assert (= (and d!1454251 res!1934418) b!4616717))

(assert (= (and b!4616717 res!1934417) b!4616718))

(declare-fun m!5451529 () Bool)

(assert (=> d!1454251 m!5451529))

(declare-fun m!5451531 () Bool)

(assert (=> d!1454251 m!5451531))

(declare-fun m!5451533 () Bool)

(assert (=> d!1454251 m!5451533))

(declare-fun m!5451535 () Bool)

(assert (=> d!1454251 m!5451535))

(declare-fun m!5451537 () Bool)

(assert (=> b!4616717 m!5451537))

(declare-fun m!5451539 () Bool)

(assert (=> b!4616718 m!5451539))

(assert (=> b!4616456 d!1454251))

(declare-fun d!1454253 () Bool)

(assert (=> d!1454253 (= (eq!789 lt!1772141 lt!1772143) (= (content!8736 (toList!4857 lt!1772141)) (content!8736 (toList!4857 lt!1772143))))))

(declare-fun bs!1018832 () Bool)

(assert (= bs!1018832 d!1454253))

(declare-fun m!5451541 () Bool)

(assert (=> bs!1018832 m!5451541))

(assert (=> bs!1018832 m!5450963))

(assert (=> b!4616445 d!1454253))

(declare-fun d!1454255 () Bool)

(declare-fun e!2879744 () Bool)

(assert (=> d!1454255 e!2879744))

(declare-fun res!1934421 () Bool)

(assert (=> d!1454255 (=> (not res!1934421) (not e!2879744))))

(declare-fun lt!1772591 () ListMap!4161)

(assert (=> d!1454255 (= res!1934421 (not (contains!14344 lt!1772591 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!246 (List!51505 K!12765) List!51505)

(assert (=> d!1454255 (= lt!1772591 (ListMap!4162 (removePresrvNoDuplicatedKeys!246 (toList!4857 lt!1772137) key!4968)))))

(assert (=> d!1454255 (= (-!536 lt!1772137 key!4968) lt!1772591)))

(declare-fun b!4616721 () Bool)

(declare-fun content!8737 (List!51508) (InoxSet K!12765))

(assert (=> b!4616721 (= e!2879744 (= ((_ map and) (content!8737 (keys!18061 lt!1772137)) ((_ map not) (store ((as const (Array K!12765 Bool)) false) key!4968 true))) (content!8737 (keys!18061 lt!1772591))))))

(assert (= (and d!1454255 res!1934421) b!4616721))

(declare-fun m!5451543 () Bool)

(assert (=> d!1454255 m!5451543))

(declare-fun m!5451545 () Bool)

(assert (=> d!1454255 m!5451545))

(declare-fun m!5451547 () Bool)

(assert (=> b!4616721 m!5451547))

(declare-fun m!5451549 () Bool)

(assert (=> b!4616721 m!5451549))

(declare-fun m!5451551 () Bool)

(assert (=> b!4616721 m!5451551))

(declare-fun m!5451553 () Bool)

(assert (=> b!4616721 m!5451553))

(assert (=> b!4616721 m!5451547))

(declare-fun m!5451555 () Bool)

(assert (=> b!4616721 m!5451555))

(assert (=> b!4616721 m!5451551))

(assert (=> b!4616445 d!1454255))

(declare-fun d!1454257 () Bool)

(assert (=> d!1454257 (eq!789 (-!536 lt!1772138 key!4968) (-!536 lt!1772137 key!4968))))

(declare-fun lt!1772594 () Unit!110390)

(declare-fun choose!31099 (ListMap!4161 ListMap!4161 K!12765) Unit!110390)

(assert (=> d!1454257 (= lt!1772594 (choose!31099 lt!1772138 lt!1772137 key!4968))))

(assert (=> d!1454257 (eq!789 lt!1772138 lt!1772137)))

(assert (=> d!1454257 (= (lemmaRemovePreservesEq!8 lt!1772138 lt!1772137 key!4968) lt!1772594)))

(declare-fun bs!1018833 () Bool)

(assert (= bs!1018833 d!1454257))

(assert (=> bs!1018833 m!5450819))

(assert (=> bs!1018833 m!5450813))

(declare-fun m!5451557 () Bool)

(assert (=> bs!1018833 m!5451557))

(assert (=> bs!1018833 m!5450851))

(declare-fun m!5451559 () Bool)

(assert (=> bs!1018833 m!5451559))

(assert (=> bs!1018833 m!5450813))

(assert (=> bs!1018833 m!5450819))

(assert (=> b!4616445 d!1454257))

(declare-fun d!1454259 () Bool)

(declare-fun res!1934426 () Bool)

(declare-fun e!2879749 () Bool)

(assert (=> d!1454259 (=> res!1934426 e!2879749)))

(assert (=> d!1454259 (= res!1934426 (and ((_ is Cons!51381) lt!1772145) (= (_1!29409 (h!57397 lt!1772145)) key!4968)))))

(assert (=> d!1454259 (= (containsKey!2330 lt!1772145 key!4968) e!2879749)))

(declare-fun b!4616726 () Bool)

(declare-fun e!2879750 () Bool)

(assert (=> b!4616726 (= e!2879749 e!2879750)))

(declare-fun res!1934427 () Bool)

(assert (=> b!4616726 (=> (not res!1934427) (not e!2879750))))

(assert (=> b!4616726 (= res!1934427 ((_ is Cons!51381) lt!1772145))))

(declare-fun b!4616727 () Bool)

(assert (=> b!4616727 (= e!2879750 (containsKey!2330 (t!358513 lt!1772145) key!4968))))

(assert (= (and d!1454259 (not res!1934426)) b!4616726))

(assert (= (and b!4616726 res!1934427) b!4616727))

(declare-fun m!5451561 () Bool)

(assert (=> b!4616727 m!5451561))

(assert (=> b!4616460 d!1454259))

(declare-fun d!1454261 () Bool)

(assert (=> d!1454261 (= (tail!8093 oldBucket!40) (t!358513 oldBucket!40))))

(assert (=> b!4616449 d!1454261))

(declare-fun b!4616728 () Bool)

(declare-fun e!2879752 () Unit!110390)

(declare-fun Unit!110512 () Unit!110390)

(assert (=> b!4616728 (= e!2879752 Unit!110512)))

(declare-fun b!4616729 () Bool)

(declare-fun e!2879753 () Bool)

(declare-fun e!2879756 () Bool)

(assert (=> b!4616729 (= e!2879753 e!2879756)))

(declare-fun res!1934429 () Bool)

(assert (=> b!4616729 (=> (not res!1934429) (not e!2879756))))

(assert (=> b!4616729 (= res!1934429 (isDefined!8738 (getValueByKey!1388 (toList!4857 lt!1772137) key!4968)))))

(declare-fun bm!321934 () Bool)

(declare-fun call!321939 () Bool)

(declare-fun e!2879754 () List!51508)

(assert (=> bm!321934 (= call!321939 (contains!14346 e!2879754 key!4968))))

(declare-fun c!790402 () Bool)

(declare-fun c!790403 () Bool)

(assert (=> bm!321934 (= c!790402 c!790403)))

(declare-fun b!4616730 () Bool)

(assert (=> b!4616730 false))

(declare-fun lt!1772595 () Unit!110390)

(declare-fun lt!1772599 () Unit!110390)

(assert (=> b!4616730 (= lt!1772595 lt!1772599)))

(assert (=> b!4616730 (containsKey!2331 (toList!4857 lt!1772137) key!4968)))

(assert (=> b!4616730 (= lt!1772599 (lemmaInGetKeysListThenContainsKey!620 (toList!4857 lt!1772137) key!4968))))

(declare-fun Unit!110513 () Unit!110390)

(assert (=> b!4616730 (= e!2879752 Unit!110513)))

(declare-fun b!4616731 () Bool)

(declare-fun e!2879755 () Unit!110390)

(assert (=> b!4616731 (= e!2879755 e!2879752)))

(declare-fun c!790401 () Bool)

(assert (=> b!4616731 (= c!790401 call!321939)))

(declare-fun b!4616732 () Bool)

(declare-fun e!2879751 () Bool)

(assert (=> b!4616732 (= e!2879751 (not (contains!14346 (keys!18061 lt!1772137) key!4968)))))

(declare-fun b!4616733 () Bool)

(assert (=> b!4616733 (= e!2879756 (contains!14346 (keys!18061 lt!1772137) key!4968))))

(declare-fun b!4616734 () Bool)

(assert (=> b!4616734 (= e!2879754 (keys!18061 lt!1772137))))

(declare-fun b!4616735 () Bool)

(assert (=> b!4616735 (= e!2879754 (getKeysList!621 (toList!4857 lt!1772137)))))

(declare-fun d!1454263 () Bool)

(assert (=> d!1454263 e!2879753))

(declare-fun res!1934430 () Bool)

(assert (=> d!1454263 (=> res!1934430 e!2879753)))

(assert (=> d!1454263 (= res!1934430 e!2879751)))

(declare-fun res!1934428 () Bool)

(assert (=> d!1454263 (=> (not res!1934428) (not e!2879751))))

(declare-fun lt!1772596 () Bool)

(assert (=> d!1454263 (= res!1934428 (not lt!1772596))))

(declare-fun lt!1772597 () Bool)

(assert (=> d!1454263 (= lt!1772596 lt!1772597)))

(declare-fun lt!1772600 () Unit!110390)

(assert (=> d!1454263 (= lt!1772600 e!2879755)))

(assert (=> d!1454263 (= c!790403 lt!1772597)))

(assert (=> d!1454263 (= lt!1772597 (containsKey!2331 (toList!4857 lt!1772137) key!4968))))

(assert (=> d!1454263 (= (contains!14344 lt!1772137 key!4968) lt!1772596)))

(declare-fun b!4616736 () Bool)

(declare-fun lt!1772602 () Unit!110390)

(assert (=> b!4616736 (= e!2879755 lt!1772602)))

(declare-fun lt!1772601 () Unit!110390)

(assert (=> b!4616736 (= lt!1772601 (lemmaContainsKeyImpliesGetValueByKeyDefined!1289 (toList!4857 lt!1772137) key!4968))))

(assert (=> b!4616736 (isDefined!8738 (getValueByKey!1388 (toList!4857 lt!1772137) key!4968))))

(declare-fun lt!1772598 () Unit!110390)

(assert (=> b!4616736 (= lt!1772598 lt!1772601)))

(assert (=> b!4616736 (= lt!1772602 (lemmaInListThenGetKeysListContains!616 (toList!4857 lt!1772137) key!4968))))

(assert (=> b!4616736 call!321939))

(assert (= (and d!1454263 c!790403) b!4616736))

(assert (= (and d!1454263 (not c!790403)) b!4616731))

(assert (= (and b!4616731 c!790401) b!4616730))

(assert (= (and b!4616731 (not c!790401)) b!4616728))

(assert (= (or b!4616736 b!4616731) bm!321934))

(assert (= (and bm!321934 c!790402) b!4616735))

(assert (= (and bm!321934 (not c!790402)) b!4616734))

(assert (= (and d!1454263 res!1934428) b!4616732))

(assert (= (and d!1454263 (not res!1934430)) b!4616729))

(assert (= (and b!4616729 res!1934429) b!4616733))

(assert (=> b!4616732 m!5451551))

(assert (=> b!4616732 m!5451551))

(declare-fun m!5451563 () Bool)

(assert (=> b!4616732 m!5451563))

(declare-fun m!5451565 () Bool)

(assert (=> b!4616735 m!5451565))

(declare-fun m!5451567 () Bool)

(assert (=> d!1454263 m!5451567))

(declare-fun m!5451569 () Bool)

(assert (=> b!4616736 m!5451569))

(declare-fun m!5451571 () Bool)

(assert (=> b!4616736 m!5451571))

(assert (=> b!4616736 m!5451571))

(declare-fun m!5451573 () Bool)

(assert (=> b!4616736 m!5451573))

(declare-fun m!5451575 () Bool)

(assert (=> b!4616736 m!5451575))

(assert (=> b!4616729 m!5451571))

(assert (=> b!4616729 m!5451571))

(assert (=> b!4616729 m!5451573))

(assert (=> b!4616734 m!5451551))

(assert (=> b!4616733 m!5451551))

(assert (=> b!4616733 m!5451551))

(assert (=> b!4616733 m!5451563))

(declare-fun m!5451577 () Bool)

(assert (=> bm!321934 m!5451577))

(assert (=> b!4616730 m!5451567))

(declare-fun m!5451579 () Bool)

(assert (=> b!4616730 m!5451579))

(assert (=> b!4616458 d!1454263))

(declare-fun bs!1018834 () Bool)

(declare-fun d!1454265 () Bool)

(assert (= bs!1018834 (and d!1454265 d!1454195)))

(declare-fun lambda!189709 () Int)

(assert (=> bs!1018834 (= lambda!189709 lambda!189682)))

(declare-fun bs!1018835 () Bool)

(assert (= bs!1018835 (and d!1454265 b!4616448)))

(assert (=> bs!1018835 (= lambda!189709 lambda!189588)))

(declare-fun bs!1018836 () Bool)

(assert (= bs!1018836 (and d!1454265 d!1454151)))

(assert (=> bs!1018836 (= lambda!189709 lambda!189592)))

(declare-fun bs!1018837 () Bool)

(assert (= bs!1018837 (and d!1454265 d!1454137)))

(assert (=> bs!1018837 (= lambda!189709 lambda!189591)))

(declare-fun bs!1018838 () Bool)

(assert (= bs!1018838 (and d!1454265 d!1454215)))

(assert (=> bs!1018838 (= lambda!189709 lambda!189689)))

(declare-fun lt!1772603 () ListMap!4161)

(assert (=> d!1454265 (invariantList!1171 (toList!4857 lt!1772603))))

(declare-fun e!2879757 () ListMap!4161)

(assert (=> d!1454265 (= lt!1772603 e!2879757)))

(declare-fun c!790404 () Bool)

(assert (=> d!1454265 (= c!790404 ((_ is Cons!51382) (Cons!51382 (tuple2!52233 hash!414 oldBucket!40) Nil!51382)))))

(assert (=> d!1454265 (forall!10748 (Cons!51382 (tuple2!52233 hash!414 oldBucket!40) Nil!51382) lambda!189709)))

(assert (=> d!1454265 (= (extractMap!1502 (Cons!51382 (tuple2!52233 hash!414 oldBucket!40) Nil!51382)) lt!1772603)))

(declare-fun b!4616737 () Bool)

(assert (=> b!4616737 (= e!2879757 (addToMapMapFromBucket!907 (_2!29410 (h!57398 (Cons!51382 (tuple2!52233 hash!414 oldBucket!40) Nil!51382))) (extractMap!1502 (t!358514 (Cons!51382 (tuple2!52233 hash!414 oldBucket!40) Nil!51382)))))))

(declare-fun b!4616738 () Bool)

(assert (=> b!4616738 (= e!2879757 (ListMap!4162 Nil!51381))))

(assert (= (and d!1454265 c!790404) b!4616737))

(assert (= (and d!1454265 (not c!790404)) b!4616738))

(declare-fun m!5451581 () Bool)

(assert (=> d!1454265 m!5451581))

(declare-fun m!5451583 () Bool)

(assert (=> d!1454265 m!5451583))

(declare-fun m!5451585 () Bool)

(assert (=> b!4616737 m!5451585))

(assert (=> b!4616737 m!5451585))

(declare-fun m!5451587 () Bool)

(assert (=> b!4616737 m!5451587))

(assert (=> b!4616458 d!1454265))

(declare-fun b!4616747 () Bool)

(declare-fun e!2879762 () List!51505)

(assert (=> b!4616747 (= e!2879762 (t!358513 oldBucket!40))))

(declare-fun b!4616749 () Bool)

(declare-fun e!2879763 () List!51505)

(assert (=> b!4616749 (= e!2879763 (Cons!51381 (h!57397 oldBucket!40) (removePairForKey!1069 (t!358513 oldBucket!40) key!4968)))))

(declare-fun b!4616748 () Bool)

(assert (=> b!4616748 (= e!2879762 e!2879763)))

(declare-fun c!790409 () Bool)

(assert (=> b!4616748 (= c!790409 ((_ is Cons!51381) oldBucket!40))))

(declare-fun b!4616750 () Bool)

(assert (=> b!4616750 (= e!2879763 Nil!51381)))

(declare-fun d!1454267 () Bool)

(declare-fun lt!1772606 () List!51505)

(assert (=> d!1454267 (not (containsKey!2330 lt!1772606 key!4968))))

(assert (=> d!1454267 (= lt!1772606 e!2879762)))

(declare-fun c!790410 () Bool)

(assert (=> d!1454267 (= c!790410 (and ((_ is Cons!51381) oldBucket!40) (= (_1!29409 (h!57397 oldBucket!40)) key!4968)))))

(assert (=> d!1454267 (noDuplicateKeys!1446 oldBucket!40)))

(assert (=> d!1454267 (= (removePairForKey!1069 oldBucket!40 key!4968) lt!1772606)))

(assert (= (and d!1454267 c!790410) b!4616747))

(assert (= (and d!1454267 (not c!790410)) b!4616748))

(assert (= (and b!4616748 c!790409) b!4616749))

(assert (= (and b!4616748 (not c!790409)) b!4616750))

(declare-fun m!5451589 () Bool)

(assert (=> b!4616749 m!5451589))

(declare-fun m!5451591 () Bool)

(assert (=> d!1454267 m!5451591))

(assert (=> d!1454267 m!5450849))

(assert (=> b!4616447 d!1454267))

(declare-fun d!1454269 () Bool)

(declare-fun res!1934435 () Bool)

(declare-fun e!2879768 () Bool)

(assert (=> d!1454269 (=> res!1934435 e!2879768)))

(assert (=> d!1454269 (= res!1934435 ((_ is Nil!51382) lt!1772136))))

(assert (=> d!1454269 (= (forall!10748 lt!1772136 lambda!189588) e!2879768)))

(declare-fun b!4616755 () Bool)

(declare-fun e!2879769 () Bool)

(assert (=> b!4616755 (= e!2879768 e!2879769)))

(declare-fun res!1934436 () Bool)

(assert (=> b!4616755 (=> (not res!1934436) (not e!2879769))))

(declare-fun dynLambda!21465 (Int tuple2!52232) Bool)

(assert (=> b!4616755 (= res!1934436 (dynLambda!21465 lambda!189588 (h!57398 lt!1772136)))))

(declare-fun b!4616756 () Bool)

(assert (=> b!4616756 (= e!2879769 (forall!10748 (t!358514 lt!1772136) lambda!189588))))

(assert (= (and d!1454269 (not res!1934435)) b!4616755))

(assert (= (and b!4616755 res!1934436) b!4616756))

(declare-fun b_lambda!170545 () Bool)

(assert (=> (not b_lambda!170545) (not b!4616755)))

(declare-fun m!5451593 () Bool)

(assert (=> b!4616755 m!5451593))

(declare-fun m!5451595 () Bool)

(assert (=> b!4616756 m!5451595))

(assert (=> b!4616448 d!1454269))

(declare-fun bs!1018839 () Bool)

(declare-fun d!1454271 () Bool)

(assert (= bs!1018839 (and d!1454271 d!1454227)))

(declare-fun lambda!189710 () Int)

(assert (=> bs!1018839 (not (= lambda!189710 lambda!189696))))

(declare-fun bs!1018840 () Bool)

(assert (= bs!1018840 (and d!1454271 b!4616563)))

(assert (=> bs!1018840 (not (= lambda!189710 lambda!189678))))

(declare-fun bs!1018841 () Bool)

(assert (= bs!1018841 (and d!1454271 b!4616677)))

(assert (=> bs!1018841 (not (= lambda!189710 lambda!189694))))

(declare-fun bs!1018842 () Bool)

(assert (= bs!1018842 (and d!1454271 b!4616690)))

(assert (=> bs!1018842 (not (= lambda!189710 lambda!189698))))

(declare-fun bs!1018843 () Bool)

(assert (= bs!1018843 (and d!1454271 d!1454233)))

(assert (=> bs!1018843 (not (= lambda!189710 lambda!189700))))

(declare-fun bs!1018844 () Bool)

(assert (= bs!1018844 (and d!1454271 d!1454245)))

(assert (=> bs!1018844 (not (= lambda!189710 lambda!189704))))

(declare-fun bs!1018845 () Bool)

(assert (= bs!1018845 (and d!1454271 b!4616712)))

(assert (=> bs!1018845 (not (= lambda!189710 lambda!189706))))

(declare-fun bs!1018846 () Bool)

(assert (= bs!1018846 (and d!1454271 b!4616707)))

(assert (=> bs!1018846 (not (= lambda!189710 lambda!189703))))

(declare-fun bs!1018847 () Bool)

(assert (= bs!1018847 (and d!1454271 b!4616711)))

(assert (=> bs!1018847 (not (= lambda!189710 lambda!189701))))

(assert (=> bs!1018841 (not (= lambda!189710 lambda!189691))))

(declare-fun bs!1018848 () Bool)

(assert (= bs!1018848 (and d!1454271 d!1454173)))

(assert (=> bs!1018848 (not (= lambda!189710 lambda!189679))))

(assert (=> bs!1018845 (not (= lambda!189710 lambda!189707))))

(declare-fun bs!1018849 () Bool)

(assert (= bs!1018849 (and d!1454271 b!4616716)))

(assert (=> bs!1018849 (not (= lambda!189710 lambda!189705))))

(declare-fun bs!1018850 () Bool)

(assert (= bs!1018850 (and d!1454271 b!4616681)))

(assert (=> bs!1018850 (not (= lambda!189710 lambda!189690))))

(declare-fun bs!1018851 () Bool)

(assert (= bs!1018851 (and d!1454271 b!4616567)))

(assert (=> bs!1018851 (not (= lambda!189710 lambda!189676))))

(assert (=> bs!1018842 (not (= lambda!189710 lambda!189699))))

(assert (=> bs!1018840 (not (= lambda!189710 lambda!189677))))

(assert (=> bs!1018846 (not (= lambda!189710 lambda!189702))))

(declare-fun bs!1018852 () Bool)

(assert (= bs!1018852 (and d!1454271 b!4616694)))

(assert (=> bs!1018852 (not (= lambda!189710 lambda!189697))))

(declare-fun bs!1018853 () Bool)

(assert (= bs!1018853 (and d!1454271 d!1454157)))

(assert (=> bs!1018853 (= lambda!189710 lambda!189595)))

(declare-fun bs!1018854 () Bool)

(assert (= bs!1018854 (and d!1454271 d!1454247)))

(assert (=> bs!1018854 (not (= lambda!189710 lambda!189708))))

(assert (=> d!1454271 true))

(assert (=> d!1454271 true))

(assert (=> d!1454271 (= (allKeysSameHash!1300 oldBucket!40 hash!414 hashF!1389) (forall!10750 oldBucket!40 lambda!189710))))

(declare-fun bs!1018855 () Bool)

(assert (= bs!1018855 d!1454271))

(declare-fun m!5451597 () Bool)

(assert (=> bs!1018855 m!5451597))

(assert (=> b!4616462 d!1454271))

(declare-fun d!1454273 () Bool)

(declare-fun res!1934437 () Bool)

(declare-fun e!2879770 () Bool)

(assert (=> d!1454273 (=> res!1934437 e!2879770)))

(assert (=> d!1454273 (= res!1934437 (not ((_ is Cons!51381) oldBucket!40)))))

(assert (=> d!1454273 (= (noDuplicateKeys!1446 oldBucket!40) e!2879770)))

(declare-fun b!4616757 () Bool)

(declare-fun e!2879771 () Bool)

(assert (=> b!4616757 (= e!2879770 e!2879771)))

(declare-fun res!1934438 () Bool)

(assert (=> b!4616757 (=> (not res!1934438) (not e!2879771))))

(assert (=> b!4616757 (= res!1934438 (not (containsKey!2330 (t!358513 oldBucket!40) (_1!29409 (h!57397 oldBucket!40)))))))

(declare-fun b!4616758 () Bool)

(assert (=> b!4616758 (= e!2879771 (noDuplicateKeys!1446 (t!358513 oldBucket!40)))))

(assert (= (and d!1454273 (not res!1934437)) b!4616757))

(assert (= (and b!4616757 res!1934438) b!4616758))

(declare-fun m!5451599 () Bool)

(assert (=> b!4616757 m!5451599))

(declare-fun m!5451601 () Bool)

(assert (=> b!4616758 m!5451601))

(assert (=> start!461888 d!1454273))

(declare-fun d!1454275 () Bool)

(declare-fun e!2879772 () Bool)

(assert (=> d!1454275 e!2879772))

(declare-fun res!1934439 () Bool)

(assert (=> d!1454275 (=> (not res!1934439) (not e!2879772))))

(declare-fun lt!1772607 () ListMap!4161)

(assert (=> d!1454275 (= res!1934439 (not (contains!14344 lt!1772607 key!4968)))))

(assert (=> d!1454275 (= lt!1772607 (ListMap!4162 (removePresrvNoDuplicatedKeys!246 (toList!4857 lt!1772138) key!4968)))))

(assert (=> d!1454275 (= (-!536 lt!1772138 key!4968) lt!1772607)))

(declare-fun b!4616759 () Bool)

(assert (=> b!4616759 (= e!2879772 (= ((_ map and) (content!8737 (keys!18061 lt!1772138)) ((_ map not) (store ((as const (Array K!12765 Bool)) false) key!4968 true))) (content!8737 (keys!18061 lt!1772607))))))

(assert (= (and d!1454275 res!1934439) b!4616759))

(declare-fun m!5451603 () Bool)

(assert (=> d!1454275 m!5451603))

(declare-fun m!5451605 () Bool)

(assert (=> d!1454275 m!5451605))

(declare-fun m!5451607 () Bool)

(assert (=> b!4616759 m!5451607))

(assert (=> b!4616759 m!5451549))

(declare-fun m!5451609 () Bool)

(assert (=> b!4616759 m!5451609))

(declare-fun m!5451611 () Bool)

(assert (=> b!4616759 m!5451611))

(assert (=> b!4616759 m!5451607))

(declare-fun m!5451613 () Bool)

(assert (=> b!4616759 m!5451613))

(assert (=> b!4616759 m!5451609))

(assert (=> b!4616450 d!1454275))

(declare-fun d!1454277 () Bool)

(declare-fun e!2879773 () Bool)

(assert (=> d!1454277 e!2879773))

(declare-fun res!1934440 () Bool)

(assert (=> d!1454277 (=> (not res!1934440) (not e!2879773))))

(declare-fun lt!1772608 () ListMap!4161)

(assert (=> d!1454277 (= res!1934440 (not (contains!14344 lt!1772608 key!4968)))))

(assert (=> d!1454277 (= lt!1772608 (ListMap!4162 (removePresrvNoDuplicatedKeys!246 (toList!4857 (+!1831 lt!1772148 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40))))) key!4968)))))

(assert (=> d!1454277 (= (-!536 (+!1831 lt!1772148 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))) key!4968) lt!1772608)))

(declare-fun b!4616760 () Bool)

(assert (=> b!4616760 (= e!2879773 (= ((_ map and) (content!8737 (keys!18061 (+!1831 lt!1772148 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))))) ((_ map not) (store ((as const (Array K!12765 Bool)) false) key!4968 true))) (content!8737 (keys!18061 lt!1772608))))))

(assert (= (and d!1454277 res!1934440) b!4616760))

(declare-fun m!5451615 () Bool)

(assert (=> d!1454277 m!5451615))

(declare-fun m!5451617 () Bool)

(assert (=> d!1454277 m!5451617))

(declare-fun m!5451619 () Bool)

(assert (=> b!4616760 m!5451619))

(assert (=> b!4616760 m!5451549))

(declare-fun m!5451621 () Bool)

(assert (=> b!4616760 m!5451621))

(declare-fun m!5451623 () Bool)

(assert (=> b!4616760 m!5451623))

(assert (=> b!4616760 m!5451619))

(declare-fun m!5451625 () Bool)

(assert (=> b!4616760 m!5451625))

(assert (=> b!4616760 m!5450821))

(assert (=> b!4616760 m!5451621))

(assert (=> b!4616450 d!1454277))

(declare-fun d!1454279 () Bool)

(declare-fun e!2879774 () Bool)

(assert (=> d!1454279 e!2879774))

(declare-fun res!1934442 () Bool)

(assert (=> d!1454279 (=> (not res!1934442) (not e!2879774))))

(declare-fun lt!1772610 () ListMap!4161)

(assert (=> d!1454279 (= res!1934442 (contains!14344 lt!1772610 (_1!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40))))))))

(declare-fun lt!1772611 () List!51505)

(assert (=> d!1454279 (= lt!1772610 (ListMap!4162 lt!1772611))))

(declare-fun lt!1772612 () Unit!110390)

(declare-fun lt!1772609 () Unit!110390)

(assert (=> d!1454279 (= lt!1772612 lt!1772609)))

(assert (=> d!1454279 (= (getValueByKey!1388 lt!1772611 (_1!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40))))) (Some!11473 (_2!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40))))))))

(assert (=> d!1454279 (= lt!1772609 (lemmaContainsTupThenGetReturnValue!824 lt!1772611 (_1!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))) (_2!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40))))))))

(assert (=> d!1454279 (= lt!1772611 (insertNoDuplicatedKeys!332 (toList!4857 lt!1772148) (_1!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))) (_2!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40))))))))

(assert (=> d!1454279 (= (+!1831 lt!1772148 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))) lt!1772610)))

(declare-fun b!4616761 () Bool)

(declare-fun res!1934441 () Bool)

(assert (=> b!4616761 (=> (not res!1934441) (not e!2879774))))

(assert (=> b!4616761 (= res!1934441 (= (getValueByKey!1388 (toList!4857 lt!1772610) (_1!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40))))) (Some!11473 (_2!29409 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))))))))

(declare-fun b!4616762 () Bool)

(assert (=> b!4616762 (= e!2879774 (contains!14347 (toList!4857 lt!1772610) (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))))))

(assert (= (and d!1454279 res!1934442) b!4616761))

(assert (= (and b!4616761 res!1934441) b!4616762))

(declare-fun m!5451627 () Bool)

(assert (=> d!1454279 m!5451627))

(declare-fun m!5451629 () Bool)

(assert (=> d!1454279 m!5451629))

(declare-fun m!5451631 () Bool)

(assert (=> d!1454279 m!5451631))

(declare-fun m!5451633 () Bool)

(assert (=> d!1454279 m!5451633))

(declare-fun m!5451635 () Bool)

(assert (=> b!4616761 m!5451635))

(declare-fun m!5451637 () Bool)

(assert (=> b!4616762 m!5451637))

(assert (=> b!4616450 d!1454279))

(declare-fun d!1454281 () Bool)

(assert (=> d!1454281 (= (-!536 (+!1831 lt!1772148 (tuple2!52231 key!4968 (_2!29409 (h!57397 oldBucket!40)))) key!4968) lt!1772148)))

(declare-fun lt!1772615 () Unit!110390)

(declare-fun choose!31100 (ListMap!4161 K!12765 V!13011) Unit!110390)

(assert (=> d!1454281 (= lt!1772615 (choose!31100 lt!1772148 key!4968 (_2!29409 (h!57397 oldBucket!40))))))

(assert (=> d!1454281 (not (contains!14344 lt!1772148 key!4968))))

(assert (=> d!1454281 (= (addThenRemoveForNewKeyIsSame!19 lt!1772148 key!4968 (_2!29409 (h!57397 oldBucket!40))) lt!1772615)))

(declare-fun bs!1018856 () Bool)

(assert (= bs!1018856 d!1454281))

(assert (=> bs!1018856 m!5450821))

(assert (=> bs!1018856 m!5450821))

(assert (=> bs!1018856 m!5450823))

(declare-fun m!5451639 () Bool)

(assert (=> bs!1018856 m!5451639))

(assert (=> bs!1018856 m!5450829))

(assert (=> b!4616450 d!1454281))

(declare-fun tp!1341618 () Bool)

(declare-fun b!4616767 () Bool)

(declare-fun e!2879777 () Bool)

(assert (=> b!4616767 (= e!2879777 (and tp_is_empty!29077 tp_is_empty!29079 tp!1341618))))

(assert (=> b!4616459 (= tp!1341611 e!2879777)))

(assert (= (and b!4616459 ((_ is Cons!51381) (t!358513 newBucket!224))) b!4616767))

(declare-fun b!4616768 () Bool)

(declare-fun tp!1341619 () Bool)

(declare-fun e!2879778 () Bool)

(assert (=> b!4616768 (= e!2879778 (and tp_is_empty!29077 tp_is_empty!29079 tp!1341619))))

(assert (=> b!4616461 (= tp!1341610 e!2879778)))

(assert (= (and b!4616461 ((_ is Cons!51381) (t!358513 oldBucket!40))) b!4616768))

(declare-fun b_lambda!170547 () Bool)

(assert (= b_lambda!170545 (or b!4616448 b_lambda!170547)))

(declare-fun bs!1018857 () Bool)

(declare-fun d!1454283 () Bool)

(assert (= bs!1018857 (and d!1454283 b!4616448)))

(assert (=> bs!1018857 (= (dynLambda!21465 lambda!189588 (h!57398 lt!1772136)) (noDuplicateKeys!1446 (_2!29410 (h!57398 lt!1772136))))))

(declare-fun m!5451641 () Bool)

(assert (=> bs!1018857 m!5451641))

(assert (=> b!4616755 d!1454283))

(check-sat (not b!4616721) (not b_lambda!170547) (not d!1454227) (not b!4616712) (not b!4616717) (not d!1454165) (not bs!1018857) (not bm!321917) (not bm!321930) (not b!4616691) (not bm!321910) (not b!4616732) (not d!1454279) (not d!1454157) (not b!4616709) (not b!4616634) (not d!1454245) (not bm!321922) (not bm!321923) (not b!4616733) (not b!4616645) (not b!4616647) (not b!4616759) (not b!4616677) (not d!1454257) (not b!4616693) (not b!4616587) (not d!1454213) (not b!4616730) (not b!4616758) (not b!4616574) (not b!4616760) (not b!4616564) (not b!4616705) (not bm!321912) (not d!1454263) (not d!1454203) (not b!4616715) (not bm!321931) (not b!4616692) (not b!4616707) (not b!4616638) (not d!1454275) (not d!1454237) (not b!4616644) (not b!4616710) (not b!4616678) (not bm!321928) (not d!1454195) (not d!1454233) (not b!4616641) (not b!4616690) (not bm!321934) (not b!4616563) (not d!1454151) (not d!1454197) tp_is_empty!29079 (not b!4616566) (not d!1454267) (not bm!321911) (not b!4616736) (not b!4616737) (not b!4616646) (not b!4616734) (not d!1454249) (not b!4616632) (not b!4616640) (not b!4616631) (not bm!321927) (not d!1454265) (not d!1454241) (not d!1454251) (not b!4616708) (not b!4616565) (not b!4616718) (not b!4616727) (not b!4616484) (not d!1454155) (not d!1454215) (not b!4616767) (not b!4616762) (not bm!321925) (not b!4616679) (not bm!321918) (not b!4616714) (not b!4616586) (not bm!321932) (not b!4616729) (not d!1454255) (not b!4616482) (not d!1454281) tp_is_empty!29077 (not b!4616756) (not d!1454173) (not b!4616680) (not b!4616636) (not b!4616768) (not b!4616637) (not b!4616757) (not b!4616635) (not bm!321929) (not d!1454253) (not bm!321924) (not b!4616643) (not b!4616749) (not d!1454247) (not bm!321933) (not d!1454277) (not b!4616735) (not d!1454271) (not d!1454239) (not b!4616713) (not b!4616706) (not d!1454137) (not b!4616761) (not bm!321926))
(check-sat)
