; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546136 () Bool)

(assert start!546136)

(declare-fun b_free!133595 () Bool)

(declare-fun b_next!134385 () Bool)

(assert (=> start!546136 (= b_free!133595 (not b_next!134385))))

(declare-fun tp!1448099 () Bool)

(declare-fun b_and!350643 () Bool)

(assert (=> start!546136 (= tp!1448099 b_and!350643)))

(declare-fun b!5163032 () Bool)

(assert (=> b!5163032 true))

(assert (=> b!5163032 true))

(declare-fun lambda!257696 () Int)

(declare-fun order!27025 () Int)

(declare-fun f!451 () Int)

(declare-fun order!27023 () Int)

(declare-fun dynLambda!23855 (Int Int) Int)

(declare-fun dynLambda!23856 (Int Int) Int)

(assert (=> b!5163032 (< (dynLambda!23855 order!27023 f!451) (dynLambda!23856 order!27025 lambda!257696))))

(declare-fun setNonEmpty!31379 () Bool)

(declare-fun setRes!31379 () Bool)

(declare-fun tp!1448098 () Bool)

(declare-fun tp_is_empty!38309 () Bool)

(assert (=> setNonEmpty!31379 (= setRes!31379 (and tp!1448098 tp_is_empty!38309))))

(declare-datatypes ((A!501 0))(
  ( (A!502 (val!24365 Int)) )
))
(declare-fun s!1393 () (Set A!501))

(declare-fun setElem!31379 () A!501)

(declare-fun setRest!31379 () (Set A!501))

(assert (=> setNonEmpty!31379 (= s!1393 (set.union (set.insert setElem!31379 (as set.empty (Set A!501))) setRest!31379))))

(declare-fun setIsEmpty!31379 () Bool)

(assert (=> setIsEmpty!31379 setRes!31379))

(declare-fun e!3216951 () Bool)

(declare-fun e!3216952 () Bool)

(assert (=> b!5163032 (= e!3216951 (not e!3216952))))

(declare-fun res!2195092 () Bool)

(assert (=> b!5163032 (=> res!2195092 e!3216952)))

(declare-fun exists!1885 ((Set A!501) Int) Bool)

(assert (=> b!5163032 (= res!2195092 (not (exists!1885 s!1393 lambda!257696)))))

(declare-fun empty!2707 () A!501)

(declare-datatypes ((B!3151 0))(
  ( (B!3152 (val!24366 Int)) )
))
(declare-fun b!25308 () B!3151)

(declare-fun flatMapPost!43 ((Set A!501) Int B!3151) A!501)

(assert (=> b!5163032 (= (flatMapPost!43 s!1393 f!451 b!25308) empty!2707)))

(assert (=> b!5163032 true))

(assert (=> b!5163032 tp_is_empty!38309))

(declare-fun b!5163034 () Bool)

(assert (=> b!5163034 (= e!3216952 (exists!1885 s!1393 lambda!257696))))

(declare-fun res!2195093 () Bool)

(assert (=> start!546136 (=> (not res!2195093) (not e!3216951))))

(declare-fun flatMap!431 ((Set A!501) Int) (Set B!3151))

(assert (=> start!546136 (= res!2195093 (set.member b!25308 (flatMap!431 s!1393 f!451)))))

(assert (=> start!546136 e!3216951))

(declare-fun tp_is_empty!38311 () Bool)

(assert (=> start!546136 tp_is_empty!38311))

(declare-fun condSetEmpty!31379 () Bool)

(assert (=> start!546136 (= condSetEmpty!31379 (= s!1393 (as set.empty (Set A!501))))))

(assert (=> start!546136 setRes!31379))

(assert (=> start!546136 tp!1448099))

(declare-fun b!5163033 () Bool)

(declare-fun res!2195091 () Bool)

(assert (=> b!5163033 (=> (not res!2195091) (not e!3216951))))

(assert (=> b!5163033 (= res!2195091 (not (= s!1393 (as set.empty (Set A!501)))))))

(assert (= (and start!546136 res!2195093) b!5163033))

(assert (= (and b!5163033 res!2195091) b!5163032))

(assert (= (and b!5163032 (not res!2195092)) b!5163034))

(assert (= (and start!546136 condSetEmpty!31379) setIsEmpty!31379))

(assert (= (and start!546136 (not condSetEmpty!31379)) setNonEmpty!31379))

(declare-fun m!6213688 () Bool)

(assert (=> b!5163032 m!6213688))

(declare-fun m!6213690 () Bool)

(assert (=> b!5163032 m!6213690))

(assert (=> b!5163034 m!6213688))

(declare-fun m!6213692 () Bool)

(assert (=> start!546136 m!6213692))

(declare-fun m!6213694 () Bool)

(assert (=> start!546136 m!6213694))

(push 1)

(assert (not start!546136))

(assert tp_is_empty!38309)

(assert tp_is_empty!38311)

(assert b_and!350643)

(assert (not b_next!134385))

(assert (not setNonEmpty!31379))

(assert (not b!5163034))

(assert (not b!5163032))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350643)

(assert (not b_next!134385))

(check-sat)

(pop 1)

