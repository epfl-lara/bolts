; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489312 () Bool)

(assert start!489312)

(declare-fun b!4774741 () Bool)

(declare-fun res!2025921 () Bool)

(declare-fun e!2980826 () Bool)

(assert (=> b!4774741 (=> (not res!2025921) (not e!2980826))))

(declare-datatypes ((K!15337 0))(
  ( (K!15338 (val!20575 Int)) )
))
(declare-datatypes ((V!15583 0))(
  ( (V!15584 (val!20576 Int)) )
))
(declare-datatypes ((tuple2!56124 0))(
  ( (tuple2!56125 (_1!31356 K!15337) (_2!31356 V!15583)) )
))
(declare-datatypes ((List!53921 0))(
  ( (Nil!53797) (Cons!53797 (h!60211 tuple2!56124) (t!361371 List!53921)) )
))
(declare-datatypes ((tuple2!56126 0))(
  ( (tuple2!56127 (_1!31357 (_ BitVec 64)) (_2!31357 List!53921)) )
))
(declare-datatypes ((List!53922 0))(
  ( (Nil!53798) (Cons!53798 (h!60212 tuple2!56126) (t!361372 List!53922)) )
))
(declare-datatypes ((ListLongMap!4979 0))(
  ( (ListLongMap!4980 (toList!6561 List!53922)) )
))
(declare-fun lm!2709 () ListLongMap!4979)

(declare-datatypes ((Hashable!6739 0))(
  ( (HashableExt!6738 (__x!32762 Int)) )
))
(declare-fun hashF!1687 () Hashable!6739)

(declare-fun allKeysSameHashInMap!2144 (ListLongMap!4979 Hashable!6739) Bool)

(assert (=> b!4774741 (= res!2025921 (allKeysSameHashInMap!2144 lm!2709 hashF!1687))))

(declare-fun b!4774744 () Bool)

(declare-fun e!2980825 () Bool)

(declare-fun tp!1356987 () Bool)

(assert (=> b!4774744 (= e!2980825 tp!1356987)))

(declare-fun b!4774743 () Bool)

(assert (=> b!4774743 (= e!2980826 (not true))))

(declare-fun lt!1937724 () List!53921)

(declare-fun lt!1937725 () (_ BitVec 64))

(declare-fun apply!12802 (ListLongMap!4979 (_ BitVec 64)) List!53921)

(assert (=> b!4774743 (= lt!1937724 (apply!12802 lm!2709 lt!1937725))))

(declare-fun contains!17248 (ListLongMap!4979 (_ BitVec 64)) Bool)

(assert (=> b!4774743 (contains!17248 lm!2709 lt!1937725)))

(declare-fun key!6641 () K!15337)

(declare-fun hash!4709 (Hashable!6739 K!15337) (_ BitVec 64))

(assert (=> b!4774743 (= lt!1937725 (hash!4709 hashF!1687 key!6641))))

(declare-datatypes ((Unit!138785 0))(
  ( (Unit!138786) )
))
(declare-fun lt!1937726 () Unit!138785)

(declare-fun lemmaInGenMapThenLongMapContainsHash!943 (ListLongMap!4979 K!15337 Hashable!6739) Unit!138785)

(assert (=> b!4774743 (= lt!1937726 (lemmaInGenMapThenLongMapContainsHash!943 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6037 0))(
  ( (ListMap!6038 (toList!6562 List!53921)) )
))
(declare-fun contains!17249 (ListMap!6037 K!15337) Bool)

(declare-fun extractMap!2270 (List!53922) ListMap!6037)

(assert (=> b!4774743 (contains!17249 (extractMap!2270 (toList!6561 lm!2709)) key!6641)))

(declare-fun lt!1937727 () Unit!138785)

(declare-fun lemmaListContainsThenExtractedMapContains!591 (ListLongMap!4979 K!15337 Hashable!6739) Unit!138785)

(assert (=> b!4774743 (= lt!1937727 (lemmaListContainsThenExtractedMapContains!591 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2025923 () Bool)

(assert (=> start!489312 (=> (not res!2025923) (not e!2980826))))

(declare-fun lambda!226342 () Int)

(declare-fun forall!12007 (List!53922 Int) Bool)

(assert (=> start!489312 (= res!2025923 (forall!12007 (toList!6561 lm!2709) lambda!226342))))

(assert (=> start!489312 e!2980826))

(declare-fun inv!69364 (ListLongMap!4979) Bool)

(assert (=> start!489312 (and (inv!69364 lm!2709) e!2980825)))

(assert (=> start!489312 true))

(declare-fun tp_is_empty!32913 () Bool)

(assert (=> start!489312 tp_is_empty!32913))

(declare-fun b!4774742 () Bool)

(declare-fun res!2025922 () Bool)

(assert (=> b!4774742 (=> (not res!2025922) (not e!2980826))))

(declare-fun containsKeyBiggerList!395 (List!53922 K!15337) Bool)

(assert (=> b!4774742 (= res!2025922 (containsKeyBiggerList!395 (toList!6561 lm!2709) key!6641))))

(assert (= (and start!489312 res!2025923) b!4774741))

(assert (= (and b!4774741 res!2025921) b!4774742))

(assert (= (and b!4774742 res!2025922) b!4774743))

(assert (= start!489312 b!4774744))

(declare-fun m!5748856 () Bool)

(assert (=> b!4774741 m!5748856))

(declare-fun m!5748858 () Bool)

(assert (=> b!4774743 m!5748858))

(declare-fun m!5748860 () Bool)

(assert (=> b!4774743 m!5748860))

(declare-fun m!5748862 () Bool)

(assert (=> b!4774743 m!5748862))

(declare-fun m!5748864 () Bool)

(assert (=> b!4774743 m!5748864))

(declare-fun m!5748866 () Bool)

(assert (=> b!4774743 m!5748866))

(declare-fun m!5748868 () Bool)

(assert (=> b!4774743 m!5748868))

(assert (=> b!4774743 m!5748862))

(declare-fun m!5748870 () Bool)

(assert (=> b!4774743 m!5748870))

(declare-fun m!5748872 () Bool)

(assert (=> start!489312 m!5748872))

(declare-fun m!5748874 () Bool)

(assert (=> start!489312 m!5748874))

(declare-fun m!5748876 () Bool)

(assert (=> b!4774742 m!5748876))

(push 1)

(assert (not b!4774744))

(assert tp_is_empty!32913)

(assert (not b!4774742))

(assert (not b!4774741))

(assert (not start!489312))

(assert (not b!4774743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

