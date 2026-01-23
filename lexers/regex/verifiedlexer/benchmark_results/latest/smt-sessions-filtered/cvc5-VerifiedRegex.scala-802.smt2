; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45218 () Bool)

(assert start!45218)

(declare-fun b_free!13197 () Bool)

(declare-fun b_next!13197 () Bool)

(assert (=> start!45218 (= b_free!13197 (not b_next!13197))))

(declare-fun tp!130848 () Bool)

(declare-fun b_and!50531 () Bool)

(assert (=> start!45218 (= tp!130848 b_and!50531)))

(declare-fun b_free!13199 () Bool)

(declare-fun b_next!13199 () Bool)

(assert (=> start!45218 (= b_free!13199 (not b_next!13199))))

(declare-fun tp!130846 () Bool)

(declare-fun b_and!50533 () Bool)

(assert (=> start!45218 (= tp!130846 b_and!50533)))

(declare-fun b!472248 () Bool)

(assert (=> b!472248 true))

(declare-fun lambda!14060 () Int)

(declare-fun order!4253 () Int)

(declare-fun order!4251 () Int)

(declare-fun f!1019 () Int)

(declare-fun dynLambda!2896 (Int Int) Int)

(declare-fun dynLambda!2897 (Int Int) Int)

(assert (=> b!472248 (< (dynLambda!2896 order!4251 f!1019) (dynLambda!2897 order!4253 lambda!14060))))

(assert (=> b!472248 true))

(declare-fun order!4255 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2898 (Int Int) Int)

(assert (=> b!472248 (< (dynLambda!2898 order!4255 p!1765) (dynLambda!2897 order!4253 lambda!14060))))

(declare-fun b!472249 () Bool)

(declare-fun e!288845 () Bool)

(assert (=> b!472249 (= e!288845 (not true))))

(declare-datatypes ((B!955 0))(
  ( (B!956 (val!1531 Int)) )
))
(declare-fun elm!3 () B!955)

(declare-datatypes ((A!393 0))(
  ( (A!394 (val!1532 Int)) )
))
(declare-fun s!1493 () (Set A!393))

(declare-fun empty!2631 () A!393)

(declare-fun flatMapPost!25 ((Set A!393) Int B!955) A!393)

(assert (=> b!472249 (= (flatMapPost!25 s!1493 f!1019 elm!3) empty!2631)))

(assert (=> b!472249 true))

(declare-fun tp_is_empty!2165 () Bool)

(assert (=> b!472249 tp_is_empty!2165))

(declare-fun res!209532 () Bool)

(assert (=> b!472248 (=> (not res!209532) (not e!288845))))

(declare-fun Forall!251 (Int) Bool)

(assert (=> b!472248 (= res!209532 (Forall!251 lambda!14060))))

(declare-fun setNonEmpty!1991 () Bool)

(declare-fun setRes!1991 () Bool)

(declare-fun tp!130847 () Bool)

(assert (=> setNonEmpty!1991 (= setRes!1991 (and tp!130847 tp_is_empty!2165))))

(declare-fun setElem!1991 () A!393)

(declare-fun setRest!1991 () (Set A!393))

(assert (=> setNonEmpty!1991 (= s!1493 (set.union (set.insert setElem!1991 (as set.empty (Set A!393))) setRest!1991))))

(declare-fun setIsEmpty!1991 () Bool)

(assert (=> setIsEmpty!1991 setRes!1991))

(declare-fun res!209531 () Bool)

(assert (=> start!45218 (=> (not res!209531) (not e!288845))))

(declare-fun flatMap!101 ((Set A!393) Int) (Set B!955))

(assert (=> start!45218 (= res!209531 (set.member elm!3 (flatMap!101 s!1493 f!1019)))))

(assert (=> start!45218 e!288845))

(declare-fun tp_is_empty!2167 () Bool)

(assert (=> start!45218 tp_is_empty!2167))

(declare-fun condSetEmpty!1991 () Bool)

(assert (=> start!45218 (= condSetEmpty!1991 (= s!1493 (as set.empty (Set A!393))))))

(assert (=> start!45218 setRes!1991))

(assert (=> start!45218 tp!130848))

(assert (=> start!45218 tp!130846))

(assert (= (and start!45218 res!209531) b!472248))

(assert (= (and b!472248 res!209532) b!472249))

(assert (= (and start!45218 condSetEmpty!1991) setIsEmpty!1991))

(assert (= (and start!45218 (not condSetEmpty!1991)) setNonEmpty!1991))

(declare-fun m!745611 () Bool)

(assert (=> b!472249 m!745611))

(declare-fun m!745613 () Bool)

(assert (=> b!472248 m!745613))

(declare-fun m!745615 () Bool)

(assert (=> start!45218 m!745615))

(declare-fun m!745617 () Bool)

(assert (=> start!45218 m!745617))

(push 1)

(assert (not b!472249))

(assert tp_is_empty!2165)

(assert (not b_next!13197))

(assert (not b!472248))

(assert tp_is_empty!2167)

(assert b_and!50533)

(assert (not start!45218))

(assert b_and!50531)

(assert (not b_next!13199))

(assert (not setNonEmpty!1991))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50531)

(assert b_and!50533)

(assert (not b_next!13197))

(assert (not b_next!13199))

(check-sat)

(pop 1)

