; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282858 () Bool)

(assert start!282858)

(declare-fun b!2906944 () Bool)

(declare-fun res!1200474 () Bool)

(declare-fun e!1834992 () Bool)

(assert (=> b!2906944 (=> (not res!1200474) (not e!1834992))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17988 0))(
  ( (C!17989 (val!11028 Int)) )
))
(declare-datatypes ((Regex!8903 0))(
  ( (ElementMatch!8903 (c!473716 C!17988)) (Concat!14224 (regOne!18318 Regex!8903) (regTwo!18318 Regex!8903)) (EmptyExpr!8903) (Star!8903 (reg!9232 Regex!8903)) (EmptyLang!8903) (Union!8903 (regOne!18319 Regex!8903) (regTwo!18319 Regex!8903)) )
))
(declare-datatypes ((List!34715 0))(
  ( (Nil!34591) (Cons!34591 (h!40011 Regex!8903) (t!233758 List!34715)) )
))
(declare-datatypes ((Context!5462 0))(
  ( (Context!5463 (exprs!3231 List!34715)) )
))
(declare-fun z!929 () (InoxSet Context!5462))

(declare-datatypes ((List!34716 0))(
  ( (Nil!34592) (Cons!34592 (h!40012 C!17988) (t!233759 List!34716)) )
))
(declare-fun prefix!909 () List!34716)

(declare-fun prefixMatchZipper!347 ((InoxSet Context!5462) List!34716) Bool)

(assert (=> b!2906944 (= res!1200474 (not (prefixMatchZipper!347 z!929 prefix!909)))))

(declare-fun b!2906945 () Bool)

(assert (=> b!2906945 (= e!1834992 false)))

(declare-fun lt!1022624 () Bool)

(declare-fun derivationStepZipper!496 ((InoxSet Context!5462) C!17988) (InoxSet Context!5462))

(assert (=> b!2906945 (= lt!1022624 (prefixMatchZipper!347 (derivationStepZipper!496 z!929 (h!40012 prefix!909)) (t!233759 prefix!909)))))

(declare-fun b!2906946 () Bool)

(declare-fun e!1834995 () Bool)

(declare-fun tp_is_empty!15393 () Bool)

(declare-fun tp!933743 () Bool)

(assert (=> b!2906946 (= e!1834995 (and tp_is_empty!15393 tp!933743))))

(declare-fun setIsEmpty!25757 () Bool)

(declare-fun setRes!25757 () Bool)

(assert (=> setIsEmpty!25757 setRes!25757))

(declare-fun b!2906947 () Bool)

(declare-fun res!1200472 () Bool)

(assert (=> b!2906947 (=> (not res!1200472) (not e!1834992))))

(declare-fun s!2253 () List!34716)

(declare-fun isPrefix!2740 (List!34716 List!34716) Bool)

(declare-fun tail!4658 (List!34716) List!34716)

(assert (=> b!2906947 (= res!1200472 (isPrefix!2740 (t!233759 prefix!909) (tail!4658 s!2253)))))

(declare-fun b!2906948 () Bool)

(declare-fun res!1200475 () Bool)

(assert (=> b!2906948 (=> (not res!1200475) (not e!1834992))))

(get-info :version)

(assert (=> b!2906948 (= res!1200475 (not ((_ is Nil!34592) prefix!909)))))

(declare-fun res!1200473 () Bool)

(assert (=> start!282858 (=> (not res!1200473) (not e!1834992))))

(assert (=> start!282858 (= res!1200473 (isPrefix!2740 prefix!909 s!2253))))

(assert (=> start!282858 e!1834992))

(declare-fun e!1834994 () Bool)

(assert (=> start!282858 e!1834994))

(assert (=> start!282858 e!1834995))

(declare-fun condSetEmpty!25757 () Bool)

(assert (=> start!282858 (= condSetEmpty!25757 (= z!929 ((as const (Array Context!5462 Bool)) false)))))

(assert (=> start!282858 setRes!25757))

(declare-fun setNonEmpty!25757 () Bool)

(declare-fun e!1834993 () Bool)

(declare-fun tp!933740 () Bool)

(declare-fun setElem!25757 () Context!5462)

(declare-fun inv!46712 (Context!5462) Bool)

(assert (=> setNonEmpty!25757 (= setRes!25757 (and tp!933740 (inv!46712 setElem!25757) e!1834993))))

(declare-fun setRest!25757 () (InoxSet Context!5462))

(assert (=> setNonEmpty!25757 (= z!929 ((_ map or) (store ((as const (Array Context!5462 Bool)) false) setElem!25757 true) setRest!25757))))

(declare-fun b!2906949 () Bool)

(declare-fun tp!933742 () Bool)

(assert (=> b!2906949 (= e!1834993 tp!933742)))

(declare-fun b!2906950 () Bool)

(declare-fun tp!933741 () Bool)

(assert (=> b!2906950 (= e!1834994 (and tp_is_empty!15393 tp!933741))))

(assert (= (and start!282858 res!1200473) b!2906944))

(assert (= (and b!2906944 res!1200474) b!2906948))

(assert (= (and b!2906948 res!1200475) b!2906947))

(assert (= (and b!2906947 res!1200472) b!2906945))

(assert (= (and start!282858 ((_ is Cons!34592) prefix!909)) b!2906950))

(assert (= (and start!282858 ((_ is Cons!34592) s!2253)) b!2906946))

(assert (= (and start!282858 condSetEmpty!25757) setIsEmpty!25757))

(assert (= (and start!282858 (not condSetEmpty!25757)) setNonEmpty!25757))

(assert (= setNonEmpty!25757 b!2906949))

(declare-fun m!3308729 () Bool)

(assert (=> b!2906945 m!3308729))

(assert (=> b!2906945 m!3308729))

(declare-fun m!3308731 () Bool)

(assert (=> b!2906945 m!3308731))

(declare-fun m!3308733 () Bool)

(assert (=> b!2906944 m!3308733))

(declare-fun m!3308735 () Bool)

(assert (=> start!282858 m!3308735))

(declare-fun m!3308737 () Bool)

(assert (=> b!2906947 m!3308737))

(assert (=> b!2906947 m!3308737))

(declare-fun m!3308739 () Bool)

(assert (=> b!2906947 m!3308739))

(declare-fun m!3308741 () Bool)

(assert (=> setNonEmpty!25757 m!3308741))

(check-sat (not b!2906947) (not setNonEmpty!25757) (not b!2906945) (not b!2906946) (not b!2906950) (not b!2906944) (not start!282858) tp_is_empty!15393 (not b!2906949))
(check-sat)
