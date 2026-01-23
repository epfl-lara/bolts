; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489308 () Bool)

(assert start!489308)

(declare-fun res!2025903 () Bool)

(declare-fun e!2980813 () Bool)

(assert (=> start!489308 (=> (not res!2025903) (not e!2980813))))

(declare-datatypes ((K!15332 0))(
  ( (K!15333 (val!20571 Int)) )
))
(declare-datatypes ((V!15578 0))(
  ( (V!15579 (val!20572 Int)) )
))
(declare-datatypes ((tuple2!56116 0))(
  ( (tuple2!56117 (_1!31352 K!15332) (_2!31352 V!15578)) )
))
(declare-datatypes ((List!53917 0))(
  ( (Nil!53793) (Cons!53793 (h!60207 tuple2!56116) (t!361367 List!53917)) )
))
(declare-datatypes ((tuple2!56118 0))(
  ( (tuple2!56119 (_1!31353 (_ BitVec 64)) (_2!31353 List!53917)) )
))
(declare-datatypes ((List!53918 0))(
  ( (Nil!53794) (Cons!53794 (h!60208 tuple2!56118) (t!361368 List!53918)) )
))
(declare-datatypes ((ListLongMap!4975 0))(
  ( (ListLongMap!4976 (toList!6557 List!53918)) )
))
(declare-fun lm!2709 () ListLongMap!4975)

(declare-fun lambda!226336 () Int)

(declare-fun forall!12005 (List!53918 Int) Bool)

(assert (=> start!489308 (= res!2025903 (forall!12005 (toList!6557 lm!2709) lambda!226336))))

(assert (=> start!489308 e!2980813))

(declare-fun e!2980814 () Bool)

(declare-fun inv!69359 (ListLongMap!4975) Bool)

(assert (=> start!489308 (and (inv!69359 lm!2709) e!2980814)))

(assert (=> start!489308 true))

(declare-fun tp_is_empty!32909 () Bool)

(assert (=> start!489308 tp_is_empty!32909))

(declare-fun b!4774720 () Bool)

(declare-fun tp!1356981 () Bool)

(assert (=> b!4774720 (= e!2980814 tp!1356981)))

(declare-fun b!4774718 () Bool)

(declare-fun res!2025905 () Bool)

(assert (=> b!4774718 (=> (not res!2025905) (not e!2980813))))

(declare-fun key!6641 () K!15332)

(declare-fun containsKeyBiggerList!393 (List!53918 K!15332) Bool)

(assert (=> b!4774718 (= res!2025905 (containsKeyBiggerList!393 (toList!6557 lm!2709) key!6641))))

(declare-fun b!4774719 () Bool)

(assert (=> b!4774719 (= e!2980813 (not true))))

(declare-datatypes ((Hashable!6737 0))(
  ( (HashableExt!6736 (__x!32760 Int)) )
))
(declare-fun hashF!1687 () Hashable!6737)

(declare-fun contains!17244 (ListLongMap!4975 (_ BitVec 64)) Bool)

(declare-fun hash!4707 (Hashable!6737 K!15332) (_ BitVec 64))

(assert (=> b!4774719 (contains!17244 lm!2709 (hash!4707 hashF!1687 key!6641))))

(declare-datatypes ((Unit!138781 0))(
  ( (Unit!138782) )
))
(declare-fun lt!1937708 () Unit!138781)

(declare-fun lemmaInGenMapThenLongMapContainsHash!941 (ListLongMap!4975 K!15332 Hashable!6737) Unit!138781)

(assert (=> b!4774719 (= lt!1937708 (lemmaInGenMapThenLongMapContainsHash!941 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6033 0))(
  ( (ListMap!6034 (toList!6558 List!53917)) )
))
(declare-fun contains!17245 (ListMap!6033 K!15332) Bool)

(declare-fun extractMap!2268 (List!53918) ListMap!6033)

(assert (=> b!4774719 (contains!17245 (extractMap!2268 (toList!6557 lm!2709)) key!6641)))

(declare-fun lt!1937709 () Unit!138781)

(declare-fun lemmaListContainsThenExtractedMapContains!589 (ListLongMap!4975 K!15332 Hashable!6737) Unit!138781)

(assert (=> b!4774719 (= lt!1937709 (lemmaListContainsThenExtractedMapContains!589 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4774717 () Bool)

(declare-fun res!2025904 () Bool)

(assert (=> b!4774717 (=> (not res!2025904) (not e!2980813))))

(declare-fun allKeysSameHashInMap!2142 (ListLongMap!4975 Hashable!6737) Bool)

(assert (=> b!4774717 (= res!2025904 (allKeysSameHashInMap!2142 lm!2709 hashF!1687))))

(assert (= (and start!489308 res!2025903) b!4774717))

(assert (= (and b!4774717 res!2025904) b!4774718))

(assert (= (and b!4774718 res!2025905) b!4774719))

(assert (= start!489308 b!4774720))

(declare-fun m!5748816 () Bool)

(assert (=> start!489308 m!5748816))

(declare-fun m!5748818 () Bool)

(assert (=> start!489308 m!5748818))

(declare-fun m!5748820 () Bool)

(assert (=> b!4774718 m!5748820))

(declare-fun m!5748822 () Bool)

(assert (=> b!4774719 m!5748822))

(declare-fun m!5748824 () Bool)

(assert (=> b!4774719 m!5748824))

(declare-fun m!5748826 () Bool)

(assert (=> b!4774719 m!5748826))

(declare-fun m!5748828 () Bool)

(assert (=> b!4774719 m!5748828))

(assert (=> b!4774719 m!5748822))

(declare-fun m!5748830 () Bool)

(assert (=> b!4774719 m!5748830))

(assert (=> b!4774719 m!5748828))

(declare-fun m!5748832 () Bool)

(assert (=> b!4774719 m!5748832))

(declare-fun m!5748834 () Bool)

(assert (=> b!4774717 m!5748834))

(push 1)

(assert (not b!4774720))

(assert (not b!4774717))

(assert (not start!489308))

(assert tp_is_empty!32909)

(assert (not b!4774718))

(assert (not b!4774719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

