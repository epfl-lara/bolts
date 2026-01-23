; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727428 () Bool)

(assert start!727428)

(declare-fun setRes!57186 () Bool)

(declare-fun e!4477777 () Bool)

(declare-datatypes ((C!39806 0))(
  ( (C!39807 (val!30301 Int)) )
))
(declare-datatypes ((Regex!19740 0))(
  ( (ElementMatch!19740 (c!1386715 C!39806)) (Concat!28585 (regOne!39992 Regex!19740) (regTwo!39992 Regex!19740)) (EmptyExpr!19740) (Star!19740 (reg!20069 Regex!19740)) (EmptyLang!19740) (Union!19740 (regOne!39993 Regex!19740) (regTwo!39993 Regex!19740)) )
))
(declare-datatypes ((List!72591 0))(
  ( (Nil!72467) (Cons!72467 (h!78915 Regex!19740) (t!387160 List!72591)) )
))
(declare-datatypes ((Context!16984 0))(
  ( (Context!16985 (exprs!8992 List!72591)) )
))
(declare-fun setElem!57186 () Context!16984)

(declare-fun tp!2179680 () Bool)

(declare-fun setNonEmpty!57186 () Bool)

(declare-fun inv!92581 (Context!16984) Bool)

(assert (=> setNonEmpty!57186 (= setRes!57186 (and tp!2179680 (inv!92581 setElem!57186) e!4477777))))

(declare-fun z!563 () (Set Context!16984))

(declare-fun setRest!57186 () (Set Context!16984))

(assert (=> setNonEmpty!57186 (= z!563 (set.union (set.insert setElem!57186 (as set.empty (Set Context!16984))) setRest!57186))))

(declare-fun setIsEmpty!57186 () Bool)

(assert (=> setIsEmpty!57186 setRes!57186))

(declare-fun res!3012684 () Bool)

(declare-fun e!4477778 () Bool)

(assert (=> start!727428 (=> (not res!3012684) (not e!4477778))))

(declare-fun lambda!466054 () Int)

(declare-fun exists!4898 ((Set Context!16984) Int) Bool)

(assert (=> start!727428 (= res!3012684 (exists!4898 z!563 lambda!466054))))

(assert (=> start!727428 e!4477778))

(declare-fun condSetEmpty!57186 () Bool)

(assert (=> start!727428 (= condSetEmpty!57186 (= z!563 (as set.empty (Set Context!16984))))))

(assert (=> start!727428 setRes!57186))

(declare-fun b!7509353 () Bool)

(declare-fun tp!2179679 () Bool)

(assert (=> b!7509353 (= e!4477777 tp!2179679)))

(declare-fun b!7509352 () Bool)

(assert (=> b!7509352 (= e!4477778 (not (exists!4898 z!563 lambda!466054)))))

(assert (= (and start!727428 res!3012684) b!7509352))

(assert (= (and start!727428 condSetEmpty!57186) setIsEmpty!57186))

(assert (= (and start!727428 (not condSetEmpty!57186)) setNonEmpty!57186))

(assert (= setNonEmpty!57186 b!7509353))

(declare-fun m!8093464 () Bool)

(assert (=> setNonEmpty!57186 m!8093464))

(declare-fun m!8093466 () Bool)

(assert (=> start!727428 m!8093466))

(assert (=> b!7509352 m!8093466))

(push 1)

(assert (not start!727428))

(assert (not setNonEmpty!57186))

(assert (not b!7509352))

(assert (not b!7509353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

