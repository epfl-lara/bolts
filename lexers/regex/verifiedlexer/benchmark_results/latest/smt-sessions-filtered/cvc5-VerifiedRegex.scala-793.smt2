; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45040 () Bool)

(assert start!45040)

(declare-fun b_free!13125 () Bool)

(declare-fun b_next!13125 () Bool)

(assert (=> start!45040 (= b_free!13125 (not b_next!13125))))

(declare-fun tp!130591 () Bool)

(declare-fun b_and!50407 () Bool)

(assert (=> start!45040 (= tp!130591 b_and!50407)))

(declare-fun b_free!13127 () Bool)

(declare-fun b_next!13127 () Bool)

(assert (=> start!45040 (= b_free!13127 (not b_next!13127))))

(declare-fun tp!130590 () Bool)

(declare-fun b_and!50409 () Bool)

(assert (=> start!45040 (= tp!130590 b_and!50409)))

(assert (=> start!45040 true))

(declare-fun order!4143 () Int)

(declare-fun order!4145 () Int)

(declare-fun f!1027 () Int)

(declare-fun lambda!13932 () Int)

(declare-fun dynLambda!2831 (Int Int) Int)

(declare-fun dynLambda!2832 (Int Int) Int)

(assert (=> start!45040 (< (dynLambda!2831 order!4143 f!1027) (dynLambda!2832 order!4145 lambda!13932))))

(assert (=> start!45040 true))

(declare-fun p!1789 () Int)

(declare-fun order!4147 () Int)

(declare-fun dynLambda!2833 (Int Int) Int)

(assert (=> start!45040 (< (dynLambda!2833 order!4147 p!1789) (dynLambda!2832 order!4145 lambda!13932))))

(declare-fun res!209050 () Bool)

(declare-fun e!288308 () Bool)

(assert (=> start!45040 (=> (not res!209050) (not e!288308))))

(declare-fun Forall!233 (Int) Bool)

(assert (=> start!45040 (= res!209050 (Forall!233 lambda!13932))))

(assert (=> start!45040 e!288308))

(assert (=> start!45040 tp!130591))

(assert (=> start!45040 tp!130590))

(declare-fun condSetEmpty!1909 () Bool)

(declare-datatypes ((A!357 0))(
  ( (A!358 (val!1495 Int)) )
))
(declare-fun s!1494 () (Set A!357))

(assert (=> start!45040 (= condSetEmpty!1909 (= s!1494 (as set.empty (Set A!357))))))

(declare-fun setRes!1909 () Bool)

(assert (=> start!45040 setRes!1909))

(declare-fun e!288309 () Bool)

(assert (=> start!45040 e!288309))

(declare-fun b!471441 () Bool)

(declare-fun e!288306 () Bool)

(declare-fun e!288307 () Bool)

(assert (=> b!471441 (= e!288306 e!288307)))

(declare-fun res!209049 () Bool)

(assert (=> b!471441 (=> (not res!209049) (not e!288307))))

(declare-datatypes ((B!919 0))(
  ( (B!920 (val!1496 Int)) )
))
(declare-datatypes ((List!4546 0))(
  ( (Nil!4536) (Cons!4536 (h!9933 B!919) (t!72957 List!4546)) )
))
(declare-fun l!2882 () List!4546)

(declare-fun lt!210011 () (Set B!919))

(assert (=> b!471441 (= res!209049 (set.member (h!9933 l!2882) lt!210011))))

(declare-datatypes ((Unit!8273 0))(
  ( (Unit!8274) )
))
(declare-fun lt!210012 () Unit!8273)

(declare-fun lt!210013 () List!4546)

(declare-fun subseqContains!13 (List!4546 List!4546 B!919) Unit!8273)

(assert (=> b!471441 (= lt!210012 (subseqContains!13 l!2882 lt!210013 (h!9933 l!2882)))))

(declare-fun setNonEmpty!1909 () Bool)

(declare-fun tp!130589 () Bool)

(declare-fun tp_is_empty!2093 () Bool)

(assert (=> setNonEmpty!1909 (= setRes!1909 (and tp!130589 tp_is_empty!2093))))

(declare-fun setElem!1909 () A!357)

(declare-fun setRest!1909 () (Set A!357))

(assert (=> setNonEmpty!1909 (= s!1494 (set.union (set.insert setElem!1909 (as set.empty (Set A!357))) setRest!1909))))

(declare-fun b!471442 () Bool)

(assert (=> b!471442 (= e!288308 e!288306)))

(declare-fun res!209047 () Bool)

(assert (=> b!471442 (=> (not res!209047) (not e!288306))))

(declare-fun subseq!104 (List!4546 List!4546) Bool)

(assert (=> b!471442 (= res!209047 (subseq!104 l!2882 lt!210013))))

(declare-fun toList!317 ((Set B!919)) List!4546)

(assert (=> b!471442 (= lt!210013 (toList!317 lt!210011))))

(declare-fun flatMap!83 ((Set A!357) Int) (Set B!919))

(assert (=> b!471442 (= lt!210011 (flatMap!83 s!1494 f!1027))))

(declare-fun b!471443 () Bool)

(declare-fun res!209048 () Bool)

(assert (=> b!471443 (=> (not res!209048) (not e!288306))))

(assert (=> b!471443 (= res!209048 (is-Cons!4536 l!2882))))

(declare-fun b!471444 () Bool)

(declare-fun tp_is_empty!2095 () Bool)

(declare-fun tp!130588 () Bool)

(assert (=> b!471444 (= e!288309 (and tp_is_empty!2095 tp!130588))))

(declare-fun setIsEmpty!1909 () Bool)

(assert (=> setIsEmpty!1909 setRes!1909))

(declare-fun b!471445 () Bool)

(assert (=> b!471445 (= e!288307 (not (Forall!233 lambda!13932)))))

(declare-fun empty!2575 () A!357)

(declare-fun flatMapPost!11 ((Set A!357) Int B!919) A!357)

(assert (=> b!471445 (= (flatMapPost!11 s!1494 f!1027 (h!9933 l!2882)) empty!2575)))

(assert (=> b!471445 true))

(assert (=> b!471445 tp_is_empty!2093))

(assert (= (and start!45040 res!209050) b!471442))

(assert (= (and b!471442 res!209047) b!471443))

(assert (= (and b!471443 res!209048) b!471441))

(assert (= (and b!471441 res!209049) b!471445))

(assert (= (and start!45040 condSetEmpty!1909) setIsEmpty!1909))

(assert (= (and start!45040 (not condSetEmpty!1909)) setNonEmpty!1909))

(assert (= (and start!45040 (is-Cons!4536 l!2882)) b!471444))

(declare-fun m!744945 () Bool)

(assert (=> start!45040 m!744945))

(declare-fun m!744947 () Bool)

(assert (=> b!471441 m!744947))

(declare-fun m!744949 () Bool)

(assert (=> b!471441 m!744949))

(declare-fun m!744951 () Bool)

(assert (=> b!471442 m!744951))

(declare-fun m!744953 () Bool)

(assert (=> b!471442 m!744953))

(declare-fun m!744955 () Bool)

(assert (=> b!471442 m!744955))

(assert (=> b!471445 m!744945))

(declare-fun m!744957 () Bool)

(assert (=> b!471445 m!744957))

(push 1)

(assert (not b_next!13125))

(assert tp_is_empty!2095)

(assert (not setNonEmpty!1909))

(assert (not start!45040))

(assert (not b!471444))

(assert (not b_next!13127))

(assert tp_is_empty!2093)

(assert b_and!50407)

(assert (not b!471445))

(assert (not b!471441))

(assert b_and!50409)

(assert (not b!471442))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50407)

(assert b_and!50409)

(assert (not b_next!13127))

(assert (not b_next!13125))

(check-sat)

(pop 1)

