; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489332 () Bool)

(assert start!489332)

(declare-fun b!4774869 () Bool)

(declare-fun e!2980892 () Bool)

(assert (=> b!4774869 (= e!2980892 (not true))))

(declare-datatypes ((K!15362 0))(
  ( (K!15363 (val!20595 Int)) )
))
(declare-datatypes ((V!15608 0))(
  ( (V!15609 (val!20596 Int)) )
))
(declare-datatypes ((tuple2!56164 0))(
  ( (tuple2!56165 (_1!31376 K!15362) (_2!31376 V!15608)) )
))
(declare-datatypes ((List!53941 0))(
  ( (Nil!53817) (Cons!53817 (h!60231 tuple2!56164) (t!361391 List!53941)) )
))
(declare-fun lt!1937907 () List!53941)

(declare-fun key!6641 () K!15362)

(declare-datatypes ((Option!12830 0))(
  ( (None!12829) (Some!12829 (v!47982 tuple2!56164)) )
))
(declare-fun isDefined!9975 (Option!12830) Bool)

(declare-fun getPair!737 (List!53941 K!15362) Option!12830)

(assert (=> b!4774869 (isDefined!9975 (getPair!737 lt!1937907 key!6641))))

(declare-fun lambda!226396 () Int)

(declare-datatypes ((tuple2!56166 0))(
  ( (tuple2!56167 (_1!31377 (_ BitVec 64)) (_2!31377 List!53941)) )
))
(declare-fun lt!1937909 () tuple2!56166)

(declare-datatypes ((Unit!138805 0))(
  ( (Unit!138806) )
))
(declare-fun lt!1937904 () Unit!138805)

(declare-datatypes ((List!53942 0))(
  ( (Nil!53818) (Cons!53818 (h!60232 tuple2!56166) (t!361392 List!53942)) )
))
(declare-datatypes ((ListLongMap!4999 0))(
  ( (ListLongMap!5000 (toList!6581 List!53942)) )
))
(declare-fun lm!2709 () ListLongMap!4999)

(declare-fun forallContained!3974 (List!53942 Int tuple2!56166) Unit!138805)

(assert (=> b!4774869 (= lt!1937904 (forallContained!3974 (toList!6581 lm!2709) lambda!226396 lt!1937909))))

(declare-datatypes ((Hashable!6749 0))(
  ( (HashableExt!6748 (__x!32772 Int)) )
))
(declare-fun hashF!1687 () Hashable!6749)

(declare-fun lt!1937910 () Unit!138805)

(declare-fun lemmaInGenMapThenGetPairDefined!511 (ListLongMap!4999 K!15362 Hashable!6749) Unit!138805)

(assert (=> b!4774869 (= lt!1937910 (lemmaInGenMapThenGetPairDefined!511 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1937906 () Unit!138805)

(assert (=> b!4774869 (= lt!1937906 (forallContained!3974 (toList!6581 lm!2709) lambda!226396 lt!1937909))))

(declare-fun contains!17276 (List!53942 tuple2!56166) Bool)

(assert (=> b!4774869 (contains!17276 (toList!6581 lm!2709) lt!1937909)))

(declare-fun lt!1937903 () (_ BitVec 64))

(assert (=> b!4774869 (= lt!1937909 (tuple2!56167 lt!1937903 lt!1937907))))

(declare-fun lt!1937908 () Unit!138805)

(declare-fun lemmaGetValueImpliesTupleContained!540 (ListLongMap!4999 (_ BitVec 64) List!53941) Unit!138805)

(assert (=> b!4774869 (= lt!1937908 (lemmaGetValueImpliesTupleContained!540 lm!2709 lt!1937903 lt!1937907))))

(declare-fun apply!12812 (ListLongMap!4999 (_ BitVec 64)) List!53941)

(assert (=> b!4774869 (= lt!1937907 (apply!12812 lm!2709 lt!1937903))))

(declare-fun contains!17277 (ListLongMap!4999 (_ BitVec 64)) Bool)

(assert (=> b!4774869 (contains!17277 lm!2709 lt!1937903)))

(declare-fun hash!4719 (Hashable!6749 K!15362) (_ BitVec 64))

(assert (=> b!4774869 (= lt!1937903 (hash!4719 hashF!1687 key!6641))))

(declare-fun lt!1937902 () Unit!138805)

(declare-fun lemmaInGenMapThenLongMapContainsHash!953 (ListLongMap!4999 K!15362 Hashable!6749) Unit!138805)

(assert (=> b!4774869 (= lt!1937902 (lemmaInGenMapThenLongMapContainsHash!953 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6057 0))(
  ( (ListMap!6058 (toList!6582 List!53941)) )
))
(declare-fun contains!17278 (ListMap!6057 K!15362) Bool)

(declare-fun extractMap!2280 (List!53942) ListMap!6057)

(assert (=> b!4774869 (contains!17278 (extractMap!2280 (toList!6581 lm!2709)) key!6641)))

(declare-fun lt!1937905 () Unit!138805)

(declare-fun lemmaListContainsThenExtractedMapContains!601 (ListLongMap!4999 K!15362 Hashable!6749) Unit!138805)

(assert (=> b!4774869 (= lt!1937905 (lemmaListContainsThenExtractedMapContains!601 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4774870 () Bool)

(declare-fun e!2980891 () Bool)

(declare-fun tp!1357017 () Bool)

(assert (=> b!4774870 (= e!2980891 tp!1357017)))

(declare-fun res!2026017 () Bool)

(assert (=> start!489332 (=> (not res!2026017) (not e!2980892))))

(declare-fun forall!12017 (List!53942 Int) Bool)

(assert (=> start!489332 (= res!2026017 (forall!12017 (toList!6581 lm!2709) lambda!226396))))

(assert (=> start!489332 e!2980892))

(declare-fun inv!69389 (ListLongMap!4999) Bool)

(assert (=> start!489332 (and (inv!69389 lm!2709) e!2980891)))

(assert (=> start!489332 true))

(declare-fun tp_is_empty!32933 () Bool)

(assert (=> start!489332 tp_is_empty!32933))

(declare-fun b!4774868 () Bool)

(declare-fun res!2026019 () Bool)

(assert (=> b!4774868 (=> (not res!2026019) (not e!2980892))))

(declare-fun containsKeyBiggerList!405 (List!53942 K!15362) Bool)

(assert (=> b!4774868 (= res!2026019 (containsKeyBiggerList!405 (toList!6581 lm!2709) key!6641))))

(declare-fun b!4774867 () Bool)

(declare-fun res!2026018 () Bool)

(assert (=> b!4774867 (=> (not res!2026018) (not e!2980892))))

(declare-fun allKeysSameHashInMap!2154 (ListLongMap!4999 Hashable!6749) Bool)

(assert (=> b!4774867 (= res!2026018 (allKeysSameHashInMap!2154 lm!2709 hashF!1687))))

(assert (= (and start!489332 res!2026017) b!4774867))

(assert (= (and b!4774867 res!2026018) b!4774868))

(assert (= (and b!4774868 res!2026019) b!4774869))

(assert (= start!489332 b!4774870))

(declare-fun m!5749116 () Bool)

(assert (=> b!4774869 m!5749116))

(declare-fun m!5749118 () Bool)

(assert (=> b!4774869 m!5749118))

(declare-fun m!5749120 () Bool)

(assert (=> b!4774869 m!5749120))

(declare-fun m!5749122 () Bool)

(assert (=> b!4774869 m!5749122))

(declare-fun m!5749124 () Bool)

(assert (=> b!4774869 m!5749124))

(declare-fun m!5749126 () Bool)

(assert (=> b!4774869 m!5749126))

(declare-fun m!5749128 () Bool)

(assert (=> b!4774869 m!5749128))

(assert (=> b!4774869 m!5749124))

(declare-fun m!5749130 () Bool)

(assert (=> b!4774869 m!5749130))

(declare-fun m!5749132 () Bool)

(assert (=> b!4774869 m!5749132))

(assert (=> b!4774869 m!5749130))

(declare-fun m!5749134 () Bool)

(assert (=> b!4774869 m!5749134))

(assert (=> b!4774869 m!5749122))

(declare-fun m!5749136 () Bool)

(assert (=> b!4774869 m!5749136))

(declare-fun m!5749138 () Bool)

(assert (=> b!4774869 m!5749138))

(declare-fun m!5749140 () Bool)

(assert (=> b!4774869 m!5749140))

(declare-fun m!5749142 () Bool)

(assert (=> start!489332 m!5749142))

(declare-fun m!5749144 () Bool)

(assert (=> start!489332 m!5749144))

(declare-fun m!5749146 () Bool)

(assert (=> b!4774868 m!5749146))

(declare-fun m!5749148 () Bool)

(assert (=> b!4774867 m!5749148))

(push 1)

(assert (not start!489332))

(assert (not b!4774868))

(assert (not b!4774867))

(assert (not b!4774869))

(assert tp_is_empty!32933)

(assert (not b!4774870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

