; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!671774 () Bool)

(assert start!671774)

(declare-fun b!6990257 () Bool)

(assert (=> b!6990257 true))

(declare-fun b!6990243 () Bool)

(assert (=> b!6990243 true))

(declare-fun b!6990249 () Bool)

(assert (=> b!6990249 true))

(declare-fun b!6990242 () Bool)

(declare-fun res!2850836 () Bool)

(declare-fun e!4201529 () Bool)

(assert (=> b!6990242 (=> res!2850836 e!4201529)))

(declare-datatypes ((C!34720 0))(
  ( (C!34721 (val!27062 Int)) )
))
(declare-datatypes ((Regex!17225 0))(
  ( (ElementMatch!17225 (c!1296524 C!34720)) (Concat!26070 (regOne!34962 Regex!17225) (regTwo!34962 Regex!17225)) (EmptyExpr!17225) (Star!17225 (reg!17554 Regex!17225)) (EmptyLang!17225) (Union!17225 (regOne!34963 Regex!17225) (regTwo!34963 Regex!17225)) )
))
(declare-datatypes ((List!67220 0))(
  ( (Nil!67096) (Cons!67096 (h!73544 Regex!17225) (t!380967 List!67220)) )
))
(declare-datatypes ((Context!12442 0))(
  ( (Context!12443 (exprs!6721 List!67220)) )
))
(declare-fun lt!2487502 () Context!12442)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2487487 () (InoxSet Context!12442))

(assert (=> b!6990242 (= res!2850836 (not (select lt!2487487 lt!2487502)))))

(declare-fun e!4201532 () Bool)

(assert (=> b!6990243 (= e!4201529 e!4201532)))

(declare-fun res!2850834 () Bool)

(assert (=> b!6990243 (=> res!2850834 e!4201532)))

(declare-fun lt!2487503 () Context!12442)

(declare-fun lt!2487484 () Context!12442)

(declare-fun z1!570 () (InoxSet Context!12442))

(assert (=> b!6990243 (= res!2850834 (or (not (= lt!2487484 lt!2487502)) (not (select z1!570 lt!2487503))))))

(declare-fun ct2!306 () Context!12442)

(declare-fun ++!15170 (List!67220 List!67220) List!67220)

(assert (=> b!6990243 (= lt!2487484 (Context!12443 (++!15170 (exprs!6721 lt!2487503) (exprs!6721 ct2!306))))))

(declare-fun lambda!401903 () Int)

(declare-datatypes ((Unit!161105 0))(
  ( (Unit!161106) )
))
(declare-fun lt!2487482 () Unit!161105)

(declare-fun lemmaConcatPreservesForall!561 (List!67220 List!67220 Int) Unit!161105)

(assert (=> b!6990243 (= lt!2487482 (lemmaConcatPreservesForall!561 (exprs!6721 lt!2487503) (exprs!6721 ct2!306) lambda!401903))))

(declare-fun lambda!401902 () Int)

(declare-fun mapPost2!80 ((InoxSet Context!12442) Int Context!12442) Context!12442)

(assert (=> b!6990243 (= lt!2487503 (mapPost2!80 z1!570 lambda!401902 lt!2487502))))

(declare-fun b!6990244 () Bool)

(declare-fun e!4201522 () Bool)

(declare-fun lt!2487480 () (InoxSet Context!12442))

(declare-datatypes ((List!67221 0))(
  ( (Nil!67097) (Cons!67097 (h!73545 C!34720) (t!380968 List!67221)) )
))
(declare-fun s!7408 () List!67221)

(declare-fun matchZipper!2765 ((InoxSet Context!12442) List!67221) Bool)

(assert (=> b!6990244 (= e!4201522 (matchZipper!2765 lt!2487480 (t!380968 s!7408)))))

(declare-fun setIsEmpty!47835 () Bool)

(declare-fun setRes!47835 () Bool)

(assert (=> setIsEmpty!47835 setRes!47835))

(declare-fun b!6990245 () Bool)

(declare-fun e!4201525 () Bool)

(assert (=> b!6990245 (= e!4201532 e!4201525)))

(declare-fun res!2850830 () Bool)

(assert (=> b!6990245 (=> res!2850830 e!4201525)))

(declare-fun lt!2487499 () (InoxSet Context!12442))

(declare-fun lt!2487508 () (InoxSet Context!12442))

(assert (=> b!6990245 (= res!2850830 (not (= lt!2487499 lt!2487508)))))

(assert (=> b!6990245 (= lt!2487499 (store ((as const (Array Context!12442 Bool)) false) lt!2487484 true))))

(declare-fun lt!2487506 () Unit!161105)

(assert (=> b!6990245 (= lt!2487506 (lemmaConcatPreservesForall!561 (exprs!6721 lt!2487503) (exprs!6721 ct2!306) lambda!401903))))

(declare-fun b!6990246 () Bool)

(declare-fun e!4201526 () Bool)

(assert (=> b!6990246 (= e!4201526 (not (matchZipper!2765 lt!2487480 (t!380968 s!7408))))))

(declare-fun lt!2487490 () List!67220)

(declare-fun lt!2487501 () Unit!161105)

(assert (=> b!6990246 (= lt!2487501 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun b!6990247 () Bool)

(declare-fun e!4201534 () Bool)

(declare-fun tp!1929815 () Bool)

(assert (=> b!6990247 (= e!4201534 tp!1929815)))

(declare-fun b!6990248 () Bool)

(declare-fun e!4201519 () Bool)

(assert (=> b!6990248 (= e!4201519 true)))

(declare-fun lt!2487507 () (InoxSet Context!12442))

(declare-fun map!15484 ((InoxSet Context!12442) Int) (InoxSet Context!12442))

(assert (=> b!6990248 (= (map!15484 lt!2487507 lambda!401902) (store ((as const (Array Context!12442 Bool)) false) (Context!12443 (++!15170 lt!2487490 (exprs!6721 ct2!306))) true))))

(declare-fun lt!2487475 () Unit!161105)

(assert (=> b!6990248 (= lt!2487475 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun lt!2487476 () Unit!161105)

(declare-fun lt!2487510 () Context!12442)

(declare-fun lemmaMapOnSingletonSet!290 ((InoxSet Context!12442) Context!12442 Int) Unit!161105)

(assert (=> b!6990248 (= lt!2487476 (lemmaMapOnSingletonSet!290 lt!2487507 lt!2487510 lambda!401902))))

(assert (=> b!6990248 (= lt!2487507 (store ((as const (Array Context!12442 Bool)) false) lt!2487510 true))))

(declare-fun e!4201520 () Bool)

(assert (=> b!6990249 (= e!4201525 e!4201520)))

(declare-fun res!2850831 () Bool)

(assert (=> b!6990249 (=> res!2850831 e!4201520)))

(declare-fun lt!2487495 () (InoxSet Context!12442))

(declare-fun derivationStepZipper!2705 ((InoxSet Context!12442) C!34720) (InoxSet Context!12442))

(assert (=> b!6990249 (= res!2850831 (not (= (derivationStepZipper!2705 lt!2487499 (h!73545 s!7408)) lt!2487495)))))

(declare-fun lambda!401904 () Int)

(declare-fun flatMap!2211 ((InoxSet Context!12442) Int) (InoxSet Context!12442))

(declare-fun derivationStepZipperUp!1875 (Context!12442 C!34720) (InoxSet Context!12442))

(assert (=> b!6990249 (= (flatMap!2211 lt!2487499 lambda!401904) (derivationStepZipperUp!1875 lt!2487484 (h!73545 s!7408)))))

(declare-fun lt!2487496 () Unit!161105)

(declare-fun lemmaFlatMapOnSingletonSet!1726 ((InoxSet Context!12442) Context!12442 Int) Unit!161105)

(assert (=> b!6990249 (= lt!2487496 (lemmaFlatMapOnSingletonSet!1726 lt!2487499 lt!2487484 lambda!401904))))

(assert (=> b!6990249 (= lt!2487495 (derivationStepZipperUp!1875 lt!2487484 (h!73545 s!7408)))))

(declare-fun lt!2487478 () Unit!161105)

(assert (=> b!6990249 (= lt!2487478 (lemmaConcatPreservesForall!561 (exprs!6721 lt!2487503) (exprs!6721 ct2!306) lambda!401903))))

(declare-fun b!6990250 () Bool)

(declare-fun e!4201524 () Bool)

(declare-fun tp_is_empty!43675 () Bool)

(declare-fun tp!1929818 () Bool)

(assert (=> b!6990250 (= e!4201524 (and tp_is_empty!43675 tp!1929818))))

(declare-fun b!6990251 () Bool)

(declare-fun e!4201521 () Bool)

(declare-fun e!4201533 () Bool)

(assert (=> b!6990251 (= e!4201521 e!4201533)))

(declare-fun res!2850822 () Bool)

(assert (=> b!6990251 (=> res!2850822 e!4201533)))

(declare-fun lt!2487509 () (InoxSet Context!12442))

(assert (=> b!6990251 (= res!2850822 (not (= lt!2487495 lt!2487509)))))

(declare-fun lt!2487500 () (InoxSet Context!12442))

(assert (=> b!6990251 (= lt!2487509 ((_ map or) lt!2487500 lt!2487480))))

(declare-fun lt!2487511 () Context!12442)

(assert (=> b!6990251 (= lt!2487480 (derivationStepZipperUp!1875 lt!2487511 (h!73545 s!7408)))))

(declare-fun derivationStepZipperDown!1943 (Regex!17225 Context!12442 C!34720) (InoxSet Context!12442))

(assert (=> b!6990251 (= lt!2487500 (derivationStepZipperDown!1943 (h!73544 (exprs!6721 lt!2487503)) lt!2487511 (h!73545 s!7408)))))

(assert (=> b!6990251 (= lt!2487511 (Context!12443 (++!15170 lt!2487490 (exprs!6721 ct2!306))))))

(declare-fun lt!2487491 () Unit!161105)

(assert (=> b!6990251 (= lt!2487491 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun lt!2487493 () Unit!161105)

(assert (=> b!6990251 (= lt!2487493 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun b!6990252 () Bool)

(declare-fun e!4201527 () Bool)

(declare-fun e!4201531 () Bool)

(assert (=> b!6990252 (= e!4201527 e!4201531)))

(declare-fun res!2850823 () Bool)

(assert (=> b!6990252 (=> res!2850823 e!4201531)))

(assert (=> b!6990252 (= res!2850823 (not (matchZipper!2765 lt!2487480 (t!380968 s!7408))))))

(declare-fun lt!2487477 () Unit!161105)

(assert (=> b!6990252 (= lt!2487477 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun b!6990253 () Bool)

(declare-fun res!2850833 () Bool)

(assert (=> b!6990253 (=> res!2850833 e!4201520)))

(get-info :version)

(assert (=> b!6990253 (= res!2850833 (not ((_ is Cons!67096) (exprs!6721 lt!2487503))))))

(declare-fun res!2850829 () Bool)

(declare-fun e!4201530 () Bool)

(assert (=> start!671774 (=> (not res!2850829) (not e!4201530))))

(assert (=> start!671774 (= res!2850829 (matchZipper!2765 lt!2487487 s!7408))))

(declare-fun appendTo!346 ((InoxSet Context!12442) Context!12442) (InoxSet Context!12442))

(assert (=> start!671774 (= lt!2487487 (appendTo!346 z1!570 ct2!306))))

(assert (=> start!671774 e!4201530))

(declare-fun condSetEmpty!47835 () Bool)

(assert (=> start!671774 (= condSetEmpty!47835 (= z1!570 ((as const (Array Context!12442 Bool)) false)))))

(assert (=> start!671774 setRes!47835))

(declare-fun inv!85921 (Context!12442) Bool)

(assert (=> start!671774 (and (inv!85921 ct2!306) e!4201534)))

(assert (=> start!671774 e!4201524))

(declare-fun b!6990254 () Bool)

(declare-fun e!4201523 () Bool)

(assert (=> b!6990254 (= e!4201523 e!4201519)))

(declare-fun res!2850828 () Bool)

(assert (=> b!6990254 (=> res!2850828 e!4201519)))

(declare-fun lt!2487492 () (InoxSet Context!12442))

(assert (=> b!6990254 (= res!2850828 (not (matchZipper!2765 lt!2487492 s!7408)))))

(declare-fun lt!2487486 () Unit!161105)

(assert (=> b!6990254 (= lt!2487486 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun b!6990255 () Bool)

(assert (=> b!6990255 (= e!4201531 e!4201523)))

(declare-fun res!2850837 () Bool)

(assert (=> b!6990255 (=> res!2850837 e!4201523)))

(assert (=> b!6990255 (= res!2850837 (not (= (derivationStepZipper!2705 lt!2487492 (h!73545 s!7408)) lt!2487480)))))

(declare-fun lt!2487481 () Unit!161105)

(assert (=> b!6990255 (= lt!2487481 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun lt!2487489 () Unit!161105)

(assert (=> b!6990255 (= lt!2487489 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(assert (=> b!6990255 (= (flatMap!2211 lt!2487492 lambda!401904) (derivationStepZipperUp!1875 lt!2487511 (h!73545 s!7408)))))

(declare-fun lt!2487474 () Unit!161105)

(assert (=> b!6990255 (= lt!2487474 (lemmaFlatMapOnSingletonSet!1726 lt!2487492 lt!2487511 lambda!401904))))

(assert (=> b!6990255 (= lt!2487492 (store ((as const (Array Context!12442 Bool)) false) lt!2487511 true))))

(declare-fun lt!2487485 () Unit!161105)

(assert (=> b!6990255 (= lt!2487485 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun lt!2487498 () Unit!161105)

(assert (=> b!6990255 (= lt!2487498 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun b!6990256 () Bool)

(assert (=> b!6990256 (= e!4201533 e!4201527)))

(declare-fun res!2850821 () Bool)

(assert (=> b!6990256 (=> res!2850821 e!4201527)))

(assert (=> b!6990256 (= res!2850821 e!4201526)))

(declare-fun res!2850835 () Bool)

(assert (=> b!6990256 (=> (not res!2850835) (not e!4201526))))

(declare-fun lt!2487505 () Bool)

(declare-fun lt!2487483 () Bool)

(assert (=> b!6990256 (= res!2850835 (not (= lt!2487505 lt!2487483)))))

(assert (=> b!6990256 (= lt!2487505 (matchZipper!2765 lt!2487495 (t!380968 s!7408)))))

(declare-fun lt!2487488 () Unit!161105)

(assert (=> b!6990256 (= lt!2487488 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(assert (=> b!6990256 (= (matchZipper!2765 lt!2487509 (t!380968 s!7408)) e!4201522)))

(declare-fun res!2850826 () Bool)

(assert (=> b!6990256 (=> res!2850826 e!4201522)))

(assert (=> b!6990256 (= res!2850826 lt!2487483)))

(assert (=> b!6990256 (= lt!2487483 (matchZipper!2765 lt!2487500 (t!380968 s!7408)))))

(declare-fun lt!2487473 () Unit!161105)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1398 ((InoxSet Context!12442) (InoxSet Context!12442) List!67221) Unit!161105)

(assert (=> b!6990256 (= lt!2487473 (lemmaZipperConcatMatchesSameAsBothZippers!1398 lt!2487500 lt!2487480 (t!380968 s!7408)))))

(declare-fun lt!2487497 () Unit!161105)

(assert (=> b!6990256 (= lt!2487497 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(declare-fun lt!2487504 () Unit!161105)

(assert (=> b!6990256 (= lt!2487504 (lemmaConcatPreservesForall!561 lt!2487490 (exprs!6721 ct2!306) lambda!401903))))

(assert (=> b!6990257 (= e!4201530 (not e!4201529))))

(declare-fun res!2850827 () Bool)

(assert (=> b!6990257 (=> res!2850827 e!4201529)))

(assert (=> b!6990257 (= res!2850827 (not (matchZipper!2765 lt!2487508 s!7408)))))

(assert (=> b!6990257 (= lt!2487508 (store ((as const (Array Context!12442 Bool)) false) lt!2487502 true))))

(declare-fun lambda!401901 () Int)

(declare-fun getWitness!1125 ((InoxSet Context!12442) Int) Context!12442)

(assert (=> b!6990257 (= lt!2487502 (getWitness!1125 lt!2487487 lambda!401901))))

(declare-datatypes ((List!67222 0))(
  ( (Nil!67098) (Cons!67098 (h!73546 Context!12442) (t!380969 List!67222)) )
))
(declare-fun lt!2487494 () List!67222)

(declare-fun exists!3014 (List!67222 Int) Bool)

(assert (=> b!6990257 (exists!3014 lt!2487494 lambda!401901)))

(declare-fun lt!2487479 () Unit!161105)

(declare-fun lemmaZipperMatchesExistsMatchingContext!194 (List!67222 List!67221) Unit!161105)

(assert (=> b!6990257 (= lt!2487479 (lemmaZipperMatchesExistsMatchingContext!194 lt!2487494 s!7408))))

(declare-fun toList!10585 ((InoxSet Context!12442)) List!67222)

(assert (=> b!6990257 (= lt!2487494 (toList!10585 lt!2487487))))

(declare-fun tp!1929816 () Bool)

(declare-fun setElem!47835 () Context!12442)

(declare-fun setNonEmpty!47835 () Bool)

(declare-fun e!4201528 () Bool)

(assert (=> setNonEmpty!47835 (= setRes!47835 (and tp!1929816 (inv!85921 setElem!47835) e!4201528))))

(declare-fun setRest!47835 () (InoxSet Context!12442))

(assert (=> setNonEmpty!47835 (= z1!570 ((_ map or) (store ((as const (Array Context!12442 Bool)) false) setElem!47835 true) setRest!47835))))

(declare-fun b!6990258 () Bool)

(declare-fun res!2850825 () Bool)

(assert (=> b!6990258 (=> (not res!2850825) (not e!4201530))))

(assert (=> b!6990258 (= res!2850825 ((_ is Cons!67097) s!7408))))

(declare-fun b!6990259 () Bool)

(declare-fun res!2850832 () Bool)

(assert (=> b!6990259 (=> res!2850832 e!4201520)))

(declare-fun isEmpty!39160 (List!67220) Bool)

(assert (=> b!6990259 (= res!2850832 (isEmpty!39160 (exprs!6721 lt!2487503)))))

(declare-fun b!6990260 () Bool)

(declare-fun res!2850838 () Bool)

(assert (=> b!6990260 (=> res!2850838 e!4201527)))

(assert (=> b!6990260 (= res!2850838 (not lt!2487505))))

(declare-fun b!6990261 () Bool)

(declare-fun tp!1929817 () Bool)

(assert (=> b!6990261 (= e!4201528 tp!1929817)))

(declare-fun b!6990262 () Bool)

(assert (=> b!6990262 (= e!4201520 e!4201521)))

(declare-fun res!2850824 () Bool)

(assert (=> b!6990262 (=> res!2850824 e!4201521)))

(declare-fun nullable!6985 (Regex!17225) Bool)

(assert (=> b!6990262 (= res!2850824 (not (nullable!6985 (h!73544 (exprs!6721 lt!2487503)))))))

(assert (=> b!6990262 (= lt!2487510 (Context!12443 lt!2487490))))

(declare-fun tail!13236 (List!67220) List!67220)

(assert (=> b!6990262 (= lt!2487490 (tail!13236 (exprs!6721 lt!2487503)))))

(assert (= (and start!671774 res!2850829) b!6990258))

(assert (= (and b!6990258 res!2850825) b!6990257))

(assert (= (and b!6990257 (not res!2850827)) b!6990242))

(assert (= (and b!6990242 (not res!2850836)) b!6990243))

(assert (= (and b!6990243 (not res!2850834)) b!6990245))

(assert (= (and b!6990245 (not res!2850830)) b!6990249))

(assert (= (and b!6990249 (not res!2850831)) b!6990253))

(assert (= (and b!6990253 (not res!2850833)) b!6990259))

(assert (= (and b!6990259 (not res!2850832)) b!6990262))

(assert (= (and b!6990262 (not res!2850824)) b!6990251))

(assert (= (and b!6990251 (not res!2850822)) b!6990256))

(assert (= (and b!6990256 (not res!2850826)) b!6990244))

(assert (= (and b!6990256 res!2850835) b!6990246))

(assert (= (and b!6990256 (not res!2850821)) b!6990260))

(assert (= (and b!6990260 (not res!2850838)) b!6990252))

(assert (= (and b!6990252 (not res!2850823)) b!6990255))

(assert (= (and b!6990255 (not res!2850837)) b!6990254))

(assert (= (and b!6990254 (not res!2850828)) b!6990248))

(assert (= (and start!671774 condSetEmpty!47835) setIsEmpty!47835))

(assert (= (and start!671774 (not condSetEmpty!47835)) setNonEmpty!47835))

(assert (= setNonEmpty!47835 b!6990261))

(assert (= start!671774 b!6990247))

(assert (= (and start!671774 ((_ is Cons!67097) s!7408)) b!6990250))

(declare-fun m!7679014 () Bool)

(assert (=> b!6990262 m!7679014))

(declare-fun m!7679016 () Bool)

(assert (=> b!6990262 m!7679016))

(declare-fun m!7679018 () Bool)

(assert (=> setNonEmpty!47835 m!7679018))

(declare-fun m!7679020 () Bool)

(assert (=> b!6990251 m!7679020))

(declare-fun m!7679022 () Bool)

(assert (=> b!6990251 m!7679022))

(declare-fun m!7679024 () Bool)

(assert (=> b!6990251 m!7679024))

(assert (=> b!6990251 m!7679024))

(declare-fun m!7679026 () Bool)

(assert (=> b!6990251 m!7679026))

(declare-fun m!7679028 () Bool)

(assert (=> b!6990243 m!7679028))

(declare-fun m!7679030 () Bool)

(assert (=> b!6990243 m!7679030))

(declare-fun m!7679032 () Bool)

(assert (=> b!6990243 m!7679032))

(declare-fun m!7679034 () Bool)

(assert (=> b!6990243 m!7679034))

(declare-fun m!7679036 () Bool)

(assert (=> b!6990259 m!7679036))

(declare-fun m!7679038 () Bool)

(assert (=> b!6990246 m!7679038))

(assert (=> b!6990246 m!7679024))

(assert (=> b!6990244 m!7679038))

(assert (=> b!6990255 m!7679024))

(assert (=> b!6990255 m!7679024))

(assert (=> b!6990255 m!7679024))

(assert (=> b!6990255 m!7679024))

(assert (=> b!6990255 m!7679020))

(declare-fun m!7679040 () Bool)

(assert (=> b!6990255 m!7679040))

(declare-fun m!7679042 () Bool)

(assert (=> b!6990255 m!7679042))

(declare-fun m!7679044 () Bool)

(assert (=> b!6990255 m!7679044))

(declare-fun m!7679046 () Bool)

(assert (=> b!6990255 m!7679046))

(assert (=> b!6990252 m!7679038))

(assert (=> b!6990252 m!7679024))

(declare-fun m!7679048 () Bool)

(assert (=> b!6990242 m!7679048))

(declare-fun m!7679050 () Bool)

(assert (=> start!671774 m!7679050))

(declare-fun m!7679052 () Bool)

(assert (=> start!671774 m!7679052))

(declare-fun m!7679054 () Bool)

(assert (=> start!671774 m!7679054))

(declare-fun m!7679056 () Bool)

(assert (=> b!6990254 m!7679056))

(assert (=> b!6990254 m!7679024))

(declare-fun m!7679058 () Bool)

(assert (=> b!6990248 m!7679058))

(assert (=> b!6990248 m!7679022))

(declare-fun m!7679060 () Bool)

(assert (=> b!6990248 m!7679060))

(declare-fun m!7679062 () Bool)

(assert (=> b!6990248 m!7679062))

(declare-fun m!7679064 () Bool)

(assert (=> b!6990248 m!7679064))

(assert (=> b!6990248 m!7679024))

(declare-fun m!7679066 () Bool)

(assert (=> b!6990257 m!7679066))

(declare-fun m!7679068 () Bool)

(assert (=> b!6990257 m!7679068))

(declare-fun m!7679070 () Bool)

(assert (=> b!6990257 m!7679070))

(declare-fun m!7679072 () Bool)

(assert (=> b!6990257 m!7679072))

(declare-fun m!7679074 () Bool)

(assert (=> b!6990257 m!7679074))

(declare-fun m!7679076 () Bool)

(assert (=> b!6990257 m!7679076))

(assert (=> b!6990256 m!7679024))

(assert (=> b!6990256 m!7679024))

(declare-fun m!7679078 () Bool)

(assert (=> b!6990256 m!7679078))

(assert (=> b!6990256 m!7679024))

(declare-fun m!7679080 () Bool)

(assert (=> b!6990256 m!7679080))

(declare-fun m!7679082 () Bool)

(assert (=> b!6990256 m!7679082))

(declare-fun m!7679084 () Bool)

(assert (=> b!6990256 m!7679084))

(declare-fun m!7679086 () Bool)

(assert (=> b!6990245 m!7679086))

(assert (=> b!6990245 m!7679032))

(assert (=> b!6990249 m!7679032))

(declare-fun m!7679088 () Bool)

(assert (=> b!6990249 m!7679088))

(declare-fun m!7679090 () Bool)

(assert (=> b!6990249 m!7679090))

(declare-fun m!7679092 () Bool)

(assert (=> b!6990249 m!7679092))

(declare-fun m!7679094 () Bool)

(assert (=> b!6990249 m!7679094))

(check-sat (not b!6990254) tp_is_empty!43675 (not b!6990259) (not b!6990251) (not b!6990261) (not b!6990248) (not b!6990262) (not b!6990250) (not b!6990246) (not setNonEmpty!47835) (not b!6990243) (not b!6990255) (not start!671774) (not b!6990247) (not b!6990252) (not b!6990249) (not b!6990244) (not b!6990256) (not b!6990257) (not b!6990245))
(check-sat)
