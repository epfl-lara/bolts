; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499540 () Bool)

(assert start!499540)

(declare-fun b!4820728 () Bool)

(declare-fun e!3011974 () Bool)

(declare-fun tp!1362333 () Bool)

(assert (=> b!4820728 (= e!3011974 tp!1362333)))

(declare-fun b!4820729 () Bool)

(declare-fun res!2051608 () Bool)

(declare-fun e!3011972 () Bool)

(assert (=> b!4820729 (=> (not res!2051608) (not e!3011972))))

(declare-datatypes ((V!16838 0))(
  ( (V!16839 (val!21579 Int)) )
))
(declare-datatypes ((K!16592 0))(
  ( (K!16593 (val!21580 Int)) )
))
(declare-datatypes ((tuple2!58094 0))(
  ( (tuple2!58095 (_1!32341 K!16592) (_2!32341 V!16838)) )
))
(declare-datatypes ((List!55032 0))(
  ( (Nil!54908) (Cons!54908 (h!61342 tuple2!58094) (t!362528 List!55032)) )
))
(declare-datatypes ((tuple2!58096 0))(
  ( (tuple2!58097 (_1!32342 (_ BitVec 64)) (_2!32342 List!55032)) )
))
(declare-datatypes ((List!55033 0))(
  ( (Nil!54909) (Cons!54909 (h!61343 tuple2!58096) (t!362529 List!55033)) )
))
(declare-datatypes ((ListLongMap!5945 0))(
  ( (ListLongMap!5946 (toList!7437 List!55033)) )
))
(declare-fun lm!2280 () ListLongMap!5945)

(declare-datatypes ((Hashable!7241 0))(
  ( (HashableExt!7240 (__x!33516 Int)) )
))
(declare-fun hashF!1509 () Hashable!7241)

(declare-fun allKeysSameHashInMap!2557 (ListLongMap!5945 Hashable!7241) Bool)

(assert (=> b!4820729 (= res!2051608 (allKeysSameHashInMap!2557 lm!2280 hashF!1509))))

(declare-fun b!4820730 () Bool)

(declare-fun res!2051605 () Bool)

(declare-fun e!3011973 () Bool)

(assert (=> b!4820730 (=> (not res!2051605) (not e!3011973))))

(declare-fun key!5428 () K!16592)

(declare-fun lt!1969396 () (_ BitVec 64))

(declare-fun containsKey!4316 (List!55032 K!16592) Bool)

(declare-fun apply!13328 (ListLongMap!5945 (_ BitVec 64)) List!55032)

(assert (=> b!4820730 (= res!2051605 (not (containsKey!4316 (apply!13328 lm!2280 lt!1969396) key!5428)))))

(declare-fun b!4820731 () Bool)

(declare-fun res!2051604 () Bool)

(assert (=> b!4820731 (=> (not res!2051604) (not e!3011973))))

(assert (=> b!4820731 (= res!2051604 (and (is-Cons!54909 (toList!7437 lm!2280)) (= (_1!32342 (h!61343 (toList!7437 lm!2280))) lt!1969396)))))

(declare-fun b!4820733 () Bool)

(declare-fun noDuplicateKeys!2433 (List!55032) Bool)

(assert (=> b!4820733 (= e!3011973 (not (noDuplicateKeys!2433 (_2!32342 (h!61343 (toList!7437 lm!2280))))))))

(declare-datatypes ((ListMap!6823 0))(
  ( (ListMap!6824 (toList!7438 List!55032)) )
))
(declare-fun lt!1969395 () ListMap!6823)

(declare-fun extractMap!2663 (List!55033) ListMap!6823)

(assert (=> b!4820733 (= lt!1969395 (extractMap!2663 (t!362529 (toList!7437 lm!2280))))))

(declare-fun lt!1969398 () ListLongMap!5945)

(declare-fun contains!18714 (ListMap!6823 K!16592) Bool)

(assert (=> b!4820733 (not (contains!18714 (extractMap!2663 (toList!7437 lt!1969398)) key!5428))))

(declare-datatypes ((Unit!142307 0))(
  ( (Unit!142308) )
))
(declare-fun lt!1969397 () Unit!142307)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!85 (ListLongMap!5945 K!16592 Hashable!7241) Unit!142307)

(assert (=> b!4820733 (= lt!1969397 (lemmaHashNotInLongMapThenNotInGenerated!85 lt!1969398 key!5428 hashF!1509))))

(declare-fun tail!9384 (ListLongMap!5945) ListLongMap!5945)

(assert (=> b!4820733 (= lt!1969398 (tail!9384 lm!2280))))

(declare-fun res!2051606 () Bool)

(assert (=> start!499540 (=> (not res!2051606) (not e!3011972))))

(declare-fun lambda!235459 () Int)

(declare-fun forall!12559 (List!55033 Int) Bool)

(assert (=> start!499540 (= res!2051606 (forall!12559 (toList!7437 lm!2280) lambda!235459))))

(assert (=> start!499540 e!3011972))

(declare-fun inv!70493 (ListLongMap!5945) Bool)

(assert (=> start!499540 (and (inv!70493 lm!2280) e!3011974)))

(assert (=> start!499540 true))

(declare-fun tp_is_empty!34381 () Bool)

(assert (=> start!499540 tp_is_empty!34381))

(declare-fun b!4820732 () Bool)

(assert (=> b!4820732 (= e!3011972 e!3011973)))

(declare-fun res!2051607 () Bool)

(assert (=> b!4820732 (=> (not res!2051607) (not e!3011973))))

(declare-fun contains!18715 (ListLongMap!5945 (_ BitVec 64)) Bool)

(assert (=> b!4820732 (= res!2051607 (contains!18715 lm!2280 lt!1969396))))

(declare-fun hash!5337 (Hashable!7241 K!16592) (_ BitVec 64))

(assert (=> b!4820732 (= lt!1969396 (hash!5337 hashF!1509 key!5428))))

(assert (= (and start!499540 res!2051606) b!4820729))

(assert (= (and b!4820729 res!2051608) b!4820732))

(assert (= (and b!4820732 res!2051607) b!4820730))

(assert (= (and b!4820730 res!2051605) b!4820731))

(assert (= (and b!4820731 res!2051604) b!4820733))

(assert (= start!499540 b!4820728))

(declare-fun m!5808118 () Bool)

(assert (=> b!4820732 m!5808118))

(declare-fun m!5808120 () Bool)

(assert (=> b!4820732 m!5808120))

(declare-fun m!5808122 () Bool)

(assert (=> start!499540 m!5808122))

(declare-fun m!5808124 () Bool)

(assert (=> start!499540 m!5808124))

(declare-fun m!5808126 () Bool)

(assert (=> b!4820730 m!5808126))

(assert (=> b!4820730 m!5808126))

(declare-fun m!5808128 () Bool)

(assert (=> b!4820730 m!5808128))

(declare-fun m!5808130 () Bool)

(assert (=> b!4820729 m!5808130))

(declare-fun m!5808132 () Bool)

(assert (=> b!4820733 m!5808132))

(declare-fun m!5808134 () Bool)

(assert (=> b!4820733 m!5808134))

(declare-fun m!5808136 () Bool)

(assert (=> b!4820733 m!5808136))

(declare-fun m!5808138 () Bool)

(assert (=> b!4820733 m!5808138))

(assert (=> b!4820733 m!5808136))

(declare-fun m!5808140 () Bool)

(assert (=> b!4820733 m!5808140))

(declare-fun m!5808142 () Bool)

(assert (=> b!4820733 m!5808142))

(push 1)

(assert (not b!4820733))

(assert (not b!4820728))

(assert (not b!4820730))

(assert (not b!4820732))

(assert (not start!499540))

(assert tp_is_empty!34381)

(assert (not b!4820729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1161590 () Bool)

(declare-fun d!1543386 () Bool)

(assert (= bs!1161590 (and d!1543386 start!499540)))

(declare-fun lambda!235465 () Int)

(assert (=> bs!1161590 (not (= lambda!235465 lambda!235459))))

(assert (=> d!1543386 true))

(assert (=> d!1543386 (= (allKeysSameHashInMap!2557 lm!2280 hashF!1509) (forall!12559 (toList!7437 lm!2280) lambda!235465))))

(declare-fun bs!1161591 () Bool)

(assert (= bs!1161591 d!1543386))

(declare-fun m!5808170 () Bool)

(assert (=> bs!1161591 m!5808170))

(assert (=> b!4820729 d!1543386))

(declare-fun b!4820772 () Bool)

(declare-fun e!3012000 () Unit!142307)

(declare-fun e!3011999 () Unit!142307)

(assert (=> b!4820772 (= e!3012000 e!3011999)))

(declare-fun c!821450 () Bool)

(declare-fun call!336095 () Bool)

(assert (=> b!4820772 (= c!821450 call!336095)))

(declare-fun b!4820773 () Bool)

(declare-datatypes ((List!55036 0))(
  ( (Nil!54912) (Cons!54912 (h!61346 K!16592) (t!362532 List!55036)) )
))
(declare-fun e!3011996 () List!55036)

(declare-fun keys!20188 (ListMap!6823) List!55036)

(assert (=> b!4820773 (= e!3011996 (keys!20188 (extractMap!2663 (toList!7437 lt!1969398))))))

(declare-fun b!4820774 () Bool)

(declare-fun e!3011997 () Bool)

(declare-fun contains!18718 (List!55036 K!16592) Bool)

(assert (=> b!4820774 (= e!3011997 (contains!18718 (keys!20188 (extractMap!2663 (toList!7437 lt!1969398))) key!5428))))

(declare-fun b!4820775 () Bool)

(declare-fun e!3011998 () Bool)

(assert (=> b!4820775 (= e!3011998 (not (contains!18718 (keys!20188 (extractMap!2663 (toList!7437 lt!1969398))) key!5428)))))

(declare-fun d!1543388 () Bool)

(declare-fun e!3012001 () Bool)

(assert (=> d!1543388 e!3012001))

(declare-fun res!2051630 () Bool)

(assert (=> d!1543388 (=> res!2051630 e!3012001)))

(assert (=> d!1543388 (= res!2051630 e!3011998)))

(declare-fun res!2051631 () Bool)

(assert (=> d!1543388 (=> (not res!2051631) (not e!3011998))))

(declare-fun lt!1969431 () Bool)

(assert (=> d!1543388 (= res!2051631 (not lt!1969431))))

(declare-fun lt!1969428 () Bool)

(assert (=> d!1543388 (= lt!1969431 lt!1969428)))

(declare-fun lt!1969427 () Unit!142307)

(assert (=> d!1543388 (= lt!1969427 e!3012000)))

(declare-fun c!821449 () Bool)

(assert (=> d!1543388 (= c!821449 lt!1969428)))

(declare-fun containsKey!4318 (List!55032 K!16592) Bool)

(assert (=> d!1543388 (= lt!1969428 (containsKey!4318 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398))) key!5428))))

(assert (=> d!1543388 (= (contains!18714 (extractMap!2663 (toList!7437 lt!1969398)) key!5428) lt!1969431)))

(declare-fun b!4820776 () Bool)

(declare-fun getKeysList!1145 (List!55032) List!55036)

(assert (=> b!4820776 (= e!3011996 (getKeysList!1145 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398)))))))

(declare-fun b!4820777 () Bool)

(declare-fun lt!1969433 () Unit!142307)

(assert (=> b!4820777 (= e!3012000 lt!1969433)))

(declare-fun lt!1969430 () Unit!142307)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2376 (List!55032 K!16592) Unit!142307)

(assert (=> b!4820777 (= lt!1969430 (lemmaContainsKeyImpliesGetValueByKeyDefined!2376 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398))) key!5428))))

(declare-datatypes ((Option!13464 0))(
  ( (None!13463) (Some!13463 (v!49132 V!16838)) )
))
(declare-fun isDefined!10579 (Option!13464) Bool)

(declare-fun getValueByKey!2591 (List!55032 K!16592) Option!13464)

(assert (=> b!4820777 (isDefined!10579 (getValueByKey!2591 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398))) key!5428))))

(declare-fun lt!1969429 () Unit!142307)

(assert (=> b!4820777 (= lt!1969429 lt!1969430)))

(declare-fun lemmaInListThenGetKeysListContains!1140 (List!55032 K!16592) Unit!142307)

(assert (=> b!4820777 (= lt!1969433 (lemmaInListThenGetKeysListContains!1140 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398))) key!5428))))

(assert (=> b!4820777 call!336095))

(declare-fun b!4820778 () Bool)

(declare-fun Unit!142311 () Unit!142307)

(assert (=> b!4820778 (= e!3011999 Unit!142311)))

(declare-fun b!4820779 () Bool)

(assert (=> b!4820779 false))

(declare-fun lt!1969432 () Unit!142307)

(declare-fun lt!1969434 () Unit!142307)

(assert (=> b!4820779 (= lt!1969432 lt!1969434)))

(assert (=> b!4820779 (containsKey!4318 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398))) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1145 (List!55032 K!16592) Unit!142307)

(assert (=> b!4820779 (= lt!1969434 (lemmaInGetKeysListThenContainsKey!1145 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398))) key!5428))))

(declare-fun Unit!142312 () Unit!142307)

(assert (=> b!4820779 (= e!3011999 Unit!142312)))

(declare-fun b!4820780 () Bool)

(assert (=> b!4820780 (= e!3012001 e!3011997)))

(declare-fun res!2051632 () Bool)

(assert (=> b!4820780 (=> (not res!2051632) (not e!3011997))))

(assert (=> b!4820780 (= res!2051632 (isDefined!10579 (getValueByKey!2591 (toList!7438 (extractMap!2663 (toList!7437 lt!1969398))) key!5428)))))

(declare-fun bm!336090 () Bool)

(assert (=> bm!336090 (= call!336095 (contains!18718 e!3011996 key!5428))))

(declare-fun c!821451 () Bool)

(assert (=> bm!336090 (= c!821451 c!821449)))

(assert (= (and d!1543388 c!821449) b!4820777))

(assert (= (and d!1543388 (not c!821449)) b!4820772))

(assert (= (and b!4820772 c!821450) b!4820779))

(assert (= (and b!4820772 (not c!821450)) b!4820778))

(assert (= (or b!4820777 b!4820772) bm!336090))

(assert (= (and bm!336090 c!821451) b!4820776))

(assert (= (and bm!336090 (not c!821451)) b!4820773))

(assert (= (and d!1543388 res!2051631) b!4820775))

(assert (= (and d!1543388 (not res!2051630)) b!4820780))

(assert (= (and b!4820780 res!2051632) b!4820774))

(declare-fun m!5808172 () Bool)

(assert (=> b!4820780 m!5808172))

(assert (=> b!4820780 m!5808172))

(declare-fun m!5808174 () Bool)

(assert (=> b!4820780 m!5808174))

(assert (=> b!4820774 m!5808136))

(declare-fun m!5808176 () Bool)

(assert (=> b!4820774 m!5808176))

(assert (=> b!4820774 m!5808176))

(declare-fun m!5808178 () Bool)

(assert (=> b!4820774 m!5808178))

(declare-fun m!5808180 () Bool)

(assert (=> b!4820779 m!5808180))

(declare-fun m!5808182 () Bool)

(assert (=> b!4820779 m!5808182))

(declare-fun m!5808184 () Bool)

(assert (=> b!4820777 m!5808184))

(assert (=> b!4820777 m!5808172))

(assert (=> b!4820777 m!5808172))

(assert (=> b!4820777 m!5808174))

(declare-fun m!5808186 () Bool)

(assert (=> b!4820777 m!5808186))

(declare-fun m!5808188 () Bool)

(assert (=> b!4820776 m!5808188))

(declare-fun m!5808190 () Bool)

(assert (=> bm!336090 m!5808190))

(assert (=> b!4820773 m!5808136))

(assert (=> b!4820773 m!5808176))

(assert (=> b!4820775 m!5808136))

(assert (=> b!4820775 m!5808176))

(assert (=> b!4820775 m!5808176))

(assert (=> b!4820775 m!5808178))

(assert (=> d!1543388 m!5808180))

(assert (=> b!4820733 d!1543388))

(declare-fun bs!1161592 () Bool)

(declare-fun d!1543390 () Bool)

(assert (= bs!1161592 (and d!1543390 start!499540)))

(declare-fun lambda!235468 () Int)

(assert (=> bs!1161592 (= lambda!235468 lambda!235459)))

(declare-fun bs!1161593 () Bool)

(assert (= bs!1161593 (and d!1543390 d!1543386)))

(assert (=> bs!1161593 (not (= lambda!235468 lambda!235465))))

(assert (=> d!1543390 (not (contains!18714 (extractMap!2663 (toList!7437 lt!1969398)) key!5428))))

(declare-fun lt!1969453 () Unit!142307)

(declare-fun choose!35004 (ListLongMap!5945 K!16592 Hashable!7241) Unit!142307)

(assert (=> d!1543390 (= lt!1969453 (choose!35004 lt!1969398 key!5428 hashF!1509))))

(assert (=> d!1543390 (forall!12559 (toList!7437 lt!1969398) lambda!235468)))

(assert (=> d!1543390 (= (lemmaHashNotInLongMapThenNotInGenerated!85 lt!1969398 key!5428 hashF!1509) lt!1969453)))

(declare-fun bs!1161594 () Bool)

(assert (= bs!1161594 d!1543390))

(assert (=> bs!1161594 m!5808136))

(assert (=> bs!1161594 m!5808136))

(assert (=> bs!1161594 m!5808140))

(declare-fun m!5808192 () Bool)

(assert (=> bs!1161594 m!5808192))

(declare-fun m!5808194 () Bool)

(assert (=> bs!1161594 m!5808194))

(assert (=> b!4820733 d!1543390))

(declare-fun bs!1161595 () Bool)

(declare-fun d!1543392 () Bool)

(assert (= bs!1161595 (and d!1543392 start!499540)))

(declare-fun lambda!235471 () Int)

(assert (=> bs!1161595 (= lambda!235471 lambda!235459)))

(declare-fun bs!1161596 () Bool)

(assert (= bs!1161596 (and d!1543392 d!1543386)))

(assert (=> bs!1161596 (not (= lambda!235471 lambda!235465))))

(declare-fun bs!1161597 () Bool)

(assert (= bs!1161597 (and d!1543392 d!1543390)))

(assert (=> bs!1161597 (= lambda!235471 lambda!235468)))

(declare-fun lt!1969464 () ListMap!6823)

(declare-fun invariantList!1798 (List!55032) Bool)

(assert (=> d!1543392 (invariantList!1798 (toList!7438 lt!1969464))))

(declare-fun e!3012022 () ListMap!6823)

(assert (=> d!1543392 (= lt!1969464 e!3012022)))

(declare-fun c!821463 () Bool)

(assert (=> d!1543392 (= c!821463 (is-Cons!54909 (toList!7437 lt!1969398)))))

(assert (=> d!1543392 (forall!12559 (toList!7437 lt!1969398) lambda!235471)))

(assert (=> d!1543392 (= (extractMap!2663 (toList!7437 lt!1969398)) lt!1969464)))

(declare-fun b!4820812 () Bool)

(declare-fun addToMapMapFromBucket!1783 (List!55032 ListMap!6823) ListMap!6823)

(assert (=> b!4820812 (= e!3012022 (addToMapMapFromBucket!1783 (_2!32342 (h!61343 (toList!7437 lt!1969398))) (extractMap!2663 (t!362529 (toList!7437 lt!1969398)))))))

(declare-fun b!4820813 () Bool)

(assert (=> b!4820813 (= e!3012022 (ListMap!6824 Nil!54908))))

(assert (= (and d!1543392 c!821463) b!4820812))

(assert (= (and d!1543392 (not c!821463)) b!4820813))

(declare-fun m!5808216 () Bool)

(assert (=> d!1543392 m!5808216))

(declare-fun m!5808218 () Bool)

(assert (=> d!1543392 m!5808218))

(declare-fun m!5808220 () Bool)

(assert (=> b!4820812 m!5808220))

(assert (=> b!4820812 m!5808220))

(declare-fun m!5808222 () Bool)

(assert (=> b!4820812 m!5808222))

(assert (=> b!4820733 d!1543392))

(declare-fun d!1543396 () Bool)

(declare-fun res!2051646 () Bool)

(declare-fun e!3012027 () Bool)

(assert (=> d!1543396 (=> res!2051646 e!3012027)))

(assert (=> d!1543396 (= res!2051646 (not (is-Cons!54908 (_2!32342 (h!61343 (toList!7437 lm!2280))))))))

(assert (=> d!1543396 (= (noDuplicateKeys!2433 (_2!32342 (h!61343 (toList!7437 lm!2280)))) e!3012027)))

(declare-fun b!4820818 () Bool)

(declare-fun e!3012028 () Bool)

(assert (=> b!4820818 (= e!3012027 e!3012028)))

(declare-fun res!2051647 () Bool)

(assert (=> b!4820818 (=> (not res!2051647) (not e!3012028))))

(assert (=> b!4820818 (= res!2051647 (not (containsKey!4316 (t!362528 (_2!32342 (h!61343 (toList!7437 lm!2280)))) (_1!32341 (h!61342 (_2!32342 (h!61343 (toList!7437 lm!2280))))))))))

(declare-fun b!4820819 () Bool)

(assert (=> b!4820819 (= e!3012028 (noDuplicateKeys!2433 (t!362528 (_2!32342 (h!61343 (toList!7437 lm!2280))))))))

(assert (= (and d!1543396 (not res!2051646)) b!4820818))

(assert (= (and b!4820818 res!2051647) b!4820819))

(declare-fun m!5808224 () Bool)

(assert (=> b!4820818 m!5808224))

(declare-fun m!5808226 () Bool)

(assert (=> b!4820819 m!5808226))

(assert (=> b!4820733 d!1543396))

(declare-fun bs!1161598 () Bool)

(declare-fun d!1543398 () Bool)

(assert (= bs!1161598 (and d!1543398 start!499540)))

(declare-fun lambda!235472 () Int)

(assert (=> bs!1161598 (= lambda!235472 lambda!235459)))

(declare-fun bs!1161599 () Bool)

(assert (= bs!1161599 (and d!1543398 d!1543386)))

(assert (=> bs!1161599 (not (= lambda!235472 lambda!235465))))

(declare-fun bs!1161600 () Bool)

(assert (= bs!1161600 (and d!1543398 d!1543390)))

(assert (=> bs!1161600 (= lambda!235472 lambda!235468)))

(declare-fun bs!1161601 () Bool)

(assert (= bs!1161601 (and d!1543398 d!1543392)))

(assert (=> bs!1161601 (= lambda!235472 lambda!235471)))

(declare-fun lt!1969465 () ListMap!6823)

(assert (=> d!1543398 (invariantList!1798 (toList!7438 lt!1969465))))

(declare-fun e!3012029 () ListMap!6823)

(assert (=> d!1543398 (= lt!1969465 e!3012029)))

(declare-fun c!821464 () Bool)

(assert (=> d!1543398 (= c!821464 (is-Cons!54909 (t!362529 (toList!7437 lm!2280))))))

(assert (=> d!1543398 (forall!12559 (t!362529 (toList!7437 lm!2280)) lambda!235472)))

(assert (=> d!1543398 (= (extractMap!2663 (t!362529 (toList!7437 lm!2280))) lt!1969465)))

(declare-fun b!4820820 () Bool)

(assert (=> b!4820820 (= e!3012029 (addToMapMapFromBucket!1783 (_2!32342 (h!61343 (t!362529 (toList!7437 lm!2280)))) (extractMap!2663 (t!362529 (t!362529 (toList!7437 lm!2280))))))))

(declare-fun b!4820821 () Bool)

(assert (=> b!4820821 (= e!3012029 (ListMap!6824 Nil!54908))))

(assert (= (and d!1543398 c!821464) b!4820820))

(assert (= (and d!1543398 (not c!821464)) b!4820821))

(declare-fun m!5808228 () Bool)

(assert (=> d!1543398 m!5808228))

(declare-fun m!5808230 () Bool)

(assert (=> d!1543398 m!5808230))

(declare-fun m!5808232 () Bool)

(assert (=> b!4820820 m!5808232))

(assert (=> b!4820820 m!5808232))

(declare-fun m!5808234 () Bool)

(assert (=> b!4820820 m!5808234))

(assert (=> b!4820733 d!1543398))

(declare-fun d!1543400 () Bool)

(declare-fun tail!9386 (List!55033) List!55033)

(assert (=> d!1543400 (= (tail!9384 lm!2280) (ListLongMap!5946 (tail!9386 (toList!7437 lm!2280))))))

(declare-fun bs!1161602 () Bool)

(assert (= bs!1161602 d!1543400))

(declare-fun m!5808236 () Bool)

(assert (=> bs!1161602 m!5808236))

(assert (=> b!4820733 d!1543400))

(declare-fun d!1543402 () Bool)

(declare-fun e!3012034 () Bool)

(assert (=> d!1543402 e!3012034))

(declare-fun res!2051650 () Bool)

(assert (=> d!1543402 (=> res!2051650 e!3012034)))

(declare-fun lt!1969475 () Bool)

(assert (=> d!1543402 (= res!2051650 (not lt!1969475))))

(declare-fun lt!1969474 () Bool)

(assert (=> d!1543402 (= lt!1969475 lt!1969474)))

(declare-fun lt!1969477 () Unit!142307)

(declare-fun e!3012035 () Unit!142307)

(assert (=> d!1543402 (= lt!1969477 e!3012035)))

(declare-fun c!821467 () Bool)

(assert (=> d!1543402 (= c!821467 lt!1969474)))

(declare-fun containsKey!4319 (List!55033 (_ BitVec 64)) Bool)

(assert (=> d!1543402 (= lt!1969474 (containsKey!4319 (toList!7437 lm!2280) lt!1969396))))

(assert (=> d!1543402 (= (contains!18715 lm!2280 lt!1969396) lt!1969475)))

(declare-fun b!4820828 () Bool)

(declare-fun lt!1969476 () Unit!142307)

(assert (=> b!4820828 (= e!3012035 lt!1969476)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2377 (List!55033 (_ BitVec 64)) Unit!142307)

(assert (=> b!4820828 (= lt!1969476 (lemmaContainsKeyImpliesGetValueByKeyDefined!2377 (toList!7437 lm!2280) lt!1969396))))

(declare-datatypes ((Option!13465 0))(
  ( (None!13464) (Some!13464 (v!49133 List!55032)) )
))
(declare-fun isDefined!10580 (Option!13465) Bool)

(declare-fun getValueByKey!2592 (List!55033 (_ BitVec 64)) Option!13465)

(assert (=> b!4820828 (isDefined!10580 (getValueByKey!2592 (toList!7437 lm!2280) lt!1969396))))

(declare-fun b!4820829 () Bool)

(declare-fun Unit!142313 () Unit!142307)

(assert (=> b!4820829 (= e!3012035 Unit!142313)))

(declare-fun b!4820830 () Bool)

(assert (=> b!4820830 (= e!3012034 (isDefined!10580 (getValueByKey!2592 (toList!7437 lm!2280) lt!1969396)))))

(assert (= (and d!1543402 c!821467) b!4820828))

(assert (= (and d!1543402 (not c!821467)) b!4820829))

(assert (= (and d!1543402 (not res!2051650)) b!4820830))

(declare-fun m!5808238 () Bool)

(assert (=> d!1543402 m!5808238))

(declare-fun m!5808240 () Bool)

(assert (=> b!4820828 m!5808240))

(declare-fun m!5808242 () Bool)

(assert (=> b!4820828 m!5808242))

(assert (=> b!4820828 m!5808242))

(declare-fun m!5808244 () Bool)

(assert (=> b!4820828 m!5808244))

(assert (=> b!4820830 m!5808242))

(assert (=> b!4820830 m!5808242))

(assert (=> b!4820830 m!5808244))

(assert (=> b!4820732 d!1543402))

(declare-fun d!1543404 () Bool)

(declare-fun hash!5339 (Hashable!7241 K!16592) (_ BitVec 64))

(assert (=> d!1543404 (= (hash!5337 hashF!1509 key!5428) (hash!5339 hashF!1509 key!5428))))

(declare-fun bs!1161603 () Bool)

(assert (= bs!1161603 d!1543404))

(declare-fun m!5808246 () Bool)

(assert (=> bs!1161603 m!5808246))

(assert (=> b!4820732 d!1543404))

(declare-fun d!1543406 () Bool)

(declare-fun res!2051655 () Bool)

(declare-fun e!3012040 () Bool)

(assert (=> d!1543406 (=> res!2051655 e!3012040)))

(assert (=> d!1543406 (= res!2051655 (and (is-Cons!54908 (apply!13328 lm!2280 lt!1969396)) (= (_1!32341 (h!61342 (apply!13328 lm!2280 lt!1969396))) key!5428)))))

(assert (=> d!1543406 (= (containsKey!4316 (apply!13328 lm!2280 lt!1969396) key!5428) e!3012040)))

(declare-fun b!4820835 () Bool)

(declare-fun e!3012041 () Bool)

(assert (=> b!4820835 (= e!3012040 e!3012041)))

(declare-fun res!2051656 () Bool)

(assert (=> b!4820835 (=> (not res!2051656) (not e!3012041))))

(assert (=> b!4820835 (= res!2051656 (is-Cons!54908 (apply!13328 lm!2280 lt!1969396)))))

(declare-fun b!4820836 () Bool)

(assert (=> b!4820836 (= e!3012041 (containsKey!4316 (t!362528 (apply!13328 lm!2280 lt!1969396)) key!5428))))

(assert (= (and d!1543406 (not res!2051655)) b!4820835))

(assert (= (and b!4820835 res!2051656) b!4820836))

(declare-fun m!5808248 () Bool)

(assert (=> b!4820836 m!5808248))

(assert (=> b!4820730 d!1543406))

(declare-fun d!1543408 () Bool)

(declare-fun get!18795 (Option!13465) List!55032)

(assert (=> d!1543408 (= (apply!13328 lm!2280 lt!1969396) (get!18795 (getValueByKey!2592 (toList!7437 lm!2280) lt!1969396)))))

(declare-fun bs!1161604 () Bool)

(assert (= bs!1161604 d!1543408))

(assert (=> bs!1161604 m!5808242))

(assert (=> bs!1161604 m!5808242))

(declare-fun m!5808250 () Bool)

(assert (=> bs!1161604 m!5808250))

(assert (=> b!4820730 d!1543408))

(declare-fun d!1543410 () Bool)

(declare-fun res!2051661 () Bool)

(declare-fun e!3012046 () Bool)

(assert (=> d!1543410 (=> res!2051661 e!3012046)))

(assert (=> d!1543410 (= res!2051661 (is-Nil!54909 (toList!7437 lm!2280)))))

(assert (=> d!1543410 (= (forall!12559 (toList!7437 lm!2280) lambda!235459) e!3012046)))

(declare-fun b!4820841 () Bool)

(declare-fun e!3012047 () Bool)

(assert (=> b!4820841 (= e!3012046 e!3012047)))

(declare-fun res!2051662 () Bool)

(assert (=> b!4820841 (=> (not res!2051662) (not e!3012047))))

(declare-fun dynLambda!22189 (Int tuple2!58096) Bool)

(assert (=> b!4820841 (= res!2051662 (dynLambda!22189 lambda!235459 (h!61343 (toList!7437 lm!2280))))))

(declare-fun b!4820842 () Bool)

(assert (=> b!4820842 (= e!3012047 (forall!12559 (t!362529 (toList!7437 lm!2280)) lambda!235459))))

(assert (= (and d!1543410 (not res!2051661)) b!4820841))

(assert (= (and b!4820841 res!2051662) b!4820842))

(declare-fun b_lambda!189035 () Bool)

(assert (=> (not b_lambda!189035) (not b!4820841)))

(declare-fun m!5808252 () Bool)

(assert (=> b!4820841 m!5808252))

(declare-fun m!5808254 () Bool)

(assert (=> b!4820842 m!5808254))

(assert (=> start!499540 d!1543410))

(declare-fun d!1543412 () Bool)

(declare-fun isStrictlySorted!969 (List!55033) Bool)

(assert (=> d!1543412 (= (inv!70493 lm!2280) (isStrictlySorted!969 (toList!7437 lm!2280)))))

(declare-fun bs!1161605 () Bool)

(assert (= bs!1161605 d!1543412))

(declare-fun m!5808256 () Bool)

(assert (=> bs!1161605 m!5808256))

(assert (=> start!499540 d!1543412))

(declare-fun b!4820847 () Bool)

(declare-fun e!3012050 () Bool)

(declare-fun tp!1362341 () Bool)

(declare-fun tp!1362342 () Bool)

(assert (=> b!4820847 (= e!3012050 (and tp!1362341 tp!1362342))))

(assert (=> b!4820728 (= tp!1362333 e!3012050)))

(assert (= (and b!4820728 (is-Cons!54909 (toList!7437 lm!2280))) b!4820847))

(declare-fun b_lambda!189037 () Bool)

(assert (= b_lambda!189035 (or start!499540 b_lambda!189037)))

(declare-fun bs!1161607 () Bool)

(declare-fun d!1543414 () Bool)

(assert (= bs!1161607 (and d!1543414 start!499540)))

(assert (=> bs!1161607 (= (dynLambda!22189 lambda!235459 (h!61343 (toList!7437 lm!2280))) (noDuplicateKeys!2433 (_2!32342 (h!61343 (toList!7437 lm!2280)))))))

(assert (=> bs!1161607 m!5808138))

(assert (=> b!4820841 d!1543414))

(push 1)

(assert (not b!4820780))

(assert (not b!4820775))

(assert (not d!1543398))

(assert (not b!4820774))

(assert (not b!4820818))

(assert (not b!4820820))

(assert (not d!1543408))

(assert (not bs!1161607))

(assert (not b!4820828))

(assert (not b!4820819))

(assert (not bm!336090))

(assert (not b!4820836))

(assert (not d!1543388))

(assert (not d!1543392))

(assert (not b!4820776))

(assert (not d!1543412))

(assert (not b_lambda!189037))

(assert (not b!4820777))

(assert (not b!4820847))

(assert (not b!4820773))

(assert (not d!1543402))

(assert (not b!4820842))

(assert (not b!4820779))

(assert (not d!1543404))

(assert tp_is_empty!34381)

(assert (not d!1543386))

(assert (not d!1543400))

(assert (not b!4820830))

(assert (not b!4820812))

(assert (not d!1543390))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

