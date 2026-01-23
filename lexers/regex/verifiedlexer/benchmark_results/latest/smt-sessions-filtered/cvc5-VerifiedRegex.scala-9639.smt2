; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506438 () Bool)

(assert start!506438)

(declare-fun bs!1173029 () Bool)

(declare-fun b!4852280 () Bool)

(assert (= bs!1173029 (and b!4852280 start!506438)))

(declare-fun lambda!242810 () Int)

(declare-fun lambda!242809 () Int)

(assert (=> bs!1173029 (not (= lambda!242810 lambda!242809))))

(assert (=> b!4852280 true))

(declare-fun b!4852276 () Bool)

(declare-fun e!3033375 () Bool)

(declare-fun tp!1365063 () Bool)

(assert (=> b!4852276 (= e!3033375 tp!1365063)))

(declare-fun b!4852277 () Bool)

(declare-fun res!2071283 () Bool)

(declare-fun e!3033376 () Bool)

(assert (=> b!4852277 (=> (not res!2071283) (not e!3033376))))

(declare-datatypes ((Hashable!7529 0))(
  ( (HashableExt!7528 (__x!33804 Int)) )
))
(declare-fun hashF!1802 () Hashable!7529)

(declare-fun hash!467 () (_ BitVec 64))

(declare-datatypes ((K!17482 0))(
  ( (K!17483 (val!22291 Int)) )
))
(declare-fun key!6955 () K!17482)

(declare-fun hash!5653 (Hashable!7529 K!17482) (_ BitVec 64))

(assert (=> b!4852277 (= res!2071283 (not (= hash!467 (hash!5653 hashF!1802 key!6955))))))

(declare-fun b!4852278 () Bool)

(declare-fun res!2071285 () Bool)

(assert (=> b!4852278 (=> (not res!2071285) (not e!3033376))))

(declare-datatypes ((V!17728 0))(
  ( (V!17729 (val!22292 Int)) )
))
(declare-datatypes ((tuple2!59418 0))(
  ( (tuple2!59419 (_1!33003 K!17482) (_2!33003 V!17728)) )
))
(declare-datatypes ((List!55766 0))(
  ( (Nil!55642) (Cons!55642 (h!62079 tuple2!59418) (t!363262 List!55766)) )
))
(declare-datatypes ((tuple2!59420 0))(
  ( (tuple2!59421 (_1!33004 (_ BitVec 64)) (_2!33004 List!55766)) )
))
(declare-datatypes ((List!55767 0))(
  ( (Nil!55643) (Cons!55643 (h!62080 tuple2!59420) (t!363263 List!55767)) )
))
(declare-datatypes ((ListLongMap!6517 0))(
  ( (ListLongMap!6518 (toList!7887 List!55767)) )
))
(declare-fun lm!2840 () ListLongMap!6517)

(declare-fun contains!19292 (ListLongMap!6517 (_ BitVec 64)) Bool)

(assert (=> b!4852278 (= res!2071285 (contains!19292 lm!2840 hash!467))))

(declare-fun b!4852279 () Bool)

(declare-fun res!2071282 () Bool)

(assert (=> b!4852279 (=> (not res!2071282) (not e!3033376))))

(declare-fun allKeysSameHashInMap!2843 (ListLongMap!6517 Hashable!7529) Bool)

(assert (=> b!4852279 (= res!2071282 (allKeysSameHashInMap!2843 lm!2840 hashF!1802))))

(declare-fun res!2071284 () Bool)

(assert (=> start!506438 (=> (not res!2071284) (not e!3033376))))

(declare-fun forall!12980 (List!55767 Int) Bool)

(assert (=> start!506438 (= res!2071284 (forall!12980 (toList!7887 lm!2840) lambda!242809))))

(assert (=> start!506438 e!3033376))

(declare-fun inv!71345 (ListLongMap!6517) Bool)

(assert (=> start!506438 (and (inv!71345 lm!2840) e!3033375)))

(assert (=> start!506438 true))

(declare-fun tp_is_empty!35357 () Bool)

(assert (=> start!506438 tp_is_empty!35357))

(assert (=> b!4852280 (= e!3033376 (not (forall!12980 (toList!7887 lm!2840) lambda!242810)))))

(declare-fun lt!1990166 () List!55766)

(declare-fun contains!19293 (List!55767 tuple2!59420) Bool)

(assert (=> b!4852280 (contains!19293 (toList!7887 lm!2840) (tuple2!59421 hash!467 lt!1990166))))

(declare-datatypes ((Unit!145766 0))(
  ( (Unit!145767) )
))
(declare-fun lt!1990165 () Unit!145766)

(declare-fun lemmaGetValueImpliesTupleContained!790 (ListLongMap!6517 (_ BitVec 64) List!55766) Unit!145766)

(assert (=> b!4852280 (= lt!1990165 (lemmaGetValueImpliesTupleContained!790 lm!2840 hash!467 lt!1990166))))

(declare-fun apply!13468 (ListLongMap!6517 (_ BitVec 64)) List!55766)

(assert (=> b!4852280 (= lt!1990166 (apply!13468 lm!2840 hash!467))))

(assert (= (and start!506438 res!2071284) b!4852279))

(assert (= (and b!4852279 res!2071282) b!4852278))

(assert (= (and b!4852278 res!2071285) b!4852277))

(assert (= (and b!4852277 res!2071283) b!4852280))

(assert (= start!506438 b!4852276))

(declare-fun m!5850480 () Bool)

(assert (=> b!4852277 m!5850480))

(declare-fun m!5850482 () Bool)

(assert (=> b!4852278 m!5850482))

(declare-fun m!5850484 () Bool)

(assert (=> start!506438 m!5850484))

(declare-fun m!5850486 () Bool)

(assert (=> start!506438 m!5850486))

(declare-fun m!5850488 () Bool)

(assert (=> b!4852279 m!5850488))

(declare-fun m!5850490 () Bool)

(assert (=> b!4852280 m!5850490))

(declare-fun m!5850492 () Bool)

(assert (=> b!4852280 m!5850492))

(declare-fun m!5850494 () Bool)

(assert (=> b!4852280 m!5850494))

(declare-fun m!5850496 () Bool)

(assert (=> b!4852280 m!5850496))

(push 1)

(assert (not b!4852280))

(assert (not b!4852277))

(assert (not b!4852279))

(assert tp_is_empty!35357)

(assert (not start!506438))

(assert (not b!4852276))

(assert (not b!4852278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557592 () Bool)

(declare-fun res!2071302 () Bool)

(declare-fun e!3033387 () Bool)

(assert (=> d!1557592 (=> res!2071302 e!3033387)))

(assert (=> d!1557592 (= res!2071302 (is-Nil!55643 (toList!7887 lm!2840)))))

(assert (=> d!1557592 (= (forall!12980 (toList!7887 lm!2840) lambda!242809) e!3033387)))

(declare-fun b!4852304 () Bool)

(declare-fun e!3033388 () Bool)

(assert (=> b!4852304 (= e!3033387 e!3033388)))

(declare-fun res!2071303 () Bool)

(assert (=> b!4852304 (=> (not res!2071303) (not e!3033388))))

(declare-fun dynLambda!22371 (Int tuple2!59420) Bool)

(assert (=> b!4852304 (= res!2071303 (dynLambda!22371 lambda!242809 (h!62080 (toList!7887 lm!2840))))))

(declare-fun b!4852305 () Bool)

(assert (=> b!4852305 (= e!3033388 (forall!12980 (t!363263 (toList!7887 lm!2840)) lambda!242809))))

(assert (= (and d!1557592 (not res!2071302)) b!4852304))

(assert (= (and b!4852304 res!2071303) b!4852305))

(declare-fun b_lambda!193027 () Bool)

(assert (=> (not b_lambda!193027) (not b!4852304)))

(declare-fun m!5850516 () Bool)

(assert (=> b!4852304 m!5850516))

(declare-fun m!5850518 () Bool)

(assert (=> b!4852305 m!5850518))

(assert (=> start!506438 d!1557592))

(declare-fun d!1557594 () Bool)

(declare-fun isStrictlySorted!1094 (List!55767) Bool)

(assert (=> d!1557594 (= (inv!71345 lm!2840) (isStrictlySorted!1094 (toList!7887 lm!2840)))))

(declare-fun bs!1173031 () Bool)

(assert (= bs!1173031 d!1557594))

(declare-fun m!5850520 () Bool)

(assert (=> bs!1173031 m!5850520))

(assert (=> start!506438 d!1557594))

(declare-fun d!1557596 () Bool)

(declare-fun e!3033394 () Bool)

(assert (=> d!1557596 e!3033394))

(declare-fun res!2071306 () Bool)

(assert (=> d!1557596 (=> res!2071306 e!3033394)))

(declare-fun lt!1990182 () Bool)

(assert (=> d!1557596 (= res!2071306 (not lt!1990182))))

(declare-fun lt!1990184 () Bool)

(assert (=> d!1557596 (= lt!1990182 lt!1990184)))

(declare-fun lt!1990181 () Unit!145766)

(declare-fun e!3033393 () Unit!145766)

(assert (=> d!1557596 (= lt!1990181 e!3033393)))

(declare-fun c!825679 () Bool)

(assert (=> d!1557596 (= c!825679 lt!1990184)))

(declare-fun containsKey!4735 (List!55767 (_ BitVec 64)) Bool)

(assert (=> d!1557596 (= lt!1990184 (containsKey!4735 (toList!7887 lm!2840) hash!467))))

(assert (=> d!1557596 (= (contains!19292 lm!2840 hash!467) lt!1990182)))

(declare-fun b!4852312 () Bool)

(declare-fun lt!1990183 () Unit!145766)

(assert (=> b!4852312 (= e!3033393 lt!1990183)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2517 (List!55767 (_ BitVec 64)) Unit!145766)

(assert (=> b!4852312 (= lt!1990183 (lemmaContainsKeyImpliesGetValueByKeyDefined!2517 (toList!7887 lm!2840) hash!467))))

(declare-datatypes ((Option!13728 0))(
  ( (None!13727) (Some!13727 (v!49524 List!55766)) )
))
(declare-fun isDefined!10816 (Option!13728) Bool)

(declare-fun getValueByKey!2745 (List!55767 (_ BitVec 64)) Option!13728)

(assert (=> b!4852312 (isDefined!10816 (getValueByKey!2745 (toList!7887 lm!2840) hash!467))))

(declare-fun b!4852313 () Bool)

(declare-fun Unit!145770 () Unit!145766)

(assert (=> b!4852313 (= e!3033393 Unit!145770)))

(declare-fun b!4852314 () Bool)

(assert (=> b!4852314 (= e!3033394 (isDefined!10816 (getValueByKey!2745 (toList!7887 lm!2840) hash!467)))))

(assert (= (and d!1557596 c!825679) b!4852312))

(assert (= (and d!1557596 (not c!825679)) b!4852313))

(assert (= (and d!1557596 (not res!2071306)) b!4852314))

(declare-fun m!5850522 () Bool)

(assert (=> d!1557596 m!5850522))

(declare-fun m!5850524 () Bool)

(assert (=> b!4852312 m!5850524))

(declare-fun m!5850526 () Bool)

(assert (=> b!4852312 m!5850526))

(assert (=> b!4852312 m!5850526))

(declare-fun m!5850528 () Bool)

(assert (=> b!4852312 m!5850528))

(assert (=> b!4852314 m!5850526))

(assert (=> b!4852314 m!5850526))

(assert (=> b!4852314 m!5850528))

(assert (=> b!4852278 d!1557596))

(declare-fun d!1557598 () Bool)

(declare-fun hash!5655 (Hashable!7529 K!17482) (_ BitVec 64))

(assert (=> d!1557598 (= (hash!5653 hashF!1802 key!6955) (hash!5655 hashF!1802 key!6955))))

(declare-fun bs!1173032 () Bool)

(assert (= bs!1173032 d!1557598))

(declare-fun m!5850530 () Bool)

(assert (=> bs!1173032 m!5850530))

(assert (=> b!4852277 d!1557598))

(declare-fun bs!1173033 () Bool)

(declare-fun d!1557600 () Bool)

(assert (= bs!1173033 (and d!1557600 start!506438)))

(declare-fun lambda!242819 () Int)

(assert (=> bs!1173033 (not (= lambda!242819 lambda!242809))))

(declare-fun bs!1173034 () Bool)

(assert (= bs!1173034 (and d!1557600 b!4852280)))

(assert (=> bs!1173034 (= lambda!242819 lambda!242810)))

(assert (=> d!1557600 true))

(assert (=> d!1557600 (= (allKeysSameHashInMap!2843 lm!2840 hashF!1802) (forall!12980 (toList!7887 lm!2840) lambda!242819))))

(declare-fun bs!1173035 () Bool)

(assert (= bs!1173035 d!1557600))

(declare-fun m!5850532 () Bool)

(assert (=> bs!1173035 m!5850532))

(assert (=> b!4852279 d!1557600))

(declare-fun d!1557604 () Bool)

(declare-fun res!2071307 () Bool)

(declare-fun e!3033395 () Bool)

(assert (=> d!1557604 (=> res!2071307 e!3033395)))

(assert (=> d!1557604 (= res!2071307 (is-Nil!55643 (toList!7887 lm!2840)))))

(assert (=> d!1557604 (= (forall!12980 (toList!7887 lm!2840) lambda!242810) e!3033395)))

(declare-fun b!4852315 () Bool)

(declare-fun e!3033396 () Bool)

(assert (=> b!4852315 (= e!3033395 e!3033396)))

(declare-fun res!2071308 () Bool)

(assert (=> b!4852315 (=> (not res!2071308) (not e!3033396))))

(assert (=> b!4852315 (= res!2071308 (dynLambda!22371 lambda!242810 (h!62080 (toList!7887 lm!2840))))))

(declare-fun b!4852316 () Bool)

(assert (=> b!4852316 (= e!3033396 (forall!12980 (t!363263 (toList!7887 lm!2840)) lambda!242810))))

(assert (= (and d!1557604 (not res!2071307)) b!4852315))

(assert (= (and b!4852315 res!2071308) b!4852316))

(declare-fun b_lambda!193029 () Bool)

(assert (=> (not b_lambda!193029) (not b!4852315)))

(declare-fun m!5850534 () Bool)

(assert (=> b!4852315 m!5850534))

(declare-fun m!5850536 () Bool)

(assert (=> b!4852316 m!5850536))

(assert (=> b!4852280 d!1557604))

(declare-fun lt!1990187 () Bool)

(declare-fun d!1557606 () Bool)

(declare-fun content!9908 (List!55767) (Set tuple2!59420))

(assert (=> d!1557606 (= lt!1990187 (set.member (tuple2!59421 hash!467 lt!1990166) (content!9908 (toList!7887 lm!2840))))))

(declare-fun e!3033401 () Bool)

(assert (=> d!1557606 (= lt!1990187 e!3033401)))

(declare-fun res!2071314 () Bool)

(assert (=> d!1557606 (=> (not res!2071314) (not e!3033401))))

(assert (=> d!1557606 (= res!2071314 (is-Cons!55643 (toList!7887 lm!2840)))))

(assert (=> d!1557606 (= (contains!19293 (toList!7887 lm!2840) (tuple2!59421 hash!467 lt!1990166)) lt!1990187)))

(declare-fun b!4852321 () Bool)

(declare-fun e!3033402 () Bool)

(assert (=> b!4852321 (= e!3033401 e!3033402)))

(declare-fun res!2071313 () Bool)

(assert (=> b!4852321 (=> res!2071313 e!3033402)))

(assert (=> b!4852321 (= res!2071313 (= (h!62080 (toList!7887 lm!2840)) (tuple2!59421 hash!467 lt!1990166)))))

(declare-fun b!4852322 () Bool)

(assert (=> b!4852322 (= e!3033402 (contains!19293 (t!363263 (toList!7887 lm!2840)) (tuple2!59421 hash!467 lt!1990166)))))

(assert (= (and d!1557606 res!2071314) b!4852321))

(assert (= (and b!4852321 (not res!2071313)) b!4852322))

(declare-fun m!5850538 () Bool)

(assert (=> d!1557606 m!5850538))

(declare-fun m!5850540 () Bool)

(assert (=> d!1557606 m!5850540))

(declare-fun m!5850542 () Bool)

(assert (=> b!4852322 m!5850542))

(assert (=> b!4852280 d!1557606))

(declare-fun d!1557608 () Bool)

(assert (=> d!1557608 (contains!19293 (toList!7887 lm!2840) (tuple2!59421 hash!467 lt!1990166))))

(declare-fun lt!1990190 () Unit!145766)

(declare-fun choose!35520 (ListLongMap!6517 (_ BitVec 64) List!55766) Unit!145766)

(assert (=> d!1557608 (= lt!1990190 (choose!35520 lm!2840 hash!467 lt!1990166))))

(assert (=> d!1557608 (contains!19292 lm!2840 hash!467)))

(assert (=> d!1557608 (= (lemmaGetValueImpliesTupleContained!790 lm!2840 hash!467 lt!1990166) lt!1990190)))

(declare-fun bs!1173039 () Bool)

(assert (= bs!1173039 d!1557608))

(assert (=> bs!1173039 m!5850492))

(declare-fun m!5850546 () Bool)

(assert (=> bs!1173039 m!5850546))

(assert (=> bs!1173039 m!5850482))

(assert (=> b!4852280 d!1557608))

(declare-fun d!1557612 () Bool)

(declare-fun get!19104 (Option!13728) List!55766)

(assert (=> d!1557612 (= (apply!13468 lm!2840 hash!467) (get!19104 (getValueByKey!2745 (toList!7887 lm!2840) hash!467)))))

(declare-fun bs!1173040 () Bool)

(assert (= bs!1173040 d!1557612))

(assert (=> bs!1173040 m!5850526))

(assert (=> bs!1173040 m!5850526))

(declare-fun m!5850548 () Bool)

(assert (=> bs!1173040 m!5850548))

(assert (=> b!4852280 d!1557612))

(declare-fun b!4852328 () Bool)

(declare-fun e!3033405 () Bool)

(declare-fun tp!1365071 () Bool)

(declare-fun tp!1365072 () Bool)

(assert (=> b!4852328 (= e!3033405 (and tp!1365071 tp!1365072))))

(assert (=> b!4852276 (= tp!1365063 e!3033405)))

(assert (= (and b!4852276 (is-Cons!55643 (toList!7887 lm!2840))) b!4852328))

(declare-fun b_lambda!193031 () Bool)

(assert (= b_lambda!193027 (or start!506438 b_lambda!193031)))

(declare-fun bs!1173041 () Bool)

(declare-fun d!1557614 () Bool)

(assert (= bs!1173041 (and d!1557614 start!506438)))

(declare-fun noDuplicateKeys!2623 (List!55766) Bool)

(assert (=> bs!1173041 (= (dynLambda!22371 lambda!242809 (h!62080 (toList!7887 lm!2840))) (noDuplicateKeys!2623 (_2!33004 (h!62080 (toList!7887 lm!2840)))))))

(declare-fun m!5850550 () Bool)

(assert (=> bs!1173041 m!5850550))

(assert (=> b!4852304 d!1557614))

(declare-fun b_lambda!193033 () Bool)

(assert (= b_lambda!193029 (or b!4852280 b_lambda!193033)))

(declare-fun bs!1173042 () Bool)

(declare-fun d!1557616 () Bool)

(assert (= bs!1173042 (and d!1557616 b!4852280)))

(declare-fun allKeysSameHash!2040 (List!55766 (_ BitVec 64) Hashable!7529) Bool)

(assert (=> bs!1173042 (= (dynLambda!22371 lambda!242810 (h!62080 (toList!7887 lm!2840))) (allKeysSameHash!2040 (_2!33004 (h!62080 (toList!7887 lm!2840))) (_1!33004 (h!62080 (toList!7887 lm!2840))) hashF!1802))))

(declare-fun m!5850552 () Bool)

(assert (=> bs!1173042 m!5850552))

(assert (=> b!4852315 d!1557616))

(push 1)

(assert (not b!4852316))

(assert (not d!1557598))

(assert (not b!4852322))

(assert (not b!4852305))

(assert (not d!1557606))

(assert tp_is_empty!35357)

(assert (not bs!1173042))

(assert (not b!4852314))

(assert (not b_lambda!193031))

(assert (not b!4852312))

(assert (not d!1557594))

(assert (not b!4852328))

(assert (not bs!1173041))

(assert (not d!1557612))

(assert (not d!1557596))

(assert (not b_lambda!193033))

(assert (not d!1557600))

(assert (not d!1557608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

