; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489980 () Bool)

(assert start!489980)

(declare-fun b!4777757 () Bool)

(declare-fun res!2027977 () Bool)

(declare-fun e!2982664 () Bool)

(assert (=> b!4777757 (=> (not res!2027977) (not e!2982664))))

(declare-datatypes ((K!15487 0))(
  ( (K!15488 (val!20695 Int)) )
))
(declare-datatypes ((V!15733 0))(
  ( (V!15734 (val!20696 Int)) )
))
(declare-datatypes ((tuple2!56364 0))(
  ( (tuple2!56365 (_1!31476 K!15487) (_2!31476 V!15733)) )
))
(declare-datatypes ((List!54049 0))(
  ( (Nil!53925) (Cons!53925 (h!60339 tuple2!56364) (t!361499 List!54049)) )
))
(declare-datatypes ((tuple2!56366 0))(
  ( (tuple2!56367 (_1!31477 (_ BitVec 64)) (_2!31477 List!54049)) )
))
(declare-datatypes ((List!54050 0))(
  ( (Nil!53926) (Cons!53926 (h!60340 tuple2!56366) (t!361500 List!54050)) )
))
(declare-datatypes ((ListLongMap!5099 0))(
  ( (ListLongMap!5100 (toList!6677 List!54050)) )
))
(declare-fun lm!2709 () ListLongMap!5099)

(declare-datatypes ((Hashable!6799 0))(
  ( (HashableExt!6798 (__x!32822 Int)) )
))
(declare-fun hashF!1687 () Hashable!6799)

(declare-fun allKeysSameHashInMap!2204 (ListLongMap!5099 Hashable!6799) Bool)

(assert (=> b!4777757 (= res!2027977 (allKeysSameHashInMap!2204 lm!2709 hashF!1687))))

(declare-fun b!4777759 () Bool)

(assert (=> b!4777759 (= e!2982664 (not true))))

(declare-fun lt!1940856 () List!54049)

(declare-fun lt!1940855 () (_ BitVec 64))

(declare-fun apply!12854 (ListLongMap!5099 (_ BitVec 64)) List!54049)

(assert (=> b!4777759 (= lt!1940856 (apply!12854 lm!2709 lt!1940855))))

(declare-fun contains!17421 (ListLongMap!5099 (_ BitVec 64)) Bool)

(assert (=> b!4777759 (contains!17421 lm!2709 lt!1940855)))

(declare-fun key!6641 () K!15487)

(declare-fun hash!4775 (Hashable!6799 K!15487) (_ BitVec 64))

(assert (=> b!4777759 (= lt!1940855 (hash!4775 hashF!1687 key!6641))))

(declare-datatypes ((Unit!138988 0))(
  ( (Unit!138989) )
))
(declare-fun lt!1940857 () Unit!138988)

(declare-fun lemmaInGenMapThenLongMapContainsHash!995 (ListLongMap!5099 K!15487 Hashable!6799) Unit!138988)

(assert (=> b!4777759 (= lt!1940857 (lemmaInGenMapThenLongMapContainsHash!995 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6149 0))(
  ( (ListMap!6150 (toList!6678 List!54049)) )
))
(declare-fun contains!17422 (ListMap!6149 K!15487) Bool)

(declare-fun extractMap!2326 (List!54050) ListMap!6149)

(assert (=> b!4777759 (contains!17422 (extractMap!2326 (toList!6677 lm!2709)) key!6641)))

(declare-fun lt!1940854 () Unit!138988)

(declare-fun lemmaListContainsThenExtractedMapContains!647 (ListLongMap!5099 K!15487 Hashable!6799) Unit!138988)

(assert (=> b!4777759 (= lt!1940854 (lemmaListContainsThenExtractedMapContains!647 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4777760 () Bool)

(declare-fun e!2982663 () Bool)

(declare-fun tp!1357235 () Bool)

(assert (=> b!4777760 (= e!2982663 tp!1357235)))

(declare-fun res!2027979 () Bool)

(assert (=> start!489980 (=> (not res!2027979) (not e!2982664))))

(declare-fun lambda!227270 () Int)

(declare-fun forall!12075 (List!54050 Int) Bool)

(assert (=> start!489980 (= res!2027979 (forall!12075 (toList!6677 lm!2709) lambda!227270))))

(assert (=> start!489980 e!2982664))

(declare-fun inv!69514 (ListLongMap!5099) Bool)

(assert (=> start!489980 (and (inv!69514 lm!2709) e!2982663)))

(assert (=> start!489980 true))

(declare-fun tp_is_empty!33109 () Bool)

(assert (=> start!489980 tp_is_empty!33109))

(declare-fun b!4777758 () Bool)

(declare-fun res!2027978 () Bool)

(assert (=> b!4777758 (=> (not res!2027978) (not e!2982664))))

(declare-fun containsKeyBiggerList!455 (List!54050 K!15487) Bool)

(assert (=> b!4777758 (= res!2027978 (containsKeyBiggerList!455 (toList!6677 lm!2709) key!6641))))

(assert (= (and start!489980 res!2027979) b!4777757))

(assert (= (and b!4777757 res!2027977) b!4777758))

(assert (= (and b!4777758 res!2027978) b!4777759))

(assert (= start!489980 b!4777760))

(declare-fun m!5753442 () Bool)

(assert (=> b!4777757 m!5753442))

(declare-fun m!5753444 () Bool)

(assert (=> b!4777759 m!5753444))

(declare-fun m!5753446 () Bool)

(assert (=> b!4777759 m!5753446))

(declare-fun m!5753448 () Bool)

(assert (=> b!4777759 m!5753448))

(declare-fun m!5753450 () Bool)

(assert (=> b!4777759 m!5753450))

(declare-fun m!5753452 () Bool)

(assert (=> b!4777759 m!5753452))

(declare-fun m!5753454 () Bool)

(assert (=> b!4777759 m!5753454))

(assert (=> b!4777759 m!5753448))

(declare-fun m!5753456 () Bool)

(assert (=> b!4777759 m!5753456))

(declare-fun m!5753458 () Bool)

(assert (=> start!489980 m!5753458))

(declare-fun m!5753460 () Bool)

(assert (=> start!489980 m!5753460))

(declare-fun m!5753462 () Bool)

(assert (=> b!4777758 m!5753462))

(push 1)

(assert (not b!4777758))

(assert (not start!489980))

(assert tp_is_empty!33109)

(assert (not b!4777759))

(assert (not b!4777760))

(assert (not b!4777757))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

