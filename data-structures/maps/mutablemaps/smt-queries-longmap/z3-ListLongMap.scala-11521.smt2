; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134166 () Bool)

(assert start!134166)

(declare-datatypes ((B!2452 0))(
  ( (B!2453 (val!19588 Int)) )
))
(declare-datatypes ((tuple2!25442 0))(
  ( (tuple2!25443 (_1!12731 (_ BitVec 64)) (_2!12731 B!2452)) )
))
(declare-datatypes ((List!36824 0))(
  ( (Nil!36821) (Cons!36820 (h!38268 tuple2!25442) (t!51739 List!36824)) )
))
(declare-datatypes ((ListLongMap!22889 0))(
  ( (ListLongMap!22890 (toList!11460 List!36824)) )
))
(declare-fun inv!57997 (ListLongMap!22889) Bool)

(assert (=> start!134166 (not (inv!57997 (ListLongMap!22890 Nil!36821)))))

(declare-fun bs!45105 () Bool)

(assert (= bs!45105 start!134166))

(declare-fun m!1442295 () Bool)

(assert (=> bs!45105 m!1442295))

(check-sat (not start!134166))
(check-sat)
(get-model)

(declare-fun d!163511 () Bool)

(declare-fun isStrictlySorted!984 (List!36824) Bool)

(assert (=> d!163511 (= (inv!57997 (ListLongMap!22890 Nil!36821)) (isStrictlySorted!984 (toList!11460 (ListLongMap!22890 Nil!36821))))))

(declare-fun bs!45107 () Bool)

(assert (= bs!45107 d!163511))

(declare-fun m!1442300 () Bool)

(assert (=> bs!45107 m!1442300))

(assert (=> start!134166 d!163511))

(check-sat (not d!163511))
(check-sat)
(get-model)

(declare-fun d!163513 () Bool)

(assert (=> d!163513 (= (isStrictlySorted!984 (toList!11460 (ListLongMap!22890 Nil!36821))) true)))

(assert (=> d!163511 d!163513))

(check-sat)
