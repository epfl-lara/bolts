; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693964 () Bool)

(assert start!693964)

(declare-fun b_free!133771 () Bool)

(declare-fun b_next!134561 () Bool)

(assert (=> start!693964 (= b_free!133771 (not b_next!134561))))

(declare-fun tp!1961872 () Bool)

(declare-fun b_and!350875 () Bool)

(assert (=> start!693964 (= tp!1961872 b_and!350875)))

(declare-fun setNonEmpty!51388 () Bool)

(declare-fun setRes!51389 () Bool)

(declare-fun tp!1961873 () Bool)

(declare-fun tp_is_empty!45507 () Bool)

(assert (=> setNonEmpty!51388 (= setRes!51389 (and tp!1961873 tp_is_empty!45507))))

(declare-datatypes ((A!677 0))(
  ( (A!678 (val!28003 Int)) )
))
(declare-fun s1!413 () (Set A!677))

(declare-fun setElem!51388 () A!677)

(declare-fun setRest!51389 () (Set A!677))

(assert (=> setNonEmpty!51388 (= s1!413 (set.union (set.insert setElem!51388 (as set.empty (Set A!677))) setRest!51389))))

(declare-fun setNonEmpty!51389 () Bool)

(declare-fun setRes!51388 () Bool)

(declare-fun tp!1961874 () Bool)

(assert (=> setNonEmpty!51389 (= setRes!51388 (and tp!1961874 tp_is_empty!45507))))

(declare-fun s2!384 () (Set A!677))

(declare-fun setElem!51389 () A!677)

(declare-fun setRest!51388 () (Set A!677))

(assert (=> setNonEmpty!51389 (= s2!384 (set.union (set.insert setElem!51389 (as set.empty (Set A!677))) setRest!51388))))

(declare-fun b!7123915 () Bool)

(declare-fun res!2906739 () Bool)

(declare-fun e!4280949 () Bool)

(assert (=> b!7123915 (=> (not res!2906739) (not e!4280949))))

(declare-datatypes ((B!3335 0))(
  ( (B!3336 (val!28004 Int)) )
))
(declare-fun b!25321 () B!3335)

(declare-fun f!518 () Int)

(declare-fun map!16454 ((Set A!677) Int) (Set B!3335))

(assert (=> b!7123915 (= res!2906739 (set.member b!25321 (map!16454 s2!384 f!518)))))

(declare-fun b!7123916 () Bool)

(declare-fun lt!2562605 () A!677)

(assert (=> b!7123916 (= e!4280949 (and (set.member lt!2562605 s2!384) (not (set.member lt!2562605 (set.union s1!413 s2!384)))))))

(declare-fun mapPost2!567 ((Set A!677) Int B!3335) A!677)

(assert (=> b!7123916 (= lt!2562605 (mapPost2!567 s2!384 f!518 b!25321))))

(declare-fun setIsEmpty!51388 () Bool)

(assert (=> setIsEmpty!51388 setRes!51388))

(declare-fun setIsEmpty!51389 () Bool)

(assert (=> setIsEmpty!51389 setRes!51389))

(declare-fun res!2906738 () Bool)

(assert (=> start!693964 (=> (not res!2906738) (not e!4280949))))

(assert (=> start!693964 (= res!2906738 (not (set.member b!25321 (map!16454 s1!413 f!518))))))

(assert (=> start!693964 e!4280949))

(declare-fun tp_is_empty!45505 () Bool)

(assert (=> start!693964 tp_is_empty!45505))

(declare-fun condSetEmpty!51388 () Bool)

(assert (=> start!693964 (= condSetEmpty!51388 (= s1!413 (as set.empty (Set A!677))))))

(assert (=> start!693964 setRes!51389))

(assert (=> start!693964 tp!1961872))

(declare-fun condSetEmpty!51389 () Bool)

(assert (=> start!693964 (= condSetEmpty!51389 (= s2!384 (as set.empty (Set A!677))))))

(assert (=> start!693964 setRes!51388))

(assert (= (and start!693964 res!2906738) b!7123915))

(assert (= (and b!7123915 res!2906739) b!7123916))

(assert (= (and start!693964 condSetEmpty!51388) setIsEmpty!51389))

(assert (= (and start!693964 (not condSetEmpty!51388)) setNonEmpty!51388))

(assert (= (and start!693964 condSetEmpty!51389) setIsEmpty!51388))

(assert (= (and start!693964 (not condSetEmpty!51389)) setNonEmpty!51389))

(declare-fun m!7841308 () Bool)

(assert (=> b!7123915 m!7841308))

(declare-fun m!7841310 () Bool)

(assert (=> b!7123915 m!7841310))

(declare-fun m!7841312 () Bool)

(assert (=> b!7123916 m!7841312))

(declare-fun m!7841314 () Bool)

(assert (=> b!7123916 m!7841314))

(declare-fun m!7841316 () Bool)

(assert (=> b!7123916 m!7841316))

(declare-fun m!7841318 () Bool)

(assert (=> start!693964 m!7841318))

(declare-fun m!7841320 () Bool)

(assert (=> start!693964 m!7841320))

(push 1)

(assert b_and!350875)

(assert (not setNonEmpty!51389))

(assert tp_is_empty!45507)

(assert (not setNonEmpty!51388))

(assert (not b!7123915))

(assert (not b_next!134561))

(assert (not b!7123916))

(assert (not start!693964))

(assert tp_is_empty!45505)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350875)

(assert (not b_next!134561))

(check-sat)

(pop 1)

