; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471498 () Bool)

(assert start!471498)

(declare-fun b!4672674 () Bool)

(declare-fun tp!1344136 () Bool)

(declare-fun tp_is_empty!30195 () Bool)

(declare-fun tp_is_empty!30193 () Bool)

(declare-fun e!2915929 () Bool)

(assert (=> b!4672674 (= e!2915929 (and tp_is_empty!30193 tp_is_empty!30195 tp!1344136))))

(declare-fun b!4672675 () Bool)

(declare-fun e!2915931 () Bool)

(declare-datatypes ((K!13463 0))(
  ( (K!13464 (val!19041 Int)) )
))
(declare-datatypes ((V!13709 0))(
  ( (V!13710 (val!19042 Int)) )
))
(declare-datatypes ((tuple2!53294 0))(
  ( (tuple2!53295 (_1!29941 K!13463) (_2!29941 V!13709)) )
))
(declare-datatypes ((List!52214 0))(
  ( (Nil!52090) (Cons!52090 (h!58274 tuple2!53294) (t!359352 List!52214)) )
))
(declare-datatypes ((tuple2!53296 0))(
  ( (tuple2!53297 (_1!29942 (_ BitVec 64)) (_2!29942 List!52214)) )
))
(declare-datatypes ((List!52215 0))(
  ( (Nil!52091) (Cons!52091 (h!58275 tuple2!53296) (t!359353 List!52215)) )
))
(declare-datatypes ((ListLongMap!3869 0))(
  ( (ListLongMap!3870 (toList!5339 List!52215)) )
))
(declare-fun lm!2023 () ListLongMap!3869)

(declare-fun lambda!202921 () Int)

(declare-fun forall!11132 (List!52215 Int) Bool)

(assert (=> b!4672675 (= e!2915931 (not (forall!11132 (t!359353 (toList!5339 lm!2023)) lambda!202921)))))

(declare-fun tail!8288 (ListLongMap!3869) ListLongMap!3869)

(assert (=> b!4672675 (= (t!359353 (toList!5339 lm!2023)) (toList!5339 (tail!8288 lm!2023)))))

(declare-fun b!4672676 () Bool)

(declare-fun res!1967374 () Bool)

(assert (=> b!4672676 (=> (not res!1967374) (not e!2915931))))

(assert (=> b!4672676 (= res!1967374 (is-Cons!52091 (toList!5339 lm!2023)))))

(declare-fun b!4672677 () Bool)

(declare-fun res!1967370 () Bool)

(assert (=> b!4672677 (=> (not res!1967370) (not e!2915931))))

(declare-fun key!4653 () K!13463)

(declare-fun newBucket!218 () List!52214)

(declare-fun oldBucket!34 () List!52214)

(declare-fun removePairForKey!1320 (List!52214 K!13463) List!52214)

(assert (=> b!4672677 (= res!1967370 (= (removePairForKey!1320 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1967371 () Bool)

(assert (=> start!471498 (=> (not res!1967371) (not e!2915931))))

(assert (=> start!471498 (= res!1967371 (forall!11132 (toList!5339 lm!2023) lambda!202921))))

(assert (=> start!471498 e!2915931))

(declare-fun e!2915928 () Bool)

(declare-fun inv!67338 (ListLongMap!3869) Bool)

(assert (=> start!471498 (and (inv!67338 lm!2023) e!2915928)))

(assert (=> start!471498 tp_is_empty!30193))

(assert (=> start!471498 e!2915929))

(assert (=> start!471498 true))

(declare-fun e!2915930 () Bool)

(assert (=> start!471498 e!2915930))

(declare-fun b!4672678 () Bool)

(declare-fun res!1967368 () Bool)

(assert (=> b!4672678 (=> (not res!1967368) (not e!2915931))))

(declare-datatypes ((ListMap!4703 0))(
  ( (ListMap!4704 (toList!5340 List!52214)) )
))
(declare-fun contains!15270 (ListMap!4703 K!13463) Bool)

(declare-fun extractMap!1751 (List!52215) ListMap!4703)

(assert (=> b!4672678 (= res!1967368 (contains!15270 (extractMap!1751 (toList!5339 lm!2023)) key!4653))))

(declare-fun b!4672679 () Bool)

(declare-fun res!1967376 () Bool)

(assert (=> b!4672679 (=> (not res!1967376) (not e!2915931))))

(declare-datatypes ((Hashable!6094 0))(
  ( (HashableExt!6093 (__x!31797 Int)) )
))
(declare-fun hashF!1323 () Hashable!6094)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1551 (List!52214 (_ BitVec 64) Hashable!6094) Bool)

(assert (=> b!4672679 (= res!1967376 (allKeysSameHash!1551 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4672680 () Bool)

(declare-fun tp!1344134 () Bool)

(assert (=> b!4672680 (= e!2915928 tp!1344134)))

(declare-fun b!4672681 () Bool)

(declare-fun res!1967373 () Bool)

(assert (=> b!4672681 (=> (not res!1967373) (not e!2915931))))

(declare-fun hash!3876 (Hashable!6094 K!13463) (_ BitVec 64))

(assert (=> b!4672681 (= res!1967373 (= (hash!3876 hashF!1323 key!4653) hash!405))))

(declare-fun b!4672682 () Bool)

(declare-fun tp!1344135 () Bool)

(assert (=> b!4672682 (= e!2915930 (and tp_is_empty!30193 tp_is_empty!30195 tp!1344135))))

(declare-fun b!4672683 () Bool)

(declare-fun res!1967372 () Bool)

(assert (=> b!4672683 (=> (not res!1967372) (not e!2915931))))

(declare-fun noDuplicateKeys!1725 (List!52214) Bool)

(assert (=> b!4672683 (= res!1967372 (noDuplicateKeys!1725 oldBucket!34))))

(declare-fun b!4672684 () Bool)

(declare-fun res!1967366 () Bool)

(assert (=> b!4672684 (=> (not res!1967366) (not e!2915931))))

(assert (=> b!4672684 (= res!1967366 (allKeysSameHash!1551 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4672685 () Bool)

(declare-fun res!1967375 () Bool)

(assert (=> b!4672685 (=> (not res!1967375) (not e!2915931))))

(declare-fun allKeysSameHashInMap!1639 (ListLongMap!3869 Hashable!6094) Bool)

(assert (=> b!4672685 (= res!1967375 (allKeysSameHashInMap!1639 lm!2023 hashF!1323))))

(declare-fun b!4672686 () Bool)

(declare-fun res!1967369 () Bool)

(assert (=> b!4672686 (=> (not res!1967369) (not e!2915931))))

(assert (=> b!4672686 (= res!1967369 (noDuplicateKeys!1725 newBucket!218))))

(declare-fun b!4672687 () Bool)

(declare-fun res!1967367 () Bool)

(assert (=> b!4672687 (=> (not res!1967367) (not e!2915931))))

(declare-fun head!9765 (List!52215) tuple2!53296)

(assert (=> b!4672687 (= res!1967367 (= (head!9765 (toList!5339 lm!2023)) (tuple2!53297 hash!405 oldBucket!34)))))

(assert (= (and start!471498 res!1967371) b!4672683))

(assert (= (and b!4672683 res!1967372) b!4672686))

(assert (= (and b!4672686 res!1967369) b!4672677))

(assert (= (and b!4672677 res!1967370) b!4672679))

(assert (= (and b!4672679 res!1967376) b!4672678))

(assert (= (and b!4672678 res!1967368) b!4672681))

(assert (= (and b!4672681 res!1967373) b!4672684))

(assert (= (and b!4672684 res!1967366) b!4672685))

(assert (= (and b!4672685 res!1967375) b!4672687))

(assert (= (and b!4672687 res!1967367) b!4672676))

(assert (= (and b!4672676 res!1967374) b!4672675))

(assert (= start!471498 b!4672680))

(assert (= (and start!471498 (is-Cons!52090 oldBucket!34)) b!4672674))

(assert (= (and start!471498 (is-Cons!52090 newBucket!218)) b!4672682))

(declare-fun m!5566437 () Bool)

(assert (=> b!4672685 m!5566437))

(declare-fun m!5566439 () Bool)

(assert (=> b!4672675 m!5566439))

(declare-fun m!5566441 () Bool)

(assert (=> b!4672675 m!5566441))

(declare-fun m!5566443 () Bool)

(assert (=> b!4672684 m!5566443))

(declare-fun m!5566445 () Bool)

(assert (=> b!4672677 m!5566445))

(declare-fun m!5566447 () Bool)

(assert (=> b!4672681 m!5566447))

(declare-fun m!5566449 () Bool)

(assert (=> b!4672686 m!5566449))

(declare-fun m!5566451 () Bool)

(assert (=> b!4672678 m!5566451))

(assert (=> b!4672678 m!5566451))

(declare-fun m!5566453 () Bool)

(assert (=> b!4672678 m!5566453))

(declare-fun m!5566455 () Bool)

(assert (=> b!4672679 m!5566455))

(declare-fun m!5566457 () Bool)

(assert (=> start!471498 m!5566457))

(declare-fun m!5566459 () Bool)

(assert (=> start!471498 m!5566459))

(declare-fun m!5566461 () Bool)

(assert (=> b!4672683 m!5566461))

(declare-fun m!5566463 () Bool)

(assert (=> b!4672687 m!5566463))

(push 1)

(assert (not b!4672677))

(assert tp_is_empty!30195)

(assert (not b!4672686))

(assert (not b!4672679))

(assert (not b!4672675))

(assert tp_is_empty!30193)

(assert (not b!4672684))

(assert (not b!4672678))

(assert (not b!4672674))

(assert (not b!4672687))

(assert (not b!4672682))

(assert (not b!4672680))

(assert (not b!4672681))

(assert (not b!4672683))

(assert (not b!4672685))

(assert (not start!471498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485867 () Bool)

(assert (=> d!1485867 (= (head!9765 (toList!5339 lm!2023)) (h!58275 (toList!5339 lm!2023)))))

(assert (=> b!4672687 d!1485867))

(declare-fun d!1485869 () Bool)

(declare-fun res!1967414 () Bool)

(declare-fun e!2915948 () Bool)

(assert (=> d!1485869 (=> res!1967414 e!2915948)))

(assert (=> d!1485869 (= res!1967414 (is-Nil!52091 (toList!5339 lm!2023)))))

(assert (=> d!1485869 (= (forall!11132 (toList!5339 lm!2023) lambda!202921) e!2915948)))

(declare-fun b!4672734 () Bool)

(declare-fun e!2915949 () Bool)

(assert (=> b!4672734 (= e!2915948 e!2915949)))

(declare-fun res!1967415 () Bool)

(assert (=> b!4672734 (=> (not res!1967415) (not e!2915949))))

(declare-fun dynLambda!21652 (Int tuple2!53296) Bool)

(assert (=> b!4672734 (= res!1967415 (dynLambda!21652 lambda!202921 (h!58275 (toList!5339 lm!2023))))))

(declare-fun b!4672735 () Bool)

(assert (=> b!4672735 (= e!2915949 (forall!11132 (t!359353 (toList!5339 lm!2023)) lambda!202921))))

(assert (= (and d!1485869 (not res!1967414)) b!4672734))

(assert (= (and b!4672734 res!1967415) b!4672735))

(declare-fun b_lambda!176445 () Bool)

(assert (=> (not b_lambda!176445) (not b!4672734)))

(declare-fun m!5566493 () Bool)

(assert (=> b!4672734 m!5566493))

(assert (=> b!4672735 m!5566439))

(assert (=> start!471498 d!1485869))

(declare-fun d!1485871 () Bool)

(declare-fun isStrictlySorted!589 (List!52215) Bool)

(assert (=> d!1485871 (= (inv!67338 lm!2023) (isStrictlySorted!589 (toList!5339 lm!2023)))))

(declare-fun bs!1079184 () Bool)

(assert (= bs!1079184 d!1485871))

(declare-fun m!5566495 () Bool)

(assert (=> bs!1079184 m!5566495))

(assert (=> start!471498 d!1485871))

(declare-fun d!1485873 () Bool)

(declare-fun hash!3878 (Hashable!6094 K!13463) (_ BitVec 64))

(assert (=> d!1485873 (= (hash!3876 hashF!1323 key!4653) (hash!3878 hashF!1323 key!4653))))

(declare-fun bs!1079185 () Bool)

(assert (= bs!1079185 d!1485873))

(declare-fun m!5566497 () Bool)

(assert (=> bs!1079185 m!5566497))

(assert (=> b!4672681 d!1485873))

(declare-fun b!4672778 () Bool)

(assert (=> b!4672778 false))

(declare-datatypes ((Unit!121346 0))(
  ( (Unit!121347) )
))
(declare-fun lt!1834129 () Unit!121346)

(declare-fun lt!1834136 () Unit!121346)

(assert (=> b!4672778 (= lt!1834129 lt!1834136)))

(declare-fun containsKey!2867 (List!52214 K!13463) Bool)

(assert (=> b!4672778 (containsKey!2867 (toList!5340 (extractMap!1751 (toList!5339 lm!2023))) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!787 (List!52214 K!13463) Unit!121346)

(assert (=> b!4672778 (= lt!1834136 (lemmaInGetKeysListThenContainsKey!787 (toList!5340 (extractMap!1751 (toList!5339 lm!2023))) key!4653))))

(declare-fun e!2915976 () Unit!121346)

(declare-fun Unit!121348 () Unit!121346)

(assert (=> b!4672778 (= e!2915976 Unit!121348)))

(declare-fun bm!326565 () Bool)

(declare-fun call!326570 () Bool)

(declare-datatypes ((List!52218 0))(
  ( (Nil!52094) (Cons!52094 (h!58280 K!13463) (t!359356 List!52218)) )
))
(declare-fun e!2915974 () List!52218)

(declare-fun contains!15272 (List!52218 K!13463) Bool)

(assert (=> bm!326565 (= call!326570 (contains!15272 e!2915974 key!4653))))

(declare-fun c!799823 () Bool)

(declare-fun c!799825 () Bool)

(assert (=> bm!326565 (= c!799823 c!799825)))

(declare-fun b!4672779 () Bool)

(declare-fun getKeysList!788 (List!52214) List!52218)

(assert (=> b!4672779 (= e!2915974 (getKeysList!788 (toList!5340 (extractMap!1751 (toList!5339 lm!2023)))))))

(declare-fun d!1485877 () Bool)

(declare-fun e!2915978 () Bool)

(assert (=> d!1485877 e!2915978))

(declare-fun res!1967430 () Bool)

(assert (=> d!1485877 (=> res!1967430 e!2915978)))

(declare-fun e!2915975 () Bool)

(assert (=> d!1485877 (= res!1967430 e!2915975)))

(declare-fun res!1967429 () Bool)

(assert (=> d!1485877 (=> (not res!1967429) (not e!2915975))))

(declare-fun lt!1834132 () Bool)

(assert (=> d!1485877 (= res!1967429 (not lt!1834132))))

(declare-fun lt!1834135 () Bool)

(assert (=> d!1485877 (= lt!1834132 lt!1834135)))

(declare-fun lt!1834133 () Unit!121346)

(declare-fun e!2915979 () Unit!121346)

(assert (=> d!1485877 (= lt!1834133 e!2915979)))

(assert (=> d!1485877 (= c!799825 lt!1834135)))

(assert (=> d!1485877 (= lt!1834135 (containsKey!2867 (toList!5340 (extractMap!1751 (toList!5339 lm!2023))) key!4653))))

(assert (=> d!1485877 (= (contains!15270 (extractMap!1751 (toList!5339 lm!2023)) key!4653) lt!1834132)))

(declare-fun b!4672780 () Bool)

(declare-fun e!2915977 () Bool)

(assert (=> b!4672780 (= e!2915978 e!2915977)))

(declare-fun res!1967428 () Bool)

(assert (=> b!4672780 (=> (not res!1967428) (not e!2915977))))

(declare-datatypes ((Option!11943 0))(
  ( (None!11942) (Some!11942 (v!46305 V!13709)) )
))
(declare-fun isDefined!9198 (Option!11943) Bool)

(declare-fun getValueByKey!1691 (List!52214 K!13463) Option!11943)

(assert (=> b!4672780 (= res!1967428 (isDefined!9198 (getValueByKey!1691 (toList!5340 (extractMap!1751 (toList!5339 lm!2023))) key!4653)))))

(declare-fun b!4672781 () Bool)

(assert (=> b!4672781 (= e!2915979 e!2915976)))

(declare-fun c!799824 () Bool)

(assert (=> b!4672781 (= c!799824 call!326570)))

(declare-fun b!4672782 () Bool)

(declare-fun keys!18523 (ListMap!4703) List!52218)

(assert (=> b!4672782 (= e!2915974 (keys!18523 (extractMap!1751 (toList!5339 lm!2023))))))

(declare-fun b!4672783 () Bool)

(assert (=> b!4672783 (= e!2915975 (not (contains!15272 (keys!18523 (extractMap!1751 (toList!5339 lm!2023))) key!4653)))))

(declare-fun b!4672784 () Bool)

(declare-fun lt!1834130 () Unit!121346)

(assert (=> b!4672784 (= e!2915979 lt!1834130)))

(declare-fun lt!1834131 () Unit!121346)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1583 (List!52214 K!13463) Unit!121346)

(assert (=> b!4672784 (= lt!1834131 (lemmaContainsKeyImpliesGetValueByKeyDefined!1583 (toList!5340 (extractMap!1751 (toList!5339 lm!2023))) key!4653))))

(assert (=> b!4672784 (isDefined!9198 (getValueByKey!1691 (toList!5340 (extractMap!1751 (toList!5339 lm!2023))) key!4653))))

(declare-fun lt!1834134 () Unit!121346)

(assert (=> b!4672784 (= lt!1834134 lt!1834131)))

(declare-fun lemmaInListThenGetKeysListContains!783 (List!52214 K!13463) Unit!121346)

(assert (=> b!4672784 (= lt!1834130 (lemmaInListThenGetKeysListContains!783 (toList!5340 (extractMap!1751 (toList!5339 lm!2023))) key!4653))))

(assert (=> b!4672784 call!326570))

(declare-fun b!4672785 () Bool)

(declare-fun Unit!121349 () Unit!121346)

(assert (=> b!4672785 (= e!2915976 Unit!121349)))

(declare-fun b!4672786 () Bool)

(assert (=> b!4672786 (= e!2915977 (contains!15272 (keys!18523 (extractMap!1751 (toList!5339 lm!2023))) key!4653))))

(assert (= (and d!1485877 c!799825) b!4672784))

(assert (= (and d!1485877 (not c!799825)) b!4672781))

(assert (= (and b!4672781 c!799824) b!4672778))

(assert (= (and b!4672781 (not c!799824)) b!4672785))

(assert (= (or b!4672784 b!4672781) bm!326565))

(assert (= (and bm!326565 c!799823) b!4672779))

(assert (= (and bm!326565 (not c!799823)) b!4672782))

(assert (= (and d!1485877 res!1967429) b!4672783))

(assert (= (and d!1485877 (not res!1967430)) b!4672780))

(assert (= (and b!4672780 res!1967428) b!4672786))

(declare-fun m!5566515 () Bool)

(assert (=> d!1485877 m!5566515))

(assert (=> b!4672778 m!5566515))

(declare-fun m!5566517 () Bool)

(assert (=> b!4672778 m!5566517))

(declare-fun m!5566519 () Bool)

(assert (=> b!4672784 m!5566519))

(declare-fun m!5566521 () Bool)

(assert (=> b!4672784 m!5566521))

(assert (=> b!4672784 m!5566521))

(declare-fun m!5566523 () Bool)

(assert (=> b!4672784 m!5566523))

(declare-fun m!5566525 () Bool)

(assert (=> b!4672784 m!5566525))

(assert (=> b!4672786 m!5566451))

(declare-fun m!5566527 () Bool)

(assert (=> b!4672786 m!5566527))

(assert (=> b!4672786 m!5566527))

(declare-fun m!5566529 () Bool)

(assert (=> b!4672786 m!5566529))

(declare-fun m!5566531 () Bool)

(assert (=> b!4672779 m!5566531))

(assert (=> b!4672783 m!5566451))

(assert (=> b!4672783 m!5566527))

(assert (=> b!4672783 m!5566527))

(assert (=> b!4672783 m!5566529))

(assert (=> b!4672780 m!5566521))

(assert (=> b!4672780 m!5566521))

(assert (=> b!4672780 m!5566523))

(declare-fun m!5566533 () Bool)

(assert (=> bm!326565 m!5566533))

(assert (=> b!4672782 m!5566451))

(assert (=> b!4672782 m!5566527))

(assert (=> b!4672678 d!1485877))

(declare-fun bs!1079193 () Bool)

(declare-fun d!1485893 () Bool)

(assert (= bs!1079193 (and d!1485893 start!471498)))

(declare-fun lambda!202936 () Int)

(assert (=> bs!1079193 (= lambda!202936 lambda!202921)))

(declare-fun lt!1834155 () ListMap!4703)

(declare-fun invariantList!1349 (List!52214) Bool)

(assert (=> d!1485893 (invariantList!1349 (toList!5340 lt!1834155))))

(declare-fun e!2915994 () ListMap!4703)

(assert (=> d!1485893 (= lt!1834155 e!2915994)))

(declare-fun c!799834 () Bool)

(assert (=> d!1485893 (= c!799834 (is-Cons!52091 (toList!5339 lm!2023)))))

(assert (=> d!1485893 (forall!11132 (toList!5339 lm!2023) lambda!202936)))

(assert (=> d!1485893 (= (extractMap!1751 (toList!5339 lm!2023)) lt!1834155)))

(declare-fun b!4672809 () Bool)

(declare-fun addToMapMapFromBucket!1158 (List!52214 ListMap!4703) ListMap!4703)

(assert (=> b!4672809 (= e!2915994 (addToMapMapFromBucket!1158 (_2!29942 (h!58275 (toList!5339 lm!2023))) (extractMap!1751 (t!359353 (toList!5339 lm!2023)))))))

(declare-fun b!4672810 () Bool)

(assert (=> b!4672810 (= e!2915994 (ListMap!4704 Nil!52090))))

(assert (= (and d!1485893 c!799834) b!4672809))

(assert (= (and d!1485893 (not c!799834)) b!4672810))

(declare-fun m!5566535 () Bool)

(assert (=> d!1485893 m!5566535))

(declare-fun m!5566537 () Bool)

(assert (=> d!1485893 m!5566537))

(declare-fun m!5566539 () Bool)

(assert (=> b!4672809 m!5566539))

(assert (=> b!4672809 m!5566539))

(declare-fun m!5566541 () Bool)

(assert (=> b!4672809 m!5566541))

(assert (=> b!4672678 d!1485893))

(declare-fun d!1485895 () Bool)

(declare-fun res!1967444 () Bool)

(declare-fun e!2916005 () Bool)

(assert (=> d!1485895 (=> res!1967444 e!2916005)))

(assert (=> d!1485895 (= res!1967444 (not (is-Cons!52090 oldBucket!34)))))

(assert (=> d!1485895 (= (noDuplicateKeys!1725 oldBucket!34) e!2916005)))

(declare-fun b!4672824 () Bool)

(declare-fun e!2916006 () Bool)

(assert (=> b!4672824 (= e!2916005 e!2916006)))

(declare-fun res!1967445 () Bool)

(assert (=> b!4672824 (=> (not res!1967445) (not e!2916006))))

(declare-fun containsKey!2869 (List!52214 K!13463) Bool)

(assert (=> b!4672824 (= res!1967445 (not (containsKey!2869 (t!359352 oldBucket!34) (_1!29941 (h!58274 oldBucket!34)))))))

(declare-fun b!4672825 () Bool)

(assert (=> b!4672825 (= e!2916006 (noDuplicateKeys!1725 (t!359352 oldBucket!34)))))

(assert (= (and d!1485895 (not res!1967444)) b!4672824))

(assert (= (and b!4672824 res!1967445) b!4672825))

(declare-fun m!5566563 () Bool)

(assert (=> b!4672824 m!5566563))

(declare-fun m!5566565 () Bool)

(assert (=> b!4672825 m!5566565))

(assert (=> b!4672683 d!1485895))

(declare-fun b!4672837 () Bool)

(declare-fun e!2916012 () List!52214)

(assert (=> b!4672837 (= e!2916012 Nil!52090)))

(declare-fun d!1485899 () Bool)

(declare-fun lt!1834166 () List!52214)

(assert (=> d!1485899 (not (containsKey!2869 lt!1834166 key!4653))))

(declare-fun e!2916011 () List!52214)

(assert (=> d!1485899 (= lt!1834166 e!2916011)))

(declare-fun c!799843 () Bool)

(assert (=> d!1485899 (= c!799843 (and (is-Cons!52090 oldBucket!34) (= (_1!29941 (h!58274 oldBucket!34)) key!4653)))))

(assert (=> d!1485899 (noDuplicateKeys!1725 oldBucket!34)))

(assert (=> d!1485899 (= (removePairForKey!1320 oldBucket!34 key!4653) lt!1834166)))

(declare-fun b!4672836 () Bool)

(assert (=> b!4672836 (= e!2916012 (Cons!52090 (h!58274 oldBucket!34) (removePairForKey!1320 (t!359352 oldBucket!34) key!4653)))))

(declare-fun b!4672834 () Bool)

(assert (=> b!4672834 (= e!2916011 (t!359352 oldBucket!34))))

(declare-fun b!4672835 () Bool)

(assert (=> b!4672835 (= e!2916011 e!2916012)))

(declare-fun c!799842 () Bool)

(assert (=> b!4672835 (= c!799842 (is-Cons!52090 oldBucket!34))))

(assert (= (and d!1485899 c!799843) b!4672834))

(assert (= (and d!1485899 (not c!799843)) b!4672835))

(assert (= (and b!4672835 c!799842) b!4672836))

(assert (= (and b!4672835 (not c!799842)) b!4672837))

(declare-fun m!5566567 () Bool)

(assert (=> d!1485899 m!5566567))

(assert (=> d!1485899 m!5566461))

(declare-fun m!5566569 () Bool)

(assert (=> b!4672836 m!5566569))

(assert (=> b!4672677 d!1485899))

(declare-fun d!1485901 () Bool)

(assert (=> d!1485901 true))

(assert (=> d!1485901 true))

(declare-fun lambda!202939 () Int)

(declare-fun forall!11135 (List!52214 Int) Bool)

(assert (=> d!1485901 (= (allKeysSameHash!1551 oldBucket!34 hash!405 hashF!1323) (forall!11135 oldBucket!34 lambda!202939))))

(declare-fun bs!1079194 () Bool)

(assert (= bs!1079194 d!1485901))

(declare-fun m!5566571 () Bool)

(assert (=> bs!1079194 m!5566571))

(assert (=> b!4672679 d!1485901))

(declare-fun bs!1079195 () Bool)

(declare-fun d!1485903 () Bool)

(assert (= bs!1079195 (and d!1485903 d!1485901)))

(declare-fun lambda!202940 () Int)

(assert (=> bs!1079195 (= lambda!202940 lambda!202939)))

(assert (=> d!1485903 true))

(assert (=> d!1485903 true))

(assert (=> d!1485903 (= (allKeysSameHash!1551 newBucket!218 hash!405 hashF!1323) (forall!11135 newBucket!218 lambda!202940))))

(declare-fun bs!1079196 () Bool)

(assert (= bs!1079196 d!1485903))

(declare-fun m!5566573 () Bool)

(assert (=> bs!1079196 m!5566573))

(assert (=> b!4672684 d!1485903))

(declare-fun d!1485905 () Bool)

(declare-fun res!1967446 () Bool)

(declare-fun e!2916013 () Bool)

(assert (=> d!1485905 (=> res!1967446 e!2916013)))

(assert (=> d!1485905 (= res!1967446 (not (is-Cons!52090 newBucket!218)))))

(assert (=> d!1485905 (= (noDuplicateKeys!1725 newBucket!218) e!2916013)))

(declare-fun b!4672842 () Bool)

(declare-fun e!2916014 () Bool)

(assert (=> b!4672842 (= e!2916013 e!2916014)))

(declare-fun res!1967447 () Bool)

(assert (=> b!4672842 (=> (not res!1967447) (not e!2916014))))

(assert (=> b!4672842 (= res!1967447 (not (containsKey!2869 (t!359352 newBucket!218) (_1!29941 (h!58274 newBucket!218)))))))

(declare-fun b!4672843 () Bool)

(assert (=> b!4672843 (= e!2916014 (noDuplicateKeys!1725 (t!359352 newBucket!218)))))

(assert (= (and d!1485905 (not res!1967446)) b!4672842))

(assert (= (and b!4672842 res!1967447) b!4672843))

(declare-fun m!5566575 () Bool)

(assert (=> b!4672842 m!5566575))

(declare-fun m!5566577 () Bool)

(assert (=> b!4672843 m!5566577))

(assert (=> b!4672686 d!1485905))

(declare-fun d!1485907 () Bool)

(declare-fun res!1967448 () Bool)

(declare-fun e!2916015 () Bool)

(assert (=> d!1485907 (=> res!1967448 e!2916015)))

(assert (=> d!1485907 (= res!1967448 (is-Nil!52091 (t!359353 (toList!5339 lm!2023))))))

(assert (=> d!1485907 (= (forall!11132 (t!359353 (toList!5339 lm!2023)) lambda!202921) e!2916015)))

(declare-fun b!4672844 () Bool)

(declare-fun e!2916016 () Bool)

(assert (=> b!4672844 (= e!2916015 e!2916016)))

(declare-fun res!1967449 () Bool)

(assert (=> b!4672844 (=> (not res!1967449) (not e!2916016))))

(assert (=> b!4672844 (= res!1967449 (dynLambda!21652 lambda!202921 (h!58275 (t!359353 (toList!5339 lm!2023)))))))

(declare-fun b!4672845 () Bool)

(assert (=> b!4672845 (= e!2916016 (forall!11132 (t!359353 (t!359353 (toList!5339 lm!2023))) lambda!202921))))

(assert (= (and d!1485907 (not res!1967448)) b!4672844))

(assert (= (and b!4672844 res!1967449) b!4672845))

(declare-fun b_lambda!176449 () Bool)

(assert (=> (not b_lambda!176449) (not b!4672844)))

(declare-fun m!5566579 () Bool)

(assert (=> b!4672844 m!5566579))

(declare-fun m!5566581 () Bool)

(assert (=> b!4672845 m!5566581))

(assert (=> b!4672675 d!1485907))

(declare-fun d!1485909 () Bool)

(declare-fun tail!8290 (List!52215) List!52215)

(assert (=> d!1485909 (= (tail!8288 lm!2023) (ListLongMap!3870 (tail!8290 (toList!5339 lm!2023))))))

(declare-fun bs!1079197 () Bool)

(assert (= bs!1079197 d!1485909))

(declare-fun m!5566583 () Bool)

(assert (=> bs!1079197 m!5566583))

(assert (=> b!4672675 d!1485909))

(declare-fun bs!1079198 () Bool)

(declare-fun d!1485911 () Bool)

(assert (= bs!1079198 (and d!1485911 start!471498)))

(declare-fun lambda!202945 () Int)

(assert (=> bs!1079198 (not (= lambda!202945 lambda!202921))))

(declare-fun bs!1079199 () Bool)

(assert (= bs!1079199 (and d!1485911 d!1485893)))

(assert (=> bs!1079199 (not (= lambda!202945 lambda!202936))))

(assert (=> d!1485911 true))

(assert (=> d!1485911 (= (allKeysSameHashInMap!1639 lm!2023 hashF!1323) (forall!11132 (toList!5339 lm!2023) lambda!202945))))

(declare-fun bs!1079200 () Bool)

(assert (= bs!1079200 d!1485911))

(declare-fun m!5566585 () Bool)

(assert (=> bs!1079200 m!5566585))

(assert (=> b!4672685 d!1485911))

(declare-fun e!2916021 () Bool)

(declare-fun tp!1344148 () Bool)

(declare-fun b!4672856 () Bool)

(assert (=> b!4672856 (= e!2916021 (and tp_is_empty!30193 tp_is_empty!30195 tp!1344148))))

(assert (=> b!4672682 (= tp!1344135 e!2916021)))

(assert (= (and b!4672682 (is-Cons!52090 (t!359352 newBucket!218))) b!4672856))

(declare-fun tp!1344149 () Bool)

(declare-fun e!2916023 () Bool)

(declare-fun b!4672859 () Bool)

(assert (=> b!4672859 (= e!2916023 (and tp_is_empty!30193 tp_is_empty!30195 tp!1344149))))

(assert (=> b!4672674 (= tp!1344136 e!2916023)))

(assert (= (and b!4672674 (is-Cons!52090 (t!359352 oldBucket!34))) b!4672859))

(declare-fun b!4672864 () Bool)

(declare-fun e!2916026 () Bool)

(declare-fun tp!1344154 () Bool)

(declare-fun tp!1344155 () Bool)

(assert (=> b!4672864 (= e!2916026 (and tp!1344154 tp!1344155))))

(assert (=> b!4672680 (= tp!1344134 e!2916026)))

(assert (= (and b!4672680 (is-Cons!52091 (toList!5339 lm!2023))) b!4672864))

(declare-fun b_lambda!176451 () Bool)

(assert (= b_lambda!176449 (or start!471498 b_lambda!176451)))

(declare-fun bs!1079203 () Bool)

(declare-fun d!1485913 () Bool)

(assert (= bs!1079203 (and d!1485913 start!471498)))

(assert (=> bs!1079203 (= (dynLambda!21652 lambda!202921 (h!58275 (t!359353 (toList!5339 lm!2023)))) (noDuplicateKeys!1725 (_2!29942 (h!58275 (t!359353 (toList!5339 lm!2023))))))))

(declare-fun m!5566595 () Bool)

(assert (=> bs!1079203 m!5566595))

(assert (=> b!4672844 d!1485913))

(declare-fun b_lambda!176453 () Bool)

(assert (= b_lambda!176445 (or start!471498 b_lambda!176453)))

(declare-fun bs!1079204 () Bool)

(declare-fun d!1485917 () Bool)

(assert (= bs!1079204 (and d!1485917 start!471498)))

(assert (=> bs!1079204 (= (dynLambda!21652 lambda!202921 (h!58275 (toList!5339 lm!2023))) (noDuplicateKeys!1725 (_2!29942 (h!58275 (toList!5339 lm!2023)))))))

(declare-fun m!5566597 () Bool)

(assert (=> bs!1079204 m!5566597))

(assert (=> b!4672734 d!1485917))

(push 1)

(assert (not b!4672843))

(assert (not b!4672784))

(assert (not d!1485871))

(assert (not d!1485901))

(assert (not bs!1079204))

(assert tp_is_empty!30193)

(assert (not b_lambda!176453))

(assert (not d!1485909))

(assert (not b!4672824))

(assert (not b!4672842))

(assert (not d!1485873))

(assert (not d!1485903))

(assert (not b!4672786))

(assert (not d!1485877))

(assert (not b!4672859))

(assert tp_is_empty!30195)

(assert (not b!4672735))

(assert (not b!4672856))

(assert (not b!4672825))

(assert (not bm!326565))

(assert (not b!4672864))

(assert (not b!4672836))

(assert (not b!4672782))

(assert (not bs!1079203))

(assert (not d!1485911))

(assert (not d!1485893))

(assert (not b!4672783))

(assert (not b!4672809))

(assert (not b!4672779))

(assert (not b!4672845))

(assert (not b_lambda!176451))

(assert (not b!4672778))

(assert (not d!1485899))

(assert (not b!4672780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

