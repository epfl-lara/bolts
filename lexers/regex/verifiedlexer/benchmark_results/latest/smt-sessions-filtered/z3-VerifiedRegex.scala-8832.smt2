; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472004 () Bool)

(assert start!472004)

(declare-fun e!2917851 () Bool)

(declare-fun b!4676452 () Bool)

(declare-fun tp!1344663 () Bool)

(declare-fun tp_is_empty!30357 () Bool)

(declare-fun tp_is_empty!30359 () Bool)

(assert (=> b!4676452 (= e!2917851 (and tp_is_empty!30357 tp_is_empty!30359 tp!1344663))))

(declare-fun b!4676453 () Bool)

(declare-fun res!1969759 () Bool)

(declare-fun e!2917852 () Bool)

(assert (=> b!4676453 (=> (not res!1969759) (not e!2917852))))

(declare-datatypes ((K!13565 0))(
  ( (K!13566 (val!19123 Int)) )
))
(declare-datatypes ((V!13811 0))(
  ( (V!13812 (val!19124 Int)) )
))
(declare-datatypes ((tuple2!53458 0))(
  ( (tuple2!53459 (_1!30023 K!13565) (_2!30023 V!13811)) )
))
(declare-datatypes ((List!52311 0))(
  ( (Nil!52187) (Cons!52187 (h!58386 tuple2!53458) (t!359453 List!52311)) )
))
(declare-datatypes ((tuple2!53460 0))(
  ( (tuple2!53461 (_1!30024 (_ BitVec 64)) (_2!30024 List!52311)) )
))
(declare-datatypes ((List!52312 0))(
  ( (Nil!52188) (Cons!52188 (h!58387 tuple2!53460) (t!359454 List!52312)) )
))
(declare-datatypes ((ListLongMap!3951 0))(
  ( (ListLongMap!3952 (toList!5421 List!52312)) )
))
(declare-fun lm!2023 () ListLongMap!3951)

(get-info :version)

(assert (=> b!4676453 (= res!1969759 ((_ is Cons!52188) (toList!5421 lm!2023)))))

(declare-fun res!1969754 () Bool)

(declare-fun e!2917847 () Bool)

(assert (=> start!472004 (=> (not res!1969754) (not e!2917847))))

(declare-fun lambda!203707 () Int)

(declare-fun forall!11187 (List!52312 Int) Bool)

(assert (=> start!472004 (= res!1969754 (forall!11187 (toList!5421 lm!2023) lambda!203707))))

(assert (=> start!472004 e!2917847))

(declare-fun e!2917850 () Bool)

(declare-fun inv!67439 (ListLongMap!3951) Bool)

(assert (=> start!472004 (and (inv!67439 lm!2023) e!2917850)))

(assert (=> start!472004 tp_is_empty!30357))

(assert (=> start!472004 e!2917851))

(assert (=> start!472004 true))

(declare-fun e!2917849 () Bool)

(assert (=> start!472004 e!2917849))

(declare-fun b!4676454 () Bool)

(declare-fun e!2917846 () Bool)

(declare-fun e!2917845 () Bool)

(assert (=> b!4676454 (= e!2917846 e!2917845)))

(declare-fun res!1969752 () Bool)

(assert (=> b!4676454 (=> res!1969752 e!2917845)))

(declare-datatypes ((ListMap!4785 0))(
  ( (ListMap!4786 (toList!5422 List!52311)) )
))
(declare-fun lt!1836233 () ListMap!4785)

(declare-fun newBucket!218 () List!52311)

(declare-fun lt!1836229 () ListMap!4785)

(declare-fun addToMapMapFromBucket!1198 (List!52311 ListMap!4785) ListMap!4785)

(assert (=> b!4676454 (= res!1969752 (not (= lt!1836233 (addToMapMapFromBucket!1198 newBucket!218 lt!1836229))))))

(declare-fun lt!1836230 () List!52311)

(assert (=> b!4676454 (= lt!1836233 (addToMapMapFromBucket!1198 lt!1836230 lt!1836229))))

(declare-fun b!4676455 () Bool)

(declare-fun res!1969745 () Bool)

(declare-fun e!2917848 () Bool)

(assert (=> b!4676455 (=> res!1969745 e!2917848)))

(declare-fun key!4653 () K!13565)

(declare-fun containsKey!2899 (List!52311 K!13565) Bool)

(assert (=> b!4676455 (= res!1969745 (containsKey!2899 lt!1836230 key!4653))))

(declare-fun tp!1344664 () Bool)

(declare-fun b!4676456 () Bool)

(assert (=> b!4676456 (= e!2917849 (and tp_is_empty!30357 tp_is_empty!30359 tp!1344664))))

(declare-fun b!4676457 () Bool)

(declare-fun e!2917844 () Bool)

(assert (=> b!4676457 (= e!2917844 e!2917846)))

(declare-fun res!1969761 () Bool)

(assert (=> b!4676457 (=> res!1969761 e!2917846)))

(assert (=> b!4676457 (= res!1969761 (not (= lt!1836230 newBucket!218)))))

(declare-fun oldBucket!34 () List!52311)

(declare-fun tail!8378 (List!52311) List!52311)

(assert (=> b!4676457 (= lt!1836230 (tail!8378 oldBucket!34))))

(declare-fun b!4676458 () Bool)

(declare-fun res!1969760 () Bool)

(assert (=> b!4676458 (=> (not res!1969760) (not e!2917847))))

(declare-datatypes ((Hashable!6135 0))(
  ( (HashableExt!6134 (__x!31838 Int)) )
))
(declare-fun hashF!1323 () Hashable!6135)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1592 (List!52311 (_ BitVec 64) Hashable!6135) Bool)

(assert (=> b!4676458 (= res!1969760 (allKeysSameHash!1592 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4676459 () Bool)

(declare-fun res!1969758 () Bool)

(assert (=> b!4676459 (=> res!1969758 e!2917846)))

(declare-fun extractMap!1792 (List!52312) ListMap!4785)

(assert (=> b!4676459 (= res!1969758 (not (= (extractMap!1792 (Cons!52188 (tuple2!53461 hash!405 lt!1836230) (t!359454 (toList!5421 lm!2023)))) (extractMap!1792 (Cons!52188 (tuple2!53461 hash!405 newBucket!218) (t!359454 (toList!5421 lm!2023)))))))))

(declare-fun b!4676460 () Bool)

(declare-fun res!1969750 () Bool)

(assert (=> b!4676460 (=> (not res!1969750) (not e!2917852))))

(declare-fun head!9823 (List!52312) tuple2!53460)

(assert (=> b!4676460 (= res!1969750 (= (head!9823 (toList!5421 lm!2023)) (tuple2!53461 hash!405 oldBucket!34)))))

(declare-fun b!4676461 () Bool)

(assert (=> b!4676461 (= e!2917852 (not e!2917844))))

(declare-fun res!1969753 () Bool)

(assert (=> b!4676461 (=> res!1969753 e!2917844)))

(assert (=> b!4676461 (= res!1969753 (or (not ((_ is Cons!52187) oldBucket!34)) (not (= (_1!30023 (h!58386 oldBucket!34)) key!4653))))))

(declare-fun lt!1836232 () ListMap!4785)

(assert (=> b!4676461 (= lt!1836232 (addToMapMapFromBucket!1198 (_2!30024 (h!58387 (toList!5421 lm!2023))) lt!1836229))))

(assert (=> b!4676461 (= lt!1836229 (extractMap!1792 (t!359454 (toList!5421 lm!2023))))))

(declare-fun tail!8379 (ListLongMap!3951) ListLongMap!3951)

(assert (=> b!4676461 (= (t!359454 (toList!5421 lm!2023)) (toList!5421 (tail!8379 lm!2023)))))

(declare-fun b!4676462 () Bool)

(assert (=> b!4676462 (= e!2917847 e!2917852)))

(declare-fun res!1969756 () Bool)

(assert (=> b!4676462 (=> (not res!1969756) (not e!2917852))))

(declare-fun contains!15330 (ListMap!4785 K!13565) Bool)

(assert (=> b!4676462 (= res!1969756 (contains!15330 lt!1836232 key!4653))))

(assert (=> b!4676462 (= lt!1836232 (extractMap!1792 (toList!5421 lm!2023)))))

(declare-fun b!4676463 () Bool)

(declare-fun res!1969748 () Bool)

(assert (=> b!4676463 (=> (not res!1969748) (not e!2917852))))

(declare-fun allKeysSameHashInMap!1680 (ListLongMap!3951 Hashable!6135) Bool)

(assert (=> b!4676463 (= res!1969748 (allKeysSameHashInMap!1680 lm!2023 hashF!1323))))

(declare-fun b!4676464 () Bool)

(declare-fun res!1969757 () Bool)

(assert (=> b!4676464 (=> (not res!1969757) (not e!2917852))))

(assert (=> b!4676464 (= res!1969757 (allKeysSameHash!1592 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4676465 () Bool)

(declare-fun tp!1344665 () Bool)

(assert (=> b!4676465 (= e!2917850 tp!1344665)))

(declare-fun b!4676466 () Bool)

(declare-fun res!1969751 () Bool)

(assert (=> b!4676466 (=> (not res!1969751) (not e!2917852))))

(declare-fun hash!3932 (Hashable!6135 K!13565) (_ BitVec 64))

(assert (=> b!4676466 (= res!1969751 (= (hash!3932 hashF!1323 key!4653) hash!405))))

(declare-fun b!4676467 () Bool)

(declare-fun res!1969746 () Bool)

(assert (=> b!4676467 (=> (not res!1969746) (not e!2917847))))

(declare-fun noDuplicateKeys!1766 (List!52311) Bool)

(assert (=> b!4676467 (= res!1969746 (noDuplicateKeys!1766 newBucket!218))))

(declare-fun b!4676468 () Bool)

(declare-fun res!1969747 () Bool)

(assert (=> b!4676468 (=> (not res!1969747) (not e!2917847))))

(assert (=> b!4676468 (= res!1969747 (noDuplicateKeys!1766 oldBucket!34))))

(declare-fun b!4676469 () Bool)

(assert (=> b!4676469 (= e!2917848 (forall!11187 (t!359454 (toList!5421 lm!2023)) lambda!203707))))

(declare-fun b!4676470 () Bool)

(declare-fun res!1969755 () Bool)

(assert (=> b!4676470 (=> (not res!1969755) (not e!2917847))))

(declare-fun removePairForKey!1361 (List!52311 K!13565) List!52311)

(assert (=> b!4676470 (= res!1969755 (= (removePairForKey!1361 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4676471 () Bool)

(assert (=> b!4676471 (= e!2917845 e!2917848)))

(declare-fun res!1969749 () Bool)

(assert (=> b!4676471 (=> res!1969749 e!2917848)))

(declare-fun eq!955 (ListMap!4785 ListMap!4785) Bool)

(declare-fun +!2068 (ListMap!4785 tuple2!53458) ListMap!4785)

(assert (=> b!4676471 (= res!1969749 (not (eq!955 (+!2068 lt!1836233 (h!58386 oldBucket!34)) (addToMapMapFromBucket!1198 oldBucket!34 lt!1836229))))))

(declare-fun lt!1836234 () tuple2!53458)

(assert (=> b!4676471 (eq!955 (addToMapMapFromBucket!1198 (Cons!52187 lt!1836234 lt!1836230) lt!1836229) (+!2068 lt!1836233 lt!1836234))))

(declare-datatypes ((Unit!121725 0))(
  ( (Unit!121726) )
))
(declare-fun lt!1836231 () Unit!121725)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!204 (tuple2!53458 List!52311 ListMap!4785) Unit!121725)

(assert (=> b!4676471 (= lt!1836231 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!204 lt!1836234 lt!1836230 lt!1836229))))

(declare-fun head!9824 (List!52311) tuple2!53458)

(assert (=> b!4676471 (= lt!1836234 (head!9824 oldBucket!34))))

(assert (= (and start!472004 res!1969754) b!4676468))

(assert (= (and b!4676468 res!1969747) b!4676467))

(assert (= (and b!4676467 res!1969746) b!4676470))

(assert (= (and b!4676470 res!1969755) b!4676458))

(assert (= (and b!4676458 res!1969760) b!4676462))

(assert (= (and b!4676462 res!1969756) b!4676466))

(assert (= (and b!4676466 res!1969751) b!4676464))

(assert (= (and b!4676464 res!1969757) b!4676463))

(assert (= (and b!4676463 res!1969748) b!4676460))

(assert (= (and b!4676460 res!1969750) b!4676453))

(assert (= (and b!4676453 res!1969759) b!4676461))

(assert (= (and b!4676461 (not res!1969753)) b!4676457))

(assert (= (and b!4676457 (not res!1969761)) b!4676459))

(assert (= (and b!4676459 (not res!1969758)) b!4676454))

(assert (= (and b!4676454 (not res!1969752)) b!4676471))

(assert (= (and b!4676471 (not res!1969749)) b!4676455))

(assert (= (and b!4676455 (not res!1969745)) b!4676469))

(assert (= start!472004 b!4676465))

(assert (= (and start!472004 ((_ is Cons!52187) oldBucket!34)) b!4676452))

(assert (= (and start!472004 ((_ is Cons!52187) newBucket!218)) b!4676456))

(declare-fun m!5570337 () Bool)

(assert (=> b!4676467 m!5570337))

(declare-fun m!5570339 () Bool)

(assert (=> b!4676454 m!5570339))

(declare-fun m!5570341 () Bool)

(assert (=> b!4676454 m!5570341))

(declare-fun m!5570343 () Bool)

(assert (=> b!4676466 m!5570343))

(declare-fun m!5570345 () Bool)

(assert (=> b!4676459 m!5570345))

(declare-fun m!5570347 () Bool)

(assert (=> b!4676459 m!5570347))

(declare-fun m!5570349 () Bool)

(assert (=> b!4676461 m!5570349))

(declare-fun m!5570351 () Bool)

(assert (=> b!4676461 m!5570351))

(declare-fun m!5570353 () Bool)

(assert (=> b!4676461 m!5570353))

(declare-fun m!5570355 () Bool)

(assert (=> b!4676462 m!5570355))

(declare-fun m!5570357 () Bool)

(assert (=> b!4676462 m!5570357))

(declare-fun m!5570359 () Bool)

(assert (=> b!4676463 m!5570359))

(declare-fun m!5570361 () Bool)

(assert (=> b!4676457 m!5570361))

(declare-fun m!5570363 () Bool)

(assert (=> b!4676460 m!5570363))

(declare-fun m!5570365 () Bool)

(assert (=> b!4676468 m!5570365))

(declare-fun m!5570367 () Bool)

(assert (=> b!4676469 m!5570367))

(declare-fun m!5570369 () Bool)

(assert (=> b!4676471 m!5570369))

(declare-fun m!5570371 () Bool)

(assert (=> b!4676471 m!5570371))

(declare-fun m!5570373 () Bool)

(assert (=> b!4676471 m!5570373))

(declare-fun m!5570375 () Bool)

(assert (=> b!4676471 m!5570375))

(declare-fun m!5570377 () Bool)

(assert (=> b!4676471 m!5570377))

(declare-fun m!5570379 () Bool)

(assert (=> b!4676471 m!5570379))

(assert (=> b!4676471 m!5570375))

(assert (=> b!4676471 m!5570377))

(assert (=> b!4676471 m!5570369))

(assert (=> b!4676471 m!5570371))

(declare-fun m!5570381 () Bool)

(assert (=> b!4676471 m!5570381))

(declare-fun m!5570383 () Bool)

(assert (=> b!4676471 m!5570383))

(declare-fun m!5570385 () Bool)

(assert (=> b!4676464 m!5570385))

(declare-fun m!5570387 () Bool)

(assert (=> b!4676455 m!5570387))

(declare-fun m!5570389 () Bool)

(assert (=> b!4676470 m!5570389))

(declare-fun m!5570391 () Bool)

(assert (=> b!4676458 m!5570391))

(declare-fun m!5570393 () Bool)

(assert (=> start!472004 m!5570393))

(declare-fun m!5570395 () Bool)

(assert (=> start!472004 m!5570395))

(check-sat (not b!4676464) (not b!4676465) (not b!4676460) (not b!4676463) (not b!4676471) (not b!4676457) (not b!4676455) (not b!4676452) (not b!4676469) (not b!4676467) (not b!4676459) (not start!472004) (not b!4676454) (not b!4676458) (not b!4676470) tp_is_empty!30357 (not b!4676468) tp_is_empty!30359 (not b!4676466) (not b!4676456) (not b!4676461) (not b!4676462))
(check-sat)
(get-model)

(declare-fun d!1486553 () Bool)

(declare-fun res!1969766 () Bool)

(declare-fun e!2917857 () Bool)

(assert (=> d!1486553 (=> res!1969766 e!2917857)))

(assert (=> d!1486553 (= res!1969766 ((_ is Nil!52188) (toList!5421 lm!2023)))))

(assert (=> d!1486553 (= (forall!11187 (toList!5421 lm!2023) lambda!203707) e!2917857)))

(declare-fun b!4676476 () Bool)

(declare-fun e!2917858 () Bool)

(assert (=> b!4676476 (= e!2917857 e!2917858)))

(declare-fun res!1969767 () Bool)

(assert (=> b!4676476 (=> (not res!1969767) (not e!2917858))))

(declare-fun dynLambda!21667 (Int tuple2!53460) Bool)

(assert (=> b!4676476 (= res!1969767 (dynLambda!21667 lambda!203707 (h!58387 (toList!5421 lm!2023))))))

(declare-fun b!4676477 () Bool)

(assert (=> b!4676477 (= e!2917858 (forall!11187 (t!359454 (toList!5421 lm!2023)) lambda!203707))))

(assert (= (and d!1486553 (not res!1969766)) b!4676476))

(assert (= (and b!4676476 res!1969767) b!4676477))

(declare-fun b_lambda!176565 () Bool)

(assert (=> (not b_lambda!176565) (not b!4676476)))

(declare-fun m!5570397 () Bool)

(assert (=> b!4676476 m!5570397))

(assert (=> b!4676477 m!5570367))

(assert (=> start!472004 d!1486553))

(declare-fun d!1486557 () Bool)

(declare-fun isStrictlySorted!604 (List!52312) Bool)

(assert (=> d!1486557 (= (inv!67439 lm!2023) (isStrictlySorted!604 (toList!5421 lm!2023)))))

(declare-fun bs!1080042 () Bool)

(assert (= bs!1080042 d!1486557))

(declare-fun m!5570399 () Bool)

(assert (=> bs!1080042 m!5570399))

(assert (=> start!472004 d!1486557))

(declare-fun b!4676594 () Bool)

(assert (=> b!4676594 true))

(declare-fun bs!1080140 () Bool)

(declare-fun b!4676592 () Bool)

(assert (= bs!1080140 (and b!4676592 b!4676594)))

(declare-fun lambda!203793 () Int)

(declare-fun lambda!203792 () Int)

(assert (=> bs!1080140 (= lambda!203793 lambda!203792)))

(assert (=> b!4676592 true))

(declare-fun lt!1836454 () ListMap!4785)

(declare-fun lambda!203794 () Int)

(assert (=> bs!1080140 (= (= lt!1836454 lt!1836229) (= lambda!203794 lambda!203792))))

(assert (=> b!4676592 (= (= lt!1836454 lt!1836229) (= lambda!203794 lambda!203793))))

(assert (=> b!4676592 true))

(declare-fun bs!1080141 () Bool)

(declare-fun d!1486559 () Bool)

(assert (= bs!1080141 (and d!1486559 b!4676594)))

(declare-fun lt!1836447 () ListMap!4785)

(declare-fun lambda!203795 () Int)

(assert (=> bs!1080141 (= (= lt!1836447 lt!1836229) (= lambda!203795 lambda!203792))))

(declare-fun bs!1080142 () Bool)

(assert (= bs!1080142 (and d!1486559 b!4676592)))

(assert (=> bs!1080142 (= (= lt!1836447 lt!1836229) (= lambda!203795 lambda!203793))))

(assert (=> bs!1080142 (= (= lt!1836447 lt!1836454) (= lambda!203795 lambda!203794))))

(assert (=> d!1486559 true))

(declare-fun b!4676591 () Bool)

(declare-fun e!2917927 () Bool)

(declare-fun invariantList!1364 (List!52311) Bool)

(assert (=> b!4676591 (= e!2917927 (invariantList!1364 (toList!5422 lt!1836447)))))

(declare-fun call!326800 () Bool)

(declare-fun c!800209 () Bool)

(declare-fun bm!326794 () Bool)

(declare-fun forall!11189 (List!52311 Int) Bool)

(assert (=> bm!326794 (= call!326800 (forall!11189 (toList!5422 lt!1836229) (ite c!800209 lambda!203792 lambda!203793)))))

(declare-fun e!2917928 () ListMap!4785)

(assert (=> b!4676592 (= e!2917928 lt!1836454)))

(declare-fun lt!1836451 () ListMap!4785)

(assert (=> b!4676592 (= lt!1836451 (+!2068 lt!1836229 (h!58386 (_2!30024 (h!58387 (toList!5421 lm!2023))))))))

(assert (=> b!4676592 (= lt!1836454 (addToMapMapFromBucket!1198 (t!359453 (_2!30024 (h!58387 (toList!5421 lm!2023)))) (+!2068 lt!1836229 (h!58386 (_2!30024 (h!58387 (toList!5421 lm!2023)))))))))

(declare-fun lt!1836436 () Unit!121725)

(declare-fun call!326799 () Unit!121725)

(assert (=> b!4676592 (= lt!1836436 call!326799)))

(assert (=> b!4676592 call!326800))

(declare-fun lt!1836452 () Unit!121725)

(assert (=> b!4676592 (= lt!1836452 lt!1836436)))

(assert (=> b!4676592 (forall!11189 (toList!5422 lt!1836451) lambda!203794)))

(declare-fun lt!1836440 () Unit!121725)

(declare-fun Unit!121741 () Unit!121725)

(assert (=> b!4676592 (= lt!1836440 Unit!121741)))

(assert (=> b!4676592 (forall!11189 (t!359453 (_2!30024 (h!58387 (toList!5421 lm!2023)))) lambda!203794)))

(declare-fun lt!1836441 () Unit!121725)

(declare-fun Unit!121742 () Unit!121725)

(assert (=> b!4676592 (= lt!1836441 Unit!121742)))

(declare-fun lt!1836453 () Unit!121725)

(declare-fun Unit!121744 () Unit!121725)

(assert (=> b!4676592 (= lt!1836453 Unit!121744)))

(declare-fun lt!1836437 () Unit!121725)

(declare-fun forallContained!3336 (List!52311 Int tuple2!53458) Unit!121725)

(assert (=> b!4676592 (= lt!1836437 (forallContained!3336 (toList!5422 lt!1836451) lambda!203794 (h!58386 (_2!30024 (h!58387 (toList!5421 lm!2023))))))))

(assert (=> b!4676592 (contains!15330 lt!1836451 (_1!30023 (h!58386 (_2!30024 (h!58387 (toList!5421 lm!2023))))))))

(declare-fun lt!1836444 () Unit!121725)

(declare-fun Unit!121747 () Unit!121725)

(assert (=> b!4676592 (= lt!1836444 Unit!121747)))

(assert (=> b!4676592 (contains!15330 lt!1836454 (_1!30023 (h!58386 (_2!30024 (h!58387 (toList!5421 lm!2023))))))))

(declare-fun lt!1836442 () Unit!121725)

(declare-fun Unit!121748 () Unit!121725)

(assert (=> b!4676592 (= lt!1836442 Unit!121748)))

(assert (=> b!4676592 (forall!11189 (_2!30024 (h!58387 (toList!5421 lm!2023))) lambda!203794)))

(declare-fun lt!1836449 () Unit!121725)

(declare-fun Unit!121750 () Unit!121725)

(assert (=> b!4676592 (= lt!1836449 Unit!121750)))

(assert (=> b!4676592 (forall!11189 (toList!5422 lt!1836451) lambda!203794)))

(declare-fun lt!1836443 () Unit!121725)

(declare-fun Unit!121752 () Unit!121725)

(assert (=> b!4676592 (= lt!1836443 Unit!121752)))

(declare-fun lt!1836438 () Unit!121725)

(declare-fun Unit!121754 () Unit!121725)

(assert (=> b!4676592 (= lt!1836438 Unit!121754)))

(declare-fun lt!1836439 () Unit!121725)

(declare-fun addForallContainsKeyThenBeforeAdding!651 (ListMap!4785 ListMap!4785 K!13565 V!13811) Unit!121725)

(assert (=> b!4676592 (= lt!1836439 (addForallContainsKeyThenBeforeAdding!651 lt!1836229 lt!1836454 (_1!30023 (h!58386 (_2!30024 (h!58387 (toList!5421 lm!2023))))) (_2!30023 (h!58386 (_2!30024 (h!58387 (toList!5421 lm!2023)))))))))

(assert (=> b!4676592 (forall!11189 (toList!5422 lt!1836229) lambda!203794)))

(declare-fun lt!1836445 () Unit!121725)

(assert (=> b!4676592 (= lt!1836445 lt!1836439)))

(assert (=> b!4676592 (forall!11189 (toList!5422 lt!1836229) lambda!203794)))

(declare-fun lt!1836446 () Unit!121725)

(declare-fun Unit!121757 () Unit!121725)

(assert (=> b!4676592 (= lt!1836446 Unit!121757)))

(declare-fun res!1969815 () Bool)

(assert (=> b!4676592 (= res!1969815 (forall!11189 (_2!30024 (h!58387 (toList!5421 lm!2023))) lambda!203794))))

(declare-fun e!2917929 () Bool)

(assert (=> b!4676592 (=> (not res!1969815) (not e!2917929))))

(assert (=> b!4676592 e!2917929))

(declare-fun lt!1836455 () Unit!121725)

(declare-fun Unit!121759 () Unit!121725)

(assert (=> b!4676592 (= lt!1836455 Unit!121759)))

(assert (=> d!1486559 e!2917927))

(declare-fun res!1969816 () Bool)

(assert (=> d!1486559 (=> (not res!1969816) (not e!2917927))))

(assert (=> d!1486559 (= res!1969816 (forall!11189 (_2!30024 (h!58387 (toList!5421 lm!2023))) lambda!203795))))

(assert (=> d!1486559 (= lt!1836447 e!2917928)))

(assert (=> d!1486559 (= c!800209 ((_ is Nil!52187) (_2!30024 (h!58387 (toList!5421 lm!2023)))))))

(assert (=> d!1486559 (noDuplicateKeys!1766 (_2!30024 (h!58387 (toList!5421 lm!2023))))))

(assert (=> d!1486559 (= (addToMapMapFromBucket!1198 (_2!30024 (h!58387 (toList!5421 lm!2023))) lt!1836229) lt!1836447)))

(declare-fun b!4676593 () Bool)

(declare-fun res!1969817 () Bool)

(assert (=> b!4676593 (=> (not res!1969817) (not e!2917927))))

(assert (=> b!4676593 (= res!1969817 (forall!11189 (toList!5422 lt!1836229) lambda!203795))))

(assert (=> b!4676594 (= e!2917928 lt!1836229)))

(declare-fun lt!1836456 () Unit!121725)

(assert (=> b!4676594 (= lt!1836456 call!326799)))

(assert (=> b!4676594 call!326800))

(declare-fun lt!1836448 () Unit!121725)

(assert (=> b!4676594 (= lt!1836448 lt!1836456)))

(declare-fun call!326801 () Bool)

(assert (=> b!4676594 call!326801))

(declare-fun lt!1836450 () Unit!121725)

(declare-fun Unit!121761 () Unit!121725)

(assert (=> b!4676594 (= lt!1836450 Unit!121761)))

(declare-fun b!4676595 () Bool)

(assert (=> b!4676595 (= e!2917929 call!326801)))

(declare-fun bm!326795 () Bool)

(assert (=> bm!326795 (= call!326801 (forall!11189 (toList!5422 lt!1836229) (ite c!800209 lambda!203792 lambda!203794)))))

(declare-fun bm!326796 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!652 (ListMap!4785) Unit!121725)

(assert (=> bm!326796 (= call!326799 (lemmaContainsAllItsOwnKeys!652 lt!1836229))))

(assert (= (and d!1486559 c!800209) b!4676594))

(assert (= (and d!1486559 (not c!800209)) b!4676592))

(assert (= (and b!4676592 res!1969815) b!4676595))

(assert (= (or b!4676594 b!4676592) bm!326796))

(assert (= (or b!4676594 b!4676595) bm!326795))

(assert (= (or b!4676594 b!4676592) bm!326794))

(assert (= (and d!1486559 res!1969816) b!4676593))

(assert (= (and b!4676593 res!1969817) b!4676591))

(declare-fun m!5570603 () Bool)

(assert (=> bm!326796 m!5570603))

(declare-fun m!5570605 () Bool)

(assert (=> bm!326795 m!5570605))

(declare-fun m!5570607 () Bool)

(assert (=> b!4676592 m!5570607))

(declare-fun m!5570609 () Bool)

(assert (=> b!4676592 m!5570609))

(declare-fun m!5570611 () Bool)

(assert (=> b!4676592 m!5570611))

(assert (=> b!4676592 m!5570611))

(declare-fun m!5570613 () Bool)

(assert (=> b!4676592 m!5570613))

(declare-fun m!5570615 () Bool)

(assert (=> b!4676592 m!5570615))

(declare-fun m!5570617 () Bool)

(assert (=> b!4676592 m!5570617))

(declare-fun m!5570619 () Bool)

(assert (=> b!4676592 m!5570619))

(assert (=> b!4676592 m!5570617))

(declare-fun m!5570621 () Bool)

(assert (=> b!4676592 m!5570621))

(assert (=> b!4676592 m!5570615))

(declare-fun m!5570623 () Bool)

(assert (=> b!4676592 m!5570623))

(declare-fun m!5570625 () Bool)

(assert (=> b!4676592 m!5570625))

(assert (=> b!4676592 m!5570607))

(declare-fun m!5570627 () Bool)

(assert (=> b!4676593 m!5570627))

(declare-fun m!5570629 () Bool)

(assert (=> d!1486559 m!5570629))

(declare-fun m!5570631 () Bool)

(assert (=> d!1486559 m!5570631))

(declare-fun m!5570633 () Bool)

(assert (=> bm!326794 m!5570633))

(declare-fun m!5570635 () Bool)

(assert (=> b!4676591 m!5570635))

(assert (=> b!4676461 d!1486559))

(declare-fun bs!1080144 () Bool)

(declare-fun d!1486601 () Bool)

(assert (= bs!1080144 (and d!1486601 start!472004)))

(declare-fun lambda!203798 () Int)

(assert (=> bs!1080144 (= lambda!203798 lambda!203707)))

(declare-fun lt!1836471 () ListMap!4785)

(assert (=> d!1486601 (invariantList!1364 (toList!5422 lt!1836471))))

(declare-fun e!2917935 () ListMap!4785)

(assert (=> d!1486601 (= lt!1836471 e!2917935)))

(declare-fun c!800212 () Bool)

(assert (=> d!1486601 (= c!800212 ((_ is Cons!52188) (t!359454 (toList!5421 lm!2023))))))

(assert (=> d!1486601 (forall!11187 (t!359454 (toList!5421 lm!2023)) lambda!203798)))

(assert (=> d!1486601 (= (extractMap!1792 (t!359454 (toList!5421 lm!2023))) lt!1836471)))

(declare-fun b!4676608 () Bool)

(assert (=> b!4676608 (= e!2917935 (addToMapMapFromBucket!1198 (_2!30024 (h!58387 (t!359454 (toList!5421 lm!2023)))) (extractMap!1792 (t!359454 (t!359454 (toList!5421 lm!2023))))))))

(declare-fun b!4676609 () Bool)

(assert (=> b!4676609 (= e!2917935 (ListMap!4786 Nil!52187))))

(assert (= (and d!1486601 c!800212) b!4676608))

(assert (= (and d!1486601 (not c!800212)) b!4676609))

(declare-fun m!5570649 () Bool)

(assert (=> d!1486601 m!5570649))

(declare-fun m!5570651 () Bool)

(assert (=> d!1486601 m!5570651))

(declare-fun m!5570653 () Bool)

(assert (=> b!4676608 m!5570653))

(assert (=> b!4676608 m!5570653))

(declare-fun m!5570655 () Bool)

(assert (=> b!4676608 m!5570655))

(assert (=> b!4676461 d!1486601))

(declare-fun d!1486607 () Bool)

(declare-fun tail!8381 (List!52312) List!52312)

(assert (=> d!1486607 (= (tail!8379 lm!2023) (ListLongMap!3952 (tail!8381 (toList!5421 lm!2023))))))

(declare-fun bs!1080145 () Bool)

(assert (= bs!1080145 d!1486607))

(declare-fun m!5570657 () Bool)

(assert (=> bs!1080145 m!5570657))

(assert (=> b!4676461 d!1486607))

(declare-fun b!4676620 () Bool)

(declare-fun e!2917941 () List!52311)

(assert (=> b!4676620 (= e!2917941 (Cons!52187 (h!58386 oldBucket!34) (removePairForKey!1361 (t!359453 oldBucket!34) key!4653)))))

(declare-fun b!4676621 () Bool)

(assert (=> b!4676621 (= e!2917941 Nil!52187)))

(declare-fun b!4676618 () Bool)

(declare-fun e!2917940 () List!52311)

(assert (=> b!4676618 (= e!2917940 (t!359453 oldBucket!34))))

(declare-fun d!1486609 () Bool)

(declare-fun lt!1836476 () List!52311)

(assert (=> d!1486609 (not (containsKey!2899 lt!1836476 key!4653))))

(assert (=> d!1486609 (= lt!1836476 e!2917940)))

(declare-fun c!800218 () Bool)

(assert (=> d!1486609 (= c!800218 (and ((_ is Cons!52187) oldBucket!34) (= (_1!30023 (h!58386 oldBucket!34)) key!4653)))))

(assert (=> d!1486609 (noDuplicateKeys!1766 oldBucket!34)))

(assert (=> d!1486609 (= (removePairForKey!1361 oldBucket!34 key!4653) lt!1836476)))

(declare-fun b!4676619 () Bool)

(assert (=> b!4676619 (= e!2917940 e!2917941)))

(declare-fun c!800217 () Bool)

(assert (=> b!4676619 (= c!800217 ((_ is Cons!52187) oldBucket!34))))

(assert (= (and d!1486609 c!800218) b!4676618))

(assert (= (and d!1486609 (not c!800218)) b!4676619))

(assert (= (and b!4676619 c!800217) b!4676620))

(assert (= (and b!4676619 (not c!800217)) b!4676621))

(declare-fun m!5570659 () Bool)

(assert (=> b!4676620 m!5570659))

(declare-fun m!5570661 () Bool)

(assert (=> d!1486609 m!5570661))

(assert (=> d!1486609 m!5570365))

(assert (=> b!4676470 d!1486609))

(declare-fun d!1486611 () Bool)

(assert (=> d!1486611 (= (head!9823 (toList!5421 lm!2023)) (h!58387 (toList!5421 lm!2023)))))

(assert (=> b!4676460 d!1486611))

(declare-fun d!1486613 () Bool)

(assert (=> d!1486613 (= (head!9824 oldBucket!34) (h!58386 oldBucket!34))))

(assert (=> b!4676471 d!1486613))

(declare-fun d!1486615 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9087 (List!52311) (InoxSet tuple2!53458))

(assert (=> d!1486615 (= (eq!955 (+!2068 lt!1836233 (h!58386 oldBucket!34)) (addToMapMapFromBucket!1198 oldBucket!34 lt!1836229)) (= (content!9087 (toList!5422 (+!2068 lt!1836233 (h!58386 oldBucket!34)))) (content!9087 (toList!5422 (addToMapMapFromBucket!1198 oldBucket!34 lt!1836229)))))))

(declare-fun bs!1080153 () Bool)

(assert (= bs!1080153 d!1486615))

(declare-fun m!5570673 () Bool)

(assert (=> bs!1080153 m!5570673))

(declare-fun m!5570675 () Bool)

(assert (=> bs!1080153 m!5570675))

(assert (=> b!4676471 d!1486615))

(declare-fun d!1486621 () Bool)

(assert (=> d!1486621 (eq!955 (addToMapMapFromBucket!1198 (Cons!52187 lt!1836234 lt!1836230) lt!1836229) (+!2068 (addToMapMapFromBucket!1198 lt!1836230 lt!1836229) lt!1836234))))

(declare-fun lt!1836505 () Unit!121725)

(declare-fun choose!32352 (tuple2!53458 List!52311 ListMap!4785) Unit!121725)

(assert (=> d!1486621 (= lt!1836505 (choose!32352 lt!1836234 lt!1836230 lt!1836229))))

(assert (=> d!1486621 (noDuplicateKeys!1766 lt!1836230)))

(assert (=> d!1486621 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!204 lt!1836234 lt!1836230 lt!1836229) lt!1836505)))

(declare-fun bs!1080191 () Bool)

(assert (= bs!1080191 d!1486621))

(assert (=> bs!1080191 m!5570341))

(declare-fun m!5570721 () Bool)

(assert (=> bs!1080191 m!5570721))

(assert (=> bs!1080191 m!5570369))

(assert (=> bs!1080191 m!5570721))

(declare-fun m!5570725 () Bool)

(assert (=> bs!1080191 m!5570725))

(assert (=> bs!1080191 m!5570341))

(assert (=> bs!1080191 m!5570369))

(declare-fun m!5570727 () Bool)

(assert (=> bs!1080191 m!5570727))

(declare-fun m!5570729 () Bool)

(assert (=> bs!1080191 m!5570729))

(assert (=> b!4676471 d!1486621))

(declare-fun bs!1080193 () Bool)

(declare-fun b!4676632 () Bool)

(assert (= bs!1080193 (and b!4676632 b!4676594)))

(declare-fun lambda!203803 () Int)

(assert (=> bs!1080193 (= lambda!203803 lambda!203792)))

(declare-fun bs!1080194 () Bool)

(assert (= bs!1080194 (and b!4676632 b!4676592)))

(assert (=> bs!1080194 (= lambda!203803 lambda!203793)))

(assert (=> bs!1080194 (= (= lt!1836229 lt!1836454) (= lambda!203803 lambda!203794))))

(declare-fun bs!1080195 () Bool)

(assert (= bs!1080195 (and b!4676632 d!1486559)))

(assert (=> bs!1080195 (= (= lt!1836229 lt!1836447) (= lambda!203803 lambda!203795))))

(assert (=> b!4676632 true))

(declare-fun bs!1080196 () Bool)

(declare-fun b!4676630 () Bool)

(assert (= bs!1080196 (and b!4676630 b!4676594)))

(declare-fun lambda!203804 () Int)

(assert (=> bs!1080196 (= lambda!203804 lambda!203792)))

(declare-fun bs!1080197 () Bool)

(assert (= bs!1080197 (and b!4676630 d!1486559)))

(assert (=> bs!1080197 (= (= lt!1836229 lt!1836447) (= lambda!203804 lambda!203795))))

(declare-fun bs!1080198 () Bool)

(assert (= bs!1080198 (and b!4676630 b!4676592)))

(assert (=> bs!1080198 (= (= lt!1836229 lt!1836454) (= lambda!203804 lambda!203794))))

(assert (=> bs!1080198 (= lambda!203804 lambda!203793)))

(declare-fun bs!1080199 () Bool)

(assert (= bs!1080199 (and b!4676630 b!4676632)))

(assert (=> bs!1080199 (= lambda!203804 lambda!203803)))

(assert (=> b!4676630 true))

(declare-fun lt!1836524 () ListMap!4785)

(declare-fun lambda!203805 () Int)

(assert (=> bs!1080196 (= (= lt!1836524 lt!1836229) (= lambda!203805 lambda!203792))))

(assert (=> bs!1080197 (= (= lt!1836524 lt!1836447) (= lambda!203805 lambda!203795))))

(assert (=> bs!1080198 (= (= lt!1836524 lt!1836229) (= lambda!203805 lambda!203793))))

(assert (=> bs!1080199 (= (= lt!1836524 lt!1836229) (= lambda!203805 lambda!203803))))

(assert (=> b!4676630 (= (= lt!1836524 lt!1836229) (= lambda!203805 lambda!203804))))

(assert (=> bs!1080198 (= (= lt!1836524 lt!1836454) (= lambda!203805 lambda!203794))))

(assert (=> b!4676630 true))

(declare-fun bs!1080206 () Bool)

(declare-fun d!1486629 () Bool)

(assert (= bs!1080206 (and d!1486629 b!4676594)))

(declare-fun lambda!203807 () Int)

(declare-fun lt!1836517 () ListMap!4785)

(assert (=> bs!1080206 (= (= lt!1836517 lt!1836229) (= lambda!203807 lambda!203792))))

(declare-fun bs!1080209 () Bool)

(assert (= bs!1080209 (and d!1486629 d!1486559)))

(assert (=> bs!1080209 (= (= lt!1836517 lt!1836447) (= lambda!203807 lambda!203795))))

(declare-fun bs!1080211 () Bool)

(assert (= bs!1080211 (and d!1486629 b!4676592)))

(assert (=> bs!1080211 (= (= lt!1836517 lt!1836229) (= lambda!203807 lambda!203793))))

(declare-fun bs!1080212 () Bool)

(assert (= bs!1080212 (and d!1486629 b!4676630)))

(assert (=> bs!1080212 (= (= lt!1836517 lt!1836524) (= lambda!203807 lambda!203805))))

(declare-fun bs!1080214 () Bool)

(assert (= bs!1080214 (and d!1486629 b!4676632)))

(assert (=> bs!1080214 (= (= lt!1836517 lt!1836229) (= lambda!203807 lambda!203803))))

(assert (=> bs!1080212 (= (= lt!1836517 lt!1836229) (= lambda!203807 lambda!203804))))

(assert (=> bs!1080211 (= (= lt!1836517 lt!1836454) (= lambda!203807 lambda!203794))))

(assert (=> d!1486629 true))

(declare-fun b!4676629 () Bool)

(declare-fun e!2917946 () Bool)

(assert (=> b!4676629 (= e!2917946 (invariantList!1364 (toList!5422 lt!1836517)))))

(declare-fun call!326806 () Bool)

(declare-fun c!800220 () Bool)

(declare-fun bm!326800 () Bool)

(assert (=> bm!326800 (= call!326806 (forall!11189 (toList!5422 lt!1836229) (ite c!800220 lambda!203803 lambda!203804)))))

(declare-fun e!2917947 () ListMap!4785)

(assert (=> b!4676630 (= e!2917947 lt!1836524)))

(declare-fun lt!1836521 () ListMap!4785)

(assert (=> b!4676630 (= lt!1836521 (+!2068 lt!1836229 (h!58386 oldBucket!34)))))

(assert (=> b!4676630 (= lt!1836524 (addToMapMapFromBucket!1198 (t!359453 oldBucket!34) (+!2068 lt!1836229 (h!58386 oldBucket!34))))))

(declare-fun lt!1836506 () Unit!121725)

(declare-fun call!326805 () Unit!121725)

(assert (=> b!4676630 (= lt!1836506 call!326805)))

(assert (=> b!4676630 call!326806))

(declare-fun lt!1836522 () Unit!121725)

(assert (=> b!4676630 (= lt!1836522 lt!1836506)))

(assert (=> b!4676630 (forall!11189 (toList!5422 lt!1836521) lambda!203805)))

(declare-fun lt!1836510 () Unit!121725)

(declare-fun Unit!121773 () Unit!121725)

(assert (=> b!4676630 (= lt!1836510 Unit!121773)))

(assert (=> b!4676630 (forall!11189 (t!359453 oldBucket!34) lambda!203805)))

(declare-fun lt!1836511 () Unit!121725)

(declare-fun Unit!121774 () Unit!121725)

(assert (=> b!4676630 (= lt!1836511 Unit!121774)))

(declare-fun lt!1836523 () Unit!121725)

(declare-fun Unit!121775 () Unit!121725)

(assert (=> b!4676630 (= lt!1836523 Unit!121775)))

(declare-fun lt!1836507 () Unit!121725)

(assert (=> b!4676630 (= lt!1836507 (forallContained!3336 (toList!5422 lt!1836521) lambda!203805 (h!58386 oldBucket!34)))))

(assert (=> b!4676630 (contains!15330 lt!1836521 (_1!30023 (h!58386 oldBucket!34)))))

(declare-fun lt!1836514 () Unit!121725)

(declare-fun Unit!121776 () Unit!121725)

(assert (=> b!4676630 (= lt!1836514 Unit!121776)))

(assert (=> b!4676630 (contains!15330 lt!1836524 (_1!30023 (h!58386 oldBucket!34)))))

(declare-fun lt!1836512 () Unit!121725)

(declare-fun Unit!121777 () Unit!121725)

(assert (=> b!4676630 (= lt!1836512 Unit!121777)))

(assert (=> b!4676630 (forall!11189 oldBucket!34 lambda!203805)))

(declare-fun lt!1836519 () Unit!121725)

(declare-fun Unit!121778 () Unit!121725)

(assert (=> b!4676630 (= lt!1836519 Unit!121778)))

(assert (=> b!4676630 (forall!11189 (toList!5422 lt!1836521) lambda!203805)))

(declare-fun lt!1836513 () Unit!121725)

(declare-fun Unit!121779 () Unit!121725)

(assert (=> b!4676630 (= lt!1836513 Unit!121779)))

(declare-fun lt!1836508 () Unit!121725)

(declare-fun Unit!121780 () Unit!121725)

(assert (=> b!4676630 (= lt!1836508 Unit!121780)))

(declare-fun lt!1836509 () Unit!121725)

(assert (=> b!4676630 (= lt!1836509 (addForallContainsKeyThenBeforeAdding!651 lt!1836229 lt!1836524 (_1!30023 (h!58386 oldBucket!34)) (_2!30023 (h!58386 oldBucket!34))))))

(assert (=> b!4676630 (forall!11189 (toList!5422 lt!1836229) lambda!203805)))

(declare-fun lt!1836515 () Unit!121725)

(assert (=> b!4676630 (= lt!1836515 lt!1836509)))

(assert (=> b!4676630 (forall!11189 (toList!5422 lt!1836229) lambda!203805)))

(declare-fun lt!1836516 () Unit!121725)

(declare-fun Unit!121781 () Unit!121725)

(assert (=> b!4676630 (= lt!1836516 Unit!121781)))

(declare-fun res!1969829 () Bool)

(assert (=> b!4676630 (= res!1969829 (forall!11189 oldBucket!34 lambda!203805))))

(declare-fun e!2917948 () Bool)

(assert (=> b!4676630 (=> (not res!1969829) (not e!2917948))))

(assert (=> b!4676630 e!2917948))

(declare-fun lt!1836525 () Unit!121725)

(declare-fun Unit!121782 () Unit!121725)

(assert (=> b!4676630 (= lt!1836525 Unit!121782)))

(assert (=> d!1486629 e!2917946))

(declare-fun res!1969830 () Bool)

(assert (=> d!1486629 (=> (not res!1969830) (not e!2917946))))

(assert (=> d!1486629 (= res!1969830 (forall!11189 oldBucket!34 lambda!203807))))

(assert (=> d!1486629 (= lt!1836517 e!2917947)))

(assert (=> d!1486629 (= c!800220 ((_ is Nil!52187) oldBucket!34))))

(assert (=> d!1486629 (noDuplicateKeys!1766 oldBucket!34)))

(assert (=> d!1486629 (= (addToMapMapFromBucket!1198 oldBucket!34 lt!1836229) lt!1836517)))

(declare-fun b!4676631 () Bool)

(declare-fun res!1969831 () Bool)

(assert (=> b!4676631 (=> (not res!1969831) (not e!2917946))))

(assert (=> b!4676631 (= res!1969831 (forall!11189 (toList!5422 lt!1836229) lambda!203807))))

(assert (=> b!4676632 (= e!2917947 lt!1836229)))

(declare-fun lt!1836526 () Unit!121725)

(assert (=> b!4676632 (= lt!1836526 call!326805)))

(assert (=> b!4676632 call!326806))

(declare-fun lt!1836518 () Unit!121725)

(assert (=> b!4676632 (= lt!1836518 lt!1836526)))

(declare-fun call!326807 () Bool)

(assert (=> b!4676632 call!326807))

(declare-fun lt!1836520 () Unit!121725)

(declare-fun Unit!121783 () Unit!121725)

(assert (=> b!4676632 (= lt!1836520 Unit!121783)))

(declare-fun b!4676633 () Bool)

(assert (=> b!4676633 (= e!2917948 call!326807)))

(declare-fun bm!326801 () Bool)

(assert (=> bm!326801 (= call!326807 (forall!11189 (toList!5422 lt!1836229) (ite c!800220 lambda!203803 lambda!203805)))))

(declare-fun bm!326802 () Bool)

(assert (=> bm!326802 (= call!326805 (lemmaContainsAllItsOwnKeys!652 lt!1836229))))

(assert (= (and d!1486629 c!800220) b!4676632))

(assert (= (and d!1486629 (not c!800220)) b!4676630))

(assert (= (and b!4676630 res!1969829) b!4676633))

(assert (= (or b!4676632 b!4676630) bm!326802))

(assert (= (or b!4676632 b!4676633) bm!326801))

(assert (= (or b!4676632 b!4676630) bm!326800))

(assert (= (and d!1486629 res!1969830) b!4676631))

(assert (= (and b!4676631 res!1969831) b!4676629))

(assert (=> bm!326802 m!5570603))

(declare-fun m!5570739 () Bool)

(assert (=> bm!326801 m!5570739))

(declare-fun m!5570741 () Bool)

(assert (=> b!4676630 m!5570741))

(declare-fun m!5570743 () Bool)

(assert (=> b!4676630 m!5570743))

(declare-fun m!5570745 () Bool)

(assert (=> b!4676630 m!5570745))

(assert (=> b!4676630 m!5570745))

(declare-fun m!5570747 () Bool)

(assert (=> b!4676630 m!5570747))

(declare-fun m!5570749 () Bool)

(assert (=> b!4676630 m!5570749))

(declare-fun m!5570751 () Bool)

(assert (=> b!4676630 m!5570751))

(declare-fun m!5570753 () Bool)

(assert (=> b!4676630 m!5570753))

(assert (=> b!4676630 m!5570751))

(declare-fun m!5570755 () Bool)

(assert (=> b!4676630 m!5570755))

(assert (=> b!4676630 m!5570749))

(declare-fun m!5570757 () Bool)

(assert (=> b!4676630 m!5570757))

(declare-fun m!5570759 () Bool)

(assert (=> b!4676630 m!5570759))

(assert (=> b!4676630 m!5570741))

(declare-fun m!5570761 () Bool)

(assert (=> b!4676631 m!5570761))

(declare-fun m!5570763 () Bool)

(assert (=> d!1486629 m!5570763))

(assert (=> d!1486629 m!5570365))

(declare-fun m!5570765 () Bool)

(assert (=> bm!326800 m!5570765))

(declare-fun m!5570767 () Bool)

(assert (=> b!4676629 m!5570767))

(assert (=> b!4676471 d!1486629))

(declare-fun d!1486635 () Bool)

(declare-fun e!2917966 () Bool)

(assert (=> d!1486635 e!2917966))

(declare-fun res!1969844 () Bool)

(assert (=> d!1486635 (=> (not res!1969844) (not e!2917966))))

(declare-fun lt!1836538 () ListMap!4785)

(assert (=> d!1486635 (= res!1969844 (contains!15330 lt!1836538 (_1!30023 (h!58386 oldBucket!34))))))

(declare-fun lt!1836536 () List!52311)

(assert (=> d!1486635 (= lt!1836538 (ListMap!4786 lt!1836536))))

(declare-fun lt!1836537 () Unit!121725)

(declare-fun lt!1836535 () Unit!121725)

(assert (=> d!1486635 (= lt!1836537 lt!1836535)))

(declare-datatypes ((Option!11959 0))(
  ( (None!11958) (Some!11958 (v!46321 V!13811)) )
))
(declare-fun getValueByKey!1707 (List!52311 K!13565) Option!11959)

(assert (=> d!1486635 (= (getValueByKey!1707 lt!1836536 (_1!30023 (h!58386 oldBucket!34))) (Some!11958 (_2!30023 (h!58386 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!965 (List!52311 K!13565 V!13811) Unit!121725)

(assert (=> d!1486635 (= lt!1836535 (lemmaContainsTupThenGetReturnValue!965 lt!1836536 (_1!30023 (h!58386 oldBucket!34)) (_2!30023 (h!58386 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!473 (List!52311 K!13565 V!13811) List!52311)

(assert (=> d!1486635 (= lt!1836536 (insertNoDuplicatedKeys!473 (toList!5422 lt!1836233) (_1!30023 (h!58386 oldBucket!34)) (_2!30023 (h!58386 oldBucket!34))))))

(assert (=> d!1486635 (= (+!2068 lt!1836233 (h!58386 oldBucket!34)) lt!1836538)))

(declare-fun b!4676657 () Bool)

(declare-fun res!1969845 () Bool)

(assert (=> b!4676657 (=> (not res!1969845) (not e!2917966))))

(assert (=> b!4676657 (= res!1969845 (= (getValueByKey!1707 (toList!5422 lt!1836538) (_1!30023 (h!58386 oldBucket!34))) (Some!11958 (_2!30023 (h!58386 oldBucket!34)))))))

(declare-fun b!4676658 () Bool)

(declare-fun contains!15332 (List!52311 tuple2!53458) Bool)

(assert (=> b!4676658 (= e!2917966 (contains!15332 (toList!5422 lt!1836538) (h!58386 oldBucket!34)))))

(assert (= (and d!1486635 res!1969844) b!4676657))

(assert (= (and b!4676657 res!1969845) b!4676658))

(declare-fun m!5570771 () Bool)

(assert (=> d!1486635 m!5570771))

(declare-fun m!5570773 () Bool)

(assert (=> d!1486635 m!5570773))

(declare-fun m!5570775 () Bool)

(assert (=> d!1486635 m!5570775))

(declare-fun m!5570777 () Bool)

(assert (=> d!1486635 m!5570777))

(declare-fun m!5570779 () Bool)

(assert (=> b!4676657 m!5570779))

(declare-fun m!5570781 () Bool)

(assert (=> b!4676658 m!5570781))

(assert (=> b!4676471 d!1486635))

(declare-fun d!1486641 () Bool)

(assert (=> d!1486641 (= (eq!955 (addToMapMapFromBucket!1198 (Cons!52187 lt!1836234 lt!1836230) lt!1836229) (+!2068 lt!1836233 lt!1836234)) (= (content!9087 (toList!5422 (addToMapMapFromBucket!1198 (Cons!52187 lt!1836234 lt!1836230) lt!1836229))) (content!9087 (toList!5422 (+!2068 lt!1836233 lt!1836234)))))))

(declare-fun bs!1080224 () Bool)

(assert (= bs!1080224 d!1486641))

(declare-fun m!5570783 () Bool)

(assert (=> bs!1080224 m!5570783))

(declare-fun m!5570785 () Bool)

(assert (=> bs!1080224 m!5570785))

(assert (=> b!4676471 d!1486641))

(declare-fun d!1486643 () Bool)

(declare-fun e!2917967 () Bool)

(assert (=> d!1486643 e!2917967))

(declare-fun res!1969846 () Bool)

(assert (=> d!1486643 (=> (not res!1969846) (not e!2917967))))

(declare-fun lt!1836542 () ListMap!4785)

(assert (=> d!1486643 (= res!1969846 (contains!15330 lt!1836542 (_1!30023 lt!1836234)))))

(declare-fun lt!1836540 () List!52311)

(assert (=> d!1486643 (= lt!1836542 (ListMap!4786 lt!1836540))))

(declare-fun lt!1836541 () Unit!121725)

(declare-fun lt!1836539 () Unit!121725)

(assert (=> d!1486643 (= lt!1836541 lt!1836539)))

(assert (=> d!1486643 (= (getValueByKey!1707 lt!1836540 (_1!30023 lt!1836234)) (Some!11958 (_2!30023 lt!1836234)))))

(assert (=> d!1486643 (= lt!1836539 (lemmaContainsTupThenGetReturnValue!965 lt!1836540 (_1!30023 lt!1836234) (_2!30023 lt!1836234)))))

(assert (=> d!1486643 (= lt!1836540 (insertNoDuplicatedKeys!473 (toList!5422 lt!1836233) (_1!30023 lt!1836234) (_2!30023 lt!1836234)))))

(assert (=> d!1486643 (= (+!2068 lt!1836233 lt!1836234) lt!1836542)))

(declare-fun b!4676659 () Bool)

(declare-fun res!1969847 () Bool)

(assert (=> b!4676659 (=> (not res!1969847) (not e!2917967))))

(assert (=> b!4676659 (= res!1969847 (= (getValueByKey!1707 (toList!5422 lt!1836542) (_1!30023 lt!1836234)) (Some!11958 (_2!30023 lt!1836234))))))

(declare-fun b!4676660 () Bool)

(assert (=> b!4676660 (= e!2917967 (contains!15332 (toList!5422 lt!1836542) lt!1836234))))

(assert (= (and d!1486643 res!1969846) b!4676659))

(assert (= (and b!4676659 res!1969847) b!4676660))

(declare-fun m!5570787 () Bool)

(assert (=> d!1486643 m!5570787))

(declare-fun m!5570789 () Bool)

(assert (=> d!1486643 m!5570789))

(declare-fun m!5570791 () Bool)

(assert (=> d!1486643 m!5570791))

(declare-fun m!5570793 () Bool)

(assert (=> d!1486643 m!5570793))

(declare-fun m!5570795 () Bool)

(assert (=> b!4676659 m!5570795))

(declare-fun m!5570797 () Bool)

(assert (=> b!4676660 m!5570797))

(assert (=> b!4676471 d!1486643))

(declare-fun bs!1080225 () Bool)

(declare-fun b!4676664 () Bool)

(assert (= bs!1080225 (and b!4676664 b!4676594)))

(declare-fun lambda!203808 () Int)

(assert (=> bs!1080225 (= lambda!203808 lambda!203792)))

(declare-fun bs!1080226 () Bool)

(assert (= bs!1080226 (and b!4676664 d!1486559)))

(assert (=> bs!1080226 (= (= lt!1836229 lt!1836447) (= lambda!203808 lambda!203795))))

(declare-fun bs!1080227 () Bool)

(assert (= bs!1080227 (and b!4676664 d!1486629)))

(assert (=> bs!1080227 (= (= lt!1836229 lt!1836517) (= lambda!203808 lambda!203807))))

(declare-fun bs!1080228 () Bool)

(assert (= bs!1080228 (and b!4676664 b!4676592)))

(assert (=> bs!1080228 (= lambda!203808 lambda!203793)))

(declare-fun bs!1080229 () Bool)

(assert (= bs!1080229 (and b!4676664 b!4676630)))

(assert (=> bs!1080229 (= (= lt!1836229 lt!1836524) (= lambda!203808 lambda!203805))))

(declare-fun bs!1080230 () Bool)

(assert (= bs!1080230 (and b!4676664 b!4676632)))

(assert (=> bs!1080230 (= lambda!203808 lambda!203803)))

(assert (=> bs!1080229 (= lambda!203808 lambda!203804)))

(assert (=> bs!1080228 (= (= lt!1836229 lt!1836454) (= lambda!203808 lambda!203794))))

(assert (=> b!4676664 true))

(declare-fun bs!1080231 () Bool)

(declare-fun b!4676662 () Bool)

(assert (= bs!1080231 (and b!4676662 b!4676664)))

(declare-fun lambda!203809 () Int)

(assert (=> bs!1080231 (= lambda!203809 lambda!203808)))

(declare-fun bs!1080232 () Bool)

(assert (= bs!1080232 (and b!4676662 b!4676594)))

(assert (=> bs!1080232 (= lambda!203809 lambda!203792)))

(declare-fun bs!1080233 () Bool)

(assert (= bs!1080233 (and b!4676662 d!1486559)))

(assert (=> bs!1080233 (= (= lt!1836229 lt!1836447) (= lambda!203809 lambda!203795))))

(declare-fun bs!1080234 () Bool)

(assert (= bs!1080234 (and b!4676662 d!1486629)))

(assert (=> bs!1080234 (= (= lt!1836229 lt!1836517) (= lambda!203809 lambda!203807))))

(declare-fun bs!1080235 () Bool)

(assert (= bs!1080235 (and b!4676662 b!4676592)))

(assert (=> bs!1080235 (= lambda!203809 lambda!203793)))

(declare-fun bs!1080236 () Bool)

(assert (= bs!1080236 (and b!4676662 b!4676630)))

(assert (=> bs!1080236 (= (= lt!1836229 lt!1836524) (= lambda!203809 lambda!203805))))

(declare-fun bs!1080237 () Bool)

(assert (= bs!1080237 (and b!4676662 b!4676632)))

(assert (=> bs!1080237 (= lambda!203809 lambda!203803)))

(assert (=> bs!1080236 (= lambda!203809 lambda!203804)))

(assert (=> bs!1080235 (= (= lt!1836229 lt!1836454) (= lambda!203809 lambda!203794))))

(assert (=> b!4676662 true))

(declare-fun lt!1836561 () ListMap!4785)

(declare-fun lambda!203810 () Int)

(assert (=> bs!1080231 (= (= lt!1836561 lt!1836229) (= lambda!203810 lambda!203808))))

(assert (=> bs!1080232 (= (= lt!1836561 lt!1836229) (= lambda!203810 lambda!203792))))

(assert (=> bs!1080233 (= (= lt!1836561 lt!1836447) (= lambda!203810 lambda!203795))))

(assert (=> b!4676662 (= (= lt!1836561 lt!1836229) (= lambda!203810 lambda!203809))))

(assert (=> bs!1080234 (= (= lt!1836561 lt!1836517) (= lambda!203810 lambda!203807))))

(assert (=> bs!1080235 (= (= lt!1836561 lt!1836229) (= lambda!203810 lambda!203793))))

(assert (=> bs!1080236 (= (= lt!1836561 lt!1836524) (= lambda!203810 lambda!203805))))

(assert (=> bs!1080237 (= (= lt!1836561 lt!1836229) (= lambda!203810 lambda!203803))))

(assert (=> bs!1080236 (= (= lt!1836561 lt!1836229) (= lambda!203810 lambda!203804))))

(assert (=> bs!1080235 (= (= lt!1836561 lt!1836454) (= lambda!203810 lambda!203794))))

(assert (=> b!4676662 true))

(declare-fun bs!1080238 () Bool)

(declare-fun d!1486645 () Bool)

(assert (= bs!1080238 (and d!1486645 b!4676664)))

(declare-fun lt!1836554 () ListMap!4785)

(declare-fun lambda!203811 () Int)

(assert (=> bs!1080238 (= (= lt!1836554 lt!1836229) (= lambda!203811 lambda!203808))))

(declare-fun bs!1080239 () Bool)

(assert (= bs!1080239 (and d!1486645 b!4676594)))

(assert (=> bs!1080239 (= (= lt!1836554 lt!1836229) (= lambda!203811 lambda!203792))))

(declare-fun bs!1080240 () Bool)

(assert (= bs!1080240 (and d!1486645 d!1486559)))

(assert (=> bs!1080240 (= (= lt!1836554 lt!1836447) (= lambda!203811 lambda!203795))))

(declare-fun bs!1080241 () Bool)

(assert (= bs!1080241 (and d!1486645 b!4676662)))

(assert (=> bs!1080241 (= (= lt!1836554 lt!1836229) (= lambda!203811 lambda!203809))))

(declare-fun bs!1080242 () Bool)

(assert (= bs!1080242 (and d!1486645 d!1486629)))

(assert (=> bs!1080242 (= (= lt!1836554 lt!1836517) (= lambda!203811 lambda!203807))))

(declare-fun bs!1080243 () Bool)

(assert (= bs!1080243 (and d!1486645 b!4676592)))

(assert (=> bs!1080243 (= (= lt!1836554 lt!1836229) (= lambda!203811 lambda!203793))))

(declare-fun bs!1080244 () Bool)

(assert (= bs!1080244 (and d!1486645 b!4676630)))

(assert (=> bs!1080244 (= (= lt!1836554 lt!1836524) (= lambda!203811 lambda!203805))))

(declare-fun bs!1080245 () Bool)

(assert (= bs!1080245 (and d!1486645 b!4676632)))

(assert (=> bs!1080245 (= (= lt!1836554 lt!1836229) (= lambda!203811 lambda!203803))))

(assert (=> bs!1080241 (= (= lt!1836554 lt!1836561) (= lambda!203811 lambda!203810))))

(assert (=> bs!1080244 (= (= lt!1836554 lt!1836229) (= lambda!203811 lambda!203804))))

(assert (=> bs!1080243 (= (= lt!1836554 lt!1836454) (= lambda!203811 lambda!203794))))

(assert (=> d!1486645 true))

(declare-fun b!4676661 () Bool)

(declare-fun e!2917968 () Bool)

(assert (=> b!4676661 (= e!2917968 (invariantList!1364 (toList!5422 lt!1836554)))))

(declare-fun c!800221 () Bool)

(declare-fun call!326809 () Bool)

(declare-fun bm!326803 () Bool)

(assert (=> bm!326803 (= call!326809 (forall!11189 (toList!5422 lt!1836229) (ite c!800221 lambda!203808 lambda!203809)))))

(declare-fun e!2917969 () ListMap!4785)

(assert (=> b!4676662 (= e!2917969 lt!1836561)))

(declare-fun lt!1836558 () ListMap!4785)

(assert (=> b!4676662 (= lt!1836558 (+!2068 lt!1836229 (h!58386 (Cons!52187 lt!1836234 lt!1836230))))))

(assert (=> b!4676662 (= lt!1836561 (addToMapMapFromBucket!1198 (t!359453 (Cons!52187 lt!1836234 lt!1836230)) (+!2068 lt!1836229 (h!58386 (Cons!52187 lt!1836234 lt!1836230)))))))

(declare-fun lt!1836543 () Unit!121725)

(declare-fun call!326808 () Unit!121725)

(assert (=> b!4676662 (= lt!1836543 call!326808)))

(assert (=> b!4676662 call!326809))

(declare-fun lt!1836559 () Unit!121725)

(assert (=> b!4676662 (= lt!1836559 lt!1836543)))

(assert (=> b!4676662 (forall!11189 (toList!5422 lt!1836558) lambda!203810)))

(declare-fun lt!1836547 () Unit!121725)

(declare-fun Unit!121784 () Unit!121725)

(assert (=> b!4676662 (= lt!1836547 Unit!121784)))

(assert (=> b!4676662 (forall!11189 (t!359453 (Cons!52187 lt!1836234 lt!1836230)) lambda!203810)))

(declare-fun lt!1836548 () Unit!121725)

(declare-fun Unit!121785 () Unit!121725)

(assert (=> b!4676662 (= lt!1836548 Unit!121785)))

(declare-fun lt!1836560 () Unit!121725)

(declare-fun Unit!121786 () Unit!121725)

(assert (=> b!4676662 (= lt!1836560 Unit!121786)))

(declare-fun lt!1836544 () Unit!121725)

(assert (=> b!4676662 (= lt!1836544 (forallContained!3336 (toList!5422 lt!1836558) lambda!203810 (h!58386 (Cons!52187 lt!1836234 lt!1836230))))))

(assert (=> b!4676662 (contains!15330 lt!1836558 (_1!30023 (h!58386 (Cons!52187 lt!1836234 lt!1836230))))))

(declare-fun lt!1836551 () Unit!121725)

(declare-fun Unit!121787 () Unit!121725)

(assert (=> b!4676662 (= lt!1836551 Unit!121787)))

(assert (=> b!4676662 (contains!15330 lt!1836561 (_1!30023 (h!58386 (Cons!52187 lt!1836234 lt!1836230))))))

(declare-fun lt!1836549 () Unit!121725)

(declare-fun Unit!121788 () Unit!121725)

(assert (=> b!4676662 (= lt!1836549 Unit!121788)))

(assert (=> b!4676662 (forall!11189 (Cons!52187 lt!1836234 lt!1836230) lambda!203810)))

(declare-fun lt!1836556 () Unit!121725)

(declare-fun Unit!121789 () Unit!121725)

(assert (=> b!4676662 (= lt!1836556 Unit!121789)))

(assert (=> b!4676662 (forall!11189 (toList!5422 lt!1836558) lambda!203810)))

(declare-fun lt!1836550 () Unit!121725)

(declare-fun Unit!121790 () Unit!121725)

(assert (=> b!4676662 (= lt!1836550 Unit!121790)))

(declare-fun lt!1836545 () Unit!121725)

(declare-fun Unit!121791 () Unit!121725)

(assert (=> b!4676662 (= lt!1836545 Unit!121791)))

(declare-fun lt!1836546 () Unit!121725)

(assert (=> b!4676662 (= lt!1836546 (addForallContainsKeyThenBeforeAdding!651 lt!1836229 lt!1836561 (_1!30023 (h!58386 (Cons!52187 lt!1836234 lt!1836230))) (_2!30023 (h!58386 (Cons!52187 lt!1836234 lt!1836230)))))))

(assert (=> b!4676662 (forall!11189 (toList!5422 lt!1836229) lambda!203810)))

(declare-fun lt!1836552 () Unit!121725)

(assert (=> b!4676662 (= lt!1836552 lt!1836546)))

(assert (=> b!4676662 (forall!11189 (toList!5422 lt!1836229) lambda!203810)))

(declare-fun lt!1836553 () Unit!121725)

(declare-fun Unit!121793 () Unit!121725)

(assert (=> b!4676662 (= lt!1836553 Unit!121793)))

(declare-fun res!1969848 () Bool)

(assert (=> b!4676662 (= res!1969848 (forall!11189 (Cons!52187 lt!1836234 lt!1836230) lambda!203810))))

(declare-fun e!2917970 () Bool)

(assert (=> b!4676662 (=> (not res!1969848) (not e!2917970))))

(assert (=> b!4676662 e!2917970))

(declare-fun lt!1836562 () Unit!121725)

(declare-fun Unit!121794 () Unit!121725)

(assert (=> b!4676662 (= lt!1836562 Unit!121794)))

(assert (=> d!1486645 e!2917968))

(declare-fun res!1969849 () Bool)

(assert (=> d!1486645 (=> (not res!1969849) (not e!2917968))))

(assert (=> d!1486645 (= res!1969849 (forall!11189 (Cons!52187 lt!1836234 lt!1836230) lambda!203811))))

(assert (=> d!1486645 (= lt!1836554 e!2917969)))

(assert (=> d!1486645 (= c!800221 ((_ is Nil!52187) (Cons!52187 lt!1836234 lt!1836230)))))

(assert (=> d!1486645 (noDuplicateKeys!1766 (Cons!52187 lt!1836234 lt!1836230))))

(assert (=> d!1486645 (= (addToMapMapFromBucket!1198 (Cons!52187 lt!1836234 lt!1836230) lt!1836229) lt!1836554)))

(declare-fun b!4676663 () Bool)

(declare-fun res!1969850 () Bool)

(assert (=> b!4676663 (=> (not res!1969850) (not e!2917968))))

(assert (=> b!4676663 (= res!1969850 (forall!11189 (toList!5422 lt!1836229) lambda!203811))))

(assert (=> b!4676664 (= e!2917969 lt!1836229)))

(declare-fun lt!1836563 () Unit!121725)

(assert (=> b!4676664 (= lt!1836563 call!326808)))

(assert (=> b!4676664 call!326809))

(declare-fun lt!1836555 () Unit!121725)

(assert (=> b!4676664 (= lt!1836555 lt!1836563)))

(declare-fun call!326810 () Bool)

(assert (=> b!4676664 call!326810))

(declare-fun lt!1836557 () Unit!121725)

(declare-fun Unit!121799 () Unit!121725)

(assert (=> b!4676664 (= lt!1836557 Unit!121799)))

(declare-fun b!4676665 () Bool)

(assert (=> b!4676665 (= e!2917970 call!326810)))

(declare-fun bm!326804 () Bool)

(assert (=> bm!326804 (= call!326810 (forall!11189 (toList!5422 lt!1836229) (ite c!800221 lambda!203808 lambda!203810)))))

(declare-fun bm!326805 () Bool)

(assert (=> bm!326805 (= call!326808 (lemmaContainsAllItsOwnKeys!652 lt!1836229))))

(assert (= (and d!1486645 c!800221) b!4676664))

(assert (= (and d!1486645 (not c!800221)) b!4676662))

(assert (= (and b!4676662 res!1969848) b!4676665))

(assert (= (or b!4676664 b!4676662) bm!326805))

(assert (= (or b!4676664 b!4676665) bm!326804))

(assert (= (or b!4676664 b!4676662) bm!326803))

(assert (= (and d!1486645 res!1969849) b!4676663))

(assert (= (and b!4676663 res!1969850) b!4676661))

(assert (=> bm!326805 m!5570603))

(declare-fun m!5570799 () Bool)

(assert (=> bm!326804 m!5570799))

(declare-fun m!5570801 () Bool)

(assert (=> b!4676662 m!5570801))

(declare-fun m!5570803 () Bool)

(assert (=> b!4676662 m!5570803))

(declare-fun m!5570805 () Bool)

(assert (=> b!4676662 m!5570805))

(assert (=> b!4676662 m!5570805))

(declare-fun m!5570807 () Bool)

(assert (=> b!4676662 m!5570807))

(declare-fun m!5570809 () Bool)

(assert (=> b!4676662 m!5570809))

(declare-fun m!5570811 () Bool)

(assert (=> b!4676662 m!5570811))

(declare-fun m!5570813 () Bool)

(assert (=> b!4676662 m!5570813))

(assert (=> b!4676662 m!5570811))

(declare-fun m!5570815 () Bool)

(assert (=> b!4676662 m!5570815))

(assert (=> b!4676662 m!5570809))

(declare-fun m!5570817 () Bool)

(assert (=> b!4676662 m!5570817))

(declare-fun m!5570819 () Bool)

(assert (=> b!4676662 m!5570819))

(assert (=> b!4676662 m!5570801))

(declare-fun m!5570821 () Bool)

(assert (=> b!4676663 m!5570821))

(declare-fun m!5570823 () Bool)

(assert (=> d!1486645 m!5570823))

(declare-fun m!5570825 () Bool)

(assert (=> d!1486645 m!5570825))

(declare-fun m!5570827 () Bool)

(assert (=> bm!326803 m!5570827))

(declare-fun m!5570829 () Bool)

(assert (=> b!4676661 m!5570829))

(assert (=> b!4676471 d!1486645))

(declare-fun bs!1080246 () Bool)

(declare-fun d!1486647 () Bool)

(assert (= bs!1080246 (and d!1486647 b!4676664)))

(declare-fun lambda!203814 () Int)

(assert (=> bs!1080246 (not (= lambda!203814 lambda!203808))))

(declare-fun bs!1080247 () Bool)

(assert (= bs!1080247 (and d!1486647 b!4676594)))

(assert (=> bs!1080247 (not (= lambda!203814 lambda!203792))))

(declare-fun bs!1080248 () Bool)

(assert (= bs!1080248 (and d!1486647 d!1486559)))

(assert (=> bs!1080248 (not (= lambda!203814 lambda!203795))))

(declare-fun bs!1080249 () Bool)

(assert (= bs!1080249 (and d!1486647 b!4676662)))

(assert (=> bs!1080249 (not (= lambda!203814 lambda!203809))))

(declare-fun bs!1080250 () Bool)

(assert (= bs!1080250 (and d!1486647 d!1486629)))

(assert (=> bs!1080250 (not (= lambda!203814 lambda!203807))))

(declare-fun bs!1080251 () Bool)

(assert (= bs!1080251 (and d!1486647 d!1486645)))

(assert (=> bs!1080251 (not (= lambda!203814 lambda!203811))))

(declare-fun bs!1080252 () Bool)

(assert (= bs!1080252 (and d!1486647 b!4676592)))

(assert (=> bs!1080252 (not (= lambda!203814 lambda!203793))))

(declare-fun bs!1080253 () Bool)

(assert (= bs!1080253 (and d!1486647 b!4676630)))

(assert (=> bs!1080253 (not (= lambda!203814 lambda!203805))))

(declare-fun bs!1080254 () Bool)

(assert (= bs!1080254 (and d!1486647 b!4676632)))

(assert (=> bs!1080254 (not (= lambda!203814 lambda!203803))))

(assert (=> bs!1080249 (not (= lambda!203814 lambda!203810))))

(assert (=> bs!1080253 (not (= lambda!203814 lambda!203804))))

(assert (=> bs!1080252 (not (= lambda!203814 lambda!203794))))

(assert (=> d!1486647 true))

(assert (=> d!1486647 true))

(assert (=> d!1486647 (= (allKeysSameHash!1592 newBucket!218 hash!405 hashF!1323) (forall!11189 newBucket!218 lambda!203814))))

(declare-fun bs!1080255 () Bool)

(assert (= bs!1080255 d!1486647))

(declare-fun m!5570831 () Bool)

(assert (=> bs!1080255 m!5570831))

(assert (=> b!4676464 d!1486647))

(declare-fun b!4676688 () Bool)

(declare-fun e!2917985 () Unit!121725)

(declare-fun lt!1836587 () Unit!121725)

(assert (=> b!4676688 (= e!2917985 lt!1836587)))

(declare-fun lt!1836585 () Unit!121725)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1599 (List!52311 K!13565) Unit!121725)

(assert (=> b!4676688 (= lt!1836585 (lemmaContainsKeyImpliesGetValueByKeyDefined!1599 (toList!5422 lt!1836232) key!4653))))

(declare-fun isDefined!9214 (Option!11959) Bool)

(assert (=> b!4676688 (isDefined!9214 (getValueByKey!1707 (toList!5422 lt!1836232) key!4653))))

(declare-fun lt!1836584 () Unit!121725)

(assert (=> b!4676688 (= lt!1836584 lt!1836585)))

(declare-fun lemmaInListThenGetKeysListContains!799 (List!52311 K!13565) Unit!121725)

(assert (=> b!4676688 (= lt!1836587 (lemmaInListThenGetKeysListContains!799 (toList!5422 lt!1836232) key!4653))))

(declare-fun call!326813 () Bool)

(assert (=> b!4676688 call!326813))

(declare-fun d!1486649 () Bool)

(declare-fun e!2917984 () Bool)

(assert (=> d!1486649 e!2917984))

(declare-fun res!1969858 () Bool)

(assert (=> d!1486649 (=> res!1969858 e!2917984)))

(declare-fun e!2917986 () Bool)

(assert (=> d!1486649 (= res!1969858 e!2917986)))

(declare-fun res!1969859 () Bool)

(assert (=> d!1486649 (=> (not res!1969859) (not e!2917986))))

(declare-fun lt!1836582 () Bool)

(assert (=> d!1486649 (= res!1969859 (not lt!1836582))))

(declare-fun lt!1836586 () Bool)

(assert (=> d!1486649 (= lt!1836582 lt!1836586)))

(declare-fun lt!1836581 () Unit!121725)

(assert (=> d!1486649 (= lt!1836581 e!2917985)))

(declare-fun c!800230 () Bool)

(assert (=> d!1486649 (= c!800230 lt!1836586)))

(declare-fun containsKey!2901 (List!52311 K!13565) Bool)

(assert (=> d!1486649 (= lt!1836586 (containsKey!2901 (toList!5422 lt!1836232) key!4653))))

(assert (=> d!1486649 (= (contains!15330 lt!1836232 key!4653) lt!1836582)))

(declare-fun bm!326808 () Bool)

(declare-datatypes ((List!52314 0))(
  ( (Nil!52190) (Cons!52190 (h!58391 K!13565) (t!359458 List!52314)) )
))
(declare-fun e!2917988 () List!52314)

(declare-fun contains!15333 (List!52314 K!13565) Bool)

(assert (=> bm!326808 (= call!326813 (contains!15333 e!2917988 key!4653))))

(declare-fun c!800228 () Bool)

(assert (=> bm!326808 (= c!800228 c!800230)))

(declare-fun b!4676689 () Bool)

(declare-fun keys!18579 (ListMap!4785) List!52314)

(assert (=> b!4676689 (= e!2917988 (keys!18579 lt!1836232))))

(declare-fun b!4676690 () Bool)

(declare-fun e!2917983 () Bool)

(assert (=> b!4676690 (= e!2917983 (contains!15333 (keys!18579 lt!1836232) key!4653))))

(declare-fun b!4676691 () Bool)

(assert (=> b!4676691 (= e!2917984 e!2917983)))

(declare-fun res!1969857 () Bool)

(assert (=> b!4676691 (=> (not res!1969857) (not e!2917983))))

(assert (=> b!4676691 (= res!1969857 (isDefined!9214 (getValueByKey!1707 (toList!5422 lt!1836232) key!4653)))))

(declare-fun b!4676692 () Bool)

(declare-fun getKeysList!804 (List!52311) List!52314)

(assert (=> b!4676692 (= e!2917988 (getKeysList!804 (toList!5422 lt!1836232)))))

(declare-fun b!4676693 () Bool)

(assert (=> b!4676693 (= e!2917986 (not (contains!15333 (keys!18579 lt!1836232) key!4653)))))

(declare-fun b!4676694 () Bool)

(declare-fun e!2917987 () Unit!121725)

(declare-fun Unit!121806 () Unit!121725)

(assert (=> b!4676694 (= e!2917987 Unit!121806)))

(declare-fun b!4676695 () Bool)

(assert (=> b!4676695 false))

(declare-fun lt!1836583 () Unit!121725)

(declare-fun lt!1836580 () Unit!121725)

(assert (=> b!4676695 (= lt!1836583 lt!1836580)))

(assert (=> b!4676695 (containsKey!2901 (toList!5422 lt!1836232) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!803 (List!52311 K!13565) Unit!121725)

(assert (=> b!4676695 (= lt!1836580 (lemmaInGetKeysListThenContainsKey!803 (toList!5422 lt!1836232) key!4653))))

(declare-fun Unit!121807 () Unit!121725)

(assert (=> b!4676695 (= e!2917987 Unit!121807)))

(declare-fun b!4676696 () Bool)

(assert (=> b!4676696 (= e!2917985 e!2917987)))

(declare-fun c!800229 () Bool)

(assert (=> b!4676696 (= c!800229 call!326813)))

(assert (= (and d!1486649 c!800230) b!4676688))

(assert (= (and d!1486649 (not c!800230)) b!4676696))

(assert (= (and b!4676696 c!800229) b!4676695))

(assert (= (and b!4676696 (not c!800229)) b!4676694))

(assert (= (or b!4676688 b!4676696) bm!326808))

(assert (= (and bm!326808 c!800228) b!4676692))

(assert (= (and bm!326808 (not c!800228)) b!4676689))

(assert (= (and d!1486649 res!1969859) b!4676693))

(assert (= (and d!1486649 (not res!1969858)) b!4676691))

(assert (= (and b!4676691 res!1969857) b!4676690))

(declare-fun m!5570833 () Bool)

(assert (=> bm!326808 m!5570833))

(declare-fun m!5570835 () Bool)

(assert (=> b!4676692 m!5570835))

(declare-fun m!5570837 () Bool)

(assert (=> b!4676690 m!5570837))

(assert (=> b!4676690 m!5570837))

(declare-fun m!5570839 () Bool)

(assert (=> b!4676690 m!5570839))

(assert (=> b!4676693 m!5570837))

(assert (=> b!4676693 m!5570837))

(assert (=> b!4676693 m!5570839))

(declare-fun m!5570841 () Bool)

(assert (=> b!4676688 m!5570841))

(declare-fun m!5570843 () Bool)

(assert (=> b!4676688 m!5570843))

(assert (=> b!4676688 m!5570843))

(declare-fun m!5570845 () Bool)

(assert (=> b!4676688 m!5570845))

(declare-fun m!5570847 () Bool)

(assert (=> b!4676688 m!5570847))

(assert (=> b!4676689 m!5570837))

(declare-fun m!5570849 () Bool)

(assert (=> d!1486649 m!5570849))

(assert (=> b!4676695 m!5570849))

(declare-fun m!5570851 () Bool)

(assert (=> b!4676695 m!5570851))

(assert (=> b!4676691 m!5570843))

(assert (=> b!4676691 m!5570843))

(assert (=> b!4676691 m!5570845))

(assert (=> b!4676462 d!1486649))

(declare-fun bs!1080256 () Bool)

(declare-fun d!1486651 () Bool)

(assert (= bs!1080256 (and d!1486651 start!472004)))

(declare-fun lambda!203815 () Int)

(assert (=> bs!1080256 (= lambda!203815 lambda!203707)))

(declare-fun bs!1080257 () Bool)

(assert (= bs!1080257 (and d!1486651 d!1486601)))

(assert (=> bs!1080257 (= lambda!203815 lambda!203798)))

(declare-fun lt!1836588 () ListMap!4785)

(assert (=> d!1486651 (invariantList!1364 (toList!5422 lt!1836588))))

(declare-fun e!2917989 () ListMap!4785)

(assert (=> d!1486651 (= lt!1836588 e!2917989)))

(declare-fun c!800231 () Bool)

(assert (=> d!1486651 (= c!800231 ((_ is Cons!52188) (toList!5421 lm!2023)))))

(assert (=> d!1486651 (forall!11187 (toList!5421 lm!2023) lambda!203815)))

(assert (=> d!1486651 (= (extractMap!1792 (toList!5421 lm!2023)) lt!1836588)))

(declare-fun b!4676697 () Bool)

(assert (=> b!4676697 (= e!2917989 (addToMapMapFromBucket!1198 (_2!30024 (h!58387 (toList!5421 lm!2023))) (extractMap!1792 (t!359454 (toList!5421 lm!2023)))))))

(declare-fun b!4676698 () Bool)

(assert (=> b!4676698 (= e!2917989 (ListMap!4786 Nil!52187))))

(assert (= (and d!1486651 c!800231) b!4676697))

(assert (= (and d!1486651 (not c!800231)) b!4676698))

(declare-fun m!5570853 () Bool)

(assert (=> d!1486651 m!5570853))

(declare-fun m!5570855 () Bool)

(assert (=> d!1486651 m!5570855))

(assert (=> b!4676697 m!5570351))

(assert (=> b!4676697 m!5570351))

(declare-fun m!5570857 () Bool)

(assert (=> b!4676697 m!5570857))

(assert (=> b!4676462 d!1486651))

(declare-fun bs!1080258 () Bool)

(declare-fun d!1486653 () Bool)

(assert (= bs!1080258 (and d!1486653 start!472004)))

(declare-fun lambda!203818 () Int)

(assert (=> bs!1080258 (not (= lambda!203818 lambda!203707))))

(declare-fun bs!1080259 () Bool)

(assert (= bs!1080259 (and d!1486653 d!1486601)))

(assert (=> bs!1080259 (not (= lambda!203818 lambda!203798))))

(declare-fun bs!1080260 () Bool)

(assert (= bs!1080260 (and d!1486653 d!1486651)))

(assert (=> bs!1080260 (not (= lambda!203818 lambda!203815))))

(assert (=> d!1486653 true))

(assert (=> d!1486653 (= (allKeysSameHashInMap!1680 lm!2023 hashF!1323) (forall!11187 (toList!5421 lm!2023) lambda!203818))))

(declare-fun bs!1080261 () Bool)

(assert (= bs!1080261 d!1486653))

(declare-fun m!5570859 () Bool)

(assert (=> bs!1080261 m!5570859))

(assert (=> b!4676463 d!1486653))

(declare-fun d!1486655 () Bool)

(declare-fun hash!3933 (Hashable!6135 K!13565) (_ BitVec 64))

(assert (=> d!1486655 (= (hash!3932 hashF!1323 key!4653) (hash!3933 hashF!1323 key!4653))))

(declare-fun bs!1080262 () Bool)

(assert (= bs!1080262 d!1486655))

(declare-fun m!5570861 () Bool)

(assert (=> bs!1080262 m!5570861))

(assert (=> b!4676466 d!1486655))

(declare-fun d!1486657 () Bool)

(declare-fun res!1969864 () Bool)

(declare-fun e!2917994 () Bool)

(assert (=> d!1486657 (=> res!1969864 e!2917994)))

(assert (=> d!1486657 (= res!1969864 (not ((_ is Cons!52187) newBucket!218)))))

(assert (=> d!1486657 (= (noDuplicateKeys!1766 newBucket!218) e!2917994)))

(declare-fun b!4676705 () Bool)

(declare-fun e!2917995 () Bool)

(assert (=> b!4676705 (= e!2917994 e!2917995)))

(declare-fun res!1969865 () Bool)

(assert (=> b!4676705 (=> (not res!1969865) (not e!2917995))))

(assert (=> b!4676705 (= res!1969865 (not (containsKey!2899 (t!359453 newBucket!218) (_1!30023 (h!58386 newBucket!218)))))))

(declare-fun b!4676706 () Bool)

(assert (=> b!4676706 (= e!2917995 (noDuplicateKeys!1766 (t!359453 newBucket!218)))))

(assert (= (and d!1486657 (not res!1969864)) b!4676705))

(assert (= (and b!4676705 res!1969865) b!4676706))

(declare-fun m!5570863 () Bool)

(assert (=> b!4676705 m!5570863))

(declare-fun m!5570865 () Bool)

(assert (=> b!4676706 m!5570865))

(assert (=> b!4676467 d!1486657))

(declare-fun bs!1080263 () Bool)

(declare-fun b!4676710 () Bool)

(assert (= bs!1080263 (and b!4676710 b!4676664)))

(declare-fun lambda!203819 () Int)

(assert (=> bs!1080263 (= lambda!203819 lambda!203808)))

(declare-fun bs!1080264 () Bool)

(assert (= bs!1080264 (and b!4676710 b!4676594)))

(assert (=> bs!1080264 (= lambda!203819 lambda!203792)))

(declare-fun bs!1080265 () Bool)

(assert (= bs!1080265 (and b!4676710 d!1486559)))

(assert (=> bs!1080265 (= (= lt!1836229 lt!1836447) (= lambda!203819 lambda!203795))))

(declare-fun bs!1080266 () Bool)

(assert (= bs!1080266 (and b!4676710 d!1486629)))

(assert (=> bs!1080266 (= (= lt!1836229 lt!1836517) (= lambda!203819 lambda!203807))))

(declare-fun bs!1080267 () Bool)

(assert (= bs!1080267 (and b!4676710 d!1486645)))

(assert (=> bs!1080267 (= (= lt!1836229 lt!1836554) (= lambda!203819 lambda!203811))))

(declare-fun bs!1080268 () Bool)

(assert (= bs!1080268 (and b!4676710 b!4676592)))

(assert (=> bs!1080268 (= lambda!203819 lambda!203793)))

(declare-fun bs!1080269 () Bool)

(assert (= bs!1080269 (and b!4676710 b!4676630)))

(assert (=> bs!1080269 (= (= lt!1836229 lt!1836524) (= lambda!203819 lambda!203805))))

(declare-fun bs!1080270 () Bool)

(assert (= bs!1080270 (and b!4676710 b!4676632)))

(assert (=> bs!1080270 (= lambda!203819 lambda!203803)))

(declare-fun bs!1080271 () Bool)

(assert (= bs!1080271 (and b!4676710 b!4676662)))

(assert (=> bs!1080271 (= (= lt!1836229 lt!1836561) (= lambda!203819 lambda!203810))))

(assert (=> bs!1080269 (= lambda!203819 lambda!203804)))

(assert (=> bs!1080268 (= (= lt!1836229 lt!1836454) (= lambda!203819 lambda!203794))))

(assert (=> bs!1080271 (= lambda!203819 lambda!203809)))

(declare-fun bs!1080272 () Bool)

(assert (= bs!1080272 (and b!4676710 d!1486647)))

(assert (=> bs!1080272 (not (= lambda!203819 lambda!203814))))

(assert (=> b!4676710 true))

(declare-fun bs!1080273 () Bool)

(declare-fun b!4676708 () Bool)

(assert (= bs!1080273 (and b!4676708 b!4676664)))

(declare-fun lambda!203820 () Int)

(assert (=> bs!1080273 (= lambda!203820 lambda!203808)))

(declare-fun bs!1080274 () Bool)

(assert (= bs!1080274 (and b!4676708 b!4676710)))

(assert (=> bs!1080274 (= lambda!203820 lambda!203819)))

(declare-fun bs!1080275 () Bool)

(assert (= bs!1080275 (and b!4676708 b!4676594)))

(assert (=> bs!1080275 (= lambda!203820 lambda!203792)))

(declare-fun bs!1080276 () Bool)

(assert (= bs!1080276 (and b!4676708 d!1486559)))

(assert (=> bs!1080276 (= (= lt!1836229 lt!1836447) (= lambda!203820 lambda!203795))))

(declare-fun bs!1080277 () Bool)

(assert (= bs!1080277 (and b!4676708 d!1486629)))

(assert (=> bs!1080277 (= (= lt!1836229 lt!1836517) (= lambda!203820 lambda!203807))))

(declare-fun bs!1080278 () Bool)

(assert (= bs!1080278 (and b!4676708 d!1486645)))

(assert (=> bs!1080278 (= (= lt!1836229 lt!1836554) (= lambda!203820 lambda!203811))))

(declare-fun bs!1080279 () Bool)

(assert (= bs!1080279 (and b!4676708 b!4676592)))

(assert (=> bs!1080279 (= lambda!203820 lambda!203793)))

(declare-fun bs!1080280 () Bool)

(assert (= bs!1080280 (and b!4676708 b!4676630)))

(assert (=> bs!1080280 (= (= lt!1836229 lt!1836524) (= lambda!203820 lambda!203805))))

(declare-fun bs!1080281 () Bool)

(assert (= bs!1080281 (and b!4676708 b!4676632)))

(assert (=> bs!1080281 (= lambda!203820 lambda!203803)))

(declare-fun bs!1080282 () Bool)

(assert (= bs!1080282 (and b!4676708 b!4676662)))

(assert (=> bs!1080282 (= (= lt!1836229 lt!1836561) (= lambda!203820 lambda!203810))))

(assert (=> bs!1080280 (= lambda!203820 lambda!203804)))

(assert (=> bs!1080279 (= (= lt!1836229 lt!1836454) (= lambda!203820 lambda!203794))))

(assert (=> bs!1080282 (= lambda!203820 lambda!203809)))

(declare-fun bs!1080283 () Bool)

(assert (= bs!1080283 (and b!4676708 d!1486647)))

(assert (=> bs!1080283 (not (= lambda!203820 lambda!203814))))

(assert (=> b!4676708 true))

(declare-fun lambda!203821 () Int)

(declare-fun lt!1836607 () ListMap!4785)

(assert (=> bs!1080273 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203808))))

(assert (=> bs!1080274 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203819))))

(assert (=> bs!1080276 (= (= lt!1836607 lt!1836447) (= lambda!203821 lambda!203795))))

(assert (=> bs!1080277 (= (= lt!1836607 lt!1836517) (= lambda!203821 lambda!203807))))

(assert (=> bs!1080278 (= (= lt!1836607 lt!1836554) (= lambda!203821 lambda!203811))))

(assert (=> bs!1080279 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203793))))

(assert (=> bs!1080280 (= (= lt!1836607 lt!1836524) (= lambda!203821 lambda!203805))))

(assert (=> bs!1080281 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203803))))

(assert (=> bs!1080282 (= (= lt!1836607 lt!1836561) (= lambda!203821 lambda!203810))))

(assert (=> bs!1080275 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203792))))

(assert (=> b!4676708 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203820))))

(assert (=> bs!1080280 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203804))))

(assert (=> bs!1080279 (= (= lt!1836607 lt!1836454) (= lambda!203821 lambda!203794))))

(assert (=> bs!1080282 (= (= lt!1836607 lt!1836229) (= lambda!203821 lambda!203809))))

(assert (=> bs!1080283 (not (= lambda!203821 lambda!203814))))

(assert (=> b!4676708 true))

(declare-fun bs!1080284 () Bool)

(declare-fun d!1486659 () Bool)

(assert (= bs!1080284 (and d!1486659 b!4676664)))

(declare-fun lt!1836600 () ListMap!4785)

(declare-fun lambda!203822 () Int)

(assert (=> bs!1080284 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203808))))

(declare-fun bs!1080285 () Bool)

(assert (= bs!1080285 (and d!1486659 b!4676710)))

(assert (=> bs!1080285 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203819))))

(declare-fun bs!1080286 () Bool)

(assert (= bs!1080286 (and d!1486659 b!4676708)))

(assert (=> bs!1080286 (= (= lt!1836600 lt!1836607) (= lambda!203822 lambda!203821))))

(declare-fun bs!1080287 () Bool)

(assert (= bs!1080287 (and d!1486659 d!1486559)))

(assert (=> bs!1080287 (= (= lt!1836600 lt!1836447) (= lambda!203822 lambda!203795))))

(declare-fun bs!1080288 () Bool)

(assert (= bs!1080288 (and d!1486659 d!1486629)))

(assert (=> bs!1080288 (= (= lt!1836600 lt!1836517) (= lambda!203822 lambda!203807))))

(declare-fun bs!1080289 () Bool)

(assert (= bs!1080289 (and d!1486659 d!1486645)))

(assert (=> bs!1080289 (= (= lt!1836600 lt!1836554) (= lambda!203822 lambda!203811))))

(declare-fun bs!1080290 () Bool)

(assert (= bs!1080290 (and d!1486659 b!4676592)))

(assert (=> bs!1080290 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203793))))

(declare-fun bs!1080291 () Bool)

(assert (= bs!1080291 (and d!1486659 b!4676630)))

(assert (=> bs!1080291 (= (= lt!1836600 lt!1836524) (= lambda!203822 lambda!203805))))

(declare-fun bs!1080292 () Bool)

(assert (= bs!1080292 (and d!1486659 b!4676632)))

(assert (=> bs!1080292 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203803))))

(declare-fun bs!1080293 () Bool)

(assert (= bs!1080293 (and d!1486659 b!4676662)))

(assert (=> bs!1080293 (= (= lt!1836600 lt!1836561) (= lambda!203822 lambda!203810))))

(declare-fun bs!1080294 () Bool)

(assert (= bs!1080294 (and d!1486659 b!4676594)))

(assert (=> bs!1080294 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203792))))

(assert (=> bs!1080286 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203820))))

(assert (=> bs!1080291 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203804))))

(assert (=> bs!1080290 (= (= lt!1836600 lt!1836454) (= lambda!203822 lambda!203794))))

(assert (=> bs!1080293 (= (= lt!1836600 lt!1836229) (= lambda!203822 lambda!203809))))

(declare-fun bs!1080295 () Bool)

(assert (= bs!1080295 (and d!1486659 d!1486647)))

(assert (=> bs!1080295 (not (= lambda!203822 lambda!203814))))

(assert (=> d!1486659 true))

(declare-fun b!4676707 () Bool)

(declare-fun e!2917996 () Bool)

(assert (=> b!4676707 (= e!2917996 (invariantList!1364 (toList!5422 lt!1836600)))))

(declare-fun c!800232 () Bool)

(declare-fun call!326815 () Bool)

(declare-fun bm!326809 () Bool)

(assert (=> bm!326809 (= call!326815 (forall!11189 (toList!5422 lt!1836229) (ite c!800232 lambda!203819 lambda!203820)))))

(declare-fun e!2917997 () ListMap!4785)

(assert (=> b!4676708 (= e!2917997 lt!1836607)))

(declare-fun lt!1836604 () ListMap!4785)

(assert (=> b!4676708 (= lt!1836604 (+!2068 lt!1836229 (h!58386 newBucket!218)))))

(assert (=> b!4676708 (= lt!1836607 (addToMapMapFromBucket!1198 (t!359453 newBucket!218) (+!2068 lt!1836229 (h!58386 newBucket!218))))))

(declare-fun lt!1836589 () Unit!121725)

(declare-fun call!326814 () Unit!121725)

(assert (=> b!4676708 (= lt!1836589 call!326814)))

(assert (=> b!4676708 call!326815))

(declare-fun lt!1836605 () Unit!121725)

(assert (=> b!4676708 (= lt!1836605 lt!1836589)))

(assert (=> b!4676708 (forall!11189 (toList!5422 lt!1836604) lambda!203821)))

(declare-fun lt!1836593 () Unit!121725)

(declare-fun Unit!121812 () Unit!121725)

(assert (=> b!4676708 (= lt!1836593 Unit!121812)))

(assert (=> b!4676708 (forall!11189 (t!359453 newBucket!218) lambda!203821)))

(declare-fun lt!1836594 () Unit!121725)

(declare-fun Unit!121814 () Unit!121725)

(assert (=> b!4676708 (= lt!1836594 Unit!121814)))

(declare-fun lt!1836606 () Unit!121725)

(declare-fun Unit!121816 () Unit!121725)

(assert (=> b!4676708 (= lt!1836606 Unit!121816)))

(declare-fun lt!1836590 () Unit!121725)

(assert (=> b!4676708 (= lt!1836590 (forallContained!3336 (toList!5422 lt!1836604) lambda!203821 (h!58386 newBucket!218)))))

(assert (=> b!4676708 (contains!15330 lt!1836604 (_1!30023 (h!58386 newBucket!218)))))

(declare-fun lt!1836597 () Unit!121725)

(declare-fun Unit!121818 () Unit!121725)

(assert (=> b!4676708 (= lt!1836597 Unit!121818)))

(assert (=> b!4676708 (contains!15330 lt!1836607 (_1!30023 (h!58386 newBucket!218)))))

(declare-fun lt!1836595 () Unit!121725)

(declare-fun Unit!121821 () Unit!121725)

(assert (=> b!4676708 (= lt!1836595 Unit!121821)))

(assert (=> b!4676708 (forall!11189 newBucket!218 lambda!203821)))

(declare-fun lt!1836602 () Unit!121725)

(declare-fun Unit!121822 () Unit!121725)

(assert (=> b!4676708 (= lt!1836602 Unit!121822)))

(assert (=> b!4676708 (forall!11189 (toList!5422 lt!1836604) lambda!203821)))

(declare-fun lt!1836596 () Unit!121725)

(declare-fun Unit!121823 () Unit!121725)

(assert (=> b!4676708 (= lt!1836596 Unit!121823)))

(declare-fun lt!1836591 () Unit!121725)

(declare-fun Unit!121825 () Unit!121725)

(assert (=> b!4676708 (= lt!1836591 Unit!121825)))

(declare-fun lt!1836592 () Unit!121725)

(assert (=> b!4676708 (= lt!1836592 (addForallContainsKeyThenBeforeAdding!651 lt!1836229 lt!1836607 (_1!30023 (h!58386 newBucket!218)) (_2!30023 (h!58386 newBucket!218))))))

(assert (=> b!4676708 (forall!11189 (toList!5422 lt!1836229) lambda!203821)))

(declare-fun lt!1836598 () Unit!121725)

(assert (=> b!4676708 (= lt!1836598 lt!1836592)))

(assert (=> b!4676708 (forall!11189 (toList!5422 lt!1836229) lambda!203821)))

(declare-fun lt!1836599 () Unit!121725)

(declare-fun Unit!121827 () Unit!121725)

(assert (=> b!4676708 (= lt!1836599 Unit!121827)))

(declare-fun res!1969866 () Bool)

(assert (=> b!4676708 (= res!1969866 (forall!11189 newBucket!218 lambda!203821))))

(declare-fun e!2917998 () Bool)

(assert (=> b!4676708 (=> (not res!1969866) (not e!2917998))))

(assert (=> b!4676708 e!2917998))

(declare-fun lt!1836608 () Unit!121725)

(declare-fun Unit!121828 () Unit!121725)

(assert (=> b!4676708 (= lt!1836608 Unit!121828)))

(assert (=> d!1486659 e!2917996))

(declare-fun res!1969867 () Bool)

(assert (=> d!1486659 (=> (not res!1969867) (not e!2917996))))

(assert (=> d!1486659 (= res!1969867 (forall!11189 newBucket!218 lambda!203822))))

(assert (=> d!1486659 (= lt!1836600 e!2917997)))

(assert (=> d!1486659 (= c!800232 ((_ is Nil!52187) newBucket!218))))

(assert (=> d!1486659 (noDuplicateKeys!1766 newBucket!218)))

(assert (=> d!1486659 (= (addToMapMapFromBucket!1198 newBucket!218 lt!1836229) lt!1836600)))

(declare-fun b!4676709 () Bool)

(declare-fun res!1969868 () Bool)

(assert (=> b!4676709 (=> (not res!1969868) (not e!2917996))))

(assert (=> b!4676709 (= res!1969868 (forall!11189 (toList!5422 lt!1836229) lambda!203822))))

(assert (=> b!4676710 (= e!2917997 lt!1836229)))

(declare-fun lt!1836609 () Unit!121725)

(assert (=> b!4676710 (= lt!1836609 call!326814)))

(assert (=> b!4676710 call!326815))

(declare-fun lt!1836601 () Unit!121725)

(assert (=> b!4676710 (= lt!1836601 lt!1836609)))

(declare-fun call!326816 () Bool)

(assert (=> b!4676710 call!326816))

(declare-fun lt!1836603 () Unit!121725)

(declare-fun Unit!121829 () Unit!121725)

(assert (=> b!4676710 (= lt!1836603 Unit!121829)))

(declare-fun b!4676711 () Bool)

(assert (=> b!4676711 (= e!2917998 call!326816)))

(declare-fun bm!326810 () Bool)

(assert (=> bm!326810 (= call!326816 (forall!11189 (toList!5422 lt!1836229) (ite c!800232 lambda!203819 lambda!203821)))))

(declare-fun bm!326811 () Bool)

(assert (=> bm!326811 (= call!326814 (lemmaContainsAllItsOwnKeys!652 lt!1836229))))

(assert (= (and d!1486659 c!800232) b!4676710))

(assert (= (and d!1486659 (not c!800232)) b!4676708))

(assert (= (and b!4676708 res!1969866) b!4676711))

(assert (= (or b!4676710 b!4676708) bm!326811))

(assert (= (or b!4676710 b!4676711) bm!326810))

(assert (= (or b!4676710 b!4676708) bm!326809))

(assert (= (and d!1486659 res!1969867) b!4676709))

(assert (= (and b!4676709 res!1969868) b!4676707))

(assert (=> bm!326811 m!5570603))

(declare-fun m!5570867 () Bool)

(assert (=> bm!326810 m!5570867))

(declare-fun m!5570869 () Bool)

(assert (=> b!4676708 m!5570869))

(declare-fun m!5570871 () Bool)

(assert (=> b!4676708 m!5570871))

(declare-fun m!5570873 () Bool)

(assert (=> b!4676708 m!5570873))

(assert (=> b!4676708 m!5570873))

(declare-fun m!5570875 () Bool)

(assert (=> b!4676708 m!5570875))

(declare-fun m!5570877 () Bool)

(assert (=> b!4676708 m!5570877))

(declare-fun m!5570879 () Bool)

(assert (=> b!4676708 m!5570879))

(declare-fun m!5570881 () Bool)

(assert (=> b!4676708 m!5570881))

(assert (=> b!4676708 m!5570879))

(declare-fun m!5570883 () Bool)

(assert (=> b!4676708 m!5570883))

(assert (=> b!4676708 m!5570877))

(declare-fun m!5570885 () Bool)

(assert (=> b!4676708 m!5570885))

(declare-fun m!5570887 () Bool)

(assert (=> b!4676708 m!5570887))

(assert (=> b!4676708 m!5570869))

(declare-fun m!5570889 () Bool)

(assert (=> b!4676709 m!5570889))

(declare-fun m!5570891 () Bool)

(assert (=> d!1486659 m!5570891))

(assert (=> d!1486659 m!5570337))

(declare-fun m!5570893 () Bool)

(assert (=> bm!326809 m!5570893))

(declare-fun m!5570895 () Bool)

(assert (=> b!4676707 m!5570895))

(assert (=> b!4676454 d!1486659))

(declare-fun bs!1080296 () Bool)

(declare-fun b!4676715 () Bool)

(assert (= bs!1080296 (and b!4676715 b!4676664)))

(declare-fun lambda!203823 () Int)

(assert (=> bs!1080296 (= lambda!203823 lambda!203808)))

(declare-fun bs!1080297 () Bool)

(assert (= bs!1080297 (and b!4676715 b!4676710)))

(assert (=> bs!1080297 (= lambda!203823 lambda!203819)))

(declare-fun bs!1080298 () Bool)

(assert (= bs!1080298 (and b!4676715 d!1486659)))

(assert (=> bs!1080298 (= (= lt!1836229 lt!1836600) (= lambda!203823 lambda!203822))))

(declare-fun bs!1080299 () Bool)

(assert (= bs!1080299 (and b!4676715 b!4676708)))

(assert (=> bs!1080299 (= (= lt!1836229 lt!1836607) (= lambda!203823 lambda!203821))))

(declare-fun bs!1080300 () Bool)

(assert (= bs!1080300 (and b!4676715 d!1486559)))

(assert (=> bs!1080300 (= (= lt!1836229 lt!1836447) (= lambda!203823 lambda!203795))))

(declare-fun bs!1080301 () Bool)

(assert (= bs!1080301 (and b!4676715 d!1486629)))

(assert (=> bs!1080301 (= (= lt!1836229 lt!1836517) (= lambda!203823 lambda!203807))))

(declare-fun bs!1080302 () Bool)

(assert (= bs!1080302 (and b!4676715 d!1486645)))

(assert (=> bs!1080302 (= (= lt!1836229 lt!1836554) (= lambda!203823 lambda!203811))))

(declare-fun bs!1080303 () Bool)

(assert (= bs!1080303 (and b!4676715 b!4676592)))

(assert (=> bs!1080303 (= lambda!203823 lambda!203793)))

(declare-fun bs!1080304 () Bool)

(assert (= bs!1080304 (and b!4676715 b!4676630)))

(assert (=> bs!1080304 (= (= lt!1836229 lt!1836524) (= lambda!203823 lambda!203805))))

(declare-fun bs!1080305 () Bool)

(assert (= bs!1080305 (and b!4676715 b!4676632)))

(assert (=> bs!1080305 (= lambda!203823 lambda!203803)))

(declare-fun bs!1080306 () Bool)

(assert (= bs!1080306 (and b!4676715 b!4676662)))

(assert (=> bs!1080306 (= (= lt!1836229 lt!1836561) (= lambda!203823 lambda!203810))))

(declare-fun bs!1080307 () Bool)

(assert (= bs!1080307 (and b!4676715 b!4676594)))

(assert (=> bs!1080307 (= lambda!203823 lambda!203792)))

(assert (=> bs!1080299 (= lambda!203823 lambda!203820)))

(assert (=> bs!1080304 (= lambda!203823 lambda!203804)))

(assert (=> bs!1080303 (= (= lt!1836229 lt!1836454) (= lambda!203823 lambda!203794))))

(assert (=> bs!1080306 (= lambda!203823 lambda!203809)))

(declare-fun bs!1080308 () Bool)

(assert (= bs!1080308 (and b!4676715 d!1486647)))

(assert (=> bs!1080308 (not (= lambda!203823 lambda!203814))))

(assert (=> b!4676715 true))

(declare-fun bs!1080309 () Bool)

(declare-fun b!4676713 () Bool)

(assert (= bs!1080309 (and b!4676713 b!4676664)))

(declare-fun lambda!203824 () Int)

(assert (=> bs!1080309 (= lambda!203824 lambda!203808)))

(declare-fun bs!1080310 () Bool)

(assert (= bs!1080310 (and b!4676713 b!4676710)))

(assert (=> bs!1080310 (= lambda!203824 lambda!203819)))

(declare-fun bs!1080311 () Bool)

(assert (= bs!1080311 (and b!4676713 d!1486659)))

(assert (=> bs!1080311 (= (= lt!1836229 lt!1836600) (= lambda!203824 lambda!203822))))

(declare-fun bs!1080312 () Bool)

(assert (= bs!1080312 (and b!4676713 b!4676708)))

(assert (=> bs!1080312 (= (= lt!1836229 lt!1836607) (= lambda!203824 lambda!203821))))

(declare-fun bs!1080313 () Bool)

(assert (= bs!1080313 (and b!4676713 d!1486559)))

(assert (=> bs!1080313 (= (= lt!1836229 lt!1836447) (= lambda!203824 lambda!203795))))

(declare-fun bs!1080314 () Bool)

(assert (= bs!1080314 (and b!4676713 d!1486629)))

(assert (=> bs!1080314 (= (= lt!1836229 lt!1836517) (= lambda!203824 lambda!203807))))

(declare-fun bs!1080315 () Bool)

(assert (= bs!1080315 (and b!4676713 d!1486645)))

(assert (=> bs!1080315 (= (= lt!1836229 lt!1836554) (= lambda!203824 lambda!203811))))

(declare-fun bs!1080316 () Bool)

(assert (= bs!1080316 (and b!4676713 b!4676592)))

(assert (=> bs!1080316 (= lambda!203824 lambda!203793)))

(declare-fun bs!1080317 () Bool)

(assert (= bs!1080317 (and b!4676713 b!4676630)))

(assert (=> bs!1080317 (= (= lt!1836229 lt!1836524) (= lambda!203824 lambda!203805))))

(declare-fun bs!1080318 () Bool)

(assert (= bs!1080318 (and b!4676713 b!4676715)))

(assert (=> bs!1080318 (= lambda!203824 lambda!203823)))

(declare-fun bs!1080319 () Bool)

(assert (= bs!1080319 (and b!4676713 b!4676632)))

(assert (=> bs!1080319 (= lambda!203824 lambda!203803)))

(declare-fun bs!1080320 () Bool)

(assert (= bs!1080320 (and b!4676713 b!4676662)))

(assert (=> bs!1080320 (= (= lt!1836229 lt!1836561) (= lambda!203824 lambda!203810))))

(declare-fun bs!1080321 () Bool)

(assert (= bs!1080321 (and b!4676713 b!4676594)))

(assert (=> bs!1080321 (= lambda!203824 lambda!203792)))

(assert (=> bs!1080312 (= lambda!203824 lambda!203820)))

(assert (=> bs!1080317 (= lambda!203824 lambda!203804)))

(assert (=> bs!1080316 (= (= lt!1836229 lt!1836454) (= lambda!203824 lambda!203794))))

(assert (=> bs!1080320 (= lambda!203824 lambda!203809)))

(declare-fun bs!1080322 () Bool)

(assert (= bs!1080322 (and b!4676713 d!1486647)))

(assert (=> bs!1080322 (not (= lambda!203824 lambda!203814))))

(assert (=> b!4676713 true))

(declare-fun lambda!203825 () Int)

(declare-fun lt!1836628 () ListMap!4785)

(assert (=> bs!1080309 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203808))))

(assert (=> bs!1080310 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203819))))

(assert (=> bs!1080311 (= (= lt!1836628 lt!1836600) (= lambda!203825 lambda!203822))))

(assert (=> bs!1080312 (= (= lt!1836628 lt!1836607) (= lambda!203825 lambda!203821))))

(assert (=> bs!1080313 (= (= lt!1836628 lt!1836447) (= lambda!203825 lambda!203795))))

(assert (=> bs!1080314 (= (= lt!1836628 lt!1836517) (= lambda!203825 lambda!203807))))

(assert (=> bs!1080315 (= (= lt!1836628 lt!1836554) (= lambda!203825 lambda!203811))))

(assert (=> bs!1080316 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203793))))

(assert (=> bs!1080317 (= (= lt!1836628 lt!1836524) (= lambda!203825 lambda!203805))))

(assert (=> bs!1080318 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203823))))

(assert (=> bs!1080319 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203803))))

(assert (=> bs!1080320 (= (= lt!1836628 lt!1836561) (= lambda!203825 lambda!203810))))

(assert (=> b!4676713 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203824))))

(assert (=> bs!1080321 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203792))))

(assert (=> bs!1080312 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203820))))

(assert (=> bs!1080317 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203804))))

(assert (=> bs!1080316 (= (= lt!1836628 lt!1836454) (= lambda!203825 lambda!203794))))

(assert (=> bs!1080320 (= (= lt!1836628 lt!1836229) (= lambda!203825 lambda!203809))))

(assert (=> bs!1080322 (not (= lambda!203825 lambda!203814))))

(assert (=> b!4676713 true))

(declare-fun bs!1080323 () Bool)

(declare-fun d!1486661 () Bool)

(assert (= bs!1080323 (and d!1486661 b!4676664)))

(declare-fun lambda!203826 () Int)

(declare-fun lt!1836621 () ListMap!4785)

(assert (=> bs!1080323 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203808))))

(declare-fun bs!1080324 () Bool)

(assert (= bs!1080324 (and d!1486661 b!4676710)))

(assert (=> bs!1080324 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203819))))

(declare-fun bs!1080325 () Bool)

(assert (= bs!1080325 (and d!1486661 d!1486659)))

(assert (=> bs!1080325 (= (= lt!1836621 lt!1836600) (= lambda!203826 lambda!203822))))

(declare-fun bs!1080326 () Bool)

(assert (= bs!1080326 (and d!1486661 b!4676708)))

(assert (=> bs!1080326 (= (= lt!1836621 lt!1836607) (= lambda!203826 lambda!203821))))

(declare-fun bs!1080327 () Bool)

(assert (= bs!1080327 (and d!1486661 d!1486559)))

(assert (=> bs!1080327 (= (= lt!1836621 lt!1836447) (= lambda!203826 lambda!203795))))

(declare-fun bs!1080328 () Bool)

(assert (= bs!1080328 (and d!1486661 d!1486629)))

(assert (=> bs!1080328 (= (= lt!1836621 lt!1836517) (= lambda!203826 lambda!203807))))

(declare-fun bs!1080329 () Bool)

(assert (= bs!1080329 (and d!1486661 d!1486645)))

(assert (=> bs!1080329 (= (= lt!1836621 lt!1836554) (= lambda!203826 lambda!203811))))

(declare-fun bs!1080330 () Bool)

(assert (= bs!1080330 (and d!1486661 b!4676592)))

(assert (=> bs!1080330 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203793))))

(declare-fun bs!1080331 () Bool)

(assert (= bs!1080331 (and d!1486661 b!4676713)))

(assert (=> bs!1080331 (= (= lt!1836621 lt!1836628) (= lambda!203826 lambda!203825))))

(declare-fun bs!1080332 () Bool)

(assert (= bs!1080332 (and d!1486661 b!4676630)))

(assert (=> bs!1080332 (= (= lt!1836621 lt!1836524) (= lambda!203826 lambda!203805))))

(declare-fun bs!1080333 () Bool)

(assert (= bs!1080333 (and d!1486661 b!4676715)))

(assert (=> bs!1080333 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203823))))

(declare-fun bs!1080334 () Bool)

(assert (= bs!1080334 (and d!1486661 b!4676632)))

(assert (=> bs!1080334 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203803))))

(declare-fun bs!1080335 () Bool)

(assert (= bs!1080335 (and d!1486661 b!4676662)))

(assert (=> bs!1080335 (= (= lt!1836621 lt!1836561) (= lambda!203826 lambda!203810))))

(assert (=> bs!1080331 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203824))))

(declare-fun bs!1080336 () Bool)

(assert (= bs!1080336 (and d!1486661 b!4676594)))

(assert (=> bs!1080336 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203792))))

(assert (=> bs!1080326 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203820))))

(assert (=> bs!1080332 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203804))))

(assert (=> bs!1080330 (= (= lt!1836621 lt!1836454) (= lambda!203826 lambda!203794))))

(assert (=> bs!1080335 (= (= lt!1836621 lt!1836229) (= lambda!203826 lambda!203809))))

(declare-fun bs!1080337 () Bool)

(assert (= bs!1080337 (and d!1486661 d!1486647)))

(assert (=> bs!1080337 (not (= lambda!203826 lambda!203814))))

(assert (=> d!1486661 true))

(declare-fun b!4676712 () Bool)

(declare-fun e!2917999 () Bool)

(assert (=> b!4676712 (= e!2917999 (invariantList!1364 (toList!5422 lt!1836621)))))

(declare-fun bm!326812 () Bool)

(declare-fun c!800233 () Bool)

(declare-fun call!326818 () Bool)

(assert (=> bm!326812 (= call!326818 (forall!11189 (toList!5422 lt!1836229) (ite c!800233 lambda!203823 lambda!203824)))))

(declare-fun e!2918000 () ListMap!4785)

(assert (=> b!4676713 (= e!2918000 lt!1836628)))

(declare-fun lt!1836625 () ListMap!4785)

(assert (=> b!4676713 (= lt!1836625 (+!2068 lt!1836229 (h!58386 lt!1836230)))))

(assert (=> b!4676713 (= lt!1836628 (addToMapMapFromBucket!1198 (t!359453 lt!1836230) (+!2068 lt!1836229 (h!58386 lt!1836230))))))

(declare-fun lt!1836610 () Unit!121725)

(declare-fun call!326817 () Unit!121725)

(assert (=> b!4676713 (= lt!1836610 call!326817)))

(assert (=> b!4676713 call!326818))

(declare-fun lt!1836626 () Unit!121725)

(assert (=> b!4676713 (= lt!1836626 lt!1836610)))

(assert (=> b!4676713 (forall!11189 (toList!5422 lt!1836625) lambda!203825)))

(declare-fun lt!1836614 () Unit!121725)

(declare-fun Unit!121830 () Unit!121725)

(assert (=> b!4676713 (= lt!1836614 Unit!121830)))

(assert (=> b!4676713 (forall!11189 (t!359453 lt!1836230) lambda!203825)))

(declare-fun lt!1836615 () Unit!121725)

(declare-fun Unit!121831 () Unit!121725)

(assert (=> b!4676713 (= lt!1836615 Unit!121831)))

(declare-fun lt!1836627 () Unit!121725)

(declare-fun Unit!121832 () Unit!121725)

(assert (=> b!4676713 (= lt!1836627 Unit!121832)))

(declare-fun lt!1836611 () Unit!121725)

(assert (=> b!4676713 (= lt!1836611 (forallContained!3336 (toList!5422 lt!1836625) lambda!203825 (h!58386 lt!1836230)))))

(assert (=> b!4676713 (contains!15330 lt!1836625 (_1!30023 (h!58386 lt!1836230)))))

(declare-fun lt!1836618 () Unit!121725)

(declare-fun Unit!121833 () Unit!121725)

(assert (=> b!4676713 (= lt!1836618 Unit!121833)))

(assert (=> b!4676713 (contains!15330 lt!1836628 (_1!30023 (h!58386 lt!1836230)))))

(declare-fun lt!1836616 () Unit!121725)

(declare-fun Unit!121834 () Unit!121725)

(assert (=> b!4676713 (= lt!1836616 Unit!121834)))

(assert (=> b!4676713 (forall!11189 lt!1836230 lambda!203825)))

(declare-fun lt!1836623 () Unit!121725)

(declare-fun Unit!121835 () Unit!121725)

(assert (=> b!4676713 (= lt!1836623 Unit!121835)))

(assert (=> b!4676713 (forall!11189 (toList!5422 lt!1836625) lambda!203825)))

(declare-fun lt!1836617 () Unit!121725)

(declare-fun Unit!121836 () Unit!121725)

(assert (=> b!4676713 (= lt!1836617 Unit!121836)))

(declare-fun lt!1836612 () Unit!121725)

(declare-fun Unit!121837 () Unit!121725)

(assert (=> b!4676713 (= lt!1836612 Unit!121837)))

(declare-fun lt!1836613 () Unit!121725)

(assert (=> b!4676713 (= lt!1836613 (addForallContainsKeyThenBeforeAdding!651 lt!1836229 lt!1836628 (_1!30023 (h!58386 lt!1836230)) (_2!30023 (h!58386 lt!1836230))))))

(assert (=> b!4676713 (forall!11189 (toList!5422 lt!1836229) lambda!203825)))

(declare-fun lt!1836619 () Unit!121725)

(assert (=> b!4676713 (= lt!1836619 lt!1836613)))

(assert (=> b!4676713 (forall!11189 (toList!5422 lt!1836229) lambda!203825)))

(declare-fun lt!1836620 () Unit!121725)

(declare-fun Unit!121838 () Unit!121725)

(assert (=> b!4676713 (= lt!1836620 Unit!121838)))

(declare-fun res!1969869 () Bool)

(assert (=> b!4676713 (= res!1969869 (forall!11189 lt!1836230 lambda!203825))))

(declare-fun e!2918001 () Bool)

(assert (=> b!4676713 (=> (not res!1969869) (not e!2918001))))

(assert (=> b!4676713 e!2918001))

(declare-fun lt!1836629 () Unit!121725)

(declare-fun Unit!121839 () Unit!121725)

(assert (=> b!4676713 (= lt!1836629 Unit!121839)))

(assert (=> d!1486661 e!2917999))

(declare-fun res!1969870 () Bool)

(assert (=> d!1486661 (=> (not res!1969870) (not e!2917999))))

(assert (=> d!1486661 (= res!1969870 (forall!11189 lt!1836230 lambda!203826))))

(assert (=> d!1486661 (= lt!1836621 e!2918000)))

(assert (=> d!1486661 (= c!800233 ((_ is Nil!52187) lt!1836230))))

(assert (=> d!1486661 (noDuplicateKeys!1766 lt!1836230)))

(assert (=> d!1486661 (= (addToMapMapFromBucket!1198 lt!1836230 lt!1836229) lt!1836621)))

(declare-fun b!4676714 () Bool)

(declare-fun res!1969871 () Bool)

(assert (=> b!4676714 (=> (not res!1969871) (not e!2917999))))

(assert (=> b!4676714 (= res!1969871 (forall!11189 (toList!5422 lt!1836229) lambda!203826))))

(assert (=> b!4676715 (= e!2918000 lt!1836229)))

(declare-fun lt!1836630 () Unit!121725)

(assert (=> b!4676715 (= lt!1836630 call!326817)))

(assert (=> b!4676715 call!326818))

(declare-fun lt!1836622 () Unit!121725)

(assert (=> b!4676715 (= lt!1836622 lt!1836630)))

(declare-fun call!326819 () Bool)

(assert (=> b!4676715 call!326819))

(declare-fun lt!1836624 () Unit!121725)

(declare-fun Unit!121840 () Unit!121725)

(assert (=> b!4676715 (= lt!1836624 Unit!121840)))

(declare-fun b!4676716 () Bool)

(assert (=> b!4676716 (= e!2918001 call!326819)))

(declare-fun bm!326813 () Bool)

(assert (=> bm!326813 (= call!326819 (forall!11189 (toList!5422 lt!1836229) (ite c!800233 lambda!203823 lambda!203825)))))

(declare-fun bm!326814 () Bool)

(assert (=> bm!326814 (= call!326817 (lemmaContainsAllItsOwnKeys!652 lt!1836229))))

(assert (= (and d!1486661 c!800233) b!4676715))

(assert (= (and d!1486661 (not c!800233)) b!4676713))

(assert (= (and b!4676713 res!1969869) b!4676716))

(assert (= (or b!4676715 b!4676713) bm!326814))

(assert (= (or b!4676715 b!4676716) bm!326813))

(assert (= (or b!4676715 b!4676713) bm!326812))

(assert (= (and d!1486661 res!1969870) b!4676714))

(assert (= (and b!4676714 res!1969871) b!4676712))

(assert (=> bm!326814 m!5570603))

(declare-fun m!5570897 () Bool)

(assert (=> bm!326813 m!5570897))

(declare-fun m!5570899 () Bool)

(assert (=> b!4676713 m!5570899))

(declare-fun m!5570901 () Bool)

(assert (=> b!4676713 m!5570901))

(declare-fun m!5570903 () Bool)

(assert (=> b!4676713 m!5570903))

(assert (=> b!4676713 m!5570903))

(declare-fun m!5570905 () Bool)

(assert (=> b!4676713 m!5570905))

(declare-fun m!5570907 () Bool)

(assert (=> b!4676713 m!5570907))

(declare-fun m!5570909 () Bool)

(assert (=> b!4676713 m!5570909))

(declare-fun m!5570911 () Bool)

(assert (=> b!4676713 m!5570911))

(assert (=> b!4676713 m!5570909))

(declare-fun m!5570913 () Bool)

(assert (=> b!4676713 m!5570913))

(assert (=> b!4676713 m!5570907))

(declare-fun m!5570915 () Bool)

(assert (=> b!4676713 m!5570915))

(declare-fun m!5570917 () Bool)

(assert (=> b!4676713 m!5570917))

(assert (=> b!4676713 m!5570899))

(declare-fun m!5570919 () Bool)

(assert (=> b!4676714 m!5570919))

(declare-fun m!5570921 () Bool)

(assert (=> d!1486661 m!5570921))

(assert (=> d!1486661 m!5570729))

(declare-fun m!5570923 () Bool)

(assert (=> bm!326812 m!5570923))

(declare-fun m!5570925 () Bool)

(assert (=> b!4676712 m!5570925))

(assert (=> b!4676454 d!1486661))

(declare-fun d!1486663 () Bool)

(declare-fun res!1969876 () Bool)

(declare-fun e!2918006 () Bool)

(assert (=> d!1486663 (=> res!1969876 e!2918006)))

(assert (=> d!1486663 (= res!1969876 (and ((_ is Cons!52187) lt!1836230) (= (_1!30023 (h!58386 lt!1836230)) key!4653)))))

(assert (=> d!1486663 (= (containsKey!2899 lt!1836230 key!4653) e!2918006)))

(declare-fun b!4676721 () Bool)

(declare-fun e!2918007 () Bool)

(assert (=> b!4676721 (= e!2918006 e!2918007)))

(declare-fun res!1969877 () Bool)

(assert (=> b!4676721 (=> (not res!1969877) (not e!2918007))))

(assert (=> b!4676721 (= res!1969877 ((_ is Cons!52187) lt!1836230))))

(declare-fun b!4676722 () Bool)

(assert (=> b!4676722 (= e!2918007 (containsKey!2899 (t!359453 lt!1836230) key!4653))))

(assert (= (and d!1486663 (not res!1969876)) b!4676721))

(assert (= (and b!4676721 res!1969877) b!4676722))

(declare-fun m!5570927 () Bool)

(assert (=> b!4676722 m!5570927))

(assert (=> b!4676455 d!1486663))

(declare-fun bs!1080338 () Bool)

(declare-fun d!1486665 () Bool)

(assert (= bs!1080338 (and d!1486665 b!4676664)))

(declare-fun lambda!203827 () Int)

(assert (=> bs!1080338 (not (= lambda!203827 lambda!203808))))

(declare-fun bs!1080339 () Bool)

(assert (= bs!1080339 (and d!1486665 b!4676710)))

(assert (=> bs!1080339 (not (= lambda!203827 lambda!203819))))

(declare-fun bs!1080340 () Bool)

(assert (= bs!1080340 (and d!1486665 d!1486659)))

(assert (=> bs!1080340 (not (= lambda!203827 lambda!203822))))

(declare-fun bs!1080341 () Bool)

(assert (= bs!1080341 (and d!1486665 b!4676708)))

(assert (=> bs!1080341 (not (= lambda!203827 lambda!203821))))

(declare-fun bs!1080342 () Bool)

(assert (= bs!1080342 (and d!1486665 d!1486559)))

(assert (=> bs!1080342 (not (= lambda!203827 lambda!203795))))

(declare-fun bs!1080343 () Bool)

(assert (= bs!1080343 (and d!1486665 d!1486629)))

(assert (=> bs!1080343 (not (= lambda!203827 lambda!203807))))

(declare-fun bs!1080344 () Bool)

(assert (= bs!1080344 (and d!1486665 d!1486645)))

(assert (=> bs!1080344 (not (= lambda!203827 lambda!203811))))

(declare-fun bs!1080345 () Bool)

(assert (= bs!1080345 (and d!1486665 b!4676592)))

(assert (=> bs!1080345 (not (= lambda!203827 lambda!203793))))

(declare-fun bs!1080346 () Bool)

(assert (= bs!1080346 (and d!1486665 b!4676713)))

(assert (=> bs!1080346 (not (= lambda!203827 lambda!203825))))

(declare-fun bs!1080347 () Bool)

(assert (= bs!1080347 (and d!1486665 b!4676630)))

(assert (=> bs!1080347 (not (= lambda!203827 lambda!203805))))

(declare-fun bs!1080348 () Bool)

(assert (= bs!1080348 (and d!1486665 b!4676632)))

(assert (=> bs!1080348 (not (= lambda!203827 lambda!203803))))

(declare-fun bs!1080349 () Bool)

(assert (= bs!1080349 (and d!1486665 b!4676662)))

(assert (=> bs!1080349 (not (= lambda!203827 lambda!203810))))

(assert (=> bs!1080346 (not (= lambda!203827 lambda!203824))))

(declare-fun bs!1080350 () Bool)

(assert (= bs!1080350 (and d!1486665 b!4676594)))

(assert (=> bs!1080350 (not (= lambda!203827 lambda!203792))))

(assert (=> bs!1080341 (not (= lambda!203827 lambda!203820))))

(assert (=> bs!1080347 (not (= lambda!203827 lambda!203804))))

(assert (=> bs!1080345 (not (= lambda!203827 lambda!203794))))

(assert (=> bs!1080349 (not (= lambda!203827 lambda!203809))))

(declare-fun bs!1080351 () Bool)

(assert (= bs!1080351 (and d!1486665 d!1486647)))

(assert (=> bs!1080351 (= lambda!203827 lambda!203814)))

(declare-fun bs!1080352 () Bool)

(assert (= bs!1080352 (and d!1486665 d!1486661)))

(assert (=> bs!1080352 (not (= lambda!203827 lambda!203826))))

(declare-fun bs!1080353 () Bool)

(assert (= bs!1080353 (and d!1486665 b!4676715)))

(assert (=> bs!1080353 (not (= lambda!203827 lambda!203823))))

(assert (=> d!1486665 true))

(assert (=> d!1486665 true))

(assert (=> d!1486665 (= (allKeysSameHash!1592 oldBucket!34 hash!405 hashF!1323) (forall!11189 oldBucket!34 lambda!203827))))

(declare-fun bs!1080354 () Bool)

(assert (= bs!1080354 d!1486665))

(declare-fun m!5570929 () Bool)

(assert (=> bs!1080354 m!5570929))

(assert (=> b!4676458 d!1486665))

(declare-fun d!1486667 () Bool)

(declare-fun res!1969878 () Bool)

(declare-fun e!2918008 () Bool)

(assert (=> d!1486667 (=> res!1969878 e!2918008)))

(assert (=> d!1486667 (= res!1969878 ((_ is Nil!52188) (t!359454 (toList!5421 lm!2023))))))

(assert (=> d!1486667 (= (forall!11187 (t!359454 (toList!5421 lm!2023)) lambda!203707) e!2918008)))

(declare-fun b!4676723 () Bool)

(declare-fun e!2918009 () Bool)

(assert (=> b!4676723 (= e!2918008 e!2918009)))

(declare-fun res!1969879 () Bool)

(assert (=> b!4676723 (=> (not res!1969879) (not e!2918009))))

(assert (=> b!4676723 (= res!1969879 (dynLambda!21667 lambda!203707 (h!58387 (t!359454 (toList!5421 lm!2023)))))))

(declare-fun b!4676724 () Bool)

(assert (=> b!4676724 (= e!2918009 (forall!11187 (t!359454 (t!359454 (toList!5421 lm!2023))) lambda!203707))))

(assert (= (and d!1486667 (not res!1969878)) b!4676723))

(assert (= (and b!4676723 res!1969879) b!4676724))

(declare-fun b_lambda!176575 () Bool)

(assert (=> (not b_lambda!176575) (not b!4676723)))

(declare-fun m!5570931 () Bool)

(assert (=> b!4676723 m!5570931))

(declare-fun m!5570933 () Bool)

(assert (=> b!4676724 m!5570933))

(assert (=> b!4676469 d!1486667))

(declare-fun bs!1080355 () Bool)

(declare-fun d!1486669 () Bool)

(assert (= bs!1080355 (and d!1486669 start!472004)))

(declare-fun lambda!203828 () Int)

(assert (=> bs!1080355 (= lambda!203828 lambda!203707)))

(declare-fun bs!1080356 () Bool)

(assert (= bs!1080356 (and d!1486669 d!1486601)))

(assert (=> bs!1080356 (= lambda!203828 lambda!203798)))

(declare-fun bs!1080357 () Bool)

(assert (= bs!1080357 (and d!1486669 d!1486651)))

(assert (=> bs!1080357 (= lambda!203828 lambda!203815)))

(declare-fun bs!1080358 () Bool)

(assert (= bs!1080358 (and d!1486669 d!1486653)))

(assert (=> bs!1080358 (not (= lambda!203828 lambda!203818))))

(declare-fun lt!1836631 () ListMap!4785)

(assert (=> d!1486669 (invariantList!1364 (toList!5422 lt!1836631))))

(declare-fun e!2918010 () ListMap!4785)

(assert (=> d!1486669 (= lt!1836631 e!2918010)))

(declare-fun c!800234 () Bool)

(assert (=> d!1486669 (= c!800234 ((_ is Cons!52188) (Cons!52188 (tuple2!53461 hash!405 lt!1836230) (t!359454 (toList!5421 lm!2023)))))))

(assert (=> d!1486669 (forall!11187 (Cons!52188 (tuple2!53461 hash!405 lt!1836230) (t!359454 (toList!5421 lm!2023))) lambda!203828)))

(assert (=> d!1486669 (= (extractMap!1792 (Cons!52188 (tuple2!53461 hash!405 lt!1836230) (t!359454 (toList!5421 lm!2023)))) lt!1836631)))

(declare-fun b!4676725 () Bool)

(assert (=> b!4676725 (= e!2918010 (addToMapMapFromBucket!1198 (_2!30024 (h!58387 (Cons!52188 (tuple2!53461 hash!405 lt!1836230) (t!359454 (toList!5421 lm!2023))))) (extractMap!1792 (t!359454 (Cons!52188 (tuple2!53461 hash!405 lt!1836230) (t!359454 (toList!5421 lm!2023)))))))))

(declare-fun b!4676726 () Bool)

(assert (=> b!4676726 (= e!2918010 (ListMap!4786 Nil!52187))))

(assert (= (and d!1486669 c!800234) b!4676725))

(assert (= (and d!1486669 (not c!800234)) b!4676726))

(declare-fun m!5570935 () Bool)

(assert (=> d!1486669 m!5570935))

(declare-fun m!5570937 () Bool)

(assert (=> d!1486669 m!5570937))

(declare-fun m!5570939 () Bool)

(assert (=> b!4676725 m!5570939))

(assert (=> b!4676725 m!5570939))

(declare-fun m!5570941 () Bool)

(assert (=> b!4676725 m!5570941))

(assert (=> b!4676459 d!1486669))

(declare-fun bs!1080359 () Bool)

(declare-fun d!1486671 () Bool)

(assert (= bs!1080359 (and d!1486671 d!1486601)))

(declare-fun lambda!203829 () Int)

(assert (=> bs!1080359 (= lambda!203829 lambda!203798)))

(declare-fun bs!1080360 () Bool)

(assert (= bs!1080360 (and d!1486671 d!1486653)))

(assert (=> bs!1080360 (not (= lambda!203829 lambda!203818))))

(declare-fun bs!1080361 () Bool)

(assert (= bs!1080361 (and d!1486671 d!1486651)))

(assert (=> bs!1080361 (= lambda!203829 lambda!203815)))

(declare-fun bs!1080362 () Bool)

(assert (= bs!1080362 (and d!1486671 d!1486669)))

(assert (=> bs!1080362 (= lambda!203829 lambda!203828)))

(declare-fun bs!1080363 () Bool)

(assert (= bs!1080363 (and d!1486671 start!472004)))

(assert (=> bs!1080363 (= lambda!203829 lambda!203707)))

(declare-fun lt!1836632 () ListMap!4785)

(assert (=> d!1486671 (invariantList!1364 (toList!5422 lt!1836632))))

(declare-fun e!2918011 () ListMap!4785)

(assert (=> d!1486671 (= lt!1836632 e!2918011)))

(declare-fun c!800235 () Bool)

(assert (=> d!1486671 (= c!800235 ((_ is Cons!52188) (Cons!52188 (tuple2!53461 hash!405 newBucket!218) (t!359454 (toList!5421 lm!2023)))))))

(assert (=> d!1486671 (forall!11187 (Cons!52188 (tuple2!53461 hash!405 newBucket!218) (t!359454 (toList!5421 lm!2023))) lambda!203829)))

(assert (=> d!1486671 (= (extractMap!1792 (Cons!52188 (tuple2!53461 hash!405 newBucket!218) (t!359454 (toList!5421 lm!2023)))) lt!1836632)))

(declare-fun b!4676727 () Bool)

(assert (=> b!4676727 (= e!2918011 (addToMapMapFromBucket!1198 (_2!30024 (h!58387 (Cons!52188 (tuple2!53461 hash!405 newBucket!218) (t!359454 (toList!5421 lm!2023))))) (extractMap!1792 (t!359454 (Cons!52188 (tuple2!53461 hash!405 newBucket!218) (t!359454 (toList!5421 lm!2023)))))))))

(declare-fun b!4676728 () Bool)

(assert (=> b!4676728 (= e!2918011 (ListMap!4786 Nil!52187))))

(assert (= (and d!1486671 c!800235) b!4676727))

(assert (= (and d!1486671 (not c!800235)) b!4676728))

(declare-fun m!5570943 () Bool)

(assert (=> d!1486671 m!5570943))

(declare-fun m!5570945 () Bool)

(assert (=> d!1486671 m!5570945))

(declare-fun m!5570947 () Bool)

(assert (=> b!4676727 m!5570947))

(assert (=> b!4676727 m!5570947))

(declare-fun m!5570949 () Bool)

(assert (=> b!4676727 m!5570949))

(assert (=> b!4676459 d!1486671))

(declare-fun d!1486673 () Bool)

(assert (=> d!1486673 (= (tail!8378 oldBucket!34) (t!359453 oldBucket!34))))

(assert (=> b!4676457 d!1486673))

(declare-fun d!1486675 () Bool)

(declare-fun res!1969880 () Bool)

(declare-fun e!2918012 () Bool)

(assert (=> d!1486675 (=> res!1969880 e!2918012)))

(assert (=> d!1486675 (= res!1969880 (not ((_ is Cons!52187) oldBucket!34)))))

(assert (=> d!1486675 (= (noDuplicateKeys!1766 oldBucket!34) e!2918012)))

(declare-fun b!4676729 () Bool)

(declare-fun e!2918013 () Bool)

(assert (=> b!4676729 (= e!2918012 e!2918013)))

(declare-fun res!1969881 () Bool)

(assert (=> b!4676729 (=> (not res!1969881) (not e!2918013))))

(assert (=> b!4676729 (= res!1969881 (not (containsKey!2899 (t!359453 oldBucket!34) (_1!30023 (h!58386 oldBucket!34)))))))

(declare-fun b!4676730 () Bool)

(assert (=> b!4676730 (= e!2918013 (noDuplicateKeys!1766 (t!359453 oldBucket!34)))))

(assert (= (and d!1486675 (not res!1969880)) b!4676729))

(assert (= (and b!4676729 res!1969881) b!4676730))

(declare-fun m!5570951 () Bool)

(assert (=> b!4676729 m!5570951))

(declare-fun m!5570953 () Bool)

(assert (=> b!4676730 m!5570953))

(assert (=> b!4676468 d!1486675))

(declare-fun e!2918016 () Bool)

(declare-fun tp!1344678 () Bool)

(declare-fun b!4676735 () Bool)

(assert (=> b!4676735 (= e!2918016 (and tp_is_empty!30357 tp_is_empty!30359 tp!1344678))))

(assert (=> b!4676456 (= tp!1344664 e!2918016)))

(assert (= (and b!4676456 ((_ is Cons!52187) (t!359453 newBucket!218))) b!4676735))

(declare-fun b!4676740 () Bool)

(declare-fun e!2918019 () Bool)

(declare-fun tp!1344683 () Bool)

(declare-fun tp!1344684 () Bool)

(assert (=> b!4676740 (= e!2918019 (and tp!1344683 tp!1344684))))

(assert (=> b!4676465 (= tp!1344665 e!2918019)))

(assert (= (and b!4676465 ((_ is Cons!52188) (toList!5421 lm!2023))) b!4676740))

(declare-fun tp!1344685 () Bool)

(declare-fun e!2918020 () Bool)

(declare-fun b!4676741 () Bool)

(assert (=> b!4676741 (= e!2918020 (and tp_is_empty!30357 tp_is_empty!30359 tp!1344685))))

(assert (=> b!4676452 (= tp!1344663 e!2918020)))

(assert (= (and b!4676452 ((_ is Cons!52187) (t!359453 oldBucket!34))) b!4676741))

(declare-fun b_lambda!176577 () Bool)

(assert (= b_lambda!176575 (or start!472004 b_lambda!176577)))

(declare-fun bs!1080364 () Bool)

(declare-fun d!1486677 () Bool)

(assert (= bs!1080364 (and d!1486677 start!472004)))

(assert (=> bs!1080364 (= (dynLambda!21667 lambda!203707 (h!58387 (t!359454 (toList!5421 lm!2023)))) (noDuplicateKeys!1766 (_2!30024 (h!58387 (t!359454 (toList!5421 lm!2023))))))))

(declare-fun m!5570955 () Bool)

(assert (=> bs!1080364 m!5570955))

(assert (=> b!4676723 d!1486677))

(declare-fun b_lambda!176579 () Bool)

(assert (= b_lambda!176565 (or start!472004 b_lambda!176579)))

(declare-fun bs!1080365 () Bool)

(declare-fun d!1486679 () Bool)

(assert (= bs!1080365 (and d!1486679 start!472004)))

(assert (=> bs!1080365 (= (dynLambda!21667 lambda!203707 (h!58387 (toList!5421 lm!2023))) (noDuplicateKeys!1766 (_2!30024 (h!58387 (toList!5421 lm!2023)))))))

(assert (=> bs!1080365 m!5570631))

(assert (=> b!4676476 d!1486679))

(check-sat (not b!4676729) (not b!4676722) (not d!1486655) (not bm!326804) (not b!4676692) (not b!4676712) (not bm!326814) (not b!4676630) (not b!4676593) (not b!4676660) (not bm!326809) (not b!4676659) (not d!1486643) (not d!1486609) (not b!4676714) (not b!4676690) (not bm!326803) (not b!4676741) (not b!4676697) (not bm!326810) (not bm!326813) (not d!1486671) (not b!4676691) (not bm!326794) (not b!4676735) (not b!4676658) (not b!4676730) (not b!4676591) (not bm!326802) (not b!4676620) (not b!4676631) (not b!4676727) (not b!4676725) (not bm!326795) (not d!1486641) tp_is_empty!30357 tp_is_empty!30359 (not bm!326796) (not b!4676705) (not d!1486635) (not b!4676713) (not d!1486661) (not d!1486649) (not bs!1080365) (not b!4676693) (not bm!326812) (not d!1486665) (not b!4676661) (not bm!326811) (not bm!326800) (not b!4676663) (not d!1486607) (not d!1486621) (not b!4676608) (not b!4676662) (not d!1486615) (not b!4676477) (not d!1486647) (not d!1486557) (not b!4676592) (not b!4676709) (not bs!1080364) (not bm!326808) (not d!1486669) (not b!4676706) (not d!1486601) (not b!4676740) (not b_lambda!176577) (not d!1486659) (not d!1486629) (not d!1486559) (not b!4676657) (not b!4676724) (not d!1486651) (not bm!326805) (not bm!326801) (not b!4676689) (not b!4676695) (not d!1486645) (not d!1486653) (not b_lambda!176579) (not b!4676688) (not b!4676707) (not b!4676629) (not b!4676708))
(check-sat)
