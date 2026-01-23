; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727492 () Bool)

(assert start!727492)

(declare-fun b!7509606 () Bool)

(declare-fun e!4477928 () Bool)

(declare-datatypes ((C!39814 0))(
  ( (C!39815 (val!30305 Int)) )
))
(declare-datatypes ((Regex!19744 0))(
  ( (ElementMatch!19744 (c!1386804 C!39814)) (Concat!28589 (regOne!40000 Regex!19744) (regTwo!40000 Regex!19744)) (EmptyExpr!19744) (Star!19744 (reg!20073 Regex!19744)) (EmptyLang!19744) (Union!19744 (regOne!40001 Regex!19744) (regTwo!40001 Regex!19744)) )
))
(declare-datatypes ((List!72599 0))(
  ( (Nil!72475) (Cons!72475 (h!78923 Regex!19744) (t!387168 List!72599)) )
))
(declare-datatypes ((Context!16992 0))(
  ( (Context!16993 (exprs!8996 List!72599)) )
))
(declare-fun z!563 () (Set Context!16992))

(declare-fun lambda!466112 () Int)

(declare-fun exists!4906 ((Set Context!16992) Int) Bool)

(assert (=> b!7509606 (= e!4477928 (not (= false (exists!4906 z!563 lambda!466112))))))

(declare-fun res!3012744 () Bool)

(assert (=> start!727492 (=> (not res!3012744) (not e!4477928))))

(assert (=> start!727492 (= res!3012744 (not (exists!4906 z!563 lambda!466112)))))

(assert (=> start!727492 e!4477928))

(declare-fun condSetEmpty!57206 () Bool)

(assert (=> start!727492 (= condSetEmpty!57206 (= z!563 (as set.empty (Set Context!16992))))))

(declare-fun setRes!57206 () Bool)

(assert (=> start!727492 setRes!57206))

(declare-fun setNonEmpty!57206 () Bool)

(declare-fun setElem!57206 () Context!16992)

(declare-fun e!4477927 () Bool)

(declare-fun tp!2179770 () Bool)

(declare-fun inv!92591 (Context!16992) Bool)

(assert (=> setNonEmpty!57206 (= setRes!57206 (and tp!2179770 (inv!92591 setElem!57206) e!4477927))))

(declare-fun setRest!57206 () (Set Context!16992))

(assert (=> setNonEmpty!57206 (= z!563 (set.union (set.insert setElem!57206 (as set.empty (Set Context!16992))) setRest!57206))))

(declare-fun setIsEmpty!57206 () Bool)

(assert (=> setIsEmpty!57206 setRes!57206))

(declare-fun b!7509607 () Bool)

(declare-fun tp!2179769 () Bool)

(assert (=> b!7509607 (= e!4477927 tp!2179769)))

(assert (= (and start!727492 res!3012744) b!7509606))

(assert (= (and start!727492 condSetEmpty!57206) setIsEmpty!57206))

(assert (= (and start!727492 (not condSetEmpty!57206)) setNonEmpty!57206))

(assert (= setNonEmpty!57206 b!7509607))

(declare-fun m!8093646 () Bool)

(assert (=> b!7509606 m!8093646))

(assert (=> start!727492 m!8093646))

(declare-fun m!8093648 () Bool)

(assert (=> setNonEmpty!57206 m!8093648))

(push 1)

(assert (not setNonEmpty!57206))

(assert (not b!7509606))

(assert (not start!727492))

(assert (not b!7509607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

