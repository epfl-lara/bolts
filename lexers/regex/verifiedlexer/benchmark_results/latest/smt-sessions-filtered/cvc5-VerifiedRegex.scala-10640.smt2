; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546128 () Bool)

(assert start!546128)

(declare-fun b_free!133587 () Bool)

(declare-fun b_next!134377 () Bool)

(assert (=> start!546128 (= b_free!133587 (not b_next!134377))))

(declare-fun tp!1448074 () Bool)

(declare-fun b_and!350635 () Bool)

(assert (=> start!546128 (= tp!1448074 b_and!350635)))

(declare-fun res!2195075 () Bool)

(declare-fun e!3216937 () Bool)

(assert (=> start!546128 (=> (not res!2195075) (not e!3216937))))

(declare-datatypes ((B!3143 0))(
  ( (B!3144 (val!24357 Int)) )
))
(declare-fun lt!2122769 () (Set B!3143))

(declare-datatypes ((A!493 0))(
  ( (A!494 (val!24358 Int)) )
))
(declare-fun s!1393 () (Set A!493))

(declare-fun b!25308 () B!3143)

(assert (=> start!546128 (= res!2195075 (and (set.member b!25308 lt!2122769) (= s!1393 (as set.empty (Set A!493)))))))

(declare-fun f!451 () Int)

(declare-fun flatMap!427 ((Set A!493) Int) (Set B!3143))

(assert (=> start!546128 (= lt!2122769 (flatMap!427 s!1393 f!451))))

(assert (=> start!546128 e!3216937))

(declare-fun condSetEmpty!31367 () Bool)

(assert (=> start!546128 (= condSetEmpty!31367 (= s!1393 (as set.empty (Set A!493))))))

(declare-fun setRes!31367 () Bool)

(assert (=> start!546128 setRes!31367))

(assert (=> start!546128 tp!1448074))

(declare-fun tp_is_empty!38295 () Bool)

(assert (=> start!546128 tp_is_empty!38295))

(declare-fun b!5163016 () Bool)

(assert (=> b!5163016 (= e!3216937 (not false))))

(assert (=> b!5163016 (= lt!2122769 (as set.empty (Set B!3143)))))

(declare-datatypes ((Unit!151329 0))(
  ( (Unit!151330) )
))
(declare-fun lt!2122768 () Unit!151329)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!9 ((Set A!493) Int) Unit!151329)

(assert (=> b!5163016 (= lt!2122768 (lemmaFlatMapOnEmptySetIsEmpty!9 s!1393 f!451))))

(declare-fun setIsEmpty!31367 () Bool)

(assert (=> setIsEmpty!31367 setRes!31367))

(declare-fun setNonEmpty!31367 () Bool)

(declare-fun tp!1448075 () Bool)

(declare-fun tp_is_empty!38293 () Bool)

(assert (=> setNonEmpty!31367 (= setRes!31367 (and tp!1448075 tp_is_empty!38293))))

(declare-fun setElem!31367 () A!493)

(declare-fun setRest!31367 () (Set A!493))

(assert (=> setNonEmpty!31367 (= s!1393 (set.union (set.insert setElem!31367 (as set.empty (Set A!493))) setRest!31367))))

(assert (= (and start!546128 res!2195075) b!5163016))

(assert (= (and start!546128 condSetEmpty!31367) setIsEmpty!31367))

(assert (= (and start!546128 (not condSetEmpty!31367)) setNonEmpty!31367))

(declare-fun m!6213664 () Bool)

(assert (=> start!546128 m!6213664))

(declare-fun m!6213666 () Bool)

(assert (=> start!546128 m!6213666))

(declare-fun m!6213668 () Bool)

(assert (=> b!5163016 m!6213668))

(push 1)

(assert (not start!546128))

(assert tp_is_empty!38295)

(assert (not setNonEmpty!31367))

(assert (not b!5163016))

(assert tp_is_empty!38293)

(assert b_and!350635)

(assert (not b_next!134377))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350635)

(assert (not b_next!134377))

(check-sat)

(pop 1)

