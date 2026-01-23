; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713984 () Bool)

(assert start!713984)

(declare-fun b_free!134139 () Bool)

(declare-fun b_next!134929 () Bool)

(assert (=> start!713984 (= b_free!134139 (not b_next!134929))))

(declare-fun tp!2078870 () Bool)

(declare-fun b_and!351547 () Bool)

(assert (=> start!713984 (= tp!2078870 b_and!351547)))

(declare-fun b!7319994 () Bool)

(assert (=> b!7319994 true))

(assert (=> b!7319994 true))

(declare-fun f!643 () Int)

(declare-fun lambda!452977 () Int)

(declare-fun order!29165 () Int)

(declare-fun order!29167 () Int)

(declare-fun dynLambda!29194 (Int Int) Int)

(declare-fun dynLambda!29195 (Int Int) Int)

(assert (=> b!7319994 (< (dynLambda!29194 order!29165 f!643) (dynLambda!29195 order!29167 lambda!452977))))

(declare-fun setIsEmpty!55283 () Bool)

(declare-fun setRes!55283 () Bool)

(assert (=> setIsEmpty!55283 setRes!55283))

(declare-fun setNonEmpty!55283 () Bool)

(declare-fun tp!2078871 () Bool)

(declare-fun tp_is_empty!47861 () Bool)

(assert (=> setNonEmpty!55283 (= setRes!55283 (and tp!2078871 tp_is_empty!47861))))

(declare-datatypes ((A!985 0))(
  ( (A!986 (val!29305 Int)) )
))
(declare-fun s1!434 () (Set A!985))

(declare-fun setElem!55283 () A!985)

(declare-fun setRest!55284 () (Set A!985))

(assert (=> setNonEmpty!55283 (= s1!434 (set.union (set.insert setElem!55283 (as set.empty (Set A!985))) setRest!55284))))

(declare-fun b!7319992 () Bool)

(declare-fun res!2958281 () Bool)

(declare-fun e!4382654 () Bool)

(assert (=> b!7319992 (=> (not res!2958281) (not e!4382654))))

(declare-fun s2!405 () (Set A!985))

(declare-datatypes ((B!3687 0))(
  ( (B!3688 (val!29306 Int)) )
))
(declare-fun b!25336 () B!3687)

(declare-fun flatMap!3112 ((Set A!985) Int) (Set B!3687))

(assert (=> b!7319992 (= res!2958281 (set.member b!25336 (flatMap!3112 s2!405 f!643)))))

(declare-fun setIsEmpty!55284 () Bool)

(declare-fun setRes!55284 () Bool)

(assert (=> setIsEmpty!55284 setRes!55284))

(declare-fun res!2958280 () Bool)

(assert (=> start!713984 (=> (not res!2958280) (not e!4382654))))

(assert (=> start!713984 (= res!2958280 (not (set.member b!25336 (flatMap!3112 s1!434 f!643))))))

(assert (=> start!713984 e!4382654))

(declare-fun tp_is_empty!47863 () Bool)

(assert (=> start!713984 tp_is_empty!47863))

(declare-fun condSetEmpty!55283 () Bool)

(assert (=> start!713984 (= condSetEmpty!55283 (= s1!434 (as set.empty (Set A!985))))))

(assert (=> start!713984 setRes!55283))

(assert (=> start!713984 tp!2078870))

(declare-fun condSetEmpty!55284 () Bool)

(assert (=> start!713984 (= condSetEmpty!55284 (= s2!405 (as set.empty (Set A!985))))))

(assert (=> start!713984 setRes!55284))

(declare-fun setNonEmpty!55284 () Bool)

(declare-fun tp!2078869 () Bool)

(assert (=> setNonEmpty!55284 (= setRes!55284 (and tp!2078869 tp_is_empty!47861))))

(declare-fun setElem!55284 () A!985)

(declare-fun setRest!55283 () (Set A!985))

(assert (=> setNonEmpty!55284 (= s2!405 (set.union (set.insert setElem!55284 (as set.empty (Set A!985))) setRest!55283))))

(declare-fun b!7319993 () Bool)

(declare-fun e!4382653 () Bool)

(declare-fun exists!4622 ((Set A!985) Int) Bool)

(assert (=> b!7319993 (= e!4382653 (exists!4622 s2!405 lambda!452977))))

(assert (=> b!7319994 (= e!4382654 (not e!4382653))))

(declare-fun res!2958282 () Bool)

(assert (=> b!7319994 (=> res!2958282 e!4382653)))

(assert (=> b!7319994 (= res!2958282 (not (exists!4622 s2!405 lambda!452977)))))

(declare-fun empty!3179 () A!985)

(declare-fun flatMapPost!115 ((Set A!985) Int B!3687) A!985)

(assert (=> b!7319994 (= (flatMapPost!115 s2!405 f!643 b!25336) empty!3179)))

(assert (=> b!7319994 true))

(assert (=> b!7319994 tp_is_empty!47861))

(assert (= (and start!713984 res!2958280) b!7319992))

(assert (= (and b!7319992 res!2958281) b!7319994))

(assert (= (and b!7319994 (not res!2958282)) b!7319993))

(assert (= (and start!713984 condSetEmpty!55283) setIsEmpty!55283))

(assert (= (and start!713984 (not condSetEmpty!55283)) setNonEmpty!55283))

(assert (= (and start!713984 condSetEmpty!55284) setIsEmpty!55284))

(assert (= (and start!713984 (not condSetEmpty!55284)) setNonEmpty!55284))

(declare-fun m!7984870 () Bool)

(assert (=> b!7319992 m!7984870))

(declare-fun m!7984872 () Bool)

(assert (=> b!7319992 m!7984872))

(declare-fun m!7984874 () Bool)

(assert (=> start!713984 m!7984874))

(declare-fun m!7984876 () Bool)

(assert (=> start!713984 m!7984876))

(declare-fun m!7984878 () Bool)

(assert (=> b!7319993 m!7984878))

(assert (=> b!7319994 m!7984878))

(declare-fun m!7984880 () Bool)

(assert (=> b!7319994 m!7984880))

(push 1)

(assert (not b_next!134929))

(assert (not b!7319992))

(assert tp_is_empty!47861)

(assert (not start!713984))

(assert b_and!351547)

(assert tp_is_empty!47863)

(assert (not setNonEmpty!55283))

(assert (not setNonEmpty!55284))

(assert (not b!7319993))

(assert (not b!7319994))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351547)

(assert (not b_next!134929))

(check-sat)

(pop 1)

