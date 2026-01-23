; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!669220 () Bool)

(assert start!669220)

(declare-fun b!6978458 () Bool)

(assert (=> b!6978458 true))

(declare-fun b!6978459 () Bool)

(assert (=> b!6978459 true))

(declare-fun b!6978457 () Bool)

(assert (=> b!6978457 true))

(declare-fun b!6978453 () Bool)

(declare-fun e!4194081 () Bool)

(declare-fun e!4194077 () Bool)

(assert (=> b!6978453 (= e!4194081 e!4194077)))

(declare-fun res!2845618 () Bool)

(assert (=> b!6978453 (=> res!2845618 e!4194077)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34592 0))(
  ( (C!34593 (val!26998 Int)) )
))
(declare-datatypes ((Regex!17161 0))(
  ( (ElementMatch!17161 (c!1293468 C!34592)) (Concat!26006 (regOne!34834 Regex!17161) (regTwo!34834 Regex!17161)) (EmptyExpr!17161) (Star!17161 (reg!17490 Regex!17161)) (EmptyLang!17161) (Union!17161 (regOne!34835 Regex!17161) (regTwo!34835 Regex!17161)) )
))
(declare-datatypes ((List!67028 0))(
  ( (Nil!66904) (Cons!66904 (h!73352 Regex!17161) (t!380771 List!67028)) )
))
(declare-datatypes ((Context!12314 0))(
  ( (Context!12315 (exprs!6657 List!67028)) )
))
(declare-fun lt!2480776 () (InoxSet Context!12314))

(declare-fun lt!2480782 () (InoxSet Context!12314))

(assert (=> b!6978453 (= res!2845618 (not (= lt!2480776 lt!2480782)))))

(declare-fun lt!2480780 () Context!12314)

(assert (=> b!6978453 (= lt!2480776 (store ((as const (Array Context!12314 Bool)) false) lt!2480780 true))))

(declare-datatypes ((Unit!160971 0))(
  ( (Unit!160972) )
))
(declare-fun lt!2480772 () Unit!160971)

(declare-fun lambda!398590 () Int)

(declare-fun lt!2480781 () Context!12314)

(declare-fun ct2!306 () Context!12314)

(declare-fun lemmaConcatPreservesForall!497 (List!67028 List!67028 Int) Unit!160971)

(assert (=> b!6978453 (= lt!2480772 (lemmaConcatPreservesForall!497 (exprs!6657 lt!2480781) (exprs!6657 ct2!306) lambda!398590))))

(declare-fun b!6978454 () Bool)

(declare-fun res!2845621 () Bool)

(declare-fun e!4194083 () Bool)

(assert (=> b!6978454 (=> res!2845621 e!4194083)))

(declare-fun isEmpty!39051 (List!67028) Bool)

(assert (=> b!6978454 (= res!2845621 (isEmpty!39051 (exprs!6657 lt!2480781)))))

(declare-fun b!6978455 () Bool)

(assert (=> b!6978455 (= e!4194083 (not (= (exprs!6657 lt!2480781) Nil!66904)))))

(declare-fun e!4194078 () Bool)

(declare-fun tp!1927723 () Bool)

(declare-fun setNonEmpty!47443 () Bool)

(declare-fun setRes!47443 () Bool)

(declare-fun setElem!47443 () Context!12314)

(declare-fun inv!85761 (Context!12314) Bool)

(assert (=> setNonEmpty!47443 (= setRes!47443 (and tp!1927723 (inv!85761 setElem!47443) e!4194078))))

(declare-fun z1!570 () (InoxSet Context!12314))

(declare-fun setRest!47443 () (InoxSet Context!12314))

(assert (=> setNonEmpty!47443 (= z1!570 ((_ map or) (store ((as const (Array Context!12314 Bool)) false) setElem!47443 true) setRest!47443))))

(declare-fun b!6978456 () Bool)

(declare-fun res!2845624 () Bool)

(declare-fun e!4194082 () Bool)

(assert (=> b!6978456 (=> res!2845624 e!4194082)))

(declare-fun lt!2480779 () Context!12314)

(declare-fun lt!2480783 () (InoxSet Context!12314))

(assert (=> b!6978456 (= res!2845624 (not (select lt!2480783 lt!2480779)))))

(assert (=> b!6978457 (= e!4194077 e!4194083)))

(declare-fun res!2845623 () Bool)

(assert (=> b!6978457 (=> res!2845623 e!4194083)))

(declare-datatypes ((List!67029 0))(
  ( (Nil!66905) (Cons!66905 (h!73353 C!34592) (t!380772 List!67029)) )
))
(declare-fun s!7408 () List!67029)

(declare-fun lt!2480777 () (InoxSet Context!12314))

(declare-fun derivationStepZipper!2641 ((InoxSet Context!12314) C!34592) (InoxSet Context!12314))

(assert (=> b!6978457 (= res!2845623 (not (= (derivationStepZipper!2641 lt!2480776 (h!73353 s!7408)) lt!2480777)))))

(declare-fun lambda!398591 () Int)

(declare-fun flatMap!2147 ((InoxSet Context!12314) Int) (InoxSet Context!12314))

(declare-fun derivationStepZipperUp!1811 (Context!12314 C!34592) (InoxSet Context!12314))

(assert (=> b!6978457 (= (flatMap!2147 lt!2480776 lambda!398591) (derivationStepZipperUp!1811 lt!2480780 (h!73353 s!7408)))))

(declare-fun lt!2480778 () Unit!160971)

(declare-fun lemmaFlatMapOnSingletonSet!1662 ((InoxSet Context!12314) Context!12314 Int) Unit!160971)

(assert (=> b!6978457 (= lt!2480778 (lemmaFlatMapOnSingletonSet!1662 lt!2480776 lt!2480780 lambda!398591))))

(assert (=> b!6978457 (= lt!2480777 (derivationStepZipperUp!1811 lt!2480780 (h!73353 s!7408)))))

(declare-fun lt!2480774 () Unit!160971)

(assert (=> b!6978457 (= lt!2480774 (lemmaConcatPreservesForall!497 (exprs!6657 lt!2480781) (exprs!6657 ct2!306) lambda!398590))))

(declare-fun e!4194080 () Bool)

(assert (=> b!6978458 (= e!4194080 (not e!4194082))))

(declare-fun res!2845626 () Bool)

(assert (=> b!6978458 (=> res!2845626 e!4194082)))

(declare-fun matchZipper!2701 ((InoxSet Context!12314) List!67029) Bool)

(assert (=> b!6978458 (= res!2845626 (not (matchZipper!2701 lt!2480782 s!7408)))))

(assert (=> b!6978458 (= lt!2480782 (store ((as const (Array Context!12314 Bool)) false) lt!2480779 true))))

(declare-fun lambda!398588 () Int)

(declare-fun getWitness!1020 ((InoxSet Context!12314) Int) Context!12314)

(assert (=> b!6978458 (= lt!2480779 (getWitness!1020 lt!2480783 lambda!398588))))

(declare-datatypes ((List!67030 0))(
  ( (Nil!66906) (Cons!66906 (h!73354 Context!12314) (t!380773 List!67030)) )
))
(declare-fun lt!2480773 () List!67030)

(declare-fun exists!2909 (List!67030 Int) Bool)

(assert (=> b!6978458 (exists!2909 lt!2480773 lambda!398588)))

(declare-fun lt!2480775 () Unit!160971)

(declare-fun lemmaZipperMatchesExistsMatchingContext!130 (List!67030 List!67029) Unit!160971)

(assert (=> b!6978458 (= lt!2480775 (lemmaZipperMatchesExistsMatchingContext!130 lt!2480773 s!7408))))

(declare-fun toList!10521 ((InoxSet Context!12314)) List!67030)

(assert (=> b!6978458 (= lt!2480773 (toList!10521 lt!2480783))))

(assert (=> b!6978459 (= e!4194082 e!4194081)))

(declare-fun res!2845625 () Bool)

(assert (=> b!6978459 (=> res!2845625 e!4194081)))

(assert (=> b!6978459 (= res!2845625 (or (not (= lt!2480780 lt!2480779)) (not (select z1!570 lt!2480781))))))

(declare-fun ++!15106 (List!67028 List!67028) List!67028)

(assert (=> b!6978459 (= lt!2480780 (Context!12315 (++!15106 (exprs!6657 lt!2480781) (exprs!6657 ct2!306))))))

(declare-fun lt!2480771 () Unit!160971)

(assert (=> b!6978459 (= lt!2480771 (lemmaConcatPreservesForall!497 (exprs!6657 lt!2480781) (exprs!6657 ct2!306) lambda!398590))))

(declare-fun lambda!398589 () Int)

(declare-fun mapPost2!16 ((InoxSet Context!12314) Int Context!12314) Context!12314)

(assert (=> b!6978459 (= lt!2480781 (mapPost2!16 z1!570 lambda!398589 lt!2480779))))

(declare-fun b!6978460 () Bool)

(declare-fun res!2845622 () Bool)

(assert (=> b!6978460 (=> (not res!2845622) (not e!4194080))))

(get-info :version)

(assert (=> b!6978460 (= res!2845622 ((_ is Cons!66905) s!7408))))

(declare-fun b!6978461 () Bool)

(declare-fun tp!1927726 () Bool)

(assert (=> b!6978461 (= e!4194078 tp!1927726)))

(declare-fun b!6978462 () Bool)

(declare-fun e!4194079 () Bool)

(declare-fun tp_is_empty!43547 () Bool)

(declare-fun tp!1927725 () Bool)

(assert (=> b!6978462 (= e!4194079 (and tp_is_empty!43547 tp!1927725))))

(declare-fun b!6978463 () Bool)

(declare-fun e!4194076 () Bool)

(declare-fun tp!1927724 () Bool)

(assert (=> b!6978463 (= e!4194076 tp!1927724)))

(declare-fun b!6978464 () Bool)

(declare-fun res!2845619 () Bool)

(assert (=> b!6978464 (=> res!2845619 e!4194083)))

(assert (=> b!6978464 (= res!2845619 (not ((_ is Cons!66904) (exprs!6657 lt!2480781))))))

(declare-fun res!2845620 () Bool)

(assert (=> start!669220 (=> (not res!2845620) (not e!4194080))))

(assert (=> start!669220 (= res!2845620 (matchZipper!2701 lt!2480783 s!7408))))

(declare-fun appendTo!282 ((InoxSet Context!12314) Context!12314) (InoxSet Context!12314))

(assert (=> start!669220 (= lt!2480783 (appendTo!282 z1!570 ct2!306))))

(assert (=> start!669220 e!4194080))

(declare-fun condSetEmpty!47443 () Bool)

(assert (=> start!669220 (= condSetEmpty!47443 (= z1!570 ((as const (Array Context!12314 Bool)) false)))))

(assert (=> start!669220 setRes!47443))

(assert (=> start!669220 (and (inv!85761 ct2!306) e!4194076)))

(assert (=> start!669220 e!4194079))

(declare-fun setIsEmpty!47443 () Bool)

(assert (=> setIsEmpty!47443 setRes!47443))

(assert (= (and start!669220 res!2845620) b!6978460))

(assert (= (and b!6978460 res!2845622) b!6978458))

(assert (= (and b!6978458 (not res!2845626)) b!6978456))

(assert (= (and b!6978456 (not res!2845624)) b!6978459))

(assert (= (and b!6978459 (not res!2845625)) b!6978453))

(assert (= (and b!6978453 (not res!2845618)) b!6978457))

(assert (= (and b!6978457 (not res!2845623)) b!6978464))

(assert (= (and b!6978464 (not res!2845619)) b!6978454))

(assert (= (and b!6978454 (not res!2845621)) b!6978455))

(assert (= (and start!669220 condSetEmpty!47443) setIsEmpty!47443))

(assert (= (and start!669220 (not condSetEmpty!47443)) setNonEmpty!47443))

(assert (= setNonEmpty!47443 b!6978461))

(assert (= start!669220 b!6978463))

(assert (= (and start!669220 ((_ is Cons!66905) s!7408)) b!6978462))

(declare-fun m!7664296 () Bool)

(assert (=> b!6978453 m!7664296))

(declare-fun m!7664298 () Bool)

(assert (=> b!6978453 m!7664298))

(declare-fun m!7664300 () Bool)

(assert (=> b!6978457 m!7664300))

(declare-fun m!7664302 () Bool)

(assert (=> b!6978457 m!7664302))

(assert (=> b!6978457 m!7664298))

(declare-fun m!7664304 () Bool)

(assert (=> b!6978457 m!7664304))

(declare-fun m!7664306 () Bool)

(assert (=> b!6978457 m!7664306))

(declare-fun m!7664308 () Bool)

(assert (=> b!6978458 m!7664308))

(declare-fun m!7664310 () Bool)

(assert (=> b!6978458 m!7664310))

(declare-fun m!7664312 () Bool)

(assert (=> b!6978458 m!7664312))

(declare-fun m!7664314 () Bool)

(assert (=> b!6978458 m!7664314))

(declare-fun m!7664316 () Bool)

(assert (=> b!6978458 m!7664316))

(declare-fun m!7664318 () Bool)

(assert (=> b!6978458 m!7664318))

(declare-fun m!7664320 () Bool)

(assert (=> b!6978454 m!7664320))

(declare-fun m!7664322 () Bool)

(assert (=> b!6978459 m!7664322))

(declare-fun m!7664324 () Bool)

(assert (=> b!6978459 m!7664324))

(assert (=> b!6978459 m!7664298))

(declare-fun m!7664326 () Bool)

(assert (=> b!6978459 m!7664326))

(declare-fun m!7664328 () Bool)

(assert (=> b!6978456 m!7664328))

(declare-fun m!7664330 () Bool)

(assert (=> start!669220 m!7664330))

(declare-fun m!7664332 () Bool)

(assert (=> start!669220 m!7664332))

(declare-fun m!7664334 () Bool)

(assert (=> start!669220 m!7664334))

(declare-fun m!7664336 () Bool)

(assert (=> setNonEmpty!47443 m!7664336))

(check-sat tp_is_empty!43547 (not b!6978459) (not b!6978457) (not b!6978453) (not b!6978462) (not b!6978458) (not start!669220) (not b!6978454) (not setNonEmpty!47443) (not b!6978461) (not b!6978463))
(check-sat)
