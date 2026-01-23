; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713988 () Bool)

(assert start!713988)

(declare-fun b_free!134143 () Bool)

(declare-fun b_next!134933 () Bool)

(assert (=> start!713988 (= b_free!134143 (not b_next!134933))))

(declare-fun tp!2078887 () Bool)

(declare-fun b_and!351551 () Bool)

(assert (=> start!713988 (= tp!2078887 b_and!351551)))

(declare-fun b!7320020 () Bool)

(assert (=> b!7320020 true))

(assert (=> b!7320020 true))

(declare-fun order!29175 () Int)

(declare-fun f!643 () Int)

(declare-fun lambda!452987 () Int)

(declare-fun order!29173 () Int)

(declare-fun dynLambda!29198 (Int Int) Int)

(declare-fun dynLambda!29199 (Int Int) Int)

(assert (=> b!7320020 (< (dynLambda!29198 order!29173 f!643) (dynLambda!29199 order!29175 lambda!452987))))

(declare-fun res!2958298 () Bool)

(declare-fun e!4382666 () Bool)

(assert (=> start!713988 (=> (not res!2958298) (not e!4382666))))

(declare-datatypes ((B!3691 0))(
  ( (B!3692 (val!29309 Int)) )
))
(declare-fun b!25336 () B!3691)

(declare-datatypes ((A!989 0))(
  ( (A!990 (val!29310 Int)) )
))
(declare-fun s1!434 () (Set A!989))

(declare-fun flatMap!3114 ((Set A!989) Int) (Set B!3691))

(assert (=> start!713988 (= res!2958298 (not (set.member b!25336 (flatMap!3114 s1!434 f!643))))))

(assert (=> start!713988 e!4382666))

(declare-fun tp_is_empty!47871 () Bool)

(assert (=> start!713988 tp_is_empty!47871))

(declare-fun condSetEmpty!55296 () Bool)

(assert (=> start!713988 (= condSetEmpty!55296 (= s1!434 (as set.empty (Set A!989))))))

(declare-fun setRes!55296 () Bool)

(assert (=> start!713988 setRes!55296))

(assert (=> start!713988 tp!2078887))

(declare-fun condSetEmpty!55295 () Bool)

(declare-fun s2!405 () (Set A!989))

(assert (=> start!713988 (= condSetEmpty!55295 (= s2!405 (as set.empty (Set A!989))))))

(declare-fun setRes!55295 () Bool)

(assert (=> start!713988 setRes!55295))

(declare-fun b!7320018 () Bool)

(declare-fun e!4382665 () Bool)

(assert (=> b!7320018 (= e!4382665 true)))

(declare-fun lt!2603656 () A!989)

(declare-fun getWitness!2358 ((Set A!989) Int) A!989)

(assert (=> b!7320018 (= lt!2603656 (getWitness!2358 s2!405 lambda!452987))))

(declare-fun b!7320019 () Bool)

(declare-fun res!2958299 () Bool)

(assert (=> b!7320019 (=> (not res!2958299) (not e!4382666))))

(assert (=> b!7320019 (= res!2958299 (set.member b!25336 (flatMap!3114 s2!405 f!643)))))

(declare-fun setIsEmpty!55295 () Bool)

(assert (=> setIsEmpty!55295 setRes!55296))

(declare-fun setNonEmpty!55295 () Bool)

(declare-fun tp!2078889 () Bool)

(declare-fun tp_is_empty!47869 () Bool)

(assert (=> setNonEmpty!55295 (= setRes!55296 (and tp!2078889 tp_is_empty!47869))))

(declare-fun setElem!55295 () A!989)

(declare-fun setRest!55296 () (Set A!989))

(assert (=> setNonEmpty!55295 (= s1!434 (set.union (set.insert setElem!55295 (as set.empty (Set A!989))) setRest!55296))))

(assert (=> b!7320020 (= e!4382666 (not e!4382665))))

(declare-fun res!2958300 () Bool)

(assert (=> b!7320020 (=> res!2958300 e!4382665)))

(declare-fun exists!4624 ((Set A!989) Int) Bool)

(assert (=> b!7320020 (= res!2958300 (not (exists!4624 s2!405 lambda!452987)))))

(declare-fun empty!3187 () A!989)

(declare-fun flatMapPost!117 ((Set A!989) Int B!3691) A!989)

(assert (=> b!7320020 (= (flatMapPost!117 s2!405 f!643 b!25336) empty!3187)))

(assert (=> b!7320020 true))

(assert (=> b!7320020 tp_is_empty!47869))

(declare-fun setNonEmpty!55296 () Bool)

(declare-fun tp!2078888 () Bool)

(assert (=> setNonEmpty!55296 (= setRes!55295 (and tp!2078888 tp_is_empty!47869))))

(declare-fun setElem!55296 () A!989)

(declare-fun setRest!55295 () (Set A!989))

(assert (=> setNonEmpty!55296 (= s2!405 (set.union (set.insert setElem!55296 (as set.empty (Set A!989))) setRest!55295))))

(declare-fun setIsEmpty!55296 () Bool)

(assert (=> setIsEmpty!55296 setRes!55295))

(assert (= (and start!713988 res!2958298) b!7320019))

(assert (= (and b!7320019 res!2958299) b!7320020))

(assert (= (and b!7320020 (not res!2958300)) b!7320018))

(assert (= (and start!713988 condSetEmpty!55296) setIsEmpty!55295))

(assert (= (and start!713988 (not condSetEmpty!55296)) setNonEmpty!55295))

(assert (= (and start!713988 condSetEmpty!55295) setIsEmpty!55296))

(assert (= (and start!713988 (not condSetEmpty!55295)) setNonEmpty!55296))

(declare-fun m!7984894 () Bool)

(assert (=> start!713988 m!7984894))

(declare-fun m!7984896 () Bool)

(assert (=> start!713988 m!7984896))

(declare-fun m!7984898 () Bool)

(assert (=> b!7320018 m!7984898))

(declare-fun m!7984900 () Bool)

(assert (=> b!7320019 m!7984900))

(declare-fun m!7984902 () Bool)

(assert (=> b!7320019 m!7984902))

(declare-fun m!7984904 () Bool)

(assert (=> b!7320020 m!7984904))

(declare-fun m!7984906 () Bool)

(assert (=> b!7320020 m!7984906))

(push 1)

(assert tp_is_empty!47869)

(assert (not b!7320020))

(assert (not setNonEmpty!55296))

(assert (not setNonEmpty!55295))

(assert tp_is_empty!47871)

(assert (not start!713988))

(assert (not b!7320019))

(assert (not b_next!134933))

(assert (not b!7320018))

(assert b_and!351551)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351551)

(assert (not b_next!134933))

(check-sat)

(pop 1)

