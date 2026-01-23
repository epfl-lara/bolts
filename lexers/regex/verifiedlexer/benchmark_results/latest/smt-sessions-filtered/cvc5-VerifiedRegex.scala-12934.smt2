; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712834 () Bool)

(assert start!712834)

(declare-fun setIsEmpty!54270 () Bool)

(declare-fun setRes!54270 () Bool)

(assert (=> setIsEmpty!54270 setRes!54270))

(declare-datatypes ((C!38078 0))(
  ( (C!38079 (val!29135 Int)) )
))
(declare-datatypes ((Regex!18902 0))(
  ( (ElementMatch!18902 (c!1357886 C!38078)) (Concat!27747 (regOne!38316 Regex!18902) (regTwo!38316 Regex!18902)) (EmptyExpr!18902) (Star!18902 (reg!19231 Regex!18902)) (EmptyLang!18902) (Union!18902 (regOne!38317 Regex!18902) (regTwo!38317 Regex!18902)) )
))
(declare-datatypes ((List!71210 0))(
  ( (Nil!71086) (Cons!71086 (h!77534 Regex!18902) (t!385442 List!71210)) )
))
(declare-datatypes ((Context!15684 0))(
  ( (Context!15685 (exprs!8342 List!71210)) )
))
(declare-fun setElem!54270 () Context!15684)

(declare-fun e!4378962 () Bool)

(declare-fun setNonEmpty!54270 () Bool)

(declare-fun tp!2076042 () Bool)

(declare-fun setRes!54271 () Bool)

(declare-fun inv!90377 (Context!15684) Bool)

(assert (=> setNonEmpty!54270 (= setRes!54271 (and tp!2076042 (inv!90377 setElem!54270) e!4378962))))

(declare-fun z1!542 () (Set Context!15684))

(declare-fun setRest!54271 () (Set Context!15684))

(assert (=> setNonEmpty!54270 (= z1!542 (set.union (set.insert setElem!54270 (as set.empty (Set Context!15684))) setRest!54271))))

(declare-fun tp!2076039 () Bool)

(declare-fun setElem!54271 () Context!15684)

(declare-fun setNonEmpty!54271 () Bool)

(declare-fun e!4378966 () Bool)

(assert (=> setNonEmpty!54271 (= setRes!54270 (and tp!2076039 (inv!90377 setElem!54271) e!4378966))))

(declare-fun z2!461 () (Set Context!15684))

(declare-fun setRest!54270 () (Set Context!15684))

(assert (=> setNonEmpty!54271 (= z2!461 (set.union (set.insert setElem!54271 (as set.empty (Set Context!15684))) setRest!54270))))

(declare-fun b!7315077 () Bool)

(declare-fun tp!2076040 () Bool)

(assert (=> b!7315077 (= e!4378962 tp!2076040)))

(declare-fun b!7315078 () Bool)

(declare-fun e!4378961 () Bool)

(assert (=> b!7315078 (= e!4378961 false)))

(declare-fun lt!2601775 () Bool)

(declare-fun lt!2601777 () Context!15684)

(declare-fun nullableContext!390 (Context!15684) Bool)

(assert (=> b!7315078 (= lt!2601775 (nullableContext!390 lt!2601777))))

(declare-fun b!7315079 () Bool)

(declare-fun e!4378963 () Bool)

(declare-fun tp_is_empty!47549 () Bool)

(declare-fun tp!2076041 () Bool)

(assert (=> b!7315079 (= e!4378963 (and tp_is_empty!47549 tp!2076041))))

(declare-fun b!7315080 () Bool)

(declare-fun e!4378964 () Bool)

(assert (=> b!7315080 (= e!4378964 e!4378961)))

(declare-fun res!2955979 () Bool)

(assert (=> b!7315080 (=> (not res!2955979) (not e!4378961))))

(declare-fun lt!2601776 () (Set Context!15684))

(assert (=> b!7315080 (= res!2955979 (and (set.member lt!2601777 lt!2601776) (not (set.member lt!2601777 z1!542)) (set.member lt!2601777 z2!461)))))

(declare-fun lambda!451969 () Int)

(declare-fun getWitness!2291 ((Set Context!15684) Int) Context!15684)

(assert (=> b!7315080 (= lt!2601777 (getWitness!2291 lt!2601776 lambda!451969))))

(declare-fun b!7315081 () Bool)

(declare-fun tp!2076038 () Bool)

(assert (=> b!7315081 (= e!4378966 tp!2076038)))

(declare-fun setIsEmpty!54271 () Bool)

(assert (=> setIsEmpty!54271 setRes!54271))

(declare-fun res!2955981 () Bool)

(declare-fun e!4378965 () Bool)

(assert (=> start!712834 (=> (not res!2955981) (not e!4378965))))

(declare-datatypes ((List!71211 0))(
  ( (Nil!71087) (Cons!71087 (h!77535 C!38078) (t!385443 List!71211)) )
))
(declare-fun s!7362 () List!71211)

(assert (=> start!712834 (= res!2955981 (not (is-Cons!71087 s!7362)))))

(assert (=> start!712834 e!4378965))

(assert (=> start!712834 e!4378963))

(declare-fun condSetEmpty!54271 () Bool)

(assert (=> start!712834 (= condSetEmpty!54271 (= z1!542 (as set.empty (Set Context!15684))))))

(assert (=> start!712834 setRes!54271))

(declare-fun condSetEmpty!54270 () Bool)

(assert (=> start!712834 (= condSetEmpty!54270 (= z2!461 (as set.empty (Set Context!15684))))))

(assert (=> start!712834 setRes!54270))

(declare-fun b!7315082 () Bool)

(assert (=> b!7315082 (= e!4378965 e!4378964)))

(declare-fun res!2955982 () Bool)

(assert (=> b!7315082 (=> (not res!2955982) (not e!4378964))))

(declare-fun nullableZipper!3083 ((Set Context!15684)) Bool)

(assert (=> b!7315082 (= res!2955982 (nullableZipper!3083 lt!2601776))))

(assert (=> b!7315082 (= lt!2601776 (set.union z1!542 z2!461))))

(declare-fun b!7315083 () Bool)

(declare-fun res!2955980 () Bool)

(assert (=> b!7315083 (=> (not res!2955980) (not e!4378964))))

(declare-fun exists!4538 ((Set Context!15684) Int) Bool)

(assert (=> b!7315083 (= res!2955980 (exists!4538 lt!2601776 lambda!451969))))

(assert (= (and start!712834 res!2955981) b!7315082))

(assert (= (and b!7315082 res!2955982) b!7315083))

(assert (= (and b!7315083 res!2955980) b!7315080))

(assert (= (and b!7315080 res!2955979) b!7315078))

(assert (= (and start!712834 (is-Cons!71087 s!7362)) b!7315079))

(assert (= (and start!712834 condSetEmpty!54271) setIsEmpty!54271))

(assert (= (and start!712834 (not condSetEmpty!54271)) setNonEmpty!54270))

(assert (= setNonEmpty!54270 b!7315077))

(assert (= (and start!712834 condSetEmpty!54270) setIsEmpty!54270))

(assert (= (and start!712834 (not condSetEmpty!54270)) setNonEmpty!54271))

(assert (= setNonEmpty!54271 b!7315081))

(declare-fun m!7979106 () Bool)

(assert (=> b!7315083 m!7979106))

(declare-fun m!7979108 () Bool)

(assert (=> setNonEmpty!54270 m!7979108))

(declare-fun m!7979110 () Bool)

(assert (=> b!7315078 m!7979110))

(declare-fun m!7979112 () Bool)

(assert (=> b!7315082 m!7979112))

(declare-fun m!7979114 () Bool)

(assert (=> setNonEmpty!54271 m!7979114))

(declare-fun m!7979116 () Bool)

(assert (=> b!7315080 m!7979116))

(declare-fun m!7979118 () Bool)

(assert (=> b!7315080 m!7979118))

(declare-fun m!7979120 () Bool)

(assert (=> b!7315080 m!7979120))

(declare-fun m!7979122 () Bool)

(assert (=> b!7315080 m!7979122))

(push 1)

(assert (not b!7315081))

(assert (not b!7315082))

(assert tp_is_empty!47549)

(assert (not setNonEmpty!54270))

(assert (not b!7315078))

(assert (not setNonEmpty!54271))

(assert (not b!7315079))

(assert (not b!7315083))

(assert (not b!7315077))

(assert (not b!7315080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

