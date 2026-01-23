; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727264 () Bool)

(assert start!727264)

(declare-fun setRes!57119 () Bool)

(declare-fun setNonEmpty!57119 () Bool)

(declare-fun tp!2179461 () Bool)

(declare-fun e!4477486 () Bool)

(declare-datatypes ((C!39782 0))(
  ( (C!39783 (val!30289 Int)) )
))
(declare-datatypes ((Regex!19728 0))(
  ( (ElementMatch!19728 (c!1386572 C!39782)) (Concat!28573 (regOne!39968 Regex!19728) (regTwo!39968 Regex!19728)) (EmptyExpr!19728) (Star!19728 (reg!20057 Regex!19728)) (EmptyLang!19728) (Union!19728 (regOne!39969 Regex!19728) (regTwo!39969 Regex!19728)) )
))
(declare-datatypes ((List!72565 0))(
  ( (Nil!72441) (Cons!72441 (h!78889 Regex!19728) (t!387134 List!72565)) )
))
(declare-datatypes ((Context!16960 0))(
  ( (Context!16961 (exprs!8980 List!72565)) )
))
(declare-fun setElem!57119 () Context!16960)

(declare-fun inv!92551 (Context!16960) Bool)

(assert (=> setNonEmpty!57119 (= setRes!57119 (and tp!2179461 (inv!92551 setElem!57119) e!4477486))))

(declare-fun z!556 () (Set Context!16960))

(declare-fun setRest!57119 () (Set Context!16960))

(assert (=> setNonEmpty!57119 (= z!556 (set.union (set.insert setElem!57119 (as set.empty (Set Context!16960))) setRest!57119))))

(declare-fun b!7508986 () Bool)

(declare-fun e!4477487 () Bool)

(declare-fun lambda!465833 () Int)

(declare-fun forall!18329 ((Set Context!16960) Int) Bool)

(assert (=> b!7508986 (= e!4477487 (not (forall!18329 z!556 lambda!465833)))))

(declare-fun res!3012543 () Bool)

(assert (=> start!727264 (=> (not res!3012543) (not e!4477487))))

(assert (=> start!727264 (= res!3012543 (forall!18329 z!556 lambda!465833))))

(assert (=> start!727264 e!4477487))

(declare-fun condSetEmpty!57119 () Bool)

(assert (=> start!727264 (= condSetEmpty!57119 (= z!556 (as set.empty (Set Context!16960))))))

(assert (=> start!727264 setRes!57119))

(declare-fun setIsEmpty!57119 () Bool)

(assert (=> setIsEmpty!57119 setRes!57119))

(declare-fun b!7508987 () Bool)

(declare-fun tp!2179460 () Bool)

(assert (=> b!7508987 (= e!4477486 tp!2179460)))

(assert (= (and start!727264 res!3012543) b!7508986))

(assert (= (and start!727264 condSetEmpty!57119) setIsEmpty!57119))

(assert (= (and start!727264 (not condSetEmpty!57119)) setNonEmpty!57119))

(assert (= setNonEmpty!57119 b!7508987))

(declare-fun m!8093016 () Bool)

(assert (=> setNonEmpty!57119 m!8093016))

(declare-fun m!8093018 () Bool)

(assert (=> b!7508986 m!8093018))

(assert (=> start!727264 m!8093018))

(push 1)

(assert (not setNonEmpty!57119))

(assert (not start!727264))

(assert (not b!7508986))

(assert (not b!7508987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

