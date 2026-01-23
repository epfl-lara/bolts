; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!278582 () Bool)

(assert start!278582)

(declare-fun b!2862542 () Bool)

(declare-fun condSetEmpty!25310 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17436 0))(
  ( (C!17437 (val!10752 Int)) )
))
(declare-datatypes ((Regex!8627 0))(
  ( (ElementMatch!8627 (c!461424 C!17436)) (Concat!13948 (regOne!17766 Regex!8627) (regTwo!17766 Regex!8627)) (EmptyExpr!8627) (Star!8627 (reg!8956 Regex!8627)) (EmptyLang!8627) (Union!8627 (regOne!17767 Regex!8627) (regTwo!17767 Regex!8627)) )
))
(declare-datatypes ((List!34237 0))(
  ( (Nil!34113) (Cons!34113 (h!39533 Regex!8627) (t!233274 List!34237)) )
))
(declare-datatypes ((Context!5174 0))(
  ( (Context!5175 (exprs!3087 List!34237)) )
))
(declare-fun lt!1014774 () (InoxSet Context!5174))

(assert (=> b!2862542 (= condSetEmpty!25310 (= lt!1014774 ((as const (Array Context!5174 Bool)) false)))))

(declare-fun setRes!25310 () Bool)

(assert (=> b!2862542 setRes!25310))

(declare-fun setIsEmpty!25310 () Bool)

(assert (=> setIsEmpty!25310 setRes!25310))

(declare-fun setNonEmpty!25310 () Bool)

(assert (=> setNonEmpty!25310 (= setRes!25310 true)))

(declare-fun setElem!25310 () Context!5174)

(declare-fun setRest!25310 () (InoxSet Context!5174))

(assert (=> setNonEmpty!25310 (= lt!1014774 ((_ map or) (store ((as const (Array Context!5174 Bool)) false) setElem!25310 true) setRest!25310))))

(assert (= (and b!2862542 condSetEmpty!25310) setIsEmpty!25310))

(assert (= (and b!2862542 (not condSetEmpty!25310)) setNonEmpty!25310))

(assert (=> b!2862542 true))

(declare-fun e!1812119 () Bool)

(declare-fun e!1812118 () Bool)

(assert (=> b!2862542 (= e!1812119 (not e!1812118))))

(declare-fun res!1188541 () Bool)

(assert (=> b!2862542 (=> res!1188541 e!1812118)))

(declare-datatypes ((List!34238 0))(
  ( (Nil!34114) (Cons!34114 (h!39534 C!17436) (t!233275 List!34238)) )
))
(declare-fun lt!1014773 () List!34238)

(declare-fun matchZipper!425 ((InoxSet Context!5174) List!34238) Bool)

(assert (=> b!2862542 (= res!1188541 (not (matchZipper!425 lt!1014774 lt!1014773)))))

(declare-fun lambda!105301 () Int)

(declare-fun pickWitness!322 (Int) List!34238)

(assert (=> b!2862542 (= lt!1014773 (pickWitness!322 lambda!105301))))

(declare-fun Exists!1315 (Int) Bool)

(assert (=> b!2862542 (Exists!1315 lambda!105301)))

(assert (=> b!2862542 (Exists!1315 lambda!105301)))

(declare-datatypes ((Unit!47777 0))(
  ( (Unit!47778) )
))
(declare-fun lt!1014776 () Unit!47777)

(declare-fun prefix!919 () List!34238)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!361 ((InoxSet Context!5174) List!34238) Unit!47777)

(assert (=> b!2862542 (= lt!1014776 (lemmaPrefixMatchThenExistsStringThatMatches!361 lt!1014774 (t!233275 prefix!919)))))

(declare-fun z!960 () (InoxSet Context!5174))

(declare-fun derivationStepZipper!429 ((InoxSet Context!5174) C!17436) (InoxSet Context!5174))

(assert (=> b!2862542 (= lt!1014774 (derivationStepZipper!429 z!960 (h!39534 prefix!919)))))

(declare-fun res!1188538 () Bool)

(assert (=> start!278582 (=> (not res!1188538) (not e!1812119))))

(declare-fun prefixMatchZipper!309 ((InoxSet Context!5174) List!34238) Bool)

(assert (=> start!278582 (= res!1188538 (prefixMatchZipper!309 z!960 prefix!919))))

(assert (=> start!278582 e!1812119))

(declare-fun condSetEmpty!25307 () Bool)

(assert (=> start!278582 (= condSetEmpty!25307 (= z!960 ((as const (Array Context!5174 Bool)) false)))))

(declare-fun setRes!25307 () Bool)

(assert (=> start!278582 setRes!25307))

(declare-fun e!1812116 () Bool)

(assert (=> start!278582 e!1812116))

(declare-fun b!2862543 () Bool)

(declare-fun e!1812117 () Bool)

(assert (=> b!2862543 (= e!1812118 e!1812117)))

(declare-fun res!1188539 () Bool)

(assert (=> b!2862543 (=> res!1188539 e!1812117)))

(declare-fun lt!1014777 () List!34238)

(assert (=> b!2862543 (= res!1188539 (not (matchZipper!425 z!960 lt!1014777)))))

(declare-fun $colon$colon!601 (List!34238 C!17436) List!34238)

(assert (=> b!2862543 (= lt!1014777 ($colon$colon!601 lt!1014773 (h!39534 prefix!919)))))

(declare-fun b!2862544 () Bool)

(declare-fun res!1188542 () Bool)

(assert (=> b!2862544 (=> res!1188542 e!1812118)))

(declare-fun isPrefix!2689 (List!34238 List!34238) Bool)

(assert (=> b!2862544 (= res!1188542 (not (isPrefix!2689 (t!233275 prefix!919) lt!1014773)))))

(declare-fun b!2862545 () Bool)

(declare-fun tp_is_empty!14991 () Bool)

(declare-fun tp!921686 () Bool)

(assert (=> b!2862545 (= e!1812116 (and tp_is_empty!14991 tp!921686))))

(declare-fun setIsEmpty!25307 () Bool)

(assert (=> setIsEmpty!25307 setRes!25307))

(declare-fun setNonEmpty!25307 () Bool)

(declare-fun setElem!25307 () Context!5174)

(declare-fun e!1812120 () Bool)

(declare-fun tp!921685 () Bool)

(declare-fun inv!46154 (Context!5174) Bool)

(assert (=> setNonEmpty!25307 (= setRes!25307 (and tp!921685 (inv!46154 setElem!25307) e!1812120))))

(declare-fun setRest!25307 () (InoxSet Context!5174))

(assert (=> setNonEmpty!25307 (= z!960 ((_ map or) (store ((as const (Array Context!5174 Bool)) false) setElem!25307 true) setRest!25307))))

(declare-fun b!2862546 () Bool)

(declare-fun res!1188540 () Bool)

(assert (=> b!2862546 (=> (not res!1188540) (not e!1812119))))

(get-info :version)

(assert (=> b!2862546 (= res!1188540 (not ((_ is Nil!34114) prefix!919)))))

(declare-fun b!2862547 () Bool)

(assert (=> b!2862547 (= e!1812117 true)))

(declare-fun lt!1014775 () Bool)

(assert (=> b!2862547 (= lt!1014775 (isPrefix!2689 prefix!919 lt!1014777))))

(declare-fun b!2862548 () Bool)

(declare-fun tp!921684 () Bool)

(assert (=> b!2862548 (= e!1812120 tp!921684)))

(assert (= (and start!278582 res!1188538) b!2862546))

(assert (= (and b!2862546 res!1188540) b!2862542))

(assert (= (and b!2862542 (not res!1188541)) b!2862544))

(assert (= (and b!2862544 (not res!1188542)) b!2862543))

(assert (= (and b!2862543 (not res!1188539)) b!2862547))

(assert (= (and start!278582 condSetEmpty!25307) setIsEmpty!25307))

(assert (= (and start!278582 (not condSetEmpty!25307)) setNonEmpty!25307))

(assert (= setNonEmpty!25307 b!2862548))

(assert (= (and start!278582 ((_ is Cons!34114) prefix!919)) b!2862545))

(declare-fun m!3281835 () Bool)

(assert (=> setNonEmpty!25307 m!3281835))

(declare-fun m!3281837 () Bool)

(assert (=> b!2862547 m!3281837))

(declare-fun m!3281839 () Bool)

(assert (=> b!2862542 m!3281839))

(declare-fun m!3281841 () Bool)

(assert (=> b!2862542 m!3281841))

(declare-fun m!3281843 () Bool)

(assert (=> b!2862542 m!3281843))

(assert (=> b!2862542 m!3281843))

(declare-fun m!3281845 () Bool)

(assert (=> b!2862542 m!3281845))

(declare-fun m!3281847 () Bool)

(assert (=> b!2862542 m!3281847))

(declare-fun m!3281849 () Bool)

(assert (=> b!2862544 m!3281849))

(declare-fun m!3281851 () Bool)

(assert (=> start!278582 m!3281851))

(declare-fun m!3281853 () Bool)

(assert (=> b!2862543 m!3281853))

(declare-fun m!3281855 () Bool)

(assert (=> b!2862543 m!3281855))

(check-sat (not b!2862543) (not b!2862547) (not b!2862548) (not setNonEmpty!25307) tp_is_empty!14991 (not b!2862545) (not start!278582) (not setNonEmpty!25310) (not b!2862542) (not b!2862544))
(check-sat)
