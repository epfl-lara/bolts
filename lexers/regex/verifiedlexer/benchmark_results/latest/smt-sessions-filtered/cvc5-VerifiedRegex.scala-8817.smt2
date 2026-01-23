; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471658 () Bool)

(assert start!471658)

(declare-fun b!4673652 () Bool)

(declare-fun res!1967916 () Bool)

(declare-fun e!2916435 () Bool)

(assert (=> b!4673652 (=> (not res!1967916) (not e!2916435))))

(declare-datatypes ((Hashable!6104 0))(
  ( (HashableExt!6103 (__x!31807 Int)) )
))
(declare-fun hashF!1323 () Hashable!6104)

(declare-datatypes ((K!13488 0))(
  ( (K!13489 (val!19061 Int)) )
))
(declare-datatypes ((V!13734 0))(
  ( (V!13735 (val!19062 Int)) )
))
(declare-datatypes ((tuple2!53334 0))(
  ( (tuple2!53335 (_1!29961 K!13488) (_2!29961 V!13734)) )
))
(declare-datatypes ((List!52240 0))(
  ( (Nil!52116) (Cons!52116 (h!58306 tuple2!53334) (t!359378 List!52240)) )
))
(declare-fun oldBucket!34 () List!52240)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1561 (List!52240 (_ BitVec 64) Hashable!6104) Bool)

(assert (=> b!4673652 (= res!1967916 (allKeysSameHash!1561 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4673653 () Bool)

(declare-fun e!2916430 () Bool)

(declare-fun e!2916431 () Bool)

(assert (=> b!4673653 (= e!2916430 (not e!2916431))))

(declare-fun res!1967922 () Bool)

(assert (=> b!4673653 (=> res!1967922 e!2916431)))

(declare-fun key!4653 () K!13488)

(assert (=> b!4673653 (= res!1967922 (or (not (is-Cons!52116 oldBucket!34)) (not (= (_1!29961 (h!58306 oldBucket!34)) key!4653))))))

(declare-fun e!2916433 () Bool)

(assert (=> b!4673653 e!2916433))

(declare-fun res!1967924 () Bool)

(assert (=> b!4673653 (=> (not res!1967924) (not e!2916433))))

(declare-datatypes ((tuple2!53336 0))(
  ( (tuple2!53337 (_1!29962 (_ BitVec 64)) (_2!29962 List!52240)) )
))
(declare-datatypes ((List!52241 0))(
  ( (Nil!52117) (Cons!52117 (h!58307 tuple2!53336) (t!359379 List!52241)) )
))
(declare-datatypes ((ListLongMap!3889 0))(
  ( (ListLongMap!3890 (toList!5359 List!52241)) )
))
(declare-fun lm!2023 () ListLongMap!3889)

(declare-fun tail!8307 (ListLongMap!3889) ListLongMap!3889)

(assert (=> b!4673653 (= res!1967924 (= (t!359379 (toList!5359 lm!2023)) (toList!5359 (tail!8307 lm!2023))))))

(declare-fun b!4673654 () Bool)

(declare-fun res!1967915 () Bool)

(assert (=> b!4673654 (=> (not res!1967915) (not e!2916430))))

(assert (=> b!4673654 (= res!1967915 (is-Cons!52117 (toList!5359 lm!2023)))))

(declare-fun res!1967913 () Bool)

(assert (=> start!471658 (=> (not res!1967913) (not e!2916435))))

(declare-fun lambda!203087 () Int)

(declare-fun forall!11147 (List!52241 Int) Bool)

(assert (=> start!471658 (= res!1967913 (forall!11147 (toList!5359 lm!2023) lambda!203087))))

(assert (=> start!471658 e!2916435))

(declare-fun e!2916436 () Bool)

(declare-fun inv!67363 (ListLongMap!3889) Bool)

(assert (=> start!471658 (and (inv!67363 lm!2023) e!2916436)))

(declare-fun tp_is_empty!30233 () Bool)

(assert (=> start!471658 tp_is_empty!30233))

(declare-fun e!2916434 () Bool)

(assert (=> start!471658 e!2916434))

(assert (=> start!471658 true))

(declare-fun e!2916432 () Bool)

(assert (=> start!471658 e!2916432))

(declare-fun b!4673655 () Bool)

(declare-fun res!1967917 () Bool)

(assert (=> b!4673655 (=> (not res!1967917) (not e!2916430))))

(declare-fun allKeysSameHashInMap!1649 (ListLongMap!3889 Hashable!6104) Bool)

(assert (=> b!4673655 (= res!1967917 (allKeysSameHashInMap!1649 lm!2023 hashF!1323))))

(declare-fun b!4673656 () Bool)

(declare-fun res!1967912 () Bool)

(assert (=> b!4673656 (=> (not res!1967912) (not e!2916435))))

(declare-fun newBucket!218 () List!52240)

(declare-fun noDuplicateKeys!1735 (List!52240) Bool)

(assert (=> b!4673656 (= res!1967912 (noDuplicateKeys!1735 newBucket!218))))

(declare-fun b!4673657 () Bool)

(declare-datatypes ((ListMap!4723 0))(
  ( (ListMap!4724 (toList!5360 List!52240)) )
))
(declare-fun lt!1834452 () ListMap!4723)

(declare-fun addToMapMapFromBucket!1167 (List!52240 ListMap!4723) ListMap!4723)

(declare-fun extractMap!1761 (List!52241) ListMap!4723)

(assert (=> b!4673657 (= e!2916433 (= lt!1834452 (addToMapMapFromBucket!1167 (_2!29962 (h!58307 (toList!5359 lm!2023))) (extractMap!1761 (t!359379 (toList!5359 lm!2023))))))))

(declare-fun b!4673658 () Bool)

(declare-fun tp!1344286 () Bool)

(assert (=> b!4673658 (= e!2916436 tp!1344286)))

(declare-fun b!4673659 () Bool)

(assert (=> b!4673659 (= e!2916431 (forall!11147 (Cons!52117 (tuple2!53337 hash!405 newBucket!218) (t!359379 (toList!5359 lm!2023))) lambda!203087))))

(declare-fun b!4673660 () Bool)

(declare-fun res!1967921 () Bool)

(assert (=> b!4673660 (=> (not res!1967921) (not e!2916430))))

(assert (=> b!4673660 (= res!1967921 (allKeysSameHash!1561 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4673661 () Bool)

(assert (=> b!4673661 (= e!2916435 e!2916430)))

(declare-fun res!1967925 () Bool)

(assert (=> b!4673661 (=> (not res!1967925) (not e!2916430))))

(declare-fun contains!15286 (ListMap!4723 K!13488) Bool)

(assert (=> b!4673661 (= res!1967925 (contains!15286 lt!1834452 key!4653))))

(assert (=> b!4673661 (= lt!1834452 (extractMap!1761 (toList!5359 lm!2023)))))

(declare-fun b!4673662 () Bool)

(declare-fun tp_is_empty!30235 () Bool)

(declare-fun tp!1344284 () Bool)

(assert (=> b!4673662 (= e!2916432 (and tp_is_empty!30233 tp_is_empty!30235 tp!1344284))))

(declare-fun b!4673663 () Bool)

(declare-fun res!1967923 () Bool)

(assert (=> b!4673663 (=> res!1967923 e!2916431)))

(declare-fun tail!8308 (List!52240) List!52240)

(assert (=> b!4673663 (= res!1967923 (not (= (tail!8308 oldBucket!34) newBucket!218)))))

(declare-fun b!4673664 () Bool)

(declare-fun res!1967920 () Bool)

(assert (=> b!4673664 (=> (not res!1967920) (not e!2916435))))

(assert (=> b!4673664 (= res!1967920 (noDuplicateKeys!1735 oldBucket!34))))

(declare-fun b!4673665 () Bool)

(declare-fun res!1967919 () Bool)

(assert (=> b!4673665 (=> (not res!1967919) (not e!2916430))))

(declare-fun head!9775 (List!52241) tuple2!53336)

(assert (=> b!4673665 (= res!1967919 (= (head!9775 (toList!5359 lm!2023)) (tuple2!53337 hash!405 oldBucket!34)))))

(declare-fun b!4673666 () Bool)

(declare-fun res!1967918 () Bool)

(assert (=> b!4673666 (=> (not res!1967918) (not e!2916430))))

(declare-fun hash!3892 (Hashable!6104 K!13488) (_ BitVec 64))

(assert (=> b!4673666 (= res!1967918 (= (hash!3892 hashF!1323 key!4653) hash!405))))

(declare-fun b!4673667 () Bool)

(declare-fun res!1967914 () Bool)

(assert (=> b!4673667 (=> (not res!1967914) (not e!2916435))))

(declare-fun removePairForKey!1330 (List!52240 K!13488) List!52240)

(assert (=> b!4673667 (= res!1967914 (= (removePairForKey!1330 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4673668 () Bool)

(declare-fun tp!1344285 () Bool)

(assert (=> b!4673668 (= e!2916434 (and tp_is_empty!30233 tp_is_empty!30235 tp!1344285))))

(assert (= (and start!471658 res!1967913) b!4673664))

(assert (= (and b!4673664 res!1967920) b!4673656))

(assert (= (and b!4673656 res!1967912) b!4673667))

(assert (= (and b!4673667 res!1967914) b!4673652))

(assert (= (and b!4673652 res!1967916) b!4673661))

(assert (= (and b!4673661 res!1967925) b!4673666))

(assert (= (and b!4673666 res!1967918) b!4673660))

(assert (= (and b!4673660 res!1967921) b!4673655))

(assert (= (and b!4673655 res!1967917) b!4673665))

(assert (= (and b!4673665 res!1967919) b!4673654))

(assert (= (and b!4673654 res!1967915) b!4673653))

(assert (= (and b!4673653 res!1967924) b!4673657))

(assert (= (and b!4673653 (not res!1967922)) b!4673663))

(assert (= (and b!4673663 (not res!1967923)) b!4673659))

(assert (= start!471658 b!4673658))

(assert (= (and start!471658 (is-Cons!52116 oldBucket!34)) b!4673668))

(assert (= (and start!471658 (is-Cons!52116 newBucket!218)) b!4673662))

(declare-fun m!5567201 () Bool)

(assert (=> b!4673663 m!5567201))

(declare-fun m!5567203 () Bool)

(assert (=> b!4673667 m!5567203))

(declare-fun m!5567205 () Bool)

(assert (=> b!4673652 m!5567205))

(declare-fun m!5567207 () Bool)

(assert (=> b!4673660 m!5567207))

(declare-fun m!5567209 () Bool)

(assert (=> b!4673653 m!5567209))

(declare-fun m!5567211 () Bool)

(assert (=> b!4673657 m!5567211))

(assert (=> b!4673657 m!5567211))

(declare-fun m!5567213 () Bool)

(assert (=> b!4673657 m!5567213))

(declare-fun m!5567215 () Bool)

(assert (=> start!471658 m!5567215))

(declare-fun m!5567217 () Bool)

(assert (=> start!471658 m!5567217))

(declare-fun m!5567219 () Bool)

(assert (=> b!4673656 m!5567219))

(declare-fun m!5567221 () Bool)

(assert (=> b!4673665 m!5567221))

(declare-fun m!5567223 () Bool)

(assert (=> b!4673655 m!5567223))

(declare-fun m!5567225 () Bool)

(assert (=> b!4673666 m!5567225))

(declare-fun m!5567227 () Bool)

(assert (=> b!4673661 m!5567227))

(declare-fun m!5567229 () Bool)

(assert (=> b!4673661 m!5567229))

(declare-fun m!5567231 () Bool)

(assert (=> b!4673664 m!5567231))

(declare-fun m!5567233 () Bool)

(assert (=> b!4673659 m!5567233))

(push 1)

(assert (not b!4673659))

(assert (not b!4673657))

(assert (not b!4673656))

(assert (not b!4673665))

(assert (not b!4673668))

(assert (not b!4673661))

(assert (not b!4673653))

(assert (not start!471658))

(assert (not b!4673664))

(assert (not b!4673652))

(assert (not b!4673655))

(assert (not b!4673658))

(assert (not b!4673666))

(assert (not b!4673662))

(assert tp_is_empty!30235)

(assert tp_is_empty!30233)

(assert (not b!4673667))

(assert (not b!4673663))

(assert (not b!4673660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1486076 () Bool)

(declare-fun tail!8311 (List!52241) List!52241)

(assert (=> d!1486076 (= (tail!8307 lm!2023) (ListLongMap!3890 (tail!8311 (toList!5359 lm!2023))))))

(declare-fun bs!1079294 () Bool)

(assert (= bs!1079294 d!1486076))

(declare-fun m!5567269 () Bool)

(assert (=> bs!1079294 m!5567269))

(assert (=> b!4673653 d!1486076))

(declare-fun d!1486078 () Bool)

(declare-fun res!1967972 () Bool)

(declare-fun e!2916462 () Bool)

(assert (=> d!1486078 (=> res!1967972 e!2916462)))

(assert (=> d!1486078 (= res!1967972 (not (is-Cons!52116 oldBucket!34)))))

(assert (=> d!1486078 (= (noDuplicateKeys!1735 oldBucket!34) e!2916462)))

(declare-fun b!4673724 () Bool)

(declare-fun e!2916463 () Bool)

(assert (=> b!4673724 (= e!2916462 e!2916463)))

(declare-fun res!1967973 () Bool)

(assert (=> b!4673724 (=> (not res!1967973) (not e!2916463))))

(declare-fun containsKey!2878 (List!52240 K!13488) Bool)

(assert (=> b!4673724 (= res!1967973 (not (containsKey!2878 (t!359378 oldBucket!34) (_1!29961 (h!58306 oldBucket!34)))))))

(declare-fun b!4673725 () Bool)

(assert (=> b!4673725 (= e!2916463 (noDuplicateKeys!1735 (t!359378 oldBucket!34)))))

(assert (= (and d!1486078 (not res!1967972)) b!4673724))

(assert (= (and b!4673724 res!1967973) b!4673725))

(declare-fun m!5567271 () Bool)

(assert (=> b!4673724 m!5567271))

(declare-fun m!5567273 () Bool)

(assert (=> b!4673725 m!5567273))

(assert (=> b!4673664 d!1486078))

(declare-fun d!1486080 () Bool)

(assert (=> d!1486080 (= (tail!8308 oldBucket!34) (t!359378 oldBucket!34))))

(assert (=> b!4673663 d!1486080))

(declare-fun d!1486082 () Bool)

(assert (=> d!1486082 true))

(assert (=> d!1486082 true))

(declare-fun lambda!203095 () Int)

(declare-fun forall!11149 (List!52240 Int) Bool)

(assert (=> d!1486082 (= (allKeysSameHash!1561 oldBucket!34 hash!405 hashF!1323) (forall!11149 oldBucket!34 lambda!203095))))

(declare-fun bs!1079295 () Bool)

(assert (= bs!1079295 d!1486082))

(declare-fun m!5567275 () Bool)

(assert (=> bs!1079295 m!5567275))

(assert (=> b!4673652 d!1486082))

(declare-fun d!1486084 () Bool)

(declare-fun res!1967974 () Bool)

(declare-fun e!2916464 () Bool)

(assert (=> d!1486084 (=> res!1967974 e!2916464)))

(assert (=> d!1486084 (= res!1967974 (not (is-Cons!52116 newBucket!218)))))

(assert (=> d!1486084 (= (noDuplicateKeys!1735 newBucket!218) e!2916464)))

(declare-fun b!4673730 () Bool)

(declare-fun e!2916465 () Bool)

(assert (=> b!4673730 (= e!2916464 e!2916465)))

(declare-fun res!1967975 () Bool)

(assert (=> b!4673730 (=> (not res!1967975) (not e!2916465))))

(assert (=> b!4673730 (= res!1967975 (not (containsKey!2878 (t!359378 newBucket!218) (_1!29961 (h!58306 newBucket!218)))))))

(declare-fun b!4673731 () Bool)

(assert (=> b!4673731 (= e!2916465 (noDuplicateKeys!1735 (t!359378 newBucket!218)))))

(assert (= (and d!1486084 (not res!1967974)) b!4673730))

(assert (= (and b!4673730 res!1967975) b!4673731))

(declare-fun m!5567277 () Bool)

(assert (=> b!4673730 m!5567277))

(declare-fun m!5567279 () Bool)

(assert (=> b!4673731 m!5567279))

(assert (=> b!4673656 d!1486084))

(declare-fun bs!1079296 () Bool)

(declare-fun d!1486086 () Bool)

(assert (= bs!1079296 (and d!1486086 start!471658)))

(declare-fun lambda!203098 () Int)

(assert (=> bs!1079296 (not (= lambda!203098 lambda!203087))))

(assert (=> d!1486086 true))

(assert (=> d!1486086 (= (allKeysSameHashInMap!1649 lm!2023 hashF!1323) (forall!11147 (toList!5359 lm!2023) lambda!203098))))

(declare-fun bs!1079297 () Bool)

(assert (= bs!1079297 d!1486086))

(declare-fun m!5567281 () Bool)

(assert (=> bs!1079297 m!5567281))

(assert (=> b!4673655 d!1486086))

(declare-fun d!1486088 () Bool)

(declare-fun hash!3894 (Hashable!6104 K!13488) (_ BitVec 64))

(assert (=> d!1486088 (= (hash!3892 hashF!1323 key!4653) (hash!3894 hashF!1323 key!4653))))

(declare-fun bs!1079298 () Bool)

(assert (= bs!1079298 d!1486088))

(declare-fun m!5567283 () Bool)

(assert (=> bs!1079298 m!5567283))

(assert (=> b!4673666 d!1486088))

(declare-fun d!1486090 () Bool)

(assert (=> d!1486090 (= (head!9775 (toList!5359 lm!2023)) (h!58307 (toList!5359 lm!2023)))))

(assert (=> b!4673665 d!1486090))

(declare-fun d!1486092 () Bool)

(declare-fun res!1967980 () Bool)

(declare-fun e!2916470 () Bool)

(assert (=> d!1486092 (=> res!1967980 e!2916470)))

(assert (=> d!1486092 (= res!1967980 (is-Nil!52117 (toList!5359 lm!2023)))))

(assert (=> d!1486092 (= (forall!11147 (toList!5359 lm!2023) lambda!203087) e!2916470)))

(declare-fun b!4673738 () Bool)

(declare-fun e!2916471 () Bool)

(assert (=> b!4673738 (= e!2916470 e!2916471)))

(declare-fun res!1967981 () Bool)

(assert (=> b!4673738 (=> (not res!1967981) (not e!2916471))))

(declare-fun dynLambda!21657 (Int tuple2!53336) Bool)

(assert (=> b!4673738 (= res!1967981 (dynLambda!21657 lambda!203087 (h!58307 (toList!5359 lm!2023))))))

(declare-fun b!4673739 () Bool)

(assert (=> b!4673739 (= e!2916471 (forall!11147 (t!359379 (toList!5359 lm!2023)) lambda!203087))))

(assert (= (and d!1486092 (not res!1967980)) b!4673738))

(assert (= (and b!4673738 res!1967981) b!4673739))

(declare-fun b_lambda!176485 () Bool)

(assert (=> (not b_lambda!176485) (not b!4673738)))

(declare-fun m!5567285 () Bool)

(assert (=> b!4673738 m!5567285))

(declare-fun m!5567287 () Bool)

(assert (=> b!4673739 m!5567287))

(assert (=> start!471658 d!1486092))

(declare-fun d!1486096 () Bool)

(declare-fun isStrictlySorted!594 (List!52241) Bool)

(assert (=> d!1486096 (= (inv!67363 lm!2023) (isStrictlySorted!594 (toList!5359 lm!2023)))))

(declare-fun bs!1079299 () Bool)

(assert (= bs!1079299 d!1486096))

(declare-fun m!5567289 () Bool)

(assert (=> bs!1079299 m!5567289))

(assert (=> start!471658 d!1486096))

(declare-fun bs!1079305 () Bool)

(declare-fun b!4673803 () Bool)

(assert (= bs!1079305 (and b!4673803 d!1486082)))

(declare-fun lambda!203133 () Int)

(assert (=> bs!1079305 (not (= lambda!203133 lambda!203095))))

(assert (=> b!4673803 true))

(declare-fun bs!1079306 () Bool)

(declare-fun b!4673802 () Bool)

(assert (= bs!1079306 (and b!4673802 d!1486082)))

(declare-fun lambda!203134 () Int)

(assert (=> bs!1079306 (not (= lambda!203134 lambda!203095))))

(declare-fun bs!1079307 () Bool)

(assert (= bs!1079307 (and b!4673802 b!4673803)))

(assert (=> bs!1079307 (= lambda!203134 lambda!203133)))

(assert (=> b!4673802 true))

(declare-fun lambda!203135 () Int)

(assert (=> bs!1079306 (not (= lambda!203135 lambda!203095))))

(declare-fun lt!1834528 () ListMap!4723)

(assert (=> bs!1079307 (= (= lt!1834528 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) (= lambda!203135 lambda!203133))))

(assert (=> b!4673802 (= (= lt!1834528 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) (= lambda!203135 lambda!203134))))

(assert (=> b!4673802 true))

(declare-fun bs!1079308 () Bool)

(declare-fun d!1486098 () Bool)

(assert (= bs!1079308 (and d!1486098 d!1486082)))

(declare-fun lambda!203136 () Int)

(assert (=> bs!1079308 (not (= lambda!203136 lambda!203095))))

(declare-fun bs!1079309 () Bool)

(assert (= bs!1079309 (and d!1486098 b!4673803)))

(declare-fun lt!1834534 () ListMap!4723)

(assert (=> bs!1079309 (= (= lt!1834534 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) (= lambda!203136 lambda!203133))))

(declare-fun bs!1079310 () Bool)

(assert (= bs!1079310 (and d!1486098 b!4673802)))

(assert (=> bs!1079310 (= (= lt!1834534 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) (= lambda!203136 lambda!203134))))

(assert (=> bs!1079310 (= (= lt!1834534 lt!1834528) (= lambda!203136 lambda!203135))))

(assert (=> d!1486098 true))

(declare-fun b!4673799 () Bool)

(declare-fun e!2916514 () Bool)

(assert (=> b!4673799 (= e!2916514 (forall!11149 (toList!5360 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) lambda!203135))))

(declare-fun e!2916515 () Bool)

(assert (=> d!1486098 e!2916515))

(declare-fun res!1968013 () Bool)

(assert (=> d!1486098 (=> (not res!1968013) (not e!2916515))))

(assert (=> d!1486098 (= res!1968013 (forall!11149 (_2!29962 (h!58307 (toList!5359 lm!2023))) lambda!203136))))

(declare-fun e!2916513 () ListMap!4723)

(assert (=> d!1486098 (= lt!1834534 e!2916513)))

(declare-fun c!799943 () Bool)

(assert (=> d!1486098 (= c!799943 (is-Nil!52116 (_2!29962 (h!58307 (toList!5359 lm!2023)))))))

(assert (=> d!1486098 (noDuplicateKeys!1735 (_2!29962 (h!58307 (toList!5359 lm!2023))))))

(assert (=> d!1486098 (= (addToMapMapFromBucket!1167 (_2!29962 (h!58307 (toList!5359 lm!2023))) (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) lt!1834534)))

(declare-fun call!326615 () Bool)

(declare-fun bm!326608 () Bool)

(declare-fun lt!1834536 () ListMap!4723)

(assert (=> bm!326608 (= call!326615 (forall!11149 (ite c!799943 (toList!5360 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) (toList!5360 lt!1834536)) (ite c!799943 lambda!203133 lambda!203135)))))

(declare-fun bm!326609 () Bool)

(declare-fun call!326613 () Bool)

(assert (=> bm!326609 (= call!326613 (forall!11149 (toList!5360 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) (ite c!799943 lambda!203133 lambda!203135)))))

(declare-fun b!4673800 () Bool)

(declare-fun invariantList!1354 (List!52240) Bool)

(assert (=> b!4673800 (= e!2916515 (invariantList!1354 (toList!5360 lt!1834534)))))

(declare-fun b!4673801 () Bool)

(declare-fun res!1968011 () Bool)

(assert (=> b!4673801 (=> (not res!1968011) (not e!2916515))))

(assert (=> b!4673801 (= res!1968011 (forall!11149 (toList!5360 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) lambda!203136))))

(declare-fun bm!326610 () Bool)

(declare-datatypes ((Unit!121392 0))(
  ( (Unit!121393) )
))
(declare-fun call!326614 () Unit!121392)

(declare-fun lemmaContainsAllItsOwnKeys!642 (ListMap!4723) Unit!121392)

(assert (=> bm!326610 (= call!326614 (lemmaContainsAllItsOwnKeys!642 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))))))

(assert (=> b!4673802 (= e!2916513 lt!1834528)))

(declare-fun +!2048 (ListMap!4723 tuple2!53334) ListMap!4723)

(assert (=> b!4673802 (= lt!1834536 (+!2048 (extractMap!1761 (t!359379 (toList!5359 lm!2023))) (h!58306 (_2!29962 (h!58307 (toList!5359 lm!2023))))))))

(assert (=> b!4673802 (= lt!1834528 (addToMapMapFromBucket!1167 (t!359378 (_2!29962 (h!58307 (toList!5359 lm!2023)))) (+!2048 (extractMap!1761 (t!359379 (toList!5359 lm!2023))) (h!58306 (_2!29962 (h!58307 (toList!5359 lm!2023)))))))))

(declare-fun lt!1834544 () Unit!121392)

(assert (=> b!4673802 (= lt!1834544 call!326614)))

(assert (=> b!4673802 (forall!11149 (toList!5360 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) lambda!203134)))

(declare-fun lt!1834535 () Unit!121392)

(assert (=> b!4673802 (= lt!1834535 lt!1834544)))

(assert (=> b!4673802 call!326615))

(declare-fun lt!1834531 () Unit!121392)

(declare-fun Unit!121394 () Unit!121392)

(assert (=> b!4673802 (= lt!1834531 Unit!121394)))

(assert (=> b!4673802 (forall!11149 (t!359378 (_2!29962 (h!58307 (toList!5359 lm!2023)))) lambda!203135)))

(declare-fun lt!1834538 () Unit!121392)

(declare-fun Unit!121395 () Unit!121392)

(assert (=> b!4673802 (= lt!1834538 Unit!121395)))

(declare-fun lt!1834530 () Unit!121392)

(declare-fun Unit!121396 () Unit!121392)

(assert (=> b!4673802 (= lt!1834530 Unit!121396)))

(declare-fun lt!1834526 () Unit!121392)

(declare-fun forallContained!3326 (List!52240 Int tuple2!53334) Unit!121392)

(assert (=> b!4673802 (= lt!1834526 (forallContained!3326 (toList!5360 lt!1834536) lambda!203135 (h!58306 (_2!29962 (h!58307 (toList!5359 lm!2023))))))))

(assert (=> b!4673802 (contains!15286 lt!1834536 (_1!29961 (h!58306 (_2!29962 (h!58307 (toList!5359 lm!2023))))))))

(declare-fun lt!1834533 () Unit!121392)

(declare-fun Unit!121397 () Unit!121392)

(assert (=> b!4673802 (= lt!1834533 Unit!121397)))

(assert (=> b!4673802 (contains!15286 lt!1834528 (_1!29961 (h!58306 (_2!29962 (h!58307 (toList!5359 lm!2023))))))))

(declare-fun lt!1834537 () Unit!121392)

(declare-fun Unit!121398 () Unit!121392)

(assert (=> b!4673802 (= lt!1834537 Unit!121398)))

(assert (=> b!4673802 (forall!11149 (_2!29962 (h!58307 (toList!5359 lm!2023))) lambda!203135)))

(declare-fun lt!1834532 () Unit!121392)

(declare-fun Unit!121399 () Unit!121392)

(assert (=> b!4673802 (= lt!1834532 Unit!121399)))

(assert (=> b!4673802 (forall!11149 (toList!5360 lt!1834536) lambda!203135)))

(declare-fun lt!1834540 () Unit!121392)

(declare-fun Unit!121400 () Unit!121392)

(assert (=> b!4673802 (= lt!1834540 Unit!121400)))

(declare-fun lt!1834543 () Unit!121392)

(declare-fun Unit!121401 () Unit!121392)

(assert (=> b!4673802 (= lt!1834543 Unit!121401)))

(declare-fun lt!1834541 () Unit!121392)

(declare-fun addForallContainsKeyThenBeforeAdding!641 (ListMap!4723 ListMap!4723 K!13488 V!13734) Unit!121392)

(assert (=> b!4673802 (= lt!1834541 (addForallContainsKeyThenBeforeAdding!641 (extractMap!1761 (t!359379 (toList!5359 lm!2023))) lt!1834528 (_1!29961 (h!58306 (_2!29962 (h!58307 (toList!5359 lm!2023))))) (_2!29961 (h!58306 (_2!29962 (h!58307 (toList!5359 lm!2023)))))))))

(assert (=> b!4673802 (forall!11149 (toList!5360 (extractMap!1761 (t!359379 (toList!5359 lm!2023)))) lambda!203135)))

(declare-fun lt!1834527 () Unit!121392)

(assert (=> b!4673802 (= lt!1834527 lt!1834541)))

(assert (=> b!4673802 call!326613))

(declare-fun lt!1834542 () Unit!121392)

(declare-fun Unit!121402 () Unit!121392)

(assert (=> b!4673802 (= lt!1834542 Unit!121402)))

(declare-fun res!1968012 () Bool)

(assert (=> b!4673802 (= res!1968012 (forall!11149 (_2!29962 (h!58307 (toList!5359 lm!2023))) lambda!203135))))

(assert (=> b!4673802 (=> (not res!1968012) (not e!2916514))))

(assert (=> b!4673802 e!2916514))

(declare-fun lt!1834529 () Unit!121392)

(declare-fun Unit!121403 () Unit!121392)

(assert (=> b!4673802 (= lt!1834529 Unit!121403)))

(assert (=> b!4673803 (= e!2916513 (extractMap!1761 (t!359379 (toList!5359 lm!2023))))))

(declare-fun lt!1834545 () Unit!121392)

(assert (=> b!4673803 (= lt!1834545 call!326614)))

(assert (=> b!4673803 call!326613))

(declare-fun lt!1834525 () Unit!121392)

(assert (=> b!4673803 (= lt!1834525 lt!1834545)))

(assert (=> b!4673803 call!326615))

(declare-fun lt!1834539 () Unit!121392)

(declare-fun Unit!121404 () Unit!121392)

(assert (=> b!4673803 (= lt!1834539 Unit!121404)))

(assert (= (and d!1486098 c!799943) b!4673803))

(assert (= (and d!1486098 (not c!799943)) b!4673802))

(assert (= (and b!4673802 res!1968012) b!4673799))

(assert (= (or b!4673803 b!4673802) bm!326610))

(assert (= (or b!4673803 b!4673802) bm!326609))

(assert (= (or b!4673803 b!4673802) bm!326608))

(assert (= (and d!1486098 res!1968013) b!4673801))

(assert (= (and b!4673801 res!1968011) b!4673800))

(declare-fun m!5567331 () Bool)

(assert (=> bm!326609 m!5567331))

(declare-fun m!5567333 () Bool)

(assert (=> b!4673799 m!5567333))

(declare-fun m!5567335 () Bool)

(assert (=> bm!326608 m!5567335))

(declare-fun m!5567337 () Bool)

(assert (=> b!4673800 m!5567337))

(assert (=> bm!326610 m!5567211))

(declare-fun m!5567339 () Bool)

(assert (=> bm!326610 m!5567339))

(declare-fun m!5567341 () Bool)

(assert (=> b!4673801 m!5567341))

(assert (=> b!4673802 m!5567211))

(declare-fun m!5567343 () Bool)

(assert (=> b!4673802 m!5567343))

(assert (=> b!4673802 m!5567343))

(declare-fun m!5567345 () Bool)

(assert (=> b!4673802 m!5567345))

(declare-fun m!5567347 () Bool)

(assert (=> b!4673802 m!5567347))

(declare-fun m!5567349 () Bool)

(assert (=> b!4673802 m!5567349))

(declare-fun m!5567351 () Bool)

(assert (=> b!4673802 m!5567351))

(declare-fun m!5567353 () Bool)

(assert (=> b!4673802 m!5567353))

(assert (=> b!4673802 m!5567349))

(declare-fun m!5567355 () Bool)

(assert (=> b!4673802 m!5567355))

(assert (=> b!4673802 m!5567333))

(declare-fun m!5567357 () Bool)

(assert (=> b!4673802 m!5567357))

(assert (=> b!4673802 m!5567211))

(declare-fun m!5567359 () Bool)

(assert (=> b!4673802 m!5567359))

(declare-fun m!5567361 () Bool)

(assert (=> b!4673802 m!5567361))

(declare-fun m!5567363 () Bool)

(assert (=> d!1486098 m!5567363))

(declare-fun m!5567365 () Bool)

(assert (=> d!1486098 m!5567365))

(assert (=> b!4673657 d!1486098))

(declare-fun bs!1079311 () Bool)

(declare-fun d!1486116 () Bool)

(assert (= bs!1079311 (and d!1486116 start!471658)))

(declare-fun lambda!203139 () Int)

(assert (=> bs!1079311 (= lambda!203139 lambda!203087)))

(declare-fun bs!1079312 () Bool)

(assert (= bs!1079312 (and d!1486116 d!1486086)))

(assert (=> bs!1079312 (not (= lambda!203139 lambda!203098))))

(declare-fun lt!1834551 () ListMap!4723)

(assert (=> d!1486116 (invariantList!1354 (toList!5360 lt!1834551))))

(declare-fun e!2916524 () ListMap!4723)

(assert (=> d!1486116 (= lt!1834551 e!2916524)))

(declare-fun c!799952 () Bool)

(assert (=> d!1486116 (= c!799952 (is-Cons!52117 (t!359379 (toList!5359 lm!2023))))))

(assert (=> d!1486116 (forall!11147 (t!359379 (toList!5359 lm!2023)) lambda!203139)))

(assert (=> d!1486116 (= (extractMap!1761 (t!359379 (toList!5359 lm!2023))) lt!1834551)))

(declare-fun b!4673822 () Bool)

(assert (=> b!4673822 (= e!2916524 (addToMapMapFromBucket!1167 (_2!29962 (h!58307 (t!359379 (toList!5359 lm!2023)))) (extractMap!1761 (t!359379 (t!359379 (toList!5359 lm!2023))))))))

(declare-fun b!4673823 () Bool)

(assert (=> b!4673823 (= e!2916524 (ListMap!4724 Nil!52116))))

(assert (= (and d!1486116 c!799952) b!4673822))

(assert (= (and d!1486116 (not c!799952)) b!4673823))

(declare-fun m!5567371 () Bool)

(assert (=> d!1486116 m!5567371))

(declare-fun m!5567373 () Bool)

(assert (=> d!1486116 m!5567373))

(declare-fun m!5567375 () Bool)

(assert (=> b!4673822 m!5567375))

(assert (=> b!4673822 m!5567375))

(declare-fun m!5567377 () Bool)

(assert (=> b!4673822 m!5567377))

(assert (=> b!4673657 d!1486116))

(declare-fun b!4673834 () Bool)

(declare-fun e!2916530 () List!52240)

(assert (=> b!4673834 (= e!2916530 (Cons!52116 (h!58306 oldBucket!34) (removePairForKey!1330 (t!359378 oldBucket!34) key!4653)))))

(declare-fun b!4673835 () Bool)

(assert (=> b!4673835 (= e!2916530 Nil!52116)))

(declare-fun b!4673832 () Bool)

(declare-fun e!2916529 () List!52240)

(assert (=> b!4673832 (= e!2916529 (t!359378 oldBucket!34))))

(declare-fun b!4673833 () Bool)

(assert (=> b!4673833 (= e!2916529 e!2916530)))

(declare-fun c!799958 () Bool)

(assert (=> b!4673833 (= c!799958 (is-Cons!52116 oldBucket!34))))

(declare-fun d!1486120 () Bool)

(declare-fun lt!1834554 () List!52240)

(assert (=> d!1486120 (not (containsKey!2878 lt!1834554 key!4653))))

(assert (=> d!1486120 (= lt!1834554 e!2916529)))

(declare-fun c!799957 () Bool)

(assert (=> d!1486120 (= c!799957 (and (is-Cons!52116 oldBucket!34) (= (_1!29961 (h!58306 oldBucket!34)) key!4653)))))

(assert (=> d!1486120 (noDuplicateKeys!1735 oldBucket!34)))

(assert (=> d!1486120 (= (removePairForKey!1330 oldBucket!34 key!4653) lt!1834554)))

(assert (= (and d!1486120 c!799957) b!4673832))

(assert (= (and d!1486120 (not c!799957)) b!4673833))

(assert (= (and b!4673833 c!799958) b!4673834))

(assert (= (and b!4673833 (not c!799958)) b!4673835))

(declare-fun m!5567379 () Bool)

(assert (=> b!4673834 m!5567379))

(declare-fun m!5567381 () Bool)

(assert (=> d!1486120 m!5567381))

(assert (=> d!1486120 m!5567231))

(assert (=> b!4673667 d!1486120))

(declare-fun b!4673854 () Bool)

(declare-fun e!2916545 () Unit!121392)

(declare-fun lt!1834575 () Unit!121392)

(assert (=> b!4673854 (= e!2916545 lt!1834575)))

(declare-fun lt!1834571 () Unit!121392)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1589 (List!52240 K!13488) Unit!121392)

(assert (=> b!4673854 (= lt!1834571 (lemmaContainsKeyImpliesGetValueByKeyDefined!1589 (toList!5360 lt!1834452) key!4653))))

(declare-datatypes ((Option!11949 0))(
  ( (None!11948) (Some!11948 (v!46311 V!13734)) )
))
(declare-fun isDefined!9204 (Option!11949) Bool)

(declare-fun getValueByKey!1697 (List!52240 K!13488) Option!11949)

(assert (=> b!4673854 (isDefined!9204 (getValueByKey!1697 (toList!5360 lt!1834452) key!4653))))

(declare-fun lt!1834572 () Unit!121392)

(assert (=> b!4673854 (= lt!1834572 lt!1834571)))

(declare-fun lemmaInListThenGetKeysListContains!789 (List!52240 K!13488) Unit!121392)

(assert (=> b!4673854 (= lt!1834575 (lemmaInListThenGetKeysListContains!789 (toList!5360 lt!1834452) key!4653))))

(declare-fun call!326618 () Bool)

(assert (=> b!4673854 call!326618))

(declare-fun bm!326613 () Bool)

(declare-datatypes ((List!52244 0))(
  ( (Nil!52120) (Cons!52120 (h!58311 K!13488) (t!359382 List!52244)) )
))
(declare-fun e!2916546 () List!52244)

(declare-fun contains!15288 (List!52244 K!13488) Bool)

(assert (=> bm!326613 (= call!326618 (contains!15288 e!2916546 key!4653))))

(declare-fun c!799966 () Bool)

(declare-fun c!799967 () Bool)

(assert (=> bm!326613 (= c!799966 c!799967)))

(declare-fun b!4673855 () Bool)

(declare-fun e!2916544 () Bool)

(declare-fun keys!18539 (ListMap!4723) List!52244)

(assert (=> b!4673855 (= e!2916544 (not (contains!15288 (keys!18539 lt!1834452) key!4653)))))

(declare-fun b!4673856 () Bool)

(declare-fun e!2916548 () Bool)

(declare-fun e!2916543 () Bool)

(assert (=> b!4673856 (= e!2916548 e!2916543)))

(declare-fun res!1968022 () Bool)

(assert (=> b!4673856 (=> (not res!1968022) (not e!2916543))))

(assert (=> b!4673856 (= res!1968022 (isDefined!9204 (getValueByKey!1697 (toList!5360 lt!1834452) key!4653)))))

(declare-fun b!4673857 () Bool)

(declare-fun e!2916547 () Unit!121392)

(declare-fun Unit!121405 () Unit!121392)

(assert (=> b!4673857 (= e!2916547 Unit!121405)))

(declare-fun b!4673858 () Bool)

(assert (=> b!4673858 (= e!2916543 (contains!15288 (keys!18539 lt!1834452) key!4653))))

(declare-fun d!1486122 () Bool)

(assert (=> d!1486122 e!2916548))

(declare-fun res!1968021 () Bool)

(assert (=> d!1486122 (=> res!1968021 e!2916548)))

(assert (=> d!1486122 (= res!1968021 e!2916544)))

(declare-fun res!1968020 () Bool)

(assert (=> d!1486122 (=> (not res!1968020) (not e!2916544))))

(declare-fun lt!1834577 () Bool)

(assert (=> d!1486122 (= res!1968020 (not lt!1834577))))

(declare-fun lt!1834573 () Bool)

(assert (=> d!1486122 (= lt!1834577 lt!1834573)))

(declare-fun lt!1834576 () Unit!121392)

(assert (=> d!1486122 (= lt!1834576 e!2916545)))

(assert (=> d!1486122 (= c!799967 lt!1834573)))

(declare-fun containsKey!2879 (List!52240 K!13488) Bool)

(assert (=> d!1486122 (= lt!1834573 (containsKey!2879 (toList!5360 lt!1834452) key!4653))))

(assert (=> d!1486122 (= (contains!15286 lt!1834452 key!4653) lt!1834577)))

(declare-fun b!4673859 () Bool)

(assert (=> b!4673859 (= e!2916545 e!2916547)))

(declare-fun c!799965 () Bool)

(assert (=> b!4673859 (= c!799965 call!326618)))

(declare-fun b!4673860 () Bool)

(assert (=> b!4673860 false))

(declare-fun lt!1834574 () Unit!121392)

(declare-fun lt!1834578 () Unit!121392)

(assert (=> b!4673860 (= lt!1834574 lt!1834578)))

(assert (=> b!4673860 (containsKey!2879 (toList!5360 lt!1834452) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!793 (List!52240 K!13488) Unit!121392)

(assert (=> b!4673860 (= lt!1834578 (lemmaInGetKeysListThenContainsKey!793 (toList!5360 lt!1834452) key!4653))))

(declare-fun Unit!121406 () Unit!121392)

(assert (=> b!4673860 (= e!2916547 Unit!121406)))

(declare-fun b!4673861 () Bool)

(declare-fun getKeysList!794 (List!52240) List!52244)

(assert (=> b!4673861 (= e!2916546 (getKeysList!794 (toList!5360 lt!1834452)))))

(declare-fun b!4673862 () Bool)

(assert (=> b!4673862 (= e!2916546 (keys!18539 lt!1834452))))

(assert (= (and d!1486122 c!799967) b!4673854))

(assert (= (and d!1486122 (not c!799967)) b!4673859))

(assert (= (and b!4673859 c!799965) b!4673860))

(assert (= (and b!4673859 (not c!799965)) b!4673857))

(assert (= (or b!4673854 b!4673859) bm!326613))

(assert (= (and bm!326613 c!799966) b!4673861))

(assert (= (and bm!326613 (not c!799966)) b!4673862))

(assert (= (and d!1486122 res!1968020) b!4673855))

(assert (= (and d!1486122 (not res!1968021)) b!4673856))

(assert (= (and b!4673856 res!1968022) b!4673858))

(declare-fun m!5567383 () Bool)

(assert (=> b!4673861 m!5567383))

(declare-fun m!5567385 () Bool)

(assert (=> b!4673858 m!5567385))

(assert (=> b!4673858 m!5567385))

(declare-fun m!5567387 () Bool)

(assert (=> b!4673858 m!5567387))

(declare-fun m!5567389 () Bool)

(assert (=> b!4673856 m!5567389))

(assert (=> b!4673856 m!5567389))

(declare-fun m!5567391 () Bool)

(assert (=> b!4673856 m!5567391))

(declare-fun m!5567393 () Bool)

(assert (=> bm!326613 m!5567393))

(declare-fun m!5567395 () Bool)

(assert (=> d!1486122 m!5567395))

(assert (=> b!4673855 m!5567385))

(assert (=> b!4673855 m!5567385))

(assert (=> b!4673855 m!5567387))

(assert (=> b!4673860 m!5567395))

(declare-fun m!5567397 () Bool)

(assert (=> b!4673860 m!5567397))

(declare-fun m!5567399 () Bool)

(assert (=> b!4673854 m!5567399))

(assert (=> b!4673854 m!5567389))

(assert (=> b!4673854 m!5567389))

(assert (=> b!4673854 m!5567391))

(declare-fun m!5567401 () Bool)

(assert (=> b!4673854 m!5567401))

(assert (=> b!4673862 m!5567385))

(assert (=> b!4673661 d!1486122))

(declare-fun bs!1079313 () Bool)

(declare-fun d!1486124 () Bool)

(assert (= bs!1079313 (and d!1486124 start!471658)))

(declare-fun lambda!203140 () Int)

(assert (=> bs!1079313 (= lambda!203140 lambda!203087)))

(declare-fun bs!1079314 () Bool)

(assert (= bs!1079314 (and d!1486124 d!1486086)))

(assert (=> bs!1079314 (not (= lambda!203140 lambda!203098))))

(declare-fun bs!1079315 () Bool)

(assert (= bs!1079315 (and d!1486124 d!1486116)))

(assert (=> bs!1079315 (= lambda!203140 lambda!203139)))

(declare-fun lt!1834579 () ListMap!4723)

(assert (=> d!1486124 (invariantList!1354 (toList!5360 lt!1834579))))

(declare-fun e!2916549 () ListMap!4723)

(assert (=> d!1486124 (= lt!1834579 e!2916549)))

(declare-fun c!799968 () Bool)

(assert (=> d!1486124 (= c!799968 (is-Cons!52117 (toList!5359 lm!2023)))))

(assert (=> d!1486124 (forall!11147 (toList!5359 lm!2023) lambda!203140)))

(assert (=> d!1486124 (= (extractMap!1761 (toList!5359 lm!2023)) lt!1834579)))

(declare-fun b!4673863 () Bool)

(assert (=> b!4673863 (= e!2916549 (addToMapMapFromBucket!1167 (_2!29962 (h!58307 (toList!5359 lm!2023))) (extractMap!1761 (t!359379 (toList!5359 lm!2023)))))))

(declare-fun b!4673864 () Bool)

(assert (=> b!4673864 (= e!2916549 (ListMap!4724 Nil!52116))))

(assert (= (and d!1486124 c!799968) b!4673863))

(assert (= (and d!1486124 (not c!799968)) b!4673864))

(declare-fun m!5567403 () Bool)

(assert (=> d!1486124 m!5567403))

(declare-fun m!5567405 () Bool)

(assert (=> d!1486124 m!5567405))

(assert (=> b!4673863 m!5567211))

(assert (=> b!4673863 m!5567211))

(assert (=> b!4673863 m!5567213))

(assert (=> b!4673661 d!1486124))

(declare-fun bs!1079316 () Bool)

(declare-fun d!1486126 () Bool)

(assert (= bs!1079316 (and d!1486126 b!4673802)))

(declare-fun lambda!203141 () Int)

(assert (=> bs!1079316 (not (= lambda!203141 lambda!203134))))

(declare-fun bs!1079317 () Bool)

(assert (= bs!1079317 (and d!1486126 d!1486098)))

(assert (=> bs!1079317 (not (= lambda!203141 lambda!203136))))

(assert (=> bs!1079316 (not (= lambda!203141 lambda!203135))))

(declare-fun bs!1079318 () Bool)

(assert (= bs!1079318 (and d!1486126 d!1486082)))

(assert (=> bs!1079318 (= lambda!203141 lambda!203095)))

(declare-fun bs!1079319 () Bool)

(assert (= bs!1079319 (and d!1486126 b!4673803)))

(assert (=> bs!1079319 (not (= lambda!203141 lambda!203133))))

(assert (=> d!1486126 true))

(assert (=> d!1486126 true))

(assert (=> d!1486126 (= (allKeysSameHash!1561 newBucket!218 hash!405 hashF!1323) (forall!11149 newBucket!218 lambda!203141))))

(declare-fun bs!1079320 () Bool)

(assert (= bs!1079320 d!1486126))

(declare-fun m!5567407 () Bool)

(assert (=> bs!1079320 m!5567407))

(assert (=> b!4673660 d!1486126))

(declare-fun d!1486128 () Bool)

(declare-fun res!1968023 () Bool)

(declare-fun e!2916550 () Bool)

(assert (=> d!1486128 (=> res!1968023 e!2916550)))

(assert (=> d!1486128 (= res!1968023 (is-Nil!52117 (Cons!52117 (tuple2!53337 hash!405 newBucket!218) (t!359379 (toList!5359 lm!2023)))))))

(assert (=> d!1486128 (= (forall!11147 (Cons!52117 (tuple2!53337 hash!405 newBucket!218) (t!359379 (toList!5359 lm!2023))) lambda!203087) e!2916550)))

(declare-fun b!4673865 () Bool)

(declare-fun e!2916551 () Bool)

(assert (=> b!4673865 (= e!2916550 e!2916551)))

(declare-fun res!1968024 () Bool)

(assert (=> b!4673865 (=> (not res!1968024) (not e!2916551))))

(assert (=> b!4673865 (= res!1968024 (dynLambda!21657 lambda!203087 (h!58307 (Cons!52117 (tuple2!53337 hash!405 newBucket!218) (t!359379 (toList!5359 lm!2023))))))))

(declare-fun b!4673866 () Bool)

(assert (=> b!4673866 (= e!2916551 (forall!11147 (t!359379 (Cons!52117 (tuple2!53337 hash!405 newBucket!218) (t!359379 (toList!5359 lm!2023)))) lambda!203087))))

(assert (= (and d!1486128 (not res!1968023)) b!4673865))

(assert (= (and b!4673865 res!1968024) b!4673866))

(declare-fun b_lambda!176491 () Bool)

(assert (=> (not b_lambda!176491) (not b!4673865)))

(declare-fun m!5567409 () Bool)

(assert (=> b!4673865 m!5567409))

(declare-fun m!5567411 () Bool)

(assert (=> b!4673866 m!5567411))

(assert (=> b!4673659 d!1486128))

(declare-fun b!4673871 () Bool)

(declare-fun e!2916554 () Bool)

(declare-fun tp!1344300 () Bool)

(declare-fun tp!1344301 () Bool)

(assert (=> b!4673871 (= e!2916554 (and tp!1344300 tp!1344301))))

(assert (=> b!4673658 (= tp!1344286 e!2916554)))

(assert (= (and b!4673658 (is-Cons!52117 (toList!5359 lm!2023))) b!4673871))

(declare-fun e!2916557 () Bool)

(declare-fun tp!1344304 () Bool)

(declare-fun b!4673876 () Bool)

(assert (=> b!4673876 (= e!2916557 (and tp_is_empty!30233 tp_is_empty!30235 tp!1344304))))

(assert (=> b!4673668 (= tp!1344285 e!2916557)))

(assert (= (and b!4673668 (is-Cons!52116 (t!359378 oldBucket!34))) b!4673876))

(declare-fun b!4673877 () Bool)

(declare-fun tp!1344305 () Bool)

(declare-fun e!2916558 () Bool)

(assert (=> b!4673877 (= e!2916558 (and tp_is_empty!30233 tp_is_empty!30235 tp!1344305))))

(assert (=> b!4673662 (= tp!1344284 e!2916558)))

(assert (= (and b!4673662 (is-Cons!52116 (t!359378 newBucket!218))) b!4673877))

(declare-fun b_lambda!176493 () Bool)

(assert (= b_lambda!176491 (or start!471658 b_lambda!176493)))

(declare-fun bs!1079321 () Bool)

(declare-fun d!1486130 () Bool)

(assert (= bs!1079321 (and d!1486130 start!471658)))

(assert (=> bs!1079321 (= (dynLambda!21657 lambda!203087 (h!58307 (Cons!52117 (tuple2!53337 hash!405 newBucket!218) (t!359379 (toList!5359 lm!2023))))) (noDuplicateKeys!1735 (_2!29962 (h!58307 (Cons!52117 (tuple2!53337 hash!405 newBucket!218) (t!359379 (toList!5359 lm!2023)))))))))

(declare-fun m!5567413 () Bool)

(assert (=> bs!1079321 m!5567413))

(assert (=> b!4673865 d!1486130))

(declare-fun b_lambda!176495 () Bool)

(assert (= b_lambda!176485 (or start!471658 b_lambda!176495)))

(declare-fun bs!1079322 () Bool)

(declare-fun d!1486132 () Bool)

(assert (= bs!1079322 (and d!1486132 start!471658)))

(assert (=> bs!1079322 (= (dynLambda!21657 lambda!203087 (h!58307 (toList!5359 lm!2023))) (noDuplicateKeys!1735 (_2!29962 (h!58307 (toList!5359 lm!2023)))))))

(assert (=> bs!1079322 m!5567365))

(assert (=> b!4673738 d!1486132))

(push 1)

(assert (not b!4673871))

(assert (not d!1486126))

(assert (not b!4673801))

(assert (not b!4673861))

(assert (not d!1486124))

(assert (not b!4673863))

(assert tp_is_empty!30235)

(assert (not bm!326608))

(assert (not d!1486098))

(assert (not b!4673802))

(assert (not bm!326610))

(assert (not b!4673822))

(assert (not b!4673855))

(assert (not b!4673739))

(assert (not d!1486086))

(assert (not d!1486116))

(assert tp_is_empty!30233)

(assert (not b!4673834))

(assert (not b!4673856))

(assert (not b!4673862))

(assert (not d!1486088))

(assert (not b!4673800))

(assert (not d!1486120))

(assert (not b_lambda!176495))

(assert (not d!1486082))

(assert (not d!1486122))

(assert (not b!4673725))

(assert (not bs!1079322))

(assert (not b!4673858))

(assert (not b!4673866))

(assert (not d!1486096))

(assert (not b!4673854))

(assert (not b!4673877))

(assert (not b_lambda!176493))

(assert (not b!4673730))

(assert (not b!4673860))

(assert (not bm!326613))

(assert (not b!4673731))

(assert (not d!1486076))

(assert (not b!4673876))

(assert (not bm!326609))

(assert (not b!4673724))

(assert (not b!4673799))

(assert (not bs!1079321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

