; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279224 () Bool)

(assert start!279224)

(declare-fun bs!520980 () Bool)

(declare-fun b!2864756 () Bool)

(declare-fun b!2864761 () Bool)

(assert (= bs!520980 (and b!2864756 b!2864761)))

(declare-fun lambda!106052 () Int)

(declare-fun lambda!106051 () Int)

(assert (=> bs!520980 (not (= lambda!106052 lambda!106051))))

(declare-fun bs!520981 () Bool)

(declare-fun b!2864762 () Bool)

(assert (= bs!520981 (and b!2864762 b!2864761)))

(declare-fun lambda!106053 () Int)

(assert (=> bs!520981 (not (= lambda!106053 lambda!106051))))

(declare-fun bs!520982 () Bool)

(assert (= bs!520982 (and b!2864762 b!2864756)))

(assert (=> bs!520982 (not (= lambda!106053 lambda!106052))))

(assert (=> b!2864762 true))

(declare-fun b!2864755 () Bool)

(declare-fun e!1813546 () Bool)

(declare-datatypes ((C!17520 0))(
  ( (C!17521 (val!10794 Int)) )
))
(declare-datatypes ((Regex!8669 0))(
  ( (ElementMatch!8669 (c!462080 C!17520)) (Concat!13990 (regOne!17850 Regex!8669) (regTwo!17850 Regex!8669)) (EmptyExpr!8669) (Star!8669 (reg!8998 Regex!8669)) (EmptyLang!8669) (Union!8669 (regOne!17851 Regex!8669) (regTwo!17851 Regex!8669)) )
))
(declare-datatypes ((List!34340 0))(
  ( (Nil!34216) (Cons!34216 (h!39636 Regex!8669) (t!233383 List!34340)) )
))
(declare-datatypes ((Context!5258 0))(
  ( (Context!5259 (exprs!3129 List!34340)) )
))
(declare-datatypes ((List!34341 0))(
  ( (Nil!34217) (Cons!34217 (h!39637 Context!5258) (t!233384 List!34341)) )
))
(declare-fun lt!1015725 () List!34341)

(declare-fun exists!1084 (List!34341 Int) Bool)

(assert (=> b!2864755 (= e!1813546 (exists!1084 lt!1015725 lambda!106053))))

(declare-fun e!1813545 () Bool)

(declare-fun e!1813548 () Bool)

(assert (=> b!2864756 (= e!1813545 (not e!1813548))))

(declare-fun res!1189357 () Bool)

(assert (=> b!2864756 (=> res!1189357 e!1813548)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!691 () (InoxSet Context!5258))

(declare-fun exists!1085 ((InoxSet Context!5258) Int) Bool)

(assert (=> b!2864756 (= res!1189357 (not (exists!1085 z!691 lambda!106052)))))

(assert (=> b!2864756 (exists!1084 lt!1015725 lambda!106052)))

(declare-datatypes ((Unit!47861 0))(
  ( (Unit!47862) )
))
(declare-fun lt!1015727 () Unit!47861)

(declare-fun lemmaNotForallThenExists!139 (List!34341 Int) Unit!47861)

(assert (=> b!2864756 (= lt!1015727 (lemmaNotForallThenExists!139 lt!1015725 lambda!106051))))

(declare-fun toList!2000 ((InoxSet Context!5258)) List!34341)

(assert (=> b!2864756 (= lt!1015725 (toList!2000 z!691))))

(declare-fun b!2864757 () Bool)

(declare-fun res!1189359 () Bool)

(assert (=> b!2864757 (=> res!1189359 e!1813546)))

(assert (=> b!2864757 (= res!1189359 (not (exists!1084 lt!1015725 lambda!106053)))))

(declare-fun b!2864758 () Bool)

(declare-fun e!1813547 () Bool)

(declare-fun tp!922566 () Bool)

(assert (=> b!2864758 (= e!1813547 tp!922566)))

(declare-fun setElem!25601 () Context!5258)

(declare-fun setRes!25601 () Bool)

(declare-fun tp!922565 () Bool)

(declare-fun setNonEmpty!25601 () Bool)

(declare-fun inv!46259 (Context!5258) Bool)

(assert (=> setNonEmpty!25601 (= setRes!25601 (and tp!922565 (inv!46259 setElem!25601) e!1813547))))

(declare-fun setRest!25601 () (InoxSet Context!5258))

(assert (=> setNonEmpty!25601 (= z!691 ((_ map or) (store ((as const (Array Context!5258 Bool)) false) setElem!25601 true) setRest!25601))))

(declare-fun b!2864759 () Bool)

(declare-fun e!1813549 () Bool)

(assert (=> b!2864759 (= e!1813548 e!1813549)))

(declare-fun res!1189362 () Bool)

(assert (=> b!2864759 (=> res!1189362 e!1813549)))

(declare-fun lt!1015729 () Context!5258)

(assert (=> b!2864759 (= res!1189362 (not (select z!691 lt!1015729)))))

(declare-datatypes ((List!34342 0))(
  ( (Nil!34218) (Cons!34218 (h!39638 C!17520) (t!233385 List!34342)) )
))
(declare-fun lt!1015728 () List!34342)

(declare-fun matchZipper!449 ((InoxSet Context!5258) List!34342) Bool)

(assert (=> b!2864759 (matchZipper!449 (store ((as const (Array Context!5258 Bool)) false) lt!1015729 true) lt!1015728)))

(declare-datatypes ((Option!6348 0))(
  ( (None!6347) (Some!6347 (v!34469 List!34342)) )
))
(declare-fun get!10262 (Option!6348) List!34342)

(declare-fun getLanguageWitness!300 (Context!5258) Option!6348)

(assert (=> b!2864759 (= lt!1015728 (get!10262 (getLanguageWitness!300 lt!1015729)))))

(declare-fun lt!1015726 () Unit!47861)

(declare-fun lemmaGetWitnessMatchesContext!8 (Context!5258) Unit!47861)

(assert (=> b!2864759 (= lt!1015726 (lemmaGetWitnessMatchesContext!8 lt!1015729))))

(declare-fun getWitness!599 ((InoxSet Context!5258) Int) Context!5258)

(assert (=> b!2864759 (= lt!1015729 (getWitness!599 z!691 lambda!106052))))

(declare-fun b!2864760 () Bool)

(declare-fun res!1189361 () Bool)

(assert (=> b!2864760 (=> (not res!1189361) (not e!1813545))))

(declare-fun isDefined!4968 (Option!6348) Bool)

(declare-fun getLanguageWitness!301 ((InoxSet Context!5258)) Option!6348)

(assert (=> b!2864760 (= res!1189361 (isDefined!4968 (getLanguageWitness!301 z!691)))))

(declare-fun setIsEmpty!25601 () Bool)

(assert (=> setIsEmpty!25601 setRes!25601))

(declare-fun res!1189356 () Bool)

(assert (=> b!2864761 (=> (not res!1189356) (not e!1813545))))

(declare-fun forall!7012 ((InoxSet Context!5258) Int) Bool)

(assert (=> b!2864761 (= res!1189356 (not (forall!7012 z!691 lambda!106051)))))

(assert (=> b!2864762 (= e!1813549 e!1813546)))

(declare-fun res!1189358 () Bool)

(assert (=> b!2864762 (=> res!1189358 e!1813546)))

(assert (=> b!2864762 (= res!1189358 (not (exists!1085 z!691 lambda!106053)))))

(assert (=> b!2864762 (exists!1085 z!691 lambda!106053)))

(declare-fun lt!1015724 () Unit!47861)

(declare-fun lemmaContainsThenExists!55 ((InoxSet Context!5258) Context!5258 Int) Unit!47861)

(assert (=> b!2864762 (= lt!1015724 (lemmaContainsThenExists!55 z!691 lt!1015729 lambda!106053))))

(declare-fun res!1189360 () Bool)

(assert (=> start!279224 (=> (not res!1189360) (not e!1813545))))

(declare-fun lostCauseZipper!573 ((InoxSet Context!5258)) Bool)

(assert (=> start!279224 (= res!1189360 (not (lostCauseZipper!573 z!691)))))

(assert (=> start!279224 e!1813545))

(declare-fun condSetEmpty!25601 () Bool)

(assert (=> start!279224 (= condSetEmpty!25601 (= z!691 ((as const (Array Context!5258 Bool)) false)))))

(assert (=> start!279224 setRes!25601))

(assert (= (and start!279224 res!1189360) b!2864760))

(assert (= (and b!2864760 res!1189361) b!2864761))

(assert (= (and b!2864761 res!1189356) b!2864756))

(assert (= (and b!2864756 (not res!1189357)) b!2864759))

(assert (= (and b!2864759 (not res!1189362)) b!2864762))

(assert (= (and b!2864762 (not res!1189358)) b!2864757))

(assert (= (and b!2864757 (not res!1189359)) b!2864755))

(assert (= (and start!279224 condSetEmpty!25601) setIsEmpty!25601))

(assert (= (and start!279224 (not condSetEmpty!25601)) setNonEmpty!25601))

(assert (= setNonEmpty!25601 b!2864758))

(declare-fun m!3284643 () Bool)

(assert (=> b!2864756 m!3284643))

(declare-fun m!3284645 () Bool)

(assert (=> b!2864756 m!3284645))

(declare-fun m!3284647 () Bool)

(assert (=> b!2864756 m!3284647))

(declare-fun m!3284649 () Bool)

(assert (=> b!2864756 m!3284649))

(declare-fun m!3284651 () Bool)

(assert (=> setNonEmpty!25601 m!3284651))

(declare-fun m!3284653 () Bool)

(assert (=> b!2864759 m!3284653))

(declare-fun m!3284655 () Bool)

(assert (=> b!2864759 m!3284655))

(declare-fun m!3284657 () Bool)

(assert (=> b!2864759 m!3284657))

(assert (=> b!2864759 m!3284655))

(declare-fun m!3284659 () Bool)

(assert (=> b!2864759 m!3284659))

(declare-fun m!3284661 () Bool)

(assert (=> b!2864759 m!3284661))

(assert (=> b!2864759 m!3284659))

(declare-fun m!3284663 () Bool)

(assert (=> b!2864759 m!3284663))

(declare-fun m!3284665 () Bool)

(assert (=> b!2864759 m!3284665))

(declare-fun m!3284667 () Bool)

(assert (=> b!2864760 m!3284667))

(assert (=> b!2864760 m!3284667))

(declare-fun m!3284669 () Bool)

(assert (=> b!2864760 m!3284669))

(declare-fun m!3284671 () Bool)

(assert (=> b!2864762 m!3284671))

(assert (=> b!2864762 m!3284671))

(declare-fun m!3284673 () Bool)

(assert (=> b!2864762 m!3284673))

(declare-fun m!3284675 () Bool)

(assert (=> b!2864757 m!3284675))

(declare-fun m!3284677 () Bool)

(assert (=> b!2864761 m!3284677))

(declare-fun m!3284679 () Bool)

(assert (=> start!279224 m!3284679))

(assert (=> b!2864755 m!3284675))

(check-sat (not b!2864756) (not b!2864760) (not b!2864757) (not b!2864762) (not b!2864758) (not setNonEmpty!25601) (not b!2864755) (not start!279224) (not b!2864761) (not b!2864759))
(check-sat)
