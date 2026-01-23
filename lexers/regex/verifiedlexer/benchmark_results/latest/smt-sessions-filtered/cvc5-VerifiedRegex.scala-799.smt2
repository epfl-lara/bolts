; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45206 () Bool)

(assert start!45206)

(declare-fun b_free!13173 () Bool)

(declare-fun b_next!13173 () Bool)

(assert (=> start!45206 (= b_free!13173 (not b_next!13173))))

(declare-fun tp!130788 () Bool)

(declare-fun b_and!50495 () Bool)

(assert (=> start!45206 (= tp!130788 b_and!50495)))

(declare-fun b_free!13175 () Bool)

(declare-fun b_next!13175 () Bool)

(assert (=> start!45206 (= b_free!13175 (not b_next!13175))))

(declare-fun tp!130790 () Bool)

(declare-fun b_and!50497 () Bool)

(assert (=> start!45206 (= tp!130790 b_and!50497)))

(assert (=> start!45206 true))

(declare-fun lambda!14010 () Int)

(declare-fun order!4217 () Int)

(declare-fun f!1027 () Int)

(declare-fun order!4215 () Int)

(declare-fun dynLambda!2876 (Int Int) Int)

(declare-fun dynLambda!2877 (Int Int) Int)

(assert (=> start!45206 (< (dynLambda!2876 order!4215 f!1027) (dynLambda!2877 order!4217 lambda!14010))))

(assert (=> start!45206 true))

(declare-fun p!1789 () Int)

(declare-fun order!4219 () Int)

(declare-fun dynLambda!2878 (Int Int) Int)

(assert (=> start!45206 (< (dynLambda!2878 order!4219 p!1789) (dynLambda!2877 order!4217 lambda!14010))))

(declare-fun b!472139 () Bool)

(declare-fun e!288788 () Bool)

(declare-fun tp_is_empty!2141 () Bool)

(declare-fun tp!130791 () Bool)

(assert (=> b!472139 (= e!288788 (and tp_is_empty!2141 tp!130791))))

(declare-fun setIsEmpty!1973 () Bool)

(declare-fun setRes!1973 () Bool)

(assert (=> setIsEmpty!1973 setRes!1973))

(declare-fun b!472138 () Bool)

(declare-fun e!288787 () Bool)

(assert (=> b!472138 (= e!288787 false)))

(declare-datatypes ((A!381 0))(
  ( (A!382 (val!1519 Int)) )
))
(declare-fun s!1494 () (Set A!381))

(declare-fun lt!210260 () Bool)

(declare-datatypes ((B!943 0))(
  ( (B!944 (val!1520 Int)) )
))
(declare-datatypes ((List!4559 0))(
  ( (Nil!4549) (Cons!4549 (h!9946 B!943) (t!73001 List!4559)) )
))
(declare-fun l!2882 () List!4559)

(declare-fun subseq!116 (List!4559 List!4559) Bool)

(declare-fun toList!330 ((Set B!943)) List!4559)

(declare-fun flatMap!95 ((Set A!381) Int) (Set B!943))

(assert (=> b!472138 (= lt!210260 (subseq!116 l!2882 (toList!330 (flatMap!95 s!1494 f!1027))))))

(declare-fun res!209457 () Bool)

(assert (=> start!45206 (=> (not res!209457) (not e!288787))))

(declare-fun Forall!245 (Int) Bool)

(assert (=> start!45206 (= res!209457 (Forall!245 lambda!14010))))

(assert (=> start!45206 e!288787))

(assert (=> start!45206 tp!130788))

(assert (=> start!45206 tp!130790))

(assert (=> start!45206 e!288788))

(declare-fun condSetEmpty!1973 () Bool)

(assert (=> start!45206 (= condSetEmpty!1973 (= s!1494 (as set.empty (Set A!381))))))

(assert (=> start!45206 setRes!1973))

(declare-fun setNonEmpty!1973 () Bool)

(declare-fun tp!130789 () Bool)

(declare-fun tp_is_empty!2143 () Bool)

(assert (=> setNonEmpty!1973 (= setRes!1973 (and tp!130789 tp_is_empty!2143))))

(declare-fun setElem!1973 () A!381)

(declare-fun setRest!1973 () (Set A!381))

(assert (=> setNonEmpty!1973 (= s!1494 (set.union (set.insert setElem!1973 (as set.empty (Set A!381))) setRest!1973))))

(assert (= (and start!45206 res!209457) b!472138))

(assert (= (and start!45206 (is-Cons!4549 l!2882)) b!472139))

(assert (= (and start!45206 condSetEmpty!1973) setIsEmpty!1973))

(assert (= (and start!45206 (not condSetEmpty!1973)) setNonEmpty!1973))

(declare-fun m!745507 () Bool)

(assert (=> b!472138 m!745507))

(assert (=> b!472138 m!745507))

(declare-fun m!745509 () Bool)

(assert (=> b!472138 m!745509))

(assert (=> b!472138 m!745509))

(declare-fun m!745511 () Bool)

(assert (=> b!472138 m!745511))

(declare-fun m!745513 () Bool)

(assert (=> start!45206 m!745513))

(push 1)

(assert b_and!50497)

(assert (not b!472138))

(assert (not b_next!13175))

(assert (not b_next!13173))

(assert b_and!50495)

(assert (not setNonEmpty!1973))

(assert tp_is_empty!2141)

(assert tp_is_empty!2143)

(assert (not b!472139))

(assert (not start!45206))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50495)

(assert b_and!50497)

(assert (not b_next!13175))

(assert (not b_next!13173))

(check-sat)

(pop 1)

