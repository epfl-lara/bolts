; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489316 () Bool)

(assert start!489316)

(declare-fun b!4774767 () Bool)

(declare-fun e!2980838 () Bool)

(assert (=> b!4774767 (= e!2980838 (not true))))

(declare-datatypes ((K!15342 0))(
  ( (K!15343 (val!20579 Int)) )
))
(declare-datatypes ((V!15588 0))(
  ( (V!15589 (val!20580 Int)) )
))
(declare-datatypes ((tuple2!56132 0))(
  ( (tuple2!56133 (_1!31360 K!15342) (_2!31360 V!15588)) )
))
(declare-datatypes ((List!53925 0))(
  ( (Nil!53801) (Cons!53801 (h!60215 tuple2!56132) (t!361375 List!53925)) )
))
(declare-datatypes ((tuple2!56134 0))(
  ( (tuple2!56135 (_1!31361 (_ BitVec 64)) (_2!31361 List!53925)) )
))
(declare-datatypes ((List!53926 0))(
  ( (Nil!53802) (Cons!53802 (h!60216 tuple2!56134) (t!361376 List!53926)) )
))
(declare-datatypes ((ListLongMap!4983 0))(
  ( (ListLongMap!4984 (toList!6565 List!53926)) )
))
(declare-fun lm!2709 () ListLongMap!4983)

(declare-fun lt!1937753 () (_ BitVec 64))

(declare-fun lt!1937752 () List!53925)

(declare-fun contains!17252 (List!53926 tuple2!56134) Bool)

(assert (=> b!4774767 (contains!17252 (toList!6565 lm!2709) (tuple2!56135 lt!1937753 lt!1937752))))

(declare-datatypes ((Unit!138789 0))(
  ( (Unit!138790) )
))
(declare-fun lt!1937750 () Unit!138789)

(declare-fun lemmaGetValueImpliesTupleContained!532 (ListLongMap!4983 (_ BitVec 64) List!53925) Unit!138789)

(assert (=> b!4774767 (= lt!1937750 (lemmaGetValueImpliesTupleContained!532 lm!2709 lt!1937753 lt!1937752))))

(declare-fun apply!12804 (ListLongMap!4983 (_ BitVec 64)) List!53925)

(assert (=> b!4774767 (= lt!1937752 (apply!12804 lm!2709 lt!1937753))))

(declare-fun contains!17253 (ListLongMap!4983 (_ BitVec 64)) Bool)

(assert (=> b!4774767 (contains!17253 lm!2709 lt!1937753)))

(declare-datatypes ((Hashable!6741 0))(
  ( (HashableExt!6740 (__x!32764 Int)) )
))
(declare-fun hashF!1687 () Hashable!6741)

(declare-fun key!6641 () K!15342)

(declare-fun hash!4711 (Hashable!6741 K!15342) (_ BitVec 64))

(assert (=> b!4774767 (= lt!1937753 (hash!4711 hashF!1687 key!6641))))

(declare-fun lt!1937751 () Unit!138789)

(declare-fun lemmaInGenMapThenLongMapContainsHash!945 (ListLongMap!4983 K!15342 Hashable!6741) Unit!138789)

(assert (=> b!4774767 (= lt!1937751 (lemmaInGenMapThenLongMapContainsHash!945 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6041 0))(
  ( (ListMap!6042 (toList!6566 List!53925)) )
))
(declare-fun contains!17254 (ListMap!6041 K!15342) Bool)

(declare-fun extractMap!2272 (List!53926) ListMap!6041)

(assert (=> b!4774767 (contains!17254 (extractMap!2272 (toList!6565 lm!2709)) key!6641)))

(declare-fun lt!1937754 () Unit!138789)

(declare-fun lemmaListContainsThenExtractedMapContains!593 (ListLongMap!4983 K!15342 Hashable!6741) Unit!138789)

(assert (=> b!4774767 (= lt!1937754 (lemmaListContainsThenExtractedMapContains!593 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4774768 () Bool)

(declare-fun e!2980837 () Bool)

(declare-fun tp!1356993 () Bool)

(assert (=> b!4774768 (= e!2980837 tp!1356993)))

(declare-fun b!4774766 () Bool)

(declare-fun res!2025939 () Bool)

(assert (=> b!4774766 (=> (not res!2025939) (not e!2980838))))

(declare-fun containsKeyBiggerList!397 (List!53926 K!15342) Bool)

(assert (=> b!4774766 (= res!2025939 (containsKeyBiggerList!397 (toList!6565 lm!2709) key!6641))))

(declare-fun b!4774765 () Bool)

(declare-fun res!2025940 () Bool)

(assert (=> b!4774765 (=> (not res!2025940) (not e!2980838))))

(declare-fun allKeysSameHashInMap!2146 (ListLongMap!4983 Hashable!6741) Bool)

(assert (=> b!4774765 (= res!2025940 (allKeysSameHashInMap!2146 lm!2709 hashF!1687))))

(declare-fun res!2025941 () Bool)

(assert (=> start!489316 (=> (not res!2025941) (not e!2980838))))

(declare-fun lambda!226348 () Int)

(declare-fun forall!12009 (List!53926 Int) Bool)

(assert (=> start!489316 (= res!2025941 (forall!12009 (toList!6565 lm!2709) lambda!226348))))

(assert (=> start!489316 e!2980838))

(declare-fun inv!69369 (ListLongMap!4983) Bool)

(assert (=> start!489316 (and (inv!69369 lm!2709) e!2980837)))

(assert (=> start!489316 true))

(declare-fun tp_is_empty!32917 () Bool)

(assert (=> start!489316 tp_is_empty!32917))

(assert (= (and start!489316 res!2025941) b!4774765))

(assert (= (and b!4774765 res!2025940) b!4774766))

(assert (= (and b!4774766 res!2025939) b!4774767))

(assert (= start!489316 b!4774768))

(declare-fun m!5748900 () Bool)

(assert (=> b!4774767 m!5748900))

(declare-fun m!5748902 () Bool)

(assert (=> b!4774767 m!5748902))

(declare-fun m!5748904 () Bool)

(assert (=> b!4774767 m!5748904))

(declare-fun m!5748906 () Bool)

(assert (=> b!4774767 m!5748906))

(declare-fun m!5748908 () Bool)

(assert (=> b!4774767 m!5748908))

(declare-fun m!5748910 () Bool)

(assert (=> b!4774767 m!5748910))

(assert (=> b!4774767 m!5748904))

(declare-fun m!5748912 () Bool)

(assert (=> b!4774767 m!5748912))

(declare-fun m!5748914 () Bool)

(assert (=> b!4774767 m!5748914))

(declare-fun m!5748916 () Bool)

(assert (=> b!4774767 m!5748916))

(declare-fun m!5748918 () Bool)

(assert (=> b!4774766 m!5748918))

(declare-fun m!5748920 () Bool)

(assert (=> b!4774765 m!5748920))

(declare-fun m!5748922 () Bool)

(assert (=> start!489316 m!5748922))

(declare-fun m!5748924 () Bool)

(assert (=> start!489316 m!5748924))

(push 1)

(assert (not b!4774765))

(assert (not start!489316))

(assert (not b!4774767))

(assert tp_is_empty!32917)

(assert (not b!4774766))

(assert (not b!4774768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

