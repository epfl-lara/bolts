; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!669216 () Bool)

(assert start!669216)

(declare-fun b!6978382 () Bool)

(assert (=> b!6978382 true))

(declare-fun b!6978378 () Bool)

(assert (=> b!6978378 true))

(declare-fun b!6978374 () Bool)

(declare-fun res!2845567 () Bool)

(declare-fun e!4194035 () Bool)

(assert (=> b!6978374 (=> res!2845567 e!4194035)))

(declare-datatypes ((C!34588 0))(
  ( (C!34589 (val!26996 Int)) )
))
(declare-datatypes ((Regex!17159 0))(
  ( (ElementMatch!17159 (c!1293450 C!34588)) (Concat!26004 (regOne!34830 Regex!17159) (regTwo!34830 Regex!17159)) (EmptyExpr!17159) (Star!17159 (reg!17488 Regex!17159)) (EmptyLang!17159) (Union!17159 (regOne!34831 Regex!17159) (regTwo!34831 Regex!17159)) )
))
(declare-datatypes ((List!67022 0))(
  ( (Nil!66898) (Cons!66898 (h!73346 Regex!17159) (t!380765 List!67022)) )
))
(declare-datatypes ((Context!12310 0))(
  ( (Context!12311 (exprs!6655 List!67022)) )
))
(declare-fun lt!2480696 () Context!12310)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2480699 () (InoxSet Context!12310))

(assert (=> b!6978374 (= res!2845567 (not (select lt!2480699 lt!2480696)))))

(declare-fun setIsEmpty!47437 () Bool)

(declare-fun setRes!47437 () Bool)

(assert (=> setIsEmpty!47437 setRes!47437))

(declare-fun b!6978375 () Bool)

(declare-fun e!4194034 () Bool)

(declare-fun tp!1927702 () Bool)

(assert (=> b!6978375 (= e!4194034 tp!1927702)))

(declare-fun res!2845572 () Bool)

(declare-fun e!4194032 () Bool)

(assert (=> start!669216 (=> (not res!2845572) (not e!4194032))))

(declare-datatypes ((List!67023 0))(
  ( (Nil!66899) (Cons!66899 (h!73347 C!34588) (t!380766 List!67023)) )
))
(declare-fun s!7408 () List!67023)

(declare-fun matchZipper!2699 ((InoxSet Context!12310) List!67023) Bool)

(assert (=> start!669216 (= res!2845572 (matchZipper!2699 lt!2480699 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12310))

(declare-fun ct2!306 () Context!12310)

(declare-fun appendTo!280 ((InoxSet Context!12310) Context!12310) (InoxSet Context!12310))

(assert (=> start!669216 (= lt!2480699 (appendTo!280 z1!570 ct2!306))))

(assert (=> start!669216 e!4194032))

(declare-fun condSetEmpty!47437 () Bool)

(assert (=> start!669216 (= condSetEmpty!47437 (= z1!570 ((as const (Array Context!12310 Bool)) false)))))

(assert (=> start!669216 setRes!47437))

(declare-fun inv!85756 (Context!12310) Bool)

(assert (=> start!669216 (and (inv!85756 ct2!306) e!4194034)))

(declare-fun e!4194029 () Bool)

(assert (=> start!669216 e!4194029))

(declare-fun b!6978376 () Bool)

(declare-fun res!2845568 () Bool)

(assert (=> b!6978376 (=> (not res!2845568) (not e!4194032))))

(get-info :version)

(assert (=> b!6978376 (= res!2845568 ((_ is Cons!66899) s!7408))))

(declare-fun b!6978377 () Bool)

(declare-fun e!4194031 () Bool)

(assert (=> b!6978377 (= e!4194031 true)))

(declare-fun lt!2480694 () (InoxSet Context!12310))

(declare-fun lt!2480701 () Context!12310)

(declare-fun derivationStepZipperUp!1809 (Context!12310 C!34588) (InoxSet Context!12310))

(assert (=> b!6978377 (= lt!2480694 (derivationStepZipperUp!1809 lt!2480701 (h!73347 s!7408)))))

(declare-fun lt!2480693 () Context!12310)

(declare-fun lambda!398551 () Int)

(declare-datatypes ((Unit!160967 0))(
  ( (Unit!160968) )
))
(declare-fun lt!2480691 () Unit!160967)

(declare-fun lemmaConcatPreservesForall!495 (List!67022 List!67022 Int) Unit!160967)

(assert (=> b!6978377 (= lt!2480691 (lemmaConcatPreservesForall!495 (exprs!6655 lt!2480693) (exprs!6655 ct2!306) lambda!398551))))

(declare-fun e!4194033 () Bool)

(assert (=> b!6978378 (= e!4194035 e!4194033)))

(declare-fun res!2845569 () Bool)

(assert (=> b!6978378 (=> res!2845569 e!4194033)))

(assert (=> b!6978378 (= res!2845569 (or (not (= lt!2480701 lt!2480696)) (not (select z1!570 lt!2480693))))))

(declare-fun ++!15104 (List!67022 List!67022) List!67022)

(assert (=> b!6978378 (= lt!2480701 (Context!12311 (++!15104 (exprs!6655 lt!2480693) (exprs!6655 ct2!306))))))

(declare-fun lt!2480692 () Unit!160967)

(assert (=> b!6978378 (= lt!2480692 (lemmaConcatPreservesForall!495 (exprs!6655 lt!2480693) (exprs!6655 ct2!306) lambda!398551))))

(declare-fun lambda!398550 () Int)

(declare-fun mapPost2!14 ((InoxSet Context!12310) Int Context!12310) Context!12310)

(assert (=> b!6978378 (= lt!2480693 (mapPost2!14 z1!570 lambda!398550 lt!2480696))))

(declare-fun b!6978379 () Bool)

(declare-fun tp_is_empty!43543 () Bool)

(declare-fun tp!1927700 () Bool)

(assert (=> b!6978379 (= e!4194029 (and tp_is_empty!43543 tp!1927700))))

(declare-fun b!6978380 () Bool)

(declare-fun e!4194030 () Bool)

(declare-fun tp!1927701 () Bool)

(assert (=> b!6978380 (= e!4194030 tp!1927701)))

(declare-fun setNonEmpty!47437 () Bool)

(declare-fun setElem!47437 () Context!12310)

(declare-fun tp!1927699 () Bool)

(assert (=> setNonEmpty!47437 (= setRes!47437 (and tp!1927699 (inv!85756 setElem!47437) e!4194030))))

(declare-fun setRest!47437 () (InoxSet Context!12310))

(assert (=> setNonEmpty!47437 (= z1!570 ((_ map or) (store ((as const (Array Context!12310 Bool)) false) setElem!47437 true) setRest!47437))))

(declare-fun b!6978381 () Bool)

(assert (=> b!6978381 (= e!4194033 e!4194031)))

(declare-fun res!2845571 () Bool)

(assert (=> b!6978381 (=> res!2845571 e!4194031)))

(declare-fun lt!2480698 () (InoxSet Context!12310))

(assert (=> b!6978381 (= res!2845571 (not (= (store ((as const (Array Context!12310 Bool)) false) lt!2480701 true) lt!2480698)))))

(declare-fun lt!2480697 () Unit!160967)

(assert (=> b!6978381 (= lt!2480697 (lemmaConcatPreservesForall!495 (exprs!6655 lt!2480693) (exprs!6655 ct2!306) lambda!398551))))

(assert (=> b!6978382 (= e!4194032 (not e!4194035))))

(declare-fun res!2845570 () Bool)

(assert (=> b!6978382 (=> res!2845570 e!4194035)))

(assert (=> b!6978382 (= res!2845570 (not (matchZipper!2699 lt!2480698 s!7408)))))

(assert (=> b!6978382 (= lt!2480698 (store ((as const (Array Context!12310 Bool)) false) lt!2480696 true))))

(declare-fun lambda!398549 () Int)

(declare-fun getWitness!1018 ((InoxSet Context!12310) Int) Context!12310)

(assert (=> b!6978382 (= lt!2480696 (getWitness!1018 lt!2480699 lambda!398549))))

(declare-datatypes ((List!67024 0))(
  ( (Nil!66900) (Cons!66900 (h!73348 Context!12310) (t!380767 List!67024)) )
))
(declare-fun lt!2480700 () List!67024)

(declare-fun exists!2907 (List!67024 Int) Bool)

(assert (=> b!6978382 (exists!2907 lt!2480700 lambda!398549)))

(declare-fun lt!2480695 () Unit!160967)

(declare-fun lemmaZipperMatchesExistsMatchingContext!128 (List!67024 List!67023) Unit!160967)

(assert (=> b!6978382 (= lt!2480695 (lemmaZipperMatchesExistsMatchingContext!128 lt!2480700 s!7408))))

(declare-fun toList!10519 ((InoxSet Context!12310)) List!67024)

(assert (=> b!6978382 (= lt!2480700 (toList!10519 lt!2480699))))

(assert (= (and start!669216 res!2845572) b!6978376))

(assert (= (and b!6978376 res!2845568) b!6978382))

(assert (= (and b!6978382 (not res!2845570)) b!6978374))

(assert (= (and b!6978374 (not res!2845567)) b!6978378))

(assert (= (and b!6978378 (not res!2845569)) b!6978381))

(assert (= (and b!6978381 (not res!2845571)) b!6978377))

(assert (= (and start!669216 condSetEmpty!47437) setIsEmpty!47437))

(assert (= (and start!669216 (not condSetEmpty!47437)) setNonEmpty!47437))

(assert (= setNonEmpty!47437 b!6978380))

(assert (= start!669216 b!6978375))

(assert (= (and start!669216 ((_ is Cons!66899) s!7408)) b!6978379))

(declare-fun m!7664220 () Bool)

(assert (=> b!6978382 m!7664220))

(declare-fun m!7664222 () Bool)

(assert (=> b!6978382 m!7664222))

(declare-fun m!7664224 () Bool)

(assert (=> b!6978382 m!7664224))

(declare-fun m!7664226 () Bool)

(assert (=> b!6978382 m!7664226))

(declare-fun m!7664228 () Bool)

(assert (=> b!6978382 m!7664228))

(declare-fun m!7664230 () Bool)

(assert (=> b!6978382 m!7664230))

(declare-fun m!7664232 () Bool)

(assert (=> b!6978377 m!7664232))

(declare-fun m!7664234 () Bool)

(assert (=> b!6978377 m!7664234))

(declare-fun m!7664236 () Bool)

(assert (=> b!6978374 m!7664236))

(declare-fun m!7664238 () Bool)

(assert (=> setNonEmpty!47437 m!7664238))

(declare-fun m!7664240 () Bool)

(assert (=> b!6978378 m!7664240))

(declare-fun m!7664242 () Bool)

(assert (=> b!6978378 m!7664242))

(assert (=> b!6978378 m!7664234))

(declare-fun m!7664244 () Bool)

(assert (=> b!6978378 m!7664244))

(declare-fun m!7664246 () Bool)

(assert (=> start!669216 m!7664246))

(declare-fun m!7664248 () Bool)

(assert (=> start!669216 m!7664248))

(declare-fun m!7664250 () Bool)

(assert (=> start!669216 m!7664250))

(declare-fun m!7664252 () Bool)

(assert (=> b!6978381 m!7664252))

(assert (=> b!6978381 m!7664234))

(check-sat tp_is_empty!43543 (not b!6978378) (not b!6978377) (not b!6978382) (not b!6978381) (not setNonEmpty!47437) (not b!6978379) (not start!669216) (not b!6978375) (not b!6978380))
(check-sat)
