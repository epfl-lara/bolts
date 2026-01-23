; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!480568 () Bool)

(assert start!480568)

(declare-fun b!4721311 () Bool)

(declare-fun e!2944457 () Bool)

(declare-fun tp!1348358 () Bool)

(assert (=> b!4721311 (= e!2944457 tp!1348358)))

(declare-fun b!4721312 () Bool)

(declare-fun res!1997281 () Bool)

(declare-fun e!2944458 () Bool)

(assert (=> b!4721312 (=> (not res!1997281) (not e!2944458))))

(declare-datatypes ((K!14180 0))(
  ( (K!14181 (val!19615 Int)) )
))
(declare-fun key!4653 () K!14180)

(declare-datatypes ((V!14426 0))(
  ( (V!14427 (val!19616 Int)) )
))
(declare-datatypes ((tuple2!54442 0))(
  ( (tuple2!54443 (_1!30515 K!14180) (_2!30515 V!14426)) )
))
(declare-datatypes ((List!52948 0))(
  ( (Nil!52824) (Cons!52824 (h!59169 tuple2!54442) (t!360210 List!52948)) )
))
(declare-fun newBucket!218 () List!52948)

(declare-fun oldBucket!34 () List!52948)

(declare-fun removePairForKey!1607 (List!52948 K!14180) List!52948)

(assert (=> b!4721312 (= res!1997281 (= (removePairForKey!1607 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4721313 () Bool)

(declare-fun res!1997287 () Bool)

(declare-fun e!2944462 () Bool)

(assert (=> b!4721313 (=> res!1997287 e!2944462)))

(declare-datatypes ((ListMap!5277 0))(
  ( (ListMap!5278 (toList!5913 List!52948)) )
))
(declare-fun lt!1886431 () ListMap!5277)

(declare-fun lt!1886430 () ListMap!5277)

(assert (=> b!4721313 (= res!1997287 (not (= lt!1886431 lt!1886430)))))

(declare-fun b!4721314 () Bool)

(declare-fun res!1997282 () Bool)

(declare-fun e!2944463 () Bool)

(assert (=> b!4721314 (=> (not res!1997282) (not e!2944463))))

(declare-datatypes ((Hashable!6381 0))(
  ( (HashableExt!6380 (__x!32084 Int)) )
))
(declare-fun hashF!1323 () Hashable!6381)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4380 (Hashable!6381 K!14180) (_ BitVec 64))

(assert (=> b!4721314 (= res!1997282 (= (hash!4380 hashF!1323 key!4653) hash!405))))

(declare-fun b!4721315 () Bool)

(declare-fun res!1997285 () Bool)

(assert (=> b!4721315 (=> (not res!1997285) (not e!2944458))))

(declare-fun noDuplicateKeys!2012 (List!52948) Bool)

(assert (=> b!4721315 (= res!1997285 (noDuplicateKeys!2012 newBucket!218))))

(declare-fun tp!1348357 () Bool)

(declare-fun tp_is_empty!31341 () Bool)

(declare-fun tp_is_empty!31343 () Bool)

(declare-fun e!2944460 () Bool)

(declare-fun b!4721316 () Bool)

(assert (=> b!4721316 (= e!2944460 (and tp_is_empty!31341 tp_is_empty!31343 tp!1348357))))

(declare-fun b!4721317 () Bool)

(declare-fun res!1997284 () Bool)

(assert (=> b!4721317 (=> res!1997284 e!2944462)))

(declare-fun lt!1886428 () List!52948)

(declare-fun containsKey!3365 (List!52948 K!14180) Bool)

(assert (=> b!4721317 (= res!1997284 (containsKey!3365 lt!1886428 key!4653))))

(declare-fun b!4721318 () Bool)

(declare-datatypes ((tuple2!54444 0))(
  ( (tuple2!54445 (_1!30516 (_ BitVec 64)) (_2!30516 List!52948)) )
))
(declare-datatypes ((List!52949 0))(
  ( (Nil!52825) (Cons!52825 (h!59170 tuple2!54444) (t!360211 List!52949)) )
))
(declare-fun lt!1886426 () List!52949)

(declare-datatypes ((ListLongMap!4443 0))(
  ( (ListLongMap!4444 (toList!5914 List!52949)) )
))
(declare-fun allKeysSameHashInMap!1926 (ListLongMap!4443 Hashable!6381) Bool)

(assert (=> b!4721318 (= e!2944462 (allKeysSameHashInMap!1926 (ListLongMap!4444 lt!1886426) hashF!1323))))

(declare-fun b!4721319 () Bool)

(declare-fun res!1997279 () Bool)

(assert (=> b!4721319 (=> res!1997279 e!2944462)))

(declare-fun lambda!215278 () Int)

(declare-fun forall!11582 (List!52949 Int) Bool)

(assert (=> b!4721319 (= res!1997279 (not (forall!11582 lt!1886426 lambda!215278)))))

(declare-fun b!4721310 () Bool)

(declare-fun e!2944465 () Bool)

(assert (=> b!4721310 (= e!2944465 e!2944462)))

(declare-fun res!1997286 () Bool)

(assert (=> b!4721310 (=> res!1997286 e!2944462)))

(declare-fun lt!1886424 () ListMap!5277)

(declare-fun eq!1129 (ListMap!5277 ListMap!5277) Bool)

(declare-fun +!2267 (ListMap!5277 tuple2!54442) ListMap!5277)

(declare-fun addToMapMapFromBucket!1442 (List!52948 ListMap!5277) ListMap!5277)

(assert (=> b!4721310 (= res!1997286 (not (eq!1129 (+!2267 lt!1886431 (h!59169 oldBucket!34)) (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424))))))

(declare-fun lt!1886429 () tuple2!54442)

(assert (=> b!4721310 (eq!1129 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424) (+!2267 lt!1886431 lt!1886429))))

(declare-datatypes ((Unit!129750 0))(
  ( (Unit!129751) )
))
(declare-fun lt!1886425 () Unit!129750)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!378 (tuple2!54442 List!52948 ListMap!5277) Unit!129750)

(assert (=> b!4721310 (= lt!1886425 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!378 lt!1886429 lt!1886428 lt!1886424))))

(declare-fun head!10245 (List!52948) tuple2!54442)

(assert (=> b!4721310 (= lt!1886429 (head!10245 oldBucket!34))))

(declare-fun res!1997293 () Bool)

(assert (=> start!480568 (=> (not res!1997293) (not e!2944458))))

(declare-fun lm!2023 () ListLongMap!4443)

(assert (=> start!480568 (= res!1997293 (forall!11582 (toList!5914 lm!2023) lambda!215278))))

(assert (=> start!480568 e!2944458))

(declare-fun inv!68054 (ListLongMap!4443) Bool)

(assert (=> start!480568 (and (inv!68054 lm!2023) e!2944457)))

(assert (=> start!480568 tp_is_empty!31341))

(assert (=> start!480568 e!2944460))

(assert (=> start!480568 true))

(declare-fun e!2944461 () Bool)

(assert (=> start!480568 e!2944461))

(declare-fun b!4721320 () Bool)

(declare-fun res!1997296 () Bool)

(assert (=> b!4721320 (=> (not res!1997296) (not e!2944458))))

(declare-fun allKeysSameHash!1838 (List!52948 (_ BitVec 64) Hashable!6381) Bool)

(assert (=> b!4721320 (= res!1997296 (allKeysSameHash!1838 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4721321 () Bool)

(declare-fun e!2944459 () Bool)

(declare-fun e!2944464 () Bool)

(assert (=> b!4721321 (= e!2944459 e!2944464)))

(declare-fun res!1997295 () Bool)

(assert (=> b!4721321 (=> res!1997295 e!2944464)))

(assert (=> b!4721321 (= res!1997295 (not (= lt!1886428 newBucket!218)))))

(declare-fun tail!8996 (List!52948) List!52948)

(assert (=> b!4721321 (= lt!1886428 (tail!8996 oldBucket!34))))

(declare-fun b!4721322 () Bool)

(declare-fun res!1997283 () Bool)

(assert (=> b!4721322 (=> (not res!1997283) (not e!2944458))))

(assert (=> b!4721322 (= res!1997283 (noDuplicateKeys!2012 oldBucket!34))))

(declare-fun b!4721323 () Bool)

(declare-fun res!1997292 () Bool)

(assert (=> b!4721323 (=> (not res!1997292) (not e!2944463))))

(get-info :version)

(assert (=> b!4721323 (= res!1997292 ((_ is Cons!52825) (toList!5914 lm!2023)))))

(declare-fun b!4721324 () Bool)

(declare-fun res!1997291 () Bool)

(assert (=> b!4721324 (=> (not res!1997291) (not e!2944463))))

(declare-fun head!10246 (List!52949) tuple2!54444)

(assert (=> b!4721324 (= res!1997291 (= (head!10246 (toList!5914 lm!2023)) (tuple2!54445 hash!405 oldBucket!34)))))

(declare-fun b!4721325 () Bool)

(declare-fun tp!1348359 () Bool)

(assert (=> b!4721325 (= e!2944461 (and tp_is_empty!31341 tp_is_empty!31343 tp!1348359))))

(declare-fun b!4721326 () Bool)

(declare-fun res!1997288 () Bool)

(assert (=> b!4721326 (=> (not res!1997288) (not e!2944463))))

(assert (=> b!4721326 (= res!1997288 (allKeysSameHash!1838 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4721327 () Bool)

(declare-fun e!2944466 () Bool)

(assert (=> b!4721327 (= e!2944464 e!2944466)))

(declare-fun res!1997280 () Bool)

(assert (=> b!4721327 (=> res!1997280 e!2944466)))

(declare-fun extractMap!2038 (List!52949) ListMap!5277)

(assert (=> b!4721327 (= res!1997280 (not (= lt!1886430 (extractMap!2038 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))))

(assert (=> b!4721327 (= lt!1886430 (extractMap!2038 lt!1886426))))

(assert (=> b!4721327 (= lt!1886426 (Cons!52825 (tuple2!54445 hash!405 lt!1886428) (t!360211 (toList!5914 lm!2023))))))

(declare-fun b!4721328 () Bool)

(declare-fun res!1997290 () Bool)

(assert (=> b!4721328 (=> (not res!1997290) (not e!2944463))))

(assert (=> b!4721328 (= res!1997290 (allKeysSameHashInMap!1926 lm!2023 hashF!1323))))

(declare-fun b!4721329 () Bool)

(assert (=> b!4721329 (= e!2944463 (not e!2944459))))

(declare-fun res!1997297 () Bool)

(assert (=> b!4721329 (=> res!1997297 e!2944459)))

(assert (=> b!4721329 (= res!1997297 (or (not ((_ is Cons!52824) oldBucket!34)) (not (= (_1!30515 (h!59169 oldBucket!34)) key!4653))))))

(declare-fun lt!1886427 () ListMap!5277)

(assert (=> b!4721329 (= lt!1886427 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (toList!5914 lm!2023))) lt!1886424))))

(assert (=> b!4721329 (= lt!1886424 (extractMap!2038 (t!360211 (toList!5914 lm!2023))))))

(declare-fun tail!8997 (ListLongMap!4443) ListLongMap!4443)

(assert (=> b!4721329 (= (t!360211 (toList!5914 lm!2023)) (toList!5914 (tail!8997 lm!2023)))))

(declare-fun b!4721330 () Bool)

(assert (=> b!4721330 (= e!2944458 e!2944463)))

(declare-fun res!1997289 () Bool)

(assert (=> b!4721330 (=> (not res!1997289) (not e!2944463))))

(declare-fun contains!16168 (ListMap!5277 K!14180) Bool)

(assert (=> b!4721330 (= res!1997289 (contains!16168 lt!1886427 key!4653))))

(assert (=> b!4721330 (= lt!1886427 (extractMap!2038 (toList!5914 lm!2023)))))

(declare-fun b!4721331 () Bool)

(assert (=> b!4721331 (= e!2944466 e!2944465)))

(declare-fun res!1997294 () Bool)

(assert (=> b!4721331 (=> res!1997294 e!2944465)))

(assert (=> b!4721331 (= res!1997294 (not (= lt!1886431 (addToMapMapFromBucket!1442 newBucket!218 lt!1886424))))))

(assert (=> b!4721331 (= lt!1886431 (addToMapMapFromBucket!1442 lt!1886428 lt!1886424))))

(assert (= (and start!480568 res!1997293) b!4721322))

(assert (= (and b!4721322 res!1997283) b!4721315))

(assert (= (and b!4721315 res!1997285) b!4721312))

(assert (= (and b!4721312 res!1997281) b!4721320))

(assert (= (and b!4721320 res!1997296) b!4721330))

(assert (= (and b!4721330 res!1997289) b!4721314))

(assert (= (and b!4721314 res!1997282) b!4721326))

(assert (= (and b!4721326 res!1997288) b!4721328))

(assert (= (and b!4721328 res!1997290) b!4721324))

(assert (= (and b!4721324 res!1997291) b!4721323))

(assert (= (and b!4721323 res!1997292) b!4721329))

(assert (= (and b!4721329 (not res!1997297)) b!4721321))

(assert (= (and b!4721321 (not res!1997295)) b!4721327))

(assert (= (and b!4721327 (not res!1997280)) b!4721331))

(assert (= (and b!4721331 (not res!1997294)) b!4721310))

(assert (= (and b!4721310 (not res!1997286)) b!4721317))

(assert (= (and b!4721317 (not res!1997284)) b!4721313))

(assert (= (and b!4721313 (not res!1997287)) b!4721319))

(assert (= (and b!4721319 (not res!1997279)) b!4721318))

(assert (= start!480568 b!4721311))

(assert (= (and start!480568 ((_ is Cons!52824) oldBucket!34)) b!4721316))

(assert (= (and start!480568 ((_ is Cons!52824) newBucket!218)) b!4721325))

(declare-fun m!5655369 () Bool)

(assert (=> b!4721327 m!5655369))

(declare-fun m!5655371 () Bool)

(assert (=> b!4721327 m!5655371))

(declare-fun m!5655373 () Bool)

(assert (=> start!480568 m!5655373))

(declare-fun m!5655375 () Bool)

(assert (=> start!480568 m!5655375))

(declare-fun m!5655377 () Bool)

(assert (=> b!4721310 m!5655377))

(declare-fun m!5655379 () Bool)

(assert (=> b!4721310 m!5655379))

(declare-fun m!5655381 () Bool)

(assert (=> b!4721310 m!5655381))

(assert (=> b!4721310 m!5655379))

(declare-fun m!5655383 () Bool)

(assert (=> b!4721310 m!5655383))

(declare-fun m!5655385 () Bool)

(assert (=> b!4721310 m!5655385))

(assert (=> b!4721310 m!5655377))

(declare-fun m!5655387 () Bool)

(assert (=> b!4721310 m!5655387))

(declare-fun m!5655389 () Bool)

(assert (=> b!4721310 m!5655389))

(assert (=> b!4721310 m!5655387))

(declare-fun m!5655391 () Bool)

(assert (=> b!4721310 m!5655391))

(assert (=> b!4721310 m!5655389))

(declare-fun m!5655393 () Bool)

(assert (=> b!4721328 m!5655393))

(declare-fun m!5655395 () Bool)

(assert (=> b!4721324 m!5655395))

(declare-fun m!5655397 () Bool)

(assert (=> b!4721318 m!5655397))

(declare-fun m!5655399 () Bool)

(assert (=> b!4721312 m!5655399))

(declare-fun m!5655401 () Bool)

(assert (=> b!4721319 m!5655401))

(declare-fun m!5655403 () Bool)

(assert (=> b!4721315 m!5655403))

(declare-fun m!5655405 () Bool)

(assert (=> b!4721326 m!5655405))

(declare-fun m!5655407 () Bool)

(assert (=> b!4721331 m!5655407))

(declare-fun m!5655409 () Bool)

(assert (=> b!4721331 m!5655409))

(declare-fun m!5655411 () Bool)

(assert (=> b!4721322 m!5655411))

(declare-fun m!5655413 () Bool)

(assert (=> b!4721317 m!5655413))

(declare-fun m!5655415 () Bool)

(assert (=> b!4721321 m!5655415))

(declare-fun m!5655417 () Bool)

(assert (=> b!4721329 m!5655417))

(declare-fun m!5655419 () Bool)

(assert (=> b!4721329 m!5655419))

(declare-fun m!5655421 () Bool)

(assert (=> b!4721329 m!5655421))

(declare-fun m!5655423 () Bool)

(assert (=> b!4721320 m!5655423))

(declare-fun m!5655425 () Bool)

(assert (=> b!4721330 m!5655425))

(declare-fun m!5655427 () Bool)

(assert (=> b!4721330 m!5655427))

(declare-fun m!5655429 () Bool)

(assert (=> b!4721314 m!5655429))

(check-sat (not b!4721330) (not start!480568) (not b!4721315) (not b!4721327) (not b!4721317) (not b!4721320) (not b!4721325) tp_is_empty!31341 tp_is_empty!31343 (not b!4721318) (not b!4721321) (not b!4721319) (not b!4721331) (not b!4721312) (not b!4721329) (not b!4721322) (not b!4721326) (not b!4721311) (not b!4721328) (not b!4721316) (not b!4721324) (not b!4721314) (not b!4721310))
(check-sat)
(get-model)

(declare-fun d!1502932 () Bool)

(declare-fun hash!4381 (Hashable!6381 K!14180) (_ BitVec 64))

(assert (=> d!1502932 (= (hash!4380 hashF!1323 key!4653) (hash!4381 hashF!1323 key!4653))))

(declare-fun bs!1109436 () Bool)

(assert (= bs!1109436 d!1502932))

(declare-fun m!5655431 () Bool)

(assert (=> bs!1109436 m!5655431))

(assert (=> b!4721314 d!1502932))

(declare-fun d!1502934 () Bool)

(declare-fun res!1997302 () Bool)

(declare-fun e!2944471 () Bool)

(assert (=> d!1502934 (=> res!1997302 e!2944471)))

(assert (=> d!1502934 (= res!1997302 (not ((_ is Cons!52824) newBucket!218)))))

(assert (=> d!1502934 (= (noDuplicateKeys!2012 newBucket!218) e!2944471)))

(declare-fun b!4721336 () Bool)

(declare-fun e!2944472 () Bool)

(assert (=> b!4721336 (= e!2944471 e!2944472)))

(declare-fun res!1997303 () Bool)

(assert (=> b!4721336 (=> (not res!1997303) (not e!2944472))))

(assert (=> b!4721336 (= res!1997303 (not (containsKey!3365 (t!360210 newBucket!218) (_1!30515 (h!59169 newBucket!218)))))))

(declare-fun b!4721337 () Bool)

(assert (=> b!4721337 (= e!2944472 (noDuplicateKeys!2012 (t!360210 newBucket!218)))))

(assert (= (and d!1502934 (not res!1997302)) b!4721336))

(assert (= (and b!4721336 res!1997303) b!4721337))

(declare-fun m!5655433 () Bool)

(assert (=> b!4721336 m!5655433))

(declare-fun m!5655435 () Bool)

(assert (=> b!4721337 m!5655435))

(assert (=> b!4721315 d!1502934))

(declare-fun d!1502936 () Bool)

(assert (=> d!1502936 (= (head!10246 (toList!5914 lm!2023)) (h!59170 (toList!5914 lm!2023)))))

(assert (=> b!4721324 d!1502936))

(declare-fun d!1502938 () Bool)

(declare-fun res!1997304 () Bool)

(declare-fun e!2944473 () Bool)

(assert (=> d!1502938 (=> res!1997304 e!2944473)))

(assert (=> d!1502938 (= res!1997304 (not ((_ is Cons!52824) oldBucket!34)))))

(assert (=> d!1502938 (= (noDuplicateKeys!2012 oldBucket!34) e!2944473)))

(declare-fun b!4721338 () Bool)

(declare-fun e!2944474 () Bool)

(assert (=> b!4721338 (= e!2944473 e!2944474)))

(declare-fun res!1997305 () Bool)

(assert (=> b!4721338 (=> (not res!1997305) (not e!2944474))))

(assert (=> b!4721338 (= res!1997305 (not (containsKey!3365 (t!360210 oldBucket!34) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721339 () Bool)

(assert (=> b!4721339 (= e!2944474 (noDuplicateKeys!2012 (t!360210 oldBucket!34)))))

(assert (= (and d!1502938 (not res!1997304)) b!4721338))

(assert (= (and b!4721338 res!1997305) b!4721339))

(declare-fun m!5655437 () Bool)

(assert (=> b!4721338 m!5655437))

(declare-fun m!5655439 () Bool)

(assert (=> b!4721339 m!5655439))

(assert (=> b!4721322 d!1502938))

(declare-fun b!4721348 () Bool)

(declare-fun e!2944479 () List!52948)

(assert (=> b!4721348 (= e!2944479 (t!360210 oldBucket!34))))

(declare-fun b!4721350 () Bool)

(declare-fun e!2944480 () List!52948)

(assert (=> b!4721350 (= e!2944480 (Cons!52824 (h!59169 oldBucket!34) (removePairForKey!1607 (t!360210 oldBucket!34) key!4653)))))

(declare-fun b!4721351 () Bool)

(assert (=> b!4721351 (= e!2944480 Nil!52824)))

(declare-fun d!1502940 () Bool)

(declare-fun lt!1886434 () List!52948)

(assert (=> d!1502940 (not (containsKey!3365 lt!1886434 key!4653))))

(assert (=> d!1502940 (= lt!1886434 e!2944479)))

(declare-fun c!806287 () Bool)

(assert (=> d!1502940 (= c!806287 (and ((_ is Cons!52824) oldBucket!34) (= (_1!30515 (h!59169 oldBucket!34)) key!4653)))))

(assert (=> d!1502940 (noDuplicateKeys!2012 oldBucket!34)))

(assert (=> d!1502940 (= (removePairForKey!1607 oldBucket!34 key!4653) lt!1886434)))

(declare-fun b!4721349 () Bool)

(assert (=> b!4721349 (= e!2944479 e!2944480)))

(declare-fun c!806286 () Bool)

(assert (=> b!4721349 (= c!806286 ((_ is Cons!52824) oldBucket!34))))

(assert (= (and d!1502940 c!806287) b!4721348))

(assert (= (and d!1502940 (not c!806287)) b!4721349))

(assert (= (and b!4721349 c!806286) b!4721350))

(assert (= (and b!4721349 (not c!806286)) b!4721351))

(declare-fun m!5655441 () Bool)

(assert (=> b!4721350 m!5655441))

(declare-fun m!5655443 () Bool)

(assert (=> d!1502940 m!5655443))

(assert (=> d!1502940 m!5655411))

(assert (=> b!4721312 d!1502940))

(declare-fun d!1502942 () Bool)

(declare-fun res!1997310 () Bool)

(declare-fun e!2944485 () Bool)

(assert (=> d!1502942 (=> res!1997310 e!2944485)))

(assert (=> d!1502942 (= res!1997310 ((_ is Nil!52825) (toList!5914 lm!2023)))))

(assert (=> d!1502942 (= (forall!11582 (toList!5914 lm!2023) lambda!215278) e!2944485)))

(declare-fun b!4721356 () Bool)

(declare-fun e!2944486 () Bool)

(assert (=> b!4721356 (= e!2944485 e!2944486)))

(declare-fun res!1997311 () Bool)

(assert (=> b!4721356 (=> (not res!1997311) (not e!2944486))))

(declare-fun dynLambda!21815 (Int tuple2!54444) Bool)

(assert (=> b!4721356 (= res!1997311 (dynLambda!21815 lambda!215278 (h!59170 (toList!5914 lm!2023))))))

(declare-fun b!4721357 () Bool)

(assert (=> b!4721357 (= e!2944486 (forall!11582 (t!360211 (toList!5914 lm!2023)) lambda!215278))))

(assert (= (and d!1502942 (not res!1997310)) b!4721356))

(assert (= (and b!4721356 res!1997311) b!4721357))

(declare-fun b_lambda!178321 () Bool)

(assert (=> (not b_lambda!178321) (not b!4721356)))

(declare-fun m!5655445 () Bool)

(assert (=> b!4721356 m!5655445))

(declare-fun m!5655447 () Bool)

(assert (=> b!4721357 m!5655447))

(assert (=> start!480568 d!1502942))

(declare-fun d!1502944 () Bool)

(declare-fun isStrictlySorted!747 (List!52949) Bool)

(assert (=> d!1502944 (= (inv!68054 lm!2023) (isStrictlySorted!747 (toList!5914 lm!2023)))))

(declare-fun bs!1109437 () Bool)

(assert (= bs!1109437 d!1502944))

(declare-fun m!5655449 () Bool)

(assert (=> bs!1109437 m!5655449))

(assert (=> start!480568 d!1502944))

(declare-fun d!1502946 () Bool)

(assert (=> d!1502946 (= (tail!8996 oldBucket!34) (t!360210 oldBucket!34))))

(assert (=> b!4721321 d!1502946))

(declare-fun d!1502948 () Bool)

(assert (=> d!1502948 (eq!1129 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424) (+!2267 (addToMapMapFromBucket!1442 lt!1886428 lt!1886424) lt!1886429))))

(declare-fun lt!1886437 () Unit!129750)

(declare-fun choose!33303 (tuple2!54442 List!52948 ListMap!5277) Unit!129750)

(assert (=> d!1502948 (= lt!1886437 (choose!33303 lt!1886429 lt!1886428 lt!1886424))))

(assert (=> d!1502948 (noDuplicateKeys!2012 lt!1886428)))

(assert (=> d!1502948 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!378 lt!1886429 lt!1886428 lt!1886424) lt!1886437)))

(declare-fun bs!1109438 () Bool)

(assert (= bs!1109438 d!1502948))

(assert (=> bs!1109438 m!5655409))

(declare-fun m!5655451 () Bool)

(assert (=> bs!1109438 m!5655451))

(declare-fun m!5655453 () Bool)

(assert (=> bs!1109438 m!5655453))

(assert (=> bs!1109438 m!5655377))

(assert (=> bs!1109438 m!5655451))

(declare-fun m!5655455 () Bool)

(assert (=> bs!1109438 m!5655455))

(assert (=> bs!1109438 m!5655409))

(declare-fun m!5655457 () Bool)

(assert (=> bs!1109438 m!5655457))

(assert (=> bs!1109438 m!5655377))

(assert (=> b!4721310 d!1502948))

(declare-fun d!1502950 () Bool)

(assert (=> d!1502950 (= (head!10245 oldBucket!34) (h!59169 oldBucket!34))))

(assert (=> b!4721310 d!1502950))

(declare-fun d!1502952 () Bool)

(declare-fun e!2944489 () Bool)

(assert (=> d!1502952 e!2944489))

(declare-fun res!1997316 () Bool)

(assert (=> d!1502952 (=> (not res!1997316) (not e!2944489))))

(declare-fun lt!1886446 () ListMap!5277)

(assert (=> d!1502952 (= res!1997316 (contains!16168 lt!1886446 (_1!30515 lt!1886429)))))

(declare-fun lt!1886448 () List!52948)

(assert (=> d!1502952 (= lt!1886446 (ListMap!5278 lt!1886448))))

(declare-fun lt!1886449 () Unit!129750)

(declare-fun lt!1886447 () Unit!129750)

(assert (=> d!1502952 (= lt!1886449 lt!1886447)))

(declare-datatypes ((Option!12356 0))(
  ( (None!12355) (Some!12355 (v!46928 V!14426)) )
))
(declare-fun getValueByKey!1952 (List!52948 K!14180) Option!12356)

(assert (=> d!1502952 (= (getValueByKey!1952 lt!1886448 (_1!30515 lt!1886429)) (Some!12355 (_2!30515 lt!1886429)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1083 (List!52948 K!14180 V!14426) Unit!129750)

(assert (=> d!1502952 (= lt!1886447 (lemmaContainsTupThenGetReturnValue!1083 lt!1886448 (_1!30515 lt!1886429) (_2!30515 lt!1886429)))))

(declare-fun insertNoDuplicatedKeys!591 (List!52948 K!14180 V!14426) List!52948)

(assert (=> d!1502952 (= lt!1886448 (insertNoDuplicatedKeys!591 (toList!5913 lt!1886431) (_1!30515 lt!1886429) (_2!30515 lt!1886429)))))

(assert (=> d!1502952 (= (+!2267 lt!1886431 lt!1886429) lt!1886446)))

(declare-fun b!4721362 () Bool)

(declare-fun res!1997317 () Bool)

(assert (=> b!4721362 (=> (not res!1997317) (not e!2944489))))

(assert (=> b!4721362 (= res!1997317 (= (getValueByKey!1952 (toList!5913 lt!1886446) (_1!30515 lt!1886429)) (Some!12355 (_2!30515 lt!1886429))))))

(declare-fun b!4721363 () Bool)

(declare-fun contains!16169 (List!52948 tuple2!54442) Bool)

(assert (=> b!4721363 (= e!2944489 (contains!16169 (toList!5913 lt!1886446) lt!1886429))))

(assert (= (and d!1502952 res!1997316) b!4721362))

(assert (= (and b!4721362 res!1997317) b!4721363))

(declare-fun m!5655459 () Bool)

(assert (=> d!1502952 m!5655459))

(declare-fun m!5655461 () Bool)

(assert (=> d!1502952 m!5655461))

(declare-fun m!5655463 () Bool)

(assert (=> d!1502952 m!5655463))

(declare-fun m!5655465 () Bool)

(assert (=> d!1502952 m!5655465))

(declare-fun m!5655467 () Bool)

(assert (=> b!4721362 m!5655467))

(declare-fun m!5655469 () Bool)

(assert (=> b!4721363 m!5655469))

(assert (=> b!4721310 d!1502952))

(declare-fun d!1502954 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9390 (List!52948) (InoxSet tuple2!54442))

(assert (=> d!1502954 (= (eq!1129 (+!2267 lt!1886431 (h!59169 oldBucket!34)) (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424)) (= (content!9390 (toList!5913 (+!2267 lt!1886431 (h!59169 oldBucket!34)))) (content!9390 (toList!5913 (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424)))))))

(declare-fun bs!1109439 () Bool)

(assert (= bs!1109439 d!1502954))

(declare-fun m!5655471 () Bool)

(assert (=> bs!1109439 m!5655471))

(declare-fun m!5655473 () Bool)

(assert (=> bs!1109439 m!5655473))

(assert (=> b!4721310 d!1502954))

(declare-fun b!4721424 () Bool)

(assert (=> b!4721424 true))

(declare-fun bs!1109455 () Bool)

(declare-fun b!4721423 () Bool)

(assert (= bs!1109455 (and b!4721423 b!4721424)))

(declare-fun lambda!215344 () Int)

(declare-fun lambda!215343 () Int)

(assert (=> bs!1109455 (= lambda!215344 lambda!215343)))

(assert (=> b!4721423 true))

(declare-fun lambda!215345 () Int)

(declare-fun lt!1886606 () ListMap!5277)

(assert (=> bs!1109455 (= (= lt!1886606 lt!1886424) (= lambda!215345 lambda!215343))))

(assert (=> b!4721423 (= (= lt!1886606 lt!1886424) (= lambda!215345 lambda!215344))))

(assert (=> b!4721423 true))

(declare-fun bs!1109456 () Bool)

(declare-fun d!1502956 () Bool)

(assert (= bs!1109456 (and d!1502956 b!4721424)))

(declare-fun lt!1886602 () ListMap!5277)

(declare-fun lambda!215346 () Int)

(assert (=> bs!1109456 (= (= lt!1886602 lt!1886424) (= lambda!215346 lambda!215343))))

(declare-fun bs!1109457 () Bool)

(assert (= bs!1109457 (and d!1502956 b!4721423)))

(assert (=> bs!1109457 (= (= lt!1886602 lt!1886424) (= lambda!215346 lambda!215344))))

(assert (=> bs!1109457 (= (= lt!1886602 lt!1886606) (= lambda!215346 lambda!215345))))

(assert (=> d!1502956 true))

(declare-fun bm!330164 () Bool)

(declare-fun call!330170 () Unit!129750)

(declare-fun lemmaContainsAllItsOwnKeys!795 (ListMap!5277) Unit!129750)

(assert (=> bm!330164 (= call!330170 (lemmaContainsAllItsOwnKeys!795 lt!1886424))))

(declare-fun e!2944527 () ListMap!5277)

(assert (=> b!4721423 (= e!2944527 lt!1886606)))

(declare-fun lt!1886605 () ListMap!5277)

(assert (=> b!4721423 (= lt!1886605 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (=> b!4721423 (= lt!1886606 (addToMapMapFromBucket!1442 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun lt!1886612 () Unit!129750)

(assert (=> b!4721423 (= lt!1886612 call!330170)))

(declare-fun call!330169 () Bool)

(assert (=> b!4721423 call!330169))

(declare-fun lt!1886609 () Unit!129750)

(assert (=> b!4721423 (= lt!1886609 lt!1886612)))

(declare-fun call!330171 () Bool)

(assert (=> b!4721423 call!330171))

(declare-fun lt!1886610 () Unit!129750)

(declare-fun Unit!129763 () Unit!129750)

(assert (=> b!4721423 (= lt!1886610 Unit!129763)))

(declare-fun forall!11584 (List!52948 Int) Bool)

(assert (=> b!4721423 (forall!11584 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) lambda!215345)))

(declare-fun lt!1886617 () Unit!129750)

(declare-fun Unit!129764 () Unit!129750)

(assert (=> b!4721423 (= lt!1886617 Unit!129764)))

(declare-fun lt!1886601 () Unit!129750)

(declare-fun Unit!129765 () Unit!129750)

(assert (=> b!4721423 (= lt!1886601 Unit!129765)))

(declare-fun lt!1886604 () Unit!129750)

(declare-fun forallContained!3635 (List!52948 Int tuple2!54442) Unit!129750)

(assert (=> b!4721423 (= lt!1886604 (forallContained!3635 (toList!5913 lt!1886605) lambda!215345 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (=> b!4721423 (contains!16168 lt!1886605 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(declare-fun lt!1886600 () Unit!129750)

(declare-fun Unit!129766 () Unit!129750)

(assert (=> b!4721423 (= lt!1886600 Unit!129766)))

(assert (=> b!4721423 (contains!16168 lt!1886606 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(declare-fun lt!1886607 () Unit!129750)

(declare-fun Unit!129768 () Unit!129750)

(assert (=> b!4721423 (= lt!1886607 Unit!129768)))

(assert (=> b!4721423 (forall!11584 (Cons!52824 lt!1886429 lt!1886428) lambda!215345)))

(declare-fun lt!1886619 () Unit!129750)

(declare-fun Unit!129769 () Unit!129750)

(assert (=> b!4721423 (= lt!1886619 Unit!129769)))

(assert (=> b!4721423 (forall!11584 (toList!5913 lt!1886605) lambda!215345)))

(declare-fun lt!1886618 () Unit!129750)

(declare-fun Unit!129770 () Unit!129750)

(assert (=> b!4721423 (= lt!1886618 Unit!129770)))

(declare-fun lt!1886603 () Unit!129750)

(declare-fun Unit!129771 () Unit!129750)

(assert (=> b!4721423 (= lt!1886603 Unit!129771)))

(declare-fun lt!1886615 () Unit!129750)

(declare-fun addForallContainsKeyThenBeforeAdding!794 (ListMap!5277 ListMap!5277 K!14180 V!14426) Unit!129750)

(assert (=> b!4721423 (= lt!1886615 (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886606 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> b!4721423 (forall!11584 (toList!5913 lt!1886424) lambda!215345)))

(declare-fun lt!1886611 () Unit!129750)

(assert (=> b!4721423 (= lt!1886611 lt!1886615)))

(assert (=> b!4721423 (forall!11584 (toList!5913 lt!1886424) lambda!215345)))

(declare-fun lt!1886614 () Unit!129750)

(declare-fun Unit!129775 () Unit!129750)

(assert (=> b!4721423 (= lt!1886614 Unit!129775)))

(declare-fun res!1997345 () Bool)

(assert (=> b!4721423 (= res!1997345 (forall!11584 (Cons!52824 lt!1886429 lt!1886428) lambda!215345))))

(declare-fun e!2944528 () Bool)

(assert (=> b!4721423 (=> (not res!1997345) (not e!2944528))))

(assert (=> b!4721423 e!2944528))

(declare-fun lt!1886616 () Unit!129750)

(declare-fun Unit!129777 () Unit!129750)

(assert (=> b!4721423 (= lt!1886616 Unit!129777)))

(declare-fun c!806303 () Bool)

(declare-fun bm!330165 () Bool)

(assert (=> bm!330165 (= call!330171 (forall!11584 (ite c!806303 (toList!5913 lt!1886424) (toList!5913 lt!1886605)) (ite c!806303 lambda!215343 lambda!215345)))))

(assert (=> b!4721424 (= e!2944527 lt!1886424)))

(declare-fun lt!1886620 () Unit!129750)

(assert (=> b!4721424 (= lt!1886620 call!330170)))

(assert (=> b!4721424 call!330171))

(declare-fun lt!1886608 () Unit!129750)

(assert (=> b!4721424 (= lt!1886608 lt!1886620)))

(assert (=> b!4721424 call!330169))

(declare-fun lt!1886613 () Unit!129750)

(declare-fun Unit!129782 () Unit!129750)

(assert (=> b!4721424 (= lt!1886613 Unit!129782)))

(declare-fun b!4721426 () Bool)

(declare-fun res!1997347 () Bool)

(declare-fun e!2944526 () Bool)

(assert (=> b!4721426 (=> (not res!1997347) (not e!2944526))))

(assert (=> b!4721426 (= res!1997347 (forall!11584 (toList!5913 lt!1886424) lambda!215346))))

(declare-fun bm!330166 () Bool)

(assert (=> bm!330166 (= call!330169 (forall!11584 (toList!5913 lt!1886424) (ite c!806303 lambda!215343 lambda!215344)))))

(declare-fun b!4721427 () Bool)

(declare-fun invariantList!1509 (List!52948) Bool)

(assert (=> b!4721427 (= e!2944526 (invariantList!1509 (toList!5913 lt!1886602)))))

(declare-fun b!4721425 () Bool)

(assert (=> b!4721425 (= e!2944528 (forall!11584 (toList!5913 lt!1886424) lambda!215345))))

(assert (=> d!1502956 e!2944526))

(declare-fun res!1997346 () Bool)

(assert (=> d!1502956 (=> (not res!1997346) (not e!2944526))))

(assert (=> d!1502956 (= res!1997346 (forall!11584 (Cons!52824 lt!1886429 lt!1886428) lambda!215346))))

(assert (=> d!1502956 (= lt!1886602 e!2944527)))

(assert (=> d!1502956 (= c!806303 ((_ is Nil!52824) (Cons!52824 lt!1886429 lt!1886428)))))

(assert (=> d!1502956 (noDuplicateKeys!2012 (Cons!52824 lt!1886429 lt!1886428))))

(assert (=> d!1502956 (= (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424) lt!1886602)))

(assert (= (and d!1502956 c!806303) b!4721424))

(assert (= (and d!1502956 (not c!806303)) b!4721423))

(assert (= (and b!4721423 res!1997345) b!4721425))

(assert (= (or b!4721424 b!4721423) bm!330164))

(assert (= (or b!4721424 b!4721423) bm!330166))

(assert (= (or b!4721424 b!4721423) bm!330165))

(assert (= (and d!1502956 res!1997346) b!4721426))

(assert (= (and b!4721426 res!1997347) b!4721427))

(declare-fun m!5655559 () Bool)

(assert (=> b!4721427 m!5655559))

(declare-fun m!5655561 () Bool)

(assert (=> d!1502956 m!5655561))

(declare-fun m!5655563 () Bool)

(assert (=> d!1502956 m!5655563))

(declare-fun m!5655565 () Bool)

(assert (=> b!4721426 m!5655565))

(declare-fun m!5655567 () Bool)

(assert (=> bm!330164 m!5655567))

(declare-fun m!5655569 () Bool)

(assert (=> b!4721423 m!5655569))

(declare-fun m!5655571 () Bool)

(assert (=> b!4721423 m!5655571))

(declare-fun m!5655573 () Bool)

(assert (=> b!4721423 m!5655573))

(declare-fun m!5655575 () Bool)

(assert (=> b!4721423 m!5655575))

(assert (=> b!4721423 m!5655573))

(declare-fun m!5655577 () Bool)

(assert (=> b!4721423 m!5655577))

(declare-fun m!5655579 () Bool)

(assert (=> b!4721423 m!5655579))

(declare-fun m!5655581 () Bool)

(assert (=> b!4721423 m!5655581))

(declare-fun m!5655583 () Bool)

(assert (=> b!4721423 m!5655583))

(assert (=> b!4721423 m!5655583))

(declare-fun m!5655585 () Bool)

(assert (=> b!4721423 m!5655585))

(assert (=> b!4721423 m!5655575))

(declare-fun m!5655587 () Bool)

(assert (=> b!4721423 m!5655587))

(declare-fun m!5655589 () Bool)

(assert (=> bm!330166 m!5655589))

(declare-fun m!5655591 () Bool)

(assert (=> bm!330165 m!5655591))

(assert (=> b!4721425 m!5655583))

(assert (=> b!4721310 d!1502956))

(declare-fun bs!1109458 () Bool)

(declare-fun b!4721431 () Bool)

(assert (= bs!1109458 (and b!4721431 b!4721424)))

(declare-fun lambda!215347 () Int)

(assert (=> bs!1109458 (= lambda!215347 lambda!215343)))

(declare-fun bs!1109459 () Bool)

(assert (= bs!1109459 (and b!4721431 b!4721423)))

(assert (=> bs!1109459 (= lambda!215347 lambda!215344)))

(assert (=> bs!1109459 (= (= lt!1886424 lt!1886606) (= lambda!215347 lambda!215345))))

(declare-fun bs!1109460 () Bool)

(assert (= bs!1109460 (and b!4721431 d!1502956)))

(assert (=> bs!1109460 (= (= lt!1886424 lt!1886602) (= lambda!215347 lambda!215346))))

(assert (=> b!4721431 true))

(declare-fun bs!1109461 () Bool)

(declare-fun b!4721430 () Bool)

(assert (= bs!1109461 (and b!4721430 d!1502956)))

(declare-fun lambda!215348 () Int)

(assert (=> bs!1109461 (= (= lt!1886424 lt!1886602) (= lambda!215348 lambda!215346))))

(declare-fun bs!1109462 () Bool)

(assert (= bs!1109462 (and b!4721430 b!4721424)))

(assert (=> bs!1109462 (= lambda!215348 lambda!215343)))

(declare-fun bs!1109463 () Bool)

(assert (= bs!1109463 (and b!4721430 b!4721423)))

(assert (=> bs!1109463 (= (= lt!1886424 lt!1886606) (= lambda!215348 lambda!215345))))

(declare-fun bs!1109464 () Bool)

(assert (= bs!1109464 (and b!4721430 b!4721431)))

(assert (=> bs!1109464 (= lambda!215348 lambda!215347)))

(assert (=> bs!1109463 (= lambda!215348 lambda!215344)))

(assert (=> b!4721430 true))

(declare-fun lt!1886627 () ListMap!5277)

(declare-fun lambda!215349 () Int)

(assert (=> b!4721430 (= (= lt!1886627 lt!1886424) (= lambda!215349 lambda!215348))))

(assert (=> bs!1109461 (= (= lt!1886627 lt!1886602) (= lambda!215349 lambda!215346))))

(assert (=> bs!1109462 (= (= lt!1886627 lt!1886424) (= lambda!215349 lambda!215343))))

(assert (=> bs!1109463 (= (= lt!1886627 lt!1886606) (= lambda!215349 lambda!215345))))

(assert (=> bs!1109464 (= (= lt!1886627 lt!1886424) (= lambda!215349 lambda!215347))))

(assert (=> bs!1109463 (= (= lt!1886627 lt!1886424) (= lambda!215349 lambda!215344))))

(assert (=> b!4721430 true))

(declare-fun bs!1109465 () Bool)

(declare-fun d!1502964 () Bool)

(assert (= bs!1109465 (and d!1502964 b!4721430)))

(declare-fun lt!1886623 () ListMap!5277)

(declare-fun lambda!215352 () Int)

(assert (=> bs!1109465 (= (= lt!1886623 lt!1886424) (= lambda!215352 lambda!215348))))

(declare-fun bs!1109466 () Bool)

(assert (= bs!1109466 (and d!1502964 d!1502956)))

(assert (=> bs!1109466 (= (= lt!1886623 lt!1886602) (= lambda!215352 lambda!215346))))

(declare-fun bs!1109467 () Bool)

(assert (= bs!1109467 (and d!1502964 b!4721424)))

(assert (=> bs!1109467 (= (= lt!1886623 lt!1886424) (= lambda!215352 lambda!215343))))

(declare-fun bs!1109468 () Bool)

(assert (= bs!1109468 (and d!1502964 b!4721423)))

(assert (=> bs!1109468 (= (= lt!1886623 lt!1886606) (= lambda!215352 lambda!215345))))

(assert (=> bs!1109465 (= (= lt!1886623 lt!1886627) (= lambda!215352 lambda!215349))))

(declare-fun bs!1109469 () Bool)

(assert (= bs!1109469 (and d!1502964 b!4721431)))

(assert (=> bs!1109469 (= (= lt!1886623 lt!1886424) (= lambda!215352 lambda!215347))))

(assert (=> bs!1109468 (= (= lt!1886623 lt!1886424) (= lambda!215352 lambda!215344))))

(assert (=> d!1502964 true))

(declare-fun bm!330167 () Bool)

(declare-fun call!330173 () Unit!129750)

(assert (=> bm!330167 (= call!330173 (lemmaContainsAllItsOwnKeys!795 lt!1886424))))

(declare-fun e!2944530 () ListMap!5277)

(assert (=> b!4721430 (= e!2944530 lt!1886627)))

(declare-fun lt!1886626 () ListMap!5277)

(assert (=> b!4721430 (= lt!1886626 (+!2267 lt!1886424 (h!59169 oldBucket!34)))))

(assert (=> b!4721430 (= lt!1886627 (addToMapMapFromBucket!1442 (t!360210 oldBucket!34) (+!2267 lt!1886424 (h!59169 oldBucket!34))))))

(declare-fun lt!1886633 () Unit!129750)

(assert (=> b!4721430 (= lt!1886633 call!330173)))

(declare-fun call!330172 () Bool)

(assert (=> b!4721430 call!330172))

(declare-fun lt!1886630 () Unit!129750)

(assert (=> b!4721430 (= lt!1886630 lt!1886633)))

(declare-fun call!330174 () Bool)

(assert (=> b!4721430 call!330174))

(declare-fun lt!1886631 () Unit!129750)

(declare-fun Unit!129786 () Unit!129750)

(assert (=> b!4721430 (= lt!1886631 Unit!129786)))

(assert (=> b!4721430 (forall!11584 (t!360210 oldBucket!34) lambda!215349)))

(declare-fun lt!1886638 () Unit!129750)

(declare-fun Unit!129787 () Unit!129750)

(assert (=> b!4721430 (= lt!1886638 Unit!129787)))

(declare-fun lt!1886622 () Unit!129750)

(declare-fun Unit!129788 () Unit!129750)

(assert (=> b!4721430 (= lt!1886622 Unit!129788)))

(declare-fun lt!1886625 () Unit!129750)

(assert (=> b!4721430 (= lt!1886625 (forallContained!3635 (toList!5913 lt!1886626) lambda!215349 (h!59169 oldBucket!34)))))

(assert (=> b!4721430 (contains!16168 lt!1886626 (_1!30515 (h!59169 oldBucket!34)))))

(declare-fun lt!1886621 () Unit!129750)

(declare-fun Unit!129789 () Unit!129750)

(assert (=> b!4721430 (= lt!1886621 Unit!129789)))

(assert (=> b!4721430 (contains!16168 lt!1886627 (_1!30515 (h!59169 oldBucket!34)))))

(declare-fun lt!1886628 () Unit!129750)

(declare-fun Unit!129790 () Unit!129750)

(assert (=> b!4721430 (= lt!1886628 Unit!129790)))

(assert (=> b!4721430 (forall!11584 oldBucket!34 lambda!215349)))

(declare-fun lt!1886640 () Unit!129750)

(declare-fun Unit!129791 () Unit!129750)

(assert (=> b!4721430 (= lt!1886640 Unit!129791)))

(assert (=> b!4721430 (forall!11584 (toList!5913 lt!1886626) lambda!215349)))

(declare-fun lt!1886639 () Unit!129750)

(declare-fun Unit!129792 () Unit!129750)

(assert (=> b!4721430 (= lt!1886639 Unit!129792)))

(declare-fun lt!1886624 () Unit!129750)

(declare-fun Unit!129793 () Unit!129750)

(assert (=> b!4721430 (= lt!1886624 Unit!129793)))

(declare-fun lt!1886636 () Unit!129750)

(assert (=> b!4721430 (= lt!1886636 (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886627 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> b!4721430 (forall!11584 (toList!5913 lt!1886424) lambda!215349)))

(declare-fun lt!1886632 () Unit!129750)

(assert (=> b!4721430 (= lt!1886632 lt!1886636)))

(assert (=> b!4721430 (forall!11584 (toList!5913 lt!1886424) lambda!215349)))

(declare-fun lt!1886635 () Unit!129750)

(declare-fun Unit!129795 () Unit!129750)

(assert (=> b!4721430 (= lt!1886635 Unit!129795)))

(declare-fun res!1997348 () Bool)

(assert (=> b!4721430 (= res!1997348 (forall!11584 oldBucket!34 lambda!215349))))

(declare-fun e!2944531 () Bool)

(assert (=> b!4721430 (=> (not res!1997348) (not e!2944531))))

(assert (=> b!4721430 e!2944531))

(declare-fun lt!1886637 () Unit!129750)

(declare-fun Unit!129796 () Unit!129750)

(assert (=> b!4721430 (= lt!1886637 Unit!129796)))

(declare-fun c!806304 () Bool)

(declare-fun bm!330168 () Bool)

(assert (=> bm!330168 (= call!330174 (forall!11584 (ite c!806304 (toList!5913 lt!1886424) (toList!5913 lt!1886626)) (ite c!806304 lambda!215347 lambda!215349)))))

(assert (=> b!4721431 (= e!2944530 lt!1886424)))

(declare-fun lt!1886641 () Unit!129750)

(assert (=> b!4721431 (= lt!1886641 call!330173)))

(assert (=> b!4721431 call!330174))

(declare-fun lt!1886629 () Unit!129750)

(assert (=> b!4721431 (= lt!1886629 lt!1886641)))

(assert (=> b!4721431 call!330172))

(declare-fun lt!1886634 () Unit!129750)

(declare-fun Unit!129797 () Unit!129750)

(assert (=> b!4721431 (= lt!1886634 Unit!129797)))

(declare-fun b!4721433 () Bool)

(declare-fun res!1997350 () Bool)

(declare-fun e!2944529 () Bool)

(assert (=> b!4721433 (=> (not res!1997350) (not e!2944529))))

(assert (=> b!4721433 (= res!1997350 (forall!11584 (toList!5913 lt!1886424) lambda!215352))))

(declare-fun bm!330169 () Bool)

(assert (=> bm!330169 (= call!330172 (forall!11584 (toList!5913 lt!1886424) (ite c!806304 lambda!215347 lambda!215348)))))

(declare-fun b!4721434 () Bool)

(assert (=> b!4721434 (= e!2944529 (invariantList!1509 (toList!5913 lt!1886623)))))

(declare-fun b!4721432 () Bool)

(assert (=> b!4721432 (= e!2944531 (forall!11584 (toList!5913 lt!1886424) lambda!215349))))

(assert (=> d!1502964 e!2944529))

(declare-fun res!1997349 () Bool)

(assert (=> d!1502964 (=> (not res!1997349) (not e!2944529))))

(assert (=> d!1502964 (= res!1997349 (forall!11584 oldBucket!34 lambda!215352))))

(assert (=> d!1502964 (= lt!1886623 e!2944530)))

(assert (=> d!1502964 (= c!806304 ((_ is Nil!52824) oldBucket!34))))

(assert (=> d!1502964 (noDuplicateKeys!2012 oldBucket!34)))

(assert (=> d!1502964 (= (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424) lt!1886623)))

(assert (= (and d!1502964 c!806304) b!4721431))

(assert (= (and d!1502964 (not c!806304)) b!4721430))

(assert (= (and b!4721430 res!1997348) b!4721432))

(assert (= (or b!4721431 b!4721430) bm!330167))

(assert (= (or b!4721431 b!4721430) bm!330169))

(assert (= (or b!4721431 b!4721430) bm!330168))

(assert (= (and d!1502964 res!1997349) b!4721433))

(assert (= (and b!4721433 res!1997350) b!4721434))

(declare-fun m!5655599 () Bool)

(assert (=> b!4721434 m!5655599))

(declare-fun m!5655601 () Bool)

(assert (=> d!1502964 m!5655601))

(assert (=> d!1502964 m!5655411))

(declare-fun m!5655603 () Bool)

(assert (=> b!4721433 m!5655603))

(assert (=> bm!330167 m!5655567))

(declare-fun m!5655605 () Bool)

(assert (=> b!4721430 m!5655605))

(declare-fun m!5655607 () Bool)

(assert (=> b!4721430 m!5655607))

(declare-fun m!5655609 () Bool)

(assert (=> b!4721430 m!5655609))

(declare-fun m!5655611 () Bool)

(assert (=> b!4721430 m!5655611))

(assert (=> b!4721430 m!5655609))

(declare-fun m!5655613 () Bool)

(assert (=> b!4721430 m!5655613))

(declare-fun m!5655615 () Bool)

(assert (=> b!4721430 m!5655615))

(declare-fun m!5655617 () Bool)

(assert (=> b!4721430 m!5655617))

(declare-fun m!5655619 () Bool)

(assert (=> b!4721430 m!5655619))

(assert (=> b!4721430 m!5655619))

(declare-fun m!5655621 () Bool)

(assert (=> b!4721430 m!5655621))

(assert (=> b!4721430 m!5655611))

(declare-fun m!5655623 () Bool)

(assert (=> b!4721430 m!5655623))

(declare-fun m!5655625 () Bool)

(assert (=> bm!330169 m!5655625))

(declare-fun m!5655627 () Bool)

(assert (=> bm!330168 m!5655627))

(assert (=> b!4721432 m!5655619))

(assert (=> b!4721310 d!1502964))

(declare-fun d!1502968 () Bool)

(assert (=> d!1502968 (= (eq!1129 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424) (+!2267 lt!1886431 lt!1886429)) (= (content!9390 (toList!5913 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424))) (content!9390 (toList!5913 (+!2267 lt!1886431 lt!1886429)))))))

(declare-fun bs!1109471 () Bool)

(assert (= bs!1109471 d!1502968))

(declare-fun m!5655629 () Bool)

(assert (=> bs!1109471 m!5655629))

(declare-fun m!5655631 () Bool)

(assert (=> bs!1109471 m!5655631))

(assert (=> b!4721310 d!1502968))

(declare-fun d!1502970 () Bool)

(declare-fun e!2944535 () Bool)

(assert (=> d!1502970 e!2944535))

(declare-fun res!1997351 () Bool)

(assert (=> d!1502970 (=> (not res!1997351) (not e!2944535))))

(declare-fun lt!1886645 () ListMap!5277)

(assert (=> d!1502970 (= res!1997351 (contains!16168 lt!1886645 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun lt!1886647 () List!52948)

(assert (=> d!1502970 (= lt!1886645 (ListMap!5278 lt!1886647))))

(declare-fun lt!1886648 () Unit!129750)

(declare-fun lt!1886646 () Unit!129750)

(assert (=> d!1502970 (= lt!1886648 lt!1886646)))

(assert (=> d!1502970 (= (getValueByKey!1952 lt!1886647 (_1!30515 (h!59169 oldBucket!34))) (Some!12355 (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1502970 (= lt!1886646 (lemmaContainsTupThenGetReturnValue!1083 lt!1886647 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1502970 (= lt!1886647 (insertNoDuplicatedKeys!591 (toList!5913 lt!1886431) (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1502970 (= (+!2267 lt!1886431 (h!59169 oldBucket!34)) lt!1886645)))

(declare-fun b!4721441 () Bool)

(declare-fun res!1997352 () Bool)

(assert (=> b!4721441 (=> (not res!1997352) (not e!2944535))))

(assert (=> b!4721441 (= res!1997352 (= (getValueByKey!1952 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34))) (Some!12355 (_2!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721442 () Bool)

(assert (=> b!4721442 (= e!2944535 (contains!16169 (toList!5913 lt!1886645) (h!59169 oldBucket!34)))))

(assert (= (and d!1502970 res!1997351) b!4721441))

(assert (= (and b!4721441 res!1997352) b!4721442))

(declare-fun m!5655633 () Bool)

(assert (=> d!1502970 m!5655633))

(declare-fun m!5655635 () Bool)

(assert (=> d!1502970 m!5655635))

(declare-fun m!5655637 () Bool)

(assert (=> d!1502970 m!5655637))

(declare-fun m!5655639 () Bool)

(assert (=> d!1502970 m!5655639))

(declare-fun m!5655641 () Bool)

(assert (=> b!4721441 m!5655641))

(declare-fun m!5655643 () Bool)

(assert (=> b!4721442 m!5655643))

(assert (=> b!4721310 d!1502970))

(declare-fun d!1502972 () Bool)

(declare-fun e!2944568 () Bool)

(assert (=> d!1502972 e!2944568))

(declare-fun res!1997375 () Bool)

(assert (=> d!1502972 (=> res!1997375 e!2944568)))

(declare-fun e!2944564 () Bool)

(assert (=> d!1502972 (= res!1997375 e!2944564)))

(declare-fun res!1997376 () Bool)

(assert (=> d!1502972 (=> (not res!1997376) (not e!2944564))))

(declare-fun lt!1886688 () Bool)

(assert (=> d!1502972 (= res!1997376 (not lt!1886688))))

(declare-fun lt!1886691 () Bool)

(assert (=> d!1502972 (= lt!1886688 lt!1886691)))

(declare-fun lt!1886687 () Unit!129750)

(declare-fun e!2944569 () Unit!129750)

(assert (=> d!1502972 (= lt!1886687 e!2944569)))

(declare-fun c!806317 () Bool)

(assert (=> d!1502972 (= c!806317 lt!1886691)))

(declare-fun containsKey!3367 (List!52948 K!14180) Bool)

(assert (=> d!1502972 (= lt!1886691 (containsKey!3367 (toList!5913 lt!1886427) key!4653))))

(assert (=> d!1502972 (= (contains!16168 lt!1886427 key!4653) lt!1886688)))

(declare-fun b!4721486 () Bool)

(declare-datatypes ((List!52951 0))(
  ( (Nil!52827) (Cons!52827 (h!59174 K!14180) (t!360215 List!52951)) )
))
(declare-fun e!2944566 () List!52951)

(declare-fun keys!18970 (ListMap!5277) List!52951)

(assert (=> b!4721486 (= e!2944566 (keys!18970 lt!1886427))))

(declare-fun b!4721487 () Bool)

(declare-fun lt!1886693 () Unit!129750)

(assert (=> b!4721487 (= e!2944569 lt!1886693)))

(declare-fun lt!1886694 () Unit!129750)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (List!52948 K!14180) Unit!129750)

(assert (=> b!4721487 (= lt!1886694 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886427) key!4653))))

(declare-fun isDefined!9611 (Option!12356) Bool)

(assert (=> b!4721487 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886427) key!4653))))

(declare-fun lt!1886692 () Unit!129750)

(assert (=> b!4721487 (= lt!1886692 lt!1886694)))

(declare-fun lemmaInListThenGetKeysListContains!944 (List!52948 K!14180) Unit!129750)

(assert (=> b!4721487 (= lt!1886693 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886427) key!4653))))

(declare-fun call!330180 () Bool)

(assert (=> b!4721487 call!330180))

(declare-fun b!4721488 () Bool)

(declare-fun e!2944567 () Unit!129750)

(assert (=> b!4721488 (= e!2944569 e!2944567)))

(declare-fun c!806316 () Bool)

(assert (=> b!4721488 (= c!806316 call!330180)))

(declare-fun b!4721489 () Bool)

(declare-fun e!2944565 () Bool)

(assert (=> b!4721489 (= e!2944568 e!2944565)))

(declare-fun res!1997374 () Bool)

(assert (=> b!4721489 (=> (not res!1997374) (not e!2944565))))

(assert (=> b!4721489 (= res!1997374 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886427) key!4653)))))

(declare-fun b!4721490 () Bool)

(declare-fun getKeysList!949 (List!52948) List!52951)

(assert (=> b!4721490 (= e!2944566 (getKeysList!949 (toList!5913 lt!1886427)))))

(declare-fun b!4721491 () Bool)

(declare-fun Unit!129798 () Unit!129750)

(assert (=> b!4721491 (= e!2944567 Unit!129798)))

(declare-fun b!4721492 () Bool)

(declare-fun contains!16171 (List!52951 K!14180) Bool)

(assert (=> b!4721492 (= e!2944564 (not (contains!16171 (keys!18970 lt!1886427) key!4653)))))

(declare-fun b!4721493 () Bool)

(assert (=> b!4721493 false))

(declare-fun lt!1886690 () Unit!129750)

(declare-fun lt!1886689 () Unit!129750)

(assert (=> b!4721493 (= lt!1886690 lt!1886689)))

(assert (=> b!4721493 (containsKey!3367 (toList!5913 lt!1886427) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!948 (List!52948 K!14180) Unit!129750)

(assert (=> b!4721493 (= lt!1886689 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886427) key!4653))))

(declare-fun Unit!129799 () Unit!129750)

(assert (=> b!4721493 (= e!2944567 Unit!129799)))

(declare-fun b!4721494 () Bool)

(assert (=> b!4721494 (= e!2944565 (contains!16171 (keys!18970 lt!1886427) key!4653))))

(declare-fun bm!330175 () Bool)

(assert (=> bm!330175 (= call!330180 (contains!16171 e!2944566 key!4653))))

(declare-fun c!806318 () Bool)

(assert (=> bm!330175 (= c!806318 c!806317)))

(assert (= (and d!1502972 c!806317) b!4721487))

(assert (= (and d!1502972 (not c!806317)) b!4721488))

(assert (= (and b!4721488 c!806316) b!4721493))

(assert (= (and b!4721488 (not c!806316)) b!4721491))

(assert (= (or b!4721487 b!4721488) bm!330175))

(assert (= (and bm!330175 c!806318) b!4721490))

(assert (= (and bm!330175 (not c!806318)) b!4721486))

(assert (= (and d!1502972 res!1997376) b!4721492))

(assert (= (and d!1502972 (not res!1997375)) b!4721489))

(assert (= (and b!4721489 res!1997374) b!4721494))

(declare-fun m!5655701 () Bool)

(assert (=> bm!330175 m!5655701))

(declare-fun m!5655703 () Bool)

(assert (=> b!4721489 m!5655703))

(assert (=> b!4721489 m!5655703))

(declare-fun m!5655705 () Bool)

(assert (=> b!4721489 m!5655705))

(declare-fun m!5655707 () Bool)

(assert (=> d!1502972 m!5655707))

(declare-fun m!5655709 () Bool)

(assert (=> b!4721486 m!5655709))

(declare-fun m!5655711 () Bool)

(assert (=> b!4721487 m!5655711))

(assert (=> b!4721487 m!5655703))

(assert (=> b!4721487 m!5655703))

(assert (=> b!4721487 m!5655705))

(declare-fun m!5655713 () Bool)

(assert (=> b!4721487 m!5655713))

(assert (=> b!4721494 m!5655709))

(assert (=> b!4721494 m!5655709))

(declare-fun m!5655715 () Bool)

(assert (=> b!4721494 m!5655715))

(assert (=> b!4721492 m!5655709))

(assert (=> b!4721492 m!5655709))

(assert (=> b!4721492 m!5655715))

(declare-fun m!5655717 () Bool)

(assert (=> b!4721490 m!5655717))

(assert (=> b!4721493 m!5655707))

(declare-fun m!5655719 () Bool)

(assert (=> b!4721493 m!5655719))

(assert (=> b!4721330 d!1502972))

(declare-fun bs!1109543 () Bool)

(declare-fun d!1502992 () Bool)

(assert (= bs!1109543 (and d!1502992 start!480568)))

(declare-fun lambda!215371 () Int)

(assert (=> bs!1109543 (= lambda!215371 lambda!215278)))

(declare-fun lt!1886723 () ListMap!5277)

(assert (=> d!1502992 (invariantList!1509 (toList!5913 lt!1886723))))

(declare-fun e!2944591 () ListMap!5277)

(assert (=> d!1502992 (= lt!1886723 e!2944591)))

(declare-fun c!806330 () Bool)

(assert (=> d!1502992 (= c!806330 ((_ is Cons!52825) (toList!5914 lm!2023)))))

(assert (=> d!1502992 (forall!11582 (toList!5914 lm!2023) lambda!215371)))

(assert (=> d!1502992 (= (extractMap!2038 (toList!5914 lm!2023)) lt!1886723)))

(declare-fun b!4721528 () Bool)

(assert (=> b!4721528 (= e!2944591 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))))))

(declare-fun b!4721529 () Bool)

(assert (=> b!4721529 (= e!2944591 (ListMap!5278 Nil!52824))))

(assert (= (and d!1502992 c!806330) b!4721528))

(assert (= (and d!1502992 (not c!806330)) b!4721529))

(declare-fun m!5655751 () Bool)

(assert (=> d!1502992 m!5655751))

(declare-fun m!5655753 () Bool)

(assert (=> d!1502992 m!5655753))

(assert (=> b!4721528 m!5655419))

(assert (=> b!4721528 m!5655419))

(declare-fun m!5655755 () Bool)

(assert (=> b!4721528 m!5655755))

(assert (=> b!4721330 d!1502992))

(declare-fun bs!1109553 () Bool)

(declare-fun b!4721531 () Bool)

(assert (= bs!1109553 (and b!4721531 b!4721430)))

(declare-fun lambda!215373 () Int)

(assert (=> bs!1109553 (= lambda!215373 lambda!215348)))

(declare-fun bs!1109555 () Bool)

(assert (= bs!1109555 (and b!4721531 d!1502956)))

(assert (=> bs!1109555 (= (= lt!1886424 lt!1886602) (= lambda!215373 lambda!215346))))

(declare-fun bs!1109557 () Bool)

(assert (= bs!1109557 (and b!4721531 b!4721424)))

(assert (=> bs!1109557 (= lambda!215373 lambda!215343)))

(declare-fun bs!1109559 () Bool)

(assert (= bs!1109559 (and b!4721531 b!4721423)))

(assert (=> bs!1109559 (= (= lt!1886424 lt!1886606) (= lambda!215373 lambda!215345))))

(assert (=> bs!1109553 (= (= lt!1886424 lt!1886627) (= lambda!215373 lambda!215349))))

(assert (=> bs!1109559 (= lambda!215373 lambda!215344)))

(declare-fun bs!1109560 () Bool)

(assert (= bs!1109560 (and b!4721531 b!4721431)))

(assert (=> bs!1109560 (= lambda!215373 lambda!215347)))

(declare-fun bs!1109561 () Bool)

(assert (= bs!1109561 (and b!4721531 d!1502964)))

(assert (=> bs!1109561 (= (= lt!1886424 lt!1886623) (= lambda!215373 lambda!215352))))

(assert (=> b!4721531 true))

(declare-fun bs!1109562 () Bool)

(declare-fun b!4721530 () Bool)

(assert (= bs!1109562 (and b!4721530 b!4721430)))

(declare-fun lambda!215375 () Int)

(assert (=> bs!1109562 (= lambda!215375 lambda!215348)))

(declare-fun bs!1109563 () Bool)

(assert (= bs!1109563 (and b!4721530 d!1502956)))

(assert (=> bs!1109563 (= (= lt!1886424 lt!1886602) (= lambda!215375 lambda!215346))))

(declare-fun bs!1109564 () Bool)

(assert (= bs!1109564 (and b!4721530 b!4721424)))

(assert (=> bs!1109564 (= lambda!215375 lambda!215343)))

(declare-fun bs!1109565 () Bool)

(assert (= bs!1109565 (and b!4721530 b!4721423)))

(assert (=> bs!1109565 (= (= lt!1886424 lt!1886606) (= lambda!215375 lambda!215345))))

(declare-fun bs!1109566 () Bool)

(assert (= bs!1109566 (and b!4721530 b!4721531)))

(assert (=> bs!1109566 (= lambda!215375 lambda!215373)))

(assert (=> bs!1109562 (= (= lt!1886424 lt!1886627) (= lambda!215375 lambda!215349))))

(assert (=> bs!1109565 (= lambda!215375 lambda!215344)))

(declare-fun bs!1109567 () Bool)

(assert (= bs!1109567 (and b!4721530 b!4721431)))

(assert (=> bs!1109567 (= lambda!215375 lambda!215347)))

(declare-fun bs!1109568 () Bool)

(assert (= bs!1109568 (and b!4721530 d!1502964)))

(assert (=> bs!1109568 (= (= lt!1886424 lt!1886623) (= lambda!215375 lambda!215352))))

(assert (=> b!4721530 true))

(declare-fun lt!1886730 () ListMap!5277)

(declare-fun lambda!215376 () Int)

(assert (=> bs!1109562 (= (= lt!1886730 lt!1886424) (= lambda!215376 lambda!215348))))

(assert (=> bs!1109563 (= (= lt!1886730 lt!1886602) (= lambda!215376 lambda!215346))))

(assert (=> bs!1109564 (= (= lt!1886730 lt!1886424) (= lambda!215376 lambda!215343))))

(assert (=> bs!1109565 (= (= lt!1886730 lt!1886606) (= lambda!215376 lambda!215345))))

(assert (=> bs!1109562 (= (= lt!1886730 lt!1886627) (= lambda!215376 lambda!215349))))

(assert (=> bs!1109565 (= (= lt!1886730 lt!1886424) (= lambda!215376 lambda!215344))))

(assert (=> b!4721530 (= (= lt!1886730 lt!1886424) (= lambda!215376 lambda!215375))))

(assert (=> bs!1109566 (= (= lt!1886730 lt!1886424) (= lambda!215376 lambda!215373))))

(assert (=> bs!1109567 (= (= lt!1886730 lt!1886424) (= lambda!215376 lambda!215347))))

(assert (=> bs!1109568 (= (= lt!1886730 lt!1886623) (= lambda!215376 lambda!215352))))

(assert (=> b!4721530 true))

(declare-fun bs!1109580 () Bool)

(declare-fun d!1503008 () Bool)

(assert (= bs!1109580 (and d!1503008 b!4721430)))

(declare-fun lt!1886726 () ListMap!5277)

(declare-fun lambda!215378 () Int)

(assert (=> bs!1109580 (= (= lt!1886726 lt!1886424) (= lambda!215378 lambda!215348))))

(declare-fun bs!1109582 () Bool)

(assert (= bs!1109582 (and d!1503008 d!1502956)))

(assert (=> bs!1109582 (= (= lt!1886726 lt!1886602) (= lambda!215378 lambda!215346))))

(declare-fun bs!1109584 () Bool)

(assert (= bs!1109584 (and d!1503008 b!4721424)))

(assert (=> bs!1109584 (= (= lt!1886726 lt!1886424) (= lambda!215378 lambda!215343))))

(declare-fun bs!1109585 () Bool)

(assert (= bs!1109585 (and d!1503008 b!4721423)))

(assert (=> bs!1109585 (= (= lt!1886726 lt!1886606) (= lambda!215378 lambda!215345))))

(assert (=> bs!1109580 (= (= lt!1886726 lt!1886627) (= lambda!215378 lambda!215349))))

(declare-fun bs!1109586 () Bool)

(assert (= bs!1109586 (and d!1503008 b!4721530)))

(assert (=> bs!1109586 (= (= lt!1886726 lt!1886730) (= lambda!215378 lambda!215376))))

(assert (=> bs!1109585 (= (= lt!1886726 lt!1886424) (= lambda!215378 lambda!215344))))

(assert (=> bs!1109586 (= (= lt!1886726 lt!1886424) (= lambda!215378 lambda!215375))))

(declare-fun bs!1109587 () Bool)

(assert (= bs!1109587 (and d!1503008 b!4721531)))

(assert (=> bs!1109587 (= (= lt!1886726 lt!1886424) (= lambda!215378 lambda!215373))))

(declare-fun bs!1109588 () Bool)

(assert (= bs!1109588 (and d!1503008 b!4721431)))

(assert (=> bs!1109588 (= (= lt!1886726 lt!1886424) (= lambda!215378 lambda!215347))))

(declare-fun bs!1109589 () Bool)

(assert (= bs!1109589 (and d!1503008 d!1502964)))

(assert (=> bs!1109589 (= (= lt!1886726 lt!1886623) (= lambda!215378 lambda!215352))))

(assert (=> d!1503008 true))

(declare-fun bm!330179 () Bool)

(declare-fun call!330185 () Unit!129750)

(assert (=> bm!330179 (= call!330185 (lemmaContainsAllItsOwnKeys!795 lt!1886424))))

(declare-fun e!2944593 () ListMap!5277)

(assert (=> b!4721530 (= e!2944593 lt!1886730)))

(declare-fun lt!1886729 () ListMap!5277)

(assert (=> b!4721530 (= lt!1886729 (+!2267 lt!1886424 (h!59169 newBucket!218)))))

(assert (=> b!4721530 (= lt!1886730 (addToMapMapFromBucket!1442 (t!360210 newBucket!218) (+!2267 lt!1886424 (h!59169 newBucket!218))))))

(declare-fun lt!1886736 () Unit!129750)

(assert (=> b!4721530 (= lt!1886736 call!330185)))

(declare-fun call!330184 () Bool)

(assert (=> b!4721530 call!330184))

(declare-fun lt!1886733 () Unit!129750)

(assert (=> b!4721530 (= lt!1886733 lt!1886736)))

(declare-fun call!330186 () Bool)

(assert (=> b!4721530 call!330186))

(declare-fun lt!1886734 () Unit!129750)

(declare-fun Unit!129811 () Unit!129750)

(assert (=> b!4721530 (= lt!1886734 Unit!129811)))

(assert (=> b!4721530 (forall!11584 (t!360210 newBucket!218) lambda!215376)))

(declare-fun lt!1886741 () Unit!129750)

(declare-fun Unit!129812 () Unit!129750)

(assert (=> b!4721530 (= lt!1886741 Unit!129812)))

(declare-fun lt!1886725 () Unit!129750)

(declare-fun Unit!129813 () Unit!129750)

(assert (=> b!4721530 (= lt!1886725 Unit!129813)))

(declare-fun lt!1886728 () Unit!129750)

(assert (=> b!4721530 (= lt!1886728 (forallContained!3635 (toList!5913 lt!1886729) lambda!215376 (h!59169 newBucket!218)))))

(assert (=> b!4721530 (contains!16168 lt!1886729 (_1!30515 (h!59169 newBucket!218)))))

(declare-fun lt!1886724 () Unit!129750)

(declare-fun Unit!129814 () Unit!129750)

(assert (=> b!4721530 (= lt!1886724 Unit!129814)))

(assert (=> b!4721530 (contains!16168 lt!1886730 (_1!30515 (h!59169 newBucket!218)))))

(declare-fun lt!1886731 () Unit!129750)

(declare-fun Unit!129815 () Unit!129750)

(assert (=> b!4721530 (= lt!1886731 Unit!129815)))

(assert (=> b!4721530 (forall!11584 newBucket!218 lambda!215376)))

(declare-fun lt!1886743 () Unit!129750)

(declare-fun Unit!129816 () Unit!129750)

(assert (=> b!4721530 (= lt!1886743 Unit!129816)))

(assert (=> b!4721530 (forall!11584 (toList!5913 lt!1886729) lambda!215376)))

(declare-fun lt!1886742 () Unit!129750)

(declare-fun Unit!129817 () Unit!129750)

(assert (=> b!4721530 (= lt!1886742 Unit!129817)))

(declare-fun lt!1886727 () Unit!129750)

(declare-fun Unit!129818 () Unit!129750)

(assert (=> b!4721530 (= lt!1886727 Unit!129818)))

(declare-fun lt!1886739 () Unit!129750)

(assert (=> b!4721530 (= lt!1886739 (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886730 (_1!30515 (h!59169 newBucket!218)) (_2!30515 (h!59169 newBucket!218))))))

(assert (=> b!4721530 (forall!11584 (toList!5913 lt!1886424) lambda!215376)))

(declare-fun lt!1886735 () Unit!129750)

(assert (=> b!4721530 (= lt!1886735 lt!1886739)))

(assert (=> b!4721530 (forall!11584 (toList!5913 lt!1886424) lambda!215376)))

(declare-fun lt!1886738 () Unit!129750)

(declare-fun Unit!129819 () Unit!129750)

(assert (=> b!4721530 (= lt!1886738 Unit!129819)))

(declare-fun res!1997388 () Bool)

(assert (=> b!4721530 (= res!1997388 (forall!11584 newBucket!218 lambda!215376))))

(declare-fun e!2944594 () Bool)

(assert (=> b!4721530 (=> (not res!1997388) (not e!2944594))))

(assert (=> b!4721530 e!2944594))

(declare-fun lt!1886740 () Unit!129750)

(declare-fun Unit!129820 () Unit!129750)

(assert (=> b!4721530 (= lt!1886740 Unit!129820)))

(declare-fun bm!330180 () Bool)

(declare-fun c!806331 () Bool)

(assert (=> bm!330180 (= call!330186 (forall!11584 (ite c!806331 (toList!5913 lt!1886424) (toList!5913 lt!1886729)) (ite c!806331 lambda!215373 lambda!215376)))))

(assert (=> b!4721531 (= e!2944593 lt!1886424)))

(declare-fun lt!1886744 () Unit!129750)

(assert (=> b!4721531 (= lt!1886744 call!330185)))

(assert (=> b!4721531 call!330186))

(declare-fun lt!1886732 () Unit!129750)

(assert (=> b!4721531 (= lt!1886732 lt!1886744)))

(assert (=> b!4721531 call!330184))

(declare-fun lt!1886737 () Unit!129750)

(declare-fun Unit!129821 () Unit!129750)

(assert (=> b!4721531 (= lt!1886737 Unit!129821)))

(declare-fun b!4721533 () Bool)

(declare-fun res!1997390 () Bool)

(declare-fun e!2944592 () Bool)

(assert (=> b!4721533 (=> (not res!1997390) (not e!2944592))))

(assert (=> b!4721533 (= res!1997390 (forall!11584 (toList!5913 lt!1886424) lambda!215378))))

(declare-fun bm!330181 () Bool)

(assert (=> bm!330181 (= call!330184 (forall!11584 (toList!5913 lt!1886424) (ite c!806331 lambda!215373 lambda!215375)))))

(declare-fun b!4721534 () Bool)

(assert (=> b!4721534 (= e!2944592 (invariantList!1509 (toList!5913 lt!1886726)))))

(declare-fun b!4721532 () Bool)

(assert (=> b!4721532 (= e!2944594 (forall!11584 (toList!5913 lt!1886424) lambda!215376))))

(assert (=> d!1503008 e!2944592))

(declare-fun res!1997389 () Bool)

(assert (=> d!1503008 (=> (not res!1997389) (not e!2944592))))

(assert (=> d!1503008 (= res!1997389 (forall!11584 newBucket!218 lambda!215378))))

(assert (=> d!1503008 (= lt!1886726 e!2944593)))

(assert (=> d!1503008 (= c!806331 ((_ is Nil!52824) newBucket!218))))

(assert (=> d!1503008 (noDuplicateKeys!2012 newBucket!218)))

(assert (=> d!1503008 (= (addToMapMapFromBucket!1442 newBucket!218 lt!1886424) lt!1886726)))

(assert (= (and d!1503008 c!806331) b!4721531))

(assert (= (and d!1503008 (not c!806331)) b!4721530))

(assert (= (and b!4721530 res!1997388) b!4721532))

(assert (= (or b!4721531 b!4721530) bm!330179))

(assert (= (or b!4721531 b!4721530) bm!330181))

(assert (= (or b!4721531 b!4721530) bm!330180))

(assert (= (and d!1503008 res!1997389) b!4721533))

(assert (= (and b!4721533 res!1997390) b!4721534))

(declare-fun m!5655787 () Bool)

(assert (=> b!4721534 m!5655787))

(declare-fun m!5655789 () Bool)

(assert (=> d!1503008 m!5655789))

(assert (=> d!1503008 m!5655403))

(declare-fun m!5655791 () Bool)

(assert (=> b!4721533 m!5655791))

(assert (=> bm!330179 m!5655567))

(declare-fun m!5655793 () Bool)

(assert (=> b!4721530 m!5655793))

(declare-fun m!5655795 () Bool)

(assert (=> b!4721530 m!5655795))

(declare-fun m!5655797 () Bool)

(assert (=> b!4721530 m!5655797))

(declare-fun m!5655799 () Bool)

(assert (=> b!4721530 m!5655799))

(assert (=> b!4721530 m!5655797))

(declare-fun m!5655801 () Bool)

(assert (=> b!4721530 m!5655801))

(declare-fun m!5655803 () Bool)

(assert (=> b!4721530 m!5655803))

(declare-fun m!5655805 () Bool)

(assert (=> b!4721530 m!5655805))

(declare-fun m!5655807 () Bool)

(assert (=> b!4721530 m!5655807))

(assert (=> b!4721530 m!5655807))

(declare-fun m!5655809 () Bool)

(assert (=> b!4721530 m!5655809))

(assert (=> b!4721530 m!5655799))

(declare-fun m!5655811 () Bool)

(assert (=> b!4721530 m!5655811))

(declare-fun m!5655813 () Bool)

(assert (=> bm!330181 m!5655813))

(declare-fun m!5655815 () Bool)

(assert (=> bm!330180 m!5655815))

(assert (=> b!4721532 m!5655807))

(assert (=> b!4721331 d!1503008))

(declare-fun bs!1109590 () Bool)

(declare-fun b!4721536 () Bool)

(assert (= bs!1109590 (and b!4721536 d!1503008)))

(declare-fun lambda!215379 () Int)

(assert (=> bs!1109590 (= (= lt!1886424 lt!1886726) (= lambda!215379 lambda!215378))))

(declare-fun bs!1109591 () Bool)

(assert (= bs!1109591 (and b!4721536 b!4721430)))

(assert (=> bs!1109591 (= lambda!215379 lambda!215348)))

(declare-fun bs!1109592 () Bool)

(assert (= bs!1109592 (and b!4721536 d!1502956)))

(assert (=> bs!1109592 (= (= lt!1886424 lt!1886602) (= lambda!215379 lambda!215346))))

(declare-fun bs!1109593 () Bool)

(assert (= bs!1109593 (and b!4721536 b!4721424)))

(assert (=> bs!1109593 (= lambda!215379 lambda!215343)))

(declare-fun bs!1109594 () Bool)

(assert (= bs!1109594 (and b!4721536 b!4721423)))

(assert (=> bs!1109594 (= (= lt!1886424 lt!1886606) (= lambda!215379 lambda!215345))))

(assert (=> bs!1109591 (= (= lt!1886424 lt!1886627) (= lambda!215379 lambda!215349))))

(declare-fun bs!1109596 () Bool)

(assert (= bs!1109596 (and b!4721536 b!4721530)))

(assert (=> bs!1109596 (= (= lt!1886424 lt!1886730) (= lambda!215379 lambda!215376))))

(assert (=> bs!1109594 (= lambda!215379 lambda!215344)))

(assert (=> bs!1109596 (= lambda!215379 lambda!215375)))

(declare-fun bs!1109598 () Bool)

(assert (= bs!1109598 (and b!4721536 b!4721531)))

(assert (=> bs!1109598 (= lambda!215379 lambda!215373)))

(declare-fun bs!1109599 () Bool)

(assert (= bs!1109599 (and b!4721536 b!4721431)))

(assert (=> bs!1109599 (= lambda!215379 lambda!215347)))

(declare-fun bs!1109600 () Bool)

(assert (= bs!1109600 (and b!4721536 d!1502964)))

(assert (=> bs!1109600 (= (= lt!1886424 lt!1886623) (= lambda!215379 lambda!215352))))

(assert (=> b!4721536 true))

(declare-fun bs!1109601 () Bool)

(declare-fun b!4721535 () Bool)

(assert (= bs!1109601 (and b!4721535 d!1503008)))

(declare-fun lambda!215380 () Int)

(assert (=> bs!1109601 (= (= lt!1886424 lt!1886726) (= lambda!215380 lambda!215378))))

(declare-fun bs!1109602 () Bool)

(assert (= bs!1109602 (and b!4721535 b!4721536)))

(assert (=> bs!1109602 (= lambda!215380 lambda!215379)))

(declare-fun bs!1109603 () Bool)

(assert (= bs!1109603 (and b!4721535 b!4721430)))

(assert (=> bs!1109603 (= lambda!215380 lambda!215348)))

(declare-fun bs!1109604 () Bool)

(assert (= bs!1109604 (and b!4721535 d!1502956)))

(assert (=> bs!1109604 (= (= lt!1886424 lt!1886602) (= lambda!215380 lambda!215346))))

(declare-fun bs!1109605 () Bool)

(assert (= bs!1109605 (and b!4721535 b!4721424)))

(assert (=> bs!1109605 (= lambda!215380 lambda!215343)))

(declare-fun bs!1109606 () Bool)

(assert (= bs!1109606 (and b!4721535 b!4721423)))

(assert (=> bs!1109606 (= (= lt!1886424 lt!1886606) (= lambda!215380 lambda!215345))))

(assert (=> bs!1109603 (= (= lt!1886424 lt!1886627) (= lambda!215380 lambda!215349))))

(declare-fun bs!1109607 () Bool)

(assert (= bs!1109607 (and b!4721535 b!4721530)))

(assert (=> bs!1109607 (= (= lt!1886424 lt!1886730) (= lambda!215380 lambda!215376))))

(assert (=> bs!1109606 (= lambda!215380 lambda!215344)))

(assert (=> bs!1109607 (= lambda!215380 lambda!215375)))

(declare-fun bs!1109608 () Bool)

(assert (= bs!1109608 (and b!4721535 b!4721531)))

(assert (=> bs!1109608 (= lambda!215380 lambda!215373)))

(declare-fun bs!1109609 () Bool)

(assert (= bs!1109609 (and b!4721535 b!4721431)))

(assert (=> bs!1109609 (= lambda!215380 lambda!215347)))

(declare-fun bs!1109610 () Bool)

(assert (= bs!1109610 (and b!4721535 d!1502964)))

(assert (=> bs!1109610 (= (= lt!1886424 lt!1886623) (= lambda!215380 lambda!215352))))

(assert (=> b!4721535 true))

(declare-fun lt!1886751 () ListMap!5277)

(declare-fun lambda!215381 () Int)

(assert (=> bs!1109601 (= (= lt!1886751 lt!1886726) (= lambda!215381 lambda!215378))))

(assert (=> bs!1109602 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215379))))

(assert (=> bs!1109603 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215348))))

(assert (=> bs!1109604 (= (= lt!1886751 lt!1886602) (= lambda!215381 lambda!215346))))

(assert (=> b!4721535 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215380))))

(assert (=> bs!1109605 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215343))))

(assert (=> bs!1109606 (= (= lt!1886751 lt!1886606) (= lambda!215381 lambda!215345))))

(assert (=> bs!1109603 (= (= lt!1886751 lt!1886627) (= lambda!215381 lambda!215349))))

(assert (=> bs!1109607 (= (= lt!1886751 lt!1886730) (= lambda!215381 lambda!215376))))

(assert (=> bs!1109606 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215344))))

(assert (=> bs!1109607 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215375))))

(assert (=> bs!1109608 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215373))))

(assert (=> bs!1109609 (= (= lt!1886751 lt!1886424) (= lambda!215381 lambda!215347))))

(assert (=> bs!1109610 (= (= lt!1886751 lt!1886623) (= lambda!215381 lambda!215352))))

(assert (=> b!4721535 true))

(declare-fun bs!1109611 () Bool)

(declare-fun d!1503014 () Bool)

(assert (= bs!1109611 (and d!1503014 d!1503008)))

(declare-fun lambda!215382 () Int)

(declare-fun lt!1886747 () ListMap!5277)

(assert (=> bs!1109611 (= (= lt!1886747 lt!1886726) (= lambda!215382 lambda!215378))))

(declare-fun bs!1109612 () Bool)

(assert (= bs!1109612 (and d!1503014 b!4721535)))

(assert (=> bs!1109612 (= (= lt!1886747 lt!1886751) (= lambda!215382 lambda!215381))))

(declare-fun bs!1109613 () Bool)

(assert (= bs!1109613 (and d!1503014 b!4721536)))

(assert (=> bs!1109613 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215379))))

(declare-fun bs!1109614 () Bool)

(assert (= bs!1109614 (and d!1503014 b!4721430)))

(assert (=> bs!1109614 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215348))))

(declare-fun bs!1109615 () Bool)

(assert (= bs!1109615 (and d!1503014 d!1502956)))

(assert (=> bs!1109615 (= (= lt!1886747 lt!1886602) (= lambda!215382 lambda!215346))))

(assert (=> bs!1109612 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215380))))

(declare-fun bs!1109616 () Bool)

(assert (= bs!1109616 (and d!1503014 b!4721424)))

(assert (=> bs!1109616 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215343))))

(declare-fun bs!1109617 () Bool)

(assert (= bs!1109617 (and d!1503014 b!4721423)))

(assert (=> bs!1109617 (= (= lt!1886747 lt!1886606) (= lambda!215382 lambda!215345))))

(assert (=> bs!1109614 (= (= lt!1886747 lt!1886627) (= lambda!215382 lambda!215349))))

(declare-fun bs!1109618 () Bool)

(assert (= bs!1109618 (and d!1503014 b!4721530)))

(assert (=> bs!1109618 (= (= lt!1886747 lt!1886730) (= lambda!215382 lambda!215376))))

(assert (=> bs!1109617 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215344))))

(assert (=> bs!1109618 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215375))))

(declare-fun bs!1109619 () Bool)

(assert (= bs!1109619 (and d!1503014 b!4721531)))

(assert (=> bs!1109619 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215373))))

(declare-fun bs!1109620 () Bool)

(assert (= bs!1109620 (and d!1503014 b!4721431)))

(assert (=> bs!1109620 (= (= lt!1886747 lt!1886424) (= lambda!215382 lambda!215347))))

(declare-fun bs!1109621 () Bool)

(assert (= bs!1109621 (and d!1503014 d!1502964)))

(assert (=> bs!1109621 (= (= lt!1886747 lt!1886623) (= lambda!215382 lambda!215352))))

(assert (=> d!1503014 true))

(declare-fun bm!330182 () Bool)

(declare-fun call!330188 () Unit!129750)

(assert (=> bm!330182 (= call!330188 (lemmaContainsAllItsOwnKeys!795 lt!1886424))))

(declare-fun e!2944596 () ListMap!5277)

(assert (=> b!4721535 (= e!2944596 lt!1886751)))

(declare-fun lt!1886750 () ListMap!5277)

(assert (=> b!4721535 (= lt!1886750 (+!2267 lt!1886424 (h!59169 lt!1886428)))))

(assert (=> b!4721535 (= lt!1886751 (addToMapMapFromBucket!1442 (t!360210 lt!1886428) (+!2267 lt!1886424 (h!59169 lt!1886428))))))

(declare-fun lt!1886757 () Unit!129750)

(assert (=> b!4721535 (= lt!1886757 call!330188)))

(declare-fun call!330187 () Bool)

(assert (=> b!4721535 call!330187))

(declare-fun lt!1886754 () Unit!129750)

(assert (=> b!4721535 (= lt!1886754 lt!1886757)))

(declare-fun call!330189 () Bool)

(assert (=> b!4721535 call!330189))

(declare-fun lt!1886755 () Unit!129750)

(declare-fun Unit!129822 () Unit!129750)

(assert (=> b!4721535 (= lt!1886755 Unit!129822)))

(assert (=> b!4721535 (forall!11584 (t!360210 lt!1886428) lambda!215381)))

(declare-fun lt!1886762 () Unit!129750)

(declare-fun Unit!129823 () Unit!129750)

(assert (=> b!4721535 (= lt!1886762 Unit!129823)))

(declare-fun lt!1886746 () Unit!129750)

(declare-fun Unit!129824 () Unit!129750)

(assert (=> b!4721535 (= lt!1886746 Unit!129824)))

(declare-fun lt!1886749 () Unit!129750)

(assert (=> b!4721535 (= lt!1886749 (forallContained!3635 (toList!5913 lt!1886750) lambda!215381 (h!59169 lt!1886428)))))

(assert (=> b!4721535 (contains!16168 lt!1886750 (_1!30515 (h!59169 lt!1886428)))))

(declare-fun lt!1886745 () Unit!129750)

(declare-fun Unit!129825 () Unit!129750)

(assert (=> b!4721535 (= lt!1886745 Unit!129825)))

(assert (=> b!4721535 (contains!16168 lt!1886751 (_1!30515 (h!59169 lt!1886428)))))

(declare-fun lt!1886752 () Unit!129750)

(declare-fun Unit!129826 () Unit!129750)

(assert (=> b!4721535 (= lt!1886752 Unit!129826)))

(assert (=> b!4721535 (forall!11584 lt!1886428 lambda!215381)))

(declare-fun lt!1886764 () Unit!129750)

(declare-fun Unit!129827 () Unit!129750)

(assert (=> b!4721535 (= lt!1886764 Unit!129827)))

(assert (=> b!4721535 (forall!11584 (toList!5913 lt!1886750) lambda!215381)))

(declare-fun lt!1886763 () Unit!129750)

(declare-fun Unit!129828 () Unit!129750)

(assert (=> b!4721535 (= lt!1886763 Unit!129828)))

(declare-fun lt!1886748 () Unit!129750)

(declare-fun Unit!129829 () Unit!129750)

(assert (=> b!4721535 (= lt!1886748 Unit!129829)))

(declare-fun lt!1886760 () Unit!129750)

(assert (=> b!4721535 (= lt!1886760 (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886751 (_1!30515 (h!59169 lt!1886428)) (_2!30515 (h!59169 lt!1886428))))))

(assert (=> b!4721535 (forall!11584 (toList!5913 lt!1886424) lambda!215381)))

(declare-fun lt!1886756 () Unit!129750)

(assert (=> b!4721535 (= lt!1886756 lt!1886760)))

(assert (=> b!4721535 (forall!11584 (toList!5913 lt!1886424) lambda!215381)))

(declare-fun lt!1886759 () Unit!129750)

(declare-fun Unit!129830 () Unit!129750)

(assert (=> b!4721535 (= lt!1886759 Unit!129830)))

(declare-fun res!1997391 () Bool)

(assert (=> b!4721535 (= res!1997391 (forall!11584 lt!1886428 lambda!215381))))

(declare-fun e!2944597 () Bool)

(assert (=> b!4721535 (=> (not res!1997391) (not e!2944597))))

(assert (=> b!4721535 e!2944597))

(declare-fun lt!1886761 () Unit!129750)

(declare-fun Unit!129831 () Unit!129750)

(assert (=> b!4721535 (= lt!1886761 Unit!129831)))

(declare-fun bm!330183 () Bool)

(declare-fun c!806332 () Bool)

(assert (=> bm!330183 (= call!330189 (forall!11584 (ite c!806332 (toList!5913 lt!1886424) (toList!5913 lt!1886750)) (ite c!806332 lambda!215379 lambda!215381)))))

(assert (=> b!4721536 (= e!2944596 lt!1886424)))

(declare-fun lt!1886765 () Unit!129750)

(assert (=> b!4721536 (= lt!1886765 call!330188)))

(assert (=> b!4721536 call!330189))

(declare-fun lt!1886753 () Unit!129750)

(assert (=> b!4721536 (= lt!1886753 lt!1886765)))

(assert (=> b!4721536 call!330187))

(declare-fun lt!1886758 () Unit!129750)

(declare-fun Unit!129832 () Unit!129750)

(assert (=> b!4721536 (= lt!1886758 Unit!129832)))

(declare-fun b!4721538 () Bool)

(declare-fun res!1997393 () Bool)

(declare-fun e!2944595 () Bool)

(assert (=> b!4721538 (=> (not res!1997393) (not e!2944595))))

(assert (=> b!4721538 (= res!1997393 (forall!11584 (toList!5913 lt!1886424) lambda!215382))))

(declare-fun bm!330184 () Bool)

(assert (=> bm!330184 (= call!330187 (forall!11584 (toList!5913 lt!1886424) (ite c!806332 lambda!215379 lambda!215380)))))

(declare-fun b!4721539 () Bool)

(assert (=> b!4721539 (= e!2944595 (invariantList!1509 (toList!5913 lt!1886747)))))

(declare-fun b!4721537 () Bool)

(assert (=> b!4721537 (= e!2944597 (forall!11584 (toList!5913 lt!1886424) lambda!215381))))

(assert (=> d!1503014 e!2944595))

(declare-fun res!1997392 () Bool)

(assert (=> d!1503014 (=> (not res!1997392) (not e!2944595))))

(assert (=> d!1503014 (= res!1997392 (forall!11584 lt!1886428 lambda!215382))))

(assert (=> d!1503014 (= lt!1886747 e!2944596)))

(assert (=> d!1503014 (= c!806332 ((_ is Nil!52824) lt!1886428))))

(assert (=> d!1503014 (noDuplicateKeys!2012 lt!1886428)))

(assert (=> d!1503014 (= (addToMapMapFromBucket!1442 lt!1886428 lt!1886424) lt!1886747)))

(assert (= (and d!1503014 c!806332) b!4721536))

(assert (= (and d!1503014 (not c!806332)) b!4721535))

(assert (= (and b!4721535 res!1997391) b!4721537))

(assert (= (or b!4721536 b!4721535) bm!330182))

(assert (= (or b!4721536 b!4721535) bm!330184))

(assert (= (or b!4721536 b!4721535) bm!330183))

(assert (= (and d!1503014 res!1997392) b!4721538))

(assert (= (and b!4721538 res!1997393) b!4721539))

(declare-fun m!5655825 () Bool)

(assert (=> b!4721539 m!5655825))

(declare-fun m!5655827 () Bool)

(assert (=> d!1503014 m!5655827))

(assert (=> d!1503014 m!5655453))

(declare-fun m!5655829 () Bool)

(assert (=> b!4721538 m!5655829))

(assert (=> bm!330182 m!5655567))

(declare-fun m!5655831 () Bool)

(assert (=> b!4721535 m!5655831))

(declare-fun m!5655833 () Bool)

(assert (=> b!4721535 m!5655833))

(declare-fun m!5655835 () Bool)

(assert (=> b!4721535 m!5655835))

(declare-fun m!5655837 () Bool)

(assert (=> b!4721535 m!5655837))

(assert (=> b!4721535 m!5655835))

(declare-fun m!5655839 () Bool)

(assert (=> b!4721535 m!5655839))

(declare-fun m!5655841 () Bool)

(assert (=> b!4721535 m!5655841))

(declare-fun m!5655843 () Bool)

(assert (=> b!4721535 m!5655843))

(declare-fun m!5655845 () Bool)

(assert (=> b!4721535 m!5655845))

(assert (=> b!4721535 m!5655845))

(declare-fun m!5655847 () Bool)

(assert (=> b!4721535 m!5655847))

(assert (=> b!4721535 m!5655837))

(declare-fun m!5655849 () Bool)

(assert (=> b!4721535 m!5655849))

(declare-fun m!5655851 () Bool)

(assert (=> bm!330184 m!5655851))

(declare-fun m!5655853 () Bool)

(assert (=> bm!330183 m!5655853))

(assert (=> b!4721537 m!5655845))

(assert (=> b!4721331 d!1503014))

(declare-fun bs!1109622 () Bool)

(declare-fun d!1503020 () Bool)

(assert (= bs!1109622 (and d!1503020 d!1503008)))

(declare-fun lambda!215385 () Int)

(assert (=> bs!1109622 (not (= lambda!215385 lambda!215378))))

(declare-fun bs!1109623 () Bool)

(assert (= bs!1109623 (and d!1503020 b!4721535)))

(assert (=> bs!1109623 (not (= lambda!215385 lambda!215381))))

(declare-fun bs!1109624 () Bool)

(assert (= bs!1109624 (and d!1503020 b!4721536)))

(assert (=> bs!1109624 (not (= lambda!215385 lambda!215379))))

(declare-fun bs!1109625 () Bool)

(assert (= bs!1109625 (and d!1503020 b!4721430)))

(assert (=> bs!1109625 (not (= lambda!215385 lambda!215348))))

(declare-fun bs!1109626 () Bool)

(assert (= bs!1109626 (and d!1503020 d!1502956)))

(assert (=> bs!1109626 (not (= lambda!215385 lambda!215346))))

(assert (=> bs!1109623 (not (= lambda!215385 lambda!215380))))

(declare-fun bs!1109627 () Bool)

(assert (= bs!1109627 (and d!1503020 b!4721424)))

(assert (=> bs!1109627 (not (= lambda!215385 lambda!215343))))

(declare-fun bs!1109628 () Bool)

(assert (= bs!1109628 (and d!1503020 b!4721423)))

(assert (=> bs!1109628 (not (= lambda!215385 lambda!215345))))

(assert (=> bs!1109625 (not (= lambda!215385 lambda!215349))))

(declare-fun bs!1109629 () Bool)

(assert (= bs!1109629 (and d!1503020 b!4721530)))

(assert (=> bs!1109629 (not (= lambda!215385 lambda!215376))))

(assert (=> bs!1109628 (not (= lambda!215385 lambda!215344))))

(declare-fun bs!1109630 () Bool)

(assert (= bs!1109630 (and d!1503020 d!1503014)))

(assert (=> bs!1109630 (not (= lambda!215385 lambda!215382))))

(assert (=> bs!1109629 (not (= lambda!215385 lambda!215375))))

(declare-fun bs!1109631 () Bool)

(assert (= bs!1109631 (and d!1503020 b!4721531)))

(assert (=> bs!1109631 (not (= lambda!215385 lambda!215373))))

(declare-fun bs!1109633 () Bool)

(assert (= bs!1109633 (and d!1503020 b!4721431)))

(assert (=> bs!1109633 (not (= lambda!215385 lambda!215347))))

(declare-fun bs!1109634 () Bool)

(assert (= bs!1109634 (and d!1503020 d!1502964)))

(assert (=> bs!1109634 (not (= lambda!215385 lambda!215352))))

(assert (=> d!1503020 true))

(assert (=> d!1503020 true))

(assert (=> d!1503020 (= (allKeysSameHash!1838 oldBucket!34 hash!405 hashF!1323) (forall!11584 oldBucket!34 lambda!215385))))

(declare-fun bs!1109635 () Bool)

(assert (= bs!1109635 d!1503020))

(declare-fun m!5655861 () Bool)

(assert (=> bs!1109635 m!5655861))

(assert (=> b!4721320 d!1503020))

(declare-fun bs!1109636 () Bool)

(declare-fun b!4721545 () Bool)

(assert (= bs!1109636 (and b!4721545 d!1503008)))

(declare-fun lambda!215386 () Int)

(assert (=> bs!1109636 (= (= lt!1886424 lt!1886726) (= lambda!215386 lambda!215378))))

(declare-fun bs!1109637 () Bool)

(assert (= bs!1109637 (and b!4721545 b!4721535)))

(assert (=> bs!1109637 (= (= lt!1886424 lt!1886751) (= lambda!215386 lambda!215381))))

(declare-fun bs!1109638 () Bool)

(assert (= bs!1109638 (and b!4721545 b!4721536)))

(assert (=> bs!1109638 (= lambda!215386 lambda!215379)))

(declare-fun bs!1109639 () Bool)

(assert (= bs!1109639 (and b!4721545 b!4721430)))

(assert (=> bs!1109639 (= lambda!215386 lambda!215348)))

(declare-fun bs!1109640 () Bool)

(assert (= bs!1109640 (and b!4721545 d!1502956)))

(assert (=> bs!1109640 (= (= lt!1886424 lt!1886602) (= lambda!215386 lambda!215346))))

(assert (=> bs!1109637 (= lambda!215386 lambda!215380)))

(declare-fun bs!1109641 () Bool)

(assert (= bs!1109641 (and b!4721545 d!1503020)))

(assert (=> bs!1109641 (not (= lambda!215386 lambda!215385))))

(declare-fun bs!1109642 () Bool)

(assert (= bs!1109642 (and b!4721545 b!4721424)))

(assert (=> bs!1109642 (= lambda!215386 lambda!215343)))

(declare-fun bs!1109643 () Bool)

(assert (= bs!1109643 (and b!4721545 b!4721423)))

(assert (=> bs!1109643 (= (= lt!1886424 lt!1886606) (= lambda!215386 lambda!215345))))

(assert (=> bs!1109639 (= (= lt!1886424 lt!1886627) (= lambda!215386 lambda!215349))))

(declare-fun bs!1109644 () Bool)

(assert (= bs!1109644 (and b!4721545 b!4721530)))

(assert (=> bs!1109644 (= (= lt!1886424 lt!1886730) (= lambda!215386 lambda!215376))))

(assert (=> bs!1109643 (= lambda!215386 lambda!215344)))

(declare-fun bs!1109645 () Bool)

(assert (= bs!1109645 (and b!4721545 d!1503014)))

(assert (=> bs!1109645 (= (= lt!1886424 lt!1886747) (= lambda!215386 lambda!215382))))

(assert (=> bs!1109644 (= lambda!215386 lambda!215375)))

(declare-fun bs!1109646 () Bool)

(assert (= bs!1109646 (and b!4721545 b!4721531)))

(assert (=> bs!1109646 (= lambda!215386 lambda!215373)))

(declare-fun bs!1109647 () Bool)

(assert (= bs!1109647 (and b!4721545 b!4721431)))

(assert (=> bs!1109647 (= lambda!215386 lambda!215347)))

(declare-fun bs!1109648 () Bool)

(assert (= bs!1109648 (and b!4721545 d!1502964)))

(assert (=> bs!1109648 (= (= lt!1886424 lt!1886623) (= lambda!215386 lambda!215352))))

(assert (=> b!4721545 true))

(declare-fun bs!1109649 () Bool)

(declare-fun b!4721544 () Bool)

(assert (= bs!1109649 (and b!4721544 d!1503008)))

(declare-fun lambda!215387 () Int)

(assert (=> bs!1109649 (= (= lt!1886424 lt!1886726) (= lambda!215387 lambda!215378))))

(declare-fun bs!1109650 () Bool)

(assert (= bs!1109650 (and b!4721544 b!4721535)))

(assert (=> bs!1109650 (= (= lt!1886424 lt!1886751) (= lambda!215387 lambda!215381))))

(declare-fun bs!1109651 () Bool)

(assert (= bs!1109651 (and b!4721544 b!4721536)))

(assert (=> bs!1109651 (= lambda!215387 lambda!215379)))

(declare-fun bs!1109652 () Bool)

(assert (= bs!1109652 (and b!4721544 b!4721430)))

(assert (=> bs!1109652 (= lambda!215387 lambda!215348)))

(declare-fun bs!1109653 () Bool)

(assert (= bs!1109653 (and b!4721544 d!1502956)))

(assert (=> bs!1109653 (= (= lt!1886424 lt!1886602) (= lambda!215387 lambda!215346))))

(assert (=> bs!1109650 (= lambda!215387 lambda!215380)))

(declare-fun bs!1109654 () Bool)

(assert (= bs!1109654 (and b!4721544 b!4721545)))

(assert (=> bs!1109654 (= lambda!215387 lambda!215386)))

(declare-fun bs!1109655 () Bool)

(assert (= bs!1109655 (and b!4721544 d!1503020)))

(assert (=> bs!1109655 (not (= lambda!215387 lambda!215385))))

(declare-fun bs!1109656 () Bool)

(assert (= bs!1109656 (and b!4721544 b!4721424)))

(assert (=> bs!1109656 (= lambda!215387 lambda!215343)))

(declare-fun bs!1109657 () Bool)

(assert (= bs!1109657 (and b!4721544 b!4721423)))

(assert (=> bs!1109657 (= (= lt!1886424 lt!1886606) (= lambda!215387 lambda!215345))))

(assert (=> bs!1109652 (= (= lt!1886424 lt!1886627) (= lambda!215387 lambda!215349))))

(declare-fun bs!1109658 () Bool)

(assert (= bs!1109658 (and b!4721544 b!4721530)))

(assert (=> bs!1109658 (= (= lt!1886424 lt!1886730) (= lambda!215387 lambda!215376))))

(assert (=> bs!1109657 (= lambda!215387 lambda!215344)))

(declare-fun bs!1109659 () Bool)

(assert (= bs!1109659 (and b!4721544 d!1503014)))

(assert (=> bs!1109659 (= (= lt!1886424 lt!1886747) (= lambda!215387 lambda!215382))))

(assert (=> bs!1109658 (= lambda!215387 lambda!215375)))

(declare-fun bs!1109660 () Bool)

(assert (= bs!1109660 (and b!4721544 b!4721531)))

(assert (=> bs!1109660 (= lambda!215387 lambda!215373)))

(declare-fun bs!1109661 () Bool)

(assert (= bs!1109661 (and b!4721544 b!4721431)))

(assert (=> bs!1109661 (= lambda!215387 lambda!215347)))

(declare-fun bs!1109662 () Bool)

(assert (= bs!1109662 (and b!4721544 d!1502964)))

(assert (=> bs!1109662 (= (= lt!1886424 lt!1886623) (= lambda!215387 lambda!215352))))

(assert (=> b!4721544 true))

(declare-fun lambda!215388 () Int)

(declare-fun lt!1886775 () ListMap!5277)

(assert (=> bs!1109649 (= (= lt!1886775 lt!1886726) (= lambda!215388 lambda!215378))))

(assert (=> bs!1109650 (= (= lt!1886775 lt!1886751) (= lambda!215388 lambda!215381))))

(assert (=> bs!1109651 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215379))))

(assert (=> bs!1109652 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215348))))

(assert (=> bs!1109653 (= (= lt!1886775 lt!1886602) (= lambda!215388 lambda!215346))))

(assert (=> bs!1109650 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215380))))

(assert (=> bs!1109654 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215386))))

(assert (=> bs!1109655 (not (= lambda!215388 lambda!215385))))

(assert (=> bs!1109656 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215343))))

(assert (=> bs!1109657 (= (= lt!1886775 lt!1886606) (= lambda!215388 lambda!215345))))

(assert (=> bs!1109652 (= (= lt!1886775 lt!1886627) (= lambda!215388 lambda!215349))))

(assert (=> bs!1109658 (= (= lt!1886775 lt!1886730) (= lambda!215388 lambda!215376))))

(assert (=> bs!1109657 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215344))))

(assert (=> bs!1109659 (= (= lt!1886775 lt!1886747) (= lambda!215388 lambda!215382))))

(assert (=> bs!1109658 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215375))))

(assert (=> bs!1109660 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215373))))

(assert (=> bs!1109661 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215347))))

(assert (=> bs!1109662 (= (= lt!1886775 lt!1886623) (= lambda!215388 lambda!215352))))

(assert (=> b!4721544 (= (= lt!1886775 lt!1886424) (= lambda!215388 lambda!215387))))

(assert (=> b!4721544 true))

(declare-fun bs!1109663 () Bool)

(declare-fun d!1503024 () Bool)

(assert (= bs!1109663 (and d!1503024 d!1503008)))

(declare-fun lambda!215389 () Int)

(declare-fun lt!1886771 () ListMap!5277)

(assert (=> bs!1109663 (= (= lt!1886771 lt!1886726) (= lambda!215389 lambda!215378))))

(declare-fun bs!1109664 () Bool)

(assert (= bs!1109664 (and d!1503024 b!4721535)))

(assert (=> bs!1109664 (= (= lt!1886771 lt!1886751) (= lambda!215389 lambda!215381))))

(declare-fun bs!1109665 () Bool)

(assert (= bs!1109665 (and d!1503024 b!4721536)))

(assert (=> bs!1109665 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215379))))

(declare-fun bs!1109666 () Bool)

(assert (= bs!1109666 (and d!1503024 b!4721430)))

(assert (=> bs!1109666 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215348))))

(declare-fun bs!1109667 () Bool)

(assert (= bs!1109667 (and d!1503024 d!1502956)))

(assert (=> bs!1109667 (= (= lt!1886771 lt!1886602) (= lambda!215389 lambda!215346))))

(assert (=> bs!1109664 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215380))))

(declare-fun bs!1109668 () Bool)

(assert (= bs!1109668 (and d!1503024 b!4721545)))

(assert (=> bs!1109668 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215386))))

(declare-fun bs!1109669 () Bool)

(assert (= bs!1109669 (and d!1503024 d!1503020)))

(assert (=> bs!1109669 (not (= lambda!215389 lambda!215385))))

(declare-fun bs!1109670 () Bool)

(assert (= bs!1109670 (and d!1503024 b!4721423)))

(assert (=> bs!1109670 (= (= lt!1886771 lt!1886606) (= lambda!215389 lambda!215345))))

(assert (=> bs!1109666 (= (= lt!1886771 lt!1886627) (= lambda!215389 lambda!215349))))

(declare-fun bs!1109671 () Bool)

(assert (= bs!1109671 (and d!1503024 b!4721530)))

(assert (=> bs!1109671 (= (= lt!1886771 lt!1886730) (= lambda!215389 lambda!215376))))

(assert (=> bs!1109670 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215344))))

(declare-fun bs!1109672 () Bool)

(assert (= bs!1109672 (and d!1503024 d!1503014)))

(assert (=> bs!1109672 (= (= lt!1886771 lt!1886747) (= lambda!215389 lambda!215382))))

(declare-fun bs!1109673 () Bool)

(assert (= bs!1109673 (and d!1503024 b!4721424)))

(assert (=> bs!1109673 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215343))))

(declare-fun bs!1109674 () Bool)

(assert (= bs!1109674 (and d!1503024 b!4721544)))

(assert (=> bs!1109674 (= (= lt!1886771 lt!1886775) (= lambda!215389 lambda!215388))))

(assert (=> bs!1109671 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215375))))

(declare-fun bs!1109675 () Bool)

(assert (= bs!1109675 (and d!1503024 b!4721531)))

(assert (=> bs!1109675 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215373))))

(declare-fun bs!1109676 () Bool)

(assert (= bs!1109676 (and d!1503024 b!4721431)))

(assert (=> bs!1109676 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215347))))

(declare-fun bs!1109677 () Bool)

(assert (= bs!1109677 (and d!1503024 d!1502964)))

(assert (=> bs!1109677 (= (= lt!1886771 lt!1886623) (= lambda!215389 lambda!215352))))

(assert (=> bs!1109674 (= (= lt!1886771 lt!1886424) (= lambda!215389 lambda!215387))))

(assert (=> d!1503024 true))

(declare-fun bm!330185 () Bool)

(declare-fun call!330191 () Unit!129750)

(assert (=> bm!330185 (= call!330191 (lemmaContainsAllItsOwnKeys!795 lt!1886424))))

(declare-fun e!2944599 () ListMap!5277)

(assert (=> b!4721544 (= e!2944599 lt!1886775)))

(declare-fun lt!1886774 () ListMap!5277)

(assert (=> b!4721544 (= lt!1886774 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> b!4721544 (= lt!1886775 (addToMapMapFromBucket!1442 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun lt!1886781 () Unit!129750)

(assert (=> b!4721544 (= lt!1886781 call!330191)))

(declare-fun call!330190 () Bool)

(assert (=> b!4721544 call!330190))

(declare-fun lt!1886778 () Unit!129750)

(assert (=> b!4721544 (= lt!1886778 lt!1886781)))

(declare-fun call!330192 () Bool)

(assert (=> b!4721544 call!330192))

(declare-fun lt!1886779 () Unit!129750)

(declare-fun Unit!129844 () Unit!129750)

(assert (=> b!4721544 (= lt!1886779 Unit!129844)))

(assert (=> b!4721544 (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215388)))

(declare-fun lt!1886786 () Unit!129750)

(declare-fun Unit!129845 () Unit!129750)

(assert (=> b!4721544 (= lt!1886786 Unit!129845)))

(declare-fun lt!1886770 () Unit!129750)

(declare-fun Unit!129846 () Unit!129750)

(assert (=> b!4721544 (= lt!1886770 Unit!129846)))

(declare-fun lt!1886773 () Unit!129750)

(assert (=> b!4721544 (= lt!1886773 (forallContained!3635 (toList!5913 lt!1886774) lambda!215388 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> b!4721544 (contains!16168 lt!1886774 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun lt!1886769 () Unit!129750)

(declare-fun Unit!129847 () Unit!129750)

(assert (=> b!4721544 (= lt!1886769 Unit!129847)))

(assert (=> b!4721544 (contains!16168 lt!1886775 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun lt!1886776 () Unit!129750)

(declare-fun Unit!129848 () Unit!129750)

(assert (=> b!4721544 (= lt!1886776 Unit!129848)))

(assert (=> b!4721544 (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215388)))

(declare-fun lt!1886788 () Unit!129750)

(declare-fun Unit!129849 () Unit!129750)

(assert (=> b!4721544 (= lt!1886788 Unit!129849)))

(assert (=> b!4721544 (forall!11584 (toList!5913 lt!1886774) lambda!215388)))

(declare-fun lt!1886787 () Unit!129750)

(declare-fun Unit!129850 () Unit!129750)

(assert (=> b!4721544 (= lt!1886787 Unit!129850)))

(declare-fun lt!1886772 () Unit!129750)

(declare-fun Unit!129851 () Unit!129750)

(assert (=> b!4721544 (= lt!1886772 Unit!129851)))

(declare-fun lt!1886784 () Unit!129750)

(assert (=> b!4721544 (= lt!1886784 (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886775 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> b!4721544 (forall!11584 (toList!5913 lt!1886424) lambda!215388)))

(declare-fun lt!1886780 () Unit!129750)

(assert (=> b!4721544 (= lt!1886780 lt!1886784)))

(assert (=> b!4721544 (forall!11584 (toList!5913 lt!1886424) lambda!215388)))

(declare-fun lt!1886783 () Unit!129750)

(declare-fun Unit!129852 () Unit!129750)

(assert (=> b!4721544 (= lt!1886783 Unit!129852)))

(declare-fun res!1997394 () Bool)

(assert (=> b!4721544 (= res!1997394 (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215388))))

(declare-fun e!2944600 () Bool)

(assert (=> b!4721544 (=> (not res!1997394) (not e!2944600))))

(assert (=> b!4721544 e!2944600))

(declare-fun lt!1886785 () Unit!129750)

(declare-fun Unit!129853 () Unit!129750)

(assert (=> b!4721544 (= lt!1886785 Unit!129853)))

(declare-fun bm!330186 () Bool)

(declare-fun c!806333 () Bool)

(assert (=> bm!330186 (= call!330192 (forall!11584 (ite c!806333 (toList!5913 lt!1886424) (toList!5913 lt!1886774)) (ite c!806333 lambda!215386 lambda!215388)))))

(assert (=> b!4721545 (= e!2944599 lt!1886424)))

(declare-fun lt!1886789 () Unit!129750)

(assert (=> b!4721545 (= lt!1886789 call!330191)))

(assert (=> b!4721545 call!330192))

(declare-fun lt!1886777 () Unit!129750)

(assert (=> b!4721545 (= lt!1886777 lt!1886789)))

(assert (=> b!4721545 call!330190))

(declare-fun lt!1886782 () Unit!129750)

(declare-fun Unit!129854 () Unit!129750)

(assert (=> b!4721545 (= lt!1886782 Unit!129854)))

(declare-fun b!4721547 () Bool)

(declare-fun res!1997396 () Bool)

(declare-fun e!2944598 () Bool)

(assert (=> b!4721547 (=> (not res!1997396) (not e!2944598))))

(assert (=> b!4721547 (= res!1997396 (forall!11584 (toList!5913 lt!1886424) lambda!215389))))

(declare-fun bm!330187 () Bool)

(assert (=> bm!330187 (= call!330190 (forall!11584 (toList!5913 lt!1886424) (ite c!806333 lambda!215386 lambda!215387)))))

(declare-fun b!4721548 () Bool)

(assert (=> b!4721548 (= e!2944598 (invariantList!1509 (toList!5913 lt!1886771)))))

(declare-fun b!4721546 () Bool)

(assert (=> b!4721546 (= e!2944600 (forall!11584 (toList!5913 lt!1886424) lambda!215388))))

(assert (=> d!1503024 e!2944598))

(declare-fun res!1997395 () Bool)

(assert (=> d!1503024 (=> (not res!1997395) (not e!2944598))))

(assert (=> d!1503024 (= res!1997395 (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215389))))

(assert (=> d!1503024 (= lt!1886771 e!2944599)))

(assert (=> d!1503024 (= c!806333 ((_ is Nil!52824) (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(assert (=> d!1503024 (noDuplicateKeys!2012 (_2!30516 (h!59170 (toList!5914 lm!2023))))))

(assert (=> d!1503024 (= (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (toList!5914 lm!2023))) lt!1886424) lt!1886771)))

(assert (= (and d!1503024 c!806333) b!4721545))

(assert (= (and d!1503024 (not c!806333)) b!4721544))

(assert (= (and b!4721544 res!1997394) b!4721546))

(assert (= (or b!4721545 b!4721544) bm!330185))

(assert (= (or b!4721545 b!4721544) bm!330187))

(assert (= (or b!4721545 b!4721544) bm!330186))

(assert (= (and d!1503024 res!1997395) b!4721547))

(assert (= (and b!4721547 res!1997396) b!4721548))

(declare-fun m!5655863 () Bool)

(assert (=> b!4721548 m!5655863))

(declare-fun m!5655865 () Bool)

(assert (=> d!1503024 m!5655865))

(declare-fun m!5655867 () Bool)

(assert (=> d!1503024 m!5655867))

(declare-fun m!5655869 () Bool)

(assert (=> b!4721547 m!5655869))

(assert (=> bm!330185 m!5655567))

(declare-fun m!5655871 () Bool)

(assert (=> b!4721544 m!5655871))

(declare-fun m!5655873 () Bool)

(assert (=> b!4721544 m!5655873))

(declare-fun m!5655875 () Bool)

(assert (=> b!4721544 m!5655875))

(declare-fun m!5655877 () Bool)

(assert (=> b!4721544 m!5655877))

(assert (=> b!4721544 m!5655875))

(declare-fun m!5655879 () Bool)

(assert (=> b!4721544 m!5655879))

(declare-fun m!5655881 () Bool)

(assert (=> b!4721544 m!5655881))

(declare-fun m!5655883 () Bool)

(assert (=> b!4721544 m!5655883))

(declare-fun m!5655885 () Bool)

(assert (=> b!4721544 m!5655885))

(assert (=> b!4721544 m!5655885))

(declare-fun m!5655887 () Bool)

(assert (=> b!4721544 m!5655887))

(assert (=> b!4721544 m!5655877))

(declare-fun m!5655889 () Bool)

(assert (=> b!4721544 m!5655889))

(declare-fun m!5655891 () Bool)

(assert (=> bm!330187 m!5655891))

(declare-fun m!5655893 () Bool)

(assert (=> bm!330186 m!5655893))

(assert (=> b!4721546 m!5655885))

(assert (=> b!4721329 d!1503024))

(declare-fun bs!1109678 () Bool)

(declare-fun d!1503026 () Bool)

(assert (= bs!1109678 (and d!1503026 start!480568)))

(declare-fun lambda!215390 () Int)

(assert (=> bs!1109678 (= lambda!215390 lambda!215278)))

(declare-fun bs!1109679 () Bool)

(assert (= bs!1109679 (and d!1503026 d!1502992)))

(assert (=> bs!1109679 (= lambda!215390 lambda!215371)))

(declare-fun lt!1886802 () ListMap!5277)

(assert (=> d!1503026 (invariantList!1509 (toList!5913 lt!1886802))))

(declare-fun e!2944604 () ListMap!5277)

(assert (=> d!1503026 (= lt!1886802 e!2944604)))

(declare-fun c!806334 () Bool)

(assert (=> d!1503026 (= c!806334 ((_ is Cons!52825) (t!360211 (toList!5914 lm!2023))))))

(assert (=> d!1503026 (forall!11582 (t!360211 (toList!5914 lm!2023)) lambda!215390)))

(assert (=> d!1503026 (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886802)))

(declare-fun b!4721555 () Bool)

(assert (=> b!4721555 (= e!2944604 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))))))

(declare-fun b!4721556 () Bool)

(assert (=> b!4721556 (= e!2944604 (ListMap!5278 Nil!52824))))

(assert (= (and d!1503026 c!806334) b!4721555))

(assert (= (and d!1503026 (not c!806334)) b!4721556))

(declare-fun m!5655907 () Bool)

(assert (=> d!1503026 m!5655907))

(declare-fun m!5655909 () Bool)

(assert (=> d!1503026 m!5655909))

(declare-fun m!5655911 () Bool)

(assert (=> b!4721555 m!5655911))

(assert (=> b!4721555 m!5655911))

(declare-fun m!5655913 () Bool)

(assert (=> b!4721555 m!5655913))

(assert (=> b!4721329 d!1503026))

(declare-fun d!1503030 () Bool)

(declare-fun tail!8999 (List!52949) List!52949)

(assert (=> d!1503030 (= (tail!8997 lm!2023) (ListLongMap!4444 (tail!8999 (toList!5914 lm!2023))))))

(declare-fun bs!1109691 () Bool)

(assert (= bs!1109691 d!1503030))

(declare-fun m!5655915 () Bool)

(assert (=> bs!1109691 m!5655915))

(assert (=> b!4721329 d!1503030))

(declare-fun bs!1109710 () Bool)

(declare-fun d!1503032 () Bool)

(assert (= bs!1109710 (and d!1503032 start!480568)))

(declare-fun lambda!215395 () Int)

(assert (=> bs!1109710 (not (= lambda!215395 lambda!215278))))

(declare-fun bs!1109711 () Bool)

(assert (= bs!1109711 (and d!1503032 d!1502992)))

(assert (=> bs!1109711 (not (= lambda!215395 lambda!215371))))

(declare-fun bs!1109712 () Bool)

(assert (= bs!1109712 (and d!1503032 d!1503026)))

(assert (=> bs!1109712 (not (= lambda!215395 lambda!215390))))

(assert (=> d!1503032 true))

(assert (=> d!1503032 (= (allKeysSameHashInMap!1926 (ListLongMap!4444 lt!1886426) hashF!1323) (forall!11582 (toList!5914 (ListLongMap!4444 lt!1886426)) lambda!215395))))

(declare-fun bs!1109713 () Bool)

(assert (= bs!1109713 d!1503032))

(declare-fun m!5655917 () Bool)

(assert (=> bs!1109713 m!5655917))

(assert (=> b!4721318 d!1503032))

(declare-fun d!1503034 () Bool)

(declare-fun res!1997406 () Bool)

(declare-fun e!2944608 () Bool)

(assert (=> d!1503034 (=> res!1997406 e!2944608)))

(assert (=> d!1503034 (= res!1997406 ((_ is Nil!52825) lt!1886426))))

(assert (=> d!1503034 (= (forall!11582 lt!1886426 lambda!215278) e!2944608)))

(declare-fun b!4721564 () Bool)

(declare-fun e!2944609 () Bool)

(assert (=> b!4721564 (= e!2944608 e!2944609)))

(declare-fun res!1997407 () Bool)

(assert (=> b!4721564 (=> (not res!1997407) (not e!2944609))))

(assert (=> b!4721564 (= res!1997407 (dynLambda!21815 lambda!215278 (h!59170 lt!1886426)))))

(declare-fun b!4721565 () Bool)

(assert (=> b!4721565 (= e!2944609 (forall!11582 (t!360211 lt!1886426) lambda!215278))))

(assert (= (and d!1503034 (not res!1997406)) b!4721564))

(assert (= (and b!4721564 res!1997407) b!4721565))

(declare-fun b_lambda!178325 () Bool)

(assert (=> (not b_lambda!178325) (not b!4721564)))

(declare-fun m!5655919 () Bool)

(assert (=> b!4721564 m!5655919))

(declare-fun m!5655921 () Bool)

(assert (=> b!4721565 m!5655921))

(assert (=> b!4721319 d!1503034))

(declare-fun d!1503036 () Bool)

(declare-fun res!1997412 () Bool)

(declare-fun e!2944614 () Bool)

(assert (=> d!1503036 (=> res!1997412 e!2944614)))

(assert (=> d!1503036 (= res!1997412 (and ((_ is Cons!52824) lt!1886428) (= (_1!30515 (h!59169 lt!1886428)) key!4653)))))

(assert (=> d!1503036 (= (containsKey!3365 lt!1886428 key!4653) e!2944614)))

(declare-fun b!4721570 () Bool)

(declare-fun e!2944615 () Bool)

(assert (=> b!4721570 (= e!2944614 e!2944615)))

(declare-fun res!1997413 () Bool)

(assert (=> b!4721570 (=> (not res!1997413) (not e!2944615))))

(assert (=> b!4721570 (= res!1997413 ((_ is Cons!52824) lt!1886428))))

(declare-fun b!4721571 () Bool)

(assert (=> b!4721571 (= e!2944615 (containsKey!3365 (t!360210 lt!1886428) key!4653))))

(assert (= (and d!1503036 (not res!1997412)) b!4721570))

(assert (= (and b!4721570 res!1997413) b!4721571))

(declare-fun m!5655923 () Bool)

(assert (=> b!4721571 m!5655923))

(assert (=> b!4721317 d!1503036))

(declare-fun bs!1109726 () Bool)

(declare-fun d!1503038 () Bool)

(assert (= bs!1109726 (and d!1503038 start!480568)))

(declare-fun lambda!215398 () Int)

(assert (=> bs!1109726 (not (= lambda!215398 lambda!215278))))

(declare-fun bs!1109728 () Bool)

(assert (= bs!1109728 (and d!1503038 d!1502992)))

(assert (=> bs!1109728 (not (= lambda!215398 lambda!215371))))

(declare-fun bs!1109730 () Bool)

(assert (= bs!1109730 (and d!1503038 d!1503026)))

(assert (=> bs!1109730 (not (= lambda!215398 lambda!215390))))

(declare-fun bs!1109732 () Bool)

(assert (= bs!1109732 (and d!1503038 d!1503032)))

(assert (=> bs!1109732 (= lambda!215398 lambda!215395)))

(assert (=> d!1503038 true))

(assert (=> d!1503038 (= (allKeysSameHashInMap!1926 lm!2023 hashF!1323) (forall!11582 (toList!5914 lm!2023) lambda!215398))))

(declare-fun bs!1109734 () Bool)

(assert (= bs!1109734 d!1503038))

(declare-fun m!5655925 () Bool)

(assert (=> bs!1109734 m!5655925))

(assert (=> b!4721328 d!1503038))

(declare-fun bs!1109735 () Bool)

(declare-fun d!1503040 () Bool)

(assert (= bs!1109735 (and d!1503040 d!1503008)))

(declare-fun lambda!215399 () Int)

(assert (=> bs!1109735 (not (= lambda!215399 lambda!215378))))

(declare-fun bs!1109736 () Bool)

(assert (= bs!1109736 (and d!1503040 b!4721535)))

(assert (=> bs!1109736 (not (= lambda!215399 lambda!215381))))

(declare-fun bs!1109737 () Bool)

(assert (= bs!1109737 (and d!1503040 b!4721536)))

(assert (=> bs!1109737 (not (= lambda!215399 lambda!215379))))

(declare-fun bs!1109738 () Bool)

(assert (= bs!1109738 (and d!1503040 b!4721430)))

(assert (=> bs!1109738 (not (= lambda!215399 lambda!215348))))

(declare-fun bs!1109739 () Bool)

(assert (= bs!1109739 (and d!1503040 d!1502956)))

(assert (=> bs!1109739 (not (= lambda!215399 lambda!215346))))

(assert (=> bs!1109736 (not (= lambda!215399 lambda!215380))))

(declare-fun bs!1109740 () Bool)

(assert (= bs!1109740 (and d!1503040 b!4721545)))

(assert (=> bs!1109740 (not (= lambda!215399 lambda!215386))))

(declare-fun bs!1109741 () Bool)

(assert (= bs!1109741 (and d!1503040 d!1503020)))

(assert (=> bs!1109741 (= lambda!215399 lambda!215385)))

(assert (=> bs!1109738 (not (= lambda!215399 lambda!215349))))

(declare-fun bs!1109742 () Bool)

(assert (= bs!1109742 (and d!1503040 b!4721530)))

(assert (=> bs!1109742 (not (= lambda!215399 lambda!215376))))

(declare-fun bs!1109743 () Bool)

(assert (= bs!1109743 (and d!1503040 b!4721423)))

(assert (=> bs!1109743 (not (= lambda!215399 lambda!215344))))

(declare-fun bs!1109744 () Bool)

(assert (= bs!1109744 (and d!1503040 d!1503014)))

(assert (=> bs!1109744 (not (= lambda!215399 lambda!215382))))

(declare-fun bs!1109745 () Bool)

(assert (= bs!1109745 (and d!1503040 b!4721424)))

(assert (=> bs!1109745 (not (= lambda!215399 lambda!215343))))

(declare-fun bs!1109746 () Bool)

(assert (= bs!1109746 (and d!1503040 b!4721544)))

(assert (=> bs!1109746 (not (= lambda!215399 lambda!215388))))

(declare-fun bs!1109747 () Bool)

(assert (= bs!1109747 (and d!1503040 d!1503024)))

(assert (=> bs!1109747 (not (= lambda!215399 lambda!215389))))

(assert (=> bs!1109743 (not (= lambda!215399 lambda!215345))))

(assert (=> bs!1109742 (not (= lambda!215399 lambda!215375))))

(declare-fun bs!1109748 () Bool)

(assert (= bs!1109748 (and d!1503040 b!4721531)))

(assert (=> bs!1109748 (not (= lambda!215399 lambda!215373))))

(declare-fun bs!1109749 () Bool)

(assert (= bs!1109749 (and d!1503040 b!4721431)))

(assert (=> bs!1109749 (not (= lambda!215399 lambda!215347))))

(declare-fun bs!1109750 () Bool)

(assert (= bs!1109750 (and d!1503040 d!1502964)))

(assert (=> bs!1109750 (not (= lambda!215399 lambda!215352))))

(assert (=> bs!1109746 (not (= lambda!215399 lambda!215387))))

(assert (=> d!1503040 true))

(assert (=> d!1503040 true))

(assert (=> d!1503040 (= (allKeysSameHash!1838 newBucket!218 hash!405 hashF!1323) (forall!11584 newBucket!218 lambda!215399))))

(declare-fun bs!1109751 () Bool)

(assert (= bs!1109751 d!1503040))

(declare-fun m!5655957 () Bool)

(assert (=> bs!1109751 m!5655957))

(assert (=> b!4721326 d!1503040))

(declare-fun bs!1109752 () Bool)

(declare-fun d!1503042 () Bool)

(assert (= bs!1109752 (and d!1503042 d!1503038)))

(declare-fun lambda!215400 () Int)

(assert (=> bs!1109752 (not (= lambda!215400 lambda!215398))))

(declare-fun bs!1109753 () Bool)

(assert (= bs!1109753 (and d!1503042 start!480568)))

(assert (=> bs!1109753 (= lambda!215400 lambda!215278)))

(declare-fun bs!1109754 () Bool)

(assert (= bs!1109754 (and d!1503042 d!1503032)))

(assert (=> bs!1109754 (not (= lambda!215400 lambda!215395))))

(declare-fun bs!1109755 () Bool)

(assert (= bs!1109755 (and d!1503042 d!1502992)))

(assert (=> bs!1109755 (= lambda!215400 lambda!215371)))

(declare-fun bs!1109756 () Bool)

(assert (= bs!1109756 (and d!1503042 d!1503026)))

(assert (=> bs!1109756 (= lambda!215400 lambda!215390)))

(declare-fun lt!1886828 () ListMap!5277)

(assert (=> d!1503042 (invariantList!1509 (toList!5913 lt!1886828))))

(declare-fun e!2944617 () ListMap!5277)

(assert (=> d!1503042 (= lt!1886828 e!2944617)))

(declare-fun c!806336 () Bool)

(assert (=> d!1503042 (= c!806336 ((_ is Cons!52825) (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))

(assert (=> d!1503042 (forall!11582 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))) lambda!215400)))

(assert (=> d!1503042 (= (extractMap!2038 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))) lt!1886828)))

(declare-fun b!4721574 () Bool)

(assert (=> b!4721574 (= e!2944617 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))))

(declare-fun b!4721575 () Bool)

(assert (=> b!4721575 (= e!2944617 (ListMap!5278 Nil!52824))))

(assert (= (and d!1503042 c!806336) b!4721574))

(assert (= (and d!1503042 (not c!806336)) b!4721575))

(declare-fun m!5655973 () Bool)

(assert (=> d!1503042 m!5655973))

(declare-fun m!5655975 () Bool)

(assert (=> d!1503042 m!5655975))

(declare-fun m!5655979 () Bool)

(assert (=> b!4721574 m!5655979))

(assert (=> b!4721574 m!5655979))

(declare-fun m!5655983 () Bool)

(assert (=> b!4721574 m!5655983))

(assert (=> b!4721327 d!1503042))

(declare-fun bs!1109757 () Bool)

(declare-fun d!1503050 () Bool)

(assert (= bs!1109757 (and d!1503050 d!1503038)))

(declare-fun lambda!215401 () Int)

(assert (=> bs!1109757 (not (= lambda!215401 lambda!215398))))

(declare-fun bs!1109758 () Bool)

(assert (= bs!1109758 (and d!1503050 d!1503042)))

(assert (=> bs!1109758 (= lambda!215401 lambda!215400)))

(declare-fun bs!1109759 () Bool)

(assert (= bs!1109759 (and d!1503050 start!480568)))

(assert (=> bs!1109759 (= lambda!215401 lambda!215278)))

(declare-fun bs!1109760 () Bool)

(assert (= bs!1109760 (and d!1503050 d!1503032)))

(assert (=> bs!1109760 (not (= lambda!215401 lambda!215395))))

(declare-fun bs!1109761 () Bool)

(assert (= bs!1109761 (and d!1503050 d!1502992)))

(assert (=> bs!1109761 (= lambda!215401 lambda!215371)))

(declare-fun bs!1109762 () Bool)

(assert (= bs!1109762 (and d!1503050 d!1503026)))

(assert (=> bs!1109762 (= lambda!215401 lambda!215390)))

(declare-fun lt!1886829 () ListMap!5277)

(assert (=> d!1503050 (invariantList!1509 (toList!5913 lt!1886829))))

(declare-fun e!2944620 () ListMap!5277)

(assert (=> d!1503050 (= lt!1886829 e!2944620)))

(declare-fun c!806337 () Bool)

(assert (=> d!1503050 (= c!806337 ((_ is Cons!52825) lt!1886426))))

(assert (=> d!1503050 (forall!11582 lt!1886426 lambda!215401)))

(assert (=> d!1503050 (= (extractMap!2038 lt!1886426) lt!1886829)))

(declare-fun b!4721578 () Bool)

(assert (=> b!4721578 (= e!2944620 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 lt!1886426)) (extractMap!2038 (t!360211 lt!1886426))))))

(declare-fun b!4721579 () Bool)

(assert (=> b!4721579 (= e!2944620 (ListMap!5278 Nil!52824))))

(assert (= (and d!1503050 c!806337) b!4721578))

(assert (= (and d!1503050 (not c!806337)) b!4721579))

(declare-fun m!5655985 () Bool)

(assert (=> d!1503050 m!5655985))

(declare-fun m!5655987 () Bool)

(assert (=> d!1503050 m!5655987))

(declare-fun m!5655989 () Bool)

(assert (=> b!4721578 m!5655989))

(assert (=> b!4721578 m!5655989))

(declare-fun m!5655991 () Bool)

(assert (=> b!4721578 m!5655991))

(assert (=> b!4721327 d!1503050))

(declare-fun b!4721587 () Bool)

(declare-fun tp!1348362 () Bool)

(declare-fun e!2944623 () Bool)

(assert (=> b!4721587 (= e!2944623 (and tp_is_empty!31341 tp_is_empty!31343 tp!1348362))))

(assert (=> b!4721325 (= tp!1348359 e!2944623)))

(assert (= (and b!4721325 ((_ is Cons!52824) (t!360210 newBucket!218))) b!4721587))

(declare-fun b!4721594 () Bool)

(declare-fun e!2944629 () Bool)

(declare-fun tp!1348373 () Bool)

(declare-fun tp!1348374 () Bool)

(assert (=> b!4721594 (= e!2944629 (and tp!1348373 tp!1348374))))

(assert (=> b!4721311 (= tp!1348358 e!2944629)))

(assert (= (and b!4721311 ((_ is Cons!52825) (toList!5914 lm!2023))) b!4721594))

(declare-fun b!4721599 () Bool)

(declare-fun e!2944630 () Bool)

(declare-fun tp!1348375 () Bool)

(assert (=> b!4721599 (= e!2944630 (and tp_is_empty!31341 tp_is_empty!31343 tp!1348375))))

(assert (=> b!4721316 (= tp!1348357 e!2944630)))

(assert (= (and b!4721316 ((_ is Cons!52824) (t!360210 oldBucket!34))) b!4721599))

(declare-fun b_lambda!178329 () Bool)

(assert (= b_lambda!178321 (or start!480568 b_lambda!178329)))

(declare-fun bs!1109770 () Bool)

(declare-fun d!1503054 () Bool)

(assert (= bs!1109770 (and d!1503054 start!480568)))

(assert (=> bs!1109770 (= (dynLambda!21815 lambda!215278 (h!59170 (toList!5914 lm!2023))) (noDuplicateKeys!2012 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(assert (=> bs!1109770 m!5655867))

(assert (=> b!4721356 d!1503054))

(declare-fun b_lambda!178331 () Bool)

(assert (= b_lambda!178325 (or start!480568 b_lambda!178331)))

(declare-fun bs!1109771 () Bool)

(declare-fun d!1503056 () Bool)

(assert (= bs!1109771 (and d!1503056 start!480568)))

(assert (=> bs!1109771 (= (dynLambda!21815 lambda!215278 (h!59170 lt!1886426)) (noDuplicateKeys!2012 (_2!30516 (h!59170 lt!1886426))))))

(declare-fun m!5655995 () Bool)

(assert (=> bs!1109771 m!5655995))

(assert (=> b!4721564 d!1503056))

(check-sat (not b!4721544) (not bm!330186) (not b!4721533) (not bm!330179) (not b!4721425) (not b!4721442) (not b!4721426) (not b!4721489) (not d!1503038) (not bm!330183) (not bm!330168) (not b!4721565) (not bm!330184) (not bm!330187) (not d!1502992) (not b!4721430) (not b!4721555) (not d!1503024) (not b!4721578) (not d!1502940) (not d!1503050) (not b!4721537) (not b!4721599) (not bm!330182) (not b!4721494) (not b!4721535) (not d!1502932) (not d!1503008) (not b!4721532) (not bs!1109771) (not b!4721434) (not bm!330165) (not bm!330185) (not b!4721427) (not b!4721336) (not b!4721530) (not b!4721548) (not b_lambda!178329) (not b!4721490) (not d!1503014) (not d!1502954) (not b!4721538) (not b!4721363) (not b!4721594) (not b!4721571) (not bm!330167) (not d!1503042) (not b!4721362) (not bm!330180) (not bm!330166) (not b!4721493) (not b!4721350) tp_is_empty!31341 tp_is_empty!31343 (not d!1502956) (not b!4721339) (not d!1503032) (not d!1502952) (not b!4721338) (not d!1502948) (not d!1502944) (not d!1502972) (not b!4721547) (not bm!330164) (not d!1503020) (not b!4721492) (not d!1503040) (not b!4721357) (not b!4721441) (not d!1503030) (not bm!330169) (not d!1502970) (not bm!330175) (not b!4721432) (not b!4721337) (not d!1503026) (not b!4721528) (not b!4721539) (not b!4721574) (not b!4721487) (not bs!1109770) (not b!4721534) (not bm!330181) (not b!4721423) (not b!4721587) (not b!4721433) (not b!4721546) (not d!1502964) (not d!1502968) (not b!4721486) (not b_lambda!178331))
(check-sat)
(get-model)

(declare-fun d!1503062 () Bool)

(declare-fun isEmpty!29172 (Option!12356) Bool)

(assert (=> d!1503062 (= (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886427) key!4653)) (not (isEmpty!29172 (getValueByKey!1952 (toList!5913 lt!1886427) key!4653))))))

(declare-fun bs!1109774 () Bool)

(assert (= bs!1109774 d!1503062))

(assert (=> bs!1109774 m!5655703))

(declare-fun m!5655999 () Bool)

(assert (=> bs!1109774 m!5655999))

(assert (=> b!4721489 d!1503062))

(declare-fun b!4721612 () Bool)

(declare-fun e!2944640 () Option!12356)

(assert (=> b!4721612 (= e!2944640 (getValueByKey!1952 (t!360210 (toList!5913 lt!1886427)) key!4653))))

(declare-fun b!4721610 () Bool)

(declare-fun e!2944639 () Option!12356)

(assert (=> b!4721610 (= e!2944639 (Some!12355 (_2!30515 (h!59169 (toList!5913 lt!1886427)))))))

(declare-fun b!4721611 () Bool)

(assert (=> b!4721611 (= e!2944639 e!2944640)))

(declare-fun c!806343 () Bool)

(assert (=> b!4721611 (= c!806343 (and ((_ is Cons!52824) (toList!5913 lt!1886427)) (not (= (_1!30515 (h!59169 (toList!5913 lt!1886427))) key!4653))))))

(declare-fun d!1503064 () Bool)

(declare-fun c!806342 () Bool)

(assert (=> d!1503064 (= c!806342 (and ((_ is Cons!52824) (toList!5913 lt!1886427)) (= (_1!30515 (h!59169 (toList!5913 lt!1886427))) key!4653)))))

(assert (=> d!1503064 (= (getValueByKey!1952 (toList!5913 lt!1886427) key!4653) e!2944639)))

(declare-fun b!4721613 () Bool)

(assert (=> b!4721613 (= e!2944640 None!12355)))

(assert (= (and d!1503064 c!806342) b!4721610))

(assert (= (and d!1503064 (not c!806342)) b!4721611))

(assert (= (and b!4721611 c!806343) b!4721612))

(assert (= (and b!4721611 (not c!806343)) b!4721613))

(declare-fun m!5656001 () Bool)

(assert (=> b!4721612 m!5656001))

(assert (=> b!4721489 d!1503064))

(declare-fun d!1503066 () Bool)

(declare-fun res!1997422 () Bool)

(declare-fun e!2944645 () Bool)

(assert (=> d!1503066 (=> res!1997422 e!2944645)))

(assert (=> d!1503066 (= res!1997422 ((_ is Nil!52824) (Cons!52824 lt!1886429 lt!1886428)))))

(assert (=> d!1503066 (= (forall!11584 (Cons!52824 lt!1886429 lt!1886428) lambda!215346) e!2944645)))

(declare-fun b!4721618 () Bool)

(declare-fun e!2944646 () Bool)

(assert (=> b!4721618 (= e!2944645 e!2944646)))

(declare-fun res!1997423 () Bool)

(assert (=> b!4721618 (=> (not res!1997423) (not e!2944646))))

(declare-fun dynLambda!21817 (Int tuple2!54442) Bool)

(assert (=> b!4721618 (= res!1997423 (dynLambda!21817 lambda!215346 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(declare-fun b!4721619 () Bool)

(assert (=> b!4721619 (= e!2944646 (forall!11584 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) lambda!215346))))

(assert (= (and d!1503066 (not res!1997422)) b!4721618))

(assert (= (and b!4721618 res!1997423) b!4721619))

(declare-fun b_lambda!178337 () Bool)

(assert (=> (not b_lambda!178337) (not b!4721618)))

(declare-fun m!5656003 () Bool)

(assert (=> b!4721618 m!5656003))

(declare-fun m!5656005 () Bool)

(assert (=> b!4721619 m!5656005))

(assert (=> d!1502956 d!1503066))

(declare-fun d!1503068 () Bool)

(declare-fun res!1997424 () Bool)

(declare-fun e!2944647 () Bool)

(assert (=> d!1503068 (=> res!1997424 e!2944647)))

(assert (=> d!1503068 (= res!1997424 (not ((_ is Cons!52824) (Cons!52824 lt!1886429 lt!1886428))))))

(assert (=> d!1503068 (= (noDuplicateKeys!2012 (Cons!52824 lt!1886429 lt!1886428)) e!2944647)))

(declare-fun b!4721620 () Bool)

(declare-fun e!2944648 () Bool)

(assert (=> b!4721620 (= e!2944647 e!2944648)))

(declare-fun res!1997425 () Bool)

(assert (=> b!4721620 (=> (not res!1997425) (not e!2944648))))

(assert (=> b!4721620 (= res!1997425 (not (containsKey!3365 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun b!4721621 () Bool)

(assert (=> b!4721621 (= e!2944648 (noDuplicateKeys!2012 (t!360210 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (= (and d!1503068 (not res!1997424)) b!4721620))

(assert (= (and b!4721620 res!1997425) b!4721621))

(declare-fun m!5656007 () Bool)

(assert (=> b!4721620 m!5656007))

(declare-fun m!5656009 () Bool)

(assert (=> b!4721621 m!5656009))

(assert (=> d!1502956 d!1503068))

(declare-fun d!1503070 () Bool)

(declare-fun res!1997426 () Bool)

(declare-fun e!2944649 () Bool)

(assert (=> d!1503070 (=> res!1997426 e!2944649)))

(assert (=> d!1503070 (= res!1997426 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503070 (= (forall!11584 (toList!5913 lt!1886424) lambda!215378) e!2944649)))

(declare-fun b!4721622 () Bool)

(declare-fun e!2944650 () Bool)

(assert (=> b!4721622 (= e!2944649 e!2944650)))

(declare-fun res!1997427 () Bool)

(assert (=> b!4721622 (=> (not res!1997427) (not e!2944650))))

(assert (=> b!4721622 (= res!1997427 (dynLambda!21817 lambda!215378 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721623 () Bool)

(assert (=> b!4721623 (= e!2944650 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215378))))

(assert (= (and d!1503070 (not res!1997426)) b!4721622))

(assert (= (and b!4721622 res!1997427) b!4721623))

(declare-fun b_lambda!178339 () Bool)

(assert (=> (not b_lambda!178339) (not b!4721622)))

(declare-fun m!5656011 () Bool)

(assert (=> b!4721622 m!5656011))

(declare-fun m!5656013 () Bool)

(assert (=> b!4721623 m!5656013))

(assert (=> b!4721533 d!1503070))

(declare-fun b!4721624 () Bool)

(declare-fun e!2944651 () List!52948)

(assert (=> b!4721624 (= e!2944651 (t!360210 (t!360210 oldBucket!34)))))

(declare-fun b!4721626 () Bool)

(declare-fun e!2944652 () List!52948)

(assert (=> b!4721626 (= e!2944652 (Cons!52824 (h!59169 (t!360210 oldBucket!34)) (removePairForKey!1607 (t!360210 (t!360210 oldBucket!34)) key!4653)))))

(declare-fun b!4721627 () Bool)

(assert (=> b!4721627 (= e!2944652 Nil!52824)))

(declare-fun d!1503072 () Bool)

(declare-fun lt!1886830 () List!52948)

(assert (=> d!1503072 (not (containsKey!3365 lt!1886830 key!4653))))

(assert (=> d!1503072 (= lt!1886830 e!2944651)))

(declare-fun c!806345 () Bool)

(assert (=> d!1503072 (= c!806345 (and ((_ is Cons!52824) (t!360210 oldBucket!34)) (= (_1!30515 (h!59169 (t!360210 oldBucket!34))) key!4653)))))

(assert (=> d!1503072 (noDuplicateKeys!2012 (t!360210 oldBucket!34))))

(assert (=> d!1503072 (= (removePairForKey!1607 (t!360210 oldBucket!34) key!4653) lt!1886830)))

(declare-fun b!4721625 () Bool)

(assert (=> b!4721625 (= e!2944651 e!2944652)))

(declare-fun c!806344 () Bool)

(assert (=> b!4721625 (= c!806344 ((_ is Cons!52824) (t!360210 oldBucket!34)))))

(assert (= (and d!1503072 c!806345) b!4721624))

(assert (= (and d!1503072 (not c!806345)) b!4721625))

(assert (= (and b!4721625 c!806344) b!4721626))

(assert (= (and b!4721625 (not c!806344)) b!4721627))

(declare-fun m!5656015 () Bool)

(assert (=> b!4721626 m!5656015))

(declare-fun m!5656017 () Bool)

(assert (=> d!1503072 m!5656017))

(assert (=> d!1503072 m!5655439))

(assert (=> b!4721350 d!1503072))

(declare-fun d!1503074 () Bool)

(assert (=> d!1503074 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886427) key!4653))))

(declare-fun lt!1886833 () Unit!129750)

(declare-fun choose!33305 (List!52948 K!14180) Unit!129750)

(assert (=> d!1503074 (= lt!1886833 (choose!33305 (toList!5913 lt!1886427) key!4653))))

(assert (=> d!1503074 (invariantList!1509 (toList!5913 lt!1886427))))

(assert (=> d!1503074 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886427) key!4653) lt!1886833)))

(declare-fun bs!1109775 () Bool)

(assert (= bs!1109775 d!1503074))

(assert (=> bs!1109775 m!5655703))

(assert (=> bs!1109775 m!5655703))

(assert (=> bs!1109775 m!5655705))

(declare-fun m!5656019 () Bool)

(assert (=> bs!1109775 m!5656019))

(declare-fun m!5656021 () Bool)

(assert (=> bs!1109775 m!5656021))

(assert (=> b!4721487 d!1503074))

(assert (=> b!4721487 d!1503062))

(assert (=> b!4721487 d!1503064))

(declare-fun d!1503076 () Bool)

(assert (=> d!1503076 (contains!16171 (getKeysList!949 (toList!5913 lt!1886427)) key!4653)))

(declare-fun lt!1886836 () Unit!129750)

(declare-fun choose!33306 (List!52948 K!14180) Unit!129750)

(assert (=> d!1503076 (= lt!1886836 (choose!33306 (toList!5913 lt!1886427) key!4653))))

(assert (=> d!1503076 (invariantList!1509 (toList!5913 lt!1886427))))

(assert (=> d!1503076 (= (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886427) key!4653) lt!1886836)))

(declare-fun bs!1109776 () Bool)

(assert (= bs!1109776 d!1503076))

(assert (=> bs!1109776 m!5655717))

(assert (=> bs!1109776 m!5655717))

(declare-fun m!5656023 () Bool)

(assert (=> bs!1109776 m!5656023))

(declare-fun m!5656025 () Bool)

(assert (=> bs!1109776 m!5656025))

(assert (=> bs!1109776 m!5656021))

(assert (=> b!4721487 d!1503076))

(declare-fun d!1503078 () Bool)

(declare-fun res!1997428 () Bool)

(declare-fun e!2944653 () Bool)

(assert (=> d!1503078 (=> res!1997428 e!2944653)))

(assert (=> d!1503078 (= res!1997428 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503078 (= (forall!11584 (toList!5913 lt!1886424) (ite c!806333 lambda!215386 lambda!215387)) e!2944653)))

(declare-fun b!4721628 () Bool)

(declare-fun e!2944654 () Bool)

(assert (=> b!4721628 (= e!2944653 e!2944654)))

(declare-fun res!1997429 () Bool)

(assert (=> b!4721628 (=> (not res!1997429) (not e!2944654))))

(assert (=> b!4721628 (= res!1997429 (dynLambda!21817 (ite c!806333 lambda!215386 lambda!215387) (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721629 () Bool)

(assert (=> b!4721629 (= e!2944654 (forall!11584 (t!360210 (toList!5913 lt!1886424)) (ite c!806333 lambda!215386 lambda!215387)))))

(assert (= (and d!1503078 (not res!1997428)) b!4721628))

(assert (= (and b!4721628 res!1997429) b!4721629))

(declare-fun b_lambda!178341 () Bool)

(assert (=> (not b_lambda!178341) (not b!4721628)))

(declare-fun m!5656027 () Bool)

(assert (=> b!4721628 m!5656027))

(declare-fun m!5656029 () Bool)

(assert (=> b!4721629 m!5656029))

(assert (=> bm!330187 d!1503078))

(declare-fun d!1503080 () Bool)

(declare-fun e!2944655 () Bool)

(assert (=> d!1503080 e!2944655))

(declare-fun res!1997430 () Bool)

(assert (=> d!1503080 (=> (not res!1997430) (not e!2944655))))

(declare-fun lt!1886837 () ListMap!5277)

(assert (=> d!1503080 (= res!1997430 (contains!16168 lt!1886837 (_1!30515 (h!59169 newBucket!218))))))

(declare-fun lt!1886839 () List!52948)

(assert (=> d!1503080 (= lt!1886837 (ListMap!5278 lt!1886839))))

(declare-fun lt!1886840 () Unit!129750)

(declare-fun lt!1886838 () Unit!129750)

(assert (=> d!1503080 (= lt!1886840 lt!1886838)))

(assert (=> d!1503080 (= (getValueByKey!1952 lt!1886839 (_1!30515 (h!59169 newBucket!218))) (Some!12355 (_2!30515 (h!59169 newBucket!218))))))

(assert (=> d!1503080 (= lt!1886838 (lemmaContainsTupThenGetReturnValue!1083 lt!1886839 (_1!30515 (h!59169 newBucket!218)) (_2!30515 (h!59169 newBucket!218))))))

(assert (=> d!1503080 (= lt!1886839 (insertNoDuplicatedKeys!591 (toList!5913 lt!1886424) (_1!30515 (h!59169 newBucket!218)) (_2!30515 (h!59169 newBucket!218))))))

(assert (=> d!1503080 (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886837)))

(declare-fun b!4721630 () Bool)

(declare-fun res!1997431 () Bool)

(assert (=> b!4721630 (=> (not res!1997431) (not e!2944655))))

(assert (=> b!4721630 (= res!1997431 (= (getValueByKey!1952 (toList!5913 lt!1886837) (_1!30515 (h!59169 newBucket!218))) (Some!12355 (_2!30515 (h!59169 newBucket!218)))))))

(declare-fun b!4721631 () Bool)

(assert (=> b!4721631 (= e!2944655 (contains!16169 (toList!5913 lt!1886837) (h!59169 newBucket!218)))))

(assert (= (and d!1503080 res!1997430) b!4721630))

(assert (= (and b!4721630 res!1997431) b!4721631))

(declare-fun m!5656031 () Bool)

(assert (=> d!1503080 m!5656031))

(declare-fun m!5656033 () Bool)

(assert (=> d!1503080 m!5656033))

(declare-fun m!5656035 () Bool)

(assert (=> d!1503080 m!5656035))

(declare-fun m!5656037 () Bool)

(assert (=> d!1503080 m!5656037))

(declare-fun m!5656039 () Bool)

(assert (=> b!4721630 m!5656039))

(declare-fun m!5656041 () Bool)

(assert (=> b!4721631 m!5656041))

(assert (=> b!4721530 d!1503080))

(declare-fun bs!1109777 () Bool)

(declare-fun b!4721633 () Bool)

(assert (= bs!1109777 (and b!4721633 d!1503008)))

(declare-fun lambda!215403 () Int)

(assert (=> bs!1109777 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886726) (= lambda!215403 lambda!215378))))

(declare-fun bs!1109778 () Bool)

(assert (= bs!1109778 (and b!4721633 b!4721535)))

(assert (=> bs!1109778 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886751) (= lambda!215403 lambda!215381))))

(declare-fun bs!1109779 () Bool)

(assert (= bs!1109779 (and b!4721633 b!4721536)))

(assert (=> bs!1109779 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215379))))

(declare-fun bs!1109780 () Bool)

(assert (= bs!1109780 (and b!4721633 b!4721430)))

(assert (=> bs!1109780 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215348))))

(declare-fun bs!1109781 () Bool)

(assert (= bs!1109781 (and b!4721633 d!1502956)))

(assert (=> bs!1109781 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886602) (= lambda!215403 lambda!215346))))

(assert (=> bs!1109778 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215380))))

(declare-fun bs!1109782 () Bool)

(assert (= bs!1109782 (and b!4721633 b!4721545)))

(assert (=> bs!1109782 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215386))))

(declare-fun bs!1109783 () Bool)

(assert (= bs!1109783 (and b!4721633 d!1503020)))

(assert (=> bs!1109783 (not (= lambda!215403 lambda!215385))))

(assert (=> bs!1109780 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886627) (= lambda!215403 lambda!215349))))

(declare-fun bs!1109784 () Bool)

(assert (= bs!1109784 (and b!4721633 b!4721530)))

(assert (=> bs!1109784 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886730) (= lambda!215403 lambda!215376))))

(declare-fun bs!1109785 () Bool)

(assert (= bs!1109785 (and b!4721633 b!4721423)))

(assert (=> bs!1109785 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215344))))

(declare-fun bs!1109786 () Bool)

(assert (= bs!1109786 (and b!4721633 b!4721424)))

(assert (=> bs!1109786 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215343))))

(declare-fun bs!1109787 () Bool)

(assert (= bs!1109787 (and b!4721633 b!4721544)))

(assert (=> bs!1109787 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886775) (= lambda!215403 lambda!215388))))

(declare-fun bs!1109788 () Bool)

(assert (= bs!1109788 (and b!4721633 d!1503024)))

(assert (=> bs!1109788 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886771) (= lambda!215403 lambda!215389))))

(assert (=> bs!1109785 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886606) (= lambda!215403 lambda!215345))))

(assert (=> bs!1109784 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215375))))

(declare-fun bs!1109789 () Bool)

(assert (= bs!1109789 (and b!4721633 b!4721531)))

(assert (=> bs!1109789 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215373))))

(declare-fun bs!1109790 () Bool)

(assert (= bs!1109790 (and b!4721633 b!4721431)))

(assert (=> bs!1109790 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215347))))

(declare-fun bs!1109791 () Bool)

(assert (= bs!1109791 (and b!4721633 d!1502964)))

(assert (=> bs!1109791 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886623) (= lambda!215403 lambda!215352))))

(assert (=> bs!1109787 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215403 lambda!215387))))

(declare-fun bs!1109792 () Bool)

(assert (= bs!1109792 (and b!4721633 d!1503014)))

(assert (=> bs!1109792 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886747) (= lambda!215403 lambda!215382))))

(declare-fun bs!1109793 () Bool)

(assert (= bs!1109793 (and b!4721633 d!1503040)))

(assert (=> bs!1109793 (not (= lambda!215403 lambda!215399))))

(assert (=> b!4721633 true))

(declare-fun bs!1109794 () Bool)

(declare-fun b!4721632 () Bool)

(assert (= bs!1109794 (and b!4721632 d!1503008)))

(declare-fun lambda!215404 () Int)

(assert (=> bs!1109794 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886726) (= lambda!215404 lambda!215378))))

(declare-fun bs!1109795 () Bool)

(assert (= bs!1109795 (and b!4721632 b!4721535)))

(assert (=> bs!1109795 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886751) (= lambda!215404 lambda!215381))))

(declare-fun bs!1109796 () Bool)

(assert (= bs!1109796 (and b!4721632 b!4721536)))

(assert (=> bs!1109796 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215379))))

(declare-fun bs!1109797 () Bool)

(assert (= bs!1109797 (and b!4721632 b!4721430)))

(assert (=> bs!1109797 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215348))))

(declare-fun bs!1109798 () Bool)

(assert (= bs!1109798 (and b!4721632 b!4721633)))

(assert (=> bs!1109798 (= lambda!215404 lambda!215403)))

(declare-fun bs!1109799 () Bool)

(assert (= bs!1109799 (and b!4721632 d!1502956)))

(assert (=> bs!1109799 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886602) (= lambda!215404 lambda!215346))))

(assert (=> bs!1109795 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215380))))

(declare-fun bs!1109800 () Bool)

(assert (= bs!1109800 (and b!4721632 b!4721545)))

(assert (=> bs!1109800 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215386))))

(declare-fun bs!1109801 () Bool)

(assert (= bs!1109801 (and b!4721632 d!1503020)))

(assert (=> bs!1109801 (not (= lambda!215404 lambda!215385))))

(assert (=> bs!1109797 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886627) (= lambda!215404 lambda!215349))))

(declare-fun bs!1109802 () Bool)

(assert (= bs!1109802 (and b!4721632 b!4721530)))

(assert (=> bs!1109802 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886730) (= lambda!215404 lambda!215376))))

(declare-fun bs!1109803 () Bool)

(assert (= bs!1109803 (and b!4721632 b!4721423)))

(assert (=> bs!1109803 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215344))))

(declare-fun bs!1109804 () Bool)

(assert (= bs!1109804 (and b!4721632 b!4721424)))

(assert (=> bs!1109804 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215343))))

(declare-fun bs!1109805 () Bool)

(assert (= bs!1109805 (and b!4721632 b!4721544)))

(assert (=> bs!1109805 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886775) (= lambda!215404 lambda!215388))))

(declare-fun bs!1109806 () Bool)

(assert (= bs!1109806 (and b!4721632 d!1503024)))

(assert (=> bs!1109806 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886771) (= lambda!215404 lambda!215389))))

(assert (=> bs!1109803 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886606) (= lambda!215404 lambda!215345))))

(assert (=> bs!1109802 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215375))))

(declare-fun bs!1109807 () Bool)

(assert (= bs!1109807 (and b!4721632 b!4721531)))

(assert (=> bs!1109807 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215373))))

(declare-fun bs!1109808 () Bool)

(assert (= bs!1109808 (and b!4721632 b!4721431)))

(assert (=> bs!1109808 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215347))))

(declare-fun bs!1109809 () Bool)

(assert (= bs!1109809 (and b!4721632 d!1502964)))

(assert (=> bs!1109809 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886623) (= lambda!215404 lambda!215352))))

(assert (=> bs!1109805 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886424) (= lambda!215404 lambda!215387))))

(declare-fun bs!1109810 () Bool)

(assert (= bs!1109810 (and b!4721632 d!1503014)))

(assert (=> bs!1109810 (= (= (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886747) (= lambda!215404 lambda!215382))))

(declare-fun bs!1109811 () Bool)

(assert (= bs!1109811 (and b!4721632 d!1503040)))

(assert (=> bs!1109811 (not (= lambda!215404 lambda!215399))))

(assert (=> b!4721632 true))

(declare-fun lt!1886847 () ListMap!5277)

(declare-fun lambda!215405 () Int)

(assert (=> bs!1109794 (= (= lt!1886847 lt!1886726) (= lambda!215405 lambda!215378))))

(assert (=> bs!1109795 (= (= lt!1886847 lt!1886751) (= lambda!215405 lambda!215381))))

(assert (=> bs!1109796 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215379))))

(assert (=> bs!1109797 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215348))))

(assert (=> bs!1109798 (= (= lt!1886847 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215405 lambda!215403))))

(assert (=> bs!1109799 (= (= lt!1886847 lt!1886602) (= lambda!215405 lambda!215346))))

(assert (=> bs!1109795 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215380))))

(assert (=> bs!1109800 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215386))))

(assert (=> bs!1109801 (not (= lambda!215405 lambda!215385))))

(assert (=> b!4721632 (= (= lt!1886847 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215405 lambda!215404))))

(assert (=> bs!1109797 (= (= lt!1886847 lt!1886627) (= lambda!215405 lambda!215349))))

(assert (=> bs!1109802 (= (= lt!1886847 lt!1886730) (= lambda!215405 lambda!215376))))

(assert (=> bs!1109803 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215344))))

(assert (=> bs!1109804 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215343))))

(assert (=> bs!1109805 (= (= lt!1886847 lt!1886775) (= lambda!215405 lambda!215388))))

(assert (=> bs!1109806 (= (= lt!1886847 lt!1886771) (= lambda!215405 lambda!215389))))

(assert (=> bs!1109803 (= (= lt!1886847 lt!1886606) (= lambda!215405 lambda!215345))))

(assert (=> bs!1109802 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215375))))

(assert (=> bs!1109807 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215373))))

(assert (=> bs!1109808 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215347))))

(assert (=> bs!1109809 (= (= lt!1886847 lt!1886623) (= lambda!215405 lambda!215352))))

(assert (=> bs!1109805 (= (= lt!1886847 lt!1886424) (= lambda!215405 lambda!215387))))

(assert (=> bs!1109810 (= (= lt!1886847 lt!1886747) (= lambda!215405 lambda!215382))))

(assert (=> bs!1109811 (not (= lambda!215405 lambda!215399))))

(assert (=> b!4721632 true))

(declare-fun bs!1109812 () Bool)

(declare-fun d!1503082 () Bool)

(assert (= bs!1109812 (and d!1503082 d!1503008)))

(declare-fun lambda!215406 () Int)

(declare-fun lt!1886843 () ListMap!5277)

(assert (=> bs!1109812 (= (= lt!1886843 lt!1886726) (= lambda!215406 lambda!215378))))

(declare-fun bs!1109813 () Bool)

(assert (= bs!1109813 (and d!1503082 b!4721535)))

(assert (=> bs!1109813 (= (= lt!1886843 lt!1886751) (= lambda!215406 lambda!215381))))

(declare-fun bs!1109814 () Bool)

(assert (= bs!1109814 (and d!1503082 b!4721536)))

(assert (=> bs!1109814 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215379))))

(declare-fun bs!1109815 () Bool)

(assert (= bs!1109815 (and d!1503082 b!4721430)))

(assert (=> bs!1109815 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215348))))

(declare-fun bs!1109816 () Bool)

(assert (= bs!1109816 (and d!1503082 b!4721633)))

(assert (=> bs!1109816 (= (= lt!1886843 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215406 lambda!215403))))

(declare-fun bs!1109817 () Bool)

(assert (= bs!1109817 (and d!1503082 d!1502956)))

(assert (=> bs!1109817 (= (= lt!1886843 lt!1886602) (= lambda!215406 lambda!215346))))

(assert (=> bs!1109813 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215380))))

(declare-fun bs!1109818 () Bool)

(assert (= bs!1109818 (and d!1503082 b!4721545)))

(assert (=> bs!1109818 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215386))))

(declare-fun bs!1109819 () Bool)

(assert (= bs!1109819 (and d!1503082 d!1503020)))

(assert (=> bs!1109819 (not (= lambda!215406 lambda!215385))))

(declare-fun bs!1109820 () Bool)

(assert (= bs!1109820 (and d!1503082 b!4721632)))

(assert (=> bs!1109820 (= (= lt!1886843 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215406 lambda!215404))))

(assert (=> bs!1109820 (= (= lt!1886843 lt!1886847) (= lambda!215406 lambda!215405))))

(assert (=> bs!1109815 (= (= lt!1886843 lt!1886627) (= lambda!215406 lambda!215349))))

(declare-fun bs!1109821 () Bool)

(assert (= bs!1109821 (and d!1503082 b!4721530)))

(assert (=> bs!1109821 (= (= lt!1886843 lt!1886730) (= lambda!215406 lambda!215376))))

(declare-fun bs!1109822 () Bool)

(assert (= bs!1109822 (and d!1503082 b!4721423)))

(assert (=> bs!1109822 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215344))))

(declare-fun bs!1109823 () Bool)

(assert (= bs!1109823 (and d!1503082 b!4721424)))

(assert (=> bs!1109823 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215343))))

(declare-fun bs!1109824 () Bool)

(assert (= bs!1109824 (and d!1503082 b!4721544)))

(assert (=> bs!1109824 (= (= lt!1886843 lt!1886775) (= lambda!215406 lambda!215388))))

(declare-fun bs!1109825 () Bool)

(assert (= bs!1109825 (and d!1503082 d!1503024)))

(assert (=> bs!1109825 (= (= lt!1886843 lt!1886771) (= lambda!215406 lambda!215389))))

(assert (=> bs!1109822 (= (= lt!1886843 lt!1886606) (= lambda!215406 lambda!215345))))

(assert (=> bs!1109821 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215375))))

(declare-fun bs!1109826 () Bool)

(assert (= bs!1109826 (and d!1503082 b!4721531)))

(assert (=> bs!1109826 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215373))))

(declare-fun bs!1109827 () Bool)

(assert (= bs!1109827 (and d!1503082 b!4721431)))

(assert (=> bs!1109827 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215347))))

(declare-fun bs!1109828 () Bool)

(assert (= bs!1109828 (and d!1503082 d!1502964)))

(assert (=> bs!1109828 (= (= lt!1886843 lt!1886623) (= lambda!215406 lambda!215352))))

(assert (=> bs!1109824 (= (= lt!1886843 lt!1886424) (= lambda!215406 lambda!215387))))

(declare-fun bs!1109829 () Bool)

(assert (= bs!1109829 (and d!1503082 d!1503014)))

(assert (=> bs!1109829 (= (= lt!1886843 lt!1886747) (= lambda!215406 lambda!215382))))

(declare-fun bs!1109830 () Bool)

(assert (= bs!1109830 (and d!1503082 d!1503040)))

(assert (=> bs!1109830 (not (= lambda!215406 lambda!215399))))

(assert (=> d!1503082 true))

(declare-fun bm!330191 () Bool)

(declare-fun call!330197 () Unit!129750)

(assert (=> bm!330191 (= call!330197 (lemmaContainsAllItsOwnKeys!795 (+!2267 lt!1886424 (h!59169 newBucket!218))))))

(declare-fun e!2944657 () ListMap!5277)

(assert (=> b!4721632 (= e!2944657 lt!1886847)))

(declare-fun lt!1886846 () ListMap!5277)

(assert (=> b!4721632 (= lt!1886846 (+!2267 (+!2267 lt!1886424 (h!59169 newBucket!218)) (h!59169 (t!360210 newBucket!218))))))

(assert (=> b!4721632 (= lt!1886847 (addToMapMapFromBucket!1442 (t!360210 (t!360210 newBucket!218)) (+!2267 (+!2267 lt!1886424 (h!59169 newBucket!218)) (h!59169 (t!360210 newBucket!218)))))))

(declare-fun lt!1886853 () Unit!129750)

(assert (=> b!4721632 (= lt!1886853 call!330197)))

(declare-fun call!330196 () Bool)

(assert (=> b!4721632 call!330196))

(declare-fun lt!1886850 () Unit!129750)

(assert (=> b!4721632 (= lt!1886850 lt!1886853)))

(declare-fun call!330198 () Bool)

(assert (=> b!4721632 call!330198))

(declare-fun lt!1886851 () Unit!129750)

(declare-fun Unit!129866 () Unit!129750)

(assert (=> b!4721632 (= lt!1886851 Unit!129866)))

(assert (=> b!4721632 (forall!11584 (t!360210 (t!360210 newBucket!218)) lambda!215405)))

(declare-fun lt!1886858 () Unit!129750)

(declare-fun Unit!129867 () Unit!129750)

(assert (=> b!4721632 (= lt!1886858 Unit!129867)))

(declare-fun lt!1886842 () Unit!129750)

(declare-fun Unit!129868 () Unit!129750)

(assert (=> b!4721632 (= lt!1886842 Unit!129868)))

(declare-fun lt!1886845 () Unit!129750)

(assert (=> b!4721632 (= lt!1886845 (forallContained!3635 (toList!5913 lt!1886846) lambda!215405 (h!59169 (t!360210 newBucket!218))))))

(assert (=> b!4721632 (contains!16168 lt!1886846 (_1!30515 (h!59169 (t!360210 newBucket!218))))))

(declare-fun lt!1886841 () Unit!129750)

(declare-fun Unit!129869 () Unit!129750)

(assert (=> b!4721632 (= lt!1886841 Unit!129869)))

(assert (=> b!4721632 (contains!16168 lt!1886847 (_1!30515 (h!59169 (t!360210 newBucket!218))))))

(declare-fun lt!1886848 () Unit!129750)

(declare-fun Unit!129870 () Unit!129750)

(assert (=> b!4721632 (= lt!1886848 Unit!129870)))

(assert (=> b!4721632 (forall!11584 (t!360210 newBucket!218) lambda!215405)))

(declare-fun lt!1886860 () Unit!129750)

(declare-fun Unit!129871 () Unit!129750)

(assert (=> b!4721632 (= lt!1886860 Unit!129871)))

(assert (=> b!4721632 (forall!11584 (toList!5913 lt!1886846) lambda!215405)))

(declare-fun lt!1886859 () Unit!129750)

(declare-fun Unit!129872 () Unit!129750)

(assert (=> b!4721632 (= lt!1886859 Unit!129872)))

(declare-fun lt!1886844 () Unit!129750)

(declare-fun Unit!129873 () Unit!129750)

(assert (=> b!4721632 (= lt!1886844 Unit!129873)))

(declare-fun lt!1886856 () Unit!129750)

(assert (=> b!4721632 (= lt!1886856 (addForallContainsKeyThenBeforeAdding!794 (+!2267 lt!1886424 (h!59169 newBucket!218)) lt!1886847 (_1!30515 (h!59169 (t!360210 newBucket!218))) (_2!30515 (h!59169 (t!360210 newBucket!218)))))))

(assert (=> b!4721632 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 newBucket!218))) lambda!215405)))

(declare-fun lt!1886852 () Unit!129750)

(assert (=> b!4721632 (= lt!1886852 lt!1886856)))

(assert (=> b!4721632 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 newBucket!218))) lambda!215405)))

(declare-fun lt!1886855 () Unit!129750)

(declare-fun Unit!129874 () Unit!129750)

(assert (=> b!4721632 (= lt!1886855 Unit!129874)))

(declare-fun res!1997432 () Bool)

(assert (=> b!4721632 (= res!1997432 (forall!11584 (t!360210 newBucket!218) lambda!215405))))

(declare-fun e!2944658 () Bool)

(assert (=> b!4721632 (=> (not res!1997432) (not e!2944658))))

(assert (=> b!4721632 e!2944658))

(declare-fun lt!1886857 () Unit!129750)

(declare-fun Unit!129875 () Unit!129750)

(assert (=> b!4721632 (= lt!1886857 Unit!129875)))

(declare-fun bm!330192 () Bool)

(declare-fun c!806346 () Bool)

(assert (=> bm!330192 (= call!330198 (forall!11584 (ite c!806346 (toList!5913 (+!2267 lt!1886424 (h!59169 newBucket!218))) (toList!5913 lt!1886846)) (ite c!806346 lambda!215403 lambda!215405)))))

(assert (=> b!4721633 (= e!2944657 (+!2267 lt!1886424 (h!59169 newBucket!218)))))

(declare-fun lt!1886861 () Unit!129750)

(assert (=> b!4721633 (= lt!1886861 call!330197)))

(assert (=> b!4721633 call!330198))

(declare-fun lt!1886849 () Unit!129750)

(assert (=> b!4721633 (= lt!1886849 lt!1886861)))

(assert (=> b!4721633 call!330196))

(declare-fun lt!1886854 () Unit!129750)

(declare-fun Unit!129876 () Unit!129750)

(assert (=> b!4721633 (= lt!1886854 Unit!129876)))

(declare-fun b!4721635 () Bool)

(declare-fun res!1997434 () Bool)

(declare-fun e!2944656 () Bool)

(assert (=> b!4721635 (=> (not res!1997434) (not e!2944656))))

(assert (=> b!4721635 (= res!1997434 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 newBucket!218))) lambda!215406))))

(declare-fun bm!330193 () Bool)

(assert (=> bm!330193 (= call!330196 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 newBucket!218))) (ite c!806346 lambda!215403 lambda!215404)))))

(declare-fun b!4721636 () Bool)

(assert (=> b!4721636 (= e!2944656 (invariantList!1509 (toList!5913 lt!1886843)))))

(declare-fun b!4721634 () Bool)

(assert (=> b!4721634 (= e!2944658 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 newBucket!218))) lambda!215405))))

(assert (=> d!1503082 e!2944656))

(declare-fun res!1997433 () Bool)

(assert (=> d!1503082 (=> (not res!1997433) (not e!2944656))))

(assert (=> d!1503082 (= res!1997433 (forall!11584 (t!360210 newBucket!218) lambda!215406))))

(assert (=> d!1503082 (= lt!1886843 e!2944657)))

(assert (=> d!1503082 (= c!806346 ((_ is Nil!52824) (t!360210 newBucket!218)))))

(assert (=> d!1503082 (noDuplicateKeys!2012 (t!360210 newBucket!218))))

(assert (=> d!1503082 (= (addToMapMapFromBucket!1442 (t!360210 newBucket!218) (+!2267 lt!1886424 (h!59169 newBucket!218))) lt!1886843)))

(assert (= (and d!1503082 c!806346) b!4721633))

(assert (= (and d!1503082 (not c!806346)) b!4721632))

(assert (= (and b!4721632 res!1997432) b!4721634))

(assert (= (or b!4721633 b!4721632) bm!330191))

(assert (= (or b!4721633 b!4721632) bm!330193))

(assert (= (or b!4721633 b!4721632) bm!330192))

(assert (= (and d!1503082 res!1997433) b!4721635))

(assert (= (and b!4721635 res!1997434) b!4721636))

(declare-fun m!5656043 () Bool)

(assert (=> b!4721636 m!5656043))

(declare-fun m!5656045 () Bool)

(assert (=> d!1503082 m!5656045))

(assert (=> d!1503082 m!5655435))

(declare-fun m!5656047 () Bool)

(assert (=> b!4721635 m!5656047))

(assert (=> bm!330191 m!5655799))

(declare-fun m!5656049 () Bool)

(assert (=> bm!330191 m!5656049))

(declare-fun m!5656051 () Bool)

(assert (=> b!4721632 m!5656051))

(declare-fun m!5656053 () Bool)

(assert (=> b!4721632 m!5656053))

(declare-fun m!5656055 () Bool)

(assert (=> b!4721632 m!5656055))

(assert (=> b!4721632 m!5655799))

(declare-fun m!5656057 () Bool)

(assert (=> b!4721632 m!5656057))

(assert (=> b!4721632 m!5656055))

(declare-fun m!5656059 () Bool)

(assert (=> b!4721632 m!5656059))

(declare-fun m!5656061 () Bool)

(assert (=> b!4721632 m!5656061))

(declare-fun m!5656063 () Bool)

(assert (=> b!4721632 m!5656063))

(declare-fun m!5656065 () Bool)

(assert (=> b!4721632 m!5656065))

(assert (=> b!4721632 m!5656065))

(assert (=> b!4721632 m!5655799))

(declare-fun m!5656067 () Bool)

(assert (=> b!4721632 m!5656067))

(assert (=> b!4721632 m!5656057))

(declare-fun m!5656069 () Bool)

(assert (=> b!4721632 m!5656069))

(declare-fun m!5656071 () Bool)

(assert (=> bm!330193 m!5656071))

(declare-fun m!5656073 () Bool)

(assert (=> bm!330192 m!5656073))

(assert (=> b!4721634 m!5656065))

(assert (=> b!4721530 d!1503082))

(declare-fun bs!1109831 () Bool)

(declare-fun d!1503084 () Bool)

(assert (= bs!1109831 (and d!1503084 d!1503008)))

(declare-fun lambda!215411 () Int)

(assert (=> bs!1109831 (= (= lt!1886730 lt!1886726) (= lambda!215411 lambda!215378))))

(declare-fun bs!1109832 () Bool)

(assert (= bs!1109832 (and d!1503084 b!4721535)))

(assert (=> bs!1109832 (= (= lt!1886730 lt!1886751) (= lambda!215411 lambda!215381))))

(declare-fun bs!1109833 () Bool)

(assert (= bs!1109833 (and d!1503084 b!4721536)))

(assert (=> bs!1109833 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215379))))

(declare-fun bs!1109834 () Bool)

(assert (= bs!1109834 (and d!1503084 b!4721430)))

(assert (=> bs!1109834 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215348))))

(declare-fun bs!1109835 () Bool)

(assert (= bs!1109835 (and d!1503084 b!4721633)))

(assert (=> bs!1109835 (= (= lt!1886730 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215411 lambda!215403))))

(declare-fun bs!1109836 () Bool)

(assert (= bs!1109836 (and d!1503084 d!1502956)))

(assert (=> bs!1109836 (= (= lt!1886730 lt!1886602) (= lambda!215411 lambda!215346))))

(assert (=> bs!1109832 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215380))))

(declare-fun bs!1109837 () Bool)

(assert (= bs!1109837 (and d!1503084 b!4721545)))

(assert (=> bs!1109837 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215386))))

(declare-fun bs!1109838 () Bool)

(assert (= bs!1109838 (and d!1503084 d!1503020)))

(assert (=> bs!1109838 (not (= lambda!215411 lambda!215385))))

(declare-fun bs!1109839 () Bool)

(assert (= bs!1109839 (and d!1503084 b!4721632)))

(assert (=> bs!1109839 (= (= lt!1886730 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215411 lambda!215404))))

(assert (=> bs!1109839 (= (= lt!1886730 lt!1886847) (= lambda!215411 lambda!215405))))

(assert (=> bs!1109834 (= (= lt!1886730 lt!1886627) (= lambda!215411 lambda!215349))))

(declare-fun bs!1109840 () Bool)

(assert (= bs!1109840 (and d!1503084 b!4721530)))

(assert (=> bs!1109840 (= lambda!215411 lambda!215376)))

(declare-fun bs!1109841 () Bool)

(assert (= bs!1109841 (and d!1503084 b!4721423)))

(assert (=> bs!1109841 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215344))))

(declare-fun bs!1109842 () Bool)

(assert (= bs!1109842 (and d!1503084 b!4721424)))

(assert (=> bs!1109842 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215343))))

(declare-fun bs!1109843 () Bool)

(assert (= bs!1109843 (and d!1503084 b!4721544)))

(assert (=> bs!1109843 (= (= lt!1886730 lt!1886775) (= lambda!215411 lambda!215388))))

(declare-fun bs!1109844 () Bool)

(assert (= bs!1109844 (and d!1503084 d!1503024)))

(assert (=> bs!1109844 (= (= lt!1886730 lt!1886771) (= lambda!215411 lambda!215389))))

(assert (=> bs!1109841 (= (= lt!1886730 lt!1886606) (= lambda!215411 lambda!215345))))

(assert (=> bs!1109840 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215375))))

(declare-fun bs!1109845 () Bool)

(assert (= bs!1109845 (and d!1503084 b!4721531)))

(assert (=> bs!1109845 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215373))))

(declare-fun bs!1109846 () Bool)

(assert (= bs!1109846 (and d!1503084 b!4721431)))

(assert (=> bs!1109846 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215347))))

(declare-fun bs!1109847 () Bool)

(assert (= bs!1109847 (and d!1503084 d!1502964)))

(assert (=> bs!1109847 (= (= lt!1886730 lt!1886623) (= lambda!215411 lambda!215352))))

(assert (=> bs!1109843 (= (= lt!1886730 lt!1886424) (= lambda!215411 lambda!215387))))

(declare-fun bs!1109848 () Bool)

(assert (= bs!1109848 (and d!1503084 d!1503014)))

(assert (=> bs!1109848 (= (= lt!1886730 lt!1886747) (= lambda!215411 lambda!215382))))

(declare-fun bs!1109849 () Bool)

(assert (= bs!1109849 (and d!1503084 d!1503040)))

(assert (=> bs!1109849 (not (= lambda!215411 lambda!215399))))

(declare-fun bs!1109850 () Bool)

(assert (= bs!1109850 (and d!1503084 d!1503082)))

(assert (=> bs!1109850 (= (= lt!1886730 lt!1886843) (= lambda!215411 lambda!215406))))

(assert (=> d!1503084 true))

(assert (=> d!1503084 (forall!11584 (toList!5913 lt!1886424) lambda!215411)))

(declare-fun lt!1886864 () Unit!129750)

(declare-fun choose!33307 (ListMap!5277 ListMap!5277 K!14180 V!14426) Unit!129750)

(assert (=> d!1503084 (= lt!1886864 (choose!33307 lt!1886424 lt!1886730 (_1!30515 (h!59169 newBucket!218)) (_2!30515 (h!59169 newBucket!218))))))

(assert (=> d!1503084 (forall!11584 (toList!5913 (+!2267 lt!1886424 (tuple2!54443 (_1!30515 (h!59169 newBucket!218)) (_2!30515 (h!59169 newBucket!218))))) lambda!215411)))

(assert (=> d!1503084 (= (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886730 (_1!30515 (h!59169 newBucket!218)) (_2!30515 (h!59169 newBucket!218))) lt!1886864)))

(declare-fun bs!1109851 () Bool)

(assert (= bs!1109851 d!1503084))

(declare-fun m!5656075 () Bool)

(assert (=> bs!1109851 m!5656075))

(declare-fun m!5656077 () Bool)

(assert (=> bs!1109851 m!5656077))

(declare-fun m!5656079 () Bool)

(assert (=> bs!1109851 m!5656079))

(declare-fun m!5656081 () Bool)

(assert (=> bs!1109851 m!5656081))

(assert (=> b!4721530 d!1503084))

(declare-fun d!1503086 () Bool)

(declare-fun e!2944663 () Bool)

(assert (=> d!1503086 e!2944663))

(declare-fun res!1997436 () Bool)

(assert (=> d!1503086 (=> res!1997436 e!2944663)))

(declare-fun e!2944659 () Bool)

(assert (=> d!1503086 (= res!1997436 e!2944659)))

(declare-fun res!1997437 () Bool)

(assert (=> d!1503086 (=> (not res!1997437) (not e!2944659))))

(declare-fun lt!1886866 () Bool)

(assert (=> d!1503086 (= res!1997437 (not lt!1886866))))

(declare-fun lt!1886869 () Bool)

(assert (=> d!1503086 (= lt!1886866 lt!1886869)))

(declare-fun lt!1886865 () Unit!129750)

(declare-fun e!2944664 () Unit!129750)

(assert (=> d!1503086 (= lt!1886865 e!2944664)))

(declare-fun c!806348 () Bool)

(assert (=> d!1503086 (= c!806348 lt!1886869)))

(assert (=> d!1503086 (= lt!1886869 (containsKey!3367 (toList!5913 lt!1886729) (_1!30515 (h!59169 newBucket!218))))))

(assert (=> d!1503086 (= (contains!16168 lt!1886729 (_1!30515 (h!59169 newBucket!218))) lt!1886866)))

(declare-fun b!4721638 () Bool)

(declare-fun e!2944661 () List!52951)

(assert (=> b!4721638 (= e!2944661 (keys!18970 lt!1886729))))

(declare-fun b!4721639 () Bool)

(declare-fun lt!1886871 () Unit!129750)

(assert (=> b!4721639 (= e!2944664 lt!1886871)))

(declare-fun lt!1886872 () Unit!129750)

(assert (=> b!4721639 (= lt!1886872 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886729) (_1!30515 (h!59169 newBucket!218))))))

(assert (=> b!4721639 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886729) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun lt!1886870 () Unit!129750)

(assert (=> b!4721639 (= lt!1886870 lt!1886872)))

(assert (=> b!4721639 (= lt!1886871 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886729) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun call!330199 () Bool)

(assert (=> b!4721639 call!330199))

(declare-fun b!4721640 () Bool)

(declare-fun e!2944662 () Unit!129750)

(assert (=> b!4721640 (= e!2944664 e!2944662)))

(declare-fun c!806347 () Bool)

(assert (=> b!4721640 (= c!806347 call!330199)))

(declare-fun b!4721641 () Bool)

(declare-fun e!2944660 () Bool)

(assert (=> b!4721641 (= e!2944663 e!2944660)))

(declare-fun res!1997435 () Bool)

(assert (=> b!4721641 (=> (not res!1997435) (not e!2944660))))

(assert (=> b!4721641 (= res!1997435 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886729) (_1!30515 (h!59169 newBucket!218)))))))

(declare-fun b!4721642 () Bool)

(assert (=> b!4721642 (= e!2944661 (getKeysList!949 (toList!5913 lt!1886729)))))

(declare-fun b!4721643 () Bool)

(declare-fun Unit!129877 () Unit!129750)

(assert (=> b!4721643 (= e!2944662 Unit!129877)))

(declare-fun b!4721644 () Bool)

(assert (=> b!4721644 (= e!2944659 (not (contains!16171 (keys!18970 lt!1886729) (_1!30515 (h!59169 newBucket!218)))))))

(declare-fun b!4721645 () Bool)

(assert (=> b!4721645 false))

(declare-fun lt!1886868 () Unit!129750)

(declare-fun lt!1886867 () Unit!129750)

(assert (=> b!4721645 (= lt!1886868 lt!1886867)))

(assert (=> b!4721645 (containsKey!3367 (toList!5913 lt!1886729) (_1!30515 (h!59169 newBucket!218)))))

(assert (=> b!4721645 (= lt!1886867 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886729) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun Unit!129878 () Unit!129750)

(assert (=> b!4721645 (= e!2944662 Unit!129878)))

(declare-fun b!4721646 () Bool)

(assert (=> b!4721646 (= e!2944660 (contains!16171 (keys!18970 lt!1886729) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun bm!330194 () Bool)

(assert (=> bm!330194 (= call!330199 (contains!16171 e!2944661 (_1!30515 (h!59169 newBucket!218))))))

(declare-fun c!806349 () Bool)

(assert (=> bm!330194 (= c!806349 c!806348)))

(assert (= (and d!1503086 c!806348) b!4721639))

(assert (= (and d!1503086 (not c!806348)) b!4721640))

(assert (= (and b!4721640 c!806347) b!4721645))

(assert (= (and b!4721640 (not c!806347)) b!4721643))

(assert (= (or b!4721639 b!4721640) bm!330194))

(assert (= (and bm!330194 c!806349) b!4721642))

(assert (= (and bm!330194 (not c!806349)) b!4721638))

(assert (= (and d!1503086 res!1997437) b!4721644))

(assert (= (and d!1503086 (not res!1997436)) b!4721641))

(assert (= (and b!4721641 res!1997435) b!4721646))

(declare-fun m!5656083 () Bool)

(assert (=> bm!330194 m!5656083))

(declare-fun m!5656085 () Bool)

(assert (=> b!4721641 m!5656085))

(assert (=> b!4721641 m!5656085))

(declare-fun m!5656087 () Bool)

(assert (=> b!4721641 m!5656087))

(declare-fun m!5656089 () Bool)

(assert (=> d!1503086 m!5656089))

(declare-fun m!5656091 () Bool)

(assert (=> b!4721638 m!5656091))

(declare-fun m!5656093 () Bool)

(assert (=> b!4721639 m!5656093))

(assert (=> b!4721639 m!5656085))

(assert (=> b!4721639 m!5656085))

(assert (=> b!4721639 m!5656087))

(declare-fun m!5656095 () Bool)

(assert (=> b!4721639 m!5656095))

(assert (=> b!4721646 m!5656091))

(assert (=> b!4721646 m!5656091))

(declare-fun m!5656097 () Bool)

(assert (=> b!4721646 m!5656097))

(assert (=> b!4721644 m!5656091))

(assert (=> b!4721644 m!5656091))

(assert (=> b!4721644 m!5656097))

(declare-fun m!5656099 () Bool)

(assert (=> b!4721642 m!5656099))

(assert (=> b!4721645 m!5656089))

(declare-fun m!5656101 () Bool)

(assert (=> b!4721645 m!5656101))

(assert (=> b!4721530 d!1503086))

(declare-fun d!1503088 () Bool)

(declare-fun res!1997438 () Bool)

(declare-fun e!2944665 () Bool)

(assert (=> d!1503088 (=> res!1997438 e!2944665)))

(assert (=> d!1503088 (= res!1997438 ((_ is Nil!52824) (t!360210 newBucket!218)))))

(assert (=> d!1503088 (= (forall!11584 (t!360210 newBucket!218) lambda!215376) e!2944665)))

(declare-fun b!4721647 () Bool)

(declare-fun e!2944666 () Bool)

(assert (=> b!4721647 (= e!2944665 e!2944666)))

(declare-fun res!1997439 () Bool)

(assert (=> b!4721647 (=> (not res!1997439) (not e!2944666))))

(assert (=> b!4721647 (= res!1997439 (dynLambda!21817 lambda!215376 (h!59169 (t!360210 newBucket!218))))))

(declare-fun b!4721648 () Bool)

(assert (=> b!4721648 (= e!2944666 (forall!11584 (t!360210 (t!360210 newBucket!218)) lambda!215376))))

(assert (= (and d!1503088 (not res!1997438)) b!4721647))

(assert (= (and b!4721647 res!1997439) b!4721648))

(declare-fun b_lambda!178343 () Bool)

(assert (=> (not b_lambda!178343) (not b!4721647)))

(declare-fun m!5656103 () Bool)

(assert (=> b!4721647 m!5656103))

(declare-fun m!5656105 () Bool)

(assert (=> b!4721648 m!5656105))

(assert (=> b!4721530 d!1503088))

(declare-fun d!1503090 () Bool)

(declare-fun res!1997440 () Bool)

(declare-fun e!2944667 () Bool)

(assert (=> d!1503090 (=> res!1997440 e!2944667)))

(assert (=> d!1503090 (= res!1997440 ((_ is Nil!52824) newBucket!218))))

(assert (=> d!1503090 (= (forall!11584 newBucket!218 lambda!215376) e!2944667)))

(declare-fun b!4721649 () Bool)

(declare-fun e!2944668 () Bool)

(assert (=> b!4721649 (= e!2944667 e!2944668)))

(declare-fun res!1997441 () Bool)

(assert (=> b!4721649 (=> (not res!1997441) (not e!2944668))))

(assert (=> b!4721649 (= res!1997441 (dynLambda!21817 lambda!215376 (h!59169 newBucket!218)))))

(declare-fun b!4721650 () Bool)

(assert (=> b!4721650 (= e!2944668 (forall!11584 (t!360210 newBucket!218) lambda!215376))))

(assert (= (and d!1503090 (not res!1997440)) b!4721649))

(assert (= (and b!4721649 res!1997441) b!4721650))

(declare-fun b_lambda!178345 () Bool)

(assert (=> (not b_lambda!178345) (not b!4721649)))

(declare-fun m!5656107 () Bool)

(assert (=> b!4721649 m!5656107))

(assert (=> b!4721650 m!5655795))

(assert (=> b!4721530 d!1503090))

(declare-fun d!1503092 () Bool)

(declare-fun res!1997442 () Bool)

(declare-fun e!2944669 () Bool)

(assert (=> d!1503092 (=> res!1997442 e!2944669)))

(assert (=> d!1503092 (= res!1997442 ((_ is Nil!52824) (toList!5913 lt!1886729)))))

(assert (=> d!1503092 (= (forall!11584 (toList!5913 lt!1886729) lambda!215376) e!2944669)))

(declare-fun b!4721651 () Bool)

(declare-fun e!2944670 () Bool)

(assert (=> b!4721651 (= e!2944669 e!2944670)))

(declare-fun res!1997443 () Bool)

(assert (=> b!4721651 (=> (not res!1997443) (not e!2944670))))

(assert (=> b!4721651 (= res!1997443 (dynLambda!21817 lambda!215376 (h!59169 (toList!5913 lt!1886729))))))

(declare-fun b!4721652 () Bool)

(assert (=> b!4721652 (= e!2944670 (forall!11584 (t!360210 (toList!5913 lt!1886729)) lambda!215376))))

(assert (= (and d!1503092 (not res!1997442)) b!4721651))

(assert (= (and b!4721651 res!1997443) b!4721652))

(declare-fun b_lambda!178347 () Bool)

(assert (=> (not b_lambda!178347) (not b!4721651)))

(declare-fun m!5656109 () Bool)

(assert (=> b!4721651 m!5656109))

(declare-fun m!5656111 () Bool)

(assert (=> b!4721652 m!5656111))

(assert (=> b!4721530 d!1503092))

(declare-fun d!1503094 () Bool)

(declare-fun res!1997444 () Bool)

(declare-fun e!2944671 () Bool)

(assert (=> d!1503094 (=> res!1997444 e!2944671)))

(assert (=> d!1503094 (= res!1997444 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503094 (= (forall!11584 (toList!5913 lt!1886424) lambda!215376) e!2944671)))

(declare-fun b!4721653 () Bool)

(declare-fun e!2944672 () Bool)

(assert (=> b!4721653 (= e!2944671 e!2944672)))

(declare-fun res!1997445 () Bool)

(assert (=> b!4721653 (=> (not res!1997445) (not e!2944672))))

(assert (=> b!4721653 (= res!1997445 (dynLambda!21817 lambda!215376 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721654 () Bool)

(assert (=> b!4721654 (= e!2944672 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215376))))

(assert (= (and d!1503094 (not res!1997444)) b!4721653))

(assert (= (and b!4721653 res!1997445) b!4721654))

(declare-fun b_lambda!178349 () Bool)

(assert (=> (not b_lambda!178349) (not b!4721653)))

(declare-fun m!5656113 () Bool)

(assert (=> b!4721653 m!5656113))

(declare-fun m!5656115 () Bool)

(assert (=> b!4721654 m!5656115))

(assert (=> b!4721530 d!1503094))

(declare-fun d!1503096 () Bool)

(declare-fun e!2944677 () Bool)

(assert (=> d!1503096 e!2944677))

(declare-fun res!1997447 () Bool)

(assert (=> d!1503096 (=> res!1997447 e!2944677)))

(declare-fun e!2944673 () Bool)

(assert (=> d!1503096 (= res!1997447 e!2944673)))

(declare-fun res!1997448 () Bool)

(assert (=> d!1503096 (=> (not res!1997448) (not e!2944673))))

(declare-fun lt!1886874 () Bool)

(assert (=> d!1503096 (= res!1997448 (not lt!1886874))))

(declare-fun lt!1886877 () Bool)

(assert (=> d!1503096 (= lt!1886874 lt!1886877)))

(declare-fun lt!1886873 () Unit!129750)

(declare-fun e!2944678 () Unit!129750)

(assert (=> d!1503096 (= lt!1886873 e!2944678)))

(declare-fun c!806351 () Bool)

(assert (=> d!1503096 (= c!806351 lt!1886877)))

(assert (=> d!1503096 (= lt!1886877 (containsKey!3367 (toList!5913 lt!1886730) (_1!30515 (h!59169 newBucket!218))))))

(assert (=> d!1503096 (= (contains!16168 lt!1886730 (_1!30515 (h!59169 newBucket!218))) lt!1886874)))

(declare-fun b!4721655 () Bool)

(declare-fun e!2944675 () List!52951)

(assert (=> b!4721655 (= e!2944675 (keys!18970 lt!1886730))))

(declare-fun b!4721656 () Bool)

(declare-fun lt!1886879 () Unit!129750)

(assert (=> b!4721656 (= e!2944678 lt!1886879)))

(declare-fun lt!1886880 () Unit!129750)

(assert (=> b!4721656 (= lt!1886880 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886730) (_1!30515 (h!59169 newBucket!218))))))

(assert (=> b!4721656 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886730) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun lt!1886878 () Unit!129750)

(assert (=> b!4721656 (= lt!1886878 lt!1886880)))

(assert (=> b!4721656 (= lt!1886879 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886730) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun call!330200 () Bool)

(assert (=> b!4721656 call!330200))

(declare-fun b!4721657 () Bool)

(declare-fun e!2944676 () Unit!129750)

(assert (=> b!4721657 (= e!2944678 e!2944676)))

(declare-fun c!806350 () Bool)

(assert (=> b!4721657 (= c!806350 call!330200)))

(declare-fun b!4721658 () Bool)

(declare-fun e!2944674 () Bool)

(assert (=> b!4721658 (= e!2944677 e!2944674)))

(declare-fun res!1997446 () Bool)

(assert (=> b!4721658 (=> (not res!1997446) (not e!2944674))))

(assert (=> b!4721658 (= res!1997446 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886730) (_1!30515 (h!59169 newBucket!218)))))))

(declare-fun b!4721659 () Bool)

(assert (=> b!4721659 (= e!2944675 (getKeysList!949 (toList!5913 lt!1886730)))))

(declare-fun b!4721660 () Bool)

(declare-fun Unit!129879 () Unit!129750)

(assert (=> b!4721660 (= e!2944676 Unit!129879)))

(declare-fun b!4721661 () Bool)

(assert (=> b!4721661 (= e!2944673 (not (contains!16171 (keys!18970 lt!1886730) (_1!30515 (h!59169 newBucket!218)))))))

(declare-fun b!4721662 () Bool)

(assert (=> b!4721662 false))

(declare-fun lt!1886876 () Unit!129750)

(declare-fun lt!1886875 () Unit!129750)

(assert (=> b!4721662 (= lt!1886876 lt!1886875)))

(assert (=> b!4721662 (containsKey!3367 (toList!5913 lt!1886730) (_1!30515 (h!59169 newBucket!218)))))

(assert (=> b!4721662 (= lt!1886875 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886730) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun Unit!129880 () Unit!129750)

(assert (=> b!4721662 (= e!2944676 Unit!129880)))

(declare-fun b!4721663 () Bool)

(assert (=> b!4721663 (= e!2944674 (contains!16171 (keys!18970 lt!1886730) (_1!30515 (h!59169 newBucket!218))))))

(declare-fun bm!330195 () Bool)

(assert (=> bm!330195 (= call!330200 (contains!16171 e!2944675 (_1!30515 (h!59169 newBucket!218))))))

(declare-fun c!806352 () Bool)

(assert (=> bm!330195 (= c!806352 c!806351)))

(assert (= (and d!1503096 c!806351) b!4721656))

(assert (= (and d!1503096 (not c!806351)) b!4721657))

(assert (= (and b!4721657 c!806350) b!4721662))

(assert (= (and b!4721657 (not c!806350)) b!4721660))

(assert (= (or b!4721656 b!4721657) bm!330195))

(assert (= (and bm!330195 c!806352) b!4721659))

(assert (= (and bm!330195 (not c!806352)) b!4721655))

(assert (= (and d!1503096 res!1997448) b!4721661))

(assert (= (and d!1503096 (not res!1997447)) b!4721658))

(assert (= (and b!4721658 res!1997446) b!4721663))

(declare-fun m!5656117 () Bool)

(assert (=> bm!330195 m!5656117))

(declare-fun m!5656119 () Bool)

(assert (=> b!4721658 m!5656119))

(assert (=> b!4721658 m!5656119))

(declare-fun m!5656121 () Bool)

(assert (=> b!4721658 m!5656121))

(declare-fun m!5656123 () Bool)

(assert (=> d!1503096 m!5656123))

(declare-fun m!5656125 () Bool)

(assert (=> b!4721655 m!5656125))

(declare-fun m!5656127 () Bool)

(assert (=> b!4721656 m!5656127))

(assert (=> b!4721656 m!5656119))

(assert (=> b!4721656 m!5656119))

(assert (=> b!4721656 m!5656121))

(declare-fun m!5656129 () Bool)

(assert (=> b!4721656 m!5656129))

(assert (=> b!4721663 m!5656125))

(assert (=> b!4721663 m!5656125))

(declare-fun m!5656131 () Bool)

(assert (=> b!4721663 m!5656131))

(assert (=> b!4721661 m!5656125))

(assert (=> b!4721661 m!5656125))

(assert (=> b!4721661 m!5656131))

(declare-fun m!5656133 () Bool)

(assert (=> b!4721659 m!5656133))

(assert (=> b!4721662 m!5656123))

(declare-fun m!5656135 () Bool)

(assert (=> b!4721662 m!5656135))

(assert (=> b!4721530 d!1503096))

(declare-fun d!1503098 () Bool)

(assert (=> d!1503098 (dynLambda!21817 lambda!215376 (h!59169 newBucket!218))))

(declare-fun lt!1886883 () Unit!129750)

(declare-fun choose!33308 (List!52948 Int tuple2!54442) Unit!129750)

(assert (=> d!1503098 (= lt!1886883 (choose!33308 (toList!5913 lt!1886729) lambda!215376 (h!59169 newBucket!218)))))

(declare-fun e!2944681 () Bool)

(assert (=> d!1503098 e!2944681))

(declare-fun res!1997451 () Bool)

(assert (=> d!1503098 (=> (not res!1997451) (not e!2944681))))

(assert (=> d!1503098 (= res!1997451 (forall!11584 (toList!5913 lt!1886729) lambda!215376))))

(assert (=> d!1503098 (= (forallContained!3635 (toList!5913 lt!1886729) lambda!215376 (h!59169 newBucket!218)) lt!1886883)))

(declare-fun b!4721666 () Bool)

(assert (=> b!4721666 (= e!2944681 (contains!16169 (toList!5913 lt!1886729) (h!59169 newBucket!218)))))

(assert (= (and d!1503098 res!1997451) b!4721666))

(declare-fun b_lambda!178351 () Bool)

(assert (=> (not b_lambda!178351) (not d!1503098)))

(assert (=> d!1503098 m!5656107))

(declare-fun m!5656137 () Bool)

(assert (=> d!1503098 m!5656137))

(assert (=> d!1503098 m!5655793))

(declare-fun m!5656139 () Bool)

(assert (=> b!4721666 m!5656139))

(assert (=> b!4721530 d!1503098))

(declare-fun d!1503100 () Bool)

(declare-fun noDuplicatedKeys!372 (List!52948) Bool)

(assert (=> d!1503100 (= (invariantList!1509 (toList!5913 lt!1886829)) (noDuplicatedKeys!372 (toList!5913 lt!1886829)))))

(declare-fun bs!1109852 () Bool)

(assert (= bs!1109852 d!1503100))

(declare-fun m!5656141 () Bool)

(assert (=> bs!1109852 m!5656141))

(assert (=> d!1503050 d!1503100))

(declare-fun d!1503102 () Bool)

(declare-fun res!1997452 () Bool)

(declare-fun e!2944682 () Bool)

(assert (=> d!1503102 (=> res!1997452 e!2944682)))

(assert (=> d!1503102 (= res!1997452 ((_ is Nil!52825) lt!1886426))))

(assert (=> d!1503102 (= (forall!11582 lt!1886426 lambda!215401) e!2944682)))

(declare-fun b!4721667 () Bool)

(declare-fun e!2944683 () Bool)

(assert (=> b!4721667 (= e!2944682 e!2944683)))

(declare-fun res!1997453 () Bool)

(assert (=> b!4721667 (=> (not res!1997453) (not e!2944683))))

(assert (=> b!4721667 (= res!1997453 (dynLambda!21815 lambda!215401 (h!59170 lt!1886426)))))

(declare-fun b!4721668 () Bool)

(assert (=> b!4721668 (= e!2944683 (forall!11582 (t!360211 lt!1886426) lambda!215401))))

(assert (= (and d!1503102 (not res!1997452)) b!4721667))

(assert (= (and b!4721667 res!1997453) b!4721668))

(declare-fun b_lambda!178353 () Bool)

(assert (=> (not b_lambda!178353) (not b!4721667)))

(declare-fun m!5656143 () Bool)

(assert (=> b!4721667 m!5656143))

(declare-fun m!5656145 () Bool)

(assert (=> b!4721668 m!5656145))

(assert (=> d!1503050 d!1503102))

(declare-fun d!1503104 () Bool)

(declare-fun c!806355 () Bool)

(assert (=> d!1503104 (= c!806355 ((_ is Nil!52824) (toList!5913 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424))))))

(declare-fun e!2944686 () (InoxSet tuple2!54442))

(assert (=> d!1503104 (= (content!9390 (toList!5913 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424))) e!2944686)))

(declare-fun b!4721673 () Bool)

(assert (=> b!4721673 (= e!2944686 ((as const (Array tuple2!54442 Bool)) false))))

(declare-fun b!4721674 () Bool)

(assert (=> b!4721674 (= e!2944686 ((_ map or) (store ((as const (Array tuple2!54442 Bool)) false) (h!59169 (toList!5913 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424))) true) (content!9390 (t!360210 (toList!5913 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424))))))))

(assert (= (and d!1503104 c!806355) b!4721673))

(assert (= (and d!1503104 (not c!806355)) b!4721674))

(declare-fun m!5656147 () Bool)

(assert (=> b!4721674 m!5656147))

(declare-fun m!5656149 () Bool)

(assert (=> b!4721674 m!5656149))

(assert (=> d!1502968 d!1503104))

(declare-fun d!1503106 () Bool)

(declare-fun c!806356 () Bool)

(assert (=> d!1503106 (= c!806356 ((_ is Nil!52824) (toList!5913 (+!2267 lt!1886431 lt!1886429))))))

(declare-fun e!2944687 () (InoxSet tuple2!54442))

(assert (=> d!1503106 (= (content!9390 (toList!5913 (+!2267 lt!1886431 lt!1886429))) e!2944687)))

(declare-fun b!4721675 () Bool)

(assert (=> b!4721675 (= e!2944687 ((as const (Array tuple2!54442 Bool)) false))))

(declare-fun b!4721676 () Bool)

(assert (=> b!4721676 (= e!2944687 ((_ map or) (store ((as const (Array tuple2!54442 Bool)) false) (h!59169 (toList!5913 (+!2267 lt!1886431 lt!1886429))) true) (content!9390 (t!360210 (toList!5913 (+!2267 lt!1886431 lt!1886429))))))))

(assert (= (and d!1503106 c!806356) b!4721675))

(assert (= (and d!1503106 (not c!806356)) b!4721676))

(declare-fun m!5656151 () Bool)

(assert (=> b!4721676 m!5656151))

(declare-fun m!5656153 () Bool)

(assert (=> b!4721676 m!5656153))

(assert (=> d!1502968 d!1503106))

(declare-fun d!1503108 () Bool)

(declare-fun res!1997454 () Bool)

(declare-fun e!2944688 () Bool)

(assert (=> d!1503108 (=> res!1997454 e!2944688)))

(assert (=> d!1503108 (= res!1997454 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503108 (= (forall!11584 (toList!5913 lt!1886424) lambda!215345) e!2944688)))

(declare-fun b!4721677 () Bool)

(declare-fun e!2944689 () Bool)

(assert (=> b!4721677 (= e!2944688 e!2944689)))

(declare-fun res!1997455 () Bool)

(assert (=> b!4721677 (=> (not res!1997455) (not e!2944689))))

(assert (=> b!4721677 (= res!1997455 (dynLambda!21817 lambda!215345 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721678 () Bool)

(assert (=> b!4721678 (= e!2944689 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215345))))

(assert (= (and d!1503108 (not res!1997454)) b!4721677))

(assert (= (and b!4721677 res!1997455) b!4721678))

(declare-fun b_lambda!178355 () Bool)

(assert (=> (not b_lambda!178355) (not b!4721677)))

(declare-fun m!5656155 () Bool)

(assert (=> b!4721677 m!5656155))

(declare-fun m!5656157 () Bool)

(assert (=> b!4721678 m!5656157))

(assert (=> b!4721425 d!1503108))

(declare-fun d!1503110 () Bool)

(declare-fun lt!1886886 () Bool)

(declare-fun content!9392 (List!52951) (InoxSet K!14180))

(assert (=> d!1503110 (= lt!1886886 (select (content!9392 e!2944566) key!4653))))

(declare-fun e!2944695 () Bool)

(assert (=> d!1503110 (= lt!1886886 e!2944695)))

(declare-fun res!1997461 () Bool)

(assert (=> d!1503110 (=> (not res!1997461) (not e!2944695))))

(assert (=> d!1503110 (= res!1997461 ((_ is Cons!52827) e!2944566))))

(assert (=> d!1503110 (= (contains!16171 e!2944566 key!4653) lt!1886886)))

(declare-fun b!4721683 () Bool)

(declare-fun e!2944694 () Bool)

(assert (=> b!4721683 (= e!2944695 e!2944694)))

(declare-fun res!1997460 () Bool)

(assert (=> b!4721683 (=> res!1997460 e!2944694)))

(assert (=> b!4721683 (= res!1997460 (= (h!59174 e!2944566) key!4653))))

(declare-fun b!4721684 () Bool)

(assert (=> b!4721684 (= e!2944694 (contains!16171 (t!360215 e!2944566) key!4653))))

(assert (= (and d!1503110 res!1997461) b!4721683))

(assert (= (and b!4721683 (not res!1997460)) b!4721684))

(declare-fun m!5656159 () Bool)

(assert (=> d!1503110 m!5656159))

(declare-fun m!5656161 () Bool)

(assert (=> d!1503110 m!5656161))

(declare-fun m!5656163 () Bool)

(assert (=> b!4721684 m!5656163))

(assert (=> bm!330175 d!1503110))

(declare-fun d!1503112 () Bool)

(declare-fun res!1997462 () Bool)

(declare-fun e!2944696 () Bool)

(assert (=> d!1503112 (=> res!1997462 e!2944696)))

(assert (=> d!1503112 (= res!1997462 (not ((_ is Cons!52824) (t!360210 oldBucket!34))))))

(assert (=> d!1503112 (= (noDuplicateKeys!2012 (t!360210 oldBucket!34)) e!2944696)))

(declare-fun b!4721685 () Bool)

(declare-fun e!2944697 () Bool)

(assert (=> b!4721685 (= e!2944696 e!2944697)))

(declare-fun res!1997463 () Bool)

(assert (=> b!4721685 (=> (not res!1997463) (not e!2944697))))

(assert (=> b!4721685 (= res!1997463 (not (containsKey!3365 (t!360210 (t!360210 oldBucket!34)) (_1!30515 (h!59169 (t!360210 oldBucket!34))))))))

(declare-fun b!4721686 () Bool)

(assert (=> b!4721686 (= e!2944697 (noDuplicateKeys!2012 (t!360210 (t!360210 oldBucket!34))))))

(assert (= (and d!1503112 (not res!1997462)) b!4721685))

(assert (= (and b!4721685 res!1997463) b!4721686))

(declare-fun m!5656165 () Bool)

(assert (=> b!4721685 m!5656165))

(declare-fun m!5656167 () Bool)

(assert (=> b!4721686 m!5656167))

(assert (=> b!4721339 d!1503112))

(declare-fun d!1503114 () Bool)

(declare-fun res!1997464 () Bool)

(declare-fun e!2944698 () Bool)

(assert (=> d!1503114 (=> res!1997464 e!2944698)))

(assert (=> d!1503114 (= res!1997464 ((_ is Nil!52825) (t!360211 (toList!5914 lm!2023))))))

(assert (=> d!1503114 (= (forall!11582 (t!360211 (toList!5914 lm!2023)) lambda!215278) e!2944698)))

(declare-fun b!4721687 () Bool)

(declare-fun e!2944699 () Bool)

(assert (=> b!4721687 (= e!2944698 e!2944699)))

(declare-fun res!1997465 () Bool)

(assert (=> b!4721687 (=> (not res!1997465) (not e!2944699))))

(assert (=> b!4721687 (= res!1997465 (dynLambda!21815 lambda!215278 (h!59170 (t!360211 (toList!5914 lm!2023)))))))

(declare-fun b!4721688 () Bool)

(assert (=> b!4721688 (= e!2944699 (forall!11582 (t!360211 (t!360211 (toList!5914 lm!2023))) lambda!215278))))

(assert (= (and d!1503114 (not res!1997464)) b!4721687))

(assert (= (and b!4721687 res!1997465) b!4721688))

(declare-fun b_lambda!178357 () Bool)

(assert (=> (not b_lambda!178357) (not b!4721687)))

(declare-fun m!5656169 () Bool)

(assert (=> b!4721687 m!5656169))

(declare-fun m!5656171 () Bool)

(assert (=> b!4721688 m!5656171))

(assert (=> b!4721357 d!1503114))

(declare-fun d!1503116 () Bool)

(declare-fun res!1997466 () Bool)

(declare-fun e!2944700 () Bool)

(assert (=> d!1503116 (=> res!1997466 e!2944700)))

(assert (=> d!1503116 (= res!1997466 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503116 (= (forall!11584 (toList!5913 lt!1886424) lambda!215381) e!2944700)))

(declare-fun b!4721689 () Bool)

(declare-fun e!2944701 () Bool)

(assert (=> b!4721689 (= e!2944700 e!2944701)))

(declare-fun res!1997467 () Bool)

(assert (=> b!4721689 (=> (not res!1997467) (not e!2944701))))

(assert (=> b!4721689 (= res!1997467 (dynLambda!21817 lambda!215381 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721690 () Bool)

(assert (=> b!4721690 (= e!2944701 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215381))))

(assert (= (and d!1503116 (not res!1997466)) b!4721689))

(assert (= (and b!4721689 res!1997467) b!4721690))

(declare-fun b_lambda!178359 () Bool)

(assert (=> (not b_lambda!178359) (not b!4721689)))

(declare-fun m!5656173 () Bool)

(assert (=> b!4721689 m!5656173))

(declare-fun m!5656175 () Bool)

(assert (=> b!4721690 m!5656175))

(assert (=> b!4721537 d!1503116))

(assert (=> d!1502948 d!1503014))

(declare-fun d!1503118 () Bool)

(assert (=> d!1503118 (eq!1129 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424) (+!2267 (addToMapMapFromBucket!1442 lt!1886428 lt!1886424) lt!1886429))))

(assert (=> d!1503118 true))

(declare-fun _$30!174 () Unit!129750)

(assert (=> d!1503118 (= (choose!33303 lt!1886429 lt!1886428 lt!1886424) _$30!174)))

(declare-fun bs!1109853 () Bool)

(assert (= bs!1109853 d!1503118))

(assert (=> bs!1109853 m!5655377))

(assert (=> bs!1109853 m!5655409))

(assert (=> bs!1109853 m!5655409))

(assert (=> bs!1109853 m!5655451))

(assert (=> bs!1109853 m!5655377))

(assert (=> bs!1109853 m!5655451))

(assert (=> bs!1109853 m!5655455))

(assert (=> d!1502948 d!1503118))

(declare-fun d!1503120 () Bool)

(declare-fun res!1997468 () Bool)

(declare-fun e!2944702 () Bool)

(assert (=> d!1503120 (=> res!1997468 e!2944702)))

(assert (=> d!1503120 (= res!1997468 (not ((_ is Cons!52824) lt!1886428)))))

(assert (=> d!1503120 (= (noDuplicateKeys!2012 lt!1886428) e!2944702)))

(declare-fun b!4721691 () Bool)

(declare-fun e!2944703 () Bool)

(assert (=> b!4721691 (= e!2944702 e!2944703)))

(declare-fun res!1997469 () Bool)

(assert (=> b!4721691 (=> (not res!1997469) (not e!2944703))))

(assert (=> b!4721691 (= res!1997469 (not (containsKey!3365 (t!360210 lt!1886428) (_1!30515 (h!59169 lt!1886428)))))))

(declare-fun b!4721692 () Bool)

(assert (=> b!4721692 (= e!2944703 (noDuplicateKeys!2012 (t!360210 lt!1886428)))))

(assert (= (and d!1503120 (not res!1997468)) b!4721691))

(assert (= (and b!4721691 res!1997469) b!4721692))

(declare-fun m!5656177 () Bool)

(assert (=> b!4721691 m!5656177))

(declare-fun m!5656179 () Bool)

(assert (=> b!4721692 m!5656179))

(assert (=> d!1502948 d!1503120))

(declare-fun d!1503122 () Bool)

(assert (=> d!1503122 (= (eq!1129 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424) (+!2267 (addToMapMapFromBucket!1442 lt!1886428 lt!1886424) lt!1886429)) (= (content!9390 (toList!5913 (addToMapMapFromBucket!1442 (Cons!52824 lt!1886429 lt!1886428) lt!1886424))) (content!9390 (toList!5913 (+!2267 (addToMapMapFromBucket!1442 lt!1886428 lt!1886424) lt!1886429)))))))

(declare-fun bs!1109854 () Bool)

(assert (= bs!1109854 d!1503122))

(assert (=> bs!1109854 m!5655629))

(declare-fun m!5656181 () Bool)

(assert (=> bs!1109854 m!5656181))

(assert (=> d!1502948 d!1503122))

(assert (=> d!1502948 d!1502956))

(declare-fun d!1503124 () Bool)

(declare-fun e!2944704 () Bool)

(assert (=> d!1503124 e!2944704))

(declare-fun res!1997470 () Bool)

(assert (=> d!1503124 (=> (not res!1997470) (not e!2944704))))

(declare-fun lt!1886887 () ListMap!5277)

(assert (=> d!1503124 (= res!1997470 (contains!16168 lt!1886887 (_1!30515 lt!1886429)))))

(declare-fun lt!1886889 () List!52948)

(assert (=> d!1503124 (= lt!1886887 (ListMap!5278 lt!1886889))))

(declare-fun lt!1886890 () Unit!129750)

(declare-fun lt!1886888 () Unit!129750)

(assert (=> d!1503124 (= lt!1886890 lt!1886888)))

(assert (=> d!1503124 (= (getValueByKey!1952 lt!1886889 (_1!30515 lt!1886429)) (Some!12355 (_2!30515 lt!1886429)))))

(assert (=> d!1503124 (= lt!1886888 (lemmaContainsTupThenGetReturnValue!1083 lt!1886889 (_1!30515 lt!1886429) (_2!30515 lt!1886429)))))

(assert (=> d!1503124 (= lt!1886889 (insertNoDuplicatedKeys!591 (toList!5913 (addToMapMapFromBucket!1442 lt!1886428 lt!1886424)) (_1!30515 lt!1886429) (_2!30515 lt!1886429)))))

(assert (=> d!1503124 (= (+!2267 (addToMapMapFromBucket!1442 lt!1886428 lt!1886424) lt!1886429) lt!1886887)))

(declare-fun b!4721693 () Bool)

(declare-fun res!1997471 () Bool)

(assert (=> b!4721693 (=> (not res!1997471) (not e!2944704))))

(assert (=> b!4721693 (= res!1997471 (= (getValueByKey!1952 (toList!5913 lt!1886887) (_1!30515 lt!1886429)) (Some!12355 (_2!30515 lt!1886429))))))

(declare-fun b!4721694 () Bool)

(assert (=> b!4721694 (= e!2944704 (contains!16169 (toList!5913 lt!1886887) lt!1886429))))

(assert (= (and d!1503124 res!1997470) b!4721693))

(assert (= (and b!4721693 res!1997471) b!4721694))

(declare-fun m!5656183 () Bool)

(assert (=> d!1503124 m!5656183))

(declare-fun m!5656185 () Bool)

(assert (=> d!1503124 m!5656185))

(declare-fun m!5656187 () Bool)

(assert (=> d!1503124 m!5656187))

(declare-fun m!5656189 () Bool)

(assert (=> d!1503124 m!5656189))

(declare-fun m!5656191 () Bool)

(assert (=> b!4721693 m!5656191))

(declare-fun m!5656193 () Bool)

(assert (=> b!4721694 m!5656193))

(assert (=> d!1502948 d!1503124))

(declare-fun bs!1109855 () Bool)

(declare-fun b!4721696 () Bool)

(assert (= bs!1109855 (and b!4721696 d!1503008)))

(declare-fun lambda!215412 () Int)

(assert (=> bs!1109855 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886726) (= lambda!215412 lambda!215378))))

(declare-fun bs!1109856 () Bool)

(assert (= bs!1109856 (and b!4721696 b!4721535)))

(assert (=> bs!1109856 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886751) (= lambda!215412 lambda!215381))))

(declare-fun bs!1109857 () Bool)

(assert (= bs!1109857 (and b!4721696 b!4721536)))

(assert (=> bs!1109857 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215379))))

(declare-fun bs!1109858 () Bool)

(assert (= bs!1109858 (and b!4721696 b!4721430)))

(assert (=> bs!1109858 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215348))))

(declare-fun bs!1109859 () Bool)

(assert (= bs!1109859 (and b!4721696 b!4721633)))

(assert (=> bs!1109859 (= (= (extractMap!2038 (t!360211 lt!1886426)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215412 lambda!215403))))

(declare-fun bs!1109860 () Bool)

(assert (= bs!1109860 (and b!4721696 d!1503084)))

(assert (=> bs!1109860 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886730) (= lambda!215412 lambda!215411))))

(declare-fun bs!1109861 () Bool)

(assert (= bs!1109861 (and b!4721696 d!1502956)))

(assert (=> bs!1109861 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886602) (= lambda!215412 lambda!215346))))

(assert (=> bs!1109856 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215380))))

(declare-fun bs!1109862 () Bool)

(assert (= bs!1109862 (and b!4721696 b!4721545)))

(assert (=> bs!1109862 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215386))))

(declare-fun bs!1109863 () Bool)

(assert (= bs!1109863 (and b!4721696 d!1503020)))

(assert (=> bs!1109863 (not (= lambda!215412 lambda!215385))))

(declare-fun bs!1109864 () Bool)

(assert (= bs!1109864 (and b!4721696 b!4721632)))

(assert (=> bs!1109864 (= (= (extractMap!2038 (t!360211 lt!1886426)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215412 lambda!215404))))

(assert (=> bs!1109864 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886847) (= lambda!215412 lambda!215405))))

(assert (=> bs!1109858 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886627) (= lambda!215412 lambda!215349))))

(declare-fun bs!1109865 () Bool)

(assert (= bs!1109865 (and b!4721696 b!4721530)))

(assert (=> bs!1109865 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886730) (= lambda!215412 lambda!215376))))

(declare-fun bs!1109866 () Bool)

(assert (= bs!1109866 (and b!4721696 b!4721423)))

(assert (=> bs!1109866 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215344))))

(declare-fun bs!1109867 () Bool)

(assert (= bs!1109867 (and b!4721696 b!4721424)))

(assert (=> bs!1109867 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215343))))

(declare-fun bs!1109868 () Bool)

(assert (= bs!1109868 (and b!4721696 b!4721544)))

(assert (=> bs!1109868 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886775) (= lambda!215412 lambda!215388))))

(declare-fun bs!1109869 () Bool)

(assert (= bs!1109869 (and b!4721696 d!1503024)))

(assert (=> bs!1109869 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886771) (= lambda!215412 lambda!215389))))

(assert (=> bs!1109866 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886606) (= lambda!215412 lambda!215345))))

(assert (=> bs!1109865 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215375))))

(declare-fun bs!1109870 () Bool)

(assert (= bs!1109870 (and b!4721696 b!4721531)))

(assert (=> bs!1109870 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215373))))

(declare-fun bs!1109871 () Bool)

(assert (= bs!1109871 (and b!4721696 b!4721431)))

(assert (=> bs!1109871 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215347))))

(declare-fun bs!1109872 () Bool)

(assert (= bs!1109872 (and b!4721696 d!1502964)))

(assert (=> bs!1109872 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886623) (= lambda!215412 lambda!215352))))

(assert (=> bs!1109868 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215412 lambda!215387))))

(declare-fun bs!1109873 () Bool)

(assert (= bs!1109873 (and b!4721696 d!1503014)))

(assert (=> bs!1109873 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886747) (= lambda!215412 lambda!215382))))

(declare-fun bs!1109874 () Bool)

(assert (= bs!1109874 (and b!4721696 d!1503040)))

(assert (=> bs!1109874 (not (= lambda!215412 lambda!215399))))

(declare-fun bs!1109875 () Bool)

(assert (= bs!1109875 (and b!4721696 d!1503082)))

(assert (=> bs!1109875 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886843) (= lambda!215412 lambda!215406))))

(assert (=> b!4721696 true))

(declare-fun bs!1109876 () Bool)

(declare-fun b!4721695 () Bool)

(assert (= bs!1109876 (and b!4721695 d!1503008)))

(declare-fun lambda!215413 () Int)

(assert (=> bs!1109876 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886726) (= lambda!215413 lambda!215378))))

(declare-fun bs!1109877 () Bool)

(assert (= bs!1109877 (and b!4721695 b!4721535)))

(assert (=> bs!1109877 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886751) (= lambda!215413 lambda!215381))))

(declare-fun bs!1109878 () Bool)

(assert (= bs!1109878 (and b!4721695 b!4721536)))

(assert (=> bs!1109878 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215379))))

(declare-fun bs!1109879 () Bool)

(assert (= bs!1109879 (and b!4721695 b!4721430)))

(assert (=> bs!1109879 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215348))))

(declare-fun bs!1109880 () Bool)

(assert (= bs!1109880 (and b!4721695 b!4721633)))

(assert (=> bs!1109880 (= (= (extractMap!2038 (t!360211 lt!1886426)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215413 lambda!215403))))

(declare-fun bs!1109881 () Bool)

(assert (= bs!1109881 (and b!4721695 d!1503084)))

(assert (=> bs!1109881 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886730) (= lambda!215413 lambda!215411))))

(declare-fun bs!1109882 () Bool)

(assert (= bs!1109882 (and b!4721695 d!1502956)))

(assert (=> bs!1109882 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886602) (= lambda!215413 lambda!215346))))

(assert (=> bs!1109877 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215380))))

(declare-fun bs!1109883 () Bool)

(assert (= bs!1109883 (and b!4721695 b!4721545)))

(assert (=> bs!1109883 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215386))))

(declare-fun bs!1109884 () Bool)

(assert (= bs!1109884 (and b!4721695 d!1503020)))

(assert (=> bs!1109884 (not (= lambda!215413 lambda!215385))))

(declare-fun bs!1109885 () Bool)

(assert (= bs!1109885 (and b!4721695 b!4721632)))

(assert (=> bs!1109885 (= (= (extractMap!2038 (t!360211 lt!1886426)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215413 lambda!215404))))

(declare-fun bs!1109886 () Bool)

(assert (= bs!1109886 (and b!4721695 b!4721696)))

(assert (=> bs!1109886 (= lambda!215413 lambda!215412)))

(assert (=> bs!1109885 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886847) (= lambda!215413 lambda!215405))))

(assert (=> bs!1109879 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886627) (= lambda!215413 lambda!215349))))

(declare-fun bs!1109887 () Bool)

(assert (= bs!1109887 (and b!4721695 b!4721530)))

(assert (=> bs!1109887 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886730) (= lambda!215413 lambda!215376))))

(declare-fun bs!1109888 () Bool)

(assert (= bs!1109888 (and b!4721695 b!4721423)))

(assert (=> bs!1109888 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215344))))

(declare-fun bs!1109889 () Bool)

(assert (= bs!1109889 (and b!4721695 b!4721424)))

(assert (=> bs!1109889 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215343))))

(declare-fun bs!1109890 () Bool)

(assert (= bs!1109890 (and b!4721695 b!4721544)))

(assert (=> bs!1109890 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886775) (= lambda!215413 lambda!215388))))

(declare-fun bs!1109891 () Bool)

(assert (= bs!1109891 (and b!4721695 d!1503024)))

(assert (=> bs!1109891 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886771) (= lambda!215413 lambda!215389))))

(assert (=> bs!1109888 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886606) (= lambda!215413 lambda!215345))))

(assert (=> bs!1109887 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215375))))

(declare-fun bs!1109892 () Bool)

(assert (= bs!1109892 (and b!4721695 b!4721531)))

(assert (=> bs!1109892 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215373))))

(declare-fun bs!1109893 () Bool)

(assert (= bs!1109893 (and b!4721695 b!4721431)))

(assert (=> bs!1109893 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215347))))

(declare-fun bs!1109894 () Bool)

(assert (= bs!1109894 (and b!4721695 d!1502964)))

(assert (=> bs!1109894 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886623) (= lambda!215413 lambda!215352))))

(assert (=> bs!1109890 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886424) (= lambda!215413 lambda!215387))))

(declare-fun bs!1109895 () Bool)

(assert (= bs!1109895 (and b!4721695 d!1503014)))

(assert (=> bs!1109895 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886747) (= lambda!215413 lambda!215382))))

(declare-fun bs!1109896 () Bool)

(assert (= bs!1109896 (and b!4721695 d!1503040)))

(assert (=> bs!1109896 (not (= lambda!215413 lambda!215399))))

(declare-fun bs!1109897 () Bool)

(assert (= bs!1109897 (and b!4721695 d!1503082)))

(assert (=> bs!1109897 (= (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886843) (= lambda!215413 lambda!215406))))

(assert (=> b!4721695 true))

(declare-fun lt!1886897 () ListMap!5277)

(declare-fun lambda!215414 () Int)

(assert (=> bs!1109876 (= (= lt!1886897 lt!1886726) (= lambda!215414 lambda!215378))))

(assert (=> bs!1109877 (= (= lt!1886897 lt!1886751) (= lambda!215414 lambda!215381))))

(assert (=> bs!1109878 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215379))))

(assert (=> bs!1109879 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215348))))

(assert (=> bs!1109880 (= (= lt!1886897 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215414 lambda!215403))))

(assert (=> bs!1109881 (= (= lt!1886897 lt!1886730) (= lambda!215414 lambda!215411))))

(assert (=> bs!1109882 (= (= lt!1886897 lt!1886602) (= lambda!215414 lambda!215346))))

(assert (=> bs!1109877 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215380))))

(assert (=> b!4721695 (= (= lt!1886897 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215414 lambda!215413))))

(assert (=> bs!1109883 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215386))))

(assert (=> bs!1109884 (not (= lambda!215414 lambda!215385))))

(assert (=> bs!1109885 (= (= lt!1886897 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215414 lambda!215404))))

(assert (=> bs!1109886 (= (= lt!1886897 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215414 lambda!215412))))

(assert (=> bs!1109885 (= (= lt!1886897 lt!1886847) (= lambda!215414 lambda!215405))))

(assert (=> bs!1109879 (= (= lt!1886897 lt!1886627) (= lambda!215414 lambda!215349))))

(assert (=> bs!1109887 (= (= lt!1886897 lt!1886730) (= lambda!215414 lambda!215376))))

(assert (=> bs!1109888 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215344))))

(assert (=> bs!1109889 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215343))))

(assert (=> bs!1109890 (= (= lt!1886897 lt!1886775) (= lambda!215414 lambda!215388))))

(assert (=> bs!1109891 (= (= lt!1886897 lt!1886771) (= lambda!215414 lambda!215389))))

(assert (=> bs!1109888 (= (= lt!1886897 lt!1886606) (= lambda!215414 lambda!215345))))

(assert (=> bs!1109887 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215375))))

(assert (=> bs!1109892 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215373))))

(assert (=> bs!1109893 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215347))))

(assert (=> bs!1109894 (= (= lt!1886897 lt!1886623) (= lambda!215414 lambda!215352))))

(assert (=> bs!1109890 (= (= lt!1886897 lt!1886424) (= lambda!215414 lambda!215387))))

(assert (=> bs!1109895 (= (= lt!1886897 lt!1886747) (= lambda!215414 lambda!215382))))

(assert (=> bs!1109896 (not (= lambda!215414 lambda!215399))))

(assert (=> bs!1109897 (= (= lt!1886897 lt!1886843) (= lambda!215414 lambda!215406))))

(assert (=> b!4721695 true))

(declare-fun bs!1109898 () Bool)

(declare-fun d!1503126 () Bool)

(assert (= bs!1109898 (and d!1503126 d!1503008)))

(declare-fun lt!1886893 () ListMap!5277)

(declare-fun lambda!215415 () Int)

(assert (=> bs!1109898 (= (= lt!1886893 lt!1886726) (= lambda!215415 lambda!215378))))

(declare-fun bs!1109899 () Bool)

(assert (= bs!1109899 (and d!1503126 b!4721535)))

(assert (=> bs!1109899 (= (= lt!1886893 lt!1886751) (= lambda!215415 lambda!215381))))

(declare-fun bs!1109900 () Bool)

(assert (= bs!1109900 (and d!1503126 b!4721536)))

(assert (=> bs!1109900 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215379))))

(declare-fun bs!1109901 () Bool)

(assert (= bs!1109901 (and d!1503126 b!4721430)))

(assert (=> bs!1109901 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215348))))

(declare-fun bs!1109902 () Bool)

(assert (= bs!1109902 (and d!1503126 b!4721633)))

(assert (=> bs!1109902 (= (= lt!1886893 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215415 lambda!215403))))

(declare-fun bs!1109903 () Bool)

(assert (= bs!1109903 (and d!1503126 d!1503084)))

(assert (=> bs!1109903 (= (= lt!1886893 lt!1886730) (= lambda!215415 lambda!215411))))

(declare-fun bs!1109904 () Bool)

(assert (= bs!1109904 (and d!1503126 d!1502956)))

(assert (=> bs!1109904 (= (= lt!1886893 lt!1886602) (= lambda!215415 lambda!215346))))

(declare-fun bs!1109905 () Bool)

(assert (= bs!1109905 (and d!1503126 b!4721695)))

(assert (=> bs!1109905 (= (= lt!1886893 lt!1886897) (= lambda!215415 lambda!215414))))

(assert (=> bs!1109899 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215380))))

(assert (=> bs!1109905 (= (= lt!1886893 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215415 lambda!215413))))

(declare-fun bs!1109906 () Bool)

(assert (= bs!1109906 (and d!1503126 b!4721545)))

(assert (=> bs!1109906 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215386))))

(declare-fun bs!1109907 () Bool)

(assert (= bs!1109907 (and d!1503126 d!1503020)))

(assert (=> bs!1109907 (not (= lambda!215415 lambda!215385))))

(declare-fun bs!1109908 () Bool)

(assert (= bs!1109908 (and d!1503126 b!4721632)))

(assert (=> bs!1109908 (= (= lt!1886893 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215415 lambda!215404))))

(declare-fun bs!1109909 () Bool)

(assert (= bs!1109909 (and d!1503126 b!4721696)))

(assert (=> bs!1109909 (= (= lt!1886893 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215415 lambda!215412))))

(assert (=> bs!1109908 (= (= lt!1886893 lt!1886847) (= lambda!215415 lambda!215405))))

(assert (=> bs!1109901 (= (= lt!1886893 lt!1886627) (= lambda!215415 lambda!215349))))

(declare-fun bs!1109910 () Bool)

(assert (= bs!1109910 (and d!1503126 b!4721530)))

(assert (=> bs!1109910 (= (= lt!1886893 lt!1886730) (= lambda!215415 lambda!215376))))

(declare-fun bs!1109911 () Bool)

(assert (= bs!1109911 (and d!1503126 b!4721423)))

(assert (=> bs!1109911 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215344))))

(declare-fun bs!1109912 () Bool)

(assert (= bs!1109912 (and d!1503126 b!4721424)))

(assert (=> bs!1109912 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215343))))

(declare-fun bs!1109913 () Bool)

(assert (= bs!1109913 (and d!1503126 b!4721544)))

(assert (=> bs!1109913 (= (= lt!1886893 lt!1886775) (= lambda!215415 lambda!215388))))

(declare-fun bs!1109914 () Bool)

(assert (= bs!1109914 (and d!1503126 d!1503024)))

(assert (=> bs!1109914 (= (= lt!1886893 lt!1886771) (= lambda!215415 lambda!215389))))

(assert (=> bs!1109911 (= (= lt!1886893 lt!1886606) (= lambda!215415 lambda!215345))))

(assert (=> bs!1109910 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215375))))

(declare-fun bs!1109915 () Bool)

(assert (= bs!1109915 (and d!1503126 b!4721531)))

(assert (=> bs!1109915 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215373))))

(declare-fun bs!1109916 () Bool)

(assert (= bs!1109916 (and d!1503126 b!4721431)))

(assert (=> bs!1109916 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215347))))

(declare-fun bs!1109917 () Bool)

(assert (= bs!1109917 (and d!1503126 d!1502964)))

(assert (=> bs!1109917 (= (= lt!1886893 lt!1886623) (= lambda!215415 lambda!215352))))

(assert (=> bs!1109913 (= (= lt!1886893 lt!1886424) (= lambda!215415 lambda!215387))))

(declare-fun bs!1109918 () Bool)

(assert (= bs!1109918 (and d!1503126 d!1503014)))

(assert (=> bs!1109918 (= (= lt!1886893 lt!1886747) (= lambda!215415 lambda!215382))))

(declare-fun bs!1109919 () Bool)

(assert (= bs!1109919 (and d!1503126 d!1503040)))

(assert (=> bs!1109919 (not (= lambda!215415 lambda!215399))))

(declare-fun bs!1109920 () Bool)

(assert (= bs!1109920 (and d!1503126 d!1503082)))

(assert (=> bs!1109920 (= (= lt!1886893 lt!1886843) (= lambda!215415 lambda!215406))))

(assert (=> d!1503126 true))

(declare-fun bm!330196 () Bool)

(declare-fun call!330202 () Unit!129750)

(assert (=> bm!330196 (= call!330202 (lemmaContainsAllItsOwnKeys!795 (extractMap!2038 (t!360211 lt!1886426))))))

(declare-fun e!2944706 () ListMap!5277)

(assert (=> b!4721695 (= e!2944706 lt!1886897)))

(declare-fun lt!1886896 () ListMap!5277)

(assert (=> b!4721695 (= lt!1886896 (+!2267 (extractMap!2038 (t!360211 lt!1886426)) (h!59169 (_2!30516 (h!59170 lt!1886426)))))))

(assert (=> b!4721695 (= lt!1886897 (addToMapMapFromBucket!1442 (t!360210 (_2!30516 (h!59170 lt!1886426))) (+!2267 (extractMap!2038 (t!360211 lt!1886426)) (h!59169 (_2!30516 (h!59170 lt!1886426))))))))

(declare-fun lt!1886903 () Unit!129750)

(assert (=> b!4721695 (= lt!1886903 call!330202)))

(declare-fun call!330201 () Bool)

(assert (=> b!4721695 call!330201))

(declare-fun lt!1886900 () Unit!129750)

(assert (=> b!4721695 (= lt!1886900 lt!1886903)))

(declare-fun call!330203 () Bool)

(assert (=> b!4721695 call!330203))

(declare-fun lt!1886901 () Unit!129750)

(declare-fun Unit!129882 () Unit!129750)

(assert (=> b!4721695 (= lt!1886901 Unit!129882)))

(assert (=> b!4721695 (forall!11584 (t!360210 (_2!30516 (h!59170 lt!1886426))) lambda!215414)))

(declare-fun lt!1886908 () Unit!129750)

(declare-fun Unit!129883 () Unit!129750)

(assert (=> b!4721695 (= lt!1886908 Unit!129883)))

(declare-fun lt!1886892 () Unit!129750)

(declare-fun Unit!129884 () Unit!129750)

(assert (=> b!4721695 (= lt!1886892 Unit!129884)))

(declare-fun lt!1886895 () Unit!129750)

(assert (=> b!4721695 (= lt!1886895 (forallContained!3635 (toList!5913 lt!1886896) lambda!215414 (h!59169 (_2!30516 (h!59170 lt!1886426)))))))

(assert (=> b!4721695 (contains!16168 lt!1886896 (_1!30515 (h!59169 (_2!30516 (h!59170 lt!1886426)))))))

(declare-fun lt!1886891 () Unit!129750)

(declare-fun Unit!129885 () Unit!129750)

(assert (=> b!4721695 (= lt!1886891 Unit!129885)))

(assert (=> b!4721695 (contains!16168 lt!1886897 (_1!30515 (h!59169 (_2!30516 (h!59170 lt!1886426)))))))

(declare-fun lt!1886898 () Unit!129750)

(declare-fun Unit!129887 () Unit!129750)

(assert (=> b!4721695 (= lt!1886898 Unit!129887)))

(assert (=> b!4721695 (forall!11584 (_2!30516 (h!59170 lt!1886426)) lambda!215414)))

(declare-fun lt!1886910 () Unit!129750)

(declare-fun Unit!129888 () Unit!129750)

(assert (=> b!4721695 (= lt!1886910 Unit!129888)))

(assert (=> b!4721695 (forall!11584 (toList!5913 lt!1886896) lambda!215414)))

(declare-fun lt!1886909 () Unit!129750)

(declare-fun Unit!129889 () Unit!129750)

(assert (=> b!4721695 (= lt!1886909 Unit!129889)))

(declare-fun lt!1886894 () Unit!129750)

(declare-fun Unit!129890 () Unit!129750)

(assert (=> b!4721695 (= lt!1886894 Unit!129890)))

(declare-fun lt!1886906 () Unit!129750)

(assert (=> b!4721695 (= lt!1886906 (addForallContainsKeyThenBeforeAdding!794 (extractMap!2038 (t!360211 lt!1886426)) lt!1886897 (_1!30515 (h!59169 (_2!30516 (h!59170 lt!1886426)))) (_2!30515 (h!59169 (_2!30516 (h!59170 lt!1886426))))))))

(assert (=> b!4721695 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 lt!1886426))) lambda!215414)))

(declare-fun lt!1886902 () Unit!129750)

(assert (=> b!4721695 (= lt!1886902 lt!1886906)))

(assert (=> b!4721695 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 lt!1886426))) lambda!215414)))

(declare-fun lt!1886905 () Unit!129750)

(declare-fun Unit!129891 () Unit!129750)

(assert (=> b!4721695 (= lt!1886905 Unit!129891)))

(declare-fun res!1997472 () Bool)

(assert (=> b!4721695 (= res!1997472 (forall!11584 (_2!30516 (h!59170 lt!1886426)) lambda!215414))))

(declare-fun e!2944707 () Bool)

(assert (=> b!4721695 (=> (not res!1997472) (not e!2944707))))

(assert (=> b!4721695 e!2944707))

(declare-fun lt!1886907 () Unit!129750)

(declare-fun Unit!129892 () Unit!129750)

(assert (=> b!4721695 (= lt!1886907 Unit!129892)))

(declare-fun c!806357 () Bool)

(declare-fun bm!330197 () Bool)

(assert (=> bm!330197 (= call!330203 (forall!11584 (ite c!806357 (toList!5913 (extractMap!2038 (t!360211 lt!1886426))) (toList!5913 lt!1886896)) (ite c!806357 lambda!215412 lambda!215414)))))

(assert (=> b!4721696 (= e!2944706 (extractMap!2038 (t!360211 lt!1886426)))))

(declare-fun lt!1886911 () Unit!129750)

(assert (=> b!4721696 (= lt!1886911 call!330202)))

(assert (=> b!4721696 call!330203))

(declare-fun lt!1886899 () Unit!129750)

(assert (=> b!4721696 (= lt!1886899 lt!1886911)))

(assert (=> b!4721696 call!330201))

(declare-fun lt!1886904 () Unit!129750)

(declare-fun Unit!129893 () Unit!129750)

(assert (=> b!4721696 (= lt!1886904 Unit!129893)))

(declare-fun b!4721698 () Bool)

(declare-fun res!1997474 () Bool)

(declare-fun e!2944705 () Bool)

(assert (=> b!4721698 (=> (not res!1997474) (not e!2944705))))

(assert (=> b!4721698 (= res!1997474 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 lt!1886426))) lambda!215415))))

(declare-fun bm!330198 () Bool)

(assert (=> bm!330198 (= call!330201 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 lt!1886426))) (ite c!806357 lambda!215412 lambda!215413)))))

(declare-fun b!4721699 () Bool)

(assert (=> b!4721699 (= e!2944705 (invariantList!1509 (toList!5913 lt!1886893)))))

(declare-fun b!4721697 () Bool)

(assert (=> b!4721697 (= e!2944707 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 lt!1886426))) lambda!215414))))

(assert (=> d!1503126 e!2944705))

(declare-fun res!1997473 () Bool)

(assert (=> d!1503126 (=> (not res!1997473) (not e!2944705))))

(assert (=> d!1503126 (= res!1997473 (forall!11584 (_2!30516 (h!59170 lt!1886426)) lambda!215415))))

(assert (=> d!1503126 (= lt!1886893 e!2944706)))

(assert (=> d!1503126 (= c!806357 ((_ is Nil!52824) (_2!30516 (h!59170 lt!1886426))))))

(assert (=> d!1503126 (noDuplicateKeys!2012 (_2!30516 (h!59170 lt!1886426)))))

(assert (=> d!1503126 (= (addToMapMapFromBucket!1442 (_2!30516 (h!59170 lt!1886426)) (extractMap!2038 (t!360211 lt!1886426))) lt!1886893)))

(assert (= (and d!1503126 c!806357) b!4721696))

(assert (= (and d!1503126 (not c!806357)) b!4721695))

(assert (= (and b!4721695 res!1997472) b!4721697))

(assert (= (or b!4721696 b!4721695) bm!330196))

(assert (= (or b!4721696 b!4721695) bm!330198))

(assert (= (or b!4721696 b!4721695) bm!330197))

(assert (= (and d!1503126 res!1997473) b!4721698))

(assert (= (and b!4721698 res!1997474) b!4721699))

(declare-fun m!5656195 () Bool)

(assert (=> b!4721699 m!5656195))

(declare-fun m!5656197 () Bool)

(assert (=> d!1503126 m!5656197))

(assert (=> d!1503126 m!5655995))

(declare-fun m!5656199 () Bool)

(assert (=> b!4721698 m!5656199))

(assert (=> bm!330196 m!5655989))

(declare-fun m!5656201 () Bool)

(assert (=> bm!330196 m!5656201))

(declare-fun m!5656203 () Bool)

(assert (=> b!4721695 m!5656203))

(declare-fun m!5656205 () Bool)

(assert (=> b!4721695 m!5656205))

(declare-fun m!5656207 () Bool)

(assert (=> b!4721695 m!5656207))

(assert (=> b!4721695 m!5655989))

(declare-fun m!5656209 () Bool)

(assert (=> b!4721695 m!5656209))

(assert (=> b!4721695 m!5656207))

(declare-fun m!5656211 () Bool)

(assert (=> b!4721695 m!5656211))

(declare-fun m!5656213 () Bool)

(assert (=> b!4721695 m!5656213))

(declare-fun m!5656215 () Bool)

(assert (=> b!4721695 m!5656215))

(declare-fun m!5656217 () Bool)

(assert (=> b!4721695 m!5656217))

(assert (=> b!4721695 m!5656217))

(assert (=> b!4721695 m!5655989))

(declare-fun m!5656219 () Bool)

(assert (=> b!4721695 m!5656219))

(assert (=> b!4721695 m!5656209))

(declare-fun m!5656221 () Bool)

(assert (=> b!4721695 m!5656221))

(declare-fun m!5656223 () Bool)

(assert (=> bm!330198 m!5656223))

(declare-fun m!5656225 () Bool)

(assert (=> bm!330197 m!5656225))

(assert (=> b!4721697 m!5656217))

(assert (=> b!4721578 d!1503126))

(declare-fun bs!1109921 () Bool)

(declare-fun d!1503128 () Bool)

(assert (= bs!1109921 (and d!1503128 d!1503038)))

(declare-fun lambda!215416 () Int)

(assert (=> bs!1109921 (not (= lambda!215416 lambda!215398))))

(declare-fun bs!1109922 () Bool)

(assert (= bs!1109922 (and d!1503128 d!1503042)))

(assert (=> bs!1109922 (= lambda!215416 lambda!215400)))

(declare-fun bs!1109923 () Bool)

(assert (= bs!1109923 (and d!1503128 d!1503050)))

(assert (=> bs!1109923 (= lambda!215416 lambda!215401)))

(declare-fun bs!1109924 () Bool)

(assert (= bs!1109924 (and d!1503128 start!480568)))

(assert (=> bs!1109924 (= lambda!215416 lambda!215278)))

(declare-fun bs!1109925 () Bool)

(assert (= bs!1109925 (and d!1503128 d!1503032)))

(assert (=> bs!1109925 (not (= lambda!215416 lambda!215395))))

(declare-fun bs!1109926 () Bool)

(assert (= bs!1109926 (and d!1503128 d!1502992)))

(assert (=> bs!1109926 (= lambda!215416 lambda!215371)))

(declare-fun bs!1109927 () Bool)

(assert (= bs!1109927 (and d!1503128 d!1503026)))

(assert (=> bs!1109927 (= lambda!215416 lambda!215390)))

(declare-fun lt!1886912 () ListMap!5277)

(assert (=> d!1503128 (invariantList!1509 (toList!5913 lt!1886912))))

(declare-fun e!2944708 () ListMap!5277)

(assert (=> d!1503128 (= lt!1886912 e!2944708)))

(declare-fun c!806358 () Bool)

(assert (=> d!1503128 (= c!806358 ((_ is Cons!52825) (t!360211 lt!1886426)))))

(assert (=> d!1503128 (forall!11582 (t!360211 lt!1886426) lambda!215416)))

(assert (=> d!1503128 (= (extractMap!2038 (t!360211 lt!1886426)) lt!1886912)))

(declare-fun b!4721700 () Bool)

(assert (=> b!4721700 (= e!2944708 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (t!360211 lt!1886426))) (extractMap!2038 (t!360211 (t!360211 lt!1886426)))))))

(declare-fun b!4721701 () Bool)

(assert (=> b!4721701 (= e!2944708 (ListMap!5278 Nil!52824))))

(assert (= (and d!1503128 c!806358) b!4721700))

(assert (= (and d!1503128 (not c!806358)) b!4721701))

(declare-fun m!5656227 () Bool)

(assert (=> d!1503128 m!5656227))

(declare-fun m!5656229 () Bool)

(assert (=> d!1503128 m!5656229))

(declare-fun m!5656231 () Bool)

(assert (=> b!4721700 m!5656231))

(assert (=> b!4721700 m!5656231))

(declare-fun m!5656233 () Bool)

(assert (=> b!4721700 m!5656233))

(assert (=> b!4721578 d!1503128))

(declare-fun d!1503130 () Bool)

(declare-fun res!1997475 () Bool)

(declare-fun e!2944709 () Bool)

(assert (=> d!1503130 (=> res!1997475 e!2944709)))

(assert (=> d!1503130 (= res!1997475 ((_ is Nil!52824) (ite c!806303 (toList!5913 lt!1886424) (toList!5913 lt!1886605))))))

(assert (=> d!1503130 (= (forall!11584 (ite c!806303 (toList!5913 lt!1886424) (toList!5913 lt!1886605)) (ite c!806303 lambda!215343 lambda!215345)) e!2944709)))

(declare-fun b!4721702 () Bool)

(declare-fun e!2944710 () Bool)

(assert (=> b!4721702 (= e!2944709 e!2944710)))

(declare-fun res!1997476 () Bool)

(assert (=> b!4721702 (=> (not res!1997476) (not e!2944710))))

(assert (=> b!4721702 (= res!1997476 (dynLambda!21817 (ite c!806303 lambda!215343 lambda!215345) (h!59169 (ite c!806303 (toList!5913 lt!1886424) (toList!5913 lt!1886605)))))))

(declare-fun b!4721703 () Bool)

(assert (=> b!4721703 (= e!2944710 (forall!11584 (t!360210 (ite c!806303 (toList!5913 lt!1886424) (toList!5913 lt!1886605))) (ite c!806303 lambda!215343 lambda!215345)))))

(assert (= (and d!1503130 (not res!1997475)) b!4721702))

(assert (= (and b!4721702 res!1997476) b!4721703))

(declare-fun b_lambda!178361 () Bool)

(assert (=> (not b_lambda!178361) (not b!4721702)))

(declare-fun m!5656235 () Bool)

(assert (=> b!4721702 m!5656235))

(declare-fun m!5656237 () Bool)

(assert (=> b!4721703 m!5656237))

(assert (=> bm!330165 d!1503130))

(declare-fun bs!1109928 () Bool)

(declare-fun d!1503132 () Bool)

(assert (= bs!1109928 (and d!1503132 d!1503008)))

(declare-fun lambda!215419 () Int)

(assert (=> bs!1109928 (= (= lt!1886424 lt!1886726) (= lambda!215419 lambda!215378))))

(declare-fun bs!1109929 () Bool)

(assert (= bs!1109929 (and d!1503132 b!4721535)))

(assert (=> bs!1109929 (= (= lt!1886424 lt!1886751) (= lambda!215419 lambda!215381))))

(declare-fun bs!1109930 () Bool)

(assert (= bs!1109930 (and d!1503132 b!4721536)))

(assert (=> bs!1109930 (= lambda!215419 lambda!215379)))

(declare-fun bs!1109931 () Bool)

(assert (= bs!1109931 (and d!1503132 b!4721430)))

(assert (=> bs!1109931 (= lambda!215419 lambda!215348)))

(declare-fun bs!1109932 () Bool)

(assert (= bs!1109932 (and d!1503132 b!4721633)))

(assert (=> bs!1109932 (= (= lt!1886424 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215419 lambda!215403))))

(declare-fun bs!1109933 () Bool)

(assert (= bs!1109933 (and d!1503132 d!1503084)))

(assert (=> bs!1109933 (= (= lt!1886424 lt!1886730) (= lambda!215419 lambda!215411))))

(declare-fun bs!1109934 () Bool)

(assert (= bs!1109934 (and d!1503132 d!1502956)))

(assert (=> bs!1109934 (= (= lt!1886424 lt!1886602) (= lambda!215419 lambda!215346))))

(declare-fun bs!1109935 () Bool)

(assert (= bs!1109935 (and d!1503132 b!4721695)))

(assert (=> bs!1109935 (= (= lt!1886424 lt!1886897) (= lambda!215419 lambda!215414))))

(assert (=> bs!1109929 (= lambda!215419 lambda!215380)))

(assert (=> bs!1109935 (= (= lt!1886424 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215419 lambda!215413))))

(declare-fun bs!1109936 () Bool)

(assert (= bs!1109936 (and d!1503132 b!4721545)))

(assert (=> bs!1109936 (= lambda!215419 lambda!215386)))

(declare-fun bs!1109937 () Bool)

(assert (= bs!1109937 (and d!1503132 d!1503020)))

(assert (=> bs!1109937 (not (= lambda!215419 lambda!215385))))

(declare-fun bs!1109938 () Bool)

(assert (= bs!1109938 (and d!1503132 b!4721632)))

(assert (=> bs!1109938 (= (= lt!1886424 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215419 lambda!215404))))

(declare-fun bs!1109939 () Bool)

(assert (= bs!1109939 (and d!1503132 b!4721696)))

(assert (=> bs!1109939 (= (= lt!1886424 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215419 lambda!215412))))

(assert (=> bs!1109938 (= (= lt!1886424 lt!1886847) (= lambda!215419 lambda!215405))))

(assert (=> bs!1109931 (= (= lt!1886424 lt!1886627) (= lambda!215419 lambda!215349))))

(declare-fun bs!1109940 () Bool)

(assert (= bs!1109940 (and d!1503132 b!4721530)))

(assert (=> bs!1109940 (= (= lt!1886424 lt!1886730) (= lambda!215419 lambda!215376))))

(declare-fun bs!1109941 () Bool)

(assert (= bs!1109941 (and d!1503132 b!4721423)))

(assert (=> bs!1109941 (= lambda!215419 lambda!215344)))

(declare-fun bs!1109942 () Bool)

(assert (= bs!1109942 (and d!1503132 d!1503126)))

(assert (=> bs!1109942 (= (= lt!1886424 lt!1886893) (= lambda!215419 lambda!215415))))

(declare-fun bs!1109943 () Bool)

(assert (= bs!1109943 (and d!1503132 b!4721424)))

(assert (=> bs!1109943 (= lambda!215419 lambda!215343)))

(declare-fun bs!1109944 () Bool)

(assert (= bs!1109944 (and d!1503132 b!4721544)))

(assert (=> bs!1109944 (= (= lt!1886424 lt!1886775) (= lambda!215419 lambda!215388))))

(declare-fun bs!1109945 () Bool)

(assert (= bs!1109945 (and d!1503132 d!1503024)))

(assert (=> bs!1109945 (= (= lt!1886424 lt!1886771) (= lambda!215419 lambda!215389))))

(assert (=> bs!1109941 (= (= lt!1886424 lt!1886606) (= lambda!215419 lambda!215345))))

(assert (=> bs!1109940 (= lambda!215419 lambda!215375)))

(declare-fun bs!1109946 () Bool)

(assert (= bs!1109946 (and d!1503132 b!4721531)))

(assert (=> bs!1109946 (= lambda!215419 lambda!215373)))

(declare-fun bs!1109947 () Bool)

(assert (= bs!1109947 (and d!1503132 b!4721431)))

(assert (=> bs!1109947 (= lambda!215419 lambda!215347)))

(declare-fun bs!1109948 () Bool)

(assert (= bs!1109948 (and d!1503132 d!1502964)))

(assert (=> bs!1109948 (= (= lt!1886424 lt!1886623) (= lambda!215419 lambda!215352))))

(assert (=> bs!1109944 (= lambda!215419 lambda!215387)))

(declare-fun bs!1109949 () Bool)

(assert (= bs!1109949 (and d!1503132 d!1503014)))

(assert (=> bs!1109949 (= (= lt!1886424 lt!1886747) (= lambda!215419 lambda!215382))))

(declare-fun bs!1109950 () Bool)

(assert (= bs!1109950 (and d!1503132 d!1503040)))

(assert (=> bs!1109950 (not (= lambda!215419 lambda!215399))))

(declare-fun bs!1109951 () Bool)

(assert (= bs!1109951 (and d!1503132 d!1503082)))

(assert (=> bs!1109951 (= (= lt!1886424 lt!1886843) (= lambda!215419 lambda!215406))))

(assert (=> d!1503132 true))

(assert (=> d!1503132 (forall!11584 (toList!5913 lt!1886424) lambda!215419)))

(declare-fun lt!1886915 () Unit!129750)

(declare-fun choose!33309 (ListMap!5277) Unit!129750)

(assert (=> d!1503132 (= lt!1886915 (choose!33309 lt!1886424))))

(assert (=> d!1503132 (= (lemmaContainsAllItsOwnKeys!795 lt!1886424) lt!1886915)))

(declare-fun bs!1109952 () Bool)

(assert (= bs!1109952 d!1503132))

(declare-fun m!5656239 () Bool)

(assert (=> bs!1109952 m!5656239))

(declare-fun m!5656241 () Bool)

(assert (=> bs!1109952 m!5656241))

(assert (=> bm!330182 d!1503132))

(declare-fun d!1503134 () Bool)

(declare-fun res!1997477 () Bool)

(declare-fun e!2944711 () Bool)

(assert (=> d!1503134 (=> res!1997477 e!2944711)))

(assert (=> d!1503134 (= res!1997477 ((_ is Nil!52824) (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(assert (=> d!1503134 (= (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215389) e!2944711)))

(declare-fun b!4721704 () Bool)

(declare-fun e!2944712 () Bool)

(assert (=> b!4721704 (= e!2944711 e!2944712)))

(declare-fun res!1997478 () Bool)

(assert (=> b!4721704 (=> (not res!1997478) (not e!2944712))))

(assert (=> b!4721704 (= res!1997478 (dynLambda!21817 lambda!215389 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun b!4721705 () Bool)

(assert (=> b!4721705 (= e!2944712 (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215389))))

(assert (= (and d!1503134 (not res!1997477)) b!4721704))

(assert (= (and b!4721704 res!1997478) b!4721705))

(declare-fun b_lambda!178363 () Bool)

(assert (=> (not b_lambda!178363) (not b!4721704)))

(declare-fun m!5656243 () Bool)

(assert (=> b!4721704 m!5656243))

(declare-fun m!5656245 () Bool)

(assert (=> b!4721705 m!5656245))

(assert (=> d!1503024 d!1503134))

(declare-fun d!1503136 () Bool)

(declare-fun res!1997479 () Bool)

(declare-fun e!2944713 () Bool)

(assert (=> d!1503136 (=> res!1997479 e!2944713)))

(assert (=> d!1503136 (= res!1997479 (not ((_ is Cons!52824) (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> d!1503136 (= (noDuplicateKeys!2012 (_2!30516 (h!59170 (toList!5914 lm!2023)))) e!2944713)))

(declare-fun b!4721706 () Bool)

(declare-fun e!2944714 () Bool)

(assert (=> b!4721706 (= e!2944713 e!2944714)))

(declare-fun res!1997480 () Bool)

(assert (=> b!4721706 (=> (not res!1997480) (not e!2944714))))

(assert (=> b!4721706 (= res!1997480 (not (containsKey!3365 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun b!4721707 () Bool)

(assert (=> b!4721707 (= e!2944714 (noDuplicateKeys!2012 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (= (and d!1503136 (not res!1997479)) b!4721706))

(assert (= (and b!4721706 res!1997480) b!4721707))

(declare-fun m!5656247 () Bool)

(assert (=> b!4721706 m!5656247))

(declare-fun m!5656249 () Bool)

(assert (=> b!4721707 m!5656249))

(assert (=> d!1503024 d!1503136))

(assert (=> bm!330164 d!1503132))

(declare-fun d!1503138 () Bool)

(declare-fun res!1997481 () Bool)

(declare-fun e!2944715 () Bool)

(assert (=> d!1503138 (=> res!1997481 e!2944715)))

(assert (=> d!1503138 (= res!1997481 ((_ is Nil!52824) (ite c!806332 (toList!5913 lt!1886424) (toList!5913 lt!1886750))))))

(assert (=> d!1503138 (= (forall!11584 (ite c!806332 (toList!5913 lt!1886424) (toList!5913 lt!1886750)) (ite c!806332 lambda!215379 lambda!215381)) e!2944715)))

(declare-fun b!4721708 () Bool)

(declare-fun e!2944716 () Bool)

(assert (=> b!4721708 (= e!2944715 e!2944716)))

(declare-fun res!1997482 () Bool)

(assert (=> b!4721708 (=> (not res!1997482) (not e!2944716))))

(assert (=> b!4721708 (= res!1997482 (dynLambda!21817 (ite c!806332 lambda!215379 lambda!215381) (h!59169 (ite c!806332 (toList!5913 lt!1886424) (toList!5913 lt!1886750)))))))

(declare-fun b!4721709 () Bool)

(assert (=> b!4721709 (= e!2944716 (forall!11584 (t!360210 (ite c!806332 (toList!5913 lt!1886424) (toList!5913 lt!1886750))) (ite c!806332 lambda!215379 lambda!215381)))))

(assert (= (and d!1503138 (not res!1997481)) b!4721708))

(assert (= (and b!4721708 res!1997482) b!4721709))

(declare-fun b_lambda!178365 () Bool)

(assert (=> (not b_lambda!178365) (not b!4721708)))

(declare-fun m!5656251 () Bool)

(assert (=> b!4721708 m!5656251))

(declare-fun m!5656253 () Bool)

(assert (=> b!4721709 m!5656253))

(assert (=> bm!330183 d!1503138))

(declare-fun d!1503140 () Bool)

(declare-fun res!1997487 () Bool)

(declare-fun e!2944721 () Bool)

(assert (=> d!1503140 (=> res!1997487 e!2944721)))

(assert (=> d!1503140 (= res!1997487 (and ((_ is Cons!52824) (toList!5913 lt!1886427)) (= (_1!30515 (h!59169 (toList!5913 lt!1886427))) key!4653)))))

(assert (=> d!1503140 (= (containsKey!3367 (toList!5913 lt!1886427) key!4653) e!2944721)))

(declare-fun b!4721714 () Bool)

(declare-fun e!2944722 () Bool)

(assert (=> b!4721714 (= e!2944721 e!2944722)))

(declare-fun res!1997488 () Bool)

(assert (=> b!4721714 (=> (not res!1997488) (not e!2944722))))

(assert (=> b!4721714 (= res!1997488 ((_ is Cons!52824) (toList!5913 lt!1886427)))))

(declare-fun b!4721715 () Bool)

(assert (=> b!4721715 (= e!2944722 (containsKey!3367 (t!360210 (toList!5913 lt!1886427)) key!4653))))

(assert (= (and d!1503140 (not res!1997487)) b!4721714))

(assert (= (and b!4721714 res!1997488) b!4721715))

(declare-fun m!5656255 () Bool)

(assert (=> b!4721715 m!5656255))

(assert (=> b!4721493 d!1503140))

(declare-fun d!1503142 () Bool)

(assert (=> d!1503142 (containsKey!3367 (toList!5913 lt!1886427) key!4653)))

(declare-fun lt!1886918 () Unit!129750)

(declare-fun choose!33312 (List!52948 K!14180) Unit!129750)

(assert (=> d!1503142 (= lt!1886918 (choose!33312 (toList!5913 lt!1886427) key!4653))))

(assert (=> d!1503142 (invariantList!1509 (toList!5913 lt!1886427))))

(assert (=> d!1503142 (= (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886427) key!4653) lt!1886918)))

(declare-fun bs!1109953 () Bool)

(assert (= bs!1109953 d!1503142))

(assert (=> bs!1109953 m!5655707))

(declare-fun m!5656257 () Bool)

(assert (=> bs!1109953 m!5656257))

(assert (=> bs!1109953 m!5656021))

(assert (=> b!4721493 d!1503142))

(declare-fun d!1503144 () Bool)

(declare-fun res!1997489 () Bool)

(declare-fun e!2944723 () Bool)

(assert (=> d!1503144 (=> res!1997489 e!2944723)))

(assert (=> d!1503144 (= res!1997489 (and ((_ is Cons!52824) (t!360210 lt!1886428)) (= (_1!30515 (h!59169 (t!360210 lt!1886428))) key!4653)))))

(assert (=> d!1503144 (= (containsKey!3365 (t!360210 lt!1886428) key!4653) e!2944723)))

(declare-fun b!4721716 () Bool)

(declare-fun e!2944724 () Bool)

(assert (=> b!4721716 (= e!2944723 e!2944724)))

(declare-fun res!1997490 () Bool)

(assert (=> b!4721716 (=> (not res!1997490) (not e!2944724))))

(assert (=> b!4721716 (= res!1997490 ((_ is Cons!52824) (t!360210 lt!1886428)))))

(declare-fun b!4721717 () Bool)

(assert (=> b!4721717 (= e!2944724 (containsKey!3365 (t!360210 (t!360210 lt!1886428)) key!4653))))

(assert (= (and d!1503144 (not res!1997489)) b!4721716))

(assert (= (and b!4721716 res!1997490) b!4721717))

(declare-fun m!5656259 () Bool)

(assert (=> b!4721717 m!5656259))

(assert (=> b!4721571 d!1503144))

(declare-fun d!1503146 () Bool)

(assert (=> d!1503146 (= (invariantList!1509 (toList!5913 lt!1886602)) (noDuplicatedKeys!372 (toList!5913 lt!1886602)))))

(declare-fun bs!1109954 () Bool)

(assert (= bs!1109954 d!1503146))

(declare-fun m!5656261 () Bool)

(assert (=> bs!1109954 m!5656261))

(assert (=> b!4721427 d!1503146))

(declare-fun d!1503148 () Bool)

(declare-fun res!1997491 () Bool)

(declare-fun e!2944725 () Bool)

(assert (=> d!1503148 (=> res!1997491 e!2944725)))

(assert (=> d!1503148 (= res!1997491 ((_ is Nil!52824) oldBucket!34))))

(assert (=> d!1503148 (= (forall!11584 oldBucket!34 lambda!215385) e!2944725)))

(declare-fun b!4721718 () Bool)

(declare-fun e!2944726 () Bool)

(assert (=> b!4721718 (= e!2944725 e!2944726)))

(declare-fun res!1997492 () Bool)

(assert (=> b!4721718 (=> (not res!1997492) (not e!2944726))))

(assert (=> b!4721718 (= res!1997492 (dynLambda!21817 lambda!215385 (h!59169 oldBucket!34)))))

(declare-fun b!4721719 () Bool)

(assert (=> b!4721719 (= e!2944726 (forall!11584 (t!360210 oldBucket!34) lambda!215385))))

(assert (= (and d!1503148 (not res!1997491)) b!4721718))

(assert (= (and b!4721718 res!1997492) b!4721719))

(declare-fun b_lambda!178367 () Bool)

(assert (=> (not b_lambda!178367) (not b!4721718)))

(declare-fun m!5656263 () Bool)

(assert (=> b!4721718 m!5656263))

(declare-fun m!5656265 () Bool)

(assert (=> b!4721719 m!5656265))

(assert (=> d!1503020 d!1503148))

(declare-fun d!1503150 () Bool)

(declare-fun res!1997493 () Bool)

(declare-fun e!2944727 () Bool)

(assert (=> d!1503150 (=> res!1997493 e!2944727)))

(assert (=> d!1503150 (= res!1997493 ((_ is Nil!52824) (t!360210 oldBucket!34)))))

(assert (=> d!1503150 (= (forall!11584 (t!360210 oldBucket!34) lambda!215349) e!2944727)))

(declare-fun b!4721720 () Bool)

(declare-fun e!2944728 () Bool)

(assert (=> b!4721720 (= e!2944727 e!2944728)))

(declare-fun res!1997494 () Bool)

(assert (=> b!4721720 (=> (not res!1997494) (not e!2944728))))

(assert (=> b!4721720 (= res!1997494 (dynLambda!21817 lambda!215349 (h!59169 (t!360210 oldBucket!34))))))

(declare-fun b!4721721 () Bool)

(assert (=> b!4721721 (= e!2944728 (forall!11584 (t!360210 (t!360210 oldBucket!34)) lambda!215349))))

(assert (= (and d!1503150 (not res!1997493)) b!4721720))

(assert (= (and b!4721720 res!1997494) b!4721721))

(declare-fun b_lambda!178369 () Bool)

(assert (=> (not b_lambda!178369) (not b!4721720)))

(declare-fun m!5656267 () Bool)

(assert (=> b!4721720 m!5656267))

(declare-fun m!5656269 () Bool)

(assert (=> b!4721721 m!5656269))

(assert (=> b!4721430 d!1503150))

(declare-fun d!1503152 () Bool)

(declare-fun res!1997495 () Bool)

(declare-fun e!2944729 () Bool)

(assert (=> d!1503152 (=> res!1997495 e!2944729)))

(assert (=> d!1503152 (= res!1997495 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503152 (= (forall!11584 (toList!5913 lt!1886424) lambda!215349) e!2944729)))

(declare-fun b!4721722 () Bool)

(declare-fun e!2944730 () Bool)

(assert (=> b!4721722 (= e!2944729 e!2944730)))

(declare-fun res!1997496 () Bool)

(assert (=> b!4721722 (=> (not res!1997496) (not e!2944730))))

(assert (=> b!4721722 (= res!1997496 (dynLambda!21817 lambda!215349 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721723 () Bool)

(assert (=> b!4721723 (= e!2944730 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215349))))

(assert (= (and d!1503152 (not res!1997495)) b!4721722))

(assert (= (and b!4721722 res!1997496) b!4721723))

(declare-fun b_lambda!178371 () Bool)

(assert (=> (not b_lambda!178371) (not b!4721722)))

(declare-fun m!5656271 () Bool)

(assert (=> b!4721722 m!5656271))

(declare-fun m!5656273 () Bool)

(assert (=> b!4721723 m!5656273))

(assert (=> b!4721430 d!1503152))

(declare-fun d!1503154 () Bool)

(assert (=> d!1503154 (dynLambda!21817 lambda!215349 (h!59169 oldBucket!34))))

(declare-fun lt!1886919 () Unit!129750)

(assert (=> d!1503154 (= lt!1886919 (choose!33308 (toList!5913 lt!1886626) lambda!215349 (h!59169 oldBucket!34)))))

(declare-fun e!2944731 () Bool)

(assert (=> d!1503154 e!2944731))

(declare-fun res!1997497 () Bool)

(assert (=> d!1503154 (=> (not res!1997497) (not e!2944731))))

(assert (=> d!1503154 (= res!1997497 (forall!11584 (toList!5913 lt!1886626) lambda!215349))))

(assert (=> d!1503154 (= (forallContained!3635 (toList!5913 lt!1886626) lambda!215349 (h!59169 oldBucket!34)) lt!1886919)))

(declare-fun b!4721724 () Bool)

(assert (=> b!4721724 (= e!2944731 (contains!16169 (toList!5913 lt!1886626) (h!59169 oldBucket!34)))))

(assert (= (and d!1503154 res!1997497) b!4721724))

(declare-fun b_lambda!178373 () Bool)

(assert (=> (not b_lambda!178373) (not d!1503154)))

(declare-fun m!5656275 () Bool)

(assert (=> d!1503154 m!5656275))

(declare-fun m!5656277 () Bool)

(assert (=> d!1503154 m!5656277))

(assert (=> d!1503154 m!5655605))

(declare-fun m!5656279 () Bool)

(assert (=> b!4721724 m!5656279))

(assert (=> b!4721430 d!1503154))

(declare-fun d!1503156 () Bool)

(declare-fun e!2944732 () Bool)

(assert (=> d!1503156 e!2944732))

(declare-fun res!1997498 () Bool)

(assert (=> d!1503156 (=> (not res!1997498) (not e!2944732))))

(declare-fun lt!1886920 () ListMap!5277)

(assert (=> d!1503156 (= res!1997498 (contains!16168 lt!1886920 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun lt!1886922 () List!52948)

(assert (=> d!1503156 (= lt!1886920 (ListMap!5278 lt!1886922))))

(declare-fun lt!1886923 () Unit!129750)

(declare-fun lt!1886921 () Unit!129750)

(assert (=> d!1503156 (= lt!1886923 lt!1886921)))

(assert (=> d!1503156 (= (getValueByKey!1952 lt!1886922 (_1!30515 (h!59169 oldBucket!34))) (Some!12355 (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1503156 (= lt!1886921 (lemmaContainsTupThenGetReturnValue!1083 lt!1886922 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1503156 (= lt!1886922 (insertNoDuplicatedKeys!591 (toList!5913 lt!1886424) (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1503156 (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886920)))

(declare-fun b!4721725 () Bool)

(declare-fun res!1997499 () Bool)

(assert (=> b!4721725 (=> (not res!1997499) (not e!2944732))))

(assert (=> b!4721725 (= res!1997499 (= (getValueByKey!1952 (toList!5913 lt!1886920) (_1!30515 (h!59169 oldBucket!34))) (Some!12355 (_2!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721726 () Bool)

(assert (=> b!4721726 (= e!2944732 (contains!16169 (toList!5913 lt!1886920) (h!59169 oldBucket!34)))))

(assert (= (and d!1503156 res!1997498) b!4721725))

(assert (= (and b!4721725 res!1997499) b!4721726))

(declare-fun m!5656281 () Bool)

(assert (=> d!1503156 m!5656281))

(declare-fun m!5656283 () Bool)

(assert (=> d!1503156 m!5656283))

(declare-fun m!5656285 () Bool)

(assert (=> d!1503156 m!5656285))

(declare-fun m!5656287 () Bool)

(assert (=> d!1503156 m!5656287))

(declare-fun m!5656289 () Bool)

(assert (=> b!4721725 m!5656289))

(declare-fun m!5656291 () Bool)

(assert (=> b!4721726 m!5656291))

(assert (=> b!4721430 d!1503156))

(declare-fun d!1503158 () Bool)

(declare-fun e!2944737 () Bool)

(assert (=> d!1503158 e!2944737))

(declare-fun res!1997501 () Bool)

(assert (=> d!1503158 (=> res!1997501 e!2944737)))

(declare-fun e!2944733 () Bool)

(assert (=> d!1503158 (= res!1997501 e!2944733)))

(declare-fun res!1997502 () Bool)

(assert (=> d!1503158 (=> (not res!1997502) (not e!2944733))))

(declare-fun lt!1886925 () Bool)

(assert (=> d!1503158 (= res!1997502 (not lt!1886925))))

(declare-fun lt!1886928 () Bool)

(assert (=> d!1503158 (= lt!1886925 lt!1886928)))

(declare-fun lt!1886924 () Unit!129750)

(declare-fun e!2944738 () Unit!129750)

(assert (=> d!1503158 (= lt!1886924 e!2944738)))

(declare-fun c!806360 () Bool)

(assert (=> d!1503158 (= c!806360 lt!1886928)))

(assert (=> d!1503158 (= lt!1886928 (containsKey!3367 (toList!5913 lt!1886627) (_1!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1503158 (= (contains!16168 lt!1886627 (_1!30515 (h!59169 oldBucket!34))) lt!1886925)))

(declare-fun b!4721727 () Bool)

(declare-fun e!2944735 () List!52951)

(assert (=> b!4721727 (= e!2944735 (keys!18970 lt!1886627))))

(declare-fun b!4721728 () Bool)

(declare-fun lt!1886930 () Unit!129750)

(assert (=> b!4721728 (= e!2944738 lt!1886930)))

(declare-fun lt!1886931 () Unit!129750)

(assert (=> b!4721728 (= lt!1886931 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886627) (_1!30515 (h!59169 oldBucket!34))))))

(assert (=> b!4721728 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886627) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun lt!1886929 () Unit!129750)

(assert (=> b!4721728 (= lt!1886929 lt!1886931)))

(assert (=> b!4721728 (= lt!1886930 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886627) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun call!330204 () Bool)

(assert (=> b!4721728 call!330204))

(declare-fun b!4721729 () Bool)

(declare-fun e!2944736 () Unit!129750)

(assert (=> b!4721729 (= e!2944738 e!2944736)))

(declare-fun c!806359 () Bool)

(assert (=> b!4721729 (= c!806359 call!330204)))

(declare-fun b!4721730 () Bool)

(declare-fun e!2944734 () Bool)

(assert (=> b!4721730 (= e!2944737 e!2944734)))

(declare-fun res!1997500 () Bool)

(assert (=> b!4721730 (=> (not res!1997500) (not e!2944734))))

(assert (=> b!4721730 (= res!1997500 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886627) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721731 () Bool)

(assert (=> b!4721731 (= e!2944735 (getKeysList!949 (toList!5913 lt!1886627)))))

(declare-fun b!4721732 () Bool)

(declare-fun Unit!129896 () Unit!129750)

(assert (=> b!4721732 (= e!2944736 Unit!129896)))

(declare-fun b!4721733 () Bool)

(assert (=> b!4721733 (= e!2944733 (not (contains!16171 (keys!18970 lt!1886627) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721734 () Bool)

(assert (=> b!4721734 false))

(declare-fun lt!1886927 () Unit!129750)

(declare-fun lt!1886926 () Unit!129750)

(assert (=> b!4721734 (= lt!1886927 lt!1886926)))

(assert (=> b!4721734 (containsKey!3367 (toList!5913 lt!1886627) (_1!30515 (h!59169 oldBucket!34)))))

(assert (=> b!4721734 (= lt!1886926 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886627) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun Unit!129897 () Unit!129750)

(assert (=> b!4721734 (= e!2944736 Unit!129897)))

(declare-fun b!4721735 () Bool)

(assert (=> b!4721735 (= e!2944734 (contains!16171 (keys!18970 lt!1886627) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun bm!330199 () Bool)

(assert (=> bm!330199 (= call!330204 (contains!16171 e!2944735 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun c!806361 () Bool)

(assert (=> bm!330199 (= c!806361 c!806360)))

(assert (= (and d!1503158 c!806360) b!4721728))

(assert (= (and d!1503158 (not c!806360)) b!4721729))

(assert (= (and b!4721729 c!806359) b!4721734))

(assert (= (and b!4721729 (not c!806359)) b!4721732))

(assert (= (or b!4721728 b!4721729) bm!330199))

(assert (= (and bm!330199 c!806361) b!4721731))

(assert (= (and bm!330199 (not c!806361)) b!4721727))

(assert (= (and d!1503158 res!1997502) b!4721733))

(assert (= (and d!1503158 (not res!1997501)) b!4721730))

(assert (= (and b!4721730 res!1997500) b!4721735))

(declare-fun m!5656293 () Bool)

(assert (=> bm!330199 m!5656293))

(declare-fun m!5656295 () Bool)

(assert (=> b!4721730 m!5656295))

(assert (=> b!4721730 m!5656295))

(declare-fun m!5656297 () Bool)

(assert (=> b!4721730 m!5656297))

(declare-fun m!5656299 () Bool)

(assert (=> d!1503158 m!5656299))

(declare-fun m!5656301 () Bool)

(assert (=> b!4721727 m!5656301))

(declare-fun m!5656303 () Bool)

(assert (=> b!4721728 m!5656303))

(assert (=> b!4721728 m!5656295))

(assert (=> b!4721728 m!5656295))

(assert (=> b!4721728 m!5656297))

(declare-fun m!5656305 () Bool)

(assert (=> b!4721728 m!5656305))

(assert (=> b!4721735 m!5656301))

(assert (=> b!4721735 m!5656301))

(declare-fun m!5656307 () Bool)

(assert (=> b!4721735 m!5656307))

(assert (=> b!4721733 m!5656301))

(assert (=> b!4721733 m!5656301))

(assert (=> b!4721733 m!5656307))

(declare-fun m!5656309 () Bool)

(assert (=> b!4721731 m!5656309))

(assert (=> b!4721734 m!5656299))

(declare-fun m!5656311 () Bool)

(assert (=> b!4721734 m!5656311))

(assert (=> b!4721430 d!1503158))

(declare-fun d!1503160 () Bool)

(declare-fun res!1997503 () Bool)

(declare-fun e!2944739 () Bool)

(assert (=> d!1503160 (=> res!1997503 e!2944739)))

(assert (=> d!1503160 (= res!1997503 ((_ is Nil!52824) oldBucket!34))))

(assert (=> d!1503160 (= (forall!11584 oldBucket!34 lambda!215349) e!2944739)))

(declare-fun b!4721736 () Bool)

(declare-fun e!2944740 () Bool)

(assert (=> b!4721736 (= e!2944739 e!2944740)))

(declare-fun res!1997504 () Bool)

(assert (=> b!4721736 (=> (not res!1997504) (not e!2944740))))

(assert (=> b!4721736 (= res!1997504 (dynLambda!21817 lambda!215349 (h!59169 oldBucket!34)))))

(declare-fun b!4721737 () Bool)

(assert (=> b!4721737 (= e!2944740 (forall!11584 (t!360210 oldBucket!34) lambda!215349))))

(assert (= (and d!1503160 (not res!1997503)) b!4721736))

(assert (= (and b!4721736 res!1997504) b!4721737))

(declare-fun b_lambda!178375 () Bool)

(assert (=> (not b_lambda!178375) (not b!4721736)))

(assert (=> b!4721736 m!5656275))

(assert (=> b!4721737 m!5655607))

(assert (=> b!4721430 d!1503160))

(declare-fun bs!1109955 () Bool)

(declare-fun d!1503162 () Bool)

(assert (= bs!1109955 (and d!1503162 d!1503008)))

(declare-fun lambda!215420 () Int)

(assert (=> bs!1109955 (= (= lt!1886627 lt!1886726) (= lambda!215420 lambda!215378))))

(declare-fun bs!1109956 () Bool)

(assert (= bs!1109956 (and d!1503162 b!4721535)))

(assert (=> bs!1109956 (= (= lt!1886627 lt!1886751) (= lambda!215420 lambda!215381))))

(declare-fun bs!1109957 () Bool)

(assert (= bs!1109957 (and d!1503162 b!4721536)))

(assert (=> bs!1109957 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215379))))

(declare-fun bs!1109958 () Bool)

(assert (= bs!1109958 (and d!1503162 b!4721430)))

(assert (=> bs!1109958 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215348))))

(declare-fun bs!1109959 () Bool)

(assert (= bs!1109959 (and d!1503162 b!4721633)))

(assert (=> bs!1109959 (= (= lt!1886627 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215420 lambda!215403))))

(declare-fun bs!1109960 () Bool)

(assert (= bs!1109960 (and d!1503162 d!1503084)))

(assert (=> bs!1109960 (= (= lt!1886627 lt!1886730) (= lambda!215420 lambda!215411))))

(declare-fun bs!1109961 () Bool)

(assert (= bs!1109961 (and d!1503162 d!1502956)))

(assert (=> bs!1109961 (= (= lt!1886627 lt!1886602) (= lambda!215420 lambda!215346))))

(declare-fun bs!1109962 () Bool)

(assert (= bs!1109962 (and d!1503162 b!4721695)))

(assert (=> bs!1109962 (= (= lt!1886627 lt!1886897) (= lambda!215420 lambda!215414))))

(assert (=> bs!1109956 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215380))))

(assert (=> bs!1109962 (= (= lt!1886627 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215420 lambda!215413))))

(declare-fun bs!1109963 () Bool)

(assert (= bs!1109963 (and d!1503162 b!4721545)))

(assert (=> bs!1109963 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215386))))

(declare-fun bs!1109964 () Bool)

(assert (= bs!1109964 (and d!1503162 d!1503020)))

(assert (=> bs!1109964 (not (= lambda!215420 lambda!215385))))

(declare-fun bs!1109965 () Bool)

(assert (= bs!1109965 (and d!1503162 b!4721696)))

(assert (=> bs!1109965 (= (= lt!1886627 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215420 lambda!215412))))

(declare-fun bs!1109966 () Bool)

(assert (= bs!1109966 (and d!1503162 b!4721632)))

(assert (=> bs!1109966 (= (= lt!1886627 lt!1886847) (= lambda!215420 lambda!215405))))

(assert (=> bs!1109958 (= lambda!215420 lambda!215349)))

(declare-fun bs!1109967 () Bool)

(assert (= bs!1109967 (and d!1503162 b!4721530)))

(assert (=> bs!1109967 (= (= lt!1886627 lt!1886730) (= lambda!215420 lambda!215376))))

(declare-fun bs!1109968 () Bool)

(assert (= bs!1109968 (and d!1503162 b!4721423)))

(assert (=> bs!1109968 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215344))))

(assert (=> bs!1109966 (= (= lt!1886627 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215420 lambda!215404))))

(declare-fun bs!1109969 () Bool)

(assert (= bs!1109969 (and d!1503162 d!1503132)))

(assert (=> bs!1109969 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215419))))

(declare-fun bs!1109970 () Bool)

(assert (= bs!1109970 (and d!1503162 d!1503126)))

(assert (=> bs!1109970 (= (= lt!1886627 lt!1886893) (= lambda!215420 lambda!215415))))

(declare-fun bs!1109971 () Bool)

(assert (= bs!1109971 (and d!1503162 b!4721424)))

(assert (=> bs!1109971 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215343))))

(declare-fun bs!1109972 () Bool)

(assert (= bs!1109972 (and d!1503162 b!4721544)))

(assert (=> bs!1109972 (= (= lt!1886627 lt!1886775) (= lambda!215420 lambda!215388))))

(declare-fun bs!1109973 () Bool)

(assert (= bs!1109973 (and d!1503162 d!1503024)))

(assert (=> bs!1109973 (= (= lt!1886627 lt!1886771) (= lambda!215420 lambda!215389))))

(assert (=> bs!1109968 (= (= lt!1886627 lt!1886606) (= lambda!215420 lambda!215345))))

(assert (=> bs!1109967 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215375))))

(declare-fun bs!1109974 () Bool)

(assert (= bs!1109974 (and d!1503162 b!4721531)))

(assert (=> bs!1109974 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215373))))

(declare-fun bs!1109975 () Bool)

(assert (= bs!1109975 (and d!1503162 b!4721431)))

(assert (=> bs!1109975 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215347))))

(declare-fun bs!1109976 () Bool)

(assert (= bs!1109976 (and d!1503162 d!1502964)))

(assert (=> bs!1109976 (= (= lt!1886627 lt!1886623) (= lambda!215420 lambda!215352))))

(assert (=> bs!1109972 (= (= lt!1886627 lt!1886424) (= lambda!215420 lambda!215387))))

(declare-fun bs!1109977 () Bool)

(assert (= bs!1109977 (and d!1503162 d!1503014)))

(assert (=> bs!1109977 (= (= lt!1886627 lt!1886747) (= lambda!215420 lambda!215382))))

(declare-fun bs!1109978 () Bool)

(assert (= bs!1109978 (and d!1503162 d!1503040)))

(assert (=> bs!1109978 (not (= lambda!215420 lambda!215399))))

(declare-fun bs!1109979 () Bool)

(assert (= bs!1109979 (and d!1503162 d!1503082)))

(assert (=> bs!1109979 (= (= lt!1886627 lt!1886843) (= lambda!215420 lambda!215406))))

(assert (=> d!1503162 true))

(assert (=> d!1503162 (forall!11584 (toList!5913 lt!1886424) lambda!215420)))

(declare-fun lt!1886932 () Unit!129750)

(assert (=> d!1503162 (= lt!1886932 (choose!33307 lt!1886424 lt!1886627 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1503162 (forall!11584 (toList!5913 (+!2267 lt!1886424 (tuple2!54443 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))) lambda!215420)))

(assert (=> d!1503162 (= (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886627 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))) lt!1886932)))

(declare-fun bs!1109980 () Bool)

(assert (= bs!1109980 d!1503162))

(declare-fun m!5656313 () Bool)

(assert (=> bs!1109980 m!5656313))

(declare-fun m!5656315 () Bool)

(assert (=> bs!1109980 m!5656315))

(declare-fun m!5656317 () Bool)

(assert (=> bs!1109980 m!5656317))

(declare-fun m!5656319 () Bool)

(assert (=> bs!1109980 m!5656319))

(assert (=> b!4721430 d!1503162))

(declare-fun d!1503164 () Bool)

(declare-fun e!2944745 () Bool)

(assert (=> d!1503164 e!2944745))

(declare-fun res!1997506 () Bool)

(assert (=> d!1503164 (=> res!1997506 e!2944745)))

(declare-fun e!2944741 () Bool)

(assert (=> d!1503164 (= res!1997506 e!2944741)))

(declare-fun res!1997507 () Bool)

(assert (=> d!1503164 (=> (not res!1997507) (not e!2944741))))

(declare-fun lt!1886934 () Bool)

(assert (=> d!1503164 (= res!1997507 (not lt!1886934))))

(declare-fun lt!1886937 () Bool)

(assert (=> d!1503164 (= lt!1886934 lt!1886937)))

(declare-fun lt!1886933 () Unit!129750)

(declare-fun e!2944746 () Unit!129750)

(assert (=> d!1503164 (= lt!1886933 e!2944746)))

(declare-fun c!806363 () Bool)

(assert (=> d!1503164 (= c!806363 lt!1886937)))

(assert (=> d!1503164 (= lt!1886937 (containsKey!3367 (toList!5913 lt!1886626) (_1!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1503164 (= (contains!16168 lt!1886626 (_1!30515 (h!59169 oldBucket!34))) lt!1886934)))

(declare-fun b!4721738 () Bool)

(declare-fun e!2944743 () List!52951)

(assert (=> b!4721738 (= e!2944743 (keys!18970 lt!1886626))))

(declare-fun b!4721739 () Bool)

(declare-fun lt!1886939 () Unit!129750)

(assert (=> b!4721739 (= e!2944746 lt!1886939)))

(declare-fun lt!1886940 () Unit!129750)

(assert (=> b!4721739 (= lt!1886940 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886626) (_1!30515 (h!59169 oldBucket!34))))))

(assert (=> b!4721739 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886626) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun lt!1886938 () Unit!129750)

(assert (=> b!4721739 (= lt!1886938 lt!1886940)))

(assert (=> b!4721739 (= lt!1886939 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886626) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun call!330205 () Bool)

(assert (=> b!4721739 call!330205))

(declare-fun b!4721740 () Bool)

(declare-fun e!2944744 () Unit!129750)

(assert (=> b!4721740 (= e!2944746 e!2944744)))

(declare-fun c!806362 () Bool)

(assert (=> b!4721740 (= c!806362 call!330205)))

(declare-fun b!4721741 () Bool)

(declare-fun e!2944742 () Bool)

(assert (=> b!4721741 (= e!2944745 e!2944742)))

(declare-fun res!1997505 () Bool)

(assert (=> b!4721741 (=> (not res!1997505) (not e!2944742))))

(assert (=> b!4721741 (= res!1997505 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886626) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721742 () Bool)

(assert (=> b!4721742 (= e!2944743 (getKeysList!949 (toList!5913 lt!1886626)))))

(declare-fun b!4721743 () Bool)

(declare-fun Unit!129909 () Unit!129750)

(assert (=> b!4721743 (= e!2944744 Unit!129909)))

(declare-fun b!4721744 () Bool)

(assert (=> b!4721744 (= e!2944741 (not (contains!16171 (keys!18970 lt!1886626) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721745 () Bool)

(assert (=> b!4721745 false))

(declare-fun lt!1886936 () Unit!129750)

(declare-fun lt!1886935 () Unit!129750)

(assert (=> b!4721745 (= lt!1886936 lt!1886935)))

(assert (=> b!4721745 (containsKey!3367 (toList!5913 lt!1886626) (_1!30515 (h!59169 oldBucket!34)))))

(assert (=> b!4721745 (= lt!1886935 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886626) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun Unit!129910 () Unit!129750)

(assert (=> b!4721745 (= e!2944744 Unit!129910)))

(declare-fun b!4721746 () Bool)

(assert (=> b!4721746 (= e!2944742 (contains!16171 (keys!18970 lt!1886626) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun bm!330200 () Bool)

(assert (=> bm!330200 (= call!330205 (contains!16171 e!2944743 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun c!806364 () Bool)

(assert (=> bm!330200 (= c!806364 c!806363)))

(assert (= (and d!1503164 c!806363) b!4721739))

(assert (= (and d!1503164 (not c!806363)) b!4721740))

(assert (= (and b!4721740 c!806362) b!4721745))

(assert (= (and b!4721740 (not c!806362)) b!4721743))

(assert (= (or b!4721739 b!4721740) bm!330200))

(assert (= (and bm!330200 c!806364) b!4721742))

(assert (= (and bm!330200 (not c!806364)) b!4721738))

(assert (= (and d!1503164 res!1997507) b!4721744))

(assert (= (and d!1503164 (not res!1997506)) b!4721741))

(assert (= (and b!4721741 res!1997505) b!4721746))

(declare-fun m!5656321 () Bool)

(assert (=> bm!330200 m!5656321))

(declare-fun m!5656323 () Bool)

(assert (=> b!4721741 m!5656323))

(assert (=> b!4721741 m!5656323))

(declare-fun m!5656325 () Bool)

(assert (=> b!4721741 m!5656325))

(declare-fun m!5656327 () Bool)

(assert (=> d!1503164 m!5656327))

(declare-fun m!5656329 () Bool)

(assert (=> b!4721738 m!5656329))

(declare-fun m!5656331 () Bool)

(assert (=> b!4721739 m!5656331))

(assert (=> b!4721739 m!5656323))

(assert (=> b!4721739 m!5656323))

(assert (=> b!4721739 m!5656325))

(declare-fun m!5656333 () Bool)

(assert (=> b!4721739 m!5656333))

(assert (=> b!4721746 m!5656329))

(assert (=> b!4721746 m!5656329))

(declare-fun m!5656335 () Bool)

(assert (=> b!4721746 m!5656335))

(assert (=> b!4721744 m!5656329))

(assert (=> b!4721744 m!5656329))

(assert (=> b!4721744 m!5656335))

(declare-fun m!5656337 () Bool)

(assert (=> b!4721742 m!5656337))

(assert (=> b!4721745 m!5656327))

(declare-fun m!5656339 () Bool)

(assert (=> b!4721745 m!5656339))

(assert (=> b!4721430 d!1503164))

(declare-fun bs!1109981 () Bool)

(declare-fun b!4721748 () Bool)

(assert (= bs!1109981 (and b!4721748 d!1503008)))

(declare-fun lambda!215421 () Int)

(assert (=> bs!1109981 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886726) (= lambda!215421 lambda!215378))))

(declare-fun bs!1109982 () Bool)

(assert (= bs!1109982 (and b!4721748 b!4721535)))

(assert (=> bs!1109982 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886751) (= lambda!215421 lambda!215381))))

(declare-fun bs!1109983 () Bool)

(assert (= bs!1109983 (and b!4721748 b!4721536)))

(assert (=> bs!1109983 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215379))))

(declare-fun bs!1109984 () Bool)

(assert (= bs!1109984 (and b!4721748 b!4721430)))

(assert (=> bs!1109984 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215348))))

(declare-fun bs!1109985 () Bool)

(assert (= bs!1109985 (and b!4721748 b!4721633)))

(assert (=> bs!1109985 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215421 lambda!215403))))

(declare-fun bs!1109986 () Bool)

(assert (= bs!1109986 (and b!4721748 d!1503084)))

(assert (=> bs!1109986 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886730) (= lambda!215421 lambda!215411))))

(declare-fun bs!1109987 () Bool)

(assert (= bs!1109987 (and b!4721748 d!1502956)))

(assert (=> bs!1109987 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886602) (= lambda!215421 lambda!215346))))

(declare-fun bs!1109988 () Bool)

(assert (= bs!1109988 (and b!4721748 b!4721695)))

(assert (=> bs!1109988 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886897) (= lambda!215421 lambda!215414))))

(assert (=> bs!1109982 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215380))))

(assert (=> bs!1109988 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215421 lambda!215413))))

(declare-fun bs!1109989 () Bool)

(assert (= bs!1109989 (and b!4721748 b!4721545)))

(assert (=> bs!1109989 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215386))))

(declare-fun bs!1109990 () Bool)

(assert (= bs!1109990 (and b!4721748 d!1503020)))

(assert (=> bs!1109990 (not (= lambda!215421 lambda!215385))))

(declare-fun bs!1109991 () Bool)

(assert (= bs!1109991 (and b!4721748 b!4721696)))

(assert (=> bs!1109991 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215421 lambda!215412))))

(declare-fun bs!1109992 () Bool)

(assert (= bs!1109992 (and b!4721748 b!4721632)))

(assert (=> bs!1109992 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886847) (= lambda!215421 lambda!215405))))

(declare-fun bs!1109993 () Bool)

(assert (= bs!1109993 (and b!4721748 d!1503162)))

(assert (=> bs!1109993 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886627) (= lambda!215421 lambda!215420))))

(assert (=> bs!1109984 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886627) (= lambda!215421 lambda!215349))))

(declare-fun bs!1109994 () Bool)

(assert (= bs!1109994 (and b!4721748 b!4721530)))

(assert (=> bs!1109994 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886730) (= lambda!215421 lambda!215376))))

(declare-fun bs!1109995 () Bool)

(assert (= bs!1109995 (and b!4721748 b!4721423)))

(assert (=> bs!1109995 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215344))))

(assert (=> bs!1109992 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215421 lambda!215404))))

(declare-fun bs!1109996 () Bool)

(assert (= bs!1109996 (and b!4721748 d!1503132)))

(assert (=> bs!1109996 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215419))))

(declare-fun bs!1109997 () Bool)

(assert (= bs!1109997 (and b!4721748 d!1503126)))

(assert (=> bs!1109997 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886893) (= lambda!215421 lambda!215415))))

(declare-fun bs!1109998 () Bool)

(assert (= bs!1109998 (and b!4721748 b!4721424)))

(assert (=> bs!1109998 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215343))))

(declare-fun bs!1109999 () Bool)

(assert (= bs!1109999 (and b!4721748 b!4721544)))

(assert (=> bs!1109999 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886775) (= lambda!215421 lambda!215388))))

(declare-fun bs!1110000 () Bool)

(assert (= bs!1110000 (and b!4721748 d!1503024)))

(assert (=> bs!1110000 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886771) (= lambda!215421 lambda!215389))))

(assert (=> bs!1109995 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886606) (= lambda!215421 lambda!215345))))

(assert (=> bs!1109994 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215375))))

(declare-fun bs!1110001 () Bool)

(assert (= bs!1110001 (and b!4721748 b!4721531)))

(assert (=> bs!1110001 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215373))))

(declare-fun bs!1110002 () Bool)

(assert (= bs!1110002 (and b!4721748 b!4721431)))

(assert (=> bs!1110002 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215347))))

(declare-fun bs!1110003 () Bool)

(assert (= bs!1110003 (and b!4721748 d!1502964)))

(assert (=> bs!1110003 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886623) (= lambda!215421 lambda!215352))))

(assert (=> bs!1109999 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215421 lambda!215387))))

(declare-fun bs!1110004 () Bool)

(assert (= bs!1110004 (and b!4721748 d!1503014)))

(assert (=> bs!1110004 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886747) (= lambda!215421 lambda!215382))))

(declare-fun bs!1110005 () Bool)

(assert (= bs!1110005 (and b!4721748 d!1503040)))

(assert (=> bs!1110005 (not (= lambda!215421 lambda!215399))))

(declare-fun bs!1110006 () Bool)

(assert (= bs!1110006 (and b!4721748 d!1503082)))

(assert (=> bs!1110006 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886843) (= lambda!215421 lambda!215406))))

(assert (=> b!4721748 true))

(declare-fun bs!1110007 () Bool)

(declare-fun b!4721747 () Bool)

(assert (= bs!1110007 (and b!4721747 d!1503008)))

(declare-fun lambda!215422 () Int)

(assert (=> bs!1110007 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886726) (= lambda!215422 lambda!215378))))

(declare-fun bs!1110008 () Bool)

(assert (= bs!1110008 (and b!4721747 b!4721535)))

(assert (=> bs!1110008 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886751) (= lambda!215422 lambda!215381))))

(declare-fun bs!1110009 () Bool)

(assert (= bs!1110009 (and b!4721747 b!4721536)))

(assert (=> bs!1110009 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215379))))

(declare-fun bs!1110010 () Bool)

(assert (= bs!1110010 (and b!4721747 b!4721430)))

(assert (=> bs!1110010 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215348))))

(declare-fun bs!1110011 () Bool)

(assert (= bs!1110011 (and b!4721747 b!4721633)))

(assert (=> bs!1110011 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215422 lambda!215403))))

(declare-fun bs!1110012 () Bool)

(assert (= bs!1110012 (and b!4721747 d!1503084)))

(assert (=> bs!1110012 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886730) (= lambda!215422 lambda!215411))))

(declare-fun bs!1110013 () Bool)

(assert (= bs!1110013 (and b!4721747 b!4721748)))

(assert (=> bs!1110013 (= lambda!215422 lambda!215421)))

(declare-fun bs!1110014 () Bool)

(assert (= bs!1110014 (and b!4721747 d!1502956)))

(assert (=> bs!1110014 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886602) (= lambda!215422 lambda!215346))))

(declare-fun bs!1110015 () Bool)

(assert (= bs!1110015 (and b!4721747 b!4721695)))

(assert (=> bs!1110015 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886897) (= lambda!215422 lambda!215414))))

(assert (=> bs!1110008 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215380))))

(assert (=> bs!1110015 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215422 lambda!215413))))

(declare-fun bs!1110016 () Bool)

(assert (= bs!1110016 (and b!4721747 b!4721545)))

(assert (=> bs!1110016 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215386))))

(declare-fun bs!1110017 () Bool)

(assert (= bs!1110017 (and b!4721747 d!1503020)))

(assert (=> bs!1110017 (not (= lambda!215422 lambda!215385))))

(declare-fun bs!1110018 () Bool)

(assert (= bs!1110018 (and b!4721747 b!4721696)))

(assert (=> bs!1110018 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215422 lambda!215412))))

(declare-fun bs!1110019 () Bool)

(assert (= bs!1110019 (and b!4721747 b!4721632)))

(assert (=> bs!1110019 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886847) (= lambda!215422 lambda!215405))))

(declare-fun bs!1110020 () Bool)

(assert (= bs!1110020 (and b!4721747 d!1503162)))

(assert (=> bs!1110020 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886627) (= lambda!215422 lambda!215420))))

(assert (=> bs!1110010 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886627) (= lambda!215422 lambda!215349))))

(declare-fun bs!1110021 () Bool)

(assert (= bs!1110021 (and b!4721747 b!4721530)))

(assert (=> bs!1110021 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886730) (= lambda!215422 lambda!215376))))

(declare-fun bs!1110022 () Bool)

(assert (= bs!1110022 (and b!4721747 b!4721423)))

(assert (=> bs!1110022 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215344))))

(assert (=> bs!1110019 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215422 lambda!215404))))

(declare-fun bs!1110023 () Bool)

(assert (= bs!1110023 (and b!4721747 d!1503132)))

(assert (=> bs!1110023 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215419))))

(declare-fun bs!1110024 () Bool)

(assert (= bs!1110024 (and b!4721747 d!1503126)))

(assert (=> bs!1110024 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886893) (= lambda!215422 lambda!215415))))

(declare-fun bs!1110025 () Bool)

(assert (= bs!1110025 (and b!4721747 b!4721424)))

(assert (=> bs!1110025 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215343))))

(declare-fun bs!1110026 () Bool)

(assert (= bs!1110026 (and b!4721747 b!4721544)))

(assert (=> bs!1110026 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886775) (= lambda!215422 lambda!215388))))

(declare-fun bs!1110027 () Bool)

(assert (= bs!1110027 (and b!4721747 d!1503024)))

(assert (=> bs!1110027 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886771) (= lambda!215422 lambda!215389))))

(assert (=> bs!1110022 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886606) (= lambda!215422 lambda!215345))))

(assert (=> bs!1110021 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215375))))

(declare-fun bs!1110028 () Bool)

(assert (= bs!1110028 (and b!4721747 b!4721531)))

(assert (=> bs!1110028 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215373))))

(declare-fun bs!1110029 () Bool)

(assert (= bs!1110029 (and b!4721747 b!4721431)))

(assert (=> bs!1110029 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215347))))

(declare-fun bs!1110030 () Bool)

(assert (= bs!1110030 (and b!4721747 d!1502964)))

(assert (=> bs!1110030 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886623) (= lambda!215422 lambda!215352))))

(assert (=> bs!1110026 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886424) (= lambda!215422 lambda!215387))))

(declare-fun bs!1110031 () Bool)

(assert (= bs!1110031 (and b!4721747 d!1503014)))

(assert (=> bs!1110031 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886747) (= lambda!215422 lambda!215382))))

(declare-fun bs!1110032 () Bool)

(assert (= bs!1110032 (and b!4721747 d!1503040)))

(assert (=> bs!1110032 (not (= lambda!215422 lambda!215399))))

(declare-fun bs!1110033 () Bool)

(assert (= bs!1110033 (and b!4721747 d!1503082)))

(assert (=> bs!1110033 (= (= (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886843) (= lambda!215422 lambda!215406))))

(assert (=> b!4721747 true))

(declare-fun lt!1886947 () ListMap!5277)

(declare-fun lambda!215423 () Int)

(assert (=> bs!1110007 (= (= lt!1886947 lt!1886726) (= lambda!215423 lambda!215378))))

(assert (=> bs!1110008 (= (= lt!1886947 lt!1886751) (= lambda!215423 lambda!215381))))

(assert (=> bs!1110009 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215379))))

(assert (=> bs!1110011 (= (= lt!1886947 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215423 lambda!215403))))

(assert (=> bs!1110012 (= (= lt!1886947 lt!1886730) (= lambda!215423 lambda!215411))))

(assert (=> bs!1110013 (= (= lt!1886947 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215423 lambda!215421))))

(assert (=> bs!1110014 (= (= lt!1886947 lt!1886602) (= lambda!215423 lambda!215346))))

(assert (=> bs!1110015 (= (= lt!1886947 lt!1886897) (= lambda!215423 lambda!215414))))

(assert (=> bs!1110008 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215380))))

(assert (=> bs!1110015 (= (= lt!1886947 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215423 lambda!215413))))

(assert (=> bs!1110016 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215386))))

(assert (=> bs!1110017 (not (= lambda!215423 lambda!215385))))

(assert (=> bs!1110018 (= (= lt!1886947 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215423 lambda!215412))))

(assert (=> bs!1110019 (= (= lt!1886947 lt!1886847) (= lambda!215423 lambda!215405))))

(assert (=> bs!1110020 (= (= lt!1886947 lt!1886627) (= lambda!215423 lambda!215420))))

(assert (=> bs!1110010 (= (= lt!1886947 lt!1886627) (= lambda!215423 lambda!215349))))

(assert (=> bs!1110021 (= (= lt!1886947 lt!1886730) (= lambda!215423 lambda!215376))))

(assert (=> bs!1110022 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215344))))

(assert (=> bs!1110010 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215348))))

(assert (=> b!4721747 (= (= lt!1886947 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215423 lambda!215422))))

(assert (=> bs!1110019 (= (= lt!1886947 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215423 lambda!215404))))

(assert (=> bs!1110023 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215419))))

(assert (=> bs!1110024 (= (= lt!1886947 lt!1886893) (= lambda!215423 lambda!215415))))

(assert (=> bs!1110025 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215343))))

(assert (=> bs!1110026 (= (= lt!1886947 lt!1886775) (= lambda!215423 lambda!215388))))

(assert (=> bs!1110027 (= (= lt!1886947 lt!1886771) (= lambda!215423 lambda!215389))))

(assert (=> bs!1110022 (= (= lt!1886947 lt!1886606) (= lambda!215423 lambda!215345))))

(assert (=> bs!1110021 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215375))))

(assert (=> bs!1110028 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215373))))

(assert (=> bs!1110029 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215347))))

(assert (=> bs!1110030 (= (= lt!1886947 lt!1886623) (= lambda!215423 lambda!215352))))

(assert (=> bs!1110026 (= (= lt!1886947 lt!1886424) (= lambda!215423 lambda!215387))))

(assert (=> bs!1110031 (= (= lt!1886947 lt!1886747) (= lambda!215423 lambda!215382))))

(assert (=> bs!1110032 (not (= lambda!215423 lambda!215399))))

(assert (=> bs!1110033 (= (= lt!1886947 lt!1886843) (= lambda!215423 lambda!215406))))

(assert (=> b!4721747 true))

(declare-fun bs!1110034 () Bool)

(declare-fun d!1503166 () Bool)

(assert (= bs!1110034 (and d!1503166 d!1503008)))

(declare-fun lambda!215424 () Int)

(declare-fun lt!1886943 () ListMap!5277)

(assert (=> bs!1110034 (= (= lt!1886943 lt!1886726) (= lambda!215424 lambda!215378))))

(declare-fun bs!1110035 () Bool)

(assert (= bs!1110035 (and d!1503166 b!4721535)))

(assert (=> bs!1110035 (= (= lt!1886943 lt!1886751) (= lambda!215424 lambda!215381))))

(declare-fun bs!1110036 () Bool)

(assert (= bs!1110036 (and d!1503166 b!4721536)))

(assert (=> bs!1110036 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215379))))

(declare-fun bs!1110037 () Bool)

(assert (= bs!1110037 (and d!1503166 b!4721633)))

(assert (=> bs!1110037 (= (= lt!1886943 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215424 lambda!215403))))

(declare-fun bs!1110038 () Bool)

(assert (= bs!1110038 (and d!1503166 d!1503084)))

(assert (=> bs!1110038 (= (= lt!1886943 lt!1886730) (= lambda!215424 lambda!215411))))

(declare-fun bs!1110039 () Bool)

(assert (= bs!1110039 (and d!1503166 b!4721748)))

(assert (=> bs!1110039 (= (= lt!1886943 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215424 lambda!215421))))

(declare-fun bs!1110040 () Bool)

(assert (= bs!1110040 (and d!1503166 d!1502956)))

(assert (=> bs!1110040 (= (= lt!1886943 lt!1886602) (= lambda!215424 lambda!215346))))

(declare-fun bs!1110041 () Bool)

(assert (= bs!1110041 (and d!1503166 b!4721695)))

(assert (=> bs!1110041 (= (= lt!1886943 lt!1886897) (= lambda!215424 lambda!215414))))

(assert (=> bs!1110035 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215380))))

(assert (=> bs!1110041 (= (= lt!1886943 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215424 lambda!215413))))

(declare-fun bs!1110042 () Bool)

(assert (= bs!1110042 (and d!1503166 b!4721545)))

(assert (=> bs!1110042 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215386))))

(declare-fun bs!1110043 () Bool)

(assert (= bs!1110043 (and d!1503166 d!1503020)))

(assert (=> bs!1110043 (not (= lambda!215424 lambda!215385))))

(declare-fun bs!1110044 () Bool)

(assert (= bs!1110044 (and d!1503166 b!4721696)))

(assert (=> bs!1110044 (= (= lt!1886943 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215424 lambda!215412))))

(declare-fun bs!1110045 () Bool)

(assert (= bs!1110045 (and d!1503166 b!4721632)))

(assert (=> bs!1110045 (= (= lt!1886943 lt!1886847) (= lambda!215424 lambda!215405))))

(declare-fun bs!1110046 () Bool)

(assert (= bs!1110046 (and d!1503166 d!1503162)))

(assert (=> bs!1110046 (= (= lt!1886943 lt!1886627) (= lambda!215424 lambda!215420))))

(declare-fun bs!1110047 () Bool)

(assert (= bs!1110047 (and d!1503166 b!4721430)))

(assert (=> bs!1110047 (= (= lt!1886943 lt!1886627) (= lambda!215424 lambda!215349))))

(declare-fun bs!1110048 () Bool)

(assert (= bs!1110048 (and d!1503166 b!4721530)))

(assert (=> bs!1110048 (= (= lt!1886943 lt!1886730) (= lambda!215424 lambda!215376))))

(declare-fun bs!1110049 () Bool)

(assert (= bs!1110049 (and d!1503166 b!4721423)))

(assert (=> bs!1110049 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215344))))

(assert (=> bs!1110047 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215348))))

(declare-fun bs!1110050 () Bool)

(assert (= bs!1110050 (and d!1503166 b!4721747)))

(assert (=> bs!1110050 (= (= lt!1886943 lt!1886947) (= lambda!215424 lambda!215423))))

(assert (=> bs!1110050 (= (= lt!1886943 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215424 lambda!215422))))

(assert (=> bs!1110045 (= (= lt!1886943 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215424 lambda!215404))))

(declare-fun bs!1110051 () Bool)

(assert (= bs!1110051 (and d!1503166 d!1503132)))

(assert (=> bs!1110051 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215419))))

(declare-fun bs!1110052 () Bool)

(assert (= bs!1110052 (and d!1503166 d!1503126)))

(assert (=> bs!1110052 (= (= lt!1886943 lt!1886893) (= lambda!215424 lambda!215415))))

(declare-fun bs!1110053 () Bool)

(assert (= bs!1110053 (and d!1503166 b!4721424)))

(assert (=> bs!1110053 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215343))))

(declare-fun bs!1110054 () Bool)

(assert (= bs!1110054 (and d!1503166 b!4721544)))

(assert (=> bs!1110054 (= (= lt!1886943 lt!1886775) (= lambda!215424 lambda!215388))))

(declare-fun bs!1110055 () Bool)

(assert (= bs!1110055 (and d!1503166 d!1503024)))

(assert (=> bs!1110055 (= (= lt!1886943 lt!1886771) (= lambda!215424 lambda!215389))))

(assert (=> bs!1110049 (= (= lt!1886943 lt!1886606) (= lambda!215424 lambda!215345))))

(assert (=> bs!1110048 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215375))))

(declare-fun bs!1110056 () Bool)

(assert (= bs!1110056 (and d!1503166 b!4721531)))

(assert (=> bs!1110056 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215373))))

(declare-fun bs!1110057 () Bool)

(assert (= bs!1110057 (and d!1503166 b!4721431)))

(assert (=> bs!1110057 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215347))))

(declare-fun bs!1110058 () Bool)

(assert (= bs!1110058 (and d!1503166 d!1502964)))

(assert (=> bs!1110058 (= (= lt!1886943 lt!1886623) (= lambda!215424 lambda!215352))))

(assert (=> bs!1110054 (= (= lt!1886943 lt!1886424) (= lambda!215424 lambda!215387))))

(declare-fun bs!1110059 () Bool)

(assert (= bs!1110059 (and d!1503166 d!1503014)))

(assert (=> bs!1110059 (= (= lt!1886943 lt!1886747) (= lambda!215424 lambda!215382))))

(declare-fun bs!1110060 () Bool)

(assert (= bs!1110060 (and d!1503166 d!1503040)))

(assert (=> bs!1110060 (not (= lambda!215424 lambda!215399))))

(declare-fun bs!1110061 () Bool)

(assert (= bs!1110061 (and d!1503166 d!1503082)))

(assert (=> bs!1110061 (= (= lt!1886943 lt!1886843) (= lambda!215424 lambda!215406))))

(assert (=> d!1503166 true))

(declare-fun bm!330201 () Bool)

(declare-fun call!330207 () Unit!129750)

(assert (=> bm!330201 (= call!330207 (lemmaContainsAllItsOwnKeys!795 (+!2267 lt!1886424 (h!59169 oldBucket!34))))))

(declare-fun e!2944748 () ListMap!5277)

(assert (=> b!4721747 (= e!2944748 lt!1886947)))

(declare-fun lt!1886946 () ListMap!5277)

(assert (=> b!4721747 (= lt!1886946 (+!2267 (+!2267 lt!1886424 (h!59169 oldBucket!34)) (h!59169 (t!360210 oldBucket!34))))))

(assert (=> b!4721747 (= lt!1886947 (addToMapMapFromBucket!1442 (t!360210 (t!360210 oldBucket!34)) (+!2267 (+!2267 lt!1886424 (h!59169 oldBucket!34)) (h!59169 (t!360210 oldBucket!34)))))))

(declare-fun lt!1886953 () Unit!129750)

(assert (=> b!4721747 (= lt!1886953 call!330207)))

(declare-fun call!330206 () Bool)

(assert (=> b!4721747 call!330206))

(declare-fun lt!1886950 () Unit!129750)

(assert (=> b!4721747 (= lt!1886950 lt!1886953)))

(declare-fun call!330208 () Bool)

(assert (=> b!4721747 call!330208))

(declare-fun lt!1886951 () Unit!129750)

(declare-fun Unit!129913 () Unit!129750)

(assert (=> b!4721747 (= lt!1886951 Unit!129913)))

(assert (=> b!4721747 (forall!11584 (t!360210 (t!360210 oldBucket!34)) lambda!215423)))

(declare-fun lt!1886958 () Unit!129750)

(declare-fun Unit!129914 () Unit!129750)

(assert (=> b!4721747 (= lt!1886958 Unit!129914)))

(declare-fun lt!1886942 () Unit!129750)

(declare-fun Unit!129915 () Unit!129750)

(assert (=> b!4721747 (= lt!1886942 Unit!129915)))

(declare-fun lt!1886945 () Unit!129750)

(assert (=> b!4721747 (= lt!1886945 (forallContained!3635 (toList!5913 lt!1886946) lambda!215423 (h!59169 (t!360210 oldBucket!34))))))

(assert (=> b!4721747 (contains!16168 lt!1886946 (_1!30515 (h!59169 (t!360210 oldBucket!34))))))

(declare-fun lt!1886941 () Unit!129750)

(declare-fun Unit!129916 () Unit!129750)

(assert (=> b!4721747 (= lt!1886941 Unit!129916)))

(assert (=> b!4721747 (contains!16168 lt!1886947 (_1!30515 (h!59169 (t!360210 oldBucket!34))))))

(declare-fun lt!1886948 () Unit!129750)

(declare-fun Unit!129917 () Unit!129750)

(assert (=> b!4721747 (= lt!1886948 Unit!129917)))

(assert (=> b!4721747 (forall!11584 (t!360210 oldBucket!34) lambda!215423)))

(declare-fun lt!1886960 () Unit!129750)

(declare-fun Unit!129918 () Unit!129750)

(assert (=> b!4721747 (= lt!1886960 Unit!129918)))

(assert (=> b!4721747 (forall!11584 (toList!5913 lt!1886946) lambda!215423)))

(declare-fun lt!1886959 () Unit!129750)

(declare-fun Unit!129919 () Unit!129750)

(assert (=> b!4721747 (= lt!1886959 Unit!129919)))

(declare-fun lt!1886944 () Unit!129750)

(declare-fun Unit!129920 () Unit!129750)

(assert (=> b!4721747 (= lt!1886944 Unit!129920)))

(declare-fun lt!1886956 () Unit!129750)

(assert (=> b!4721747 (= lt!1886956 (addForallContainsKeyThenBeforeAdding!794 (+!2267 lt!1886424 (h!59169 oldBucket!34)) lt!1886947 (_1!30515 (h!59169 (t!360210 oldBucket!34))) (_2!30515 (h!59169 (t!360210 oldBucket!34)))))))

(assert (=> b!4721747 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 oldBucket!34))) lambda!215423)))

(declare-fun lt!1886952 () Unit!129750)

(assert (=> b!4721747 (= lt!1886952 lt!1886956)))

(assert (=> b!4721747 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 oldBucket!34))) lambda!215423)))

(declare-fun lt!1886955 () Unit!129750)

(declare-fun Unit!129921 () Unit!129750)

(assert (=> b!4721747 (= lt!1886955 Unit!129921)))

(declare-fun res!1997508 () Bool)

(assert (=> b!4721747 (= res!1997508 (forall!11584 (t!360210 oldBucket!34) lambda!215423))))

(declare-fun e!2944749 () Bool)

(assert (=> b!4721747 (=> (not res!1997508) (not e!2944749))))

(assert (=> b!4721747 e!2944749))

(declare-fun lt!1886957 () Unit!129750)

(declare-fun Unit!129922 () Unit!129750)

(assert (=> b!4721747 (= lt!1886957 Unit!129922)))

(declare-fun bm!330202 () Bool)

(declare-fun c!806365 () Bool)

(assert (=> bm!330202 (= call!330208 (forall!11584 (ite c!806365 (toList!5913 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (toList!5913 lt!1886946)) (ite c!806365 lambda!215421 lambda!215423)))))

(assert (=> b!4721748 (= e!2944748 (+!2267 lt!1886424 (h!59169 oldBucket!34)))))

(declare-fun lt!1886961 () Unit!129750)

(assert (=> b!4721748 (= lt!1886961 call!330207)))

(assert (=> b!4721748 call!330208))

(declare-fun lt!1886949 () Unit!129750)

(assert (=> b!4721748 (= lt!1886949 lt!1886961)))

(assert (=> b!4721748 call!330206))

(declare-fun lt!1886954 () Unit!129750)

(declare-fun Unit!129924 () Unit!129750)

(assert (=> b!4721748 (= lt!1886954 Unit!129924)))

(declare-fun b!4721750 () Bool)

(declare-fun res!1997510 () Bool)

(declare-fun e!2944747 () Bool)

(assert (=> b!4721750 (=> (not res!1997510) (not e!2944747))))

(assert (=> b!4721750 (= res!1997510 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 oldBucket!34))) lambda!215424))))

(declare-fun bm!330203 () Bool)

(assert (=> bm!330203 (= call!330206 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (ite c!806365 lambda!215421 lambda!215422)))))

(declare-fun b!4721751 () Bool)

(assert (=> b!4721751 (= e!2944747 (invariantList!1509 (toList!5913 lt!1886943)))))

(declare-fun b!4721749 () Bool)

(assert (=> b!4721749 (= e!2944749 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 oldBucket!34))) lambda!215423))))

(assert (=> d!1503166 e!2944747))

(declare-fun res!1997509 () Bool)

(assert (=> d!1503166 (=> (not res!1997509) (not e!2944747))))

(assert (=> d!1503166 (= res!1997509 (forall!11584 (t!360210 oldBucket!34) lambda!215424))))

(assert (=> d!1503166 (= lt!1886943 e!2944748)))

(assert (=> d!1503166 (= c!806365 ((_ is Nil!52824) (t!360210 oldBucket!34)))))

(assert (=> d!1503166 (noDuplicateKeys!2012 (t!360210 oldBucket!34))))

(assert (=> d!1503166 (= (addToMapMapFromBucket!1442 (t!360210 oldBucket!34) (+!2267 lt!1886424 (h!59169 oldBucket!34))) lt!1886943)))

(assert (= (and d!1503166 c!806365) b!4721748))

(assert (= (and d!1503166 (not c!806365)) b!4721747))

(assert (= (and b!4721747 res!1997508) b!4721749))

(assert (= (or b!4721748 b!4721747) bm!330201))

(assert (= (or b!4721748 b!4721747) bm!330203))

(assert (= (or b!4721748 b!4721747) bm!330202))

(assert (= (and d!1503166 res!1997509) b!4721750))

(assert (= (and b!4721750 res!1997510) b!4721751))

(declare-fun m!5656341 () Bool)

(assert (=> b!4721751 m!5656341))

(declare-fun m!5656343 () Bool)

(assert (=> d!1503166 m!5656343))

(assert (=> d!1503166 m!5655439))

(declare-fun m!5656345 () Bool)

(assert (=> b!4721750 m!5656345))

(assert (=> bm!330201 m!5655611))

(declare-fun m!5656347 () Bool)

(assert (=> bm!330201 m!5656347))

(declare-fun m!5656349 () Bool)

(assert (=> b!4721747 m!5656349))

(declare-fun m!5656351 () Bool)

(assert (=> b!4721747 m!5656351))

(declare-fun m!5656353 () Bool)

(assert (=> b!4721747 m!5656353))

(assert (=> b!4721747 m!5655611))

(declare-fun m!5656355 () Bool)

(assert (=> b!4721747 m!5656355))

(assert (=> b!4721747 m!5656353))

(declare-fun m!5656357 () Bool)

(assert (=> b!4721747 m!5656357))

(declare-fun m!5656359 () Bool)

(assert (=> b!4721747 m!5656359))

(declare-fun m!5656361 () Bool)

(assert (=> b!4721747 m!5656361))

(declare-fun m!5656363 () Bool)

(assert (=> b!4721747 m!5656363))

(assert (=> b!4721747 m!5656363))

(assert (=> b!4721747 m!5655611))

(declare-fun m!5656365 () Bool)

(assert (=> b!4721747 m!5656365))

(assert (=> b!4721747 m!5656355))

(declare-fun m!5656367 () Bool)

(assert (=> b!4721747 m!5656367))

(declare-fun m!5656369 () Bool)

(assert (=> bm!330203 m!5656369))

(declare-fun m!5656371 () Bool)

(assert (=> bm!330202 m!5656371))

(assert (=> b!4721749 m!5656363))

(assert (=> b!4721430 d!1503166))

(declare-fun d!1503168 () Bool)

(declare-fun res!1997511 () Bool)

(declare-fun e!2944750 () Bool)

(assert (=> d!1503168 (=> res!1997511 e!2944750)))

(assert (=> d!1503168 (= res!1997511 ((_ is Nil!52824) (toList!5913 lt!1886626)))))

(assert (=> d!1503168 (= (forall!11584 (toList!5913 lt!1886626) lambda!215349) e!2944750)))

(declare-fun b!4721752 () Bool)

(declare-fun e!2944751 () Bool)

(assert (=> b!4721752 (= e!2944750 e!2944751)))

(declare-fun res!1997512 () Bool)

(assert (=> b!4721752 (=> (not res!1997512) (not e!2944751))))

(assert (=> b!4721752 (= res!1997512 (dynLambda!21817 lambda!215349 (h!59169 (toList!5913 lt!1886626))))))

(declare-fun b!4721753 () Bool)

(assert (=> b!4721753 (= e!2944751 (forall!11584 (t!360210 (toList!5913 lt!1886626)) lambda!215349))))

(assert (= (and d!1503168 (not res!1997511)) b!4721752))

(assert (= (and b!4721752 res!1997512) b!4721753))

(declare-fun b_lambda!178377 () Bool)

(assert (=> (not b_lambda!178377) (not b!4721752)))

(declare-fun m!5656373 () Bool)

(assert (=> b!4721752 m!5656373))

(declare-fun m!5656375 () Bool)

(assert (=> b!4721753 m!5656375))

(assert (=> b!4721430 d!1503168))

(declare-fun d!1503170 () Bool)

(declare-fun res!1997513 () Bool)

(declare-fun e!2944752 () Bool)

(assert (=> d!1503170 (=> res!1997513 e!2944752)))

(assert (=> d!1503170 (= res!1997513 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503170 (= (forall!11584 (toList!5913 lt!1886424) lambda!215382) e!2944752)))

(declare-fun b!4721754 () Bool)

(declare-fun e!2944753 () Bool)

(assert (=> b!4721754 (= e!2944752 e!2944753)))

(declare-fun res!1997514 () Bool)

(assert (=> b!4721754 (=> (not res!1997514) (not e!2944753))))

(assert (=> b!4721754 (= res!1997514 (dynLambda!21817 lambda!215382 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721755 () Bool)

(assert (=> b!4721755 (= e!2944753 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215382))))

(assert (= (and d!1503170 (not res!1997513)) b!4721754))

(assert (= (and b!4721754 res!1997514) b!4721755))

(declare-fun b_lambda!178379 () Bool)

(assert (=> (not b_lambda!178379) (not b!4721754)))

(declare-fun m!5656377 () Bool)

(assert (=> b!4721754 m!5656377))

(declare-fun m!5656379 () Bool)

(assert (=> b!4721755 m!5656379))

(assert (=> b!4721538 d!1503170))

(declare-fun d!1503172 () Bool)

(assert (=> d!1503172 (= (invariantList!1509 (toList!5913 lt!1886747)) (noDuplicatedKeys!372 (toList!5913 lt!1886747)))))

(declare-fun bs!1110062 () Bool)

(assert (= bs!1110062 d!1503172))

(declare-fun m!5656381 () Bool)

(assert (=> bs!1110062 m!5656381))

(assert (=> b!4721539 d!1503172))

(declare-fun d!1503174 () Bool)

(declare-fun res!1997515 () Bool)

(declare-fun e!2944754 () Bool)

(assert (=> d!1503174 (=> res!1997515 e!2944754)))

(assert (=> d!1503174 (= res!1997515 (and ((_ is Cons!52824) (t!360210 newBucket!218)) (= (_1!30515 (h!59169 (t!360210 newBucket!218))) (_1!30515 (h!59169 newBucket!218)))))))

(assert (=> d!1503174 (= (containsKey!3365 (t!360210 newBucket!218) (_1!30515 (h!59169 newBucket!218))) e!2944754)))

(declare-fun b!4721756 () Bool)

(declare-fun e!2944755 () Bool)

(assert (=> b!4721756 (= e!2944754 e!2944755)))

(declare-fun res!1997516 () Bool)

(assert (=> b!4721756 (=> (not res!1997516) (not e!2944755))))

(assert (=> b!4721756 (= res!1997516 ((_ is Cons!52824) (t!360210 newBucket!218)))))

(declare-fun b!4721757 () Bool)

(assert (=> b!4721757 (= e!2944755 (containsKey!3365 (t!360210 (t!360210 newBucket!218)) (_1!30515 (h!59169 newBucket!218))))))

(assert (= (and d!1503174 (not res!1997515)) b!4721756))

(assert (= (and b!4721756 res!1997516) b!4721757))

(declare-fun m!5656383 () Bool)

(assert (=> b!4721757 m!5656383))

(assert (=> b!4721336 d!1503174))

(declare-fun d!1503176 () Bool)

(declare-fun e!2944760 () Bool)

(assert (=> d!1503176 e!2944760))

(declare-fun res!1997518 () Bool)

(assert (=> d!1503176 (=> res!1997518 e!2944760)))

(declare-fun e!2944756 () Bool)

(assert (=> d!1503176 (= res!1997518 e!2944756)))

(declare-fun res!1997519 () Bool)

(assert (=> d!1503176 (=> (not res!1997519) (not e!2944756))))

(declare-fun lt!1886963 () Bool)

(assert (=> d!1503176 (= res!1997519 (not lt!1886963))))

(declare-fun lt!1886966 () Bool)

(assert (=> d!1503176 (= lt!1886963 lt!1886966)))

(declare-fun lt!1886962 () Unit!129750)

(declare-fun e!2944761 () Unit!129750)

(assert (=> d!1503176 (= lt!1886962 e!2944761)))

(declare-fun c!806367 () Bool)

(assert (=> d!1503176 (= c!806367 lt!1886966)))

(assert (=> d!1503176 (= lt!1886966 (containsKey!3367 (toList!5913 lt!1886446) (_1!30515 lt!1886429)))))

(assert (=> d!1503176 (= (contains!16168 lt!1886446 (_1!30515 lt!1886429)) lt!1886963)))

(declare-fun b!4721758 () Bool)

(declare-fun e!2944758 () List!52951)

(assert (=> b!4721758 (= e!2944758 (keys!18970 lt!1886446))))

(declare-fun b!4721759 () Bool)

(declare-fun lt!1886968 () Unit!129750)

(assert (=> b!4721759 (= e!2944761 lt!1886968)))

(declare-fun lt!1886969 () Unit!129750)

(assert (=> b!4721759 (= lt!1886969 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886446) (_1!30515 lt!1886429)))))

(assert (=> b!4721759 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886446) (_1!30515 lt!1886429)))))

(declare-fun lt!1886967 () Unit!129750)

(assert (=> b!4721759 (= lt!1886967 lt!1886969)))

(assert (=> b!4721759 (= lt!1886968 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886446) (_1!30515 lt!1886429)))))

(declare-fun call!330209 () Bool)

(assert (=> b!4721759 call!330209))

(declare-fun b!4721760 () Bool)

(declare-fun e!2944759 () Unit!129750)

(assert (=> b!4721760 (= e!2944761 e!2944759)))

(declare-fun c!806366 () Bool)

(assert (=> b!4721760 (= c!806366 call!330209)))

(declare-fun b!4721761 () Bool)

(declare-fun e!2944757 () Bool)

(assert (=> b!4721761 (= e!2944760 e!2944757)))

(declare-fun res!1997517 () Bool)

(assert (=> b!4721761 (=> (not res!1997517) (not e!2944757))))

(assert (=> b!4721761 (= res!1997517 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886446) (_1!30515 lt!1886429))))))

(declare-fun b!4721762 () Bool)

(assert (=> b!4721762 (= e!2944758 (getKeysList!949 (toList!5913 lt!1886446)))))

(declare-fun b!4721763 () Bool)

(declare-fun Unit!129935 () Unit!129750)

(assert (=> b!4721763 (= e!2944759 Unit!129935)))

(declare-fun b!4721764 () Bool)

(assert (=> b!4721764 (= e!2944756 (not (contains!16171 (keys!18970 lt!1886446) (_1!30515 lt!1886429))))))

(declare-fun b!4721765 () Bool)

(assert (=> b!4721765 false))

(declare-fun lt!1886965 () Unit!129750)

(declare-fun lt!1886964 () Unit!129750)

(assert (=> b!4721765 (= lt!1886965 lt!1886964)))

(assert (=> b!4721765 (containsKey!3367 (toList!5913 lt!1886446) (_1!30515 lt!1886429))))

(assert (=> b!4721765 (= lt!1886964 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886446) (_1!30515 lt!1886429)))))

(declare-fun Unit!129936 () Unit!129750)

(assert (=> b!4721765 (= e!2944759 Unit!129936)))

(declare-fun b!4721766 () Bool)

(assert (=> b!4721766 (= e!2944757 (contains!16171 (keys!18970 lt!1886446) (_1!30515 lt!1886429)))))

(declare-fun bm!330204 () Bool)

(assert (=> bm!330204 (= call!330209 (contains!16171 e!2944758 (_1!30515 lt!1886429)))))

(declare-fun c!806368 () Bool)

(assert (=> bm!330204 (= c!806368 c!806367)))

(assert (= (and d!1503176 c!806367) b!4721759))

(assert (= (and d!1503176 (not c!806367)) b!4721760))

(assert (= (and b!4721760 c!806366) b!4721765))

(assert (= (and b!4721760 (not c!806366)) b!4721763))

(assert (= (or b!4721759 b!4721760) bm!330204))

(assert (= (and bm!330204 c!806368) b!4721762))

(assert (= (and bm!330204 (not c!806368)) b!4721758))

(assert (= (and d!1503176 res!1997519) b!4721764))

(assert (= (and d!1503176 (not res!1997518)) b!4721761))

(assert (= (and b!4721761 res!1997517) b!4721766))

(declare-fun m!5656385 () Bool)

(assert (=> bm!330204 m!5656385))

(assert (=> b!4721761 m!5655467))

(assert (=> b!4721761 m!5655467))

(declare-fun m!5656387 () Bool)

(assert (=> b!4721761 m!5656387))

(declare-fun m!5656389 () Bool)

(assert (=> d!1503176 m!5656389))

(declare-fun m!5656391 () Bool)

(assert (=> b!4721758 m!5656391))

(declare-fun m!5656393 () Bool)

(assert (=> b!4721759 m!5656393))

(assert (=> b!4721759 m!5655467))

(assert (=> b!4721759 m!5655467))

(assert (=> b!4721759 m!5656387))

(declare-fun m!5656395 () Bool)

(assert (=> b!4721759 m!5656395))

(assert (=> b!4721766 m!5656391))

(assert (=> b!4721766 m!5656391))

(declare-fun m!5656397 () Bool)

(assert (=> b!4721766 m!5656397))

(assert (=> b!4721764 m!5656391))

(assert (=> b!4721764 m!5656391))

(assert (=> b!4721764 m!5656397))

(declare-fun m!5656399 () Bool)

(assert (=> b!4721762 m!5656399))

(assert (=> b!4721765 m!5656389))

(declare-fun m!5656401 () Bool)

(assert (=> b!4721765 m!5656401))

(assert (=> d!1502952 d!1503176))

(declare-fun b!4721769 () Bool)

(declare-fun e!2944763 () Option!12356)

(assert (=> b!4721769 (= e!2944763 (getValueByKey!1952 (t!360210 lt!1886448) (_1!30515 lt!1886429)))))

(declare-fun b!4721767 () Bool)

(declare-fun e!2944762 () Option!12356)

(assert (=> b!4721767 (= e!2944762 (Some!12355 (_2!30515 (h!59169 lt!1886448))))))

(declare-fun b!4721768 () Bool)

(assert (=> b!4721768 (= e!2944762 e!2944763)))

(declare-fun c!806370 () Bool)

(assert (=> b!4721768 (= c!806370 (and ((_ is Cons!52824) lt!1886448) (not (= (_1!30515 (h!59169 lt!1886448)) (_1!30515 lt!1886429)))))))

(declare-fun d!1503178 () Bool)

(declare-fun c!806369 () Bool)

(assert (=> d!1503178 (= c!806369 (and ((_ is Cons!52824) lt!1886448) (= (_1!30515 (h!59169 lt!1886448)) (_1!30515 lt!1886429))))))

(assert (=> d!1503178 (= (getValueByKey!1952 lt!1886448 (_1!30515 lt!1886429)) e!2944762)))

(declare-fun b!4721770 () Bool)

(assert (=> b!4721770 (= e!2944763 None!12355)))

(assert (= (and d!1503178 c!806369) b!4721767))

(assert (= (and d!1503178 (not c!806369)) b!4721768))

(assert (= (and b!4721768 c!806370) b!4721769))

(assert (= (and b!4721768 (not c!806370)) b!4721770))

(declare-fun m!5656403 () Bool)

(assert (=> b!4721769 m!5656403))

(assert (=> d!1502952 d!1503178))

(declare-fun d!1503180 () Bool)

(assert (=> d!1503180 (= (getValueByKey!1952 lt!1886448 (_1!30515 lt!1886429)) (Some!12355 (_2!30515 lt!1886429)))))

(declare-fun lt!1886972 () Unit!129750)

(declare-fun choose!33314 (List!52948 K!14180 V!14426) Unit!129750)

(assert (=> d!1503180 (= lt!1886972 (choose!33314 lt!1886448 (_1!30515 lt!1886429) (_2!30515 lt!1886429)))))

(declare-fun e!2944766 () Bool)

(assert (=> d!1503180 e!2944766))

(declare-fun res!1997524 () Bool)

(assert (=> d!1503180 (=> (not res!1997524) (not e!2944766))))

(assert (=> d!1503180 (= res!1997524 (invariantList!1509 lt!1886448))))

(assert (=> d!1503180 (= (lemmaContainsTupThenGetReturnValue!1083 lt!1886448 (_1!30515 lt!1886429) (_2!30515 lt!1886429)) lt!1886972)))

(declare-fun b!4721775 () Bool)

(declare-fun res!1997525 () Bool)

(assert (=> b!4721775 (=> (not res!1997525) (not e!2944766))))

(assert (=> b!4721775 (= res!1997525 (containsKey!3367 lt!1886448 (_1!30515 lt!1886429)))))

(declare-fun b!4721776 () Bool)

(assert (=> b!4721776 (= e!2944766 (contains!16169 lt!1886448 (tuple2!54443 (_1!30515 lt!1886429) (_2!30515 lt!1886429))))))

(assert (= (and d!1503180 res!1997524) b!4721775))

(assert (= (and b!4721775 res!1997525) b!4721776))

(assert (=> d!1503180 m!5655461))

(declare-fun m!5656405 () Bool)

(assert (=> d!1503180 m!5656405))

(declare-fun m!5656407 () Bool)

(assert (=> d!1503180 m!5656407))

(declare-fun m!5656409 () Bool)

(assert (=> b!4721775 m!5656409))

(declare-fun m!5656411 () Bool)

(assert (=> b!4721776 m!5656411))

(assert (=> d!1502952 d!1503180))

(declare-fun b!4721809 () Bool)

(declare-fun e!2944787 () List!52948)

(declare-fun call!330219 () List!52948)

(assert (=> b!4721809 (= e!2944787 call!330219)))

(declare-fun b!4721810 () Bool)

(declare-fun e!2944786 () List!52948)

(declare-fun call!330220 () List!52948)

(assert (=> b!4721810 (= e!2944786 call!330220)))

(declare-fun b!4721811 () Bool)

(assert (=> b!4721811 false))

(declare-fun lt!1887001 () Unit!129750)

(declare-fun lt!1887003 () Unit!129750)

(assert (=> b!4721811 (= lt!1887001 lt!1887003)))

(assert (=> b!4721811 (containsKey!3367 (t!360210 (toList!5913 lt!1886431)) (_1!30515 (h!59169 (toList!5913 lt!1886431))))))

(assert (=> b!4721811 (= lt!1887003 (lemmaInGetKeysListThenContainsKey!948 (t!360210 (toList!5913 lt!1886431)) (_1!30515 (h!59169 (toList!5913 lt!1886431)))))))

(declare-fun lt!1886997 () Unit!129750)

(declare-fun lt!1887004 () Unit!129750)

(assert (=> b!4721811 (= lt!1886997 lt!1887004)))

(declare-fun call!330218 () List!52951)

(assert (=> b!4721811 (contains!16171 call!330218 (_1!30515 (h!59169 (toList!5913 lt!1886431))))))

(declare-fun lt!1886995 () List!52948)

(assert (=> b!4721811 (= lt!1887004 (lemmaInListThenGetKeysListContains!944 lt!1886995 (_1!30515 (h!59169 (toList!5913 lt!1886431)))))))

(assert (=> b!4721811 (= lt!1886995 (insertNoDuplicatedKeys!591 (t!360210 (toList!5913 lt!1886431)) (_1!30515 lt!1886429) (_2!30515 lt!1886429)))))

(declare-fun e!2944785 () Unit!129750)

(declare-fun Unit!129937 () Unit!129750)

(assert (=> b!4721811 (= e!2944785 Unit!129937)))

(declare-fun b!4721812 () Bool)

(declare-fun c!806384 () Bool)

(assert (=> b!4721812 (= c!806384 ((_ is Cons!52824) (toList!5913 lt!1886431)))))

(assert (=> b!4721812 (= e!2944786 e!2944787)))

(declare-fun b!4721813 () Bool)

(declare-fun res!1997541 () Bool)

(declare-fun e!2944789 () Bool)

(assert (=> b!4721813 (=> (not res!1997541) (not e!2944789))))

(declare-fun lt!1886998 () List!52948)

(assert (=> b!4721813 (= res!1997541 (contains!16169 lt!1886998 (tuple2!54443 (_1!30515 lt!1886429) (_2!30515 lt!1886429))))))

(declare-fun d!1503182 () Bool)

(assert (=> d!1503182 e!2944789))

(declare-fun res!1997539 () Bool)

(assert (=> d!1503182 (=> (not res!1997539) (not e!2944789))))

(assert (=> d!1503182 (= res!1997539 (invariantList!1509 lt!1886998))))

(declare-fun e!2944790 () List!52948)

(assert (=> d!1503182 (= lt!1886998 e!2944790)))

(declare-fun c!806385 () Bool)

(assert (=> d!1503182 (= c!806385 (and ((_ is Cons!52824) (toList!5913 lt!1886431)) (= (_1!30515 (h!59169 (toList!5913 lt!1886431))) (_1!30515 lt!1886429))))))

(assert (=> d!1503182 (invariantList!1509 (toList!5913 lt!1886431))))

(assert (=> d!1503182 (= (insertNoDuplicatedKeys!591 (toList!5913 lt!1886431) (_1!30515 lt!1886429) (_2!30515 lt!1886429)) lt!1886998)))

(declare-fun b!4721814 () Bool)

(declare-fun Unit!129939 () Unit!129750)

(assert (=> b!4721814 (= e!2944785 Unit!129939)))

(declare-fun b!4721815 () Bool)

(assert (=> b!4721815 (= e!2944790 e!2944786)))

(declare-fun res!1997540 () Bool)

(assert (=> b!4721815 (= res!1997540 ((_ is Cons!52824) (toList!5913 lt!1886431)))))

(declare-fun e!2944791 () Bool)

(assert (=> b!4721815 (=> (not res!1997540) (not e!2944791))))

(declare-fun c!806382 () Bool)

(assert (=> b!4721815 (= c!806382 e!2944791)))

(declare-fun bm!330213 () Bool)

(assert (=> bm!330213 (= call!330219 call!330220)))

(declare-fun c!806383 () Bool)

(assert (=> bm!330213 (= c!806383 c!806384)))

(declare-fun b!4721816 () Bool)

(assert (=> b!4721816 (= e!2944789 (= (content!9392 (getKeysList!949 lt!1886998)) ((_ map or) (content!9392 (getKeysList!949 (toList!5913 lt!1886431))) (store ((as const (Array K!14180 Bool)) false) (_1!30515 lt!1886429) true))))))

(declare-fun b!4721817 () Bool)

(declare-fun call!330221 () List!52948)

(assert (=> b!4721817 (= e!2944790 call!330221)))

(declare-fun lt!1887005 () List!52951)

(assert (=> b!4721817 (= lt!1887005 call!330218)))

(declare-fun lt!1887000 () Unit!129750)

(declare-fun lemmaSubseqRefl!140 (List!52951) Unit!129750)

(assert (=> b!4721817 (= lt!1887000 (lemmaSubseqRefl!140 lt!1887005))))

(declare-fun subseq!656 (List!52951 List!52951) Bool)

(assert (=> b!4721817 (subseq!656 lt!1887005 lt!1887005)))

(declare-fun lt!1887002 () Unit!129750)

(assert (=> b!4721817 (= lt!1887002 lt!1887000)))

(declare-fun e!2944788 () List!52948)

(declare-fun bm!330214 () Bool)

(declare-fun $colon$colon!1075 (List!52948 tuple2!54442) List!52948)

(assert (=> bm!330214 (= call!330221 ($colon$colon!1075 (ite c!806385 (t!360210 (toList!5913 lt!1886431)) (ite c!806382 (toList!5913 lt!1886431) e!2944788)) (ite (or c!806385 c!806382) (tuple2!54443 (_1!30515 lt!1886429) (_2!30515 lt!1886429)) (ite c!806384 (h!59169 (toList!5913 lt!1886431)) (tuple2!54443 (_1!30515 lt!1886429) (_2!30515 lt!1886429))))))))

(declare-fun bm!330215 () Bool)

(assert (=> bm!330215 (= call!330218 (getKeysList!949 (ite c!806385 (toList!5913 lt!1886431) lt!1886995)))))

(declare-fun b!4721818 () Bool)

(declare-fun res!1997538 () Bool)

(assert (=> b!4721818 (=> (not res!1997538) (not e!2944789))))

(assert (=> b!4721818 (= res!1997538 (containsKey!3367 lt!1886998 (_1!30515 lt!1886429)))))

(declare-fun b!4721819 () Bool)

(assert (=> b!4721819 (= e!2944788 (insertNoDuplicatedKeys!591 (t!360210 (toList!5913 lt!1886431)) (_1!30515 lt!1886429) (_2!30515 lt!1886429)))))

(declare-fun b!4721820 () Bool)

(assert (=> b!4721820 (= e!2944791 (not (containsKey!3367 (toList!5913 lt!1886431) (_1!30515 lt!1886429))))))

(declare-fun bm!330216 () Bool)

(assert (=> bm!330216 (= call!330220 call!330221)))

(declare-fun b!4721821 () Bool)

(declare-fun lt!1886996 () List!52948)

(assert (=> b!4721821 (= e!2944787 lt!1886996)))

(assert (=> b!4721821 (= lt!1886996 call!330219)))

(declare-fun c!806381 () Bool)

(assert (=> b!4721821 (= c!806381 (containsKey!3367 (insertNoDuplicatedKeys!591 (t!360210 (toList!5913 lt!1886431)) (_1!30515 lt!1886429) (_2!30515 lt!1886429)) (_1!30515 (h!59169 (toList!5913 lt!1886431)))))))

(declare-fun lt!1886999 () Unit!129750)

(assert (=> b!4721821 (= lt!1886999 e!2944785)))

(declare-fun b!4721822 () Bool)

(assert (=> b!4721822 (= e!2944788 Nil!52824)))

(assert (= (and d!1503182 c!806385) b!4721817))

(assert (= (and d!1503182 (not c!806385)) b!4721815))

(assert (= (and b!4721815 res!1997540) b!4721820))

(assert (= (and b!4721815 c!806382) b!4721810))

(assert (= (and b!4721815 (not c!806382)) b!4721812))

(assert (= (and b!4721812 c!806384) b!4721821))

(assert (= (and b!4721812 (not c!806384)) b!4721809))

(assert (= (and b!4721821 c!806381) b!4721811))

(assert (= (and b!4721821 (not c!806381)) b!4721814))

(assert (= (or b!4721821 b!4721809) bm!330213))

(assert (= (and bm!330213 c!806383) b!4721819))

(assert (= (and bm!330213 (not c!806383)) b!4721822))

(assert (= (or b!4721810 bm!330213) bm!330216))

(assert (= (or b!4721817 b!4721811) bm!330215))

(assert (= (or b!4721817 bm!330216) bm!330214))

(assert (= (and d!1503182 res!1997539) b!4721818))

(assert (= (and b!4721818 res!1997538) b!4721813))

(assert (= (and b!4721813 res!1997541) b!4721816))

(declare-fun m!5656413 () Bool)

(assert (=> b!4721821 m!5656413))

(assert (=> b!4721821 m!5656413))

(declare-fun m!5656415 () Bool)

(assert (=> b!4721821 m!5656415))

(assert (=> b!4721819 m!5656413))

(declare-fun m!5656417 () Bool)

(assert (=> b!4721818 m!5656417))

(declare-fun m!5656419 () Bool)

(assert (=> bm!330214 m!5656419))

(declare-fun m!5656421 () Bool)

(assert (=> b!4721820 m!5656421))

(declare-fun m!5656423 () Bool)

(assert (=> d!1503182 m!5656423))

(declare-fun m!5656425 () Bool)

(assert (=> d!1503182 m!5656425))

(declare-fun m!5656427 () Bool)

(assert (=> bm!330215 m!5656427))

(declare-fun m!5656429 () Bool)

(assert (=> b!4721813 m!5656429))

(declare-fun m!5656431 () Bool)

(assert (=> b!4721817 m!5656431))

(declare-fun m!5656433 () Bool)

(assert (=> b!4721817 m!5656433))

(assert (=> b!4721811 m!5656413))

(declare-fun m!5656435 () Bool)

(assert (=> b!4721811 m!5656435))

(declare-fun m!5656437 () Bool)

(assert (=> b!4721811 m!5656437))

(declare-fun m!5656439 () Bool)

(assert (=> b!4721811 m!5656439))

(declare-fun m!5656441 () Bool)

(assert (=> b!4721811 m!5656441))

(declare-fun m!5656443 () Bool)

(assert (=> b!4721816 m!5656443))

(declare-fun m!5656445 () Bool)

(assert (=> b!4721816 m!5656445))

(declare-fun m!5656447 () Bool)

(assert (=> b!4721816 m!5656447))

(declare-fun m!5656449 () Bool)

(assert (=> b!4721816 m!5656449))

(assert (=> b!4721816 m!5656443))

(declare-fun m!5656451 () Bool)

(assert (=> b!4721816 m!5656451))

(assert (=> b!4721816 m!5656445))

(assert (=> d!1502952 d!1503182))

(declare-fun d!1503186 () Bool)

(declare-fun lt!1887008 () Bool)

(assert (=> d!1503186 (= lt!1887008 (select (content!9390 (toList!5913 lt!1886446)) lt!1886429))))

(declare-fun e!2944800 () Bool)

(assert (=> d!1503186 (= lt!1887008 e!2944800)))

(declare-fun res!1997551 () Bool)

(assert (=> d!1503186 (=> (not res!1997551) (not e!2944800))))

(assert (=> d!1503186 (= res!1997551 ((_ is Cons!52824) (toList!5913 lt!1886446)))))

(assert (=> d!1503186 (= (contains!16169 (toList!5913 lt!1886446) lt!1886429) lt!1887008)))

(declare-fun b!4721831 () Bool)

(declare-fun e!2944801 () Bool)

(assert (=> b!4721831 (= e!2944800 e!2944801)))

(declare-fun res!1997550 () Bool)

(assert (=> b!4721831 (=> res!1997550 e!2944801)))

(assert (=> b!4721831 (= res!1997550 (= (h!59169 (toList!5913 lt!1886446)) lt!1886429))))

(declare-fun b!4721832 () Bool)

(assert (=> b!4721832 (= e!2944801 (contains!16169 (t!360210 (toList!5913 lt!1886446)) lt!1886429))))

(assert (= (and d!1503186 res!1997551) b!4721831))

(assert (= (and b!4721831 (not res!1997550)) b!4721832))

(declare-fun m!5656461 () Bool)

(assert (=> d!1503186 m!5656461))

(declare-fun m!5656463 () Bool)

(assert (=> d!1503186 m!5656463))

(declare-fun m!5656465 () Bool)

(assert (=> b!4721832 m!5656465))

(assert (=> b!4721363 d!1503186))

(declare-fun d!1503192 () Bool)

(assert (=> d!1503192 (= (invariantList!1509 (toList!5913 lt!1886623)) (noDuplicatedKeys!372 (toList!5913 lt!1886623)))))

(declare-fun bs!1110063 () Bool)

(assert (= bs!1110063 d!1503192))

(declare-fun m!5656467 () Bool)

(assert (=> bs!1110063 m!5656467))

(assert (=> b!4721434 d!1503192))

(declare-fun d!1503194 () Bool)

(declare-fun res!1997554 () Bool)

(declare-fun e!2944804 () Bool)

(assert (=> d!1503194 (=> res!1997554 e!2944804)))

(assert (=> d!1503194 (= res!1997554 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503194 (= (forall!11584 (toList!5913 lt!1886424) lambda!215388) e!2944804)))

(declare-fun b!4721835 () Bool)

(declare-fun e!2944805 () Bool)

(assert (=> b!4721835 (= e!2944804 e!2944805)))

(declare-fun res!1997555 () Bool)

(assert (=> b!4721835 (=> (not res!1997555) (not e!2944805))))

(assert (=> b!4721835 (= res!1997555 (dynLambda!21817 lambda!215388 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721836 () Bool)

(assert (=> b!4721836 (= e!2944805 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215388))))

(assert (= (and d!1503194 (not res!1997554)) b!4721835))

(assert (= (and b!4721835 res!1997555) b!4721836))

(declare-fun b_lambda!178387 () Bool)

(assert (=> (not b_lambda!178387) (not b!4721835)))

(declare-fun m!5656473 () Bool)

(assert (=> b!4721835 m!5656473))

(declare-fun m!5656475 () Bool)

(assert (=> b!4721836 m!5656475))

(assert (=> b!4721546 d!1503194))

(declare-fun b!4721841 () Bool)

(declare-fun e!2944809 () Option!12356)

(assert (=> b!4721841 (= e!2944809 (getValueByKey!1952 (t!360210 (toList!5913 lt!1886645)) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun b!4721839 () Bool)

(declare-fun e!2944808 () Option!12356)

(assert (=> b!4721839 (= e!2944808 (Some!12355 (_2!30515 (h!59169 (toList!5913 lt!1886645)))))))

(declare-fun b!4721840 () Bool)

(assert (=> b!4721840 (= e!2944808 e!2944809)))

(declare-fun c!806387 () Bool)

(assert (=> b!4721840 (= c!806387 (and ((_ is Cons!52824) (toList!5913 lt!1886645)) (not (= (_1!30515 (h!59169 (toList!5913 lt!1886645))) (_1!30515 (h!59169 oldBucket!34))))))))

(declare-fun d!1503198 () Bool)

(declare-fun c!806386 () Bool)

(assert (=> d!1503198 (= c!806386 (and ((_ is Cons!52824) (toList!5913 lt!1886645)) (= (_1!30515 (h!59169 (toList!5913 lt!1886645))) (_1!30515 (h!59169 oldBucket!34)))))))

(assert (=> d!1503198 (= (getValueByKey!1952 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34))) e!2944808)))

(declare-fun b!4721842 () Bool)

(assert (=> b!4721842 (= e!2944809 None!12355)))

(assert (= (and d!1503198 c!806386) b!4721839))

(assert (= (and d!1503198 (not c!806386)) b!4721840))

(assert (= (and b!4721840 c!806387) b!4721841))

(assert (= (and b!4721840 (not c!806387)) b!4721842))

(declare-fun m!5656477 () Bool)

(assert (=> b!4721841 m!5656477))

(assert (=> b!4721441 d!1503198))

(declare-fun bs!1110064 () Bool)

(declare-fun b!4721844 () Bool)

(assert (= bs!1110064 (and b!4721844 d!1503008)))

(declare-fun lambda!215425 () Int)

(assert (=> bs!1110064 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886726) (= lambda!215425 lambda!215378))))

(declare-fun bs!1110065 () Bool)

(assert (= bs!1110065 (and b!4721844 b!4721535)))

(assert (=> bs!1110065 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886751) (= lambda!215425 lambda!215381))))

(declare-fun bs!1110066 () Bool)

(assert (= bs!1110066 (and b!4721844 b!4721536)))

(assert (=> bs!1110066 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215379))))

(declare-fun bs!1110067 () Bool)

(assert (= bs!1110067 (and b!4721844 b!4721633)))

(assert (=> bs!1110067 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215425 lambda!215403))))

(declare-fun bs!1110068 () Bool)

(assert (= bs!1110068 (and b!4721844 d!1503084)))

(assert (=> bs!1110068 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886730) (= lambda!215425 lambda!215411))))

(declare-fun bs!1110069 () Bool)

(assert (= bs!1110069 (and b!4721844 b!4721748)))

(assert (=> bs!1110069 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215425 lambda!215421))))

(declare-fun bs!1110070 () Bool)

(assert (= bs!1110070 (and b!4721844 d!1502956)))

(assert (=> bs!1110070 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886602) (= lambda!215425 lambda!215346))))

(declare-fun bs!1110071 () Bool)

(assert (= bs!1110071 (and b!4721844 b!4721695)))

(assert (=> bs!1110071 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886897) (= lambda!215425 lambda!215414))))

(assert (=> bs!1110071 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215425 lambda!215413))))

(declare-fun bs!1110072 () Bool)

(assert (= bs!1110072 (and b!4721844 b!4721545)))

(assert (=> bs!1110072 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215386))))

(declare-fun bs!1110073 () Bool)

(assert (= bs!1110073 (and b!4721844 d!1503020)))

(assert (=> bs!1110073 (not (= lambda!215425 lambda!215385))))

(declare-fun bs!1110074 () Bool)

(assert (= bs!1110074 (and b!4721844 b!4721696)))

(assert (=> bs!1110074 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215425 lambda!215412))))

(declare-fun bs!1110075 () Bool)

(assert (= bs!1110075 (and b!4721844 b!4721632)))

(assert (=> bs!1110075 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886847) (= lambda!215425 lambda!215405))))

(declare-fun bs!1110076 () Bool)

(assert (= bs!1110076 (and b!4721844 d!1503162)))

(assert (=> bs!1110076 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886627) (= lambda!215425 lambda!215420))))

(declare-fun bs!1110077 () Bool)

(assert (= bs!1110077 (and b!4721844 b!4721430)))

(assert (=> bs!1110077 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886627) (= lambda!215425 lambda!215349))))

(declare-fun bs!1110078 () Bool)

(assert (= bs!1110078 (and b!4721844 b!4721530)))

(assert (=> bs!1110078 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886730) (= lambda!215425 lambda!215376))))

(declare-fun bs!1110079 () Bool)

(assert (= bs!1110079 (and b!4721844 b!4721423)))

(assert (=> bs!1110079 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215344))))

(assert (=> bs!1110077 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215348))))

(declare-fun bs!1110080 () Bool)

(assert (= bs!1110080 (and b!4721844 b!4721747)))

(assert (=> bs!1110080 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886947) (= lambda!215425 lambda!215423))))

(assert (=> bs!1110080 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215425 lambda!215422))))

(assert (=> bs!1110065 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215380))))

(declare-fun bs!1110081 () Bool)

(assert (= bs!1110081 (and b!4721844 d!1503166)))

(assert (=> bs!1110081 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886943) (= lambda!215425 lambda!215424))))

(assert (=> bs!1110075 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215425 lambda!215404))))

(declare-fun bs!1110082 () Bool)

(assert (= bs!1110082 (and b!4721844 d!1503132)))

(assert (=> bs!1110082 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215419))))

(declare-fun bs!1110083 () Bool)

(assert (= bs!1110083 (and b!4721844 d!1503126)))

(assert (=> bs!1110083 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886893) (= lambda!215425 lambda!215415))))

(declare-fun bs!1110084 () Bool)

(assert (= bs!1110084 (and b!4721844 b!4721424)))

(assert (=> bs!1110084 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215343))))

(declare-fun bs!1110085 () Bool)

(assert (= bs!1110085 (and b!4721844 b!4721544)))

(assert (=> bs!1110085 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886775) (= lambda!215425 lambda!215388))))

(declare-fun bs!1110086 () Bool)

(assert (= bs!1110086 (and b!4721844 d!1503024)))

(assert (=> bs!1110086 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886771) (= lambda!215425 lambda!215389))))

(assert (=> bs!1110079 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886606) (= lambda!215425 lambda!215345))))

(assert (=> bs!1110078 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215375))))

(declare-fun bs!1110087 () Bool)

(assert (= bs!1110087 (and b!4721844 b!4721531)))

(assert (=> bs!1110087 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215373))))

(declare-fun bs!1110088 () Bool)

(assert (= bs!1110088 (and b!4721844 b!4721431)))

(assert (=> bs!1110088 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215347))))

(declare-fun bs!1110089 () Bool)

(assert (= bs!1110089 (and b!4721844 d!1502964)))

(assert (=> bs!1110089 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886623) (= lambda!215425 lambda!215352))))

(assert (=> bs!1110085 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215425 lambda!215387))))

(declare-fun bs!1110090 () Bool)

(assert (= bs!1110090 (and b!4721844 d!1503014)))

(assert (=> bs!1110090 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886747) (= lambda!215425 lambda!215382))))

(declare-fun bs!1110091 () Bool)

(assert (= bs!1110091 (and b!4721844 d!1503040)))

(assert (=> bs!1110091 (not (= lambda!215425 lambda!215399))))

(declare-fun bs!1110092 () Bool)

(assert (= bs!1110092 (and b!4721844 d!1503082)))

(assert (=> bs!1110092 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886843) (= lambda!215425 lambda!215406))))

(assert (=> b!4721844 true))

(declare-fun bs!1110093 () Bool)

(declare-fun b!4721843 () Bool)

(assert (= bs!1110093 (and b!4721843 d!1503008)))

(declare-fun lambda!215426 () Int)

(assert (=> bs!1110093 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886726) (= lambda!215426 lambda!215378))))

(declare-fun bs!1110094 () Bool)

(assert (= bs!1110094 (and b!4721843 b!4721535)))

(assert (=> bs!1110094 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886751) (= lambda!215426 lambda!215381))))

(declare-fun bs!1110095 () Bool)

(assert (= bs!1110095 (and b!4721843 b!4721536)))

(assert (=> bs!1110095 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215379))))

(declare-fun bs!1110096 () Bool)

(assert (= bs!1110096 (and b!4721843 b!4721633)))

(assert (=> bs!1110096 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215426 lambda!215403))))

(declare-fun bs!1110097 () Bool)

(assert (= bs!1110097 (and b!4721843 d!1503084)))

(assert (=> bs!1110097 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886730) (= lambda!215426 lambda!215411))))

(declare-fun bs!1110098 () Bool)

(assert (= bs!1110098 (and b!4721843 b!4721748)))

(assert (=> bs!1110098 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215426 lambda!215421))))

(declare-fun bs!1110099 () Bool)

(assert (= bs!1110099 (and b!4721843 d!1502956)))

(assert (=> bs!1110099 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886602) (= lambda!215426 lambda!215346))))

(declare-fun bs!1110100 () Bool)

(assert (= bs!1110100 (and b!4721843 b!4721695)))

(assert (=> bs!1110100 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886897) (= lambda!215426 lambda!215414))))

(assert (=> bs!1110100 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215426 lambda!215413))))

(declare-fun bs!1110101 () Bool)

(assert (= bs!1110101 (and b!4721843 b!4721545)))

(assert (=> bs!1110101 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215386))))

(declare-fun bs!1110102 () Bool)

(assert (= bs!1110102 (and b!4721843 d!1503020)))

(assert (=> bs!1110102 (not (= lambda!215426 lambda!215385))))

(declare-fun bs!1110103 () Bool)

(assert (= bs!1110103 (and b!4721843 b!4721696)))

(assert (=> bs!1110103 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215426 lambda!215412))))

(declare-fun bs!1110104 () Bool)

(assert (= bs!1110104 (and b!4721843 b!4721632)))

(assert (=> bs!1110104 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886847) (= lambda!215426 lambda!215405))))

(declare-fun bs!1110105 () Bool)

(assert (= bs!1110105 (and b!4721843 d!1503162)))

(assert (=> bs!1110105 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886627) (= lambda!215426 lambda!215420))))

(declare-fun bs!1110106 () Bool)

(assert (= bs!1110106 (and b!4721843 b!4721430)))

(assert (=> bs!1110106 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886627) (= lambda!215426 lambda!215349))))

(declare-fun bs!1110107 () Bool)

(assert (= bs!1110107 (and b!4721843 b!4721530)))

(assert (=> bs!1110107 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886730) (= lambda!215426 lambda!215376))))

(declare-fun bs!1110108 () Bool)

(assert (= bs!1110108 (and b!4721843 b!4721423)))

(assert (=> bs!1110108 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215344))))

(assert (=> bs!1110106 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215348))))

(declare-fun bs!1110109 () Bool)

(assert (= bs!1110109 (and b!4721843 b!4721747)))

(assert (=> bs!1110109 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886947) (= lambda!215426 lambda!215423))))

(assert (=> bs!1110109 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215426 lambda!215422))))

(assert (=> bs!1110094 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215380))))

(declare-fun bs!1110110 () Bool)

(assert (= bs!1110110 (and b!4721843 d!1503166)))

(assert (=> bs!1110110 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886943) (= lambda!215426 lambda!215424))))

(assert (=> bs!1110104 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215426 lambda!215404))))

(declare-fun bs!1110111 () Bool)

(assert (= bs!1110111 (and b!4721843 d!1503132)))

(assert (=> bs!1110111 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215419))))

(declare-fun bs!1110112 () Bool)

(assert (= bs!1110112 (and b!4721843 d!1503126)))

(assert (=> bs!1110112 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886893) (= lambda!215426 lambda!215415))))

(declare-fun bs!1110113 () Bool)

(assert (= bs!1110113 (and b!4721843 b!4721424)))

(assert (=> bs!1110113 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215343))))

(declare-fun bs!1110114 () Bool)

(assert (= bs!1110114 (and b!4721843 b!4721544)))

(assert (=> bs!1110114 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886775) (= lambda!215426 lambda!215388))))

(declare-fun bs!1110115 () Bool)

(assert (= bs!1110115 (and b!4721843 d!1503024)))

(assert (=> bs!1110115 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886771) (= lambda!215426 lambda!215389))))

(assert (=> bs!1110108 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886606) (= lambda!215426 lambda!215345))))

(assert (=> bs!1110107 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215375))))

(declare-fun bs!1110116 () Bool)

(assert (= bs!1110116 (and b!4721843 b!4721844)))

(assert (=> bs!1110116 (= lambda!215426 lambda!215425)))

(declare-fun bs!1110117 () Bool)

(assert (= bs!1110117 (and b!4721843 b!4721531)))

(assert (=> bs!1110117 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215373))))

(declare-fun bs!1110118 () Bool)

(assert (= bs!1110118 (and b!4721843 b!4721431)))

(assert (=> bs!1110118 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215347))))

(declare-fun bs!1110119 () Bool)

(assert (= bs!1110119 (and b!4721843 d!1502964)))

(assert (=> bs!1110119 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886623) (= lambda!215426 lambda!215352))))

(assert (=> bs!1110114 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886424) (= lambda!215426 lambda!215387))))

(declare-fun bs!1110120 () Bool)

(assert (= bs!1110120 (and b!4721843 d!1503014)))

(assert (=> bs!1110120 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886747) (= lambda!215426 lambda!215382))))

(declare-fun bs!1110121 () Bool)

(assert (= bs!1110121 (and b!4721843 d!1503040)))

(assert (=> bs!1110121 (not (= lambda!215426 lambda!215399))))

(declare-fun bs!1110122 () Bool)

(assert (= bs!1110122 (and b!4721843 d!1503082)))

(assert (=> bs!1110122 (= (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1886843) (= lambda!215426 lambda!215406))))

(assert (=> b!4721843 true))

(declare-fun lambda!215427 () Int)

(declare-fun lt!1887015 () ListMap!5277)

(assert (=> bs!1110093 (= (= lt!1887015 lt!1886726) (= lambda!215427 lambda!215378))))

(assert (=> bs!1110094 (= (= lt!1887015 lt!1886751) (= lambda!215427 lambda!215381))))

(assert (=> bs!1110095 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215379))))

(assert (=> bs!1110096 (= (= lt!1887015 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215427 lambda!215403))))

(assert (=> bs!1110097 (= (= lt!1887015 lt!1886730) (= lambda!215427 lambda!215411))))

(assert (=> bs!1110098 (= (= lt!1887015 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215427 lambda!215421))))

(assert (=> bs!1110099 (= (= lt!1887015 lt!1886602) (= lambda!215427 lambda!215346))))

(assert (=> bs!1110100 (= (= lt!1887015 lt!1886897) (= lambda!215427 lambda!215414))))

(assert (=> bs!1110100 (= (= lt!1887015 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215427 lambda!215413))))

(assert (=> bs!1110101 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215386))))

(assert (=> bs!1110102 (not (= lambda!215427 lambda!215385))))

(assert (=> bs!1110103 (= (= lt!1887015 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215427 lambda!215412))))

(assert (=> bs!1110104 (= (= lt!1887015 lt!1886847) (= lambda!215427 lambda!215405))))

(assert (=> bs!1110105 (= (= lt!1887015 lt!1886627) (= lambda!215427 lambda!215420))))

(assert (=> bs!1110106 (= (= lt!1887015 lt!1886627) (= lambda!215427 lambda!215349))))

(assert (=> bs!1110107 (= (= lt!1887015 lt!1886730) (= lambda!215427 lambda!215376))))

(assert (=> bs!1110108 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215344))))

(assert (=> bs!1110106 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215348))))

(assert (=> bs!1110109 (= (= lt!1887015 lt!1886947) (= lambda!215427 lambda!215423))))

(assert (=> bs!1110109 (= (= lt!1887015 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215427 lambda!215422))))

(assert (=> bs!1110094 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215380))))

(assert (=> bs!1110110 (= (= lt!1887015 lt!1886943) (= lambda!215427 lambda!215424))))

(assert (=> bs!1110104 (= (= lt!1887015 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215427 lambda!215404))))

(assert (=> bs!1110111 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215419))))

(assert (=> b!4721843 (= (= lt!1887015 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215427 lambda!215426))))

(assert (=> bs!1110112 (= (= lt!1887015 lt!1886893) (= lambda!215427 lambda!215415))))

(assert (=> bs!1110113 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215343))))

(assert (=> bs!1110114 (= (= lt!1887015 lt!1886775) (= lambda!215427 lambda!215388))))

(assert (=> bs!1110115 (= (= lt!1887015 lt!1886771) (= lambda!215427 lambda!215389))))

(assert (=> bs!1110108 (= (= lt!1887015 lt!1886606) (= lambda!215427 lambda!215345))))

(assert (=> bs!1110107 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215375))))

(assert (=> bs!1110116 (= (= lt!1887015 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215427 lambda!215425))))

(assert (=> bs!1110117 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215373))))

(assert (=> bs!1110118 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215347))))

(assert (=> bs!1110119 (= (= lt!1887015 lt!1886623) (= lambda!215427 lambda!215352))))

(assert (=> bs!1110114 (= (= lt!1887015 lt!1886424) (= lambda!215427 lambda!215387))))

(assert (=> bs!1110120 (= (= lt!1887015 lt!1886747) (= lambda!215427 lambda!215382))))

(assert (=> bs!1110121 (not (= lambda!215427 lambda!215399))))

(assert (=> bs!1110122 (= (= lt!1887015 lt!1886843) (= lambda!215427 lambda!215406))))

(assert (=> b!4721843 true))

(declare-fun bs!1110123 () Bool)

(declare-fun d!1503200 () Bool)

(assert (= bs!1110123 (and d!1503200 d!1503008)))

(declare-fun lambda!215428 () Int)

(declare-fun lt!1887011 () ListMap!5277)

(assert (=> bs!1110123 (= (= lt!1887011 lt!1886726) (= lambda!215428 lambda!215378))))

(declare-fun bs!1110124 () Bool)

(assert (= bs!1110124 (and d!1503200 b!4721535)))

(assert (=> bs!1110124 (= (= lt!1887011 lt!1886751) (= lambda!215428 lambda!215381))))

(declare-fun bs!1110125 () Bool)

(assert (= bs!1110125 (and d!1503200 b!4721536)))

(assert (=> bs!1110125 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215379))))

(declare-fun bs!1110126 () Bool)

(assert (= bs!1110126 (and d!1503200 b!4721633)))

(assert (=> bs!1110126 (= (= lt!1887011 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215428 lambda!215403))))

(declare-fun bs!1110127 () Bool)

(assert (= bs!1110127 (and d!1503200 d!1503084)))

(assert (=> bs!1110127 (= (= lt!1887011 lt!1886730) (= lambda!215428 lambda!215411))))

(declare-fun bs!1110128 () Bool)

(assert (= bs!1110128 (and d!1503200 b!4721748)))

(assert (=> bs!1110128 (= (= lt!1887011 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215428 lambda!215421))))

(declare-fun bs!1110129 () Bool)

(assert (= bs!1110129 (and d!1503200 d!1502956)))

(assert (=> bs!1110129 (= (= lt!1887011 lt!1886602) (= lambda!215428 lambda!215346))))

(declare-fun bs!1110130 () Bool)

(assert (= bs!1110130 (and d!1503200 b!4721695)))

(assert (=> bs!1110130 (= (= lt!1887011 lt!1886897) (= lambda!215428 lambda!215414))))

(assert (=> bs!1110130 (= (= lt!1887011 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215428 lambda!215413))))

(declare-fun bs!1110131 () Bool)

(assert (= bs!1110131 (and d!1503200 b!4721545)))

(assert (=> bs!1110131 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215386))))

(declare-fun bs!1110132 () Bool)

(assert (= bs!1110132 (and d!1503200 d!1503020)))

(assert (=> bs!1110132 (not (= lambda!215428 lambda!215385))))

(declare-fun bs!1110133 () Bool)

(assert (= bs!1110133 (and d!1503200 b!4721696)))

(assert (=> bs!1110133 (= (= lt!1887011 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215428 lambda!215412))))

(declare-fun bs!1110134 () Bool)

(assert (= bs!1110134 (and d!1503200 b!4721632)))

(assert (=> bs!1110134 (= (= lt!1887011 lt!1886847) (= lambda!215428 lambda!215405))))

(declare-fun bs!1110135 () Bool)

(assert (= bs!1110135 (and d!1503200 d!1503162)))

(assert (=> bs!1110135 (= (= lt!1887011 lt!1886627) (= lambda!215428 lambda!215420))))

(declare-fun bs!1110136 () Bool)

(assert (= bs!1110136 (and d!1503200 b!4721430)))

(assert (=> bs!1110136 (= (= lt!1887011 lt!1886627) (= lambda!215428 lambda!215349))))

(declare-fun bs!1110137 () Bool)

(assert (= bs!1110137 (and d!1503200 b!4721843)))

(assert (=> bs!1110137 (= (= lt!1887011 lt!1887015) (= lambda!215428 lambda!215427))))

(declare-fun bs!1110138 () Bool)

(assert (= bs!1110138 (and d!1503200 b!4721530)))

(assert (=> bs!1110138 (= (= lt!1887011 lt!1886730) (= lambda!215428 lambda!215376))))

(declare-fun bs!1110139 () Bool)

(assert (= bs!1110139 (and d!1503200 b!4721423)))

(assert (=> bs!1110139 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215344))))

(assert (=> bs!1110136 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215348))))

(declare-fun bs!1110140 () Bool)

(assert (= bs!1110140 (and d!1503200 b!4721747)))

(assert (=> bs!1110140 (= (= lt!1887011 lt!1886947) (= lambda!215428 lambda!215423))))

(assert (=> bs!1110140 (= (= lt!1887011 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215428 lambda!215422))))

(assert (=> bs!1110124 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215380))))

(declare-fun bs!1110141 () Bool)

(assert (= bs!1110141 (and d!1503200 d!1503166)))

(assert (=> bs!1110141 (= (= lt!1887011 lt!1886943) (= lambda!215428 lambda!215424))))

(assert (=> bs!1110134 (= (= lt!1887011 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215428 lambda!215404))))

(declare-fun bs!1110142 () Bool)

(assert (= bs!1110142 (and d!1503200 d!1503132)))

(assert (=> bs!1110142 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215419))))

(assert (=> bs!1110137 (= (= lt!1887011 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215428 lambda!215426))))

(declare-fun bs!1110143 () Bool)

(assert (= bs!1110143 (and d!1503200 d!1503126)))

(assert (=> bs!1110143 (= (= lt!1887011 lt!1886893) (= lambda!215428 lambda!215415))))

(declare-fun bs!1110144 () Bool)

(assert (= bs!1110144 (and d!1503200 b!4721424)))

(assert (=> bs!1110144 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215343))))

(declare-fun bs!1110145 () Bool)

(assert (= bs!1110145 (and d!1503200 b!4721544)))

(assert (=> bs!1110145 (= (= lt!1887011 lt!1886775) (= lambda!215428 lambda!215388))))

(declare-fun bs!1110146 () Bool)

(assert (= bs!1110146 (and d!1503200 d!1503024)))

(assert (=> bs!1110146 (= (= lt!1887011 lt!1886771) (= lambda!215428 lambda!215389))))

(assert (=> bs!1110139 (= (= lt!1887011 lt!1886606) (= lambda!215428 lambda!215345))))

(assert (=> bs!1110138 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215375))))

(declare-fun bs!1110147 () Bool)

(assert (= bs!1110147 (and d!1503200 b!4721844)))

(assert (=> bs!1110147 (= (= lt!1887011 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215428 lambda!215425))))

(declare-fun bs!1110148 () Bool)

(assert (= bs!1110148 (and d!1503200 b!4721531)))

(assert (=> bs!1110148 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215373))))

(declare-fun bs!1110149 () Bool)

(assert (= bs!1110149 (and d!1503200 b!4721431)))

(assert (=> bs!1110149 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215347))))

(declare-fun bs!1110150 () Bool)

(assert (= bs!1110150 (and d!1503200 d!1502964)))

(assert (=> bs!1110150 (= (= lt!1887011 lt!1886623) (= lambda!215428 lambda!215352))))

(assert (=> bs!1110145 (= (= lt!1887011 lt!1886424) (= lambda!215428 lambda!215387))))

(declare-fun bs!1110151 () Bool)

(assert (= bs!1110151 (and d!1503200 d!1503014)))

(assert (=> bs!1110151 (= (= lt!1887011 lt!1886747) (= lambda!215428 lambda!215382))))

(declare-fun bs!1110152 () Bool)

(assert (= bs!1110152 (and d!1503200 d!1503040)))

(assert (=> bs!1110152 (not (= lambda!215428 lambda!215399))))

(declare-fun bs!1110153 () Bool)

(assert (= bs!1110153 (and d!1503200 d!1503082)))

(assert (=> bs!1110153 (= (= lt!1887011 lt!1886843) (= lambda!215428 lambda!215406))))

(assert (=> d!1503200 true))

(declare-fun bm!330217 () Bool)

(declare-fun call!330223 () Unit!129750)

(assert (=> bm!330217 (= call!330223 (lemmaContainsAllItsOwnKeys!795 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))))))

(declare-fun e!2944811 () ListMap!5277)

(assert (=> b!4721843 (= e!2944811 lt!1887015)))

(declare-fun lt!1887014 () ListMap!5277)

(assert (=> b!4721843 (= lt!1887014 (+!2267 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (h!59169 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))))))))

(assert (=> b!4721843 (= lt!1887015 (addToMapMapFromBucket!1442 (t!360210 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))) (+!2267 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) (h!59169 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))))))))

(declare-fun lt!1887021 () Unit!129750)

(assert (=> b!4721843 (= lt!1887021 call!330223)))

(declare-fun call!330222 () Bool)

(assert (=> b!4721843 call!330222))

(declare-fun lt!1887018 () Unit!129750)

(assert (=> b!4721843 (= lt!1887018 lt!1887021)))

(declare-fun call!330224 () Bool)

(assert (=> b!4721843 call!330224))

(declare-fun lt!1887019 () Unit!129750)

(declare-fun Unit!129952 () Unit!129750)

(assert (=> b!4721843 (= lt!1887019 Unit!129952)))

(assert (=> b!4721843 (forall!11584 (t!360210 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))) lambda!215427)))

(declare-fun lt!1887026 () Unit!129750)

(declare-fun Unit!129953 () Unit!129750)

(assert (=> b!4721843 (= lt!1887026 Unit!129953)))

(declare-fun lt!1887010 () Unit!129750)

(declare-fun Unit!129954 () Unit!129750)

(assert (=> b!4721843 (= lt!1887010 Unit!129954)))

(declare-fun lt!1887013 () Unit!129750)

(assert (=> b!4721843 (= lt!1887013 (forallContained!3635 (toList!5913 lt!1887014) lambda!215427 (h!59169 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))))))))

(assert (=> b!4721843 (contains!16168 lt!1887014 (_1!30515 (h!59169 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887009 () Unit!129750)

(declare-fun Unit!129955 () Unit!129750)

(assert (=> b!4721843 (= lt!1887009 Unit!129955)))

(assert (=> b!4721843 (contains!16168 lt!1887015 (_1!30515 (h!59169 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887016 () Unit!129750)

(declare-fun Unit!129956 () Unit!129750)

(assert (=> b!4721843 (= lt!1887016 Unit!129956)))

(assert (=> b!4721843 (forall!11584 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))) lambda!215427)))

(declare-fun lt!1887028 () Unit!129750)

(declare-fun Unit!129957 () Unit!129750)

(assert (=> b!4721843 (= lt!1887028 Unit!129957)))

(assert (=> b!4721843 (forall!11584 (toList!5913 lt!1887014) lambda!215427)))

(declare-fun lt!1887027 () Unit!129750)

(declare-fun Unit!129958 () Unit!129750)

(assert (=> b!4721843 (= lt!1887027 Unit!129958)))

(declare-fun lt!1887012 () Unit!129750)

(declare-fun Unit!129959 () Unit!129750)

(assert (=> b!4721843 (= lt!1887012 Unit!129959)))

(declare-fun lt!1887024 () Unit!129750)

(assert (=> b!4721843 (= lt!1887024 (addForallContainsKeyThenBeforeAdding!794 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1887015 (_1!30515 (h!59169 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))))))))

(assert (=> b!4721843 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) lambda!215427)))

(declare-fun lt!1887020 () Unit!129750)

(assert (=> b!4721843 (= lt!1887020 lt!1887024)))

(assert (=> b!4721843 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) lambda!215427)))

(declare-fun lt!1887023 () Unit!129750)

(declare-fun Unit!129960 () Unit!129750)

(assert (=> b!4721843 (= lt!1887023 Unit!129960)))

(declare-fun res!1997558 () Bool)

(assert (=> b!4721843 (= res!1997558 (forall!11584 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))) lambda!215427))))

(declare-fun e!2944812 () Bool)

(assert (=> b!4721843 (=> (not res!1997558) (not e!2944812))))

(assert (=> b!4721843 e!2944812))

(declare-fun lt!1887025 () Unit!129750)

(declare-fun Unit!129961 () Unit!129750)

(assert (=> b!4721843 (= lt!1887025 Unit!129961)))

(declare-fun bm!330218 () Bool)

(declare-fun c!806388 () Bool)

(assert (=> bm!330218 (= call!330224 (forall!11584 (ite c!806388 (toList!5913 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (toList!5913 lt!1887014)) (ite c!806388 lambda!215425 lambda!215427)))))

(assert (=> b!4721844 (= e!2944811 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))))))

(declare-fun lt!1887029 () Unit!129750)

(assert (=> b!4721844 (= lt!1887029 call!330223)))

(assert (=> b!4721844 call!330224))

(declare-fun lt!1887017 () Unit!129750)

(assert (=> b!4721844 (= lt!1887017 lt!1887029)))

(assert (=> b!4721844 call!330222))

(declare-fun lt!1887022 () Unit!129750)

(declare-fun Unit!129962 () Unit!129750)

(assert (=> b!4721844 (= lt!1887022 Unit!129962)))

(declare-fun b!4721846 () Bool)

(declare-fun res!1997560 () Bool)

(declare-fun e!2944810 () Bool)

(assert (=> b!4721846 (=> (not res!1997560) (not e!2944810))))

(assert (=> b!4721846 (= res!1997560 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) lambda!215428))))

(declare-fun bm!330219 () Bool)

(assert (=> bm!330219 (= call!330222 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (ite c!806388 lambda!215425 lambda!215426)))))

(declare-fun b!4721847 () Bool)

(assert (=> b!4721847 (= e!2944810 (invariantList!1509 (toList!5913 lt!1887011)))))

(declare-fun b!4721845 () Bool)

(assert (=> b!4721845 (= e!2944812 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) lambda!215427))))

(assert (=> d!1503200 e!2944810))

(declare-fun res!1997559 () Bool)

(assert (=> d!1503200 (=> (not res!1997559) (not e!2944810))))

(assert (=> d!1503200 (= res!1997559 (forall!11584 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))) lambda!215428))))

(assert (=> d!1503200 (= lt!1887011 e!2944811)))

(assert (=> d!1503200 (= c!806388 ((_ is Nil!52824) (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))))))

(assert (=> d!1503200 (noDuplicateKeys!2012 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))))))

(assert (=> d!1503200 (= (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023)))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) lt!1887011)))

(assert (= (and d!1503200 c!806388) b!4721844))

(assert (= (and d!1503200 (not c!806388)) b!4721843))

(assert (= (and b!4721843 res!1997558) b!4721845))

(assert (= (or b!4721844 b!4721843) bm!330217))

(assert (= (or b!4721844 b!4721843) bm!330219))

(assert (= (or b!4721844 b!4721843) bm!330218))

(assert (= (and d!1503200 res!1997559) b!4721846))

(assert (= (and b!4721846 res!1997560) b!4721847))

(declare-fun m!5656543 () Bool)

(assert (=> b!4721847 m!5656543))

(declare-fun m!5656545 () Bool)

(assert (=> d!1503200 m!5656545))

(declare-fun m!5656547 () Bool)

(assert (=> d!1503200 m!5656547))

(declare-fun m!5656549 () Bool)

(assert (=> b!4721846 m!5656549))

(assert (=> bm!330217 m!5655911))

(declare-fun m!5656551 () Bool)

(assert (=> bm!330217 m!5656551))

(declare-fun m!5656553 () Bool)

(assert (=> b!4721843 m!5656553))

(declare-fun m!5656555 () Bool)

(assert (=> b!4721843 m!5656555))

(declare-fun m!5656557 () Bool)

(assert (=> b!4721843 m!5656557))

(assert (=> b!4721843 m!5655911))

(declare-fun m!5656559 () Bool)

(assert (=> b!4721843 m!5656559))

(assert (=> b!4721843 m!5656557))

(declare-fun m!5656561 () Bool)

(assert (=> b!4721843 m!5656561))

(declare-fun m!5656563 () Bool)

(assert (=> b!4721843 m!5656563))

(declare-fun m!5656565 () Bool)

(assert (=> b!4721843 m!5656565))

(declare-fun m!5656567 () Bool)

(assert (=> b!4721843 m!5656567))

(assert (=> b!4721843 m!5656567))

(assert (=> b!4721843 m!5655911))

(declare-fun m!5656569 () Bool)

(assert (=> b!4721843 m!5656569))

(assert (=> b!4721843 m!5656559))

(declare-fun m!5656571 () Bool)

(assert (=> b!4721843 m!5656571))

(declare-fun m!5656573 () Bool)

(assert (=> bm!330219 m!5656573))

(declare-fun m!5656575 () Bool)

(assert (=> bm!330218 m!5656575))

(assert (=> b!4721845 m!5656567))

(assert (=> b!4721555 d!1503200))

(declare-fun bs!1110154 () Bool)

(declare-fun d!1503214 () Bool)

(assert (= bs!1110154 (and d!1503214 d!1503038)))

(declare-fun lambda!215429 () Int)

(assert (=> bs!1110154 (not (= lambda!215429 lambda!215398))))

(declare-fun bs!1110155 () Bool)

(assert (= bs!1110155 (and d!1503214 d!1503042)))

(assert (=> bs!1110155 (= lambda!215429 lambda!215400)))

(declare-fun bs!1110156 () Bool)

(assert (= bs!1110156 (and d!1503214 d!1503050)))

(assert (=> bs!1110156 (= lambda!215429 lambda!215401)))

(declare-fun bs!1110157 () Bool)

(assert (= bs!1110157 (and d!1503214 start!480568)))

(assert (=> bs!1110157 (= lambda!215429 lambda!215278)))

(declare-fun bs!1110158 () Bool)

(assert (= bs!1110158 (and d!1503214 d!1503032)))

(assert (=> bs!1110158 (not (= lambda!215429 lambda!215395))))

(declare-fun bs!1110159 () Bool)

(assert (= bs!1110159 (and d!1503214 d!1503128)))

(assert (=> bs!1110159 (= lambda!215429 lambda!215416)))

(declare-fun bs!1110160 () Bool)

(assert (= bs!1110160 (and d!1503214 d!1502992)))

(assert (=> bs!1110160 (= lambda!215429 lambda!215371)))

(declare-fun bs!1110161 () Bool)

(assert (= bs!1110161 (and d!1503214 d!1503026)))

(assert (=> bs!1110161 (= lambda!215429 lambda!215390)))

(declare-fun lt!1887050 () ListMap!5277)

(assert (=> d!1503214 (invariantList!1509 (toList!5913 lt!1887050))))

(declare-fun e!2944830 () ListMap!5277)

(assert (=> d!1503214 (= lt!1887050 e!2944830)))

(declare-fun c!806395 () Bool)

(assert (=> d!1503214 (= c!806395 ((_ is Cons!52825) (t!360211 (t!360211 (toList!5914 lm!2023)))))))

(assert (=> d!1503214 (forall!11582 (t!360211 (t!360211 (toList!5914 lm!2023))) lambda!215429)))

(assert (=> d!1503214 (= (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023)))) lt!1887050)))

(declare-fun b!4721872 () Bool)

(assert (=> b!4721872 (= e!2944830 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (t!360211 (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (t!360211 (toList!5914 lm!2023)))))))))

(declare-fun b!4721873 () Bool)

(assert (=> b!4721873 (= e!2944830 (ListMap!5278 Nil!52824))))

(assert (= (and d!1503214 c!806395) b!4721872))

(assert (= (and d!1503214 (not c!806395)) b!4721873))

(declare-fun m!5656577 () Bool)

(assert (=> d!1503214 m!5656577))

(declare-fun m!5656579 () Bool)

(assert (=> d!1503214 m!5656579))

(declare-fun m!5656581 () Bool)

(assert (=> b!4721872 m!5656581))

(assert (=> b!4721872 m!5656581))

(declare-fun m!5656583 () Bool)

(assert (=> b!4721872 m!5656583))

(assert (=> b!4721555 d!1503214))

(assert (=> bm!330185 d!1503132))

(declare-fun d!1503216 () Bool)

(declare-fun res!1997573 () Bool)

(declare-fun e!2944831 () Bool)

(assert (=> d!1503216 (=> res!1997573 e!2944831)))

(assert (=> d!1503216 (= res!1997573 ((_ is Nil!52824) (ite c!806333 (toList!5913 lt!1886424) (toList!5913 lt!1886774))))))

(assert (=> d!1503216 (= (forall!11584 (ite c!806333 (toList!5913 lt!1886424) (toList!5913 lt!1886774)) (ite c!806333 lambda!215386 lambda!215388)) e!2944831)))

(declare-fun b!4721874 () Bool)

(declare-fun e!2944832 () Bool)

(assert (=> b!4721874 (= e!2944831 e!2944832)))

(declare-fun res!1997574 () Bool)

(assert (=> b!4721874 (=> (not res!1997574) (not e!2944832))))

(assert (=> b!4721874 (= res!1997574 (dynLambda!21817 (ite c!806333 lambda!215386 lambda!215388) (h!59169 (ite c!806333 (toList!5913 lt!1886424) (toList!5913 lt!1886774)))))))

(declare-fun b!4721875 () Bool)

(assert (=> b!4721875 (= e!2944832 (forall!11584 (t!360210 (ite c!806333 (toList!5913 lt!1886424) (toList!5913 lt!1886774))) (ite c!806333 lambda!215386 lambda!215388)))))

(assert (= (and d!1503216 (not res!1997573)) b!4721874))

(assert (= (and b!4721874 res!1997574) b!4721875))

(declare-fun b_lambda!178395 () Bool)

(assert (=> (not b_lambda!178395) (not b!4721874)))

(declare-fun m!5656585 () Bool)

(assert (=> b!4721874 m!5656585))

(declare-fun m!5656587 () Bool)

(assert (=> b!4721875 m!5656587))

(assert (=> bm!330186 d!1503216))

(declare-fun d!1503218 () Bool)

(declare-fun res!1997575 () Bool)

(declare-fun e!2944833 () Bool)

(assert (=> d!1503218 (=> res!1997575 e!2944833)))

(assert (=> d!1503218 (= res!1997575 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503218 (= (forall!11584 (toList!5913 lt!1886424) lambda!215352) e!2944833)))

(declare-fun b!4721876 () Bool)

(declare-fun e!2944834 () Bool)

(assert (=> b!4721876 (= e!2944833 e!2944834)))

(declare-fun res!1997576 () Bool)

(assert (=> b!4721876 (=> (not res!1997576) (not e!2944834))))

(assert (=> b!4721876 (= res!1997576 (dynLambda!21817 lambda!215352 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721877 () Bool)

(assert (=> b!4721877 (= e!2944834 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215352))))

(assert (= (and d!1503218 (not res!1997575)) b!4721876))

(assert (= (and b!4721876 res!1997576) b!4721877))

(declare-fun b_lambda!178397 () Bool)

(assert (=> (not b_lambda!178397) (not b!4721876)))

(declare-fun m!5656589 () Bool)

(assert (=> b!4721876 m!5656589))

(declare-fun m!5656591 () Bool)

(assert (=> b!4721877 m!5656591))

(assert (=> b!4721433 d!1503218))

(declare-fun b!4721906 () Bool)

(assert (=> b!4721906 true))

(declare-fun bs!1110207 () Bool)

(declare-fun b!4721910 () Bool)

(assert (= bs!1110207 (and b!4721910 b!4721906)))

(declare-fun lambda!215446 () Int)

(declare-fun lambda!215445 () Int)

(assert (=> bs!1110207 (= (= (Cons!52824 (h!59169 (toList!5913 lt!1886427)) (t!360210 (toList!5913 lt!1886427))) (t!360210 (toList!5913 lt!1886427))) (= lambda!215446 lambda!215445))))

(assert (=> b!4721910 true))

(declare-fun bs!1110210 () Bool)

(declare-fun b!4721905 () Bool)

(assert (= bs!1110210 (and b!4721905 b!4721906)))

(declare-fun lambda!215447 () Int)

(assert (=> bs!1110210 (= (= (toList!5913 lt!1886427) (t!360210 (toList!5913 lt!1886427))) (= lambda!215447 lambda!215445))))

(declare-fun bs!1110211 () Bool)

(assert (= bs!1110211 (and b!4721905 b!4721910)))

(assert (=> bs!1110211 (= (= (toList!5913 lt!1886427) (Cons!52824 (h!59169 (toList!5913 lt!1886427)) (t!360210 (toList!5913 lt!1886427)))) (= lambda!215447 lambda!215446))))

(assert (=> b!4721905 true))

(declare-fun res!1997591 () Bool)

(declare-fun e!2944852 () Bool)

(assert (=> b!4721905 (=> (not res!1997591) (not e!2944852))))

(declare-fun lt!1887095 () List!52951)

(declare-fun forall!11585 (List!52951 Int) Bool)

(assert (=> b!4721905 (= res!1997591 (forall!11585 lt!1887095 lambda!215447))))

(declare-fun d!1503220 () Bool)

(assert (=> d!1503220 e!2944852))

(declare-fun res!1997589 () Bool)

(assert (=> d!1503220 (=> (not res!1997589) (not e!2944852))))

(declare-fun noDuplicate!858 (List!52951) Bool)

(assert (=> d!1503220 (= res!1997589 (noDuplicate!858 lt!1887095))))

(declare-fun e!2944851 () List!52951)

(assert (=> d!1503220 (= lt!1887095 e!2944851)))

(declare-fun c!806403 () Bool)

(assert (=> d!1503220 (= c!806403 ((_ is Cons!52824) (toList!5913 lt!1886427)))))

(assert (=> d!1503220 (invariantList!1509 (toList!5913 lt!1886427))))

(assert (=> d!1503220 (= (getKeysList!949 (toList!5913 lt!1886427)) lt!1887095)))

(assert (=> b!4721906 false))

(declare-fun lt!1887098 () Unit!129750)

(declare-fun forallContained!3636 (List!52951 Int K!14180) Unit!129750)

(assert (=> b!4721906 (= lt!1887098 (forallContained!3636 (getKeysList!949 (t!360210 (toList!5913 lt!1886427))) lambda!215445 (_1!30515 (h!59169 (toList!5913 lt!1886427)))))))

(declare-fun e!2944850 () Unit!129750)

(declare-fun Unit!129965 () Unit!129750)

(assert (=> b!4721906 (= e!2944850 Unit!129965)))

(declare-fun lambda!215448 () Int)

(declare-fun b!4721907 () Bool)

(declare-fun map!11677 (List!52948 Int) List!52951)

(assert (=> b!4721907 (= e!2944852 (= (content!9392 lt!1887095) (content!9392 (map!11677 (toList!5913 lt!1886427) lambda!215448))))))

(declare-fun b!4721908 () Bool)

(declare-fun res!1997590 () Bool)

(assert (=> b!4721908 (=> (not res!1997590) (not e!2944852))))

(declare-fun length!572 (List!52951) Int)

(declare-fun length!573 (List!52948) Int)

(assert (=> b!4721908 (= res!1997590 (= (length!572 lt!1887095) (length!573 (toList!5913 lt!1886427))))))

(declare-fun b!4721909 () Bool)

(assert (=> b!4721909 (= e!2944851 Nil!52827)))

(assert (=> b!4721910 (= e!2944851 (Cons!52827 (_1!30515 (h!59169 (toList!5913 lt!1886427))) (getKeysList!949 (t!360210 (toList!5913 lt!1886427)))))))

(declare-fun c!806404 () Bool)

(assert (=> b!4721910 (= c!806404 (containsKey!3367 (t!360210 (toList!5913 lt!1886427)) (_1!30515 (h!59169 (toList!5913 lt!1886427)))))))

(declare-fun lt!1887096 () Unit!129750)

(declare-fun e!2944849 () Unit!129750)

(assert (=> b!4721910 (= lt!1887096 e!2944849)))

(declare-fun c!806405 () Bool)

(assert (=> b!4721910 (= c!806405 (contains!16171 (getKeysList!949 (t!360210 (toList!5913 lt!1886427))) (_1!30515 (h!59169 (toList!5913 lt!1886427)))))))

(declare-fun lt!1887093 () Unit!129750)

(assert (=> b!4721910 (= lt!1887093 e!2944850)))

(declare-fun lt!1887097 () List!52951)

(assert (=> b!4721910 (= lt!1887097 (getKeysList!949 (t!360210 (toList!5913 lt!1886427))))))

(declare-fun lt!1887092 () Unit!129750)

(declare-fun lemmaForallContainsAddHeadPreserves!277 (List!52948 List!52951 tuple2!54442) Unit!129750)

(assert (=> b!4721910 (= lt!1887092 (lemmaForallContainsAddHeadPreserves!277 (t!360210 (toList!5913 lt!1886427)) lt!1887097 (h!59169 (toList!5913 lt!1886427))))))

(assert (=> b!4721910 (forall!11585 lt!1887097 lambda!215446)))

(declare-fun lt!1887094 () Unit!129750)

(assert (=> b!4721910 (= lt!1887094 lt!1887092)))

(declare-fun b!4721911 () Bool)

(declare-fun Unit!129966 () Unit!129750)

(assert (=> b!4721911 (= e!2944849 Unit!129966)))

(declare-fun b!4721912 () Bool)

(assert (=> b!4721912 false))

(declare-fun Unit!129968 () Unit!129750)

(assert (=> b!4721912 (= e!2944849 Unit!129968)))

(declare-fun b!4721913 () Bool)

(declare-fun Unit!129969 () Unit!129750)

(assert (=> b!4721913 (= e!2944850 Unit!129969)))

(assert (= (and d!1503220 c!806403) b!4721910))

(assert (= (and d!1503220 (not c!806403)) b!4721909))

(assert (= (and b!4721910 c!806404) b!4721912))

(assert (= (and b!4721910 (not c!806404)) b!4721911))

(assert (= (and b!4721910 c!806405) b!4721906))

(assert (= (and b!4721910 (not c!806405)) b!4721913))

(assert (= (and d!1503220 res!1997589) b!4721908))

(assert (= (and b!4721908 res!1997590) b!4721905))

(assert (= (and b!4721905 res!1997591) b!4721907))

(declare-fun m!5656605 () Bool)

(assert (=> b!4721908 m!5656605))

(declare-fun m!5656607 () Bool)

(assert (=> b!4721908 m!5656607))

(declare-fun m!5656609 () Bool)

(assert (=> d!1503220 m!5656609))

(assert (=> d!1503220 m!5656021))

(declare-fun m!5656611 () Bool)

(assert (=> b!4721906 m!5656611))

(assert (=> b!4721906 m!5656611))

(declare-fun m!5656613 () Bool)

(assert (=> b!4721906 m!5656613))

(declare-fun m!5656615 () Bool)

(assert (=> b!4721905 m!5656615))

(declare-fun m!5656617 () Bool)

(assert (=> b!4721907 m!5656617))

(declare-fun m!5656619 () Bool)

(assert (=> b!4721907 m!5656619))

(assert (=> b!4721907 m!5656619))

(declare-fun m!5656621 () Bool)

(assert (=> b!4721907 m!5656621))

(assert (=> b!4721910 m!5656611))

(declare-fun m!5656623 () Bool)

(assert (=> b!4721910 m!5656623))

(assert (=> b!4721910 m!5656611))

(declare-fun m!5656625 () Bool)

(assert (=> b!4721910 m!5656625))

(declare-fun m!5656627 () Bool)

(assert (=> b!4721910 m!5656627))

(declare-fun m!5656629 () Bool)

(assert (=> b!4721910 m!5656629))

(assert (=> b!4721490 d!1503220))

(assert (=> bs!1109770 d!1503136))

(assert (=> b!4721532 d!1503094))

(declare-fun d!1503226 () Bool)

(declare-fun res!1997592 () Bool)

(declare-fun e!2944853 () Bool)

(assert (=> d!1503226 (=> res!1997592 e!2944853)))

(assert (=> d!1503226 (= res!1997592 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503226 (= (forall!11584 (toList!5913 lt!1886424) (ite c!806331 lambda!215373 lambda!215375)) e!2944853)))

(declare-fun b!4721916 () Bool)

(declare-fun e!2944854 () Bool)

(assert (=> b!4721916 (= e!2944853 e!2944854)))

(declare-fun res!1997593 () Bool)

(assert (=> b!4721916 (=> (not res!1997593) (not e!2944854))))

(assert (=> b!4721916 (= res!1997593 (dynLambda!21817 (ite c!806331 lambda!215373 lambda!215375) (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721917 () Bool)

(assert (=> b!4721917 (= e!2944854 (forall!11584 (t!360210 (toList!5913 lt!1886424)) (ite c!806331 lambda!215373 lambda!215375)))))

(assert (= (and d!1503226 (not res!1997592)) b!4721916))

(assert (= (and b!4721916 res!1997593) b!4721917))

(declare-fun b_lambda!178401 () Bool)

(assert (=> (not b_lambda!178401) (not b!4721916)))

(declare-fun m!5656631 () Bool)

(assert (=> b!4721916 m!5656631))

(declare-fun m!5656633 () Bool)

(assert (=> b!4721917 m!5656633))

(assert (=> bm!330181 d!1503226))

(declare-fun d!1503228 () Bool)

(declare-fun choose!33315 (Hashable!6381 K!14180) (_ BitVec 64))

(assert (=> d!1503228 (= (hash!4381 hashF!1323 key!4653) (choose!33315 hashF!1323 key!4653))))

(declare-fun bs!1110220 () Bool)

(assert (= bs!1110220 d!1503228))

(declare-fun m!5656635 () Bool)

(assert (=> bs!1110220 m!5656635))

(assert (=> d!1502932 d!1503228))

(declare-fun d!1503230 () Bool)

(declare-fun res!1997594 () Bool)

(declare-fun e!2944855 () Bool)

(assert (=> d!1503230 (=> res!1997594 e!2944855)))

(assert (=> d!1503230 (= res!1997594 ((_ is Nil!52824) oldBucket!34))))

(assert (=> d!1503230 (= (forall!11584 oldBucket!34 lambda!215352) e!2944855)))

(declare-fun b!4721918 () Bool)

(declare-fun e!2944856 () Bool)

(assert (=> b!4721918 (= e!2944855 e!2944856)))

(declare-fun res!1997595 () Bool)

(assert (=> b!4721918 (=> (not res!1997595) (not e!2944856))))

(assert (=> b!4721918 (= res!1997595 (dynLambda!21817 lambda!215352 (h!59169 oldBucket!34)))))

(declare-fun b!4721919 () Bool)

(assert (=> b!4721919 (= e!2944856 (forall!11584 (t!360210 oldBucket!34) lambda!215352))))

(assert (= (and d!1503230 (not res!1997594)) b!4721918))

(assert (= (and b!4721918 res!1997595) b!4721919))

(declare-fun b_lambda!178403 () Bool)

(assert (=> (not b_lambda!178403) (not b!4721918)))

(declare-fun m!5656637 () Bool)

(assert (=> b!4721918 m!5656637))

(declare-fun m!5656639 () Bool)

(assert (=> b!4721919 m!5656639))

(assert (=> d!1502964 d!1503230))

(assert (=> d!1502964 d!1502938))

(declare-fun d!1503232 () Bool)

(declare-fun res!1997596 () Bool)

(declare-fun e!2944857 () Bool)

(assert (=> d!1503232 (=> res!1997596 e!2944857)))

(assert (=> d!1503232 (= res!1997596 ((_ is Nil!52824) (ite c!806331 (toList!5913 lt!1886424) (toList!5913 lt!1886729))))))

(assert (=> d!1503232 (= (forall!11584 (ite c!806331 (toList!5913 lt!1886424) (toList!5913 lt!1886729)) (ite c!806331 lambda!215373 lambda!215376)) e!2944857)))

(declare-fun b!4721920 () Bool)

(declare-fun e!2944858 () Bool)

(assert (=> b!4721920 (= e!2944857 e!2944858)))

(declare-fun res!1997597 () Bool)

(assert (=> b!4721920 (=> (not res!1997597) (not e!2944858))))

(assert (=> b!4721920 (= res!1997597 (dynLambda!21817 (ite c!806331 lambda!215373 lambda!215376) (h!59169 (ite c!806331 (toList!5913 lt!1886424) (toList!5913 lt!1886729)))))))

(declare-fun b!4721921 () Bool)

(assert (=> b!4721921 (= e!2944858 (forall!11584 (t!360210 (ite c!806331 (toList!5913 lt!1886424) (toList!5913 lt!1886729))) (ite c!806331 lambda!215373 lambda!215376)))))

(assert (= (and d!1503232 (not res!1997596)) b!4721920))

(assert (= (and b!4721920 res!1997597) b!4721921))

(declare-fun b_lambda!178405 () Bool)

(assert (=> (not b_lambda!178405) (not b!4721920)))

(declare-fun m!5656641 () Bool)

(assert (=> b!4721920 m!5656641))

(declare-fun m!5656643 () Bool)

(assert (=> b!4721921 m!5656643))

(assert (=> bm!330180 d!1503232))

(declare-fun d!1503234 () Bool)

(assert (=> d!1503234 (= (invariantList!1509 (toList!5913 lt!1886771)) (noDuplicatedKeys!372 (toList!5913 lt!1886771)))))

(declare-fun bs!1110221 () Bool)

(assert (= bs!1110221 d!1503234))

(declare-fun m!5656645 () Bool)

(assert (=> bs!1110221 m!5656645))

(assert (=> b!4721548 d!1503234))

(declare-fun d!1503236 () Bool)

(declare-fun e!2944863 () Bool)

(assert (=> d!1503236 e!2944863))

(declare-fun res!1997599 () Bool)

(assert (=> d!1503236 (=> res!1997599 e!2944863)))

(declare-fun e!2944859 () Bool)

(assert (=> d!1503236 (= res!1997599 e!2944859)))

(declare-fun res!1997600 () Bool)

(assert (=> d!1503236 (=> (not res!1997600) (not e!2944859))))

(declare-fun lt!1887100 () Bool)

(assert (=> d!1503236 (= res!1997600 (not lt!1887100))))

(declare-fun lt!1887103 () Bool)

(assert (=> d!1503236 (= lt!1887100 lt!1887103)))

(declare-fun lt!1887099 () Unit!129750)

(declare-fun e!2944864 () Unit!129750)

(assert (=> d!1503236 (= lt!1887099 e!2944864)))

(declare-fun c!806407 () Bool)

(assert (=> d!1503236 (= c!806407 lt!1887103)))

(assert (=> d!1503236 (= lt!1887103 (containsKey!3367 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34))))))

(assert (=> d!1503236 (= (contains!16168 lt!1886645 (_1!30515 (h!59169 oldBucket!34))) lt!1887100)))

(declare-fun b!4721922 () Bool)

(declare-fun e!2944861 () List!52951)

(assert (=> b!4721922 (= e!2944861 (keys!18970 lt!1886645))))

(declare-fun b!4721923 () Bool)

(declare-fun lt!1887105 () Unit!129750)

(assert (=> b!4721923 (= e!2944864 lt!1887105)))

(declare-fun lt!1887106 () Unit!129750)

(assert (=> b!4721923 (= lt!1887106 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34))))))

(assert (=> b!4721923 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun lt!1887104 () Unit!129750)

(assert (=> b!4721923 (= lt!1887104 lt!1887106)))

(assert (=> b!4721923 (= lt!1887105 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun call!330230 () Bool)

(assert (=> b!4721923 call!330230))

(declare-fun b!4721924 () Bool)

(declare-fun e!2944862 () Unit!129750)

(assert (=> b!4721924 (= e!2944864 e!2944862)))

(declare-fun c!806406 () Bool)

(assert (=> b!4721924 (= c!806406 call!330230)))

(declare-fun b!4721925 () Bool)

(declare-fun e!2944860 () Bool)

(assert (=> b!4721925 (= e!2944863 e!2944860)))

(declare-fun res!1997598 () Bool)

(assert (=> b!4721925 (=> (not res!1997598) (not e!2944860))))

(assert (=> b!4721925 (= res!1997598 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721926 () Bool)

(assert (=> b!4721926 (= e!2944861 (getKeysList!949 (toList!5913 lt!1886645)))))

(declare-fun b!4721927 () Bool)

(declare-fun Unit!129971 () Unit!129750)

(assert (=> b!4721927 (= e!2944862 Unit!129971)))

(declare-fun b!4721928 () Bool)

(assert (=> b!4721928 (= e!2944859 (not (contains!16171 (keys!18970 lt!1886645) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun b!4721929 () Bool)

(assert (=> b!4721929 false))

(declare-fun lt!1887102 () Unit!129750)

(declare-fun lt!1887101 () Unit!129750)

(assert (=> b!4721929 (= lt!1887102 lt!1887101)))

(assert (=> b!4721929 (containsKey!3367 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34)))))

(assert (=> b!4721929 (= lt!1887101 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886645) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun Unit!129972 () Unit!129750)

(assert (=> b!4721929 (= e!2944862 Unit!129972)))

(declare-fun b!4721930 () Bool)

(assert (=> b!4721930 (= e!2944860 (contains!16171 (keys!18970 lt!1886645) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun bm!330225 () Bool)

(assert (=> bm!330225 (= call!330230 (contains!16171 e!2944861 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun c!806408 () Bool)

(assert (=> bm!330225 (= c!806408 c!806407)))

(assert (= (and d!1503236 c!806407) b!4721923))

(assert (= (and d!1503236 (not c!806407)) b!4721924))

(assert (= (and b!4721924 c!806406) b!4721929))

(assert (= (and b!4721924 (not c!806406)) b!4721927))

(assert (= (or b!4721923 b!4721924) bm!330225))

(assert (= (and bm!330225 c!806408) b!4721926))

(assert (= (and bm!330225 (not c!806408)) b!4721922))

(assert (= (and d!1503236 res!1997600) b!4721928))

(assert (= (and d!1503236 (not res!1997599)) b!4721925))

(assert (= (and b!4721925 res!1997598) b!4721930))

(declare-fun m!5656647 () Bool)

(assert (=> bm!330225 m!5656647))

(assert (=> b!4721925 m!5655641))

(assert (=> b!4721925 m!5655641))

(declare-fun m!5656649 () Bool)

(assert (=> b!4721925 m!5656649))

(declare-fun m!5656651 () Bool)

(assert (=> d!1503236 m!5656651))

(declare-fun m!5656653 () Bool)

(assert (=> b!4721922 m!5656653))

(declare-fun m!5656655 () Bool)

(assert (=> b!4721923 m!5656655))

(assert (=> b!4721923 m!5655641))

(assert (=> b!4721923 m!5655641))

(assert (=> b!4721923 m!5656649))

(declare-fun m!5656657 () Bool)

(assert (=> b!4721923 m!5656657))

(assert (=> b!4721930 m!5656653))

(assert (=> b!4721930 m!5656653))

(declare-fun m!5656659 () Bool)

(assert (=> b!4721930 m!5656659))

(assert (=> b!4721928 m!5656653))

(assert (=> b!4721928 m!5656653))

(assert (=> b!4721928 m!5656659))

(declare-fun m!5656661 () Bool)

(assert (=> b!4721926 m!5656661))

(assert (=> b!4721929 m!5656651))

(declare-fun m!5656663 () Bool)

(assert (=> b!4721929 m!5656663))

(assert (=> d!1502970 d!1503236))

(declare-fun b!4721933 () Bool)

(declare-fun e!2944866 () Option!12356)

(assert (=> b!4721933 (= e!2944866 (getValueByKey!1952 (t!360210 lt!1886647) (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun b!4721931 () Bool)

(declare-fun e!2944865 () Option!12356)

(assert (=> b!4721931 (= e!2944865 (Some!12355 (_2!30515 (h!59169 lt!1886647))))))

(declare-fun b!4721932 () Bool)

(assert (=> b!4721932 (= e!2944865 e!2944866)))

(declare-fun c!806410 () Bool)

(assert (=> b!4721932 (= c!806410 (and ((_ is Cons!52824) lt!1886647) (not (= (_1!30515 (h!59169 lt!1886647)) (_1!30515 (h!59169 oldBucket!34))))))))

(declare-fun d!1503238 () Bool)

(declare-fun c!806409 () Bool)

(assert (=> d!1503238 (= c!806409 (and ((_ is Cons!52824) lt!1886647) (= (_1!30515 (h!59169 lt!1886647)) (_1!30515 (h!59169 oldBucket!34)))))))

(assert (=> d!1503238 (= (getValueByKey!1952 lt!1886647 (_1!30515 (h!59169 oldBucket!34))) e!2944865)))

(declare-fun b!4721934 () Bool)

(assert (=> b!4721934 (= e!2944866 None!12355)))

(assert (= (and d!1503238 c!806409) b!4721931))

(assert (= (and d!1503238 (not c!806409)) b!4721932))

(assert (= (and b!4721932 c!806410) b!4721933))

(assert (= (and b!4721932 (not c!806410)) b!4721934))

(declare-fun m!5656665 () Bool)

(assert (=> b!4721933 m!5656665))

(assert (=> d!1502970 d!1503238))

(declare-fun d!1503240 () Bool)

(assert (=> d!1503240 (= (getValueByKey!1952 lt!1886647 (_1!30515 (h!59169 oldBucket!34))) (Some!12355 (_2!30515 (h!59169 oldBucket!34))))))

(declare-fun lt!1887107 () Unit!129750)

(assert (=> d!1503240 (= lt!1887107 (choose!33314 lt!1886647 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(declare-fun e!2944867 () Bool)

(assert (=> d!1503240 e!2944867))

(declare-fun res!1997601 () Bool)

(assert (=> d!1503240 (=> (not res!1997601) (not e!2944867))))

(assert (=> d!1503240 (= res!1997601 (invariantList!1509 lt!1886647))))

(assert (=> d!1503240 (= (lemmaContainsTupThenGetReturnValue!1083 lt!1886647 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))) lt!1887107)))

(declare-fun b!4721935 () Bool)

(declare-fun res!1997602 () Bool)

(assert (=> b!4721935 (=> (not res!1997602) (not e!2944867))))

(assert (=> b!4721935 (= res!1997602 (containsKey!3367 lt!1886647 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun b!4721936 () Bool)

(assert (=> b!4721936 (= e!2944867 (contains!16169 lt!1886647 (tuple2!54443 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34)))))))

(assert (= (and d!1503240 res!1997601) b!4721935))

(assert (= (and b!4721935 res!1997602) b!4721936))

(assert (=> d!1503240 m!5655635))

(declare-fun m!5656667 () Bool)

(assert (=> d!1503240 m!5656667))

(declare-fun m!5656669 () Bool)

(assert (=> d!1503240 m!5656669))

(declare-fun m!5656671 () Bool)

(assert (=> b!4721935 m!5656671))

(declare-fun m!5656673 () Bool)

(assert (=> b!4721936 m!5656673))

(assert (=> d!1502970 d!1503240))

(declare-fun b!4721937 () Bool)

(declare-fun e!2944870 () List!52948)

(declare-fun call!330232 () List!52948)

(assert (=> b!4721937 (= e!2944870 call!330232)))

(declare-fun b!4721938 () Bool)

(declare-fun e!2944869 () List!52948)

(declare-fun call!330233 () List!52948)

(assert (=> b!4721938 (= e!2944869 call!330233)))

(declare-fun b!4721939 () Bool)

(assert (=> b!4721939 false))

(declare-fun lt!1887114 () Unit!129750)

(declare-fun lt!1887116 () Unit!129750)

(assert (=> b!4721939 (= lt!1887114 lt!1887116)))

(assert (=> b!4721939 (containsKey!3367 (t!360210 (toList!5913 lt!1886431)) (_1!30515 (h!59169 (toList!5913 lt!1886431))))))

(assert (=> b!4721939 (= lt!1887116 (lemmaInGetKeysListThenContainsKey!948 (t!360210 (toList!5913 lt!1886431)) (_1!30515 (h!59169 (toList!5913 lt!1886431)))))))

(declare-fun lt!1887110 () Unit!129750)

(declare-fun lt!1887117 () Unit!129750)

(assert (=> b!4721939 (= lt!1887110 lt!1887117)))

(declare-fun call!330231 () List!52951)

(assert (=> b!4721939 (contains!16171 call!330231 (_1!30515 (h!59169 (toList!5913 lt!1886431))))))

(declare-fun lt!1887108 () List!52948)

(assert (=> b!4721939 (= lt!1887117 (lemmaInListThenGetKeysListContains!944 lt!1887108 (_1!30515 (h!59169 (toList!5913 lt!1886431)))))))

(assert (=> b!4721939 (= lt!1887108 (insertNoDuplicatedKeys!591 (t!360210 (toList!5913 lt!1886431)) (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(declare-fun e!2944868 () Unit!129750)

(declare-fun Unit!129973 () Unit!129750)

(assert (=> b!4721939 (= e!2944868 Unit!129973)))

(declare-fun b!4721940 () Bool)

(declare-fun c!806414 () Bool)

(assert (=> b!4721940 (= c!806414 ((_ is Cons!52824) (toList!5913 lt!1886431)))))

(assert (=> b!4721940 (= e!2944869 e!2944870)))

(declare-fun b!4721941 () Bool)

(declare-fun res!1997606 () Bool)

(declare-fun e!2944872 () Bool)

(assert (=> b!4721941 (=> (not res!1997606) (not e!2944872))))

(declare-fun lt!1887111 () List!52948)

(assert (=> b!4721941 (= res!1997606 (contains!16169 lt!1887111 (tuple2!54443 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34)))))))

(declare-fun d!1503242 () Bool)

(assert (=> d!1503242 e!2944872))

(declare-fun res!1997604 () Bool)

(assert (=> d!1503242 (=> (not res!1997604) (not e!2944872))))

(assert (=> d!1503242 (= res!1997604 (invariantList!1509 lt!1887111))))

(declare-fun e!2944873 () List!52948)

(assert (=> d!1503242 (= lt!1887111 e!2944873)))

(declare-fun c!806415 () Bool)

(assert (=> d!1503242 (= c!806415 (and ((_ is Cons!52824) (toList!5913 lt!1886431)) (= (_1!30515 (h!59169 (toList!5913 lt!1886431))) (_1!30515 (h!59169 oldBucket!34)))))))

(assert (=> d!1503242 (invariantList!1509 (toList!5913 lt!1886431))))

(assert (=> d!1503242 (= (insertNoDuplicatedKeys!591 (toList!5913 lt!1886431) (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))) lt!1887111)))

(declare-fun b!4721942 () Bool)

(declare-fun Unit!129974 () Unit!129750)

(assert (=> b!4721942 (= e!2944868 Unit!129974)))

(declare-fun b!4721943 () Bool)

(assert (=> b!4721943 (= e!2944873 e!2944869)))

(declare-fun res!1997605 () Bool)

(assert (=> b!4721943 (= res!1997605 ((_ is Cons!52824) (toList!5913 lt!1886431)))))

(declare-fun e!2944874 () Bool)

(assert (=> b!4721943 (=> (not res!1997605) (not e!2944874))))

(declare-fun c!806412 () Bool)

(assert (=> b!4721943 (= c!806412 e!2944874)))

(declare-fun bm!330226 () Bool)

(assert (=> bm!330226 (= call!330232 call!330233)))

(declare-fun c!806413 () Bool)

(assert (=> bm!330226 (= c!806413 c!806414)))

(declare-fun b!4721944 () Bool)

(assert (=> b!4721944 (= e!2944872 (= (content!9392 (getKeysList!949 lt!1887111)) ((_ map or) (content!9392 (getKeysList!949 (toList!5913 lt!1886431))) (store ((as const (Array K!14180 Bool)) false) (_1!30515 (h!59169 oldBucket!34)) true))))))

(declare-fun b!4721945 () Bool)

(declare-fun call!330234 () List!52948)

(assert (=> b!4721945 (= e!2944873 call!330234)))

(declare-fun lt!1887118 () List!52951)

(assert (=> b!4721945 (= lt!1887118 call!330231)))

(declare-fun lt!1887113 () Unit!129750)

(assert (=> b!4721945 (= lt!1887113 (lemmaSubseqRefl!140 lt!1887118))))

(assert (=> b!4721945 (subseq!656 lt!1887118 lt!1887118)))

(declare-fun lt!1887115 () Unit!129750)

(assert (=> b!4721945 (= lt!1887115 lt!1887113)))

(declare-fun e!2944871 () List!52948)

(declare-fun bm!330227 () Bool)

(assert (=> bm!330227 (= call!330234 ($colon$colon!1075 (ite c!806415 (t!360210 (toList!5913 lt!1886431)) (ite c!806412 (toList!5913 lt!1886431) e!2944871)) (ite (or c!806415 c!806412) (tuple2!54443 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))) (ite c!806414 (h!59169 (toList!5913 lt!1886431)) (tuple2!54443 (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34)))))))))

(declare-fun bm!330228 () Bool)

(assert (=> bm!330228 (= call!330231 (getKeysList!949 (ite c!806415 (toList!5913 lt!1886431) lt!1887108)))))

(declare-fun b!4721946 () Bool)

(declare-fun res!1997603 () Bool)

(assert (=> b!4721946 (=> (not res!1997603) (not e!2944872))))

(assert (=> b!4721946 (= res!1997603 (containsKey!3367 lt!1887111 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun b!4721947 () Bool)

(assert (=> b!4721947 (= e!2944871 (insertNoDuplicatedKeys!591 (t!360210 (toList!5913 lt!1886431)) (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))))))

(declare-fun b!4721948 () Bool)

(assert (=> b!4721948 (= e!2944874 (not (containsKey!3367 (toList!5913 lt!1886431) (_1!30515 (h!59169 oldBucket!34)))))))

(declare-fun bm!330229 () Bool)

(assert (=> bm!330229 (= call!330233 call!330234)))

(declare-fun b!4721949 () Bool)

(declare-fun lt!1887109 () List!52948)

(assert (=> b!4721949 (= e!2944870 lt!1887109)))

(assert (=> b!4721949 (= lt!1887109 call!330232)))

(declare-fun c!806411 () Bool)

(assert (=> b!4721949 (= c!806411 (containsKey!3367 (insertNoDuplicatedKeys!591 (t!360210 (toList!5913 lt!1886431)) (_1!30515 (h!59169 oldBucket!34)) (_2!30515 (h!59169 oldBucket!34))) (_1!30515 (h!59169 (toList!5913 lt!1886431)))))))

(declare-fun lt!1887112 () Unit!129750)

(assert (=> b!4721949 (= lt!1887112 e!2944868)))

(declare-fun b!4721950 () Bool)

(assert (=> b!4721950 (= e!2944871 Nil!52824)))

(assert (= (and d!1503242 c!806415) b!4721945))

(assert (= (and d!1503242 (not c!806415)) b!4721943))

(assert (= (and b!4721943 res!1997605) b!4721948))

(assert (= (and b!4721943 c!806412) b!4721938))

(assert (= (and b!4721943 (not c!806412)) b!4721940))

(assert (= (and b!4721940 c!806414) b!4721949))

(assert (= (and b!4721940 (not c!806414)) b!4721937))

(assert (= (and b!4721949 c!806411) b!4721939))

(assert (= (and b!4721949 (not c!806411)) b!4721942))

(assert (= (or b!4721949 b!4721937) bm!330226))

(assert (= (and bm!330226 c!806413) b!4721947))

(assert (= (and bm!330226 (not c!806413)) b!4721950))

(assert (= (or b!4721938 bm!330226) bm!330229))

(assert (= (or b!4721945 b!4721939) bm!330228))

(assert (= (or b!4721945 bm!330229) bm!330227))

(assert (= (and d!1503242 res!1997604) b!4721946))

(assert (= (and b!4721946 res!1997603) b!4721941))

(assert (= (and b!4721941 res!1997606) b!4721944))

(declare-fun m!5656675 () Bool)

(assert (=> b!4721949 m!5656675))

(assert (=> b!4721949 m!5656675))

(declare-fun m!5656677 () Bool)

(assert (=> b!4721949 m!5656677))

(assert (=> b!4721947 m!5656675))

(declare-fun m!5656679 () Bool)

(assert (=> b!4721946 m!5656679))

(declare-fun m!5656681 () Bool)

(assert (=> bm!330227 m!5656681))

(declare-fun m!5656683 () Bool)

(assert (=> b!4721948 m!5656683))

(declare-fun m!5656685 () Bool)

(assert (=> d!1503242 m!5656685))

(assert (=> d!1503242 m!5656425))

(declare-fun m!5656687 () Bool)

(assert (=> bm!330228 m!5656687))

(declare-fun m!5656689 () Bool)

(assert (=> b!4721941 m!5656689))

(declare-fun m!5656691 () Bool)

(assert (=> b!4721945 m!5656691))

(declare-fun m!5656693 () Bool)

(assert (=> b!4721945 m!5656693))

(assert (=> b!4721939 m!5656675))

(declare-fun m!5656695 () Bool)

(assert (=> b!4721939 m!5656695))

(assert (=> b!4721939 m!5656437))

(declare-fun m!5656697 () Bool)

(assert (=> b!4721939 m!5656697))

(assert (=> b!4721939 m!5656441))

(assert (=> b!4721944 m!5656443))

(declare-fun m!5656699 () Bool)

(assert (=> b!4721944 m!5656699))

(declare-fun m!5656701 () Bool)

(assert (=> b!4721944 m!5656701))

(declare-fun m!5656703 () Bool)

(assert (=> b!4721944 m!5656703))

(assert (=> b!4721944 m!5656443))

(assert (=> b!4721944 m!5656451))

(assert (=> b!4721944 m!5656699))

(assert (=> d!1502970 d!1503242))

(declare-fun d!1503244 () Bool)

(declare-fun res!1997607 () Bool)

(declare-fun e!2944875 () Bool)

(assert (=> d!1503244 (=> res!1997607 e!2944875)))

(assert (=> d!1503244 (= res!1997607 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503244 (= (forall!11584 (toList!5913 lt!1886424) lambda!215346) e!2944875)))

(declare-fun b!4721951 () Bool)

(declare-fun e!2944876 () Bool)

(assert (=> b!4721951 (= e!2944875 e!2944876)))

(declare-fun res!1997608 () Bool)

(assert (=> b!4721951 (=> (not res!1997608) (not e!2944876))))

(assert (=> b!4721951 (= res!1997608 (dynLambda!21817 lambda!215346 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4721952 () Bool)

(assert (=> b!4721952 (= e!2944876 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215346))))

(assert (= (and d!1503244 (not res!1997607)) b!4721951))

(assert (= (and b!4721951 res!1997608) b!4721952))

(declare-fun b_lambda!178407 () Bool)

(assert (=> (not b_lambda!178407) (not b!4721951)))

(declare-fun m!5656705 () Bool)

(assert (=> b!4721951 m!5656705))

(declare-fun m!5656707 () Bool)

(assert (=> b!4721952 m!5656707))

(assert (=> b!4721426 d!1503244))

(declare-fun d!1503246 () Bool)

(assert (=> d!1503246 (= (invariantList!1509 (toList!5913 lt!1886802)) (noDuplicatedKeys!372 (toList!5913 lt!1886802)))))

(declare-fun bs!1110238 () Bool)

(assert (= bs!1110238 d!1503246))

(declare-fun m!5656709 () Bool)

(assert (=> bs!1110238 m!5656709))

(assert (=> d!1503026 d!1503246))

(declare-fun d!1503248 () Bool)

(declare-fun res!1997609 () Bool)

(declare-fun e!2944877 () Bool)

(assert (=> d!1503248 (=> res!1997609 e!2944877)))

(assert (=> d!1503248 (= res!1997609 ((_ is Nil!52825) (t!360211 (toList!5914 lm!2023))))))

(assert (=> d!1503248 (= (forall!11582 (t!360211 (toList!5914 lm!2023)) lambda!215390) e!2944877)))

(declare-fun b!4721953 () Bool)

(declare-fun e!2944878 () Bool)

(assert (=> b!4721953 (= e!2944877 e!2944878)))

(declare-fun res!1997610 () Bool)

(assert (=> b!4721953 (=> (not res!1997610) (not e!2944878))))

(assert (=> b!4721953 (= res!1997610 (dynLambda!21815 lambda!215390 (h!59170 (t!360211 (toList!5914 lm!2023)))))))

(declare-fun b!4721954 () Bool)

(assert (=> b!4721954 (= e!2944878 (forall!11582 (t!360211 (t!360211 (toList!5914 lm!2023))) lambda!215390))))

(assert (= (and d!1503248 (not res!1997609)) b!4721953))

(assert (= (and b!4721953 res!1997610) b!4721954))

(declare-fun b_lambda!178409 () Bool)

(assert (=> (not b_lambda!178409) (not b!4721953)))

(declare-fun m!5656711 () Bool)

(assert (=> b!4721953 m!5656711))

(declare-fun m!5656713 () Bool)

(assert (=> b!4721954 m!5656713))

(assert (=> d!1503026 d!1503248))

(declare-fun d!1503250 () Bool)

(declare-fun res!1997611 () Bool)

(declare-fun e!2944879 () Bool)

(assert (=> d!1503250 (=> res!1997611 e!2944879)))

(assert (=> d!1503250 (= res!1997611 ((_ is Nil!52824) newBucket!218))))

(assert (=> d!1503250 (= (forall!11584 newBucket!218 lambda!215378) e!2944879)))

(declare-fun b!4721955 () Bool)

(declare-fun e!2944880 () Bool)

(assert (=> b!4721955 (= e!2944879 e!2944880)))

(declare-fun res!1997612 () Bool)

(assert (=> b!4721955 (=> (not res!1997612) (not e!2944880))))

(assert (=> b!4721955 (= res!1997612 (dynLambda!21817 lambda!215378 (h!59169 newBucket!218)))))

(declare-fun b!4721956 () Bool)

(assert (=> b!4721956 (= e!2944880 (forall!11584 (t!360210 newBucket!218) lambda!215378))))

(assert (= (and d!1503250 (not res!1997611)) b!4721955))

(assert (= (and b!4721955 res!1997612) b!4721956))

(declare-fun b_lambda!178411 () Bool)

(assert (=> (not b_lambda!178411) (not b!4721955)))

(declare-fun m!5656715 () Bool)

(assert (=> b!4721955 m!5656715))

(declare-fun m!5656717 () Bool)

(assert (=> b!4721956 m!5656717))

(assert (=> d!1503008 d!1503250))

(assert (=> d!1503008 d!1502934))

(declare-fun d!1503252 () Bool)

(declare-fun res!1997613 () Bool)

(declare-fun e!2944881 () Bool)

(assert (=> d!1503252 (=> res!1997613 e!2944881)))

(assert (=> d!1503252 (= res!1997613 (not ((_ is Cons!52824) (_2!30516 (h!59170 lt!1886426)))))))

(assert (=> d!1503252 (= (noDuplicateKeys!2012 (_2!30516 (h!59170 lt!1886426))) e!2944881)))

(declare-fun b!4721957 () Bool)

(declare-fun e!2944882 () Bool)

(assert (=> b!4721957 (= e!2944881 e!2944882)))

(declare-fun res!1997614 () Bool)

(assert (=> b!4721957 (=> (not res!1997614) (not e!2944882))))

(assert (=> b!4721957 (= res!1997614 (not (containsKey!3365 (t!360210 (_2!30516 (h!59170 lt!1886426))) (_1!30515 (h!59169 (_2!30516 (h!59170 lt!1886426)))))))))

(declare-fun b!4721958 () Bool)

(assert (=> b!4721958 (= e!2944882 (noDuplicateKeys!2012 (t!360210 (_2!30516 (h!59170 lt!1886426)))))))

(assert (= (and d!1503252 (not res!1997613)) b!4721957))

(assert (= (and b!4721957 res!1997614) b!4721958))

(declare-fun m!5656719 () Bool)

(assert (=> b!4721957 m!5656719))

(declare-fun m!5656721 () Bool)

(assert (=> b!4721958 m!5656721))

(assert (=> bs!1109771 d!1503252))

(declare-fun d!1503254 () Bool)

(declare-fun res!1997615 () Bool)

(declare-fun e!2944883 () Bool)

(assert (=> d!1503254 (=> res!1997615 e!2944883)))

(assert (=> d!1503254 (= res!1997615 (and ((_ is Cons!52824) (t!360210 oldBucket!34)) (= (_1!30515 (h!59169 (t!360210 oldBucket!34))) (_1!30515 (h!59169 oldBucket!34)))))))

(assert (=> d!1503254 (= (containsKey!3365 (t!360210 oldBucket!34) (_1!30515 (h!59169 oldBucket!34))) e!2944883)))

(declare-fun b!4721959 () Bool)

(declare-fun e!2944884 () Bool)

(assert (=> b!4721959 (= e!2944883 e!2944884)))

(declare-fun res!1997616 () Bool)

(assert (=> b!4721959 (=> (not res!1997616) (not e!2944884))))

(assert (=> b!4721959 (= res!1997616 ((_ is Cons!52824) (t!360210 oldBucket!34)))))

(declare-fun b!4721960 () Bool)

(assert (=> b!4721960 (= e!2944884 (containsKey!3365 (t!360210 (t!360210 oldBucket!34)) (_1!30515 (h!59169 oldBucket!34))))))

(assert (= (and d!1503254 (not res!1997615)) b!4721959))

(assert (= (and b!4721959 res!1997616) b!4721960))

(declare-fun m!5656723 () Bool)

(assert (=> b!4721960 m!5656723))

(assert (=> b!4721338 d!1503254))

(declare-fun d!1503256 () Bool)

(assert (=> d!1503256 (= (invariantList!1509 (toList!5913 lt!1886828)) (noDuplicatedKeys!372 (toList!5913 lt!1886828)))))

(declare-fun bs!1110243 () Bool)

(assert (= bs!1110243 d!1503256))

(declare-fun m!5656725 () Bool)

(assert (=> bs!1110243 m!5656725))

(assert (=> d!1503042 d!1503256))

(declare-fun d!1503258 () Bool)

(declare-fun res!1997617 () Bool)

(declare-fun e!2944885 () Bool)

(assert (=> d!1503258 (=> res!1997617 e!2944885)))

(assert (=> d!1503258 (= res!1997617 ((_ is Nil!52825) (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))

(assert (=> d!1503258 (= (forall!11582 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))) lambda!215400) e!2944885)))

(declare-fun b!4721961 () Bool)

(declare-fun e!2944886 () Bool)

(assert (=> b!4721961 (= e!2944885 e!2944886)))

(declare-fun res!1997618 () Bool)

(assert (=> b!4721961 (=> (not res!1997618) (not e!2944886))))

(assert (=> b!4721961 (= res!1997618 (dynLambda!21815 lambda!215400 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))

(declare-fun b!4721962 () Bool)

(assert (=> b!4721962 (= e!2944886 (forall!11582 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))) lambda!215400))))

(assert (= (and d!1503258 (not res!1997617)) b!4721961))

(assert (= (and b!4721961 res!1997618) b!4721962))

(declare-fun b_lambda!178413 () Bool)

(assert (=> (not b_lambda!178413) (not b!4721961)))

(declare-fun m!5656727 () Bool)

(assert (=> b!4721961 m!5656727))

(declare-fun m!5656729 () Bool)

(assert (=> b!4721962 m!5656729))

(assert (=> d!1503042 d!1503258))

(declare-fun d!1503260 () Bool)

(declare-fun lt!1887119 () Bool)

(assert (=> d!1503260 (= lt!1887119 (select (content!9392 (keys!18970 lt!1886427)) key!4653))))

(declare-fun e!2944888 () Bool)

(assert (=> d!1503260 (= lt!1887119 e!2944888)))

(declare-fun res!1997620 () Bool)

(assert (=> d!1503260 (=> (not res!1997620) (not e!2944888))))

(assert (=> d!1503260 (= res!1997620 ((_ is Cons!52827) (keys!18970 lt!1886427)))))

(assert (=> d!1503260 (= (contains!16171 (keys!18970 lt!1886427) key!4653) lt!1887119)))

(declare-fun b!4721963 () Bool)

(declare-fun e!2944887 () Bool)

(assert (=> b!4721963 (= e!2944888 e!2944887)))

(declare-fun res!1997619 () Bool)

(assert (=> b!4721963 (=> res!1997619 e!2944887)))

(assert (=> b!4721963 (= res!1997619 (= (h!59174 (keys!18970 lt!1886427)) key!4653))))

(declare-fun b!4721964 () Bool)

(assert (=> b!4721964 (= e!2944887 (contains!16171 (t!360215 (keys!18970 lt!1886427)) key!4653))))

(assert (= (and d!1503260 res!1997620) b!4721963))

(assert (= (and b!4721963 (not res!1997619)) b!4721964))

(assert (=> d!1503260 m!5655709))

(declare-fun m!5656731 () Bool)

(assert (=> d!1503260 m!5656731))

(declare-fun m!5656733 () Bool)

(assert (=> d!1503260 m!5656733))

(declare-fun m!5656735 () Bool)

(assert (=> b!4721964 m!5656735))

(assert (=> b!4721492 d!1503260))

(declare-fun bs!1110246 () Bool)

(declare-fun b!4721976 () Bool)

(assert (= bs!1110246 (and b!4721976 b!4721906)))

(declare-fun lambda!215455 () Int)

(assert (=> bs!1110246 (= (= (toList!5913 lt!1886427) (t!360210 (toList!5913 lt!1886427))) (= lambda!215455 lambda!215445))))

(declare-fun bs!1110247 () Bool)

(assert (= bs!1110247 (and b!4721976 b!4721910)))

(assert (=> bs!1110247 (= (= (toList!5913 lt!1886427) (Cons!52824 (h!59169 (toList!5913 lt!1886427)) (t!360210 (toList!5913 lt!1886427)))) (= lambda!215455 lambda!215446))))

(declare-fun bs!1110248 () Bool)

(assert (= bs!1110248 (and b!4721976 b!4721905)))

(assert (=> bs!1110248 (= lambda!215455 lambda!215447)))

(assert (=> b!4721976 true))

(declare-fun bs!1110249 () Bool)

(declare-fun b!4721977 () Bool)

(assert (= bs!1110249 (and b!4721977 b!4721907)))

(declare-fun lambda!215456 () Int)

(assert (=> bs!1110249 (= lambda!215456 lambda!215448)))

(declare-fun d!1503262 () Bool)

(declare-fun e!2944893 () Bool)

(assert (=> d!1503262 e!2944893))

(declare-fun res!1997627 () Bool)

(assert (=> d!1503262 (=> (not res!1997627) (not e!2944893))))

(declare-fun lt!1887123 () List!52951)

(assert (=> d!1503262 (= res!1997627 (noDuplicate!858 lt!1887123))))

(assert (=> d!1503262 (= lt!1887123 (getKeysList!949 (toList!5913 lt!1886427)))))

(assert (=> d!1503262 (= (keys!18970 lt!1886427) lt!1887123)))

(declare-fun b!4721975 () Bool)

(declare-fun res!1997628 () Bool)

(assert (=> b!4721975 (=> (not res!1997628) (not e!2944893))))

(assert (=> b!4721975 (= res!1997628 (= (length!572 lt!1887123) (length!573 (toList!5913 lt!1886427))))))

(declare-fun res!1997629 () Bool)

(assert (=> b!4721976 (=> (not res!1997629) (not e!2944893))))

(assert (=> b!4721976 (= res!1997629 (forall!11585 lt!1887123 lambda!215455))))

(assert (=> b!4721977 (= e!2944893 (= (content!9392 lt!1887123) (content!9392 (map!11677 (toList!5913 lt!1886427) lambda!215456))))))

(assert (= (and d!1503262 res!1997627) b!4721975))

(assert (= (and b!4721975 res!1997628) b!4721976))

(assert (= (and b!4721976 res!1997629) b!4721977))

(declare-fun m!5656785 () Bool)

(assert (=> d!1503262 m!5656785))

(assert (=> d!1503262 m!5655717))

(declare-fun m!5656787 () Bool)

(assert (=> b!4721975 m!5656787))

(assert (=> b!4721975 m!5656607))

(declare-fun m!5656789 () Bool)

(assert (=> b!4721976 m!5656789))

(declare-fun m!5656791 () Bool)

(assert (=> b!4721977 m!5656791))

(declare-fun m!5656793 () Bool)

(assert (=> b!4721977 m!5656793))

(assert (=> b!4721977 m!5656793))

(declare-fun m!5656795 () Bool)

(assert (=> b!4721977 m!5656795))

(assert (=> b!4721492 d!1503262))

(assert (=> b!4721494 d!1503260))

(assert (=> b!4721494 d!1503262))

(declare-fun d!1503276 () Bool)

(assert (=> d!1503276 (= (invariantList!1509 (toList!5913 lt!1886726)) (noDuplicatedKeys!372 (toList!5913 lt!1886726)))))

(declare-fun bs!1110251 () Bool)

(assert (= bs!1110251 d!1503276))

(declare-fun m!5656799 () Bool)

(assert (=> bs!1110251 m!5656799))

(assert (=> b!4721534 d!1503276))

(declare-fun d!1503280 () Bool)

(declare-fun res!1997635 () Bool)

(declare-fun e!2944899 () Bool)

(assert (=> d!1503280 (=> res!1997635 e!2944899)))

(assert (=> d!1503280 (= res!1997635 ((_ is Nil!52824) (toList!5913 lt!1886605)))))

(assert (=> d!1503280 (= (forall!11584 (toList!5913 lt!1886605) lambda!215345) e!2944899)))

(declare-fun b!4721986 () Bool)

(declare-fun e!2944901 () Bool)

(assert (=> b!4721986 (= e!2944899 e!2944901)))

(declare-fun res!1997637 () Bool)

(assert (=> b!4721986 (=> (not res!1997637) (not e!2944901))))

(assert (=> b!4721986 (= res!1997637 (dynLambda!21817 lambda!215345 (h!59169 (toList!5913 lt!1886605))))))

(declare-fun b!4721987 () Bool)

(assert (=> b!4721987 (= e!2944901 (forall!11584 (t!360210 (toList!5913 lt!1886605)) lambda!215345))))

(assert (= (and d!1503280 (not res!1997635)) b!4721986))

(assert (= (and b!4721986 res!1997637) b!4721987))

(declare-fun b_lambda!178415 () Bool)

(assert (=> (not b_lambda!178415) (not b!4721986)))

(declare-fun m!5656801 () Bool)

(assert (=> b!4721986 m!5656801))

(declare-fun m!5656803 () Bool)

(assert (=> b!4721987 m!5656803))

(assert (=> b!4721423 d!1503280))

(declare-fun bs!1110252 () Bool)

(declare-fun d!1503282 () Bool)

(assert (= bs!1110252 (and d!1503282 d!1503008)))

(declare-fun lambda!215457 () Int)

(assert (=> bs!1110252 (= (= lt!1886606 lt!1886726) (= lambda!215457 lambda!215378))))

(declare-fun bs!1110253 () Bool)

(assert (= bs!1110253 (and d!1503282 b!4721536)))

(assert (=> bs!1110253 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215379))))

(declare-fun bs!1110254 () Bool)

(assert (= bs!1110254 (and d!1503282 b!4721633)))

(assert (=> bs!1110254 (= (= lt!1886606 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215457 lambda!215403))))

(declare-fun bs!1110255 () Bool)

(assert (= bs!1110255 (and d!1503282 d!1503084)))

(assert (=> bs!1110255 (= (= lt!1886606 lt!1886730) (= lambda!215457 lambda!215411))))

(declare-fun bs!1110256 () Bool)

(assert (= bs!1110256 (and d!1503282 b!4721748)))

(assert (=> bs!1110256 (= (= lt!1886606 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215457 lambda!215421))))

(declare-fun bs!1110257 () Bool)

(assert (= bs!1110257 (and d!1503282 d!1502956)))

(assert (=> bs!1110257 (= (= lt!1886606 lt!1886602) (= lambda!215457 lambda!215346))))

(declare-fun bs!1110258 () Bool)

(assert (= bs!1110258 (and d!1503282 b!4721695)))

(assert (=> bs!1110258 (= (= lt!1886606 lt!1886897) (= lambda!215457 lambda!215414))))

(assert (=> bs!1110258 (= (= lt!1886606 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215457 lambda!215413))))

(declare-fun bs!1110259 () Bool)

(assert (= bs!1110259 (and d!1503282 b!4721545)))

(assert (=> bs!1110259 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215386))))

(declare-fun bs!1110260 () Bool)

(assert (= bs!1110260 (and d!1503282 d!1503020)))

(assert (=> bs!1110260 (not (= lambda!215457 lambda!215385))))

(declare-fun bs!1110261 () Bool)

(assert (= bs!1110261 (and d!1503282 b!4721696)))

(assert (=> bs!1110261 (= (= lt!1886606 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215457 lambda!215412))))

(declare-fun bs!1110262 () Bool)

(assert (= bs!1110262 (and d!1503282 b!4721632)))

(assert (=> bs!1110262 (= (= lt!1886606 lt!1886847) (= lambda!215457 lambda!215405))))

(declare-fun bs!1110263 () Bool)

(assert (= bs!1110263 (and d!1503282 d!1503162)))

(assert (=> bs!1110263 (= (= lt!1886606 lt!1886627) (= lambda!215457 lambda!215420))))

(declare-fun bs!1110264 () Bool)

(assert (= bs!1110264 (and d!1503282 b!4721430)))

(assert (=> bs!1110264 (= (= lt!1886606 lt!1886627) (= lambda!215457 lambda!215349))))

(declare-fun bs!1110265 () Bool)

(assert (= bs!1110265 (and d!1503282 b!4721843)))

(assert (=> bs!1110265 (= (= lt!1886606 lt!1887015) (= lambda!215457 lambda!215427))))

(declare-fun bs!1110266 () Bool)

(assert (= bs!1110266 (and d!1503282 b!4721530)))

(assert (=> bs!1110266 (= (= lt!1886606 lt!1886730) (= lambda!215457 lambda!215376))))

(declare-fun bs!1110267 () Bool)

(assert (= bs!1110267 (and d!1503282 b!4721423)))

(assert (=> bs!1110267 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215344))))

(declare-fun bs!1110268 () Bool)

(assert (= bs!1110268 (and d!1503282 d!1503200)))

(assert (=> bs!1110268 (= (= lt!1886606 lt!1887011) (= lambda!215457 lambda!215428))))

(declare-fun bs!1110269 () Bool)

(assert (= bs!1110269 (and d!1503282 b!4721535)))

(assert (=> bs!1110269 (= (= lt!1886606 lt!1886751) (= lambda!215457 lambda!215381))))

(assert (=> bs!1110264 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215348))))

(declare-fun bs!1110270 () Bool)

(assert (= bs!1110270 (and d!1503282 b!4721747)))

(assert (=> bs!1110270 (= (= lt!1886606 lt!1886947) (= lambda!215457 lambda!215423))))

(assert (=> bs!1110270 (= (= lt!1886606 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215457 lambda!215422))))

(assert (=> bs!1110269 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215380))))

(declare-fun bs!1110271 () Bool)

(assert (= bs!1110271 (and d!1503282 d!1503166)))

(assert (=> bs!1110271 (= (= lt!1886606 lt!1886943) (= lambda!215457 lambda!215424))))

(assert (=> bs!1110262 (= (= lt!1886606 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215457 lambda!215404))))

(declare-fun bs!1110272 () Bool)

(assert (= bs!1110272 (and d!1503282 d!1503132)))

(assert (=> bs!1110272 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215419))))

(assert (=> bs!1110265 (= (= lt!1886606 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215457 lambda!215426))))

(declare-fun bs!1110273 () Bool)

(assert (= bs!1110273 (and d!1503282 d!1503126)))

(assert (=> bs!1110273 (= (= lt!1886606 lt!1886893) (= lambda!215457 lambda!215415))))

(declare-fun bs!1110274 () Bool)

(assert (= bs!1110274 (and d!1503282 b!4721424)))

(assert (=> bs!1110274 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215343))))

(declare-fun bs!1110275 () Bool)

(assert (= bs!1110275 (and d!1503282 b!4721544)))

(assert (=> bs!1110275 (= (= lt!1886606 lt!1886775) (= lambda!215457 lambda!215388))))

(declare-fun bs!1110276 () Bool)

(assert (= bs!1110276 (and d!1503282 d!1503024)))

(assert (=> bs!1110276 (= (= lt!1886606 lt!1886771) (= lambda!215457 lambda!215389))))

(assert (=> bs!1110267 (= lambda!215457 lambda!215345)))

(assert (=> bs!1110266 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215375))))

(declare-fun bs!1110277 () Bool)

(assert (= bs!1110277 (and d!1503282 b!4721844)))

(assert (=> bs!1110277 (= (= lt!1886606 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215457 lambda!215425))))

(declare-fun bs!1110278 () Bool)

(assert (= bs!1110278 (and d!1503282 b!4721531)))

(assert (=> bs!1110278 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215373))))

(declare-fun bs!1110279 () Bool)

(assert (= bs!1110279 (and d!1503282 b!4721431)))

(assert (=> bs!1110279 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215347))))

(declare-fun bs!1110280 () Bool)

(assert (= bs!1110280 (and d!1503282 d!1502964)))

(assert (=> bs!1110280 (= (= lt!1886606 lt!1886623) (= lambda!215457 lambda!215352))))

(assert (=> bs!1110275 (= (= lt!1886606 lt!1886424) (= lambda!215457 lambda!215387))))

(declare-fun bs!1110281 () Bool)

(assert (= bs!1110281 (and d!1503282 d!1503014)))

(assert (=> bs!1110281 (= (= lt!1886606 lt!1886747) (= lambda!215457 lambda!215382))))

(declare-fun bs!1110282 () Bool)

(assert (= bs!1110282 (and d!1503282 d!1503040)))

(assert (=> bs!1110282 (not (= lambda!215457 lambda!215399))))

(declare-fun bs!1110283 () Bool)

(assert (= bs!1110283 (and d!1503282 d!1503082)))

(assert (=> bs!1110283 (= (= lt!1886606 lt!1886843) (= lambda!215457 lambda!215406))))

(assert (=> d!1503282 true))

(assert (=> d!1503282 (forall!11584 (toList!5913 lt!1886424) lambda!215457)))

(declare-fun lt!1887124 () Unit!129750)

(assert (=> d!1503282 (= lt!1887124 (choose!33307 lt!1886424 lt!1886606 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> d!1503282 (forall!11584 (toList!5913 (+!2267 lt!1886424 (tuple2!54443 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))) lambda!215457)))

(assert (=> d!1503282 (= (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886606 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lt!1887124)))

(declare-fun bs!1110284 () Bool)

(assert (= bs!1110284 d!1503282))

(declare-fun m!5656829 () Bool)

(assert (=> bs!1110284 m!5656829))

(declare-fun m!5656831 () Bool)

(assert (=> bs!1110284 m!5656831))

(declare-fun m!5656833 () Bool)

(assert (=> bs!1110284 m!5656833))

(declare-fun m!5656835 () Bool)

(assert (=> bs!1110284 m!5656835))

(assert (=> b!4721423 d!1503282))

(assert (=> b!4721423 d!1503108))

(declare-fun d!1503288 () Bool)

(declare-fun res!1997642 () Bool)

(declare-fun e!2944909 () Bool)

(assert (=> d!1503288 (=> res!1997642 e!2944909)))

(assert (=> d!1503288 (= res!1997642 ((_ is Nil!52824) (t!360210 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (=> d!1503288 (= (forall!11584 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) lambda!215345) e!2944909)))

(declare-fun b!4721998 () Bool)

(declare-fun e!2944910 () Bool)

(assert (=> b!4721998 (= e!2944909 e!2944910)))

(declare-fun res!1997643 () Bool)

(assert (=> b!4721998 (=> (not res!1997643) (not e!2944910))))

(assert (=> b!4721998 (= res!1997643 (dynLambda!21817 lambda!215345 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun b!4721999 () Bool)

(assert (=> b!4721999 (= e!2944910 (forall!11584 (t!360210 (t!360210 (Cons!52824 lt!1886429 lt!1886428))) lambda!215345))))

(assert (= (and d!1503288 (not res!1997642)) b!4721998))

(assert (= (and b!4721998 res!1997643) b!4721999))

(declare-fun b_lambda!178421 () Bool)

(assert (=> (not b_lambda!178421) (not b!4721998)))

(declare-fun m!5656841 () Bool)

(assert (=> b!4721998 m!5656841))

(declare-fun m!5656843 () Bool)

(assert (=> b!4721999 m!5656843))

(assert (=> b!4721423 d!1503288))

(declare-fun d!1503290 () Bool)

(declare-fun res!1997644 () Bool)

(declare-fun e!2944911 () Bool)

(assert (=> d!1503290 (=> res!1997644 e!2944911)))

(assert (=> d!1503290 (= res!1997644 ((_ is Nil!52824) (Cons!52824 lt!1886429 lt!1886428)))))

(assert (=> d!1503290 (= (forall!11584 (Cons!52824 lt!1886429 lt!1886428) lambda!215345) e!2944911)))

(declare-fun b!4722000 () Bool)

(declare-fun e!2944912 () Bool)

(assert (=> b!4722000 (= e!2944911 e!2944912)))

(declare-fun res!1997645 () Bool)

(assert (=> b!4722000 (=> (not res!1997645) (not e!2944912))))

(assert (=> b!4722000 (= res!1997645 (dynLambda!21817 lambda!215345 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(declare-fun b!4722001 () Bool)

(assert (=> b!4722001 (= e!2944912 (forall!11584 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) lambda!215345))))

(assert (= (and d!1503290 (not res!1997644)) b!4722000))

(assert (= (and b!4722000 res!1997645) b!4722001))

(declare-fun b_lambda!178423 () Bool)

(assert (=> (not b_lambda!178423) (not b!4722000)))

(declare-fun m!5656847 () Bool)

(assert (=> b!4722000 m!5656847))

(assert (=> b!4722001 m!5655571))

(assert (=> b!4721423 d!1503290))

(declare-fun bs!1110285 () Bool)

(declare-fun b!4722005 () Bool)

(assert (= bs!1110285 (and b!4722005 d!1503008)))

(declare-fun lambda!215458 () Int)

(assert (=> bs!1110285 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886726) (= lambda!215458 lambda!215378))))

(declare-fun bs!1110286 () Bool)

(assert (= bs!1110286 (and b!4722005 b!4721536)))

(assert (=> bs!1110286 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215379))))

(declare-fun bs!1110287 () Bool)

(assert (= bs!1110287 (and b!4722005 b!4721633)))

(assert (=> bs!1110287 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215458 lambda!215403))))

(declare-fun bs!1110288 () Bool)

(assert (= bs!1110288 (and b!4722005 d!1503084)))

(assert (=> bs!1110288 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886730) (= lambda!215458 lambda!215411))))

(declare-fun bs!1110289 () Bool)

(assert (= bs!1110289 (and b!4722005 b!4721748)))

(assert (=> bs!1110289 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215458 lambda!215421))))

(declare-fun bs!1110290 () Bool)

(assert (= bs!1110290 (and b!4722005 d!1502956)))

(assert (=> bs!1110290 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886602) (= lambda!215458 lambda!215346))))

(declare-fun bs!1110291 () Bool)

(assert (= bs!1110291 (and b!4722005 b!4721695)))

(assert (=> bs!1110291 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886897) (= lambda!215458 lambda!215414))))

(assert (=> bs!1110291 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215458 lambda!215413))))

(declare-fun bs!1110293 () Bool)

(assert (= bs!1110293 (and b!4722005 b!4721545)))

(assert (=> bs!1110293 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215386))))

(declare-fun bs!1110294 () Bool)

(assert (= bs!1110294 (and b!4722005 d!1503020)))

(assert (=> bs!1110294 (not (= lambda!215458 lambda!215385))))

(declare-fun bs!1110295 () Bool)

(assert (= bs!1110295 (and b!4722005 b!4721632)))

(assert (=> bs!1110295 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886847) (= lambda!215458 lambda!215405))))

(declare-fun bs!1110296 () Bool)

(assert (= bs!1110296 (and b!4722005 d!1503162)))

(assert (=> bs!1110296 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886627) (= lambda!215458 lambda!215420))))

(declare-fun bs!1110298 () Bool)

(assert (= bs!1110298 (and b!4722005 b!4721430)))

(assert (=> bs!1110298 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886627) (= lambda!215458 lambda!215349))))

(declare-fun bs!1110300 () Bool)

(assert (= bs!1110300 (and b!4722005 b!4721843)))

(assert (=> bs!1110300 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1887015) (= lambda!215458 lambda!215427))))

(declare-fun bs!1110301 () Bool)

(assert (= bs!1110301 (and b!4722005 b!4721530)))

(assert (=> bs!1110301 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886730) (= lambda!215458 lambda!215376))))

(declare-fun bs!1110303 () Bool)

(assert (= bs!1110303 (and b!4722005 b!4721423)))

(assert (=> bs!1110303 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215344))))

(declare-fun bs!1110304 () Bool)

(assert (= bs!1110304 (and b!4722005 d!1503200)))

(assert (=> bs!1110304 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1887011) (= lambda!215458 lambda!215428))))

(declare-fun bs!1110306 () Bool)

(assert (= bs!1110306 (and b!4722005 b!4721535)))

(assert (=> bs!1110306 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886751) (= lambda!215458 lambda!215381))))

(assert (=> bs!1110298 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215348))))

(declare-fun bs!1110308 () Bool)

(assert (= bs!1110308 (and b!4722005 b!4721747)))

(assert (=> bs!1110308 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886947) (= lambda!215458 lambda!215423))))

(assert (=> bs!1110308 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215458 lambda!215422))))

(assert (=> bs!1110306 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215380))))

(declare-fun bs!1110310 () Bool)

(assert (= bs!1110310 (and b!4722005 d!1503166)))

(assert (=> bs!1110310 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886943) (= lambda!215458 lambda!215424))))

(assert (=> bs!1110295 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215458 lambda!215404))))

(declare-fun bs!1110313 () Bool)

(assert (= bs!1110313 (and b!4722005 d!1503132)))

(assert (=> bs!1110313 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215419))))

(assert (=> bs!1110300 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215458 lambda!215426))))

(declare-fun bs!1110316 () Bool)

(assert (= bs!1110316 (and b!4722005 b!4721696)))

(assert (=> bs!1110316 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215458 lambda!215412))))

(declare-fun bs!1110318 () Bool)

(assert (= bs!1110318 (and b!4722005 d!1503282)))

(assert (=> bs!1110318 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886606) (= lambda!215458 lambda!215457))))

(declare-fun bs!1110319 () Bool)

(assert (= bs!1110319 (and b!4722005 d!1503126)))

(assert (=> bs!1110319 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886893) (= lambda!215458 lambda!215415))))

(declare-fun bs!1110321 () Bool)

(assert (= bs!1110321 (and b!4722005 b!4721424)))

(assert (=> bs!1110321 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215343))))

(declare-fun bs!1110322 () Bool)

(assert (= bs!1110322 (and b!4722005 b!4721544)))

(assert (=> bs!1110322 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886775) (= lambda!215458 lambda!215388))))

(declare-fun bs!1110324 () Bool)

(assert (= bs!1110324 (and b!4722005 d!1503024)))

(assert (=> bs!1110324 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886771) (= lambda!215458 lambda!215389))))

(assert (=> bs!1110303 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886606) (= lambda!215458 lambda!215345))))

(assert (=> bs!1110301 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215375))))

(declare-fun bs!1110327 () Bool)

(assert (= bs!1110327 (and b!4722005 b!4721844)))

(assert (=> bs!1110327 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215458 lambda!215425))))

(declare-fun bs!1110329 () Bool)

(assert (= bs!1110329 (and b!4722005 b!4721531)))

(assert (=> bs!1110329 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215373))))

(declare-fun bs!1110330 () Bool)

(assert (= bs!1110330 (and b!4722005 b!4721431)))

(assert (=> bs!1110330 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215347))))

(declare-fun bs!1110332 () Bool)

(assert (= bs!1110332 (and b!4722005 d!1502964)))

(assert (=> bs!1110332 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886623) (= lambda!215458 lambda!215352))))

(assert (=> bs!1110322 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215458 lambda!215387))))

(declare-fun bs!1110333 () Bool)

(assert (= bs!1110333 (and b!4722005 d!1503014)))

(assert (=> bs!1110333 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886747) (= lambda!215458 lambda!215382))))

(declare-fun bs!1110335 () Bool)

(assert (= bs!1110335 (and b!4722005 d!1503040)))

(assert (=> bs!1110335 (not (= lambda!215458 lambda!215399))))

(declare-fun bs!1110337 () Bool)

(assert (= bs!1110337 (and b!4722005 d!1503082)))

(assert (=> bs!1110337 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886843) (= lambda!215458 lambda!215406))))

(assert (=> b!4722005 true))

(declare-fun bs!1110340 () Bool)

(declare-fun b!4722004 () Bool)

(assert (= bs!1110340 (and b!4722004 d!1503008)))

(declare-fun lambda!215461 () Int)

(assert (=> bs!1110340 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886726) (= lambda!215461 lambda!215378))))

(declare-fun bs!1110342 () Bool)

(assert (= bs!1110342 (and b!4722004 b!4721536)))

(assert (=> bs!1110342 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215379))))

(declare-fun bs!1110344 () Bool)

(assert (= bs!1110344 (and b!4722004 b!4721633)))

(assert (=> bs!1110344 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215461 lambda!215403))))

(declare-fun bs!1110346 () Bool)

(assert (= bs!1110346 (and b!4722004 d!1503084)))

(assert (=> bs!1110346 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886730) (= lambda!215461 lambda!215411))))

(declare-fun bs!1110348 () Bool)

(assert (= bs!1110348 (and b!4722004 b!4721748)))

(assert (=> bs!1110348 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215461 lambda!215421))))

(declare-fun bs!1110350 () Bool)

(assert (= bs!1110350 (and b!4722004 d!1502956)))

(assert (=> bs!1110350 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886602) (= lambda!215461 lambda!215346))))

(declare-fun bs!1110352 () Bool)

(assert (= bs!1110352 (and b!4722004 b!4721695)))

(assert (=> bs!1110352 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886897) (= lambda!215461 lambda!215414))))

(assert (=> bs!1110352 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215461 lambda!215413))))

(declare-fun bs!1110355 () Bool)

(assert (= bs!1110355 (and b!4722004 b!4721545)))

(assert (=> bs!1110355 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215386))))

(declare-fun bs!1110357 () Bool)

(assert (= bs!1110357 (and b!4722004 d!1503020)))

(assert (=> bs!1110357 (not (= lambda!215461 lambda!215385))))

(declare-fun bs!1110359 () Bool)

(assert (= bs!1110359 (and b!4722004 b!4721632)))

(assert (=> bs!1110359 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886847) (= lambda!215461 lambda!215405))))

(declare-fun bs!1110361 () Bool)

(assert (= bs!1110361 (and b!4722004 d!1503162)))

(assert (=> bs!1110361 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886627) (= lambda!215461 lambda!215420))))

(declare-fun bs!1110363 () Bool)

(assert (= bs!1110363 (and b!4722004 b!4721430)))

(assert (=> bs!1110363 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886627) (= lambda!215461 lambda!215349))))

(declare-fun bs!1110364 () Bool)

(assert (= bs!1110364 (and b!4722004 b!4721843)))

(assert (=> bs!1110364 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1887015) (= lambda!215461 lambda!215427))))

(declare-fun bs!1110366 () Bool)

(assert (= bs!1110366 (and b!4722004 b!4721423)))

(assert (=> bs!1110366 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215344))))

(declare-fun bs!1110367 () Bool)

(assert (= bs!1110367 (and b!4722004 d!1503200)))

(assert (=> bs!1110367 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1887011) (= lambda!215461 lambda!215428))))

(declare-fun bs!1110369 () Bool)

(assert (= bs!1110369 (and b!4722004 b!4721535)))

(assert (=> bs!1110369 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886751) (= lambda!215461 lambda!215381))))

(assert (=> bs!1110363 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215348))))

(declare-fun bs!1110372 () Bool)

(assert (= bs!1110372 (and b!4722004 b!4721747)))

(assert (=> bs!1110372 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886947) (= lambda!215461 lambda!215423))))

(assert (=> bs!1110372 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215461 lambda!215422))))

(assert (=> bs!1110369 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215380))))

(declare-fun bs!1110374 () Bool)

(assert (= bs!1110374 (and b!4722004 d!1503166)))

(assert (=> bs!1110374 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886943) (= lambda!215461 lambda!215424))))

(assert (=> bs!1110359 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215461 lambda!215404))))

(declare-fun bs!1110376 () Bool)

(assert (= bs!1110376 (and b!4722004 d!1503132)))

(assert (=> bs!1110376 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215419))))

(assert (=> bs!1110364 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215461 lambda!215426))))

(declare-fun bs!1110377 () Bool)

(assert (= bs!1110377 (and b!4722004 b!4721696)))

(assert (=> bs!1110377 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215461 lambda!215412))))

(declare-fun bs!1110379 () Bool)

(assert (= bs!1110379 (and b!4722004 d!1503282)))

(assert (=> bs!1110379 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886606) (= lambda!215461 lambda!215457))))

(declare-fun bs!1110381 () Bool)

(assert (= bs!1110381 (and b!4722004 d!1503126)))

(assert (=> bs!1110381 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886893) (= lambda!215461 lambda!215415))))

(declare-fun bs!1110383 () Bool)

(assert (= bs!1110383 (and b!4722004 b!4721424)))

(assert (=> bs!1110383 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215343))))

(declare-fun bs!1110384 () Bool)

(assert (= bs!1110384 (and b!4722004 b!4721544)))

(assert (=> bs!1110384 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886775) (= lambda!215461 lambda!215388))))

(declare-fun bs!1110385 () Bool)

(assert (= bs!1110385 (and b!4722004 d!1503024)))

(assert (=> bs!1110385 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886771) (= lambda!215461 lambda!215389))))

(assert (=> bs!1110366 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886606) (= lambda!215461 lambda!215345))))

(declare-fun bs!1110386 () Bool)

(assert (= bs!1110386 (and b!4722004 b!4721530)))

(assert (=> bs!1110386 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215375))))

(declare-fun bs!1110387 () Bool)

(assert (= bs!1110387 (and b!4722004 b!4721844)))

(assert (=> bs!1110387 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215461 lambda!215425))))

(declare-fun bs!1110388 () Bool)

(assert (= bs!1110388 (and b!4722004 b!4721531)))

(assert (=> bs!1110388 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215373))))

(declare-fun bs!1110389 () Bool)

(assert (= bs!1110389 (and b!4722004 b!4721431)))

(assert (=> bs!1110389 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215347))))

(declare-fun bs!1110390 () Bool)

(assert (= bs!1110390 (and b!4722004 d!1502964)))

(assert (=> bs!1110390 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886623) (= lambda!215461 lambda!215352))))

(assert (=> bs!1110384 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886424) (= lambda!215461 lambda!215387))))

(assert (=> bs!1110386 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886730) (= lambda!215461 lambda!215376))))

(declare-fun bs!1110391 () Bool)

(assert (= bs!1110391 (and b!4722004 b!4722005)))

(assert (=> bs!1110391 (= lambda!215461 lambda!215458)))

(declare-fun bs!1110392 () Bool)

(assert (= bs!1110392 (and b!4722004 d!1503014)))

(assert (=> bs!1110392 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886747) (= lambda!215461 lambda!215382))))

(declare-fun bs!1110393 () Bool)

(assert (= bs!1110393 (and b!4722004 d!1503040)))

(assert (=> bs!1110393 (not (= lambda!215461 lambda!215399))))

(declare-fun bs!1110394 () Bool)

(assert (= bs!1110394 (and b!4722004 d!1503082)))

(assert (=> bs!1110394 (= (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1886843) (= lambda!215461 lambda!215406))))

(assert (=> b!4722004 true))

(declare-fun lt!1887140 () ListMap!5277)

(declare-fun lambda!215463 () Int)

(assert (=> bs!1110340 (= (= lt!1887140 lt!1886726) (= lambda!215463 lambda!215378))))

(assert (=> bs!1110342 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215379))))

(assert (=> bs!1110344 (= (= lt!1887140 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215463 lambda!215403))))

(assert (=> bs!1110346 (= (= lt!1887140 lt!1886730) (= lambda!215463 lambda!215411))))

(assert (=> bs!1110348 (= (= lt!1887140 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215463 lambda!215421))))

(assert (=> bs!1110350 (= (= lt!1887140 lt!1886602) (= lambda!215463 lambda!215346))))

(assert (=> bs!1110352 (= (= lt!1887140 lt!1886897) (= lambda!215463 lambda!215414))))

(assert (=> bs!1110352 (= (= lt!1887140 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215463 lambda!215413))))

(assert (=> bs!1110355 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215386))))

(assert (=> bs!1110357 (not (= lambda!215463 lambda!215385))))

(assert (=> bs!1110359 (= (= lt!1887140 lt!1886847) (= lambda!215463 lambda!215405))))

(assert (=> bs!1110361 (= (= lt!1887140 lt!1886627) (= lambda!215463 lambda!215420))))

(assert (=> bs!1110363 (= (= lt!1887140 lt!1886627) (= lambda!215463 lambda!215349))))

(assert (=> bs!1110364 (= (= lt!1887140 lt!1887015) (= lambda!215463 lambda!215427))))

(assert (=> bs!1110366 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215344))))

(assert (=> bs!1110367 (= (= lt!1887140 lt!1887011) (= lambda!215463 lambda!215428))))

(assert (=> bs!1110369 (= (= lt!1887140 lt!1886751) (= lambda!215463 lambda!215381))))

(assert (=> bs!1110363 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215348))))

(assert (=> bs!1110372 (= (= lt!1887140 lt!1886947) (= lambda!215463 lambda!215423))))

(assert (=> bs!1110372 (= (= lt!1887140 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215463 lambda!215422))))

(assert (=> bs!1110369 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215380))))

(assert (=> bs!1110374 (= (= lt!1887140 lt!1886943) (= lambda!215463 lambda!215424))))

(assert (=> bs!1110359 (= (= lt!1887140 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215463 lambda!215404))))

(assert (=> bs!1110376 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215419))))

(assert (=> bs!1110364 (= (= lt!1887140 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215463 lambda!215426))))

(assert (=> bs!1110377 (= (= lt!1887140 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215463 lambda!215412))))

(assert (=> bs!1110379 (= (= lt!1887140 lt!1886606) (= lambda!215463 lambda!215457))))

(assert (=> bs!1110381 (= (= lt!1887140 lt!1886893) (= lambda!215463 lambda!215415))))

(assert (=> bs!1110383 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215343))))

(assert (=> bs!1110384 (= (= lt!1887140 lt!1886775) (= lambda!215463 lambda!215388))))

(assert (=> bs!1110385 (= (= lt!1887140 lt!1886771) (= lambda!215463 lambda!215389))))

(assert (=> bs!1110366 (= (= lt!1887140 lt!1886606) (= lambda!215463 lambda!215345))))

(assert (=> bs!1110386 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215375))))

(assert (=> bs!1110387 (= (= lt!1887140 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215463 lambda!215425))))

(assert (=> bs!1110388 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215373))))

(assert (=> bs!1110389 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215347))))

(assert (=> b!4722004 (= (= lt!1887140 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215463 lambda!215461))))

(assert (=> bs!1110390 (= (= lt!1887140 lt!1886623) (= lambda!215463 lambda!215352))))

(assert (=> bs!1110384 (= (= lt!1887140 lt!1886424) (= lambda!215463 lambda!215387))))

(assert (=> bs!1110386 (= (= lt!1887140 lt!1886730) (= lambda!215463 lambda!215376))))

(assert (=> bs!1110391 (= (= lt!1887140 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215463 lambda!215458))))

(assert (=> bs!1110392 (= (= lt!1887140 lt!1886747) (= lambda!215463 lambda!215382))))

(assert (=> bs!1110393 (not (= lambda!215463 lambda!215399))))

(assert (=> bs!1110394 (= (= lt!1887140 lt!1886843) (= lambda!215463 lambda!215406))))

(assert (=> b!4722004 true))

(declare-fun bs!1110418 () Bool)

(declare-fun d!1503294 () Bool)

(assert (= bs!1110418 (and d!1503294 d!1503008)))

(declare-fun lambda!215465 () Int)

(declare-fun lt!1887136 () ListMap!5277)

(assert (=> bs!1110418 (= (= lt!1887136 lt!1886726) (= lambda!215465 lambda!215378))))

(declare-fun bs!1110419 () Bool)

(assert (= bs!1110419 (and d!1503294 b!4721536)))

(assert (=> bs!1110419 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215379))))

(declare-fun bs!1110420 () Bool)

(assert (= bs!1110420 (and d!1503294 b!4721633)))

(assert (=> bs!1110420 (= (= lt!1887136 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215465 lambda!215403))))

(declare-fun bs!1110421 () Bool)

(assert (= bs!1110421 (and d!1503294 d!1503084)))

(assert (=> bs!1110421 (= (= lt!1887136 lt!1886730) (= lambda!215465 lambda!215411))))

(declare-fun bs!1110422 () Bool)

(assert (= bs!1110422 (and d!1503294 b!4721748)))

(assert (=> bs!1110422 (= (= lt!1887136 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215465 lambda!215421))))

(declare-fun bs!1110423 () Bool)

(assert (= bs!1110423 (and d!1503294 d!1502956)))

(assert (=> bs!1110423 (= (= lt!1887136 lt!1886602) (= lambda!215465 lambda!215346))))

(declare-fun bs!1110424 () Bool)

(assert (= bs!1110424 (and d!1503294 b!4721695)))

(assert (=> bs!1110424 (= (= lt!1887136 lt!1886897) (= lambda!215465 lambda!215414))))

(assert (=> bs!1110424 (= (= lt!1887136 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215465 lambda!215413))))

(declare-fun bs!1110425 () Bool)

(assert (= bs!1110425 (and d!1503294 b!4721545)))

(assert (=> bs!1110425 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215386))))

(declare-fun bs!1110426 () Bool)

(assert (= bs!1110426 (and d!1503294 d!1503020)))

(assert (=> bs!1110426 (not (= lambda!215465 lambda!215385))))

(declare-fun bs!1110427 () Bool)

(assert (= bs!1110427 (and d!1503294 b!4721632)))

(assert (=> bs!1110427 (= (= lt!1887136 lt!1886847) (= lambda!215465 lambda!215405))))

(declare-fun bs!1110428 () Bool)

(assert (= bs!1110428 (and d!1503294 d!1503162)))

(assert (=> bs!1110428 (= (= lt!1887136 lt!1886627) (= lambda!215465 lambda!215420))))

(declare-fun bs!1110429 () Bool)

(assert (= bs!1110429 (and d!1503294 b!4721430)))

(assert (=> bs!1110429 (= (= lt!1887136 lt!1886627) (= lambda!215465 lambda!215349))))

(declare-fun bs!1110430 () Bool)

(assert (= bs!1110430 (and d!1503294 b!4721843)))

(assert (=> bs!1110430 (= (= lt!1887136 lt!1887015) (= lambda!215465 lambda!215427))))

(declare-fun bs!1110431 () Bool)

(assert (= bs!1110431 (and d!1503294 b!4721423)))

(assert (=> bs!1110431 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215344))))

(declare-fun bs!1110432 () Bool)

(assert (= bs!1110432 (and d!1503294 b!4722004)))

(assert (=> bs!1110432 (= (= lt!1887136 lt!1887140) (= lambda!215465 lambda!215463))))

(declare-fun bs!1110433 () Bool)

(assert (= bs!1110433 (and d!1503294 d!1503200)))

(assert (=> bs!1110433 (= (= lt!1887136 lt!1887011) (= lambda!215465 lambda!215428))))

(declare-fun bs!1110434 () Bool)

(assert (= bs!1110434 (and d!1503294 b!4721535)))

(assert (=> bs!1110434 (= (= lt!1887136 lt!1886751) (= lambda!215465 lambda!215381))))

(assert (=> bs!1110429 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215348))))

(declare-fun bs!1110435 () Bool)

(assert (= bs!1110435 (and d!1503294 b!4721747)))

(assert (=> bs!1110435 (= (= lt!1887136 lt!1886947) (= lambda!215465 lambda!215423))))

(assert (=> bs!1110435 (= (= lt!1887136 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215465 lambda!215422))))

(assert (=> bs!1110434 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215380))))

(declare-fun bs!1110436 () Bool)

(assert (= bs!1110436 (and d!1503294 d!1503166)))

(assert (=> bs!1110436 (= (= lt!1887136 lt!1886943) (= lambda!215465 lambda!215424))))

(assert (=> bs!1110427 (= (= lt!1887136 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215465 lambda!215404))))

(declare-fun bs!1110437 () Bool)

(assert (= bs!1110437 (and d!1503294 d!1503132)))

(assert (=> bs!1110437 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215419))))

(assert (=> bs!1110430 (= (= lt!1887136 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215465 lambda!215426))))

(declare-fun bs!1110438 () Bool)

(assert (= bs!1110438 (and d!1503294 b!4721696)))

(assert (=> bs!1110438 (= (= lt!1887136 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215465 lambda!215412))))

(declare-fun bs!1110439 () Bool)

(assert (= bs!1110439 (and d!1503294 d!1503282)))

(assert (=> bs!1110439 (= (= lt!1887136 lt!1886606) (= lambda!215465 lambda!215457))))

(declare-fun bs!1110440 () Bool)

(assert (= bs!1110440 (and d!1503294 d!1503126)))

(assert (=> bs!1110440 (= (= lt!1887136 lt!1886893) (= lambda!215465 lambda!215415))))

(declare-fun bs!1110441 () Bool)

(assert (= bs!1110441 (and d!1503294 b!4721424)))

(assert (=> bs!1110441 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215343))))

(declare-fun bs!1110442 () Bool)

(assert (= bs!1110442 (and d!1503294 b!4721544)))

(assert (=> bs!1110442 (= (= lt!1887136 lt!1886775) (= lambda!215465 lambda!215388))))

(declare-fun bs!1110443 () Bool)

(assert (= bs!1110443 (and d!1503294 d!1503024)))

(assert (=> bs!1110443 (= (= lt!1887136 lt!1886771) (= lambda!215465 lambda!215389))))

(assert (=> bs!1110431 (= (= lt!1887136 lt!1886606) (= lambda!215465 lambda!215345))))

(declare-fun bs!1110444 () Bool)

(assert (= bs!1110444 (and d!1503294 b!4721530)))

(assert (=> bs!1110444 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215375))))

(declare-fun bs!1110445 () Bool)

(assert (= bs!1110445 (and d!1503294 b!4721844)))

(assert (=> bs!1110445 (= (= lt!1887136 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215465 lambda!215425))))

(declare-fun bs!1110446 () Bool)

(assert (= bs!1110446 (and d!1503294 b!4721531)))

(assert (=> bs!1110446 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215373))))

(declare-fun bs!1110447 () Bool)

(assert (= bs!1110447 (and d!1503294 b!4721431)))

(assert (=> bs!1110447 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215347))))

(assert (=> bs!1110432 (= (= lt!1887136 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215465 lambda!215461))))

(declare-fun bs!1110448 () Bool)

(assert (= bs!1110448 (and d!1503294 d!1502964)))

(assert (=> bs!1110448 (= (= lt!1887136 lt!1886623) (= lambda!215465 lambda!215352))))

(assert (=> bs!1110442 (= (= lt!1887136 lt!1886424) (= lambda!215465 lambda!215387))))

(assert (=> bs!1110444 (= (= lt!1887136 lt!1886730) (= lambda!215465 lambda!215376))))

(declare-fun bs!1110449 () Bool)

(assert (= bs!1110449 (and d!1503294 b!4722005)))

(assert (=> bs!1110449 (= (= lt!1887136 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215465 lambda!215458))))

(declare-fun bs!1110451 () Bool)

(assert (= bs!1110451 (and d!1503294 d!1503014)))

(assert (=> bs!1110451 (= (= lt!1887136 lt!1886747) (= lambda!215465 lambda!215382))))

(declare-fun bs!1110452 () Bool)

(assert (= bs!1110452 (and d!1503294 d!1503040)))

(assert (=> bs!1110452 (not (= lambda!215465 lambda!215399))))

(declare-fun bs!1110454 () Bool)

(assert (= bs!1110454 (and d!1503294 d!1503082)))

(assert (=> bs!1110454 (= (= lt!1887136 lt!1886843) (= lambda!215465 lambda!215406))))

(assert (=> d!1503294 true))

(declare-fun bm!330231 () Bool)

(declare-fun call!330237 () Unit!129750)

(assert (=> bm!330231 (= call!330237 (lemmaContainsAllItsOwnKeys!795 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun e!2944916 () ListMap!5277)

(assert (=> b!4722004 (= e!2944916 lt!1887140)))

(declare-fun lt!1887139 () ListMap!5277)

(assert (=> b!4722004 (= lt!1887139 (+!2267 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> b!4722004 (= lt!1887140 (addToMapMapFromBucket!1442 (t!360210 (t!360210 (Cons!52824 lt!1886429 lt!1886428))) (+!2267 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun lt!1887146 () Unit!129750)

(assert (=> b!4722004 (= lt!1887146 call!330237)))

(declare-fun call!330236 () Bool)

(assert (=> b!4722004 call!330236))

(declare-fun lt!1887143 () Unit!129750)

(assert (=> b!4722004 (= lt!1887143 lt!1887146)))

(declare-fun call!330238 () Bool)

(assert (=> b!4722004 call!330238))

(declare-fun lt!1887144 () Unit!129750)

(declare-fun Unit!129988 () Unit!129750)

(assert (=> b!4722004 (= lt!1887144 Unit!129988)))

(assert (=> b!4722004 (forall!11584 (t!360210 (t!360210 (Cons!52824 lt!1886429 lt!1886428))) lambda!215463)))

(declare-fun lt!1887151 () Unit!129750)

(declare-fun Unit!129989 () Unit!129750)

(assert (=> b!4722004 (= lt!1887151 Unit!129989)))

(declare-fun lt!1887135 () Unit!129750)

(declare-fun Unit!129990 () Unit!129750)

(assert (=> b!4722004 (= lt!1887135 Unit!129990)))

(declare-fun lt!1887138 () Unit!129750)

(assert (=> b!4722004 (= lt!1887138 (forallContained!3635 (toList!5913 lt!1887139) lambda!215463 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> b!4722004 (contains!16168 lt!1887139 (_1!30515 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun lt!1887134 () Unit!129750)

(declare-fun Unit!129991 () Unit!129750)

(assert (=> b!4722004 (= lt!1887134 Unit!129991)))

(assert (=> b!4722004 (contains!16168 lt!1887140 (_1!30515 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun lt!1887141 () Unit!129750)

(declare-fun Unit!129992 () Unit!129750)

(assert (=> b!4722004 (= lt!1887141 Unit!129992)))

(assert (=> b!4722004 (forall!11584 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) lambda!215463)))

(declare-fun lt!1887153 () Unit!129750)

(declare-fun Unit!129993 () Unit!129750)

(assert (=> b!4722004 (= lt!1887153 Unit!129993)))

(assert (=> b!4722004 (forall!11584 (toList!5913 lt!1887139) lambda!215463)))

(declare-fun lt!1887152 () Unit!129750)

(declare-fun Unit!129994 () Unit!129750)

(assert (=> b!4722004 (= lt!1887152 Unit!129994)))

(declare-fun lt!1887137 () Unit!129750)

(declare-fun Unit!129995 () Unit!129750)

(assert (=> b!4722004 (= lt!1887137 Unit!129995)))

(declare-fun lt!1887149 () Unit!129750)

(assert (=> b!4722004 (= lt!1887149 (addForallContainsKeyThenBeforeAdding!794 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1887140 (_1!30515 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))) (_2!30515 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428))))))))

(assert (=> b!4722004 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lambda!215463)))

(declare-fun lt!1887145 () Unit!129750)

(assert (=> b!4722004 (= lt!1887145 lt!1887149)))

(assert (=> b!4722004 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lambda!215463)))

(declare-fun lt!1887148 () Unit!129750)

(declare-fun Unit!129996 () Unit!129750)

(assert (=> b!4722004 (= lt!1887148 Unit!129996)))

(declare-fun res!1997648 () Bool)

(assert (=> b!4722004 (= res!1997648 (forall!11584 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) lambda!215463))))

(declare-fun e!2944917 () Bool)

(assert (=> b!4722004 (=> (not res!1997648) (not e!2944917))))

(assert (=> b!4722004 e!2944917))

(declare-fun lt!1887150 () Unit!129750)

(declare-fun Unit!129997 () Unit!129750)

(assert (=> b!4722004 (= lt!1887150 Unit!129997)))

(declare-fun c!806421 () Bool)

(declare-fun bm!330232 () Bool)

(assert (=> bm!330232 (= call!330238 (forall!11584 (ite c!806421 (toList!5913 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (toList!5913 lt!1887139)) (ite c!806421 lambda!215458 lambda!215463)))))

(assert (=> b!4722005 (= e!2944916 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(declare-fun lt!1887154 () Unit!129750)

(assert (=> b!4722005 (= lt!1887154 call!330237)))

(assert (=> b!4722005 call!330238))

(declare-fun lt!1887142 () Unit!129750)

(assert (=> b!4722005 (= lt!1887142 lt!1887154)))

(assert (=> b!4722005 call!330236))

(declare-fun lt!1887147 () Unit!129750)

(declare-fun Unit!129998 () Unit!129750)

(assert (=> b!4722005 (= lt!1887147 Unit!129998)))

(declare-fun b!4722007 () Bool)

(declare-fun res!1997650 () Bool)

(declare-fun e!2944915 () Bool)

(assert (=> b!4722007 (=> (not res!1997650) (not e!2944915))))

(assert (=> b!4722007 (= res!1997650 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lambda!215465))))

(declare-fun bm!330233 () Bool)

(assert (=> bm!330233 (= call!330236 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (ite c!806421 lambda!215458 lambda!215461)))))

(declare-fun b!4722008 () Bool)

(assert (=> b!4722008 (= e!2944915 (invariantList!1509 (toList!5913 lt!1887136)))))

(declare-fun b!4722006 () Bool)

(assert (=> b!4722006 (= e!2944917 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lambda!215463))))

(assert (=> d!1503294 e!2944915))

(declare-fun res!1997649 () Bool)

(assert (=> d!1503294 (=> (not res!1997649) (not e!2944915))))

(assert (=> d!1503294 (= res!1997649 (forall!11584 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) lambda!215465))))

(assert (=> d!1503294 (= lt!1887136 e!2944916)))

(assert (=> d!1503294 (= c!806421 ((_ is Nil!52824) (t!360210 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (=> d!1503294 (noDuplicateKeys!2012 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))))

(assert (=> d!1503294 (= (addToMapMapFromBucket!1442 (t!360210 (Cons!52824 lt!1886429 lt!1886428)) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lt!1887136)))

(assert (= (and d!1503294 c!806421) b!4722005))

(assert (= (and d!1503294 (not c!806421)) b!4722004))

(assert (= (and b!4722004 res!1997648) b!4722006))

(assert (= (or b!4722005 b!4722004) bm!330231))

(assert (= (or b!4722005 b!4722004) bm!330233))

(assert (= (or b!4722005 b!4722004) bm!330232))

(assert (= (and d!1503294 res!1997649) b!4722007))

(assert (= (and b!4722007 res!1997650) b!4722008))

(declare-fun m!5656891 () Bool)

(assert (=> b!4722008 m!5656891))

(declare-fun m!5656893 () Bool)

(assert (=> d!1503294 m!5656893))

(assert (=> d!1503294 m!5656009))

(declare-fun m!5656895 () Bool)

(assert (=> b!4722007 m!5656895))

(assert (=> bm!330231 m!5655575))

(declare-fun m!5656897 () Bool)

(assert (=> bm!330231 m!5656897))

(declare-fun m!5656899 () Bool)

(assert (=> b!4722004 m!5656899))

(declare-fun m!5656901 () Bool)

(assert (=> b!4722004 m!5656901))

(declare-fun m!5656903 () Bool)

(assert (=> b!4722004 m!5656903))

(assert (=> b!4722004 m!5655575))

(declare-fun m!5656905 () Bool)

(assert (=> b!4722004 m!5656905))

(assert (=> b!4722004 m!5656903))

(declare-fun m!5656907 () Bool)

(assert (=> b!4722004 m!5656907))

(declare-fun m!5656909 () Bool)

(assert (=> b!4722004 m!5656909))

(declare-fun m!5656911 () Bool)

(assert (=> b!4722004 m!5656911))

(declare-fun m!5656913 () Bool)

(assert (=> b!4722004 m!5656913))

(assert (=> b!4722004 m!5656913))

(assert (=> b!4722004 m!5655575))

(declare-fun m!5656915 () Bool)

(assert (=> b!4722004 m!5656915))

(assert (=> b!4722004 m!5656905))

(declare-fun m!5656917 () Bool)

(assert (=> b!4722004 m!5656917))

(declare-fun m!5656919 () Bool)

(assert (=> bm!330233 m!5656919))

(declare-fun m!5656923 () Bool)

(assert (=> bm!330232 m!5656923))

(assert (=> b!4722006 m!5656913))

(assert (=> b!4721423 d!1503294))

(declare-fun d!1503302 () Bool)

(assert (=> d!1503302 (dynLambda!21817 lambda!215345 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))

(declare-fun lt!1887177 () Unit!129750)

(assert (=> d!1503302 (= lt!1887177 (choose!33308 (toList!5913 lt!1886605) lambda!215345 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(declare-fun e!2944925 () Bool)

(assert (=> d!1503302 e!2944925))

(declare-fun res!1997658 () Bool)

(assert (=> d!1503302 (=> (not res!1997658) (not e!2944925))))

(assert (=> d!1503302 (= res!1997658 (forall!11584 (toList!5913 lt!1886605) lambda!215345))))

(assert (=> d!1503302 (= (forallContained!3635 (toList!5913 lt!1886605) lambda!215345 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1887177)))

(declare-fun b!4722018 () Bool)

(assert (=> b!4722018 (= e!2944925 (contains!16169 (toList!5913 lt!1886605) (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (= (and d!1503302 res!1997658) b!4722018))

(declare-fun b_lambda!178431 () Bool)

(assert (=> (not b_lambda!178431) (not d!1503302)))

(assert (=> d!1503302 m!5656847))

(declare-fun m!5656933 () Bool)

(assert (=> d!1503302 m!5656933))

(assert (=> d!1503302 m!5655569))

(declare-fun m!5656935 () Bool)

(assert (=> b!4722018 m!5656935))

(assert (=> b!4721423 d!1503302))

(declare-fun d!1503308 () Bool)

(declare-fun e!2944927 () Bool)

(assert (=> d!1503308 e!2944927))

(declare-fun res!1997661 () Bool)

(assert (=> d!1503308 (=> (not res!1997661) (not e!2944927))))

(declare-fun lt!1887182 () ListMap!5277)

(assert (=> d!1503308 (= res!1997661 (contains!16168 lt!1887182 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun lt!1887184 () List!52948)

(assert (=> d!1503308 (= lt!1887182 (ListMap!5278 lt!1887184))))

(declare-fun lt!1887185 () Unit!129750)

(declare-fun lt!1887183 () Unit!129750)

(assert (=> d!1503308 (= lt!1887185 lt!1887183)))

(assert (=> d!1503308 (= (getValueByKey!1952 lt!1887184 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (Some!12355 (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> d!1503308 (= lt!1887183 (lemmaContainsTupThenGetReturnValue!1083 lt!1887184 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> d!1503308 (= lt!1887184 (insertNoDuplicatedKeys!591 (toList!5913 lt!1886424) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> d!1503308 (= (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) lt!1887182)))

(declare-fun b!4722021 () Bool)

(declare-fun res!1997662 () Bool)

(assert (=> b!4722021 (=> (not res!1997662) (not e!2944927))))

(assert (=> b!4722021 (= res!1997662 (= (getValueByKey!1952 (toList!5913 lt!1887182) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (Some!12355 (_2!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun b!4722022 () Bool)

(assert (=> b!4722022 (= e!2944927 (contains!16169 (toList!5913 lt!1887182) (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (= (and d!1503308 res!1997661) b!4722021))

(assert (= (and b!4722021 res!1997662) b!4722022))

(declare-fun m!5656949 () Bool)

(assert (=> d!1503308 m!5656949))

(declare-fun m!5656951 () Bool)

(assert (=> d!1503308 m!5656951))

(declare-fun m!5656953 () Bool)

(assert (=> d!1503308 m!5656953))

(declare-fun m!5656955 () Bool)

(assert (=> d!1503308 m!5656955))

(declare-fun m!5656957 () Bool)

(assert (=> b!4722021 m!5656957))

(declare-fun m!5656959 () Bool)

(assert (=> b!4722022 m!5656959))

(assert (=> b!4721423 d!1503308))

(declare-fun d!1503312 () Bool)

(declare-fun e!2944938 () Bool)

(assert (=> d!1503312 e!2944938))

(declare-fun res!1997667 () Bool)

(assert (=> d!1503312 (=> res!1997667 e!2944938)))

(declare-fun e!2944934 () Bool)

(assert (=> d!1503312 (= res!1997667 e!2944934)))

(declare-fun res!1997668 () Bool)

(assert (=> d!1503312 (=> (not res!1997668) (not e!2944934))))

(declare-fun lt!1887195 () Bool)

(assert (=> d!1503312 (= res!1997668 (not lt!1887195))))

(declare-fun lt!1887198 () Bool)

(assert (=> d!1503312 (= lt!1887195 lt!1887198)))

(declare-fun lt!1887194 () Unit!129750)

(declare-fun e!2944939 () Unit!129750)

(assert (=> d!1503312 (= lt!1887194 e!2944939)))

(declare-fun c!806427 () Bool)

(assert (=> d!1503312 (= c!806427 lt!1887198)))

(assert (=> d!1503312 (= lt!1887198 (containsKey!3367 (toList!5913 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> d!1503312 (= (contains!16168 lt!1886606 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lt!1887195)))

(declare-fun b!4722032 () Bool)

(declare-fun e!2944936 () List!52951)

(assert (=> b!4722032 (= e!2944936 (keys!18970 lt!1886606))))

(declare-fun b!4722033 () Bool)

(declare-fun lt!1887200 () Unit!129750)

(assert (=> b!4722033 (= e!2944939 lt!1887200)))

(declare-fun lt!1887201 () Unit!129750)

(assert (=> b!4722033 (= lt!1887201 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> b!4722033 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun lt!1887199 () Unit!129750)

(assert (=> b!4722033 (= lt!1887199 lt!1887201)))

(assert (=> b!4722033 (= lt!1887200 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun call!330243 () Bool)

(assert (=> b!4722033 call!330243))

(declare-fun b!4722034 () Bool)

(declare-fun e!2944937 () Unit!129750)

(assert (=> b!4722034 (= e!2944939 e!2944937)))

(declare-fun c!806426 () Bool)

(assert (=> b!4722034 (= c!806426 call!330243)))

(declare-fun b!4722035 () Bool)

(declare-fun e!2944935 () Bool)

(assert (=> b!4722035 (= e!2944938 e!2944935)))

(declare-fun res!1997666 () Bool)

(assert (=> b!4722035 (=> (not res!1997666) (not e!2944935))))

(assert (=> b!4722035 (= res!1997666 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun b!4722036 () Bool)

(assert (=> b!4722036 (= e!2944936 (getKeysList!949 (toList!5913 lt!1886606)))))

(declare-fun b!4722037 () Bool)

(declare-fun Unit!130001 () Unit!129750)

(assert (=> b!4722037 (= e!2944937 Unit!130001)))

(declare-fun b!4722038 () Bool)

(assert (=> b!4722038 (= e!2944934 (not (contains!16171 (keys!18970 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun b!4722039 () Bool)

(assert (=> b!4722039 false))

(declare-fun lt!1887197 () Unit!129750)

(declare-fun lt!1887196 () Unit!129750)

(assert (=> b!4722039 (= lt!1887197 lt!1887196)))

(assert (=> b!4722039 (containsKey!3367 (toList!5913 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (=> b!4722039 (= lt!1887196 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun Unit!130002 () Unit!129750)

(assert (=> b!4722039 (= e!2944937 Unit!130002)))

(declare-fun b!4722040 () Bool)

(assert (=> b!4722040 (= e!2944935 (contains!16171 (keys!18970 lt!1886606) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun bm!330238 () Bool)

(assert (=> bm!330238 (= call!330243 (contains!16171 e!2944936 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun c!806428 () Bool)

(assert (=> bm!330238 (= c!806428 c!806427)))

(assert (= (and d!1503312 c!806427) b!4722033))

(assert (= (and d!1503312 (not c!806427)) b!4722034))

(assert (= (and b!4722034 c!806426) b!4722039))

(assert (= (and b!4722034 (not c!806426)) b!4722037))

(assert (= (or b!4722033 b!4722034) bm!330238))

(assert (= (and bm!330238 c!806428) b!4722036))

(assert (= (and bm!330238 (not c!806428)) b!4722032))

(assert (= (and d!1503312 res!1997668) b!4722038))

(assert (= (and d!1503312 (not res!1997667)) b!4722035))

(assert (= (and b!4722035 res!1997666) b!4722040))

(declare-fun m!5656981 () Bool)

(assert (=> bm!330238 m!5656981))

(declare-fun m!5656983 () Bool)

(assert (=> b!4722035 m!5656983))

(assert (=> b!4722035 m!5656983))

(declare-fun m!5656985 () Bool)

(assert (=> b!4722035 m!5656985))

(declare-fun m!5656987 () Bool)

(assert (=> d!1503312 m!5656987))

(declare-fun m!5656989 () Bool)

(assert (=> b!4722032 m!5656989))

(declare-fun m!5656991 () Bool)

(assert (=> b!4722033 m!5656991))

(assert (=> b!4722033 m!5656983))

(assert (=> b!4722033 m!5656983))

(assert (=> b!4722033 m!5656985))

(declare-fun m!5656993 () Bool)

(assert (=> b!4722033 m!5656993))

(assert (=> b!4722040 m!5656989))

(assert (=> b!4722040 m!5656989))

(declare-fun m!5656995 () Bool)

(assert (=> b!4722040 m!5656995))

(assert (=> b!4722038 m!5656989))

(assert (=> b!4722038 m!5656989))

(assert (=> b!4722038 m!5656995))

(declare-fun m!5656997 () Bool)

(assert (=> b!4722036 m!5656997))

(assert (=> b!4722039 m!5656987))

(declare-fun m!5657003 () Bool)

(assert (=> b!4722039 m!5657003))

(assert (=> b!4721423 d!1503312))

(declare-fun d!1503318 () Bool)

(declare-fun e!2944948 () Bool)

(assert (=> d!1503318 e!2944948))

(declare-fun res!1997674 () Bool)

(assert (=> d!1503318 (=> res!1997674 e!2944948)))

(declare-fun e!2944944 () Bool)

(assert (=> d!1503318 (= res!1997674 e!2944944)))

(declare-fun res!1997675 () Bool)

(assert (=> d!1503318 (=> (not res!1997675) (not e!2944944))))

(declare-fun lt!1887203 () Bool)

(assert (=> d!1503318 (= res!1997675 (not lt!1887203))))

(declare-fun lt!1887206 () Bool)

(assert (=> d!1503318 (= lt!1887203 lt!1887206)))

(declare-fun lt!1887202 () Unit!129750)

(declare-fun e!2944949 () Unit!129750)

(assert (=> d!1503318 (= lt!1887202 e!2944949)))

(declare-fun c!806430 () Bool)

(assert (=> d!1503318 (= c!806430 lt!1887206)))

(assert (=> d!1503318 (= lt!1887206 (containsKey!3367 (toList!5913 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> d!1503318 (= (contains!16168 lt!1886605 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) lt!1887203)))

(declare-fun b!4722045 () Bool)

(declare-fun e!2944946 () List!52951)

(assert (=> b!4722045 (= e!2944946 (keys!18970 lt!1886605))))

(declare-fun b!4722046 () Bool)

(declare-fun lt!1887208 () Unit!129750)

(assert (=> b!4722046 (= e!2944949 lt!1887208)))

(declare-fun lt!1887209 () Unit!129750)

(assert (=> b!4722046 (= lt!1887209 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> b!4722046 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun lt!1887207 () Unit!129750)

(assert (=> b!4722046 (= lt!1887207 lt!1887209)))

(assert (=> b!4722046 (= lt!1887208 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun call!330244 () Bool)

(assert (=> b!4722046 call!330244))

(declare-fun b!4722047 () Bool)

(declare-fun e!2944947 () Unit!129750)

(assert (=> b!4722047 (= e!2944949 e!2944947)))

(declare-fun c!806429 () Bool)

(assert (=> b!4722047 (= c!806429 call!330244)))

(declare-fun b!4722048 () Bool)

(declare-fun e!2944945 () Bool)

(assert (=> b!4722048 (= e!2944948 e!2944945)))

(declare-fun res!1997673 () Bool)

(assert (=> b!4722048 (=> (not res!1997673) (not e!2944945))))

(assert (=> b!4722048 (= res!1997673 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun b!4722049 () Bool)

(assert (=> b!4722049 (= e!2944946 (getKeysList!949 (toList!5913 lt!1886605)))))

(declare-fun b!4722050 () Bool)

(declare-fun Unit!130003 () Unit!129750)

(assert (=> b!4722050 (= e!2944947 Unit!130003)))

(declare-fun b!4722051 () Bool)

(assert (=> b!4722051 (= e!2944944 (not (contains!16171 (keys!18970 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun b!4722052 () Bool)

(assert (=> b!4722052 false))

(declare-fun lt!1887205 () Unit!129750)

(declare-fun lt!1887204 () Unit!129750)

(assert (=> b!4722052 (= lt!1887205 lt!1887204)))

(assert (=> b!4722052 (containsKey!3367 (toList!5913 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428))))))

(assert (=> b!4722052 (= lt!1887204 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun Unit!130004 () Unit!129750)

(assert (=> b!4722052 (= e!2944947 Unit!130004)))

(declare-fun b!4722053 () Bool)

(assert (=> b!4722053 (= e!2944945 (contains!16171 (keys!18970 lt!1886605) (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun bm!330239 () Bool)

(assert (=> bm!330239 (= call!330244 (contains!16171 e!2944946 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun c!806431 () Bool)

(assert (=> bm!330239 (= c!806431 c!806430)))

(assert (= (and d!1503318 c!806430) b!4722046))

(assert (= (and d!1503318 (not c!806430)) b!4722047))

(assert (= (and b!4722047 c!806429) b!4722052))

(assert (= (and b!4722047 (not c!806429)) b!4722050))

(assert (= (or b!4722046 b!4722047) bm!330239))

(assert (= (and bm!330239 c!806431) b!4722049))

(assert (= (and bm!330239 (not c!806431)) b!4722045))

(assert (= (and d!1503318 res!1997675) b!4722051))

(assert (= (and d!1503318 (not res!1997674)) b!4722048))

(assert (= (and b!4722048 res!1997673) b!4722053))

(declare-fun m!5657009 () Bool)

(assert (=> bm!330239 m!5657009))

(declare-fun m!5657011 () Bool)

(assert (=> b!4722048 m!5657011))

(assert (=> b!4722048 m!5657011))

(declare-fun m!5657013 () Bool)

(assert (=> b!4722048 m!5657013))

(declare-fun m!5657015 () Bool)

(assert (=> d!1503318 m!5657015))

(declare-fun m!5657017 () Bool)

(assert (=> b!4722045 m!5657017))

(declare-fun m!5657019 () Bool)

(assert (=> b!4722046 m!5657019))

(assert (=> b!4722046 m!5657011))

(assert (=> b!4722046 m!5657011))

(assert (=> b!4722046 m!5657013))

(declare-fun m!5657021 () Bool)

(assert (=> b!4722046 m!5657021))

(assert (=> b!4722053 m!5657017))

(assert (=> b!4722053 m!5657017))

(declare-fun m!5657023 () Bool)

(assert (=> b!4722053 m!5657023))

(assert (=> b!4722051 m!5657017))

(assert (=> b!4722051 m!5657017))

(assert (=> b!4722051 m!5657023))

(declare-fun m!5657025 () Bool)

(assert (=> b!4722049 m!5657025))

(assert (=> b!4722052 m!5657015))

(declare-fun m!5657027 () Bool)

(assert (=> b!4722052 m!5657027))

(assert (=> b!4721423 d!1503318))

(declare-fun bs!1110491 () Bool)

(declare-fun b!4722060 () Bool)

(assert (= bs!1110491 (and b!4722060 d!1503008)))

(declare-fun lambda!215468 () Int)

(assert (=> bs!1110491 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886726) (= lambda!215468 lambda!215378))))

(declare-fun bs!1110493 () Bool)

(assert (= bs!1110493 (and b!4722060 b!4721536)))

(assert (=> bs!1110493 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215379))))

(declare-fun bs!1110495 () Bool)

(assert (= bs!1110495 (and b!4722060 b!4721633)))

(assert (=> bs!1110495 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215468 lambda!215403))))

(declare-fun bs!1110496 () Bool)

(assert (= bs!1110496 (and b!4722060 d!1503084)))

(assert (=> bs!1110496 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886730) (= lambda!215468 lambda!215411))))

(declare-fun bs!1110498 () Bool)

(assert (= bs!1110498 (and b!4722060 b!4721748)))

(assert (=> bs!1110498 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215468 lambda!215421))))

(declare-fun bs!1110500 () Bool)

(assert (= bs!1110500 (and b!4722060 d!1502956)))

(assert (=> bs!1110500 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886602) (= lambda!215468 lambda!215346))))

(declare-fun bs!1110502 () Bool)

(assert (= bs!1110502 (and b!4722060 b!4721695)))

(assert (=> bs!1110502 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886897) (= lambda!215468 lambda!215414))))

(assert (=> bs!1110502 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215468 lambda!215413))))

(declare-fun bs!1110505 () Bool)

(assert (= bs!1110505 (and b!4722060 b!4721545)))

(assert (=> bs!1110505 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215386))))

(declare-fun bs!1110506 () Bool)

(assert (= bs!1110506 (and b!4722060 d!1503020)))

(assert (=> bs!1110506 (not (= lambda!215468 lambda!215385))))

(declare-fun bs!1110508 () Bool)

(assert (= bs!1110508 (and b!4722060 b!4721632)))

(assert (=> bs!1110508 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886847) (= lambda!215468 lambda!215405))))

(declare-fun bs!1110509 () Bool)

(assert (= bs!1110509 (and b!4722060 d!1503162)))

(assert (=> bs!1110509 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886627) (= lambda!215468 lambda!215420))))

(declare-fun bs!1110511 () Bool)

(assert (= bs!1110511 (and b!4722060 d!1503294)))

(assert (=> bs!1110511 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887136) (= lambda!215468 lambda!215465))))

(declare-fun bs!1110512 () Bool)

(assert (= bs!1110512 (and b!4722060 b!4721430)))

(assert (=> bs!1110512 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886627) (= lambda!215468 lambda!215349))))

(declare-fun bs!1110513 () Bool)

(assert (= bs!1110513 (and b!4722060 b!4721843)))

(assert (=> bs!1110513 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887015) (= lambda!215468 lambda!215427))))

(declare-fun bs!1110515 () Bool)

(assert (= bs!1110515 (and b!4722060 b!4721423)))

(assert (=> bs!1110515 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215344))))

(declare-fun bs!1110517 () Bool)

(assert (= bs!1110517 (and b!4722060 b!4722004)))

(assert (=> bs!1110517 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887140) (= lambda!215468 lambda!215463))))

(declare-fun bs!1110519 () Bool)

(assert (= bs!1110519 (and b!4722060 d!1503200)))

(assert (=> bs!1110519 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887011) (= lambda!215468 lambda!215428))))

(declare-fun bs!1110520 () Bool)

(assert (= bs!1110520 (and b!4722060 b!4721535)))

(assert (=> bs!1110520 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886751) (= lambda!215468 lambda!215381))))

(assert (=> bs!1110512 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215348))))

(declare-fun bs!1110521 () Bool)

(assert (= bs!1110521 (and b!4722060 b!4721747)))

(assert (=> bs!1110521 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886947) (= lambda!215468 lambda!215423))))

(assert (=> bs!1110521 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215468 lambda!215422))))

(assert (=> bs!1110520 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215380))))

(declare-fun bs!1110522 () Bool)

(assert (= bs!1110522 (and b!4722060 d!1503166)))

(assert (=> bs!1110522 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886943) (= lambda!215468 lambda!215424))))

(assert (=> bs!1110508 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215468 lambda!215404))))

(declare-fun bs!1110524 () Bool)

(assert (= bs!1110524 (and b!4722060 d!1503132)))

(assert (=> bs!1110524 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215419))))

(assert (=> bs!1110513 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215468 lambda!215426))))

(declare-fun bs!1110527 () Bool)

(assert (= bs!1110527 (and b!4722060 b!4721696)))

(assert (=> bs!1110527 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215468 lambda!215412))))

(declare-fun bs!1110528 () Bool)

(assert (= bs!1110528 (and b!4722060 d!1503282)))

(assert (=> bs!1110528 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886606) (= lambda!215468 lambda!215457))))

(declare-fun bs!1110530 () Bool)

(assert (= bs!1110530 (and b!4722060 d!1503126)))

(assert (=> bs!1110530 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886893) (= lambda!215468 lambda!215415))))

(declare-fun bs!1110532 () Bool)

(assert (= bs!1110532 (and b!4722060 b!4721424)))

(assert (=> bs!1110532 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215343))))

(declare-fun bs!1110534 () Bool)

(assert (= bs!1110534 (and b!4722060 b!4721544)))

(assert (=> bs!1110534 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886775) (= lambda!215468 lambda!215388))))

(declare-fun bs!1110536 () Bool)

(assert (= bs!1110536 (and b!4722060 d!1503024)))

(assert (=> bs!1110536 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886771) (= lambda!215468 lambda!215389))))

(assert (=> bs!1110515 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886606) (= lambda!215468 lambda!215345))))

(declare-fun bs!1110539 () Bool)

(assert (= bs!1110539 (and b!4722060 b!4721530)))

(assert (=> bs!1110539 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215375))))

(declare-fun bs!1110541 () Bool)

(assert (= bs!1110541 (and b!4722060 b!4721844)))

(assert (=> bs!1110541 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215468 lambda!215425))))

(declare-fun bs!1110543 () Bool)

(assert (= bs!1110543 (and b!4722060 b!4721531)))

(assert (=> bs!1110543 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215373))))

(declare-fun bs!1110545 () Bool)

(assert (= bs!1110545 (and b!4722060 b!4721431)))

(assert (=> bs!1110545 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215347))))

(assert (=> bs!1110517 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215468 lambda!215461))))

(declare-fun bs!1110548 () Bool)

(assert (= bs!1110548 (and b!4722060 d!1502964)))

(assert (=> bs!1110548 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886623) (= lambda!215468 lambda!215352))))

(assert (=> bs!1110534 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215468 lambda!215387))))

(assert (=> bs!1110539 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886730) (= lambda!215468 lambda!215376))))

(declare-fun bs!1110551 () Bool)

(assert (= bs!1110551 (and b!4722060 b!4722005)))

(assert (=> bs!1110551 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215468 lambda!215458))))

(declare-fun bs!1110552 () Bool)

(assert (= bs!1110552 (and b!4722060 d!1503014)))

(assert (=> bs!1110552 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886747) (= lambda!215468 lambda!215382))))

(declare-fun bs!1110554 () Bool)

(assert (= bs!1110554 (and b!4722060 d!1503040)))

(assert (=> bs!1110554 (not (= lambda!215468 lambda!215399))))

(declare-fun bs!1110556 () Bool)

(assert (= bs!1110556 (and b!4722060 d!1503082)))

(assert (=> bs!1110556 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886843) (= lambda!215468 lambda!215406))))

(assert (=> b!4722060 true))

(declare-fun bs!1110562 () Bool)

(declare-fun b!4722059 () Bool)

(assert (= bs!1110562 (and b!4722059 d!1503008)))

(declare-fun lambda!215470 () Int)

(assert (=> bs!1110562 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886726) (= lambda!215470 lambda!215378))))

(declare-fun bs!1110563 () Bool)

(assert (= bs!1110563 (and b!4722059 b!4721536)))

(assert (=> bs!1110563 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215379))))

(declare-fun bs!1110565 () Bool)

(assert (= bs!1110565 (and b!4722059 b!4721633)))

(assert (=> bs!1110565 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215470 lambda!215403))))

(declare-fun bs!1110567 () Bool)

(assert (= bs!1110567 (and b!4722059 d!1503084)))

(assert (=> bs!1110567 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886730) (= lambda!215470 lambda!215411))))

(declare-fun bs!1110569 () Bool)

(assert (= bs!1110569 (and b!4722059 b!4721748)))

(assert (=> bs!1110569 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215470 lambda!215421))))

(declare-fun bs!1110570 () Bool)

(assert (= bs!1110570 (and b!4722059 d!1502956)))

(assert (=> bs!1110570 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886602) (= lambda!215470 lambda!215346))))

(declare-fun bs!1110571 () Bool)

(assert (= bs!1110571 (and b!4722059 b!4721695)))

(assert (=> bs!1110571 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886897) (= lambda!215470 lambda!215414))))

(assert (=> bs!1110571 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215470 lambda!215413))))

(declare-fun bs!1110572 () Bool)

(assert (= bs!1110572 (and b!4722059 b!4721545)))

(assert (=> bs!1110572 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215386))))

(declare-fun bs!1110573 () Bool)

(assert (= bs!1110573 (and b!4722059 d!1503020)))

(assert (=> bs!1110573 (not (= lambda!215470 lambda!215385))))

(declare-fun bs!1110574 () Bool)

(assert (= bs!1110574 (and b!4722059 b!4721632)))

(assert (=> bs!1110574 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886847) (= lambda!215470 lambda!215405))))

(declare-fun bs!1110575 () Bool)

(assert (= bs!1110575 (and b!4722059 d!1503294)))

(assert (=> bs!1110575 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887136) (= lambda!215470 lambda!215465))))

(declare-fun bs!1110576 () Bool)

(assert (= bs!1110576 (and b!4722059 b!4721430)))

(assert (=> bs!1110576 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886627) (= lambda!215470 lambda!215349))))

(declare-fun bs!1110577 () Bool)

(assert (= bs!1110577 (and b!4722059 b!4721843)))

(assert (=> bs!1110577 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887015) (= lambda!215470 lambda!215427))))

(declare-fun bs!1110578 () Bool)

(assert (= bs!1110578 (and b!4722059 b!4721423)))

(assert (=> bs!1110578 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215344))))

(declare-fun bs!1110579 () Bool)

(assert (= bs!1110579 (and b!4722059 b!4722004)))

(assert (=> bs!1110579 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887140) (= lambda!215470 lambda!215463))))

(declare-fun bs!1110580 () Bool)

(assert (= bs!1110580 (and b!4722059 d!1503200)))

(assert (=> bs!1110580 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887011) (= lambda!215470 lambda!215428))))

(declare-fun bs!1110581 () Bool)

(assert (= bs!1110581 (and b!4722059 b!4721535)))

(assert (=> bs!1110581 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886751) (= lambda!215470 lambda!215381))))

(assert (=> bs!1110576 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215348))))

(declare-fun bs!1110582 () Bool)

(assert (= bs!1110582 (and b!4722059 b!4721747)))

(assert (=> bs!1110582 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886947) (= lambda!215470 lambda!215423))))

(assert (=> bs!1110582 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215470 lambda!215422))))

(assert (=> bs!1110581 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215380))))

(declare-fun bs!1110583 () Bool)

(assert (= bs!1110583 (and b!4722059 d!1503166)))

(assert (=> bs!1110583 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886943) (= lambda!215470 lambda!215424))))

(assert (=> bs!1110574 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215470 lambda!215404))))

(declare-fun bs!1110584 () Bool)

(assert (= bs!1110584 (and b!4722059 d!1503132)))

(assert (=> bs!1110584 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215419))))

(assert (=> bs!1110577 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215470 lambda!215426))))

(declare-fun bs!1110585 () Bool)

(assert (= bs!1110585 (and b!4722059 b!4721696)))

(assert (=> bs!1110585 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215470 lambda!215412))))

(declare-fun bs!1110586 () Bool)

(assert (= bs!1110586 (and b!4722059 d!1503282)))

(assert (=> bs!1110586 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886606) (= lambda!215470 lambda!215457))))

(declare-fun bs!1110587 () Bool)

(assert (= bs!1110587 (and b!4722059 d!1503126)))

(assert (=> bs!1110587 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886893) (= lambda!215470 lambda!215415))))

(declare-fun bs!1110588 () Bool)

(assert (= bs!1110588 (and b!4722059 b!4721424)))

(assert (=> bs!1110588 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215343))))

(declare-fun bs!1110589 () Bool)

(assert (= bs!1110589 (and b!4722059 b!4721544)))

(assert (=> bs!1110589 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886775) (= lambda!215470 lambda!215388))))

(declare-fun bs!1110590 () Bool)

(assert (= bs!1110590 (and b!4722059 d!1503024)))

(assert (=> bs!1110590 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886771) (= lambda!215470 lambda!215389))))

(assert (=> bs!1110578 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886606) (= lambda!215470 lambda!215345))))

(declare-fun bs!1110591 () Bool)

(assert (= bs!1110591 (and b!4722059 b!4722060)))

(assert (=> bs!1110591 (= lambda!215470 lambda!215468)))

(declare-fun bs!1110592 () Bool)

(assert (= bs!1110592 (and b!4722059 d!1503162)))

(assert (=> bs!1110592 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886627) (= lambda!215470 lambda!215420))))

(declare-fun bs!1110593 () Bool)

(assert (= bs!1110593 (and b!4722059 b!4721530)))

(assert (=> bs!1110593 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215375))))

(declare-fun bs!1110594 () Bool)

(assert (= bs!1110594 (and b!4722059 b!4721844)))

(assert (=> bs!1110594 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215470 lambda!215425))))

(declare-fun bs!1110595 () Bool)

(assert (= bs!1110595 (and b!4722059 b!4721531)))

(assert (=> bs!1110595 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215373))))

(declare-fun bs!1110596 () Bool)

(assert (= bs!1110596 (and b!4722059 b!4721431)))

(assert (=> bs!1110596 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215347))))

(assert (=> bs!1110579 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215470 lambda!215461))))

(declare-fun bs!1110597 () Bool)

(assert (= bs!1110597 (and b!4722059 d!1502964)))

(assert (=> bs!1110597 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886623) (= lambda!215470 lambda!215352))))

(assert (=> bs!1110589 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886424) (= lambda!215470 lambda!215387))))

(assert (=> bs!1110593 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886730) (= lambda!215470 lambda!215376))))

(declare-fun bs!1110598 () Bool)

(assert (= bs!1110598 (and b!4722059 b!4722005)))

(assert (=> bs!1110598 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215470 lambda!215458))))

(declare-fun bs!1110599 () Bool)

(assert (= bs!1110599 (and b!4722059 d!1503014)))

(assert (=> bs!1110599 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886747) (= lambda!215470 lambda!215382))))

(declare-fun bs!1110600 () Bool)

(assert (= bs!1110600 (and b!4722059 d!1503040)))

(assert (=> bs!1110600 (not (= lambda!215470 lambda!215399))))

(declare-fun bs!1110601 () Bool)

(assert (= bs!1110601 (and b!4722059 d!1503082)))

(assert (=> bs!1110601 (= (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1886843) (= lambda!215470 lambda!215406))))

(assert (=> b!4722059 true))

(declare-fun lt!1887237 () ListMap!5277)

(declare-fun lambda!215473 () Int)

(assert (=> bs!1110562 (= (= lt!1887237 lt!1886726) (= lambda!215473 lambda!215378))))

(assert (=> bs!1110563 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215379))))

(assert (=> bs!1110565 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215473 lambda!215403))))

(assert (=> bs!1110567 (= (= lt!1887237 lt!1886730) (= lambda!215473 lambda!215411))))

(assert (=> bs!1110569 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215473 lambda!215421))))

(assert (=> bs!1110570 (= (= lt!1887237 lt!1886602) (= lambda!215473 lambda!215346))))

(assert (=> bs!1110571 (= (= lt!1887237 lt!1886897) (= lambda!215473 lambda!215414))))

(assert (=> bs!1110571 (= (= lt!1887237 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215473 lambda!215413))))

(assert (=> bs!1110572 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215386))))

(assert (=> bs!1110573 (not (= lambda!215473 lambda!215385))))

(assert (=> bs!1110574 (= (= lt!1887237 lt!1886847) (= lambda!215473 lambda!215405))))

(assert (=> bs!1110575 (= (= lt!1887237 lt!1887136) (= lambda!215473 lambda!215465))))

(assert (=> bs!1110576 (= (= lt!1887237 lt!1886627) (= lambda!215473 lambda!215349))))

(assert (=> bs!1110577 (= (= lt!1887237 lt!1887015) (= lambda!215473 lambda!215427))))

(assert (=> bs!1110578 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215344))))

(assert (=> bs!1110579 (= (= lt!1887237 lt!1887140) (= lambda!215473 lambda!215463))))

(assert (=> bs!1110580 (= (= lt!1887237 lt!1887011) (= lambda!215473 lambda!215428))))

(assert (=> bs!1110581 (= (= lt!1887237 lt!1886751) (= lambda!215473 lambda!215381))))

(assert (=> bs!1110576 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215348))))

(assert (=> bs!1110582 (= (= lt!1887237 lt!1886947) (= lambda!215473 lambda!215423))))

(assert (=> bs!1110582 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215473 lambda!215422))))

(assert (=> bs!1110581 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215380))))

(assert (=> bs!1110583 (= (= lt!1887237 lt!1886943) (= lambda!215473 lambda!215424))))

(assert (=> bs!1110574 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215473 lambda!215404))))

(assert (=> bs!1110584 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215419))))

(assert (=> bs!1110577 (= (= lt!1887237 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215473 lambda!215426))))

(assert (=> bs!1110585 (= (= lt!1887237 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215473 lambda!215412))))

(assert (=> bs!1110586 (= (= lt!1887237 lt!1886606) (= lambda!215473 lambda!215457))))

(assert (=> bs!1110587 (= (= lt!1887237 lt!1886893) (= lambda!215473 lambda!215415))))

(assert (=> bs!1110588 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215343))))

(assert (=> bs!1110589 (= (= lt!1887237 lt!1886775) (= lambda!215473 lambda!215388))))

(assert (=> bs!1110590 (= (= lt!1887237 lt!1886771) (= lambda!215473 lambda!215389))))

(assert (=> bs!1110578 (= (= lt!1887237 lt!1886606) (= lambda!215473 lambda!215345))))

(assert (=> bs!1110591 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215473 lambda!215468))))

(assert (=> bs!1110592 (= (= lt!1887237 lt!1886627) (= lambda!215473 lambda!215420))))

(assert (=> bs!1110593 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215375))))

(assert (=> bs!1110594 (= (= lt!1887237 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215473 lambda!215425))))

(assert (=> bs!1110595 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215373))))

(assert (=> bs!1110596 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215347))))

(assert (=> bs!1110579 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215473 lambda!215461))))

(assert (=> bs!1110597 (= (= lt!1887237 lt!1886623) (= lambda!215473 lambda!215352))))

(assert (=> bs!1110589 (= (= lt!1887237 lt!1886424) (= lambda!215473 lambda!215387))))

(assert (=> bs!1110593 (= (= lt!1887237 lt!1886730) (= lambda!215473 lambda!215376))))

(assert (=> bs!1110598 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215473 lambda!215458))))

(assert (=> bs!1110599 (= (= lt!1887237 lt!1886747) (= lambda!215473 lambda!215382))))

(assert (=> bs!1110601 (= (= lt!1887237 lt!1886843) (= lambda!215473 lambda!215406))))

(assert (=> b!4722059 (= (= lt!1887237 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215473 lambda!215470))))

(assert (=> bs!1110600 (not (= lambda!215473 lambda!215399))))

(assert (=> b!4722059 true))

(declare-fun bs!1110629 () Bool)

(declare-fun d!1503322 () Bool)

(assert (= bs!1110629 (and d!1503322 d!1503008)))

(declare-fun lt!1887233 () ListMap!5277)

(declare-fun lambda!215474 () Int)

(assert (=> bs!1110629 (= (= lt!1887233 lt!1886726) (= lambda!215474 lambda!215378))))

(declare-fun bs!1110630 () Bool)

(assert (= bs!1110630 (and d!1503322 b!4721536)))

(assert (=> bs!1110630 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215379))))

(declare-fun bs!1110631 () Bool)

(assert (= bs!1110631 (and d!1503322 b!4721633)))

(assert (=> bs!1110631 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215474 lambda!215403))))

(declare-fun bs!1110632 () Bool)

(assert (= bs!1110632 (and d!1503322 d!1503084)))

(assert (=> bs!1110632 (= (= lt!1887233 lt!1886730) (= lambda!215474 lambda!215411))))

(declare-fun bs!1110633 () Bool)

(assert (= bs!1110633 (and d!1503322 b!4721748)))

(assert (=> bs!1110633 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215474 lambda!215421))))

(declare-fun bs!1110634 () Bool)

(assert (= bs!1110634 (and d!1503322 b!4721695)))

(assert (=> bs!1110634 (= (= lt!1887233 lt!1886897) (= lambda!215474 lambda!215414))))

(assert (=> bs!1110634 (= (= lt!1887233 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215474 lambda!215413))))

(declare-fun bs!1110636 () Bool)

(assert (= bs!1110636 (and d!1503322 b!4721545)))

(assert (=> bs!1110636 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215386))))

(declare-fun bs!1110638 () Bool)

(assert (= bs!1110638 (and d!1503322 d!1503020)))

(assert (=> bs!1110638 (not (= lambda!215474 lambda!215385))))

(declare-fun bs!1110640 () Bool)

(assert (= bs!1110640 (and d!1503322 b!4721632)))

(assert (=> bs!1110640 (= (= lt!1887233 lt!1886847) (= lambda!215474 lambda!215405))))

(declare-fun bs!1110642 () Bool)

(assert (= bs!1110642 (and d!1503322 d!1503294)))

(assert (=> bs!1110642 (= (= lt!1887233 lt!1887136) (= lambda!215474 lambda!215465))))

(declare-fun bs!1110643 () Bool)

(assert (= bs!1110643 (and d!1503322 b!4721430)))

(assert (=> bs!1110643 (= (= lt!1887233 lt!1886627) (= lambda!215474 lambda!215349))))

(declare-fun bs!1110645 () Bool)

(assert (= bs!1110645 (and d!1503322 b!4721843)))

(assert (=> bs!1110645 (= (= lt!1887233 lt!1887015) (= lambda!215474 lambda!215427))))

(declare-fun bs!1110647 () Bool)

(assert (= bs!1110647 (and d!1503322 b!4721423)))

(assert (=> bs!1110647 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215344))))

(declare-fun bs!1110649 () Bool)

(assert (= bs!1110649 (and d!1503322 b!4722004)))

(assert (=> bs!1110649 (= (= lt!1887233 lt!1887140) (= lambda!215474 lambda!215463))))

(declare-fun bs!1110651 () Bool)

(assert (= bs!1110651 (and d!1503322 d!1503200)))

(assert (=> bs!1110651 (= (= lt!1887233 lt!1887011) (= lambda!215474 lambda!215428))))

(declare-fun bs!1110653 () Bool)

(assert (= bs!1110653 (and d!1503322 b!4721535)))

(assert (=> bs!1110653 (= (= lt!1887233 lt!1886751) (= lambda!215474 lambda!215381))))

(assert (=> bs!1110643 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215348))))

(declare-fun bs!1110656 () Bool)

(assert (= bs!1110656 (and d!1503322 b!4721747)))

(assert (=> bs!1110656 (= (= lt!1887233 lt!1886947) (= lambda!215474 lambda!215423))))

(assert (=> bs!1110656 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215474 lambda!215422))))

(declare-fun bs!1110659 () Bool)

(assert (= bs!1110659 (and d!1503322 d!1502956)))

(assert (=> bs!1110659 (= (= lt!1887233 lt!1886602) (= lambda!215474 lambda!215346))))

(declare-fun bs!1110661 () Bool)

(assert (= bs!1110661 (and d!1503322 b!4722059)))

(assert (=> bs!1110661 (= (= lt!1887233 lt!1887237) (= lambda!215474 lambda!215473))))

(assert (=> bs!1110653 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215380))))

(declare-fun bs!1110663 () Bool)

(assert (= bs!1110663 (and d!1503322 d!1503166)))

(assert (=> bs!1110663 (= (= lt!1887233 lt!1886943) (= lambda!215474 lambda!215424))))

(assert (=> bs!1110640 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215474 lambda!215404))))

(declare-fun bs!1110665 () Bool)

(assert (= bs!1110665 (and d!1503322 d!1503132)))

(assert (=> bs!1110665 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215419))))

(assert (=> bs!1110645 (= (= lt!1887233 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215474 lambda!215426))))

(declare-fun bs!1110668 () Bool)

(assert (= bs!1110668 (and d!1503322 b!4721696)))

(assert (=> bs!1110668 (= (= lt!1887233 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215474 lambda!215412))))

(declare-fun bs!1110670 () Bool)

(assert (= bs!1110670 (and d!1503322 d!1503282)))

(assert (=> bs!1110670 (= (= lt!1887233 lt!1886606) (= lambda!215474 lambda!215457))))

(declare-fun bs!1110672 () Bool)

(assert (= bs!1110672 (and d!1503322 d!1503126)))

(assert (=> bs!1110672 (= (= lt!1887233 lt!1886893) (= lambda!215474 lambda!215415))))

(declare-fun bs!1110674 () Bool)

(assert (= bs!1110674 (and d!1503322 b!4721424)))

(assert (=> bs!1110674 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215343))))

(declare-fun bs!1110675 () Bool)

(assert (= bs!1110675 (and d!1503322 b!4721544)))

(assert (=> bs!1110675 (= (= lt!1887233 lt!1886775) (= lambda!215474 lambda!215388))))

(declare-fun bs!1110677 () Bool)

(assert (= bs!1110677 (and d!1503322 d!1503024)))

(assert (=> bs!1110677 (= (= lt!1887233 lt!1886771) (= lambda!215474 lambda!215389))))

(assert (=> bs!1110647 (= (= lt!1887233 lt!1886606) (= lambda!215474 lambda!215345))))

(declare-fun bs!1110679 () Bool)

(assert (= bs!1110679 (and d!1503322 b!4722060)))

(assert (=> bs!1110679 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215474 lambda!215468))))

(declare-fun bs!1110680 () Bool)

(assert (= bs!1110680 (and d!1503322 d!1503162)))

(assert (=> bs!1110680 (= (= lt!1887233 lt!1886627) (= lambda!215474 lambda!215420))))

(declare-fun bs!1110681 () Bool)

(assert (= bs!1110681 (and d!1503322 b!4721530)))

(assert (=> bs!1110681 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215375))))

(declare-fun bs!1110684 () Bool)

(assert (= bs!1110684 (and d!1503322 b!4721844)))

(assert (=> bs!1110684 (= (= lt!1887233 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215474 lambda!215425))))

(declare-fun bs!1110686 () Bool)

(assert (= bs!1110686 (and d!1503322 b!4721531)))

(assert (=> bs!1110686 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215373))))

(declare-fun bs!1110688 () Bool)

(assert (= bs!1110688 (and d!1503322 b!4721431)))

(assert (=> bs!1110688 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215347))))

(assert (=> bs!1110649 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215474 lambda!215461))))

(declare-fun bs!1110690 () Bool)

(assert (= bs!1110690 (and d!1503322 d!1502964)))

(assert (=> bs!1110690 (= (= lt!1887233 lt!1886623) (= lambda!215474 lambda!215352))))

(assert (=> bs!1110675 (= (= lt!1887233 lt!1886424) (= lambda!215474 lambda!215387))))

(assert (=> bs!1110681 (= (= lt!1887233 lt!1886730) (= lambda!215474 lambda!215376))))

(declare-fun bs!1110691 () Bool)

(assert (= bs!1110691 (and d!1503322 b!4722005)))

(assert (=> bs!1110691 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215474 lambda!215458))))

(declare-fun bs!1110692 () Bool)

(assert (= bs!1110692 (and d!1503322 d!1503014)))

(assert (=> bs!1110692 (= (= lt!1887233 lt!1886747) (= lambda!215474 lambda!215382))))

(declare-fun bs!1110693 () Bool)

(assert (= bs!1110693 (and d!1503322 d!1503082)))

(assert (=> bs!1110693 (= (= lt!1887233 lt!1886843) (= lambda!215474 lambda!215406))))

(assert (=> bs!1110661 (= (= lt!1887233 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215474 lambda!215470))))

(declare-fun bs!1110694 () Bool)

(assert (= bs!1110694 (and d!1503322 d!1503040)))

(assert (=> bs!1110694 (not (= lambda!215474 lambda!215399))))

(assert (=> d!1503322 true))

(declare-fun bm!330243 () Bool)

(declare-fun call!330249 () Unit!129750)

(assert (=> bm!330243 (= call!330249 (lemmaContainsAllItsOwnKeys!795 (+!2267 lt!1886424 (h!59169 lt!1886428))))))

(declare-fun e!2944954 () ListMap!5277)

(assert (=> b!4722059 (= e!2944954 lt!1887237)))

(declare-fun lt!1887236 () ListMap!5277)

(assert (=> b!4722059 (= lt!1887236 (+!2267 (+!2267 lt!1886424 (h!59169 lt!1886428)) (h!59169 (t!360210 lt!1886428))))))

(assert (=> b!4722059 (= lt!1887237 (addToMapMapFromBucket!1442 (t!360210 (t!360210 lt!1886428)) (+!2267 (+!2267 lt!1886424 (h!59169 lt!1886428)) (h!59169 (t!360210 lt!1886428)))))))

(declare-fun lt!1887243 () Unit!129750)

(assert (=> b!4722059 (= lt!1887243 call!330249)))

(declare-fun call!330248 () Bool)

(assert (=> b!4722059 call!330248))

(declare-fun lt!1887240 () Unit!129750)

(assert (=> b!4722059 (= lt!1887240 lt!1887243)))

(declare-fun call!330250 () Bool)

(assert (=> b!4722059 call!330250))

(declare-fun lt!1887241 () Unit!129750)

(declare-fun Unit!130016 () Unit!129750)

(assert (=> b!4722059 (= lt!1887241 Unit!130016)))

(assert (=> b!4722059 (forall!11584 (t!360210 (t!360210 lt!1886428)) lambda!215473)))

(declare-fun lt!1887248 () Unit!129750)

(declare-fun Unit!130017 () Unit!129750)

(assert (=> b!4722059 (= lt!1887248 Unit!130017)))

(declare-fun lt!1887232 () Unit!129750)

(declare-fun Unit!130018 () Unit!129750)

(assert (=> b!4722059 (= lt!1887232 Unit!130018)))

(declare-fun lt!1887235 () Unit!129750)

(assert (=> b!4722059 (= lt!1887235 (forallContained!3635 (toList!5913 lt!1887236) lambda!215473 (h!59169 (t!360210 lt!1886428))))))

(assert (=> b!4722059 (contains!16168 lt!1887236 (_1!30515 (h!59169 (t!360210 lt!1886428))))))

(declare-fun lt!1887231 () Unit!129750)

(declare-fun Unit!130019 () Unit!129750)

(assert (=> b!4722059 (= lt!1887231 Unit!130019)))

(assert (=> b!4722059 (contains!16168 lt!1887237 (_1!30515 (h!59169 (t!360210 lt!1886428))))))

(declare-fun lt!1887238 () Unit!129750)

(declare-fun Unit!130020 () Unit!129750)

(assert (=> b!4722059 (= lt!1887238 Unit!130020)))

(assert (=> b!4722059 (forall!11584 (t!360210 lt!1886428) lambda!215473)))

(declare-fun lt!1887250 () Unit!129750)

(declare-fun Unit!130021 () Unit!129750)

(assert (=> b!4722059 (= lt!1887250 Unit!130021)))

(assert (=> b!4722059 (forall!11584 (toList!5913 lt!1887236) lambda!215473)))

(declare-fun lt!1887249 () Unit!129750)

(declare-fun Unit!130022 () Unit!129750)

(assert (=> b!4722059 (= lt!1887249 Unit!130022)))

(declare-fun lt!1887234 () Unit!129750)

(declare-fun Unit!130023 () Unit!129750)

(assert (=> b!4722059 (= lt!1887234 Unit!130023)))

(declare-fun lt!1887246 () Unit!129750)

(assert (=> b!4722059 (= lt!1887246 (addForallContainsKeyThenBeforeAdding!794 (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887237 (_1!30515 (h!59169 (t!360210 lt!1886428))) (_2!30515 (h!59169 (t!360210 lt!1886428)))))))

(assert (=> b!4722059 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 lt!1886428))) lambda!215473)))

(declare-fun lt!1887242 () Unit!129750)

(assert (=> b!4722059 (= lt!1887242 lt!1887246)))

(assert (=> b!4722059 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 lt!1886428))) lambda!215473)))

(declare-fun lt!1887245 () Unit!129750)

(declare-fun Unit!130024 () Unit!129750)

(assert (=> b!4722059 (= lt!1887245 Unit!130024)))

(declare-fun res!1997679 () Bool)

(assert (=> b!4722059 (= res!1997679 (forall!11584 (t!360210 lt!1886428) lambda!215473))))

(declare-fun e!2944955 () Bool)

(assert (=> b!4722059 (=> (not res!1997679) (not e!2944955))))

(assert (=> b!4722059 e!2944955))

(declare-fun lt!1887247 () Unit!129750)

(declare-fun Unit!130025 () Unit!129750)

(assert (=> b!4722059 (= lt!1887247 Unit!130025)))

(declare-fun bm!330244 () Bool)

(declare-fun c!806433 () Bool)

(assert (=> bm!330244 (= call!330250 (forall!11584 (ite c!806433 (toList!5913 (+!2267 lt!1886424 (h!59169 lt!1886428))) (toList!5913 lt!1887236)) (ite c!806433 lambda!215468 lambda!215473)))))

(assert (=> b!4722060 (= e!2944954 (+!2267 lt!1886424 (h!59169 lt!1886428)))))

(declare-fun lt!1887251 () Unit!129750)

(assert (=> b!4722060 (= lt!1887251 call!330249)))

(assert (=> b!4722060 call!330250))

(declare-fun lt!1887239 () Unit!129750)

(assert (=> b!4722060 (= lt!1887239 lt!1887251)))

(assert (=> b!4722060 call!330248))

(declare-fun lt!1887244 () Unit!129750)

(declare-fun Unit!130026 () Unit!129750)

(assert (=> b!4722060 (= lt!1887244 Unit!130026)))

(declare-fun b!4722062 () Bool)

(declare-fun res!1997681 () Bool)

(declare-fun e!2944953 () Bool)

(assert (=> b!4722062 (=> (not res!1997681) (not e!2944953))))

(assert (=> b!4722062 (= res!1997681 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 lt!1886428))) lambda!215474))))

(declare-fun bm!330245 () Bool)

(assert (=> bm!330245 (= call!330248 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 lt!1886428))) (ite c!806433 lambda!215468 lambda!215470)))))

(declare-fun b!4722063 () Bool)

(assert (=> b!4722063 (= e!2944953 (invariantList!1509 (toList!5913 lt!1887233)))))

(declare-fun b!4722061 () Bool)

(assert (=> b!4722061 (= e!2944955 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 lt!1886428))) lambda!215473))))

(assert (=> d!1503322 e!2944953))

(declare-fun res!1997680 () Bool)

(assert (=> d!1503322 (=> (not res!1997680) (not e!2944953))))

(assert (=> d!1503322 (= res!1997680 (forall!11584 (t!360210 lt!1886428) lambda!215474))))

(assert (=> d!1503322 (= lt!1887233 e!2944954)))

(assert (=> d!1503322 (= c!806433 ((_ is Nil!52824) (t!360210 lt!1886428)))))

(assert (=> d!1503322 (noDuplicateKeys!2012 (t!360210 lt!1886428))))

(assert (=> d!1503322 (= (addToMapMapFromBucket!1442 (t!360210 lt!1886428) (+!2267 lt!1886424 (h!59169 lt!1886428))) lt!1887233)))

(assert (= (and d!1503322 c!806433) b!4722060))

(assert (= (and d!1503322 (not c!806433)) b!4722059))

(assert (= (and b!4722059 res!1997679) b!4722061))

(assert (= (or b!4722060 b!4722059) bm!330243))

(assert (= (or b!4722060 b!4722059) bm!330245))

(assert (= (or b!4722060 b!4722059) bm!330244))

(assert (= (and d!1503322 res!1997680) b!4722062))

(assert (= (and b!4722062 res!1997681) b!4722063))

(declare-fun m!5657089 () Bool)

(assert (=> b!4722063 m!5657089))

(declare-fun m!5657091 () Bool)

(assert (=> d!1503322 m!5657091))

(assert (=> d!1503322 m!5656179))

(declare-fun m!5657093 () Bool)

(assert (=> b!4722062 m!5657093))

(assert (=> bm!330243 m!5655837))

(declare-fun m!5657095 () Bool)

(assert (=> bm!330243 m!5657095))

(declare-fun m!5657097 () Bool)

(assert (=> b!4722059 m!5657097))

(declare-fun m!5657099 () Bool)

(assert (=> b!4722059 m!5657099))

(declare-fun m!5657101 () Bool)

(assert (=> b!4722059 m!5657101))

(assert (=> b!4722059 m!5655837))

(declare-fun m!5657105 () Bool)

(assert (=> b!4722059 m!5657105))

(assert (=> b!4722059 m!5657101))

(declare-fun m!5657109 () Bool)

(assert (=> b!4722059 m!5657109))

(declare-fun m!5657113 () Bool)

(assert (=> b!4722059 m!5657113))

(declare-fun m!5657115 () Bool)

(assert (=> b!4722059 m!5657115))

(declare-fun m!5657117 () Bool)

(assert (=> b!4722059 m!5657117))

(assert (=> b!4722059 m!5657117))

(assert (=> b!4722059 m!5655837))

(declare-fun m!5657119 () Bool)

(assert (=> b!4722059 m!5657119))

(assert (=> b!4722059 m!5657105))

(declare-fun m!5657121 () Bool)

(assert (=> b!4722059 m!5657121))

(declare-fun m!5657123 () Bool)

(assert (=> bm!330245 m!5657123))

(declare-fun m!5657129 () Bool)

(assert (=> bm!330244 m!5657129))

(assert (=> b!4722061 m!5657117))

(assert (=> b!4721535 d!1503322))

(assert (=> b!4721535 d!1503116))

(declare-fun d!1503334 () Bool)

(assert (=> d!1503334 (dynLambda!21817 lambda!215381 (h!59169 lt!1886428))))

(declare-fun lt!1887266 () Unit!129750)

(assert (=> d!1503334 (= lt!1887266 (choose!33308 (toList!5913 lt!1886750) lambda!215381 (h!59169 lt!1886428)))))

(declare-fun e!2944966 () Bool)

(assert (=> d!1503334 e!2944966))

(declare-fun res!1997690 () Bool)

(assert (=> d!1503334 (=> (not res!1997690) (not e!2944966))))

(assert (=> d!1503334 (= res!1997690 (forall!11584 (toList!5913 lt!1886750) lambda!215381))))

(assert (=> d!1503334 (= (forallContained!3635 (toList!5913 lt!1886750) lambda!215381 (h!59169 lt!1886428)) lt!1887266)))

(declare-fun b!4722078 () Bool)

(assert (=> b!4722078 (= e!2944966 (contains!16169 (toList!5913 lt!1886750) (h!59169 lt!1886428)))))

(assert (= (and d!1503334 res!1997690) b!4722078))

(declare-fun b_lambda!178441 () Bool)

(assert (=> (not b_lambda!178441) (not d!1503334)))

(declare-fun m!5657143 () Bool)

(assert (=> d!1503334 m!5657143))

(declare-fun m!5657145 () Bool)

(assert (=> d!1503334 m!5657145))

(assert (=> d!1503334 m!5655831))

(declare-fun m!5657147 () Bool)

(assert (=> b!4722078 m!5657147))

(assert (=> b!4721535 d!1503334))

(declare-fun bs!1110696 () Bool)

(declare-fun d!1503338 () Bool)

(assert (= bs!1110696 (and d!1503338 d!1503008)))

(declare-fun lambda!215476 () Int)

(assert (=> bs!1110696 (= (= lt!1886751 lt!1886726) (= lambda!215476 lambda!215378))))

(declare-fun bs!1110697 () Bool)

(assert (= bs!1110697 (and d!1503338 b!4721536)))

(assert (=> bs!1110697 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215379))))

(declare-fun bs!1110698 () Bool)

(assert (= bs!1110698 (and d!1503338 b!4721633)))

(assert (=> bs!1110698 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215476 lambda!215403))))

(declare-fun bs!1110699 () Bool)

(assert (= bs!1110699 (and d!1503338 d!1503084)))

(assert (=> bs!1110699 (= (= lt!1886751 lt!1886730) (= lambda!215476 lambda!215411))))

(declare-fun bs!1110700 () Bool)

(assert (= bs!1110700 (and d!1503338 b!4721748)))

(assert (=> bs!1110700 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215476 lambda!215421))))

(declare-fun bs!1110701 () Bool)

(assert (= bs!1110701 (and d!1503338 b!4721695)))

(assert (=> bs!1110701 (= (= lt!1886751 lt!1886897) (= lambda!215476 lambda!215414))))

(assert (=> bs!1110701 (= (= lt!1886751 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215476 lambda!215413))))

(declare-fun bs!1110702 () Bool)

(assert (= bs!1110702 (and d!1503338 b!4721545)))

(assert (=> bs!1110702 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215386))))

(declare-fun bs!1110703 () Bool)

(assert (= bs!1110703 (and d!1503338 d!1503020)))

(assert (=> bs!1110703 (not (= lambda!215476 lambda!215385))))

(declare-fun bs!1110704 () Bool)

(assert (= bs!1110704 (and d!1503338 b!4721632)))

(assert (=> bs!1110704 (= (= lt!1886751 lt!1886847) (= lambda!215476 lambda!215405))))

(declare-fun bs!1110705 () Bool)

(assert (= bs!1110705 (and d!1503338 d!1503294)))

(assert (=> bs!1110705 (= (= lt!1886751 lt!1887136) (= lambda!215476 lambda!215465))))

(declare-fun bs!1110706 () Bool)

(assert (= bs!1110706 (and d!1503338 b!4721430)))

(assert (=> bs!1110706 (= (= lt!1886751 lt!1886627) (= lambda!215476 lambda!215349))))

(declare-fun bs!1110707 () Bool)

(assert (= bs!1110707 (and d!1503338 b!4721843)))

(assert (=> bs!1110707 (= (= lt!1886751 lt!1887015) (= lambda!215476 lambda!215427))))

(declare-fun bs!1110708 () Bool)

(assert (= bs!1110708 (and d!1503338 b!4721423)))

(assert (=> bs!1110708 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215344))))

(declare-fun bs!1110709 () Bool)

(assert (= bs!1110709 (and d!1503338 b!4722004)))

(assert (=> bs!1110709 (= (= lt!1886751 lt!1887140) (= lambda!215476 lambda!215463))))

(declare-fun bs!1110710 () Bool)

(assert (= bs!1110710 (and d!1503338 d!1503200)))

(assert (=> bs!1110710 (= (= lt!1886751 lt!1887011) (= lambda!215476 lambda!215428))))

(declare-fun bs!1110711 () Bool)

(assert (= bs!1110711 (and d!1503338 b!4721535)))

(assert (=> bs!1110711 (= lambda!215476 lambda!215381)))

(declare-fun bs!1110712 () Bool)

(assert (= bs!1110712 (and d!1503338 d!1503322)))

(assert (=> bs!1110712 (= (= lt!1886751 lt!1887233) (= lambda!215476 lambda!215474))))

(assert (=> bs!1110706 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215348))))

(declare-fun bs!1110713 () Bool)

(assert (= bs!1110713 (and d!1503338 b!4721747)))

(assert (=> bs!1110713 (= (= lt!1886751 lt!1886947) (= lambda!215476 lambda!215423))))

(assert (=> bs!1110713 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215476 lambda!215422))))

(declare-fun bs!1110714 () Bool)

(assert (= bs!1110714 (and d!1503338 d!1502956)))

(assert (=> bs!1110714 (= (= lt!1886751 lt!1886602) (= lambda!215476 lambda!215346))))

(declare-fun bs!1110715 () Bool)

(assert (= bs!1110715 (and d!1503338 b!4722059)))

(assert (=> bs!1110715 (= (= lt!1886751 lt!1887237) (= lambda!215476 lambda!215473))))

(assert (=> bs!1110711 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215380))))

(declare-fun bs!1110716 () Bool)

(assert (= bs!1110716 (and d!1503338 d!1503166)))

(assert (=> bs!1110716 (= (= lt!1886751 lt!1886943) (= lambda!215476 lambda!215424))))

(assert (=> bs!1110704 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215476 lambda!215404))))

(declare-fun bs!1110717 () Bool)

(assert (= bs!1110717 (and d!1503338 d!1503132)))

(assert (=> bs!1110717 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215419))))

(assert (=> bs!1110707 (= (= lt!1886751 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215476 lambda!215426))))

(declare-fun bs!1110718 () Bool)

(assert (= bs!1110718 (and d!1503338 b!4721696)))

(assert (=> bs!1110718 (= (= lt!1886751 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215476 lambda!215412))))

(declare-fun bs!1110719 () Bool)

(assert (= bs!1110719 (and d!1503338 d!1503282)))

(assert (=> bs!1110719 (= (= lt!1886751 lt!1886606) (= lambda!215476 lambda!215457))))

(declare-fun bs!1110720 () Bool)

(assert (= bs!1110720 (and d!1503338 d!1503126)))

(assert (=> bs!1110720 (= (= lt!1886751 lt!1886893) (= lambda!215476 lambda!215415))))

(declare-fun bs!1110721 () Bool)

(assert (= bs!1110721 (and d!1503338 b!4721424)))

(assert (=> bs!1110721 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215343))))

(declare-fun bs!1110722 () Bool)

(assert (= bs!1110722 (and d!1503338 b!4721544)))

(assert (=> bs!1110722 (= (= lt!1886751 lt!1886775) (= lambda!215476 lambda!215388))))

(declare-fun bs!1110723 () Bool)

(assert (= bs!1110723 (and d!1503338 d!1503024)))

(assert (=> bs!1110723 (= (= lt!1886751 lt!1886771) (= lambda!215476 lambda!215389))))

(assert (=> bs!1110708 (= (= lt!1886751 lt!1886606) (= lambda!215476 lambda!215345))))

(declare-fun bs!1110724 () Bool)

(assert (= bs!1110724 (and d!1503338 b!4722060)))

(assert (=> bs!1110724 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215476 lambda!215468))))

(declare-fun bs!1110725 () Bool)

(assert (= bs!1110725 (and d!1503338 d!1503162)))

(assert (=> bs!1110725 (= (= lt!1886751 lt!1886627) (= lambda!215476 lambda!215420))))

(declare-fun bs!1110726 () Bool)

(assert (= bs!1110726 (and d!1503338 b!4721530)))

(assert (=> bs!1110726 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215375))))

(declare-fun bs!1110727 () Bool)

(assert (= bs!1110727 (and d!1503338 b!4721844)))

(assert (=> bs!1110727 (= (= lt!1886751 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215476 lambda!215425))))

(declare-fun bs!1110728 () Bool)

(assert (= bs!1110728 (and d!1503338 b!4721531)))

(assert (=> bs!1110728 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215373))))

(declare-fun bs!1110729 () Bool)

(assert (= bs!1110729 (and d!1503338 b!4721431)))

(assert (=> bs!1110729 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215347))))

(assert (=> bs!1110709 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215476 lambda!215461))))

(declare-fun bs!1110730 () Bool)

(assert (= bs!1110730 (and d!1503338 d!1502964)))

(assert (=> bs!1110730 (= (= lt!1886751 lt!1886623) (= lambda!215476 lambda!215352))))

(assert (=> bs!1110722 (= (= lt!1886751 lt!1886424) (= lambda!215476 lambda!215387))))

(assert (=> bs!1110726 (= (= lt!1886751 lt!1886730) (= lambda!215476 lambda!215376))))

(declare-fun bs!1110731 () Bool)

(assert (= bs!1110731 (and d!1503338 b!4722005)))

(assert (=> bs!1110731 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215476 lambda!215458))))

(declare-fun bs!1110732 () Bool)

(assert (= bs!1110732 (and d!1503338 d!1503014)))

(assert (=> bs!1110732 (= (= lt!1886751 lt!1886747) (= lambda!215476 lambda!215382))))

(declare-fun bs!1110733 () Bool)

(assert (= bs!1110733 (and d!1503338 d!1503082)))

(assert (=> bs!1110733 (= (= lt!1886751 lt!1886843) (= lambda!215476 lambda!215406))))

(assert (=> bs!1110715 (= (= lt!1886751 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215476 lambda!215470))))

(declare-fun bs!1110734 () Bool)

(assert (= bs!1110734 (and d!1503338 d!1503040)))

(assert (=> bs!1110734 (not (= lambda!215476 lambda!215399))))

(assert (=> d!1503338 true))

(assert (=> d!1503338 (forall!11584 (toList!5913 lt!1886424) lambda!215476)))

(declare-fun lt!1887267 () Unit!129750)

(assert (=> d!1503338 (= lt!1887267 (choose!33307 lt!1886424 lt!1886751 (_1!30515 (h!59169 lt!1886428)) (_2!30515 (h!59169 lt!1886428))))))

(assert (=> d!1503338 (forall!11584 (toList!5913 (+!2267 lt!1886424 (tuple2!54443 (_1!30515 (h!59169 lt!1886428)) (_2!30515 (h!59169 lt!1886428))))) lambda!215476)))

(assert (=> d!1503338 (= (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886751 (_1!30515 (h!59169 lt!1886428)) (_2!30515 (h!59169 lt!1886428))) lt!1887267)))

(declare-fun bs!1110735 () Bool)

(assert (= bs!1110735 d!1503338))

(declare-fun m!5657175 () Bool)

(assert (=> bs!1110735 m!5657175))

(declare-fun m!5657177 () Bool)

(assert (=> bs!1110735 m!5657177))

(declare-fun m!5657179 () Bool)

(assert (=> bs!1110735 m!5657179))

(declare-fun m!5657181 () Bool)

(assert (=> bs!1110735 m!5657181))

(assert (=> b!4721535 d!1503338))

(declare-fun d!1503346 () Bool)

(declare-fun e!2944977 () Bool)

(assert (=> d!1503346 e!2944977))

(declare-fun res!1997698 () Bool)

(assert (=> d!1503346 (=> (not res!1997698) (not e!2944977))))

(declare-fun lt!1887276 () ListMap!5277)

(assert (=> d!1503346 (= res!1997698 (contains!16168 lt!1887276 (_1!30515 (h!59169 lt!1886428))))))

(declare-fun lt!1887278 () List!52948)

(assert (=> d!1503346 (= lt!1887276 (ListMap!5278 lt!1887278))))

(declare-fun lt!1887279 () Unit!129750)

(declare-fun lt!1887277 () Unit!129750)

(assert (=> d!1503346 (= lt!1887279 lt!1887277)))

(assert (=> d!1503346 (= (getValueByKey!1952 lt!1887278 (_1!30515 (h!59169 lt!1886428))) (Some!12355 (_2!30515 (h!59169 lt!1886428))))))

(assert (=> d!1503346 (= lt!1887277 (lemmaContainsTupThenGetReturnValue!1083 lt!1887278 (_1!30515 (h!59169 lt!1886428)) (_2!30515 (h!59169 lt!1886428))))))

(assert (=> d!1503346 (= lt!1887278 (insertNoDuplicatedKeys!591 (toList!5913 lt!1886424) (_1!30515 (h!59169 lt!1886428)) (_2!30515 (h!59169 lt!1886428))))))

(assert (=> d!1503346 (= (+!2267 lt!1886424 (h!59169 lt!1886428)) lt!1887276)))

(declare-fun b!4722092 () Bool)

(declare-fun res!1997699 () Bool)

(assert (=> b!4722092 (=> (not res!1997699) (not e!2944977))))

(assert (=> b!4722092 (= res!1997699 (= (getValueByKey!1952 (toList!5913 lt!1887276) (_1!30515 (h!59169 lt!1886428))) (Some!12355 (_2!30515 (h!59169 lt!1886428)))))))

(declare-fun b!4722093 () Bool)

(assert (=> b!4722093 (= e!2944977 (contains!16169 (toList!5913 lt!1887276) (h!59169 lt!1886428)))))

(assert (= (and d!1503346 res!1997698) b!4722092))

(assert (= (and b!4722092 res!1997699) b!4722093))

(declare-fun m!5657183 () Bool)

(assert (=> d!1503346 m!5657183))

(declare-fun m!5657185 () Bool)

(assert (=> d!1503346 m!5657185))

(declare-fun m!5657187 () Bool)

(assert (=> d!1503346 m!5657187))

(declare-fun m!5657189 () Bool)

(assert (=> d!1503346 m!5657189))

(declare-fun m!5657191 () Bool)

(assert (=> b!4722092 m!5657191))

(declare-fun m!5657193 () Bool)

(assert (=> b!4722093 m!5657193))

(assert (=> b!4721535 d!1503346))

(declare-fun d!1503348 () Bool)

(declare-fun e!2944982 () Bool)

(assert (=> d!1503348 e!2944982))

(declare-fun res!1997701 () Bool)

(assert (=> d!1503348 (=> res!1997701 e!2944982)))

(declare-fun e!2944978 () Bool)

(assert (=> d!1503348 (= res!1997701 e!2944978)))

(declare-fun res!1997702 () Bool)

(assert (=> d!1503348 (=> (not res!1997702) (not e!2944978))))

(declare-fun lt!1887281 () Bool)

(assert (=> d!1503348 (= res!1997702 (not lt!1887281))))

(declare-fun lt!1887284 () Bool)

(assert (=> d!1503348 (= lt!1887281 lt!1887284)))

(declare-fun lt!1887280 () Unit!129750)

(declare-fun e!2944983 () Unit!129750)

(assert (=> d!1503348 (= lt!1887280 e!2944983)))

(declare-fun c!806441 () Bool)

(assert (=> d!1503348 (= c!806441 lt!1887284)))

(assert (=> d!1503348 (= lt!1887284 (containsKey!3367 (toList!5913 lt!1886750) (_1!30515 (h!59169 lt!1886428))))))

(assert (=> d!1503348 (= (contains!16168 lt!1886750 (_1!30515 (h!59169 lt!1886428))) lt!1887281)))

(declare-fun b!4722094 () Bool)

(declare-fun e!2944980 () List!52951)

(assert (=> b!4722094 (= e!2944980 (keys!18970 lt!1886750))))

(declare-fun b!4722095 () Bool)

(declare-fun lt!1887286 () Unit!129750)

(assert (=> b!4722095 (= e!2944983 lt!1887286)))

(declare-fun lt!1887287 () Unit!129750)

(assert (=> b!4722095 (= lt!1887287 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886750) (_1!30515 (h!59169 lt!1886428))))))

(assert (=> b!4722095 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886750) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun lt!1887285 () Unit!129750)

(assert (=> b!4722095 (= lt!1887285 lt!1887287)))

(assert (=> b!4722095 (= lt!1887286 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886750) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun call!330253 () Bool)

(assert (=> b!4722095 call!330253))

(declare-fun b!4722096 () Bool)

(declare-fun e!2944981 () Unit!129750)

(assert (=> b!4722096 (= e!2944983 e!2944981)))

(declare-fun c!806440 () Bool)

(assert (=> b!4722096 (= c!806440 call!330253)))

(declare-fun b!4722097 () Bool)

(declare-fun e!2944979 () Bool)

(assert (=> b!4722097 (= e!2944982 e!2944979)))

(declare-fun res!1997700 () Bool)

(assert (=> b!4722097 (=> (not res!1997700) (not e!2944979))))

(assert (=> b!4722097 (= res!1997700 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886750) (_1!30515 (h!59169 lt!1886428)))))))

(declare-fun b!4722098 () Bool)

(assert (=> b!4722098 (= e!2944980 (getKeysList!949 (toList!5913 lt!1886750)))))

(declare-fun b!4722099 () Bool)

(declare-fun Unit!130027 () Unit!129750)

(assert (=> b!4722099 (= e!2944981 Unit!130027)))

(declare-fun b!4722100 () Bool)

(assert (=> b!4722100 (= e!2944978 (not (contains!16171 (keys!18970 lt!1886750) (_1!30515 (h!59169 lt!1886428)))))))

(declare-fun b!4722101 () Bool)

(assert (=> b!4722101 false))

(declare-fun lt!1887283 () Unit!129750)

(declare-fun lt!1887282 () Unit!129750)

(assert (=> b!4722101 (= lt!1887283 lt!1887282)))

(assert (=> b!4722101 (containsKey!3367 (toList!5913 lt!1886750) (_1!30515 (h!59169 lt!1886428)))))

(assert (=> b!4722101 (= lt!1887282 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886750) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun Unit!130028 () Unit!129750)

(assert (=> b!4722101 (= e!2944981 Unit!130028)))

(declare-fun b!4722102 () Bool)

(assert (=> b!4722102 (= e!2944979 (contains!16171 (keys!18970 lt!1886750) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun bm!330248 () Bool)

(assert (=> bm!330248 (= call!330253 (contains!16171 e!2944980 (_1!30515 (h!59169 lt!1886428))))))

(declare-fun c!806442 () Bool)

(assert (=> bm!330248 (= c!806442 c!806441)))

(assert (= (and d!1503348 c!806441) b!4722095))

(assert (= (and d!1503348 (not c!806441)) b!4722096))

(assert (= (and b!4722096 c!806440) b!4722101))

(assert (= (and b!4722096 (not c!806440)) b!4722099))

(assert (= (or b!4722095 b!4722096) bm!330248))

(assert (= (and bm!330248 c!806442) b!4722098))

(assert (= (and bm!330248 (not c!806442)) b!4722094))

(assert (= (and d!1503348 res!1997702) b!4722100))

(assert (= (and d!1503348 (not res!1997701)) b!4722097))

(assert (= (and b!4722097 res!1997700) b!4722102))

(declare-fun m!5657195 () Bool)

(assert (=> bm!330248 m!5657195))

(declare-fun m!5657197 () Bool)

(assert (=> b!4722097 m!5657197))

(assert (=> b!4722097 m!5657197))

(declare-fun m!5657199 () Bool)

(assert (=> b!4722097 m!5657199))

(declare-fun m!5657201 () Bool)

(assert (=> d!1503348 m!5657201))

(declare-fun m!5657203 () Bool)

(assert (=> b!4722094 m!5657203))

(declare-fun m!5657205 () Bool)

(assert (=> b!4722095 m!5657205))

(assert (=> b!4722095 m!5657197))

(assert (=> b!4722095 m!5657197))

(assert (=> b!4722095 m!5657199))

(declare-fun m!5657207 () Bool)

(assert (=> b!4722095 m!5657207))

(assert (=> b!4722102 m!5657203))

(assert (=> b!4722102 m!5657203))

(declare-fun m!5657209 () Bool)

(assert (=> b!4722102 m!5657209))

(assert (=> b!4722100 m!5657203))

(assert (=> b!4722100 m!5657203))

(assert (=> b!4722100 m!5657209))

(declare-fun m!5657211 () Bool)

(assert (=> b!4722098 m!5657211))

(assert (=> b!4722101 m!5657201))

(declare-fun m!5657213 () Bool)

(assert (=> b!4722101 m!5657213))

(assert (=> b!4721535 d!1503348))

(declare-fun d!1503350 () Bool)

(declare-fun res!1997703 () Bool)

(declare-fun e!2944984 () Bool)

(assert (=> d!1503350 (=> res!1997703 e!2944984)))

(assert (=> d!1503350 (= res!1997703 ((_ is Nil!52824) (t!360210 lt!1886428)))))

(assert (=> d!1503350 (= (forall!11584 (t!360210 lt!1886428) lambda!215381) e!2944984)))

(declare-fun b!4722103 () Bool)

(declare-fun e!2944985 () Bool)

(assert (=> b!4722103 (= e!2944984 e!2944985)))

(declare-fun res!1997704 () Bool)

(assert (=> b!4722103 (=> (not res!1997704) (not e!2944985))))

(assert (=> b!4722103 (= res!1997704 (dynLambda!21817 lambda!215381 (h!59169 (t!360210 lt!1886428))))))

(declare-fun b!4722104 () Bool)

(assert (=> b!4722104 (= e!2944985 (forall!11584 (t!360210 (t!360210 lt!1886428)) lambda!215381))))

(assert (= (and d!1503350 (not res!1997703)) b!4722103))

(assert (= (and b!4722103 res!1997704) b!4722104))

(declare-fun b_lambda!178447 () Bool)

(assert (=> (not b_lambda!178447) (not b!4722103)))

(declare-fun m!5657215 () Bool)

(assert (=> b!4722103 m!5657215))

(declare-fun m!5657217 () Bool)

(assert (=> b!4722104 m!5657217))

(assert (=> b!4721535 d!1503350))

(declare-fun d!1503352 () Bool)

(declare-fun res!1997705 () Bool)

(declare-fun e!2944986 () Bool)

(assert (=> d!1503352 (=> res!1997705 e!2944986)))

(assert (=> d!1503352 (= res!1997705 ((_ is Nil!52824) (toList!5913 lt!1886750)))))

(assert (=> d!1503352 (= (forall!11584 (toList!5913 lt!1886750) lambda!215381) e!2944986)))

(declare-fun b!4722105 () Bool)

(declare-fun e!2944987 () Bool)

(assert (=> b!4722105 (= e!2944986 e!2944987)))

(declare-fun res!1997706 () Bool)

(assert (=> b!4722105 (=> (not res!1997706) (not e!2944987))))

(assert (=> b!4722105 (= res!1997706 (dynLambda!21817 lambda!215381 (h!59169 (toList!5913 lt!1886750))))))

(declare-fun b!4722106 () Bool)

(assert (=> b!4722106 (= e!2944987 (forall!11584 (t!360210 (toList!5913 lt!1886750)) lambda!215381))))

(assert (= (and d!1503352 (not res!1997705)) b!4722105))

(assert (= (and b!4722105 res!1997706) b!4722106))

(declare-fun b_lambda!178449 () Bool)

(assert (=> (not b_lambda!178449) (not b!4722105)))

(declare-fun m!5657219 () Bool)

(assert (=> b!4722105 m!5657219))

(declare-fun m!5657221 () Bool)

(assert (=> b!4722106 m!5657221))

(assert (=> b!4721535 d!1503352))

(declare-fun d!1503354 () Bool)

(declare-fun res!1997707 () Bool)

(declare-fun e!2944988 () Bool)

(assert (=> d!1503354 (=> res!1997707 e!2944988)))

(assert (=> d!1503354 (= res!1997707 ((_ is Nil!52824) lt!1886428))))

(assert (=> d!1503354 (= (forall!11584 lt!1886428 lambda!215381) e!2944988)))

(declare-fun b!4722107 () Bool)

(declare-fun e!2944989 () Bool)

(assert (=> b!4722107 (= e!2944988 e!2944989)))

(declare-fun res!1997708 () Bool)

(assert (=> b!4722107 (=> (not res!1997708) (not e!2944989))))

(assert (=> b!4722107 (= res!1997708 (dynLambda!21817 lambda!215381 (h!59169 lt!1886428)))))

(declare-fun b!4722108 () Bool)

(assert (=> b!4722108 (= e!2944989 (forall!11584 (t!360210 lt!1886428) lambda!215381))))

(assert (= (and d!1503354 (not res!1997707)) b!4722107))

(assert (= (and b!4722107 res!1997708) b!4722108))

(declare-fun b_lambda!178451 () Bool)

(assert (=> (not b_lambda!178451) (not b!4722107)))

(assert (=> b!4722107 m!5657143))

(assert (=> b!4722108 m!5655833))

(assert (=> b!4721535 d!1503354))

(declare-fun d!1503356 () Bool)

(declare-fun e!2944994 () Bool)

(assert (=> d!1503356 e!2944994))

(declare-fun res!1997710 () Bool)

(assert (=> d!1503356 (=> res!1997710 e!2944994)))

(declare-fun e!2944990 () Bool)

(assert (=> d!1503356 (= res!1997710 e!2944990)))

(declare-fun res!1997711 () Bool)

(assert (=> d!1503356 (=> (not res!1997711) (not e!2944990))))

(declare-fun lt!1887292 () Bool)

(assert (=> d!1503356 (= res!1997711 (not lt!1887292))))

(declare-fun lt!1887295 () Bool)

(assert (=> d!1503356 (= lt!1887292 lt!1887295)))

(declare-fun lt!1887291 () Unit!129750)

(declare-fun e!2944995 () Unit!129750)

(assert (=> d!1503356 (= lt!1887291 e!2944995)))

(declare-fun c!806444 () Bool)

(assert (=> d!1503356 (= c!806444 lt!1887295)))

(assert (=> d!1503356 (= lt!1887295 (containsKey!3367 (toList!5913 lt!1886751) (_1!30515 (h!59169 lt!1886428))))))

(assert (=> d!1503356 (= (contains!16168 lt!1886751 (_1!30515 (h!59169 lt!1886428))) lt!1887292)))

(declare-fun b!4722109 () Bool)

(declare-fun e!2944992 () List!52951)

(assert (=> b!4722109 (= e!2944992 (keys!18970 lt!1886751))))

(declare-fun b!4722110 () Bool)

(declare-fun lt!1887297 () Unit!129750)

(assert (=> b!4722110 (= e!2944995 lt!1887297)))

(declare-fun lt!1887298 () Unit!129750)

(assert (=> b!4722110 (= lt!1887298 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886751) (_1!30515 (h!59169 lt!1886428))))))

(assert (=> b!4722110 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886751) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun lt!1887296 () Unit!129750)

(assert (=> b!4722110 (= lt!1887296 lt!1887298)))

(assert (=> b!4722110 (= lt!1887297 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886751) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun call!330254 () Bool)

(assert (=> b!4722110 call!330254))

(declare-fun b!4722111 () Bool)

(declare-fun e!2944993 () Unit!129750)

(assert (=> b!4722111 (= e!2944995 e!2944993)))

(declare-fun c!806443 () Bool)

(assert (=> b!4722111 (= c!806443 call!330254)))

(declare-fun b!4722112 () Bool)

(declare-fun e!2944991 () Bool)

(assert (=> b!4722112 (= e!2944994 e!2944991)))

(declare-fun res!1997709 () Bool)

(assert (=> b!4722112 (=> (not res!1997709) (not e!2944991))))

(assert (=> b!4722112 (= res!1997709 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886751) (_1!30515 (h!59169 lt!1886428)))))))

(declare-fun b!4722113 () Bool)

(assert (=> b!4722113 (= e!2944992 (getKeysList!949 (toList!5913 lt!1886751)))))

(declare-fun b!4722114 () Bool)

(declare-fun Unit!130029 () Unit!129750)

(assert (=> b!4722114 (= e!2944993 Unit!130029)))

(declare-fun b!4722115 () Bool)

(assert (=> b!4722115 (= e!2944990 (not (contains!16171 (keys!18970 lt!1886751) (_1!30515 (h!59169 lt!1886428)))))))

(declare-fun b!4722116 () Bool)

(assert (=> b!4722116 false))

(declare-fun lt!1887294 () Unit!129750)

(declare-fun lt!1887293 () Unit!129750)

(assert (=> b!4722116 (= lt!1887294 lt!1887293)))

(assert (=> b!4722116 (containsKey!3367 (toList!5913 lt!1886751) (_1!30515 (h!59169 lt!1886428)))))

(assert (=> b!4722116 (= lt!1887293 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886751) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun Unit!130030 () Unit!129750)

(assert (=> b!4722116 (= e!2944993 Unit!130030)))

(declare-fun b!4722117 () Bool)

(assert (=> b!4722117 (= e!2944991 (contains!16171 (keys!18970 lt!1886751) (_1!30515 (h!59169 lt!1886428))))))

(declare-fun bm!330249 () Bool)

(assert (=> bm!330249 (= call!330254 (contains!16171 e!2944992 (_1!30515 (h!59169 lt!1886428))))))

(declare-fun c!806445 () Bool)

(assert (=> bm!330249 (= c!806445 c!806444)))

(assert (= (and d!1503356 c!806444) b!4722110))

(assert (= (and d!1503356 (not c!806444)) b!4722111))

(assert (= (and b!4722111 c!806443) b!4722116))

(assert (= (and b!4722111 (not c!806443)) b!4722114))

(assert (= (or b!4722110 b!4722111) bm!330249))

(assert (= (and bm!330249 c!806445) b!4722113))

(assert (= (and bm!330249 (not c!806445)) b!4722109))

(assert (= (and d!1503356 res!1997711) b!4722115))

(assert (= (and d!1503356 (not res!1997710)) b!4722112))

(assert (= (and b!4722112 res!1997709) b!4722117))

(declare-fun m!5657223 () Bool)

(assert (=> bm!330249 m!5657223))

(declare-fun m!5657225 () Bool)

(assert (=> b!4722112 m!5657225))

(assert (=> b!4722112 m!5657225))

(declare-fun m!5657227 () Bool)

(assert (=> b!4722112 m!5657227))

(declare-fun m!5657229 () Bool)

(assert (=> d!1503356 m!5657229))

(declare-fun m!5657231 () Bool)

(assert (=> b!4722109 m!5657231))

(declare-fun m!5657233 () Bool)

(assert (=> b!4722110 m!5657233))

(assert (=> b!4722110 m!5657225))

(assert (=> b!4722110 m!5657225))

(assert (=> b!4722110 m!5657227))

(declare-fun m!5657235 () Bool)

(assert (=> b!4722110 m!5657235))

(assert (=> b!4722117 m!5657231))

(assert (=> b!4722117 m!5657231))

(declare-fun m!5657237 () Bool)

(assert (=> b!4722117 m!5657237))

(assert (=> b!4722115 m!5657231))

(assert (=> b!4722115 m!5657231))

(assert (=> b!4722115 m!5657237))

(declare-fun m!5657239 () Bool)

(assert (=> b!4722113 m!5657239))

(assert (=> b!4722116 m!5657229))

(declare-fun m!5657241 () Bool)

(assert (=> b!4722116 m!5657241))

(assert (=> b!4721535 d!1503356))

(declare-fun d!1503358 () Bool)

(declare-fun c!806446 () Bool)

(assert (=> d!1503358 (= c!806446 ((_ is Nil!52824) (toList!5913 (+!2267 lt!1886431 (h!59169 oldBucket!34)))))))

(declare-fun e!2944996 () (InoxSet tuple2!54442))

(assert (=> d!1503358 (= (content!9390 (toList!5913 (+!2267 lt!1886431 (h!59169 oldBucket!34)))) e!2944996)))

(declare-fun b!4722118 () Bool)

(assert (=> b!4722118 (= e!2944996 ((as const (Array tuple2!54442 Bool)) false))))

(declare-fun b!4722119 () Bool)

(assert (=> b!4722119 (= e!2944996 ((_ map or) (store ((as const (Array tuple2!54442 Bool)) false) (h!59169 (toList!5913 (+!2267 lt!1886431 (h!59169 oldBucket!34)))) true) (content!9390 (t!360210 (toList!5913 (+!2267 lt!1886431 (h!59169 oldBucket!34)))))))))

(assert (= (and d!1503358 c!806446) b!4722118))

(assert (= (and d!1503358 (not c!806446)) b!4722119))

(declare-fun m!5657243 () Bool)

(assert (=> b!4722119 m!5657243))

(declare-fun m!5657245 () Bool)

(assert (=> b!4722119 m!5657245))

(assert (=> d!1502954 d!1503358))

(declare-fun d!1503360 () Bool)

(declare-fun c!806447 () Bool)

(assert (=> d!1503360 (= c!806447 ((_ is Nil!52824) (toList!5913 (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424))))))

(declare-fun e!2944997 () (InoxSet tuple2!54442))

(assert (=> d!1503360 (= (content!9390 (toList!5913 (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424))) e!2944997)))

(declare-fun b!4722120 () Bool)

(assert (=> b!4722120 (= e!2944997 ((as const (Array tuple2!54442 Bool)) false))))

(declare-fun b!4722121 () Bool)

(assert (=> b!4722121 (= e!2944997 ((_ map or) (store ((as const (Array tuple2!54442 Bool)) false) (h!59169 (toList!5913 (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424))) true) (content!9390 (t!360210 (toList!5913 (addToMapMapFromBucket!1442 oldBucket!34 lt!1886424))))))))

(assert (= (and d!1503360 c!806447) b!4722120))

(assert (= (and d!1503360 (not c!806447)) b!4722121))

(declare-fun m!5657247 () Bool)

(assert (=> b!4722121 m!5657247))

(declare-fun m!5657249 () Bool)

(assert (=> b!4722121 m!5657249))

(assert (=> d!1502954 d!1503360))

(declare-fun d!1503362 () Bool)

(declare-fun res!1997712 () Bool)

(declare-fun e!2944998 () Bool)

(assert (=> d!1503362 (=> res!1997712 e!2944998)))

(assert (=> d!1503362 (= res!1997712 ((_ is Nil!52824) (ite c!806304 (toList!5913 lt!1886424) (toList!5913 lt!1886626))))))

(assert (=> d!1503362 (= (forall!11584 (ite c!806304 (toList!5913 lt!1886424) (toList!5913 lt!1886626)) (ite c!806304 lambda!215347 lambda!215349)) e!2944998)))

(declare-fun b!4722122 () Bool)

(declare-fun e!2944999 () Bool)

(assert (=> b!4722122 (= e!2944998 e!2944999)))

(declare-fun res!1997713 () Bool)

(assert (=> b!4722122 (=> (not res!1997713) (not e!2944999))))

(assert (=> b!4722122 (= res!1997713 (dynLambda!21817 (ite c!806304 lambda!215347 lambda!215349) (h!59169 (ite c!806304 (toList!5913 lt!1886424) (toList!5913 lt!1886626)))))))

(declare-fun b!4722123 () Bool)

(assert (=> b!4722123 (= e!2944999 (forall!11584 (t!360210 (ite c!806304 (toList!5913 lt!1886424) (toList!5913 lt!1886626))) (ite c!806304 lambda!215347 lambda!215349)))))

(assert (= (and d!1503362 (not res!1997712)) b!4722122))

(assert (= (and b!4722122 res!1997713) b!4722123))

(declare-fun b_lambda!178453 () Bool)

(assert (=> (not b_lambda!178453) (not b!4722122)))

(declare-fun m!5657255 () Bool)

(assert (=> b!4722122 m!5657255))

(declare-fun m!5657257 () Bool)

(assert (=> b!4722123 m!5657257))

(assert (=> bm!330168 d!1503362))

(declare-fun d!1503366 () Bool)

(declare-fun res!1997714 () Bool)

(declare-fun e!2945000 () Bool)

(assert (=> d!1503366 (=> res!1997714 e!2945000)))

(assert (=> d!1503366 (= res!1997714 (and ((_ is Cons!52824) lt!1886434) (= (_1!30515 (h!59169 lt!1886434)) key!4653)))))

(assert (=> d!1503366 (= (containsKey!3365 lt!1886434 key!4653) e!2945000)))

(declare-fun b!4722124 () Bool)

(declare-fun e!2945001 () Bool)

(assert (=> b!4722124 (= e!2945000 e!2945001)))

(declare-fun res!1997715 () Bool)

(assert (=> b!4722124 (=> (not res!1997715) (not e!2945001))))

(assert (=> b!4722124 (= res!1997715 ((_ is Cons!52824) lt!1886434))))

(declare-fun b!4722125 () Bool)

(assert (=> b!4722125 (= e!2945001 (containsKey!3365 (t!360210 lt!1886434) key!4653))))

(assert (= (and d!1503366 (not res!1997714)) b!4722124))

(assert (= (and b!4722124 res!1997715) b!4722125))

(declare-fun m!5657259 () Bool)

(assert (=> b!4722125 m!5657259))

(assert (=> d!1502940 d!1503366))

(assert (=> d!1502940 d!1502938))

(declare-fun d!1503368 () Bool)

(declare-fun res!1997716 () Bool)

(declare-fun e!2945004 () Bool)

(assert (=> d!1503368 (=> res!1997716 e!2945004)))

(assert (=> d!1503368 (= res!1997716 (not ((_ is Cons!52824) (t!360210 newBucket!218))))))

(assert (=> d!1503368 (= (noDuplicateKeys!2012 (t!360210 newBucket!218)) e!2945004)))

(declare-fun b!4722130 () Bool)

(declare-fun e!2945005 () Bool)

(assert (=> b!4722130 (= e!2945004 e!2945005)))

(declare-fun res!1997717 () Bool)

(assert (=> b!4722130 (=> (not res!1997717) (not e!2945005))))

(assert (=> b!4722130 (= res!1997717 (not (containsKey!3365 (t!360210 (t!360210 newBucket!218)) (_1!30515 (h!59169 (t!360210 newBucket!218))))))))

(declare-fun b!4722131 () Bool)

(assert (=> b!4722131 (= e!2945005 (noDuplicateKeys!2012 (t!360210 (t!360210 newBucket!218))))))

(assert (= (and d!1503368 (not res!1997716)) b!4722130))

(assert (= (and b!4722130 res!1997717) b!4722131))

(declare-fun m!5657261 () Bool)

(assert (=> b!4722130 m!5657261))

(declare-fun m!5657263 () Bool)

(assert (=> b!4722131 m!5657263))

(assert (=> b!4721337 d!1503368))

(assert (=> bm!330167 d!1503132))

(declare-fun d!1503370 () Bool)

(declare-fun res!1997718 () Bool)

(declare-fun e!2945006 () Bool)

(assert (=> d!1503370 (=> res!1997718 e!2945006)))

(assert (=> d!1503370 (= res!1997718 ((_ is Nil!52825) (toList!5914 (ListLongMap!4444 lt!1886426))))))

(assert (=> d!1503370 (= (forall!11582 (toList!5914 (ListLongMap!4444 lt!1886426)) lambda!215395) e!2945006)))

(declare-fun b!4722132 () Bool)

(declare-fun e!2945007 () Bool)

(assert (=> b!4722132 (= e!2945006 e!2945007)))

(declare-fun res!1997719 () Bool)

(assert (=> b!4722132 (=> (not res!1997719) (not e!2945007))))

(assert (=> b!4722132 (= res!1997719 (dynLambda!21815 lambda!215395 (h!59170 (toList!5914 (ListLongMap!4444 lt!1886426)))))))

(declare-fun b!4722133 () Bool)

(assert (=> b!4722133 (= e!2945007 (forall!11582 (t!360211 (toList!5914 (ListLongMap!4444 lt!1886426))) lambda!215395))))

(assert (= (and d!1503370 (not res!1997718)) b!4722132))

(assert (= (and b!4722132 res!1997719) b!4722133))

(declare-fun b_lambda!178455 () Bool)

(assert (=> (not b_lambda!178455) (not b!4722132)))

(declare-fun m!5657265 () Bool)

(assert (=> b!4722132 m!5657265))

(declare-fun m!5657267 () Bool)

(assert (=> b!4722133 m!5657267))

(assert (=> d!1503032 d!1503370))

(declare-fun d!1503372 () Bool)

(declare-fun res!1997720 () Bool)

(declare-fun e!2945009 () Bool)

(assert (=> d!1503372 (=> res!1997720 e!2945009)))

(assert (=> d!1503372 (= res!1997720 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503372 (= (forall!11584 (toList!5913 lt!1886424) (ite c!806332 lambda!215379 lambda!215380)) e!2945009)))

(declare-fun b!4722136 () Bool)

(declare-fun e!2945010 () Bool)

(assert (=> b!4722136 (= e!2945009 e!2945010)))

(declare-fun res!1997721 () Bool)

(assert (=> b!4722136 (=> (not res!1997721) (not e!2945010))))

(assert (=> b!4722136 (= res!1997721 (dynLambda!21817 (ite c!806332 lambda!215379 lambda!215380) (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4722137 () Bool)

(assert (=> b!4722137 (= e!2945010 (forall!11584 (t!360210 (toList!5913 lt!1886424)) (ite c!806332 lambda!215379 lambda!215380)))))

(assert (= (and d!1503372 (not res!1997720)) b!4722136))

(assert (= (and b!4722136 res!1997721) b!4722137))

(declare-fun b_lambda!178457 () Bool)

(assert (=> (not b_lambda!178457) (not b!4722136)))

(declare-fun m!5657277 () Bool)

(assert (=> b!4722136 m!5657277))

(declare-fun m!5657279 () Bool)

(assert (=> b!4722137 m!5657279))

(assert (=> bm!330184 d!1503372))

(declare-fun bs!1110766 () Bool)

(declare-fun b!4722141 () Bool)

(assert (= bs!1110766 (and b!4722141 d!1503008)))

(declare-fun lambda!215480 () Int)

(assert (=> bs!1110766 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886726) (= lambda!215480 lambda!215378))))

(declare-fun bs!1110767 () Bool)

(assert (= bs!1110767 (and b!4722141 b!4721536)))

(assert (=> bs!1110767 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215379))))

(declare-fun bs!1110768 () Bool)

(assert (= bs!1110768 (and b!4722141 b!4721633)))

(assert (=> bs!1110768 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215480 lambda!215403))))

(declare-fun bs!1110769 () Bool)

(assert (= bs!1110769 (and b!4722141 d!1503084)))

(assert (=> bs!1110769 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886730) (= lambda!215480 lambda!215411))))

(declare-fun bs!1110770 () Bool)

(assert (= bs!1110770 (and b!4722141 b!4721748)))

(assert (=> bs!1110770 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215480 lambda!215421))))

(declare-fun bs!1110771 () Bool)

(assert (= bs!1110771 (and b!4722141 b!4721695)))

(assert (=> bs!1110771 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886897) (= lambda!215480 lambda!215414))))

(assert (=> bs!1110771 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215480 lambda!215413))))

(declare-fun bs!1110772 () Bool)

(assert (= bs!1110772 (and b!4722141 b!4721545)))

(assert (=> bs!1110772 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215386))))

(declare-fun bs!1110773 () Bool)

(assert (= bs!1110773 (and b!4722141 d!1503020)))

(assert (=> bs!1110773 (not (= lambda!215480 lambda!215385))))

(declare-fun bs!1110774 () Bool)

(assert (= bs!1110774 (and b!4722141 b!4721632)))

(assert (=> bs!1110774 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886847) (= lambda!215480 lambda!215405))))

(declare-fun bs!1110775 () Bool)

(assert (= bs!1110775 (and b!4722141 d!1503294)))

(assert (=> bs!1110775 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887136) (= lambda!215480 lambda!215465))))

(declare-fun bs!1110776 () Bool)

(assert (= bs!1110776 (and b!4722141 b!4721430)))

(assert (=> bs!1110776 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886627) (= lambda!215480 lambda!215349))))

(declare-fun bs!1110777 () Bool)

(assert (= bs!1110777 (and b!4722141 b!4721843)))

(assert (=> bs!1110777 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887015) (= lambda!215480 lambda!215427))))

(declare-fun bs!1110778 () Bool)

(assert (= bs!1110778 (and b!4722141 b!4721423)))

(assert (=> bs!1110778 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215344))))

(declare-fun bs!1110779 () Bool)

(assert (= bs!1110779 (and b!4722141 b!4722004)))

(assert (=> bs!1110779 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887140) (= lambda!215480 lambda!215463))))

(declare-fun bs!1110780 () Bool)

(assert (= bs!1110780 (and b!4722141 d!1503200)))

(assert (=> bs!1110780 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887011) (= lambda!215480 lambda!215428))))

(declare-fun bs!1110781 () Bool)

(assert (= bs!1110781 (and b!4722141 b!4721535)))

(assert (=> bs!1110781 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886751) (= lambda!215480 lambda!215381))))

(declare-fun bs!1110782 () Bool)

(assert (= bs!1110782 (and b!4722141 d!1503322)))

(assert (=> bs!1110782 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887233) (= lambda!215480 lambda!215474))))

(assert (=> bs!1110776 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215348))))

(declare-fun bs!1110783 () Bool)

(assert (= bs!1110783 (and b!4722141 b!4721747)))

(assert (=> bs!1110783 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886947) (= lambda!215480 lambda!215423))))

(assert (=> bs!1110783 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215480 lambda!215422))))

(declare-fun bs!1110784 () Bool)

(assert (= bs!1110784 (and b!4722141 d!1502956)))

(assert (=> bs!1110784 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886602) (= lambda!215480 lambda!215346))))

(declare-fun bs!1110785 () Bool)

(assert (= bs!1110785 (and b!4722141 b!4722059)))

(assert (=> bs!1110785 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887237) (= lambda!215480 lambda!215473))))

(assert (=> bs!1110781 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215380))))

(declare-fun bs!1110786 () Bool)

(assert (= bs!1110786 (and b!4722141 d!1503166)))

(assert (=> bs!1110786 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886943) (= lambda!215480 lambda!215424))))

(assert (=> bs!1110774 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215480 lambda!215404))))

(declare-fun bs!1110787 () Bool)

(assert (= bs!1110787 (and b!4722141 d!1503132)))

(assert (=> bs!1110787 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215419))))

(assert (=> bs!1110777 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215480 lambda!215426))))

(declare-fun bs!1110788 () Bool)

(assert (= bs!1110788 (and b!4722141 b!4721696)))

(assert (=> bs!1110788 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215480 lambda!215412))))

(declare-fun bs!1110789 () Bool)

(assert (= bs!1110789 (and b!4722141 d!1503282)))

(assert (=> bs!1110789 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886606) (= lambda!215480 lambda!215457))))

(declare-fun bs!1110790 () Bool)

(assert (= bs!1110790 (and b!4722141 d!1503126)))

(assert (=> bs!1110790 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886893) (= lambda!215480 lambda!215415))))

(declare-fun bs!1110791 () Bool)

(assert (= bs!1110791 (and b!4722141 b!4721424)))

(assert (=> bs!1110791 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215343))))

(declare-fun bs!1110792 () Bool)

(assert (= bs!1110792 (and b!4722141 b!4721544)))

(assert (=> bs!1110792 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886775) (= lambda!215480 lambda!215388))))

(declare-fun bs!1110793 () Bool)

(assert (= bs!1110793 (and b!4722141 d!1503024)))

(assert (=> bs!1110793 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886771) (= lambda!215480 lambda!215389))))

(assert (=> bs!1110778 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886606) (= lambda!215480 lambda!215345))))

(declare-fun bs!1110794 () Bool)

(assert (= bs!1110794 (and b!4722141 b!4722060)))

(assert (=> bs!1110794 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215480 lambda!215468))))

(declare-fun bs!1110795 () Bool)

(assert (= bs!1110795 (and b!4722141 d!1503162)))

(assert (=> bs!1110795 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886627) (= lambda!215480 lambda!215420))))

(declare-fun bs!1110796 () Bool)

(assert (= bs!1110796 (and b!4722141 b!4721530)))

(assert (=> bs!1110796 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215375))))

(declare-fun bs!1110797 () Bool)

(assert (= bs!1110797 (and b!4722141 b!4721844)))

(assert (=> bs!1110797 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215480 lambda!215425))))

(declare-fun bs!1110798 () Bool)

(assert (= bs!1110798 (and b!4722141 b!4721531)))

(assert (=> bs!1110798 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215373))))

(declare-fun bs!1110799 () Bool)

(assert (= bs!1110799 (and b!4722141 b!4721431)))

(assert (=> bs!1110799 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215347))))

(assert (=> bs!1110779 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215480 lambda!215461))))

(declare-fun bs!1110800 () Bool)

(assert (= bs!1110800 (and b!4722141 d!1502964)))

(assert (=> bs!1110800 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886623) (= lambda!215480 lambda!215352))))

(assert (=> bs!1110792 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215480 lambda!215387))))

(declare-fun bs!1110801 () Bool)

(assert (= bs!1110801 (and b!4722141 d!1503338)))

(assert (=> bs!1110801 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886751) (= lambda!215480 lambda!215476))))

(assert (=> bs!1110796 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886730) (= lambda!215480 lambda!215376))))

(declare-fun bs!1110802 () Bool)

(assert (= bs!1110802 (and b!4722141 b!4722005)))

(assert (=> bs!1110802 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215480 lambda!215458))))

(declare-fun bs!1110803 () Bool)

(assert (= bs!1110803 (and b!4722141 d!1503014)))

(assert (=> bs!1110803 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886747) (= lambda!215480 lambda!215382))))

(declare-fun bs!1110804 () Bool)

(assert (= bs!1110804 (and b!4722141 d!1503082)))

(assert (=> bs!1110804 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886843) (= lambda!215480 lambda!215406))))

(assert (=> bs!1110785 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215480 lambda!215470))))

(declare-fun bs!1110805 () Bool)

(assert (= bs!1110805 (and b!4722141 d!1503040)))

(assert (=> bs!1110805 (not (= lambda!215480 lambda!215399))))

(assert (=> b!4722141 true))

(declare-fun bs!1110806 () Bool)

(declare-fun b!4722140 () Bool)

(assert (= bs!1110806 (and b!4722140 d!1503008)))

(declare-fun lambda!215481 () Int)

(assert (=> bs!1110806 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886726) (= lambda!215481 lambda!215378))))

(declare-fun bs!1110807 () Bool)

(assert (= bs!1110807 (and b!4722140 b!4721536)))

(assert (=> bs!1110807 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215379))))

(declare-fun bs!1110808 () Bool)

(assert (= bs!1110808 (and b!4722140 b!4721633)))

(assert (=> bs!1110808 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215481 lambda!215403))))

(declare-fun bs!1110809 () Bool)

(assert (= bs!1110809 (and b!4722140 d!1503084)))

(assert (=> bs!1110809 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886730) (= lambda!215481 lambda!215411))))

(declare-fun bs!1110810 () Bool)

(assert (= bs!1110810 (and b!4722140 b!4721748)))

(assert (=> bs!1110810 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215481 lambda!215421))))

(declare-fun bs!1110811 () Bool)

(assert (= bs!1110811 (and b!4722140 b!4721695)))

(assert (=> bs!1110811 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886897) (= lambda!215481 lambda!215414))))

(assert (=> bs!1110811 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215481 lambda!215413))))

(declare-fun bs!1110812 () Bool)

(assert (= bs!1110812 (and b!4722140 b!4721545)))

(assert (=> bs!1110812 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215386))))

(declare-fun bs!1110813 () Bool)

(assert (= bs!1110813 (and b!4722140 b!4721632)))

(assert (=> bs!1110813 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886847) (= lambda!215481 lambda!215405))))

(declare-fun bs!1110814 () Bool)

(assert (= bs!1110814 (and b!4722140 d!1503294)))

(assert (=> bs!1110814 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887136) (= lambda!215481 lambda!215465))))

(declare-fun bs!1110815 () Bool)

(assert (= bs!1110815 (and b!4722140 b!4721430)))

(assert (=> bs!1110815 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886627) (= lambda!215481 lambda!215349))))

(declare-fun bs!1110816 () Bool)

(assert (= bs!1110816 (and b!4722140 b!4721843)))

(assert (=> bs!1110816 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887015) (= lambda!215481 lambda!215427))))

(declare-fun bs!1110817 () Bool)

(assert (= bs!1110817 (and b!4722140 b!4721423)))

(assert (=> bs!1110817 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215344))))

(declare-fun bs!1110818 () Bool)

(assert (= bs!1110818 (and b!4722140 b!4722004)))

(assert (=> bs!1110818 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887140) (= lambda!215481 lambda!215463))))

(declare-fun bs!1110819 () Bool)

(assert (= bs!1110819 (and b!4722140 d!1503200)))

(assert (=> bs!1110819 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887011) (= lambda!215481 lambda!215428))))

(declare-fun bs!1110820 () Bool)

(assert (= bs!1110820 (and b!4722140 b!4721535)))

(assert (=> bs!1110820 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886751) (= lambda!215481 lambda!215381))))

(declare-fun bs!1110821 () Bool)

(assert (= bs!1110821 (and b!4722140 d!1503322)))

(assert (=> bs!1110821 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887233) (= lambda!215481 lambda!215474))))

(assert (=> bs!1110815 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215348))))

(declare-fun bs!1110822 () Bool)

(assert (= bs!1110822 (and b!4722140 b!4721747)))

(assert (=> bs!1110822 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886947) (= lambda!215481 lambda!215423))))

(assert (=> bs!1110822 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215481 lambda!215422))))

(declare-fun bs!1110823 () Bool)

(assert (= bs!1110823 (and b!4722140 d!1502956)))

(assert (=> bs!1110823 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886602) (= lambda!215481 lambda!215346))))

(declare-fun bs!1110824 () Bool)

(assert (= bs!1110824 (and b!4722140 b!4722059)))

(assert (=> bs!1110824 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887237) (= lambda!215481 lambda!215473))))

(assert (=> bs!1110820 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215380))))

(declare-fun bs!1110825 () Bool)

(assert (= bs!1110825 (and b!4722140 d!1503166)))

(assert (=> bs!1110825 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886943) (= lambda!215481 lambda!215424))))

(declare-fun bs!1110826 () Bool)

(assert (= bs!1110826 (and b!4722140 d!1503020)))

(assert (=> bs!1110826 (not (= lambda!215481 lambda!215385))))

(declare-fun bs!1110827 () Bool)

(assert (= bs!1110827 (and b!4722140 b!4722141)))

(assert (=> bs!1110827 (= lambda!215481 lambda!215480)))

(assert (=> bs!1110813 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215481 lambda!215404))))

(declare-fun bs!1110828 () Bool)

(assert (= bs!1110828 (and b!4722140 d!1503132)))

(assert (=> bs!1110828 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215419))))

(assert (=> bs!1110816 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215481 lambda!215426))))

(declare-fun bs!1110829 () Bool)

(assert (= bs!1110829 (and b!4722140 b!4721696)))

(assert (=> bs!1110829 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215481 lambda!215412))))

(declare-fun bs!1110830 () Bool)

(assert (= bs!1110830 (and b!4722140 d!1503282)))

(assert (=> bs!1110830 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886606) (= lambda!215481 lambda!215457))))

(declare-fun bs!1110831 () Bool)

(assert (= bs!1110831 (and b!4722140 d!1503126)))

(assert (=> bs!1110831 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886893) (= lambda!215481 lambda!215415))))

(declare-fun bs!1110832 () Bool)

(assert (= bs!1110832 (and b!4722140 b!4721424)))

(assert (=> bs!1110832 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215343))))

(declare-fun bs!1110833 () Bool)

(assert (= bs!1110833 (and b!4722140 b!4721544)))

(assert (=> bs!1110833 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886775) (= lambda!215481 lambda!215388))))

(declare-fun bs!1110834 () Bool)

(assert (= bs!1110834 (and b!4722140 d!1503024)))

(assert (=> bs!1110834 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886771) (= lambda!215481 lambda!215389))))

(assert (=> bs!1110817 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886606) (= lambda!215481 lambda!215345))))

(declare-fun bs!1110835 () Bool)

(assert (= bs!1110835 (and b!4722140 b!4722060)))

(assert (=> bs!1110835 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215481 lambda!215468))))

(declare-fun bs!1110836 () Bool)

(assert (= bs!1110836 (and b!4722140 d!1503162)))

(assert (=> bs!1110836 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886627) (= lambda!215481 lambda!215420))))

(declare-fun bs!1110837 () Bool)

(assert (= bs!1110837 (and b!4722140 b!4721530)))

(assert (=> bs!1110837 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215375))))

(declare-fun bs!1110838 () Bool)

(assert (= bs!1110838 (and b!4722140 b!4721844)))

(assert (=> bs!1110838 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215481 lambda!215425))))

(declare-fun bs!1110839 () Bool)

(assert (= bs!1110839 (and b!4722140 b!4721531)))

(assert (=> bs!1110839 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215373))))

(declare-fun bs!1110840 () Bool)

(assert (= bs!1110840 (and b!4722140 b!4721431)))

(assert (=> bs!1110840 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215347))))

(assert (=> bs!1110818 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215481 lambda!215461))))

(declare-fun bs!1110841 () Bool)

(assert (= bs!1110841 (and b!4722140 d!1502964)))

(assert (=> bs!1110841 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886623) (= lambda!215481 lambda!215352))))

(assert (=> bs!1110833 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886424) (= lambda!215481 lambda!215387))))

(declare-fun bs!1110842 () Bool)

(assert (= bs!1110842 (and b!4722140 d!1503338)))

(assert (=> bs!1110842 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886751) (= lambda!215481 lambda!215476))))

(assert (=> bs!1110837 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886730) (= lambda!215481 lambda!215376))))

(declare-fun bs!1110843 () Bool)

(assert (= bs!1110843 (and b!4722140 b!4722005)))

(assert (=> bs!1110843 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215481 lambda!215458))))

(declare-fun bs!1110844 () Bool)

(assert (= bs!1110844 (and b!4722140 d!1503014)))

(assert (=> bs!1110844 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886747) (= lambda!215481 lambda!215382))))

(declare-fun bs!1110845 () Bool)

(assert (= bs!1110845 (and b!4722140 d!1503082)))

(assert (=> bs!1110845 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1886843) (= lambda!215481 lambda!215406))))

(assert (=> bs!1110824 (= (= (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215481 lambda!215470))))

(declare-fun bs!1110846 () Bool)

(assert (= bs!1110846 (and b!4722140 d!1503040)))

(assert (=> bs!1110846 (not (= lambda!215481 lambda!215399))))

(assert (=> b!4722140 true))

(declare-fun lambda!215488 () Int)

(declare-fun lt!1887305 () ListMap!5277)

(assert (=> bs!1110806 (= (= lt!1887305 lt!1886726) (= lambda!215488 lambda!215378))))

(assert (=> bs!1110807 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215379))))

(assert (=> bs!1110808 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215488 lambda!215403))))

(assert (=> bs!1110809 (= (= lt!1887305 lt!1886730) (= lambda!215488 lambda!215411))))

(assert (=> bs!1110810 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215488 lambda!215421))))

(assert (=> bs!1110811 (= (= lt!1887305 lt!1886897) (= lambda!215488 lambda!215414))))

(assert (=> bs!1110811 (= (= lt!1887305 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215488 lambda!215413))))

(assert (=> bs!1110812 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215386))))

(assert (=> bs!1110813 (= (= lt!1887305 lt!1886847) (= lambda!215488 lambda!215405))))

(assert (=> bs!1110814 (= (= lt!1887305 lt!1887136) (= lambda!215488 lambda!215465))))

(assert (=> bs!1110815 (= (= lt!1887305 lt!1886627) (= lambda!215488 lambda!215349))))

(assert (=> bs!1110816 (= (= lt!1887305 lt!1887015) (= lambda!215488 lambda!215427))))

(assert (=> bs!1110817 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215344))))

(assert (=> bs!1110818 (= (= lt!1887305 lt!1887140) (= lambda!215488 lambda!215463))))

(assert (=> bs!1110819 (= (= lt!1887305 lt!1887011) (= lambda!215488 lambda!215428))))

(assert (=> bs!1110820 (= (= lt!1887305 lt!1886751) (= lambda!215488 lambda!215381))))

(assert (=> bs!1110821 (= (= lt!1887305 lt!1887233) (= lambda!215488 lambda!215474))))

(assert (=> bs!1110815 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215348))))

(assert (=> bs!1110822 (= (= lt!1887305 lt!1886947) (= lambda!215488 lambda!215423))))

(assert (=> bs!1110822 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215488 lambda!215422))))

(assert (=> bs!1110823 (= (= lt!1887305 lt!1886602) (= lambda!215488 lambda!215346))))

(assert (=> bs!1110824 (= (= lt!1887305 lt!1887237) (= lambda!215488 lambda!215473))))

(assert (=> b!4722140 (= (= lt!1887305 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215488 lambda!215481))))

(assert (=> bs!1110820 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215380))))

(assert (=> bs!1110825 (= (= lt!1887305 lt!1886943) (= lambda!215488 lambda!215424))))

(assert (=> bs!1110826 (not (= lambda!215488 lambda!215385))))

(assert (=> bs!1110827 (= (= lt!1887305 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215488 lambda!215480))))

(assert (=> bs!1110813 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215488 lambda!215404))))

(assert (=> bs!1110828 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215419))))

(assert (=> bs!1110816 (= (= lt!1887305 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215488 lambda!215426))))

(assert (=> bs!1110829 (= (= lt!1887305 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215488 lambda!215412))))

(assert (=> bs!1110830 (= (= lt!1887305 lt!1886606) (= lambda!215488 lambda!215457))))

(assert (=> bs!1110831 (= (= lt!1887305 lt!1886893) (= lambda!215488 lambda!215415))))

(assert (=> bs!1110832 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215343))))

(assert (=> bs!1110833 (= (= lt!1887305 lt!1886775) (= lambda!215488 lambda!215388))))

(assert (=> bs!1110834 (= (= lt!1887305 lt!1886771) (= lambda!215488 lambda!215389))))

(assert (=> bs!1110817 (= (= lt!1887305 lt!1886606) (= lambda!215488 lambda!215345))))

(assert (=> bs!1110835 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215488 lambda!215468))))

(assert (=> bs!1110836 (= (= lt!1887305 lt!1886627) (= lambda!215488 lambda!215420))))

(assert (=> bs!1110837 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215375))))

(assert (=> bs!1110838 (= (= lt!1887305 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215488 lambda!215425))))

(assert (=> bs!1110839 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215373))))

(assert (=> bs!1110840 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215347))))

(assert (=> bs!1110818 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215488 lambda!215461))))

(assert (=> bs!1110841 (= (= lt!1887305 lt!1886623) (= lambda!215488 lambda!215352))))

(assert (=> bs!1110833 (= (= lt!1887305 lt!1886424) (= lambda!215488 lambda!215387))))

(assert (=> bs!1110842 (= (= lt!1887305 lt!1886751) (= lambda!215488 lambda!215476))))

(assert (=> bs!1110837 (= (= lt!1887305 lt!1886730) (= lambda!215488 lambda!215376))))

(assert (=> bs!1110843 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215488 lambda!215458))))

(assert (=> bs!1110844 (= (= lt!1887305 lt!1886747) (= lambda!215488 lambda!215382))))

(assert (=> bs!1110845 (= (= lt!1887305 lt!1886843) (= lambda!215488 lambda!215406))))

(assert (=> bs!1110824 (= (= lt!1887305 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215488 lambda!215470))))

(assert (=> bs!1110846 (not (= lambda!215488 lambda!215399))))

(assert (=> b!4722140 true))

(declare-fun bs!1110848 () Bool)

(declare-fun d!1503378 () Bool)

(assert (= bs!1110848 (and d!1503378 d!1503008)))

(declare-fun lt!1887301 () ListMap!5277)

(declare-fun lambda!215489 () Int)

(assert (=> bs!1110848 (= (= lt!1887301 lt!1886726) (= lambda!215489 lambda!215378))))

(declare-fun bs!1110849 () Bool)

(assert (= bs!1110849 (and d!1503378 b!4721536)))

(assert (=> bs!1110849 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215379))))

(declare-fun bs!1110850 () Bool)

(assert (= bs!1110850 (and d!1503378 b!4721633)))

(assert (=> bs!1110850 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215489 lambda!215403))))

(declare-fun bs!1110851 () Bool)

(assert (= bs!1110851 (and d!1503378 d!1503084)))

(assert (=> bs!1110851 (= (= lt!1887301 lt!1886730) (= lambda!215489 lambda!215411))))

(declare-fun bs!1110852 () Bool)

(assert (= bs!1110852 (and d!1503378 b!4721748)))

(assert (=> bs!1110852 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215489 lambda!215421))))

(declare-fun bs!1110853 () Bool)

(assert (= bs!1110853 (and d!1503378 b!4721695)))

(assert (=> bs!1110853 (= (= lt!1887301 lt!1886897) (= lambda!215489 lambda!215414))))

(assert (=> bs!1110853 (= (= lt!1887301 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215489 lambda!215413))))

(declare-fun bs!1110855 () Bool)

(assert (= bs!1110855 (and d!1503378 b!4721545)))

(assert (=> bs!1110855 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215386))))

(declare-fun bs!1110856 () Bool)

(assert (= bs!1110856 (and d!1503378 b!4721632)))

(assert (=> bs!1110856 (= (= lt!1887301 lt!1886847) (= lambda!215489 lambda!215405))))

(declare-fun bs!1110857 () Bool)

(assert (= bs!1110857 (and d!1503378 d!1503294)))

(assert (=> bs!1110857 (= (= lt!1887301 lt!1887136) (= lambda!215489 lambda!215465))))

(declare-fun bs!1110858 () Bool)

(assert (= bs!1110858 (and d!1503378 b!4721430)))

(assert (=> bs!1110858 (= (= lt!1887301 lt!1886627) (= lambda!215489 lambda!215349))))

(declare-fun bs!1110859 () Bool)

(assert (= bs!1110859 (and d!1503378 b!4721843)))

(assert (=> bs!1110859 (= (= lt!1887301 lt!1887015) (= lambda!215489 lambda!215427))))

(declare-fun bs!1110860 () Bool)

(assert (= bs!1110860 (and d!1503378 b!4721423)))

(assert (=> bs!1110860 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215344))))

(declare-fun bs!1110861 () Bool)

(assert (= bs!1110861 (and d!1503378 b!4722004)))

(assert (=> bs!1110861 (= (= lt!1887301 lt!1887140) (= lambda!215489 lambda!215463))))

(declare-fun bs!1110862 () Bool)

(assert (= bs!1110862 (and d!1503378 d!1503200)))

(assert (=> bs!1110862 (= (= lt!1887301 lt!1887011) (= lambda!215489 lambda!215428))))

(declare-fun bs!1110863 () Bool)

(assert (= bs!1110863 (and d!1503378 b!4721535)))

(assert (=> bs!1110863 (= (= lt!1887301 lt!1886751) (= lambda!215489 lambda!215381))))

(declare-fun bs!1110864 () Bool)

(assert (= bs!1110864 (and d!1503378 d!1503322)))

(assert (=> bs!1110864 (= (= lt!1887301 lt!1887233) (= lambda!215489 lambda!215474))))

(assert (=> bs!1110858 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215348))))

(declare-fun bs!1110865 () Bool)

(assert (= bs!1110865 (and d!1503378 b!4721747)))

(assert (=> bs!1110865 (= (= lt!1887301 lt!1886947) (= lambda!215489 lambda!215423))))

(assert (=> bs!1110865 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215489 lambda!215422))))

(declare-fun bs!1110866 () Bool)

(assert (= bs!1110866 (and d!1503378 d!1502956)))

(assert (=> bs!1110866 (= (= lt!1887301 lt!1886602) (= lambda!215489 lambda!215346))))

(declare-fun bs!1110867 () Bool)

(assert (= bs!1110867 (and d!1503378 b!4722059)))

(assert (=> bs!1110867 (= (= lt!1887301 lt!1887237) (= lambda!215489 lambda!215473))))

(declare-fun bs!1110868 () Bool)

(assert (= bs!1110868 (and d!1503378 b!4722140)))

(assert (=> bs!1110868 (= (= lt!1887301 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215489 lambda!215481))))

(assert (=> bs!1110863 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215380))))

(declare-fun bs!1110869 () Bool)

(assert (= bs!1110869 (and d!1503378 d!1503166)))

(assert (=> bs!1110869 (= (= lt!1887301 lt!1886943) (= lambda!215489 lambda!215424))))

(declare-fun bs!1110870 () Bool)

(assert (= bs!1110870 (and d!1503378 d!1503020)))

(assert (=> bs!1110870 (not (= lambda!215489 lambda!215385))))

(declare-fun bs!1110871 () Bool)

(assert (= bs!1110871 (and d!1503378 b!4722141)))

(assert (=> bs!1110871 (= (= lt!1887301 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215489 lambda!215480))))

(assert (=> bs!1110856 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215489 lambda!215404))))

(declare-fun bs!1110872 () Bool)

(assert (= bs!1110872 (and d!1503378 d!1503132)))

(assert (=> bs!1110872 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215419))))

(assert (=> bs!1110859 (= (= lt!1887301 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215489 lambda!215426))))

(declare-fun bs!1110873 () Bool)

(assert (= bs!1110873 (and d!1503378 b!4721696)))

(assert (=> bs!1110873 (= (= lt!1887301 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215489 lambda!215412))))

(declare-fun bs!1110874 () Bool)

(assert (= bs!1110874 (and d!1503378 d!1503282)))

(assert (=> bs!1110874 (= (= lt!1887301 lt!1886606) (= lambda!215489 lambda!215457))))

(declare-fun bs!1110875 () Bool)

(assert (= bs!1110875 (and d!1503378 d!1503126)))

(assert (=> bs!1110875 (= (= lt!1887301 lt!1886893) (= lambda!215489 lambda!215415))))

(declare-fun bs!1110876 () Bool)

(assert (= bs!1110876 (and d!1503378 b!4721424)))

(assert (=> bs!1110876 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215343))))

(declare-fun bs!1110877 () Bool)

(assert (= bs!1110877 (and d!1503378 b!4721544)))

(assert (=> bs!1110877 (= (= lt!1887301 lt!1886775) (= lambda!215489 lambda!215388))))

(assert (=> bs!1110868 (= (= lt!1887301 lt!1887305) (= lambda!215489 lambda!215488))))

(declare-fun bs!1110878 () Bool)

(assert (= bs!1110878 (and d!1503378 d!1503024)))

(assert (=> bs!1110878 (= (= lt!1887301 lt!1886771) (= lambda!215489 lambda!215389))))

(assert (=> bs!1110860 (= (= lt!1887301 lt!1886606) (= lambda!215489 lambda!215345))))

(declare-fun bs!1110879 () Bool)

(assert (= bs!1110879 (and d!1503378 b!4722060)))

(assert (=> bs!1110879 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215489 lambda!215468))))

(declare-fun bs!1110880 () Bool)

(assert (= bs!1110880 (and d!1503378 d!1503162)))

(assert (=> bs!1110880 (= (= lt!1887301 lt!1886627) (= lambda!215489 lambda!215420))))

(declare-fun bs!1110881 () Bool)

(assert (= bs!1110881 (and d!1503378 b!4721530)))

(assert (=> bs!1110881 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215375))))

(declare-fun bs!1110882 () Bool)

(assert (= bs!1110882 (and d!1503378 b!4721844)))

(assert (=> bs!1110882 (= (= lt!1887301 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215489 lambda!215425))))

(declare-fun bs!1110883 () Bool)

(assert (= bs!1110883 (and d!1503378 b!4721531)))

(assert (=> bs!1110883 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215373))))

(declare-fun bs!1110884 () Bool)

(assert (= bs!1110884 (and d!1503378 b!4721431)))

(assert (=> bs!1110884 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215347))))

(assert (=> bs!1110861 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215489 lambda!215461))))

(declare-fun bs!1110885 () Bool)

(assert (= bs!1110885 (and d!1503378 d!1502964)))

(assert (=> bs!1110885 (= (= lt!1887301 lt!1886623) (= lambda!215489 lambda!215352))))

(assert (=> bs!1110877 (= (= lt!1887301 lt!1886424) (= lambda!215489 lambda!215387))))

(declare-fun bs!1110886 () Bool)

(assert (= bs!1110886 (and d!1503378 d!1503338)))

(assert (=> bs!1110886 (= (= lt!1887301 lt!1886751) (= lambda!215489 lambda!215476))))

(assert (=> bs!1110881 (= (= lt!1887301 lt!1886730) (= lambda!215489 lambda!215376))))

(declare-fun bs!1110887 () Bool)

(assert (= bs!1110887 (and d!1503378 b!4722005)))

(assert (=> bs!1110887 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215489 lambda!215458))))

(declare-fun bs!1110888 () Bool)

(assert (= bs!1110888 (and d!1503378 d!1503014)))

(assert (=> bs!1110888 (= (= lt!1887301 lt!1886747) (= lambda!215489 lambda!215382))))

(declare-fun bs!1110889 () Bool)

(assert (= bs!1110889 (and d!1503378 d!1503082)))

(assert (=> bs!1110889 (= (= lt!1887301 lt!1886843) (= lambda!215489 lambda!215406))))

(assert (=> bs!1110867 (= (= lt!1887301 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215489 lambda!215470))))

(declare-fun bs!1110890 () Bool)

(assert (= bs!1110890 (and d!1503378 d!1503040)))

(assert (=> bs!1110890 (not (= lambda!215489 lambda!215399))))

(assert (=> d!1503378 true))

(declare-fun bm!330250 () Bool)

(declare-fun call!330256 () Unit!129750)

(assert (=> bm!330250 (= call!330256 (lemmaContainsAllItsOwnKeys!795 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))))))

(declare-fun e!2945013 () ListMap!5277)

(assert (=> b!4722140 (= e!2945013 lt!1887305)))

(declare-fun lt!1887304 () ListMap!5277)

(assert (=> b!4722140 (= lt!1887304 (+!2267 (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> b!4722140 (= lt!1887305 (addToMapMapFromBucket!1442 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) (+!2267 (extractMap!2038 (t!360211 (toList!5914 lm!2023))) (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887311 () Unit!129750)

(assert (=> b!4722140 (= lt!1887311 call!330256)))

(declare-fun call!330255 () Bool)

(assert (=> b!4722140 call!330255))

(declare-fun lt!1887308 () Unit!129750)

(assert (=> b!4722140 (= lt!1887308 lt!1887311)))

(declare-fun call!330257 () Bool)

(assert (=> b!4722140 call!330257))

(declare-fun lt!1887309 () Unit!129750)

(declare-fun Unit!130046 () Unit!129750)

(assert (=> b!4722140 (= lt!1887309 Unit!130046)))

(assert (=> b!4722140 (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215488)))

(declare-fun lt!1887316 () Unit!129750)

(declare-fun Unit!130047 () Unit!129750)

(assert (=> b!4722140 (= lt!1887316 Unit!130047)))

(declare-fun lt!1887300 () Unit!129750)

(declare-fun Unit!130048 () Unit!129750)

(assert (=> b!4722140 (= lt!1887300 Unit!130048)))

(declare-fun lt!1887303 () Unit!129750)

(assert (=> b!4722140 (= lt!1887303 (forallContained!3635 (toList!5913 lt!1887304) lambda!215488 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> b!4722140 (contains!16168 lt!1887304 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun lt!1887299 () Unit!129750)

(declare-fun Unit!130049 () Unit!129750)

(assert (=> b!4722140 (= lt!1887299 Unit!130049)))

(assert (=> b!4722140 (contains!16168 lt!1887305 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun lt!1887306 () Unit!129750)

(declare-fun Unit!130050 () Unit!129750)

(assert (=> b!4722140 (= lt!1887306 Unit!130050)))

(assert (=> b!4722140 (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215488)))

(declare-fun lt!1887318 () Unit!129750)

(declare-fun Unit!130051 () Unit!129750)

(assert (=> b!4722140 (= lt!1887318 Unit!130051)))

(assert (=> b!4722140 (forall!11584 (toList!5913 lt!1887304) lambda!215488)))

(declare-fun lt!1887317 () Unit!129750)

(declare-fun Unit!130052 () Unit!129750)

(assert (=> b!4722140 (= lt!1887317 Unit!130052)))

(declare-fun lt!1887302 () Unit!129750)

(declare-fun Unit!130053 () Unit!129750)

(assert (=> b!4722140 (= lt!1887302 Unit!130053)))

(declare-fun lt!1887314 () Unit!129750)

(assert (=> b!4722140 (= lt!1887314 (addForallContainsKeyThenBeforeAdding!794 (extractMap!2038 (t!360211 (toList!5914 lm!2023))) lt!1887305 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> b!4722140 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) lambda!215488)))

(declare-fun lt!1887310 () Unit!129750)

(assert (=> b!4722140 (= lt!1887310 lt!1887314)))

(assert (=> b!4722140 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) lambda!215488)))

(declare-fun lt!1887313 () Unit!129750)

(declare-fun Unit!130054 () Unit!129750)

(assert (=> b!4722140 (= lt!1887313 Unit!130054)))

(declare-fun res!1997722 () Bool)

(assert (=> b!4722140 (= res!1997722 (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215488))))

(declare-fun e!2945014 () Bool)

(assert (=> b!4722140 (=> (not res!1997722) (not e!2945014))))

(assert (=> b!4722140 e!2945014))

(declare-fun lt!1887315 () Unit!129750)

(declare-fun Unit!130055 () Unit!129750)

(assert (=> b!4722140 (= lt!1887315 Unit!130055)))

(declare-fun c!806452 () Bool)

(declare-fun bm!330251 () Bool)

(assert (=> bm!330251 (= call!330257 (forall!11584 (ite c!806452 (toList!5913 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (toList!5913 lt!1887304)) (ite c!806452 lambda!215480 lambda!215488)))))

(assert (=> b!4722141 (= e!2945013 (extractMap!2038 (t!360211 (toList!5914 lm!2023))))))

(declare-fun lt!1887319 () Unit!129750)

(assert (=> b!4722141 (= lt!1887319 call!330256)))

(assert (=> b!4722141 call!330257))

(declare-fun lt!1887307 () Unit!129750)

(assert (=> b!4722141 (= lt!1887307 lt!1887319)))

(assert (=> b!4722141 call!330255))

(declare-fun lt!1887312 () Unit!129750)

(declare-fun Unit!130056 () Unit!129750)

(assert (=> b!4722141 (= lt!1887312 Unit!130056)))

(declare-fun b!4722143 () Bool)

(declare-fun res!1997724 () Bool)

(declare-fun e!2945012 () Bool)

(assert (=> b!4722143 (=> (not res!1997724) (not e!2945012))))

(assert (=> b!4722143 (= res!1997724 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) lambda!215489))))

(declare-fun bm!330252 () Bool)

(assert (=> bm!330252 (= call!330255 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (ite c!806452 lambda!215480 lambda!215481)))))

(declare-fun b!4722144 () Bool)

(assert (=> b!4722144 (= e!2945012 (invariantList!1509 (toList!5913 lt!1887301)))))

(declare-fun b!4722142 () Bool)

(assert (=> b!4722142 (= e!2945014 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) lambda!215488))))

(assert (=> d!1503378 e!2945012))

(declare-fun res!1997723 () Bool)

(assert (=> d!1503378 (=> (not res!1997723) (not e!2945012))))

(assert (=> d!1503378 (= res!1997723 (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215489))))

(assert (=> d!1503378 (= lt!1887301 e!2945013)))

(assert (=> d!1503378 (= c!806452 ((_ is Nil!52824) (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(assert (=> d!1503378 (noDuplicateKeys!2012 (_2!30516 (h!59170 (toList!5914 lm!2023))))))

(assert (=> d!1503378 (= (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (toList!5914 lm!2023))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) lt!1887301)))

(assert (= (and d!1503378 c!806452) b!4722141))

(assert (= (and d!1503378 (not c!806452)) b!4722140))

(assert (= (and b!4722140 res!1997722) b!4722142))

(assert (= (or b!4722141 b!4722140) bm!330250))

(assert (= (or b!4722141 b!4722140) bm!330252))

(assert (= (or b!4722141 b!4722140) bm!330251))

(assert (= (and d!1503378 res!1997723) b!4722143))

(assert (= (and b!4722143 res!1997724) b!4722144))

(declare-fun m!5657351 () Bool)

(assert (=> b!4722144 m!5657351))

(declare-fun m!5657353 () Bool)

(assert (=> d!1503378 m!5657353))

(assert (=> d!1503378 m!5655867))

(declare-fun m!5657355 () Bool)

(assert (=> b!4722143 m!5657355))

(assert (=> bm!330250 m!5655419))

(declare-fun m!5657357 () Bool)

(assert (=> bm!330250 m!5657357))

(declare-fun m!5657359 () Bool)

(assert (=> b!4722140 m!5657359))

(declare-fun m!5657361 () Bool)

(assert (=> b!4722140 m!5657361))

(declare-fun m!5657363 () Bool)

(assert (=> b!4722140 m!5657363))

(assert (=> b!4722140 m!5655419))

(declare-fun m!5657365 () Bool)

(assert (=> b!4722140 m!5657365))

(assert (=> b!4722140 m!5657363))

(declare-fun m!5657371 () Bool)

(assert (=> b!4722140 m!5657371))

(declare-fun m!5657373 () Bool)

(assert (=> b!4722140 m!5657373))

(declare-fun m!5657375 () Bool)

(assert (=> b!4722140 m!5657375))

(declare-fun m!5657377 () Bool)

(assert (=> b!4722140 m!5657377))

(assert (=> b!4722140 m!5657377))

(assert (=> b!4722140 m!5655419))

(declare-fun m!5657379 () Bool)

(assert (=> b!4722140 m!5657379))

(assert (=> b!4722140 m!5657365))

(declare-fun m!5657381 () Bool)

(assert (=> b!4722140 m!5657381))

(declare-fun m!5657383 () Bool)

(assert (=> bm!330252 m!5657383))

(declare-fun m!5657385 () Bool)

(assert (=> bm!330251 m!5657385))

(assert (=> b!4722142 m!5657377))

(assert (=> b!4721528 d!1503378))

(assert (=> b!4721528 d!1503026))

(declare-fun d!1503410 () Bool)

(declare-fun res!1997767 () Bool)

(declare-fun e!2945055 () Bool)

(assert (=> d!1503410 (=> res!1997767 e!2945055)))

(assert (=> d!1503410 (= res!1997767 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503410 (= (forall!11584 (toList!5913 lt!1886424) (ite c!806303 lambda!215343 lambda!215344)) e!2945055)))

(declare-fun b!4722199 () Bool)

(declare-fun e!2945056 () Bool)

(assert (=> b!4722199 (= e!2945055 e!2945056)))

(declare-fun res!1997768 () Bool)

(assert (=> b!4722199 (=> (not res!1997768) (not e!2945056))))

(assert (=> b!4722199 (= res!1997768 (dynLambda!21817 (ite c!806303 lambda!215343 lambda!215344) (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4722200 () Bool)

(assert (=> b!4722200 (= e!2945056 (forall!11584 (t!360210 (toList!5913 lt!1886424)) (ite c!806303 lambda!215343 lambda!215344)))))

(assert (= (and d!1503410 (not res!1997767)) b!4722199))

(assert (= (and b!4722199 res!1997768) b!4722200))

(declare-fun b_lambda!178467 () Bool)

(assert (=> (not b_lambda!178467) (not b!4722199)))

(declare-fun m!5657411 () Bool)

(assert (=> b!4722199 m!5657411))

(declare-fun m!5657413 () Bool)

(assert (=> b!4722200 m!5657413))

(assert (=> bm!330166 d!1503410))

(declare-fun b!4722205 () Bool)

(declare-fun e!2945060 () Option!12356)

(assert (=> b!4722205 (= e!2945060 (getValueByKey!1952 (t!360210 (toList!5913 lt!1886446)) (_1!30515 lt!1886429)))))

(declare-fun b!4722203 () Bool)

(declare-fun e!2945059 () Option!12356)

(assert (=> b!4722203 (= e!2945059 (Some!12355 (_2!30515 (h!59169 (toList!5913 lt!1886446)))))))

(declare-fun b!4722204 () Bool)

(assert (=> b!4722204 (= e!2945059 e!2945060)))

(declare-fun c!806459 () Bool)

(assert (=> b!4722204 (= c!806459 (and ((_ is Cons!52824) (toList!5913 lt!1886446)) (not (= (_1!30515 (h!59169 (toList!5913 lt!1886446))) (_1!30515 lt!1886429)))))))

(declare-fun d!1503416 () Bool)

(declare-fun c!806458 () Bool)

(assert (=> d!1503416 (= c!806458 (and ((_ is Cons!52824) (toList!5913 lt!1886446)) (= (_1!30515 (h!59169 (toList!5913 lt!1886446))) (_1!30515 lt!1886429))))))

(assert (=> d!1503416 (= (getValueByKey!1952 (toList!5913 lt!1886446) (_1!30515 lt!1886429)) e!2945059)))

(declare-fun b!4722206 () Bool)

(assert (=> b!4722206 (= e!2945060 None!12355)))

(assert (= (and d!1503416 c!806458) b!4722203))

(assert (= (and d!1503416 (not c!806458)) b!4722204))

(assert (= (and b!4722204 c!806459) b!4722205))

(assert (= (and b!4722204 (not c!806459)) b!4722206))

(declare-fun m!5657415 () Bool)

(assert (=> b!4722205 m!5657415))

(assert (=> b!4721362 d!1503416))

(declare-fun d!1503418 () Bool)

(declare-fun res!1997771 () Bool)

(declare-fun e!2945061 () Bool)

(assert (=> d!1503418 (=> res!1997771 e!2945061)))

(assert (=> d!1503418 (= res!1997771 ((_ is Nil!52825) (t!360211 lt!1886426)))))

(assert (=> d!1503418 (= (forall!11582 (t!360211 lt!1886426) lambda!215278) e!2945061)))

(declare-fun b!4722207 () Bool)

(declare-fun e!2945062 () Bool)

(assert (=> b!4722207 (= e!2945061 e!2945062)))

(declare-fun res!1997772 () Bool)

(assert (=> b!4722207 (=> (not res!1997772) (not e!2945062))))

(assert (=> b!4722207 (= res!1997772 (dynLambda!21815 lambda!215278 (h!59170 (t!360211 lt!1886426))))))

(declare-fun b!4722208 () Bool)

(assert (=> b!4722208 (= e!2945062 (forall!11582 (t!360211 (t!360211 lt!1886426)) lambda!215278))))

(assert (= (and d!1503418 (not res!1997771)) b!4722207))

(assert (= (and b!4722207 res!1997772) b!4722208))

(declare-fun b_lambda!178471 () Bool)

(assert (=> (not b_lambda!178471) (not b!4722207)))

(declare-fun m!5657417 () Bool)

(assert (=> b!4722207 m!5657417))

(declare-fun m!5657419 () Bool)

(assert (=> b!4722208 m!5657419))

(assert (=> b!4721565 d!1503418))

(assert (=> b!4721486 d!1503262))

(declare-fun d!1503420 () Bool)

(declare-fun res!1997773 () Bool)

(declare-fun e!2945063 () Bool)

(assert (=> d!1503420 (=> res!1997773 e!2945063)))

(assert (=> d!1503420 (= res!1997773 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503420 (= (forall!11584 (toList!5913 lt!1886424) lambda!215389) e!2945063)))

(declare-fun b!4722209 () Bool)

(declare-fun e!2945064 () Bool)

(assert (=> b!4722209 (= e!2945063 e!2945064)))

(declare-fun res!1997774 () Bool)

(assert (=> b!4722209 (=> (not res!1997774) (not e!2945064))))

(assert (=> b!4722209 (= res!1997774 (dynLambda!21817 lambda!215389 (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4722210 () Bool)

(assert (=> b!4722210 (= e!2945064 (forall!11584 (t!360210 (toList!5913 lt!1886424)) lambda!215389))))

(assert (= (and d!1503420 (not res!1997773)) b!4722209))

(assert (= (and b!4722209 res!1997774) b!4722210))

(declare-fun b_lambda!178473 () Bool)

(assert (=> (not b_lambda!178473) (not b!4722209)))

(declare-fun m!5657421 () Bool)

(assert (=> b!4722209 m!5657421))

(declare-fun m!5657423 () Bool)

(assert (=> b!4722210 m!5657423))

(assert (=> b!4721547 d!1503420))

(declare-fun bs!1110915 () Bool)

(declare-fun b!4722212 () Bool)

(assert (= bs!1110915 (and b!4722212 d!1503008)))

(declare-fun lambda!215491 () Int)

(assert (=> bs!1110915 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886726) (= lambda!215491 lambda!215378))))

(declare-fun bs!1110917 () Bool)

(assert (= bs!1110917 (and b!4722212 b!4721536)))

(assert (=> bs!1110917 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215379))))

(declare-fun bs!1110919 () Bool)

(assert (= bs!1110919 (and b!4722212 b!4721633)))

(assert (=> bs!1110919 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215491 lambda!215403))))

(declare-fun bs!1110920 () Bool)

(assert (= bs!1110920 (and b!4722212 d!1503084)))

(assert (=> bs!1110920 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215491 lambda!215411))))

(declare-fun bs!1110921 () Bool)

(assert (= bs!1110921 (and b!4722212 b!4721748)))

(assert (=> bs!1110921 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215491 lambda!215421))))

(declare-fun bs!1110923 () Bool)

(assert (= bs!1110923 (and b!4722212 b!4721695)))

(assert (=> bs!1110923 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886897) (= lambda!215491 lambda!215414))))

(declare-fun bs!1110925 () Bool)

(assert (= bs!1110925 (and b!4722212 b!4721545)))

(assert (=> bs!1110925 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215386))))

(declare-fun bs!1110927 () Bool)

(assert (= bs!1110927 (and b!4722212 b!4721632)))

(assert (=> bs!1110927 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886847) (= lambda!215491 lambda!215405))))

(declare-fun bs!1110929 () Bool)

(assert (= bs!1110929 (and b!4722212 d!1503294)))

(assert (=> bs!1110929 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887136) (= lambda!215491 lambda!215465))))

(declare-fun bs!1110931 () Bool)

(assert (= bs!1110931 (and b!4722212 b!4721430)))

(assert (=> bs!1110931 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215491 lambda!215349))))

(declare-fun bs!1110932 () Bool)

(assert (= bs!1110932 (and b!4722212 b!4721843)))

(assert (=> bs!1110932 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887015) (= lambda!215491 lambda!215427))))

(declare-fun bs!1110933 () Bool)

(assert (= bs!1110933 (and b!4722212 b!4721423)))

(assert (=> bs!1110933 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215344))))

(declare-fun bs!1110934 () Bool)

(assert (= bs!1110934 (and b!4722212 b!4722004)))

(assert (=> bs!1110934 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887140) (= lambda!215491 lambda!215463))))

(declare-fun bs!1110935 () Bool)

(assert (= bs!1110935 (and b!4722212 d!1503200)))

(assert (=> bs!1110935 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887011) (= lambda!215491 lambda!215428))))

(declare-fun bs!1110936 () Bool)

(assert (= bs!1110936 (and b!4722212 b!4721535)))

(assert (=> bs!1110936 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215491 lambda!215381))))

(declare-fun bs!1110937 () Bool)

(assert (= bs!1110937 (and b!4722212 d!1503322)))

(assert (=> bs!1110937 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887233) (= lambda!215491 lambda!215474))))

(assert (=> bs!1110931 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215348))))

(declare-fun bs!1110938 () Bool)

(assert (= bs!1110938 (and b!4722212 b!4721747)))

(assert (=> bs!1110938 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886947) (= lambda!215491 lambda!215423))))

(assert (=> bs!1110938 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215491 lambda!215422))))

(declare-fun bs!1110940 () Bool)

(assert (= bs!1110940 (and b!4722212 d!1502956)))

(assert (=> bs!1110940 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886602) (= lambda!215491 lambda!215346))))

(declare-fun bs!1110941 () Bool)

(assert (= bs!1110941 (and b!4722212 b!4722059)))

(assert (=> bs!1110941 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887237) (= lambda!215491 lambda!215473))))

(declare-fun bs!1110942 () Bool)

(assert (= bs!1110942 (and b!4722212 b!4722140)))

(assert (=> bs!1110942 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215491 lambda!215481))))

(assert (=> bs!1110936 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215380))))

(declare-fun bs!1110943 () Bool)

(assert (= bs!1110943 (and b!4722212 d!1503166)))

(assert (=> bs!1110943 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886943) (= lambda!215491 lambda!215424))))

(assert (=> bs!1110923 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215491 lambda!215413))))

(declare-fun bs!1110944 () Bool)

(assert (= bs!1110944 (and b!4722212 d!1503378)))

(assert (=> bs!1110944 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887301) (= lambda!215491 lambda!215489))))

(declare-fun bs!1110945 () Bool)

(assert (= bs!1110945 (and b!4722212 d!1503020)))

(assert (=> bs!1110945 (not (= lambda!215491 lambda!215385))))

(declare-fun bs!1110946 () Bool)

(assert (= bs!1110946 (and b!4722212 b!4722141)))

(assert (=> bs!1110946 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215491 lambda!215480))))

(assert (=> bs!1110927 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215491 lambda!215404))))

(declare-fun bs!1110949 () Bool)

(assert (= bs!1110949 (and b!4722212 d!1503132)))

(assert (=> bs!1110949 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215419))))

(assert (=> bs!1110932 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215491 lambda!215426))))

(declare-fun bs!1110951 () Bool)

(assert (= bs!1110951 (and b!4722212 b!4721696)))

(assert (=> bs!1110951 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215491 lambda!215412))))

(declare-fun bs!1110953 () Bool)

(assert (= bs!1110953 (and b!4722212 d!1503282)))

(assert (=> bs!1110953 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215491 lambda!215457))))

(declare-fun bs!1110955 () Bool)

(assert (= bs!1110955 (and b!4722212 d!1503126)))

(assert (=> bs!1110955 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886893) (= lambda!215491 lambda!215415))))

(declare-fun bs!1110957 () Bool)

(assert (= bs!1110957 (and b!4722212 b!4721424)))

(assert (=> bs!1110957 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215343))))

(declare-fun bs!1110959 () Bool)

(assert (= bs!1110959 (and b!4722212 b!4721544)))

(assert (=> bs!1110959 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886775) (= lambda!215491 lambda!215388))))

(assert (=> bs!1110942 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887305) (= lambda!215491 lambda!215488))))

(declare-fun bs!1110962 () Bool)

(assert (= bs!1110962 (and b!4722212 d!1503024)))

(assert (=> bs!1110962 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886771) (= lambda!215491 lambda!215389))))

(assert (=> bs!1110933 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215491 lambda!215345))))

(declare-fun bs!1110964 () Bool)

(assert (= bs!1110964 (and b!4722212 b!4722060)))

(assert (=> bs!1110964 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215491 lambda!215468))))

(declare-fun bs!1110966 () Bool)

(assert (= bs!1110966 (and b!4722212 d!1503162)))

(assert (=> bs!1110966 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215491 lambda!215420))))

(declare-fun bs!1110968 () Bool)

(assert (= bs!1110968 (and b!4722212 b!4721530)))

(assert (=> bs!1110968 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215375))))

(declare-fun bs!1110970 () Bool)

(assert (= bs!1110970 (and b!4722212 b!4721844)))

(assert (=> bs!1110970 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215491 lambda!215425))))

(declare-fun bs!1110972 () Bool)

(assert (= bs!1110972 (and b!4722212 b!4721531)))

(assert (=> bs!1110972 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215373))))

(declare-fun bs!1110974 () Bool)

(assert (= bs!1110974 (and b!4722212 b!4721431)))

(assert (=> bs!1110974 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215347))))

(assert (=> bs!1110934 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215491 lambda!215461))))

(declare-fun bs!1110976 () Bool)

(assert (= bs!1110976 (and b!4722212 d!1502964)))

(assert (=> bs!1110976 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886623) (= lambda!215491 lambda!215352))))

(assert (=> bs!1110959 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215491 lambda!215387))))

(declare-fun bs!1110979 () Bool)

(assert (= bs!1110979 (and b!4722212 d!1503338)))

(assert (=> bs!1110979 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215491 lambda!215476))))

(assert (=> bs!1110968 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215491 lambda!215376))))

(declare-fun bs!1110982 () Bool)

(assert (= bs!1110982 (and b!4722212 b!4722005)))

(assert (=> bs!1110982 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215491 lambda!215458))))

(declare-fun bs!1110984 () Bool)

(assert (= bs!1110984 (and b!4722212 d!1503014)))

(assert (=> bs!1110984 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886747) (= lambda!215491 lambda!215382))))

(declare-fun bs!1110986 () Bool)

(assert (= bs!1110986 (and b!4722212 d!1503082)))

(assert (=> bs!1110986 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886843) (= lambda!215491 lambda!215406))))

(assert (=> bs!1110941 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215491 lambda!215470))))

(declare-fun bs!1110988 () Bool)

(assert (= bs!1110988 (and b!4722212 d!1503040)))

(assert (=> bs!1110988 (not (= lambda!215491 lambda!215399))))

(assert (=> b!4722212 true))

(declare-fun bs!1110996 () Bool)

(declare-fun b!4722211 () Bool)

(assert (= bs!1110996 (and b!4722211 d!1503008)))

(declare-fun lambda!215493 () Int)

(assert (=> bs!1110996 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886726) (= lambda!215493 lambda!215378))))

(declare-fun bs!1110998 () Bool)

(assert (= bs!1110998 (and b!4722211 b!4721536)))

(assert (=> bs!1110998 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215379))))

(declare-fun bs!1110999 () Bool)

(assert (= bs!1110999 (and b!4722211 b!4721633)))

(assert (=> bs!1110999 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215493 lambda!215403))))

(declare-fun bs!1111000 () Bool)

(assert (= bs!1111000 (and b!4722211 d!1503084)))

(assert (=> bs!1111000 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215493 lambda!215411))))

(declare-fun bs!1111001 () Bool)

(assert (= bs!1111001 (and b!4722211 b!4721748)))

(assert (=> bs!1111001 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215493 lambda!215421))))

(declare-fun bs!1111002 () Bool)

(assert (= bs!1111002 (and b!4722211 b!4721695)))

(assert (=> bs!1111002 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886897) (= lambda!215493 lambda!215414))))

(declare-fun bs!1111003 () Bool)

(assert (= bs!1111003 (and b!4722211 b!4721545)))

(assert (=> bs!1111003 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215386))))

(declare-fun bs!1111004 () Bool)

(assert (= bs!1111004 (and b!4722211 b!4721632)))

(assert (=> bs!1111004 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886847) (= lambda!215493 lambda!215405))))

(declare-fun bs!1111005 () Bool)

(assert (= bs!1111005 (and b!4722211 d!1503294)))

(assert (=> bs!1111005 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887136) (= lambda!215493 lambda!215465))))

(declare-fun bs!1111006 () Bool)

(assert (= bs!1111006 (and b!4722211 b!4721430)))

(assert (=> bs!1111006 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215493 lambda!215349))))

(declare-fun bs!1111008 () Bool)

(assert (= bs!1111008 (and b!4722211 b!4721843)))

(assert (=> bs!1111008 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887015) (= lambda!215493 lambda!215427))))

(declare-fun bs!1111010 () Bool)

(assert (= bs!1111010 (and b!4722211 b!4721423)))

(assert (=> bs!1111010 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215344))))

(declare-fun bs!1111012 () Bool)

(assert (= bs!1111012 (and b!4722211 b!4722004)))

(assert (=> bs!1111012 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887140) (= lambda!215493 lambda!215463))))

(declare-fun bs!1111013 () Bool)

(assert (= bs!1111013 (and b!4722211 d!1503200)))

(assert (=> bs!1111013 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887011) (= lambda!215493 lambda!215428))))

(declare-fun bs!1111015 () Bool)

(assert (= bs!1111015 (and b!4722211 b!4721535)))

(assert (=> bs!1111015 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215493 lambda!215381))))

(declare-fun bs!1111017 () Bool)

(assert (= bs!1111017 (and b!4722211 d!1503322)))

(assert (=> bs!1111017 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887233) (= lambda!215493 lambda!215474))))

(assert (=> bs!1111006 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215348))))

(declare-fun bs!1111020 () Bool)

(assert (= bs!1111020 (and b!4722211 b!4721747)))

(assert (=> bs!1111020 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886947) (= lambda!215493 lambda!215423))))

(assert (=> bs!1111020 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215493 lambda!215422))))

(declare-fun bs!1111023 () Bool)

(assert (= bs!1111023 (and b!4722211 d!1502956)))

(assert (=> bs!1111023 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886602) (= lambda!215493 lambda!215346))))

(declare-fun bs!1111025 () Bool)

(assert (= bs!1111025 (and b!4722211 b!4722059)))

(assert (=> bs!1111025 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887237) (= lambda!215493 lambda!215473))))

(declare-fun bs!1111027 () Bool)

(assert (= bs!1111027 (and b!4722211 b!4722140)))

(assert (=> bs!1111027 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215493 lambda!215481))))

(assert (=> bs!1111015 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215380))))

(declare-fun bs!1111030 () Bool)

(assert (= bs!1111030 (and b!4722211 d!1503166)))

(assert (=> bs!1111030 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886943) (= lambda!215493 lambda!215424))))

(assert (=> bs!1111002 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215493 lambda!215413))))

(declare-fun bs!1111033 () Bool)

(assert (= bs!1111033 (and b!4722211 d!1503378)))

(assert (=> bs!1111033 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887301) (= lambda!215493 lambda!215489))))

(declare-fun bs!1111035 () Bool)

(assert (= bs!1111035 (and b!4722211 d!1503020)))

(assert (=> bs!1111035 (not (= lambda!215493 lambda!215385))))

(declare-fun bs!1111036 () Bool)

(assert (= bs!1111036 (and b!4722211 b!4722141)))

(assert (=> bs!1111036 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215493 lambda!215480))))

(assert (=> bs!1111004 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215493 lambda!215404))))

(declare-fun bs!1111039 () Bool)

(assert (= bs!1111039 (and b!4722211 d!1503132)))

(assert (=> bs!1111039 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215419))))

(assert (=> bs!1111008 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215493 lambda!215426))))

(declare-fun bs!1111042 () Bool)

(assert (= bs!1111042 (and b!4722211 b!4721696)))

(assert (=> bs!1111042 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215493 lambda!215412))))

(declare-fun bs!1111044 () Bool)

(assert (= bs!1111044 (and b!4722211 d!1503282)))

(assert (=> bs!1111044 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215493 lambda!215457))))

(declare-fun bs!1111046 () Bool)

(assert (= bs!1111046 (and b!4722211 d!1503126)))

(assert (=> bs!1111046 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886893) (= lambda!215493 lambda!215415))))

(declare-fun bs!1111048 () Bool)

(assert (= bs!1111048 (and b!4722211 b!4721424)))

(assert (=> bs!1111048 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215343))))

(declare-fun bs!1111049 () Bool)

(assert (= bs!1111049 (and b!4722211 b!4721544)))

(assert (=> bs!1111049 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886775) (= lambda!215493 lambda!215388))))

(assert (=> bs!1111027 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887305) (= lambda!215493 lambda!215488))))

(declare-fun bs!1111052 () Bool)

(assert (= bs!1111052 (and b!4722211 d!1503024)))

(assert (=> bs!1111052 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886771) (= lambda!215493 lambda!215389))))

(assert (=> bs!1111010 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215493 lambda!215345))))

(declare-fun bs!1111054 () Bool)

(assert (= bs!1111054 (and b!4722211 b!4722060)))

(assert (=> bs!1111054 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215493 lambda!215468))))

(declare-fun bs!1111055 () Bool)

(assert (= bs!1111055 (and b!4722211 d!1503162)))

(assert (=> bs!1111055 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215493 lambda!215420))))

(declare-fun bs!1111057 () Bool)

(assert (= bs!1111057 (and b!4722211 b!4721530)))

(assert (=> bs!1111057 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215375))))

(declare-fun bs!1111058 () Bool)

(assert (= bs!1111058 (and b!4722211 b!4721844)))

(assert (=> bs!1111058 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215493 lambda!215425))))

(declare-fun bs!1111059 () Bool)

(assert (= bs!1111059 (and b!4722211 b!4721531)))

(assert (=> bs!1111059 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215373))))

(declare-fun bs!1111061 () Bool)

(assert (= bs!1111061 (and b!4722211 b!4721431)))

(assert (=> bs!1111061 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215347))))

(assert (=> bs!1111012 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215493 lambda!215461))))

(declare-fun bs!1111064 () Bool)

(assert (= bs!1111064 (and b!4722211 d!1502964)))

(assert (=> bs!1111064 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886623) (= lambda!215493 lambda!215352))))

(assert (=> bs!1111049 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215493 lambda!215387))))

(declare-fun bs!1111067 () Bool)

(assert (= bs!1111067 (and b!4722211 d!1503338)))

(assert (=> bs!1111067 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215493 lambda!215476))))

(assert (=> bs!1111057 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215493 lambda!215376))))

(declare-fun bs!1111068 () Bool)

(assert (= bs!1111068 (and b!4722211 b!4722005)))

(assert (=> bs!1111068 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215493 lambda!215458))))

(declare-fun bs!1111069 () Bool)

(assert (= bs!1111069 (and b!4722211 d!1503014)))

(assert (=> bs!1111069 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886747) (= lambda!215493 lambda!215382))))

(declare-fun bs!1111070 () Bool)

(assert (= bs!1111070 (and b!4722211 b!4722212)))

(assert (=> bs!1111070 (= lambda!215493 lambda!215491)))

(declare-fun bs!1111071 () Bool)

(assert (= bs!1111071 (and b!4722211 d!1503082)))

(assert (=> bs!1111071 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1886843) (= lambda!215493 lambda!215406))))

(assert (=> bs!1111025 (= (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215493 lambda!215470))))

(declare-fun bs!1111072 () Bool)

(assert (= bs!1111072 (and b!4722211 d!1503040)))

(assert (=> bs!1111072 (not (= lambda!215493 lambda!215399))))

(assert (=> b!4722211 true))

(declare-fun lt!1887351 () ListMap!5277)

(declare-fun lambda!215496 () Int)

(assert (=> bs!1110996 (= (= lt!1887351 lt!1886726) (= lambda!215496 lambda!215378))))

(assert (=> bs!1110998 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215379))))

(assert (=> bs!1110999 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215496 lambda!215403))))

(assert (=> bs!1111000 (= (= lt!1887351 lt!1886730) (= lambda!215496 lambda!215411))))

(assert (=> bs!1111001 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215496 lambda!215421))))

(assert (=> bs!1111002 (= (= lt!1887351 lt!1886897) (= lambda!215496 lambda!215414))))

(assert (=> bs!1111003 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215386))))

(assert (=> bs!1111004 (= (= lt!1887351 lt!1886847) (= lambda!215496 lambda!215405))))

(assert (=> bs!1111005 (= (= lt!1887351 lt!1887136) (= lambda!215496 lambda!215465))))

(assert (=> bs!1111006 (= (= lt!1887351 lt!1886627) (= lambda!215496 lambda!215349))))

(assert (=> bs!1111008 (= (= lt!1887351 lt!1887015) (= lambda!215496 lambda!215427))))

(assert (=> bs!1111010 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215344))))

(assert (=> bs!1111012 (= (= lt!1887351 lt!1887140) (= lambda!215496 lambda!215463))))

(assert (=> bs!1111013 (= (= lt!1887351 lt!1887011) (= lambda!215496 lambda!215428))))

(assert (=> bs!1111015 (= (= lt!1887351 lt!1886751) (= lambda!215496 lambda!215381))))

(assert (=> b!4722211 (= (= lt!1887351 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215496 lambda!215493))))

(assert (=> bs!1111017 (= (= lt!1887351 lt!1887233) (= lambda!215496 lambda!215474))))

(assert (=> bs!1111006 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215348))))

(assert (=> bs!1111020 (= (= lt!1887351 lt!1886947) (= lambda!215496 lambda!215423))))

(assert (=> bs!1111020 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215496 lambda!215422))))

(assert (=> bs!1111023 (= (= lt!1887351 lt!1886602) (= lambda!215496 lambda!215346))))

(assert (=> bs!1111025 (= (= lt!1887351 lt!1887237) (= lambda!215496 lambda!215473))))

(assert (=> bs!1111027 (= (= lt!1887351 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215496 lambda!215481))))

(assert (=> bs!1111015 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215380))))

(assert (=> bs!1111030 (= (= lt!1887351 lt!1886943) (= lambda!215496 lambda!215424))))

(assert (=> bs!1111002 (= (= lt!1887351 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215496 lambda!215413))))

(assert (=> bs!1111033 (= (= lt!1887351 lt!1887301) (= lambda!215496 lambda!215489))))

(assert (=> bs!1111035 (not (= lambda!215496 lambda!215385))))

(assert (=> bs!1111036 (= (= lt!1887351 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215496 lambda!215480))))

(assert (=> bs!1111004 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215496 lambda!215404))))

(assert (=> bs!1111039 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215419))))

(assert (=> bs!1111008 (= (= lt!1887351 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215496 lambda!215426))))

(assert (=> bs!1111042 (= (= lt!1887351 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215496 lambda!215412))))

(assert (=> bs!1111044 (= (= lt!1887351 lt!1886606) (= lambda!215496 lambda!215457))))

(assert (=> bs!1111046 (= (= lt!1887351 lt!1886893) (= lambda!215496 lambda!215415))))

(assert (=> bs!1111048 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215343))))

(assert (=> bs!1111049 (= (= lt!1887351 lt!1886775) (= lambda!215496 lambda!215388))))

(assert (=> bs!1111027 (= (= lt!1887351 lt!1887305) (= lambda!215496 lambda!215488))))

(assert (=> bs!1111052 (= (= lt!1887351 lt!1886771) (= lambda!215496 lambda!215389))))

(assert (=> bs!1111010 (= (= lt!1887351 lt!1886606) (= lambda!215496 lambda!215345))))

(assert (=> bs!1111054 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215496 lambda!215468))))

(assert (=> bs!1111055 (= (= lt!1887351 lt!1886627) (= lambda!215496 lambda!215420))))

(assert (=> bs!1111057 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215375))))

(assert (=> bs!1111058 (= (= lt!1887351 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215496 lambda!215425))))

(assert (=> bs!1111059 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215373))))

(assert (=> bs!1111061 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215347))))

(assert (=> bs!1111012 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215496 lambda!215461))))

(assert (=> bs!1111064 (= (= lt!1887351 lt!1886623) (= lambda!215496 lambda!215352))))

(assert (=> bs!1111049 (= (= lt!1887351 lt!1886424) (= lambda!215496 lambda!215387))))

(assert (=> bs!1111067 (= (= lt!1887351 lt!1886751) (= lambda!215496 lambda!215476))))

(assert (=> bs!1111057 (= (= lt!1887351 lt!1886730) (= lambda!215496 lambda!215376))))

(assert (=> bs!1111068 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215496 lambda!215458))))

(assert (=> bs!1111069 (= (= lt!1887351 lt!1886747) (= lambda!215496 lambda!215382))))

(assert (=> bs!1111070 (= (= lt!1887351 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215496 lambda!215491))))

(assert (=> bs!1111071 (= (= lt!1887351 lt!1886843) (= lambda!215496 lambda!215406))))

(assert (=> bs!1111025 (= (= lt!1887351 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215496 lambda!215470))))

(assert (=> bs!1111072 (not (= lambda!215496 lambda!215399))))

(assert (=> b!4722211 true))

(declare-fun bs!1111096 () Bool)

(declare-fun d!1503422 () Bool)

(assert (= bs!1111096 (and d!1503422 d!1503008)))

(declare-fun lambda!215498 () Int)

(declare-fun lt!1887347 () ListMap!5277)

(assert (=> bs!1111096 (= (= lt!1887347 lt!1886726) (= lambda!215498 lambda!215378))))

(declare-fun bs!1111098 () Bool)

(assert (= bs!1111098 (and d!1503422 b!4721536)))

(assert (=> bs!1111098 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215379))))

(declare-fun bs!1111100 () Bool)

(assert (= bs!1111100 (and d!1503422 b!4721633)))

(assert (=> bs!1111100 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215498 lambda!215403))))

(declare-fun bs!1111102 () Bool)

(assert (= bs!1111102 (and d!1503422 d!1503084)))

(assert (=> bs!1111102 (= (= lt!1887347 lt!1886730) (= lambda!215498 lambda!215411))))

(declare-fun bs!1111103 () Bool)

(assert (= bs!1111103 (and d!1503422 b!4721748)))

(assert (=> bs!1111103 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215498 lambda!215421))))

(declare-fun bs!1111105 () Bool)

(assert (= bs!1111105 (and d!1503422 b!4721695)))

(assert (=> bs!1111105 (= (= lt!1887347 lt!1886897) (= lambda!215498 lambda!215414))))

(declare-fun bs!1111106 () Bool)

(assert (= bs!1111106 (and d!1503422 b!4721545)))

(assert (=> bs!1111106 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215386))))

(declare-fun bs!1111108 () Bool)

(assert (= bs!1111108 (and d!1503422 b!4721632)))

(assert (=> bs!1111108 (= (= lt!1887347 lt!1886847) (= lambda!215498 lambda!215405))))

(declare-fun bs!1111109 () Bool)

(assert (= bs!1111109 (and d!1503422 d!1503294)))

(assert (=> bs!1111109 (= (= lt!1887347 lt!1887136) (= lambda!215498 lambda!215465))))

(declare-fun bs!1111110 () Bool)

(assert (= bs!1111110 (and d!1503422 b!4721430)))

(assert (=> bs!1111110 (= (= lt!1887347 lt!1886627) (= lambda!215498 lambda!215349))))

(declare-fun bs!1111112 () Bool)

(assert (= bs!1111112 (and d!1503422 b!4721843)))

(assert (=> bs!1111112 (= (= lt!1887347 lt!1887015) (= lambda!215498 lambda!215427))))

(declare-fun bs!1111113 () Bool)

(assert (= bs!1111113 (and d!1503422 b!4722211)))

(assert (=> bs!1111113 (= (= lt!1887347 lt!1887351) (= lambda!215498 lambda!215496))))

(declare-fun bs!1111115 () Bool)

(assert (= bs!1111115 (and d!1503422 b!4721423)))

(assert (=> bs!1111115 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215344))))

(declare-fun bs!1111117 () Bool)

(assert (= bs!1111117 (and d!1503422 b!4722004)))

(assert (=> bs!1111117 (= (= lt!1887347 lt!1887140) (= lambda!215498 lambda!215463))))

(declare-fun bs!1111119 () Bool)

(assert (= bs!1111119 (and d!1503422 d!1503200)))

(assert (=> bs!1111119 (= (= lt!1887347 lt!1887011) (= lambda!215498 lambda!215428))))

(declare-fun bs!1111121 () Bool)

(assert (= bs!1111121 (and d!1503422 b!4721535)))

(assert (=> bs!1111121 (= (= lt!1887347 lt!1886751) (= lambda!215498 lambda!215381))))

(assert (=> bs!1111113 (= (= lt!1887347 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215498 lambda!215493))))

(declare-fun bs!1111122 () Bool)

(assert (= bs!1111122 (and d!1503422 d!1503322)))

(assert (=> bs!1111122 (= (= lt!1887347 lt!1887233) (= lambda!215498 lambda!215474))))

(assert (=> bs!1111110 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215348))))

(declare-fun bs!1111123 () Bool)

(assert (= bs!1111123 (and d!1503422 b!4721747)))

(assert (=> bs!1111123 (= (= lt!1887347 lt!1886947) (= lambda!215498 lambda!215423))))

(assert (=> bs!1111123 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215498 lambda!215422))))

(declare-fun bs!1111124 () Bool)

(assert (= bs!1111124 (and d!1503422 d!1502956)))

(assert (=> bs!1111124 (= (= lt!1887347 lt!1886602) (= lambda!215498 lambda!215346))))

(declare-fun bs!1111125 () Bool)

(assert (= bs!1111125 (and d!1503422 b!4722059)))

(assert (=> bs!1111125 (= (= lt!1887347 lt!1887237) (= lambda!215498 lambda!215473))))

(declare-fun bs!1111126 () Bool)

(assert (= bs!1111126 (and d!1503422 b!4722140)))

(assert (=> bs!1111126 (= (= lt!1887347 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215498 lambda!215481))))

(assert (=> bs!1111121 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215380))))

(declare-fun bs!1111127 () Bool)

(assert (= bs!1111127 (and d!1503422 d!1503166)))

(assert (=> bs!1111127 (= (= lt!1887347 lt!1886943) (= lambda!215498 lambda!215424))))

(assert (=> bs!1111105 (= (= lt!1887347 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215498 lambda!215413))))

(declare-fun bs!1111128 () Bool)

(assert (= bs!1111128 (and d!1503422 d!1503378)))

(assert (=> bs!1111128 (= (= lt!1887347 lt!1887301) (= lambda!215498 lambda!215489))))

(declare-fun bs!1111129 () Bool)

(assert (= bs!1111129 (and d!1503422 d!1503020)))

(assert (=> bs!1111129 (not (= lambda!215498 lambda!215385))))

(declare-fun bs!1111130 () Bool)

(assert (= bs!1111130 (and d!1503422 b!4722141)))

(assert (=> bs!1111130 (= (= lt!1887347 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215498 lambda!215480))))

(assert (=> bs!1111108 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215498 lambda!215404))))

(declare-fun bs!1111131 () Bool)

(assert (= bs!1111131 (and d!1503422 d!1503132)))

(assert (=> bs!1111131 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215419))))

(assert (=> bs!1111112 (= (= lt!1887347 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215498 lambda!215426))))

(declare-fun bs!1111132 () Bool)

(assert (= bs!1111132 (and d!1503422 b!4721696)))

(assert (=> bs!1111132 (= (= lt!1887347 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215498 lambda!215412))))

(declare-fun bs!1111133 () Bool)

(assert (= bs!1111133 (and d!1503422 d!1503282)))

(assert (=> bs!1111133 (= (= lt!1887347 lt!1886606) (= lambda!215498 lambda!215457))))

(declare-fun bs!1111134 () Bool)

(assert (= bs!1111134 (and d!1503422 d!1503126)))

(assert (=> bs!1111134 (= (= lt!1887347 lt!1886893) (= lambda!215498 lambda!215415))))

(declare-fun bs!1111135 () Bool)

(assert (= bs!1111135 (and d!1503422 b!4721424)))

(assert (=> bs!1111135 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215343))))

(declare-fun bs!1111136 () Bool)

(assert (= bs!1111136 (and d!1503422 b!4721544)))

(assert (=> bs!1111136 (= (= lt!1887347 lt!1886775) (= lambda!215498 lambda!215388))))

(assert (=> bs!1111126 (= (= lt!1887347 lt!1887305) (= lambda!215498 lambda!215488))))

(declare-fun bs!1111137 () Bool)

(assert (= bs!1111137 (and d!1503422 d!1503024)))

(assert (=> bs!1111137 (= (= lt!1887347 lt!1886771) (= lambda!215498 lambda!215389))))

(assert (=> bs!1111115 (= (= lt!1887347 lt!1886606) (= lambda!215498 lambda!215345))))

(declare-fun bs!1111138 () Bool)

(assert (= bs!1111138 (and d!1503422 b!4722060)))

(assert (=> bs!1111138 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215498 lambda!215468))))

(declare-fun bs!1111139 () Bool)

(assert (= bs!1111139 (and d!1503422 d!1503162)))

(assert (=> bs!1111139 (= (= lt!1887347 lt!1886627) (= lambda!215498 lambda!215420))))

(declare-fun bs!1111140 () Bool)

(assert (= bs!1111140 (and d!1503422 b!4721530)))

(assert (=> bs!1111140 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215375))))

(declare-fun bs!1111141 () Bool)

(assert (= bs!1111141 (and d!1503422 b!4721844)))

(assert (=> bs!1111141 (= (= lt!1887347 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215498 lambda!215425))))

(declare-fun bs!1111142 () Bool)

(assert (= bs!1111142 (and d!1503422 b!4721531)))

(assert (=> bs!1111142 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215373))))

(declare-fun bs!1111143 () Bool)

(assert (= bs!1111143 (and d!1503422 b!4721431)))

(assert (=> bs!1111143 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215347))))

(assert (=> bs!1111117 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215498 lambda!215461))))

(declare-fun bs!1111144 () Bool)

(assert (= bs!1111144 (and d!1503422 d!1502964)))

(assert (=> bs!1111144 (= (= lt!1887347 lt!1886623) (= lambda!215498 lambda!215352))))

(assert (=> bs!1111136 (= (= lt!1887347 lt!1886424) (= lambda!215498 lambda!215387))))

(declare-fun bs!1111145 () Bool)

(assert (= bs!1111145 (and d!1503422 d!1503338)))

(assert (=> bs!1111145 (= (= lt!1887347 lt!1886751) (= lambda!215498 lambda!215476))))

(assert (=> bs!1111140 (= (= lt!1887347 lt!1886730) (= lambda!215498 lambda!215376))))

(declare-fun bs!1111146 () Bool)

(assert (= bs!1111146 (and d!1503422 b!4722005)))

(assert (=> bs!1111146 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215498 lambda!215458))))

(declare-fun bs!1111147 () Bool)

(assert (= bs!1111147 (and d!1503422 d!1503014)))

(assert (=> bs!1111147 (= (= lt!1887347 lt!1886747) (= lambda!215498 lambda!215382))))

(declare-fun bs!1111148 () Bool)

(assert (= bs!1111148 (and d!1503422 b!4722212)))

(assert (=> bs!1111148 (= (= lt!1887347 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215498 lambda!215491))))

(declare-fun bs!1111149 () Bool)

(assert (= bs!1111149 (and d!1503422 d!1503082)))

(assert (=> bs!1111149 (= (= lt!1887347 lt!1886843) (= lambda!215498 lambda!215406))))

(assert (=> bs!1111125 (= (= lt!1887347 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215498 lambda!215470))))

(declare-fun bs!1111150 () Bool)

(assert (= bs!1111150 (and d!1503422 d!1503040)))

(assert (=> bs!1111150 (not (= lambda!215498 lambda!215399))))

(assert (=> d!1503422 true))

(declare-fun bm!330254 () Bool)

(declare-fun call!330260 () Unit!129750)

(assert (=> bm!330254 (= call!330260 (lemmaContainsAllItsOwnKeys!795 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))))

(declare-fun e!2945066 () ListMap!5277)

(assert (=> b!4722211 (= e!2945066 lt!1887351)))

(declare-fun lt!1887350 () ListMap!5277)

(assert (=> b!4722211 (= lt!1887350 (+!2267 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (h!59169 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))))

(assert (=> b!4722211 (= lt!1887351 (addToMapMapFromBucket!1442 (t!360210 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (+!2267 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (h!59169 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))))))

(declare-fun lt!1887357 () Unit!129750)

(assert (=> b!4722211 (= lt!1887357 call!330260)))

(declare-fun call!330259 () Bool)

(assert (=> b!4722211 call!330259))

(declare-fun lt!1887354 () Unit!129750)

(assert (=> b!4722211 (= lt!1887354 lt!1887357)))

(declare-fun call!330261 () Bool)

(assert (=> b!4722211 call!330261))

(declare-fun lt!1887355 () Unit!129750)

(declare-fun Unit!130057 () Unit!129750)

(assert (=> b!4722211 (= lt!1887355 Unit!130057)))

(assert (=> b!4722211 (forall!11584 (t!360210 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) lambda!215496)))

(declare-fun lt!1887362 () Unit!129750)

(declare-fun Unit!130058 () Unit!129750)

(assert (=> b!4722211 (= lt!1887362 Unit!130058)))

(declare-fun lt!1887346 () Unit!129750)

(declare-fun Unit!130059 () Unit!129750)

(assert (=> b!4722211 (= lt!1887346 Unit!130059)))

(declare-fun lt!1887349 () Unit!129750)

(assert (=> b!4722211 (= lt!1887349 (forallContained!3635 (toList!5913 lt!1887350) lambda!215496 (h!59169 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))))

(assert (=> b!4722211 (contains!16168 lt!1887350 (_1!30515 (h!59169 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))))

(declare-fun lt!1887345 () Unit!129750)

(declare-fun Unit!130060 () Unit!129750)

(assert (=> b!4722211 (= lt!1887345 Unit!130060)))

(assert (=> b!4722211 (contains!16168 lt!1887351 (_1!30515 (h!59169 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))))

(declare-fun lt!1887352 () Unit!129750)

(declare-fun Unit!130061 () Unit!129750)

(assert (=> b!4722211 (= lt!1887352 Unit!130061)))

(assert (=> b!4722211 (forall!11584 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lambda!215496)))

(declare-fun lt!1887364 () Unit!129750)

(declare-fun Unit!130062 () Unit!129750)

(assert (=> b!4722211 (= lt!1887364 Unit!130062)))

(assert (=> b!4722211 (forall!11584 (toList!5913 lt!1887350) lambda!215496)))

(declare-fun lt!1887363 () Unit!129750)

(declare-fun Unit!130063 () Unit!129750)

(assert (=> b!4722211 (= lt!1887363 Unit!130063)))

(declare-fun lt!1887348 () Unit!129750)

(declare-fun Unit!130064 () Unit!129750)

(assert (=> b!4722211 (= lt!1887348 Unit!130064)))

(declare-fun lt!1887360 () Unit!129750)

(assert (=> b!4722211 (= lt!1887360 (addForallContainsKeyThenBeforeAdding!794 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887351 (_1!30515 (h!59169 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))))))

(assert (=> b!4722211 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) lambda!215496)))

(declare-fun lt!1887356 () Unit!129750)

(assert (=> b!4722211 (= lt!1887356 lt!1887360)))

(assert (=> b!4722211 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) lambda!215496)))

(declare-fun lt!1887359 () Unit!129750)

(declare-fun Unit!130065 () Unit!129750)

(assert (=> b!4722211 (= lt!1887359 Unit!130065)))

(declare-fun res!1997775 () Bool)

(assert (=> b!4722211 (= res!1997775 (forall!11584 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lambda!215496))))

(declare-fun e!2945067 () Bool)

(assert (=> b!4722211 (=> (not res!1997775) (not e!2945067))))

(assert (=> b!4722211 e!2945067))

(declare-fun lt!1887361 () Unit!129750)

(declare-fun Unit!130066 () Unit!129750)

(assert (=> b!4722211 (= lt!1887361 Unit!130066)))

(declare-fun c!806460 () Bool)

(declare-fun bm!330255 () Bool)

(assert (=> bm!330255 (= call!330261 (forall!11584 (ite c!806460 (toList!5913 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (toList!5913 lt!1887350)) (ite c!806460 lambda!215491 lambda!215496)))))

(assert (=> b!4722212 (= e!2945066 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))

(declare-fun lt!1887365 () Unit!129750)

(assert (=> b!4722212 (= lt!1887365 call!330260)))

(assert (=> b!4722212 call!330261))

(declare-fun lt!1887353 () Unit!129750)

(assert (=> b!4722212 (= lt!1887353 lt!1887365)))

(assert (=> b!4722212 call!330259))

(declare-fun lt!1887358 () Unit!129750)

(declare-fun Unit!130067 () Unit!129750)

(assert (=> b!4722212 (= lt!1887358 Unit!130067)))

(declare-fun b!4722214 () Bool)

(declare-fun res!1997777 () Bool)

(declare-fun e!2945065 () Bool)

(assert (=> b!4722214 (=> (not res!1997777) (not e!2945065))))

(assert (=> b!4722214 (= res!1997777 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) lambda!215498))))

(declare-fun bm!330256 () Bool)

(assert (=> bm!330256 (= call!330259 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (ite c!806460 lambda!215491 lambda!215493)))))

(declare-fun b!4722215 () Bool)

(assert (=> b!4722215 (= e!2945065 (invariantList!1509 (toList!5913 lt!1887347)))))

(declare-fun b!4722213 () Bool)

(assert (=> b!4722213 (= e!2945067 (forall!11584 (toList!5913 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) lambda!215496))))

(assert (=> d!1503422 e!2945065))

(declare-fun res!1997776 () Bool)

(assert (=> d!1503422 (=> (not res!1997776) (not e!2945065))))

(assert (=> d!1503422 (= res!1997776 (forall!11584 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lambda!215498))))

(assert (=> d!1503422 (= lt!1887347 e!2945066)))

(assert (=> d!1503422 (= c!806460 ((_ is Nil!52824) (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))))

(assert (=> d!1503422 (noDuplicateKeys!2012 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))

(assert (=> d!1503422 (= (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) lt!1887347)))

(assert (= (and d!1503422 c!806460) b!4722212))

(assert (= (and d!1503422 (not c!806460)) b!4722211))

(assert (= (and b!4722211 res!1997775) b!4722213))

(assert (= (or b!4722212 b!4722211) bm!330254))

(assert (= (or b!4722212 b!4722211) bm!330256))

(assert (= (or b!4722212 b!4722211) bm!330255))

(assert (= (and d!1503422 res!1997776) b!4722214))

(assert (= (and b!4722214 res!1997777) b!4722215))

(declare-fun m!5657497 () Bool)

(assert (=> b!4722215 m!5657497))

(declare-fun m!5657499 () Bool)

(assert (=> d!1503422 m!5657499))

(declare-fun m!5657501 () Bool)

(assert (=> d!1503422 m!5657501))

(declare-fun m!5657503 () Bool)

(assert (=> b!4722214 m!5657503))

(assert (=> bm!330254 m!5655979))

(declare-fun m!5657505 () Bool)

(assert (=> bm!330254 m!5657505))

(declare-fun m!5657507 () Bool)

(assert (=> b!4722211 m!5657507))

(declare-fun m!5657509 () Bool)

(assert (=> b!4722211 m!5657509))

(declare-fun m!5657511 () Bool)

(assert (=> b!4722211 m!5657511))

(assert (=> b!4722211 m!5655979))

(declare-fun m!5657513 () Bool)

(assert (=> b!4722211 m!5657513))

(assert (=> b!4722211 m!5657511))

(declare-fun m!5657515 () Bool)

(assert (=> b!4722211 m!5657515))

(declare-fun m!5657517 () Bool)

(assert (=> b!4722211 m!5657517))

(declare-fun m!5657519 () Bool)

(assert (=> b!4722211 m!5657519))

(declare-fun m!5657521 () Bool)

(assert (=> b!4722211 m!5657521))

(assert (=> b!4722211 m!5657521))

(assert (=> b!4722211 m!5655979))

(declare-fun m!5657523 () Bool)

(assert (=> b!4722211 m!5657523))

(assert (=> b!4722211 m!5657513))

(declare-fun m!5657525 () Bool)

(assert (=> b!4722211 m!5657525))

(declare-fun m!5657527 () Bool)

(assert (=> bm!330256 m!5657527))

(declare-fun m!5657529 () Bool)

(assert (=> bm!330255 m!5657529))

(assert (=> b!4722213 m!5657521))

(assert (=> b!4721574 d!1503422))

(declare-fun bs!1111151 () Bool)

(declare-fun d!1503436 () Bool)

(assert (= bs!1111151 (and d!1503436 d!1503038)))

(declare-fun lambda!215499 () Int)

(assert (=> bs!1111151 (not (= lambda!215499 lambda!215398))))

(declare-fun bs!1111152 () Bool)

(assert (= bs!1111152 (and d!1503436 d!1503042)))

(assert (=> bs!1111152 (= lambda!215499 lambda!215400)))

(declare-fun bs!1111153 () Bool)

(assert (= bs!1111153 (and d!1503436 d!1503050)))

(assert (=> bs!1111153 (= lambda!215499 lambda!215401)))

(declare-fun bs!1111154 () Bool)

(assert (= bs!1111154 (and d!1503436 d!1503214)))

(assert (=> bs!1111154 (= lambda!215499 lambda!215429)))

(declare-fun bs!1111155 () Bool)

(assert (= bs!1111155 (and d!1503436 start!480568)))

(assert (=> bs!1111155 (= lambda!215499 lambda!215278)))

(declare-fun bs!1111156 () Bool)

(assert (= bs!1111156 (and d!1503436 d!1503032)))

(assert (=> bs!1111156 (not (= lambda!215499 lambda!215395))))

(declare-fun bs!1111157 () Bool)

(assert (= bs!1111157 (and d!1503436 d!1503128)))

(assert (=> bs!1111157 (= lambda!215499 lambda!215416)))

(declare-fun bs!1111158 () Bool)

(assert (= bs!1111158 (and d!1503436 d!1502992)))

(assert (=> bs!1111158 (= lambda!215499 lambda!215371)))

(declare-fun bs!1111160 () Bool)

(assert (= bs!1111160 (and d!1503436 d!1503026)))

(assert (=> bs!1111160 (= lambda!215499 lambda!215390)))

(declare-fun lt!1887396 () ListMap!5277)

(assert (=> d!1503436 (invariantList!1509 (toList!5913 lt!1887396))))

(declare-fun e!2945082 () ListMap!5277)

(assert (=> d!1503436 (= lt!1887396 e!2945082)))

(declare-fun c!806465 () Bool)

(assert (=> d!1503436 (= c!806465 ((_ is Cons!52825) (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))

(assert (=> d!1503436 (forall!11582 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))) lambda!215499)))

(assert (=> d!1503436 (= (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) lt!1887396)))

(declare-fun b!4722235 () Bool)

(assert (=> b!4722235 (= e!2945082 (addToMapMapFromBucket!1442 (_2!30516 (h!59170 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (extractMap!2038 (t!360211 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))))))))

(declare-fun b!4722236 () Bool)

(assert (=> b!4722236 (= e!2945082 (ListMap!5278 Nil!52824))))

(assert (= (and d!1503436 c!806465) b!4722235))

(assert (= (and d!1503436 (not c!806465)) b!4722236))

(declare-fun m!5657533 () Bool)

(assert (=> d!1503436 m!5657533))

(declare-fun m!5657535 () Bool)

(assert (=> d!1503436 m!5657535))

(declare-fun m!5657537 () Bool)

(assert (=> b!4722235 m!5657537))

(assert (=> b!4722235 m!5657537))

(declare-fun m!5657539 () Bool)

(assert (=> b!4722235 m!5657539))

(assert (=> b!4721574 d!1503436))

(assert (=> bm!330179 d!1503132))

(declare-fun d!1503440 () Bool)

(assert (=> d!1503440 (= (invariantList!1509 (toList!5913 lt!1886723)) (noDuplicatedKeys!372 (toList!5913 lt!1886723)))))

(declare-fun bs!1111162 () Bool)

(assert (= bs!1111162 d!1503440))

(declare-fun m!5657543 () Bool)

(assert (=> bs!1111162 m!5657543))

(assert (=> d!1502992 d!1503440))

(declare-fun d!1503444 () Bool)

(declare-fun res!1997789 () Bool)

(declare-fun e!2945083 () Bool)

(assert (=> d!1503444 (=> res!1997789 e!2945083)))

(assert (=> d!1503444 (= res!1997789 ((_ is Nil!52825) (toList!5914 lm!2023)))))

(assert (=> d!1503444 (= (forall!11582 (toList!5914 lm!2023) lambda!215371) e!2945083)))

(declare-fun b!4722237 () Bool)

(declare-fun e!2945084 () Bool)

(assert (=> b!4722237 (= e!2945083 e!2945084)))

(declare-fun res!1997790 () Bool)

(assert (=> b!4722237 (=> (not res!1997790) (not e!2945084))))

(assert (=> b!4722237 (= res!1997790 (dynLambda!21815 lambda!215371 (h!59170 (toList!5914 lm!2023))))))

(declare-fun b!4722238 () Bool)

(assert (=> b!4722238 (= e!2945084 (forall!11582 (t!360211 (toList!5914 lm!2023)) lambda!215371))))

(assert (= (and d!1503444 (not res!1997789)) b!4722237))

(assert (= (and b!4722237 res!1997790) b!4722238))

(declare-fun b_lambda!178481 () Bool)

(assert (=> (not b_lambda!178481) (not b!4722237)))

(declare-fun m!5657545 () Bool)

(assert (=> b!4722237 m!5657545))

(declare-fun m!5657547 () Bool)

(assert (=> b!4722238 m!5657547))

(assert (=> d!1502992 d!1503444))

(declare-fun d!1503446 () Bool)

(declare-fun res!1997791 () Bool)

(declare-fun e!2945085 () Bool)

(assert (=> d!1503446 (=> res!1997791 e!2945085)))

(assert (=> d!1503446 (= res!1997791 ((_ is Nil!52825) (toList!5914 lm!2023)))))

(assert (=> d!1503446 (= (forall!11582 (toList!5914 lm!2023) lambda!215398) e!2945085)))

(declare-fun b!4722239 () Bool)

(declare-fun e!2945086 () Bool)

(assert (=> b!4722239 (= e!2945085 e!2945086)))

(declare-fun res!1997792 () Bool)

(assert (=> b!4722239 (=> (not res!1997792) (not e!2945086))))

(assert (=> b!4722239 (= res!1997792 (dynLambda!21815 lambda!215398 (h!59170 (toList!5914 lm!2023))))))

(declare-fun b!4722240 () Bool)

(assert (=> b!4722240 (= e!2945086 (forall!11582 (t!360211 (toList!5914 lm!2023)) lambda!215398))))

(assert (= (and d!1503446 (not res!1997791)) b!4722239))

(assert (= (and b!4722239 res!1997792) b!4722240))

(declare-fun b_lambda!178483 () Bool)

(assert (=> (not b_lambda!178483) (not b!4722239)))

(declare-fun m!5657549 () Bool)

(assert (=> b!4722239 m!5657549))

(declare-fun m!5657551 () Bool)

(assert (=> b!4722240 m!5657551))

(assert (=> d!1503038 d!1503446))

(declare-fun d!1503448 () Bool)

(declare-fun res!1997793 () Bool)

(declare-fun e!2945087 () Bool)

(assert (=> d!1503448 (=> res!1997793 e!2945087)))

(assert (=> d!1503448 (= res!1997793 ((_ is Nil!52824) (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> d!1503448 (= (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215388) e!2945087)))

(declare-fun b!4722241 () Bool)

(declare-fun e!2945088 () Bool)

(assert (=> b!4722241 (= e!2945087 e!2945088)))

(declare-fun res!1997794 () Bool)

(assert (=> b!4722241 (=> (not res!1997794) (not e!2945088))))

(assert (=> b!4722241 (= res!1997794 (dynLambda!21817 lambda!215388 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun b!4722242 () Bool)

(assert (=> b!4722242 (= e!2945088 (forall!11584 (t!360210 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lambda!215388))))

(assert (= (and d!1503448 (not res!1997793)) b!4722241))

(assert (= (and b!4722241 res!1997794) b!4722242))

(declare-fun b_lambda!178485 () Bool)

(assert (=> (not b_lambda!178485) (not b!4722241)))

(declare-fun m!5657553 () Bool)

(assert (=> b!4722241 m!5657553))

(declare-fun m!5657555 () Bool)

(assert (=> b!4722242 m!5657555))

(assert (=> b!4721544 d!1503448))

(declare-fun d!1503450 () Bool)

(declare-fun e!2945097 () Bool)

(assert (=> d!1503450 e!2945097))

(declare-fun res!1997796 () Bool)

(assert (=> d!1503450 (=> res!1997796 e!2945097)))

(declare-fun e!2945092 () Bool)

(assert (=> d!1503450 (= res!1997796 e!2945092)))

(declare-fun res!1997797 () Bool)

(assert (=> d!1503450 (=> (not res!1997797) (not e!2945092))))

(declare-fun lt!1887401 () Bool)

(assert (=> d!1503450 (= res!1997797 (not lt!1887401))))

(declare-fun lt!1887404 () Bool)

(assert (=> d!1503450 (= lt!1887401 lt!1887404)))

(declare-fun lt!1887400 () Unit!129750)

(declare-fun e!2945098 () Unit!129750)

(assert (=> d!1503450 (= lt!1887400 e!2945098)))

(declare-fun c!806471 () Bool)

(assert (=> d!1503450 (= c!806471 lt!1887404)))

(assert (=> d!1503450 (= lt!1887404 (containsKey!3367 (toList!5913 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> d!1503450 (= (contains!16168 lt!1886775 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lt!1887401)))

(declare-fun b!4722251 () Bool)

(declare-fun e!2945095 () List!52951)

(assert (=> b!4722251 (= e!2945095 (keys!18970 lt!1886775))))

(declare-fun b!4722252 () Bool)

(declare-fun lt!1887406 () Unit!129750)

(assert (=> b!4722252 (= e!2945098 lt!1887406)))

(declare-fun lt!1887407 () Unit!129750)

(assert (=> b!4722252 (= lt!1887407 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> b!4722252 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887405 () Unit!129750)

(assert (=> b!4722252 (= lt!1887405 lt!1887407)))

(assert (=> b!4722252 (= lt!1887406 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun call!330266 () Bool)

(assert (=> b!4722252 call!330266))

(declare-fun b!4722253 () Bool)

(declare-fun e!2945096 () Unit!129750)

(assert (=> b!4722253 (= e!2945098 e!2945096)))

(declare-fun c!806468 () Bool)

(assert (=> b!4722253 (= c!806468 call!330266)))

(declare-fun b!4722254 () Bool)

(declare-fun e!2945094 () Bool)

(assert (=> b!4722254 (= e!2945097 e!2945094)))

(declare-fun res!1997795 () Bool)

(assert (=> b!4722254 (=> (not res!1997795) (not e!2945094))))

(assert (=> b!4722254 (= res!1997795 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun b!4722255 () Bool)

(assert (=> b!4722255 (= e!2945095 (getKeysList!949 (toList!5913 lt!1886775)))))

(declare-fun b!4722256 () Bool)

(declare-fun Unit!130079 () Unit!129750)

(assert (=> b!4722256 (= e!2945096 Unit!130079)))

(declare-fun b!4722257 () Bool)

(assert (=> b!4722257 (= e!2945092 (not (contains!16171 (keys!18970 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun b!4722258 () Bool)

(assert (=> b!4722258 false))

(declare-fun lt!1887403 () Unit!129750)

(declare-fun lt!1887402 () Unit!129750)

(assert (=> b!4722258 (= lt!1887403 lt!1887402)))

(assert (=> b!4722258 (containsKey!3367 (toList!5913 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> b!4722258 (= lt!1887402 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun Unit!130080 () Unit!129750)

(assert (=> b!4722258 (= e!2945096 Unit!130080)))

(declare-fun b!4722259 () Bool)

(assert (=> b!4722259 (= e!2945094 (contains!16171 (keys!18970 lt!1886775) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun bm!330261 () Bool)

(assert (=> bm!330261 (= call!330266 (contains!16171 e!2945095 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun c!806472 () Bool)

(assert (=> bm!330261 (= c!806472 c!806471)))

(assert (= (and d!1503450 c!806471) b!4722252))

(assert (= (and d!1503450 (not c!806471)) b!4722253))

(assert (= (and b!4722253 c!806468) b!4722258))

(assert (= (and b!4722253 (not c!806468)) b!4722256))

(assert (= (or b!4722252 b!4722253) bm!330261))

(assert (= (and bm!330261 c!806472) b!4722255))

(assert (= (and bm!330261 (not c!806472)) b!4722251))

(assert (= (and d!1503450 res!1997797) b!4722257))

(assert (= (and d!1503450 (not res!1997796)) b!4722254))

(assert (= (and b!4722254 res!1997795) b!4722259))

(declare-fun m!5657557 () Bool)

(assert (=> bm!330261 m!5657557))

(declare-fun m!5657559 () Bool)

(assert (=> b!4722254 m!5657559))

(assert (=> b!4722254 m!5657559))

(declare-fun m!5657561 () Bool)

(assert (=> b!4722254 m!5657561))

(declare-fun m!5657563 () Bool)

(assert (=> d!1503450 m!5657563))

(declare-fun m!5657565 () Bool)

(assert (=> b!4722251 m!5657565))

(declare-fun m!5657567 () Bool)

(assert (=> b!4722252 m!5657567))

(assert (=> b!4722252 m!5657559))

(assert (=> b!4722252 m!5657559))

(assert (=> b!4722252 m!5657561))

(declare-fun m!5657569 () Bool)

(assert (=> b!4722252 m!5657569))

(assert (=> b!4722259 m!5657565))

(assert (=> b!4722259 m!5657565))

(declare-fun m!5657571 () Bool)

(assert (=> b!4722259 m!5657571))

(assert (=> b!4722257 m!5657565))

(assert (=> b!4722257 m!5657565))

(assert (=> b!4722257 m!5657571))

(declare-fun m!5657573 () Bool)

(assert (=> b!4722255 m!5657573))

(assert (=> b!4722258 m!5657563))

(declare-fun m!5657575 () Bool)

(assert (=> b!4722258 m!5657575))

(assert (=> b!4721544 d!1503450))

(declare-fun d!1503452 () Bool)

(declare-fun e!2945105 () Bool)

(assert (=> d!1503452 e!2945105))

(declare-fun res!1997799 () Bool)

(assert (=> d!1503452 (=> res!1997799 e!2945105)))

(declare-fun e!2945100 () Bool)

(assert (=> d!1503452 (= res!1997799 e!2945100)))

(declare-fun res!1997800 () Bool)

(assert (=> d!1503452 (=> (not res!1997800) (not e!2945100))))

(declare-fun lt!1887409 () Bool)

(assert (=> d!1503452 (= res!1997800 (not lt!1887409))))

(declare-fun lt!1887412 () Bool)

(assert (=> d!1503452 (= lt!1887409 lt!1887412)))

(declare-fun lt!1887408 () Unit!129750)

(declare-fun e!2945106 () Unit!129750)

(assert (=> d!1503452 (= lt!1887408 e!2945106)))

(declare-fun c!806476 () Bool)

(assert (=> d!1503452 (= c!806476 lt!1887412)))

(assert (=> d!1503452 (= lt!1887412 (containsKey!3367 (toList!5913 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> d!1503452 (= (contains!16168 lt!1886774 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lt!1887409)))

(declare-fun b!4722264 () Bool)

(declare-fun e!2945103 () List!52951)

(assert (=> b!4722264 (= e!2945103 (keys!18970 lt!1886774))))

(declare-fun b!4722265 () Bool)

(declare-fun lt!1887414 () Unit!129750)

(assert (=> b!4722265 (= e!2945106 lt!1887414)))

(declare-fun lt!1887415 () Unit!129750)

(assert (=> b!4722265 (= lt!1887415 (lemmaContainsKeyImpliesGetValueByKeyDefined!1844 (toList!5913 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> b!4722265 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887413 () Unit!129750)

(assert (=> b!4722265 (= lt!1887413 lt!1887415)))

(assert (=> b!4722265 (= lt!1887414 (lemmaInListThenGetKeysListContains!944 (toList!5913 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun call!330267 () Bool)

(assert (=> b!4722265 call!330267))

(declare-fun b!4722266 () Bool)

(declare-fun e!2945104 () Unit!129750)

(assert (=> b!4722266 (= e!2945106 e!2945104)))

(declare-fun c!806473 () Bool)

(assert (=> b!4722266 (= c!806473 call!330267)))

(declare-fun b!4722267 () Bool)

(declare-fun e!2945102 () Bool)

(assert (=> b!4722267 (= e!2945105 e!2945102)))

(declare-fun res!1997798 () Bool)

(assert (=> b!4722267 (=> (not res!1997798) (not e!2945102))))

(assert (=> b!4722267 (= res!1997798 (isDefined!9611 (getValueByKey!1952 (toList!5913 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun b!4722268 () Bool)

(assert (=> b!4722268 (= e!2945103 (getKeysList!949 (toList!5913 lt!1886774)))))

(declare-fun b!4722269 () Bool)

(declare-fun Unit!130081 () Unit!129750)

(assert (=> b!4722269 (= e!2945104 Unit!130081)))

(declare-fun b!4722270 () Bool)

(assert (=> b!4722270 (= e!2945100 (not (contains!16171 (keys!18970 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun b!4722271 () Bool)

(assert (=> b!4722271 false))

(declare-fun lt!1887411 () Unit!129750)

(declare-fun lt!1887410 () Unit!129750)

(assert (=> b!4722271 (= lt!1887411 lt!1887410)))

(assert (=> b!4722271 (containsKey!3367 (toList!5913 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> b!4722271 (= lt!1887410 (lemmaInGetKeysListThenContainsKey!948 (toList!5913 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun Unit!130082 () Unit!129750)

(assert (=> b!4722271 (= e!2945104 Unit!130082)))

(declare-fun b!4722272 () Bool)

(assert (=> b!4722272 (= e!2945102 (contains!16171 (keys!18970 lt!1886774) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun bm!330262 () Bool)

(assert (=> bm!330262 (= call!330267 (contains!16171 e!2945103 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun c!806477 () Bool)

(assert (=> bm!330262 (= c!806477 c!806476)))

(assert (= (and d!1503452 c!806476) b!4722265))

(assert (= (and d!1503452 (not c!806476)) b!4722266))

(assert (= (and b!4722266 c!806473) b!4722271))

(assert (= (and b!4722266 (not c!806473)) b!4722269))

(assert (= (or b!4722265 b!4722266) bm!330262))

(assert (= (and bm!330262 c!806477) b!4722268))

(assert (= (and bm!330262 (not c!806477)) b!4722264))

(assert (= (and d!1503452 res!1997800) b!4722270))

(assert (= (and d!1503452 (not res!1997799)) b!4722267))

(assert (= (and b!4722267 res!1997798) b!4722272))

(declare-fun m!5657579 () Bool)

(assert (=> bm!330262 m!5657579))

(declare-fun m!5657581 () Bool)

(assert (=> b!4722267 m!5657581))

(assert (=> b!4722267 m!5657581))

(declare-fun m!5657583 () Bool)

(assert (=> b!4722267 m!5657583))

(declare-fun m!5657585 () Bool)

(assert (=> d!1503452 m!5657585))

(declare-fun m!5657587 () Bool)

(assert (=> b!4722264 m!5657587))

(declare-fun m!5657589 () Bool)

(assert (=> b!4722265 m!5657589))

(assert (=> b!4722265 m!5657581))

(assert (=> b!4722265 m!5657581))

(assert (=> b!4722265 m!5657583))

(declare-fun m!5657591 () Bool)

(assert (=> b!4722265 m!5657591))

(assert (=> b!4722272 m!5657587))

(assert (=> b!4722272 m!5657587))

(declare-fun m!5657593 () Bool)

(assert (=> b!4722272 m!5657593))

(assert (=> b!4722270 m!5657587))

(assert (=> b!4722270 m!5657587))

(assert (=> b!4722270 m!5657593))

(declare-fun m!5657595 () Bool)

(assert (=> b!4722268 m!5657595))

(assert (=> b!4722271 m!5657585))

(declare-fun m!5657597 () Bool)

(assert (=> b!4722271 m!5657597))

(assert (=> b!4721544 d!1503452))

(assert (=> b!4721544 d!1503194))

(declare-fun d!1503456 () Bool)

(declare-fun e!2945107 () Bool)

(assert (=> d!1503456 e!2945107))

(declare-fun res!1997801 () Bool)

(assert (=> d!1503456 (=> (not res!1997801) (not e!2945107))))

(declare-fun lt!1887416 () ListMap!5277)

(assert (=> d!1503456 (= res!1997801 (contains!16168 lt!1887416 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887418 () List!52948)

(assert (=> d!1503456 (= lt!1887416 (ListMap!5278 lt!1887418))))

(declare-fun lt!1887419 () Unit!129750)

(declare-fun lt!1887417 () Unit!129750)

(assert (=> d!1503456 (= lt!1887419 lt!1887417)))

(assert (=> d!1503456 (= (getValueByKey!1952 lt!1887418 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (Some!12355 (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> d!1503456 (= lt!1887417 (lemmaContainsTupThenGetReturnValue!1083 lt!1887418 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> d!1503456 (= lt!1887418 (insertNoDuplicatedKeys!591 (toList!5913 lt!1886424) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> d!1503456 (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887416)))

(declare-fun b!4722273 () Bool)

(declare-fun res!1997802 () Bool)

(assert (=> b!4722273 (=> (not res!1997802) (not e!2945107))))

(assert (=> b!4722273 (= res!1997802 (= (getValueByKey!1952 (toList!5913 lt!1887416) (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (Some!12355 (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun b!4722274 () Bool)

(assert (=> b!4722274 (= e!2945107 (contains!16169 (toList!5913 lt!1887416) (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (= (and d!1503456 res!1997801) b!4722273))

(assert (= (and b!4722273 res!1997802) b!4722274))

(declare-fun m!5657599 () Bool)

(assert (=> d!1503456 m!5657599))

(declare-fun m!5657601 () Bool)

(assert (=> d!1503456 m!5657601))

(declare-fun m!5657603 () Bool)

(assert (=> d!1503456 m!5657603))

(declare-fun m!5657605 () Bool)

(assert (=> d!1503456 m!5657605))

(declare-fun m!5657607 () Bool)

(assert (=> b!4722273 m!5657607))

(declare-fun m!5657609 () Bool)

(assert (=> b!4722274 m!5657609))

(assert (=> b!4721544 d!1503456))

(declare-fun bs!1111163 () Bool)

(declare-fun d!1503458 () Bool)

(assert (= bs!1111163 (and d!1503458 d!1503008)))

(declare-fun lambda!215500 () Int)

(assert (=> bs!1111163 (= (= lt!1886775 lt!1886726) (= lambda!215500 lambda!215378))))

(declare-fun bs!1111164 () Bool)

(assert (= bs!1111164 (and d!1503458 b!4721536)))

(assert (=> bs!1111164 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215379))))

(declare-fun bs!1111165 () Bool)

(assert (= bs!1111165 (and d!1503458 b!4721633)))

(assert (=> bs!1111165 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215500 lambda!215403))))

(declare-fun bs!1111166 () Bool)

(assert (= bs!1111166 (and d!1503458 d!1503084)))

(assert (=> bs!1111166 (= (= lt!1886775 lt!1886730) (= lambda!215500 lambda!215411))))

(declare-fun bs!1111167 () Bool)

(assert (= bs!1111167 (and d!1503458 b!4721748)))

(assert (=> bs!1111167 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215500 lambda!215421))))

(declare-fun bs!1111168 () Bool)

(assert (= bs!1111168 (and d!1503458 b!4721695)))

(assert (=> bs!1111168 (= (= lt!1886775 lt!1886897) (= lambda!215500 lambda!215414))))

(declare-fun bs!1111169 () Bool)

(assert (= bs!1111169 (and d!1503458 b!4721632)))

(assert (=> bs!1111169 (= (= lt!1886775 lt!1886847) (= lambda!215500 lambda!215405))))

(declare-fun bs!1111170 () Bool)

(assert (= bs!1111170 (and d!1503458 d!1503294)))

(assert (=> bs!1111170 (= (= lt!1886775 lt!1887136) (= lambda!215500 lambda!215465))))

(declare-fun bs!1111171 () Bool)

(assert (= bs!1111171 (and d!1503458 b!4721430)))

(assert (=> bs!1111171 (= (= lt!1886775 lt!1886627) (= lambda!215500 lambda!215349))))

(declare-fun bs!1111172 () Bool)

(assert (= bs!1111172 (and d!1503458 b!4721843)))

(assert (=> bs!1111172 (= (= lt!1886775 lt!1887015) (= lambda!215500 lambda!215427))))

(declare-fun bs!1111173 () Bool)

(assert (= bs!1111173 (and d!1503458 b!4722211)))

(assert (=> bs!1111173 (= (= lt!1886775 lt!1887351) (= lambda!215500 lambda!215496))))

(declare-fun bs!1111174 () Bool)

(assert (= bs!1111174 (and d!1503458 b!4721423)))

(assert (=> bs!1111174 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215344))))

(declare-fun bs!1111175 () Bool)

(assert (= bs!1111175 (and d!1503458 b!4722004)))

(assert (=> bs!1111175 (= (= lt!1886775 lt!1887140) (= lambda!215500 lambda!215463))))

(declare-fun bs!1111176 () Bool)

(assert (= bs!1111176 (and d!1503458 d!1503200)))

(assert (=> bs!1111176 (= (= lt!1886775 lt!1887011) (= lambda!215500 lambda!215428))))

(declare-fun bs!1111177 () Bool)

(assert (= bs!1111177 (and d!1503458 b!4721535)))

(assert (=> bs!1111177 (= (= lt!1886775 lt!1886751) (= lambda!215500 lambda!215381))))

(assert (=> bs!1111173 (= (= lt!1886775 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215500 lambda!215493))))

(declare-fun bs!1111179 () Bool)

(assert (= bs!1111179 (and d!1503458 d!1503322)))

(assert (=> bs!1111179 (= (= lt!1886775 lt!1887233) (= lambda!215500 lambda!215474))))

(assert (=> bs!1111171 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215348))))

(declare-fun bs!1111180 () Bool)

(assert (= bs!1111180 (and d!1503458 b!4721747)))

(assert (=> bs!1111180 (= (= lt!1886775 lt!1886947) (= lambda!215500 lambda!215423))))

(assert (=> bs!1111180 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215500 lambda!215422))))

(declare-fun bs!1111181 () Bool)

(assert (= bs!1111181 (and d!1503458 d!1502956)))

(assert (=> bs!1111181 (= (= lt!1886775 lt!1886602) (= lambda!215500 lambda!215346))))

(declare-fun bs!1111182 () Bool)

(assert (= bs!1111182 (and d!1503458 b!4722059)))

(assert (=> bs!1111182 (= (= lt!1886775 lt!1887237) (= lambda!215500 lambda!215473))))

(declare-fun bs!1111183 () Bool)

(assert (= bs!1111183 (and d!1503458 b!4722140)))

(assert (=> bs!1111183 (= (= lt!1886775 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215500 lambda!215481))))

(assert (=> bs!1111177 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215380))))

(declare-fun bs!1111184 () Bool)

(assert (= bs!1111184 (and d!1503458 d!1503166)))

(assert (=> bs!1111184 (= (= lt!1886775 lt!1886943) (= lambda!215500 lambda!215424))))

(assert (=> bs!1111168 (= (= lt!1886775 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215500 lambda!215413))))

(declare-fun bs!1111186 () Bool)

(assert (= bs!1111186 (and d!1503458 d!1503378)))

(assert (=> bs!1111186 (= (= lt!1886775 lt!1887301) (= lambda!215500 lambda!215489))))

(declare-fun bs!1111187 () Bool)

(assert (= bs!1111187 (and d!1503458 d!1503422)))

(assert (=> bs!1111187 (= (= lt!1886775 lt!1887347) (= lambda!215500 lambda!215498))))

(declare-fun bs!1111189 () Bool)

(assert (= bs!1111189 (and d!1503458 b!4721545)))

(assert (=> bs!1111189 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215386))))

(declare-fun bs!1111191 () Bool)

(assert (= bs!1111191 (and d!1503458 d!1503020)))

(assert (=> bs!1111191 (not (= lambda!215500 lambda!215385))))

(declare-fun bs!1111193 () Bool)

(assert (= bs!1111193 (and d!1503458 b!4722141)))

(assert (=> bs!1111193 (= (= lt!1886775 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215500 lambda!215480))))

(assert (=> bs!1111169 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215500 lambda!215404))))

(declare-fun bs!1111196 () Bool)

(assert (= bs!1111196 (and d!1503458 d!1503132)))

(assert (=> bs!1111196 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215419))))

(assert (=> bs!1111172 (= (= lt!1886775 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215500 lambda!215426))))

(declare-fun bs!1111199 () Bool)

(assert (= bs!1111199 (and d!1503458 b!4721696)))

(assert (=> bs!1111199 (= (= lt!1886775 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215500 lambda!215412))))

(declare-fun bs!1111201 () Bool)

(assert (= bs!1111201 (and d!1503458 d!1503282)))

(assert (=> bs!1111201 (= (= lt!1886775 lt!1886606) (= lambda!215500 lambda!215457))))

(declare-fun bs!1111203 () Bool)

(assert (= bs!1111203 (and d!1503458 d!1503126)))

(assert (=> bs!1111203 (= (= lt!1886775 lt!1886893) (= lambda!215500 lambda!215415))))

(declare-fun bs!1111205 () Bool)

(assert (= bs!1111205 (and d!1503458 b!4721424)))

(assert (=> bs!1111205 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215343))))

(declare-fun bs!1111207 () Bool)

(assert (= bs!1111207 (and d!1503458 b!4721544)))

(assert (=> bs!1111207 (= lambda!215500 lambda!215388)))

(assert (=> bs!1111183 (= (= lt!1886775 lt!1887305) (= lambda!215500 lambda!215488))))

(declare-fun bs!1111210 () Bool)

(assert (= bs!1111210 (and d!1503458 d!1503024)))

(assert (=> bs!1111210 (= (= lt!1886775 lt!1886771) (= lambda!215500 lambda!215389))))

(assert (=> bs!1111174 (= (= lt!1886775 lt!1886606) (= lambda!215500 lambda!215345))))

(declare-fun bs!1111213 () Bool)

(assert (= bs!1111213 (and d!1503458 b!4722060)))

(assert (=> bs!1111213 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215500 lambda!215468))))

(declare-fun bs!1111215 () Bool)

(assert (= bs!1111215 (and d!1503458 d!1503162)))

(assert (=> bs!1111215 (= (= lt!1886775 lt!1886627) (= lambda!215500 lambda!215420))))

(declare-fun bs!1111216 () Bool)

(assert (= bs!1111216 (and d!1503458 b!4721530)))

(assert (=> bs!1111216 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215375))))

(declare-fun bs!1111218 () Bool)

(assert (= bs!1111218 (and d!1503458 b!4721844)))

(assert (=> bs!1111218 (= (= lt!1886775 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215500 lambda!215425))))

(declare-fun bs!1111220 () Bool)

(assert (= bs!1111220 (and d!1503458 b!4721531)))

(assert (=> bs!1111220 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215373))))

(declare-fun bs!1111222 () Bool)

(assert (= bs!1111222 (and d!1503458 b!4721431)))

(assert (=> bs!1111222 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215347))))

(assert (=> bs!1111175 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215500 lambda!215461))))

(declare-fun bs!1111224 () Bool)

(assert (= bs!1111224 (and d!1503458 d!1502964)))

(assert (=> bs!1111224 (= (= lt!1886775 lt!1886623) (= lambda!215500 lambda!215352))))

(assert (=> bs!1111207 (= (= lt!1886775 lt!1886424) (= lambda!215500 lambda!215387))))

(declare-fun bs!1111227 () Bool)

(assert (= bs!1111227 (and d!1503458 d!1503338)))

(assert (=> bs!1111227 (= (= lt!1886775 lt!1886751) (= lambda!215500 lambda!215476))))

(assert (=> bs!1111216 (= (= lt!1886775 lt!1886730) (= lambda!215500 lambda!215376))))

(declare-fun bs!1111229 () Bool)

(assert (= bs!1111229 (and d!1503458 b!4722005)))

(assert (=> bs!1111229 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215500 lambda!215458))))

(declare-fun bs!1111231 () Bool)

(assert (= bs!1111231 (and d!1503458 d!1503014)))

(assert (=> bs!1111231 (= (= lt!1886775 lt!1886747) (= lambda!215500 lambda!215382))))

(declare-fun bs!1111232 () Bool)

(assert (= bs!1111232 (and d!1503458 b!4722212)))

(assert (=> bs!1111232 (= (= lt!1886775 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215500 lambda!215491))))

(declare-fun bs!1111234 () Bool)

(assert (= bs!1111234 (and d!1503458 d!1503082)))

(assert (=> bs!1111234 (= (= lt!1886775 lt!1886843) (= lambda!215500 lambda!215406))))

(assert (=> bs!1111182 (= (= lt!1886775 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215500 lambda!215470))))

(declare-fun bs!1111236 () Bool)

(assert (= bs!1111236 (and d!1503458 d!1503040)))

(assert (=> bs!1111236 (not (= lambda!215500 lambda!215399))))

(assert (=> d!1503458 true))

(assert (=> d!1503458 (forall!11584 (toList!5913 lt!1886424) lambda!215500)))

(declare-fun lt!1887420 () Unit!129750)

(assert (=> d!1503458 (= lt!1887420 (choose!33307 lt!1886424 lt!1886775 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> d!1503458 (forall!11584 (toList!5913 (+!2267 lt!1886424 (tuple2!54443 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))) lambda!215500)))

(assert (=> d!1503458 (= (addForallContainsKeyThenBeforeAdding!794 lt!1886424 lt!1886775 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (_2!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lt!1887420)))

(declare-fun bs!1111243 () Bool)

(assert (= bs!1111243 d!1503458))

(declare-fun m!5657615 () Bool)

(assert (=> bs!1111243 m!5657615))

(declare-fun m!5657617 () Bool)

(assert (=> bs!1111243 m!5657617))

(declare-fun m!5657619 () Bool)

(assert (=> bs!1111243 m!5657619))

(declare-fun m!5657621 () Bool)

(assert (=> bs!1111243 m!5657621))

(assert (=> b!4721544 d!1503458))

(declare-fun d!1503462 () Bool)

(declare-fun res!1997806 () Bool)

(declare-fun e!2945111 () Bool)

(assert (=> d!1503462 (=> res!1997806 e!2945111)))

(assert (=> d!1503462 (= res!1997806 ((_ is Nil!52824) (toList!5913 lt!1886774)))))

(assert (=> d!1503462 (= (forall!11584 (toList!5913 lt!1886774) lambda!215388) e!2945111)))

(declare-fun b!4722280 () Bool)

(declare-fun e!2945112 () Bool)

(assert (=> b!4722280 (= e!2945111 e!2945112)))

(declare-fun res!1997807 () Bool)

(assert (=> b!4722280 (=> (not res!1997807) (not e!2945112))))

(assert (=> b!4722280 (= res!1997807 (dynLambda!21817 lambda!215388 (h!59169 (toList!5913 lt!1886774))))))

(declare-fun b!4722281 () Bool)

(assert (=> b!4722281 (= e!2945112 (forall!11584 (t!360210 (toList!5913 lt!1886774)) lambda!215388))))

(assert (= (and d!1503462 (not res!1997806)) b!4722280))

(assert (= (and b!4722280 res!1997807) b!4722281))

(declare-fun b_lambda!178487 () Bool)

(assert (=> (not b_lambda!178487) (not b!4722280)))

(declare-fun m!5657623 () Bool)

(assert (=> b!4722280 m!5657623))

(declare-fun m!5657625 () Bool)

(assert (=> b!4722281 m!5657625))

(assert (=> b!4721544 d!1503462))

(declare-fun d!1503464 () Bool)

(declare-fun res!1997808 () Bool)

(declare-fun e!2945113 () Bool)

(assert (=> d!1503464 (=> res!1997808 e!2945113)))

(assert (=> d!1503464 (= res!1997808 ((_ is Nil!52824) (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(assert (=> d!1503464 (= (forall!11584 (_2!30516 (h!59170 (toList!5914 lm!2023))) lambda!215388) e!2945113)))

(declare-fun b!4722282 () Bool)

(declare-fun e!2945114 () Bool)

(assert (=> b!4722282 (= e!2945113 e!2945114)))

(declare-fun res!1997809 () Bool)

(assert (=> b!4722282 (=> (not res!1997809) (not e!2945114))))

(assert (=> b!4722282 (= res!1997809 (dynLambda!21817 lambda!215388 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun b!4722283 () Bool)

(assert (=> b!4722283 (= e!2945114 (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215388))))

(assert (= (and d!1503464 (not res!1997808)) b!4722282))

(assert (= (and b!4722282 res!1997809) b!4722283))

(declare-fun b_lambda!178489 () Bool)

(assert (=> (not b_lambda!178489) (not b!4722282)))

(declare-fun m!5657627 () Bool)

(assert (=> b!4722282 m!5657627))

(assert (=> b!4722283 m!5655873))

(assert (=> b!4721544 d!1503464))

(declare-fun bs!1111258 () Bool)

(declare-fun b!4722285 () Bool)

(assert (= bs!1111258 (and b!4722285 d!1503008)))

(declare-fun lambda!215503 () Int)

(assert (=> bs!1111258 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886726) (= lambda!215503 lambda!215378))))

(declare-fun bs!1111261 () Bool)

(assert (= bs!1111261 (and b!4722285 b!4721536)))

(assert (=> bs!1111261 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215379))))

(declare-fun bs!1111263 () Bool)

(assert (= bs!1111263 (and b!4722285 b!4721633)))

(assert (=> bs!1111263 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215503 lambda!215403))))

(declare-fun bs!1111265 () Bool)

(assert (= bs!1111265 (and b!4722285 d!1503084)))

(assert (=> bs!1111265 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215503 lambda!215411))))

(declare-fun bs!1111266 () Bool)

(assert (= bs!1111266 (and b!4722285 b!4721748)))

(assert (=> bs!1111266 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215503 lambda!215421))))

(declare-fun bs!1111268 () Bool)

(assert (= bs!1111268 (and b!4722285 b!4721695)))

(assert (=> bs!1111268 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886897) (= lambda!215503 lambda!215414))))

(declare-fun bs!1111270 () Bool)

(assert (= bs!1111270 (and b!4722285 b!4721632)))

(assert (=> bs!1111270 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886847) (= lambda!215503 lambda!215405))))

(declare-fun bs!1111272 () Bool)

(assert (= bs!1111272 (and b!4722285 d!1503294)))

(assert (=> bs!1111272 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887136) (= lambda!215503 lambda!215465))))

(declare-fun bs!1111274 () Bool)

(assert (= bs!1111274 (and b!4722285 b!4721430)))

(assert (=> bs!1111274 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215503 lambda!215349))))

(declare-fun bs!1111276 () Bool)

(assert (= bs!1111276 (and b!4722285 b!4721843)))

(assert (=> bs!1111276 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887015) (= lambda!215503 lambda!215427))))

(declare-fun bs!1111277 () Bool)

(assert (= bs!1111277 (and b!4722285 b!4722211)))

(assert (=> bs!1111277 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887351) (= lambda!215503 lambda!215496))))

(declare-fun bs!1111279 () Bool)

(assert (= bs!1111279 (and b!4722285 b!4721423)))

(assert (=> bs!1111279 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215344))))

(declare-fun bs!1111281 () Bool)

(assert (= bs!1111281 (and b!4722285 b!4722004)))

(assert (=> bs!1111281 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887140) (= lambda!215503 lambda!215463))))

(declare-fun bs!1111283 () Bool)

(assert (= bs!1111283 (and b!4722285 d!1503200)))

(assert (=> bs!1111283 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887011) (= lambda!215503 lambda!215428))))

(declare-fun bs!1111285 () Bool)

(assert (= bs!1111285 (and b!4722285 b!4721535)))

(assert (=> bs!1111285 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215503 lambda!215381))))

(assert (=> bs!1111277 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215503 lambda!215493))))

(declare-fun bs!1111287 () Bool)

(assert (= bs!1111287 (and b!4722285 d!1503322)))

(assert (=> bs!1111287 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887233) (= lambda!215503 lambda!215474))))

(assert (=> bs!1111274 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215348))))

(declare-fun bs!1111289 () Bool)

(assert (= bs!1111289 (and b!4722285 b!4721747)))

(assert (=> bs!1111289 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886947) (= lambda!215503 lambda!215423))))

(assert (=> bs!1111289 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215503 lambda!215422))))

(declare-fun bs!1111291 () Bool)

(assert (= bs!1111291 (and b!4722285 d!1502956)))

(assert (=> bs!1111291 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886602) (= lambda!215503 lambda!215346))))

(declare-fun bs!1111293 () Bool)

(assert (= bs!1111293 (and b!4722285 b!4722059)))

(assert (=> bs!1111293 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887237) (= lambda!215503 lambda!215473))))

(declare-fun bs!1111294 () Bool)

(assert (= bs!1111294 (and b!4722285 b!4722140)))

(assert (=> bs!1111294 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215503 lambda!215481))))

(assert (=> bs!1111285 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215380))))

(declare-fun bs!1111296 () Bool)

(assert (= bs!1111296 (and b!4722285 d!1503166)))

(assert (=> bs!1111296 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886943) (= lambda!215503 lambda!215424))))

(assert (=> bs!1111268 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215503 lambda!215413))))

(declare-fun bs!1111298 () Bool)

(assert (= bs!1111298 (and b!4722285 d!1503378)))

(assert (=> bs!1111298 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887301) (= lambda!215503 lambda!215489))))

(declare-fun bs!1111300 () Bool)

(assert (= bs!1111300 (and b!4722285 d!1503422)))

(assert (=> bs!1111300 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887347) (= lambda!215503 lambda!215498))))

(declare-fun bs!1111302 () Bool)

(assert (= bs!1111302 (and b!4722285 b!4721545)))

(assert (=> bs!1111302 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215386))))

(declare-fun bs!1111304 () Bool)

(assert (= bs!1111304 (and b!4722285 d!1503020)))

(assert (=> bs!1111304 (not (= lambda!215503 lambda!215385))))

(declare-fun bs!1111305 () Bool)

(assert (= bs!1111305 (and b!4722285 b!4722141)))

(assert (=> bs!1111305 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215503 lambda!215480))))

(assert (=> bs!1111270 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215503 lambda!215404))))

(declare-fun bs!1111306 () Bool)

(assert (= bs!1111306 (and b!4722285 d!1503458)))

(assert (=> bs!1111306 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886775) (= lambda!215503 lambda!215500))))

(declare-fun bs!1111307 () Bool)

(assert (= bs!1111307 (and b!4722285 d!1503132)))

(assert (=> bs!1111307 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215419))))

(assert (=> bs!1111276 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215503 lambda!215426))))

(declare-fun bs!1111308 () Bool)

(assert (= bs!1111308 (and b!4722285 b!4721696)))

(assert (=> bs!1111308 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215503 lambda!215412))))

(declare-fun bs!1111309 () Bool)

(assert (= bs!1111309 (and b!4722285 d!1503282)))

(assert (=> bs!1111309 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215503 lambda!215457))))

(declare-fun bs!1111310 () Bool)

(assert (= bs!1111310 (and b!4722285 d!1503126)))

(assert (=> bs!1111310 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886893) (= lambda!215503 lambda!215415))))

(declare-fun bs!1111311 () Bool)

(assert (= bs!1111311 (and b!4722285 b!4721424)))

(assert (=> bs!1111311 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215343))))

(declare-fun bs!1111312 () Bool)

(assert (= bs!1111312 (and b!4722285 b!4721544)))

(assert (=> bs!1111312 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886775) (= lambda!215503 lambda!215388))))

(assert (=> bs!1111294 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887305) (= lambda!215503 lambda!215488))))

(declare-fun bs!1111313 () Bool)

(assert (= bs!1111313 (and b!4722285 d!1503024)))

(assert (=> bs!1111313 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886771) (= lambda!215503 lambda!215389))))

(assert (=> bs!1111279 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215503 lambda!215345))))

(declare-fun bs!1111314 () Bool)

(assert (= bs!1111314 (and b!4722285 b!4722060)))

(assert (=> bs!1111314 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215503 lambda!215468))))

(declare-fun bs!1111315 () Bool)

(assert (= bs!1111315 (and b!4722285 d!1503162)))

(assert (=> bs!1111315 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215503 lambda!215420))))

(declare-fun bs!1111316 () Bool)

(assert (= bs!1111316 (and b!4722285 b!4721530)))

(assert (=> bs!1111316 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215375))))

(declare-fun bs!1111317 () Bool)

(assert (= bs!1111317 (and b!4722285 b!4721844)))

(assert (=> bs!1111317 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215503 lambda!215425))))

(declare-fun bs!1111318 () Bool)

(assert (= bs!1111318 (and b!4722285 b!4721531)))

(assert (=> bs!1111318 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215373))))

(declare-fun bs!1111319 () Bool)

(assert (= bs!1111319 (and b!4722285 b!4721431)))

(assert (=> bs!1111319 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215347))))

(assert (=> bs!1111281 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215503 lambda!215461))))

(declare-fun bs!1111320 () Bool)

(assert (= bs!1111320 (and b!4722285 d!1502964)))

(assert (=> bs!1111320 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886623) (= lambda!215503 lambda!215352))))

(assert (=> bs!1111312 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215503 lambda!215387))))

(declare-fun bs!1111321 () Bool)

(assert (= bs!1111321 (and b!4722285 d!1503338)))

(assert (=> bs!1111321 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215503 lambda!215476))))

(assert (=> bs!1111316 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215503 lambda!215376))))

(declare-fun bs!1111322 () Bool)

(assert (= bs!1111322 (and b!4722285 b!4722005)))

(assert (=> bs!1111322 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215503 lambda!215458))))

(declare-fun bs!1111323 () Bool)

(assert (= bs!1111323 (and b!4722285 d!1503014)))

(assert (=> bs!1111323 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886747) (= lambda!215503 lambda!215382))))

(declare-fun bs!1111324 () Bool)

(assert (= bs!1111324 (and b!4722285 b!4722212)))

(assert (=> bs!1111324 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215503 lambda!215491))))

(declare-fun bs!1111325 () Bool)

(assert (= bs!1111325 (and b!4722285 d!1503082)))

(assert (=> bs!1111325 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886843) (= lambda!215503 lambda!215406))))

(assert (=> bs!1111293 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215503 lambda!215470))))

(declare-fun bs!1111326 () Bool)

(assert (= bs!1111326 (and b!4722285 d!1503040)))

(assert (=> bs!1111326 (not (= lambda!215503 lambda!215399))))

(assert (=> b!4722285 true))

(declare-fun bs!1111327 () Bool)

(declare-fun b!4722284 () Bool)

(assert (= bs!1111327 (and b!4722284 d!1503008)))

(declare-fun lambda!215505 () Int)

(assert (=> bs!1111327 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886726) (= lambda!215505 lambda!215378))))

(declare-fun bs!1111328 () Bool)

(assert (= bs!1111328 (and b!4722284 b!4721536)))

(assert (=> bs!1111328 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215379))))

(declare-fun bs!1111329 () Bool)

(assert (= bs!1111329 (and b!4722284 b!4721633)))

(assert (=> bs!1111329 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215505 lambda!215403))))

(declare-fun bs!1111330 () Bool)

(assert (= bs!1111330 (and b!4722284 d!1503084)))

(assert (=> bs!1111330 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215505 lambda!215411))))

(declare-fun bs!1111331 () Bool)

(assert (= bs!1111331 (and b!4722284 b!4721748)))

(assert (=> bs!1111331 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215505 lambda!215421))))

(declare-fun bs!1111332 () Bool)

(assert (= bs!1111332 (and b!4722284 b!4721695)))

(assert (=> bs!1111332 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886897) (= lambda!215505 lambda!215414))))

(declare-fun bs!1111333 () Bool)

(assert (= bs!1111333 (and b!4722284 b!4721632)))

(assert (=> bs!1111333 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886847) (= lambda!215505 lambda!215405))))

(declare-fun bs!1111334 () Bool)

(assert (= bs!1111334 (and b!4722284 d!1503294)))

(assert (=> bs!1111334 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887136) (= lambda!215505 lambda!215465))))

(declare-fun bs!1111335 () Bool)

(assert (= bs!1111335 (and b!4722284 b!4721430)))

(assert (=> bs!1111335 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215505 lambda!215349))))

(declare-fun bs!1111336 () Bool)

(assert (= bs!1111336 (and b!4722284 b!4721843)))

(assert (=> bs!1111336 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887015) (= lambda!215505 lambda!215427))))

(declare-fun bs!1111337 () Bool)

(assert (= bs!1111337 (and b!4722284 b!4722211)))

(assert (=> bs!1111337 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887351) (= lambda!215505 lambda!215496))))

(declare-fun bs!1111338 () Bool)

(assert (= bs!1111338 (and b!4722284 b!4722285)))

(assert (=> bs!1111338 (= lambda!215505 lambda!215503)))

(declare-fun bs!1111339 () Bool)

(assert (= bs!1111339 (and b!4722284 b!4721423)))

(assert (=> bs!1111339 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215344))))

(declare-fun bs!1111340 () Bool)

(assert (= bs!1111340 (and b!4722284 b!4722004)))

(assert (=> bs!1111340 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887140) (= lambda!215505 lambda!215463))))

(declare-fun bs!1111341 () Bool)

(assert (= bs!1111341 (and b!4722284 d!1503200)))

(assert (=> bs!1111341 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887011) (= lambda!215505 lambda!215428))))

(declare-fun bs!1111342 () Bool)

(assert (= bs!1111342 (and b!4722284 b!4721535)))

(assert (=> bs!1111342 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215505 lambda!215381))))

(assert (=> bs!1111337 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215505 lambda!215493))))

(declare-fun bs!1111343 () Bool)

(assert (= bs!1111343 (and b!4722284 d!1503322)))

(assert (=> bs!1111343 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887233) (= lambda!215505 lambda!215474))))

(assert (=> bs!1111335 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215348))))

(declare-fun bs!1111344 () Bool)

(assert (= bs!1111344 (and b!4722284 b!4721747)))

(assert (=> bs!1111344 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886947) (= lambda!215505 lambda!215423))))

(assert (=> bs!1111344 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215505 lambda!215422))))

(declare-fun bs!1111345 () Bool)

(assert (= bs!1111345 (and b!4722284 d!1502956)))

(assert (=> bs!1111345 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886602) (= lambda!215505 lambda!215346))))

(declare-fun bs!1111346 () Bool)

(assert (= bs!1111346 (and b!4722284 b!4722059)))

(assert (=> bs!1111346 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887237) (= lambda!215505 lambda!215473))))

(declare-fun bs!1111347 () Bool)

(assert (= bs!1111347 (and b!4722284 b!4722140)))

(assert (=> bs!1111347 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215505 lambda!215481))))

(assert (=> bs!1111342 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215380))))

(declare-fun bs!1111349 () Bool)

(assert (= bs!1111349 (and b!4722284 d!1503166)))

(assert (=> bs!1111349 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886943) (= lambda!215505 lambda!215424))))

(assert (=> bs!1111332 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215505 lambda!215413))))

(declare-fun bs!1111352 () Bool)

(assert (= bs!1111352 (and b!4722284 d!1503378)))

(assert (=> bs!1111352 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887301) (= lambda!215505 lambda!215489))))

(declare-fun bs!1111354 () Bool)

(assert (= bs!1111354 (and b!4722284 d!1503422)))

(assert (=> bs!1111354 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887347) (= lambda!215505 lambda!215498))))

(declare-fun bs!1111356 () Bool)

(assert (= bs!1111356 (and b!4722284 b!4721545)))

(assert (=> bs!1111356 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215386))))

(declare-fun bs!1111358 () Bool)

(assert (= bs!1111358 (and b!4722284 d!1503020)))

(assert (=> bs!1111358 (not (= lambda!215505 lambda!215385))))

(declare-fun bs!1111360 () Bool)

(assert (= bs!1111360 (and b!4722284 b!4722141)))

(assert (=> bs!1111360 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215505 lambda!215480))))

(assert (=> bs!1111333 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215505 lambda!215404))))

(declare-fun bs!1111363 () Bool)

(assert (= bs!1111363 (and b!4722284 d!1503458)))

(assert (=> bs!1111363 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886775) (= lambda!215505 lambda!215500))))

(declare-fun bs!1111365 () Bool)

(assert (= bs!1111365 (and b!4722284 d!1503132)))

(assert (=> bs!1111365 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215419))))

(assert (=> bs!1111336 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215505 lambda!215426))))

(declare-fun bs!1111367 () Bool)

(assert (= bs!1111367 (and b!4722284 b!4721696)))

(assert (=> bs!1111367 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215505 lambda!215412))))

(declare-fun bs!1111369 () Bool)

(assert (= bs!1111369 (and b!4722284 d!1503282)))

(assert (=> bs!1111369 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215505 lambda!215457))))

(declare-fun bs!1111371 () Bool)

(assert (= bs!1111371 (and b!4722284 d!1503126)))

(assert (=> bs!1111371 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886893) (= lambda!215505 lambda!215415))))

(declare-fun bs!1111372 () Bool)

(assert (= bs!1111372 (and b!4722284 b!4721424)))

(assert (=> bs!1111372 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215343))))

(declare-fun bs!1111374 () Bool)

(assert (= bs!1111374 (and b!4722284 b!4721544)))

(assert (=> bs!1111374 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886775) (= lambda!215505 lambda!215388))))

(assert (=> bs!1111347 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887305) (= lambda!215505 lambda!215488))))

(declare-fun bs!1111377 () Bool)

(assert (= bs!1111377 (and b!4722284 d!1503024)))

(assert (=> bs!1111377 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886771) (= lambda!215505 lambda!215389))))

(assert (=> bs!1111339 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886606) (= lambda!215505 lambda!215345))))

(declare-fun bs!1111380 () Bool)

(assert (= bs!1111380 (and b!4722284 b!4722060)))

(assert (=> bs!1111380 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215505 lambda!215468))))

(declare-fun bs!1111381 () Bool)

(assert (= bs!1111381 (and b!4722284 d!1503162)))

(assert (=> bs!1111381 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886627) (= lambda!215505 lambda!215420))))

(declare-fun bs!1111383 () Bool)

(assert (= bs!1111383 (and b!4722284 b!4721530)))

(assert (=> bs!1111383 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215375))))

(declare-fun bs!1111385 () Bool)

(assert (= bs!1111385 (and b!4722284 b!4721844)))

(assert (=> bs!1111385 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215505 lambda!215425))))

(declare-fun bs!1111387 () Bool)

(assert (= bs!1111387 (and b!4722284 b!4721531)))

(assert (=> bs!1111387 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215373))))

(declare-fun bs!1111389 () Bool)

(assert (= bs!1111389 (and b!4722284 b!4721431)))

(assert (=> bs!1111389 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215347))))

(assert (=> bs!1111340 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215505 lambda!215461))))

(declare-fun bs!1111391 () Bool)

(assert (= bs!1111391 (and b!4722284 d!1502964)))

(assert (=> bs!1111391 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886623) (= lambda!215505 lambda!215352))))

(assert (=> bs!1111374 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886424) (= lambda!215505 lambda!215387))))

(declare-fun bs!1111394 () Bool)

(assert (= bs!1111394 (and b!4722284 d!1503338)))

(assert (=> bs!1111394 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886751) (= lambda!215505 lambda!215476))))

(assert (=> bs!1111383 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886730) (= lambda!215505 lambda!215376))))

(declare-fun bs!1111397 () Bool)

(assert (= bs!1111397 (and b!4722284 b!4722005)))

(assert (=> bs!1111397 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215505 lambda!215458))))

(declare-fun bs!1111398 () Bool)

(assert (= bs!1111398 (and b!4722284 d!1503014)))

(assert (=> bs!1111398 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886747) (= lambda!215505 lambda!215382))))

(declare-fun bs!1111400 () Bool)

(assert (= bs!1111400 (and b!4722284 b!4722212)))

(assert (=> bs!1111400 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215505 lambda!215491))))

(declare-fun bs!1111402 () Bool)

(assert (= bs!1111402 (and b!4722284 d!1503082)))

(assert (=> bs!1111402 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1886843) (= lambda!215505 lambda!215406))))

(assert (=> bs!1111346 (= (= (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215505 lambda!215470))))

(declare-fun bs!1111404 () Bool)

(assert (= bs!1111404 (and b!4722284 d!1503040)))

(assert (=> bs!1111404 (not (= lambda!215505 lambda!215399))))

(assert (=> b!4722284 true))

(declare-fun lambda!215507 () Int)

(declare-fun lt!1887451 () ListMap!5277)

(assert (=> bs!1111328 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215379))))

(assert (=> bs!1111329 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215507 lambda!215403))))

(assert (=> bs!1111330 (= (= lt!1887451 lt!1886730) (= lambda!215507 lambda!215411))))

(assert (=> bs!1111331 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215507 lambda!215421))))

(assert (=> bs!1111332 (= (= lt!1887451 lt!1886897) (= lambda!215507 lambda!215414))))

(assert (=> bs!1111333 (= (= lt!1887451 lt!1886847) (= lambda!215507 lambda!215405))))

(assert (=> bs!1111334 (= (= lt!1887451 lt!1887136) (= lambda!215507 lambda!215465))))

(assert (=> bs!1111335 (= (= lt!1887451 lt!1886627) (= lambda!215507 lambda!215349))))

(assert (=> bs!1111336 (= (= lt!1887451 lt!1887015) (= lambda!215507 lambda!215427))))

(assert (=> bs!1111337 (= (= lt!1887451 lt!1887351) (= lambda!215507 lambda!215496))))

(assert (=> bs!1111338 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (= lambda!215507 lambda!215503))))

(assert (=> bs!1111339 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215344))))

(assert (=> bs!1111340 (= (= lt!1887451 lt!1887140) (= lambda!215507 lambda!215463))))

(assert (=> b!4722284 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (= lambda!215507 lambda!215505))))

(assert (=> bs!1111327 (= (= lt!1887451 lt!1886726) (= lambda!215507 lambda!215378))))

(assert (=> bs!1111341 (= (= lt!1887451 lt!1887011) (= lambda!215507 lambda!215428))))

(assert (=> bs!1111342 (= (= lt!1887451 lt!1886751) (= lambda!215507 lambda!215381))))

(assert (=> bs!1111337 (= (= lt!1887451 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215507 lambda!215493))))

(assert (=> bs!1111343 (= (= lt!1887451 lt!1887233) (= lambda!215507 lambda!215474))))

(assert (=> bs!1111335 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215348))))

(assert (=> bs!1111344 (= (= lt!1887451 lt!1886947) (= lambda!215507 lambda!215423))))

(assert (=> bs!1111344 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215507 lambda!215422))))

(assert (=> bs!1111345 (= (= lt!1887451 lt!1886602) (= lambda!215507 lambda!215346))))

(assert (=> bs!1111346 (= (= lt!1887451 lt!1887237) (= lambda!215507 lambda!215473))))

(assert (=> bs!1111347 (= (= lt!1887451 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215507 lambda!215481))))

(assert (=> bs!1111342 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215380))))

(assert (=> bs!1111349 (= (= lt!1887451 lt!1886943) (= lambda!215507 lambda!215424))))

(assert (=> bs!1111332 (= (= lt!1887451 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215507 lambda!215413))))

(assert (=> bs!1111352 (= (= lt!1887451 lt!1887301) (= lambda!215507 lambda!215489))))

(assert (=> bs!1111354 (= (= lt!1887451 lt!1887347) (= lambda!215507 lambda!215498))))

(assert (=> bs!1111356 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215386))))

(assert (=> bs!1111358 (not (= lambda!215507 lambda!215385))))

(assert (=> bs!1111360 (= (= lt!1887451 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215507 lambda!215480))))

(assert (=> bs!1111333 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215507 lambda!215404))))

(assert (=> bs!1111363 (= (= lt!1887451 lt!1886775) (= lambda!215507 lambda!215500))))

(assert (=> bs!1111365 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215419))))

(assert (=> bs!1111336 (= (= lt!1887451 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215507 lambda!215426))))

(assert (=> bs!1111367 (= (= lt!1887451 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215507 lambda!215412))))

(assert (=> bs!1111369 (= (= lt!1887451 lt!1886606) (= lambda!215507 lambda!215457))))

(assert (=> bs!1111371 (= (= lt!1887451 lt!1886893) (= lambda!215507 lambda!215415))))

(assert (=> bs!1111372 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215343))))

(assert (=> bs!1111374 (= (= lt!1887451 lt!1886775) (= lambda!215507 lambda!215388))))

(assert (=> bs!1111347 (= (= lt!1887451 lt!1887305) (= lambda!215507 lambda!215488))))

(assert (=> bs!1111377 (= (= lt!1887451 lt!1886771) (= lambda!215507 lambda!215389))))

(assert (=> bs!1111339 (= (= lt!1887451 lt!1886606) (= lambda!215507 lambda!215345))))

(assert (=> bs!1111380 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215507 lambda!215468))))

(assert (=> bs!1111381 (= (= lt!1887451 lt!1886627) (= lambda!215507 lambda!215420))))

(assert (=> bs!1111383 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215375))))

(assert (=> bs!1111385 (= (= lt!1887451 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215507 lambda!215425))))

(assert (=> bs!1111387 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215373))))

(assert (=> bs!1111389 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215347))))

(assert (=> bs!1111340 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215507 lambda!215461))))

(assert (=> bs!1111391 (= (= lt!1887451 lt!1886623) (= lambda!215507 lambda!215352))))

(assert (=> bs!1111374 (= (= lt!1887451 lt!1886424) (= lambda!215507 lambda!215387))))

(assert (=> bs!1111394 (= (= lt!1887451 lt!1886751) (= lambda!215507 lambda!215476))))

(assert (=> bs!1111383 (= (= lt!1887451 lt!1886730) (= lambda!215507 lambda!215376))))

(assert (=> bs!1111397 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215507 lambda!215458))))

(assert (=> bs!1111398 (= (= lt!1887451 lt!1886747) (= lambda!215507 lambda!215382))))

(assert (=> bs!1111400 (= (= lt!1887451 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215507 lambda!215491))))

(assert (=> bs!1111402 (= (= lt!1887451 lt!1886843) (= lambda!215507 lambda!215406))))

(assert (=> bs!1111346 (= (= lt!1887451 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215507 lambda!215470))))

(assert (=> bs!1111404 (not (= lambda!215507 lambda!215399))))

(assert (=> b!4722284 true))

(declare-fun bs!1111413 () Bool)

(declare-fun d!1503466 () Bool)

(assert (= bs!1111413 (and d!1503466 b!4721536)))

(declare-fun lambda!215508 () Int)

(declare-fun lt!1887447 () ListMap!5277)

(assert (=> bs!1111413 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215379))))

(declare-fun bs!1111414 () Bool)

(assert (= bs!1111414 (and d!1503466 b!4721633)))

(assert (=> bs!1111414 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215508 lambda!215403))))

(declare-fun bs!1111415 () Bool)

(assert (= bs!1111415 (and d!1503466 d!1503084)))

(assert (=> bs!1111415 (= (= lt!1887447 lt!1886730) (= lambda!215508 lambda!215411))))

(declare-fun bs!1111416 () Bool)

(assert (= bs!1111416 (and d!1503466 b!4721748)))

(assert (=> bs!1111416 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215508 lambda!215421))))

(declare-fun bs!1111417 () Bool)

(assert (= bs!1111417 (and d!1503466 b!4721695)))

(assert (=> bs!1111417 (= (= lt!1887447 lt!1886897) (= lambda!215508 lambda!215414))))

(declare-fun bs!1111418 () Bool)

(assert (= bs!1111418 (and d!1503466 b!4721632)))

(assert (=> bs!1111418 (= (= lt!1887447 lt!1886847) (= lambda!215508 lambda!215405))))

(declare-fun bs!1111419 () Bool)

(assert (= bs!1111419 (and d!1503466 d!1503294)))

(assert (=> bs!1111419 (= (= lt!1887447 lt!1887136) (= lambda!215508 lambda!215465))))

(declare-fun bs!1111420 () Bool)

(assert (= bs!1111420 (and d!1503466 b!4721430)))

(assert (=> bs!1111420 (= (= lt!1887447 lt!1886627) (= lambda!215508 lambda!215349))))

(declare-fun bs!1111421 () Bool)

(assert (= bs!1111421 (and d!1503466 b!4721843)))

(assert (=> bs!1111421 (= (= lt!1887447 lt!1887015) (= lambda!215508 lambda!215427))))

(declare-fun bs!1111422 () Bool)

(assert (= bs!1111422 (and d!1503466 b!4722211)))

(assert (=> bs!1111422 (= (= lt!1887447 lt!1887351) (= lambda!215508 lambda!215496))))

(declare-fun bs!1111423 () Bool)

(assert (= bs!1111423 (and d!1503466 b!4722285)))

(assert (=> bs!1111423 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (= lambda!215508 lambda!215503))))

(declare-fun bs!1111424 () Bool)

(assert (= bs!1111424 (and d!1503466 b!4722004)))

(assert (=> bs!1111424 (= (= lt!1887447 lt!1887140) (= lambda!215508 lambda!215463))))

(declare-fun bs!1111425 () Bool)

(assert (= bs!1111425 (and d!1503466 b!4722284)))

(assert (=> bs!1111425 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (= lambda!215508 lambda!215505))))

(declare-fun bs!1111426 () Bool)

(assert (= bs!1111426 (and d!1503466 d!1503008)))

(assert (=> bs!1111426 (= (= lt!1887447 lt!1886726) (= lambda!215508 lambda!215378))))

(declare-fun bs!1111427 () Bool)

(assert (= bs!1111427 (and d!1503466 d!1503200)))

(assert (=> bs!1111427 (= (= lt!1887447 lt!1887011) (= lambda!215508 lambda!215428))))

(declare-fun bs!1111428 () Bool)

(assert (= bs!1111428 (and d!1503466 b!4721535)))

(assert (=> bs!1111428 (= (= lt!1887447 lt!1886751) (= lambda!215508 lambda!215381))))

(assert (=> bs!1111422 (= (= lt!1887447 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215508 lambda!215493))))

(declare-fun bs!1111429 () Bool)

(assert (= bs!1111429 (and d!1503466 d!1503322)))

(assert (=> bs!1111429 (= (= lt!1887447 lt!1887233) (= lambda!215508 lambda!215474))))

(assert (=> bs!1111420 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215348))))

(declare-fun bs!1111430 () Bool)

(assert (= bs!1111430 (and d!1503466 b!4721747)))

(assert (=> bs!1111430 (= (= lt!1887447 lt!1886947) (= lambda!215508 lambda!215423))))

(assert (=> bs!1111430 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 oldBucket!34))) (= lambda!215508 lambda!215422))))

(declare-fun bs!1111431 () Bool)

(assert (= bs!1111431 (and d!1503466 d!1502956)))

(assert (=> bs!1111431 (= (= lt!1887447 lt!1886602) (= lambda!215508 lambda!215346))))

(declare-fun bs!1111432 () Bool)

(assert (= bs!1111432 (and d!1503466 b!4722059)))

(assert (=> bs!1111432 (= (= lt!1887447 lt!1887237) (= lambda!215508 lambda!215473))))

(declare-fun bs!1111433 () Bool)

(assert (= bs!1111433 (and d!1503466 b!4722140)))

(assert (=> bs!1111433 (= (= lt!1887447 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215508 lambda!215481))))

(assert (=> bs!1111428 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215380))))

(declare-fun bs!1111434 () Bool)

(assert (= bs!1111434 (and d!1503466 d!1503166)))

(assert (=> bs!1111434 (= (= lt!1887447 lt!1886943) (= lambda!215508 lambda!215424))))

(assert (=> bs!1111417 (= (= lt!1887447 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215508 lambda!215413))))

(declare-fun bs!1111435 () Bool)

(assert (= bs!1111435 (and d!1503466 d!1503378)))

(assert (=> bs!1111435 (= (= lt!1887447 lt!1887301) (= lambda!215508 lambda!215489))))

(declare-fun bs!1111436 () Bool)

(assert (= bs!1111436 (and d!1503466 d!1503422)))

(assert (=> bs!1111436 (= (= lt!1887447 lt!1887347) (= lambda!215508 lambda!215498))))

(declare-fun bs!1111437 () Bool)

(assert (= bs!1111437 (and d!1503466 b!4721545)))

(assert (=> bs!1111437 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215386))))

(declare-fun bs!1111438 () Bool)

(assert (= bs!1111438 (and d!1503466 d!1503020)))

(assert (=> bs!1111438 (not (= lambda!215508 lambda!215385))))

(declare-fun bs!1111439 () Bool)

(assert (= bs!1111439 (and d!1503466 b!4722141)))

(assert (=> bs!1111439 (= (= lt!1887447 (extractMap!2038 (t!360211 (toList!5914 lm!2023)))) (= lambda!215508 lambda!215480))))

(assert (=> bs!1111418 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 newBucket!218))) (= lambda!215508 lambda!215404))))

(declare-fun bs!1111441 () Bool)

(assert (= bs!1111441 (and d!1503466 d!1503458)))

(assert (=> bs!1111441 (= (= lt!1887447 lt!1886775) (= lambda!215508 lambda!215500))))

(declare-fun bs!1111442 () Bool)

(assert (= bs!1111442 (and d!1503466 d!1503132)))

(assert (=> bs!1111442 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215419))))

(assert (=> bs!1111421 (= (= lt!1887447 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215508 lambda!215426))))

(declare-fun bs!1111443 () Bool)

(assert (= bs!1111443 (and d!1503466 b!4721696)))

(assert (=> bs!1111443 (= (= lt!1887447 (extractMap!2038 (t!360211 lt!1886426))) (= lambda!215508 lambda!215412))))

(declare-fun bs!1111445 () Bool)

(assert (= bs!1111445 (and d!1503466 d!1503282)))

(assert (=> bs!1111445 (= (= lt!1887447 lt!1886606) (= lambda!215508 lambda!215457))))

(declare-fun bs!1111446 () Bool)

(assert (= bs!1111446 (and d!1503466 d!1503126)))

(assert (=> bs!1111446 (= (= lt!1887447 lt!1886893) (= lambda!215508 lambda!215415))))

(declare-fun bs!1111447 () Bool)

(assert (= bs!1111447 (and d!1503466 b!4721424)))

(assert (=> bs!1111447 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215343))))

(declare-fun bs!1111448 () Bool)

(assert (= bs!1111448 (and d!1503466 b!4721544)))

(assert (=> bs!1111448 (= (= lt!1887447 lt!1886775) (= lambda!215508 lambda!215388))))

(assert (=> bs!1111433 (= (= lt!1887447 lt!1887305) (= lambda!215508 lambda!215488))))

(declare-fun bs!1111449 () Bool)

(assert (= bs!1111449 (and d!1503466 d!1503024)))

(assert (=> bs!1111449 (= (= lt!1887447 lt!1886771) (= lambda!215508 lambda!215389))))

(declare-fun bs!1111450 () Bool)

(assert (= bs!1111450 (and d!1503466 b!4721423)))

(assert (=> bs!1111450 (= (= lt!1887447 lt!1886606) (= lambda!215508 lambda!215345))))

(declare-fun bs!1111451 () Bool)

(assert (= bs!1111451 (and d!1503466 b!4722060)))

(assert (=> bs!1111451 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215508 lambda!215468))))

(declare-fun bs!1111452 () Bool)

(assert (= bs!1111452 (and d!1503466 d!1503162)))

(assert (=> bs!1111452 (= (= lt!1887447 lt!1886627) (= lambda!215508 lambda!215420))))

(declare-fun bs!1111453 () Bool)

(assert (= bs!1111453 (and d!1503466 b!4721530)))

(assert (=> bs!1111453 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215375))))

(declare-fun bs!1111454 () Bool)

(assert (= bs!1111454 (and d!1503466 b!4721844)))

(assert (=> bs!1111454 (= (= lt!1887447 (extractMap!2038 (t!360211 (t!360211 (toList!5914 lm!2023))))) (= lambda!215508 lambda!215425))))

(declare-fun bs!1111455 () Bool)

(assert (= bs!1111455 (and d!1503466 b!4721531)))

(assert (=> bs!1111455 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215373))))

(declare-fun bs!1111456 () Bool)

(assert (= bs!1111456 (and d!1503466 b!4721431)))

(assert (=> bs!1111456 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215347))))

(assert (=> bs!1111424 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215508 lambda!215461))))

(declare-fun bs!1111457 () Bool)

(assert (= bs!1111457 (and d!1503466 d!1502964)))

(assert (=> bs!1111457 (= (= lt!1887447 lt!1886623) (= lambda!215508 lambda!215352))))

(assert (=> bs!1111448 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215387))))

(declare-fun bs!1111458 () Bool)

(assert (= bs!1111458 (and d!1503466 d!1503338)))

(assert (=> bs!1111458 (= (= lt!1887447 lt!1886751) (= lambda!215508 lambda!215476))))

(assert (=> bs!1111453 (= (= lt!1887447 lt!1886730) (= lambda!215508 lambda!215376))))

(declare-fun bs!1111459 () Bool)

(assert (= bs!1111459 (and d!1503466 b!4722005)))

(assert (=> bs!1111459 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))) (= lambda!215508 lambda!215458))))

(assert (=> bs!1111450 (= (= lt!1887447 lt!1886424) (= lambda!215508 lambda!215344))))

(assert (=> bs!1111425 (= (= lt!1887447 lt!1887451) (= lambda!215508 lambda!215507))))

(declare-fun bs!1111460 () Bool)

(assert (= bs!1111460 (and d!1503466 d!1503014)))

(assert (=> bs!1111460 (= (= lt!1887447 lt!1886747) (= lambda!215508 lambda!215382))))

(declare-fun bs!1111461 () Bool)

(assert (= bs!1111461 (and d!1503466 b!4722212)))

(assert (=> bs!1111461 (= (= lt!1887447 (extractMap!2038 (t!360211 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))) (= lambda!215508 lambda!215491))))

(declare-fun bs!1111462 () Bool)

(assert (= bs!1111462 (and d!1503466 d!1503082)))

(assert (=> bs!1111462 (= (= lt!1887447 lt!1886843) (= lambda!215508 lambda!215406))))

(assert (=> bs!1111432 (= (= lt!1887447 (+!2267 lt!1886424 (h!59169 lt!1886428))) (= lambda!215508 lambda!215470))))

(declare-fun bs!1111463 () Bool)

(assert (= bs!1111463 (and d!1503466 d!1503040)))

(assert (=> bs!1111463 (not (= lambda!215508 lambda!215399))))

(assert (=> d!1503466 true))

(declare-fun bm!330266 () Bool)

(declare-fun call!330272 () Unit!129750)

(assert (=> bm!330266 (= call!330272 (lemmaContainsAllItsOwnKeys!795 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun e!2945116 () ListMap!5277)

(assert (=> b!4722284 (= e!2945116 lt!1887451)))

(declare-fun lt!1887450 () ListMap!5277)

(assert (=> b!4722284 (= lt!1887450 (+!2267 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> b!4722284 (= lt!1887451 (addToMapMapFromBucket!1442 (t!360210 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (+!2267 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun lt!1887457 () Unit!129750)

(assert (=> b!4722284 (= lt!1887457 call!330272)))

(declare-fun call!330271 () Bool)

(assert (=> b!4722284 call!330271))

(declare-fun lt!1887454 () Unit!129750)

(assert (=> b!4722284 (= lt!1887454 lt!1887457)))

(declare-fun call!330273 () Bool)

(assert (=> b!4722284 call!330273))

(declare-fun lt!1887455 () Unit!129750)

(declare-fun Unit!130088 () Unit!129750)

(assert (=> b!4722284 (= lt!1887455 Unit!130088)))

(assert (=> b!4722284 (forall!11584 (t!360210 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lambda!215507)))

(declare-fun lt!1887462 () Unit!129750)

(declare-fun Unit!130089 () Unit!129750)

(assert (=> b!4722284 (= lt!1887462 Unit!130089)))

(declare-fun lt!1887446 () Unit!129750)

(declare-fun Unit!130090 () Unit!129750)

(assert (=> b!4722284 (= lt!1887446 Unit!130090)))

(declare-fun lt!1887449 () Unit!129750)

(assert (=> b!4722284 (= lt!1887449 (forallContained!3635 (toList!5913 lt!1887450) lambda!215507 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> b!4722284 (contains!16168 lt!1887450 (_1!30515 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887445 () Unit!129750)

(declare-fun Unit!130091 () Unit!129750)

(assert (=> b!4722284 (= lt!1887445 Unit!130091)))

(assert (=> b!4722284 (contains!16168 lt!1887451 (_1!30515 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun lt!1887452 () Unit!129750)

(declare-fun Unit!130092 () Unit!129750)

(assert (=> b!4722284 (= lt!1887452 Unit!130092)))

(assert (=> b!4722284 (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215507)))

(declare-fun lt!1887464 () Unit!129750)

(declare-fun Unit!130093 () Unit!129750)

(assert (=> b!4722284 (= lt!1887464 Unit!130093)))

(assert (=> b!4722284 (forall!11584 (toList!5913 lt!1887450) lambda!215507)))

(declare-fun lt!1887463 () Unit!129750)

(declare-fun Unit!130094 () Unit!129750)

(assert (=> b!4722284 (= lt!1887463 Unit!130094)))

(declare-fun lt!1887448 () Unit!129750)

(declare-fun Unit!130095 () Unit!129750)

(assert (=> b!4722284 (= lt!1887448 Unit!130095)))

(declare-fun lt!1887460 () Unit!129750)

(assert (=> b!4722284 (= lt!1887460 (addForallContainsKeyThenBeforeAdding!794 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887451 (_1!30515 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (_2!30515 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(assert (=> b!4722284 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lambda!215507)))

(declare-fun lt!1887456 () Unit!129750)

(assert (=> b!4722284 (= lt!1887456 lt!1887460)))

(assert (=> b!4722284 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lambda!215507)))

(declare-fun lt!1887459 () Unit!129750)

(declare-fun Unit!130097 () Unit!129750)

(assert (=> b!4722284 (= lt!1887459 Unit!130097)))

(declare-fun res!1997810 () Bool)

(assert (=> b!4722284 (= res!1997810 (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215507))))

(declare-fun e!2945117 () Bool)

(assert (=> b!4722284 (=> (not res!1997810) (not e!2945117))))

(assert (=> b!4722284 e!2945117))

(declare-fun lt!1887461 () Unit!129750)

(declare-fun Unit!130098 () Unit!129750)

(assert (=> b!4722284 (= lt!1887461 Unit!130098)))

(declare-fun c!806479 () Bool)

(declare-fun bm!330267 () Bool)

(assert (=> bm!330267 (= call!330273 (forall!11584 (ite c!806479 (toList!5913 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (toList!5913 lt!1887450)) (ite c!806479 lambda!215503 lambda!215507)))))

(assert (=> b!4722285 (= e!2945116 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun lt!1887465 () Unit!129750)

(assert (=> b!4722285 (= lt!1887465 call!330272)))

(assert (=> b!4722285 call!330273))

(declare-fun lt!1887453 () Unit!129750)

(assert (=> b!4722285 (= lt!1887453 lt!1887465)))

(assert (=> b!4722285 call!330271))

(declare-fun lt!1887458 () Unit!129750)

(declare-fun Unit!130099 () Unit!129750)

(assert (=> b!4722285 (= lt!1887458 Unit!130099)))

(declare-fun b!4722287 () Bool)

(declare-fun res!1997812 () Bool)

(declare-fun e!2945115 () Bool)

(assert (=> b!4722287 (=> (not res!1997812) (not e!2945115))))

(assert (=> b!4722287 (= res!1997812 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lambda!215508))))

(declare-fun bm!330268 () Bool)

(assert (=> bm!330268 (= call!330271 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (ite c!806479 lambda!215503 lambda!215505)))))

(declare-fun b!4722288 () Bool)

(assert (=> b!4722288 (= e!2945115 (invariantList!1509 (toList!5913 lt!1887447)))))

(declare-fun b!4722286 () Bool)

(assert (=> b!4722286 (= e!2945117 (forall!11584 (toList!5913 (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lambda!215507))))

(assert (=> d!1503466 e!2945115))

(declare-fun res!1997811 () Bool)

(assert (=> d!1503466 (=> (not res!1997811) (not e!2945115))))

(assert (=> d!1503466 (= res!1997811 (forall!11584 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) lambda!215508))))

(assert (=> d!1503466 (= lt!1887447 e!2945116)))

(assert (=> d!1503466 (= c!806479 ((_ is Nil!52824) (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (=> d!1503466 (noDuplicateKeys!2012 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(assert (=> d!1503466 (= (addToMapMapFromBucket!1442 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))) (+!2267 lt!1886424 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) lt!1887447)))

(assert (= (and d!1503466 c!806479) b!4722285))

(assert (= (and d!1503466 (not c!806479)) b!4722284))

(assert (= (and b!4722284 res!1997810) b!4722286))

(assert (= (or b!4722285 b!4722284) bm!330266))

(assert (= (or b!4722285 b!4722284) bm!330268))

(assert (= (or b!4722285 b!4722284) bm!330267))

(assert (= (and d!1503466 res!1997811) b!4722287))

(assert (= (and b!4722287 res!1997812) b!4722288))

(declare-fun m!5657701 () Bool)

(assert (=> b!4722288 m!5657701))

(declare-fun m!5657703 () Bool)

(assert (=> d!1503466 m!5657703))

(assert (=> d!1503466 m!5656249))

(declare-fun m!5657705 () Bool)

(assert (=> b!4722287 m!5657705))

(assert (=> bm!330266 m!5655877))

(declare-fun m!5657707 () Bool)

(assert (=> bm!330266 m!5657707))

(declare-fun m!5657709 () Bool)

(assert (=> b!4722284 m!5657709))

(declare-fun m!5657711 () Bool)

(assert (=> b!4722284 m!5657711))

(declare-fun m!5657713 () Bool)

(assert (=> b!4722284 m!5657713))

(assert (=> b!4722284 m!5655877))

(declare-fun m!5657715 () Bool)

(assert (=> b!4722284 m!5657715))

(assert (=> b!4722284 m!5657713))

(declare-fun m!5657717 () Bool)

(assert (=> b!4722284 m!5657717))

(declare-fun m!5657719 () Bool)

(assert (=> b!4722284 m!5657719))

(declare-fun m!5657721 () Bool)

(assert (=> b!4722284 m!5657721))

(declare-fun m!5657723 () Bool)

(assert (=> b!4722284 m!5657723))

(assert (=> b!4722284 m!5657723))

(assert (=> b!4722284 m!5655877))

(declare-fun m!5657725 () Bool)

(assert (=> b!4722284 m!5657725))

(assert (=> b!4722284 m!5657715))

(declare-fun m!5657727 () Bool)

(assert (=> b!4722284 m!5657727))

(declare-fun m!5657729 () Bool)

(assert (=> bm!330268 m!5657729))

(declare-fun m!5657731 () Bool)

(assert (=> bm!330267 m!5657731))

(assert (=> b!4722286 m!5657723))

(assert (=> b!4721544 d!1503466))

(declare-fun d!1503492 () Bool)

(assert (=> d!1503492 (dynLambda!21817 lambda!215388 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(declare-fun lt!1887470 () Unit!129750)

(assert (=> d!1503492 (= lt!1887470 (choose!33308 (toList!5913 lt!1886774) lambda!215388 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(declare-fun e!2945135 () Bool)

(assert (=> d!1503492 e!2945135))

(declare-fun res!1997831 () Bool)

(assert (=> d!1503492 (=> (not res!1997831) (not e!2945135))))

(assert (=> d!1503492 (= res!1997831 (forall!11584 (toList!5913 lt!1886774) lambda!215388))))

(assert (=> d!1503492 (= (forallContained!3635 (toList!5913 lt!1886774) lambda!215388 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) lt!1887470)))

(declare-fun b!4722307 () Bool)

(assert (=> b!4722307 (= e!2945135 (contains!16169 (toList!5913 lt!1886774) (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))

(assert (= (and d!1503492 res!1997831) b!4722307))

(declare-fun b_lambda!178499 () Bool)

(assert (=> (not b_lambda!178499) (not d!1503492)))

(assert (=> d!1503492 m!5657627))

(declare-fun m!5657733 () Bool)

(assert (=> d!1503492 m!5657733))

(assert (=> d!1503492 m!5655871))

(declare-fun m!5657735 () Bool)

(assert (=> b!4722307 m!5657735))

(assert (=> b!4721544 d!1503492))

(assert (=> d!1502972 d!1503140))

(declare-fun d!1503494 () Bool)

(declare-fun res!1997832 () Bool)

(declare-fun e!2945136 () Bool)

(assert (=> d!1503494 (=> res!1997832 e!2945136)))

(assert (=> d!1503494 (= res!1997832 ((_ is Nil!52824) (toList!5913 lt!1886424)))))

(assert (=> d!1503494 (= (forall!11584 (toList!5913 lt!1886424) (ite c!806304 lambda!215347 lambda!215348)) e!2945136)))

(declare-fun b!4722308 () Bool)

(declare-fun e!2945137 () Bool)

(assert (=> b!4722308 (= e!2945136 e!2945137)))

(declare-fun res!1997833 () Bool)

(assert (=> b!4722308 (=> (not res!1997833) (not e!2945137))))

(assert (=> b!4722308 (= res!1997833 (dynLambda!21817 (ite c!806304 lambda!215347 lambda!215348) (h!59169 (toList!5913 lt!1886424))))))

(declare-fun b!4722309 () Bool)

(assert (=> b!4722309 (= e!2945137 (forall!11584 (t!360210 (toList!5913 lt!1886424)) (ite c!806304 lambda!215347 lambda!215348)))))

(assert (= (and d!1503494 (not res!1997832)) b!4722308))

(assert (= (and b!4722308 res!1997833) b!4722309))

(declare-fun b_lambda!178501 () Bool)

(assert (=> (not b_lambda!178501) (not b!4722308)))

(declare-fun m!5657737 () Bool)

(assert (=> b!4722308 m!5657737))

(declare-fun m!5657739 () Bool)

(assert (=> b!4722309 m!5657739))

(assert (=> bm!330169 d!1503494))

(declare-fun d!1503496 () Bool)

(declare-fun res!1997834 () Bool)

(declare-fun e!2945138 () Bool)

(assert (=> d!1503496 (=> res!1997834 e!2945138)))

(assert (=> d!1503496 (= res!1997834 ((_ is Nil!52824) lt!1886428))))

(assert (=> d!1503496 (= (forall!11584 lt!1886428 lambda!215382) e!2945138)))

(declare-fun b!4722310 () Bool)

(declare-fun e!2945139 () Bool)

(assert (=> b!4722310 (= e!2945138 e!2945139)))

(declare-fun res!1997835 () Bool)

(assert (=> b!4722310 (=> (not res!1997835) (not e!2945139))))

(assert (=> b!4722310 (= res!1997835 (dynLambda!21817 lambda!215382 (h!59169 lt!1886428)))))

(declare-fun b!4722311 () Bool)

(assert (=> b!4722311 (= e!2945139 (forall!11584 (t!360210 lt!1886428) lambda!215382))))

(assert (= (and d!1503496 (not res!1997834)) b!4722310))

(assert (= (and b!4722310 res!1997835) b!4722311))

(declare-fun b_lambda!178503 () Bool)

(assert (=> (not b_lambda!178503) (not b!4722310)))

(declare-fun m!5657741 () Bool)

(assert (=> b!4722310 m!5657741))

(declare-fun m!5657743 () Bool)

(assert (=> b!4722311 m!5657743))

(assert (=> d!1503014 d!1503496))

(assert (=> d!1503014 d!1503120))

(declare-fun d!1503498 () Bool)

(declare-fun lt!1887471 () Bool)

(assert (=> d!1503498 (= lt!1887471 (select (content!9390 (toList!5913 lt!1886645)) (h!59169 oldBucket!34)))))

(declare-fun e!2945140 () Bool)

(assert (=> d!1503498 (= lt!1887471 e!2945140)))

(declare-fun res!1997837 () Bool)

(assert (=> d!1503498 (=> (not res!1997837) (not e!2945140))))

(assert (=> d!1503498 (= res!1997837 ((_ is Cons!52824) (toList!5913 lt!1886645)))))

(assert (=> d!1503498 (= (contains!16169 (toList!5913 lt!1886645) (h!59169 oldBucket!34)) lt!1887471)))

(declare-fun b!4722312 () Bool)

(declare-fun e!2945141 () Bool)

(assert (=> b!4722312 (= e!2945140 e!2945141)))

(declare-fun res!1997836 () Bool)

(assert (=> b!4722312 (=> res!1997836 e!2945141)))

(assert (=> b!4722312 (= res!1997836 (= (h!59169 (toList!5913 lt!1886645)) (h!59169 oldBucket!34)))))

(declare-fun b!4722313 () Bool)

(assert (=> b!4722313 (= e!2945141 (contains!16169 (t!360210 (toList!5913 lt!1886645)) (h!59169 oldBucket!34)))))

(assert (= (and d!1503498 res!1997837) b!4722312))

(assert (= (and b!4722312 (not res!1997836)) b!4722313))

(declare-fun m!5657745 () Bool)

(assert (=> d!1503498 m!5657745))

(declare-fun m!5657747 () Bool)

(assert (=> d!1503498 m!5657747))

(declare-fun m!5657749 () Bool)

(assert (=> b!4722313 m!5657749))

(assert (=> b!4721442 d!1503498))

(declare-fun d!1503500 () Bool)

(assert (=> d!1503500 (= (tail!8999 (toList!5914 lm!2023)) (t!360211 (toList!5914 lm!2023)))))

(assert (=> d!1503030 d!1503500))

(declare-fun d!1503502 () Bool)

(declare-fun res!1997838 () Bool)

(declare-fun e!2945142 () Bool)

(assert (=> d!1503502 (=> res!1997838 e!2945142)))

(assert (=> d!1503502 (= res!1997838 ((_ is Nil!52824) newBucket!218))))

(assert (=> d!1503502 (= (forall!11584 newBucket!218 lambda!215399) e!2945142)))

(declare-fun b!4722314 () Bool)

(declare-fun e!2945143 () Bool)

(assert (=> b!4722314 (= e!2945142 e!2945143)))

(declare-fun res!1997839 () Bool)

(assert (=> b!4722314 (=> (not res!1997839) (not e!2945143))))

(assert (=> b!4722314 (= res!1997839 (dynLambda!21817 lambda!215399 (h!59169 newBucket!218)))))

(declare-fun b!4722315 () Bool)

(assert (=> b!4722315 (= e!2945143 (forall!11584 (t!360210 newBucket!218) lambda!215399))))

(assert (= (and d!1503502 (not res!1997838)) b!4722314))

(assert (= (and b!4722314 res!1997839) b!4722315))

(declare-fun b_lambda!178505 () Bool)

(assert (=> (not b_lambda!178505) (not b!4722314)))

(declare-fun m!5657751 () Bool)

(assert (=> b!4722314 m!5657751))

(declare-fun m!5657753 () Bool)

(assert (=> b!4722315 m!5657753))

(assert (=> d!1503040 d!1503502))

(assert (=> b!4721432 d!1503152))

(declare-fun d!1503504 () Bool)

(declare-fun res!1997847 () Bool)

(declare-fun e!2945153 () Bool)

(assert (=> d!1503504 (=> res!1997847 e!2945153)))

(assert (=> d!1503504 (= res!1997847 (or ((_ is Nil!52825) (toList!5914 lm!2023)) ((_ is Nil!52825) (t!360211 (toList!5914 lm!2023)))))))

(assert (=> d!1503504 (= (isStrictlySorted!747 (toList!5914 lm!2023)) e!2945153)))

(declare-fun b!4722329 () Bool)

(declare-fun e!2945154 () Bool)

(assert (=> b!4722329 (= e!2945153 e!2945154)))

(declare-fun res!1997848 () Bool)

(assert (=> b!4722329 (=> (not res!1997848) (not e!2945154))))

(assert (=> b!4722329 (= res!1997848 (bvslt (_1!30516 (h!59170 (toList!5914 lm!2023))) (_1!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))))))

(declare-fun b!4722330 () Bool)

(assert (=> b!4722330 (= e!2945154 (isStrictlySorted!747 (t!360211 (toList!5914 lm!2023))))))

(assert (= (and d!1503504 (not res!1997847)) b!4722329))

(assert (= (and b!4722329 res!1997848) b!4722330))

(declare-fun m!5657757 () Bool)

(assert (=> b!4722330 m!5657757))

(assert (=> d!1502944 d!1503504))

(declare-fun tp!1348380 () Bool)

(declare-fun e!2945155 () Bool)

(declare-fun b!4722331 () Bool)

(assert (=> b!4722331 (= e!2945155 (and tp_is_empty!31341 tp_is_empty!31343 tp!1348380))))

(assert (=> b!4721594 (= tp!1348373 e!2945155)))

(assert (= (and b!4721594 ((_ is Cons!52824) (_2!30516 (h!59170 (toList!5914 lm!2023))))) b!4722331))

(declare-fun b!4722332 () Bool)

(declare-fun e!2945156 () Bool)

(declare-fun tp!1348381 () Bool)

(declare-fun tp!1348382 () Bool)

(assert (=> b!4722332 (= e!2945156 (and tp!1348381 tp!1348382))))

(assert (=> b!4721594 (= tp!1348374 e!2945156)))

(assert (= (and b!4721594 ((_ is Cons!52825) (t!360211 (toList!5914 lm!2023)))) b!4722332))

(declare-fun b!4722333 () Bool)

(declare-fun e!2945157 () Bool)

(declare-fun tp!1348383 () Bool)

(assert (=> b!4722333 (= e!2945157 (and tp_is_empty!31341 tp_is_empty!31343 tp!1348383))))

(assert (=> b!4721599 (= tp!1348375 e!2945157)))

(assert (= (and b!4721599 ((_ is Cons!52824) (t!360210 (t!360210 oldBucket!34)))) b!4722333))

(declare-fun e!2945158 () Bool)

(declare-fun b!4722334 () Bool)

(declare-fun tp!1348384 () Bool)

(assert (=> b!4722334 (= e!2945158 (and tp_is_empty!31341 tp_is_empty!31343 tp!1348384))))

(assert (=> b!4721587 (= tp!1348362 e!2945158)))

(assert (= (and b!4721587 ((_ is Cons!52824) (t!360210 (t!360210 newBucket!218)))) b!4722334))

(declare-fun b_lambda!178507 () Bool)

(assert (= b_lambda!178359 (or b!4721535 b_lambda!178507)))

(declare-fun bs!1111502 () Bool)

(declare-fun d!1503510 () Bool)

(assert (= bs!1111502 (and d!1503510 b!4721535)))

(assert (=> bs!1111502 (= (dynLambda!21817 lambda!215381 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886751 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657759 () Bool)

(assert (=> bs!1111502 m!5657759))

(assert (=> b!4721689 d!1503510))

(declare-fun b_lambda!178509 () Bool)

(assert (= b_lambda!178471 (or start!480568 b_lambda!178509)))

(declare-fun bs!1111503 () Bool)

(declare-fun d!1503512 () Bool)

(assert (= bs!1111503 (and d!1503512 start!480568)))

(assert (=> bs!1111503 (= (dynLambda!21815 lambda!215278 (h!59170 (t!360211 lt!1886426))) (noDuplicateKeys!2012 (_2!30516 (h!59170 (t!360211 lt!1886426)))))))

(declare-fun m!5657761 () Bool)

(assert (=> bs!1111503 m!5657761))

(assert (=> b!4722207 d!1503512))

(declare-fun b_lambda!178511 () Bool)

(assert (= b_lambda!178413 (or d!1503042 b_lambda!178511)))

(declare-fun bs!1111504 () Bool)

(declare-fun d!1503514 () Bool)

(assert (= bs!1111504 (and d!1503514 d!1503042)))

(assert (=> bs!1111504 (= (dynLambda!21815 lambda!215400 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023))))) (noDuplicateKeys!2012 (_2!30516 (h!59170 (Cons!52825 (tuple2!54445 hash!405 newBucket!218) (t!360211 (toList!5914 lm!2023)))))))))

(assert (=> bs!1111504 m!5657501))

(assert (=> b!4721961 d!1503514))

(declare-fun b_lambda!178513 () Bool)

(assert (= b_lambda!178441 (or b!4721535 b_lambda!178513)))

(declare-fun bs!1111505 () Bool)

(declare-fun d!1503516 () Bool)

(assert (= bs!1111505 (and d!1503516 b!4721535)))

(assert (=> bs!1111505 (= (dynLambda!21817 lambda!215381 (h!59169 lt!1886428)) (contains!16168 lt!1886751 (_1!30515 (h!59169 lt!1886428))))))

(assert (=> bs!1111505 m!5655843))

(assert (=> d!1503334 d!1503516))

(declare-fun b_lambda!178515 () Bool)

(assert (= b_lambda!178421 (or b!4721423 b_lambda!178515)))

(declare-fun bs!1111507 () Bool)

(declare-fun d!1503518 () Bool)

(assert (= bs!1111507 (and d!1503518 b!4721423)))

(assert (=> bs!1111507 (= (dynLambda!21817 lambda!215345 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428)))) (contains!16168 lt!1886606 (_1!30515 (h!59169 (t!360210 (Cons!52824 lt!1886429 lt!1886428))))))))

(declare-fun m!5657763 () Bool)

(assert (=> bs!1111507 m!5657763))

(assert (=> b!4721998 d!1503518))

(declare-fun b_lambda!178517 () Bool)

(assert (= b_lambda!178345 (or b!4721530 b_lambda!178517)))

(declare-fun bs!1111509 () Bool)

(declare-fun d!1503520 () Bool)

(assert (= bs!1111509 (and d!1503520 b!4721530)))

(assert (=> bs!1111509 (= (dynLambda!21817 lambda!215376 (h!59169 newBucket!218)) (contains!16168 lt!1886730 (_1!30515 (h!59169 newBucket!218))))))

(assert (=> bs!1111509 m!5655805))

(assert (=> b!4721649 d!1503520))

(declare-fun b_lambda!178519 () Bool)

(assert (= b_lambda!178407 (or d!1502956 b_lambda!178519)))

(declare-fun bs!1111511 () Bool)

(declare-fun d!1503522 () Bool)

(assert (= bs!1111511 (and d!1503522 d!1502956)))

(assert (=> bs!1111511 (= (dynLambda!21817 lambda!215346 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886602 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657765 () Bool)

(assert (=> bs!1111511 m!5657765))

(assert (=> b!4721951 d!1503522))

(declare-fun b_lambda!178521 () Bool)

(assert (= b_lambda!178397 (or d!1502964 b_lambda!178521)))

(declare-fun bs!1111514 () Bool)

(declare-fun d!1503524 () Bool)

(assert (= bs!1111514 (and d!1503524 d!1502964)))

(assert (=> bs!1111514 (= (dynLambda!21817 lambda!215352 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886623 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657767 () Bool)

(assert (=> bs!1111514 m!5657767))

(assert (=> b!4721876 d!1503524))

(declare-fun b_lambda!178523 () Bool)

(assert (= b_lambda!178423 (or b!4721423 b_lambda!178523)))

(declare-fun bs!1111516 () Bool)

(declare-fun d!1503526 () Bool)

(assert (= bs!1111516 (and d!1503526 b!4721423)))

(assert (=> bs!1111516 (= (dynLambda!21817 lambda!215345 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (contains!16168 lt!1886606 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(assert (=> bs!1111516 m!5655581))

(assert (=> b!4722000 d!1503526))

(declare-fun b_lambda!178525 () Bool)

(assert (= b_lambda!178499 (or b!4721544 b_lambda!178525)))

(declare-fun bs!1111518 () Bool)

(declare-fun d!1503528 () Bool)

(assert (= bs!1111518 (and d!1503528 b!4721544)))

(assert (=> bs!1111518 (= (dynLambda!21817 lambda!215388 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (contains!16168 lt!1886775 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(assert (=> bs!1111518 m!5655883))

(assert (=> d!1503492 d!1503528))

(declare-fun b_lambda!178527 () Bool)

(assert (= b_lambda!178373 (or b!4721430 b_lambda!178527)))

(declare-fun bs!1111521 () Bool)

(declare-fun d!1503530 () Bool)

(assert (= bs!1111521 (and d!1503530 b!4721430)))

(assert (=> bs!1111521 (= (dynLambda!21817 lambda!215349 (h!59169 oldBucket!34)) (contains!16168 lt!1886627 (_1!30515 (h!59169 oldBucket!34))))))

(assert (=> bs!1111521 m!5655617))

(assert (=> d!1503154 d!1503530))

(declare-fun b_lambda!178529 () Bool)

(assert (= b_lambda!178379 (or d!1503014 b_lambda!178529)))

(declare-fun bs!1111523 () Bool)

(declare-fun d!1503532 () Bool)

(assert (= bs!1111523 (and d!1503532 d!1503014)))

(assert (=> bs!1111523 (= (dynLambda!21817 lambda!215382 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886747 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657769 () Bool)

(assert (=> bs!1111523 m!5657769))

(assert (=> b!4721754 d!1503532))

(declare-fun b_lambda!178531 () Bool)

(assert (= b_lambda!178481 (or d!1502992 b_lambda!178531)))

(declare-fun bs!1111525 () Bool)

(declare-fun d!1503534 () Bool)

(assert (= bs!1111525 (and d!1503534 d!1502992)))

(assert (=> bs!1111525 (= (dynLambda!21815 lambda!215371 (h!59170 (toList!5914 lm!2023))) (noDuplicateKeys!2012 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))

(assert (=> bs!1111525 m!5655867))

(assert (=> b!4722237 d!1503534))

(declare-fun b_lambda!178533 () Bool)

(assert (= b_lambda!178505 (or d!1503040 b_lambda!178533)))

(declare-fun bs!1111527 () Bool)

(declare-fun d!1503536 () Bool)

(assert (= bs!1111527 (and d!1503536 d!1503040)))

(assert (=> bs!1111527 (= (dynLambda!21817 lambda!215399 (h!59169 newBucket!218)) (= (hash!4380 hashF!1323 (_1!30515 (h!59169 newBucket!218))) hash!405))))

(declare-fun m!5657771 () Bool)

(assert (=> bs!1111527 m!5657771))

(assert (=> b!4722314 d!1503536))

(declare-fun b_lambda!178535 () Bool)

(assert (= b_lambda!178411 (or d!1503008 b_lambda!178535)))

(declare-fun bs!1111529 () Bool)

(declare-fun d!1503538 () Bool)

(assert (= bs!1111529 (and d!1503538 d!1503008)))

(assert (=> bs!1111529 (= (dynLambda!21817 lambda!215378 (h!59169 newBucket!218)) (contains!16168 lt!1886726 (_1!30515 (h!59169 newBucket!218))))))

(declare-fun m!5657773 () Bool)

(assert (=> bs!1111529 m!5657773))

(assert (=> b!4721955 d!1503538))

(declare-fun b_lambda!178537 () Bool)

(assert (= b_lambda!178357 (or start!480568 b_lambda!178537)))

(declare-fun bs!1111530 () Bool)

(declare-fun d!1503540 () Bool)

(assert (= bs!1111530 (and d!1503540 start!480568)))

(assert (=> bs!1111530 (= (dynLambda!21815 lambda!215278 (h!59170 (t!360211 (toList!5914 lm!2023)))) (noDuplicateKeys!2012 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))))))

(assert (=> bs!1111530 m!5656547))

(assert (=> b!4721687 d!1503540))

(declare-fun b_lambda!178539 () Bool)

(assert (= b_lambda!178487 (or b!4721544 b_lambda!178539)))

(declare-fun bs!1111531 () Bool)

(declare-fun d!1503542 () Bool)

(assert (= bs!1111531 (and d!1503542 b!4721544)))

(assert (=> bs!1111531 (= (dynLambda!21817 lambda!215388 (h!59169 (toList!5913 lt!1886774))) (contains!16168 lt!1886775 (_1!30515 (h!59169 (toList!5913 lt!1886774)))))))

(declare-fun m!5657775 () Bool)

(assert (=> bs!1111531 m!5657775))

(assert (=> b!4722280 d!1503542))

(declare-fun b_lambda!178541 () Bool)

(assert (= b_lambda!178409 (or d!1503026 b_lambda!178541)))

(declare-fun bs!1111532 () Bool)

(declare-fun d!1503544 () Bool)

(assert (= bs!1111532 (and d!1503544 d!1503026)))

(assert (=> bs!1111532 (= (dynLambda!21815 lambda!215390 (h!59170 (t!360211 (toList!5914 lm!2023)))) (noDuplicateKeys!2012 (_2!30516 (h!59170 (t!360211 (toList!5914 lm!2023))))))))

(assert (=> bs!1111532 m!5656547))

(assert (=> b!4721953 d!1503544))

(declare-fun b_lambda!178543 () Bool)

(assert (= b_lambda!178447 (or b!4721535 b_lambda!178543)))

(declare-fun bs!1111533 () Bool)

(declare-fun d!1503546 () Bool)

(assert (= bs!1111533 (and d!1503546 b!4721535)))

(assert (=> bs!1111533 (= (dynLambda!21817 lambda!215381 (h!59169 (t!360210 lt!1886428))) (contains!16168 lt!1886751 (_1!30515 (h!59169 (t!360210 lt!1886428)))))))

(declare-fun m!5657777 () Bool)

(assert (=> bs!1111533 m!5657777))

(assert (=> b!4722103 d!1503546))

(declare-fun b_lambda!178545 () Bool)

(assert (= b_lambda!178355 (or b!4721423 b_lambda!178545)))

(declare-fun bs!1111535 () Bool)

(declare-fun d!1503548 () Bool)

(assert (= bs!1111535 (and d!1503548 b!4721423)))

(assert (=> bs!1111535 (= (dynLambda!21817 lambda!215345 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886606 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657779 () Bool)

(assert (=> bs!1111535 m!5657779))

(assert (=> b!4721677 d!1503548))

(declare-fun b_lambda!178547 () Bool)

(assert (= b_lambda!178375 (or b!4721430 b_lambda!178547)))

(assert (=> b!4721736 d!1503530))

(declare-fun b_lambda!178549 () Bool)

(assert (= b_lambda!178371 (or b!4721430 b_lambda!178549)))

(declare-fun bs!1111537 () Bool)

(declare-fun d!1503550 () Bool)

(assert (= bs!1111537 (and d!1503550 b!4721430)))

(assert (=> bs!1111537 (= (dynLambda!21817 lambda!215349 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886627 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657781 () Bool)

(assert (=> bs!1111537 m!5657781))

(assert (=> b!4721722 d!1503550))

(declare-fun b_lambda!178551 () Bool)

(assert (= b_lambda!178377 (or b!4721430 b_lambda!178551)))

(declare-fun bs!1111539 () Bool)

(declare-fun d!1503552 () Bool)

(assert (= bs!1111539 (and d!1503552 b!4721430)))

(assert (=> bs!1111539 (= (dynLambda!21817 lambda!215349 (h!59169 (toList!5913 lt!1886626))) (contains!16168 lt!1886627 (_1!30515 (h!59169 (toList!5913 lt!1886626)))))))

(declare-fun m!5657783 () Bool)

(assert (=> bs!1111539 m!5657783))

(assert (=> b!4721752 d!1503552))

(declare-fun b_lambda!178553 () Bool)

(assert (= b_lambda!178349 (or b!4721530 b_lambda!178553)))

(declare-fun bs!1111541 () Bool)

(declare-fun d!1503554 () Bool)

(assert (= bs!1111541 (and d!1503554 b!4721530)))

(assert (=> bs!1111541 (= (dynLambda!21817 lambda!215376 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886730 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657785 () Bool)

(assert (=> bs!1111541 m!5657785))

(assert (=> b!4721653 d!1503554))

(declare-fun b_lambda!178555 () Bool)

(assert (= b_lambda!178403 (or d!1502964 b_lambda!178555)))

(declare-fun bs!1111544 () Bool)

(declare-fun d!1503556 () Bool)

(assert (= bs!1111544 (and d!1503556 d!1502964)))

(assert (=> bs!1111544 (= (dynLambda!21817 lambda!215352 (h!59169 oldBucket!34)) (contains!16168 lt!1886623 (_1!30515 (h!59169 oldBucket!34))))))

(declare-fun m!5657787 () Bool)

(assert (=> bs!1111544 m!5657787))

(assert (=> b!4721918 d!1503556))

(declare-fun b_lambda!178557 () Bool)

(assert (= b_lambda!178343 (or b!4721530 b_lambda!178557)))

(declare-fun bs!1111546 () Bool)

(declare-fun d!1503558 () Bool)

(assert (= bs!1111546 (and d!1503558 b!4721530)))

(assert (=> bs!1111546 (= (dynLambda!21817 lambda!215376 (h!59169 (t!360210 newBucket!218))) (contains!16168 lt!1886730 (_1!30515 (h!59169 (t!360210 newBucket!218)))))))

(declare-fun m!5657789 () Bool)

(assert (=> bs!1111546 m!5657789))

(assert (=> b!4721647 d!1503558))

(declare-fun b_lambda!178559 () Bool)

(assert (= b_lambda!178485 (or b!4721544 b_lambda!178559)))

(declare-fun bs!1111548 () Bool)

(declare-fun d!1503560 () Bool)

(assert (= bs!1111548 (and d!1503560 b!4721544)))

(assert (=> bs!1111548 (= (dynLambda!21817 lambda!215388 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023)))))) (contains!16168 lt!1886775 (_1!30515 (h!59169 (t!360210 (_2!30516 (h!59170 (toList!5914 lm!2023))))))))))

(declare-fun m!5657791 () Bool)

(assert (=> bs!1111548 m!5657791))

(assert (=> b!4722241 d!1503560))

(declare-fun b_lambda!178561 () Bool)

(assert (= b_lambda!178415 (or b!4721423 b_lambda!178561)))

(declare-fun bs!1111551 () Bool)

(declare-fun d!1503562 () Bool)

(assert (= bs!1111551 (and d!1503562 b!4721423)))

(assert (=> bs!1111551 (= (dynLambda!21817 lambda!215345 (h!59169 (toList!5913 lt!1886605))) (contains!16168 lt!1886606 (_1!30515 (h!59169 (toList!5913 lt!1886605)))))))

(declare-fun m!5657793 () Bool)

(assert (=> bs!1111551 m!5657793))

(assert (=> b!4721986 d!1503562))

(declare-fun b_lambda!178563 () Bool)

(assert (= b_lambda!178431 (or b!4721423 b_lambda!178563)))

(assert (=> d!1503302 d!1503526))

(declare-fun b_lambda!178565 () Bool)

(assert (= b_lambda!178449 (or b!4721535 b_lambda!178565)))

(declare-fun bs!1111553 () Bool)

(declare-fun d!1503564 () Bool)

(assert (= bs!1111553 (and d!1503564 b!4721535)))

(assert (=> bs!1111553 (= (dynLambda!21817 lambda!215381 (h!59169 (toList!5913 lt!1886750))) (contains!16168 lt!1886751 (_1!30515 (h!59169 (toList!5913 lt!1886750)))))))

(declare-fun m!5657795 () Bool)

(assert (=> bs!1111553 m!5657795))

(assert (=> b!4722105 d!1503564))

(declare-fun b_lambda!178567 () Bool)

(assert (= b_lambda!178473 (or d!1503024 b_lambda!178567)))

(declare-fun bs!1111554 () Bool)

(declare-fun d!1503566 () Bool)

(assert (= bs!1111554 (and d!1503566 d!1503024)))

(assert (=> bs!1111554 (= (dynLambda!21817 lambda!215389 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886771 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657797 () Bool)

(assert (=> bs!1111554 m!5657797))

(assert (=> b!4722209 d!1503566))

(declare-fun b_lambda!178569 () Bool)

(assert (= b_lambda!178353 (or d!1503050 b_lambda!178569)))

(declare-fun bs!1111557 () Bool)

(declare-fun d!1503568 () Bool)

(assert (= bs!1111557 (and d!1503568 d!1503050)))

(assert (=> bs!1111557 (= (dynLambda!21815 lambda!215401 (h!59170 lt!1886426)) (noDuplicateKeys!2012 (_2!30516 (h!59170 lt!1886426))))))

(assert (=> bs!1111557 m!5655995))

(assert (=> b!4721667 d!1503568))

(declare-fun b_lambda!178571 () Bool)

(assert (= b_lambda!178347 (or b!4721530 b_lambda!178571)))

(declare-fun bs!1111559 () Bool)

(declare-fun d!1503570 () Bool)

(assert (= bs!1111559 (and d!1503570 b!4721530)))

(assert (=> bs!1111559 (= (dynLambda!21817 lambda!215376 (h!59169 (toList!5913 lt!1886729))) (contains!16168 lt!1886730 (_1!30515 (h!59169 (toList!5913 lt!1886729)))))))

(declare-fun m!5657799 () Bool)

(assert (=> bs!1111559 m!5657799))

(assert (=> b!4721651 d!1503570))

(declare-fun b_lambda!178573 () Bool)

(assert (= b_lambda!178367 (or d!1503020 b_lambda!178573)))

(declare-fun bs!1111561 () Bool)

(declare-fun d!1503572 () Bool)

(assert (= bs!1111561 (and d!1503572 d!1503020)))

(assert (=> bs!1111561 (= (dynLambda!21817 lambda!215385 (h!59169 oldBucket!34)) (= (hash!4380 hashF!1323 (_1!30515 (h!59169 oldBucket!34))) hash!405))))

(declare-fun m!5657801 () Bool)

(assert (=> bs!1111561 m!5657801))

(assert (=> b!4721718 d!1503572))

(declare-fun b_lambda!178575 () Bool)

(assert (= b_lambda!178387 (or b!4721544 b_lambda!178575)))

(declare-fun bs!1111563 () Bool)

(declare-fun d!1503574 () Bool)

(assert (= bs!1111563 (and d!1503574 b!4721544)))

(assert (=> bs!1111563 (= (dynLambda!21817 lambda!215388 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886775 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657803 () Bool)

(assert (=> bs!1111563 m!5657803))

(assert (=> b!4721835 d!1503574))

(declare-fun b_lambda!178577 () Bool)

(assert (= b_lambda!178363 (or d!1503024 b_lambda!178577)))

(declare-fun bs!1111565 () Bool)

(declare-fun d!1503576 () Bool)

(assert (= bs!1111565 (and d!1503576 d!1503024)))

(assert (=> bs!1111565 (= (dynLambda!21817 lambda!215389 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023))))) (contains!16168 lt!1886771 (_1!30515 (h!59169 (_2!30516 (h!59170 (toList!5914 lm!2023)))))))))

(declare-fun m!5657805 () Bool)

(assert (=> bs!1111565 m!5657805))

(assert (=> b!4721704 d!1503576))

(declare-fun b_lambda!178579 () Bool)

(assert (= b_lambda!178489 (or b!4721544 b_lambda!178579)))

(assert (=> b!4722282 d!1503528))

(declare-fun b_lambda!178581 () Bool)

(assert (= b_lambda!178339 (or d!1503008 b_lambda!178581)))

(declare-fun bs!1111566 () Bool)

(declare-fun d!1503578 () Bool)

(assert (= bs!1111566 (and d!1503578 d!1503008)))

(assert (=> bs!1111566 (= (dynLambda!21817 lambda!215378 (h!59169 (toList!5913 lt!1886424))) (contains!16168 lt!1886726 (_1!30515 (h!59169 (toList!5913 lt!1886424)))))))

(declare-fun m!5657807 () Bool)

(assert (=> bs!1111566 m!5657807))

(assert (=> b!4721622 d!1503578))

(declare-fun b_lambda!178583 () Bool)

(assert (= b_lambda!178451 (or b!4721535 b_lambda!178583)))

(assert (=> b!4722107 d!1503516))

(declare-fun b_lambda!178585 () Bool)

(assert (= b_lambda!178455 (or d!1503032 b_lambda!178585)))

(declare-fun bs!1111568 () Bool)

(declare-fun d!1503580 () Bool)

(assert (= bs!1111568 (and d!1503580 d!1503032)))

(assert (=> bs!1111568 (= (dynLambda!21815 lambda!215395 (h!59170 (toList!5914 (ListLongMap!4444 lt!1886426)))) (allKeysSameHash!1838 (_2!30516 (h!59170 (toList!5914 (ListLongMap!4444 lt!1886426)))) (_1!30516 (h!59170 (toList!5914 (ListLongMap!4444 lt!1886426)))) hashF!1323))))

(declare-fun m!5657809 () Bool)

(assert (=> bs!1111568 m!5657809))

(assert (=> b!4722132 d!1503580))

(declare-fun b_lambda!178587 () Bool)

(assert (= b_lambda!178369 (or b!4721430 b_lambda!178587)))

(declare-fun bs!1111570 () Bool)

(declare-fun d!1503582 () Bool)

(assert (= bs!1111570 (and d!1503582 b!4721430)))

(assert (=> bs!1111570 (= (dynLambda!21817 lambda!215349 (h!59169 (t!360210 oldBucket!34))) (contains!16168 lt!1886627 (_1!30515 (h!59169 (t!360210 oldBucket!34)))))))

(declare-fun m!5657811 () Bool)

(assert (=> bs!1111570 m!5657811))

(assert (=> b!4721720 d!1503582))

(declare-fun b_lambda!178589 () Bool)

(assert (= b_lambda!178337 (or d!1502956 b_lambda!178589)))

(declare-fun bs!1111572 () Bool)

(declare-fun d!1503584 () Bool)

(assert (= bs!1111572 (and d!1503584 d!1502956)))

(assert (=> bs!1111572 (= (dynLambda!21817 lambda!215346 (h!59169 (Cons!52824 lt!1886429 lt!1886428))) (contains!16168 lt!1886602 (_1!30515 (h!59169 (Cons!52824 lt!1886429 lt!1886428)))))))

(declare-fun m!5657813 () Bool)

(assert (=> bs!1111572 m!5657813))

(assert (=> b!4721618 d!1503584))

(declare-fun b_lambda!178591 () Bool)

(assert (= b_lambda!178503 (or d!1503014 b_lambda!178591)))

(declare-fun bs!1111573 () Bool)

(declare-fun d!1503586 () Bool)

(assert (= bs!1111573 (and d!1503586 d!1503014)))

(assert (=> bs!1111573 (= (dynLambda!21817 lambda!215382 (h!59169 lt!1886428)) (contains!16168 lt!1886747 (_1!30515 (h!59169 lt!1886428))))))

(declare-fun m!5657815 () Bool)

(assert (=> bs!1111573 m!5657815))

(assert (=> b!4722310 d!1503586))

(declare-fun b_lambda!178593 () Bool)

(assert (= b_lambda!178351 (or b!4721530 b_lambda!178593)))

(assert (=> d!1503098 d!1503520))

(declare-fun b_lambda!178595 () Bool)

(assert (= b_lambda!178483 (or d!1503038 b_lambda!178595)))

(declare-fun bs!1111575 () Bool)

(declare-fun d!1503588 () Bool)

(assert (= bs!1111575 (and d!1503588 d!1503038)))

(assert (=> bs!1111575 (= (dynLambda!21815 lambda!215398 (h!59170 (toList!5914 lm!2023))) (allKeysSameHash!1838 (_2!30516 (h!59170 (toList!5914 lm!2023))) (_1!30516 (h!59170 (toList!5914 lm!2023))) hashF!1323))))

(declare-fun m!5657817 () Bool)

(assert (=> bs!1111575 m!5657817))

(assert (=> b!4722239 d!1503588))

(check-sat (not b!4721612) (not b!4722211) (not b!4721816) (not b!4721630) (not d!1503458) (not b!4721678) (not b!4721933) (not bs!1111561) (not b_lambda!178539) (not b!4721906) (not d!1503422) (not bm!330217) (not b!4721691) (not b_lambda!178513) (not b!4722215) (not b!4721727) (not b!4721676) (not bs!1111509) (not b!4722021) (not b!4721910) (not d!1503096) (not b!4721638) (not bm!330231) (not b!4721753) (not bm!330203) (not b_lambda!178537) (not bm!330199) (not b!4721954) (not b!4721845) (not b!4721728) (not b!4722018) (not b!4722240) (not d!1503356) (not b!4722311) (not bm!330193) (not b!4722333) (not b!4721688) (not bm!330248) (not b!4721813) (not b!4722332) (not d!1503076) (not b_lambda!178523) (not b!4721639) (not b_lambda!178365) (not bm!330200) (not d!1503172) (not b!4721631) (not bm!330255) (not b!4722144) (not b!4721925) (not b_lambda!178551) (not d!1503452) (not b!4721757) (not bs!1111531) (not b!4722004) (not b!4721735) (not d!1503214) (not d!1503132) (not d!1503234) (not b!4721908) (not d!1503450) (not bs!1111544) (not b!4721699) (not b!4722270) (not bm!330252) (not bm!330225) (not b!4722334) (not b!4721949) (not bs!1111504) (not b!4722108) (not d!1503162) (not b!4722271) (not b!4721726) (not b!4721709) (not b!4721930) (not b!4722143) (not b_lambda!178593) (not b!4722046) (not d!1503294) (not b!4722268) (not b!4722208) (not d!1503176) (not b_lambda!178527) (not bm!330262) (not b!4721721) (not b!4721686) (not d!1503242) (not b!4721654) (not b!4722140) (not b_lambda!178545) (not b_lambda!178573) (not b!4721634) (not b_lambda!178521) (not b!4722117) (not b!4722264) (not bs!1111511) (not b!4721731) (not b!4722288) (not b_lambda!178525) (not b!4721928) (not b_lambda!178589) (not b!4721684) (not b!4722313) (not b!4721819) (not b_lambda!178583) (not b!4721692) (not d!1503146) (not b!4721659) (not b!4721666) (not b!4721905) (not bs!1111573) (not bs!1111539) (not b_lambda!178587) (not bm!330233) (not b!4721929) (not d!1503118) (not bm!330198) (not b!4721723) (not b_lambda!178549) (not b!4721635) (not b!4722210) (not b!4721632) (not b_lambda!178561) (not b!4722286) (not d!1503456) (not b_lambda!178467) (not b!4722035) (not d!1503062) (not b!4721652) (not b!4721945) (not b!4721646) (not b!4721656) (not d!1503282) (not b!4722061) (not b!4722284) (not b!4722045) (not d!1503318) (not b!4721737) (not b_lambda!178541) (not b!4722200) (not b_lambda!178341) (not b!4722001) (not b!4722038) (not b_lambda!178401) (not bm!330204) (not d!1503124) (not b!4721941) (not b!4722007) (not b!4722257) (not b!4722235) (not b!4721847) (not bm!330228) (not b!4722242) (not bs!1111516) (not d!1503322) (not b_lambda!178329) (not b!4722116) (not b!4721661) (not bs!1111546) (not b!4722032) (not b!4722272) (not b!4722331) (not b!4721650) (not b!4721759) (not b!4721700) (not b!4722133) (not bs!1111566) (not d!1503308) (not b!4721944) (not b_lambda!178361) (not d!1503498) (not b!4722052) (not d!1503154) (not b!4721836) (not d!1503260) (not b_lambda!178507) (not b_lambda!178395) (not b!4721623) (not bs!1111548) (not b!4722315) (not bm!330256) (not b!4722113) (not b!4721655) (not b_lambda!178563) (not b!4721621) (not bm!330254) (not d!1503276) (not b!4722022) (not b!4721775) (not b!4722112) (not b!4722093) (not bm!330249) (not b!4721620) (not b!4722049) (not b!4721742) (not b!4721662) (not b!4721744) (not b!4721948) (not bm!330202) (not d!1503436) (not d!1503192) (not b!4721907) (not b!4721952) (not b_lambda!178509) (not bm!330214) (not b!4721707) (not b!4721717) (not b!4721642) (not b!4722106) (not bm!330196) (not b!4721766) (not b!4722252) (not bs!1111527) (not d!1503156) (not b!4721936) (not b!4721762) (not b!4721694) (not bs!1111518) tp_is_empty!31341 (not b_lambda!178571) (not b!4721962) (not bs!1111514) tp_is_empty!31343 (not d!1503440) (not d!1503334) (not d!1503220) (not b!4721761) (not bm!330215) (not b!4722062) (not bs!1111572) (not b_lambda!178405) (not b!4721841) (not b!4721843) (not b!4721821) (not b_lambda!178581) (not b!4721695) (not b!4721957) (not b!4721725) (not b!4721693) (not b!4722274) (not b!4722259) (not b_lambda!178585) (not b!4721674) (not bs!1111533) (not b!4721698) (not b!4721685) (not d!1503262) (not d!1503256) (not d!1503142) (not bs!1111521) (not b!4722330) (not b!4721846) (not b!4721987) (not b!4721939) (not b!4722115) (not d!1503158) (not b!4721730) (not bs!1111565) (not b!4721663) (not b!4721817) (not b_lambda!178533) (not d!1503240) (not b!4721946) (not b!4722121) (not bs!1111551) (not b_lambda!178567) (not b!4721739) (not b!4721975) (not b!4721964) (not bs!1111535) (not bm!330201) (not b!4721690) (not bs!1111532) (not b!4721947) (not b!4722251) (not b!4722205) (not b!4721648) (not d!1503126) (not b!4721977) (not b!4722131) (not d!1503200) (not d!1503128) (not b!4722130) (not b!4721811) (not bs!1111502) (not d!1503378) (not b!4721705) (not b!4721917) (not b!4722213) (not b!4721764) (not b!4722039) (not b!4722109) (not b!4722092) (not b!4722051) (not b!4721758) (not b!4721746) (not b!4721751) (not d!1503082) (not b!4721935) (not bm!330245) (not b_lambda!178579) (not b_lambda!178515) (not b!4722254) (not b!4722255) (not b!4721619) (not b!4721734) (not b!4722110) (not bs!1111525) (not d!1503346) (not d!1503466) (not b_lambda!178543) (not b!4722309) (not d!1503312) (not bs!1111530) (not d!1503084) (not b!4721658) (not b_lambda!178559) (not d!1503348) (not b!4722094) (not bs!1111529) (not b_lambda!178519) (not d!1503302) (not b!4722095) (not b!4721745) (not b!4722053) (not bm!330244) (not b!4722281) (not b!4721832) (not bs!1111537) (not b!4721755) (not b!4721715) (not b!4721956) (not b!4722258) (not b!4722040) (not bs!1111575) (not b!4722100) (not b!4721877) (not b!4722283) (not b_lambda!178553) (not b!4722059) (not b!4721747) (not bs!1111568) (not b!4722267) (not bm!330227) (not bs!1111559) (not b_lambda!178547) (not d!1503166) (not b!4721960) (not b!4721626) (not d!1503086) (not b!4721733) (not b_lambda!178575) (not d!1503186) (not b!4721776) (not bs!1111523) (not b!4721765) (not bs!1111553) (not b!4722104) (not b_lambda!178577) (not bm!330192) (not b!4722008) (not bm!330218) (not b!4722265) (not bm!330243) (not b!4722033) (not b!4721719) (not b!4722102) (not b!4721645) (not b!4722048) (not b_lambda!178453) (not b!4721703) (not b!4722214) (not bs!1111505) (not d!1503080) (not d!1503338) (not b!4722123) (not b!4721697) (not b!4722273) (not b!4722097) (not bm!330219) (not b!4721706) (not b!4721641) (not bs!1111507) (not d!1503100) (not d!1503180) (not d!1503228) (not b!4722125) (not b_lambda!178591) (not b!4722098) (not d!1503122) (not b_lambda!178569) (not b!4721976) (not b!4721919) (not b!4722307) (not bm!330238) (not b!4721921) (not b!4722101) (not d!1503098) (not b_lambda!178565) (not d!1503074) (not d!1503164) (not bs!1111541) (not b!4721922) (not bm!330268) (not bm!330195) (not bs!1111557) (not b!4721769) (not d!1503110) (not bm!330267) (not bm!330191) (not b!4721750) (not b!4722006) (not b_lambda!178557) (not b_lambda!178555) (not b!4722142) (not b_lambda!178501) (not b!4721629) (not d!1503236) (not bm!330197) (not b_lambda!178529) (not b!4721872) (not b!4721818) (not b_lambda!178457) (not b!4722287) (not b_lambda!178535) (not b!4721644) (not b_lambda!178595) (not b!4721749) (not b_lambda!178511) (not bs!1111554) (not b!4721636) (not b!4721738) (not b!4721820) (not b!4722119) (not bs!1111503) (not b!4721923) (not bm!330194) (not b!4722063) (not b!4721958) (not bm!330239) (not bm!330251) (not d!1503492) (not bm!330232) (not b!4721926) (not b!4721668) (not b!4722137) (not b!4721875) (not b!4722036) (not d!1503072) (not b!4721999) (not d!1503246) (not b!4722078) (not bm!330250) (not b_lambda!178517) (not b_lambda!178531) (not bm!330266) (not bs!1111570) (not d!1503182) (not bs!1111563) (not b!4722238) (not b!4721724) (not b!4721741) (not bm!330261) (not b_lambda!178331))
(check-sat)
