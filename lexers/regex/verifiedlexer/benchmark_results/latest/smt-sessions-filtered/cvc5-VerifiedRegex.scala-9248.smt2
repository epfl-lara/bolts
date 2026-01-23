; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490496 () Bool)

(assert start!490496)

(declare-fun bs!1151538 () Bool)

(declare-fun b!4779704 () Bool)

(assert (= bs!1151538 (and b!4779704 start!490496)))

(declare-fun lambda!227767 () Int)

(declare-fun lambda!227766 () Int)

(assert (=> bs!1151538 (not (= lambda!227767 lambda!227766))))

(assert (=> b!4779704 true))

(declare-fun b!4779701 () Bool)

(declare-fun e!2983974 () Bool)

(declare-fun e!2983971 () Bool)

(assert (=> b!4779701 (= e!2983974 (not e!2983971))))

(declare-fun res!2029131 () Bool)

(assert (=> b!4779701 (=> res!2029131 e!2983971)))

(declare-datatypes ((K!15527 0))(
  ( (K!15528 (val!20727 Int)) )
))
(declare-datatypes ((V!15773 0))(
  ( (V!15774 (val!20728 Int)) )
))
(declare-datatypes ((tuple2!56428 0))(
  ( (tuple2!56429 (_1!31508 K!15527) (_2!31508 V!15773)) )
))
(declare-datatypes ((Option!12907 0))(
  ( (None!12906) (Some!12906 (v!48097 tuple2!56428)) )
))
(declare-fun lt!1942395 () Option!12907)

(declare-fun v!11584 () V!15773)

(declare-fun get!18333 (Option!12907) tuple2!56428)

(assert (=> b!4779701 (= res!2029131 (not (= (_2!31508 (get!18333 lt!1942395)) v!11584)))))

(declare-fun isDefined!10051 (Option!12907) Bool)

(assert (=> b!4779701 (isDefined!10051 lt!1942395)))

(declare-datatypes ((List!54087 0))(
  ( (Nil!53963) (Cons!53963 (h!60381 tuple2!56428) (t!361537 List!54087)) )
))
(declare-fun lt!1942386 () List!54087)

(declare-fun key!6641 () K!15527)

(declare-fun getPair!787 (List!54087 K!15527) Option!12907)

(assert (=> b!4779701 (= lt!1942395 (getPair!787 lt!1942386 key!6641))))

(declare-datatypes ((tuple2!56430 0))(
  ( (tuple2!56431 (_1!31509 (_ BitVec 64)) (_2!31509 List!54087)) )
))
(declare-fun lt!1942391 () tuple2!56430)

(declare-datatypes ((Unit!139157 0))(
  ( (Unit!139158) )
))
(declare-fun lt!1942393 () Unit!139157)

(declare-datatypes ((List!54088 0))(
  ( (Nil!53964) (Cons!53964 (h!60382 tuple2!56430) (t!361538 List!54088)) )
))
(declare-datatypes ((ListLongMap!5131 0))(
  ( (ListLongMap!5132 (toList!6709 List!54088)) )
))
(declare-fun lm!2709 () ListLongMap!5131)

(declare-fun forallContained!4043 (List!54088 Int tuple2!56430) Unit!139157)

(assert (=> b!4779701 (= lt!1942393 (forallContained!4043 (toList!6709 lm!2709) lambda!227766 lt!1942391))))

(declare-datatypes ((Hashable!6815 0))(
  ( (HashableExt!6814 (__x!32838 Int)) )
))
(declare-fun hashF!1687 () Hashable!6815)

(declare-fun lt!1942389 () Unit!139157)

(declare-fun lemmaInGenMapThenGetPairDefined!561 (ListLongMap!5131 K!15527 Hashable!6815) Unit!139157)

(assert (=> b!4779701 (= lt!1942389 (lemmaInGenMapThenGetPairDefined!561 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1942390 () Unit!139157)

(assert (=> b!4779701 (= lt!1942390 (forallContained!4043 (toList!6709 lm!2709) lambda!227766 lt!1942391))))

(declare-fun contains!17477 (List!54088 tuple2!56430) Bool)

(assert (=> b!4779701 (contains!17477 (toList!6709 lm!2709) lt!1942391)))

(declare-fun lt!1942387 () (_ BitVec 64))

(assert (=> b!4779701 (= lt!1942391 (tuple2!56431 lt!1942387 lt!1942386))))

(declare-fun lt!1942385 () Unit!139157)

(declare-fun lemmaGetValueImpliesTupleContained!594 (ListLongMap!5131 (_ BitVec 64) List!54087) Unit!139157)

(assert (=> b!4779701 (= lt!1942385 (lemmaGetValueImpliesTupleContained!594 lm!2709 lt!1942387 lt!1942386))))

(declare-fun apply!12870 (ListLongMap!5131 (_ BitVec 64)) List!54087)

(assert (=> b!4779701 (= lt!1942386 (apply!12870 lm!2709 lt!1942387))))

(declare-fun contains!17478 (ListLongMap!5131 (_ BitVec 64)) Bool)

(assert (=> b!4779701 (contains!17478 lm!2709 lt!1942387)))

(declare-fun hash!4796 (Hashable!6815 K!15527) (_ BitVec 64))

(assert (=> b!4779701 (= lt!1942387 (hash!4796 hashF!1687 key!6641))))

(declare-fun lt!1942394 () Unit!139157)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1011 (ListLongMap!5131 K!15527 Hashable!6815) Unit!139157)

(assert (=> b!4779701 (= lt!1942394 (lemmaInGenMapThenLongMapContainsHash!1011 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6181 0))(
  ( (ListMap!6182 (toList!6710 List!54087)) )
))
(declare-fun contains!17479 (ListMap!6181 K!15527) Bool)

(declare-fun extractMap!2342 (List!54088) ListMap!6181)

(assert (=> b!4779701 (contains!17479 (extractMap!2342 (toList!6709 lm!2709)) key!6641)))

(declare-fun lt!1942392 () Unit!139157)

(declare-fun lemmaListContainsThenExtractedMapContains!663 (ListLongMap!5131 K!15527 Hashable!6815) Unit!139157)

(assert (=> b!4779701 (= lt!1942392 (lemmaListContainsThenExtractedMapContains!663 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4779702 () Bool)

(declare-fun e!2983972 () Bool)

(declare-fun forall!12099 (List!54088 Int) Bool)

(assert (=> b!4779702 (= e!2983972 (forall!12099 (toList!6709 lm!2709) lambda!227766))))

(assert (=> b!4779702 false))

(declare-fun lt!1942388 () Unit!139157)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!421 (ListLongMap!5131 K!15527 Hashable!6815) Unit!139157)

(assert (=> b!4779702 (= lt!1942388 (lemmaNotInItsHashBucketThenNotInMap!421 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2029132 () Bool)

(assert (=> start!490496 (=> (not res!2029132) (not e!2983974))))

(assert (=> start!490496 (= res!2029132 (forall!12099 (toList!6709 lm!2709) lambda!227766))))

(assert (=> start!490496 e!2983974))

(declare-fun e!2983973 () Bool)

(declare-fun inv!69554 (ListLongMap!5131) Bool)

(assert (=> start!490496 (and (inv!69554 lm!2709) e!2983973)))

(assert (=> start!490496 true))

(declare-fun tp_is_empty!33161 () Bool)

(assert (=> start!490496 tp_is_empty!33161))

(declare-fun tp_is_empty!33163 () Bool)

(assert (=> start!490496 tp_is_empty!33163))

(declare-fun b!4779703 () Bool)

(declare-fun res!2029134 () Bool)

(assert (=> b!4779703 (=> res!2029134 e!2983971)))

(assert (=> b!4779703 (= res!2029134 (or (not (is-Cons!53964 (toList!6709 lm!2709))) (not (= (_1!31509 (h!60382 (toList!6709 lm!2709))) lt!1942387))))))

(assert (=> b!4779704 (= e!2983971 e!2983972)))

(declare-fun res!2029133 () Bool)

(assert (=> b!4779704 (=> res!2029133 e!2983972)))

(declare-fun containsKey!3789 (List!54087 K!15527) Bool)

(assert (=> b!4779704 (= res!2029133 (containsKey!3789 (_2!31509 (h!60382 (toList!6709 lm!2709))) key!6641))))

(declare-fun lt!1942384 () Unit!139157)

(assert (=> b!4779704 (= lt!1942384 (forallContained!4043 (toList!6709 lm!2709) lambda!227767 (h!60382 (toList!6709 lm!2709))))))

(declare-fun b!4779705 () Bool)

(declare-fun tp!1357347 () Bool)

(assert (=> b!4779705 (= e!2983973 tp!1357347)))

(declare-fun b!4779706 () Bool)

(declare-fun res!2029135 () Bool)

(assert (=> b!4779706 (=> (not res!2029135) (not e!2983974))))

(declare-fun allKeysSameHashInMap!2220 (ListLongMap!5131 Hashable!6815) Bool)

(assert (=> b!4779706 (= res!2029135 (allKeysSameHashInMap!2220 lm!2709 hashF!1687))))

(declare-fun b!4779707 () Bool)

(declare-fun res!2029136 () Bool)

(assert (=> b!4779707 (=> (not res!2029136) (not e!2983974))))

(declare-fun containsKeyBiggerList!471 (List!54088 K!15527) Bool)

(assert (=> b!4779707 (= res!2029136 (containsKeyBiggerList!471 (toList!6709 lm!2709) key!6641))))

(assert (= (and start!490496 res!2029132) b!4779706))

(assert (= (and b!4779706 res!2029135) b!4779707))

(assert (= (and b!4779707 res!2029136) b!4779701))

(assert (= (and b!4779701 (not res!2029131)) b!4779703))

(assert (= (and b!4779703 (not res!2029134)) b!4779704))

(assert (= (and b!4779704 (not res!2029133)) b!4779702))

(assert (= start!490496 b!4779705))

(declare-fun m!5756206 () Bool)

(assert (=> b!4779701 m!5756206))

(declare-fun m!5756208 () Bool)

(assert (=> b!4779701 m!5756208))

(declare-fun m!5756210 () Bool)

(assert (=> b!4779701 m!5756210))

(declare-fun m!5756212 () Bool)

(assert (=> b!4779701 m!5756212))

(declare-fun m!5756214 () Bool)

(assert (=> b!4779701 m!5756214))

(assert (=> b!4779701 m!5756208))

(declare-fun m!5756216 () Bool)

(assert (=> b!4779701 m!5756216))

(declare-fun m!5756218 () Bool)

(assert (=> b!4779701 m!5756218))

(declare-fun m!5756220 () Bool)

(assert (=> b!4779701 m!5756220))

(assert (=> b!4779701 m!5756216))

(declare-fun m!5756222 () Bool)

(assert (=> b!4779701 m!5756222))

(declare-fun m!5756224 () Bool)

(assert (=> b!4779701 m!5756224))

(declare-fun m!5756226 () Bool)

(assert (=> b!4779701 m!5756226))

(declare-fun m!5756228 () Bool)

(assert (=> b!4779701 m!5756228))

(declare-fun m!5756230 () Bool)

(assert (=> b!4779701 m!5756230))

(declare-fun m!5756232 () Bool)

(assert (=> b!4779701 m!5756232))

(declare-fun m!5756234 () Bool)

(assert (=> b!4779707 m!5756234))

(declare-fun m!5756236 () Bool)

(assert (=> b!4779704 m!5756236))

(declare-fun m!5756238 () Bool)

(assert (=> b!4779704 m!5756238))

(declare-fun m!5756240 () Bool)

(assert (=> b!4779702 m!5756240))

(declare-fun m!5756242 () Bool)

(assert (=> b!4779702 m!5756242))

(assert (=> start!490496 m!5756240))

(declare-fun m!5756244 () Bool)

(assert (=> start!490496 m!5756244))

(declare-fun m!5756246 () Bool)

(assert (=> b!4779706 m!5756246))

(push 1)

(assert tp_is_empty!33163)

(assert (not b!4779705))

(assert tp_is_empty!33161)

(assert (not b!4779704))

(assert (not b!4779701))

(assert (not start!490496))

(assert (not b!4779706))

(assert (not b!4779707))

(assert (not b!4779702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

