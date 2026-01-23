; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!693694 () Bool)

(assert start!693694)

(declare-fun b_free!133723 () Bool)

(declare-fun b_next!134513 () Bool)

(assert (=> start!693694 (= b_free!133723 (not b_next!134513))))

(declare-fun tp!1961400 () Bool)

(declare-fun b_and!350819 () Bool)

(assert (=> start!693694 (= tp!1961400 b_and!350819)))

(declare-fun setNonEmpty!51160 () Bool)

(declare-fun setRes!51161 () Bool)

(declare-fun tp!1961396 () Bool)

(declare-fun tp_is_empty!45409 () Bool)

(assert (=> setNonEmpty!51160 (= setRes!51161 (and tp!1961396 tp_is_empty!45409))))

(declare-datatypes ((A!629 0))(
  ( (A!630 (val!27955 Int)) )
))
(declare-fun s1!424 () (Set A!629))

(declare-fun setElem!51160 () A!629)

(declare-fun setRest!51161 () (Set A!629))

(assert (=> setNonEmpty!51160 (= s1!424 (set.union (set.insert setElem!51160 (as set.empty (Set A!629))) setRest!51161))))

(declare-fun b!7122805 () Bool)

(declare-fun e!4280107 () Bool)

(declare-fun tp_is_empty!45411 () Bool)

(declare-fun tp!1961397 () Bool)

(assert (=> b!7122805 (= e!4280107 (and tp_is_empty!45411 tp!1961397))))

(declare-fun b!7122806 () Bool)

(declare-fun e!4280105 () Bool)

(assert (=> b!7122806 (= e!4280105 (not true))))

(declare-datatypes ((Unit!162735 0))(
  ( (Unit!162736) )
))
(declare-fun lt!2562245 () Unit!162735)

(declare-datatypes ((B!3287 0))(
  ( (B!3288 (val!27956 Int)) )
))
(declare-datatypes ((List!69013 0))(
  ( (Nil!68889) (Cons!68889 (h!75337 B!3287) (t!382924 List!69013)) )
))
(declare-fun l2!759 () List!69013)

(declare-fun lt!2562243 () List!69013)

(declare-fun subseqTail!27 (List!69013 List!69013) Unit!162735)

(assert (=> b!7122806 (= lt!2562245 (subseqTail!27 l2!759 lt!2562243))))

(declare-fun lt!2562246 () (Set B!3287))

(declare-fun lt!2562244 () (Set B!3287))

(assert (=> b!7122806 (= (set.member (h!75337 l2!759) lt!2562246) (set.member (h!75337 l2!759) lt!2562244))))

(declare-fun lt!2562247 () Unit!162735)

(declare-fun s2!395 () (Set A!629))

(declare-fun f!607 () Int)

(declare-fun lemmaMapAssociativeElem!15 ((Set A!629) (Set A!629) Int B!3287) Unit!162735)

(assert (=> b!7122806 (= lt!2562247 (lemmaMapAssociativeElem!15 s1!424 s2!395 f!607 (h!75337 l2!759)))))

(declare-fun setIsEmpty!51160 () Bool)

(assert (=> setIsEmpty!51160 setRes!51161))

(declare-fun setIsEmpty!51161 () Bool)

(declare-fun setRes!51160 () Bool)

(assert (=> setIsEmpty!51161 setRes!51160))

(declare-fun b!7122808 () Bool)

(declare-fun e!4280104 () Bool)

(assert (=> b!7122808 (= e!4280104 e!4280105)))

(declare-fun res!2906089 () Bool)

(assert (=> b!7122808 (=> (not res!2906089) (not e!4280105))))

(declare-fun subseq!752 (List!69013 List!69013) Bool)

(assert (=> b!7122808 (= res!2906089 (subseq!752 l2!759 lt!2562243))))

(declare-fun toList!11116 ((Set B!3287)) List!69013)

(assert (=> b!7122808 (= lt!2562243 (toList!11116 lt!2562244))))

(declare-fun map!16418 ((Set A!629) Int) (Set B!3287))

(assert (=> b!7122808 (= lt!2562244 (map!16418 (set.union s1!424 s2!395) f!607))))

(declare-fun b!7122809 () Bool)

(declare-fun res!2906088 () Bool)

(assert (=> b!7122809 (=> (not res!2906088) (not e!4280105))))

(assert (=> b!7122809 (= res!2906088 (is-Cons!68889 l2!759))))

(declare-fun setNonEmpty!51161 () Bool)

(declare-fun tp!1961398 () Bool)

(assert (=> setNonEmpty!51161 (= setRes!51160 (and tp!1961398 tp_is_empty!45409))))

(declare-fun setElem!51161 () A!629)

(declare-fun setRest!51160 () (Set A!629))

(assert (=> setNonEmpty!51161 (= s2!395 (set.union (set.insert setElem!51161 (as set.empty (Set A!629))) setRest!51160))))

(declare-fun res!2906087 () Bool)

(assert (=> start!693694 (=> (not res!2906087) (not e!4280104))))

(declare-fun l1!770 () List!69013)

(assert (=> start!693694 (= res!2906087 (= l1!770 (toList!11116 lt!2562246)))))

(assert (=> start!693694 (= lt!2562246 (set.union (map!16418 s1!424 f!607) (map!16418 s2!395 f!607)))))

(assert (=> start!693694 e!4280104))

(declare-fun condSetEmpty!51160 () Bool)

(assert (=> start!693694 (= condSetEmpty!51160 (= s1!424 (as set.empty (Set A!629))))))

(assert (=> start!693694 setRes!51161))

(assert (=> start!693694 e!4280107))

(declare-fun e!4280106 () Bool)

(assert (=> start!693694 e!4280106))

(declare-fun condSetEmpty!51161 () Bool)

(assert (=> start!693694 (= condSetEmpty!51161 (= s2!395 (as set.empty (Set A!629))))))

(assert (=> start!693694 setRes!51160))

(assert (=> start!693694 tp!1961400))

(declare-fun b!7122807 () Bool)

(declare-fun tp!1961399 () Bool)

(assert (=> b!7122807 (= e!4280106 (and tp_is_empty!45411 tp!1961399))))

(assert (= (and start!693694 res!2906087) b!7122808))

(assert (= (and b!7122808 res!2906089) b!7122809))

(assert (= (and b!7122809 res!2906088) b!7122806))

(assert (= (and start!693694 condSetEmpty!51160) setIsEmpty!51160))

(assert (= (and start!693694 (not condSetEmpty!51160)) setNonEmpty!51160))

(assert (= (and start!693694 (is-Cons!68889 l2!759)) b!7122805))

(assert (= (and start!693694 (is-Cons!68889 l1!770)) b!7122807))

(assert (= (and start!693694 condSetEmpty!51161) setIsEmpty!51161))

(assert (= (and start!693694 (not condSetEmpty!51161)) setNonEmpty!51161))

(declare-fun m!7840106 () Bool)

(assert (=> b!7122806 m!7840106))

(declare-fun m!7840108 () Bool)

(assert (=> b!7122806 m!7840108))

(declare-fun m!7840110 () Bool)

(assert (=> b!7122806 m!7840110))

(declare-fun m!7840112 () Bool)

(assert (=> b!7122806 m!7840112))

(declare-fun m!7840114 () Bool)

(assert (=> b!7122808 m!7840114))

(declare-fun m!7840116 () Bool)

(assert (=> b!7122808 m!7840116))

(declare-fun m!7840118 () Bool)

(assert (=> b!7122808 m!7840118))

(declare-fun m!7840120 () Bool)

(assert (=> start!693694 m!7840120))

(declare-fun m!7840122 () Bool)

(assert (=> start!693694 m!7840122))

(declare-fun m!7840124 () Bool)

(assert (=> start!693694 m!7840124))

(push 1)

(assert (not b!7122805))

(assert tp_is_empty!45409)

(assert (not b!7122806))

(assert tp_is_empty!45411)

(assert (not setNonEmpty!51160))

(assert (not b!7122807))

(assert (not setNonEmpty!51161))

(assert (not b!7122808))

(assert (not start!693694))

(assert b_and!350819)

(assert (not b_next!134513))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350819)

(assert (not b_next!134513))

(check-sat)

(pop 1)

