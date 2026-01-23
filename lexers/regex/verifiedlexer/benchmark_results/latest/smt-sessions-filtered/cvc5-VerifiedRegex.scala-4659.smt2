; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!243138 () Bool)

(assert start!243138)

(declare-fun res!1053085 () Bool)

(declare-fun e!1579688 () Bool)

(assert (=> start!243138 (=> (not res!1053085) (not e!1579688))))

(declare-datatypes ((V!5880 0))(
  ( (V!5881 (val!9017 Int)) )
))
(declare-datatypes ((K!5678 0))(
  ( (K!5679 (val!9018 Int)) )
))
(declare-datatypes ((tuple2!29334 0))(
  ( (tuple2!29335 (_1!17209 K!5678) (_2!17209 V!5880)) )
))
(declare-datatypes ((List!29353 0))(
  ( (Nil!29253) (Cons!29253 (h!34673 tuple2!29334) (t!211052 List!29353)) )
))
(declare-datatypes ((tuple2!29336 0))(
  ( (tuple2!29337 (_1!17210 (_ BitVec 64)) (_2!17210 List!29353)) )
))
(declare-datatypes ((List!29354 0))(
  ( (Nil!29254) (Cons!29254 (h!34674 tuple2!29336) (t!211053 List!29354)) )
))
(declare-datatypes ((ListLongMap!655 0))(
  ( (ListLongMap!656 (toList!1702 List!29354)) )
))
(declare-fun lm!2245 () ListLongMap!655)

(declare-fun lambda!94810 () Int)

(declare-fun forall!6029 (List!29354 Int) Bool)

(assert (=> start!243138 (= res!1053085 (forall!6029 (toList!1702 lm!2245) lambda!94810))))

(assert (=> start!243138 e!1579688))

(declare-fun e!1579687 () Bool)

(declare-fun inv!39301 (ListLongMap!655) Bool)

(assert (=> start!243138 (and (inv!39301 lm!2245) e!1579687)))

(assert (=> start!243138 true))

(declare-fun tp_is_empty!12439 () Bool)

(assert (=> start!243138 tp_is_empty!12439))

(declare-fun b!2487725 () Bool)

(declare-fun res!1053086 () Bool)

(assert (=> b!2487725 (=> (not res!1053086) (not e!1579688))))

(declare-datatypes ((Hashable!3347 0))(
  ( (HashableExt!3346 (__x!19209 Int)) )
))
(declare-fun hashF!1483 () Hashable!3347)

(declare-fun allKeysSameHashInMap!210 (ListLongMap!655 Hashable!3347) Bool)

(assert (=> b!2487725 (= res!1053086 (allKeysSameHashInMap!210 lm!2245 hashF!1483))))

(declare-fun b!2487726 () Bool)

(assert (=> b!2487726 (= e!1579688 false)))

(declare-fun lt!893649 () Bool)

(declare-fun key!5251 () K!5678)

(declare-datatypes ((ListMap!1179 0))(
  ( (ListMap!1180 (toList!1703 List!29353)) )
))
(declare-fun contains!5268 (ListMap!1179 K!5678) Bool)

(declare-fun extractMap!203 (List!29354) ListMap!1179)

(assert (=> b!2487726 (= lt!893649 (contains!5268 (extractMap!203 (toList!1702 lm!2245)) key!5251))))

(declare-fun b!2487727 () Bool)

(declare-fun tp!796251 () Bool)

(assert (=> b!2487727 (= e!1579687 tp!796251)))

(assert (= (and start!243138 res!1053085) b!2487725))

(assert (= (and b!2487725 res!1053086) b!2487726))

(assert (= start!243138 b!2487727))

(declare-fun m!2856573 () Bool)

(assert (=> start!243138 m!2856573))

(declare-fun m!2856575 () Bool)

(assert (=> start!243138 m!2856575))

(declare-fun m!2856577 () Bool)

(assert (=> b!2487725 m!2856577))

(declare-fun m!2856579 () Bool)

(assert (=> b!2487726 m!2856579))

(assert (=> b!2487726 m!2856579))

(declare-fun m!2856581 () Bool)

(assert (=> b!2487726 m!2856581))

(push 1)

(assert (not b!2487727))

(assert tp_is_empty!12439)

(assert (not b!2487725))

(assert (not start!243138))

(assert (not b!2487726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

