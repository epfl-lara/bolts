; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693932 () Bool)

(assert start!693932)

(declare-fun b_free!133755 () Bool)

(declare-fun b_next!134545 () Bool)

(assert (=> start!693932 (= b_free!133755 (not b_next!134545))))

(declare-fun tp!1961787 () Bool)

(declare-fun b_and!350851 () Bool)

(assert (=> start!693932 (= tp!1961787 b_and!350851)))

(declare-fun setNonEmpty!51332 () Bool)

(declare-fun setRes!51333 () Bool)

(declare-fun tp!1961788 () Bool)

(declare-fun tp_is_empty!45473 () Bool)

(assert (=> setNonEmpty!51332 (= setRes!51333 (and tp!1961788 tp_is_empty!45473))))

(declare-datatypes ((A!661 0))(
  ( (A!662 (val!27987 Int)) )
))
(declare-fun s1!424 () (Set A!661))

(declare-fun setElem!51333 () A!661)

(declare-fun setRest!51333 () (Set A!661))

(assert (=> setNonEmpty!51332 (= s1!424 (set.union (set.insert setElem!51333 (as set.empty (Set A!661))) setRest!51333))))

(declare-fun setNonEmpty!51333 () Bool)

(declare-fun setRes!51332 () Bool)

(declare-fun tp!1961785 () Bool)

(assert (=> setNonEmpty!51333 (= setRes!51332 (and tp!1961785 tp_is_empty!45473))))

(declare-fun s2!395 () (Set A!661))

(declare-fun setElem!51332 () A!661)

(declare-fun setRest!51332 () (Set A!661))

(assert (=> setNonEmpty!51333 (= s2!395 (set.union (set.insert setElem!51332 (as set.empty (Set A!661))) setRest!51332))))

(declare-fun setIsEmpty!51332 () Bool)

(assert (=> setIsEmpty!51332 setRes!51332))

(declare-fun setIsEmpty!51333 () Bool)

(assert (=> setIsEmpty!51333 setRes!51333))

(declare-fun b!7123843 () Bool)

(declare-fun e!4280905 () Bool)

(declare-fun tp_is_empty!45475 () Bool)

(declare-fun tp!1961786 () Bool)

(assert (=> b!7123843 (= e!4280905 (and tp_is_empty!45475 tp!1961786))))

(declare-fun res!2906694 () Bool)

(declare-fun e!4280906 () Bool)

(assert (=> start!693932 (=> (not res!2906694) (not e!4280906))))

(declare-fun f!607 () Int)

(declare-datatypes ((B!3319 0))(
  ( (B!3320 (val!27988 Int)) )
))
(declare-datatypes ((List!69029 0))(
  ( (Nil!68905) (Cons!68905 (h!75353 B!3319) (t!382944 List!69029)) )
))
(declare-fun l1!770 () List!69029)

(declare-fun toList!11132 ((Set B!3319)) List!69029)

(declare-fun map!16442 ((Set A!661) Int) (Set B!3319))

(assert (=> start!693932 (= res!2906694 (= l1!770 (toList!11132 (set.union (map!16442 s1!424 f!607) (map!16442 s2!395 f!607)))))))

(assert (=> start!693932 e!4280906))

(declare-fun condSetEmpty!51332 () Bool)

(assert (=> start!693932 (= condSetEmpty!51332 (= s1!424 (as set.empty (Set A!661))))))

(assert (=> start!693932 setRes!51333))

(assert (=> start!693932 e!4280905))

(declare-fun e!4280907 () Bool)

(assert (=> start!693932 e!4280907))

(declare-fun condSetEmpty!51333 () Bool)

(assert (=> start!693932 (= condSetEmpty!51333 (= s2!395 (as set.empty (Set A!661))))))

(assert (=> start!693932 setRes!51332))

(assert (=> start!693932 tp!1961787))

(declare-fun b!7123844 () Bool)

(declare-fun tp!1961784 () Bool)

(assert (=> b!7123844 (= e!4280907 (and tp_is_empty!45475 tp!1961784))))

(declare-fun b!7123845 () Bool)

(assert (=> b!7123845 (= e!4280906 false)))

(declare-fun lt!2562581 () Bool)

(declare-fun l2!759 () List!69029)

(declare-fun subseq!768 (List!69029 List!69029) Bool)

(assert (=> b!7123845 (= lt!2562581 (subseq!768 l2!759 (toList!11132 (map!16442 (set.union s1!424 s2!395) f!607))))))

(assert (= (and start!693932 res!2906694) b!7123845))

(assert (= (and start!693932 condSetEmpty!51332) setIsEmpty!51333))

(assert (= (and start!693932 (not condSetEmpty!51332)) setNonEmpty!51332))

(assert (= (and start!693932 (is-Cons!68905 l2!759)) b!7123843))

(assert (= (and start!693932 (is-Cons!68905 l1!770)) b!7123844))

(assert (= (and start!693932 condSetEmpty!51333) setIsEmpty!51332))

(assert (= (and start!693932 (not condSetEmpty!51333)) setNonEmpty!51333))

(declare-fun m!7841188 () Bool)

(assert (=> start!693932 m!7841188))

(declare-fun m!7841190 () Bool)

(assert (=> start!693932 m!7841190))

(declare-fun m!7841192 () Bool)

(assert (=> start!693932 m!7841192))

(declare-fun m!7841194 () Bool)

(assert (=> b!7123845 m!7841194))

(assert (=> b!7123845 m!7841194))

(declare-fun m!7841196 () Bool)

(assert (=> b!7123845 m!7841196))

(assert (=> b!7123845 m!7841196))

(declare-fun m!7841198 () Bool)

(assert (=> b!7123845 m!7841198))

(push 1)

(assert (not b_next!134545))

(assert (not setNonEmpty!51333))

(assert tp_is_empty!45475)

(assert (not b!7123844))

(assert (not b!7123843))

(assert (not start!693932))

(assert (not b!7123845))

(assert (not setNonEmpty!51332))

(assert b_and!350851)

(assert tp_is_empty!45473)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350851)

(assert (not b_next!134545))

(check-sat)

(pop 1)

