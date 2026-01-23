; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694862 () Bool)

(assert start!694862)

(declare-fun b!7132706 () Bool)

(declare-fun res!2910353 () Bool)

(declare-fun e!4286597 () Bool)

(assert (=> b!7132706 (=> (not res!2910353) (not e!4286597))))

(declare-fun e!4286604 () Bool)

(assert (=> b!7132706 (= res!2910353 e!4286604)))

(declare-fun res!2910352 () Bool)

(assert (=> b!7132706 (=> res!2910352 e!4286604)))

(declare-datatypes ((C!36458 0))(
  ( (C!36459 (val!28155 Int)) )
))
(declare-datatypes ((Regex!18092 0))(
  ( (ElementMatch!18092 (c!1330324 C!36458)) (Concat!26937 (regOne!36696 Regex!18092) (regTwo!36696 Regex!18092)) (EmptyExpr!18092) (Star!18092 (reg!18421 Regex!18092)) (EmptyLang!18092) (Union!18092 (regOne!36697 Regex!18092) (regTwo!36697 Regex!18092)) )
))
(declare-datatypes ((List!69240 0))(
  ( (Nil!69116) (Cons!69116 (h!75564 Regex!18092) (t!383217 List!69240)) )
))
(declare-datatypes ((Context!14172 0))(
  ( (Context!14173 (exprs!7586 List!69240)) )
))
(declare-fun z1!538 () (Set Context!14172))

(declare-datatypes ((List!69241 0))(
  ( (Nil!69117) (Cons!69117 (h!75565 C!36458) (t!383218 List!69241)) )
))
(declare-fun s1!1678 () List!69241)

(declare-fun matchZipper!3348 ((Set Context!14172) List!69241) Bool)

(assert (=> b!7132706 (= res!2910352 (not (matchZipper!3348 z1!538 s1!1678)))))

(declare-fun b!7132707 () Bool)

(declare-fun e!4286599 () Bool)

(declare-fun e!4286602 () Bool)

(assert (=> b!7132707 (= e!4286599 e!4286602)))

(declare-fun res!2910354 () Bool)

(assert (=> b!7132707 (=> res!2910354 e!4286602)))

(declare-datatypes ((tuple2!68406 0))(
  ( (tuple2!68407 (_1!37506 List!69241) (_2!37506 List!69241)) )
))
(declare-fun lt!2565068 () tuple2!68406)

(assert (=> b!7132707 (= res!2910354 (not (matchZipper!3348 z1!538 (_1!37506 lt!2565068))))))

(declare-datatypes ((Option!17035 0))(
  ( (None!17034) (Some!17034 (v!53528 tuple2!68406)) )
))
(declare-fun get!24276 (Option!17035) tuple2!68406)

(assert (=> b!7132707 (= lt!2565068 (get!24276 None!17034))))

(declare-fun setIsEmpty!52224 () Bool)

(declare-fun setRes!52224 () Bool)

(assert (=> setIsEmpty!52224 setRes!52224))

(declare-fun b!7132708 () Bool)

(declare-fun e!4286606 () Bool)

(assert (=> b!7132708 (= e!4286597 e!4286606)))

(declare-fun res!2910358 () Bool)

(assert (=> b!7132708 (=> (not res!2910358) (not e!4286606))))

(assert (=> b!7132708 (= res!2910358 e!4286599)))

(declare-fun res!2910359 () Bool)

(assert (=> b!7132708 (=> res!2910359 e!4286599)))

(declare-fun lt!2565069 () Bool)

(assert (=> b!7132708 (= res!2910359 lt!2565069)))

(assert (=> b!7132708 (= lt!2565069 true)))

(declare-fun b!7132709 () Bool)

(declare-fun e!4286605 () Bool)

(declare-fun tp_is_empty!45789 () Bool)

(declare-fun tp!1965981 () Bool)

(assert (=> b!7132709 (= e!4286605 (and tp_is_empty!45789 tp!1965981))))

(declare-fun b!7132710 () Bool)

(declare-fun e!4286598 () Bool)

(declare-fun tp!1965984 () Bool)

(assert (=> b!7132710 (= e!4286598 (and tp_is_empty!45789 tp!1965984))))

(declare-fun b!7132711 () Bool)

(declare-fun e!4286600 () Bool)

(declare-fun tp!1965986 () Bool)

(assert (=> b!7132711 (= e!4286600 (and tp_is_empty!45789 tp!1965986))))

(declare-fun b!7132712 () Bool)

(declare-fun z2!457 () (Set Context!14172))

(declare-fun s2!1615 () List!69241)

(assert (=> b!7132712 (= e!4286604 (not (matchZipper!3348 z2!457 s2!1615)))))

(declare-fun b!7132713 () Bool)

(declare-fun s!7358 () List!69241)

(declare-fun ++!16232 (List!69241 List!69241) List!69241)

(assert (=> b!7132713 (= e!4286602 (not (= (++!16232 (_1!37506 lt!2565068) (_2!37506 lt!2565068)) s!7358)))))

(declare-fun b!7132714 () Bool)

(declare-fun e!4286601 () Bool)

(declare-fun tp!1965983 () Bool)

(assert (=> b!7132714 (= e!4286601 tp!1965983)))

(declare-fun b!7132715 () Bool)

(declare-fun res!2910355 () Bool)

(assert (=> b!7132715 (=> res!2910355 e!4286602)))

(assert (=> b!7132715 (= res!2910355 (not (matchZipper!3348 z2!457 (_2!37506 lt!2565068))))))

(declare-fun b!7132716 () Bool)

(declare-fun res!2910357 () Bool)

(assert (=> b!7132716 (=> (not res!2910357) (not e!4286597))))

(assert (=> b!7132716 (= res!2910357 (is-Nil!69117 s2!1615))))

(declare-fun b!7132717 () Bool)

(assert (=> b!7132717 (= e!4286606 (not lt!2565069))))

(declare-fun setIsEmpty!52225 () Bool)

(declare-fun setRes!52225 () Bool)

(assert (=> setIsEmpty!52225 setRes!52225))

(declare-fun setElem!52225 () Context!14172)

(declare-fun setNonEmpty!52224 () Bool)

(declare-fun tp!1965985 () Bool)

(declare-fun inv!88262 (Context!14172) Bool)

(assert (=> setNonEmpty!52224 (= setRes!52224 (and tp!1965985 (inv!88262 setElem!52225) e!4286601))))

(declare-fun setRest!52224 () (Set Context!14172))

(assert (=> setNonEmpty!52224 (= z1!538 (set.union (set.insert setElem!52225 (as set.empty (Set Context!14172))) setRest!52224))))

(declare-fun res!2910356 () Bool)

(assert (=> start!694862 (=> (not res!2910356) (not e!4286597))))

(assert (=> start!694862 (= res!2910356 (= (++!16232 s1!1678 s2!1615) s!7358))))

(assert (=> start!694862 e!4286597))

(declare-fun condSetEmpty!52225 () Bool)

(assert (=> start!694862 (= condSetEmpty!52225 (= z2!457 (as set.empty (Set Context!14172))))))

(assert (=> start!694862 setRes!52225))

(assert (=> start!694862 e!4286598))

(declare-fun condSetEmpty!52224 () Bool)

(assert (=> start!694862 (= condSetEmpty!52224 (= z1!538 (as set.empty (Set Context!14172))))))

(assert (=> start!694862 setRes!52224))

(assert (=> start!694862 e!4286605))

(assert (=> start!694862 e!4286600))

(declare-fun b!7132718 () Bool)

(declare-fun e!4286603 () Bool)

(declare-fun tp!1965982 () Bool)

(assert (=> b!7132718 (= e!4286603 tp!1965982)))

(declare-fun setElem!52224 () Context!14172)

(declare-fun setNonEmpty!52225 () Bool)

(declare-fun tp!1965980 () Bool)

(assert (=> setNonEmpty!52225 (= setRes!52225 (and tp!1965980 (inv!88262 setElem!52224) e!4286603))))

(declare-fun setRest!52225 () (Set Context!14172))

(assert (=> setNonEmpty!52225 (= z2!457 (set.union (set.insert setElem!52224 (as set.empty (Set Context!14172))) setRest!52225))))

(assert (= (and start!694862 res!2910356) b!7132706))

(assert (= (and b!7132706 (not res!2910352)) b!7132712))

(assert (= (and b!7132706 res!2910353) b!7132716))

(assert (= (and b!7132716 res!2910357) b!7132708))

(assert (= (and b!7132708 (not res!2910359)) b!7132707))

(assert (= (and b!7132707 (not res!2910354)) b!7132715))

(assert (= (and b!7132715 (not res!2910355)) b!7132713))

(assert (= (and b!7132708 res!2910358) b!7132717))

(assert (= (and start!694862 condSetEmpty!52225) setIsEmpty!52225))

(assert (= (and start!694862 (not condSetEmpty!52225)) setNonEmpty!52225))

(assert (= setNonEmpty!52225 b!7132718))

(assert (= (and start!694862 (is-Cons!69117 s2!1615)) b!7132710))

(assert (= (and start!694862 condSetEmpty!52224) setIsEmpty!52224))

(assert (= (and start!694862 (not condSetEmpty!52224)) setNonEmpty!52224))

(assert (= setNonEmpty!52224 b!7132714))

(assert (= (and start!694862 (is-Cons!69117 s1!1678)) b!7132709))

(assert (= (and start!694862 (is-Cons!69117 s!7358)) b!7132711))

(declare-fun m!7849850 () Bool)

(assert (=> b!7132715 m!7849850))

(declare-fun m!7849852 () Bool)

(assert (=> b!7132712 m!7849852))

(declare-fun m!7849854 () Bool)

(assert (=> b!7132707 m!7849854))

(declare-fun m!7849856 () Bool)

(assert (=> b!7132707 m!7849856))

(declare-fun m!7849858 () Bool)

(assert (=> setNonEmpty!52225 m!7849858))

(declare-fun m!7849860 () Bool)

(assert (=> setNonEmpty!52224 m!7849860))

(declare-fun m!7849862 () Bool)

(assert (=> b!7132706 m!7849862))

(declare-fun m!7849864 () Bool)

(assert (=> start!694862 m!7849864))

(declare-fun m!7849866 () Bool)

(assert (=> b!7132713 m!7849866))

(push 1)

(assert (not b!7132718))

(assert (not setNonEmpty!52224))

(assert (not setNonEmpty!52225))

(assert (not b!7132715))

(assert (not b!7132714))

(assert (not b!7132706))

(assert (not b!7132713))

(assert (not b!7132710))

(assert (not b!7132709))

(assert (not b!7132711))

(assert tp_is_empty!45789)

(assert (not b!7132712))

(assert (not start!694862))

(assert (not b!7132707))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

