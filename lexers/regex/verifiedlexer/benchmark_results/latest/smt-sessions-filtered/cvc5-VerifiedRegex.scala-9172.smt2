; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488560 () Bool)

(assert start!488560)

(declare-fun b!4771723 () Bool)

(declare-fun e!2978748 () Bool)

(declare-fun e!2978747 () Bool)

(assert (=> b!4771723 (= e!2978748 (not e!2978747))))

(declare-fun res!2023997 () Bool)

(assert (=> b!4771723 (=> res!2023997 e!2978747)))

(declare-datatypes ((K!15147 0))(
  ( (K!15148 (val!20423 Int)) )
))
(declare-datatypes ((V!15393 0))(
  ( (V!15394 (val!20424 Int)) )
))
(declare-datatypes ((tuple2!55820 0))(
  ( (tuple2!55821 (_1!31204 K!15147) (_2!31204 V!15393)) )
))
(declare-datatypes ((Option!12758 0))(
  ( (None!12757) (Some!12757 (v!47884 tuple2!55820)) )
))
(declare-fun lt!1934264 () Option!12758)

(declare-fun v!9615 () V!15393)

(declare-fun get!18130 (Option!12758) tuple2!55820)

(assert (=> b!4771723 (= res!2023997 (not (= (_2!31204 (get!18130 lt!1934264)) v!9615)))))

(declare-fun isDefined!9904 (Option!12758) Bool)

(assert (=> b!4771723 (isDefined!9904 lt!1934264)))

(declare-datatypes ((List!53759 0))(
  ( (Nil!53635) (Cons!53635 (h!60047 tuple2!55820) (t!361209 List!53759)) )
))
(declare-fun lt!1934269 () List!53759)

(declare-fun key!2872 () K!15147)

(declare-fun getPair!683 (List!53759 K!15147) Option!12758)

(assert (=> b!4771723 (= lt!1934264 (getPair!683 lt!1934269 key!2872))))

(declare-datatypes ((tuple2!55822 0))(
  ( (tuple2!55823 (_1!31205 (_ BitVec 64)) (_2!31205 List!53759)) )
))
(declare-fun lt!1934263 () tuple2!55822)

(declare-fun lambda!225286 () Int)

(declare-datatypes ((List!53760 0))(
  ( (Nil!53636) (Cons!53636 (h!60048 tuple2!55822) (t!361210 List!53760)) )
))
(declare-datatypes ((ListLongMap!4827 0))(
  ( (ListLongMap!4828 (toList!6413 List!53760)) )
))
(declare-fun lm!1309 () ListLongMap!4827)

(declare-datatypes ((Unit!138530 0))(
  ( (Unit!138531) )
))
(declare-fun lt!1934262 () Unit!138530)

(declare-fun forallContained!3908 (List!53760 Int tuple2!55822) Unit!138530)

(assert (=> b!4771723 (= lt!1934262 (forallContained!3908 (toList!6413 lm!1309) lambda!225286 lt!1934263))))

(declare-datatypes ((Hashable!6663 0))(
  ( (HashableExt!6662 (__x!32686 Int)) )
))
(declare-fun hashF!980 () Hashable!6663)

(declare-fun lt!1934261 () Unit!138530)

(declare-fun lemmaInGenMapThenGetPairDefined!457 (ListLongMap!4827 K!15147 Hashable!6663) Unit!138530)

(assert (=> b!4771723 (= lt!1934261 (lemmaInGenMapThenGetPairDefined!457 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934266 () Unit!138530)

(assert (=> b!4771723 (= lt!1934266 (forallContained!3908 (toList!6413 lm!1309) lambda!225286 lt!1934263))))

(declare-fun contains!17037 (List!53760 tuple2!55822) Bool)

(assert (=> b!4771723 (contains!17037 (toList!6413 lm!1309) lt!1934263)))

(declare-fun lt!1934270 () (_ BitVec 64))

(assert (=> b!4771723 (= lt!1934263 (tuple2!55823 lt!1934270 lt!1934269))))

(declare-fun lt!1934268 () Unit!138530)

(declare-fun lemmaGetValueImpliesTupleContained!474 (ListLongMap!4827 (_ BitVec 64) List!53759) Unit!138530)

(assert (=> b!4771723 (= lt!1934268 (lemmaGetValueImpliesTupleContained!474 lm!1309 lt!1934270 lt!1934269))))

(declare-fun apply!12708 (ListLongMap!4827 (_ BitVec 64)) List!53759)

(assert (=> b!4771723 (= lt!1934269 (apply!12708 lm!1309 lt!1934270))))

(declare-fun contains!17038 (ListLongMap!4827 (_ BitVec 64)) Bool)

(assert (=> b!4771723 (contains!17038 lm!1309 lt!1934270)))

(declare-fun hash!4638 (Hashable!6663 K!15147) (_ BitVec 64))

(assert (=> b!4771723 (= lt!1934270 (hash!4638 hashF!980 key!2872))))

(declare-fun lt!1934267 () Unit!138530)

(declare-fun lemmaInGenMapThenLongMapContainsHash!879 (ListLongMap!4827 K!15147 Hashable!6663) Unit!138530)

(assert (=> b!4771723 (= lt!1934267 (lemmaInGenMapThenLongMapContainsHash!879 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771724 () Bool)

(declare-fun res!2023999 () Bool)

(assert (=> b!4771724 (=> (not res!2023999) (not e!2978748))))

(declare-datatypes ((ListMap!5893 0))(
  ( (ListMap!5894 (toList!6414 List!53759)) )
))
(declare-fun contains!17039 (ListMap!5893 K!15147) Bool)

(declare-fun extractMap!2198 (List!53760) ListMap!5893)

(assert (=> b!4771724 (= res!2023999 (contains!17039 (extractMap!2198 (toList!6413 lm!1309)) key!2872))))

(declare-fun b!4771725 () Bool)

(declare-fun e!2978750 () Bool)

(assert (=> b!4771725 (= e!2978747 e!2978750)))

(declare-fun res!2023996 () Bool)

(assert (=> b!4771725 (=> res!2023996 e!2978750)))

(declare-fun forall!11927 (List!53760 Int) Bool)

(assert (=> b!4771725 (= res!2023996 (not (forall!11927 (toList!6413 lm!1309) lambda!225286)))))

(declare-fun getValue!3 (List!53760 K!15147) V!15393)

(assert (=> b!4771725 (= (getValue!3 (toList!6413 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934260 () Unit!138530)

(declare-fun lemmaGetValueEquivToGetPair!3 (ListLongMap!4827 K!15147 V!15393 Hashable!6663) Unit!138530)

(assert (=> b!4771725 (= lt!1934260 (lemmaGetValueEquivToGetPair!3 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!337 (List!53760 K!15147) Bool)

(assert (=> b!4771725 (containsKeyBiggerList!337 (toList!6413 lm!1309) key!2872)))

(declare-fun lt!1934265 () Unit!138530)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!195 (ListLongMap!4827 K!15147 Hashable!6663) Unit!138530)

(assert (=> b!4771725 (= lt!1934265 (lemmaInLongMapThenContainsKeyBiggerList!195 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771726 () Bool)

(assert (=> b!4771726 (= e!2978750 true)))

(declare-fun lt!1934271 () Unit!138530)

(declare-fun lemmaInGenericMapThenInLongMap!215 (ListLongMap!4827 K!15147 Hashable!6663) Unit!138530)

(assert (=> b!4771726 (= lt!1934271 (lemmaInGenericMapThenInLongMap!215 lm!1309 key!2872 hashF!980))))

(declare-fun res!2023998 () Bool)

(assert (=> start!488560 (=> (not res!2023998) (not e!2978748))))

(assert (=> start!488560 (= res!2023998 (forall!11927 (toList!6413 lm!1309) lambda!225286))))

(assert (=> start!488560 e!2978748))

(declare-fun e!2978749 () Bool)

(declare-fun inv!69174 (ListLongMap!4827) Bool)

(assert (=> start!488560 (and (inv!69174 lm!1309) e!2978749)))

(assert (=> start!488560 true))

(declare-fun tp_is_empty!32649 () Bool)

(assert (=> start!488560 tp_is_empty!32649))

(declare-fun tp_is_empty!32651 () Bool)

(assert (=> start!488560 tp_is_empty!32651))

(declare-fun b!4771727 () Bool)

(declare-fun res!2023995 () Bool)

(assert (=> b!4771727 (=> (not res!2023995) (not e!2978748))))

(declare-fun allKeysSameHashInMap!2068 (ListLongMap!4827 Hashable!6663) Bool)

(assert (=> b!4771727 (= res!2023995 (allKeysSameHashInMap!2068 lm!1309 hashF!980))))

(declare-fun b!4771728 () Bool)

(declare-fun tp!1356681 () Bool)

(assert (=> b!4771728 (= e!2978749 tp!1356681)))

(assert (= (and start!488560 res!2023998) b!4771727))

(assert (= (and b!4771727 res!2023995) b!4771724))

(assert (= (and b!4771724 res!2023999) b!4771723))

(assert (= (and b!4771723 (not res!2023997)) b!4771725))

(assert (= (and b!4771725 (not res!2023996)) b!4771726))

(assert (= start!488560 b!4771728))

(declare-fun m!5743912 () Bool)

(assert (=> b!4771723 m!5743912))

(declare-fun m!5743914 () Bool)

(assert (=> b!4771723 m!5743914))

(declare-fun m!5743916 () Bool)

(assert (=> b!4771723 m!5743916))

(declare-fun m!5743918 () Bool)

(assert (=> b!4771723 m!5743918))

(declare-fun m!5743920 () Bool)

(assert (=> b!4771723 m!5743920))

(declare-fun m!5743922 () Bool)

(assert (=> b!4771723 m!5743922))

(declare-fun m!5743924 () Bool)

(assert (=> b!4771723 m!5743924))

(assert (=> b!4771723 m!5743924))

(declare-fun m!5743926 () Bool)

(assert (=> b!4771723 m!5743926))

(declare-fun m!5743928 () Bool)

(assert (=> b!4771723 m!5743928))

(declare-fun m!5743930 () Bool)

(assert (=> b!4771723 m!5743930))

(declare-fun m!5743932 () Bool)

(assert (=> b!4771723 m!5743932))

(declare-fun m!5743934 () Bool)

(assert (=> b!4771725 m!5743934))

(declare-fun m!5743936 () Bool)

(assert (=> b!4771725 m!5743936))

(declare-fun m!5743938 () Bool)

(assert (=> b!4771725 m!5743938))

(declare-fun m!5743940 () Bool)

(assert (=> b!4771725 m!5743940))

(declare-fun m!5743942 () Bool)

(assert (=> b!4771725 m!5743942))

(declare-fun m!5743944 () Bool)

(assert (=> b!4771727 m!5743944))

(assert (=> start!488560 m!5743934))

(declare-fun m!5743946 () Bool)

(assert (=> start!488560 m!5743946))

(declare-fun m!5743948 () Bool)

(assert (=> b!4771724 m!5743948))

(assert (=> b!4771724 m!5743948))

(declare-fun m!5743950 () Bool)

(assert (=> b!4771724 m!5743950))

(declare-fun m!5743952 () Bool)

(assert (=> b!4771726 m!5743952))

(push 1)

(assert (not b!4771723))

(assert (not start!488560))

(assert (not b!4771728))

(assert (not b!4771725))

(assert (not b!4771727))

(assert tp_is_empty!32651)

(assert (not b!4771724))

(assert (not b!4771726))

(assert tp_is_empty!32649)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

