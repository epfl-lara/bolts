; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489328 () Bool)

(assert start!489328)

(declare-fun b!4774844 () Bool)

(declare-fun res!2026000 () Bool)

(declare-fun e!2980880 () Bool)

(assert (=> b!4774844 (=> (not res!2026000) (not e!2980880))))

(declare-datatypes ((K!15357 0))(
  ( (K!15358 (val!20591 Int)) )
))
(declare-datatypes ((V!15603 0))(
  ( (V!15604 (val!20592 Int)) )
))
(declare-datatypes ((tuple2!56156 0))(
  ( (tuple2!56157 (_1!31372 K!15357) (_2!31372 V!15603)) )
))
(declare-datatypes ((List!53937 0))(
  ( (Nil!53813) (Cons!53813 (h!60227 tuple2!56156) (t!361387 List!53937)) )
))
(declare-datatypes ((tuple2!56158 0))(
  ( (tuple2!56159 (_1!31373 (_ BitVec 64)) (_2!31373 List!53937)) )
))
(declare-datatypes ((List!53938 0))(
  ( (Nil!53814) (Cons!53814 (h!60228 tuple2!56158) (t!361388 List!53938)) )
))
(declare-datatypes ((ListLongMap!4995 0))(
  ( (ListLongMap!4996 (toList!6577 List!53938)) )
))
(declare-fun lm!2709 () ListLongMap!4995)

(declare-fun key!6641 () K!15357)

(declare-fun containsKeyBiggerList!403 (List!53938 K!15357) Bool)

(assert (=> b!4774844 (= res!2026000 (containsKeyBiggerList!403 (toList!6577 lm!2709) key!6641))))

(declare-fun res!2025999 () Bool)

(assert (=> start!489328 (=> (not res!2025999) (not e!2980880))))

(declare-fun lambda!226384 () Int)

(declare-fun forall!12015 (List!53938 Int) Bool)

(assert (=> start!489328 (= res!2025999 (forall!12015 (toList!6577 lm!2709) lambda!226384))))

(assert (=> start!489328 e!2980880))

(declare-fun e!2980879 () Bool)

(declare-fun inv!69384 (ListLongMap!4995) Bool)

(assert (=> start!489328 (and (inv!69384 lm!2709) e!2980879)))

(assert (=> start!489328 true))

(declare-fun tp_is_empty!32929 () Bool)

(assert (=> start!489328 tp_is_empty!32929))

(declare-fun b!4774843 () Bool)

(declare-fun res!2026001 () Bool)

(assert (=> b!4774843 (=> (not res!2026001) (not e!2980880))))

(declare-datatypes ((Hashable!6747 0))(
  ( (HashableExt!6746 (__x!32770 Int)) )
))
(declare-fun hashF!1687 () Hashable!6747)

(declare-fun allKeysSameHashInMap!2152 (ListLongMap!4995 Hashable!6747) Bool)

(assert (=> b!4774843 (= res!2026001 (allKeysSameHashInMap!2152 lm!2709 hashF!1687))))

(declare-fun b!4774846 () Bool)

(declare-fun tp!1357011 () Bool)

(assert (=> b!4774846 (= e!2980879 tp!1357011)))

(declare-fun b!4774845 () Bool)

(assert (=> b!4774845 (= e!2980880 (not true))))

(declare-datatypes ((Unit!138801 0))(
  ( (Unit!138802) )
))
(declare-fun lt!1937860 () Unit!138801)

(declare-fun lt!1937862 () tuple2!56158)

(declare-fun forallContained!3972 (List!53938 Int tuple2!56158) Unit!138801)

(assert (=> b!4774845 (= lt!1937860 (forallContained!3972 (toList!6577 lm!2709) lambda!226384 lt!1937862))))

(declare-fun contains!17270 (List!53938 tuple2!56158) Bool)

(assert (=> b!4774845 (contains!17270 (toList!6577 lm!2709) lt!1937862)))

(declare-fun lt!1937859 () (_ BitVec 64))

(declare-fun lt!1937861 () List!53937)

(assert (=> b!4774845 (= lt!1937862 (tuple2!56159 lt!1937859 lt!1937861))))

(declare-fun lt!1937858 () Unit!138801)

(declare-fun lemmaGetValueImpliesTupleContained!538 (ListLongMap!4995 (_ BitVec 64) List!53937) Unit!138801)

(assert (=> b!4774845 (= lt!1937858 (lemmaGetValueImpliesTupleContained!538 lm!2709 lt!1937859 lt!1937861))))

(declare-fun apply!12810 (ListLongMap!4995 (_ BitVec 64)) List!53937)

(assert (=> b!4774845 (= lt!1937861 (apply!12810 lm!2709 lt!1937859))))

(declare-fun contains!17271 (ListLongMap!4995 (_ BitVec 64)) Bool)

(assert (=> b!4774845 (contains!17271 lm!2709 lt!1937859)))

(declare-fun hash!4717 (Hashable!6747 K!15357) (_ BitVec 64))

(assert (=> b!4774845 (= lt!1937859 (hash!4717 hashF!1687 key!6641))))

(declare-fun lt!1937857 () Unit!138801)

(declare-fun lemmaInGenMapThenLongMapContainsHash!951 (ListLongMap!4995 K!15357 Hashable!6747) Unit!138801)

(assert (=> b!4774845 (= lt!1937857 (lemmaInGenMapThenLongMapContainsHash!951 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6053 0))(
  ( (ListMap!6054 (toList!6578 List!53937)) )
))
(declare-fun contains!17272 (ListMap!6053 K!15357) Bool)

(declare-fun extractMap!2278 (List!53938) ListMap!6053)

(assert (=> b!4774845 (contains!17272 (extractMap!2278 (toList!6577 lm!2709)) key!6641)))

(declare-fun lt!1937856 () Unit!138801)

(declare-fun lemmaListContainsThenExtractedMapContains!599 (ListLongMap!4995 K!15357 Hashable!6747) Unit!138801)

(assert (=> b!4774845 (= lt!1937856 (lemmaListContainsThenExtractedMapContains!599 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!489328 res!2025999) b!4774843))

(assert (= (and b!4774843 res!2026001) b!4774844))

(assert (= (and b!4774844 res!2026000) b!4774845))

(assert (= start!489328 b!4774846))

(declare-fun m!5749060 () Bool)

(assert (=> b!4774844 m!5749060))

(declare-fun m!5749062 () Bool)

(assert (=> start!489328 m!5749062))

(declare-fun m!5749064 () Bool)

(assert (=> start!489328 m!5749064))

(declare-fun m!5749066 () Bool)

(assert (=> b!4774843 m!5749066))

(declare-fun m!5749068 () Bool)

(assert (=> b!4774845 m!5749068))

(declare-fun m!5749070 () Bool)

(assert (=> b!4774845 m!5749070))

(declare-fun m!5749072 () Bool)

(assert (=> b!4774845 m!5749072))

(declare-fun m!5749074 () Bool)

(assert (=> b!4774845 m!5749074))

(declare-fun m!5749076 () Bool)

(assert (=> b!4774845 m!5749076))

(declare-fun m!5749078 () Bool)

(assert (=> b!4774845 m!5749078))

(declare-fun m!5749080 () Bool)

(assert (=> b!4774845 m!5749080))

(declare-fun m!5749082 () Bool)

(assert (=> b!4774845 m!5749082))

(declare-fun m!5749084 () Bool)

(assert (=> b!4774845 m!5749084))

(assert (=> b!4774845 m!5749074))

(declare-fun m!5749086 () Bool)

(assert (=> b!4774845 m!5749086))

(push 1)

(assert (not start!489328))

(assert (not b!4774843))

(assert (not b!4774845))

(assert (not b!4774846))

(assert tp_is_empty!32929)

(assert (not b!4774844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

