; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!283134 () Bool)

(assert start!283134)

(declare-fun res!1200923 () Bool)

(declare-fun e!1835797 () Bool)

(assert (=> start!283134 (=> (not res!1200923) (not e!1835797))))

(declare-datatypes ((C!18020 0))(
  ( (C!18021 (val!11044 Int)) )
))
(declare-datatypes ((List!34755 0))(
  ( (Nil!34631) (Cons!34631 (h!40051 C!18020) (t!233798 List!34755)) )
))
(declare-fun prefix!909 () List!34755)

(declare-fun s!2253 () List!34755)

(declare-fun isPrefix!2756 (List!34755 List!34755) Bool)

(assert (=> start!283134 (= res!1200923 (isPrefix!2756 prefix!909 s!2253))))

(assert (=> start!283134 e!1835797))

(declare-fun e!1835796 () Bool)

(assert (=> start!283134 e!1835796))

(declare-fun e!1835799 () Bool)

(assert (=> start!283134 e!1835799))

(declare-fun condSetEmpty!25849 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!8919 0))(
  ( (ElementMatch!8919 (c!473990 C!18020)) (Concat!14240 (regOne!18350 Regex!8919) (regTwo!18350 Regex!8919)) (EmptyExpr!8919) (Star!8919 (reg!9248 Regex!8919)) (EmptyLang!8919) (Union!8919 (regOne!18351 Regex!8919) (regTwo!18351 Regex!8919)) )
))
(declare-datatypes ((List!34756 0))(
  ( (Nil!34632) (Cons!34632 (h!40052 Regex!8919) (t!233799 List!34756)) )
))
(declare-datatypes ((Context!5494 0))(
  ( (Context!5495 (exprs!3247 List!34756)) )
))
(declare-fun z!929 () (InoxSet Context!5494))

(assert (=> start!283134 (= condSetEmpty!25849 (= z!929 ((as const (Array Context!5494 Bool)) false)))))

(declare-fun setRes!25849 () Bool)

(assert (=> start!283134 setRes!25849))

(declare-fun b!2908223 () Bool)

(declare-fun tp_is_empty!15425 () Bool)

(declare-fun tp!934309 () Bool)

(assert (=> b!2908223 (= e!1835799 (and tp_is_empty!15425 tp!934309))))

(declare-fun setElem!25849 () Context!5494)

(declare-fun tp!934310 () Bool)

(declare-fun e!1835798 () Bool)

(declare-fun setNonEmpty!25849 () Bool)

(declare-fun inv!46752 (Context!5494) Bool)

(assert (=> setNonEmpty!25849 (= setRes!25849 (and tp!934310 (inv!46752 setElem!25849) e!1835798))))

(declare-fun setRest!25849 () (InoxSet Context!5494))

(assert (=> setNonEmpty!25849 (= z!929 ((_ map or) (store ((as const (Array Context!5494 Bool)) false) setElem!25849 true) setRest!25849))))

(declare-fun b!2908224 () Bool)

(declare-fun tp!934311 () Bool)

(assert (=> b!2908224 (= e!1835796 (and tp_is_empty!15425 tp!934311))))

(declare-fun b!2908225 () Bool)

(declare-fun tp!934308 () Bool)

(assert (=> b!2908225 (= e!1835798 tp!934308)))

(declare-fun setIsEmpty!25849 () Bool)

(assert (=> setIsEmpty!25849 setRes!25849))

(declare-fun b!2908226 () Bool)

(assert (=> b!2908226 (= e!1835797 false)))

(declare-fun lt!1023021 () Bool)

(declare-fun prefixMatchZipper!363 ((InoxSet Context!5494) List!34755) Bool)

(assert (=> b!2908226 (= lt!1023021 (prefixMatchZipper!363 z!929 prefix!909))))

(assert (= (and start!283134 res!1200923) b!2908226))

(get-info :version)

(assert (= (and start!283134 ((_ is Cons!34631) prefix!909)) b!2908224))

(assert (= (and start!283134 ((_ is Cons!34631) s!2253)) b!2908223))

(assert (= (and start!283134 condSetEmpty!25849) setIsEmpty!25849))

(assert (= (and start!283134 (not condSetEmpty!25849)) setNonEmpty!25849))

(assert (= setNonEmpty!25849 b!2908225))

(declare-fun m!3310101 () Bool)

(assert (=> start!283134 m!3310101))

(declare-fun m!3310103 () Bool)

(assert (=> setNonEmpty!25849 m!3310103))

(declare-fun m!3310105 () Bool)

(assert (=> b!2908226 m!3310105))

(check-sat (not setNonEmpty!25849) tp_is_empty!15425 (not b!2908226) (not start!283134) (not b!2908223) (not b!2908224) (not b!2908225))
(check-sat)
