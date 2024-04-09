; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134168 () Bool)

(assert start!134168)

(declare-datatypes ((B!2454 0))(
  ( (B!2455 (val!19589 Int)) )
))
(declare-datatypes ((tuple2!25444 0))(
  ( (tuple2!25445 (_1!12732 (_ BitVec 64)) (_2!12732 B!2454)) )
))
(declare-datatypes ((List!36825 0))(
  ( (Nil!36822) (Cons!36821 (h!38269 tuple2!25444) (t!51740 List!36825)) )
))
(declare-datatypes ((ListLongMap!22891 0))(
  ( (ListLongMap!22892 (toList!11461 List!36825)) )
))
(declare-fun inv!57998 (ListLongMap!22891) Bool)

(assert (=> start!134168 (not (inv!57998 (ListLongMap!22892 Nil!36822)))))

(declare-fun bs!45106 () Bool)

(assert (= bs!45106 start!134168))

(declare-fun m!1442297 () Bool)

(assert (=> bs!45106 m!1442297))

(push 1)

(assert (not start!134168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163508 () Bool)

(declare-fun isStrictlySorted!985 (List!36825) Bool)

(assert (=> d!163508 (= (inv!57998 (ListLongMap!22892 Nil!36822)) (isStrictlySorted!985 (toList!11461 (ListLongMap!22892 Nil!36822))))))

(declare-fun bs!45108 () Bool)

(assert (= bs!45108 d!163508))

(declare-fun m!1442301 () Bool)

(assert (=> bs!45108 m!1442301))

(assert (=> start!134168 d!163508))

(push 1)

(assert (not d!163508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

