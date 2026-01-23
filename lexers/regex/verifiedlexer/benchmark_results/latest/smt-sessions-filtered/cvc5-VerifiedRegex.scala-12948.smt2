; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713064 () Bool)

(assert start!713064)

(declare-fun b!7316159 () Bool)

(declare-fun e!4379777 () Bool)

(declare-fun tp!2076870 () Bool)

(assert (=> b!7316159 (= e!4379777 tp!2076870)))

(declare-fun b!7316160 () Bool)

(declare-fun e!4379776 () Bool)

(declare-fun tp_is_empty!47605 () Bool)

(declare-fun tp!2076866 () Bool)

(assert (=> b!7316160 (= e!4379776 (and tp_is_empty!47605 tp!2076866))))

(declare-fun b!7316161 () Bool)

(declare-fun e!4379775 () Bool)

(declare-fun e!4379778 () Bool)

(assert (=> b!7316161 (= e!4379775 e!4379778)))

(declare-fun res!2956341 () Bool)

(assert (=> b!7316161 (=> (not res!2956341) (not e!4379778))))

(declare-datatypes ((C!38134 0))(
  ( (C!38135 (val!29163 Int)) )
))
(declare-datatypes ((Regex!18930 0))(
  ( (ElementMatch!18930 (c!1358134 C!38134)) (Concat!27775 (regOne!38372 Regex!18930) (regTwo!38372 Regex!18930)) (EmptyExpr!18930) (Star!18930 (reg!19259 Regex!18930)) (EmptyLang!18930) (Union!18930 (regOne!38373 Regex!18930) (regTwo!38373 Regex!18930)) )
))
(declare-datatypes ((List!71278 0))(
  ( (Nil!71154) (Cons!71154 (h!77602 Regex!18930) (t!385510 List!71278)) )
))
(declare-datatypes ((Context!15740 0))(
  ( (Context!15741 (exprs!8370 List!71278)) )
))
(declare-fun lt!2602112 () (Set Context!15740))

(declare-fun nullableZipper!3109 ((Set Context!15740)) Bool)

(assert (=> b!7316161 (= res!2956341 (nullableZipper!3109 lt!2602112))))

(declare-fun z1!542 () (Set Context!15740))

(declare-fun z2!461 () (Set Context!15740))

(assert (=> b!7316161 (= lt!2602112 (set.union z1!542 z2!461))))

(declare-fun b!7316162 () Bool)

(declare-fun e!4379779 () Bool)

(declare-fun tp!2076869 () Bool)

(assert (=> b!7316162 (= e!4379779 tp!2076869)))

(declare-fun setNonEmpty!54514 () Bool)

(declare-fun tp!2076867 () Bool)

(declare-fun setElem!54514 () Context!15740)

(declare-fun setRes!54515 () Bool)

(declare-fun inv!90447 (Context!15740) Bool)

(assert (=> setNonEmpty!54514 (= setRes!54515 (and tp!2076867 (inv!90447 setElem!54514) e!4379779))))

(declare-fun setRest!54515 () (Set Context!15740))

(assert (=> setNonEmpty!54514 (= z2!461 (set.union (set.insert setElem!54514 (as set.empty (Set Context!15740))) setRest!54515))))

(declare-fun res!2956342 () Bool)

(assert (=> start!713064 (=> (not res!2956342) (not e!4379775))))

(declare-datatypes ((List!71279 0))(
  ( (Nil!71155) (Cons!71155 (h!77603 C!38134) (t!385511 List!71279)) )
))
(declare-fun s!7362 () List!71279)

(assert (=> start!713064 (= res!2956342 (not (is-Cons!71155 s!7362)))))

(assert (=> start!713064 e!4379775))

(assert (=> start!713064 e!4379776))

(declare-fun condSetEmpty!54514 () Bool)

(assert (=> start!713064 (= condSetEmpty!54514 (= z1!542 (as set.empty (Set Context!15740))))))

(declare-fun setRes!54514 () Bool)

(assert (=> start!713064 setRes!54514))

(declare-fun condSetEmpty!54515 () Bool)

(assert (=> start!713064 (= condSetEmpty!54515 (= z2!461 (as set.empty (Set Context!15740))))))

(assert (=> start!713064 setRes!54515))

(declare-fun b!7316163 () Bool)

(declare-fun res!2956343 () Bool)

(assert (=> b!7316163 (=> (not res!2956343) (not e!4379778))))

(declare-fun lambda!452290 () Int)

(declare-fun exists!4576 ((Set Context!15740) Int) Bool)

(assert (=> b!7316163 (= res!2956343 (exists!4576 lt!2602112 lambda!452290))))

(declare-fun setIsEmpty!54514 () Bool)

(assert (=> setIsEmpty!54514 setRes!54515))

(declare-fun b!7316164 () Bool)

(assert (=> b!7316164 (= e!4379778 false)))

(declare-fun lt!2602113 () Context!15740)

(declare-fun getWitness!2314 ((Set Context!15740) Int) Context!15740)

(assert (=> b!7316164 (= lt!2602113 (getWitness!2314 lt!2602112 lambda!452290))))

(declare-fun tp!2076868 () Bool)

(declare-fun setElem!54515 () Context!15740)

(declare-fun setNonEmpty!54515 () Bool)

(assert (=> setNonEmpty!54515 (= setRes!54514 (and tp!2076868 (inv!90447 setElem!54515) e!4379777))))

(declare-fun setRest!54514 () (Set Context!15740))

(assert (=> setNonEmpty!54515 (= z1!542 (set.union (set.insert setElem!54515 (as set.empty (Set Context!15740))) setRest!54514))))

(declare-fun setIsEmpty!54515 () Bool)

(assert (=> setIsEmpty!54515 setRes!54514))

(assert (= (and start!713064 res!2956342) b!7316161))

(assert (= (and b!7316161 res!2956341) b!7316163))

(assert (= (and b!7316163 res!2956343) b!7316164))

(assert (= (and start!713064 (is-Cons!71155 s!7362)) b!7316160))

(assert (= (and start!713064 condSetEmpty!54514) setIsEmpty!54515))

(assert (= (and start!713064 (not condSetEmpty!54514)) setNonEmpty!54515))

(assert (= setNonEmpty!54515 b!7316159))

(assert (= (and start!713064 condSetEmpty!54515) setIsEmpty!54514))

(assert (= (and start!713064 (not condSetEmpty!54515)) setNonEmpty!54514))

(assert (= setNonEmpty!54514 b!7316162))

(declare-fun m!7980298 () Bool)

(assert (=> setNonEmpty!54514 m!7980298))

(declare-fun m!7980300 () Bool)

(assert (=> b!7316161 m!7980300))

(declare-fun m!7980302 () Bool)

(assert (=> setNonEmpty!54515 m!7980302))

(declare-fun m!7980304 () Bool)

(assert (=> b!7316164 m!7980304))

(declare-fun m!7980306 () Bool)

(assert (=> b!7316163 m!7980306))

(push 1)

(assert (not b!7316161))

(assert (not setNonEmpty!54514))

(assert (not setNonEmpty!54515))

(assert (not b!7316164))

(assert (not b!7316162))

(assert (not b!7316159))

(assert (not b!7316163))

(assert (not b!7316160))

(assert tp_is_empty!47605)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

