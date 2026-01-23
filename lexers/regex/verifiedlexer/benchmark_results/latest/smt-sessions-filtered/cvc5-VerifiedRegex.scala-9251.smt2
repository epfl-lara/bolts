; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490700 () Bool)

(assert start!490700)

(declare-fun res!2029603 () Bool)

(declare-fun e!2984493 () Bool)

(assert (=> start!490700 (=> (not res!2029603) (not e!2984493))))

(declare-datatypes ((K!15542 0))(
  ( (K!15543 (val!20739 Int)) )
))
(declare-datatypes ((V!15788 0))(
  ( (V!15789 (val!20740 Int)) )
))
(declare-datatypes ((tuple2!56452 0))(
  ( (tuple2!56453 (_1!31520 K!15542) (_2!31520 V!15788)) )
))
(declare-datatypes ((List!54101 0))(
  ( (Nil!53977) (Cons!53977 (h!60397 tuple2!56452) (t!361551 List!54101)) )
))
(declare-datatypes ((tuple2!56454 0))(
  ( (tuple2!56455 (_1!31521 (_ BitVec 64)) (_2!31521 List!54101)) )
))
(declare-datatypes ((List!54102 0))(
  ( (Nil!53978) (Cons!53978 (h!60398 tuple2!56454) (t!361552 List!54102)) )
))
(declare-datatypes ((ListLongMap!5143 0))(
  ( (ListLongMap!5144 (toList!6721 List!54102)) )
))
(declare-fun lm!2709 () ListLongMap!5143)

(declare-fun lambda!227976 () Int)

(declare-fun forall!12109 (List!54102 Int) Bool)

(assert (=> start!490700 (= res!2029603 (forall!12109 (toList!6721 lm!2709) lambda!227976))))

(assert (=> start!490700 e!2984493))

(declare-fun e!2984494 () Bool)

(declare-fun inv!69569 (ListLongMap!5143) Bool)

(assert (=> start!490700 (and (inv!69569 lm!2709) e!2984494)))

(assert (=> start!490700 true))

(declare-fun tp_is_empty!33185 () Bool)

(assert (=> start!490700 tp_is_empty!33185))

(declare-fun tp_is_empty!33187 () Bool)

(assert (=> start!490700 tp_is_empty!33187))

(declare-fun b!4780497 () Bool)

(assert (=> b!4780497 (= e!2984493 (not true))))

(declare-fun lt!1943037 () List!54101)

(declare-fun key!6641 () K!15542)

(declare-datatypes ((Option!12917 0))(
  ( (None!12916) (Some!12916 (v!48115 tuple2!56452)) )
))
(declare-fun isDefined!10061 (Option!12917) Bool)

(declare-fun getPair!793 (List!54101 K!15542) Option!12917)

(assert (=> b!4780497 (isDefined!10061 (getPair!793 lt!1943037 key!6641))))

(declare-datatypes ((Unit!139209 0))(
  ( (Unit!139210) )
))
(declare-fun lt!1943030 () Unit!139209)

(declare-fun lt!1943032 () tuple2!56454)

(declare-fun forallContained!4053 (List!54102 Int tuple2!56454) Unit!139209)

(assert (=> b!4780497 (= lt!1943030 (forallContained!4053 (toList!6721 lm!2709) lambda!227976 lt!1943032))))

(declare-fun lt!1943034 () Unit!139209)

(declare-datatypes ((Hashable!6821 0))(
  ( (HashableExt!6820 (__x!32844 Int)) )
))
(declare-fun hashF!1687 () Hashable!6821)

(declare-fun lemmaInGenMapThenGetPairDefined!567 (ListLongMap!5143 K!15542 Hashable!6821) Unit!139209)

(assert (=> b!4780497 (= lt!1943034 (lemmaInGenMapThenGetPairDefined!567 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1943031 () Unit!139209)

(assert (=> b!4780497 (= lt!1943031 (forallContained!4053 (toList!6721 lm!2709) lambda!227976 lt!1943032))))

(declare-fun contains!17499 (List!54102 tuple2!56454) Bool)

(assert (=> b!4780497 (contains!17499 (toList!6721 lm!2709) lt!1943032)))

(declare-fun lt!1943036 () (_ BitVec 64))

(assert (=> b!4780497 (= lt!1943032 (tuple2!56455 lt!1943036 lt!1943037))))

(declare-fun lt!1943038 () Unit!139209)

(declare-fun lemmaGetValueImpliesTupleContained!600 (ListLongMap!5143 (_ BitVec 64) List!54101) Unit!139209)

(assert (=> b!4780497 (= lt!1943038 (lemmaGetValueImpliesTupleContained!600 lm!2709 lt!1943036 lt!1943037))))

(declare-fun apply!12876 (ListLongMap!5143 (_ BitVec 64)) List!54101)

(assert (=> b!4780497 (= lt!1943037 (apply!12876 lm!2709 lt!1943036))))

(declare-fun contains!17500 (ListLongMap!5143 (_ BitVec 64)) Bool)

(assert (=> b!4780497 (contains!17500 lm!2709 lt!1943036)))

(declare-fun hash!4804 (Hashable!6821 K!15542) (_ BitVec 64))

(assert (=> b!4780497 (= lt!1943036 (hash!4804 hashF!1687 key!6641))))

(declare-fun lt!1943035 () Unit!139209)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1017 (ListLongMap!5143 K!15542 Hashable!6821) Unit!139209)

(assert (=> b!4780497 (= lt!1943035 (lemmaInGenMapThenLongMapContainsHash!1017 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6193 0))(
  ( (ListMap!6194 (toList!6722 List!54101)) )
))
(declare-fun contains!17501 (ListMap!6193 K!15542) Bool)

(declare-fun extractMap!2348 (List!54102) ListMap!6193)

(assert (=> b!4780497 (contains!17501 (extractMap!2348 (toList!6721 lm!2709)) key!6641)))

(declare-fun lt!1943033 () Unit!139209)

(declare-fun lemmaListContainsThenExtractedMapContains!669 (ListLongMap!5143 K!15542 Hashable!6821) Unit!139209)

(assert (=> b!4780497 (= lt!1943033 (lemmaListContainsThenExtractedMapContains!669 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4780495 () Bool)

(declare-fun res!2029602 () Bool)

(assert (=> b!4780495 (=> (not res!2029602) (not e!2984493))))

(declare-fun allKeysSameHashInMap!2226 (ListLongMap!5143 Hashable!6821) Bool)

(assert (=> b!4780495 (= res!2029602 (allKeysSameHashInMap!2226 lm!2709 hashF!1687))))

(declare-fun b!4780498 () Bool)

(declare-fun tp!1357387 () Bool)

(assert (=> b!4780498 (= e!2984494 tp!1357387)))

(declare-fun b!4780496 () Bool)

(declare-fun res!2029601 () Bool)

(assert (=> b!4780496 (=> (not res!2029601) (not e!2984493))))

(declare-fun containsKeyBiggerList!477 (List!54102 K!15542) Bool)

(assert (=> b!4780496 (= res!2029601 (containsKeyBiggerList!477 (toList!6721 lm!2709) key!6641))))

(assert (= (and start!490700 res!2029603) b!4780495))

(assert (= (and b!4780495 res!2029602) b!4780496))

(assert (= (and b!4780496 res!2029601) b!4780497))

(assert (= start!490700 b!4780498))

(declare-fun m!5757254 () Bool)

(assert (=> start!490700 m!5757254))

(declare-fun m!5757256 () Bool)

(assert (=> start!490700 m!5757256))

(declare-fun m!5757258 () Bool)

(assert (=> b!4780497 m!5757258))

(declare-fun m!5757260 () Bool)

(assert (=> b!4780497 m!5757260))

(declare-fun m!5757262 () Bool)

(assert (=> b!4780497 m!5757262))

(declare-fun m!5757264 () Bool)

(assert (=> b!4780497 m!5757264))

(declare-fun m!5757266 () Bool)

(assert (=> b!4780497 m!5757266))

(declare-fun m!5757268 () Bool)

(assert (=> b!4780497 m!5757268))

(declare-fun m!5757270 () Bool)

(assert (=> b!4780497 m!5757270))

(declare-fun m!5757272 () Bool)

(assert (=> b!4780497 m!5757272))

(declare-fun m!5757274 () Bool)

(assert (=> b!4780497 m!5757274))

(declare-fun m!5757276 () Bool)

(assert (=> b!4780497 m!5757276))

(assert (=> b!4780497 m!5757262))

(declare-fun m!5757278 () Bool)

(assert (=> b!4780497 m!5757278))

(assert (=> b!4780497 m!5757270))

(declare-fun m!5757280 () Bool)

(assert (=> b!4780497 m!5757280))

(assert (=> b!4780497 m!5757258))

(declare-fun m!5757282 () Bool)

(assert (=> b!4780497 m!5757282))

(declare-fun m!5757284 () Bool)

(assert (=> b!4780495 m!5757284))

(declare-fun m!5757286 () Bool)

(assert (=> b!4780496 m!5757286))

(push 1)

(assert (not b!4780495))

(assert (not b!4780496))

(assert (not start!490700))

(assert tp_is_empty!33185)

(assert tp_is_empty!33187)

(assert (not b!4780498))

(assert (not b!4780497))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

