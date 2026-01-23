; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714184 () Bool)

(assert start!714184)

(declare-fun b_free!134211 () Bool)

(declare-fun b_next!135001 () Bool)

(assert (=> start!714184 (= b_free!134211 (not b_next!135001))))

(declare-fun tp!2079279 () Bool)

(declare-fun b_and!351689 () Bool)

(assert (=> start!714184 (= tp!2079279 b_and!351689)))

(declare-datatypes ((B!3759 0))(
  ( (B!3760 (val!29377 Int)) )
))
(declare-fun lt!2604099 () (Set B!3759))

(declare-fun b!7320702 () Bool)

(declare-fun e!4383087 () Bool)

(declare-fun b!25336 () B!3759)

(declare-fun lt!2604098 () (Set B!3759))

(assert (=> b!7320702 (= e!4383087 (and (not (set.member b!25336 lt!2604098)) (set.member b!25336 (set.union lt!2604099 lt!2604098))))))

(declare-datatypes ((A!1057 0))(
  ( (A!1058 (val!29378 Int)) )
))
(declare-fun s2!405 () (Set A!1057))

(declare-fun f!643 () Int)

(declare-fun flatMap!3148 ((Set A!1057) Int) (Set B!3759))

(assert (=> b!7320702 (= lt!2604098 (flatMap!3148 s2!405 f!643))))

(declare-fun res!2958774 () Bool)

(assert (=> start!714184 (=> (not res!2958774) (not e!4383087))))

(assert (=> start!714184 (= res!2958774 (not (set.member b!25336 lt!2604099)))))

(declare-fun s1!434 () (Set A!1057))

(assert (=> start!714184 (= lt!2604099 (flatMap!3148 s1!434 f!643))))

(assert (=> start!714184 e!4383087))

(declare-fun condSetEmpty!55584 () Bool)

(assert (=> start!714184 (= condSetEmpty!55584 (= s2!405 (as set.empty (Set A!1057))))))

(declare-fun setRes!55583 () Bool)

(assert (=> start!714184 setRes!55583))

(declare-fun tp_is_empty!48007 () Bool)

(assert (=> start!714184 tp_is_empty!48007))

(declare-fun condSetEmpty!55583 () Bool)

(assert (=> start!714184 (= condSetEmpty!55583 (= s1!434 (as set.empty (Set A!1057))))))

(declare-fun setRes!55584 () Bool)

(assert (=> start!714184 setRes!55584))

(assert (=> start!714184 tp!2079279))

(declare-fun setNonEmpty!55583 () Bool)

(declare-fun tp!2079277 () Bool)

(declare-fun tp_is_empty!48005 () Bool)

(assert (=> setNonEmpty!55583 (= setRes!55583 (and tp!2079277 tp_is_empty!48005))))

(declare-fun setElem!55584 () A!1057)

(declare-fun setRest!55583 () (Set A!1057))

(assert (=> setNonEmpty!55583 (= s2!405 (set.union (set.insert setElem!55584 (as set.empty (Set A!1057))) setRest!55583))))

(declare-fun setIsEmpty!55583 () Bool)

(assert (=> setIsEmpty!55583 setRes!55584))

(declare-fun setNonEmpty!55584 () Bool)

(declare-fun tp!2079278 () Bool)

(assert (=> setNonEmpty!55584 (= setRes!55584 (and tp!2079278 tp_is_empty!48005))))

(declare-fun setElem!55583 () A!1057)

(declare-fun setRest!55584 () (Set A!1057))

(assert (=> setNonEmpty!55584 (= s1!434 (set.union (set.insert setElem!55583 (as set.empty (Set A!1057))) setRest!55584))))

(declare-fun setIsEmpty!55584 () Bool)

(assert (=> setIsEmpty!55584 setRes!55583))

(assert (= (and start!714184 res!2958774) b!7320702))

(assert (= (and start!714184 condSetEmpty!55584) setIsEmpty!55584))

(assert (= (and start!714184 (not condSetEmpty!55584)) setNonEmpty!55583))

(assert (= (and start!714184 condSetEmpty!55583) setIsEmpty!55583))

(assert (= (and start!714184 (not condSetEmpty!55583)) setNonEmpty!55584))

(declare-fun m!7986014 () Bool)

(assert (=> b!7320702 m!7986014))

(declare-fun m!7986016 () Bool)

(assert (=> b!7320702 m!7986016))

(declare-fun m!7986018 () Bool)

(assert (=> b!7320702 m!7986018))

(declare-fun m!7986020 () Bool)

(assert (=> start!714184 m!7986020))

(declare-fun m!7986022 () Bool)

(assert (=> start!714184 m!7986022))

(push 1)

(assert (not b!7320702))

(assert (not start!714184))

(assert (not setNonEmpty!55583))

(assert b_and!351689)

(assert tp_is_empty!48007)

(assert tp_is_empty!48005)

(assert (not b_next!135001))

(assert (not setNonEmpty!55584))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351689)

(assert (not b_next!135001))

(check-sat)

(pop 1)

