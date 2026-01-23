; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44942 () Bool)

(assert start!44942)

(declare-fun b_free!13069 () Bool)

(declare-fun b_next!13069 () Bool)

(assert (=> start!44942 (= b_free!13069 (not b_next!13069))))

(declare-fun tp!130378 () Bool)

(declare-fun b_and!50337 () Bool)

(assert (=> start!44942 (= tp!130378 b_and!50337)))

(declare-fun b_free!13071 () Bool)

(declare-fun b_next!13071 () Bool)

(assert (=> start!44942 (= b_free!13071 (not b_next!13071))))

(declare-fun tp!130376 () Bool)

(declare-fun b_and!50339 () Bool)

(assert (=> start!44942 (= tp!130376 b_and!50339)))

(assert (=> start!44942 true))

(declare-fun order!4059 () Int)

(declare-fun lambda!13869 () Int)

(declare-fun order!4061 () Int)

(declare-fun f!1027 () Int)

(declare-fun dynLambda!2783 (Int Int) Int)

(declare-fun dynLambda!2784 (Int Int) Int)

(assert (=> start!44942 (< (dynLambda!2783 order!4059 f!1027) (dynLambda!2784 order!4061 lambda!13869))))

(assert (=> start!44942 true))

(declare-fun p!1789 () Int)

(declare-fun order!4063 () Int)

(declare-fun dynLambda!2785 (Int Int) Int)

(assert (=> start!44942 (< (dynLambda!2785 order!4063 p!1789) (dynLambda!2784 order!4061 lambda!13869))))

(declare-fun res!208762 () Bool)

(declare-fun e!288007 () Bool)

(assert (=> start!44942 (=> (not res!208762) (not e!288007))))

(declare-fun Forall!219 (Int) Bool)

(assert (=> start!44942 (= res!208762 (Forall!219 lambda!13869))))

(assert (=> start!44942 e!288007))

(assert (=> start!44942 tp!130378))

(assert (=> start!44942 tp!130376))

(declare-fun condSetEmpty!1845 () Bool)

(declare-datatypes ((A!329 0))(
  ( (A!330 (val!1467 Int)) )
))
(declare-fun s!1494 () (Set A!329))

(assert (=> start!44942 (= condSetEmpty!1845 (= s!1494 (as set.empty (Set A!329))))))

(declare-fun setRes!1845 () Bool)

(assert (=> start!44942 setRes!1845))

(declare-fun e!288009 () Bool)

(assert (=> start!44942 e!288009))

(declare-fun setIsEmpty!1845 () Bool)

(assert (=> setIsEmpty!1845 setRes!1845))

(declare-fun setNonEmpty!1845 () Bool)

(declare-fun tp!130377 () Bool)

(declare-fun tp_is_empty!2037 () Bool)

(assert (=> setNonEmpty!1845 (= setRes!1845 (and tp!130377 tp_is_empty!2037))))

(declare-fun setElem!1845 () A!329)

(declare-fun setRest!1845 () (Set A!329))

(assert (=> setNonEmpty!1845 (= s!1494 (set.union (set.insert setElem!1845 (as set.empty (Set A!329))) setRest!1845))))

(declare-fun b!471005 () Bool)

(declare-fun e!288010 () Bool)

(assert (=> b!471005 (= e!288007 e!288010)))

(declare-fun res!208761 () Bool)

(assert (=> b!471005 (=> (not res!208761) (not e!288010))))

(declare-datatypes ((B!891 0))(
  ( (B!892 (val!1468 Int)) )
))
(declare-datatypes ((List!4532 0))(
  ( (Nil!4522) (Cons!4522 (h!9919 B!891) (t!72926 List!4532)) )
))
(declare-fun l!2882 () List!4532)

(declare-fun lt!209833 () List!4532)

(declare-fun subseq!90 (List!4532 List!4532) Bool)

(assert (=> b!471005 (= res!208761 (subseq!90 l!2882 lt!209833))))

(declare-fun lt!209834 () (Set B!891))

(declare-fun toList!303 ((Set B!891)) List!4532)

(assert (=> b!471005 (= lt!209833 (toList!303 lt!209834))))

(declare-fun flatMap!69 ((Set A!329) Int) (Set B!891))

(assert (=> b!471005 (= lt!209834 (flatMap!69 s!1494 f!1027))))

(declare-fun b!471006 () Bool)

(declare-fun tp_is_empty!2039 () Bool)

(declare-fun tp!130379 () Bool)

(assert (=> b!471006 (= e!288009 (and tp_is_empty!2039 tp!130379))))

(declare-fun b!471007 () Bool)

(declare-fun e!288008 () Bool)

(assert (=> b!471007 (= e!288008 (not true))))

(declare-fun empty!2535 () A!329)

(declare-fun flatMapPost!1 ((Set A!329) Int B!891) A!329)

(assert (=> b!471007 (= (flatMapPost!1 s!1494 f!1027 (h!9919 l!2882)) empty!2535)))

(assert (=> b!471007 true))

(assert (=> b!471007 tp_is_empty!2037))

(declare-fun b!471008 () Bool)

(assert (=> b!471008 (= e!288010 e!288008)))

(declare-fun res!208763 () Bool)

(assert (=> b!471008 (=> (not res!208763) (not e!288008))))

(assert (=> b!471008 (= res!208763 (set.member (h!9919 l!2882) lt!209834))))

(declare-datatypes ((Unit!8249 0))(
  ( (Unit!8250) )
))
(declare-fun lt!209835 () Unit!8249)

(declare-fun subseqContains!1 (List!4532 List!4532 B!891) Unit!8249)

(assert (=> b!471008 (= lt!209835 (subseqContains!1 l!2882 lt!209833 (h!9919 l!2882)))))

(declare-fun b!471009 () Bool)

(declare-fun res!208764 () Bool)

(assert (=> b!471009 (=> (not res!208764) (not e!288010))))

(assert (=> b!471009 (= res!208764 (is-Cons!4522 l!2882))))

(assert (= (and start!44942 res!208762) b!471005))

(assert (= (and b!471005 res!208761) b!471009))

(assert (= (and b!471009 res!208764) b!471008))

(assert (= (and b!471008 res!208763) b!471007))

(assert (= (and start!44942 condSetEmpty!1845) setIsEmpty!1845))

(assert (= (and start!44942 (not condSetEmpty!1845)) setNonEmpty!1845))

(assert (= (and start!44942 (is-Cons!4522 l!2882)) b!471006))

(declare-fun m!744599 () Bool)

(assert (=> start!44942 m!744599))

(declare-fun m!744601 () Bool)

(assert (=> b!471005 m!744601))

(declare-fun m!744603 () Bool)

(assert (=> b!471005 m!744603))

(declare-fun m!744605 () Bool)

(assert (=> b!471005 m!744605))

(declare-fun m!744607 () Bool)

(assert (=> b!471007 m!744607))

(declare-fun m!744609 () Bool)

(assert (=> b!471008 m!744609))

(declare-fun m!744611 () Bool)

(assert (=> b!471008 m!744611))

(push 1)

(assert (not b!471005))

(assert (not b!471006))

(assert (not setNonEmpty!1845))

(assert (not b!471008))

(assert b_and!50339)

(assert (not b_next!13069))

(assert tp_is_empty!2037)

(assert (not b_next!13071))

(assert b_and!50337)

(assert (not start!44942))

(assert tp_is_empty!2039)

(assert (not b!471007))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50337)

(assert b_and!50339)

(assert (not b_next!13071))

(assert (not b_next!13069))

(check-sat)

(pop 1)

