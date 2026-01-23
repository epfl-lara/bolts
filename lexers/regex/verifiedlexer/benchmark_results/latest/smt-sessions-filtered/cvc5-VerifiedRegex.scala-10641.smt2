; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546132 () Bool)

(assert start!546132)

(declare-fun b_free!133591 () Bool)

(declare-fun b_next!134381 () Bool)

(assert (=> start!546132 (= b_free!133591 (not b_next!134381))))

(declare-fun tp!1448087 () Bool)

(declare-fun b_and!350639 () Bool)

(assert (=> start!546132 (= tp!1448087 b_and!350639)))

(declare-fun res!2195081 () Bool)

(declare-fun e!3216943 () Bool)

(assert (=> start!546132 (=> (not res!2195081) (not e!3216943))))

(declare-datatypes ((A!497 0))(
  ( (A!498 (val!24361 Int)) )
))
(declare-fun s!1393 () (Set A!497))

(declare-datatypes ((B!3147 0))(
  ( (B!3148 (val!24362 Int)) )
))
(declare-fun b!25308 () B!3147)

(declare-fun lt!2122780 () (Set B!3147))

(assert (=> start!546132 (= res!2195081 (and (set.member b!25308 lt!2122780) (= s!1393 (as set.empty (Set A!497)))))))

(declare-fun f!451 () Int)

(declare-fun flatMap!429 ((Set A!497) Int) (Set B!3147))

(assert (=> start!546132 (= lt!2122780 (flatMap!429 s!1393 f!451))))

(assert (=> start!546132 e!3216943))

(declare-fun condSetEmpty!31373 () Bool)

(assert (=> start!546132 (= condSetEmpty!31373 (= s!1393 (as set.empty (Set A!497))))))

(declare-fun setRes!31373 () Bool)

(assert (=> start!546132 setRes!31373))

(assert (=> start!546132 tp!1448087))

(declare-fun tp_is_empty!38303 () Bool)

(assert (=> start!546132 tp_is_empty!38303))

(declare-fun b!5163022 () Bool)

(assert (=> b!5163022 (= e!3216943 (not true))))

(assert (=> b!5163022 (= lt!2122780 (as set.empty (Set B!3147)))))

(declare-datatypes ((Unit!151333 0))(
  ( (Unit!151334) )
))
(declare-fun lt!2122781 () Unit!151333)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!11 ((Set A!497) Int) Unit!151333)

(assert (=> b!5163022 (= lt!2122781 (lemmaFlatMapOnEmptySetIsEmpty!11 s!1393 f!451))))

(declare-fun setIsEmpty!31373 () Bool)

(assert (=> setIsEmpty!31373 setRes!31373))

(declare-fun setNonEmpty!31373 () Bool)

(declare-fun tp!1448086 () Bool)

(declare-fun tp_is_empty!38301 () Bool)

(assert (=> setNonEmpty!31373 (= setRes!31373 (and tp!1448086 tp_is_empty!38301))))

(declare-fun setElem!31373 () A!497)

(declare-fun setRest!31373 () (Set A!497))

(assert (=> setNonEmpty!31373 (= s!1393 (set.union (set.insert setElem!31373 (as set.empty (Set A!497))) setRest!31373))))

(assert (= (and start!546132 res!2195081) b!5163022))

(assert (= (and start!546132 condSetEmpty!31373) setIsEmpty!31373))

(assert (= (and start!546132 (not condSetEmpty!31373)) setNonEmpty!31373))

(declare-fun m!6213676 () Bool)

(assert (=> start!546132 m!6213676))

(declare-fun m!6213678 () Bool)

(assert (=> start!546132 m!6213678))

(declare-fun m!6213680 () Bool)

(assert (=> b!5163022 m!6213680))

(push 1)

(assert (not setNonEmpty!31373))

(assert tp_is_empty!38301)

(assert b_and!350639)

(assert (not b_next!134381))

(assert (not b!5163022))

(assert (not start!546132))

(assert tp_is_empty!38303)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350639)

(assert (not b_next!134381))

(check-sat)

(pop 1)

