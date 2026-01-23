; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677706 () Bool)

(assert start!677706)

(declare-fun b!7023183 () Bool)

(declare-fun e!4221893 () Bool)

(declare-fun tp!1934821 () Bool)

(assert (=> b!7023183 (= e!4221893 tp!1934821)))

(declare-fun b!7023184 () Bool)

(declare-fun e!4221894 () Bool)

(declare-fun tp_is_empty!44067 () Bool)

(declare-fun tp!1934818 () Bool)

(assert (=> b!7023184 (= e!4221894 (and tp_is_empty!44067 tp!1934818))))

(declare-datatypes ((C!35112 0))(
  ( (C!35113 (val!27258 Int)) )
))
(declare-datatypes ((List!67792 0))(
  ( (Nil!67668) (Cons!67668 (h!74116 C!35112) (t!381547 List!67792)) )
))
(declare-fun s!7408 () List!67792)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17421 0))(
  ( (ElementMatch!17421 (c!1305294 C!35112)) (Concat!26266 (regOne!35354 Regex!17421) (regTwo!35354 Regex!17421)) (EmptyExpr!17421) (Star!17421 (reg!17750 Regex!17421)) (EmptyLang!17421) (Union!17421 (regOne!35355 Regex!17421) (regTwo!35355 Regex!17421)) )
))
(declare-datatypes ((List!67793 0))(
  ( (Nil!67669) (Cons!67669 (h!74117 Regex!17421) (t!381548 List!67793)) )
))
(declare-datatypes ((Context!12834 0))(
  ( (Context!12835 (exprs!6917 List!67793)) )
))
(declare-fun z1!570 () (InoxSet Context!12834))

(declare-fun ct2!306 () Context!12834)

(declare-fun lt!2513019 () Bool)

(declare-fun matchZipper!2961 ((InoxSet Context!12834) List!67792) Bool)

(declare-fun appendTo!542 ((InoxSet Context!12834) Context!12834) (InoxSet Context!12834))

(assert (=> start!677706 (= lt!2513019 (matchZipper!2961 (appendTo!542 z1!570 ct2!306) s!7408))))

(assert (=> start!677706 false))

(declare-fun condSetEmpty!48854 () Bool)

(assert (=> start!677706 (= condSetEmpty!48854 (= z1!570 ((as const (Array Context!12834 Bool)) false)))))

(declare-fun setRes!48854 () Bool)

(assert (=> start!677706 setRes!48854))

(declare-fun inv!86411 (Context!12834) Bool)

(assert (=> start!677706 (and (inv!86411 ct2!306) e!4221893)))

(assert (=> start!677706 e!4221894))

(declare-fun tp!1934820 () Bool)

(declare-fun setNonEmpty!48854 () Bool)

(declare-fun setElem!48854 () Context!12834)

(declare-fun e!4221892 () Bool)

(assert (=> setNonEmpty!48854 (= setRes!48854 (and tp!1934820 (inv!86411 setElem!48854) e!4221892))))

(declare-fun setRest!48854 () (InoxSet Context!12834))

(assert (=> setNonEmpty!48854 (= z1!570 ((_ map or) (store ((as const (Array Context!12834 Bool)) false) setElem!48854 true) setRest!48854))))

(declare-fun b!7023185 () Bool)

(declare-fun tp!1934819 () Bool)

(assert (=> b!7023185 (= e!4221892 tp!1934819)))

(declare-fun setIsEmpty!48854 () Bool)

(assert (=> setIsEmpty!48854 setRes!48854))

(assert (= (and start!677706 condSetEmpty!48854) setIsEmpty!48854))

(assert (= (and start!677706 (not condSetEmpty!48854)) setNonEmpty!48854))

(assert (= setNonEmpty!48854 b!7023185))

(assert (= start!677706 b!7023183))

(get-info :version)

(assert (= (and start!677706 ((_ is Cons!67668) s!7408)) b!7023184))

(declare-fun m!7725526 () Bool)

(assert (=> start!677706 m!7725526))

(assert (=> start!677706 m!7725526))

(declare-fun m!7725528 () Bool)

(assert (=> start!677706 m!7725528))

(declare-fun m!7725530 () Bool)

(assert (=> start!677706 m!7725530))

(declare-fun m!7725532 () Bool)

(assert (=> setNonEmpty!48854 m!7725532))

(check-sat tp_is_empty!44067 (not b!7023183) (not start!677706) (not setNonEmpty!48854) (not b!7023185) (not b!7023184))
(check-sat)
