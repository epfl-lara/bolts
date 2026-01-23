; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713980 () Bool)

(assert start!713980)

(declare-fun b_free!134135 () Bool)

(declare-fun b_next!134925 () Bool)

(assert (=> start!713980 (= b_free!134135 (not b_next!134925))))

(declare-fun tp!2078855 () Bool)

(declare-fun b_and!351543 () Bool)

(assert (=> start!713980 (= tp!2078855 b_and!351543)))

(declare-fun b!7319970 () Bool)

(assert (=> b!7319970 true))

(assert (=> b!7319970 true))

(declare-fun order!29159 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29157 () Int)

(declare-fun lambda!452967 () Int)

(declare-fun dynLambda!29190 (Int Int) Int)

(declare-fun dynLambda!29191 (Int Int) Int)

(assert (=> b!7319970 (< (dynLambda!29190 order!29157 f!643) (dynLambda!29191 order!29159 lambda!452967))))

(declare-fun e!4382641 () Bool)

(declare-fun e!4382642 () Bool)

(assert (=> b!7319970 (= e!4382641 (not e!4382642))))

(declare-fun res!2958267 () Bool)

(assert (=> b!7319970 (=> res!2958267 e!4382642)))

(declare-datatypes ((A!981 0))(
  ( (A!982 (val!29301 Int)) )
))
(declare-fun s1!434 () (Set A!981))

(declare-fun exists!4620 ((Set A!981) Int) Bool)

(assert (=> b!7319970 (= res!2958267 (not (exists!4620 s1!434 lambda!452967)))))

(declare-fun empty!3171 () A!981)

(declare-datatypes ((B!3683 0))(
  ( (B!3684 (val!29302 Int)) )
))
(declare-fun b!25336 () B!3683)

(declare-fun flatMapPost!113 ((Set A!981) Int B!3683) A!981)

(assert (=> b!7319970 (= (flatMapPost!113 s1!434 f!643 b!25336) empty!3171)))

(assert (=> b!7319970 true))

(declare-fun tp_is_empty!47853 () Bool)

(assert (=> b!7319970 tp_is_empty!47853))

(declare-fun setIsEmpty!55275 () Bool)

(declare-fun setRes!55275 () Bool)

(assert (=> setIsEmpty!55275 setRes!55275))

(declare-fun setNonEmpty!55275 () Bool)

(declare-fun tp!2078856 () Bool)

(assert (=> setNonEmpty!55275 (= setRes!55275 (and tp!2078856 tp_is_empty!47853))))

(declare-fun setElem!55275 () A!981)

(declare-fun setRest!55275 () (Set A!981))

(assert (=> setNonEmpty!55275 (= s1!434 (set.union (set.insert setElem!55275 (as set.empty (Set A!981))) setRest!55275))))

(declare-fun res!2958266 () Bool)

(assert (=> start!713980 (=> (not res!2958266) (not e!4382641))))

(declare-fun flatMap!3110 ((Set A!981) Int) (Set B!3683))

(assert (=> start!713980 (= res!2958266 (set.member b!25336 (flatMap!3110 s1!434 f!643)))))

(assert (=> start!713980 e!4382641))

(declare-fun tp_is_empty!47855 () Bool)

(assert (=> start!713980 tp_is_empty!47855))

(declare-fun condSetEmpty!55275 () Bool)

(assert (=> start!713980 (= condSetEmpty!55275 (= s1!434 (as set.empty (Set A!981))))))

(assert (=> start!713980 setRes!55275))

(assert (=> start!713980 tp!2078855))

(declare-fun b!7319971 () Bool)

(assert (=> b!7319971 (= e!4382642 true)))

(declare-fun lt!2603650 () A!981)

(declare-fun getWitness!2356 ((Set A!981) Int) A!981)

(assert (=> b!7319971 (= lt!2603650 (getWitness!2356 s1!434 lambda!452967))))

(assert (= (and start!713980 res!2958266) b!7319970))

(assert (= (and b!7319970 (not res!2958267)) b!7319971))

(assert (= (and start!713980 condSetEmpty!55275) setIsEmpty!55275))

(assert (= (and start!713980 (not condSetEmpty!55275)) setNonEmpty!55275))

(declare-fun m!7984850 () Bool)

(assert (=> b!7319970 m!7984850))

(declare-fun m!7984852 () Bool)

(assert (=> b!7319970 m!7984852))

(declare-fun m!7984854 () Bool)

(assert (=> start!713980 m!7984854))

(declare-fun m!7984856 () Bool)

(assert (=> start!713980 m!7984856))

(declare-fun m!7984858 () Bool)

(assert (=> b!7319971 m!7984858))

(push 1)

(assert (not b!7319970))

(assert (not setNonEmpty!55275))

(assert (not b_next!134925))

(assert tp_is_empty!47855)

(assert (not start!713980))

(assert tp_is_empty!47853)

(assert b_and!351543)

(assert (not b!7319971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351543)

(assert (not b_next!134925))

(check-sat)

(pop 1)

