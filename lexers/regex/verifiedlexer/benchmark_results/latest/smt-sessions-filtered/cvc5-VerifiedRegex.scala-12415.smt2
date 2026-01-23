; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693948 () Bool)

(assert start!693948)

(declare-fun b_free!133763 () Bool)

(declare-fun b_next!134553 () Bool)

(assert (=> start!693948 (= b_free!133763 (not b_next!134553))))

(declare-fun tp!1961828 () Bool)

(declare-fun b_and!350863 () Bool)

(assert (=> start!693948 (= tp!1961828 b_and!350863)))

(declare-datatypes ((A!669 0))(
  ( (A!670 (val!27995 Int)) )
))
(declare-fun lt!2562593 () A!669)

(declare-fun s2!384 () (Set A!669))

(declare-fun b!7123879 () Bool)

(declare-fun e!4280931 () Bool)

(declare-fun s1!413 () (Set A!669))

(assert (=> b!7123879 (= e!4280931 (and (set.member lt!2562593 s1!413) (not (set.member lt!2562593 (set.union s1!413 s2!384)))))))

(declare-datatypes ((B!3327 0))(
  ( (B!3328 (val!27996 Int)) )
))
(declare-fun b!25321 () B!3327)

(declare-fun f!518 () Int)

(declare-fun mapPost2!563 ((Set A!669) Int B!3327) A!669)

(assert (=> b!7123879 (= lt!2562593 (mapPost2!563 s1!413 f!518 b!25321))))

(declare-fun setIsEmpty!51356 () Bool)

(declare-fun setRes!51357 () Bool)

(assert (=> setIsEmpty!51356 setRes!51357))

(declare-fun res!2906712 () Bool)

(assert (=> start!693948 (=> (not res!2906712) (not e!4280931))))

(declare-fun map!16448 ((Set A!669) Int) (Set B!3327))

(assert (=> start!693948 (= res!2906712 (set.member b!25321 (map!16448 s1!413 f!518)))))

(assert (=> start!693948 e!4280931))

(declare-fun tp_is_empty!45489 () Bool)

(assert (=> start!693948 tp_is_empty!45489))

(declare-fun condSetEmpty!51357 () Bool)

(assert (=> start!693948 (= condSetEmpty!51357 (= s1!413 (as set.empty (Set A!669))))))

(declare-fun setRes!51356 () Bool)

(assert (=> start!693948 setRes!51356))

(assert (=> start!693948 tp!1961828))

(declare-fun condSetEmpty!51356 () Bool)

(assert (=> start!693948 (= condSetEmpty!51356 (= s2!384 (as set.empty (Set A!669))))))

(assert (=> start!693948 setRes!51357))

(declare-fun setNonEmpty!51356 () Bool)

(declare-fun tp!1961830 () Bool)

(declare-fun tp_is_empty!45491 () Bool)

(assert (=> setNonEmpty!51356 (= setRes!51357 (and tp!1961830 tp_is_empty!45491))))

(declare-fun setElem!51357 () A!669)

(declare-fun setRest!51357 () (Set A!669))

(assert (=> setNonEmpty!51356 (= s2!384 (set.union (set.insert setElem!51357 (as set.empty (Set A!669))) setRest!51357))))

(declare-fun setNonEmpty!51357 () Bool)

(declare-fun tp!1961829 () Bool)

(assert (=> setNonEmpty!51357 (= setRes!51356 (and tp!1961829 tp_is_empty!45491))))

(declare-fun setElem!51356 () A!669)

(declare-fun setRest!51356 () (Set A!669))

(assert (=> setNonEmpty!51357 (= s1!413 (set.union (set.insert setElem!51356 (as set.empty (Set A!669))) setRest!51356))))

(declare-fun setIsEmpty!51357 () Bool)

(assert (=> setIsEmpty!51357 setRes!51356))

(assert (= (and start!693948 res!2906712) b!7123879))

(assert (= (and start!693948 condSetEmpty!51357) setIsEmpty!51357))

(assert (= (and start!693948 (not condSetEmpty!51357)) setNonEmpty!51357))

(assert (= (and start!693948 condSetEmpty!51356) setIsEmpty!51356))

(assert (= (and start!693948 (not condSetEmpty!51356)) setNonEmpty!51356))

(declare-fun m!7841244 () Bool)

(assert (=> b!7123879 m!7841244))

(declare-fun m!7841246 () Bool)

(assert (=> b!7123879 m!7841246))

(declare-fun m!7841248 () Bool)

(assert (=> b!7123879 m!7841248))

(declare-fun m!7841250 () Bool)

(assert (=> start!693948 m!7841250))

(declare-fun m!7841252 () Bool)

(assert (=> start!693948 m!7841252))

(push 1)

(assert b_and!350863)

(assert tp_is_empty!45489)

(assert (not setNonEmpty!51357))

(assert (not b!7123879))

(assert tp_is_empty!45491)

(assert (not b_next!134553))

(assert (not setNonEmpty!51356))

(assert (not start!693948))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350863)

(assert (not b_next!134553))

(check-sat)

(pop 1)

