; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489320 () Bool)

(assert start!489320)

(declare-fun b!4774791 () Bool)

(declare-fun e!2980850 () Bool)

(declare-datatypes ((K!15347 0))(
  ( (K!15348 (val!20583 Int)) )
))
(declare-datatypes ((V!15593 0))(
  ( (V!15594 (val!20584 Int)) )
))
(declare-datatypes ((tuple2!56140 0))(
  ( (tuple2!56141 (_1!31364 K!15347) (_2!31364 V!15593)) )
))
(declare-datatypes ((List!53929 0))(
  ( (Nil!53805) (Cons!53805 (h!60219 tuple2!56140) (t!361379 List!53929)) )
))
(declare-datatypes ((tuple2!56142 0))(
  ( (tuple2!56143 (_1!31365 (_ BitVec 64)) (_2!31365 List!53929)) )
))
(declare-datatypes ((List!53930 0))(
  ( (Nil!53806) (Cons!53806 (h!60220 tuple2!56142) (t!361380 List!53930)) )
))
(declare-datatypes ((ListLongMap!4987 0))(
  ( (ListLongMap!4988 (toList!6569 List!53930)) )
))
(declare-fun lm!2709 () ListLongMap!4987)

(declare-fun lambda!226356 () Int)

(declare-fun forall!12011 (List!53930 Int) Bool)

(assert (=> b!4774791 (= e!2980850 (not (forall!12011 (toList!6569 lm!2709) lambda!226356)))))

(declare-fun lt!1937782 () (_ BitVec 64))

(declare-fun lt!1937781 () List!53929)

(declare-fun contains!17258 (List!53930 tuple2!56142) Bool)

(assert (=> b!4774791 (contains!17258 (toList!6569 lm!2709) (tuple2!56143 lt!1937782 lt!1937781))))

(declare-datatypes ((Unit!138793 0))(
  ( (Unit!138794) )
))
(declare-fun lt!1937780 () Unit!138793)

(declare-fun lemmaGetValueImpliesTupleContained!534 (ListLongMap!4987 (_ BitVec 64) List!53929) Unit!138793)

(assert (=> b!4774791 (= lt!1937780 (lemmaGetValueImpliesTupleContained!534 lm!2709 lt!1937782 lt!1937781))))

(declare-fun apply!12806 (ListLongMap!4987 (_ BitVec 64)) List!53929)

(assert (=> b!4774791 (= lt!1937781 (apply!12806 lm!2709 lt!1937782))))

(declare-fun contains!17259 (ListLongMap!4987 (_ BitVec 64)) Bool)

(assert (=> b!4774791 (contains!17259 lm!2709 lt!1937782)))

(declare-datatypes ((Hashable!6743 0))(
  ( (HashableExt!6742 (__x!32766 Int)) )
))
(declare-fun hashF!1687 () Hashable!6743)

(declare-fun key!6641 () K!15347)

(declare-fun hash!4713 (Hashable!6743 K!15347) (_ BitVec 64))

(assert (=> b!4774791 (= lt!1937782 (hash!4713 hashF!1687 key!6641))))

(declare-fun lt!1937783 () Unit!138793)

(declare-fun lemmaInGenMapThenLongMapContainsHash!947 (ListLongMap!4987 K!15347 Hashable!6743) Unit!138793)

(assert (=> b!4774791 (= lt!1937783 (lemmaInGenMapThenLongMapContainsHash!947 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6045 0))(
  ( (ListMap!6046 (toList!6570 List!53929)) )
))
(declare-fun contains!17260 (ListMap!6045 K!15347) Bool)

(declare-fun extractMap!2274 (List!53930) ListMap!6045)

(assert (=> b!4774791 (contains!17260 (extractMap!2274 (toList!6569 lm!2709)) key!6641)))

(declare-fun lt!1937784 () Unit!138793)

(declare-fun lemmaListContainsThenExtractedMapContains!595 (ListLongMap!4987 K!15347 Hashable!6743) Unit!138793)

(assert (=> b!4774791 (= lt!1937784 (lemmaListContainsThenExtractedMapContains!595 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4774789 () Bool)

(declare-fun res!2025957 () Bool)

(assert (=> b!4774789 (=> (not res!2025957) (not e!2980850))))

(declare-fun allKeysSameHashInMap!2148 (ListLongMap!4987 Hashable!6743) Bool)

(assert (=> b!4774789 (= res!2025957 (allKeysSameHashInMap!2148 lm!2709 hashF!1687))))

(declare-fun b!4774792 () Bool)

(declare-fun e!2980849 () Bool)

(declare-fun tp!1356999 () Bool)

(assert (=> b!4774792 (= e!2980849 tp!1356999)))

(declare-fun b!4774790 () Bool)

(declare-fun res!2025959 () Bool)

(assert (=> b!4774790 (=> (not res!2025959) (not e!2980850))))

(declare-fun containsKeyBiggerList!399 (List!53930 K!15347) Bool)

(assert (=> b!4774790 (= res!2025959 (containsKeyBiggerList!399 (toList!6569 lm!2709) key!6641))))

(declare-fun res!2025958 () Bool)

(assert (=> start!489320 (=> (not res!2025958) (not e!2980850))))

(assert (=> start!489320 (= res!2025958 (forall!12011 (toList!6569 lm!2709) lambda!226356))))

(assert (=> start!489320 e!2980850))

(declare-fun inv!69374 (ListLongMap!4987) Bool)

(assert (=> start!489320 (and (inv!69374 lm!2709) e!2980849)))

(assert (=> start!489320 true))

(declare-fun tp_is_empty!32921 () Bool)

(assert (=> start!489320 tp_is_empty!32921))

(assert (= (and start!489320 res!2025958) b!4774789))

(assert (= (and b!4774789 res!2025957) b!4774790))

(assert (= (and b!4774790 res!2025959) b!4774791))

(assert (= start!489320 b!4774792))

(declare-fun m!5748952 () Bool)

(assert (=> b!4774791 m!5748952))

(declare-fun m!5748954 () Bool)

(assert (=> b!4774791 m!5748954))

(declare-fun m!5748956 () Bool)

(assert (=> b!4774791 m!5748956))

(declare-fun m!5748958 () Bool)

(assert (=> b!4774791 m!5748958))

(declare-fun m!5748960 () Bool)

(assert (=> b!4774791 m!5748960))

(declare-fun m!5748962 () Bool)

(assert (=> b!4774791 m!5748962))

(declare-fun m!5748964 () Bool)

(assert (=> b!4774791 m!5748964))

(assert (=> b!4774791 m!5748962))

(declare-fun m!5748966 () Bool)

(assert (=> b!4774791 m!5748966))

(declare-fun m!5748968 () Bool)

(assert (=> b!4774791 m!5748968))

(declare-fun m!5748970 () Bool)

(assert (=> b!4774791 m!5748970))

(declare-fun m!5748972 () Bool)

(assert (=> b!4774789 m!5748972))

(declare-fun m!5748974 () Bool)

(assert (=> b!4774790 m!5748974))

(assert (=> start!489320 m!5748960))

(declare-fun m!5748976 () Bool)

(assert (=> start!489320 m!5748976))

(push 1)

(assert (not b!4774792))

(assert (not b!4774790))

(assert (not b!4774791))

(assert (not b!4774789))

(assert (not start!489320))

(assert tp_is_empty!32921)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

