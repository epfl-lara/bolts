; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134164 () Bool)

(assert start!134164)

(declare-datatypes ((B!2450 0))(
  ( (B!2451 (val!19587 Int)) )
))
(declare-datatypes ((tuple2!25440 0))(
  ( (tuple2!25441 (_1!12730 (_ BitVec 64)) (_2!12730 B!2450)) )
))
(declare-datatypes ((List!36823 0))(
  ( (Nil!36820) (Cons!36819 (h!38267 tuple2!25440) (t!51738 List!36823)) )
))
(declare-datatypes ((ListLongMap!22887 0))(
  ( (ListLongMap!22888 (toList!11459 List!36823)) )
))
(declare-fun inv!57996 (ListLongMap!22887) Bool)

(assert (=> start!134164 (not (inv!57996 (ListLongMap!22888 Nil!36820)))))

(declare-fun bs!45104 () Bool)

(assert (= bs!45104 start!134164))

(declare-fun m!1442293 () Bool)

(assert (=> bs!45104 m!1442293))

(push 1)

(assert (not start!134164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163509 () Bool)

(declare-fun isStrictlySorted!986 (List!36823) Bool)

(assert (=> d!163509 (= (inv!57996 (ListLongMap!22888 Nil!36820)) (isStrictlySorted!986 (toList!11459 (ListLongMap!22888 Nil!36820))))))

(declare-fun bs!45109 () Bool)

(assert (= bs!45109 d!163509))

(declare-fun m!1442303 () Bool)

(assert (=> bs!45109 m!1442303))

(assert (=> start!134164 d!163509))

(push 1)

(assert (not d!163509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!163515 () Bool)

(assert (=> d!163515 (= (isStrictlySorted!986 (toList!11459 (ListLongMap!22888 Nil!36820))) true)))

(assert (=> d!163509 d!163515))

(push 1)

(check-sat)

(pop 1)

