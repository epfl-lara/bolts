; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491908 () Bool)

(assert start!491908)

(declare-fun res!2032530 () Bool)

(declare-fun e!2987647 () Bool)

(assert (=> start!491908 (=> (not res!2032530) (not e!2987647))))

(declare-datatypes ((K!15627 0))(
  ( (K!15628 (val!20807 Int)) )
))
(declare-datatypes ((V!15873 0))(
  ( (V!15874 (val!20808 Int)) )
))
(declare-datatypes ((tuple2!56588 0))(
  ( (tuple2!56589 (_1!31588 K!15627) (_2!31588 V!15873)) )
))
(declare-datatypes ((List!54187 0))(
  ( (Nil!54063) (Cons!54063 (h!60483 tuple2!56588) (t!361637 List!54187)) )
))
(declare-datatypes ((tuple2!56590 0))(
  ( (tuple2!56591 (_1!31589 (_ BitVec 64)) (_2!31589 List!54187)) )
))
(declare-datatypes ((List!54188 0))(
  ( (Nil!54064) (Cons!54064 (h!60484 tuple2!56590) (t!361638 List!54188)) )
))
(declare-datatypes ((ListLongMap!5211 0))(
  ( (ListLongMap!5212 (toList!6789 List!54188)) )
))
(declare-fun lm!2473 () ListLongMap!5211)

(declare-fun lambda!229088 () Int)

(declare-fun forall!12155 (List!54188 Int) Bool)

(assert (=> start!491908 (= res!2032530 (forall!12155 (toList!6789 lm!2473) lambda!229088))))

(assert (=> start!491908 e!2987647))

(declare-fun e!2987646 () Bool)

(declare-fun inv!69654 (ListLongMap!5211) Bool)

(assert (=> start!491908 (and (inv!69654 lm!2473) e!2987646)))

(assert (=> start!491908 true))

(declare-fun tp_is_empty!33305 () Bool)

(assert (=> start!491908 tp_is_empty!33305))

(declare-fun e!2987645 () Bool)

(declare-fun b!4785161 () Bool)

(declare-fun key!5896 () K!15627)

(declare-fun lt!1946930 () (_ BitVec 64))

(declare-datatypes ((Option!12987 0))(
  ( (None!12986) (Some!12986 (v!48235 tuple2!56588)) )
))
(declare-fun isDefined!10130 (Option!12987) Bool)

(declare-fun getPair!827 (List!54187 K!15627) Option!12987)

(declare-fun apply!12910 (ListLongMap!5211 (_ BitVec 64)) List!54187)

(assert (=> b!4785161 (= e!2987645 (isDefined!10130 (getPair!827 (apply!12910 lm!2473 lt!1946930) key!5896)))))

(declare-fun b!4785162 () Bool)

(declare-fun res!2032527 () Bool)

(assert (=> b!4785162 (=> (not res!2032527) (not e!2987647))))

(declare-datatypes ((ListMap!6261 0))(
  ( (ListMap!6262 (toList!6790 List!54187)) )
))
(declare-fun contains!17632 (ListMap!6261 K!15627) Bool)

(declare-fun extractMap!2382 (List!54188) ListMap!6261)

(assert (=> b!4785162 (= res!2032527 (contains!17632 (extractMap!2382 (toList!6789 lm!2473)) key!5896))))

(declare-fun b!4785163 () Bool)

(declare-fun res!2032528 () Bool)

(assert (=> b!4785163 (=> (not res!2032528) (not e!2987647))))

(declare-datatypes ((Hashable!6855 0))(
  ( (HashableExt!6854 (__x!32878 Int)) )
))
(declare-fun hashF!1559 () Hashable!6855)

(declare-fun allKeysSameHashInMap!2260 (ListLongMap!5211 Hashable!6855) Bool)

(assert (=> b!4785163 (= res!2032528 (allKeysSameHashInMap!2260 lm!2473 hashF!1559))))

(declare-fun b!4785164 () Bool)

(assert (=> b!4785164 (= e!2987647 (not (forall!12155 (toList!6789 lm!2473) lambda!229088)))))

(declare-fun containsKeyBiggerList!505 (List!54188 K!15627) Bool)

(assert (=> b!4785164 (containsKeyBiggerList!505 (toList!6789 lm!2473) key!5896)))

(declare-datatypes ((Unit!139465 0))(
  ( (Unit!139466) )
))
(declare-fun lt!1946928 () Unit!139465)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!245 (ListLongMap!5211 K!15627 Hashable!6855) Unit!139465)

(assert (=> b!4785164 (= lt!1946928 (lemmaInLongMapThenContainsKeyBiggerList!245 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4785164 e!2987645))

(declare-fun res!2032529 () Bool)

(assert (=> b!4785164 (=> (not res!2032529) (not e!2987645))))

(declare-fun contains!17633 (ListLongMap!5211 (_ BitVec 64)) Bool)

(assert (=> b!4785164 (= res!2032529 (contains!17633 lm!2473 lt!1946930))))

(declare-fun hash!4871 (Hashable!6855 K!15627) (_ BitVec 64))

(assert (=> b!4785164 (= lt!1946930 (hash!4871 hashF!1559 key!5896))))

(declare-fun lt!1946929 () Unit!139465)

(declare-fun lemmaInGenericMapThenInLongMap!259 (ListLongMap!5211 K!15627 Hashable!6855) Unit!139465)

(assert (=> b!4785164 (= lt!1946929 (lemmaInGenericMapThenInLongMap!259 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4785165 () Bool)

(declare-fun tp!1357627 () Bool)

(assert (=> b!4785165 (= e!2987646 tp!1357627)))

(assert (= (and start!491908 res!2032530) b!4785163))

(assert (= (and b!4785163 res!2032528) b!4785162))

(assert (= (and b!4785162 res!2032527) b!4785164))

(assert (= (and b!4785164 res!2032529) b!4785161))

(assert (= start!491908 b!4785165))

(declare-fun m!5764166 () Bool)

(assert (=> b!4785164 m!5764166))

(declare-fun m!5764168 () Bool)

(assert (=> b!4785164 m!5764168))

(declare-fun m!5764170 () Bool)

(assert (=> b!4785164 m!5764170))

(declare-fun m!5764172 () Bool)

(assert (=> b!4785164 m!5764172))

(declare-fun m!5764174 () Bool)

(assert (=> b!4785164 m!5764174))

(declare-fun m!5764176 () Bool)

(assert (=> b!4785164 m!5764176))

(declare-fun m!5764178 () Bool)

(assert (=> b!4785161 m!5764178))

(assert (=> b!4785161 m!5764178))

(declare-fun m!5764180 () Bool)

(assert (=> b!4785161 m!5764180))

(assert (=> b!4785161 m!5764180))

(declare-fun m!5764182 () Bool)

(assert (=> b!4785161 m!5764182))

(assert (=> start!491908 m!5764166))

(declare-fun m!5764184 () Bool)

(assert (=> start!491908 m!5764184))

(declare-fun m!5764186 () Bool)

(assert (=> b!4785162 m!5764186))

(assert (=> b!4785162 m!5764186))

(declare-fun m!5764188 () Bool)

(assert (=> b!4785162 m!5764188))

(declare-fun m!5764190 () Bool)

(assert (=> b!4785163 m!5764190))

(push 1)

(assert tp_is_empty!33305)

(assert (not b!4785162))

(assert (not b!4785163))

(assert (not b!4785164))

(assert (not b!4785161))

(assert (not start!491908))

(assert (not b!4785165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

