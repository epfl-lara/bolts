; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!1702 () Bool)

(assert start!1702)

(declare-fun b_free!313 () Bool)

(declare-fun b_next!313 () Bool)

(assert (=> start!1702 (= b_free!313 (not b_next!313))))

(declare-fun tp!23377 () Bool)

(declare-fun b_and!313 () Bool)

(assert (=> start!1702 (= tp!23377 b_and!313)))

(declare-fun setNonEmpty!346 () Bool)

(declare-fun setRes!347 () Bool)

(declare-fun tp!23378 () Bool)

(declare-fun tp_is_empty!309 () Bool)

(assert (=> setNonEmpty!346 (= setRes!347 (and tp!23378 tp_is_empty!309))))

(declare-datatypes ((A!141 0))(
  ( (A!142 (val!178 Int)) )
))
(declare-fun s2!449 () (Set A!141))

(declare-fun setElem!346 () A!141)

(declare-fun setRest!347 () (Set A!141))

(assert (=> setNonEmpty!346 (= s2!449 (set.union (set.insert setElem!346 (as set.empty (Set A!141))) setRest!347))))

(declare-fun setNonEmpty!347 () Bool)

(declare-fun setRes!346 () Bool)

(declare-fun tp!23379 () Bool)

(assert (=> setNonEmpty!347 (= setRes!346 (and tp!23379 tp_is_empty!309))))

(declare-fun s1!478 () (Set A!141))

(declare-fun setElem!347 () A!141)

(declare-fun setRest!346 () (Set A!141))

(assert (=> setNonEmpty!347 (= s1!478 (set.union (set.insert setElem!347 (as set.empty (Set A!141))) setRest!346))))

(declare-fun res!27445 () Bool)

(declare-fun e!15645 () Bool)

(assert (=> start!1702 (=> (not res!27445) (not e!15645))))

(declare-fun p!1713 () Int)

(declare-fun exists!9 ((Set A!141) Int) Bool)

(assert (=> start!1702 (= res!27445 (not (exists!9 (set.union s1!478 s2!449) p!1713)))))

(assert (=> start!1702 e!15645))

(declare-fun condSetEmpty!347 () Bool)

(assert (=> start!1702 (= condSetEmpty!347 (= s1!478 (as set.empty (Set A!141))))))

(assert (=> start!1702 setRes!346))

(declare-fun condSetEmpty!346 () Bool)

(assert (=> start!1702 (= condSetEmpty!346 (= s2!449 (as set.empty (Set A!141))))))

(assert (=> start!1702 setRes!347))

(assert (=> start!1702 tp!23377))

(declare-fun setIsEmpty!346 () Bool)

(assert (=> setIsEmpty!346 setRes!347))

(declare-fun b!34049 () Bool)

(assert (=> b!34049 (= e!15645 false)))

(declare-fun lt!2313 () Bool)

(assert (=> b!34049 (= lt!2313 (exists!9 s1!478 p!1713))))

(declare-fun setIsEmpty!347 () Bool)

(assert (=> setIsEmpty!347 setRes!346))

(assert (= (and start!1702 res!27445) b!34049))

(assert (= (and start!1702 condSetEmpty!347) setIsEmpty!347))

(assert (= (and start!1702 (not condSetEmpty!347)) setNonEmpty!347))

(assert (= (and start!1702 condSetEmpty!346) setIsEmpty!346))

(assert (= (and start!1702 (not condSetEmpty!346)) setNonEmpty!346))

(declare-fun m!9971 () Bool)

(assert (=> start!1702 m!9971))

(declare-fun m!9973 () Bool)

(assert (=> b!34049 m!9973))

(push 1)

(assert (not b!34049))

(assert (not setNonEmpty!346))

(assert tp_is_empty!309)

(assert (not setNonEmpty!347))

(assert b_and!313)

(assert (not b_next!313))

(assert (not start!1702))

(check-sat)

(pop 1)

(push 1)

(assert b_and!313)

(assert (not b_next!313))

(check-sat)

(pop 1)

