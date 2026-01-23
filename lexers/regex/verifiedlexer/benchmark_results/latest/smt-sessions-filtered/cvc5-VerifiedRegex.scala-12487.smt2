; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694942 () Bool)

(assert start!694942)

(declare-fun b_free!133827 () Bool)

(declare-fun b_next!134617 () Bool)

(assert (=> start!694942 (= b_free!133827 (not b_next!134617))))

(declare-fun tp!1966270 () Bool)

(declare-fun b_and!351001 () Bool)

(assert (=> start!694942 (= tp!1966270 b_and!351001)))

(declare-fun b!7133306 () Bool)

(declare-fun e!4287003 () Bool)

(declare-fun tp_is_empty!45813 () Bool)

(declare-fun tp!1966268 () Bool)

(assert (=> b!7133306 (= e!4287003 (and tp_is_empty!45813 tp!1966268))))

(declare-fun b!7133307 () Bool)

(declare-fun e!4287004 () Bool)

(assert (=> b!7133307 (= e!4287004 false)))

(declare-fun lt!2565182 () Bool)

(declare-datatypes ((B!3391 0))(
  ( (B!3392 (val!28167 Int)) )
))
(declare-datatypes ((List!69260 0))(
  ( (Nil!69136) (Cons!69136 (h!75584 B!3391) (t!383241 List!69260)) )
))
(declare-fun l1!1495 () List!69260)

(declare-fun l2!1464 () List!69260)

(declare-fun contains!20546 (List!69260 B!3391) Bool)

(assert (=> b!7133307 (= lt!2565182 (contains!20546 l1!1495 (h!75584 l2!1464)))))

(declare-datatypes ((Unit!163049 0))(
  ( (Unit!163050) )
))
(declare-fun lt!2565181 () Unit!163049)

(declare-fun p!2111 () Int)

(declare-fun lemmaContentSubsetPreservesForall!365 (List!69260 List!69260 Int) Unit!163049)

(assert (=> b!7133307 (= lt!2565181 (lemmaContentSubsetPreservesForall!365 l1!1495 (t!383241 l2!1464) p!2111))))

(declare-fun res!2910589 () Bool)

(assert (=> start!694942 (=> (not res!2910589) (not e!4287004))))

(declare-fun forall!16934 (List!69260 Int) Bool)

(assert (=> start!694942 (= res!2910589 (forall!16934 l1!1495 p!2111))))

(assert (=> start!694942 e!4287004))

(assert (=> start!694942 e!4287003))

(assert (=> start!694942 tp!1966270))

(declare-fun e!4287005 () Bool)

(assert (=> start!694942 e!4287005))

(declare-fun b!7133308 () Bool)

(declare-fun res!2910590 () Bool)

(assert (=> b!7133308 (=> (not res!2910590) (not e!4287004))))

(assert (=> b!7133308 (= res!2910590 (is-Cons!69136 l2!1464))))

(declare-fun b!7133309 () Bool)

(declare-fun res!2910588 () Bool)

(assert (=> b!7133309 (=> (not res!2910588) (not e!4287004))))

(declare-fun content!14136 (List!69260) (Set B!3391))

(assert (=> b!7133309 (= res!2910588 (set.subset (content!14136 l2!1464) (content!14136 l1!1495)))))

(declare-fun b!7133310 () Bool)

(declare-fun tp!1966269 () Bool)

(assert (=> b!7133310 (= e!4287005 (and tp_is_empty!45813 tp!1966269))))

(assert (= (and start!694942 res!2910589) b!7133309))

(assert (= (and b!7133309 res!2910588) b!7133308))

(assert (= (and b!7133308 res!2910590) b!7133307))

(assert (= (and start!694942 (is-Cons!69136 l1!1495)) b!7133306))

(assert (= (and start!694942 (is-Cons!69136 l2!1464)) b!7133310))

(declare-fun m!7850422 () Bool)

(assert (=> b!7133307 m!7850422))

(declare-fun m!7850424 () Bool)

(assert (=> b!7133307 m!7850424))

(declare-fun m!7850426 () Bool)

(assert (=> start!694942 m!7850426))

(declare-fun m!7850428 () Bool)

(assert (=> b!7133309 m!7850428))

(declare-fun m!7850430 () Bool)

(assert (=> b!7133309 m!7850430))

(push 1)

(assert (not b!7133309))

(assert (not b!7133307))

(assert (not start!694942))

(assert (not b_next!134617))

(assert (not b!7133310))

(assert (not b!7133306))

(assert tp_is_empty!45813)

(assert b_and!351001)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351001)

(assert (not b_next!134617))

(check-sat)

(pop 1)

