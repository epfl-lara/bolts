; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489324 () Bool)

(assert start!489324)

(declare-fun b!4774815 () Bool)

(declare-fun res!2025978 () Bool)

(declare-fun e!2980863 () Bool)

(assert (=> b!4774815 (=> (not res!2025978) (not e!2980863))))

(declare-datatypes ((K!15352 0))(
  ( (K!15353 (val!20587 Int)) )
))
(declare-datatypes ((V!15598 0))(
  ( (V!15599 (val!20588 Int)) )
))
(declare-datatypes ((tuple2!56148 0))(
  ( (tuple2!56149 (_1!31368 K!15352) (_2!31368 V!15598)) )
))
(declare-datatypes ((List!53933 0))(
  ( (Nil!53809) (Cons!53809 (h!60223 tuple2!56148) (t!361383 List!53933)) )
))
(declare-datatypes ((tuple2!56150 0))(
  ( (tuple2!56151 (_1!31369 (_ BitVec 64)) (_2!31369 List!53933)) )
))
(declare-datatypes ((List!53934 0))(
  ( (Nil!53810) (Cons!53810 (h!60224 tuple2!56150) (t!361384 List!53934)) )
))
(declare-datatypes ((ListLongMap!4991 0))(
  ( (ListLongMap!4992 (toList!6573 List!53934)) )
))
(declare-fun lm!2709 () ListLongMap!4991)

(declare-datatypes ((Hashable!6745 0))(
  ( (HashableExt!6744 (__x!32768 Int)) )
))
(declare-fun hashF!1687 () Hashable!6745)

(declare-fun allKeysSameHashInMap!2150 (ListLongMap!4991 Hashable!6745) Bool)

(assert (=> b!4774815 (= res!2025978 (allKeysSameHashInMap!2150 lm!2709 hashF!1687))))

(declare-fun res!2025980 () Bool)

(assert (=> start!489324 (=> (not res!2025980) (not e!2980863))))

(declare-fun lambda!226370 () Int)

(declare-fun forall!12013 (List!53934 Int) Bool)

(assert (=> start!489324 (= res!2025980 (forall!12013 (toList!6573 lm!2709) lambda!226370))))

(assert (=> start!489324 e!2980863))

(declare-fun e!2980865 () Bool)

(declare-fun inv!69379 (ListLongMap!4991) Bool)

(assert (=> start!489324 (and (inv!69379 lm!2709) e!2980865)))

(assert (=> start!489324 true))

(declare-fun tp_is_empty!32925 () Bool)

(assert (=> start!489324 tp_is_empty!32925))

(declare-fun b!4774816 () Bool)

(declare-fun tp!1357005 () Bool)

(assert (=> b!4774816 (= e!2980865 tp!1357005)))

(declare-fun b!4774817 () Bool)

(declare-fun res!2025979 () Bool)

(assert (=> b!4774817 (=> (not res!2025979) (not e!2980863))))

(declare-fun key!6641 () K!15352)

(declare-fun containsKeyBiggerList!401 (List!53934 K!15352) Bool)

(assert (=> b!4774817 (= res!2025979 (containsKeyBiggerList!401 (toList!6573 lm!2709) key!6641))))

(declare-fun b!4774818 () Bool)

(declare-fun e!2980864 () Bool)

(assert (=> b!4774818 (= e!2980864 (forall!12013 (toList!6573 lm!2709) lambda!226370))))

(declare-fun b!4774819 () Bool)

(assert (=> b!4774819 (= e!2980863 (not e!2980864))))

(declare-fun res!2025977 () Bool)

(assert (=> b!4774819 (=> res!2025977 e!2980864)))

(assert (=> b!4774819 (= res!2025977 (not (forall!12013 (toList!6573 lm!2709) lambda!226370)))))

(declare-fun lt!1937819 () tuple2!56150)

(declare-datatypes ((Unit!138797 0))(
  ( (Unit!138798) )
))
(declare-fun lt!1937816 () Unit!138797)

(declare-fun forallContained!3970 (List!53934 Int tuple2!56150) Unit!138797)

(assert (=> b!4774819 (= lt!1937816 (forallContained!3970 (toList!6573 lm!2709) lambda!226370 lt!1937819))))

(declare-fun contains!17264 (List!53934 tuple2!56150) Bool)

(assert (=> b!4774819 (contains!17264 (toList!6573 lm!2709) lt!1937819)))

(declare-fun lt!1937817 () (_ BitVec 64))

(declare-fun lt!1937814 () List!53933)

(assert (=> b!4774819 (= lt!1937819 (tuple2!56151 lt!1937817 lt!1937814))))

(declare-fun lt!1937818 () Unit!138797)

(declare-fun lemmaGetValueImpliesTupleContained!536 (ListLongMap!4991 (_ BitVec 64) List!53933) Unit!138797)

(assert (=> b!4774819 (= lt!1937818 (lemmaGetValueImpliesTupleContained!536 lm!2709 lt!1937817 lt!1937814))))

(declare-fun apply!12808 (ListLongMap!4991 (_ BitVec 64)) List!53933)

(assert (=> b!4774819 (= lt!1937814 (apply!12808 lm!2709 lt!1937817))))

(declare-fun contains!17265 (ListLongMap!4991 (_ BitVec 64)) Bool)

(assert (=> b!4774819 (contains!17265 lm!2709 lt!1937817)))

(declare-fun hash!4715 (Hashable!6745 K!15352) (_ BitVec 64))

(assert (=> b!4774819 (= lt!1937817 (hash!4715 hashF!1687 key!6641))))

(declare-fun lt!1937820 () Unit!138797)

(declare-fun lemmaInGenMapThenLongMapContainsHash!949 (ListLongMap!4991 K!15352 Hashable!6745) Unit!138797)

(assert (=> b!4774819 (= lt!1937820 (lemmaInGenMapThenLongMapContainsHash!949 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6049 0))(
  ( (ListMap!6050 (toList!6574 List!53933)) )
))
(declare-fun contains!17266 (ListMap!6049 K!15352) Bool)

(declare-fun extractMap!2276 (List!53934) ListMap!6049)

(assert (=> b!4774819 (contains!17266 (extractMap!2276 (toList!6573 lm!2709)) key!6641)))

(declare-fun lt!1937815 () Unit!138797)

(declare-fun lemmaListContainsThenExtractedMapContains!597 (ListLongMap!4991 K!15352 Hashable!6745) Unit!138797)

(assert (=> b!4774819 (= lt!1937815 (lemmaListContainsThenExtractedMapContains!597 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!489324 res!2025980) b!4774815))

(assert (= (and b!4774815 res!2025978) b!4774817))

(assert (= (and b!4774817 res!2025979) b!4774819))

(assert (= (and b!4774819 (not res!2025977)) b!4774818))

(assert (= start!489324 b!4774816))

(declare-fun m!5749004 () Bool)

(assert (=> b!4774817 m!5749004))

(declare-fun m!5749006 () Bool)

(assert (=> b!4774819 m!5749006))

(declare-fun m!5749008 () Bool)

(assert (=> b!4774819 m!5749008))

(declare-fun m!5749010 () Bool)

(assert (=> b!4774819 m!5749010))

(declare-fun m!5749012 () Bool)

(assert (=> b!4774819 m!5749012))

(declare-fun m!5749014 () Bool)

(assert (=> b!4774819 m!5749014))

(declare-fun m!5749016 () Bool)

(assert (=> b!4774819 m!5749016))

(declare-fun m!5749018 () Bool)

(assert (=> b!4774819 m!5749018))

(declare-fun m!5749020 () Bool)

(assert (=> b!4774819 m!5749020))

(assert (=> b!4774819 m!5749010))

(declare-fun m!5749022 () Bool)

(assert (=> b!4774819 m!5749022))

(declare-fun m!5749024 () Bool)

(assert (=> b!4774819 m!5749024))

(declare-fun m!5749026 () Bool)

(assert (=> b!4774819 m!5749026))

(declare-fun m!5749028 () Bool)

(assert (=> b!4774815 m!5749028))

(assert (=> start!489324 m!5749016))

(declare-fun m!5749030 () Bool)

(assert (=> start!489324 m!5749030))

(assert (=> b!4774818 m!5749016))

(push 1)

(assert (not b!4774819))

(assert (not start!489324))

(assert tp_is_empty!32925)

(assert (not b!4774815))

(assert (not b!4774818))

(assert (not b!4774816))

(assert (not b!4774817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

