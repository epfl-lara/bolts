; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498952 () Bool)

(assert start!498952)

(declare-fun b!4818390 () Bool)

(declare-fun e!3010470 () Bool)

(declare-fun e!3010469 () Bool)

(assert (=> b!4818390 (= e!3010470 e!3010469)))

(declare-fun res!2050028 () Bool)

(assert (=> b!4818390 (=> (not res!2050028) (not e!3010469))))

(declare-datatypes ((V!16733 0))(
  ( (V!16734 (val!21495 Int)) )
))
(declare-datatypes ((K!16487 0))(
  ( (K!16488 (val!21496 Int)) )
))
(declare-datatypes ((tuple2!57926 0))(
  ( (tuple2!57927 (_1!32257 K!16487) (_2!32257 V!16733)) )
))
(declare-datatypes ((List!54945 0))(
  ( (Nil!54821) (Cons!54821 (h!61255 tuple2!57926) (t!362441 List!54945)) )
))
(declare-datatypes ((tuple2!57928 0))(
  ( (tuple2!57929 (_1!32258 (_ BitVec 64)) (_2!32258 List!54945)) )
))
(declare-datatypes ((List!54946 0))(
  ( (Nil!54822) (Cons!54822 (h!61256 tuple2!57928) (t!362442 List!54946)) )
))
(declare-datatypes ((ListLongMap!5861 0))(
  ( (ListLongMap!5862 (toList!7379 List!54946)) )
))
(declare-fun lm!2280 () ListLongMap!5861)

(declare-fun lt!1968279 () (_ BitVec 64))

(declare-fun contains!18653 (ListLongMap!5861 (_ BitVec 64)) Bool)

(assert (=> b!4818390 (= res!2050028 (contains!18653 lm!2280 lt!1968279))))

(declare-datatypes ((Hashable!7199 0))(
  ( (HashableExt!7198 (__x!33474 Int)) )
))
(declare-fun hashF!1509 () Hashable!7199)

(declare-fun key!5428 () K!16487)

(declare-fun hash!5275 (Hashable!7199 K!16487) (_ BitVec 64))

(assert (=> b!4818390 (= lt!1968279 (hash!5275 hashF!1509 key!5428))))

(declare-fun res!2050029 () Bool)

(assert (=> start!498952 (=> (not res!2050029) (not e!3010470))))

(declare-fun lambda!235033 () Int)

(declare-fun forall!12513 (List!54946 Int) Bool)

(assert (=> start!498952 (= res!2050029 (forall!12513 (toList!7379 lm!2280) lambda!235033))))

(assert (=> start!498952 e!3010470))

(declare-fun e!3010468 () Bool)

(declare-fun inv!70388 (ListLongMap!5861) Bool)

(assert (=> start!498952 (and (inv!70388 lm!2280) e!3010468)))

(assert (=> start!498952 true))

(declare-fun tp_is_empty!34279 () Bool)

(assert (=> start!498952 tp_is_empty!34279))

(declare-fun b!4818391 () Bool)

(declare-fun tp!1362066 () Bool)

(assert (=> b!4818391 (= e!3010468 tp!1362066)))

(declare-fun b!4818392 () Bool)

(declare-fun res!2050031 () Bool)

(assert (=> b!4818392 (=> (not res!2050031) (not e!3010469))))

(assert (=> b!4818392 (= res!2050031 (and (is-Cons!54822 (toList!7379 lm!2280)) (= (_1!32258 (h!61256 (toList!7379 lm!2280))) lt!1968279)))))

(declare-fun b!4818393 () Bool)

(declare-fun res!2050032 () Bool)

(assert (=> b!4818393 (=> (not res!2050032) (not e!3010470))))

(declare-fun allKeysSameHashInMap!2515 (ListLongMap!5861 Hashable!7199) Bool)

(assert (=> b!4818393 (= res!2050032 (allKeysSameHashInMap!2515 lm!2280 hashF!1509))))

(declare-fun b!4818394 () Bool)

(declare-fun res!2050030 () Bool)

(assert (=> b!4818394 (=> (not res!2050030) (not e!3010469))))

(declare-fun containsKey!4257 (List!54945 K!16487) Bool)

(declare-fun apply!13286 (ListLongMap!5861 (_ BitVec 64)) List!54945)

(assert (=> b!4818394 (= res!2050030 (not (containsKey!4257 (apply!13286 lm!2280 lt!1968279) key!5428)))))

(declare-fun b!4818395 () Bool)

(declare-fun isEmpty!29611 (ListLongMap!5861) Bool)

(assert (=> b!4818395 (= e!3010469 (isEmpty!29611 lm!2280))))

(assert (= (and start!498952 res!2050029) b!4818393))

(assert (= (and b!4818393 res!2050032) b!4818390))

(assert (= (and b!4818390 res!2050028) b!4818394))

(assert (= (and b!4818394 res!2050030) b!4818392))

(assert (= (and b!4818392 res!2050031) b!4818395))

(assert (= start!498952 b!4818391))

(declare-fun m!5805348 () Bool)

(assert (=> start!498952 m!5805348))

(declare-fun m!5805350 () Bool)

(assert (=> start!498952 m!5805350))

(declare-fun m!5805352 () Bool)

(assert (=> b!4818393 m!5805352))

(declare-fun m!5805354 () Bool)

(assert (=> b!4818390 m!5805354))

(declare-fun m!5805356 () Bool)

(assert (=> b!4818390 m!5805356))

(declare-fun m!5805358 () Bool)

(assert (=> b!4818395 m!5805358))

(declare-fun m!5805360 () Bool)

(assert (=> b!4818394 m!5805360))

(assert (=> b!4818394 m!5805360))

(declare-fun m!5805362 () Bool)

(assert (=> b!4818394 m!5805362))

(push 1)

(assert tp_is_empty!34279)

(assert (not b!4818391))

(assert (not start!498952))

(assert (not b!4818395))

(assert (not b!4818390))

(assert (not b!4818394))

(assert (not b!4818393))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1542473 () Bool)

(declare-fun isEmpty!29614 (List!54946) Bool)

(assert (=> d!1542473 (= (isEmpty!29611 lm!2280) (isEmpty!29614 (toList!7379 lm!2280)))))

(declare-fun bs!1161115 () Bool)

(assert (= bs!1161115 d!1542473))

(declare-fun m!5805382 () Bool)

(assert (=> bs!1161115 m!5805382))

(assert (=> b!4818395 d!1542473))

(declare-fun d!1542475 () Bool)

(declare-fun e!3010491 () Bool)

(assert (=> d!1542475 e!3010491))

(declare-fun res!2050056 () Bool)

(assert (=> d!1542475 (=> res!2050056 e!3010491)))

(declare-fun lt!1968294 () Bool)

(assert (=> d!1542475 (= res!2050056 (not lt!1968294))))

(declare-fun lt!1968292 () Bool)

(assert (=> d!1542475 (= lt!1968294 lt!1968292)))

(declare-datatypes ((Unit!142146 0))(
  ( (Unit!142147) )
))
(declare-fun lt!1968293 () Unit!142146)

(declare-fun e!3010490 () Unit!142146)

(assert (=> d!1542475 (= lt!1968293 e!3010490)))

(declare-fun c!821217 () Bool)

(assert (=> d!1542475 (= c!821217 lt!1968292)))

(declare-fun containsKey!4259 (List!54946 (_ BitVec 64)) Bool)

(assert (=> d!1542475 (= lt!1968292 (containsKey!4259 (toList!7379 lm!2280) lt!1968279))))

(assert (=> d!1542475 (= (contains!18653 lm!2280 lt!1968279) lt!1968294)))

(declare-fun b!4818426 () Bool)

(declare-fun lt!1968291 () Unit!142146)

(assert (=> b!4818426 (= e!3010490 lt!1968291)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2359 (List!54946 (_ BitVec 64)) Unit!142146)

(assert (=> b!4818426 (= lt!1968291 (lemmaContainsKeyImpliesGetValueByKeyDefined!2359 (toList!7379 lm!2280) lt!1968279))))

(declare-datatypes ((Option!13447 0))(
  ( (None!13446) (Some!13446 (v!49113 List!54945)) )
))
(declare-fun isDefined!10562 (Option!13447) Bool)

(declare-fun getValueByKey!2574 (List!54946 (_ BitVec 64)) Option!13447)

(assert (=> b!4818426 (isDefined!10562 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279))))

(declare-fun b!4818427 () Bool)

(declare-fun Unit!142148 () Unit!142146)

(assert (=> b!4818427 (= e!3010490 Unit!142148)))

(declare-fun b!4818428 () Bool)

(assert (=> b!4818428 (= e!3010491 (isDefined!10562 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279)))))

(assert (= (and d!1542475 c!821217) b!4818426))

(assert (= (and d!1542475 (not c!821217)) b!4818427))

(assert (= (and d!1542475 (not res!2050056)) b!4818428))

(declare-fun m!5805390 () Bool)

(assert (=> d!1542475 m!5805390))

(declare-fun m!5805392 () Bool)

(assert (=> b!4818426 m!5805392))

(declare-fun m!5805394 () Bool)

(assert (=> b!4818426 m!5805394))

(assert (=> b!4818426 m!5805394))

(declare-fun m!5805396 () Bool)

(assert (=> b!4818426 m!5805396))

(assert (=> b!4818428 m!5805394))

(assert (=> b!4818428 m!5805394))

(assert (=> b!4818428 m!5805396))

(assert (=> b!4818390 d!1542475))

(declare-fun d!1542481 () Bool)

(declare-fun hash!5277 (Hashable!7199 K!16487) (_ BitVec 64))

(assert (=> d!1542481 (= (hash!5275 hashF!1509 key!5428) (hash!5277 hashF!1509 key!5428))))

(declare-fun bs!1161117 () Bool)

(assert (= bs!1161117 d!1542481))

(declare-fun m!5805398 () Bool)

(assert (=> bs!1161117 m!5805398))

(assert (=> b!4818390 d!1542481))

(declare-fun d!1542483 () Bool)

(declare-fun res!2050064 () Bool)

(declare-fun e!3010502 () Bool)

(assert (=> d!1542483 (=> res!2050064 e!3010502)))

(assert (=> d!1542483 (= res!2050064 (is-Nil!54822 (toList!7379 lm!2280)))))

(assert (=> d!1542483 (= (forall!12513 (toList!7379 lm!2280) lambda!235033) e!3010502)))

(declare-fun b!4818442 () Bool)

(declare-fun e!3010503 () Bool)

(assert (=> b!4818442 (= e!3010502 e!3010503)))

(declare-fun res!2050065 () Bool)

(assert (=> b!4818442 (=> (not res!2050065) (not e!3010503))))

(declare-fun dynLambda!22174 (Int tuple2!57928) Bool)

(assert (=> b!4818442 (= res!2050065 (dynLambda!22174 lambda!235033 (h!61256 (toList!7379 lm!2280))))))

(declare-fun b!4818443 () Bool)

(assert (=> b!4818443 (= e!3010503 (forall!12513 (t!362442 (toList!7379 lm!2280)) lambda!235033))))

(assert (= (and d!1542483 (not res!2050064)) b!4818442))

(assert (= (and b!4818442 res!2050065) b!4818443))

(declare-fun b_lambda!188753 () Bool)

(assert (=> (not b_lambda!188753) (not b!4818442)))

(declare-fun m!5805406 () Bool)

(assert (=> b!4818442 m!5805406))

(declare-fun m!5805408 () Bool)

(assert (=> b!4818443 m!5805408))

(assert (=> start!498952 d!1542483))

(declare-fun d!1542487 () Bool)

(declare-fun isStrictlySorted!956 (List!54946) Bool)

(assert (=> d!1542487 (= (inv!70388 lm!2280) (isStrictlySorted!956 (toList!7379 lm!2280)))))

(declare-fun bs!1161119 () Bool)

(assert (= bs!1161119 d!1542487))

(declare-fun m!5805412 () Bool)

(assert (=> bs!1161119 m!5805412))

(assert (=> start!498952 d!1542487))

(declare-fun bs!1161121 () Bool)

(declare-fun d!1542491 () Bool)

(assert (= bs!1161121 (and d!1542491 start!498952)))

(declare-fun lambda!235039 () Int)

(assert (=> bs!1161121 (not (= lambda!235039 lambda!235033))))

(assert (=> d!1542491 true))

(assert (=> d!1542491 (= (allKeysSameHashInMap!2515 lm!2280 hashF!1509) (forall!12513 (toList!7379 lm!2280) lambda!235039))))

(declare-fun bs!1161122 () Bool)

(assert (= bs!1161122 d!1542491))

(declare-fun m!5805420 () Bool)

(assert (=> bs!1161122 m!5805420))

(assert (=> b!4818393 d!1542491))

(declare-fun d!1542497 () Bool)

(declare-fun res!2050076 () Bool)

(declare-fun e!3010514 () Bool)

(assert (=> d!1542497 (=> res!2050076 e!3010514)))

(assert (=> d!1542497 (= res!2050076 (and (is-Cons!54821 (apply!13286 lm!2280 lt!1968279)) (= (_1!32257 (h!61255 (apply!13286 lm!2280 lt!1968279))) key!5428)))))

(assert (=> d!1542497 (= (containsKey!4257 (apply!13286 lm!2280 lt!1968279) key!5428) e!3010514)))

(declare-fun b!4818456 () Bool)

(declare-fun e!3010515 () Bool)

(assert (=> b!4818456 (= e!3010514 e!3010515)))

(declare-fun res!2050077 () Bool)

(assert (=> b!4818456 (=> (not res!2050077) (not e!3010515))))

(assert (=> b!4818456 (= res!2050077 (is-Cons!54821 (apply!13286 lm!2280 lt!1968279)))))

(declare-fun b!4818457 () Bool)

(assert (=> b!4818457 (= e!3010515 (containsKey!4257 (t!362441 (apply!13286 lm!2280 lt!1968279)) key!5428))))

(assert (= (and d!1542497 (not res!2050076)) b!4818456))

(assert (= (and b!4818456 res!2050077) b!4818457))

(declare-fun m!5805422 () Bool)

(assert (=> b!4818457 m!5805422))

(assert (=> b!4818394 d!1542497))

(declare-fun d!1542499 () Bool)

(declare-fun get!18760 (Option!13447) List!54945)

(assert (=> d!1542499 (= (apply!13286 lm!2280 lt!1968279) (get!18760 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279)))))

(declare-fun bs!1161125 () Bool)

(assert (= bs!1161125 d!1542499))

(assert (=> bs!1161125 m!5805394))

(assert (=> bs!1161125 m!5805394))

(declare-fun m!5805426 () Bool)

(assert (=> bs!1161125 m!5805426))

(assert (=> b!4818394 d!1542499))

(declare-fun b!4818469 () Bool)

(declare-fun e!3010521 () Bool)

(declare-fun tp!1362080 () Bool)

(declare-fun tp!1362081 () Bool)

(assert (=> b!4818469 (= e!3010521 (and tp!1362080 tp!1362081))))

(assert (=> b!4818391 (= tp!1362066 e!3010521)))

(assert (= (and b!4818391 (is-Cons!54822 (toList!7379 lm!2280))) b!4818469))

(declare-fun b_lambda!188759 () Bool)

(assert (= b_lambda!188753 (or start!498952 b_lambda!188759)))

(declare-fun bs!1161127 () Bool)

(declare-fun d!1542503 () Bool)

(assert (= bs!1161127 (and d!1542503 start!498952)))

(declare-fun noDuplicateKeys!2414 (List!54945) Bool)

(assert (=> bs!1161127 (= (dynLambda!22174 lambda!235033 (h!61256 (toList!7379 lm!2280))) (noDuplicateKeys!2414 (_2!32258 (h!61256 (toList!7379 lm!2280)))))))

(declare-fun m!5805430 () Bool)

(assert (=> bs!1161127 m!5805430))

(assert (=> b!4818442 d!1542503))

(push 1)

(assert (not d!1542475))

(assert (not b!4818426))

(assert (not d!1542491))

(assert (not b!4818457))

(assert (not bs!1161127))

(assert (not d!1542481))

(assert (not b!4818443))

(assert (not d!1542487))

(assert (not b!4818469))

(assert (not b_lambda!188759))

(assert (not d!1542473))

(assert (not b!4818428))

(assert tp_is_empty!34279)

(assert (not d!1542499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1542507 () Bool)

(declare-fun res!2050081 () Bool)

(declare-fun e!3010525 () Bool)

(assert (=> d!1542507 (=> res!2050081 e!3010525)))

(assert (=> d!1542507 (= res!2050081 (is-Nil!54822 (t!362442 (toList!7379 lm!2280))))))

(assert (=> d!1542507 (= (forall!12513 (t!362442 (toList!7379 lm!2280)) lambda!235033) e!3010525)))

(declare-fun b!4818473 () Bool)

(declare-fun e!3010526 () Bool)

(assert (=> b!4818473 (= e!3010525 e!3010526)))

(declare-fun res!2050082 () Bool)

(assert (=> b!4818473 (=> (not res!2050082) (not e!3010526))))

(assert (=> b!4818473 (= res!2050082 (dynLambda!22174 lambda!235033 (h!61256 (t!362442 (toList!7379 lm!2280)))))))

(declare-fun b!4818474 () Bool)

(assert (=> b!4818474 (= e!3010526 (forall!12513 (t!362442 (t!362442 (toList!7379 lm!2280))) lambda!235033))))

(assert (= (and d!1542507 (not res!2050081)) b!4818473))

(assert (= (and b!4818473 res!2050082) b!4818474))

(declare-fun b_lambda!188761 () Bool)

(assert (=> (not b_lambda!188761) (not b!4818473)))

(declare-fun m!5805434 () Bool)

(assert (=> b!4818473 m!5805434))

(declare-fun m!5805436 () Bool)

(assert (=> b!4818474 m!5805436))

(assert (=> b!4818443 d!1542507))

(declare-fun d!1542511 () Bool)

(declare-fun res!2050087 () Bool)

(declare-fun e!3010535 () Bool)

(assert (=> d!1542511 (=> res!2050087 e!3010535)))

(assert (=> d!1542511 (= res!2050087 (and (is-Cons!54822 (toList!7379 lm!2280)) (= (_1!32258 (h!61256 (toList!7379 lm!2280))) lt!1968279)))))

(assert (=> d!1542511 (= (containsKey!4259 (toList!7379 lm!2280) lt!1968279) e!3010535)))

(declare-fun b!4818487 () Bool)

(declare-fun e!3010536 () Bool)

(assert (=> b!4818487 (= e!3010535 e!3010536)))

(declare-fun res!2050088 () Bool)

(assert (=> b!4818487 (=> (not res!2050088) (not e!3010536))))

(assert (=> b!4818487 (= res!2050088 (and (or (not (is-Cons!54822 (toList!7379 lm!2280))) (bvsle (_1!32258 (h!61256 (toList!7379 lm!2280))) lt!1968279)) (is-Cons!54822 (toList!7379 lm!2280)) (bvslt (_1!32258 (h!61256 (toList!7379 lm!2280))) lt!1968279)))))

(declare-fun b!4818488 () Bool)

(assert (=> b!4818488 (= e!3010536 (containsKey!4259 (t!362442 (toList!7379 lm!2280)) lt!1968279))))

(assert (= (and d!1542511 (not res!2050087)) b!4818487))

(assert (= (and b!4818487 res!2050088) b!4818488))

(declare-fun m!5805440 () Bool)

(assert (=> b!4818488 m!5805440))

(assert (=> d!1542475 d!1542511))

(declare-fun d!1542515 () Bool)

(declare-fun res!2050093 () Bool)

(declare-fun e!3010543 () Bool)

(assert (=> d!1542515 (=> res!2050093 e!3010543)))

(assert (=> d!1542515 (= res!2050093 (or (is-Nil!54822 (toList!7379 lm!2280)) (is-Nil!54822 (t!362442 (toList!7379 lm!2280)))))))

(assert (=> d!1542515 (= (isStrictlySorted!956 (toList!7379 lm!2280)) e!3010543)))

(declare-fun b!4818497 () Bool)

(declare-fun e!3010544 () Bool)

(assert (=> b!4818497 (= e!3010543 e!3010544)))

(declare-fun res!2050094 () Bool)

(assert (=> b!4818497 (=> (not res!2050094) (not e!3010544))))

(assert (=> b!4818497 (= res!2050094 (bvslt (_1!32258 (h!61256 (toList!7379 lm!2280))) (_1!32258 (h!61256 (t!362442 (toList!7379 lm!2280))))))))

(declare-fun b!4818498 () Bool)

(assert (=> b!4818498 (= e!3010544 (isStrictlySorted!956 (t!362442 (toList!7379 lm!2280))))))

(assert (= (and d!1542515 (not res!2050093)) b!4818497))

(assert (= (and b!4818497 res!2050094) b!4818498))

(declare-fun m!5805444 () Bool)

(assert (=> b!4818498 m!5805444))

(assert (=> d!1542487 d!1542515))

(declare-fun d!1542519 () Bool)

(assert (=> d!1542519 (= (isEmpty!29614 (toList!7379 lm!2280)) (is-Nil!54822 (toList!7379 lm!2280)))))

(assert (=> d!1542473 d!1542519))

(declare-fun d!1542521 () Bool)

(declare-fun res!2050109 () Bool)

(declare-fun e!3010559 () Bool)

(assert (=> d!1542521 (=> res!2050109 e!3010559)))

(assert (=> d!1542521 (= res!2050109 (not (is-Cons!54821 (_2!32258 (h!61256 (toList!7379 lm!2280))))))))

(assert (=> d!1542521 (= (noDuplicateKeys!2414 (_2!32258 (h!61256 (toList!7379 lm!2280)))) e!3010559)))

(declare-fun b!4818513 () Bool)

(declare-fun e!3010560 () Bool)

(assert (=> b!4818513 (= e!3010559 e!3010560)))

(declare-fun res!2050110 () Bool)

(assert (=> b!4818513 (=> (not res!2050110) (not e!3010560))))

(assert (=> b!4818513 (= res!2050110 (not (containsKey!4257 (t!362441 (_2!32258 (h!61256 (toList!7379 lm!2280)))) (_1!32257 (h!61255 (_2!32258 (h!61256 (toList!7379 lm!2280))))))))))

(declare-fun b!4818514 () Bool)

(assert (=> b!4818514 (= e!3010560 (noDuplicateKeys!2414 (t!362441 (_2!32258 (h!61256 (toList!7379 lm!2280))))))))

(assert (= (and d!1542521 (not res!2050109)) b!4818513))

(assert (= (and b!4818513 res!2050110) b!4818514))

(declare-fun m!5805448 () Bool)

(assert (=> b!4818513 m!5805448))

(declare-fun m!5805450 () Bool)

(assert (=> b!4818514 m!5805450))

(assert (=> bs!1161127 d!1542521))

(declare-fun d!1542525 () Bool)

(assert (=> d!1542525 (= (get!18760 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279)) (v!49113 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279)))))

(assert (=> d!1542499 d!1542525))

(declare-fun b!4818532 () Bool)

(declare-fun e!3010573 () Option!13447)

(declare-fun e!3010574 () Option!13447)

(assert (=> b!4818532 (= e!3010573 e!3010574)))

(declare-fun c!821232 () Bool)

(assert (=> b!4818532 (= c!821232 (and (is-Cons!54822 (toList!7379 lm!2280)) (not (= (_1!32258 (h!61256 (toList!7379 lm!2280))) lt!1968279))))))

(declare-fun b!4818534 () Bool)

(assert (=> b!4818534 (= e!3010574 None!13446)))

(declare-fun b!4818533 () Bool)

(assert (=> b!4818533 (= e!3010574 (getValueByKey!2574 (t!362442 (toList!7379 lm!2280)) lt!1968279))))

(declare-fun b!4818531 () Bool)

(assert (=> b!4818531 (= e!3010573 (Some!13446 (_2!32258 (h!61256 (toList!7379 lm!2280)))))))

(declare-fun d!1542527 () Bool)

(declare-fun c!821231 () Bool)

(assert (=> d!1542527 (= c!821231 (and (is-Cons!54822 (toList!7379 lm!2280)) (= (_1!32258 (h!61256 (toList!7379 lm!2280))) lt!1968279)))))

(assert (=> d!1542527 (= (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279) e!3010573)))

(assert (= (and d!1542527 c!821231) b!4818531))

(assert (= (and d!1542527 (not c!821231)) b!4818532))

(assert (= (and b!4818532 c!821232) b!4818533))

(assert (= (and b!4818532 (not c!821232)) b!4818534))

(declare-fun m!5805468 () Bool)

(assert (=> b!4818533 m!5805468))

(assert (=> d!1542499 d!1542527))

(declare-fun d!1542539 () Bool)

(declare-fun choose!34973 (Hashable!7199 K!16487) (_ BitVec 64))

(assert (=> d!1542539 (= (hash!5277 hashF!1509 key!5428) (choose!34973 hashF!1509 key!5428))))

(declare-fun bs!1161130 () Bool)

(assert (= bs!1161130 d!1542539))

(declare-fun m!5805470 () Bool)

(assert (=> bs!1161130 m!5805470))

(assert (=> d!1542481 d!1542539))

(declare-fun d!1542543 () Bool)

(assert (=> d!1542543 (isDefined!10562 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279))))

(declare-fun lt!1968312 () Unit!142146)

(declare-fun choose!34974 (List!54946 (_ BitVec 64)) Unit!142146)

(assert (=> d!1542543 (= lt!1968312 (choose!34974 (toList!7379 lm!2280) lt!1968279))))

(declare-fun e!3010581 () Bool)

(assert (=> d!1542543 e!3010581))

(declare-fun res!2050125 () Bool)

(assert (=> d!1542543 (=> (not res!2050125) (not e!3010581))))

(assert (=> d!1542543 (= res!2050125 (isStrictlySorted!956 (toList!7379 lm!2280)))))

(assert (=> d!1542543 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2359 (toList!7379 lm!2280) lt!1968279) lt!1968312)))

(declare-fun b!4818541 () Bool)

(assert (=> b!4818541 (= e!3010581 (containsKey!4259 (toList!7379 lm!2280) lt!1968279))))

(assert (= (and d!1542543 res!2050125) b!4818541))

(assert (=> d!1542543 m!5805394))

(assert (=> d!1542543 m!5805394))

(assert (=> d!1542543 m!5805396))

(declare-fun m!5805472 () Bool)

(assert (=> d!1542543 m!5805472))

(assert (=> d!1542543 m!5805412))

(assert (=> b!4818541 m!5805390))

(assert (=> b!4818426 d!1542543))

(declare-fun d!1542547 () Bool)

(declare-fun isEmpty!29616 (Option!13447) Bool)

(assert (=> d!1542547 (= (isDefined!10562 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279)) (not (isEmpty!29616 (getValueByKey!2574 (toList!7379 lm!2280) lt!1968279))))))

(declare-fun bs!1161131 () Bool)

(assert (= bs!1161131 d!1542547))

(assert (=> bs!1161131 m!5805394))

(declare-fun m!5805476 () Bool)

(assert (=> bs!1161131 m!5805476))

(assert (=> b!4818426 d!1542547))

(assert (=> b!4818426 d!1542527))

(declare-fun d!1542549 () Bool)

(declare-fun res!2050128 () Bool)

(declare-fun e!3010586 () Bool)

(assert (=> d!1542549 (=> res!2050128 e!3010586)))

(assert (=> d!1542549 (= res!2050128 (and (is-Cons!54821 (t!362441 (apply!13286 lm!2280 lt!1968279))) (= (_1!32257 (h!61255 (t!362441 (apply!13286 lm!2280 lt!1968279)))) key!5428)))))

(assert (=> d!1542549 (= (containsKey!4257 (t!362441 (apply!13286 lm!2280 lt!1968279)) key!5428) e!3010586)))

(declare-fun b!4818548 () Bool)

(declare-fun e!3010587 () Bool)

(assert (=> b!4818548 (= e!3010586 e!3010587)))

(declare-fun res!2050129 () Bool)

(assert (=> b!4818548 (=> (not res!2050129) (not e!3010587))))

(assert (=> b!4818548 (= res!2050129 (is-Cons!54821 (t!362441 (apply!13286 lm!2280 lt!1968279))))))

(declare-fun b!4818549 () Bool)

(assert (=> b!4818549 (= e!3010587 (containsKey!4257 (t!362441 (t!362441 (apply!13286 lm!2280 lt!1968279))) key!5428))))

(assert (= (and d!1542549 (not res!2050128)) b!4818548))

(assert (= (and b!4818548 res!2050129) b!4818549))

(declare-fun m!5805478 () Bool)

(assert (=> b!4818549 m!5805478))

(assert (=> b!4818457 d!1542549))

(declare-fun d!1542551 () Bool)

(declare-fun res!2050130 () Bool)

(declare-fun e!3010589 () Bool)

(assert (=> d!1542551 (=> res!2050130 e!3010589)))

(assert (=> d!1542551 (= res!2050130 (is-Nil!54822 (toList!7379 lm!2280)))))

(assert (=> d!1542551 (= (forall!12513 (toList!7379 lm!2280) lambda!235039) e!3010589)))

(declare-fun b!4818551 () Bool)

(declare-fun e!3010590 () Bool)

(assert (=> b!4818551 (= e!3010589 e!3010590)))

(declare-fun res!2050131 () Bool)

(assert (=> b!4818551 (=> (not res!2050131) (not e!3010590))))

(assert (=> b!4818551 (= res!2050131 (dynLambda!22174 lambda!235039 (h!61256 (toList!7379 lm!2280))))))

(declare-fun b!4818552 () Bool)

(assert (=> b!4818552 (= e!3010590 (forall!12513 (t!362442 (toList!7379 lm!2280)) lambda!235039))))

(assert (= (and d!1542551 (not res!2050130)) b!4818551))

(assert (= (and b!4818551 res!2050131) b!4818552))

(declare-fun b_lambda!188767 () Bool)

(assert (=> (not b_lambda!188767) (not b!4818551)))

(declare-fun m!5805480 () Bool)

(assert (=> b!4818551 m!5805480))

(declare-fun m!5805482 () Bool)

(assert (=> b!4818552 m!5805482))

(assert (=> d!1542491 d!1542551))

(assert (=> b!4818428 d!1542547))

(assert (=> b!4818428 d!1542527))

(declare-fun tp!1362089 () Bool)

(declare-fun b!4818558 () Bool)

(declare-fun tp_is_empty!34285 () Bool)

(declare-fun e!3010594 () Bool)

(assert (=> b!4818558 (= e!3010594 (and tp_is_empty!34279 tp_is_empty!34285 tp!1362089))))

(assert (=> b!4818469 (= tp!1362080 e!3010594)))

(assert (= (and b!4818469 (is-Cons!54821 (_2!32258 (h!61256 (toList!7379 lm!2280))))) b!4818558))

(declare-fun b!4818559 () Bool)

(declare-fun e!3010595 () Bool)

(declare-fun tp!1362090 () Bool)

(declare-fun tp!1362091 () Bool)

(assert (=> b!4818559 (= e!3010595 (and tp!1362090 tp!1362091))))

(assert (=> b!4818469 (= tp!1362081 e!3010595)))

(assert (= (and b!4818469 (is-Cons!54822 (t!362442 (toList!7379 lm!2280)))) b!4818559))

(declare-fun b_lambda!188773 () Bool)

(assert (= b_lambda!188767 (or d!1542491 b_lambda!188773)))

(declare-fun bs!1161134 () Bool)

(declare-fun d!1542557 () Bool)

(assert (= bs!1161134 (and d!1542557 d!1542491)))

(declare-fun allKeysSameHash!1988 (List!54945 (_ BitVec 64) Hashable!7199) Bool)

(assert (=> bs!1161134 (= (dynLambda!22174 lambda!235039 (h!61256 (toList!7379 lm!2280))) (allKeysSameHash!1988 (_2!32258 (h!61256 (toList!7379 lm!2280))) (_1!32258 (h!61256 (toList!7379 lm!2280))) hashF!1509))))

(declare-fun m!5805488 () Bool)

(assert (=> bs!1161134 m!5805488))

(assert (=> b!4818551 d!1542557))

(declare-fun b_lambda!188775 () Bool)

(assert (= b_lambda!188761 (or start!498952 b_lambda!188775)))

(declare-fun bs!1161135 () Bool)

(declare-fun d!1542559 () Bool)

(assert (= bs!1161135 (and d!1542559 start!498952)))

(assert (=> bs!1161135 (= (dynLambda!22174 lambda!235033 (h!61256 (t!362442 (toList!7379 lm!2280)))) (noDuplicateKeys!2414 (_2!32258 (h!61256 (t!362442 (toList!7379 lm!2280))))))))

(declare-fun m!5805490 () Bool)

(assert (=> bs!1161135 m!5805490))

(assert (=> b!4818473 d!1542559))

(push 1)

(assert tp_is_empty!34279)

(assert (not bs!1161135))

(assert (not d!1542543))

(assert (not b!4818514))

(assert (not d!1542547))

(assert (not b!4818549))

(assert (not b!4818541))

(assert (not b!4818533))

(assert (not d!1542539))

(assert (not bs!1161134))

(assert (not b_lambda!188775))

(assert (not b!4818498))

(assert tp_is_empty!34285)

(assert (not b_lambda!188773))

(assert (not b!4818559))

(assert (not b!4818558))

(assert (not b!4818488))

(assert (not b!4818552))

(assert (not b!4818513))

(assert (not b_lambda!188759))

(assert (not b!4818474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

