; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5240 () Bool)

(assert start!5240)

(declare-fun res!22971 () Bool)

(declare-fun e!24195 () Bool)

(assert (=> start!5240 (=> (not res!22971) (not e!24195))))

(declare-datatypes ((B!792 0))(
  ( (B!793 (val!896 Int)) )
))
(declare-fun b!99 () B!792)

(declare-datatypes ((tuple2!1456 0))(
  ( (tuple2!1457 (_1!738 (_ BitVec 64)) (_2!738 B!792)) )
))
(declare-datatypes ((List!1022 0))(
  ( (Nil!1019) (Cons!1018 (h!1586 tuple2!1456) (t!3863 List!1022)) )
))
(declare-datatypes ((ListLongMap!1037 0))(
  ( (ListLongMap!1038 (toList!534 List!1022)) )
))
(declare-fun lm!264 () ListLongMap!1037)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!482 (List!1022 tuple2!1456) Bool)

(assert (=> start!5240 (= res!22971 (contains!482 (toList!534 lm!264) (tuple2!1457 a!526 b!99)))))

(assert (=> start!5240 e!24195))

(declare-fun e!24194 () Bool)

(declare-fun inv!1701 (ListLongMap!1037) Bool)

(assert (=> start!5240 (and (inv!1701 lm!264) e!24194)))

(assert (=> start!5240 true))

(declare-fun tp_is_empty!1715 () Bool)

(assert (=> start!5240 tp_is_empty!1715))

(declare-fun b!38059 () Bool)

(declare-fun e!24193 () Bool)

(assert (=> b!38059 (= e!24195 (not e!24193))))

(declare-fun res!22972 () Bool)

(assert (=> b!38059 (=> res!22972 e!24193)))

(declare-fun isStrictlySorted!198 (List!1022) Bool)

(assert (=> b!38059 (= res!22972 (not (isStrictlySorted!198 (toList!534 lm!264))))))

(declare-fun containsKey!64 (List!1022 (_ BitVec 64)) Bool)

(assert (=> b!38059 (containsKey!64 (toList!534 lm!264) a!526)))

(declare-datatypes ((Unit!880 0))(
  ( (Unit!881) )
))
(declare-fun lt!13989 () Unit!880)

(declare-fun lemmaContainsTupleThenContainsKey!9 (List!1022 (_ BitVec 64) B!792) Unit!880)

(assert (=> b!38059 (= lt!13989 (lemmaContainsTupleThenContainsKey!9 (toList!534 lm!264) a!526 b!99))))

(declare-fun b!38060 () Bool)

(assert (=> b!38060 (= e!24193 true)))

(declare-datatypes ((Option!100 0))(
  ( (Some!99 (v!1974 B!792)) (None!98) )
))
(declare-fun getValueByKey!94 (List!1022 (_ BitVec 64)) Option!100)

(assert (=> b!38060 (= (getValueByKey!94 (toList!534 lm!264) a!526) (Some!99 b!99))))

(declare-fun lt!13990 () Unit!880)

(declare-fun lemmaContainsTupThenGetReturnValue!22 (List!1022 (_ BitVec 64) B!792) Unit!880)

(assert (=> b!38060 (= lt!13990 (lemmaContainsTupThenGetReturnValue!22 (toList!534 lm!264) a!526 b!99))))

(declare-fun b!38061 () Bool)

(declare-fun tp!5648 () Bool)

(assert (=> b!38061 (= e!24194 tp!5648)))

(assert (= (and start!5240 res!22971) b!38059))

(assert (= (and b!38059 (not res!22972)) b!38060))

(assert (= start!5240 b!38061))

(declare-fun m!30753 () Bool)

(assert (=> start!5240 m!30753))

(declare-fun m!30755 () Bool)

(assert (=> start!5240 m!30755))

(declare-fun m!30757 () Bool)

(assert (=> b!38059 m!30757))

(declare-fun m!30759 () Bool)

(assert (=> b!38059 m!30759))

(declare-fun m!30761 () Bool)

(assert (=> b!38059 m!30761))

(declare-fun m!30763 () Bool)

(assert (=> b!38060 m!30763))

(declare-fun m!30765 () Bool)

(assert (=> b!38060 m!30765))

(push 1)

(assert (not b!38061))

(assert tp_is_empty!1715)

(assert (not start!5240))

(assert (not b!38059))

(assert (not b!38060))

(check-sat)

(pop 1)

