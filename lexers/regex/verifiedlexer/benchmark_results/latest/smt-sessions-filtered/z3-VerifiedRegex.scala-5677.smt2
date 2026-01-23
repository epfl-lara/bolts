; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282946 () Bool)

(assert start!282946)

(declare-datatypes ((C!18000 0))(
  ( (C!18001 (val!11034 Int)) )
))
(declare-datatypes ((Regex!8909 0))(
  ( (ElementMatch!8909 (c!473794 C!18000)) (Concat!14230 (regOne!18330 Regex!8909) (regTwo!18330 Regex!8909)) (EmptyExpr!8909) (Star!8909 (reg!9238 Regex!8909)) (EmptyLang!8909) (Union!8909 (regOne!18331 Regex!8909) (regTwo!18331 Regex!8909)) )
))
(declare-datatypes ((List!34729 0))(
  ( (Nil!34605) (Cons!34605 (h!40025 Regex!8909) (t!233772 List!34729)) )
))
(declare-datatypes ((Context!5474 0))(
  ( (Context!5475 (exprs!3237 List!34729)) )
))
(declare-fun setElem!25789 () Context!5474)

(declare-fun setRes!25789 () Bool)

(declare-fun tp!933924 () Bool)

(declare-fun setNonEmpty!25789 () Bool)

(declare-fun e!1835234 () Bool)

(declare-fun inv!46727 (Context!5474) Bool)

(assert (=> setNonEmpty!25789 (= setRes!25789 (and tp!933924 (inv!46727 setElem!25789) e!1835234))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!929 () (InoxSet Context!5474))

(declare-fun setRest!25789 () (InoxSet Context!5474))

(assert (=> setNonEmpty!25789 (= z!929 ((_ map or) (store ((as const (Array Context!5474 Bool)) false) setElem!25789 true) setRest!25789))))

(declare-fun b!2907316 () Bool)

(declare-fun e!1835235 () Bool)

(declare-fun tp_is_empty!15405 () Bool)

(declare-fun tp!933925 () Bool)

(assert (=> b!2907316 (= e!1835235 (and tp_is_empty!15405 tp!933925))))

(declare-fun b!2907317 () Bool)

(declare-fun e!1835232 () Bool)

(assert (=> b!2907317 (= e!1835232 (not true))))

(declare-datatypes ((List!34730 0))(
  ( (Nil!34606) (Cons!34606 (h!40026 C!18000) (t!233773 List!34730)) )
))
(declare-fun s!2253 () List!34730)

(declare-fun matchZipper!507 ((InoxSet Context!5474) List!34730) Bool)

(assert (=> b!2907317 (not (matchZipper!507 z!929 s!2253))))

(declare-datatypes ((Unit!48155 0))(
  ( (Unit!48156) )
))
(declare-fun lt!1022727 () Unit!48155)

(declare-fun lemmaLostCauseCannotMatch!45 ((InoxSet Context!5474) List!34730) Unit!48155)

(assert (=> b!2907317 (= lt!1022727 (lemmaLostCauseCannotMatch!45 z!929 s!2253))))

(declare-fun b!2907318 () Bool)

(declare-fun res!1200601 () Bool)

(assert (=> b!2907318 (=> (not res!1200601) (not e!1835232))))

(declare-fun lostCauseZipper!602 ((InoxSet Context!5474)) Bool)

(assert (=> b!2907318 (= res!1200601 (lostCauseZipper!602 z!929))))

(declare-fun b!2907319 () Bool)

(declare-fun e!1835233 () Bool)

(declare-fun tp!933922 () Bool)

(assert (=> b!2907319 (= e!1835233 (and tp_is_empty!15405 tp!933922))))

(declare-fun b!2907320 () Bool)

(declare-fun res!1200600 () Bool)

(assert (=> b!2907320 (=> (not res!1200600) (not e!1835232))))

(declare-fun prefix!909 () List!34730)

(declare-fun prefixMatchZipper!353 ((InoxSet Context!5474) List!34730) Bool)

(assert (=> b!2907320 (= res!1200600 (not (prefixMatchZipper!353 z!929 prefix!909)))))

(declare-fun res!1200603 () Bool)

(assert (=> start!282946 (=> (not res!1200603) (not e!1835232))))

(declare-fun isPrefix!2746 (List!34730 List!34730) Bool)

(assert (=> start!282946 (= res!1200603 (isPrefix!2746 prefix!909 s!2253))))

(assert (=> start!282946 e!1835232))

(assert (=> start!282946 e!1835235))

(assert (=> start!282946 e!1835233))

(declare-fun condSetEmpty!25789 () Bool)

(assert (=> start!282946 (= condSetEmpty!25789 (= z!929 ((as const (Array Context!5474 Bool)) false)))))

(assert (=> start!282946 setRes!25789))

(declare-fun setIsEmpty!25789 () Bool)

(assert (=> setIsEmpty!25789 setRes!25789))

(declare-fun b!2907321 () Bool)

(declare-fun tp!933923 () Bool)

(assert (=> b!2907321 (= e!1835234 tp!933923)))

(declare-fun b!2907322 () Bool)

(declare-fun res!1200602 () Bool)

(assert (=> b!2907322 (=> (not res!1200602) (not e!1835232))))

(get-info :version)

(assert (=> b!2907322 (= res!1200602 ((_ is Nil!34606) prefix!909))))

(assert (= (and start!282946 res!1200603) b!2907320))

(assert (= (and b!2907320 res!1200600) b!2907322))

(assert (= (and b!2907322 res!1200602) b!2907318))

(assert (= (and b!2907318 res!1200601) b!2907317))

(assert (= (and start!282946 ((_ is Cons!34606) prefix!909)) b!2907316))

(assert (= (and start!282946 ((_ is Cons!34606) s!2253)) b!2907319))

(assert (= (and start!282946 condSetEmpty!25789) setIsEmpty!25789))

(assert (= (and start!282946 (not condSetEmpty!25789)) setNonEmpty!25789))

(assert (= setNonEmpty!25789 b!2907321))

(declare-fun m!3309027 () Bool)

(assert (=> b!2907320 m!3309027))

(declare-fun m!3309029 () Bool)

(assert (=> b!2907318 m!3309029))

(declare-fun m!3309031 () Bool)

(assert (=> setNonEmpty!25789 m!3309031))

(declare-fun m!3309033 () Bool)

(assert (=> b!2907317 m!3309033))

(declare-fun m!3309035 () Bool)

(assert (=> b!2907317 m!3309035))

(declare-fun m!3309037 () Bool)

(assert (=> start!282946 m!3309037))

(check-sat (not start!282946) tp_is_empty!15405 (not b!2907320) (not b!2907318) (not setNonEmpty!25789) (not b!2907319) (not b!2907317) (not b!2907316) (not b!2907321))
(check-sat)
