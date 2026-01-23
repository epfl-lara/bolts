; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497766 () Bool)

(assert start!497766)

(declare-fun res!2047415 () Bool)

(declare-fun e!3007449 () Bool)

(assert (=> start!497766 (=> (not res!2047415) (not e!3007449))))

(declare-datatypes ((K!16272 0))(
  ( (K!16273 (val!21323 Int)) )
))
(declare-datatypes ((V!16518 0))(
  ( (V!16519 (val!21324 Int)) )
))
(declare-datatypes ((tuple2!57582 0))(
  ( (tuple2!57583 (_1!32085 K!16272) (_2!32085 V!16518)) )
))
(declare-datatypes ((List!54758 0))(
  ( (Nil!54634) (Cons!54634 (h!61066 tuple2!57582) (t!362254 List!54758)) )
))
(declare-datatypes ((tuple2!57584 0))(
  ( (tuple2!57585 (_1!32086 (_ BitVec 64)) (_2!32086 List!54758)) )
))
(declare-datatypes ((List!54759 0))(
  ( (Nil!54635) (Cons!54635 (h!61067 tuple2!57584) (t!362255 List!54759)) )
))
(declare-datatypes ((ListLongMap!5689 0))(
  ( (ListLongMap!5690 (toList!7209 List!54759)) )
))
(declare-fun lm!1254 () ListLongMap!5689)

(declare-fun lambda!233968 () Int)

(declare-fun forall!12417 (List!54759 Int) Bool)

(assert (=> start!497766 (= res!2047415 (forall!12417 (toList!7209 lm!1254) lambda!233968))))

(assert (=> start!497766 e!3007449))

(declare-fun e!3007451 () Bool)

(declare-fun inv!70173 (ListLongMap!5689) Bool)

(assert (=> start!497766 (and (inv!70173 lm!1254) e!3007451)))

(assert (=> start!497766 true))

(declare-fun tp_is_empty!34095 () Bool)

(assert (=> start!497766 tp_is_empty!34095))

(declare-fun b!4813651 () Bool)

(declare-fun res!2047417 () Bool)

(assert (=> b!4813651 (=> (not res!2047417) (not e!3007449))))

(declare-fun key!2670 () K!16272)

(declare-datatypes ((ListMap!6623 0))(
  ( (ListMap!6624 (toList!7210 List!54758)) )
))
(declare-fun contains!18393 (ListMap!6623 K!16272) Bool)

(declare-fun extractMap!2563 (List!54759) ListMap!6623)

(assert (=> b!4813651 (= res!2047417 (contains!18393 (extractMap!2563 (toList!7209 lm!1254)) key!2670))))

(declare-fun b!4813652 () Bool)

(assert (=> b!4813652 (= e!3007449 (not true))))

(declare-datatypes ((Unit!141733 0))(
  ( (Unit!141734) )
))
(declare-fun lt!1964576 () Unit!141733)

(declare-fun e!3007450 () Unit!141733)

(assert (=> b!4813652 (= lt!1964576 e!3007450)))

(declare-fun lt!1964577 () List!54758)

(declare-fun c!820409 () Bool)

(declare-fun lt!1964574 () (_ BitVec 64))

(declare-fun contains!18394 (List!54759 tuple2!57584) Bool)

(assert (=> b!4813652 (= c!820409 (not (contains!18394 (toList!7209 lm!1254) (tuple2!57585 lt!1964574 lt!1964577))))))

(declare-fun apply!13218 (ListLongMap!5689 (_ BitVec 64)) List!54758)

(assert (=> b!4813652 (= lt!1964577 (apply!13218 lm!1254 lt!1964574))))

(declare-fun contains!18395 (ListLongMap!5689 (_ BitVec 64)) Bool)

(assert (=> b!4813652 (contains!18395 lm!1254 lt!1964574)))

(declare-datatypes ((Hashable!7113 0))(
  ( (HashableExt!7112 (__x!33388 Int)) )
))
(declare-fun hashF!938 () Hashable!7113)

(declare-fun hash!5176 (Hashable!7113 K!16272) (_ BitVec 64))

(assert (=> b!4813652 (= lt!1964574 (hash!5176 hashF!938 key!2670))))

(declare-fun lt!1964579 () Unit!141733)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1051 (ListLongMap!5689 K!16272 Hashable!7113) Unit!141733)

(assert (=> b!4813652 (= lt!1964579 (lemmaInGenMapThenLongMapContainsHash!1051 lm!1254 key!2670 hashF!938))))

(declare-fun b!4813653 () Bool)

(declare-fun tp!1361638 () Bool)

(assert (=> b!4813653 (= e!3007451 tp!1361638)))

(declare-fun b!4813654 () Bool)

(declare-fun res!2047416 () Bool)

(assert (=> b!4813654 (=> (not res!2047416) (not e!3007449))))

(declare-fun allKeysSameHashInMap!2429 (ListLongMap!5689 Hashable!7113) Bool)

(assert (=> b!4813654 (= res!2047416 (allKeysSameHashInMap!2429 lm!1254 hashF!938))))

(declare-fun b!4813655 () Bool)

(declare-fun Unit!141735 () Unit!141733)

(assert (=> b!4813655 (= e!3007450 Unit!141735)))

(declare-fun lt!1964578 () Unit!141733)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!304 (List!54759 (_ BitVec 64)) Unit!141733)

(assert (=> b!4813655 (= lt!1964578 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!304 (toList!7209 lm!1254) lt!1964574))))

(declare-fun containsKey!4192 (List!54759 (_ BitVec 64)) Bool)

(assert (=> b!4813655 (containsKey!4192 (toList!7209 lm!1254) lt!1964574)))

(declare-fun lt!1964575 () Unit!141733)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2310 (List!54759 (_ BitVec 64)) Unit!141733)

(assert (=> b!4813655 (= lt!1964575 (lemmaContainsKeyImpliesGetValueByKeyDefined!2310 (toList!7209 lm!1254) lt!1964574))))

(declare-datatypes ((Option!13356 0))(
  ( (None!13355) (Some!13355 (v!48988 List!54758)) )
))
(declare-fun isDefined!10493 (Option!13356) Bool)

(declare-fun getValueByKey!2523 (List!54759 (_ BitVec 64)) Option!13356)

(assert (=> b!4813655 (isDefined!10493 (getValueByKey!2523 (toList!7209 lm!1254) lt!1964574))))

(declare-fun lt!1964580 () Unit!141733)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!1021 (List!54759 (_ BitVec 64) List!54758) Unit!141733)

(assert (=> b!4813655 (= lt!1964580 (lemmaGetValueByKeyImpliesContainsTuple!1021 (toList!7209 lm!1254) lt!1964574 lt!1964577))))

(assert (=> b!4813655 false))

(declare-fun b!4813656 () Bool)

(declare-fun Unit!141736 () Unit!141733)

(assert (=> b!4813656 (= e!3007450 Unit!141736)))

(assert (= (and start!497766 res!2047415) b!4813654))

(assert (= (and b!4813654 res!2047416) b!4813651))

(assert (= (and b!4813651 res!2047417) b!4813652))

(assert (= (and b!4813652 c!820409) b!4813655))

(assert (= (and b!4813652 (not c!820409)) b!4813656))

(assert (= start!497766 b!4813653))

(declare-fun m!5799314 () Bool)

(assert (=> start!497766 m!5799314))

(declare-fun m!5799316 () Bool)

(assert (=> start!497766 m!5799316))

(declare-fun m!5799318 () Bool)

(assert (=> b!4813652 m!5799318))

(declare-fun m!5799320 () Bool)

(assert (=> b!4813652 m!5799320))

(declare-fun m!5799322 () Bool)

(assert (=> b!4813652 m!5799322))

(declare-fun m!5799324 () Bool)

(assert (=> b!4813652 m!5799324))

(declare-fun m!5799326 () Bool)

(assert (=> b!4813652 m!5799326))

(declare-fun m!5799328 () Bool)

(assert (=> b!4813651 m!5799328))

(assert (=> b!4813651 m!5799328))

(declare-fun m!5799330 () Bool)

(assert (=> b!4813651 m!5799330))

(declare-fun m!5799332 () Bool)

(assert (=> b!4813655 m!5799332))

(declare-fun m!5799334 () Bool)

(assert (=> b!4813655 m!5799334))

(declare-fun m!5799336 () Bool)

(assert (=> b!4813655 m!5799336))

(declare-fun m!5799338 () Bool)

(assert (=> b!4813655 m!5799338))

(assert (=> b!4813655 m!5799336))

(declare-fun m!5799340 () Bool)

(assert (=> b!4813655 m!5799340))

(declare-fun m!5799342 () Bool)

(assert (=> b!4813655 m!5799342))

(declare-fun m!5799344 () Bool)

(assert (=> b!4813654 m!5799344))

(push 1)

(assert (not b!4813652))

(assert (not b!4813653))

(assert (not b!4813651))

(assert (not b!4813655))

(assert (not start!497766))

(assert tp_is_empty!34095)

(assert (not b!4813654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

