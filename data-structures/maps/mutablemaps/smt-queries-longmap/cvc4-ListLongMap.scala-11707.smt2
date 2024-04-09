; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136988 () Bool)

(assert start!136988)

(declare-fun res!1079053 () Bool)

(declare-fun e!880940 () Bool)

(assert (=> start!136988 (=> (not res!1079053) (not e!880940))))

(declare-datatypes ((B!2586 0))(
  ( (B!2587 (val!19655 Int)) )
))
(declare-datatypes ((tuple2!25576 0))(
  ( (tuple2!25577 (_1!12798 (_ BitVec 64)) (_2!12798 B!2586)) )
))
(declare-datatypes ((List!36936 0))(
  ( (Nil!36933) (Cons!36932 (h!38476 tuple2!25576) (t!51857 List!36936)) )
))
(declare-fun lt!676416 () List!36936)

(declare-fun isStrictlySorted!1034 (List!36936) Bool)

(assert (=> start!136988 (= res!1079053 (isStrictlySorted!1034 lt!676416))))

(declare-datatypes ((ListLongMap!22927 0))(
  ( (ListLongMap!22928 (toList!11479 List!36936)) )
))
(declare-fun thiss!201 () ListLongMap!22927)

(declare-fun keyValue!4 () tuple2!25576)

(declare-fun insertStrictlySorted!606 (List!36936 (_ BitVec 64) B!2586) List!36936)

(assert (=> start!136988 (= lt!676416 (insertStrictlySorted!606 (toList!11479 thiss!201) (_1!12798 keyValue!4) (_2!12798 keyValue!4)))))

(assert (=> start!136988 e!880940))

(declare-fun e!880941 () Bool)

(declare-fun inv!58946 (ListLongMap!22927) Bool)

(assert (=> start!136988 (and (inv!58946 thiss!201) e!880941)))

(declare-fun tp_is_empty!39131 () Bool)

(assert (=> start!136988 tp_is_empty!39131))

(declare-fun b!1579179 () Bool)

(declare-fun res!1079054 () Bool)

(assert (=> b!1579179 (=> (not res!1079054) (not e!880940))))

(declare-fun containsKey!881 (List!36936 (_ BitVec 64)) Bool)

(assert (=> b!1579179 (= res!1079054 (containsKey!881 lt!676416 (_1!12798 keyValue!4)))))

(declare-fun b!1579180 () Bool)

(assert (=> b!1579180 (= e!880940 false)))

(declare-fun lt!676417 () Bool)

(declare-fun contains!10464 (List!36936 tuple2!25576) Bool)

(assert (=> b!1579180 (= lt!676417 (contains!10464 lt!676416 keyValue!4))))

(declare-fun b!1579181 () Bool)

(declare-fun tp!114322 () Bool)

(assert (=> b!1579181 (= e!880941 tp!114322)))

(assert (= (and start!136988 res!1079053) b!1579179))

(assert (= (and b!1579179 res!1079054) b!1579180))

(assert (= start!136988 b!1579181))

(declare-fun m!1451077 () Bool)

(assert (=> start!136988 m!1451077))

(declare-fun m!1451079 () Bool)

(assert (=> start!136988 m!1451079))

(declare-fun m!1451081 () Bool)

(assert (=> start!136988 m!1451081))

(declare-fun m!1451083 () Bool)

(assert (=> b!1579179 m!1451083))

(declare-fun m!1451085 () Bool)

(assert (=> b!1579180 m!1451085))

(push 1)

(assert (not b!1579181))

(assert (not b!1579179))

(assert (not b!1579180))

(assert (not start!136988))

(assert tp_is_empty!39131)

(check-sat)

(pop 1)

