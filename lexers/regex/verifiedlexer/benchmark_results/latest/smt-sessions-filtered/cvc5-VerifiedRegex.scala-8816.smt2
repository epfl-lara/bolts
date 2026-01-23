; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471602 () Bool)

(assert start!471602)

(declare-fun b!4673356 () Bool)

(declare-fun res!1967770 () Bool)

(declare-fun e!2916265 () Bool)

(assert (=> b!4673356 (=> (not res!1967770) (not e!2916265))))

(declare-datatypes ((K!13483 0))(
  ( (K!13484 (val!19057 Int)) )
))
(declare-datatypes ((V!13729 0))(
  ( (V!13730 (val!19058 Int)) )
))
(declare-datatypes ((tuple2!53326 0))(
  ( (tuple2!53327 (_1!29957 K!13483) (_2!29957 V!13729)) )
))
(declare-datatypes ((List!52234 0))(
  ( (Nil!52110) (Cons!52110 (h!58298 tuple2!53326) (t!359372 List!52234)) )
))
(declare-datatypes ((tuple2!53328 0))(
  ( (tuple2!53329 (_1!29958 (_ BitVec 64)) (_2!29958 List!52234)) )
))
(declare-datatypes ((List!52235 0))(
  ( (Nil!52111) (Cons!52111 (h!58299 tuple2!53328) (t!359373 List!52235)) )
))
(declare-datatypes ((ListLongMap!3885 0))(
  ( (ListLongMap!3886 (toList!5355 List!52235)) )
))
(declare-fun lm!2023 () ListLongMap!3885)

(declare-fun oldBucket!34 () List!52234)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9773 (List!52235) tuple2!53328)

(assert (=> b!4673356 (= res!1967770 (= (head!9773 (toList!5355 lm!2023)) (tuple2!53329 hash!405 oldBucket!34)))))

(declare-fun b!4673357 () Bool)

(declare-fun res!1967761 () Bool)

(assert (=> b!4673357 (=> (not res!1967761) (not e!2916265))))

(declare-fun key!4653 () K!13483)

(declare-datatypes ((Hashable!6102 0))(
  ( (HashableExt!6101 (__x!31805 Int)) )
))
(declare-fun hashF!1323 () Hashable!6102)

(declare-fun hash!3888 (Hashable!6102 K!13483) (_ BitVec 64))

(assert (=> b!4673357 (= res!1967761 (= (hash!3888 hashF!1323 key!4653) hash!405))))

(declare-fun b!4673358 () Bool)

(declare-fun res!1967769 () Bool)

(declare-fun e!2916270 () Bool)

(assert (=> b!4673358 (=> (not res!1967769) (not e!2916270))))

(declare-fun allKeysSameHash!1559 (List!52234 (_ BitVec 64) Hashable!6102) Bool)

(assert (=> b!4673358 (= res!1967769 (allKeysSameHash!1559 oldBucket!34 hash!405 hashF!1323))))

(declare-fun e!2916268 () Bool)

(declare-fun tp!1344247 () Bool)

(declare-fun tp_is_empty!30227 () Bool)

(declare-fun b!4673359 () Bool)

(declare-fun tp_is_empty!30225 () Bool)

(assert (=> b!4673359 (= e!2916268 (and tp_is_empty!30225 tp_is_empty!30227 tp!1344247))))

(declare-fun b!4673360 () Bool)

(declare-fun res!1967764 () Bool)

(assert (=> b!4673360 (=> (not res!1967764) (not e!2916270))))

(declare-fun noDuplicateKeys!1733 (List!52234) Bool)

(assert (=> b!4673360 (= res!1967764 (noDuplicateKeys!1733 oldBucket!34))))

(declare-fun res!1967768 () Bool)

(assert (=> start!471602 (=> (not res!1967768) (not e!2916270))))

(declare-fun lambda!202991 () Int)

(declare-fun forall!11143 (List!52235 Int) Bool)

(assert (=> start!471602 (= res!1967768 (forall!11143 (toList!5355 lm!2023) lambda!202991))))

(assert (=> start!471602 e!2916270))

(declare-fun e!2916266 () Bool)

(declare-fun inv!67358 (ListLongMap!3885) Bool)

(assert (=> start!471602 (and (inv!67358 lm!2023) e!2916266)))

(assert (=> start!471602 tp_is_empty!30225))

(declare-fun e!2916264 () Bool)

(assert (=> start!471602 e!2916264))

(assert (=> start!471602 true))

(assert (=> start!471602 e!2916268))

(declare-fun b!4673361 () Bool)

(declare-fun res!1967765 () Bool)

(assert (=> b!4673361 (=> (not res!1967765) (not e!2916265))))

(declare-fun allKeysSameHashInMap!1647 (ListLongMap!3885 Hashable!6102) Bool)

(assert (=> b!4673361 (= res!1967765 (allKeysSameHashInMap!1647 lm!2023 hashF!1323))))

(declare-fun b!4673362 () Bool)

(declare-fun res!1967762 () Bool)

(assert (=> b!4673362 (=> (not res!1967762) (not e!2916270))))

(declare-fun newBucket!218 () List!52234)

(assert (=> b!4673362 (= res!1967762 (noDuplicateKeys!1733 newBucket!218))))

(declare-fun tp!1344246 () Bool)

(declare-fun b!4673363 () Bool)

(assert (=> b!4673363 (= e!2916264 (and tp_is_empty!30225 tp_is_empty!30227 tp!1344246))))

(declare-fun b!4673364 () Bool)

(declare-fun e!2916269 () Bool)

(assert (=> b!4673364 (= e!2916265 (not e!2916269))))

(declare-fun res!1967766 () Bool)

(assert (=> b!4673364 (=> res!1967766 e!2916269)))

(assert (=> b!4673364 (= res!1967766 (or (not (is-Cons!52110 oldBucket!34)) (not (= (_1!29957 (h!58298 oldBucket!34)) key!4653))))))

(declare-fun e!2916271 () Bool)

(assert (=> b!4673364 e!2916271))

(declare-fun res!1967773 () Bool)

(assert (=> b!4673364 (=> (not res!1967773) (not e!2916271))))

(declare-fun tail!8301 (ListLongMap!3885) ListLongMap!3885)

(assert (=> b!4673364 (= res!1967773 (= (t!359373 (toList!5355 lm!2023)) (toList!5355 (tail!8301 lm!2023))))))

(declare-fun b!4673365 () Bool)

(declare-fun tp!1344248 () Bool)

(assert (=> b!4673365 (= e!2916266 tp!1344248)))

(declare-fun b!4673366 () Bool)

(declare-fun res!1967771 () Bool)

(assert (=> b!4673366 (=> (not res!1967771) (not e!2916265))))

(assert (=> b!4673366 (= res!1967771 (is-Cons!52111 (toList!5355 lm!2023)))))

(declare-fun b!4673367 () Bool)

(declare-fun res!1967760 () Bool)

(assert (=> b!4673367 (=> (not res!1967760) (not e!2916270))))

(declare-fun removePairForKey!1328 (List!52234 K!13483) List!52234)

(assert (=> b!4673367 (= res!1967760 (= (removePairForKey!1328 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4673368 () Bool)

(declare-fun e!2916267 () Bool)

(assert (=> b!4673368 (= e!2916269 e!2916267)))

(declare-fun res!1967772 () Bool)

(assert (=> b!4673368 (=> res!1967772 e!2916267)))

(declare-fun lt!1834254 () List!52234)

(assert (=> b!4673368 (= res!1967772 (not (= lt!1834254 newBucket!218)))))

(declare-fun tail!8302 (List!52234) List!52234)

(assert (=> b!4673368 (= lt!1834254 (tail!8302 oldBucket!34))))

(declare-fun b!4673369 () Bool)

(declare-fun res!1967763 () Bool)

(assert (=> b!4673369 (=> (not res!1967763) (not e!2916265))))

(assert (=> b!4673369 (= res!1967763 (allKeysSameHash!1559 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4673370 () Bool)

(declare-datatypes ((ListMap!4719 0))(
  ( (ListMap!4720 (toList!5356 List!52234)) )
))
(declare-fun lt!1834255 () ListMap!4719)

(declare-fun addToMapMapFromBucket!1165 (List!52234 ListMap!4719) ListMap!4719)

(declare-fun extractMap!1759 (List!52235) ListMap!4719)

(assert (=> b!4673370 (= e!2916271 (= lt!1834255 (addToMapMapFromBucket!1165 (_2!29958 (h!58299 (toList!5355 lm!2023))) (extractMap!1759 (t!359373 (toList!5355 lm!2023))))))))

(declare-fun b!4673371 () Bool)

(assert (=> b!4673371 (= e!2916270 e!2916265)))

(declare-fun res!1967767 () Bool)

(assert (=> b!4673371 (=> (not res!1967767) (not e!2916265))))

(declare-fun contains!15282 (ListMap!4719 K!13483) Bool)

(assert (=> b!4673371 (= res!1967767 (contains!15282 lt!1834255 key!4653))))

(assert (=> b!4673371 (= lt!1834255 (extractMap!1759 (toList!5355 lm!2023)))))

(declare-fun b!4673372 () Bool)

(assert (=> b!4673372 (= e!2916267 (forall!11143 (Cons!52111 (tuple2!53329 hash!405 lt!1834254) (t!359373 (toList!5355 lm!2023))) lambda!202991))))

(assert (= (and start!471602 res!1967768) b!4673360))

(assert (= (and b!4673360 res!1967764) b!4673362))

(assert (= (and b!4673362 res!1967762) b!4673367))

(assert (= (and b!4673367 res!1967760) b!4673358))

(assert (= (and b!4673358 res!1967769) b!4673371))

(assert (= (and b!4673371 res!1967767) b!4673357))

(assert (= (and b!4673357 res!1967761) b!4673369))

(assert (= (and b!4673369 res!1967763) b!4673361))

(assert (= (and b!4673361 res!1967765) b!4673356))

(assert (= (and b!4673356 res!1967770) b!4673366))

(assert (= (and b!4673366 res!1967771) b!4673364))

(assert (= (and b!4673364 res!1967773) b!4673370))

(assert (= (and b!4673364 (not res!1967766)) b!4673368))

(assert (= (and b!4673368 (not res!1967772)) b!4673372))

(assert (= start!471602 b!4673365))

(assert (= (and start!471602 (is-Cons!52110 oldBucket!34)) b!4673363))

(assert (= (and start!471602 (is-Cons!52110 newBucket!218)) b!4673359))

(declare-fun m!5566933 () Bool)

(assert (=> b!4673358 m!5566933))

(declare-fun m!5566935 () Bool)

(assert (=> b!4673357 m!5566935))

(declare-fun m!5566937 () Bool)

(assert (=> b!4673371 m!5566937))

(declare-fun m!5566939 () Bool)

(assert (=> b!4673371 m!5566939))

(declare-fun m!5566941 () Bool)

(assert (=> b!4673368 m!5566941))

(declare-fun m!5566943 () Bool)

(assert (=> b!4673367 m!5566943))

(declare-fun m!5566945 () Bool)

(assert (=> b!4673369 m!5566945))

(declare-fun m!5566947 () Bool)

(assert (=> b!4673360 m!5566947))

(declare-fun m!5566949 () Bool)

(assert (=> b!4673362 m!5566949))

(declare-fun m!5566951 () Bool)

(assert (=> b!4673356 m!5566951))

(declare-fun m!5566953 () Bool)

(assert (=> b!4673370 m!5566953))

(assert (=> b!4673370 m!5566953))

(declare-fun m!5566955 () Bool)

(assert (=> b!4673370 m!5566955))

(declare-fun m!5566957 () Bool)

(assert (=> b!4673364 m!5566957))

(declare-fun m!5566959 () Bool)

(assert (=> start!471602 m!5566959))

(declare-fun m!5566961 () Bool)

(assert (=> start!471602 m!5566961))

(declare-fun m!5566963 () Bool)

(assert (=> b!4673361 m!5566963))

(declare-fun m!5566965 () Bool)

(assert (=> b!4673372 m!5566965))

(push 1)

(assert (not b!4673360))

(assert (not b!4673356))

(assert (not b!4673371))

(assert (not b!4673368))

(assert (not start!471602))

(assert (not b!4673361))

(assert (not b!4673363))

(assert (not b!4673365))

(assert (not b!4673362))

(assert (not b!4673358))

(assert tp_is_empty!30225)

(assert (not b!4673364))

(assert (not b!4673369))

(assert (not b!4673367))

(assert (not b!4673359))

(assert (not b!4673370))

(assert (not b!4673357))

(assert (not b!4673372))

(assert tp_is_empty!30227)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485999 () Bool)

(declare-fun res!1967820 () Bool)

(declare-fun e!2916300 () Bool)

(assert (=> d!1485999 (=> res!1967820 e!2916300)))

(assert (=> d!1485999 (= res!1967820 (not (is-Cons!52110 newBucket!218)))))

(assert (=> d!1485999 (= (noDuplicateKeys!1733 newBucket!218) e!2916300)))

(declare-fun b!4673428 () Bool)

(declare-fun e!2916301 () Bool)

(assert (=> b!4673428 (= e!2916300 e!2916301)))

(declare-fun res!1967821 () Bool)

(assert (=> b!4673428 (=> (not res!1967821) (not e!2916301))))

(declare-fun containsKey!2874 (List!52234 K!13483) Bool)

(assert (=> b!4673428 (= res!1967821 (not (containsKey!2874 (t!359372 newBucket!218) (_1!29957 (h!58298 newBucket!218)))))))

(declare-fun b!4673429 () Bool)

(assert (=> b!4673429 (= e!2916301 (noDuplicateKeys!1733 (t!359372 newBucket!218)))))

(assert (= (and d!1485999 (not res!1967820)) b!4673428))

(assert (= (and b!4673428 res!1967821) b!4673429))

(declare-fun m!5567001 () Bool)

(assert (=> b!4673428 m!5567001))

(declare-fun m!5567003 () Bool)

(assert (=> b!4673429 m!5567003))

(assert (=> b!4673362 d!1485999))

(declare-fun d!1486001 () Bool)

(declare-fun res!1967826 () Bool)

(declare-fun e!2916306 () Bool)

(assert (=> d!1486001 (=> res!1967826 e!2916306)))

(assert (=> d!1486001 (= res!1967826 (is-Nil!52111 (toList!5355 lm!2023)))))

(assert (=> d!1486001 (= (forall!11143 (toList!5355 lm!2023) lambda!202991) e!2916306)))

(declare-fun b!4673434 () Bool)

(declare-fun e!2916307 () Bool)

(assert (=> b!4673434 (= e!2916306 e!2916307)))

(declare-fun res!1967827 () Bool)

(assert (=> b!4673434 (=> (not res!1967827) (not e!2916307))))

(declare-fun dynLambda!21655 (Int tuple2!53328) Bool)

(assert (=> b!4673434 (= res!1967827 (dynLambda!21655 lambda!202991 (h!58299 (toList!5355 lm!2023))))))

(declare-fun b!4673435 () Bool)

(assert (=> b!4673435 (= e!2916307 (forall!11143 (t!359373 (toList!5355 lm!2023)) lambda!202991))))

(assert (= (and d!1486001 (not res!1967826)) b!4673434))

(assert (= (and b!4673434 res!1967827) b!4673435))

(declare-fun b_lambda!176469 () Bool)

(assert (=> (not b_lambda!176469) (not b!4673434)))

(declare-fun m!5567005 () Bool)

(assert (=> b!4673434 m!5567005))

(declare-fun m!5567007 () Bool)

(assert (=> b!4673435 m!5567007))

(assert (=> start!471602 d!1486001))

(declare-fun d!1486003 () Bool)

(declare-fun isStrictlySorted!592 (List!52235) Bool)

(assert (=> d!1486003 (= (inv!67358 lm!2023) (isStrictlySorted!592 (toList!5355 lm!2023)))))

(declare-fun bs!1079244 () Bool)

(assert (= bs!1079244 d!1486003))

(declare-fun m!5567009 () Bool)

(assert (=> bs!1079244 m!5567009))

(assert (=> start!471602 d!1486003))

(declare-fun d!1486005 () Bool)

(declare-fun tail!8305 (List!52235) List!52235)

(assert (=> d!1486005 (= (tail!8301 lm!2023) (ListLongMap!3886 (tail!8305 (toList!5355 lm!2023))))))

(declare-fun bs!1079245 () Bool)

(assert (= bs!1079245 d!1486005))

(declare-fun m!5567011 () Bool)

(assert (=> bs!1079245 m!5567011))

(assert (=> b!4673364 d!1486005))

(declare-fun b!4673498 () Bool)

(assert (=> b!4673498 true))

(declare-fun bs!1079249 () Bool)

(declare-fun b!4673501 () Bool)

(assert (= bs!1079249 (and b!4673501 b!4673498)))

(declare-fun lambda!203034 () Int)

(declare-fun lambda!203032 () Int)

(assert (=> bs!1079249 (= lambda!203034 lambda!203032)))

(assert (=> b!4673501 true))

(declare-fun lambda!203035 () Int)

(declare-fun lt!1834336 () ListMap!4719)

(assert (=> bs!1079249 (= (= lt!1834336 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) (= lambda!203035 lambda!203032))))

(assert (=> b!4673501 (= (= lt!1834336 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) (= lambda!203035 lambda!203034))))

(assert (=> b!4673501 true))

(declare-fun bs!1079252 () Bool)

(declare-fun d!1486007 () Bool)

(assert (= bs!1079252 (and d!1486007 b!4673498)))

(declare-fun lt!1834342 () ListMap!4719)

(declare-fun lambda!203037 () Int)

(assert (=> bs!1079252 (= (= lt!1834342 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) (= lambda!203037 lambda!203032))))

(declare-fun bs!1079254 () Bool)

(assert (= bs!1079254 (and d!1486007 b!4673501)))

(assert (=> bs!1079254 (= (= lt!1834342 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) (= lambda!203037 lambda!203034))))

(assert (=> bs!1079254 (= (= lt!1834342 lt!1834336) (= lambda!203037 lambda!203035))))

(assert (=> d!1486007 true))

(declare-fun b!4673497 () Bool)

(declare-fun e!2916350 () Bool)

(declare-fun invariantList!1352 (List!52234) Bool)

(assert (=> b!4673497 (= e!2916350 (invariantList!1352 (toList!5356 lt!1834342)))))

(declare-fun bm!326584 () Bool)

(declare-datatypes ((Unit!121362 0))(
  ( (Unit!121363) )
))
(declare-fun call!326591 () Unit!121362)

(declare-fun lemmaContainsAllItsOwnKeys!640 (ListMap!4719) Unit!121362)

(assert (=> bm!326584 (= call!326591 (lemmaContainsAllItsOwnKeys!640 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))))))

(declare-fun call!326589 () Bool)

(declare-fun c!799899 () Bool)

(declare-fun bm!326586 () Bool)

(declare-fun forall!11145 (List!52234 Int) Bool)

(assert (=> bm!326586 (= call!326589 (forall!11145 (toList!5356 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) (ite c!799899 lambda!203032 lambda!203035)))))

(declare-fun e!2916349 () ListMap!4719)

(assert (=> b!4673498 (= e!2916349 (extractMap!1759 (t!359373 (toList!5355 lm!2023))))))

(declare-fun lt!1834333 () Unit!121362)

(assert (=> b!4673498 (= lt!1834333 call!326591)))

(assert (=> b!4673498 call!326589))

(declare-fun lt!1834340 () Unit!121362)

(assert (=> b!4673498 (= lt!1834340 lt!1834333)))

(declare-fun call!326590 () Bool)

(assert (=> b!4673498 call!326590))

(declare-fun lt!1834350 () Unit!121362)

(declare-fun Unit!121364 () Unit!121362)

(assert (=> b!4673498 (= lt!1834350 Unit!121364)))

(declare-fun b!4673499 () Bool)

(declare-fun e!2916351 () Bool)

(assert (=> b!4673499 (= e!2916351 (forall!11145 (toList!5356 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) lambda!203035))))

(declare-fun b!4673500 () Bool)

(declare-fun res!1967857 () Bool)

(assert (=> b!4673500 (=> (not res!1967857) (not e!2916350))))

(assert (=> b!4673500 (= res!1967857 (forall!11145 (toList!5356 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) lambda!203037))))

(assert (=> b!4673501 (= e!2916349 lt!1834336)))

(declare-fun lt!1834331 () ListMap!4719)

(declare-fun +!2046 (ListMap!4719 tuple2!53326) ListMap!4719)

(assert (=> b!4673501 (= lt!1834331 (+!2046 (extractMap!1759 (t!359373 (toList!5355 lm!2023))) (h!58298 (_2!29958 (h!58299 (toList!5355 lm!2023))))))))

(assert (=> b!4673501 (= lt!1834336 (addToMapMapFromBucket!1165 (t!359372 (_2!29958 (h!58299 (toList!5355 lm!2023)))) (+!2046 (extractMap!1759 (t!359373 (toList!5355 lm!2023))) (h!58298 (_2!29958 (h!58299 (toList!5355 lm!2023)))))))))

(declare-fun lt!1834335 () Unit!121362)

(assert (=> b!4673501 (= lt!1834335 call!326591)))

(assert (=> b!4673501 call!326590))

(declare-fun lt!1834339 () Unit!121362)

(assert (=> b!4673501 (= lt!1834339 lt!1834335)))

(assert (=> b!4673501 (forall!11145 (toList!5356 lt!1834331) lambda!203035)))

(declare-fun lt!1834338 () Unit!121362)

(declare-fun Unit!121365 () Unit!121362)

(assert (=> b!4673501 (= lt!1834338 Unit!121365)))

(assert (=> b!4673501 (forall!11145 (t!359372 (_2!29958 (h!58299 (toList!5355 lm!2023)))) lambda!203035)))

(declare-fun lt!1834344 () Unit!121362)

(declare-fun Unit!121366 () Unit!121362)

(assert (=> b!4673501 (= lt!1834344 Unit!121366)))

(declare-fun lt!1834351 () Unit!121362)

(declare-fun Unit!121367 () Unit!121362)

(assert (=> b!4673501 (= lt!1834351 Unit!121367)))

(declare-fun lt!1834347 () Unit!121362)

(declare-fun forallContained!3324 (List!52234 Int tuple2!53326) Unit!121362)

(assert (=> b!4673501 (= lt!1834347 (forallContained!3324 (toList!5356 lt!1834331) lambda!203035 (h!58298 (_2!29958 (h!58299 (toList!5355 lm!2023))))))))

(assert (=> b!4673501 (contains!15282 lt!1834331 (_1!29957 (h!58298 (_2!29958 (h!58299 (toList!5355 lm!2023))))))))

(declare-fun lt!1834345 () Unit!121362)

(declare-fun Unit!121368 () Unit!121362)

(assert (=> b!4673501 (= lt!1834345 Unit!121368)))

(assert (=> b!4673501 (contains!15282 lt!1834336 (_1!29957 (h!58298 (_2!29958 (h!58299 (toList!5355 lm!2023))))))))

(declare-fun lt!1834332 () Unit!121362)

(declare-fun Unit!121369 () Unit!121362)

(assert (=> b!4673501 (= lt!1834332 Unit!121369)))

(assert (=> b!4673501 (forall!11145 (_2!29958 (h!58299 (toList!5355 lm!2023))) lambda!203035)))

(declare-fun lt!1834343 () Unit!121362)

(declare-fun Unit!121370 () Unit!121362)

(assert (=> b!4673501 (= lt!1834343 Unit!121370)))

(assert (=> b!4673501 (forall!11145 (toList!5356 lt!1834331) lambda!203035)))

(declare-fun lt!1834334 () Unit!121362)

(declare-fun Unit!121371 () Unit!121362)

(assert (=> b!4673501 (= lt!1834334 Unit!121371)))

(declare-fun lt!1834349 () Unit!121362)

(declare-fun Unit!121372 () Unit!121362)

(assert (=> b!4673501 (= lt!1834349 Unit!121372)))

(declare-fun lt!1834341 () Unit!121362)

(declare-fun addForallContainsKeyThenBeforeAdding!639 (ListMap!4719 ListMap!4719 K!13483 V!13729) Unit!121362)

(assert (=> b!4673501 (= lt!1834341 (addForallContainsKeyThenBeforeAdding!639 (extractMap!1759 (t!359373 (toList!5355 lm!2023))) lt!1834336 (_1!29957 (h!58298 (_2!29958 (h!58299 (toList!5355 lm!2023))))) (_2!29957 (h!58298 (_2!29958 (h!58299 (toList!5355 lm!2023)))))))))

(assert (=> b!4673501 call!326589))

(declare-fun lt!1834346 () Unit!121362)

(assert (=> b!4673501 (= lt!1834346 lt!1834341)))

(assert (=> b!4673501 (forall!11145 (toList!5356 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) lambda!203035)))

(declare-fun lt!1834337 () Unit!121362)

(declare-fun Unit!121373 () Unit!121362)

(assert (=> b!4673501 (= lt!1834337 Unit!121373)))

(declare-fun res!1967858 () Bool)

(assert (=> b!4673501 (= res!1967858 (forall!11145 (_2!29958 (h!58299 (toList!5355 lm!2023))) lambda!203035))))

(assert (=> b!4673501 (=> (not res!1967858) (not e!2916351))))

(assert (=> b!4673501 e!2916351))

(declare-fun lt!1834348 () Unit!121362)

(declare-fun Unit!121374 () Unit!121362)

(assert (=> b!4673501 (= lt!1834348 Unit!121374)))

(declare-fun bm!326585 () Bool)

(assert (=> bm!326585 (= call!326590 (forall!11145 (toList!5356 (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) (ite c!799899 lambda!203032 lambda!203034)))))

(assert (=> d!1486007 e!2916350))

(declare-fun res!1967859 () Bool)

(assert (=> d!1486007 (=> (not res!1967859) (not e!2916350))))

(assert (=> d!1486007 (= res!1967859 (forall!11145 (_2!29958 (h!58299 (toList!5355 lm!2023))) lambda!203037))))

(assert (=> d!1486007 (= lt!1834342 e!2916349)))

(assert (=> d!1486007 (= c!799899 (is-Nil!52110 (_2!29958 (h!58299 (toList!5355 lm!2023)))))))

(assert (=> d!1486007 (noDuplicateKeys!1733 (_2!29958 (h!58299 (toList!5355 lm!2023))))))

(assert (=> d!1486007 (= (addToMapMapFromBucket!1165 (_2!29958 (h!58299 (toList!5355 lm!2023))) (extractMap!1759 (t!359373 (toList!5355 lm!2023)))) lt!1834342)))

(assert (= (and d!1486007 c!799899) b!4673498))

(assert (= (and d!1486007 (not c!799899)) b!4673501))

(assert (= (and b!4673501 res!1967858) b!4673499))

(assert (= (or b!4673498 b!4673501) bm!326584))

(assert (= (or b!4673498 b!4673501) bm!326586))

(assert (= (or b!4673498 b!4673501) bm!326585))

(assert (= (and d!1486007 res!1967859) b!4673500))

(assert (= (and b!4673500 res!1967857) b!4673497))

(declare-fun m!5567055 () Bool)

(assert (=> b!4673497 m!5567055))

(declare-fun m!5567057 () Bool)

(assert (=> b!4673500 m!5567057))

(declare-fun m!5567059 () Bool)

(assert (=> b!4673499 m!5567059))

(declare-fun m!5567061 () Bool)

(assert (=> b!4673501 m!5567061))

(declare-fun m!5567063 () Bool)

(assert (=> b!4673501 m!5567063))

(declare-fun m!5567065 () Bool)

(assert (=> b!4673501 m!5567065))

(declare-fun m!5567067 () Bool)

(assert (=> b!4673501 m!5567067))

(declare-fun m!5567069 () Bool)

(assert (=> b!4673501 m!5567069))

(assert (=> b!4673501 m!5567063))

(declare-fun m!5567071 () Bool)

(assert (=> b!4673501 m!5567071))

(assert (=> b!4673501 m!5566953))

(assert (=> b!4673501 m!5567067))

(declare-fun m!5567073 () Bool)

(assert (=> b!4673501 m!5567073))

(assert (=> b!4673501 m!5567059))

(declare-fun m!5567075 () Bool)

(assert (=> b!4673501 m!5567075))

(assert (=> b!4673501 m!5566953))

(declare-fun m!5567077 () Bool)

(assert (=> b!4673501 m!5567077))

(assert (=> b!4673501 m!5567065))

(assert (=> bm!326584 m!5566953))

(declare-fun m!5567079 () Bool)

(assert (=> bm!326584 m!5567079))

(declare-fun m!5567081 () Bool)

(assert (=> d!1486007 m!5567081))

(declare-fun m!5567083 () Bool)

(assert (=> d!1486007 m!5567083))

(declare-fun m!5567085 () Bool)

(assert (=> bm!326586 m!5567085))

(declare-fun m!5567087 () Bool)

(assert (=> bm!326585 m!5567087))

(assert (=> b!4673370 d!1486007))

(declare-fun bs!1079257 () Bool)

(declare-fun d!1486031 () Bool)

(assert (= bs!1079257 (and d!1486031 start!471602)))

(declare-fun lambda!203040 () Int)

(assert (=> bs!1079257 (= lambda!203040 lambda!202991)))

(declare-fun lt!1834357 () ListMap!4719)

(assert (=> d!1486031 (invariantList!1352 (toList!5356 lt!1834357))))

(declare-fun e!2916362 () ListMap!4719)

(assert (=> d!1486031 (= lt!1834357 e!2916362)))

(declare-fun c!799908 () Bool)

(assert (=> d!1486031 (= c!799908 (is-Cons!52111 (t!359373 (toList!5355 lm!2023))))))

(assert (=> d!1486031 (forall!11143 (t!359373 (toList!5355 lm!2023)) lambda!203040)))

(assert (=> d!1486031 (= (extractMap!1759 (t!359373 (toList!5355 lm!2023))) lt!1834357)))

(declare-fun b!4673524 () Bool)

(assert (=> b!4673524 (= e!2916362 (addToMapMapFromBucket!1165 (_2!29958 (h!58299 (t!359373 (toList!5355 lm!2023)))) (extractMap!1759 (t!359373 (t!359373 (toList!5355 lm!2023))))))))

(declare-fun b!4673525 () Bool)

(assert (=> b!4673525 (= e!2916362 (ListMap!4720 Nil!52110))))

(assert (= (and d!1486031 c!799908) b!4673524))

(assert (= (and d!1486031 (not c!799908)) b!4673525))

(declare-fun m!5567101 () Bool)

(assert (=> d!1486031 m!5567101))

(declare-fun m!5567103 () Bool)

(assert (=> d!1486031 m!5567103))

(declare-fun m!5567105 () Bool)

(assert (=> b!4673524 m!5567105))

(assert (=> b!4673524 m!5567105))

(declare-fun m!5567107 () Bool)

(assert (=> b!4673524 m!5567107))

(assert (=> b!4673370 d!1486031))

(declare-fun d!1486041 () Bool)

(declare-fun res!1967862 () Bool)

(declare-fun e!2916363 () Bool)

(assert (=> d!1486041 (=> res!1967862 e!2916363)))

(assert (=> d!1486041 (= res!1967862 (not (is-Cons!52110 oldBucket!34)))))

(assert (=> d!1486041 (= (noDuplicateKeys!1733 oldBucket!34) e!2916363)))

(declare-fun b!4673526 () Bool)

(declare-fun e!2916364 () Bool)

(assert (=> b!4673526 (= e!2916363 e!2916364)))

(declare-fun res!1967863 () Bool)

(assert (=> b!4673526 (=> (not res!1967863) (not e!2916364))))

(assert (=> b!4673526 (= res!1967863 (not (containsKey!2874 (t!359372 oldBucket!34) (_1!29957 (h!58298 oldBucket!34)))))))

(declare-fun b!4673527 () Bool)

(assert (=> b!4673527 (= e!2916364 (noDuplicateKeys!1733 (t!359372 oldBucket!34)))))

(assert (= (and d!1486041 (not res!1967862)) b!4673526))

(assert (= (and b!4673526 res!1967863) b!4673527))

(declare-fun m!5567109 () Bool)

(assert (=> b!4673526 m!5567109))

(declare-fun m!5567111 () Bool)

(assert (=> b!4673527 m!5567111))

(assert (=> b!4673360 d!1486041))

(declare-fun b!4673546 () Bool)

(declare-fun e!2916380 () Bool)

(declare-fun e!2916377 () Bool)

(assert (=> b!4673546 (= e!2916380 e!2916377)))

(declare-fun res!1967870 () Bool)

(assert (=> b!4673546 (=> (not res!1967870) (not e!2916377))))

(declare-datatypes ((Option!11947 0))(
  ( (None!11946) (Some!11946 (v!46309 V!13729)) )
))
(declare-fun isDefined!9202 (Option!11947) Bool)

(declare-fun getValueByKey!1695 (List!52234 K!13483) Option!11947)

(assert (=> b!4673546 (= res!1967870 (isDefined!9202 (getValueByKey!1695 (toList!5356 lt!1834255) key!4653)))))

(declare-fun d!1486043 () Bool)

(assert (=> d!1486043 e!2916380))

(declare-fun res!1967872 () Bool)

(assert (=> d!1486043 (=> res!1967872 e!2916380)))

(declare-fun e!2916379 () Bool)

(assert (=> d!1486043 (= res!1967872 e!2916379)))

(declare-fun res!1967871 () Bool)

(assert (=> d!1486043 (=> (not res!1967871) (not e!2916379))))

(declare-fun lt!1834379 () Bool)

(assert (=> d!1486043 (= res!1967871 (not lt!1834379))))

(declare-fun lt!1834376 () Bool)

(assert (=> d!1486043 (= lt!1834379 lt!1834376)))

(declare-fun lt!1834377 () Unit!121362)

(declare-fun e!2916381 () Unit!121362)

(assert (=> d!1486043 (= lt!1834377 e!2916381)))

(declare-fun c!799915 () Bool)

(assert (=> d!1486043 (= c!799915 lt!1834376)))

(declare-fun containsKey!2875 (List!52234 K!13483) Bool)

(assert (=> d!1486043 (= lt!1834376 (containsKey!2875 (toList!5356 lt!1834255) key!4653))))

(assert (=> d!1486043 (= (contains!15282 lt!1834255 key!4653) lt!1834379)))

(declare-fun b!4673547 () Bool)

(declare-fun e!2916378 () Unit!121362)

(declare-fun Unit!121375 () Unit!121362)

(assert (=> b!4673547 (= e!2916378 Unit!121375)))

(declare-fun b!4673548 () Bool)

(declare-datatypes ((List!52238 0))(
  ( (Nil!52114) (Cons!52114 (h!58304 K!13483) (t!359376 List!52238)) )
))
(declare-fun e!2916382 () List!52238)

(declare-fun getKeysList!792 (List!52234) List!52238)

(assert (=> b!4673548 (= e!2916382 (getKeysList!792 (toList!5356 lt!1834255)))))

(declare-fun b!4673549 () Bool)

(declare-fun contains!15284 (List!52238 K!13483) Bool)

(declare-fun keys!18535 (ListMap!4719) List!52238)

(assert (=> b!4673549 (= e!2916377 (contains!15284 (keys!18535 lt!1834255) key!4653))))

(declare-fun b!4673550 () Bool)

(assert (=> b!4673550 false))

(declare-fun lt!1834381 () Unit!121362)

(declare-fun lt!1834375 () Unit!121362)

(assert (=> b!4673550 (= lt!1834381 lt!1834375)))

(assert (=> b!4673550 (containsKey!2875 (toList!5356 lt!1834255) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!791 (List!52234 K!13483) Unit!121362)

(assert (=> b!4673550 (= lt!1834375 (lemmaInGetKeysListThenContainsKey!791 (toList!5356 lt!1834255) key!4653))))

(declare-fun Unit!121376 () Unit!121362)

(assert (=> b!4673550 (= e!2916378 Unit!121376)))

(declare-fun b!4673551 () Bool)

(assert (=> b!4673551 (= e!2916382 (keys!18535 lt!1834255))))

(declare-fun b!4673552 () Bool)

(declare-fun lt!1834374 () Unit!121362)

(assert (=> b!4673552 (= e!2916381 lt!1834374)))

(declare-fun lt!1834380 () Unit!121362)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1587 (List!52234 K!13483) Unit!121362)

(assert (=> b!4673552 (= lt!1834380 (lemmaContainsKeyImpliesGetValueByKeyDefined!1587 (toList!5356 lt!1834255) key!4653))))

(assert (=> b!4673552 (isDefined!9202 (getValueByKey!1695 (toList!5356 lt!1834255) key!4653))))

(declare-fun lt!1834378 () Unit!121362)

(assert (=> b!4673552 (= lt!1834378 lt!1834380)))

(declare-fun lemmaInListThenGetKeysListContains!787 (List!52234 K!13483) Unit!121362)

(assert (=> b!4673552 (= lt!1834374 (lemmaInListThenGetKeysListContains!787 (toList!5356 lt!1834255) key!4653))))

(declare-fun call!326594 () Bool)

(assert (=> b!4673552 call!326594))

(declare-fun b!4673553 () Bool)

(assert (=> b!4673553 (= e!2916381 e!2916378)))

(declare-fun c!799916 () Bool)

(assert (=> b!4673553 (= c!799916 call!326594)))

(declare-fun b!4673554 () Bool)

(assert (=> b!4673554 (= e!2916379 (not (contains!15284 (keys!18535 lt!1834255) key!4653)))))

(declare-fun bm!326589 () Bool)

(assert (=> bm!326589 (= call!326594 (contains!15284 e!2916382 key!4653))))

(declare-fun c!799917 () Bool)

(assert (=> bm!326589 (= c!799917 c!799915)))

(assert (= (and d!1486043 c!799915) b!4673552))

(assert (= (and d!1486043 (not c!799915)) b!4673553))

(assert (= (and b!4673553 c!799916) b!4673550))

(assert (= (and b!4673553 (not c!799916)) b!4673547))

(assert (= (or b!4673552 b!4673553) bm!326589))

(assert (= (and bm!326589 c!799917) b!4673548))

(assert (= (and bm!326589 (not c!799917)) b!4673551))

(assert (= (and d!1486043 res!1967871) b!4673554))

(assert (= (and d!1486043 (not res!1967872)) b!4673546))

(assert (= (and b!4673546 res!1967870) b!4673549))

(declare-fun m!5567113 () Bool)

(assert (=> b!4673551 m!5567113))

(declare-fun m!5567115 () Bool)

(assert (=> bm!326589 m!5567115))

(declare-fun m!5567117 () Bool)

(assert (=> d!1486043 m!5567117))

(assert (=> b!4673554 m!5567113))

(assert (=> b!4673554 m!5567113))

(declare-fun m!5567119 () Bool)

(assert (=> b!4673554 m!5567119))

(declare-fun m!5567121 () Bool)

(assert (=> b!4673548 m!5567121))

(assert (=> b!4673549 m!5567113))

(assert (=> b!4673549 m!5567113))

(assert (=> b!4673549 m!5567119))

(declare-fun m!5567123 () Bool)

(assert (=> b!4673552 m!5567123))

(declare-fun m!5567125 () Bool)

(assert (=> b!4673552 m!5567125))

(assert (=> b!4673552 m!5567125))

(declare-fun m!5567127 () Bool)

(assert (=> b!4673552 m!5567127))

(declare-fun m!5567129 () Bool)

(assert (=> b!4673552 m!5567129))

(assert (=> b!4673550 m!5567117))

(declare-fun m!5567131 () Bool)

(assert (=> b!4673550 m!5567131))

(assert (=> b!4673546 m!5567125))

(assert (=> b!4673546 m!5567125))

(assert (=> b!4673546 m!5567127))

(assert (=> b!4673371 d!1486043))

(declare-fun bs!1079258 () Bool)

(declare-fun d!1486045 () Bool)

(assert (= bs!1079258 (and d!1486045 start!471602)))

(declare-fun lambda!203041 () Int)

(assert (=> bs!1079258 (= lambda!203041 lambda!202991)))

(declare-fun bs!1079259 () Bool)

(assert (= bs!1079259 (and d!1486045 d!1486031)))

(assert (=> bs!1079259 (= lambda!203041 lambda!203040)))

(declare-fun lt!1834382 () ListMap!4719)

(assert (=> d!1486045 (invariantList!1352 (toList!5356 lt!1834382))))

(declare-fun e!2916383 () ListMap!4719)

(assert (=> d!1486045 (= lt!1834382 e!2916383)))

(declare-fun c!799918 () Bool)

(assert (=> d!1486045 (= c!799918 (is-Cons!52111 (toList!5355 lm!2023)))))

(assert (=> d!1486045 (forall!11143 (toList!5355 lm!2023) lambda!203041)))

(assert (=> d!1486045 (= (extractMap!1759 (toList!5355 lm!2023)) lt!1834382)))

(declare-fun b!4673555 () Bool)

(assert (=> b!4673555 (= e!2916383 (addToMapMapFromBucket!1165 (_2!29958 (h!58299 (toList!5355 lm!2023))) (extractMap!1759 (t!359373 (toList!5355 lm!2023)))))))

(declare-fun b!4673556 () Bool)

(assert (=> b!4673556 (= e!2916383 (ListMap!4720 Nil!52110))))

(assert (= (and d!1486045 c!799918) b!4673555))

(assert (= (and d!1486045 (not c!799918)) b!4673556))

(declare-fun m!5567133 () Bool)

(assert (=> d!1486045 m!5567133))

(declare-fun m!5567135 () Bool)

(assert (=> d!1486045 m!5567135))

(assert (=> b!4673555 m!5566953))

(assert (=> b!4673555 m!5566953))

(assert (=> b!4673555 m!5566955))

(assert (=> b!4673371 d!1486045))

(declare-fun bs!1079260 () Bool)

(declare-fun d!1486047 () Bool)

(assert (= bs!1079260 (and d!1486047 start!471602)))

(declare-fun lambda!203044 () Int)

(assert (=> bs!1079260 (not (= lambda!203044 lambda!202991))))

(declare-fun bs!1079261 () Bool)

(assert (= bs!1079261 (and d!1486047 d!1486031)))

(assert (=> bs!1079261 (not (= lambda!203044 lambda!203040))))

(declare-fun bs!1079262 () Bool)

(assert (= bs!1079262 (and d!1486047 d!1486045)))

(assert (=> bs!1079262 (not (= lambda!203044 lambda!203041))))

(assert (=> d!1486047 true))

(assert (=> d!1486047 (= (allKeysSameHashInMap!1647 lm!2023 hashF!1323) (forall!11143 (toList!5355 lm!2023) lambda!203044))))

(declare-fun bs!1079263 () Bool)

(assert (= bs!1079263 d!1486047))

(declare-fun m!5567137 () Bool)

(assert (=> bs!1079263 m!5567137))

(assert (=> b!4673361 d!1486047))

(declare-fun d!1486049 () Bool)

(declare-fun res!1967873 () Bool)

(declare-fun e!2916384 () Bool)

(assert (=> d!1486049 (=> res!1967873 e!2916384)))

(assert (=> d!1486049 (= res!1967873 (is-Nil!52111 (Cons!52111 (tuple2!53329 hash!405 lt!1834254) (t!359373 (toList!5355 lm!2023)))))))

(assert (=> d!1486049 (= (forall!11143 (Cons!52111 (tuple2!53329 hash!405 lt!1834254) (t!359373 (toList!5355 lm!2023))) lambda!202991) e!2916384)))

(declare-fun b!4673559 () Bool)

(declare-fun e!2916385 () Bool)

(assert (=> b!4673559 (= e!2916384 e!2916385)))

(declare-fun res!1967874 () Bool)

(assert (=> b!4673559 (=> (not res!1967874) (not e!2916385))))

(assert (=> b!4673559 (= res!1967874 (dynLambda!21655 lambda!202991 (h!58299 (Cons!52111 (tuple2!53329 hash!405 lt!1834254) (t!359373 (toList!5355 lm!2023))))))))

(declare-fun b!4673560 () Bool)

(assert (=> b!4673560 (= e!2916385 (forall!11143 (t!359373 (Cons!52111 (tuple2!53329 hash!405 lt!1834254) (t!359373 (toList!5355 lm!2023)))) lambda!202991))))

(assert (= (and d!1486049 (not res!1967873)) b!4673559))

(assert (= (and b!4673559 res!1967874) b!4673560))

(declare-fun b_lambda!176475 () Bool)

(assert (=> (not b_lambda!176475) (not b!4673559)))

(declare-fun m!5567139 () Bool)

(assert (=> b!4673559 m!5567139))

(declare-fun m!5567141 () Bool)

(assert (=> b!4673560 m!5567141))

(assert (=> b!4673372 d!1486049))

(declare-fun d!1486051 () Bool)

(declare-fun hash!3890 (Hashable!6102 K!13483) (_ BitVec 64))

(assert (=> d!1486051 (= (hash!3888 hashF!1323 key!4653) (hash!3890 hashF!1323 key!4653))))

(declare-fun bs!1079264 () Bool)

(assert (= bs!1079264 d!1486051))

(declare-fun m!5567143 () Bool)

(assert (=> bs!1079264 m!5567143))

(assert (=> b!4673357 d!1486051))

(declare-fun d!1486053 () Bool)

(assert (=> d!1486053 (= (tail!8302 oldBucket!34) (t!359372 oldBucket!34))))

(assert (=> b!4673368 d!1486053))

(declare-fun bs!1079265 () Bool)

(declare-fun d!1486055 () Bool)

(assert (= bs!1079265 (and d!1486055 b!4673498)))

(declare-fun lambda!203047 () Int)

(assert (=> bs!1079265 (not (= lambda!203047 lambda!203032))))

(declare-fun bs!1079266 () Bool)

(assert (= bs!1079266 (and d!1486055 b!4673501)))

(assert (=> bs!1079266 (not (= lambda!203047 lambda!203034))))

(assert (=> bs!1079266 (not (= lambda!203047 lambda!203035))))

(declare-fun bs!1079267 () Bool)

(assert (= bs!1079267 (and d!1486055 d!1486007)))

(assert (=> bs!1079267 (not (= lambda!203047 lambda!203037))))

(assert (=> d!1486055 true))

(assert (=> d!1486055 true))

(assert (=> d!1486055 (= (allKeysSameHash!1559 oldBucket!34 hash!405 hashF!1323) (forall!11145 oldBucket!34 lambda!203047))))

(declare-fun bs!1079268 () Bool)

(assert (= bs!1079268 d!1486055))

(declare-fun m!5567145 () Bool)

(assert (=> bs!1079268 m!5567145))

(assert (=> b!4673358 d!1486055))

(declare-fun bs!1079269 () Bool)

(declare-fun d!1486057 () Bool)

(assert (= bs!1079269 (and d!1486057 b!4673498)))

(declare-fun lambda!203048 () Int)

(assert (=> bs!1079269 (not (= lambda!203048 lambda!203032))))

(declare-fun bs!1079270 () Bool)

(assert (= bs!1079270 (and d!1486057 d!1486007)))

(assert (=> bs!1079270 (not (= lambda!203048 lambda!203037))))

(declare-fun bs!1079271 () Bool)

(assert (= bs!1079271 (and d!1486057 b!4673501)))

(assert (=> bs!1079271 (not (= lambda!203048 lambda!203035))))

(declare-fun bs!1079272 () Bool)

(assert (= bs!1079272 (and d!1486057 d!1486055)))

(assert (=> bs!1079272 (= lambda!203048 lambda!203047)))

(assert (=> bs!1079271 (not (= lambda!203048 lambda!203034))))

(assert (=> d!1486057 true))

(assert (=> d!1486057 true))

(assert (=> d!1486057 (= (allKeysSameHash!1559 newBucket!218 hash!405 hashF!1323) (forall!11145 newBucket!218 lambda!203048))))

(declare-fun bs!1079273 () Bool)

(assert (= bs!1079273 d!1486057))

(declare-fun m!5567147 () Bool)

(assert (=> bs!1079273 m!5567147))

(assert (=> b!4673369 d!1486057))

(declare-fun d!1486059 () Bool)

(assert (=> d!1486059 (= (head!9773 (toList!5355 lm!2023)) (h!58299 (toList!5355 lm!2023)))))

(assert (=> b!4673356 d!1486059))

(declare-fun b!4673576 () Bool)

(declare-fun e!2916391 () List!52234)

(assert (=> b!4673576 (= e!2916391 Nil!52110)))

(declare-fun d!1486061 () Bool)

(declare-fun lt!1834385 () List!52234)

(assert (=> d!1486061 (not (containsKey!2874 lt!1834385 key!4653))))

(declare-fun e!2916390 () List!52234)

(assert (=> d!1486061 (= lt!1834385 e!2916390)))

(declare-fun c!799923 () Bool)

(assert (=> d!1486061 (= c!799923 (and (is-Cons!52110 oldBucket!34) (= (_1!29957 (h!58298 oldBucket!34)) key!4653)))))

(assert (=> d!1486061 (noDuplicateKeys!1733 oldBucket!34)))

(assert (=> d!1486061 (= (removePairForKey!1328 oldBucket!34 key!4653) lt!1834385)))

(declare-fun b!4673575 () Bool)

(assert (=> b!4673575 (= e!2916391 (Cons!52110 (h!58298 oldBucket!34) (removePairForKey!1328 (t!359372 oldBucket!34) key!4653)))))

(declare-fun b!4673573 () Bool)

(assert (=> b!4673573 (= e!2916390 (t!359372 oldBucket!34))))

(declare-fun b!4673574 () Bool)

(assert (=> b!4673574 (= e!2916390 e!2916391)))

(declare-fun c!799924 () Bool)

(assert (=> b!4673574 (= c!799924 (is-Cons!52110 oldBucket!34))))

(assert (= (and d!1486061 c!799923) b!4673573))

(assert (= (and d!1486061 (not c!799923)) b!4673574))

(assert (= (and b!4673574 c!799924) b!4673575))

(assert (= (and b!4673574 (not c!799924)) b!4673576))

(declare-fun m!5567149 () Bool)

(assert (=> d!1486061 m!5567149))

(assert (=> d!1486061 m!5566947))

(declare-fun m!5567151 () Bool)

(assert (=> b!4673575 m!5567151))

(assert (=> b!4673367 d!1486061))

(declare-fun b!4673581 () Bool)

(declare-fun e!2916394 () Bool)

(declare-fun tp!1344260 () Bool)

(assert (=> b!4673581 (= e!2916394 (and tp_is_empty!30225 tp_is_empty!30227 tp!1344260))))

(assert (=> b!4673363 (= tp!1344246 e!2916394)))

(assert (= (and b!4673363 (is-Cons!52110 (t!359372 oldBucket!34))) b!4673581))

(declare-fun tp!1344261 () Bool)

(declare-fun b!4673582 () Bool)

(declare-fun e!2916395 () Bool)

(assert (=> b!4673582 (= e!2916395 (and tp_is_empty!30225 tp_is_empty!30227 tp!1344261))))

(assert (=> b!4673359 (= tp!1344247 e!2916395)))

(assert (= (and b!4673359 (is-Cons!52110 (t!359372 newBucket!218))) b!4673582))

(declare-fun b!4673587 () Bool)

(declare-fun e!2916398 () Bool)

(declare-fun tp!1344266 () Bool)

(declare-fun tp!1344267 () Bool)

(assert (=> b!4673587 (= e!2916398 (and tp!1344266 tp!1344267))))

(assert (=> b!4673365 (= tp!1344248 e!2916398)))

(assert (= (and b!4673365 (is-Cons!52111 (toList!5355 lm!2023))) b!4673587))

(declare-fun b_lambda!176477 () Bool)

(assert (= b_lambda!176475 (or start!471602 b_lambda!176477)))

(declare-fun bs!1079274 () Bool)

(declare-fun d!1486063 () Bool)

(assert (= bs!1079274 (and d!1486063 start!471602)))

(assert (=> bs!1079274 (= (dynLambda!21655 lambda!202991 (h!58299 (Cons!52111 (tuple2!53329 hash!405 lt!1834254) (t!359373 (toList!5355 lm!2023))))) (noDuplicateKeys!1733 (_2!29958 (h!58299 (Cons!52111 (tuple2!53329 hash!405 lt!1834254) (t!359373 (toList!5355 lm!2023)))))))))

(declare-fun m!5567153 () Bool)

(assert (=> bs!1079274 m!5567153))

(assert (=> b!4673559 d!1486063))

(declare-fun b_lambda!176479 () Bool)

(assert (= b_lambda!176469 (or start!471602 b_lambda!176479)))

(declare-fun bs!1079275 () Bool)

(declare-fun d!1486065 () Bool)

(assert (= bs!1079275 (and d!1486065 start!471602)))

(assert (=> bs!1079275 (= (dynLambda!21655 lambda!202991 (h!58299 (toList!5355 lm!2023))) (noDuplicateKeys!1733 (_2!29958 (h!58299 (toList!5355 lm!2023)))))))

(assert (=> bs!1079275 m!5567083))

(assert (=> b!4673434 d!1486065))

(push 1)

(assert (not b_lambda!176479))

(assert (not b!4673435))

(assert (not b!4673526))

(assert (not b!4673546))

(assert (not b!4673560))

(assert tp_is_empty!30227)

(assert (not b!4673554))

(assert tp_is_empty!30225)

(assert (not d!1486005))

(assert (not d!1486061))

(assert (not d!1486055))

(assert (not b!4673587))

(assert (not b!4673548))

(assert (not d!1486043))

(assert (not bm!326586))

(assert (not bs!1079275))

(assert (not b!4673499))

(assert (not b!4673581))

(assert (not b!4673552))

(assert (not b!4673500))

(assert (not b!4673575))

(assert (not b!4673551))

(assert (not b!4673582))

(assert (not d!1486003))

(assert (not b!4673501))

(assert (not bm!326589))

(assert (not d!1486051))

(assert (not d!1486045))

(assert (not b!4673549))

(assert (not bs!1079274))

(assert (not bm!326584))

(assert (not d!1486047))

(assert (not b!4673497))

(assert (not b!4673524))

(assert (not d!1486007))

(assert (not bm!326585))

(assert (not b!4673428))

(assert (not b_lambda!176477))

(assert (not b!4673429))

(assert (not d!1486031))

(assert (not d!1486057))

(assert (not b!4673550))

(assert (not b!4673555))

(assert (not b!4673527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

