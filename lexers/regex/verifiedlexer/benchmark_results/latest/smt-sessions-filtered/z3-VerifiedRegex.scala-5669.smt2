; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282810 () Bool)

(assert start!282810)

(declare-fun res!1200343 () Bool)

(declare-fun e!1834778 () Bool)

(assert (=> start!282810 (=> (not res!1200343) (not e!1834778))))

(declare-datatypes ((C!17968 0))(
  ( (C!17969 (val!11018 Int)) )
))
(declare-datatypes ((List!34695 0))(
  ( (Nil!34571) (Cons!34571 (h!39991 C!17968) (t!233738 List!34695)) )
))
(declare-fun prefix!853 () List!34695)

(declare-fun s!1964 () List!34695)

(declare-fun isPrefix!2730 (List!34695 List!34695) Bool)

(assert (=> start!282810 (= res!1200343 (isPrefix!2730 prefix!853 s!1964))))

(assert (=> start!282810 e!1834778))

(declare-fun e!1834780 () Bool)

(assert (=> start!282810 e!1834780))

(declare-fun e!1834781 () Bool)

(assert (=> start!282810 e!1834781))

(declare-fun condSetEmpty!25715 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8893 0))(
  ( (ElementMatch!8893 (c!473688 C!17968)) (Concat!14214 (regOne!18298 Regex!8893) (regTwo!18298 Regex!8893)) (EmptyExpr!8893) (Star!8893 (reg!9222 Regex!8893)) (EmptyLang!8893) (Union!8893 (regOne!18299 Regex!8893) (regTwo!18299 Regex!8893)) )
))
(declare-datatypes ((List!34696 0))(
  ( (Nil!34572) (Cons!34572 (h!39992 Regex!8893) (t!233739 List!34696)) )
))
(declare-datatypes ((Context!5442 0))(
  ( (Context!5443 (exprs!3221 List!34696)) )
))
(declare-fun z!791 () (InoxSet Context!5442))

(assert (=> start!282810 (= condSetEmpty!25715 (= z!791 ((as const (Array Context!5442 Bool)) false)))))

(declare-fun setRes!25715 () Bool)

(assert (=> start!282810 setRes!25715))

(declare-fun b!2906624 () Bool)

(declare-fun tp_is_empty!15373 () Bool)

(declare-fun tp!933556 () Bool)

(assert (=> b!2906624 (= e!1834781 (and tp_is_empty!15373 tp!933556))))

(declare-fun b!2906625 () Bool)

(declare-fun tp!933558 () Bool)

(assert (=> b!2906625 (= e!1834780 (and tp_is_empty!15373 tp!933558))))

(declare-fun setIsEmpty!25715 () Bool)

(assert (=> setIsEmpty!25715 setRes!25715))

(declare-fun b!2906626 () Bool)

(assert (=> b!2906626 (= e!1834778 false)))

(declare-fun lt!1022588 () Bool)

(declare-fun prefixMatchZipper!339 ((InoxSet Context!5442) List!34695) Bool)

(assert (=> b!2906626 (= lt!1022588 (prefixMatchZipper!339 z!791 prefix!853))))

(declare-fun b!2906627 () Bool)

(declare-fun e!1834779 () Bool)

(declare-fun tp!933559 () Bool)

(assert (=> b!2906627 (= e!1834779 tp!933559)))

(declare-fun b!2906628 () Bool)

(declare-fun res!1200342 () Bool)

(assert (=> b!2906628 (=> (not res!1200342) (not e!1834778))))

(declare-fun matchZipper!501 ((InoxSet Context!5442) List!34695) Bool)

(assert (=> b!2906628 (= res!1200342 (matchZipper!501 z!791 s!1964))))

(declare-fun setNonEmpty!25715 () Bool)

(declare-fun tp!933557 () Bool)

(declare-fun setElem!25715 () Context!5442)

(declare-fun inv!46687 (Context!5442) Bool)

(assert (=> setNonEmpty!25715 (= setRes!25715 (and tp!933557 (inv!46687 setElem!25715) e!1834779))))

(declare-fun setRest!25715 () (InoxSet Context!5442))

(assert (=> setNonEmpty!25715 (= z!791 ((_ map or) (store ((as const (Array Context!5442 Bool)) false) setElem!25715 true) setRest!25715))))

(assert (= (and start!282810 res!1200343) b!2906628))

(assert (= (and b!2906628 res!1200342) b!2906626))

(get-info :version)

(assert (= (and start!282810 ((_ is Cons!34571) prefix!853)) b!2906625))

(assert (= (and start!282810 ((_ is Cons!34571) s!1964)) b!2906624))

(assert (= (and start!282810 condSetEmpty!25715) setIsEmpty!25715))

(assert (= (and start!282810 (not condSetEmpty!25715)) setNonEmpty!25715))

(assert (= setNonEmpty!25715 b!2906627))

(declare-fun m!3308539 () Bool)

(assert (=> start!282810 m!3308539))

(declare-fun m!3308541 () Bool)

(assert (=> b!2906626 m!3308541))

(declare-fun m!3308543 () Bool)

(assert (=> b!2906628 m!3308543))

(declare-fun m!3308545 () Bool)

(assert (=> setNonEmpty!25715 m!3308545))

(check-sat (not b!2906625) (not setNonEmpty!25715) (not b!2906627) (not b!2906624) (not b!2906626) tp_is_empty!15373 (not start!282810) (not b!2906628))
(check-sat)
