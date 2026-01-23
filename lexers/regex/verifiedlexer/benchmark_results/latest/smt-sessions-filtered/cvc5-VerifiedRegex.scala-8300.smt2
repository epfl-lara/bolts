; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!430994 () Bool)

(assert start!430994)

(declare-fun b!4421490 () Bool)

(declare-fun res!1827353 () Bool)

(declare-fun e!2753036 () Bool)

(assert (=> b!4421490 (=> (not res!1827353) (not e!2753036))))

(declare-datatypes ((K!10903 0))(
  ( (K!10904 (val!16993 Int)) )
))
(declare-datatypes ((V!11149 0))(
  ( (V!11150 (val!16994 Int)) )
))
(declare-datatypes ((tuple2!49306 0))(
  ( (tuple2!49307 (_1!27947 K!10903) (_2!27947 V!11149)) )
))
(declare-datatypes ((List!49662 0))(
  ( (Nil!49538) (Cons!49538 (h!55213 tuple2!49306) (t!356600 List!49662)) )
))
(declare-fun newBucket!194 () List!49662)

(declare-datatypes ((Hashable!5126 0))(
  ( (HashableExt!5125 (__x!30829 Int)) )
))
(declare-fun hashF!1220 () Hashable!5126)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!692 (List!49662 (_ BitVec 64) Hashable!5126) Bool)

(assert (=> b!4421490 (= res!1827353 (allKeysSameHash!692 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4421491 () Bool)

(declare-fun res!1827352 () Bool)

(declare-fun e!2753037 () Bool)

(assert (=> b!4421491 (=> (not res!1827352) (not e!2753037))))

(declare-datatypes ((tuple2!49308 0))(
  ( (tuple2!49309 (_1!27948 (_ BitVec 64)) (_2!27948 List!49662)) )
))
(declare-datatypes ((List!49663 0))(
  ( (Nil!49539) (Cons!49539 (h!55214 tuple2!49308) (t!356601 List!49663)) )
))
(declare-datatypes ((ListLongMap!2101 0))(
  ( (ListLongMap!2102 (toList!3451 List!49663)) )
))
(declare-fun lm!1616 () ListLongMap!2101)

(declare-fun lambda!153097 () Int)

(declare-fun forall!9533 (List!49663 Int) Bool)

(assert (=> b!4421491 (= res!1827352 (forall!9533 (toList!3451 lm!1616) lambda!153097))))

(declare-fun e!2753035 () Bool)

(declare-fun newValue!93 () V!11149)

(declare-fun key!3717 () K!10903)

(declare-fun lt!1621494 () Bool)

(declare-fun b!4421492 () Bool)

(assert (=> b!4421492 (= e!2753035 (and (not lt!1621494) (= newBucket!194 (Cons!49538 (tuple2!49307 key!3717 newValue!93) Nil!49538))))))

(declare-fun b!4421493 () Bool)

(declare-fun e!2753038 () Bool)

(declare-fun lt!1621496 () ListLongMap!2101)

(assert (=> b!4421493 (= e!2753038 (forall!9533 (toList!3451 lt!1621496) lambda!153097))))

(declare-fun b!4421494 () Bool)

(assert (=> b!4421494 (= e!2753036 e!2753037)))

(declare-fun res!1827354 () Bool)

(assert (=> b!4421494 (=> (not res!1827354) (not e!2753037))))

(assert (=> b!4421494 (= res!1827354 e!2753035)))

(declare-fun res!1827351 () Bool)

(assert (=> b!4421494 (=> res!1827351 e!2753035)))

(declare-fun e!2753034 () Bool)

(assert (=> b!4421494 (= res!1827351 e!2753034)))

(declare-fun res!1827355 () Bool)

(assert (=> b!4421494 (=> (not res!1827355) (not e!2753034))))

(assert (=> b!4421494 (= res!1827355 lt!1621494)))

(declare-fun contains!12019 (ListLongMap!2101 (_ BitVec 64)) Bool)

(assert (=> b!4421494 (= lt!1621494 (contains!12019 lm!1616 hash!366))))

(declare-fun res!1827360 () Bool)

(assert (=> start!430994 (=> (not res!1827360) (not e!2753036))))

(assert (=> start!430994 (= res!1827360 (forall!9533 (toList!3451 lm!1616) lambda!153097))))

(assert (=> start!430994 e!2753036))

(declare-fun tp_is_empty!26173 () Bool)

(assert (=> start!430994 tp_is_empty!26173))

(declare-fun tp_is_empty!26175 () Bool)

(assert (=> start!430994 tp_is_empty!26175))

(declare-fun e!2753039 () Bool)

(assert (=> start!430994 e!2753039))

(declare-fun e!2753031 () Bool)

(declare-fun inv!65090 (ListLongMap!2101) Bool)

(assert (=> start!430994 (and (inv!65090 lm!1616) e!2753031)))

(assert (=> start!430994 true))

(declare-fun b!4421495 () Bool)

(declare-fun apply!11584 (ListLongMap!2101 (_ BitVec 64)) List!49662)

(assert (=> b!4421495 (= e!2753034 (= newBucket!194 (Cons!49538 (tuple2!49307 key!3717 newValue!93) (apply!11584 lm!1616 hash!366))))))

(declare-fun b!4421496 () Bool)

(declare-fun res!1827361 () Bool)

(assert (=> b!4421496 (=> (not res!1827361) (not e!2753036))))

(declare-fun allKeysSameHashInMap!838 (ListLongMap!2101 Hashable!5126) Bool)

(assert (=> b!4421496 (= res!1827361 (allKeysSameHashInMap!838 lm!1616 hashF!1220))))

(declare-fun b!4421497 () Bool)

(declare-fun tp!1332986 () Bool)

(assert (=> b!4421497 (= e!2753031 tp!1332986)))

(declare-fun b!4421498 () Bool)

(declare-fun res!1827359 () Bool)

(assert (=> b!4421498 (=> (not res!1827359) (not e!2753036))))

(declare-fun hash!2072 (Hashable!5126 K!10903) (_ BitVec 64))

(assert (=> b!4421498 (= res!1827359 (= (hash!2072 hashF!1220 key!3717) hash!366))))

(declare-fun b!4421499 () Bool)

(declare-fun e!2753033 () Bool)

(assert (=> b!4421499 (= e!2753037 (not e!2753033))))

(declare-fun res!1827357 () Bool)

(assert (=> b!4421499 (=> res!1827357 e!2753033)))

(declare-fun lt!1621495 () ListLongMap!2101)

(assert (=> b!4421499 (= res!1827357 (not (forall!9533 (toList!3451 lt!1621495) lambda!153097)))))

(assert (=> b!4421499 (forall!9533 (toList!3451 lt!1621495) lambda!153097)))

(declare-fun lt!1621491 () tuple2!49308)

(declare-fun +!1048 (ListLongMap!2101 tuple2!49308) ListLongMap!2101)

(assert (=> b!4421499 (= lt!1621495 (+!1048 lm!1616 lt!1621491))))

(assert (=> b!4421499 (= lt!1621491 (tuple2!49309 hash!366 newBucket!194))))

(declare-datatypes ((Unit!81417 0))(
  ( (Unit!81418) )
))
(declare-fun lt!1621492 () Unit!81417)

(declare-fun addValidProp!376 (ListLongMap!2101 Int (_ BitVec 64) List!49662) Unit!81417)

(assert (=> b!4421499 (= lt!1621492 (addValidProp!376 lm!1616 lambda!153097 hash!366 newBucket!194))))

(declare-fun b!4421500 () Bool)

(declare-fun res!1827356 () Bool)

(assert (=> b!4421500 (=> (not res!1827356) (not e!2753036))))

(declare-datatypes ((ListMap!2695 0))(
  ( (ListMap!2696 (toList!3452 List!49662)) )
))
(declare-fun contains!12020 (ListMap!2695 K!10903) Bool)

(declare-fun extractMap!793 (List!49663) ListMap!2695)

(assert (=> b!4421500 (= res!1827356 (not (contains!12020 (extractMap!793 (toList!3451 lm!1616)) key!3717)))))

(declare-fun b!4421501 () Bool)

(declare-fun res!1827350 () Bool)

(assert (=> b!4421501 (=> res!1827350 e!2753033)))

(assert (=> b!4421501 (= res!1827350 (or (and (is-Cons!49539 (toList!3451 lm!1616)) (= (_1!27948 (h!55214 (toList!3451 lm!1616))) hash!366)) (not (is-Cons!49539 (toList!3451 lm!1616))) (= (_1!27948 (h!55214 (toList!3451 lm!1616))) hash!366)))))

(declare-fun b!4421502 () Bool)

(assert (=> b!4421502 (= e!2753033 e!2753038)))

(declare-fun res!1827362 () Bool)

(assert (=> b!4421502 (=> res!1827362 e!2753038)))

(declare-fun head!9189 (ListLongMap!2101) tuple2!49308)

(assert (=> b!4421502 (= res!1827362 (= (head!9189 lm!1616) lt!1621491))))

(declare-fun eq!390 (ListMap!2695 ListMap!2695) Bool)

(declare-fun +!1049 (ListMap!2695 tuple2!49306) ListMap!2695)

(assert (=> b!4421502 (eq!390 (extractMap!793 (toList!3451 (+!1048 lt!1621496 lt!1621491))) (+!1049 (extractMap!793 (toList!3451 lt!1621496)) (tuple2!49307 key!3717 newValue!93)))))

(declare-fun lt!1621490 () Unit!81417)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!106 (ListLongMap!2101 (_ BitVec 64) List!49662 K!10903 V!11149 Hashable!5126) Unit!81417)

(assert (=> b!4421502 (= lt!1621490 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!106 lt!1621496 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7236 (ListLongMap!2101) ListLongMap!2101)

(assert (=> b!4421502 (= lt!1621496 (tail!7236 lm!1616))))

(declare-fun lt!1621497 () Unit!81417)

(declare-fun e!2753032 () Unit!81417)

(assert (=> b!4421502 (= lt!1621497 e!2753032)))

(declare-fun c!752634 () Bool)

(declare-fun tail!7237 (List!49663) List!49663)

(assert (=> b!4421502 (= c!752634 (contains!12020 (extractMap!793 (tail!7237 (toList!3451 lm!1616))) key!3717))))

(declare-fun b!4421503 () Bool)

(declare-fun res!1827358 () Bool)

(assert (=> b!4421503 (=> (not res!1827358) (not e!2753037))))

(declare-fun noDuplicateKeys!732 (List!49662) Bool)

(assert (=> b!4421503 (= res!1827358 (noDuplicateKeys!732 newBucket!194))))

(declare-fun b!4421504 () Bool)

(declare-fun Unit!81419 () Unit!81417)

(assert (=> b!4421504 (= e!2753032 Unit!81419)))

(declare-fun b!4421505 () Bool)

(declare-fun tp!1332985 () Bool)

(assert (=> b!4421505 (= e!2753039 (and tp_is_empty!26175 tp_is_empty!26173 tp!1332985))))

(declare-fun b!4421506 () Bool)

(declare-fun Unit!81420 () Unit!81417)

(assert (=> b!4421506 (= e!2753032 Unit!81420)))

(declare-fun lt!1621493 () Unit!81417)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!19 (ListLongMap!2101 K!10903 Hashable!5126) Unit!81417)

(assert (=> b!4421506 (= lt!1621493 (lemmaExtractTailMapContainsThenExtractMapDoes!19 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4421506 false))

(assert (= (and start!430994 res!1827360) b!4421496))

(assert (= (and b!4421496 res!1827361) b!4421498))

(assert (= (and b!4421498 res!1827359) b!4421490))

(assert (= (and b!4421490 res!1827353) b!4421500))

(assert (= (and b!4421500 res!1827356) b!4421494))

(assert (= (and b!4421494 res!1827355) b!4421495))

(assert (= (and b!4421494 (not res!1827351)) b!4421492))

(assert (= (and b!4421494 res!1827354) b!4421503))

(assert (= (and b!4421503 res!1827358) b!4421491))

(assert (= (and b!4421491 res!1827352) b!4421499))

(assert (= (and b!4421499 (not res!1827357)) b!4421501))

(assert (= (and b!4421501 (not res!1827350)) b!4421502))

(assert (= (and b!4421502 c!752634) b!4421506))

(assert (= (and b!4421502 (not c!752634)) b!4421504))

(assert (= (and b!4421502 (not res!1827362)) b!4421493))

(assert (= (and start!430994 (is-Cons!49538 newBucket!194)) b!4421505))

(assert (= start!430994 b!4421497))

(declare-fun m!5099283 () Bool)

(assert (=> b!4421495 m!5099283))

(declare-fun m!5099285 () Bool)

(assert (=> b!4421491 m!5099285))

(declare-fun m!5099287 () Bool)

(assert (=> b!4421496 m!5099287))

(declare-fun m!5099289 () Bool)

(assert (=> b!4421490 m!5099289))

(declare-fun m!5099291 () Bool)

(assert (=> b!4421493 m!5099291))

(declare-fun m!5099293 () Bool)

(assert (=> b!4421498 m!5099293))

(declare-fun m!5099295 () Bool)

(assert (=> b!4421502 m!5099295))

(declare-fun m!5099297 () Bool)

(assert (=> b!4421502 m!5099297))

(declare-fun m!5099299 () Bool)

(assert (=> b!4421502 m!5099299))

(declare-fun m!5099301 () Bool)

(assert (=> b!4421502 m!5099301))

(declare-fun m!5099303 () Bool)

(assert (=> b!4421502 m!5099303))

(declare-fun m!5099305 () Bool)

(assert (=> b!4421502 m!5099305))

(declare-fun m!5099307 () Bool)

(assert (=> b!4421502 m!5099307))

(declare-fun m!5099309 () Bool)

(assert (=> b!4421502 m!5099309))

(assert (=> b!4421502 m!5099295))

(assert (=> b!4421502 m!5099297))

(declare-fun m!5099311 () Bool)

(assert (=> b!4421502 m!5099311))

(assert (=> b!4421502 m!5099299))

(declare-fun m!5099313 () Bool)

(assert (=> b!4421502 m!5099313))

(assert (=> b!4421502 m!5099313))

(assert (=> b!4421502 m!5099301))

(declare-fun m!5099315 () Bool)

(assert (=> b!4421502 m!5099315))

(declare-fun m!5099317 () Bool)

(assert (=> b!4421506 m!5099317))

(assert (=> start!430994 m!5099285))

(declare-fun m!5099319 () Bool)

(assert (=> start!430994 m!5099319))

(declare-fun m!5099321 () Bool)

(assert (=> b!4421494 m!5099321))

(declare-fun m!5099323 () Bool)

(assert (=> b!4421499 m!5099323))

(assert (=> b!4421499 m!5099323))

(declare-fun m!5099325 () Bool)

(assert (=> b!4421499 m!5099325))

(declare-fun m!5099327 () Bool)

(assert (=> b!4421499 m!5099327))

(declare-fun m!5099329 () Bool)

(assert (=> b!4421500 m!5099329))

(assert (=> b!4421500 m!5099329))

(declare-fun m!5099331 () Bool)

(assert (=> b!4421500 m!5099331))

(declare-fun m!5099333 () Bool)

(assert (=> b!4421503 m!5099333))

(push 1)

(assert (not b!4421493))

(assert (not b!4421494))

(assert (not b!4421506))

(assert (not b!4421499))

(assert (not start!430994))

(assert (not b!4421490))

(assert (not b!4421496))

(assert tp_is_empty!26173)

(assert (not b!4421505))

(assert (not b!4421497))

(assert (not b!4421502))

(assert (not b!4421503))

(assert tp_is_empty!26175)

(assert (not b!4421500))

(assert (not b!4421498))

(assert (not b!4421491))

(assert (not b!4421495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1339769 () Bool)

(declare-fun e!2753077 () Bool)

(assert (=> d!1339769 e!2753077))

(declare-fun res!1827410 () Bool)

(assert (=> d!1339769 (=> res!1827410 e!2753077)))

(declare-fun lt!1621530 () Bool)

(assert (=> d!1339769 (= res!1827410 (not lt!1621530))))

(declare-fun lt!1621533 () Bool)

(assert (=> d!1339769 (= lt!1621530 lt!1621533)))

(declare-fun lt!1621532 () Unit!81417)

(declare-fun e!2753078 () Unit!81417)

(assert (=> d!1339769 (= lt!1621532 e!2753078)))

(declare-fun c!752640 () Bool)

(assert (=> d!1339769 (= c!752640 lt!1621533)))

(declare-fun containsKey!1081 (List!49663 (_ BitVec 64)) Bool)

(assert (=> d!1339769 (= lt!1621533 (containsKey!1081 (toList!3451 lm!1616) hash!366))))

(assert (=> d!1339769 (= (contains!12019 lm!1616 hash!366) lt!1621530)))

(declare-fun b!4421570 () Bool)

(declare-fun lt!1621531 () Unit!81417)

(assert (=> b!4421570 (= e!2753078 lt!1621531)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!599 (List!49663 (_ BitVec 64)) Unit!81417)

(assert (=> b!4421570 (= lt!1621531 (lemmaContainsKeyImpliesGetValueByKeyDefined!599 (toList!3451 lm!1616) hash!366))))

(declare-datatypes ((Option!10703 0))(
  ( (None!10702) (Some!10702 (v!43878 List!49662)) )
))
(declare-fun isDefined!7996 (Option!10703) Bool)

(declare-fun getValueByKey!689 (List!49663 (_ BitVec 64)) Option!10703)

(assert (=> b!4421570 (isDefined!7996 (getValueByKey!689 (toList!3451 lm!1616) hash!366))))

(declare-fun b!4421571 () Bool)

(declare-fun Unit!81425 () Unit!81417)

(assert (=> b!4421571 (= e!2753078 Unit!81425)))

(declare-fun b!4421572 () Bool)

(assert (=> b!4421572 (= e!2753077 (isDefined!7996 (getValueByKey!689 (toList!3451 lm!1616) hash!366)))))

(assert (= (and d!1339769 c!752640) b!4421570))

(assert (= (and d!1339769 (not c!752640)) b!4421571))

(assert (= (and d!1339769 (not res!1827410)) b!4421572))

(declare-fun m!5099391 () Bool)

(assert (=> d!1339769 m!5099391))

(declare-fun m!5099393 () Bool)

(assert (=> b!4421570 m!5099393))

(declare-fun m!5099395 () Bool)

(assert (=> b!4421570 m!5099395))

(assert (=> b!4421570 m!5099395))

(declare-fun m!5099397 () Bool)

(assert (=> b!4421570 m!5099397))

(assert (=> b!4421572 m!5099395))

(assert (=> b!4421572 m!5099395))

(assert (=> b!4421572 m!5099397))

(assert (=> b!4421494 d!1339769))

(declare-fun bs!755051 () Bool)

(declare-fun d!1339773 () Bool)

(assert (= bs!755051 (and d!1339773 start!430994)))

(declare-fun lambda!153111 () Int)

(assert (=> bs!755051 (= lambda!153111 lambda!153097)))

(assert (=> d!1339773 (contains!12020 (extractMap!793 (toList!3451 lm!1616)) key!3717)))

(declare-fun lt!1621548 () Unit!81417)

(declare-fun choose!27864 (ListLongMap!2101 K!10903 Hashable!5126) Unit!81417)

(assert (=> d!1339773 (= lt!1621548 (choose!27864 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1339773 (forall!9533 (toList!3451 lm!1616) lambda!153111)))

(assert (=> d!1339773 (= (lemmaExtractTailMapContainsThenExtractMapDoes!19 lm!1616 key!3717 hashF!1220) lt!1621548)))

(declare-fun bs!755052 () Bool)

(assert (= bs!755052 d!1339773))

(assert (=> bs!755052 m!5099329))

(assert (=> bs!755052 m!5099329))

(assert (=> bs!755052 m!5099331))

(declare-fun m!5099411 () Bool)

(assert (=> bs!755052 m!5099411))

(declare-fun m!5099413 () Bool)

(assert (=> bs!755052 m!5099413))

(assert (=> b!4421506 d!1339773))

(declare-fun d!1339777 () Bool)

(declare-fun get!16140 (Option!10703) List!49662)

(assert (=> d!1339777 (= (apply!11584 lm!1616 hash!366) (get!16140 (getValueByKey!689 (toList!3451 lm!1616) hash!366)))))

(declare-fun bs!755053 () Bool)

(assert (= bs!755053 d!1339777))

(assert (=> bs!755053 m!5099395))

(assert (=> bs!755053 m!5099395))

(declare-fun m!5099415 () Bool)

(assert (=> bs!755053 m!5099415))

(assert (=> b!4421495 d!1339777))

(declare-fun bs!755054 () Bool)

(declare-fun d!1339779 () Bool)

(assert (= bs!755054 (and d!1339779 start!430994)))

(declare-fun lambda!153114 () Int)

(assert (=> bs!755054 (not (= lambda!153114 lambda!153097))))

(declare-fun bs!755055 () Bool)

(assert (= bs!755055 (and d!1339779 d!1339773)))

(assert (=> bs!755055 (not (= lambda!153114 lambda!153111))))

(assert (=> d!1339779 true))

(assert (=> d!1339779 (= (allKeysSameHashInMap!838 lm!1616 hashF!1220) (forall!9533 (toList!3451 lm!1616) lambda!153114))))

(declare-fun bs!755056 () Bool)

(assert (= bs!755056 d!1339779))

(declare-fun m!5099417 () Bool)

(assert (=> bs!755056 m!5099417))

(assert (=> b!4421496 d!1339779))

(declare-fun d!1339781 () Bool)

(declare-fun hash!2075 (Hashable!5126 K!10903) (_ BitVec 64))

(assert (=> d!1339781 (= (hash!2072 hashF!1220 key!3717) (hash!2075 hashF!1220 key!3717))))

(declare-fun bs!755057 () Bool)

(assert (= bs!755057 d!1339781))

(declare-fun m!5099419 () Bool)

(assert (=> bs!755057 m!5099419))

(assert (=> b!4421498 d!1339781))

(declare-fun d!1339783 () Bool)

(declare-fun res!1827421 () Bool)

(declare-fun e!2753086 () Bool)

(assert (=> d!1339783 (=> res!1827421 e!2753086)))

(assert (=> d!1339783 (= res!1827421 (is-Nil!49539 (toList!3451 lm!1616)))))

(assert (=> d!1339783 (= (forall!9533 (toList!3451 lm!1616) lambda!153097) e!2753086)))

(declare-fun b!4421585 () Bool)

(declare-fun e!2753087 () Bool)

(assert (=> b!4421585 (= e!2753086 e!2753087)))

(declare-fun res!1827422 () Bool)

(assert (=> b!4421585 (=> (not res!1827422) (not e!2753087))))

(declare-fun dynLambda!20831 (Int tuple2!49308) Bool)

(assert (=> b!4421585 (= res!1827422 (dynLambda!20831 lambda!153097 (h!55214 (toList!3451 lm!1616))))))

(declare-fun b!4421586 () Bool)

(assert (=> b!4421586 (= e!2753087 (forall!9533 (t!356601 (toList!3451 lm!1616)) lambda!153097))))

(assert (= (and d!1339783 (not res!1827421)) b!4421585))

(assert (= (and b!4421585 res!1827422) b!4421586))

(declare-fun b_lambda!142641 () Bool)

(assert (=> (not b_lambda!142641) (not b!4421585)))

(declare-fun m!5099421 () Bool)

(assert (=> b!4421585 m!5099421))

(declare-fun m!5099423 () Bool)

(assert (=> b!4421586 m!5099423))

(assert (=> start!430994 d!1339783))

(declare-fun d!1339785 () Bool)

(declare-fun isStrictlySorted!221 (List!49663) Bool)

(assert (=> d!1339785 (= (inv!65090 lm!1616) (isStrictlySorted!221 (toList!3451 lm!1616)))))

(declare-fun bs!755058 () Bool)

(assert (= bs!755058 d!1339785))

(declare-fun m!5099425 () Bool)

(assert (=> bs!755058 m!5099425))

(assert (=> start!430994 d!1339785))

(declare-fun d!1339787 () Bool)

(declare-fun res!1827423 () Bool)

(declare-fun e!2753088 () Bool)

(assert (=> d!1339787 (=> res!1827423 e!2753088)))

(assert (=> d!1339787 (= res!1827423 (is-Nil!49539 (toList!3451 lt!1621495)))))

(assert (=> d!1339787 (= (forall!9533 (toList!3451 lt!1621495) lambda!153097) e!2753088)))

(declare-fun b!4421587 () Bool)

(declare-fun e!2753089 () Bool)

(assert (=> b!4421587 (= e!2753088 e!2753089)))

(declare-fun res!1827424 () Bool)

(assert (=> b!4421587 (=> (not res!1827424) (not e!2753089))))

(assert (=> b!4421587 (= res!1827424 (dynLambda!20831 lambda!153097 (h!55214 (toList!3451 lt!1621495))))))

(declare-fun b!4421588 () Bool)

(assert (=> b!4421588 (= e!2753089 (forall!9533 (t!356601 (toList!3451 lt!1621495)) lambda!153097))))

(assert (= (and d!1339787 (not res!1827423)) b!4421587))

(assert (= (and b!4421587 res!1827424) b!4421588))

(declare-fun b_lambda!142643 () Bool)

(assert (=> (not b_lambda!142643) (not b!4421587)))

(declare-fun m!5099427 () Bool)

(assert (=> b!4421587 m!5099427))

(declare-fun m!5099429 () Bool)

(assert (=> b!4421588 m!5099429))

(assert (=> b!4421499 d!1339787))

(declare-fun d!1339789 () Bool)

(declare-fun e!2753095 () Bool)

(assert (=> d!1339789 e!2753095))

(declare-fun res!1827433 () Bool)

(assert (=> d!1339789 (=> (not res!1827433) (not e!2753095))))

(declare-fun lt!1621563 () ListLongMap!2101)

(assert (=> d!1339789 (= res!1827433 (contains!12019 lt!1621563 (_1!27948 lt!1621491)))))

(declare-fun lt!1621562 () List!49663)

(assert (=> d!1339789 (= lt!1621563 (ListLongMap!2102 lt!1621562))))

(declare-fun lt!1621560 () Unit!81417)

(declare-fun lt!1621561 () Unit!81417)

(assert (=> d!1339789 (= lt!1621560 lt!1621561)))

(assert (=> d!1339789 (= (getValueByKey!689 lt!1621562 (_1!27948 lt!1621491)) (Some!10702 (_2!27948 lt!1621491)))))

(declare-fun lemmaContainsTupThenGetReturnValue!424 (List!49663 (_ BitVec 64) List!49662) Unit!81417)

(assert (=> d!1339789 (= lt!1621561 (lemmaContainsTupThenGetReturnValue!424 lt!1621562 (_1!27948 lt!1621491) (_2!27948 lt!1621491)))))

(declare-fun insertStrictlySorted!249 (List!49663 (_ BitVec 64) List!49662) List!49663)

(assert (=> d!1339789 (= lt!1621562 (insertStrictlySorted!249 (toList!3451 lm!1616) (_1!27948 lt!1621491) (_2!27948 lt!1621491)))))

(assert (=> d!1339789 (= (+!1048 lm!1616 lt!1621491) lt!1621563)))

(declare-fun b!4421597 () Bool)

(declare-fun res!1827432 () Bool)

(assert (=> b!4421597 (=> (not res!1827432) (not e!2753095))))

(assert (=> b!4421597 (= res!1827432 (= (getValueByKey!689 (toList!3451 lt!1621563) (_1!27948 lt!1621491)) (Some!10702 (_2!27948 lt!1621491))))))

(declare-fun b!4421598 () Bool)

(declare-fun contains!12023 (List!49663 tuple2!49308) Bool)

(assert (=> b!4421598 (= e!2753095 (contains!12023 (toList!3451 lt!1621563) lt!1621491))))

(assert (= (and d!1339789 res!1827433) b!4421597))

(assert (= (and b!4421597 res!1827432) b!4421598))

(declare-fun m!5099439 () Bool)

(assert (=> d!1339789 m!5099439))

(declare-fun m!5099441 () Bool)

(assert (=> d!1339789 m!5099441))

(declare-fun m!5099443 () Bool)

(assert (=> d!1339789 m!5099443))

(declare-fun m!5099445 () Bool)

(assert (=> d!1339789 m!5099445))

(declare-fun m!5099447 () Bool)

(assert (=> b!4421597 m!5099447))

(declare-fun m!5099449 () Bool)

(assert (=> b!4421598 m!5099449))

(assert (=> b!4421499 d!1339789))

(declare-fun d!1339793 () Bool)

(assert (=> d!1339793 (forall!9533 (toList!3451 (+!1048 lm!1616 (tuple2!49309 hash!366 newBucket!194))) lambda!153097)))

(declare-fun lt!1621566 () Unit!81417)

(declare-fun choose!27865 (ListLongMap!2101 Int (_ BitVec 64) List!49662) Unit!81417)

(assert (=> d!1339793 (= lt!1621566 (choose!27865 lm!1616 lambda!153097 hash!366 newBucket!194))))

(declare-fun e!2753100 () Bool)

(assert (=> d!1339793 e!2753100))

(declare-fun res!1827438 () Bool)

(assert (=> d!1339793 (=> (not res!1827438) (not e!2753100))))

(assert (=> d!1339793 (= res!1827438 (forall!9533 (toList!3451 lm!1616) lambda!153097))))

(assert (=> d!1339793 (= (addValidProp!376 lm!1616 lambda!153097 hash!366 newBucket!194) lt!1621566)))

(declare-fun b!4421604 () Bool)

(assert (=> b!4421604 (= e!2753100 (dynLambda!20831 lambda!153097 (tuple2!49309 hash!366 newBucket!194)))))

(assert (= (and d!1339793 res!1827438) b!4421604))

(declare-fun b_lambda!142649 () Bool)

(assert (=> (not b_lambda!142649) (not b!4421604)))

(declare-fun m!5099457 () Bool)

(assert (=> d!1339793 m!5099457))

(declare-fun m!5099459 () Bool)

(assert (=> d!1339793 m!5099459))

(declare-fun m!5099461 () Bool)

(assert (=> d!1339793 m!5099461))

(assert (=> d!1339793 m!5099285))

(declare-fun m!5099463 () Bool)

(assert (=> b!4421604 m!5099463))

(assert (=> b!4421499 d!1339793))

(declare-fun bm!307630 () Bool)

(declare-fun call!307635 () Bool)

(declare-datatypes ((List!49666 0))(
  ( (Nil!49542) (Cons!49542 (h!55218 K!10903) (t!356604 List!49666)) )
))
(declare-fun e!2753115 () List!49666)

(declare-fun contains!12024 (List!49666 K!10903) Bool)

(assert (=> bm!307630 (= call!307635 (contains!12024 e!2753115 key!3717))))

(declare-fun c!752648 () Bool)

(declare-fun c!752649 () Bool)

(assert (=> bm!307630 (= c!752648 c!752649)))

(declare-fun b!4421623 () Bool)

(declare-fun keys!16902 (ListMap!2695) List!49666)

(assert (=> b!4421623 (= e!2753115 (keys!16902 (extractMap!793 (toList!3451 lm!1616))))))

(declare-fun b!4421624 () Bool)

(declare-fun getKeysList!242 (List!49662) List!49666)

(assert (=> b!4421624 (= e!2753115 (getKeysList!242 (toList!3452 (extractMap!793 (toList!3451 lm!1616)))))))

(declare-fun b!4421625 () Bool)

(declare-fun e!2753118 () Unit!81417)

(declare-fun Unit!81426 () Unit!81417)

(assert (=> b!4421625 (= e!2753118 Unit!81426)))

(declare-fun b!4421626 () Bool)

(declare-fun e!2753116 () Unit!81417)

(assert (=> b!4421626 (= e!2753116 e!2753118)))

(declare-fun c!752647 () Bool)

(assert (=> b!4421626 (= c!752647 call!307635)))

(declare-fun d!1339799 () Bool)

(declare-fun e!2753113 () Bool)

(assert (=> d!1339799 e!2753113))

(declare-fun res!1827445 () Bool)

(assert (=> d!1339799 (=> res!1827445 e!2753113)))

(declare-fun e!2753114 () Bool)

(assert (=> d!1339799 (= res!1827445 e!2753114)))

(declare-fun res!1827447 () Bool)

(assert (=> d!1339799 (=> (not res!1827447) (not e!2753114))))

(declare-fun lt!1621586 () Bool)

(assert (=> d!1339799 (= res!1827447 (not lt!1621586))))

(declare-fun lt!1621590 () Bool)

(assert (=> d!1339799 (= lt!1621586 lt!1621590)))

(declare-fun lt!1621583 () Unit!81417)

(assert (=> d!1339799 (= lt!1621583 e!2753116)))

(assert (=> d!1339799 (= c!752649 lt!1621590)))

(declare-fun containsKey!1082 (List!49662 K!10903) Bool)

(assert (=> d!1339799 (= lt!1621590 (containsKey!1082 (toList!3452 (extractMap!793 (toList!3451 lm!1616))) key!3717))))

(assert (=> d!1339799 (= (contains!12020 (extractMap!793 (toList!3451 lm!1616)) key!3717) lt!1621586)))

(declare-fun b!4421627 () Bool)

(assert (=> b!4421627 (= e!2753114 (not (contains!12024 (keys!16902 (extractMap!793 (toList!3451 lm!1616))) key!3717)))))

(declare-fun b!4421628 () Bool)

(declare-fun lt!1621588 () Unit!81417)

(assert (=> b!4421628 (= e!2753116 lt!1621588)))

(declare-fun lt!1621587 () Unit!81417)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!600 (List!49662 K!10903) Unit!81417)

(assert (=> b!4421628 (= lt!1621587 (lemmaContainsKeyImpliesGetValueByKeyDefined!600 (toList!3452 (extractMap!793 (toList!3451 lm!1616))) key!3717))))

(declare-datatypes ((Option!10704 0))(
  ( (None!10703) (Some!10703 (v!43879 V!11149)) )
))
(declare-fun isDefined!7997 (Option!10704) Bool)

(declare-fun getValueByKey!690 (List!49662 K!10903) Option!10704)

(assert (=> b!4421628 (isDefined!7997 (getValueByKey!690 (toList!3452 (extractMap!793 (toList!3451 lm!1616))) key!3717))))

(declare-fun lt!1621589 () Unit!81417)

(assert (=> b!4421628 (= lt!1621589 lt!1621587)))

(declare-fun lemmaInListThenGetKeysListContains!239 (List!49662 K!10903) Unit!81417)

(assert (=> b!4421628 (= lt!1621588 (lemmaInListThenGetKeysListContains!239 (toList!3452 (extractMap!793 (toList!3451 lm!1616))) key!3717))))

(assert (=> b!4421628 call!307635))

(declare-fun b!4421629 () Bool)

(assert (=> b!4421629 false))

(declare-fun lt!1621585 () Unit!81417)

(declare-fun lt!1621584 () Unit!81417)

(assert (=> b!4421629 (= lt!1621585 lt!1621584)))

(assert (=> b!4421629 (containsKey!1082 (toList!3452 (extractMap!793 (toList!3451 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!240 (List!49662 K!10903) Unit!81417)

(assert (=> b!4421629 (= lt!1621584 (lemmaInGetKeysListThenContainsKey!240 (toList!3452 (extractMap!793 (toList!3451 lm!1616))) key!3717))))

(declare-fun Unit!81427 () Unit!81417)

(assert (=> b!4421629 (= e!2753118 Unit!81427)))

(declare-fun b!4421630 () Bool)

(declare-fun e!2753117 () Bool)

(assert (=> b!4421630 (= e!2753117 (contains!12024 (keys!16902 (extractMap!793 (toList!3451 lm!1616))) key!3717))))

(declare-fun b!4421631 () Bool)

(assert (=> b!4421631 (= e!2753113 e!2753117)))

(declare-fun res!1827446 () Bool)

(assert (=> b!4421631 (=> (not res!1827446) (not e!2753117))))

(assert (=> b!4421631 (= res!1827446 (isDefined!7997 (getValueByKey!690 (toList!3452 (extractMap!793 (toList!3451 lm!1616))) key!3717)))))

(assert (= (and d!1339799 c!752649) b!4421628))

(assert (= (and d!1339799 (not c!752649)) b!4421626))

(assert (= (and b!4421626 c!752647) b!4421629))

(assert (= (and b!4421626 (not c!752647)) b!4421625))

(assert (= (or b!4421628 b!4421626) bm!307630))

(assert (= (and bm!307630 c!752648) b!4421624))

(assert (= (and bm!307630 (not c!752648)) b!4421623))

(assert (= (and d!1339799 res!1827447) b!4421627))

(assert (= (and d!1339799 (not res!1827445)) b!4421631))

(assert (= (and b!4421631 res!1827446) b!4421630))

(declare-fun m!5099465 () Bool)

(assert (=> b!4421631 m!5099465))

(assert (=> b!4421631 m!5099465))

(declare-fun m!5099467 () Bool)

(assert (=> b!4421631 m!5099467))

(assert (=> b!4421623 m!5099329))

(declare-fun m!5099469 () Bool)

(assert (=> b!4421623 m!5099469))

(declare-fun m!5099471 () Bool)

(assert (=> bm!307630 m!5099471))

(assert (=> b!4421627 m!5099329))

(assert (=> b!4421627 m!5099469))

(assert (=> b!4421627 m!5099469))

(declare-fun m!5099473 () Bool)

(assert (=> b!4421627 m!5099473))

(assert (=> b!4421630 m!5099329))

(assert (=> b!4421630 m!5099469))

(assert (=> b!4421630 m!5099469))

(assert (=> b!4421630 m!5099473))

(declare-fun m!5099475 () Bool)

(assert (=> b!4421624 m!5099475))

(declare-fun m!5099477 () Bool)

(assert (=> b!4421629 m!5099477))

(declare-fun m!5099479 () Bool)

(assert (=> b!4421629 m!5099479))

(assert (=> d!1339799 m!5099477))

(declare-fun m!5099481 () Bool)

(assert (=> b!4421628 m!5099481))

(assert (=> b!4421628 m!5099465))

(assert (=> b!4421628 m!5099465))

(assert (=> b!4421628 m!5099467))

(declare-fun m!5099483 () Bool)

(assert (=> b!4421628 m!5099483))

(assert (=> b!4421500 d!1339799))

(declare-fun bs!755062 () Bool)

(declare-fun d!1339801 () Bool)

(assert (= bs!755062 (and d!1339801 start!430994)))

(declare-fun lambda!153120 () Int)

(assert (=> bs!755062 (= lambda!153120 lambda!153097)))

(declare-fun bs!755063 () Bool)

(assert (= bs!755063 (and d!1339801 d!1339773)))

(assert (=> bs!755063 (= lambda!153120 lambda!153111)))

(declare-fun bs!755064 () Bool)

(assert (= bs!755064 (and d!1339801 d!1339779)))

(assert (=> bs!755064 (not (= lambda!153120 lambda!153114))))

(declare-fun lt!1621596 () ListMap!2695)

(declare-fun invariantList!794 (List!49662) Bool)

(assert (=> d!1339801 (invariantList!794 (toList!3452 lt!1621596))))

(declare-fun e!2753121 () ListMap!2695)

(assert (=> d!1339801 (= lt!1621596 e!2753121)))

(declare-fun c!752652 () Bool)

(assert (=> d!1339801 (= c!752652 (is-Cons!49539 (toList!3451 lm!1616)))))

(assert (=> d!1339801 (forall!9533 (toList!3451 lm!1616) lambda!153120)))

(assert (=> d!1339801 (= (extractMap!793 (toList!3451 lm!1616)) lt!1621596)))

(declare-fun b!4421636 () Bool)

(declare-fun addToMapMapFromBucket!369 (List!49662 ListMap!2695) ListMap!2695)

(assert (=> b!4421636 (= e!2753121 (addToMapMapFromBucket!369 (_2!27948 (h!55214 (toList!3451 lm!1616))) (extractMap!793 (t!356601 (toList!3451 lm!1616)))))))

(declare-fun b!4421637 () Bool)

(assert (=> b!4421637 (= e!2753121 (ListMap!2696 Nil!49538))))

(assert (= (and d!1339801 c!752652) b!4421636))

(assert (= (and d!1339801 (not c!752652)) b!4421637))

(declare-fun m!5099489 () Bool)

(assert (=> d!1339801 m!5099489))

(declare-fun m!5099491 () Bool)

(assert (=> d!1339801 m!5099491))

(declare-fun m!5099493 () Bool)

(assert (=> b!4421636 m!5099493))

(assert (=> b!4421636 m!5099493))

(declare-fun m!5099495 () Bool)

(assert (=> b!4421636 m!5099495))

(assert (=> b!4421500 d!1339801))

(declare-fun d!1339805 () Bool)

(assert (=> d!1339805 true))

(assert (=> d!1339805 true))

(declare-fun lambda!153123 () Int)

(declare-fun forall!9535 (List!49662 Int) Bool)

(assert (=> d!1339805 (= (allKeysSameHash!692 newBucket!194 hash!366 hashF!1220) (forall!9535 newBucket!194 lambda!153123))))

(declare-fun bs!755065 () Bool)

(assert (= bs!755065 d!1339805))

(declare-fun m!5099497 () Bool)

(assert (=> bs!755065 m!5099497))

(assert (=> b!4421490 d!1339805))

(declare-fun d!1339807 () Bool)

(declare-fun e!2753130 () Bool)

(assert (=> d!1339807 e!2753130))

(declare-fun res!1827456 () Bool)

(assert (=> d!1339807 (=> (not res!1827456) (not e!2753130))))

(declare-fun lt!1621619 () ListMap!2695)

(assert (=> d!1339807 (= res!1827456 (contains!12020 lt!1621619 (_1!27947 (tuple2!49307 key!3717 newValue!93))))))

(declare-fun lt!1621620 () List!49662)

(assert (=> d!1339807 (= lt!1621619 (ListMap!2696 lt!1621620))))

(declare-fun lt!1621618 () Unit!81417)

(declare-fun lt!1621617 () Unit!81417)

(assert (=> d!1339807 (= lt!1621618 lt!1621617)))

(assert (=> d!1339807 (= (getValueByKey!690 lt!1621620 (_1!27947 (tuple2!49307 key!3717 newValue!93))) (Some!10703 (_2!27947 (tuple2!49307 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!425 (List!49662 K!10903 V!11149) Unit!81417)

(assert (=> d!1339807 (= lt!1621617 (lemmaContainsTupThenGetReturnValue!425 lt!1621620 (_1!27947 (tuple2!49307 key!3717 newValue!93)) (_2!27947 (tuple2!49307 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!184 (List!49662 K!10903 V!11149) List!49662)

(assert (=> d!1339807 (= lt!1621620 (insertNoDuplicatedKeys!184 (toList!3452 (extractMap!793 (toList!3451 lt!1621496))) (_1!27947 (tuple2!49307 key!3717 newValue!93)) (_2!27947 (tuple2!49307 key!3717 newValue!93))))))

(assert (=> d!1339807 (= (+!1049 (extractMap!793 (toList!3451 lt!1621496)) (tuple2!49307 key!3717 newValue!93)) lt!1621619)))

(declare-fun b!4421655 () Bool)

(declare-fun res!1827455 () Bool)

(assert (=> b!4421655 (=> (not res!1827455) (not e!2753130))))

(assert (=> b!4421655 (= res!1827455 (= (getValueByKey!690 (toList!3452 lt!1621619) (_1!27947 (tuple2!49307 key!3717 newValue!93))) (Some!10703 (_2!27947 (tuple2!49307 key!3717 newValue!93)))))))

(declare-fun b!4421656 () Bool)

(declare-fun contains!12025 (List!49662 tuple2!49306) Bool)

(assert (=> b!4421656 (= e!2753130 (contains!12025 (toList!3452 lt!1621619) (tuple2!49307 key!3717 newValue!93)))))

(assert (= (and d!1339807 res!1827456) b!4421655))

(assert (= (and b!4421655 res!1827455) b!4421656))

(declare-fun m!5099507 () Bool)

(assert (=> d!1339807 m!5099507))

(declare-fun m!5099509 () Bool)

(assert (=> d!1339807 m!5099509))

(declare-fun m!5099511 () Bool)

(assert (=> d!1339807 m!5099511))

(declare-fun m!5099513 () Bool)

(assert (=> d!1339807 m!5099513))

(declare-fun m!5099515 () Bool)

(assert (=> b!4421655 m!5099515))

(declare-fun m!5099517 () Bool)

(assert (=> b!4421656 m!5099517))

(assert (=> b!4421502 d!1339807))

(declare-fun d!1339811 () Bool)

(declare-fun e!2753131 () Bool)

(assert (=> d!1339811 e!2753131))

(declare-fun res!1827458 () Bool)

(assert (=> d!1339811 (=> (not res!1827458) (not e!2753131))))

(declare-fun lt!1621624 () ListLongMap!2101)

(assert (=> d!1339811 (= res!1827458 (contains!12019 lt!1621624 (_1!27948 lt!1621491)))))

(declare-fun lt!1621623 () List!49663)

(assert (=> d!1339811 (= lt!1621624 (ListLongMap!2102 lt!1621623))))

(declare-fun lt!1621621 () Unit!81417)

(declare-fun lt!1621622 () Unit!81417)

(assert (=> d!1339811 (= lt!1621621 lt!1621622)))

(assert (=> d!1339811 (= (getValueByKey!689 lt!1621623 (_1!27948 lt!1621491)) (Some!10702 (_2!27948 lt!1621491)))))

(assert (=> d!1339811 (= lt!1621622 (lemmaContainsTupThenGetReturnValue!424 lt!1621623 (_1!27948 lt!1621491) (_2!27948 lt!1621491)))))

(assert (=> d!1339811 (= lt!1621623 (insertStrictlySorted!249 (toList!3451 lt!1621496) (_1!27948 lt!1621491) (_2!27948 lt!1621491)))))

(assert (=> d!1339811 (= (+!1048 lt!1621496 lt!1621491) lt!1621624)))

(declare-fun b!4421657 () Bool)

(declare-fun res!1827457 () Bool)

(assert (=> b!4421657 (=> (not res!1827457) (not e!2753131))))

(assert (=> b!4421657 (= res!1827457 (= (getValueByKey!689 (toList!3451 lt!1621624) (_1!27948 lt!1621491)) (Some!10702 (_2!27948 lt!1621491))))))

(declare-fun b!4421658 () Bool)

(assert (=> b!4421658 (= e!2753131 (contains!12023 (toList!3451 lt!1621624) lt!1621491))))

(assert (= (and d!1339811 res!1827458) b!4421657))

(assert (= (and b!4421657 res!1827457) b!4421658))

(declare-fun m!5099519 () Bool)

(assert (=> d!1339811 m!5099519))

(declare-fun m!5099521 () Bool)

(assert (=> d!1339811 m!5099521))

(declare-fun m!5099523 () Bool)

(assert (=> d!1339811 m!5099523))

(declare-fun m!5099525 () Bool)

(assert (=> d!1339811 m!5099525))

(declare-fun m!5099527 () Bool)

(assert (=> b!4421657 m!5099527))

(declare-fun m!5099529 () Bool)

(assert (=> b!4421658 m!5099529))

(assert (=> b!4421502 d!1339811))

(declare-fun bs!755071 () Bool)

(declare-fun d!1339813 () Bool)

(assert (= bs!755071 (and d!1339813 start!430994)))

(declare-fun lambda!153129 () Int)

(assert (=> bs!755071 (= lambda!153129 lambda!153097)))

(declare-fun bs!755072 () Bool)

(assert (= bs!755072 (and d!1339813 d!1339773)))

(assert (=> bs!755072 (= lambda!153129 lambda!153111)))

(declare-fun bs!755073 () Bool)

(assert (= bs!755073 (and d!1339813 d!1339779)))

(assert (=> bs!755073 (not (= lambda!153129 lambda!153114))))

(declare-fun bs!755074 () Bool)

(assert (= bs!755074 (and d!1339813 d!1339801)))

(assert (=> bs!755074 (= lambda!153129 lambda!153120)))

(assert (=> d!1339813 (eq!390 (extractMap!793 (toList!3451 (+!1048 lt!1621496 (tuple2!49309 hash!366 newBucket!194)))) (+!1049 (extractMap!793 (toList!3451 lt!1621496)) (tuple2!49307 key!3717 newValue!93)))))

(declare-fun lt!1621627 () Unit!81417)

(declare-fun choose!27866 (ListLongMap!2101 (_ BitVec 64) List!49662 K!10903 V!11149 Hashable!5126) Unit!81417)

(assert (=> d!1339813 (= lt!1621627 (choose!27866 lt!1621496 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1339813 (forall!9533 (toList!3451 lt!1621496) lambda!153129)))

(assert (=> d!1339813 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!106 lt!1621496 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1621627)))

(declare-fun bs!755075 () Bool)

(assert (= bs!755075 d!1339813))

(declare-fun m!5099541 () Bool)

(assert (=> bs!755075 m!5099541))

(assert (=> bs!755075 m!5099299))

(assert (=> bs!755075 m!5099301))

(declare-fun m!5099543 () Bool)

(assert (=> bs!755075 m!5099543))

(assert (=> bs!755075 m!5099541))

(assert (=> bs!755075 m!5099301))

(declare-fun m!5099545 () Bool)

(assert (=> bs!755075 m!5099545))

(assert (=> bs!755075 m!5099299))

(declare-fun m!5099547 () Bool)

(assert (=> bs!755075 m!5099547))

(declare-fun m!5099549 () Bool)

(assert (=> bs!755075 m!5099549))

(assert (=> b!4421502 d!1339813))

(declare-fun d!1339823 () Bool)

(declare-fun content!7939 (List!49662) (Set tuple2!49306))

(assert (=> d!1339823 (= (eq!390 (extractMap!793 (toList!3451 (+!1048 lt!1621496 lt!1621491))) (+!1049 (extractMap!793 (toList!3451 lt!1621496)) (tuple2!49307 key!3717 newValue!93))) (= (content!7939 (toList!3452 (extractMap!793 (toList!3451 (+!1048 lt!1621496 lt!1621491))))) (content!7939 (toList!3452 (+!1049 (extractMap!793 (toList!3451 lt!1621496)) (tuple2!49307 key!3717 newValue!93))))))))

(declare-fun bs!755076 () Bool)

(assert (= bs!755076 d!1339823))

(declare-fun m!5099551 () Bool)

(assert (=> bs!755076 m!5099551))

(declare-fun m!5099553 () Bool)

(assert (=> bs!755076 m!5099553))

(assert (=> b!4421502 d!1339823))

(declare-fun bs!755077 () Bool)

(declare-fun d!1339825 () Bool)

(assert (= bs!755077 (and d!1339825 d!1339801)))

(declare-fun lambda!153130 () Int)

(assert (=> bs!755077 (= lambda!153130 lambda!153120)))

(declare-fun bs!755078 () Bool)

(assert (= bs!755078 (and d!1339825 d!1339779)))

(assert (=> bs!755078 (not (= lambda!153130 lambda!153114))))

(declare-fun bs!755079 () Bool)

(assert (= bs!755079 (and d!1339825 start!430994)))

(assert (=> bs!755079 (= lambda!153130 lambda!153097)))

(declare-fun bs!755080 () Bool)

(assert (= bs!755080 (and d!1339825 d!1339813)))

(assert (=> bs!755080 (= lambda!153130 lambda!153129)))

(declare-fun bs!755081 () Bool)

(assert (= bs!755081 (and d!1339825 d!1339773)))

(assert (=> bs!755081 (= lambda!153130 lambda!153111)))

(declare-fun lt!1621628 () ListMap!2695)

(assert (=> d!1339825 (invariantList!794 (toList!3452 lt!1621628))))

(declare-fun e!2753134 () ListMap!2695)

(assert (=> d!1339825 (= lt!1621628 e!2753134)))

(declare-fun c!752656 () Bool)

(assert (=> d!1339825 (= c!752656 (is-Cons!49539 (toList!3451 lt!1621496)))))

(assert (=> d!1339825 (forall!9533 (toList!3451 lt!1621496) lambda!153130)))

(assert (=> d!1339825 (= (extractMap!793 (toList!3451 lt!1621496)) lt!1621628)))

(declare-fun b!4421663 () Bool)

(assert (=> b!4421663 (= e!2753134 (addToMapMapFromBucket!369 (_2!27948 (h!55214 (toList!3451 lt!1621496))) (extractMap!793 (t!356601 (toList!3451 lt!1621496)))))))

(declare-fun b!4421664 () Bool)

(assert (=> b!4421664 (= e!2753134 (ListMap!2696 Nil!49538))))

(assert (= (and d!1339825 c!752656) b!4421663))

(assert (= (and d!1339825 (not c!752656)) b!4421664))

(declare-fun m!5099555 () Bool)

(assert (=> d!1339825 m!5099555))

(declare-fun m!5099557 () Bool)

(assert (=> d!1339825 m!5099557))

(declare-fun m!5099559 () Bool)

(assert (=> b!4421663 m!5099559))

(assert (=> b!4421663 m!5099559))

(declare-fun m!5099561 () Bool)

(assert (=> b!4421663 m!5099561))

(assert (=> b!4421502 d!1339825))

(declare-fun d!1339827 () Bool)

(declare-fun head!9191 (List!49663) tuple2!49308)

(assert (=> d!1339827 (= (head!9189 lm!1616) (head!9191 (toList!3451 lm!1616)))))

(declare-fun bs!755082 () Bool)

(assert (= bs!755082 d!1339827))

(declare-fun m!5099563 () Bool)

(assert (=> bs!755082 m!5099563))

(assert (=> b!4421502 d!1339827))

(declare-fun bs!755083 () Bool)

(declare-fun d!1339829 () Bool)

(assert (= bs!755083 (and d!1339829 d!1339801)))

(declare-fun lambda!153131 () Int)

(assert (=> bs!755083 (= lambda!153131 lambda!153120)))

(declare-fun bs!755084 () Bool)

(assert (= bs!755084 (and d!1339829 d!1339779)))

(assert (=> bs!755084 (not (= lambda!153131 lambda!153114))))

(declare-fun bs!755085 () Bool)

(assert (= bs!755085 (and d!1339829 start!430994)))

(assert (=> bs!755085 (= lambda!153131 lambda!153097)))

(declare-fun bs!755086 () Bool)

(assert (= bs!755086 (and d!1339829 d!1339825)))

(assert (=> bs!755086 (= lambda!153131 lambda!153130)))

(declare-fun bs!755087 () Bool)

(assert (= bs!755087 (and d!1339829 d!1339813)))

(assert (=> bs!755087 (= lambda!153131 lambda!153129)))

(declare-fun bs!755088 () Bool)

(assert (= bs!755088 (and d!1339829 d!1339773)))

(assert (=> bs!755088 (= lambda!153131 lambda!153111)))

(declare-fun lt!1621629 () ListMap!2695)

(assert (=> d!1339829 (invariantList!794 (toList!3452 lt!1621629))))

(declare-fun e!2753135 () ListMap!2695)

(assert (=> d!1339829 (= lt!1621629 e!2753135)))

(declare-fun c!752657 () Bool)

(assert (=> d!1339829 (= c!752657 (is-Cons!49539 (toList!3451 (+!1048 lt!1621496 lt!1621491))))))

(assert (=> d!1339829 (forall!9533 (toList!3451 (+!1048 lt!1621496 lt!1621491)) lambda!153131)))

(assert (=> d!1339829 (= (extractMap!793 (toList!3451 (+!1048 lt!1621496 lt!1621491))) lt!1621629)))

(declare-fun b!4421665 () Bool)

(assert (=> b!4421665 (= e!2753135 (addToMapMapFromBucket!369 (_2!27948 (h!55214 (toList!3451 (+!1048 lt!1621496 lt!1621491)))) (extractMap!793 (t!356601 (toList!3451 (+!1048 lt!1621496 lt!1621491))))))))

(declare-fun b!4421666 () Bool)

(assert (=> b!4421666 (= e!2753135 (ListMap!2696 Nil!49538))))

(assert (= (and d!1339829 c!752657) b!4421665))

(assert (= (and d!1339829 (not c!752657)) b!4421666))

(declare-fun m!5099565 () Bool)

(assert (=> d!1339829 m!5099565))

(declare-fun m!5099567 () Bool)

(assert (=> d!1339829 m!5099567))

(declare-fun m!5099569 () Bool)

(assert (=> b!4421665 m!5099569))

(assert (=> b!4421665 m!5099569))

(declare-fun m!5099571 () Bool)

(assert (=> b!4421665 m!5099571))

(assert (=> b!4421502 d!1339829))

(declare-fun d!1339831 () Bool)

(assert (=> d!1339831 (= (tail!7236 lm!1616) (ListLongMap!2102 (tail!7237 (toList!3451 lm!1616))))))

(declare-fun bs!755089 () Bool)

(assert (= bs!755089 d!1339831))

(assert (=> bs!755089 m!5099295))

(assert (=> b!4421502 d!1339831))

(declare-fun bs!755090 () Bool)

(declare-fun d!1339833 () Bool)

(assert (= bs!755090 (and d!1339833 d!1339801)))

(declare-fun lambda!153132 () Int)

(assert (=> bs!755090 (= lambda!153132 lambda!153120)))

(declare-fun bs!755091 () Bool)

(assert (= bs!755091 (and d!1339833 d!1339829)))

(assert (=> bs!755091 (= lambda!153132 lambda!153131)))

(declare-fun bs!755092 () Bool)

(assert (= bs!755092 (and d!1339833 d!1339779)))

(assert (=> bs!755092 (not (= lambda!153132 lambda!153114))))

(declare-fun bs!755093 () Bool)

(assert (= bs!755093 (and d!1339833 start!430994)))

(assert (=> bs!755093 (= lambda!153132 lambda!153097)))

(declare-fun bs!755094 () Bool)

(assert (= bs!755094 (and d!1339833 d!1339825)))

(assert (=> bs!755094 (= lambda!153132 lambda!153130)))

(declare-fun bs!755095 () Bool)

(assert (= bs!755095 (and d!1339833 d!1339813)))

(assert (=> bs!755095 (= lambda!153132 lambda!153129)))

(declare-fun bs!755096 () Bool)

(assert (= bs!755096 (and d!1339833 d!1339773)))

(assert (=> bs!755096 (= lambda!153132 lambda!153111)))

(declare-fun lt!1621630 () ListMap!2695)

(assert (=> d!1339833 (invariantList!794 (toList!3452 lt!1621630))))

(declare-fun e!2753136 () ListMap!2695)

(assert (=> d!1339833 (= lt!1621630 e!2753136)))

(declare-fun c!752658 () Bool)

(assert (=> d!1339833 (= c!752658 (is-Cons!49539 (tail!7237 (toList!3451 lm!1616))))))

(assert (=> d!1339833 (forall!9533 (tail!7237 (toList!3451 lm!1616)) lambda!153132)))

(assert (=> d!1339833 (= (extractMap!793 (tail!7237 (toList!3451 lm!1616))) lt!1621630)))

(declare-fun b!4421667 () Bool)

(assert (=> b!4421667 (= e!2753136 (addToMapMapFromBucket!369 (_2!27948 (h!55214 (tail!7237 (toList!3451 lm!1616)))) (extractMap!793 (t!356601 (tail!7237 (toList!3451 lm!1616))))))))

(declare-fun b!4421668 () Bool)

(assert (=> b!4421668 (= e!2753136 (ListMap!2696 Nil!49538))))

(assert (= (and d!1339833 c!752658) b!4421667))

(assert (= (and d!1339833 (not c!752658)) b!4421668))

(declare-fun m!5099573 () Bool)

(assert (=> d!1339833 m!5099573))

(assert (=> d!1339833 m!5099295))

(declare-fun m!5099575 () Bool)

(assert (=> d!1339833 m!5099575))

(declare-fun m!5099577 () Bool)

(assert (=> b!4421667 m!5099577))

(assert (=> b!4421667 m!5099577))

(declare-fun m!5099579 () Bool)

(assert (=> b!4421667 m!5099579))

(assert (=> b!4421502 d!1339833))

(declare-fun d!1339835 () Bool)

(assert (=> d!1339835 (= (tail!7237 (toList!3451 lm!1616)) (t!356601 (toList!3451 lm!1616)))))

(assert (=> b!4421502 d!1339835))

(declare-fun bm!307631 () Bool)

(declare-fun call!307636 () Bool)

(declare-fun e!2753139 () List!49666)

(assert (=> bm!307631 (= call!307636 (contains!12024 e!2753139 key!3717))))

(declare-fun c!752660 () Bool)

(declare-fun c!752661 () Bool)

(assert (=> bm!307631 (= c!752660 c!752661)))

(declare-fun b!4421669 () Bool)

(assert (=> b!4421669 (= e!2753139 (keys!16902 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))))))

(declare-fun b!4421670 () Bool)

(assert (=> b!4421670 (= e!2753139 (getKeysList!242 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616))))))))

(declare-fun b!4421671 () Bool)

(declare-fun e!2753142 () Unit!81417)

(declare-fun Unit!81428 () Unit!81417)

(assert (=> b!4421671 (= e!2753142 Unit!81428)))

(declare-fun b!4421672 () Bool)

(declare-fun e!2753140 () Unit!81417)

(assert (=> b!4421672 (= e!2753140 e!2753142)))

(declare-fun c!752659 () Bool)

(assert (=> b!4421672 (= c!752659 call!307636)))

(declare-fun d!1339837 () Bool)

(declare-fun e!2753137 () Bool)

(assert (=> d!1339837 e!2753137))

(declare-fun res!1827461 () Bool)

(assert (=> d!1339837 (=> res!1827461 e!2753137)))

(declare-fun e!2753138 () Bool)

(assert (=> d!1339837 (= res!1827461 e!2753138)))

(declare-fun res!1827463 () Bool)

(assert (=> d!1339837 (=> (not res!1827463) (not e!2753138))))

(declare-fun lt!1621634 () Bool)

(assert (=> d!1339837 (= res!1827463 (not lt!1621634))))

(declare-fun lt!1621638 () Bool)

(assert (=> d!1339837 (= lt!1621634 lt!1621638)))

(declare-fun lt!1621631 () Unit!81417)

(assert (=> d!1339837 (= lt!1621631 e!2753140)))

(assert (=> d!1339837 (= c!752661 lt!1621638)))

(assert (=> d!1339837 (= lt!1621638 (containsKey!1082 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717))))

(assert (=> d!1339837 (= (contains!12020 (extractMap!793 (tail!7237 (toList!3451 lm!1616))) key!3717) lt!1621634)))

(declare-fun b!4421673 () Bool)

(assert (=> b!4421673 (= e!2753138 (not (contains!12024 (keys!16902 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717)))))

(declare-fun b!4421674 () Bool)

(declare-fun lt!1621636 () Unit!81417)

(assert (=> b!4421674 (= e!2753140 lt!1621636)))

(declare-fun lt!1621635 () Unit!81417)

(assert (=> b!4421674 (= lt!1621635 (lemmaContainsKeyImpliesGetValueByKeyDefined!600 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717))))

(assert (=> b!4421674 (isDefined!7997 (getValueByKey!690 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717))))

(declare-fun lt!1621637 () Unit!81417)

(assert (=> b!4421674 (= lt!1621637 lt!1621635)))

(assert (=> b!4421674 (= lt!1621636 (lemmaInListThenGetKeysListContains!239 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717))))

(assert (=> b!4421674 call!307636))

(declare-fun b!4421675 () Bool)

(assert (=> b!4421675 false))

(declare-fun lt!1621633 () Unit!81417)

(declare-fun lt!1621632 () Unit!81417)

(assert (=> b!4421675 (= lt!1621633 lt!1621632)))

(assert (=> b!4421675 (containsKey!1082 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717)))

(assert (=> b!4421675 (= lt!1621632 (lemmaInGetKeysListThenContainsKey!240 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717))))

(declare-fun Unit!81429 () Unit!81417)

(assert (=> b!4421675 (= e!2753142 Unit!81429)))

(declare-fun b!4421676 () Bool)

(declare-fun e!2753141 () Bool)

(assert (=> b!4421676 (= e!2753141 (contains!12024 (keys!16902 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717))))

(declare-fun b!4421677 () Bool)

(assert (=> b!4421677 (= e!2753137 e!2753141)))

(declare-fun res!1827462 () Bool)

(assert (=> b!4421677 (=> (not res!1827462) (not e!2753141))))

(assert (=> b!4421677 (= res!1827462 (isDefined!7997 (getValueByKey!690 (toList!3452 (extractMap!793 (tail!7237 (toList!3451 lm!1616)))) key!3717)))))

(assert (= (and d!1339837 c!752661) b!4421674))

(assert (= (and d!1339837 (not c!752661)) b!4421672))

(assert (= (and b!4421672 c!752659) b!4421675))

(assert (= (and b!4421672 (not c!752659)) b!4421671))

(assert (= (or b!4421674 b!4421672) bm!307631))

(assert (= (and bm!307631 c!752660) b!4421670))

(assert (= (and bm!307631 (not c!752660)) b!4421669))

(assert (= (and d!1339837 res!1827463) b!4421673))

(assert (= (and d!1339837 (not res!1827461)) b!4421677))

(assert (= (and b!4421677 res!1827462) b!4421676))

(declare-fun m!5099581 () Bool)

(assert (=> b!4421677 m!5099581))

(assert (=> b!4421677 m!5099581))

(declare-fun m!5099583 () Bool)

(assert (=> b!4421677 m!5099583))

(assert (=> b!4421669 m!5099297))

(declare-fun m!5099585 () Bool)

(assert (=> b!4421669 m!5099585))

(declare-fun m!5099587 () Bool)

(assert (=> bm!307631 m!5099587))

(assert (=> b!4421673 m!5099297))

(assert (=> b!4421673 m!5099585))

(assert (=> b!4421673 m!5099585))

(declare-fun m!5099589 () Bool)

(assert (=> b!4421673 m!5099589))

(assert (=> b!4421676 m!5099297))

(assert (=> b!4421676 m!5099585))

(assert (=> b!4421676 m!5099585))

(assert (=> b!4421676 m!5099589))

(declare-fun m!5099591 () Bool)

(assert (=> b!4421670 m!5099591))

(declare-fun m!5099593 () Bool)

(assert (=> b!4421675 m!5099593))

(declare-fun m!5099595 () Bool)

(assert (=> b!4421675 m!5099595))

(assert (=> d!1339837 m!5099593))

(declare-fun m!5099597 () Bool)

(assert (=> b!4421674 m!5099597))

(assert (=> b!4421674 m!5099581))

(assert (=> b!4421674 m!5099581))

(assert (=> b!4421674 m!5099583))

(declare-fun m!5099599 () Bool)

(assert (=> b!4421674 m!5099599))

(assert (=> b!4421502 d!1339837))

(assert (=> b!4421491 d!1339783))

(declare-fun d!1339839 () Bool)

(declare-fun res!1827468 () Bool)

(declare-fun e!2753147 () Bool)

(assert (=> d!1339839 (=> res!1827468 e!2753147)))

(assert (=> d!1339839 (= res!1827468 (not (is-Cons!49538 newBucket!194)))))

(assert (=> d!1339839 (= (noDuplicateKeys!732 newBucket!194) e!2753147)))

(declare-fun b!4421682 () Bool)

(declare-fun e!2753148 () Bool)

(assert (=> b!4421682 (= e!2753147 e!2753148)))

(declare-fun res!1827469 () Bool)

(assert (=> b!4421682 (=> (not res!1827469) (not e!2753148))))

(declare-fun containsKey!1083 (List!49662 K!10903) Bool)

(assert (=> b!4421682 (= res!1827469 (not (containsKey!1083 (t!356600 newBucket!194) (_1!27947 (h!55213 newBucket!194)))))))

(declare-fun b!4421683 () Bool)

(assert (=> b!4421683 (= e!2753148 (noDuplicateKeys!732 (t!356600 newBucket!194)))))

(assert (= (and d!1339839 (not res!1827468)) b!4421682))

(assert (= (and b!4421682 res!1827469) b!4421683))

(declare-fun m!5099601 () Bool)

(assert (=> b!4421682 m!5099601))

(declare-fun m!5099603 () Bool)

(assert (=> b!4421683 m!5099603))

(assert (=> b!4421503 d!1339839))

(declare-fun d!1339841 () Bool)

(declare-fun res!1827470 () Bool)

(declare-fun e!2753149 () Bool)

(assert (=> d!1339841 (=> res!1827470 e!2753149)))

(assert (=> d!1339841 (= res!1827470 (is-Nil!49539 (toList!3451 lt!1621496)))))

(assert (=> d!1339841 (= (forall!9533 (toList!3451 lt!1621496) lambda!153097) e!2753149)))

(declare-fun b!4421684 () Bool)

(declare-fun e!2753150 () Bool)

(assert (=> b!4421684 (= e!2753149 e!2753150)))

(declare-fun res!1827471 () Bool)

(assert (=> b!4421684 (=> (not res!1827471) (not e!2753150))))

(assert (=> b!4421684 (= res!1827471 (dynLambda!20831 lambda!153097 (h!55214 (toList!3451 lt!1621496))))))

(declare-fun b!4421685 () Bool)

(assert (=> b!4421685 (= e!2753150 (forall!9533 (t!356601 (toList!3451 lt!1621496)) lambda!153097))))

(assert (= (and d!1339841 (not res!1827470)) b!4421684))

(assert (= (and b!4421684 res!1827471) b!4421685))

(declare-fun b_lambda!142653 () Bool)

(assert (=> (not b_lambda!142653) (not b!4421684)))

(declare-fun m!5099605 () Bool)

(assert (=> b!4421684 m!5099605))

(declare-fun m!5099607 () Bool)

(assert (=> b!4421685 m!5099607))

(assert (=> b!4421493 d!1339841))

(declare-fun b!4421690 () Bool)

(declare-fun e!2753153 () Bool)

(declare-fun tp!1332995 () Bool)

(assert (=> b!4421690 (= e!2753153 (and tp_is_empty!26175 tp_is_empty!26173 tp!1332995))))

(assert (=> b!4421505 (= tp!1332985 e!2753153)))

(assert (= (and b!4421505 (is-Cons!49538 (t!356600 newBucket!194))) b!4421690))

(declare-fun b!4421695 () Bool)

(declare-fun e!2753156 () Bool)

(declare-fun tp!1333000 () Bool)

(declare-fun tp!1333001 () Bool)

(assert (=> b!4421695 (= e!2753156 (and tp!1333000 tp!1333001))))

(assert (=> b!4421497 (= tp!1332986 e!2753156)))

(assert (= (and b!4421497 (is-Cons!49539 (toList!3451 lm!1616))) b!4421695))

(declare-fun b_lambda!142655 () Bool)

(assert (= b_lambda!142643 (or start!430994 b_lambda!142655)))

(declare-fun bs!755097 () Bool)

(declare-fun d!1339843 () Bool)

(assert (= bs!755097 (and d!1339843 start!430994)))

(assert (=> bs!755097 (= (dynLambda!20831 lambda!153097 (h!55214 (toList!3451 lt!1621495))) (noDuplicateKeys!732 (_2!27948 (h!55214 (toList!3451 lt!1621495)))))))

(declare-fun m!5099609 () Bool)

(assert (=> bs!755097 m!5099609))

(assert (=> b!4421587 d!1339843))

(declare-fun b_lambda!142657 () Bool)

(assert (= b_lambda!142641 (or start!430994 b_lambda!142657)))

(declare-fun bs!755098 () Bool)

(declare-fun d!1339845 () Bool)

(assert (= bs!755098 (and d!1339845 start!430994)))

(assert (=> bs!755098 (= (dynLambda!20831 lambda!153097 (h!55214 (toList!3451 lm!1616))) (noDuplicateKeys!732 (_2!27948 (h!55214 (toList!3451 lm!1616)))))))

(declare-fun m!5099611 () Bool)

(assert (=> bs!755098 m!5099611))

(assert (=> b!4421585 d!1339845))

(declare-fun b_lambda!142659 () Bool)

(assert (= b_lambda!142649 (or start!430994 b_lambda!142659)))

(declare-fun bs!755099 () Bool)

(declare-fun d!1339847 () Bool)

(assert (= bs!755099 (and d!1339847 start!430994)))

(assert (=> bs!755099 (= (dynLambda!20831 lambda!153097 (tuple2!49309 hash!366 newBucket!194)) (noDuplicateKeys!732 (_2!27948 (tuple2!49309 hash!366 newBucket!194))))))

(declare-fun m!5099613 () Bool)

(assert (=> bs!755099 m!5099613))

(assert (=> b!4421604 d!1339847))

(declare-fun b_lambda!142661 () Bool)

(assert (= b_lambda!142653 (or start!430994 b_lambda!142661)))

(declare-fun bs!755100 () Bool)

(declare-fun d!1339849 () Bool)

(assert (= bs!755100 (and d!1339849 start!430994)))

(assert (=> bs!755100 (= (dynLambda!20831 lambda!153097 (h!55214 (toList!3451 lt!1621496))) (noDuplicateKeys!732 (_2!27948 (h!55214 (toList!3451 lt!1621496)))))))

(declare-fun m!5099615 () Bool)

(assert (=> bs!755100 m!5099615))

(assert (=> b!4421684 d!1339849))

(push 1)

(assert (not b!4421588))

(assert (not bs!755099))

(assert (not d!1339829))

(assert tp_is_empty!26173)

(assert (not bm!307630))

(assert (not d!1339769))

(assert (not b!4421669))

(assert (not b!4421572))

(assert (not d!1339793))

(assert (not d!1339833))

(assert (not b!4421624))

(assert (not d!1339813))

(assert (not b!4421683))

(assert (not d!1339805))

(assert (not b!4421674))

(assert (not b!4421629))

(assert (not d!1339801))

(assert (not b!4421570))

(assert (not b!4421675))

(assert (not d!1339779))

(assert (not b!4421667))

(assert (not b!4421597))

(assert (not bs!755100))

(assert (not b!4421631))

(assert (not b!4421658))

(assert (not b!4421656))

(assert (not b!4421682))

(assert tp_is_empty!26175)

(assert (not b!4421628))

(assert (not bs!755097))

(assert (not d!1339823))

(assert (not b_lambda!142655))

(assert (not d!1339827))

(assert (not b!4421690))

(assert (not d!1339785))

(assert (not d!1339831))

(assert (not b!4421695))

(assert (not b!4421685))

(assert (not bs!755098))

(assert (not b!4421623))

(assert (not d!1339837))

(assert (not d!1339781))

(assert (not bm!307631))

(assert (not b_lambda!142659))

(assert (not b_lambda!142657))

(assert (not b!4421636))

(assert (not b!4421598))

(assert (not b!4421670))

(assert (not b!4421586))

(assert (not b!4421657))

(assert (not d!1339789))

(assert (not b!4421627))

(assert (not b!4421663))

(assert (not b!4421677))

(assert (not b_lambda!142661))

(assert (not d!1339807))

(assert (not b!4421673))

(assert (not b!4421665))

(assert (not d!1339777))

(assert (not b!4421676))

(assert (not d!1339811))

(assert (not d!1339825))

(assert (not b!4421655))

(assert (not d!1339799))

(assert (not b!4421630))

(assert (not d!1339773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

