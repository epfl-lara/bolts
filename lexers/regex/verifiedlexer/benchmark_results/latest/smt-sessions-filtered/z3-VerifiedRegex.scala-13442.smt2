; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!727198 () Bool)

(assert start!727198)

(declare-fun b!7508867 () Bool)

(declare-fun e!4477384 () Bool)

(declare-fun tp!2179371 () Bool)

(assert (=> b!7508867 (= e!4477384 tp!2179371)))

(declare-fun setIsEmpty!57086 () Bool)

(declare-fun setRes!57086 () Bool)

(assert (=> setIsEmpty!57086 setRes!57086))

(declare-datatypes ((C!39768 0))(
  ( (C!39769 (val!30282 Int)) )
))
(declare-datatypes ((Regex!19721 0))(
  ( (ElementMatch!19721 (c!1386516 C!39768)) (Concat!28566 (regOne!39954 Regex!19721) (regTwo!39954 Regex!19721)) (EmptyExpr!19721) (Star!19721 (reg!20050 Regex!19721)) (EmptyLang!19721) (Union!19721 (regOne!39955 Regex!19721) (regTwo!39955 Regex!19721)) )
))
(declare-datatypes ((List!72549 0))(
  ( (Nil!72425) (Cons!72425 (h!78873 Regex!19721) (t!387118 List!72549)) )
))
(declare-datatypes ((Context!16946 0))(
  ( (Context!16947 (exprs!8973 List!72549)) )
))
(declare-fun setElem!57086 () Context!16946)

(declare-fun setNonEmpty!57086 () Bool)

(declare-fun tp!2179370 () Bool)

(declare-fun inv!92532 (Context!16946) Bool)

(assert (=> setNonEmpty!57086 (= setRes!57086 (and tp!2179370 (inv!92532 setElem!57086) e!4477384))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!556 () (InoxSet Context!16946))

(declare-fun setRest!57086 () (InoxSet Context!16946))

(assert (=> setNonEmpty!57086 (= z!556 ((_ map or) (store ((as const (Array Context!16946 Bool)) false) setElem!57086 true) setRest!57086))))

(declare-fun res!3012498 () Bool)

(declare-fun e!4477383 () Bool)

(assert (=> start!727198 (=> (not res!3012498) (not e!4477383))))

(declare-fun lambda!465731 () Int)

(declare-fun forall!18313 ((InoxSet Context!16946) Int) Bool)

(assert (=> start!727198 (= res!3012498 (not (forall!18313 z!556 lambda!465731)))))

(assert (=> start!727198 e!4477383))

(declare-fun condSetEmpty!57086 () Bool)

(assert (=> start!727198 (= condSetEmpty!57086 (= z!556 ((as const (Array Context!16946 Bool)) false)))))

(assert (=> start!727198 setRes!57086))

(declare-fun b!7508866 () Bool)

(assert (=> b!7508866 (= e!4477383 false)))

(declare-fun lt!2636932 () Bool)

(declare-datatypes ((List!72550 0))(
  ( (Nil!72426) (Cons!72426 (h!78874 Context!16946) (t!387119 List!72550)) )
))
(declare-fun forall!18314 (List!72550 Int) Bool)

(declare-fun toList!11840 ((InoxSet Context!16946)) List!72550)

(assert (=> b!7508866 (= lt!2636932 (forall!18314 (toList!11840 z!556) lambda!465731))))

(assert (= (and start!727198 res!3012498) b!7508866))

(assert (= (and start!727198 condSetEmpty!57086) setIsEmpty!57086))

(assert (= (and start!727198 (not condSetEmpty!57086)) setNonEmpty!57086))

(assert (= setNonEmpty!57086 b!7508867))

(declare-fun m!8092826 () Bool)

(assert (=> setNonEmpty!57086 m!8092826))

(declare-fun m!8092828 () Bool)

(assert (=> start!727198 m!8092828))

(declare-fun m!8092830 () Bool)

(assert (=> b!7508866 m!8092830))

(assert (=> b!7508866 m!8092830))

(declare-fun m!8092832 () Bool)

(assert (=> b!7508866 m!8092832))

(check-sat (not setNonEmpty!57086) (not start!727198) (not b!7508866) (not b!7508867))
(check-sat)
