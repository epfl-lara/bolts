; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720418 () Bool)

(assert start!720418)

(declare-fun b!7384962 () Bool)

(assert (=> b!7384962 true))

(declare-fun b!7384959 () Bool)

(assert (=> b!7384959 true))

(declare-fun b!7384955 () Bool)

(declare-fun e!4420454 () Bool)

(declare-fun tp!2101044 () Bool)

(assert (=> b!7384955 (= e!4420454 tp!2101044)))

(declare-fun b!7384957 () Bool)

(declare-fun e!4420458 () Bool)

(declare-fun tp_is_empty!48967 () Bool)

(declare-fun tp!2101045 () Bool)

(assert (=> b!7384957 (= e!4420458 (and tp_is_empty!48967 tp!2101045))))

(declare-fun b!7384958 () Bool)

(declare-fun res!2978249 () Bool)

(declare-fun e!4420456 () Bool)

(assert (=> b!7384958 (=> (not res!2978249) (not e!4420456))))

(declare-datatypes ((C!38978 0))(
  ( (C!38979 (val!29863 Int)) )
))
(declare-datatypes ((Regex!19352 0))(
  ( (ElementMatch!19352 (c!1372658 C!38978)) (Concat!28197 (regOne!39216 Regex!19352) (regTwo!39216 Regex!19352)) (EmptyExpr!19352) (Star!19352 (reg!19681 Regex!19352)) (EmptyLang!19352) (Union!19352 (regOne!39217 Regex!19352) (regTwo!39217 Regex!19352)) )
))
(declare-datatypes ((List!71864 0))(
  ( (Nil!71740) (Cons!71740 (h!78188 Regex!19352) (t!386415 List!71864)) )
))
(declare-datatypes ((Context!16584 0))(
  ( (Context!16585 (exprs!8792 List!71864)) )
))
(declare-fun c!10532 () Context!16584)

(declare-fun isEmpty!40992 (List!71864) Bool)

(declare-fun tail!14759 (List!71864) List!71864)

(assert (=> b!7384958 (= res!2978249 (isEmpty!40992 (tail!14759 (exprs!8792 c!10532))))))

(declare-fun res!2978250 () Bool)

(declare-fun e!4420453 () Bool)

(assert (=> b!7384959 (=> res!2978250 e!4420453)))

(declare-fun lt!2617556 () (Set Context!16584))

(declare-fun lambda!458815 () Int)

(declare-fun exists!4718 ((Set Context!16584) Int) Bool)

(assert (=> b!7384959 (= res!2978250 (not (exists!4718 lt!2617556 lambda!458815)))))

(declare-fun setIsEmpty!55844 () Bool)

(declare-fun setRes!55844 () Bool)

(assert (=> setIsEmpty!55844 setRes!55844))

(declare-fun b!7384960 () Bool)

(assert (=> b!7384960 (= e!4420453 (exists!4718 lt!2617556 lambda!458815))))

(declare-fun b!7384961 () Bool)

(declare-fun res!2978247 () Bool)

(assert (=> b!7384961 (=> (not res!2978247) (not e!4420456))))

(assert (=> b!7384961 (= res!2978247 (not (isEmpty!40992 (exprs!8792 c!10532))))))

(declare-fun e!4420459 () Bool)

(assert (=> b!7384962 (= e!4420459 (not e!4420453))))

(declare-fun res!2978246 () Bool)

(assert (=> b!7384962 (=> res!2978246 e!4420453)))

(declare-fun lt!2617554 () (Set Context!16584))

(declare-fun lt!2617557 () Context!16584)

(assert (=> b!7384962 (= res!2978246 (or (not (set.member lt!2617557 lt!2617556)) (= lt!2617556 lt!2617554)))))

(declare-fun empty!3419 () Context!16584)

(declare-fun z!3451 () (Set Context!16584))

(declare-fun lambda!458814 () Int)

(declare-fun flatMapPost!175 ((Set Context!16584) Int Context!16584) Context!16584)

(assert (=> b!7384962 (= (flatMapPost!175 z!3451 lambda!458814 lt!2617557) empty!3419)))

(assert (=> b!7384962 true))

(declare-fun inv!91742 (Context!16584) Bool)

(assert (=> b!7384962 (and (inv!91742 empty!3419) e!4420454)))

(declare-fun res!2978243 () Bool)

(assert (=> start!720418 (=> (not res!2978243) (not e!4420456))))

(assert (=> start!720418 (= res!2978243 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16584)))))))

(assert (=> start!720418 e!4420456))

(declare-fun condSetEmpty!55844 () Bool)

(assert (=> start!720418 (= condSetEmpty!55844 (= z!3451 (as set.empty (Set Context!16584))))))

(assert (=> start!720418 setRes!55844))

(declare-fun e!4420457 () Bool)

(assert (=> start!720418 (and (inv!91742 c!10532) e!4420457)))

(assert (=> start!720418 tp_is_empty!48967))

(assert (=> start!720418 e!4420458))

(declare-fun b!7384956 () Bool)

(assert (=> b!7384956 (= e!4420456 e!4420459)))

(declare-fun res!2978245 () Bool)

(assert (=> b!7384956 (=> (not res!2978245) (not e!4420459))))

(declare-fun lt!2617555 () C!38978)

(declare-fun derivationStepZipperUp!2758 (Context!16584 C!38978) (Set Context!16584))

(assert (=> b!7384956 (= res!2978245 (= (derivationStepZipperUp!2758 c!10532 lt!2617555) lt!2617554))))

(assert (=> b!7384956 (= lt!2617554 (set.insert lt!2617557 (as set.empty (Set Context!16584))))))

(assert (=> b!7384956 (= lt!2617557 (Context!16585 Nil!71740))))

(declare-fun derivationStepZipper!3638 ((Set Context!16584) C!38978) (Set Context!16584))

(assert (=> b!7384956 (= lt!2617556 (derivationStepZipper!3638 z!3451 lt!2617555))))

(declare-datatypes ((List!71865 0))(
  ( (Nil!71741) (Cons!71741 (h!78189 C!38978) (t!386416 List!71865)) )
))
(declare-fun s!7927 () List!71865)

(declare-fun head!15090 (List!71865) C!38978)

(assert (=> b!7384956 (= lt!2617555 (head!15090 s!7927))))

(declare-fun b!7384963 () Bool)

(declare-fun res!2978248 () Bool)

(assert (=> b!7384963 (=> (not res!2978248) (not e!4420456))))

(declare-fun a!2228 () C!38978)

(assert (=> b!7384963 (= res!2978248 (and (is-Cons!71741 s!7927) (= (h!78189 s!7927) a!2228)))))

(declare-fun b!7384964 () Bool)

(declare-fun e!4420455 () Bool)

(declare-fun tp!2101047 () Bool)

(assert (=> b!7384964 (= e!4420455 tp!2101047)))

(declare-fun b!7384965 () Bool)

(declare-fun res!2978244 () Bool)

(assert (=> b!7384965 (=> (not res!2978244) (not e!4420456))))

(declare-fun head!15091 (List!71864) Regex!19352)

(assert (=> b!7384965 (= res!2978244 (= (head!15091 (exprs!8792 c!10532)) (ElementMatch!19352 a!2228)))))

(declare-fun b!7384966 () Bool)

(declare-fun tp!2101046 () Bool)

(assert (=> b!7384966 (= e!4420457 tp!2101046)))

(declare-fun setNonEmpty!55844 () Bool)

(declare-fun tp!2101043 () Bool)

(declare-fun setElem!55844 () Context!16584)

(assert (=> setNonEmpty!55844 (= setRes!55844 (and tp!2101043 (inv!91742 setElem!55844) e!4420455))))

(declare-fun setRest!55844 () (Set Context!16584))

(assert (=> setNonEmpty!55844 (= z!3451 (set.union (set.insert setElem!55844 (as set.empty (Set Context!16584))) setRest!55844))))

(assert (= (and start!720418 res!2978243) b!7384961))

(assert (= (and b!7384961 res!2978247) b!7384965))

(assert (= (and b!7384965 res!2978244) b!7384958))

(assert (= (and b!7384958 res!2978249) b!7384963))

(assert (= (and b!7384963 res!2978248) b!7384956))

(assert (= (and b!7384956 res!2978245) b!7384962))

(assert (= b!7384962 b!7384955))

(assert (= (and b!7384962 (not res!2978246)) b!7384959))

(assert (= (and b!7384959 (not res!2978250)) b!7384960))

(assert (= (and start!720418 condSetEmpty!55844) setIsEmpty!55844))

(assert (= (and start!720418 (not condSetEmpty!55844)) setNonEmpty!55844))

(assert (= setNonEmpty!55844 b!7384964))

(assert (= start!720418 b!7384966))

(assert (= (and start!720418 (is-Cons!71741 s!7927)) b!7384957))

(declare-fun m!8033592 () Bool)

(assert (=> setNonEmpty!55844 m!8033592))

(declare-fun m!8033594 () Bool)

(assert (=> b!7384962 m!8033594))

(declare-fun m!8033596 () Bool)

(assert (=> b!7384962 m!8033596))

(declare-fun m!8033598 () Bool)

(assert (=> b!7384962 m!8033598))

(declare-fun m!8033600 () Bool)

(assert (=> b!7384965 m!8033600))

(declare-fun m!8033602 () Bool)

(assert (=> b!7384961 m!8033602))

(declare-fun m!8033604 () Bool)

(assert (=> b!7384956 m!8033604))

(declare-fun m!8033606 () Bool)

(assert (=> b!7384956 m!8033606))

(declare-fun m!8033608 () Bool)

(assert (=> b!7384956 m!8033608))

(declare-fun m!8033610 () Bool)

(assert (=> b!7384956 m!8033610))

(declare-fun m!8033612 () Bool)

(assert (=> b!7384959 m!8033612))

(declare-fun m!8033614 () Bool)

(assert (=> start!720418 m!8033614))

(declare-fun m!8033616 () Bool)

(assert (=> start!720418 m!8033616))

(assert (=> b!7384960 m!8033612))

(declare-fun m!8033618 () Bool)

(assert (=> b!7384958 m!8033618))

(assert (=> b!7384958 m!8033618))

(declare-fun m!8033620 () Bool)

(assert (=> b!7384958 m!8033620))

(push 1)

(assert (not b!7384961))

(assert (not b!7384962))

(assert (not b!7384957))

(assert (not b!7384955))

(assert (not b!7384965))

(assert (not b!7384964))

(assert (not b!7384966))

(assert (not start!720418))

(assert (not setNonEmpty!55844))

(assert (not b!7384960))

(assert tp_is_empty!48967)

(assert (not b!7384958))

(assert (not b!7384956))

(assert (not b!7384959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

