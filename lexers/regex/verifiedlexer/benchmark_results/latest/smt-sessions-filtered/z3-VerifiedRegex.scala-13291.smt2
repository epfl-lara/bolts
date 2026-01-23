; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722872 () Bool)

(assert start!722872)

(declare-fun b!7442454 () Bool)

(declare-fun e!4444097 () Bool)

(declare-datatypes ((C!39188 0))(
  ( (C!39189 (val!29968 Int)) )
))
(declare-datatypes ((Regex!19457 0))(
  ( (ElementMatch!19457 (c!1377263 C!39188)) (Concat!28302 (regOne!39426 Regex!19457) (regTwo!39426 Regex!19457)) (EmptyExpr!19457) (Star!19457 (reg!19786 Regex!19457)) (EmptyLang!19457) (Union!19457 (regOne!39427 Regex!19457) (regTwo!39427 Regex!19457)) )
))
(declare-datatypes ((List!72140 0))(
  ( (Nil!72016) (Cons!72016 (h!78464 Regex!19457) (t!386705 List!72140)) )
))
(declare-datatypes ((Context!16794 0))(
  ( (Context!16795 (exprs!8897 List!72140)) )
))
(declare-fun lt!2619480 () Context!16794)

(declare-fun inv!92003 (Context!16794) Bool)

(assert (=> b!7442454 (= e!4444097 (not (inv!92003 lt!2619480)))))

(declare-fun b!7442455 () Bool)

(declare-fun e!4444098 () Bool)

(declare-fun tp_is_empty!49173 () Bool)

(declare-fun tp!2151820 () Bool)

(assert (=> b!7442455 (= e!4444098 (and tp_is_empty!49173 tp!2151820))))

(declare-fun setElem!56607 () Context!16794)

(declare-fun setRes!56607 () Bool)

(declare-fun tp!2151822 () Bool)

(declare-fun e!4444096 () Bool)

(declare-fun setNonEmpty!56607 () Bool)

(assert (=> setNonEmpty!56607 (= setRes!56607 (and tp!2151822 (inv!92003 setElem!56607) e!4444096))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3488 () (InoxSet Context!16794))

(declare-fun setRest!56607 () (InoxSet Context!16794))

(assert (=> setNonEmpty!56607 (= z!3488 ((_ map or) (store ((as const (Array Context!16794 Bool)) false) setElem!56607 true) setRest!56607))))

(declare-fun setIsEmpty!56607 () Bool)

(assert (=> setIsEmpty!56607 setRes!56607))

(declare-fun res!2986765 () Bool)

(assert (=> start!722872 (=> (not res!2986765) (not e!4444097))))

(declare-datatypes ((List!72141 0))(
  ( (Nil!72017) (Cons!72017 (h!78465 C!39188) (t!386706 List!72141)) )
))
(declare-fun s!7945 () List!72141)

(get-info :version)

(assert (=> start!722872 (= res!2986765 (and (= z!3488 (store ((as const (Array Context!16794 Bool)) false) lt!2619480 true)) (not ((_ is Cons!72017) s!7945))))))

(assert (=> start!722872 (= lt!2619480 (Context!16795 Nil!72016))))

(assert (=> start!722872 e!4444097))

(declare-fun condSetEmpty!56607 () Bool)

(assert (=> start!722872 (= condSetEmpty!56607 (= z!3488 ((as const (Array Context!16794 Bool)) false)))))

(assert (=> start!722872 setRes!56607))

(assert (=> start!722872 e!4444098))

(declare-fun b!7442456 () Bool)

(declare-fun tp!2151821 () Bool)

(assert (=> b!7442456 (= e!4444096 tp!2151821)))

(assert (= (and start!722872 res!2986765) b!7442454))

(assert (= (and start!722872 condSetEmpty!56607) setIsEmpty!56607))

(assert (= (and start!722872 (not condSetEmpty!56607)) setNonEmpty!56607))

(assert (= setNonEmpty!56607 b!7442456))

(assert (= (and start!722872 ((_ is Cons!72017) s!7945)) b!7442455))

(declare-fun m!8053974 () Bool)

(assert (=> b!7442454 m!8053974))

(declare-fun m!8053976 () Bool)

(assert (=> setNonEmpty!56607 m!8053976))

(declare-fun m!8053978 () Bool)

(assert (=> start!722872 m!8053978))

(check-sat (not b!7442456) tp_is_empty!49173 (not setNonEmpty!56607) (not b!7442454) (not b!7442455))
(check-sat)
