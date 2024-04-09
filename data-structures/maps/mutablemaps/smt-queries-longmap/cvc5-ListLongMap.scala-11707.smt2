; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136984 () Bool)

(assert start!136984)

(declare-fun res!1079042 () Bool)

(declare-fun e!880928 () Bool)

(assert (=> start!136984 (=> (not res!1079042) (not e!880928))))

(declare-datatypes ((B!2582 0))(
  ( (B!2583 (val!19653 Int)) )
))
(declare-datatypes ((tuple2!25572 0))(
  ( (tuple2!25573 (_1!12796 (_ BitVec 64)) (_2!12796 B!2582)) )
))
(declare-datatypes ((List!36934 0))(
  ( (Nil!36931) (Cons!36930 (h!38474 tuple2!25572) (t!51855 List!36934)) )
))
(declare-fun lt!676405 () List!36934)

(declare-fun isStrictlySorted!1032 (List!36934) Bool)

(assert (=> start!136984 (= res!1079042 (isStrictlySorted!1032 lt!676405))))

(declare-datatypes ((ListLongMap!22923 0))(
  ( (ListLongMap!22924 (toList!11477 List!36934)) )
))
(declare-fun thiss!201 () ListLongMap!22923)

(declare-fun keyValue!4 () tuple2!25572)

(declare-fun insertStrictlySorted!604 (List!36934 (_ BitVec 64) B!2582) List!36934)

(assert (=> start!136984 (= lt!676405 (insertStrictlySorted!604 (toList!11477 thiss!201) (_1!12796 keyValue!4) (_2!12796 keyValue!4)))))

(assert (=> start!136984 e!880928))

(declare-fun e!880929 () Bool)

(declare-fun inv!58944 (ListLongMap!22923) Bool)

(assert (=> start!136984 (and (inv!58944 thiss!201) e!880929)))

(declare-fun tp_is_empty!39127 () Bool)

(assert (=> start!136984 tp_is_empty!39127))

(declare-fun b!1579161 () Bool)

(declare-fun res!1079041 () Bool)

(assert (=> b!1579161 (=> (not res!1079041) (not e!880928))))

(declare-fun containsKey!879 (List!36934 (_ BitVec 64)) Bool)

(assert (=> b!1579161 (= res!1079041 (containsKey!879 lt!676405 (_1!12796 keyValue!4)))))

(declare-fun b!1579162 () Bool)

(assert (=> b!1579162 (= e!880928 false)))

(declare-fun lt!676404 () Bool)

(declare-fun contains!10462 (List!36934 tuple2!25572) Bool)

(assert (=> b!1579162 (= lt!676404 (contains!10462 lt!676405 keyValue!4))))

(declare-fun b!1579163 () Bool)

(declare-fun tp!114316 () Bool)

(assert (=> b!1579163 (= e!880929 tp!114316)))

(assert (= (and start!136984 res!1079042) b!1579161))

(assert (= (and b!1579161 res!1079041) b!1579162))

(assert (= start!136984 b!1579163))

(declare-fun m!1451057 () Bool)

(assert (=> start!136984 m!1451057))

(declare-fun m!1451059 () Bool)

(assert (=> start!136984 m!1451059))

(declare-fun m!1451061 () Bool)

(assert (=> start!136984 m!1451061))

(declare-fun m!1451063 () Bool)

(assert (=> b!1579161 m!1451063))

(declare-fun m!1451065 () Bool)

(assert (=> b!1579162 m!1451065))

(push 1)

(assert (not b!1579162))

(assert (not b!1579161))

(assert tp_is_empty!39127)

(assert (not start!136984))

(assert (not b!1579163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

