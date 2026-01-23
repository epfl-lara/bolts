; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466720 () Bool)

(assert start!466720)

(declare-fun b!4641308 () Bool)

(declare-fun e!2895333 () Bool)

(declare-fun e!2895327 () Bool)

(assert (=> b!4641308 (= e!2895333 e!2895327)))

(declare-fun res!1949323 () Bool)

(assert (=> b!4641308 (=> (not res!1949323) (not e!2895327))))

(declare-fun lt!1804334 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4641308 (= res!1949323 (= lt!1804334 hash!414))))

(declare-datatypes ((Hashable!5993 0))(
  ( (HashableExt!5992 (__x!31696 Int)) )
))
(declare-fun hashF!1389 () Hashable!5993)

(declare-datatypes ((K!13140 0))(
  ( (K!13141 (val!18783 Int)) )
))
(declare-fun key!4968 () K!13140)

(declare-fun hash!3689 (Hashable!5993 K!13140) (_ BitVec 64))

(assert (=> b!4641308 (= lt!1804334 (hash!3689 hashF!1389 key!4968))))

(declare-fun b!4641309 () Bool)

(declare-fun res!1949326 () Bool)

(assert (=> b!4641309 (=> (not res!1949326) (not e!2895327))))

(declare-datatypes ((V!13386 0))(
  ( (V!13387 (val!18784 Int)) )
))
(declare-datatypes ((tuple2!52830 0))(
  ( (tuple2!52831 (_1!29709 K!13140) (_2!29709 V!13386)) )
))
(declare-datatypes ((List!51898 0))(
  ( (Nil!51774) (Cons!51774 (h!57884 tuple2!52830) (t!358982 List!51898)) )
))
(declare-fun newBucket!224 () List!51898)

(declare-fun allKeysSameHash!1450 (List!51898 (_ BitVec 64) Hashable!5993) Bool)

(assert (=> b!4641309 (= res!1949326 (allKeysSameHash!1450 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4641310 () Bool)

(declare-fun e!2895329 () Bool)

(declare-fun e!2895328 () Bool)

(assert (=> b!4641310 (= e!2895329 e!2895328)))

(declare-fun res!1949320 () Bool)

(assert (=> b!4641310 (=> res!1949320 e!2895328)))

(declare-fun oldBucket!40 () List!51898)

(declare-datatypes ((ListMap!4461 0))(
  ( (ListMap!4462 (toList!5137 List!51898)) )
))
(declare-fun lt!1804338 () ListMap!4461)

(declare-fun lt!1804339 () List!51898)

(declare-fun eq!887 (ListMap!4461 ListMap!4461) Bool)

(declare-fun +!1946 (ListMap!4461 tuple2!52830) ListMap!4461)

(declare-datatypes ((tuple2!52832 0))(
  ( (tuple2!52833 (_1!29710 (_ BitVec 64)) (_2!29710 List!51898)) )
))
(declare-datatypes ((List!51899 0))(
  ( (Nil!51775) (Cons!51775 (h!57885 tuple2!52832) (t!358983 List!51899)) )
))
(declare-fun extractMap!1652 (List!51899) ListMap!4461)

(assert (=> b!4641310 (= res!1949320 (not (eq!887 lt!1804338 (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775)) (h!57884 oldBucket!40)))))))

(declare-fun lt!1804340 () tuple2!52830)

(declare-fun lt!1804343 () List!51898)

(declare-fun addToMapMapFromBucket!1055 (List!51898 ListMap!4461) ListMap!4461)

(assert (=> b!4641310 (eq!887 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804340 lt!1804343) (ListMap!4462 Nil!51774)) (+!1946 (addToMapMapFromBucket!1055 lt!1804343 (ListMap!4462 Nil!51774)) lt!1804340))))

(declare-datatypes ((Unit!115381 0))(
  ( (Unit!115382) )
))
(declare-fun lt!1804347 () Unit!115381)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!138 (tuple2!52830 List!51898 ListMap!4461) Unit!115381)

(assert (=> b!4641310 (= lt!1804347 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!138 lt!1804340 lt!1804343 (ListMap!4462 Nil!51774)))))

(declare-fun head!9706 (List!51898) tuple2!52830)

(assert (=> b!4641310 (= lt!1804340 (head!9706 newBucket!224))))

(declare-fun lt!1804337 () tuple2!52830)

(assert (=> b!4641310 (eq!887 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804337 lt!1804339) (ListMap!4462 Nil!51774)) (+!1946 (addToMapMapFromBucket!1055 lt!1804339 (ListMap!4462 Nil!51774)) lt!1804337))))

(declare-fun lt!1804330 () Unit!115381)

(assert (=> b!4641310 (= lt!1804330 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!138 lt!1804337 lt!1804339 (ListMap!4462 Nil!51774)))))

(assert (=> b!4641310 (= lt!1804337 (head!9706 oldBucket!40))))

(declare-fun lt!1804335 () List!51899)

(declare-fun contains!14901 (ListMap!4461 K!13140) Bool)

(assert (=> b!4641310 (contains!14901 (extractMap!1652 lt!1804335) key!4968)))

(declare-fun lt!1804348 () Unit!115381)

(declare-datatypes ((ListLongMap!3707 0))(
  ( (ListLongMap!3708 (toList!5138 List!51899)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!374 (ListLongMap!3707 K!13140 Hashable!5993) Unit!115381)

(assert (=> b!4641310 (= lt!1804348 (lemmaListContainsThenExtractedMapContains!374 (ListLongMap!3708 lt!1804335) key!4968 hashF!1389))))

(assert (=> b!4641310 (= lt!1804335 (Cons!51775 (tuple2!52833 hash!414 (t!358982 oldBucket!40)) Nil!51775))))

(declare-fun b!4641311 () Bool)

(declare-fun e!2895332 () Bool)

(assert (=> b!4641311 (= e!2895332 e!2895329)))

(declare-fun res!1949327 () Bool)

(assert (=> b!4641311 (=> res!1949327 e!2895329)))

(declare-fun removePairForKey!1219 (List!51898 K!13140) List!51898)

(assert (=> b!4641311 (= res!1949327 (not (= (removePairForKey!1219 lt!1804339 key!4968) lt!1804343)))))

(declare-fun tail!8219 (List!51898) List!51898)

(assert (=> b!4641311 (= lt!1804343 (tail!8219 newBucket!224))))

(assert (=> b!4641311 (= lt!1804339 (tail!8219 oldBucket!40))))

(declare-fun b!4641312 () Bool)

(assert (=> b!4641312 (= e!2895328 (eq!887 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775)) (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775)) lt!1804340)))))

(declare-fun b!4641313 () Bool)

(declare-fun res!1949329 () Bool)

(assert (=> b!4641313 (=> res!1949329 e!2895329)))

(assert (=> b!4641313 (= res!1949329 (not (= (removePairForKey!1219 (t!358982 oldBucket!40) key!4968) lt!1804343)))))

(declare-fun b!4641315 () Bool)

(declare-fun res!1949321 () Bool)

(declare-fun e!2895330 () Bool)

(assert (=> b!4641315 (=> (not res!1949321) (not e!2895330))))

(assert (=> b!4641315 (= res!1949321 (allKeysSameHash!1450 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4641316 () Bool)

(declare-fun e!2895326 () Bool)

(declare-fun lt!1804332 () ListMap!4461)

(assert (=> b!4641316 (= e!2895326 (= lt!1804332 (ListMap!4462 Nil!51774)))))

(declare-fun b!4641314 () Bool)

(assert (=> b!4641314 (= e!2895330 e!2895333)))

(declare-fun res!1949332 () Bool)

(assert (=> b!4641314 (=> (not res!1949332) (not e!2895333))))

(assert (=> b!4641314 (= res!1949332 (contains!14901 lt!1804338 key!4968))))

(declare-fun lt!1804345 () List!51899)

(assert (=> b!4641314 (= lt!1804338 (extractMap!1652 lt!1804345))))

(assert (=> b!4641314 (= lt!1804345 (Cons!51775 (tuple2!52833 hash!414 oldBucket!40) Nil!51775))))

(declare-fun res!1949324 () Bool)

(assert (=> start!466720 (=> (not res!1949324) (not e!2895330))))

(declare-fun noDuplicateKeys!1596 (List!51898) Bool)

(assert (=> start!466720 (= res!1949324 (noDuplicateKeys!1596 oldBucket!40))))

(assert (=> start!466720 e!2895330))

(assert (=> start!466720 true))

(declare-fun e!2895331 () Bool)

(assert (=> start!466720 e!2895331))

(declare-fun tp_is_empty!29677 () Bool)

(assert (=> start!466720 tp_is_empty!29677))

(declare-fun e!2895334 () Bool)

(assert (=> start!466720 e!2895334))

(declare-fun b!4641317 () Bool)

(declare-fun res!1949328 () Bool)

(assert (=> b!4641317 (=> (not res!1949328) (not e!2895330))))

(assert (=> b!4641317 (= res!1949328 (noDuplicateKeys!1596 newBucket!224))))

(declare-fun b!4641318 () Bool)

(declare-fun e!2895325 () Bool)

(assert (=> b!4641318 (= e!2895325 e!2895332)))

(declare-fun res!1949331 () Bool)

(assert (=> b!4641318 (=> res!1949331 e!2895332)))

(declare-fun containsKey!2634 (List!51898 K!13140) Bool)

(assert (=> b!4641318 (= res!1949331 (not (containsKey!2634 (t!358982 oldBucket!40) key!4968)))))

(assert (=> b!4641318 (containsKey!2634 oldBucket!40 key!4968)))

(declare-fun lt!1804344 () Unit!115381)

(declare-fun lemmaGetPairDefinedThenContainsKey!110 (List!51898 K!13140 Hashable!5993) Unit!115381)

(assert (=> b!4641318 (= lt!1804344 (lemmaGetPairDefinedThenContainsKey!110 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1804341 () List!51898)

(declare-datatypes ((Option!11756 0))(
  ( (None!11755) (Some!11755 (v!45981 tuple2!52830)) )
))
(declare-fun isDefined!9021 (Option!11756) Bool)

(declare-fun getPair!356 (List!51898 K!13140) Option!11756)

(assert (=> b!4641318 (isDefined!9021 (getPair!356 lt!1804341 key!4968))))

(declare-fun lambda!196294 () Int)

(declare-fun lt!1804349 () tuple2!52832)

(declare-fun lt!1804346 () Unit!115381)

(declare-fun forallContained!3168 (List!51899 Int tuple2!52832) Unit!115381)

(assert (=> b!4641318 (= lt!1804346 (forallContained!3168 lt!1804345 lambda!196294 lt!1804349))))

(declare-fun contains!14902 (List!51899 tuple2!52832) Bool)

(assert (=> b!4641318 (contains!14902 lt!1804345 lt!1804349)))

(assert (=> b!4641318 (= lt!1804349 (tuple2!52833 lt!1804334 lt!1804341))))

(declare-fun lt!1804333 () ListLongMap!3707)

(declare-fun lt!1804331 () Unit!115381)

(declare-fun lemmaGetValueImpliesTupleContained!161 (ListLongMap!3707 (_ BitVec 64) List!51898) Unit!115381)

(assert (=> b!4641318 (= lt!1804331 (lemmaGetValueImpliesTupleContained!161 lt!1804333 lt!1804334 lt!1804341))))

(declare-fun apply!12229 (ListLongMap!3707 (_ BitVec 64)) List!51898)

(assert (=> b!4641318 (= lt!1804341 (apply!12229 lt!1804333 lt!1804334))))

(declare-fun contains!14903 (ListLongMap!3707 (_ BitVec 64)) Bool)

(assert (=> b!4641318 (contains!14903 lt!1804333 lt!1804334)))

(declare-fun lt!1804336 () Unit!115381)

(declare-fun lemmaInGenMapThenLongMapContainsHash!562 (ListLongMap!3707 K!13140 Hashable!5993) Unit!115381)

(assert (=> b!4641318 (= lt!1804336 (lemmaInGenMapThenLongMapContainsHash!562 lt!1804333 key!4968 hashF!1389))))

(declare-fun lt!1804342 () Unit!115381)

(declare-fun lemmaInGenMapThenGetPairDefined!152 (ListLongMap!3707 K!13140 Hashable!5993) Unit!115381)

(assert (=> b!4641318 (= lt!1804342 (lemmaInGenMapThenGetPairDefined!152 lt!1804333 key!4968 hashF!1389))))

(assert (=> b!4641318 (= lt!1804333 (ListLongMap!3708 lt!1804345))))

(declare-fun tp!1342887 () Bool)

(declare-fun tp_is_empty!29679 () Bool)

(declare-fun b!4641319 () Bool)

(assert (=> b!4641319 (= e!2895334 (and tp_is_empty!29677 tp_is_empty!29679 tp!1342887))))

(declare-fun b!4641320 () Bool)

(declare-fun res!1949330 () Bool)

(assert (=> b!4641320 (=> (not res!1949330) (not e!2895330))))

(assert (=> b!4641320 (= res!1949330 (= (removePairForKey!1219 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4641321 () Bool)

(declare-fun tp!1342886 () Bool)

(assert (=> b!4641321 (= e!2895331 (and tp_is_empty!29677 tp_is_empty!29679 tp!1342886))))

(declare-fun b!4641322 () Bool)

(assert (=> b!4641322 (= e!2895327 (not e!2895325))))

(declare-fun res!1949325 () Bool)

(assert (=> b!4641322 (=> res!1949325 e!2895325)))

(get-info :version)

(assert (=> b!4641322 (= res!1949325 (or (and ((_ is Cons!51774) oldBucket!40) (= (_1!29709 (h!57884 oldBucket!40)) key!4968)) (not ((_ is Cons!51774) oldBucket!40)) (= (_1!29709 (h!57884 oldBucket!40)) key!4968)))))

(assert (=> b!4641322 e!2895326))

(declare-fun res!1949322 () Bool)

(assert (=> b!4641322 (=> (not res!1949322) (not e!2895326))))

(assert (=> b!4641322 (= res!1949322 (= lt!1804338 (addToMapMapFromBucket!1055 oldBucket!40 lt!1804332)))))

(assert (=> b!4641322 (= lt!1804332 (extractMap!1652 Nil!51775))))

(assert (=> b!4641322 true))

(assert (= (and start!466720 res!1949324) b!4641317))

(assert (= (and b!4641317 res!1949328) b!4641320))

(assert (= (and b!4641320 res!1949330) b!4641315))

(assert (= (and b!4641315 res!1949321) b!4641314))

(assert (= (and b!4641314 res!1949332) b!4641308))

(assert (= (and b!4641308 res!1949323) b!4641309))

(assert (= (and b!4641309 res!1949326) b!4641322))

(assert (= (and b!4641322 res!1949322) b!4641316))

(assert (= (and b!4641322 (not res!1949325)) b!4641318))

(assert (= (and b!4641318 (not res!1949331)) b!4641311))

(assert (= (and b!4641311 (not res!1949327)) b!4641313))

(assert (= (and b!4641313 (not res!1949329)) b!4641310))

(assert (= (and b!4641310 (not res!1949320)) b!4641312))

(assert (= (and start!466720 ((_ is Cons!51774) oldBucket!40)) b!4641321))

(assert (= (and start!466720 ((_ is Cons!51774) newBucket!224)) b!4641319))

(declare-fun m!5501519 () Bool)

(assert (=> b!4641320 m!5501519))

(declare-fun m!5501521 () Bool)

(assert (=> b!4641313 m!5501521))

(declare-fun m!5501523 () Bool)

(assert (=> b!4641311 m!5501523))

(declare-fun m!5501525 () Bool)

(assert (=> b!4641311 m!5501525))

(declare-fun m!5501527 () Bool)

(assert (=> b!4641311 m!5501527))

(declare-fun m!5501529 () Bool)

(assert (=> b!4641322 m!5501529))

(declare-fun m!5501531 () Bool)

(assert (=> b!4641322 m!5501531))

(declare-fun m!5501533 () Bool)

(assert (=> b!4641308 m!5501533))

(declare-fun m!5501535 () Bool)

(assert (=> b!4641317 m!5501535))

(declare-fun m!5501537 () Bool)

(assert (=> start!466720 m!5501537))

(declare-fun m!5501539 () Bool)

(assert (=> b!4641314 m!5501539))

(declare-fun m!5501541 () Bool)

(assert (=> b!4641314 m!5501541))

(declare-fun m!5501543 () Bool)

(assert (=> b!4641318 m!5501543))

(declare-fun m!5501545 () Bool)

(assert (=> b!4641318 m!5501545))

(declare-fun m!5501547 () Bool)

(assert (=> b!4641318 m!5501547))

(declare-fun m!5501549 () Bool)

(assert (=> b!4641318 m!5501549))

(declare-fun m!5501551 () Bool)

(assert (=> b!4641318 m!5501551))

(declare-fun m!5501553 () Bool)

(assert (=> b!4641318 m!5501553))

(declare-fun m!5501555 () Bool)

(assert (=> b!4641318 m!5501555))

(declare-fun m!5501557 () Bool)

(assert (=> b!4641318 m!5501557))

(declare-fun m!5501559 () Bool)

(assert (=> b!4641318 m!5501559))

(declare-fun m!5501561 () Bool)

(assert (=> b!4641318 m!5501561))

(declare-fun m!5501563 () Bool)

(assert (=> b!4641318 m!5501563))

(declare-fun m!5501565 () Bool)

(assert (=> b!4641318 m!5501565))

(assert (=> b!4641318 m!5501549))

(declare-fun m!5501567 () Bool)

(assert (=> b!4641315 m!5501567))

(declare-fun m!5501569 () Bool)

(assert (=> b!4641310 m!5501569))

(declare-fun m!5501571 () Bool)

(assert (=> b!4641310 m!5501571))

(declare-fun m!5501573 () Bool)

(assert (=> b!4641310 m!5501573))

(declare-fun m!5501575 () Bool)

(assert (=> b!4641310 m!5501575))

(declare-fun m!5501577 () Bool)

(assert (=> b!4641310 m!5501577))

(declare-fun m!5501579 () Bool)

(assert (=> b!4641310 m!5501579))

(declare-fun m!5501581 () Bool)

(assert (=> b!4641310 m!5501581))

(declare-fun m!5501583 () Bool)

(assert (=> b!4641310 m!5501583))

(declare-fun m!5501585 () Bool)

(assert (=> b!4641310 m!5501585))

(declare-fun m!5501587 () Bool)

(assert (=> b!4641310 m!5501587))

(declare-fun m!5501589 () Bool)

(assert (=> b!4641310 m!5501589))

(assert (=> b!4641310 m!5501569))

(declare-fun m!5501591 () Bool)

(assert (=> b!4641310 m!5501591))

(declare-fun m!5501593 () Bool)

(assert (=> b!4641310 m!5501593))

(assert (=> b!4641310 m!5501581))

(declare-fun m!5501595 () Bool)

(assert (=> b!4641310 m!5501595))

(declare-fun m!5501597 () Bool)

(assert (=> b!4641310 m!5501597))

(declare-fun m!5501599 () Bool)

(assert (=> b!4641310 m!5501599))

(assert (=> b!4641310 m!5501575))

(declare-fun m!5501601 () Bool)

(assert (=> b!4641310 m!5501601))

(assert (=> b!4641310 m!5501585))

(assert (=> b!4641310 m!5501591))

(assert (=> b!4641310 m!5501599))

(declare-fun m!5501603 () Bool)

(assert (=> b!4641310 m!5501603))

(assert (=> b!4641310 m!5501587))

(assert (=> b!4641310 m!5501595))

(assert (=> b!4641310 m!5501571))

(declare-fun m!5501605 () Bool)

(assert (=> b!4641312 m!5501605))

(declare-fun m!5501607 () Bool)

(assert (=> b!4641312 m!5501607))

(assert (=> b!4641312 m!5501607))

(declare-fun m!5501609 () Bool)

(assert (=> b!4641312 m!5501609))

(assert (=> b!4641312 m!5501605))

(assert (=> b!4641312 m!5501609))

(declare-fun m!5501611 () Bool)

(assert (=> b!4641312 m!5501611))

(declare-fun m!5501613 () Bool)

(assert (=> b!4641309 m!5501613))

(check-sat (not b!4641321) (not b!4641310) (not b!4641313) (not b!4641311) (not start!466720) (not b!4641309) (not b!4641318) (not b!4641319) tp_is_empty!29679 (not b!4641314) (not b!4641312) (not b!4641317) (not b!4641320) tp_is_empty!29677 (not b!4641322) (not b!4641315) (not b!4641308))
(check-sat)
(get-model)

(declare-fun d!1463232 () Bool)

(declare-fun hash!3690 (Hashable!5993 K!13140) (_ BitVec 64))

(assert (=> d!1463232 (= (hash!3689 hashF!1389 key!4968) (hash!3690 hashF!1389 key!4968))))

(declare-fun bs!1033584 () Bool)

(assert (= bs!1033584 d!1463232))

(declare-fun m!5501615 () Bool)

(assert (=> bs!1033584 m!5501615))

(assert (=> b!4641308 d!1463232))

(declare-fun d!1463236 () Bool)

(declare-fun e!2895346 () Bool)

(assert (=> d!1463236 e!2895346))

(declare-fun res!1949349 () Bool)

(assert (=> d!1463236 (=> (not res!1949349) (not e!2895346))))

(declare-fun lt!1804370 () ListMap!4461)

(assert (=> d!1463236 (= res!1949349 (contains!14901 lt!1804370 (_1!29709 lt!1804340)))))

(declare-fun lt!1804373 () List!51898)

(assert (=> d!1463236 (= lt!1804370 (ListMap!4462 lt!1804373))))

(declare-fun lt!1804371 () Unit!115381)

(declare-fun lt!1804372 () Unit!115381)

(assert (=> d!1463236 (= lt!1804371 lt!1804372)))

(declare-datatypes ((Option!11758 0))(
  ( (None!11757) (Some!11757 (v!45987 V!13386)) )
))
(declare-fun getValueByKey!1560 (List!51898 K!13140) Option!11758)

(assert (=> d!1463236 (= (getValueByKey!1560 lt!1804373 (_1!29709 lt!1804340)) (Some!11757 (_2!29709 lt!1804340)))))

(declare-fun lemmaContainsTupThenGetReturnValue!900 (List!51898 K!13140 V!13386) Unit!115381)

(assert (=> d!1463236 (= lt!1804372 (lemmaContainsTupThenGetReturnValue!900 lt!1804373 (_1!29709 lt!1804340) (_2!29709 lt!1804340)))))

(declare-fun insertNoDuplicatedKeys!408 (List!51898 K!13140 V!13386) List!51898)

(assert (=> d!1463236 (= lt!1804373 (insertNoDuplicatedKeys!408 (toList!5137 (addToMapMapFromBucket!1055 lt!1804343 (ListMap!4462 Nil!51774))) (_1!29709 lt!1804340) (_2!29709 lt!1804340)))))

(assert (=> d!1463236 (= (+!1946 (addToMapMapFromBucket!1055 lt!1804343 (ListMap!4462 Nil!51774)) lt!1804340) lt!1804370)))

(declare-fun b!4641343 () Bool)

(declare-fun res!1949350 () Bool)

(assert (=> b!4641343 (=> (not res!1949350) (not e!2895346))))

(assert (=> b!4641343 (= res!1949350 (= (getValueByKey!1560 (toList!5137 lt!1804370) (_1!29709 lt!1804340)) (Some!11757 (_2!29709 lt!1804340))))))

(declare-fun b!4641344 () Bool)

(declare-fun contains!14906 (List!51898 tuple2!52830) Bool)

(assert (=> b!4641344 (= e!2895346 (contains!14906 (toList!5137 lt!1804370) lt!1804340))))

(assert (= (and d!1463236 res!1949349) b!4641343))

(assert (= (and b!4641343 res!1949350) b!4641344))

(declare-fun m!5501637 () Bool)

(assert (=> d!1463236 m!5501637))

(declare-fun m!5501639 () Bool)

(assert (=> d!1463236 m!5501639))

(declare-fun m!5501641 () Bool)

(assert (=> d!1463236 m!5501641))

(declare-fun m!5501643 () Bool)

(assert (=> d!1463236 m!5501643))

(declare-fun m!5501645 () Bool)

(assert (=> b!4641343 m!5501645))

(declare-fun m!5501647 () Bool)

(assert (=> b!4641344 m!5501647))

(assert (=> b!4641310 d!1463236))

(declare-fun d!1463246 () Bool)

(declare-fun e!2895347 () Bool)

(assert (=> d!1463246 e!2895347))

(declare-fun res!1949351 () Bool)

(assert (=> d!1463246 (=> (not res!1949351) (not e!2895347))))

(declare-fun lt!1804374 () ListMap!4461)

(assert (=> d!1463246 (= res!1949351 (contains!14901 lt!1804374 (_1!29709 lt!1804337)))))

(declare-fun lt!1804377 () List!51898)

(assert (=> d!1463246 (= lt!1804374 (ListMap!4462 lt!1804377))))

(declare-fun lt!1804375 () Unit!115381)

(declare-fun lt!1804376 () Unit!115381)

(assert (=> d!1463246 (= lt!1804375 lt!1804376)))

(assert (=> d!1463246 (= (getValueByKey!1560 lt!1804377 (_1!29709 lt!1804337)) (Some!11757 (_2!29709 lt!1804337)))))

(assert (=> d!1463246 (= lt!1804376 (lemmaContainsTupThenGetReturnValue!900 lt!1804377 (_1!29709 lt!1804337) (_2!29709 lt!1804337)))))

(assert (=> d!1463246 (= lt!1804377 (insertNoDuplicatedKeys!408 (toList!5137 (addToMapMapFromBucket!1055 lt!1804339 (ListMap!4462 Nil!51774))) (_1!29709 lt!1804337) (_2!29709 lt!1804337)))))

(assert (=> d!1463246 (= (+!1946 (addToMapMapFromBucket!1055 lt!1804339 (ListMap!4462 Nil!51774)) lt!1804337) lt!1804374)))

(declare-fun b!4641345 () Bool)

(declare-fun res!1949352 () Bool)

(assert (=> b!4641345 (=> (not res!1949352) (not e!2895347))))

(assert (=> b!4641345 (= res!1949352 (= (getValueByKey!1560 (toList!5137 lt!1804374) (_1!29709 lt!1804337)) (Some!11757 (_2!29709 lt!1804337))))))

(declare-fun b!4641346 () Bool)

(assert (=> b!4641346 (= e!2895347 (contains!14906 (toList!5137 lt!1804374) lt!1804337))))

(assert (= (and d!1463246 res!1949351) b!4641345))

(assert (= (and b!4641345 res!1949352) b!4641346))

(declare-fun m!5501649 () Bool)

(assert (=> d!1463246 m!5501649))

(declare-fun m!5501651 () Bool)

(assert (=> d!1463246 m!5501651))

(declare-fun m!5501653 () Bool)

(assert (=> d!1463246 m!5501653))

(declare-fun m!5501655 () Bool)

(assert (=> d!1463246 m!5501655))

(declare-fun m!5501657 () Bool)

(assert (=> b!4641345 m!5501657))

(declare-fun m!5501659 () Bool)

(assert (=> b!4641346 m!5501659))

(assert (=> b!4641310 d!1463246))

(declare-fun d!1463248 () Bool)

(assert (=> d!1463248 (= (head!9706 oldBucket!40) (h!57884 oldBucket!40))))

(assert (=> b!4641310 d!1463248))

(declare-fun b!4641427 () Bool)

(assert (=> b!4641427 true))

(declare-fun bs!1033650 () Bool)

(declare-fun b!4641425 () Bool)

(assert (= bs!1033650 (and b!4641425 b!4641427)))

(declare-fun lambda!196372 () Int)

(declare-fun lambda!196371 () Int)

(assert (=> bs!1033650 (= lambda!196372 lambda!196371)))

(assert (=> b!4641425 true))

(declare-fun lt!1804571 () ListMap!4461)

(declare-fun lambda!196373 () Int)

(assert (=> bs!1033650 (= (= lt!1804571 (ListMap!4462 Nil!51774)) (= lambda!196373 lambda!196371))))

(assert (=> b!4641425 (= (= lt!1804571 (ListMap!4462 Nil!51774)) (= lambda!196373 lambda!196372))))

(assert (=> b!4641425 true))

(declare-fun bs!1033651 () Bool)

(declare-fun d!1463252 () Bool)

(assert (= bs!1033651 (and d!1463252 b!4641427)))

(declare-fun lt!1804584 () ListMap!4461)

(declare-fun lambda!196374 () Int)

(assert (=> bs!1033651 (= (= lt!1804584 (ListMap!4462 Nil!51774)) (= lambda!196374 lambda!196371))))

(declare-fun bs!1033652 () Bool)

(assert (= bs!1033652 (and d!1463252 b!4641425)))

(assert (=> bs!1033652 (= (= lt!1804584 (ListMap!4462 Nil!51774)) (= lambda!196374 lambda!196372))))

(assert (=> bs!1033652 (= (= lt!1804584 lt!1804571) (= lambda!196374 lambda!196373))))

(assert (=> d!1463252 true))

(declare-fun bm!324013 () Bool)

(declare-fun call!324019 () Unit!115381)

(declare-fun lemmaContainsAllItsOwnKeys!566 (ListMap!4461) Unit!115381)

(assert (=> bm!324013 (= call!324019 (lemmaContainsAllItsOwnKeys!566 (ListMap!4462 Nil!51774)))))

(declare-fun b!4641423 () Bool)

(declare-fun e!2895393 () Bool)

(declare-fun forall!10947 (List!51898 Int) Bool)

(assert (=> b!4641423 (= e!2895393 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196373))))

(declare-fun b!4641424 () Bool)

(declare-fun res!1949387 () Bool)

(declare-fun e!2895395 () Bool)

(assert (=> b!4641424 (=> (not res!1949387) (not e!2895395))))

(assert (=> b!4641424 (= res!1949387 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196374))))

(assert (=> d!1463252 e!2895395))

(declare-fun res!1949388 () Bool)

(assert (=> d!1463252 (=> (not res!1949388) (not e!2895395))))

(assert (=> d!1463252 (= res!1949388 (forall!10947 (Cons!51774 lt!1804337 lt!1804339) lambda!196374))))

(declare-fun e!2895394 () ListMap!4461)

(assert (=> d!1463252 (= lt!1804584 e!2895394)))

(declare-fun c!794221 () Bool)

(assert (=> d!1463252 (= c!794221 ((_ is Nil!51774) (Cons!51774 lt!1804337 lt!1804339)))))

(assert (=> d!1463252 (noDuplicateKeys!1596 (Cons!51774 lt!1804337 lt!1804339))))

(assert (=> d!1463252 (= (addToMapMapFromBucket!1055 (Cons!51774 lt!1804337 lt!1804339) (ListMap!4462 Nil!51774)) lt!1804584)))

(declare-fun call!324018 () Bool)

(declare-fun bm!324014 () Bool)

(assert (=> bm!324014 (= call!324018 (forall!10947 (ite c!794221 (toList!5137 (ListMap!4462 Nil!51774)) (Cons!51774 lt!1804337 lt!1804339)) (ite c!794221 lambda!196371 lambda!196373)))))

(assert (=> b!4641425 (= e!2895394 lt!1804571)))

(declare-fun lt!1804567 () ListMap!4461)

(assert (=> b!4641425 (= lt!1804567 (+!1946 (ListMap!4462 Nil!51774) (h!57884 (Cons!51774 lt!1804337 lt!1804339))))))

(assert (=> b!4641425 (= lt!1804571 (addToMapMapFromBucket!1055 (t!358982 (Cons!51774 lt!1804337 lt!1804339)) (+!1946 (ListMap!4462 Nil!51774) (h!57884 (Cons!51774 lt!1804337 lt!1804339)))))))

(declare-fun lt!1804577 () Unit!115381)

(assert (=> b!4641425 (= lt!1804577 call!324019)))

(assert (=> b!4641425 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196372)))

(declare-fun lt!1804568 () Unit!115381)

(assert (=> b!4641425 (= lt!1804568 lt!1804577)))

(assert (=> b!4641425 (forall!10947 (toList!5137 lt!1804567) lambda!196373)))

(declare-fun lt!1804573 () Unit!115381)

(declare-fun Unit!115396 () Unit!115381)

(assert (=> b!4641425 (= lt!1804573 Unit!115396)))

(assert (=> b!4641425 (forall!10947 (t!358982 (Cons!51774 lt!1804337 lt!1804339)) lambda!196373)))

(declare-fun lt!1804581 () Unit!115381)

(declare-fun Unit!115397 () Unit!115381)

(assert (=> b!4641425 (= lt!1804581 Unit!115397)))

(declare-fun lt!1804585 () Unit!115381)

(declare-fun Unit!115398 () Unit!115381)

(assert (=> b!4641425 (= lt!1804585 Unit!115398)))

(declare-fun lt!1804572 () Unit!115381)

(declare-fun forallContained!3170 (List!51898 Int tuple2!52830) Unit!115381)

(assert (=> b!4641425 (= lt!1804572 (forallContained!3170 (toList!5137 lt!1804567) lambda!196373 (h!57884 (Cons!51774 lt!1804337 lt!1804339))))))

(assert (=> b!4641425 (contains!14901 lt!1804567 (_1!29709 (h!57884 (Cons!51774 lt!1804337 lt!1804339))))))

(declare-fun lt!1804574 () Unit!115381)

(declare-fun Unit!115399 () Unit!115381)

(assert (=> b!4641425 (= lt!1804574 Unit!115399)))

(assert (=> b!4641425 (contains!14901 lt!1804571 (_1!29709 (h!57884 (Cons!51774 lt!1804337 lt!1804339))))))

(declare-fun lt!1804583 () Unit!115381)

(declare-fun Unit!115400 () Unit!115381)

(assert (=> b!4641425 (= lt!1804583 Unit!115400)))

(declare-fun call!324020 () Bool)

(assert (=> b!4641425 call!324020))

(declare-fun lt!1804575 () Unit!115381)

(declare-fun Unit!115401 () Unit!115381)

(assert (=> b!4641425 (= lt!1804575 Unit!115401)))

(assert (=> b!4641425 (forall!10947 (toList!5137 lt!1804567) lambda!196373)))

(declare-fun lt!1804579 () Unit!115381)

(declare-fun Unit!115402 () Unit!115381)

(assert (=> b!4641425 (= lt!1804579 Unit!115402)))

(declare-fun lt!1804576 () Unit!115381)

(declare-fun Unit!115403 () Unit!115381)

(assert (=> b!4641425 (= lt!1804576 Unit!115403)))

(declare-fun lt!1804582 () Unit!115381)

(declare-fun addForallContainsKeyThenBeforeAdding!565 (ListMap!4461 ListMap!4461 K!13140 V!13386) Unit!115381)

(assert (=> b!4641425 (= lt!1804582 (addForallContainsKeyThenBeforeAdding!565 (ListMap!4462 Nil!51774) lt!1804571 (_1!29709 (h!57884 (Cons!51774 lt!1804337 lt!1804339))) (_2!29709 (h!57884 (Cons!51774 lt!1804337 lt!1804339)))))))

(assert (=> b!4641425 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196373)))

(declare-fun lt!1804565 () Unit!115381)

(assert (=> b!4641425 (= lt!1804565 lt!1804582)))

(assert (=> b!4641425 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196373)))

(declare-fun lt!1804569 () Unit!115381)

(declare-fun Unit!115404 () Unit!115381)

(assert (=> b!4641425 (= lt!1804569 Unit!115404)))

(declare-fun res!1949389 () Bool)

(assert (=> b!4641425 (= res!1949389 call!324018)))

(assert (=> b!4641425 (=> (not res!1949389) (not e!2895393))))

(assert (=> b!4641425 e!2895393))

(declare-fun lt!1804578 () Unit!115381)

(declare-fun Unit!115405 () Unit!115381)

(assert (=> b!4641425 (= lt!1804578 Unit!115405)))

(declare-fun b!4641426 () Bool)

(declare-fun invariantList!1264 (List!51898) Bool)

(assert (=> b!4641426 (= e!2895395 (invariantList!1264 (toList!5137 lt!1804584)))))

(declare-fun bm!324015 () Bool)

(assert (=> bm!324015 (= call!324020 (forall!10947 (ite c!794221 (toList!5137 (ListMap!4462 Nil!51774)) (Cons!51774 lt!1804337 lt!1804339)) (ite c!794221 lambda!196371 lambda!196373)))))

(assert (=> b!4641427 (= e!2895394 (ListMap!4462 Nil!51774))))

(declare-fun lt!1804566 () Unit!115381)

(assert (=> b!4641427 (= lt!1804566 call!324019)))

(assert (=> b!4641427 call!324020))

(declare-fun lt!1804570 () Unit!115381)

(assert (=> b!4641427 (= lt!1804570 lt!1804566)))

(assert (=> b!4641427 call!324018))

(declare-fun lt!1804580 () Unit!115381)

(declare-fun Unit!115406 () Unit!115381)

(assert (=> b!4641427 (= lt!1804580 Unit!115406)))

(assert (= (and d!1463252 c!794221) b!4641427))

(assert (= (and d!1463252 (not c!794221)) b!4641425))

(assert (= (and b!4641425 res!1949389) b!4641423))

(assert (= (or b!4641427 b!4641425) bm!324013))

(assert (= (or b!4641427 b!4641425) bm!324014))

(assert (= (or b!4641427 b!4641425) bm!324015))

(assert (= (and d!1463252 res!1949388) b!4641424))

(assert (= (and b!4641424 res!1949387) b!4641426))

(declare-fun m!5501835 () Bool)

(assert (=> d!1463252 m!5501835))

(declare-fun m!5501837 () Bool)

(assert (=> d!1463252 m!5501837))

(declare-fun m!5501839 () Bool)

(assert (=> b!4641425 m!5501839))

(declare-fun m!5501841 () Bool)

(assert (=> b!4641425 m!5501841))

(declare-fun m!5501843 () Bool)

(assert (=> b!4641425 m!5501843))

(declare-fun m!5501845 () Bool)

(assert (=> b!4641425 m!5501845))

(assert (=> b!4641425 m!5501845))

(declare-fun m!5501847 () Bool)

(assert (=> b!4641425 m!5501847))

(declare-fun m!5501849 () Bool)

(assert (=> b!4641425 m!5501849))

(declare-fun m!5501851 () Bool)

(assert (=> b!4641425 m!5501851))

(declare-fun m!5501853 () Bool)

(assert (=> b!4641425 m!5501853))

(assert (=> b!4641425 m!5501847))

(declare-fun m!5501855 () Bool)

(assert (=> b!4641425 m!5501855))

(declare-fun m!5501857 () Bool)

(assert (=> b!4641425 m!5501857))

(assert (=> b!4641425 m!5501841))

(assert (=> b!4641423 m!5501847))

(declare-fun m!5501859 () Bool)

(assert (=> b!4641424 m!5501859))

(declare-fun m!5501861 () Bool)

(assert (=> b!4641426 m!5501861))

(declare-fun m!5501863 () Bool)

(assert (=> bm!324013 m!5501863))

(declare-fun m!5501865 () Bool)

(assert (=> bm!324015 m!5501865))

(assert (=> bm!324014 m!5501865))

(assert (=> b!4641310 d!1463252))

(declare-fun bs!1033653 () Bool)

(declare-fun b!4641434 () Bool)

(assert (= bs!1033653 (and b!4641434 b!4641427)))

(declare-fun lambda!196375 () Int)

(assert (=> bs!1033653 (= lambda!196375 lambda!196371)))

(declare-fun bs!1033654 () Bool)

(assert (= bs!1033654 (and b!4641434 b!4641425)))

(assert (=> bs!1033654 (= lambda!196375 lambda!196372)))

(assert (=> bs!1033654 (= (= (ListMap!4462 Nil!51774) lt!1804571) (= lambda!196375 lambda!196373))))

(declare-fun bs!1033655 () Bool)

(assert (= bs!1033655 (and b!4641434 d!1463252)))

(assert (=> bs!1033655 (= (= (ListMap!4462 Nil!51774) lt!1804584) (= lambda!196375 lambda!196374))))

(assert (=> b!4641434 true))

(declare-fun bs!1033656 () Bool)

(declare-fun b!4641432 () Bool)

(assert (= bs!1033656 (and b!4641432 d!1463252)))

(declare-fun lambda!196377 () Int)

(assert (=> bs!1033656 (= (= (ListMap!4462 Nil!51774) lt!1804584) (= lambda!196377 lambda!196374))))

(declare-fun bs!1033657 () Bool)

(assert (= bs!1033657 (and b!4641432 b!4641434)))

(assert (=> bs!1033657 (= lambda!196377 lambda!196375)))

(declare-fun bs!1033658 () Bool)

(assert (= bs!1033658 (and b!4641432 b!4641425)))

(assert (=> bs!1033658 (= lambda!196377 lambda!196372)))

(declare-fun bs!1033659 () Bool)

(assert (= bs!1033659 (and b!4641432 b!4641427)))

(assert (=> bs!1033659 (= lambda!196377 lambda!196371)))

(assert (=> bs!1033658 (= (= (ListMap!4462 Nil!51774) lt!1804571) (= lambda!196377 lambda!196373))))

(assert (=> b!4641432 true))

(declare-fun lt!1804592 () ListMap!4461)

(declare-fun lambda!196379 () Int)

(assert (=> b!4641432 (= (= lt!1804592 (ListMap!4462 Nil!51774)) (= lambda!196379 lambda!196377))))

(assert (=> bs!1033656 (= (= lt!1804592 lt!1804584) (= lambda!196379 lambda!196374))))

(assert (=> bs!1033657 (= (= lt!1804592 (ListMap!4462 Nil!51774)) (= lambda!196379 lambda!196375))))

(assert (=> bs!1033658 (= (= lt!1804592 (ListMap!4462 Nil!51774)) (= lambda!196379 lambda!196372))))

(assert (=> bs!1033659 (= (= lt!1804592 (ListMap!4462 Nil!51774)) (= lambda!196379 lambda!196371))))

(assert (=> bs!1033658 (= (= lt!1804592 lt!1804571) (= lambda!196379 lambda!196373))))

(assert (=> b!4641432 true))

(declare-fun bs!1033664 () Bool)

(declare-fun d!1463282 () Bool)

(assert (= bs!1033664 (and d!1463282 b!4641432)))

(declare-fun lt!1804605 () ListMap!4461)

(declare-fun lambda!196381 () Int)

(assert (=> bs!1033664 (= (= lt!1804605 (ListMap!4462 Nil!51774)) (= lambda!196381 lambda!196377))))

(declare-fun bs!1033665 () Bool)

(assert (= bs!1033665 (and d!1463282 d!1463252)))

(assert (=> bs!1033665 (= (= lt!1804605 lt!1804584) (= lambda!196381 lambda!196374))))

(declare-fun bs!1033666 () Bool)

(assert (= bs!1033666 (and d!1463282 b!4641434)))

(assert (=> bs!1033666 (= (= lt!1804605 (ListMap!4462 Nil!51774)) (= lambda!196381 lambda!196375))))

(declare-fun bs!1033667 () Bool)

(assert (= bs!1033667 (and d!1463282 b!4641425)))

(assert (=> bs!1033667 (= (= lt!1804605 (ListMap!4462 Nil!51774)) (= lambda!196381 lambda!196372))))

(assert (=> bs!1033664 (= (= lt!1804605 lt!1804592) (= lambda!196381 lambda!196379))))

(declare-fun bs!1033668 () Bool)

(assert (= bs!1033668 (and d!1463282 b!4641427)))

(assert (=> bs!1033668 (= (= lt!1804605 (ListMap!4462 Nil!51774)) (= lambda!196381 lambda!196371))))

(assert (=> bs!1033667 (= (= lt!1804605 lt!1804571) (= lambda!196381 lambda!196373))))

(assert (=> d!1463282 true))

(declare-fun bm!324016 () Bool)

(declare-fun call!324022 () Unit!115381)

(assert (=> bm!324016 (= call!324022 (lemmaContainsAllItsOwnKeys!566 (ListMap!4462 Nil!51774)))))

(declare-fun b!4641430 () Bool)

(declare-fun e!2895396 () Bool)

(assert (=> b!4641430 (= e!2895396 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196379))))

(declare-fun b!4641431 () Bool)

(declare-fun res!1949390 () Bool)

(declare-fun e!2895398 () Bool)

(assert (=> b!4641431 (=> (not res!1949390) (not e!2895398))))

(assert (=> b!4641431 (= res!1949390 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196381))))

(assert (=> d!1463282 e!2895398))

(declare-fun res!1949391 () Bool)

(assert (=> d!1463282 (=> (not res!1949391) (not e!2895398))))

(assert (=> d!1463282 (= res!1949391 (forall!10947 lt!1804343 lambda!196381))))

(declare-fun e!2895397 () ListMap!4461)

(assert (=> d!1463282 (= lt!1804605 e!2895397)))

(declare-fun c!794222 () Bool)

(assert (=> d!1463282 (= c!794222 ((_ is Nil!51774) lt!1804343))))

(assert (=> d!1463282 (noDuplicateKeys!1596 lt!1804343)))

(assert (=> d!1463282 (= (addToMapMapFromBucket!1055 lt!1804343 (ListMap!4462 Nil!51774)) lt!1804605)))

(declare-fun call!324021 () Bool)

(declare-fun bm!324017 () Bool)

(assert (=> bm!324017 (= call!324021 (forall!10947 (ite c!794222 (toList!5137 (ListMap!4462 Nil!51774)) lt!1804343) (ite c!794222 lambda!196375 lambda!196379)))))

(assert (=> b!4641432 (= e!2895397 lt!1804592)))

(declare-fun lt!1804588 () ListMap!4461)

(assert (=> b!4641432 (= lt!1804588 (+!1946 (ListMap!4462 Nil!51774) (h!57884 lt!1804343)))))

(assert (=> b!4641432 (= lt!1804592 (addToMapMapFromBucket!1055 (t!358982 lt!1804343) (+!1946 (ListMap!4462 Nil!51774) (h!57884 lt!1804343))))))

(declare-fun lt!1804598 () Unit!115381)

(assert (=> b!4641432 (= lt!1804598 call!324022)))

(assert (=> b!4641432 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196377)))

(declare-fun lt!1804589 () Unit!115381)

(assert (=> b!4641432 (= lt!1804589 lt!1804598)))

(assert (=> b!4641432 (forall!10947 (toList!5137 lt!1804588) lambda!196379)))

(declare-fun lt!1804594 () Unit!115381)

(declare-fun Unit!115418 () Unit!115381)

(assert (=> b!4641432 (= lt!1804594 Unit!115418)))

(assert (=> b!4641432 (forall!10947 (t!358982 lt!1804343) lambda!196379)))

(declare-fun lt!1804602 () Unit!115381)

(declare-fun Unit!115419 () Unit!115381)

(assert (=> b!4641432 (= lt!1804602 Unit!115419)))

(declare-fun lt!1804606 () Unit!115381)

(declare-fun Unit!115420 () Unit!115381)

(assert (=> b!4641432 (= lt!1804606 Unit!115420)))

(declare-fun lt!1804593 () Unit!115381)

(assert (=> b!4641432 (= lt!1804593 (forallContained!3170 (toList!5137 lt!1804588) lambda!196379 (h!57884 lt!1804343)))))

(assert (=> b!4641432 (contains!14901 lt!1804588 (_1!29709 (h!57884 lt!1804343)))))

(declare-fun lt!1804595 () Unit!115381)

(declare-fun Unit!115421 () Unit!115381)

(assert (=> b!4641432 (= lt!1804595 Unit!115421)))

(assert (=> b!4641432 (contains!14901 lt!1804592 (_1!29709 (h!57884 lt!1804343)))))

(declare-fun lt!1804604 () Unit!115381)

(declare-fun Unit!115422 () Unit!115381)

(assert (=> b!4641432 (= lt!1804604 Unit!115422)))

(declare-fun call!324023 () Bool)

(assert (=> b!4641432 call!324023))

(declare-fun lt!1804596 () Unit!115381)

(declare-fun Unit!115423 () Unit!115381)

(assert (=> b!4641432 (= lt!1804596 Unit!115423)))

(assert (=> b!4641432 (forall!10947 (toList!5137 lt!1804588) lambda!196379)))

(declare-fun lt!1804600 () Unit!115381)

(declare-fun Unit!115424 () Unit!115381)

(assert (=> b!4641432 (= lt!1804600 Unit!115424)))

(declare-fun lt!1804597 () Unit!115381)

(declare-fun Unit!115425 () Unit!115381)

(assert (=> b!4641432 (= lt!1804597 Unit!115425)))

(declare-fun lt!1804603 () Unit!115381)

(assert (=> b!4641432 (= lt!1804603 (addForallContainsKeyThenBeforeAdding!565 (ListMap!4462 Nil!51774) lt!1804592 (_1!29709 (h!57884 lt!1804343)) (_2!29709 (h!57884 lt!1804343))))))

(assert (=> b!4641432 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196379)))

(declare-fun lt!1804586 () Unit!115381)

(assert (=> b!4641432 (= lt!1804586 lt!1804603)))

(assert (=> b!4641432 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196379)))

(declare-fun lt!1804590 () Unit!115381)

(declare-fun Unit!115426 () Unit!115381)

(assert (=> b!4641432 (= lt!1804590 Unit!115426)))

(declare-fun res!1949392 () Bool)

(assert (=> b!4641432 (= res!1949392 call!324021)))

(assert (=> b!4641432 (=> (not res!1949392) (not e!2895396))))

(assert (=> b!4641432 e!2895396))

(declare-fun lt!1804599 () Unit!115381)

(declare-fun Unit!115427 () Unit!115381)

(assert (=> b!4641432 (= lt!1804599 Unit!115427)))

(declare-fun b!4641433 () Bool)

(assert (=> b!4641433 (= e!2895398 (invariantList!1264 (toList!5137 lt!1804605)))))

(declare-fun bm!324018 () Bool)

(assert (=> bm!324018 (= call!324023 (forall!10947 (ite c!794222 (toList!5137 (ListMap!4462 Nil!51774)) lt!1804343) (ite c!794222 lambda!196375 lambda!196379)))))

(assert (=> b!4641434 (= e!2895397 (ListMap!4462 Nil!51774))))

(declare-fun lt!1804587 () Unit!115381)

(assert (=> b!4641434 (= lt!1804587 call!324022)))

(assert (=> b!4641434 call!324023))

(declare-fun lt!1804591 () Unit!115381)

(assert (=> b!4641434 (= lt!1804591 lt!1804587)))

(assert (=> b!4641434 call!324021))

(declare-fun lt!1804601 () Unit!115381)

(declare-fun Unit!115428 () Unit!115381)

(assert (=> b!4641434 (= lt!1804601 Unit!115428)))

(assert (= (and d!1463282 c!794222) b!4641434))

(assert (= (and d!1463282 (not c!794222)) b!4641432))

(assert (= (and b!4641432 res!1949392) b!4641430))

(assert (= (or b!4641434 b!4641432) bm!324016))

(assert (= (or b!4641434 b!4641432) bm!324017))

(assert (= (or b!4641434 b!4641432) bm!324018))

(assert (= (and d!1463282 res!1949391) b!4641431))

(assert (= (and b!4641431 res!1949390) b!4641433))

(declare-fun m!5501875 () Bool)

(assert (=> d!1463282 m!5501875))

(declare-fun m!5501877 () Bool)

(assert (=> d!1463282 m!5501877))

(declare-fun m!5501879 () Bool)

(assert (=> b!4641432 m!5501879))

(declare-fun m!5501881 () Bool)

(assert (=> b!4641432 m!5501881))

(declare-fun m!5501883 () Bool)

(assert (=> b!4641432 m!5501883))

(declare-fun m!5501885 () Bool)

(assert (=> b!4641432 m!5501885))

(assert (=> b!4641432 m!5501885))

(declare-fun m!5501887 () Bool)

(assert (=> b!4641432 m!5501887))

(declare-fun m!5501889 () Bool)

(assert (=> b!4641432 m!5501889))

(declare-fun m!5501891 () Bool)

(assert (=> b!4641432 m!5501891))

(declare-fun m!5501893 () Bool)

(assert (=> b!4641432 m!5501893))

(assert (=> b!4641432 m!5501887))

(declare-fun m!5501895 () Bool)

(assert (=> b!4641432 m!5501895))

(declare-fun m!5501897 () Bool)

(assert (=> b!4641432 m!5501897))

(assert (=> b!4641432 m!5501881))

(assert (=> b!4641430 m!5501887))

(declare-fun m!5501899 () Bool)

(assert (=> b!4641431 m!5501899))

(declare-fun m!5501901 () Bool)

(assert (=> b!4641433 m!5501901))

(assert (=> bm!324016 m!5501863))

(declare-fun m!5501903 () Bool)

(assert (=> bm!324018 m!5501903))

(assert (=> bm!324017 m!5501903))

(assert (=> b!4641310 d!1463282))

(declare-fun bs!1033690 () Bool)

(declare-fun b!4641444 () Bool)

(assert (= bs!1033690 (and b!4641444 b!4641432)))

(declare-fun lambda!196384 () Int)

(assert (=> bs!1033690 (= lambda!196384 lambda!196377)))

(declare-fun bs!1033692 () Bool)

(assert (= bs!1033692 (and b!4641444 d!1463252)))

(assert (=> bs!1033692 (= (= (ListMap!4462 Nil!51774) lt!1804584) (= lambda!196384 lambda!196374))))

(declare-fun bs!1033694 () Bool)

(assert (= bs!1033694 (and b!4641444 b!4641425)))

(assert (=> bs!1033694 (= lambda!196384 lambda!196372)))

(assert (=> bs!1033690 (= (= (ListMap!4462 Nil!51774) lt!1804592) (= lambda!196384 lambda!196379))))

(declare-fun bs!1033695 () Bool)

(assert (= bs!1033695 (and b!4641444 b!4641427)))

(assert (=> bs!1033695 (= lambda!196384 lambda!196371)))

(assert (=> bs!1033694 (= (= (ListMap!4462 Nil!51774) lt!1804571) (= lambda!196384 lambda!196373))))

(declare-fun bs!1033696 () Bool)

(assert (= bs!1033696 (and b!4641444 b!4641434)))

(assert (=> bs!1033696 (= lambda!196384 lambda!196375)))

(declare-fun bs!1033697 () Bool)

(assert (= bs!1033697 (and b!4641444 d!1463282)))

(assert (=> bs!1033697 (= (= (ListMap!4462 Nil!51774) lt!1804605) (= lambda!196384 lambda!196381))))

(assert (=> b!4641444 true))

(declare-fun bs!1033698 () Bool)

(declare-fun b!4641442 () Bool)

(assert (= bs!1033698 (and b!4641442 b!4641432)))

(declare-fun lambda!196386 () Int)

(assert (=> bs!1033698 (= lambda!196386 lambda!196377)))

(declare-fun bs!1033699 () Bool)

(assert (= bs!1033699 (and b!4641442 b!4641444)))

(assert (=> bs!1033699 (= lambda!196386 lambda!196384)))

(declare-fun bs!1033700 () Bool)

(assert (= bs!1033700 (and b!4641442 d!1463252)))

(assert (=> bs!1033700 (= (= (ListMap!4462 Nil!51774) lt!1804584) (= lambda!196386 lambda!196374))))

(declare-fun bs!1033701 () Bool)

(assert (= bs!1033701 (and b!4641442 b!4641425)))

(assert (=> bs!1033701 (= lambda!196386 lambda!196372)))

(assert (=> bs!1033698 (= (= (ListMap!4462 Nil!51774) lt!1804592) (= lambda!196386 lambda!196379))))

(declare-fun bs!1033702 () Bool)

(assert (= bs!1033702 (and b!4641442 b!4641427)))

(assert (=> bs!1033702 (= lambda!196386 lambda!196371)))

(assert (=> bs!1033701 (= (= (ListMap!4462 Nil!51774) lt!1804571) (= lambda!196386 lambda!196373))))

(declare-fun bs!1033703 () Bool)

(assert (= bs!1033703 (and b!4641442 b!4641434)))

(assert (=> bs!1033703 (= lambda!196386 lambda!196375)))

(declare-fun bs!1033704 () Bool)

(assert (= bs!1033704 (and b!4641442 d!1463282)))

(assert (=> bs!1033704 (= (= (ListMap!4462 Nil!51774) lt!1804605) (= lambda!196386 lambda!196381))))

(assert (=> b!4641442 true))

(declare-fun lt!1804637 () ListMap!4461)

(declare-fun lambda!196387 () Int)

(assert (=> bs!1033698 (= (= lt!1804637 (ListMap!4462 Nil!51774)) (= lambda!196387 lambda!196377))))

(assert (=> b!4641442 (= (= lt!1804637 (ListMap!4462 Nil!51774)) (= lambda!196387 lambda!196386))))

(assert (=> bs!1033699 (= (= lt!1804637 (ListMap!4462 Nil!51774)) (= lambda!196387 lambda!196384))))

(assert (=> bs!1033700 (= (= lt!1804637 lt!1804584) (= lambda!196387 lambda!196374))))

(assert (=> bs!1033701 (= (= lt!1804637 (ListMap!4462 Nil!51774)) (= lambda!196387 lambda!196372))))

(assert (=> bs!1033698 (= (= lt!1804637 lt!1804592) (= lambda!196387 lambda!196379))))

(assert (=> bs!1033702 (= (= lt!1804637 (ListMap!4462 Nil!51774)) (= lambda!196387 lambda!196371))))

(assert (=> bs!1033701 (= (= lt!1804637 lt!1804571) (= lambda!196387 lambda!196373))))

(assert (=> bs!1033703 (= (= lt!1804637 (ListMap!4462 Nil!51774)) (= lambda!196387 lambda!196375))))

(assert (=> bs!1033704 (= (= lt!1804637 lt!1804605) (= lambda!196387 lambda!196381))))

(assert (=> b!4641442 true))

(declare-fun bs!1033715 () Bool)

(declare-fun d!1463286 () Bool)

(assert (= bs!1033715 (and d!1463286 b!4641432)))

(declare-fun lt!1804650 () ListMap!4461)

(declare-fun lambda!196389 () Int)

(assert (=> bs!1033715 (= (= lt!1804650 (ListMap!4462 Nil!51774)) (= lambda!196389 lambda!196377))))

(declare-fun bs!1033717 () Bool)

(assert (= bs!1033717 (and d!1463286 b!4641442)))

(assert (=> bs!1033717 (= (= lt!1804650 (ListMap!4462 Nil!51774)) (= lambda!196389 lambda!196386))))

(declare-fun bs!1033719 () Bool)

(assert (= bs!1033719 (and d!1463286 b!4641444)))

(assert (=> bs!1033719 (= (= lt!1804650 (ListMap!4462 Nil!51774)) (= lambda!196389 lambda!196384))))

(declare-fun bs!1033720 () Bool)

(assert (= bs!1033720 (and d!1463286 d!1463252)))

(assert (=> bs!1033720 (= (= lt!1804650 lt!1804584) (= lambda!196389 lambda!196374))))

(declare-fun bs!1033722 () Bool)

(assert (= bs!1033722 (and d!1463286 b!4641425)))

(assert (=> bs!1033722 (= (= lt!1804650 (ListMap!4462 Nil!51774)) (= lambda!196389 lambda!196372))))

(assert (=> bs!1033715 (= (= lt!1804650 lt!1804592) (= lambda!196389 lambda!196379))))

(assert (=> bs!1033717 (= (= lt!1804650 lt!1804637) (= lambda!196389 lambda!196387))))

(declare-fun bs!1033723 () Bool)

(assert (= bs!1033723 (and d!1463286 b!4641427)))

(assert (=> bs!1033723 (= (= lt!1804650 (ListMap!4462 Nil!51774)) (= lambda!196389 lambda!196371))))

(assert (=> bs!1033722 (= (= lt!1804650 lt!1804571) (= lambda!196389 lambda!196373))))

(declare-fun bs!1033724 () Bool)

(assert (= bs!1033724 (and d!1463286 b!4641434)))

(assert (=> bs!1033724 (= (= lt!1804650 (ListMap!4462 Nil!51774)) (= lambda!196389 lambda!196375))))

(declare-fun bs!1033725 () Bool)

(assert (= bs!1033725 (and d!1463286 d!1463282)))

(assert (=> bs!1033725 (= (= lt!1804650 lt!1804605) (= lambda!196389 lambda!196381))))

(assert (=> d!1463286 true))

(declare-fun bm!324022 () Bool)

(declare-fun call!324028 () Unit!115381)

(assert (=> bm!324022 (= call!324028 (lemmaContainsAllItsOwnKeys!566 (ListMap!4462 Nil!51774)))))

(declare-fun b!4641440 () Bool)

(declare-fun e!2895402 () Bool)

(assert (=> b!4641440 (= e!2895402 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196387))))

(declare-fun b!4641441 () Bool)

(declare-fun res!1949396 () Bool)

(declare-fun e!2895404 () Bool)

(assert (=> b!4641441 (=> (not res!1949396) (not e!2895404))))

(assert (=> b!4641441 (= res!1949396 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196389))))

(assert (=> d!1463286 e!2895404))

(declare-fun res!1949397 () Bool)

(assert (=> d!1463286 (=> (not res!1949397) (not e!2895404))))

(assert (=> d!1463286 (= res!1949397 (forall!10947 lt!1804339 lambda!196389))))

(declare-fun e!2895403 () ListMap!4461)

(assert (=> d!1463286 (= lt!1804650 e!2895403)))

(declare-fun c!794224 () Bool)

(assert (=> d!1463286 (= c!794224 ((_ is Nil!51774) lt!1804339))))

(assert (=> d!1463286 (noDuplicateKeys!1596 lt!1804339)))

(assert (=> d!1463286 (= (addToMapMapFromBucket!1055 lt!1804339 (ListMap!4462 Nil!51774)) lt!1804650)))

(declare-fun bm!324023 () Bool)

(declare-fun call!324027 () Bool)

(assert (=> bm!324023 (= call!324027 (forall!10947 (ite c!794224 (toList!5137 (ListMap!4462 Nil!51774)) lt!1804339) (ite c!794224 lambda!196384 lambda!196387)))))

(assert (=> b!4641442 (= e!2895403 lt!1804637)))

(declare-fun lt!1804633 () ListMap!4461)

(assert (=> b!4641442 (= lt!1804633 (+!1946 (ListMap!4462 Nil!51774) (h!57884 lt!1804339)))))

(assert (=> b!4641442 (= lt!1804637 (addToMapMapFromBucket!1055 (t!358982 lt!1804339) (+!1946 (ListMap!4462 Nil!51774) (h!57884 lt!1804339))))))

(declare-fun lt!1804643 () Unit!115381)

(assert (=> b!4641442 (= lt!1804643 call!324028)))

(assert (=> b!4641442 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196386)))

(declare-fun lt!1804634 () Unit!115381)

(assert (=> b!4641442 (= lt!1804634 lt!1804643)))

(assert (=> b!4641442 (forall!10947 (toList!5137 lt!1804633) lambda!196387)))

(declare-fun lt!1804639 () Unit!115381)

(declare-fun Unit!115439 () Unit!115381)

(assert (=> b!4641442 (= lt!1804639 Unit!115439)))

(assert (=> b!4641442 (forall!10947 (t!358982 lt!1804339) lambda!196387)))

(declare-fun lt!1804647 () Unit!115381)

(declare-fun Unit!115441 () Unit!115381)

(assert (=> b!4641442 (= lt!1804647 Unit!115441)))

(declare-fun lt!1804651 () Unit!115381)

(declare-fun Unit!115442 () Unit!115381)

(assert (=> b!4641442 (= lt!1804651 Unit!115442)))

(declare-fun lt!1804638 () Unit!115381)

(assert (=> b!4641442 (= lt!1804638 (forallContained!3170 (toList!5137 lt!1804633) lambda!196387 (h!57884 lt!1804339)))))

(assert (=> b!4641442 (contains!14901 lt!1804633 (_1!29709 (h!57884 lt!1804339)))))

(declare-fun lt!1804640 () Unit!115381)

(declare-fun Unit!115443 () Unit!115381)

(assert (=> b!4641442 (= lt!1804640 Unit!115443)))

(assert (=> b!4641442 (contains!14901 lt!1804637 (_1!29709 (h!57884 lt!1804339)))))

(declare-fun lt!1804649 () Unit!115381)

(declare-fun Unit!115444 () Unit!115381)

(assert (=> b!4641442 (= lt!1804649 Unit!115444)))

(declare-fun call!324029 () Bool)

(assert (=> b!4641442 call!324029))

(declare-fun lt!1804641 () Unit!115381)

(declare-fun Unit!115445 () Unit!115381)

(assert (=> b!4641442 (= lt!1804641 Unit!115445)))

(assert (=> b!4641442 (forall!10947 (toList!5137 lt!1804633) lambda!196387)))

(declare-fun lt!1804645 () Unit!115381)

(declare-fun Unit!115446 () Unit!115381)

(assert (=> b!4641442 (= lt!1804645 Unit!115446)))

(declare-fun lt!1804642 () Unit!115381)

(declare-fun Unit!115447 () Unit!115381)

(assert (=> b!4641442 (= lt!1804642 Unit!115447)))

(declare-fun lt!1804648 () Unit!115381)

(assert (=> b!4641442 (= lt!1804648 (addForallContainsKeyThenBeforeAdding!565 (ListMap!4462 Nil!51774) lt!1804637 (_1!29709 (h!57884 lt!1804339)) (_2!29709 (h!57884 lt!1804339))))))

(assert (=> b!4641442 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196387)))

(declare-fun lt!1804631 () Unit!115381)

(assert (=> b!4641442 (= lt!1804631 lt!1804648)))

(assert (=> b!4641442 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196387)))

(declare-fun lt!1804635 () Unit!115381)

(declare-fun Unit!115448 () Unit!115381)

(assert (=> b!4641442 (= lt!1804635 Unit!115448)))

(declare-fun res!1949398 () Bool)

(assert (=> b!4641442 (= res!1949398 call!324027)))

(assert (=> b!4641442 (=> (not res!1949398) (not e!2895402))))

(assert (=> b!4641442 e!2895402))

(declare-fun lt!1804644 () Unit!115381)

(declare-fun Unit!115449 () Unit!115381)

(assert (=> b!4641442 (= lt!1804644 Unit!115449)))

(declare-fun b!4641443 () Bool)

(assert (=> b!4641443 (= e!2895404 (invariantList!1264 (toList!5137 lt!1804650)))))

(declare-fun bm!324024 () Bool)

(assert (=> bm!324024 (= call!324029 (forall!10947 (ite c!794224 (toList!5137 (ListMap!4462 Nil!51774)) lt!1804339) (ite c!794224 lambda!196384 lambda!196387)))))

(assert (=> b!4641444 (= e!2895403 (ListMap!4462 Nil!51774))))

(declare-fun lt!1804632 () Unit!115381)

(assert (=> b!4641444 (= lt!1804632 call!324028)))

(assert (=> b!4641444 call!324029))

(declare-fun lt!1804636 () Unit!115381)

(assert (=> b!4641444 (= lt!1804636 lt!1804632)))

(assert (=> b!4641444 call!324027))

(declare-fun lt!1804646 () Unit!115381)

(declare-fun Unit!115450 () Unit!115381)

(assert (=> b!4641444 (= lt!1804646 Unit!115450)))

(assert (= (and d!1463286 c!794224) b!4641444))

(assert (= (and d!1463286 (not c!794224)) b!4641442))

(assert (= (and b!4641442 res!1949398) b!4641440))

(assert (= (or b!4641444 b!4641442) bm!324022))

(assert (= (or b!4641444 b!4641442) bm!324023))

(assert (= (or b!4641444 b!4641442) bm!324024))

(assert (= (and d!1463286 res!1949397) b!4641441))

(assert (= (and b!4641441 res!1949396) b!4641443))

(declare-fun m!5501921 () Bool)

(assert (=> d!1463286 m!5501921))

(declare-fun m!5501923 () Bool)

(assert (=> d!1463286 m!5501923))

(declare-fun m!5501925 () Bool)

(assert (=> b!4641442 m!5501925))

(declare-fun m!5501929 () Bool)

(assert (=> b!4641442 m!5501929))

(declare-fun m!5501933 () Bool)

(assert (=> b!4641442 m!5501933))

(declare-fun m!5501937 () Bool)

(assert (=> b!4641442 m!5501937))

(assert (=> b!4641442 m!5501937))

(declare-fun m!5501939 () Bool)

(assert (=> b!4641442 m!5501939))

(declare-fun m!5501943 () Bool)

(assert (=> b!4641442 m!5501943))

(declare-fun m!5501945 () Bool)

(assert (=> b!4641442 m!5501945))

(declare-fun m!5501949 () Bool)

(assert (=> b!4641442 m!5501949))

(assert (=> b!4641442 m!5501939))

(declare-fun m!5501953 () Bool)

(assert (=> b!4641442 m!5501953))

(declare-fun m!5501957 () Bool)

(assert (=> b!4641442 m!5501957))

(assert (=> b!4641442 m!5501929))

(assert (=> b!4641440 m!5501939))

(declare-fun m!5501961 () Bool)

(assert (=> b!4641441 m!5501961))

(declare-fun m!5501963 () Bool)

(assert (=> b!4641443 m!5501963))

(assert (=> bm!324022 m!5501863))

(declare-fun m!5501965 () Bool)

(assert (=> bm!324024 m!5501965))

(assert (=> bm!324023 m!5501965))

(assert (=> b!4641310 d!1463286))

(declare-fun d!1463290 () Bool)

(assert (=> d!1463290 (eq!887 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804337 lt!1804339) (ListMap!4462 Nil!51774)) (+!1946 (addToMapMapFromBucket!1055 lt!1804339 (ListMap!4462 Nil!51774)) lt!1804337))))

(declare-fun lt!1804660 () Unit!115381)

(declare-fun choose!31781 (tuple2!52830 List!51898 ListMap!4461) Unit!115381)

(assert (=> d!1463290 (= lt!1804660 (choose!31781 lt!1804337 lt!1804339 (ListMap!4462 Nil!51774)))))

(assert (=> d!1463290 (noDuplicateKeys!1596 lt!1804339)))

(assert (=> d!1463290 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!138 lt!1804337 lt!1804339 (ListMap!4462 Nil!51774)) lt!1804660)))

(declare-fun bs!1033731 () Bool)

(assert (= bs!1033731 d!1463290))

(declare-fun m!5501977 () Bool)

(assert (=> bs!1033731 m!5501977))

(assert (=> bs!1033731 m!5501587))

(assert (=> bs!1033731 m!5501595))

(assert (=> bs!1033731 m!5501587))

(assert (=> bs!1033731 m!5501923))

(assert (=> bs!1033731 m!5501581))

(assert (=> bs!1033731 m!5501595))

(assert (=> bs!1033731 m!5501597))

(assert (=> bs!1033731 m!5501581))

(assert (=> b!4641310 d!1463290))

(declare-fun d!1463300 () Bool)

(declare-fun e!2895411 () Bool)

(assert (=> d!1463300 e!2895411))

(declare-fun res!1949399 () Bool)

(assert (=> d!1463300 (=> (not res!1949399) (not e!2895411))))

(declare-fun lt!1804661 () ListMap!4461)

(assert (=> d!1463300 (= res!1949399 (contains!14901 lt!1804661 (_1!29709 (h!57884 oldBucket!40))))))

(declare-fun lt!1804664 () List!51898)

(assert (=> d!1463300 (= lt!1804661 (ListMap!4462 lt!1804664))))

(declare-fun lt!1804662 () Unit!115381)

(declare-fun lt!1804663 () Unit!115381)

(assert (=> d!1463300 (= lt!1804662 lt!1804663)))

(assert (=> d!1463300 (= (getValueByKey!1560 lt!1804664 (_1!29709 (h!57884 oldBucket!40))) (Some!11757 (_2!29709 (h!57884 oldBucket!40))))))

(assert (=> d!1463300 (= lt!1804663 (lemmaContainsTupThenGetReturnValue!900 lt!1804664 (_1!29709 (h!57884 oldBucket!40)) (_2!29709 (h!57884 oldBucket!40))))))

(assert (=> d!1463300 (= lt!1804664 (insertNoDuplicatedKeys!408 (toList!5137 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775))) (_1!29709 (h!57884 oldBucket!40)) (_2!29709 (h!57884 oldBucket!40))))))

(assert (=> d!1463300 (= (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775)) (h!57884 oldBucket!40)) lt!1804661)))

(declare-fun b!4641457 () Bool)

(declare-fun res!1949400 () Bool)

(assert (=> b!4641457 (=> (not res!1949400) (not e!2895411))))

(assert (=> b!4641457 (= res!1949400 (= (getValueByKey!1560 (toList!5137 lt!1804661) (_1!29709 (h!57884 oldBucket!40))) (Some!11757 (_2!29709 (h!57884 oldBucket!40)))))))

(declare-fun b!4641458 () Bool)

(assert (=> b!4641458 (= e!2895411 (contains!14906 (toList!5137 lt!1804661) (h!57884 oldBucket!40)))))

(assert (= (and d!1463300 res!1949399) b!4641457))

(assert (= (and b!4641457 res!1949400) b!4641458))

(declare-fun m!5501979 () Bool)

(assert (=> d!1463300 m!5501979))

(declare-fun m!5501981 () Bool)

(assert (=> d!1463300 m!5501981))

(declare-fun m!5501983 () Bool)

(assert (=> d!1463300 m!5501983))

(declare-fun m!5501985 () Bool)

(assert (=> d!1463300 m!5501985))

(declare-fun m!5501987 () Bool)

(assert (=> b!4641457 m!5501987))

(declare-fun m!5501989 () Bool)

(assert (=> b!4641458 m!5501989))

(assert (=> b!4641310 d!1463300))

(declare-fun d!1463302 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8941 (List!51898) (InoxSet tuple2!52830))

(assert (=> d!1463302 (= (eq!887 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804340 lt!1804343) (ListMap!4462 Nil!51774)) (+!1946 (addToMapMapFromBucket!1055 lt!1804343 (ListMap!4462 Nil!51774)) lt!1804340)) (= (content!8941 (toList!5137 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804340 lt!1804343) (ListMap!4462 Nil!51774)))) (content!8941 (toList!5137 (+!1946 (addToMapMapFromBucket!1055 lt!1804343 (ListMap!4462 Nil!51774)) lt!1804340)))))))

(declare-fun bs!1033732 () Bool)

(assert (= bs!1033732 d!1463302))

(declare-fun m!5501997 () Bool)

(assert (=> bs!1033732 m!5501997))

(declare-fun m!5501999 () Bool)

(assert (=> bs!1033732 m!5501999))

(assert (=> b!4641310 d!1463302))

(declare-fun bs!1033735 () Bool)

(declare-fun d!1463306 () Bool)

(assert (= bs!1033735 (and d!1463306 b!4641318)))

(declare-fun lambda!196395 () Int)

(assert (=> bs!1033735 (= lambda!196395 lambda!196294)))

(declare-fun lt!1804676 () ListMap!4461)

(assert (=> d!1463306 (invariantList!1264 (toList!5137 lt!1804676))))

(declare-fun e!2895423 () ListMap!4461)

(assert (=> d!1463306 (= lt!1804676 e!2895423)))

(declare-fun c!794233 () Bool)

(assert (=> d!1463306 (= c!794233 ((_ is Cons!51775) lt!1804335))))

(declare-fun forall!10948 (List!51899 Int) Bool)

(assert (=> d!1463306 (forall!10948 lt!1804335 lambda!196395)))

(assert (=> d!1463306 (= (extractMap!1652 lt!1804335) lt!1804676)))

(declare-fun b!4641473 () Bool)

(assert (=> b!4641473 (= e!2895423 (addToMapMapFromBucket!1055 (_2!29710 (h!57885 lt!1804335)) (extractMap!1652 (t!358983 lt!1804335))))))

(declare-fun b!4641474 () Bool)

(assert (=> b!4641474 (= e!2895423 (ListMap!4462 Nil!51774))))

(assert (= (and d!1463306 c!794233) b!4641473))

(assert (= (and d!1463306 (not c!794233)) b!4641474))

(declare-fun m!5502009 () Bool)

(assert (=> d!1463306 m!5502009))

(declare-fun m!5502011 () Bool)

(assert (=> d!1463306 m!5502011))

(declare-fun m!5502013 () Bool)

(assert (=> b!4641473 m!5502013))

(assert (=> b!4641473 m!5502013))

(declare-fun m!5502015 () Bool)

(assert (=> b!4641473 m!5502015))

(assert (=> b!4641310 d!1463306))

(declare-fun bs!1033736 () Bool)

(declare-fun d!1463314 () Bool)

(assert (= bs!1033736 (and d!1463314 b!4641318)))

(declare-fun lambda!196396 () Int)

(assert (=> bs!1033736 (= lambda!196396 lambda!196294)))

(declare-fun bs!1033737 () Bool)

(assert (= bs!1033737 (and d!1463314 d!1463306)))

(assert (=> bs!1033737 (= lambda!196396 lambda!196395)))

(declare-fun lt!1804677 () ListMap!4461)

(assert (=> d!1463314 (invariantList!1264 (toList!5137 lt!1804677))))

(declare-fun e!2895424 () ListMap!4461)

(assert (=> d!1463314 (= lt!1804677 e!2895424)))

(declare-fun c!794234 () Bool)

(assert (=> d!1463314 (= c!794234 ((_ is Cons!51775) (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775)))))

(assert (=> d!1463314 (forall!10948 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775) lambda!196396)))

(assert (=> d!1463314 (= (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775)) lt!1804677)))

(declare-fun b!4641475 () Bool)

(assert (=> b!4641475 (= e!2895424 (addToMapMapFromBucket!1055 (_2!29710 (h!57885 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775))) (extractMap!1652 (t!358983 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775)))))))

(declare-fun b!4641476 () Bool)

(assert (=> b!4641476 (= e!2895424 (ListMap!4462 Nil!51774))))

(assert (= (and d!1463314 c!794234) b!4641475))

(assert (= (and d!1463314 (not c!794234)) b!4641476))

(declare-fun m!5502017 () Bool)

(assert (=> d!1463314 m!5502017))

(declare-fun m!5502019 () Bool)

(assert (=> d!1463314 m!5502019))

(declare-fun m!5502021 () Bool)

(assert (=> b!4641475 m!5502021))

(assert (=> b!4641475 m!5502021))

(declare-fun m!5502023 () Bool)

(assert (=> b!4641475 m!5502023))

(assert (=> b!4641310 d!1463314))

(declare-fun d!1463316 () Bool)

(assert (=> d!1463316 (= (eq!887 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804337 lt!1804339) (ListMap!4462 Nil!51774)) (+!1946 (addToMapMapFromBucket!1055 lt!1804339 (ListMap!4462 Nil!51774)) lt!1804337)) (= (content!8941 (toList!5137 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804337 lt!1804339) (ListMap!4462 Nil!51774)))) (content!8941 (toList!5137 (+!1946 (addToMapMapFromBucket!1055 lt!1804339 (ListMap!4462 Nil!51774)) lt!1804337)))))))

(declare-fun bs!1033738 () Bool)

(assert (= bs!1033738 d!1463316))

(declare-fun m!5502025 () Bool)

(assert (=> bs!1033738 m!5502025))

(declare-fun m!5502027 () Bool)

(assert (=> bs!1033738 m!5502027))

(assert (=> b!4641310 d!1463316))

(declare-fun d!1463318 () Bool)

(assert (=> d!1463318 (eq!887 (addToMapMapFromBucket!1055 (Cons!51774 lt!1804340 lt!1804343) (ListMap!4462 Nil!51774)) (+!1946 (addToMapMapFromBucket!1055 lt!1804343 (ListMap!4462 Nil!51774)) lt!1804340))))

(declare-fun lt!1804678 () Unit!115381)

(assert (=> d!1463318 (= lt!1804678 (choose!31781 lt!1804340 lt!1804343 (ListMap!4462 Nil!51774)))))

(assert (=> d!1463318 (noDuplicateKeys!1596 lt!1804343)))

(assert (=> d!1463318 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!138 lt!1804340 lt!1804343 (ListMap!4462 Nil!51774)) lt!1804678)))

(declare-fun bs!1033739 () Bool)

(assert (= bs!1033739 d!1463318))

(declare-fun m!5502029 () Bool)

(assert (=> bs!1033739 m!5502029))

(assert (=> bs!1033739 m!5501585))

(assert (=> bs!1033739 m!5501591))

(assert (=> bs!1033739 m!5501585))

(assert (=> bs!1033739 m!5501877))

(assert (=> bs!1033739 m!5501569))

(assert (=> bs!1033739 m!5501591))

(assert (=> bs!1033739 m!5501593))

(assert (=> bs!1033739 m!5501569))

(assert (=> b!4641310 d!1463318))

(declare-fun b!4641495 () Bool)

(declare-fun e!2895439 () Unit!115381)

(declare-fun Unit!115451 () Unit!115381)

(assert (=> b!4641495 (= e!2895439 Unit!115451)))

(declare-fun b!4641496 () Bool)

(declare-fun e!2895438 () Bool)

(declare-datatypes ((List!51901 0))(
  ( (Nil!51777) (Cons!51777 (h!57889 K!13140) (t!358987 List!51901)) )
))
(declare-fun contains!14907 (List!51901 K!13140) Bool)

(declare-fun keys!18304 (ListMap!4461) List!51901)

(assert (=> b!4641496 (= e!2895438 (contains!14907 (keys!18304 (extractMap!1652 lt!1804335)) key!4968))))

(declare-fun b!4641497 () Bool)

(assert (=> b!4641497 false))

(declare-fun lt!1804700 () Unit!115381)

(declare-fun lt!1804702 () Unit!115381)

(assert (=> b!4641497 (= lt!1804700 lt!1804702)))

(declare-fun containsKey!2636 (List!51898 K!13140) Bool)

(assert (=> b!4641497 (containsKey!2636 (toList!5137 (extractMap!1652 lt!1804335)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!714 (List!51898 K!13140) Unit!115381)

(assert (=> b!4641497 (= lt!1804702 (lemmaInGetKeysListThenContainsKey!714 (toList!5137 (extractMap!1652 lt!1804335)) key!4968))))

(declare-fun Unit!115452 () Unit!115381)

(assert (=> b!4641497 (= e!2895439 Unit!115452)))

(declare-fun b!4641498 () Bool)

(declare-fun e!2895437 () Bool)

(assert (=> b!4641498 (= e!2895437 (not (contains!14907 (keys!18304 (extractMap!1652 lt!1804335)) key!4968)))))

(declare-fun b!4641499 () Bool)

(declare-fun e!2895440 () List!51901)

(declare-fun getKeysList!715 (List!51898) List!51901)

(assert (=> b!4641499 (= e!2895440 (getKeysList!715 (toList!5137 (extractMap!1652 lt!1804335))))))

(declare-fun b!4641500 () Bool)

(declare-fun e!2895441 () Unit!115381)

(assert (=> b!4641500 (= e!2895441 e!2895439)))

(declare-fun c!794242 () Bool)

(declare-fun call!324032 () Bool)

(assert (=> b!4641500 (= c!794242 call!324032)))

(declare-fun b!4641501 () Bool)

(declare-fun e!2895442 () Bool)

(assert (=> b!4641501 (= e!2895442 e!2895438)))

(declare-fun res!1949418 () Bool)

(assert (=> b!4641501 (=> (not res!1949418) (not e!2895438))))

(declare-fun isDefined!9023 (Option!11758) Bool)

(assert (=> b!4641501 (= res!1949418 (isDefined!9023 (getValueByKey!1560 (toList!5137 (extractMap!1652 lt!1804335)) key!4968)))))

(declare-fun b!4641502 () Bool)

(assert (=> b!4641502 (= e!2895440 (keys!18304 (extractMap!1652 lt!1804335)))))

(declare-fun b!4641503 () Bool)

(declare-fun lt!1804696 () Unit!115381)

(assert (=> b!4641503 (= e!2895441 lt!1804696)))

(declare-fun lt!1804701 () Unit!115381)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1462 (List!51898 K!13140) Unit!115381)

(assert (=> b!4641503 (= lt!1804701 (lemmaContainsKeyImpliesGetValueByKeyDefined!1462 (toList!5137 (extractMap!1652 lt!1804335)) key!4968))))

(assert (=> b!4641503 (isDefined!9023 (getValueByKey!1560 (toList!5137 (extractMap!1652 lt!1804335)) key!4968))))

(declare-fun lt!1804697 () Unit!115381)

(assert (=> b!4641503 (= lt!1804697 lt!1804701)))

(declare-fun lemmaInListThenGetKeysListContains!710 (List!51898 K!13140) Unit!115381)

(assert (=> b!4641503 (= lt!1804696 (lemmaInListThenGetKeysListContains!710 (toList!5137 (extractMap!1652 lt!1804335)) key!4968))))

(assert (=> b!4641503 call!324032))

(declare-fun bm!324027 () Bool)

(assert (=> bm!324027 (= call!324032 (contains!14907 e!2895440 key!4968))))

(declare-fun c!794243 () Bool)

(declare-fun c!794241 () Bool)

(assert (=> bm!324027 (= c!794243 c!794241)))

(declare-fun d!1463320 () Bool)

(assert (=> d!1463320 e!2895442))

(declare-fun res!1949417 () Bool)

(assert (=> d!1463320 (=> res!1949417 e!2895442)))

(assert (=> d!1463320 (= res!1949417 e!2895437)))

(declare-fun res!1949416 () Bool)

(assert (=> d!1463320 (=> (not res!1949416) (not e!2895437))))

(declare-fun lt!1804699 () Bool)

(assert (=> d!1463320 (= res!1949416 (not lt!1804699))))

(declare-fun lt!1804698 () Bool)

(assert (=> d!1463320 (= lt!1804699 lt!1804698)))

(declare-fun lt!1804695 () Unit!115381)

(assert (=> d!1463320 (= lt!1804695 e!2895441)))

(assert (=> d!1463320 (= c!794241 lt!1804698)))

(assert (=> d!1463320 (= lt!1804698 (containsKey!2636 (toList!5137 (extractMap!1652 lt!1804335)) key!4968))))

(assert (=> d!1463320 (= (contains!14901 (extractMap!1652 lt!1804335) key!4968) lt!1804699)))

(assert (= (and d!1463320 c!794241) b!4641503))

(assert (= (and d!1463320 (not c!794241)) b!4641500))

(assert (= (and b!4641500 c!794242) b!4641497))

(assert (= (and b!4641500 (not c!794242)) b!4641495))

(assert (= (or b!4641503 b!4641500) bm!324027))

(assert (= (and bm!324027 c!794243) b!4641499))

(assert (= (and bm!324027 (not c!794243)) b!4641502))

(assert (= (and d!1463320 res!1949416) b!4641498))

(assert (= (and d!1463320 (not res!1949417)) b!4641501))

(assert (= (and b!4641501 res!1949418) b!4641496))

(declare-fun m!5502031 () Bool)

(assert (=> b!4641499 m!5502031))

(declare-fun m!5502033 () Bool)

(assert (=> b!4641497 m!5502033))

(declare-fun m!5502035 () Bool)

(assert (=> b!4641497 m!5502035))

(declare-fun m!5502037 () Bool)

(assert (=> b!4641501 m!5502037))

(assert (=> b!4641501 m!5502037))

(declare-fun m!5502039 () Bool)

(assert (=> b!4641501 m!5502039))

(assert (=> d!1463320 m!5502033))

(assert (=> b!4641502 m!5501571))

(declare-fun m!5502041 () Bool)

(assert (=> b!4641502 m!5502041))

(assert (=> b!4641498 m!5501571))

(assert (=> b!4641498 m!5502041))

(assert (=> b!4641498 m!5502041))

(declare-fun m!5502043 () Bool)

(assert (=> b!4641498 m!5502043))

(declare-fun m!5502045 () Bool)

(assert (=> bm!324027 m!5502045))

(declare-fun m!5502047 () Bool)

(assert (=> b!4641503 m!5502047))

(assert (=> b!4641503 m!5502037))

(assert (=> b!4641503 m!5502037))

(assert (=> b!4641503 m!5502039))

(declare-fun m!5502049 () Bool)

(assert (=> b!4641503 m!5502049))

(assert (=> b!4641496 m!5501571))

(assert (=> b!4641496 m!5502041))

(assert (=> b!4641496 m!5502041))

(assert (=> b!4641496 m!5502043))

(assert (=> b!4641310 d!1463320))

(declare-fun d!1463322 () Bool)

(assert (=> d!1463322 (= (head!9706 newBucket!224) (h!57884 newBucket!224))))

(assert (=> b!4641310 d!1463322))

(declare-fun bs!1033740 () Bool)

(declare-fun b!4641508 () Bool)

(assert (= bs!1033740 (and b!4641508 b!4641432)))

(declare-fun lambda!196397 () Int)

(assert (=> bs!1033740 (= lambda!196397 lambda!196377)))

(declare-fun bs!1033741 () Bool)

(assert (= bs!1033741 (and b!4641508 b!4641442)))

(assert (=> bs!1033741 (= lambda!196397 lambda!196386)))

(declare-fun bs!1033742 () Bool)

(assert (= bs!1033742 (and b!4641508 b!4641444)))

(assert (=> bs!1033742 (= lambda!196397 lambda!196384)))

(declare-fun bs!1033743 () Bool)

(assert (= bs!1033743 (and b!4641508 d!1463252)))

(assert (=> bs!1033743 (= (= (ListMap!4462 Nil!51774) lt!1804584) (= lambda!196397 lambda!196374))))

(declare-fun bs!1033744 () Bool)

(assert (= bs!1033744 (and b!4641508 b!4641425)))

(assert (=> bs!1033744 (= lambda!196397 lambda!196372)))

(assert (=> bs!1033740 (= (= (ListMap!4462 Nil!51774) lt!1804592) (= lambda!196397 lambda!196379))))

(assert (=> bs!1033741 (= (= (ListMap!4462 Nil!51774) lt!1804637) (= lambda!196397 lambda!196387))))

(declare-fun bs!1033745 () Bool)

(assert (= bs!1033745 (and b!4641508 d!1463286)))

(assert (=> bs!1033745 (= (= (ListMap!4462 Nil!51774) lt!1804650) (= lambda!196397 lambda!196389))))

(declare-fun bs!1033746 () Bool)

(assert (= bs!1033746 (and b!4641508 b!4641427)))

(assert (=> bs!1033746 (= lambda!196397 lambda!196371)))

(assert (=> bs!1033744 (= (= (ListMap!4462 Nil!51774) lt!1804571) (= lambda!196397 lambda!196373))))

(declare-fun bs!1033747 () Bool)

(assert (= bs!1033747 (and b!4641508 b!4641434)))

(assert (=> bs!1033747 (= lambda!196397 lambda!196375)))

(declare-fun bs!1033748 () Bool)

(assert (= bs!1033748 (and b!4641508 d!1463282)))

(assert (=> bs!1033748 (= (= (ListMap!4462 Nil!51774) lt!1804605) (= lambda!196397 lambda!196381))))

(assert (=> b!4641508 true))

(declare-fun bs!1033749 () Bool)

(declare-fun b!4641506 () Bool)

(assert (= bs!1033749 (and b!4641506 b!4641432)))

(declare-fun lambda!196398 () Int)

(assert (=> bs!1033749 (= lambda!196398 lambda!196377)))

(declare-fun bs!1033750 () Bool)

(assert (= bs!1033750 (and b!4641506 b!4641442)))

(assert (=> bs!1033750 (= lambda!196398 lambda!196386)))

(declare-fun bs!1033751 () Bool)

(assert (= bs!1033751 (and b!4641506 b!4641444)))

(assert (=> bs!1033751 (= lambda!196398 lambda!196384)))

(declare-fun bs!1033752 () Bool)

(assert (= bs!1033752 (and b!4641506 d!1463252)))

(assert (=> bs!1033752 (= (= (ListMap!4462 Nil!51774) lt!1804584) (= lambda!196398 lambda!196374))))

(declare-fun bs!1033753 () Bool)

(assert (= bs!1033753 (and b!4641506 b!4641425)))

(assert (=> bs!1033753 (= lambda!196398 lambda!196372)))

(assert (=> bs!1033749 (= (= (ListMap!4462 Nil!51774) lt!1804592) (= lambda!196398 lambda!196379))))

(assert (=> bs!1033750 (= (= (ListMap!4462 Nil!51774) lt!1804637) (= lambda!196398 lambda!196387))))

(declare-fun bs!1033754 () Bool)

(assert (= bs!1033754 (and b!4641506 d!1463286)))

(assert (=> bs!1033754 (= (= (ListMap!4462 Nil!51774) lt!1804650) (= lambda!196398 lambda!196389))))

(declare-fun bs!1033755 () Bool)

(assert (= bs!1033755 (and b!4641506 b!4641427)))

(assert (=> bs!1033755 (= lambda!196398 lambda!196371)))

(declare-fun bs!1033756 () Bool)

(assert (= bs!1033756 (and b!4641506 b!4641508)))

(assert (=> bs!1033756 (= lambda!196398 lambda!196397)))

(assert (=> bs!1033753 (= (= (ListMap!4462 Nil!51774) lt!1804571) (= lambda!196398 lambda!196373))))

(declare-fun bs!1033757 () Bool)

(assert (= bs!1033757 (and b!4641506 b!4641434)))

(assert (=> bs!1033757 (= lambda!196398 lambda!196375)))

(declare-fun bs!1033758 () Bool)

(assert (= bs!1033758 (and b!4641506 d!1463282)))

(assert (=> bs!1033758 (= (= (ListMap!4462 Nil!51774) lt!1804605) (= lambda!196398 lambda!196381))))

(assert (=> b!4641506 true))

(declare-fun lt!1804709 () ListMap!4461)

(declare-fun lambda!196399 () Int)

(assert (=> bs!1033749 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196377))))

(assert (=> bs!1033750 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196386))))

(assert (=> bs!1033751 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196384))))

(assert (=> b!4641506 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196398))))

(assert (=> bs!1033752 (= (= lt!1804709 lt!1804584) (= lambda!196399 lambda!196374))))

(assert (=> bs!1033753 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196372))))

(assert (=> bs!1033749 (= (= lt!1804709 lt!1804592) (= lambda!196399 lambda!196379))))

(assert (=> bs!1033750 (= (= lt!1804709 lt!1804637) (= lambda!196399 lambda!196387))))

(assert (=> bs!1033754 (= (= lt!1804709 lt!1804650) (= lambda!196399 lambda!196389))))

(assert (=> bs!1033755 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196371))))

(assert (=> bs!1033756 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196397))))

(assert (=> bs!1033753 (= (= lt!1804709 lt!1804571) (= lambda!196399 lambda!196373))))

(assert (=> bs!1033757 (= (= lt!1804709 (ListMap!4462 Nil!51774)) (= lambda!196399 lambda!196375))))

(assert (=> bs!1033758 (= (= lt!1804709 lt!1804605) (= lambda!196399 lambda!196381))))

(assert (=> b!4641506 true))

(declare-fun bs!1033759 () Bool)

(declare-fun d!1463324 () Bool)

(assert (= bs!1033759 (and d!1463324 b!4641432)))

(declare-fun lt!1804722 () ListMap!4461)

(declare-fun lambda!196400 () Int)

(assert (=> bs!1033759 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196377))))

(declare-fun bs!1033760 () Bool)

(assert (= bs!1033760 (and d!1463324 b!4641442)))

(assert (=> bs!1033760 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196386))))

(declare-fun bs!1033761 () Bool)

(assert (= bs!1033761 (and d!1463324 b!4641444)))

(assert (=> bs!1033761 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196384))))

(declare-fun bs!1033762 () Bool)

(assert (= bs!1033762 (and d!1463324 b!4641506)))

(assert (=> bs!1033762 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196398))))

(declare-fun bs!1033763 () Bool)

(assert (= bs!1033763 (and d!1463324 b!4641425)))

(assert (=> bs!1033763 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196372))))

(assert (=> bs!1033759 (= (= lt!1804722 lt!1804592) (= lambda!196400 lambda!196379))))

(assert (=> bs!1033760 (= (= lt!1804722 lt!1804637) (= lambda!196400 lambda!196387))))

(declare-fun bs!1033764 () Bool)

(assert (= bs!1033764 (and d!1463324 d!1463286)))

(assert (=> bs!1033764 (= (= lt!1804722 lt!1804650) (= lambda!196400 lambda!196389))))

(declare-fun bs!1033765 () Bool)

(assert (= bs!1033765 (and d!1463324 b!4641427)))

(assert (=> bs!1033765 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196371))))

(declare-fun bs!1033766 () Bool)

(assert (= bs!1033766 (and d!1463324 b!4641508)))

(assert (=> bs!1033766 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196397))))

(assert (=> bs!1033763 (= (= lt!1804722 lt!1804571) (= lambda!196400 lambda!196373))))

(declare-fun bs!1033767 () Bool)

(assert (= bs!1033767 (and d!1463324 d!1463252)))

(assert (=> bs!1033767 (= (= lt!1804722 lt!1804584) (= lambda!196400 lambda!196374))))

(assert (=> bs!1033762 (= (= lt!1804722 lt!1804709) (= lambda!196400 lambda!196399))))

(declare-fun bs!1033768 () Bool)

(assert (= bs!1033768 (and d!1463324 b!4641434)))

(assert (=> bs!1033768 (= (= lt!1804722 (ListMap!4462 Nil!51774)) (= lambda!196400 lambda!196375))))

(declare-fun bs!1033769 () Bool)

(assert (= bs!1033769 (and d!1463324 d!1463282)))

(assert (=> bs!1033769 (= (= lt!1804722 lt!1804605) (= lambda!196400 lambda!196381))))

(assert (=> d!1463324 true))

(declare-fun bm!324028 () Bool)

(declare-fun call!324034 () Unit!115381)

(assert (=> bm!324028 (= call!324034 (lemmaContainsAllItsOwnKeys!566 (ListMap!4462 Nil!51774)))))

(declare-fun b!4641504 () Bool)

(declare-fun e!2895443 () Bool)

(assert (=> b!4641504 (= e!2895443 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196399))))

(declare-fun b!4641505 () Bool)

(declare-fun res!1949419 () Bool)

(declare-fun e!2895445 () Bool)

(assert (=> b!4641505 (=> (not res!1949419) (not e!2895445))))

(assert (=> b!4641505 (= res!1949419 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196400))))

(assert (=> d!1463324 e!2895445))

(declare-fun res!1949420 () Bool)

(assert (=> d!1463324 (=> (not res!1949420) (not e!2895445))))

(assert (=> d!1463324 (= res!1949420 (forall!10947 (Cons!51774 lt!1804340 lt!1804343) lambda!196400))))

(declare-fun e!2895444 () ListMap!4461)

(assert (=> d!1463324 (= lt!1804722 e!2895444)))

(declare-fun c!794244 () Bool)

(assert (=> d!1463324 (= c!794244 ((_ is Nil!51774) (Cons!51774 lt!1804340 lt!1804343)))))

(assert (=> d!1463324 (noDuplicateKeys!1596 (Cons!51774 lt!1804340 lt!1804343))))

(assert (=> d!1463324 (= (addToMapMapFromBucket!1055 (Cons!51774 lt!1804340 lt!1804343) (ListMap!4462 Nil!51774)) lt!1804722)))

(declare-fun bm!324029 () Bool)

(declare-fun call!324033 () Bool)

(assert (=> bm!324029 (= call!324033 (forall!10947 (ite c!794244 (toList!5137 (ListMap!4462 Nil!51774)) (Cons!51774 lt!1804340 lt!1804343)) (ite c!794244 lambda!196397 lambda!196399)))))

(assert (=> b!4641506 (= e!2895444 lt!1804709)))

(declare-fun lt!1804705 () ListMap!4461)

(assert (=> b!4641506 (= lt!1804705 (+!1946 (ListMap!4462 Nil!51774) (h!57884 (Cons!51774 lt!1804340 lt!1804343))))))

(assert (=> b!4641506 (= lt!1804709 (addToMapMapFromBucket!1055 (t!358982 (Cons!51774 lt!1804340 lt!1804343)) (+!1946 (ListMap!4462 Nil!51774) (h!57884 (Cons!51774 lt!1804340 lt!1804343)))))))

(declare-fun lt!1804715 () Unit!115381)

(assert (=> b!4641506 (= lt!1804715 call!324034)))

(assert (=> b!4641506 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196398)))

(declare-fun lt!1804706 () Unit!115381)

(assert (=> b!4641506 (= lt!1804706 lt!1804715)))

(assert (=> b!4641506 (forall!10947 (toList!5137 lt!1804705) lambda!196399)))

(declare-fun lt!1804711 () Unit!115381)

(declare-fun Unit!115464 () Unit!115381)

(assert (=> b!4641506 (= lt!1804711 Unit!115464)))

(assert (=> b!4641506 (forall!10947 (t!358982 (Cons!51774 lt!1804340 lt!1804343)) lambda!196399)))

(declare-fun lt!1804719 () Unit!115381)

(declare-fun Unit!115465 () Unit!115381)

(assert (=> b!4641506 (= lt!1804719 Unit!115465)))

(declare-fun lt!1804723 () Unit!115381)

(declare-fun Unit!115466 () Unit!115381)

(assert (=> b!4641506 (= lt!1804723 Unit!115466)))

(declare-fun lt!1804710 () Unit!115381)

(assert (=> b!4641506 (= lt!1804710 (forallContained!3170 (toList!5137 lt!1804705) lambda!196399 (h!57884 (Cons!51774 lt!1804340 lt!1804343))))))

(assert (=> b!4641506 (contains!14901 lt!1804705 (_1!29709 (h!57884 (Cons!51774 lt!1804340 lt!1804343))))))

(declare-fun lt!1804712 () Unit!115381)

(declare-fun Unit!115467 () Unit!115381)

(assert (=> b!4641506 (= lt!1804712 Unit!115467)))

(assert (=> b!4641506 (contains!14901 lt!1804709 (_1!29709 (h!57884 (Cons!51774 lt!1804340 lt!1804343))))))

(declare-fun lt!1804721 () Unit!115381)

(declare-fun Unit!115468 () Unit!115381)

(assert (=> b!4641506 (= lt!1804721 Unit!115468)))

(declare-fun call!324035 () Bool)

(assert (=> b!4641506 call!324035))

(declare-fun lt!1804713 () Unit!115381)

(declare-fun Unit!115469 () Unit!115381)

(assert (=> b!4641506 (= lt!1804713 Unit!115469)))

(assert (=> b!4641506 (forall!10947 (toList!5137 lt!1804705) lambda!196399)))

(declare-fun lt!1804717 () Unit!115381)

(declare-fun Unit!115470 () Unit!115381)

(assert (=> b!4641506 (= lt!1804717 Unit!115470)))

(declare-fun lt!1804714 () Unit!115381)

(declare-fun Unit!115471 () Unit!115381)

(assert (=> b!4641506 (= lt!1804714 Unit!115471)))

(declare-fun lt!1804720 () Unit!115381)

(assert (=> b!4641506 (= lt!1804720 (addForallContainsKeyThenBeforeAdding!565 (ListMap!4462 Nil!51774) lt!1804709 (_1!29709 (h!57884 (Cons!51774 lt!1804340 lt!1804343))) (_2!29709 (h!57884 (Cons!51774 lt!1804340 lt!1804343)))))))

(assert (=> b!4641506 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196399)))

(declare-fun lt!1804703 () Unit!115381)

(assert (=> b!4641506 (= lt!1804703 lt!1804720)))

(assert (=> b!4641506 (forall!10947 (toList!5137 (ListMap!4462 Nil!51774)) lambda!196399)))

(declare-fun lt!1804707 () Unit!115381)

(declare-fun Unit!115472 () Unit!115381)

(assert (=> b!4641506 (= lt!1804707 Unit!115472)))

(declare-fun res!1949421 () Bool)

(assert (=> b!4641506 (= res!1949421 call!324033)))

(assert (=> b!4641506 (=> (not res!1949421) (not e!2895443))))

(assert (=> b!4641506 e!2895443))

(declare-fun lt!1804716 () Unit!115381)

(declare-fun Unit!115473 () Unit!115381)

(assert (=> b!4641506 (= lt!1804716 Unit!115473)))

(declare-fun b!4641507 () Bool)

(assert (=> b!4641507 (= e!2895445 (invariantList!1264 (toList!5137 lt!1804722)))))

(declare-fun bm!324030 () Bool)

(assert (=> bm!324030 (= call!324035 (forall!10947 (ite c!794244 (toList!5137 (ListMap!4462 Nil!51774)) (Cons!51774 lt!1804340 lt!1804343)) (ite c!794244 lambda!196397 lambda!196399)))))

(assert (=> b!4641508 (= e!2895444 (ListMap!4462 Nil!51774))))

(declare-fun lt!1804704 () Unit!115381)

(assert (=> b!4641508 (= lt!1804704 call!324034)))

(assert (=> b!4641508 call!324035))

(declare-fun lt!1804708 () Unit!115381)

(assert (=> b!4641508 (= lt!1804708 lt!1804704)))

(assert (=> b!4641508 call!324033))

(declare-fun lt!1804718 () Unit!115381)

(declare-fun Unit!115474 () Unit!115381)

(assert (=> b!4641508 (= lt!1804718 Unit!115474)))

(assert (= (and d!1463324 c!794244) b!4641508))

(assert (= (and d!1463324 (not c!794244)) b!4641506))

(assert (= (and b!4641506 res!1949421) b!4641504))

(assert (= (or b!4641508 b!4641506) bm!324028))

(assert (= (or b!4641508 b!4641506) bm!324029))

(assert (= (or b!4641508 b!4641506) bm!324030))

(assert (= (and d!1463324 res!1949420) b!4641505))

(assert (= (and b!4641505 res!1949419) b!4641507))

(declare-fun m!5502051 () Bool)

(assert (=> d!1463324 m!5502051))

(declare-fun m!5502053 () Bool)

(assert (=> d!1463324 m!5502053))

(declare-fun m!5502055 () Bool)

(assert (=> b!4641506 m!5502055))

(declare-fun m!5502057 () Bool)

(assert (=> b!4641506 m!5502057))

(declare-fun m!5502059 () Bool)

(assert (=> b!4641506 m!5502059))

(declare-fun m!5502061 () Bool)

(assert (=> b!4641506 m!5502061))

(assert (=> b!4641506 m!5502061))

(declare-fun m!5502063 () Bool)

(assert (=> b!4641506 m!5502063))

(declare-fun m!5502065 () Bool)

(assert (=> b!4641506 m!5502065))

(declare-fun m!5502067 () Bool)

(assert (=> b!4641506 m!5502067))

(declare-fun m!5502069 () Bool)

(assert (=> b!4641506 m!5502069))

(assert (=> b!4641506 m!5502063))

(declare-fun m!5502071 () Bool)

(assert (=> b!4641506 m!5502071))

(declare-fun m!5502073 () Bool)

(assert (=> b!4641506 m!5502073))

(assert (=> b!4641506 m!5502057))

(assert (=> b!4641504 m!5502063))

(declare-fun m!5502075 () Bool)

(assert (=> b!4641505 m!5502075))

(declare-fun m!5502077 () Bool)

(assert (=> b!4641507 m!5502077))

(assert (=> bm!324028 m!5501863))

(declare-fun m!5502079 () Bool)

(assert (=> bm!324030 m!5502079))

(assert (=> bm!324029 m!5502079))

(assert (=> b!4641310 d!1463324))

(declare-fun d!1463326 () Bool)

(assert (=> d!1463326 (= (eq!887 lt!1804338 (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775)) (h!57884 oldBucket!40))) (= (content!8941 (toList!5137 lt!1804338)) (content!8941 (toList!5137 (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804339) Nil!51775)) (h!57884 oldBucket!40))))))))

(declare-fun bs!1033770 () Bool)

(assert (= bs!1033770 d!1463326))

(declare-fun m!5502081 () Bool)

(assert (=> bs!1033770 m!5502081))

(declare-fun m!5502083 () Bool)

(assert (=> bs!1033770 m!5502083))

(assert (=> b!4641310 d!1463326))

(declare-fun bs!1033776 () Bool)

(declare-fun d!1463328 () Bool)

(assert (= bs!1033776 (and d!1463328 b!4641318)))

(declare-fun lambda!196410 () Int)

(assert (=> bs!1033776 (= lambda!196410 lambda!196294)))

(declare-fun bs!1033777 () Bool)

(assert (= bs!1033777 (and d!1463328 d!1463306)))

(assert (=> bs!1033777 (= lambda!196410 lambda!196395)))

(declare-fun bs!1033778 () Bool)

(assert (= bs!1033778 (and d!1463328 d!1463314)))

(assert (=> bs!1033778 (= lambda!196410 lambda!196396)))

(assert (=> d!1463328 (contains!14901 (extractMap!1652 (toList!5138 (ListLongMap!3708 lt!1804335))) key!4968)))

(declare-fun lt!1804753 () Unit!115381)

(declare-fun choose!31787 (ListLongMap!3707 K!13140 Hashable!5993) Unit!115381)

(assert (=> d!1463328 (= lt!1804753 (choose!31787 (ListLongMap!3708 lt!1804335) key!4968 hashF!1389))))

(assert (=> d!1463328 (forall!10948 (toList!5138 (ListLongMap!3708 lt!1804335)) lambda!196410)))

(assert (=> d!1463328 (= (lemmaListContainsThenExtractedMapContains!374 (ListLongMap!3708 lt!1804335) key!4968 hashF!1389) lt!1804753)))

(declare-fun bs!1033779 () Bool)

(assert (= bs!1033779 d!1463328))

(declare-fun m!5502117 () Bool)

(assert (=> bs!1033779 m!5502117))

(assert (=> bs!1033779 m!5502117))

(declare-fun m!5502119 () Bool)

(assert (=> bs!1033779 m!5502119))

(declare-fun m!5502121 () Bool)

(assert (=> bs!1033779 m!5502121))

(declare-fun m!5502123 () Bool)

(assert (=> bs!1033779 m!5502123))

(assert (=> b!4641310 d!1463328))

(declare-fun b!4641543 () Bool)

(declare-fun e!2895469 () List!51898)

(assert (=> b!4641543 (= e!2895469 (t!358982 oldBucket!40))))

(declare-fun d!1463336 () Bool)

(declare-fun lt!1804764 () List!51898)

(assert (=> d!1463336 (not (containsKey!2634 lt!1804764 key!4968))))

(assert (=> d!1463336 (= lt!1804764 e!2895469)))

(declare-fun c!794252 () Bool)

(assert (=> d!1463336 (= c!794252 (and ((_ is Cons!51774) oldBucket!40) (= (_1!29709 (h!57884 oldBucket!40)) key!4968)))))

(assert (=> d!1463336 (noDuplicateKeys!1596 oldBucket!40)))

(assert (=> d!1463336 (= (removePairForKey!1219 oldBucket!40 key!4968) lt!1804764)))

(declare-fun b!4641544 () Bool)

(declare-fun e!2895468 () List!51898)

(assert (=> b!4641544 (= e!2895469 e!2895468)))

(declare-fun c!794251 () Bool)

(assert (=> b!4641544 (= c!794251 ((_ is Cons!51774) oldBucket!40))))

(declare-fun b!4641545 () Bool)

(assert (=> b!4641545 (= e!2895468 (Cons!51774 (h!57884 oldBucket!40) (removePairForKey!1219 (t!358982 oldBucket!40) key!4968)))))

(declare-fun b!4641546 () Bool)

(assert (=> b!4641546 (= e!2895468 Nil!51774)))

(assert (= (and d!1463336 c!794252) b!4641543))

(assert (= (and d!1463336 (not c!794252)) b!4641544))

(assert (= (and b!4641544 c!794251) b!4641545))

(assert (= (and b!4641544 (not c!794251)) b!4641546))

(declare-fun m!5502125 () Bool)

(assert (=> d!1463336 m!5502125))

(assert (=> d!1463336 m!5501537))

(assert (=> b!4641545 m!5501521))

(assert (=> b!4641320 d!1463336))

(declare-fun bs!1033781 () Bool)

(declare-fun d!1463338 () Bool)

(assert (= bs!1033781 (and d!1463338 b!4641432)))

(declare-fun lambda!196413 () Int)

(assert (=> bs!1033781 (not (= lambda!196413 lambda!196377))))

(declare-fun bs!1033783 () Bool)

(assert (= bs!1033783 (and d!1463338 b!4641442)))

(assert (=> bs!1033783 (not (= lambda!196413 lambda!196386))))

(declare-fun bs!1033784 () Bool)

(assert (= bs!1033784 (and d!1463338 b!4641444)))

(assert (=> bs!1033784 (not (= lambda!196413 lambda!196384))))

(declare-fun bs!1033785 () Bool)

(assert (= bs!1033785 (and d!1463338 b!4641506)))

(assert (=> bs!1033785 (not (= lambda!196413 lambda!196398))))

(declare-fun bs!1033786 () Bool)

(assert (= bs!1033786 (and d!1463338 d!1463324)))

(assert (=> bs!1033786 (not (= lambda!196413 lambda!196400))))

(declare-fun bs!1033787 () Bool)

(assert (= bs!1033787 (and d!1463338 b!4641425)))

(assert (=> bs!1033787 (not (= lambda!196413 lambda!196372))))

(assert (=> bs!1033781 (not (= lambda!196413 lambda!196379))))

(assert (=> bs!1033783 (not (= lambda!196413 lambda!196387))))

(declare-fun bs!1033788 () Bool)

(assert (= bs!1033788 (and d!1463338 d!1463286)))

(assert (=> bs!1033788 (not (= lambda!196413 lambda!196389))))

(declare-fun bs!1033789 () Bool)

(assert (= bs!1033789 (and d!1463338 b!4641427)))

(assert (=> bs!1033789 (not (= lambda!196413 lambda!196371))))

(declare-fun bs!1033790 () Bool)

(assert (= bs!1033790 (and d!1463338 b!4641508)))

(assert (=> bs!1033790 (not (= lambda!196413 lambda!196397))))

(assert (=> bs!1033787 (not (= lambda!196413 lambda!196373))))

(declare-fun bs!1033791 () Bool)

(assert (= bs!1033791 (and d!1463338 d!1463252)))

(assert (=> bs!1033791 (not (= lambda!196413 lambda!196374))))

(assert (=> bs!1033785 (not (= lambda!196413 lambda!196399))))

(declare-fun bs!1033792 () Bool)

(assert (= bs!1033792 (and d!1463338 b!4641434)))

(assert (=> bs!1033792 (not (= lambda!196413 lambda!196375))))

(declare-fun bs!1033793 () Bool)

(assert (= bs!1033793 (and d!1463338 d!1463282)))

(assert (=> bs!1033793 (not (= lambda!196413 lambda!196381))))

(assert (=> d!1463338 true))

(assert (=> d!1463338 true))

(assert (=> d!1463338 (= (allKeysSameHash!1450 newBucket!224 hash!414 hashF!1389) (forall!10947 newBucket!224 lambda!196413))))

(declare-fun bs!1033794 () Bool)

(assert (= bs!1033794 d!1463338))

(declare-fun m!5502139 () Bool)

(assert (=> bs!1033794 m!5502139))

(assert (=> b!4641309 d!1463338))

(declare-fun bs!1033795 () Bool)

(declare-fun b!4641558 () Bool)

(assert (= bs!1033795 (and b!4641558 b!4641432)))

(declare-fun lambda!196414 () Int)

(assert (=> bs!1033795 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196377))))

(declare-fun bs!1033796 () Bool)

(assert (= bs!1033796 (and b!4641558 b!4641442)))

(assert (=> bs!1033796 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196386))))

(declare-fun bs!1033797 () Bool)

(assert (= bs!1033797 (and b!4641558 b!4641444)))

(assert (=> bs!1033797 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196384))))

(declare-fun bs!1033798 () Bool)

(assert (= bs!1033798 (and b!4641558 b!4641506)))

(assert (=> bs!1033798 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196398))))

(declare-fun bs!1033799 () Bool)

(assert (= bs!1033799 (and b!4641558 d!1463324)))

(assert (=> bs!1033799 (= (= lt!1804332 lt!1804722) (= lambda!196414 lambda!196400))))

(declare-fun bs!1033800 () Bool)

(assert (= bs!1033800 (and b!4641558 b!4641425)))

(assert (=> bs!1033800 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196372))))

(assert (=> bs!1033796 (= (= lt!1804332 lt!1804637) (= lambda!196414 lambda!196387))))

(declare-fun bs!1033801 () Bool)

(assert (= bs!1033801 (and b!4641558 d!1463286)))

(assert (=> bs!1033801 (= (= lt!1804332 lt!1804650) (= lambda!196414 lambda!196389))))

(declare-fun bs!1033802 () Bool)

(assert (= bs!1033802 (and b!4641558 b!4641427)))

(assert (=> bs!1033802 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196371))))

(declare-fun bs!1033803 () Bool)

(assert (= bs!1033803 (and b!4641558 b!4641508)))

(assert (=> bs!1033803 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196397))))

(assert (=> bs!1033800 (= (= lt!1804332 lt!1804571) (= lambda!196414 lambda!196373))))

(declare-fun bs!1033804 () Bool)

(assert (= bs!1033804 (and b!4641558 d!1463252)))

(assert (=> bs!1033804 (= (= lt!1804332 lt!1804584) (= lambda!196414 lambda!196374))))

(assert (=> bs!1033798 (= (= lt!1804332 lt!1804709) (= lambda!196414 lambda!196399))))

(declare-fun bs!1033805 () Bool)

(assert (= bs!1033805 (and b!4641558 b!4641434)))

(assert (=> bs!1033805 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196414 lambda!196375))))

(declare-fun bs!1033806 () Bool)

(assert (= bs!1033806 (and b!4641558 d!1463282)))

(assert (=> bs!1033806 (= (= lt!1804332 lt!1804605) (= lambda!196414 lambda!196381))))

(assert (=> bs!1033795 (= (= lt!1804332 lt!1804592) (= lambda!196414 lambda!196379))))

(declare-fun bs!1033807 () Bool)

(assert (= bs!1033807 (and b!4641558 d!1463338)))

(assert (=> bs!1033807 (not (= lambda!196414 lambda!196413))))

(assert (=> b!4641558 true))

(declare-fun bs!1033808 () Bool)

(declare-fun b!4641556 () Bool)

(assert (= bs!1033808 (and b!4641556 b!4641432)))

(declare-fun lambda!196415 () Int)

(assert (=> bs!1033808 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196377))))

(declare-fun bs!1033809 () Bool)

(assert (= bs!1033809 (and b!4641556 b!4641558)))

(assert (=> bs!1033809 (= lambda!196415 lambda!196414)))

(declare-fun bs!1033810 () Bool)

(assert (= bs!1033810 (and b!4641556 b!4641442)))

(assert (=> bs!1033810 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196386))))

(declare-fun bs!1033811 () Bool)

(assert (= bs!1033811 (and b!4641556 b!4641444)))

(assert (=> bs!1033811 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196384))))

(declare-fun bs!1033812 () Bool)

(assert (= bs!1033812 (and b!4641556 b!4641506)))

(assert (=> bs!1033812 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196398))))

(declare-fun bs!1033813 () Bool)

(assert (= bs!1033813 (and b!4641556 d!1463324)))

(assert (=> bs!1033813 (= (= lt!1804332 lt!1804722) (= lambda!196415 lambda!196400))))

(declare-fun bs!1033814 () Bool)

(assert (= bs!1033814 (and b!4641556 b!4641425)))

(assert (=> bs!1033814 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196372))))

(assert (=> bs!1033810 (= (= lt!1804332 lt!1804637) (= lambda!196415 lambda!196387))))

(declare-fun bs!1033815 () Bool)

(assert (= bs!1033815 (and b!4641556 d!1463286)))

(assert (=> bs!1033815 (= (= lt!1804332 lt!1804650) (= lambda!196415 lambda!196389))))

(declare-fun bs!1033816 () Bool)

(assert (= bs!1033816 (and b!4641556 b!4641427)))

(assert (=> bs!1033816 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196371))))

(declare-fun bs!1033817 () Bool)

(assert (= bs!1033817 (and b!4641556 b!4641508)))

(assert (=> bs!1033817 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196397))))

(assert (=> bs!1033814 (= (= lt!1804332 lt!1804571) (= lambda!196415 lambda!196373))))

(declare-fun bs!1033818 () Bool)

(assert (= bs!1033818 (and b!4641556 d!1463252)))

(assert (=> bs!1033818 (= (= lt!1804332 lt!1804584) (= lambda!196415 lambda!196374))))

(assert (=> bs!1033812 (= (= lt!1804332 lt!1804709) (= lambda!196415 lambda!196399))))

(declare-fun bs!1033819 () Bool)

(assert (= bs!1033819 (and b!4641556 b!4641434)))

(assert (=> bs!1033819 (= (= lt!1804332 (ListMap!4462 Nil!51774)) (= lambda!196415 lambda!196375))))

(declare-fun bs!1033820 () Bool)

(assert (= bs!1033820 (and b!4641556 d!1463282)))

(assert (=> bs!1033820 (= (= lt!1804332 lt!1804605) (= lambda!196415 lambda!196381))))

(assert (=> bs!1033808 (= (= lt!1804332 lt!1804592) (= lambda!196415 lambda!196379))))

(declare-fun bs!1033821 () Bool)

(assert (= bs!1033821 (and b!4641556 d!1463338)))

(assert (=> bs!1033821 (not (= lambda!196415 lambda!196413))))

(assert (=> b!4641556 true))

(declare-fun lt!1804775 () ListMap!4461)

(declare-fun lambda!196416 () Int)

(assert (=> bs!1033808 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196377))))

(assert (=> bs!1033809 (= (= lt!1804775 lt!1804332) (= lambda!196416 lambda!196414))))

(assert (=> bs!1033810 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196386))))

(assert (=> bs!1033811 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196384))))

(assert (=> bs!1033812 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196398))))

(assert (=> bs!1033813 (= (= lt!1804775 lt!1804722) (= lambda!196416 lambda!196400))))

(assert (=> bs!1033814 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196372))))

(assert (=> bs!1033810 (= (= lt!1804775 lt!1804637) (= lambda!196416 lambda!196387))))

(assert (=> bs!1033816 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196371))))

(assert (=> bs!1033817 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196397))))

(assert (=> bs!1033814 (= (= lt!1804775 lt!1804571) (= lambda!196416 lambda!196373))))

(assert (=> bs!1033818 (= (= lt!1804775 lt!1804584) (= lambda!196416 lambda!196374))))

(assert (=> bs!1033812 (= (= lt!1804775 lt!1804709) (= lambda!196416 lambda!196399))))

(assert (=> bs!1033819 (= (= lt!1804775 (ListMap!4462 Nil!51774)) (= lambda!196416 lambda!196375))))

(assert (=> bs!1033820 (= (= lt!1804775 lt!1804605) (= lambda!196416 lambda!196381))))

(assert (=> bs!1033808 (= (= lt!1804775 lt!1804592) (= lambda!196416 lambda!196379))))

(assert (=> bs!1033821 (not (= lambda!196416 lambda!196413))))

(assert (=> bs!1033815 (= (= lt!1804775 lt!1804650) (= lambda!196416 lambda!196389))))

(assert (=> b!4641556 (= (= lt!1804775 lt!1804332) (= lambda!196416 lambda!196415))))

(assert (=> b!4641556 true))

(declare-fun bs!1033822 () Bool)

(declare-fun d!1463346 () Bool)

(assert (= bs!1033822 (and d!1463346 b!4641432)))

(declare-fun lt!1804788 () ListMap!4461)

(declare-fun lambda!196417 () Int)

(assert (=> bs!1033822 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196377))))

(declare-fun bs!1033823 () Bool)

(assert (= bs!1033823 (and d!1463346 b!4641558)))

(assert (=> bs!1033823 (= (= lt!1804788 lt!1804332) (= lambda!196417 lambda!196414))))

(declare-fun bs!1033824 () Bool)

(assert (= bs!1033824 (and d!1463346 b!4641442)))

(assert (=> bs!1033824 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196386))))

(declare-fun bs!1033825 () Bool)

(assert (= bs!1033825 (and d!1463346 b!4641444)))

(assert (=> bs!1033825 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196384))))

(declare-fun bs!1033826 () Bool)

(assert (= bs!1033826 (and d!1463346 b!4641506)))

(assert (=> bs!1033826 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196398))))

(declare-fun bs!1033827 () Bool)

(assert (= bs!1033827 (and d!1463346 b!4641556)))

(assert (=> bs!1033827 (= (= lt!1804788 lt!1804775) (= lambda!196417 lambda!196416))))

(declare-fun bs!1033828 () Bool)

(assert (= bs!1033828 (and d!1463346 d!1463324)))

(assert (=> bs!1033828 (= (= lt!1804788 lt!1804722) (= lambda!196417 lambda!196400))))

(declare-fun bs!1033829 () Bool)

(assert (= bs!1033829 (and d!1463346 b!4641425)))

(assert (=> bs!1033829 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196372))))

(assert (=> bs!1033824 (= (= lt!1804788 lt!1804637) (= lambda!196417 lambda!196387))))

(declare-fun bs!1033831 () Bool)

(assert (= bs!1033831 (and d!1463346 b!4641427)))

(assert (=> bs!1033831 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196371))))

(declare-fun bs!1033832 () Bool)

(assert (= bs!1033832 (and d!1463346 b!4641508)))

(assert (=> bs!1033832 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196397))))

(assert (=> bs!1033829 (= (= lt!1804788 lt!1804571) (= lambda!196417 lambda!196373))))

(declare-fun bs!1033833 () Bool)

(assert (= bs!1033833 (and d!1463346 d!1463252)))

(assert (=> bs!1033833 (= (= lt!1804788 lt!1804584) (= lambda!196417 lambda!196374))))

(assert (=> bs!1033826 (= (= lt!1804788 lt!1804709) (= lambda!196417 lambda!196399))))

(declare-fun bs!1033835 () Bool)

(assert (= bs!1033835 (and d!1463346 b!4641434)))

(assert (=> bs!1033835 (= (= lt!1804788 (ListMap!4462 Nil!51774)) (= lambda!196417 lambda!196375))))

(declare-fun bs!1033836 () Bool)

(assert (= bs!1033836 (and d!1463346 d!1463282)))

(assert (=> bs!1033836 (= (= lt!1804788 lt!1804605) (= lambda!196417 lambda!196381))))

(assert (=> bs!1033822 (= (= lt!1804788 lt!1804592) (= lambda!196417 lambda!196379))))

(declare-fun bs!1033839 () Bool)

(assert (= bs!1033839 (and d!1463346 d!1463338)))

(assert (=> bs!1033839 (not (= lambda!196417 lambda!196413))))

(declare-fun bs!1033841 () Bool)

(assert (= bs!1033841 (and d!1463346 d!1463286)))

(assert (=> bs!1033841 (= (= lt!1804788 lt!1804650) (= lambda!196417 lambda!196389))))

(assert (=> bs!1033827 (= (= lt!1804788 lt!1804332) (= lambda!196417 lambda!196415))))

(assert (=> d!1463346 true))

(declare-fun bm!324031 () Bool)

(declare-fun call!324037 () Unit!115381)

(assert (=> bm!324031 (= call!324037 (lemmaContainsAllItsOwnKeys!566 lt!1804332))))

(declare-fun b!4641554 () Bool)

(declare-fun e!2895472 () Bool)

(assert (=> b!4641554 (= e!2895472 (forall!10947 (toList!5137 lt!1804332) lambda!196416))))

(declare-fun b!4641555 () Bool)

(declare-fun res!1949445 () Bool)

(declare-fun e!2895474 () Bool)

(assert (=> b!4641555 (=> (not res!1949445) (not e!2895474))))

(assert (=> b!4641555 (= res!1949445 (forall!10947 (toList!5137 lt!1804332) lambda!196417))))

(assert (=> d!1463346 e!2895474))

(declare-fun res!1949446 () Bool)

(assert (=> d!1463346 (=> (not res!1949446) (not e!2895474))))

(assert (=> d!1463346 (= res!1949446 (forall!10947 oldBucket!40 lambda!196417))))

(declare-fun e!2895473 () ListMap!4461)

(assert (=> d!1463346 (= lt!1804788 e!2895473)))

(declare-fun c!794254 () Bool)

(assert (=> d!1463346 (= c!794254 ((_ is Nil!51774) oldBucket!40))))

(assert (=> d!1463346 (noDuplicateKeys!1596 oldBucket!40)))

(assert (=> d!1463346 (= (addToMapMapFromBucket!1055 oldBucket!40 lt!1804332) lt!1804788)))

(declare-fun bm!324032 () Bool)

(declare-fun call!324036 () Bool)

(assert (=> bm!324032 (= call!324036 (forall!10947 (ite c!794254 (toList!5137 lt!1804332) oldBucket!40) (ite c!794254 lambda!196414 lambda!196416)))))

(assert (=> b!4641556 (= e!2895473 lt!1804775)))

(declare-fun lt!1804771 () ListMap!4461)

(assert (=> b!4641556 (= lt!1804771 (+!1946 lt!1804332 (h!57884 oldBucket!40)))))

(assert (=> b!4641556 (= lt!1804775 (addToMapMapFromBucket!1055 (t!358982 oldBucket!40) (+!1946 lt!1804332 (h!57884 oldBucket!40))))))

(declare-fun lt!1804781 () Unit!115381)

(assert (=> b!4641556 (= lt!1804781 call!324037)))

(assert (=> b!4641556 (forall!10947 (toList!5137 lt!1804332) lambda!196415)))

(declare-fun lt!1804772 () Unit!115381)

(assert (=> b!4641556 (= lt!1804772 lt!1804781)))

(assert (=> b!4641556 (forall!10947 (toList!5137 lt!1804771) lambda!196416)))

(declare-fun lt!1804777 () Unit!115381)

(declare-fun Unit!115476 () Unit!115381)

(assert (=> b!4641556 (= lt!1804777 Unit!115476)))

(assert (=> b!4641556 (forall!10947 (t!358982 oldBucket!40) lambda!196416)))

(declare-fun lt!1804785 () Unit!115381)

(declare-fun Unit!115477 () Unit!115381)

(assert (=> b!4641556 (= lt!1804785 Unit!115477)))

(declare-fun lt!1804789 () Unit!115381)

(declare-fun Unit!115478 () Unit!115381)

(assert (=> b!4641556 (= lt!1804789 Unit!115478)))

(declare-fun lt!1804776 () Unit!115381)

(assert (=> b!4641556 (= lt!1804776 (forallContained!3170 (toList!5137 lt!1804771) lambda!196416 (h!57884 oldBucket!40)))))

(assert (=> b!4641556 (contains!14901 lt!1804771 (_1!29709 (h!57884 oldBucket!40)))))

(declare-fun lt!1804778 () Unit!115381)

(declare-fun Unit!115479 () Unit!115381)

(assert (=> b!4641556 (= lt!1804778 Unit!115479)))

(assert (=> b!4641556 (contains!14901 lt!1804775 (_1!29709 (h!57884 oldBucket!40)))))

(declare-fun lt!1804787 () Unit!115381)

(declare-fun Unit!115480 () Unit!115381)

(assert (=> b!4641556 (= lt!1804787 Unit!115480)))

(declare-fun call!324038 () Bool)

(assert (=> b!4641556 call!324038))

(declare-fun lt!1804779 () Unit!115381)

(declare-fun Unit!115481 () Unit!115381)

(assert (=> b!4641556 (= lt!1804779 Unit!115481)))

(assert (=> b!4641556 (forall!10947 (toList!5137 lt!1804771) lambda!196416)))

(declare-fun lt!1804783 () Unit!115381)

(declare-fun Unit!115482 () Unit!115381)

(assert (=> b!4641556 (= lt!1804783 Unit!115482)))

(declare-fun lt!1804780 () Unit!115381)

(declare-fun Unit!115483 () Unit!115381)

(assert (=> b!4641556 (= lt!1804780 Unit!115483)))

(declare-fun lt!1804786 () Unit!115381)

(assert (=> b!4641556 (= lt!1804786 (addForallContainsKeyThenBeforeAdding!565 lt!1804332 lt!1804775 (_1!29709 (h!57884 oldBucket!40)) (_2!29709 (h!57884 oldBucket!40))))))

(assert (=> b!4641556 (forall!10947 (toList!5137 lt!1804332) lambda!196416)))

(declare-fun lt!1804769 () Unit!115381)

(assert (=> b!4641556 (= lt!1804769 lt!1804786)))

(assert (=> b!4641556 (forall!10947 (toList!5137 lt!1804332) lambda!196416)))

(declare-fun lt!1804773 () Unit!115381)

(declare-fun Unit!115484 () Unit!115381)

(assert (=> b!4641556 (= lt!1804773 Unit!115484)))

(declare-fun res!1949447 () Bool)

(assert (=> b!4641556 (= res!1949447 call!324036)))

(assert (=> b!4641556 (=> (not res!1949447) (not e!2895472))))

(assert (=> b!4641556 e!2895472))

(declare-fun lt!1804782 () Unit!115381)

(declare-fun Unit!115485 () Unit!115381)

(assert (=> b!4641556 (= lt!1804782 Unit!115485)))

(declare-fun b!4641557 () Bool)

(assert (=> b!4641557 (= e!2895474 (invariantList!1264 (toList!5137 lt!1804788)))))

(declare-fun bm!324033 () Bool)

(assert (=> bm!324033 (= call!324038 (forall!10947 (ite c!794254 (toList!5137 lt!1804332) oldBucket!40) (ite c!794254 lambda!196414 lambda!196416)))))

(assert (=> b!4641558 (= e!2895473 lt!1804332)))

(declare-fun lt!1804770 () Unit!115381)

(assert (=> b!4641558 (= lt!1804770 call!324037)))

(assert (=> b!4641558 call!324038))

(declare-fun lt!1804774 () Unit!115381)

(assert (=> b!4641558 (= lt!1804774 lt!1804770)))

(assert (=> b!4641558 call!324036))

(declare-fun lt!1804784 () Unit!115381)

(declare-fun Unit!115486 () Unit!115381)

(assert (=> b!4641558 (= lt!1804784 Unit!115486)))

(assert (= (and d!1463346 c!794254) b!4641558))

(assert (= (and d!1463346 (not c!794254)) b!4641556))

(assert (= (and b!4641556 res!1949447) b!4641554))

(assert (= (or b!4641558 b!4641556) bm!324031))

(assert (= (or b!4641558 b!4641556) bm!324032))

(assert (= (or b!4641558 b!4641556) bm!324033))

(assert (= (and d!1463346 res!1949446) b!4641555))

(assert (= (and b!4641555 res!1949445) b!4641557))

(declare-fun m!5502175 () Bool)

(assert (=> d!1463346 m!5502175))

(assert (=> d!1463346 m!5501537))

(declare-fun m!5502179 () Bool)

(assert (=> b!4641556 m!5502179))

(declare-fun m!5502183 () Bool)

(assert (=> b!4641556 m!5502183))

(declare-fun m!5502185 () Bool)

(assert (=> b!4641556 m!5502185))

(declare-fun m!5502189 () Bool)

(assert (=> b!4641556 m!5502189))

(assert (=> b!4641556 m!5502189))

(declare-fun m!5502191 () Bool)

(assert (=> b!4641556 m!5502191))

(declare-fun m!5502193 () Bool)

(assert (=> b!4641556 m!5502193))

(declare-fun m!5502195 () Bool)

(assert (=> b!4641556 m!5502195))

(declare-fun m!5502197 () Bool)

(assert (=> b!4641556 m!5502197))

(assert (=> b!4641556 m!5502191))

(declare-fun m!5502199 () Bool)

(assert (=> b!4641556 m!5502199))

(declare-fun m!5502201 () Bool)

(assert (=> b!4641556 m!5502201))

(assert (=> b!4641556 m!5502183))

(assert (=> b!4641554 m!5502191))

(declare-fun m!5502203 () Bool)

(assert (=> b!4641555 m!5502203))

(declare-fun m!5502205 () Bool)

(assert (=> b!4641557 m!5502205))

(declare-fun m!5502207 () Bool)

(assert (=> bm!324031 m!5502207))

(declare-fun m!5502209 () Bool)

(assert (=> bm!324033 m!5502209))

(assert (=> bm!324032 m!5502209))

(assert (=> b!4641322 d!1463346))

(declare-fun bs!1033851 () Bool)

(declare-fun d!1463358 () Bool)

(assert (= bs!1033851 (and d!1463358 b!4641318)))

(declare-fun lambda!196420 () Int)

(assert (=> bs!1033851 (= lambda!196420 lambda!196294)))

(declare-fun bs!1033852 () Bool)

(assert (= bs!1033852 (and d!1463358 d!1463306)))

(assert (=> bs!1033852 (= lambda!196420 lambda!196395)))

(declare-fun bs!1033853 () Bool)

(assert (= bs!1033853 (and d!1463358 d!1463314)))

(assert (=> bs!1033853 (= lambda!196420 lambda!196396)))

(declare-fun bs!1033854 () Bool)

(assert (= bs!1033854 (and d!1463358 d!1463328)))

(assert (=> bs!1033854 (= lambda!196420 lambda!196410)))

(declare-fun lt!1804800 () ListMap!4461)

(assert (=> d!1463358 (invariantList!1264 (toList!5137 lt!1804800))))

(declare-fun e!2895495 () ListMap!4461)

(assert (=> d!1463358 (= lt!1804800 e!2895495)))

(declare-fun c!794265 () Bool)

(assert (=> d!1463358 (= c!794265 ((_ is Cons!51775) Nil!51775))))

(assert (=> d!1463358 (forall!10948 Nil!51775 lambda!196420)))

(assert (=> d!1463358 (= (extractMap!1652 Nil!51775) lt!1804800)))

(declare-fun b!4641593 () Bool)

(assert (=> b!4641593 (= e!2895495 (addToMapMapFromBucket!1055 (_2!29710 (h!57885 Nil!51775)) (extractMap!1652 (t!358983 Nil!51775))))))

(declare-fun b!4641594 () Bool)

(assert (=> b!4641594 (= e!2895495 (ListMap!4462 Nil!51774))))

(assert (= (and d!1463358 c!794265) b!4641593))

(assert (= (and d!1463358 (not c!794265)) b!4641594))

(declare-fun m!5502219 () Bool)

(assert (=> d!1463358 m!5502219))

(declare-fun m!5502221 () Bool)

(assert (=> d!1463358 m!5502221))

(declare-fun m!5502223 () Bool)

(assert (=> b!4641593 m!5502223))

(assert (=> b!4641593 m!5502223))

(declare-fun m!5502225 () Bool)

(assert (=> b!4641593 m!5502225))

(assert (=> b!4641322 d!1463358))

(declare-fun b!4641600 () Bool)

(declare-fun e!2895500 () List!51898)

(assert (=> b!4641600 (= e!2895500 (t!358982 lt!1804339))))

(declare-fun d!1463362 () Bool)

(declare-fun lt!1804822 () List!51898)

(assert (=> d!1463362 (not (containsKey!2634 lt!1804822 key!4968))))

(assert (=> d!1463362 (= lt!1804822 e!2895500)))

(declare-fun c!794268 () Bool)

(assert (=> d!1463362 (= c!794268 (and ((_ is Cons!51774) lt!1804339) (= (_1!29709 (h!57884 lt!1804339)) key!4968)))))

(assert (=> d!1463362 (noDuplicateKeys!1596 lt!1804339)))

(assert (=> d!1463362 (= (removePairForKey!1219 lt!1804339 key!4968) lt!1804822)))

(declare-fun b!4641601 () Bool)

(declare-fun e!2895499 () List!51898)

(assert (=> b!4641601 (= e!2895500 e!2895499)))

(declare-fun c!794267 () Bool)

(assert (=> b!4641601 (= c!794267 ((_ is Cons!51774) lt!1804339))))

(declare-fun b!4641602 () Bool)

(assert (=> b!4641602 (= e!2895499 (Cons!51774 (h!57884 lt!1804339) (removePairForKey!1219 (t!358982 lt!1804339) key!4968)))))

(declare-fun b!4641603 () Bool)

(assert (=> b!4641603 (= e!2895499 Nil!51774)))

(assert (= (and d!1463362 c!794268) b!4641600))

(assert (= (and d!1463362 (not c!794268)) b!4641601))

(assert (= (and b!4641601 c!794267) b!4641602))

(assert (= (and b!4641601 (not c!794267)) b!4641603))

(declare-fun m!5502227 () Bool)

(assert (=> d!1463362 m!5502227))

(assert (=> d!1463362 m!5501923))

(declare-fun m!5502229 () Bool)

(assert (=> b!4641602 m!5502229))

(assert (=> b!4641311 d!1463362))

(declare-fun d!1463364 () Bool)

(assert (=> d!1463364 (= (tail!8219 newBucket!224) (t!358982 newBucket!224))))

(assert (=> b!4641311 d!1463364))

(declare-fun d!1463366 () Bool)

(assert (=> d!1463366 (= (tail!8219 oldBucket!40) (t!358982 oldBucket!40))))

(assert (=> b!4641311 d!1463366))

(declare-fun d!1463368 () Bool)

(assert (=> d!1463368 (= (eq!887 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775)) (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775)) lt!1804340)) (= (content!8941 (toList!5137 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775)))) (content!8941 (toList!5137 (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775)) lt!1804340)))))))

(declare-fun bs!1033867 () Bool)

(assert (= bs!1033867 d!1463368))

(declare-fun m!5502231 () Bool)

(assert (=> bs!1033867 m!5502231))

(declare-fun m!5502233 () Bool)

(assert (=> bs!1033867 m!5502233))

(assert (=> b!4641312 d!1463368))

(declare-fun bs!1033870 () Bool)

(declare-fun d!1463370 () Bool)

(assert (= bs!1033870 (and d!1463370 d!1463328)))

(declare-fun lambda!196422 () Int)

(assert (=> bs!1033870 (= lambda!196422 lambda!196410)))

(declare-fun bs!1033871 () Bool)

(assert (= bs!1033871 (and d!1463370 d!1463314)))

(assert (=> bs!1033871 (= lambda!196422 lambda!196396)))

(declare-fun bs!1033872 () Bool)

(assert (= bs!1033872 (and d!1463370 d!1463306)))

(assert (=> bs!1033872 (= lambda!196422 lambda!196395)))

(declare-fun bs!1033873 () Bool)

(assert (= bs!1033873 (and d!1463370 d!1463358)))

(assert (=> bs!1033873 (= lambda!196422 lambda!196420)))

(declare-fun bs!1033875 () Bool)

(assert (= bs!1033875 (and d!1463370 b!4641318)))

(assert (=> bs!1033875 (= lambda!196422 lambda!196294)))

(declare-fun lt!1804823 () ListMap!4461)

(assert (=> d!1463370 (invariantList!1264 (toList!5137 lt!1804823))))

(declare-fun e!2895501 () ListMap!4461)

(assert (=> d!1463370 (= lt!1804823 e!2895501)))

(declare-fun c!794269 () Bool)

(assert (=> d!1463370 (= c!794269 ((_ is Cons!51775) (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775)))))

(assert (=> d!1463370 (forall!10948 (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775) lambda!196422)))

(assert (=> d!1463370 (= (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775)) lt!1804823)))

(declare-fun b!4641604 () Bool)

(assert (=> b!4641604 (= e!2895501 (addToMapMapFromBucket!1055 (_2!29710 (h!57885 (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775))) (extractMap!1652 (t!358983 (Cons!51775 (tuple2!52833 hash!414 newBucket!224) Nil!51775)))))))

(declare-fun b!4641605 () Bool)

(assert (=> b!4641605 (= e!2895501 (ListMap!4462 Nil!51774))))

(assert (= (and d!1463370 c!794269) b!4641604))

(assert (= (and d!1463370 (not c!794269)) b!4641605))

(declare-fun m!5502235 () Bool)

(assert (=> d!1463370 m!5502235))

(declare-fun m!5502237 () Bool)

(assert (=> d!1463370 m!5502237))

(declare-fun m!5502239 () Bool)

(assert (=> b!4641604 m!5502239))

(assert (=> b!4641604 m!5502239))

(declare-fun m!5502241 () Bool)

(assert (=> b!4641604 m!5502241))

(assert (=> b!4641312 d!1463370))

(declare-fun d!1463372 () Bool)

(declare-fun e!2895502 () Bool)

(assert (=> d!1463372 e!2895502))

(declare-fun res!1949465 () Bool)

(assert (=> d!1463372 (=> (not res!1949465) (not e!2895502))))

(declare-fun lt!1804824 () ListMap!4461)

(assert (=> d!1463372 (= res!1949465 (contains!14901 lt!1804824 (_1!29709 lt!1804340)))))

(declare-fun lt!1804827 () List!51898)

(assert (=> d!1463372 (= lt!1804824 (ListMap!4462 lt!1804827))))

(declare-fun lt!1804825 () Unit!115381)

(declare-fun lt!1804826 () Unit!115381)

(assert (=> d!1463372 (= lt!1804825 lt!1804826)))

(assert (=> d!1463372 (= (getValueByKey!1560 lt!1804827 (_1!29709 lt!1804340)) (Some!11757 (_2!29709 lt!1804340)))))

(assert (=> d!1463372 (= lt!1804826 (lemmaContainsTupThenGetReturnValue!900 lt!1804827 (_1!29709 lt!1804340) (_2!29709 lt!1804340)))))

(assert (=> d!1463372 (= lt!1804827 (insertNoDuplicatedKeys!408 (toList!5137 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775))) (_1!29709 lt!1804340) (_2!29709 lt!1804340)))))

(assert (=> d!1463372 (= (+!1946 (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775)) lt!1804340) lt!1804824)))

(declare-fun b!4641606 () Bool)

(declare-fun res!1949466 () Bool)

(assert (=> b!4641606 (=> (not res!1949466) (not e!2895502))))

(assert (=> b!4641606 (= res!1949466 (= (getValueByKey!1560 (toList!5137 lt!1804824) (_1!29709 lt!1804340)) (Some!11757 (_2!29709 lt!1804340))))))

(declare-fun b!4641607 () Bool)

(assert (=> b!4641607 (= e!2895502 (contains!14906 (toList!5137 lt!1804824) lt!1804340))))

(assert (= (and d!1463372 res!1949465) b!4641606))

(assert (= (and b!4641606 res!1949466) b!4641607))

(declare-fun m!5502243 () Bool)

(assert (=> d!1463372 m!5502243))

(declare-fun m!5502245 () Bool)

(assert (=> d!1463372 m!5502245))

(declare-fun m!5502247 () Bool)

(assert (=> d!1463372 m!5502247))

(declare-fun m!5502249 () Bool)

(assert (=> d!1463372 m!5502249))

(declare-fun m!5502251 () Bool)

(assert (=> b!4641606 m!5502251))

(declare-fun m!5502253 () Bool)

(assert (=> b!4641607 m!5502253))

(assert (=> b!4641312 d!1463372))

(declare-fun bs!1033890 () Bool)

(declare-fun d!1463374 () Bool)

(assert (= bs!1033890 (and d!1463374 d!1463314)))

(declare-fun lambda!196424 () Int)

(assert (=> bs!1033890 (= lambda!196424 lambda!196396)))

(declare-fun bs!1033891 () Bool)

(assert (= bs!1033891 (and d!1463374 d!1463306)))

(assert (=> bs!1033891 (= lambda!196424 lambda!196395)))

(declare-fun bs!1033892 () Bool)

(assert (= bs!1033892 (and d!1463374 d!1463358)))

(assert (=> bs!1033892 (= lambda!196424 lambda!196420)))

(declare-fun bs!1033893 () Bool)

(assert (= bs!1033893 (and d!1463374 b!4641318)))

(assert (=> bs!1033893 (= lambda!196424 lambda!196294)))

(declare-fun bs!1033894 () Bool)

(assert (= bs!1033894 (and d!1463374 d!1463370)))

(assert (=> bs!1033894 (= lambda!196424 lambda!196422)))

(declare-fun bs!1033895 () Bool)

(assert (= bs!1033895 (and d!1463374 d!1463328)))

(assert (=> bs!1033895 (= lambda!196424 lambda!196410)))

(declare-fun lt!1804828 () ListMap!4461)

(assert (=> d!1463374 (invariantList!1264 (toList!5137 lt!1804828))))

(declare-fun e!2895503 () ListMap!4461)

(assert (=> d!1463374 (= lt!1804828 e!2895503)))

(declare-fun c!794270 () Bool)

(assert (=> d!1463374 (= c!794270 ((_ is Cons!51775) (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775)))))

(assert (=> d!1463374 (forall!10948 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775) lambda!196424)))

(assert (=> d!1463374 (= (extractMap!1652 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775)) lt!1804828)))

(declare-fun b!4641608 () Bool)

(assert (=> b!4641608 (= e!2895503 (addToMapMapFromBucket!1055 (_2!29710 (h!57885 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775))) (extractMap!1652 (t!358983 (Cons!51775 (tuple2!52833 hash!414 lt!1804343) Nil!51775)))))))

(declare-fun b!4641609 () Bool)

(assert (=> b!4641609 (= e!2895503 (ListMap!4462 Nil!51774))))

(assert (= (and d!1463374 c!794270) b!4641608))

(assert (= (and d!1463374 (not c!794270)) b!4641609))

(declare-fun m!5502255 () Bool)

(assert (=> d!1463374 m!5502255))

(declare-fun m!5502257 () Bool)

(assert (=> d!1463374 m!5502257))

(declare-fun m!5502259 () Bool)

(assert (=> b!4641608 m!5502259))

(assert (=> b!4641608 m!5502259))

(declare-fun m!5502261 () Bool)

(assert (=> b!4641608 m!5502261))

(assert (=> b!4641312 d!1463374))

(declare-fun b!4641610 () Bool)

(declare-fun e!2895506 () Unit!115381)

(declare-fun Unit!115488 () Unit!115381)

(assert (=> b!4641610 (= e!2895506 Unit!115488)))

(declare-fun b!4641611 () Bool)

(declare-fun e!2895505 () Bool)

(assert (=> b!4641611 (= e!2895505 (contains!14907 (keys!18304 lt!1804338) key!4968))))

(declare-fun b!4641612 () Bool)

(assert (=> b!4641612 false))

(declare-fun lt!1804834 () Unit!115381)

(declare-fun lt!1804836 () Unit!115381)

(assert (=> b!4641612 (= lt!1804834 lt!1804836)))

(assert (=> b!4641612 (containsKey!2636 (toList!5137 lt!1804338) key!4968)))

(assert (=> b!4641612 (= lt!1804836 (lemmaInGetKeysListThenContainsKey!714 (toList!5137 lt!1804338) key!4968))))

(declare-fun Unit!115490 () Unit!115381)

(assert (=> b!4641612 (= e!2895506 Unit!115490)))

(declare-fun b!4641613 () Bool)

(declare-fun e!2895504 () Bool)

(assert (=> b!4641613 (= e!2895504 (not (contains!14907 (keys!18304 lt!1804338) key!4968)))))

(declare-fun b!4641614 () Bool)

(declare-fun e!2895507 () List!51901)

(assert (=> b!4641614 (= e!2895507 (getKeysList!715 (toList!5137 lt!1804338)))))

(declare-fun b!4641615 () Bool)

(declare-fun e!2895508 () Unit!115381)

(assert (=> b!4641615 (= e!2895508 e!2895506)))

(declare-fun c!794272 () Bool)

(declare-fun call!324042 () Bool)

(assert (=> b!4641615 (= c!794272 call!324042)))

(declare-fun b!4641616 () Bool)

(declare-fun e!2895509 () Bool)

(assert (=> b!4641616 (= e!2895509 e!2895505)))

(declare-fun res!1949469 () Bool)

(assert (=> b!4641616 (=> (not res!1949469) (not e!2895505))))

(assert (=> b!4641616 (= res!1949469 (isDefined!9023 (getValueByKey!1560 (toList!5137 lt!1804338) key!4968)))))

(declare-fun b!4641617 () Bool)

(assert (=> b!4641617 (= e!2895507 (keys!18304 lt!1804338))))

(declare-fun b!4641618 () Bool)

(declare-fun lt!1804830 () Unit!115381)

(assert (=> b!4641618 (= e!2895508 lt!1804830)))

(declare-fun lt!1804835 () Unit!115381)

(assert (=> b!4641618 (= lt!1804835 (lemmaContainsKeyImpliesGetValueByKeyDefined!1462 (toList!5137 lt!1804338) key!4968))))

(assert (=> b!4641618 (isDefined!9023 (getValueByKey!1560 (toList!5137 lt!1804338) key!4968))))

(declare-fun lt!1804831 () Unit!115381)

(assert (=> b!4641618 (= lt!1804831 lt!1804835)))

(assert (=> b!4641618 (= lt!1804830 (lemmaInListThenGetKeysListContains!710 (toList!5137 lt!1804338) key!4968))))

(assert (=> b!4641618 call!324042))

(declare-fun bm!324037 () Bool)

(assert (=> bm!324037 (= call!324042 (contains!14907 e!2895507 key!4968))))

(declare-fun c!794273 () Bool)

(declare-fun c!794271 () Bool)

(assert (=> bm!324037 (= c!794273 c!794271)))

(declare-fun d!1463376 () Bool)

(assert (=> d!1463376 e!2895509))

(declare-fun res!1949468 () Bool)

(assert (=> d!1463376 (=> res!1949468 e!2895509)))

(assert (=> d!1463376 (= res!1949468 e!2895504)))

(declare-fun res!1949467 () Bool)

(assert (=> d!1463376 (=> (not res!1949467) (not e!2895504))))

(declare-fun lt!1804833 () Bool)

(assert (=> d!1463376 (= res!1949467 (not lt!1804833))))

(declare-fun lt!1804832 () Bool)

(assert (=> d!1463376 (= lt!1804833 lt!1804832)))

(declare-fun lt!1804829 () Unit!115381)

(assert (=> d!1463376 (= lt!1804829 e!2895508)))

(assert (=> d!1463376 (= c!794271 lt!1804832)))

(assert (=> d!1463376 (= lt!1804832 (containsKey!2636 (toList!5137 lt!1804338) key!4968))))

(assert (=> d!1463376 (= (contains!14901 lt!1804338 key!4968) lt!1804833)))

(assert (= (and d!1463376 c!794271) b!4641618))

(assert (= (and d!1463376 (not c!794271)) b!4641615))

(assert (= (and b!4641615 c!794272) b!4641612))

(assert (= (and b!4641615 (not c!794272)) b!4641610))

(assert (= (or b!4641618 b!4641615) bm!324037))

(assert (= (and bm!324037 c!794273) b!4641614))

(assert (= (and bm!324037 (not c!794273)) b!4641617))

(assert (= (and d!1463376 res!1949467) b!4641613))

(assert (= (and d!1463376 (not res!1949468)) b!4641616))

(assert (= (and b!4641616 res!1949469) b!4641611))

(declare-fun m!5502263 () Bool)

(assert (=> b!4641614 m!5502263))

(declare-fun m!5502265 () Bool)

(assert (=> b!4641612 m!5502265))

(declare-fun m!5502267 () Bool)

(assert (=> b!4641612 m!5502267))

(declare-fun m!5502269 () Bool)

(assert (=> b!4641616 m!5502269))

(assert (=> b!4641616 m!5502269))

(declare-fun m!5502271 () Bool)

(assert (=> b!4641616 m!5502271))

(assert (=> d!1463376 m!5502265))

(declare-fun m!5502273 () Bool)

(assert (=> b!4641617 m!5502273))

(assert (=> b!4641613 m!5502273))

(assert (=> b!4641613 m!5502273))

(declare-fun m!5502275 () Bool)

(assert (=> b!4641613 m!5502275))

(declare-fun m!5502277 () Bool)

(assert (=> bm!324037 m!5502277))

(declare-fun m!5502279 () Bool)

(assert (=> b!4641618 m!5502279))

(assert (=> b!4641618 m!5502269))

(assert (=> b!4641618 m!5502269))

(assert (=> b!4641618 m!5502271))

(declare-fun m!5502281 () Bool)

(assert (=> b!4641618 m!5502281))

(assert (=> b!4641611 m!5502273))

(assert (=> b!4641611 m!5502273))

(assert (=> b!4641611 m!5502275))

(assert (=> b!4641314 d!1463376))

(declare-fun bs!1033896 () Bool)

(declare-fun d!1463378 () Bool)

(assert (= bs!1033896 (and d!1463378 d!1463314)))

(declare-fun lambda!196426 () Int)

(assert (=> bs!1033896 (= lambda!196426 lambda!196396)))

(declare-fun bs!1033897 () Bool)

(assert (= bs!1033897 (and d!1463378 d!1463306)))

(assert (=> bs!1033897 (= lambda!196426 lambda!196395)))

(declare-fun bs!1033899 () Bool)

(assert (= bs!1033899 (and d!1463378 d!1463374)))

(assert (=> bs!1033899 (= lambda!196426 lambda!196424)))

(declare-fun bs!1033901 () Bool)

(assert (= bs!1033901 (and d!1463378 d!1463358)))

(assert (=> bs!1033901 (= lambda!196426 lambda!196420)))

(declare-fun bs!1033903 () Bool)

(assert (= bs!1033903 (and d!1463378 b!4641318)))

(assert (=> bs!1033903 (= lambda!196426 lambda!196294)))

(declare-fun bs!1033904 () Bool)

(assert (= bs!1033904 (and d!1463378 d!1463370)))

(assert (=> bs!1033904 (= lambda!196426 lambda!196422)))

(declare-fun bs!1033906 () Bool)

(assert (= bs!1033906 (and d!1463378 d!1463328)))

(assert (=> bs!1033906 (= lambda!196426 lambda!196410)))

(declare-fun lt!1804837 () ListMap!4461)

(assert (=> d!1463378 (invariantList!1264 (toList!5137 lt!1804837))))

(declare-fun e!2895510 () ListMap!4461)

(assert (=> d!1463378 (= lt!1804837 e!2895510)))

(declare-fun c!794274 () Bool)

(assert (=> d!1463378 (= c!794274 ((_ is Cons!51775) lt!1804345))))

(assert (=> d!1463378 (forall!10948 lt!1804345 lambda!196426)))

(assert (=> d!1463378 (= (extractMap!1652 lt!1804345) lt!1804837)))

(declare-fun b!4641619 () Bool)

(assert (=> b!4641619 (= e!2895510 (addToMapMapFromBucket!1055 (_2!29710 (h!57885 lt!1804345)) (extractMap!1652 (t!358983 lt!1804345))))))

(declare-fun b!4641620 () Bool)

(assert (=> b!4641620 (= e!2895510 (ListMap!4462 Nil!51774))))

(assert (= (and d!1463378 c!794274) b!4641619))

(assert (= (and d!1463378 (not c!794274)) b!4641620))

(declare-fun m!5502283 () Bool)

(assert (=> d!1463378 m!5502283))

(declare-fun m!5502285 () Bool)

(assert (=> d!1463378 m!5502285))

(declare-fun m!5502287 () Bool)

(assert (=> b!4641619 m!5502287))

(assert (=> b!4641619 m!5502287))

(declare-fun m!5502289 () Bool)

(assert (=> b!4641619 m!5502289))

(assert (=> b!4641314 d!1463378))

(declare-fun b!4641621 () Bool)

(declare-fun e!2895512 () List!51898)

(assert (=> b!4641621 (= e!2895512 (t!358982 (t!358982 oldBucket!40)))))

(declare-fun d!1463380 () Bool)

(declare-fun lt!1804838 () List!51898)

(assert (=> d!1463380 (not (containsKey!2634 lt!1804838 key!4968))))

(assert (=> d!1463380 (= lt!1804838 e!2895512)))

(declare-fun c!794276 () Bool)

(assert (=> d!1463380 (= c!794276 (and ((_ is Cons!51774) (t!358982 oldBucket!40)) (= (_1!29709 (h!57884 (t!358982 oldBucket!40))) key!4968)))))

(assert (=> d!1463380 (noDuplicateKeys!1596 (t!358982 oldBucket!40))))

(assert (=> d!1463380 (= (removePairForKey!1219 (t!358982 oldBucket!40) key!4968) lt!1804838)))

(declare-fun b!4641622 () Bool)

(declare-fun e!2895511 () List!51898)

(assert (=> b!4641622 (= e!2895512 e!2895511)))

(declare-fun c!794275 () Bool)

(assert (=> b!4641622 (= c!794275 ((_ is Cons!51774) (t!358982 oldBucket!40)))))

(declare-fun b!4641623 () Bool)

(assert (=> b!4641623 (= e!2895511 (Cons!51774 (h!57884 (t!358982 oldBucket!40)) (removePairForKey!1219 (t!358982 (t!358982 oldBucket!40)) key!4968)))))

(declare-fun b!4641624 () Bool)

(assert (=> b!4641624 (= e!2895511 Nil!51774)))

(assert (= (and d!1463380 c!794276) b!4641621))

(assert (= (and d!1463380 (not c!794276)) b!4641622))

(assert (= (and b!4641622 c!794275) b!4641623))

(assert (= (and b!4641622 (not c!794275)) b!4641624))

(declare-fun m!5502291 () Bool)

(assert (=> d!1463380 m!5502291))

(declare-fun m!5502293 () Bool)

(assert (=> d!1463380 m!5502293))

(declare-fun m!5502295 () Bool)

(assert (=> b!4641623 m!5502295))

(assert (=> b!4641313 d!1463380))

(declare-fun bs!1033919 () Bool)

(declare-fun d!1463382 () Bool)

(assert (= bs!1033919 (and d!1463382 b!4641432)))

(declare-fun lambda!196428 () Int)

(assert (=> bs!1033919 (not (= lambda!196428 lambda!196377))))

(declare-fun bs!1033920 () Bool)

(assert (= bs!1033920 (and d!1463382 b!4641558)))

(assert (=> bs!1033920 (not (= lambda!196428 lambda!196414))))

(declare-fun bs!1033921 () Bool)

(assert (= bs!1033921 (and d!1463382 b!4641442)))

(assert (=> bs!1033921 (not (= lambda!196428 lambda!196386))))

(declare-fun bs!1033922 () Bool)

(assert (= bs!1033922 (and d!1463382 d!1463346)))

(assert (=> bs!1033922 (not (= lambda!196428 lambda!196417))))

(declare-fun bs!1033923 () Bool)

(assert (= bs!1033923 (and d!1463382 b!4641444)))

(assert (=> bs!1033923 (not (= lambda!196428 lambda!196384))))

(declare-fun bs!1033924 () Bool)

(assert (= bs!1033924 (and d!1463382 b!4641506)))

(assert (=> bs!1033924 (not (= lambda!196428 lambda!196398))))

(declare-fun bs!1033925 () Bool)

(assert (= bs!1033925 (and d!1463382 b!4641556)))

(assert (=> bs!1033925 (not (= lambda!196428 lambda!196416))))

(declare-fun bs!1033926 () Bool)

(assert (= bs!1033926 (and d!1463382 d!1463324)))

(assert (=> bs!1033926 (not (= lambda!196428 lambda!196400))))

(declare-fun bs!1033927 () Bool)

(assert (= bs!1033927 (and d!1463382 b!4641425)))

(assert (=> bs!1033927 (not (= lambda!196428 lambda!196372))))

(assert (=> bs!1033921 (not (= lambda!196428 lambda!196387))))

(declare-fun bs!1033928 () Bool)

(assert (= bs!1033928 (and d!1463382 b!4641427)))

(assert (=> bs!1033928 (not (= lambda!196428 lambda!196371))))

(declare-fun bs!1033929 () Bool)

(assert (= bs!1033929 (and d!1463382 b!4641508)))

(assert (=> bs!1033929 (not (= lambda!196428 lambda!196397))))

(assert (=> bs!1033927 (not (= lambda!196428 lambda!196373))))

(declare-fun bs!1033930 () Bool)

(assert (= bs!1033930 (and d!1463382 d!1463252)))

(assert (=> bs!1033930 (not (= lambda!196428 lambda!196374))))

(assert (=> bs!1033924 (not (= lambda!196428 lambda!196399))))

(declare-fun bs!1033931 () Bool)

(assert (= bs!1033931 (and d!1463382 b!4641434)))

(assert (=> bs!1033931 (not (= lambda!196428 lambda!196375))))

(declare-fun bs!1033932 () Bool)

(assert (= bs!1033932 (and d!1463382 d!1463282)))

(assert (=> bs!1033932 (not (= lambda!196428 lambda!196381))))

(assert (=> bs!1033919 (not (= lambda!196428 lambda!196379))))

(declare-fun bs!1033933 () Bool)

(assert (= bs!1033933 (and d!1463382 d!1463338)))

(assert (=> bs!1033933 (= lambda!196428 lambda!196413)))

(declare-fun bs!1033934 () Bool)

(assert (= bs!1033934 (and d!1463382 d!1463286)))

(assert (=> bs!1033934 (not (= lambda!196428 lambda!196389))))

(assert (=> bs!1033925 (not (= lambda!196428 lambda!196415))))

(assert (=> d!1463382 true))

(assert (=> d!1463382 true))

(assert (=> d!1463382 (= (allKeysSameHash!1450 oldBucket!40 hash!414 hashF!1389) (forall!10947 oldBucket!40 lambda!196428))))

(declare-fun bs!1033935 () Bool)

(assert (= bs!1033935 d!1463382))

(declare-fun m!5502313 () Bool)

(assert (=> bs!1033935 m!5502313))

(assert (=> b!4641315 d!1463382))

(declare-fun d!1463384 () Bool)

(declare-fun res!1949474 () Bool)

(declare-fun e!2895518 () Bool)

(assert (=> d!1463384 (=> res!1949474 e!2895518)))

(assert (=> d!1463384 (= res!1949474 (not ((_ is Cons!51774) oldBucket!40)))))

(assert (=> d!1463384 (= (noDuplicateKeys!1596 oldBucket!40) e!2895518)))

(declare-fun b!4641631 () Bool)

(declare-fun e!2895520 () Bool)

(assert (=> b!4641631 (= e!2895518 e!2895520)))

(declare-fun res!1949475 () Bool)

(assert (=> b!4641631 (=> (not res!1949475) (not e!2895520))))

(assert (=> b!4641631 (= res!1949475 (not (containsKey!2634 (t!358982 oldBucket!40) (_1!29709 (h!57884 oldBucket!40)))))))

(declare-fun b!4641632 () Bool)

(assert (=> b!4641632 (= e!2895520 (noDuplicateKeys!1596 (t!358982 oldBucket!40)))))

(assert (= (and d!1463384 (not res!1949474)) b!4641631))

(assert (= (and b!4641631 res!1949475) b!4641632))

(declare-fun m!5502339 () Bool)

(assert (=> b!4641631 m!5502339))

(assert (=> b!4641632 m!5502293))

(assert (=> start!466720 d!1463384))

(declare-fun d!1463390 () Bool)

(declare-datatypes ((Option!11760 0))(
  ( (None!11759) (Some!11759 (v!45989 List!51898)) )
))
(declare-fun get!17222 (Option!11760) List!51898)

(declare-fun getValueByKey!1562 (List!51899 (_ BitVec 64)) Option!11760)

(assert (=> d!1463390 (= (apply!12229 lt!1804333 lt!1804334) (get!17222 (getValueByKey!1562 (toList!5138 lt!1804333) lt!1804334)))))

(declare-fun bs!1033950 () Bool)

(assert (= bs!1033950 d!1463390))

(declare-fun m!5502361 () Bool)

(assert (=> bs!1033950 m!5502361))

(assert (=> bs!1033950 m!5502361))

(declare-fun m!5502363 () Bool)

(assert (=> bs!1033950 m!5502363))

(assert (=> b!4641318 d!1463390))

(declare-fun d!1463394 () Bool)

(assert (=> d!1463394 (contains!14902 (toList!5138 lt!1804333) (tuple2!52833 lt!1804334 lt!1804341))))

(declare-fun lt!1804852 () Unit!115381)

(declare-fun choose!31788 (ListLongMap!3707 (_ BitVec 64) List!51898) Unit!115381)

(assert (=> d!1463394 (= lt!1804852 (choose!31788 lt!1804333 lt!1804334 lt!1804341))))

(assert (=> d!1463394 (contains!14903 lt!1804333 lt!1804334)))

(assert (=> d!1463394 (= (lemmaGetValueImpliesTupleContained!161 lt!1804333 lt!1804334 lt!1804341) lt!1804852)))

(declare-fun bs!1033955 () Bool)

(assert (= bs!1033955 d!1463394))

(declare-fun m!5502383 () Bool)

(assert (=> bs!1033955 m!5502383))

(declare-fun m!5502385 () Bool)

(assert (=> bs!1033955 m!5502385))

(assert (=> bs!1033955 m!5501557))

(assert (=> b!4641318 d!1463394))

(declare-fun bs!1033957 () Bool)

(declare-fun d!1463404 () Bool)

(assert (= bs!1033957 (and d!1463404 d!1463378)))

(declare-fun lambda!196437 () Int)

(assert (=> bs!1033957 (= lambda!196437 lambda!196426)))

(declare-fun bs!1033958 () Bool)

(assert (= bs!1033958 (and d!1463404 d!1463314)))

(assert (=> bs!1033958 (= lambda!196437 lambda!196396)))

(declare-fun bs!1033959 () Bool)

(assert (= bs!1033959 (and d!1463404 d!1463306)))

(assert (=> bs!1033959 (= lambda!196437 lambda!196395)))

(declare-fun bs!1033960 () Bool)

(assert (= bs!1033960 (and d!1463404 d!1463374)))

(assert (=> bs!1033960 (= lambda!196437 lambda!196424)))

(declare-fun bs!1033961 () Bool)

(assert (= bs!1033961 (and d!1463404 d!1463358)))

(assert (=> bs!1033961 (= lambda!196437 lambda!196420)))

(declare-fun bs!1033962 () Bool)

(assert (= bs!1033962 (and d!1463404 b!4641318)))

(assert (=> bs!1033962 (= lambda!196437 lambda!196294)))

(declare-fun bs!1033963 () Bool)

(assert (= bs!1033963 (and d!1463404 d!1463370)))

(assert (=> bs!1033963 (= lambda!196437 lambda!196422)))

(declare-fun bs!1033964 () Bool)

(assert (= bs!1033964 (and d!1463404 d!1463328)))

(assert (=> bs!1033964 (= lambda!196437 lambda!196410)))

(declare-fun b!4641666 () Bool)

(declare-fun res!1949490 () Bool)

(declare-fun e!2895539 () Bool)

(assert (=> b!4641666 (=> (not res!1949490) (not e!2895539))))

(assert (=> b!4641666 (= res!1949490 (contains!14901 (extractMap!1652 (toList!5138 lt!1804333)) key!4968))))

(assert (=> d!1463404 e!2895539))

(declare-fun res!1949489 () Bool)

(assert (=> d!1463404 (=> (not res!1949489) (not e!2895539))))

(assert (=> d!1463404 (= res!1949489 (forall!10948 (toList!5138 lt!1804333) lambda!196437))))

(declare-fun lt!1804872 () Unit!115381)

(declare-fun choose!31789 (ListLongMap!3707 K!13140 Hashable!5993) Unit!115381)

(assert (=> d!1463404 (= lt!1804872 (choose!31789 lt!1804333 key!4968 hashF!1389))))

(assert (=> d!1463404 (forall!10948 (toList!5138 lt!1804333) lambda!196437)))

(assert (=> d!1463404 (= (lemmaInGenMapThenGetPairDefined!152 lt!1804333 key!4968 hashF!1389) lt!1804872)))

(declare-fun e!2895540 () Bool)

(declare-fun lt!1804876 () (_ BitVec 64))

(declare-fun b!4641668 () Bool)

(declare-fun lt!1804875 () List!51898)

(assert (=> b!4641668 (= e!2895540 (= (getValueByKey!1562 (toList!5138 lt!1804333) lt!1804876) (Some!11759 lt!1804875)))))

(declare-fun b!4641665 () Bool)

(declare-fun res!1949491 () Bool)

(assert (=> b!4641665 (=> (not res!1949491) (not e!2895539))))

(declare-fun allKeysSameHashInMap!1580 (ListLongMap!3707 Hashable!5993) Bool)

(assert (=> b!4641665 (= res!1949491 (allKeysSameHashInMap!1580 lt!1804333 hashF!1389))))

(declare-fun b!4641667 () Bool)

(assert (=> b!4641667 (= e!2895539 (isDefined!9021 (getPair!356 (apply!12229 lt!1804333 (hash!3689 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1804873 () Unit!115381)

(assert (=> b!4641667 (= lt!1804873 (forallContained!3168 (toList!5138 lt!1804333) lambda!196437 (tuple2!52833 (hash!3689 hashF!1389 key!4968) (apply!12229 lt!1804333 (hash!3689 hashF!1389 key!4968)))))))

(declare-fun lt!1804871 () Unit!115381)

(declare-fun lt!1804874 () Unit!115381)

(assert (=> b!4641667 (= lt!1804871 lt!1804874)))

(assert (=> b!4641667 (contains!14902 (toList!5138 lt!1804333) (tuple2!52833 lt!1804876 lt!1804875))))

(assert (=> b!4641667 (= lt!1804874 (lemmaGetValueImpliesTupleContained!161 lt!1804333 lt!1804876 lt!1804875))))

(assert (=> b!4641667 e!2895540))

(declare-fun res!1949492 () Bool)

(assert (=> b!4641667 (=> (not res!1949492) (not e!2895540))))

(assert (=> b!4641667 (= res!1949492 (contains!14903 lt!1804333 lt!1804876))))

(assert (=> b!4641667 (= lt!1804875 (apply!12229 lt!1804333 (hash!3689 hashF!1389 key!4968)))))

(assert (=> b!4641667 (= lt!1804876 (hash!3689 hashF!1389 key!4968))))

(declare-fun lt!1804870 () Unit!115381)

(declare-fun lt!1804869 () Unit!115381)

(assert (=> b!4641667 (= lt!1804870 lt!1804869)))

(assert (=> b!4641667 (contains!14903 lt!1804333 (hash!3689 hashF!1389 key!4968))))

(assert (=> b!4641667 (= lt!1804869 (lemmaInGenMapThenLongMapContainsHash!562 lt!1804333 key!4968 hashF!1389))))

(assert (= (and d!1463404 res!1949489) b!4641665))

(assert (= (and b!4641665 res!1949491) b!4641666))

(assert (= (and b!4641666 res!1949490) b!4641667))

(assert (= (and b!4641667 res!1949492) b!4641668))

(declare-fun m!5502389 () Bool)

(assert (=> b!4641668 m!5502389))

(assert (=> b!4641667 m!5501559))

(declare-fun m!5502391 () Bool)

(assert (=> b!4641667 m!5502391))

(declare-fun m!5502393 () Bool)

(assert (=> b!4641667 m!5502393))

(declare-fun m!5502395 () Bool)

(assert (=> b!4641667 m!5502395))

(declare-fun m!5502397 () Bool)

(assert (=> b!4641667 m!5502397))

(declare-fun m!5502399 () Bool)

(assert (=> b!4641667 m!5502399))

(assert (=> b!4641667 m!5501533))

(assert (=> b!4641667 m!5501533))

(declare-fun m!5502401 () Bool)

(assert (=> b!4641667 m!5502401))

(assert (=> b!4641667 m!5501533))

(declare-fun m!5502403 () Bool)

(assert (=> b!4641667 m!5502403))

(assert (=> b!4641667 m!5502401))

(assert (=> b!4641667 m!5502397))

(declare-fun m!5502405 () Bool)

(assert (=> b!4641667 m!5502405))

(declare-fun m!5502407 () Bool)

(assert (=> b!4641666 m!5502407))

(assert (=> b!4641666 m!5502407))

(declare-fun m!5502409 () Bool)

(assert (=> b!4641666 m!5502409))

(declare-fun m!5502411 () Bool)

(assert (=> d!1463404 m!5502411))

(declare-fun m!5502413 () Bool)

(assert (=> d!1463404 m!5502413))

(assert (=> d!1463404 m!5502411))

(declare-fun m!5502415 () Bool)

(assert (=> b!4641665 m!5502415))

(assert (=> b!4641318 d!1463404))

(declare-fun d!1463406 () Bool)

(assert (=> d!1463406 (containsKey!2634 oldBucket!40 key!4968)))

(declare-fun lt!1804879 () Unit!115381)

(declare-fun choose!31790 (List!51898 K!13140 Hashable!5993) Unit!115381)

(assert (=> d!1463406 (= lt!1804879 (choose!31790 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1463406 (noDuplicateKeys!1596 oldBucket!40)))

(assert (=> d!1463406 (= (lemmaGetPairDefinedThenContainsKey!110 oldBucket!40 key!4968 hashF!1389) lt!1804879)))

(declare-fun bs!1033965 () Bool)

(assert (= bs!1033965 d!1463406))

(assert (=> bs!1033965 m!5501553))

(declare-fun m!5502417 () Bool)

(assert (=> bs!1033965 m!5502417))

(assert (=> bs!1033965 m!5501537))

(assert (=> b!4641318 d!1463406))

(declare-fun bs!1033966 () Bool)

(declare-fun d!1463408 () Bool)

(assert (= bs!1033966 (and d!1463408 d!1463378)))

(declare-fun lambda!196440 () Int)

(assert (=> bs!1033966 (= lambda!196440 lambda!196426)))

(declare-fun bs!1033967 () Bool)

(assert (= bs!1033967 (and d!1463408 d!1463314)))

(assert (=> bs!1033967 (= lambda!196440 lambda!196396)))

(declare-fun bs!1033968 () Bool)

(assert (= bs!1033968 (and d!1463408 d!1463306)))

(assert (=> bs!1033968 (= lambda!196440 lambda!196395)))

(declare-fun bs!1033969 () Bool)

(assert (= bs!1033969 (and d!1463408 d!1463374)))

(assert (=> bs!1033969 (= lambda!196440 lambda!196424)))

(declare-fun bs!1033970 () Bool)

(assert (= bs!1033970 (and d!1463408 d!1463358)))

(assert (=> bs!1033970 (= lambda!196440 lambda!196420)))

(declare-fun bs!1033971 () Bool)

(assert (= bs!1033971 (and d!1463408 b!4641318)))

(assert (=> bs!1033971 (= lambda!196440 lambda!196294)))

(declare-fun bs!1033972 () Bool)

(assert (= bs!1033972 (and d!1463408 d!1463404)))

(assert (=> bs!1033972 (= lambda!196440 lambda!196437)))

(declare-fun bs!1033973 () Bool)

(assert (= bs!1033973 (and d!1463408 d!1463370)))

(assert (=> bs!1033973 (= lambda!196440 lambda!196422)))

(declare-fun bs!1033974 () Bool)

(assert (= bs!1033974 (and d!1463408 d!1463328)))

(assert (=> bs!1033974 (= lambda!196440 lambda!196410)))

(assert (=> d!1463408 (contains!14903 lt!1804333 (hash!3689 hashF!1389 key!4968))))

(declare-fun lt!1804882 () Unit!115381)

(declare-fun choose!31791 (ListLongMap!3707 K!13140 Hashable!5993) Unit!115381)

(assert (=> d!1463408 (= lt!1804882 (choose!31791 lt!1804333 key!4968 hashF!1389))))

(assert (=> d!1463408 (forall!10948 (toList!5138 lt!1804333) lambda!196440)))

(assert (=> d!1463408 (= (lemmaInGenMapThenLongMapContainsHash!562 lt!1804333 key!4968 hashF!1389) lt!1804882)))

(declare-fun bs!1033975 () Bool)

(assert (= bs!1033975 d!1463408))

(assert (=> bs!1033975 m!5501533))

(assert (=> bs!1033975 m!5501533))

(assert (=> bs!1033975 m!5502403))

(declare-fun m!5502419 () Bool)

(assert (=> bs!1033975 m!5502419))

(declare-fun m!5502421 () Bool)

(assert (=> bs!1033975 m!5502421))

(assert (=> b!4641318 d!1463408))

(declare-fun b!4641685 () Bool)

(declare-fun e!2895555 () Bool)

(declare-fun lt!1804885 () Option!11756)

(declare-fun get!17223 (Option!11756) tuple2!52830)

(assert (=> b!4641685 (= e!2895555 (contains!14906 lt!1804341 (get!17223 lt!1804885)))))

(declare-fun b!4641686 () Bool)

(declare-fun res!1949503 () Bool)

(assert (=> b!4641686 (=> (not res!1949503) (not e!2895555))))

(assert (=> b!4641686 (= res!1949503 (= (_1!29709 (get!17223 lt!1804885)) key!4968))))

(declare-fun b!4641687 () Bool)

(declare-fun e!2895552 () Bool)

(assert (=> b!4641687 (= e!2895552 e!2895555)))

(declare-fun res!1949501 () Bool)

(assert (=> b!4641687 (=> (not res!1949501) (not e!2895555))))

(assert (=> b!4641687 (= res!1949501 (isDefined!9021 lt!1804885))))

(declare-fun d!1463410 () Bool)

(assert (=> d!1463410 e!2895552))

(declare-fun res!1949504 () Bool)

(assert (=> d!1463410 (=> res!1949504 e!2895552)))

(declare-fun e!2895554 () Bool)

(assert (=> d!1463410 (= res!1949504 e!2895554)))

(declare-fun res!1949502 () Bool)

(assert (=> d!1463410 (=> (not res!1949502) (not e!2895554))))

(declare-fun isEmpty!28980 (Option!11756) Bool)

(assert (=> d!1463410 (= res!1949502 (isEmpty!28980 lt!1804885))))

(declare-fun e!2895553 () Option!11756)

(assert (=> d!1463410 (= lt!1804885 e!2895553)))

(declare-fun c!794288 () Bool)

(assert (=> d!1463410 (= c!794288 (and ((_ is Cons!51774) lt!1804341) (= (_1!29709 (h!57884 lt!1804341)) key!4968)))))

(assert (=> d!1463410 (noDuplicateKeys!1596 lt!1804341)))

(assert (=> d!1463410 (= (getPair!356 lt!1804341 key!4968) lt!1804885)))

(declare-fun b!4641688 () Bool)

(assert (=> b!4641688 (= e!2895554 (not (containsKey!2634 lt!1804341 key!4968)))))

(declare-fun b!4641689 () Bool)

(declare-fun e!2895551 () Option!11756)

(assert (=> b!4641689 (= e!2895551 (getPair!356 (t!358982 lt!1804341) key!4968))))

(declare-fun b!4641690 () Bool)

(assert (=> b!4641690 (= e!2895553 e!2895551)))

(declare-fun c!794289 () Bool)

(assert (=> b!4641690 (= c!794289 ((_ is Cons!51774) lt!1804341))))

(declare-fun b!4641691 () Bool)

(assert (=> b!4641691 (= e!2895553 (Some!11755 (h!57884 lt!1804341)))))

(declare-fun b!4641692 () Bool)

(assert (=> b!4641692 (= e!2895551 None!11755)))

(assert (= (and d!1463410 c!794288) b!4641691))

(assert (= (and d!1463410 (not c!794288)) b!4641690))

(assert (= (and b!4641690 c!794289) b!4641689))

(assert (= (and b!4641690 (not c!794289)) b!4641692))

(assert (= (and d!1463410 res!1949502) b!4641688))

(assert (= (and d!1463410 (not res!1949504)) b!4641687))

(assert (= (and b!4641687 res!1949501) b!4641686))

(assert (= (and b!4641686 res!1949503) b!4641685))

(declare-fun m!5502423 () Bool)

(assert (=> b!4641685 m!5502423))

(assert (=> b!4641685 m!5502423))

(declare-fun m!5502425 () Bool)

(assert (=> b!4641685 m!5502425))

(declare-fun m!5502427 () Bool)

(assert (=> b!4641689 m!5502427))

(declare-fun m!5502429 () Bool)

(assert (=> b!4641687 m!5502429))

(declare-fun m!5502431 () Bool)

(assert (=> d!1463410 m!5502431))

(declare-fun m!5502433 () Bool)

(assert (=> d!1463410 m!5502433))

(assert (=> b!4641686 m!5502423))

(declare-fun m!5502435 () Bool)

(assert (=> b!4641688 m!5502435))

(assert (=> b!4641318 d!1463410))

(declare-fun d!1463412 () Bool)

(declare-fun res!1949509 () Bool)

(declare-fun e!2895560 () Bool)

(assert (=> d!1463412 (=> res!1949509 e!2895560)))

(assert (=> d!1463412 (= res!1949509 (and ((_ is Cons!51774) (t!358982 oldBucket!40)) (= (_1!29709 (h!57884 (t!358982 oldBucket!40))) key!4968)))))

(assert (=> d!1463412 (= (containsKey!2634 (t!358982 oldBucket!40) key!4968) e!2895560)))

(declare-fun b!4641697 () Bool)

(declare-fun e!2895561 () Bool)

(assert (=> b!4641697 (= e!2895560 e!2895561)))

(declare-fun res!1949510 () Bool)

(assert (=> b!4641697 (=> (not res!1949510) (not e!2895561))))

(assert (=> b!4641697 (= res!1949510 ((_ is Cons!51774) (t!358982 oldBucket!40)))))

(declare-fun b!4641698 () Bool)

(assert (=> b!4641698 (= e!2895561 (containsKey!2634 (t!358982 (t!358982 oldBucket!40)) key!4968))))

(assert (= (and d!1463412 (not res!1949509)) b!4641697))

(assert (= (and b!4641697 res!1949510) b!4641698))

(declare-fun m!5502437 () Bool)

(assert (=> b!4641698 m!5502437))

(assert (=> b!4641318 d!1463412))

(declare-fun d!1463414 () Bool)

(assert (=> d!1463414 (= (isDefined!9021 (getPair!356 lt!1804341 key!4968)) (not (isEmpty!28980 (getPair!356 lt!1804341 key!4968))))))

(declare-fun bs!1033976 () Bool)

(assert (= bs!1033976 d!1463414))

(assert (=> bs!1033976 m!5501549))

(declare-fun m!5502439 () Bool)

(assert (=> bs!1033976 m!5502439))

(assert (=> b!4641318 d!1463414))

(declare-fun d!1463416 () Bool)

(declare-fun res!1949511 () Bool)

(declare-fun e!2895562 () Bool)

(assert (=> d!1463416 (=> res!1949511 e!2895562)))

(assert (=> d!1463416 (= res!1949511 (and ((_ is Cons!51774) oldBucket!40) (= (_1!29709 (h!57884 oldBucket!40)) key!4968)))))

(assert (=> d!1463416 (= (containsKey!2634 oldBucket!40 key!4968) e!2895562)))

(declare-fun b!4641699 () Bool)

(declare-fun e!2895563 () Bool)

(assert (=> b!4641699 (= e!2895562 e!2895563)))

(declare-fun res!1949512 () Bool)

(assert (=> b!4641699 (=> (not res!1949512) (not e!2895563))))

(assert (=> b!4641699 (= res!1949512 ((_ is Cons!51774) oldBucket!40))))

(declare-fun b!4641700 () Bool)

(assert (=> b!4641700 (= e!2895563 (containsKey!2634 (t!358982 oldBucket!40) key!4968))))

(assert (= (and d!1463416 (not res!1949511)) b!4641699))

(assert (= (and b!4641699 res!1949512) b!4641700))

(assert (=> b!4641700 m!5501561))

(assert (=> b!4641318 d!1463416))

(declare-fun d!1463418 () Bool)

(declare-fun dynLambda!21548 (Int tuple2!52832) Bool)

(assert (=> d!1463418 (dynLambda!21548 lambda!196294 lt!1804349)))

(declare-fun lt!1804888 () Unit!115381)

(declare-fun choose!31792 (List!51899 Int tuple2!52832) Unit!115381)

(assert (=> d!1463418 (= lt!1804888 (choose!31792 lt!1804345 lambda!196294 lt!1804349))))

(declare-fun e!2895566 () Bool)

(assert (=> d!1463418 e!2895566))

(declare-fun res!1949515 () Bool)

(assert (=> d!1463418 (=> (not res!1949515) (not e!2895566))))

(assert (=> d!1463418 (= res!1949515 (forall!10948 lt!1804345 lambda!196294))))

(assert (=> d!1463418 (= (forallContained!3168 lt!1804345 lambda!196294 lt!1804349) lt!1804888)))

(declare-fun b!4641703 () Bool)

(assert (=> b!4641703 (= e!2895566 (contains!14902 lt!1804345 lt!1804349))))

(assert (= (and d!1463418 res!1949515) b!4641703))

(declare-fun b_lambda!171073 () Bool)

(assert (=> (not b_lambda!171073) (not d!1463418)))

(declare-fun m!5502441 () Bool)

(assert (=> d!1463418 m!5502441))

(declare-fun m!5502443 () Bool)

(assert (=> d!1463418 m!5502443))

(declare-fun m!5502445 () Bool)

(assert (=> d!1463418 m!5502445))

(assert (=> b!4641703 m!5501565))

(assert (=> b!4641318 d!1463418))

(declare-fun d!1463420 () Bool)

(declare-fun e!2895572 () Bool)

(assert (=> d!1463420 e!2895572))

(declare-fun res!1949518 () Bool)

(assert (=> d!1463420 (=> res!1949518 e!2895572)))

(declare-fun lt!1804899 () Bool)

(assert (=> d!1463420 (= res!1949518 (not lt!1804899))))

(declare-fun lt!1804898 () Bool)

(assert (=> d!1463420 (= lt!1804899 lt!1804898)))

(declare-fun lt!1804900 () Unit!115381)

(declare-fun e!2895571 () Unit!115381)

(assert (=> d!1463420 (= lt!1804900 e!2895571)))

(declare-fun c!794292 () Bool)

(assert (=> d!1463420 (= c!794292 lt!1804898)))

(declare-fun containsKey!2638 (List!51899 (_ BitVec 64)) Bool)

(assert (=> d!1463420 (= lt!1804898 (containsKey!2638 (toList!5138 lt!1804333) lt!1804334))))

(assert (=> d!1463420 (= (contains!14903 lt!1804333 lt!1804334) lt!1804899)))

(declare-fun b!4641710 () Bool)

(declare-fun lt!1804897 () Unit!115381)

(assert (=> b!4641710 (= e!2895571 lt!1804897)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1464 (List!51899 (_ BitVec 64)) Unit!115381)

(assert (=> b!4641710 (= lt!1804897 (lemmaContainsKeyImpliesGetValueByKeyDefined!1464 (toList!5138 lt!1804333) lt!1804334))))

(declare-fun isDefined!9025 (Option!11760) Bool)

(assert (=> b!4641710 (isDefined!9025 (getValueByKey!1562 (toList!5138 lt!1804333) lt!1804334))))

(declare-fun b!4641711 () Bool)

(declare-fun Unit!115502 () Unit!115381)

(assert (=> b!4641711 (= e!2895571 Unit!115502)))

(declare-fun b!4641712 () Bool)

(assert (=> b!4641712 (= e!2895572 (isDefined!9025 (getValueByKey!1562 (toList!5138 lt!1804333) lt!1804334)))))

(assert (= (and d!1463420 c!794292) b!4641710))

(assert (= (and d!1463420 (not c!794292)) b!4641711))

(assert (= (and d!1463420 (not res!1949518)) b!4641712))

(declare-fun m!5502447 () Bool)

(assert (=> d!1463420 m!5502447))

(declare-fun m!5502449 () Bool)

(assert (=> b!4641710 m!5502449))

(assert (=> b!4641710 m!5502361))

(assert (=> b!4641710 m!5502361))

(declare-fun m!5502451 () Bool)

(assert (=> b!4641710 m!5502451))

(assert (=> b!4641712 m!5502361))

(assert (=> b!4641712 m!5502361))

(assert (=> b!4641712 m!5502451))

(assert (=> b!4641318 d!1463420))

(declare-fun d!1463422 () Bool)

(declare-fun lt!1804903 () Bool)

(declare-fun content!8943 (List!51899) (InoxSet tuple2!52832))

(assert (=> d!1463422 (= lt!1804903 (select (content!8943 lt!1804345) lt!1804349))))

(declare-fun e!2895577 () Bool)

(assert (=> d!1463422 (= lt!1804903 e!2895577)))

(declare-fun res!1949524 () Bool)

(assert (=> d!1463422 (=> (not res!1949524) (not e!2895577))))

(assert (=> d!1463422 (= res!1949524 ((_ is Cons!51775) lt!1804345))))

(assert (=> d!1463422 (= (contains!14902 lt!1804345 lt!1804349) lt!1804903)))

(declare-fun b!4641717 () Bool)

(declare-fun e!2895578 () Bool)

(assert (=> b!4641717 (= e!2895577 e!2895578)))

(declare-fun res!1949523 () Bool)

(assert (=> b!4641717 (=> res!1949523 e!2895578)))

(assert (=> b!4641717 (= res!1949523 (= (h!57885 lt!1804345) lt!1804349))))

(declare-fun b!4641718 () Bool)

(assert (=> b!4641718 (= e!2895578 (contains!14902 (t!358983 lt!1804345) lt!1804349))))

(assert (= (and d!1463422 res!1949524) b!4641717))

(assert (= (and b!4641717 (not res!1949523)) b!4641718))

(declare-fun m!5502453 () Bool)

(assert (=> d!1463422 m!5502453))

(declare-fun m!5502455 () Bool)

(assert (=> d!1463422 m!5502455))

(declare-fun m!5502457 () Bool)

(assert (=> b!4641718 m!5502457))

(assert (=> b!4641318 d!1463422))

(declare-fun d!1463424 () Bool)

(declare-fun res!1949525 () Bool)

(declare-fun e!2895579 () Bool)

(assert (=> d!1463424 (=> res!1949525 e!2895579)))

(assert (=> d!1463424 (= res!1949525 (not ((_ is Cons!51774) newBucket!224)))))

(assert (=> d!1463424 (= (noDuplicateKeys!1596 newBucket!224) e!2895579)))

(declare-fun b!4641719 () Bool)

(declare-fun e!2895580 () Bool)

(assert (=> b!4641719 (= e!2895579 e!2895580)))

(declare-fun res!1949526 () Bool)

(assert (=> b!4641719 (=> (not res!1949526) (not e!2895580))))

(assert (=> b!4641719 (= res!1949526 (not (containsKey!2634 (t!358982 newBucket!224) (_1!29709 (h!57884 newBucket!224)))))))

(declare-fun b!4641720 () Bool)

(assert (=> b!4641720 (= e!2895580 (noDuplicateKeys!1596 (t!358982 newBucket!224)))))

(assert (= (and d!1463424 (not res!1949525)) b!4641719))

(assert (= (and b!4641719 res!1949526) b!4641720))

(declare-fun m!5502459 () Bool)

(assert (=> b!4641719 m!5502459))

(declare-fun m!5502461 () Bool)

(assert (=> b!4641720 m!5502461))

(assert (=> b!4641317 d!1463424))

(declare-fun e!2895583 () Bool)

(declare-fun b!4641725 () Bool)

(declare-fun tp!1342894 () Bool)

(assert (=> b!4641725 (= e!2895583 (and tp_is_empty!29677 tp_is_empty!29679 tp!1342894))))

(assert (=> b!4641319 (= tp!1342887 e!2895583)))

(assert (= (and b!4641319 ((_ is Cons!51774) (t!358982 newBucket!224))) b!4641725))

(declare-fun b!4641726 () Bool)

(declare-fun e!2895584 () Bool)

(declare-fun tp!1342895 () Bool)

(assert (=> b!4641726 (= e!2895584 (and tp_is_empty!29677 tp_is_empty!29679 tp!1342895))))

(assert (=> b!4641321 (= tp!1342886 e!2895584)))

(assert (= (and b!4641321 ((_ is Cons!51774) (t!358982 oldBucket!40))) b!4641726))

(declare-fun b_lambda!171075 () Bool)

(assert (= b_lambda!171073 (or b!4641318 b_lambda!171075)))

(declare-fun bs!1033977 () Bool)

(declare-fun d!1463426 () Bool)

(assert (= bs!1033977 (and d!1463426 b!4641318)))

(assert (=> bs!1033977 (= (dynLambda!21548 lambda!196294 lt!1804349) (noDuplicateKeys!1596 (_2!29710 lt!1804349)))))

(declare-fun m!5502463 () Bool)

(assert (=> bs!1033977 m!5502463))

(assert (=> d!1463418 d!1463426))

(check-sat (not b!4641687) (not b!4641426) (not d!1463362) (not d!1463320) (not b!4641613) (not b!4641502) (not b!4641685) (not bm!324014) (not d!1463378) (not b!4641719) (not b!4641545) (not d!1463358) (not b!4641503) (not b!4641617) (not bs!1033977) (not bm!324027) (not b!4641718) (not b!4641423) (not bm!324015) (not bm!324028) (not b!4641700) (not b!4641556) (not b!4641668) (not d!1463346) (not d!1463282) (not b!4641616) (not d!1463414) (not d!1463380) (not b!4641430) (not b!4641611) (not b!4641614) (not b!4641698) (not b!4641619) (not b!4641501) (not bm!324037) (not b!4641667) (not d!1463314) (not b!4641431) (not d!1463316) (not d!1463302) (not b!4641497) (not b!4641688) (not bm!324022) (not d!1463390) (not b!4641612) (not bm!324013) (not b!4641703) (not b!4641432) (not b!4641623) (not b!4641686) (not d!1463372) (not b!4641726) (not d!1463252) (not d!1463406) (not d!1463410) (not b!4641499) (not d!1463326) (not b!4641607) (not d!1463328) (not b!4641504) (not d!1463374) (not b!4641346) tp_is_empty!29679 (not b!4641440) (not d!1463336) (not b!4641473) (not b!4641720) (not b!4641343) (not d!1463338) (not b!4641433) (not b!4641345) (not b!4641496) (not d!1463376) (not d!1463246) (not d!1463300) (not b!4641505) (not bm!324016) (not b!4641425) (not b!4641506) (not d!1463420) (not d!1463318) (not b!4641557) (not b!4641555) (not bm!324033) (not b!4641441) (not b!4641631) (not d!1463370) (not bm!324030) (not b!4641344) (not b!4641457) (not bm!324023) (not d!1463368) (not b_lambda!171075) (not b!4641665) (not b!4641712) (not d!1463306) (not bm!324032) (not b!4641608) (not b!4641689) (not d!1463422) (not bm!324031) (not b!4641554) (not d!1463408) (not bm!324017) (not b!4641602) (not d!1463236) tp_is_empty!29677 (not b!4641443) (not b!4641593) (not bm!324024) (not bm!324029) (not d!1463324) (not b!4641424) (not d!1463418) (not b!4641606) (not b!4641618) (not d!1463382) (not d!1463404) (not d!1463290) (not b!4641475) (not b!4641442) (not b!4641725) (not b!4641632) (not b!4641710) (not bm!324018) (not b!4641498) (not d!1463286) (not d!1463394) (not b!4641666) (not b!4641507) (not b!4641604) (not b!4641458) (not d!1463232))
(check-sat)
