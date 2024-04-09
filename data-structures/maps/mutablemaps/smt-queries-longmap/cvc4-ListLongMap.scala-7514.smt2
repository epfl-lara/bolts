; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95300 () Bool)

(assert start!95300)

(declare-fun res!717623 () Bool)

(declare-fun e!615490 () Bool)

(assert (=> start!95300 (=> (not res!717623) (not e!615490))))

(declare-fun a1!69 () (_ BitVec 64))

(declare-fun a2!57 () (_ BitVec 64))

(assert (=> start!95300 (= res!717623 (not (= a1!69 a2!57)))))

(assert (=> start!95300 e!615490))

(assert (=> start!95300 true))

(declare-datatypes ((B!1770 0))(
  ( (B!1771 (val!13088 Int)) )
))
(declare-datatypes ((tuple2!16758 0))(
  ( (tuple2!16759 (_1!8389 (_ BitVec 64)) (_2!8389 B!1770)) )
))
(declare-datatypes ((List!23323 0))(
  ( (Nil!23320) (Cons!23319 (h!24528 tuple2!16758) (t!32689 List!23323)) )
))
(declare-datatypes ((ListLongMap!14739 0))(
  ( (ListLongMap!14740 (toList!7385 List!23323)) )
))
(declare-fun lm!214 () ListLongMap!14739)

(declare-fun e!615491 () Bool)

(declare-fun inv!37855 (ListLongMap!14739) Bool)

(assert (=> start!95300 (and (inv!37855 lm!214) e!615491)))

(declare-fun b!1076599 () Bool)

(declare-fun isStrictlySorted!719 (List!23323) Bool)

(assert (=> b!1076599 (= e!615490 (not (isStrictlySorted!719 (toList!7385 lm!214))))))

(declare-fun b!1076600 () Bool)

(declare-fun tp!78267 () Bool)

(assert (=> b!1076600 (= e!615491 tp!78267)))

(assert (= (and start!95300 res!717623) b!1076599))

(assert (= start!95300 b!1076600))

(declare-fun m!995729 () Bool)

(assert (=> start!95300 m!995729))

(declare-fun m!995731 () Bool)

(assert (=> b!1076599 m!995731))

(push 1)

(assert (not start!95300))

(assert (not b!1076599))

(assert (not b!1076600))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!129667 () Bool)

(assert (=> d!129667 (= (inv!37855 lm!214) (isStrictlySorted!719 (toList!7385 lm!214)))))

(declare-fun bs!31713 () Bool)

(assert (= bs!31713 d!129667))

(assert (=> bs!31713 m!995731))

(assert (=> start!95300 d!129667))

(declare-fun d!129673 () Bool)

(declare-fun res!717640 () Bool)

(declare-fun e!615510 () Bool)

(assert (=> d!129673 (=> res!717640 e!615510)))

(assert (=> d!129673 (= res!717640 (or (is-Nil!23320 (toList!7385 lm!214)) (is-Nil!23320 (t!32689 (toList!7385 lm!214)))))))

(assert (=> d!129673 (= (isStrictlySorted!719 (toList!7385 lm!214)) e!615510)))

(declare-fun b!1076621 () Bool)

(declare-fun e!615511 () Bool)

(assert (=> b!1076621 (= e!615510 e!615511)))

(declare-fun res!717641 () Bool)

(assert (=> b!1076621 (=> (not res!717641) (not e!615511))))

(assert (=> b!1076621 (= res!717641 (bvslt (_1!8389 (h!24528 (toList!7385 lm!214))) (_1!8389 (h!24528 (t!32689 (toList!7385 lm!214))))))))

(declare-fun b!1076622 () Bool)

(assert (=> b!1076622 (= e!615511 (isStrictlySorted!719 (t!32689 (toList!7385 lm!214))))))

