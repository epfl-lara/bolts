; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676994 () Bool)

(assert start!676994)

(declare-fun b!7020443 () Bool)

(assert (=> b!7020443 true))

(declare-fun b!7020445 () Bool)

(assert (=> b!7020445 true))

(declare-fun b!7020454 () Bool)

(assert (=> b!7020454 true))

(declare-fun bs!1867446 () Bool)

(declare-fun b!7020448 () Bool)

(assert (= bs!1867446 (and b!7020448 b!7020443)))

(declare-datatypes ((C!35040 0))(
  ( (C!35041 (val!27222 Int)) )
))
(declare-datatypes ((List!67700 0))(
  ( (Nil!67576) (Cons!67576 (h!74024 C!35040) (t!381455 List!67700)) )
))
(declare-fun s!7408 () List!67700)

(declare-fun lambda!411231 () Int)

(declare-fun lambda!411227 () Int)

(assert (=> bs!1867446 (= (= Nil!67576 s!7408) (= lambda!411231 lambda!411227))))

(declare-fun b!7020441 () Bool)

(declare-fun e!4220136 () Bool)

(declare-fun tp!1933930 () Bool)

(assert (=> b!7020441 (= e!4220136 tp!1933930)))

(declare-datatypes ((Regex!17385 0))(
  ( (ElementMatch!17385 (c!1304682 C!35040)) (Concat!26230 (regOne!35282 Regex!17385) (regTwo!35282 Regex!17385)) (EmptyExpr!17385) (Star!17385 (reg!17714 Regex!17385)) (EmptyLang!17385) (Union!17385 (regOne!35283 Regex!17385) (regTwo!35283 Regex!17385)) )
))
(declare-datatypes ((List!67701 0))(
  ( (Nil!67577) (Cons!67577 (h!74025 Regex!17385) (t!381456 List!67701)) )
))
(declare-datatypes ((Context!12762 0))(
  ( (Context!12763 (exprs!6881 List!67701)) )
))
(declare-fun setElem!48678 () Context!12762)

(declare-fun tp!1933931 () Bool)

(declare-fun setRes!48678 () Bool)

(declare-fun setNonEmpty!48678 () Bool)

(declare-fun inv!86321 (Context!12762) Bool)

(assert (=> setNonEmpty!48678 (= setRes!48678 (and tp!1933931 (inv!86321 setElem!48678) e!4220136))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12762))

(declare-fun setRest!48678 () (InoxSet Context!12762))

(assert (=> setNonEmpty!48678 (= z1!570 ((_ map or) (store ((as const (Array Context!12762 Bool)) false) setElem!48678 true) setRest!48678))))

(declare-fun b!7020442 () Bool)

(declare-fun e!4220130 () Bool)

(declare-datatypes ((List!67702 0))(
  ( (Nil!67578) (Cons!67578 (h!74026 Context!12762) (t!381457 List!67702)) )
))
(declare-fun lt!2511541 () List!67702)

(declare-fun exists!3266 (List!67702 Int) Bool)

(assert (=> b!7020442 (= e!4220130 (exists!3266 lt!2511541 lambda!411231))))

(declare-fun e!4220129 () Bool)

(declare-fun e!4220139 () Bool)

(assert (=> b!7020443 (= e!4220129 (not e!4220139))))

(declare-fun res!2865634 () Bool)

(assert (=> b!7020443 (=> res!2865634 e!4220139)))

(declare-fun lt!2511552 () (InoxSet Context!12762))

(declare-fun matchZipper!2925 ((InoxSet Context!12762) List!67700) Bool)

(assert (=> b!7020443 (= res!2865634 (not (matchZipper!2925 lt!2511552 s!7408)))))

(declare-fun lt!2511554 () Context!12762)

(assert (=> b!7020443 (= lt!2511552 (store ((as const (Array Context!12762 Bool)) false) lt!2511554 true))))

(declare-fun lt!2511551 () (InoxSet Context!12762))

(declare-fun getWitness!1354 ((InoxSet Context!12762) Int) Context!12762)

(assert (=> b!7020443 (= lt!2511554 (getWitness!1354 lt!2511551 lambda!411227))))

(declare-fun lt!2511548 () List!67702)

(assert (=> b!7020443 (exists!3266 lt!2511548 lambda!411227)))

(declare-datatypes ((Unit!161452 0))(
  ( (Unit!161453) )
))
(declare-fun lt!2511546 () Unit!161452)

(declare-fun lemmaZipperMatchesExistsMatchingContext!354 (List!67702 List!67700) Unit!161452)

(assert (=> b!7020443 (= lt!2511546 (lemmaZipperMatchesExistsMatchingContext!354 lt!2511548 s!7408))))

(declare-fun toList!10745 ((InoxSet Context!12762)) List!67702)

(assert (=> b!7020443 (= lt!2511548 (toList!10745 lt!2511551))))

(declare-fun b!7020444 () Bool)

(declare-fun e!4220133 () Bool)

(declare-fun tp!1933929 () Bool)

(assert (=> b!7020444 (= e!4220133 tp!1933929)))

(declare-fun e!4220131 () Bool)

(assert (=> b!7020445 (= e!4220139 e!4220131)))

(declare-fun res!2865641 () Bool)

(assert (=> b!7020445 (=> res!2865641 e!4220131)))

(declare-fun lt!2511557 () Context!12762)

(declare-fun lt!2511545 () Context!12762)

(assert (=> b!7020445 (= res!2865641 (or (not (= lt!2511545 lt!2511554)) (not (select z1!570 lt!2511557))))))

(declare-fun ct2!306 () Context!12762)

(declare-fun ++!15425 (List!67701 List!67701) List!67701)

(assert (=> b!7020445 (= lt!2511545 (Context!12763 (++!15425 (exprs!6881 lt!2511557) (exprs!6881 ct2!306))))))

(declare-fun lambda!411229 () Int)

(declare-fun lt!2511555 () Unit!161452)

(declare-fun lemmaConcatPreservesForall!721 (List!67701 List!67701 Int) Unit!161452)

(assert (=> b!7020445 (= lt!2511555 (lemmaConcatPreservesForall!721 (exprs!6881 lt!2511557) (exprs!6881 ct2!306) lambda!411229))))

(declare-fun lambda!411228 () Int)

(declare-fun mapPost2!240 ((InoxSet Context!12762) Int Context!12762) Context!12762)

(assert (=> b!7020445 (= lt!2511557 (mapPost2!240 z1!570 lambda!411228 lt!2511554))))

(declare-fun b!7020446 () Bool)

(declare-fun e!4220135 () Bool)

(declare-fun e!4220134 () Bool)

(assert (=> b!7020446 (= e!4220135 e!4220134)))

(declare-fun res!2865640 () Bool)

(assert (=> b!7020446 (=> res!2865640 e!4220134)))

(assert (=> b!7020446 (= res!2865640 (not (= lt!2511545 ct2!306)))))

(declare-fun lt!2511553 () Unit!161452)

(assert (=> b!7020446 (= lt!2511553 (lemmaConcatPreservesForall!721 (exprs!6881 lt!2511557) (exprs!6881 ct2!306) lambda!411229))))

(declare-fun e!4220140 () Bool)

(assert (=> b!7020448 (= e!4220140 e!4220130)))

(declare-fun res!2865632 () Bool)

(assert (=> b!7020448 (=> res!2865632 e!4220130)))

(assert (=> b!7020448 (= res!2865632 (not (exists!3266 lt!2511541 lambda!411231)))))

(assert (=> b!7020448 (= lt!2511541 (toList!10745 z1!570))))

(declare-fun exists!3267 ((InoxSet Context!12762) Int) Bool)

(assert (=> b!7020448 (exists!3267 z1!570 lambda!411231)))

(declare-fun lt!2511542 () Unit!161452)

(declare-fun lemmaContainsThenExists!107 ((InoxSet Context!12762) Context!12762 Int) Unit!161452)

(assert (=> b!7020448 (= lt!2511542 (lemmaContainsThenExists!107 z1!570 lt!2511557 lambda!411231))))

(declare-fun lt!2511540 () (InoxSet Context!12762))

(declare-fun lt!2511538 () (InoxSet Context!12762))

(declare-datatypes ((tuple2!68036 0))(
  ( (tuple2!68037 (_1!37321 List!67700) (_2!37321 List!67700)) )
))
(declare-datatypes ((Option!16850 0))(
  ( (None!16849) (Some!16849 (v!53127 tuple2!68036)) )
))
(declare-fun isDefined!13551 (Option!16850) Bool)

(declare-fun findConcatSeparationZippers!366 ((InoxSet Context!12762) (InoxSet Context!12762) List!67700 List!67700 List!67700) Option!16850)

(assert (=> b!7020448 (isDefined!13551 (findConcatSeparationZippers!366 lt!2511540 lt!2511538 Nil!67576 s!7408 s!7408))))

(declare-fun lt!2511543 () Unit!161452)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!38 ((InoxSet Context!12762) (InoxSet Context!12762) List!67700 List!67700 List!67700 List!67700 List!67700) Unit!161452)

(assert (=> b!7020448 (= lt!2511543 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!38 lt!2511540 lt!2511538 Nil!67576 s!7408 s!7408 Nil!67576 s!7408))))

(declare-fun b!7020449 () Bool)

(declare-fun e!4220137 () Bool)

(assert (=> b!7020449 (= e!4220131 e!4220137)))

(declare-fun res!2865633 () Bool)

(assert (=> b!7020449 (=> res!2865633 e!4220137)))

(declare-fun lt!2511539 () (InoxSet Context!12762))

(assert (=> b!7020449 (= res!2865633 (not (= lt!2511539 lt!2511552)))))

(assert (=> b!7020449 (= lt!2511539 (store ((as const (Array Context!12762 Bool)) false) lt!2511545 true))))

(declare-fun lt!2511544 () Unit!161452)

(assert (=> b!7020449 (= lt!2511544 (lemmaConcatPreservesForall!721 (exprs!6881 lt!2511557) (exprs!6881 ct2!306) lambda!411229))))

(declare-fun b!7020450 () Bool)

(declare-fun e!4220132 () Bool)

(assert (=> b!7020450 (= e!4220134 e!4220132)))

(declare-fun res!2865637 () Bool)

(assert (=> b!7020450 (=> res!2865637 e!4220132)))

(assert (=> b!7020450 (= res!2865637 (not (matchZipper!2925 lt!2511538 s!7408)))))

(assert (=> b!7020450 (= lt!2511538 (store ((as const (Array Context!12762 Bool)) false) ct2!306 true))))

(declare-fun b!7020451 () Bool)

(declare-fun e!4220138 () Bool)

(declare-fun tp_is_empty!43995 () Bool)

(declare-fun tp!1933928 () Bool)

(assert (=> b!7020451 (= e!4220138 (and tp_is_empty!43995 tp!1933928))))

(declare-fun b!7020452 () Bool)

(declare-fun res!2865638 () Bool)

(assert (=> b!7020452 (=> res!2865638 e!4220139)))

(assert (=> b!7020452 (= res!2865638 (not (select lt!2511551 lt!2511554)))))

(declare-fun b!7020447 () Bool)

(declare-fun res!2865639 () Bool)

(assert (=> b!7020447 (=> (not res!2865639) (not e!4220129))))

(get-info :version)

(assert (=> b!7020447 (= res!2865639 ((_ is Cons!67576) s!7408))))

(declare-fun res!2865643 () Bool)

(assert (=> start!676994 (=> (not res!2865643) (not e!4220129))))

(assert (=> start!676994 (= res!2865643 (matchZipper!2925 lt!2511551 s!7408))))

(declare-fun appendTo!506 ((InoxSet Context!12762) Context!12762) (InoxSet Context!12762))

(assert (=> start!676994 (= lt!2511551 (appendTo!506 z1!570 ct2!306))))

(assert (=> start!676994 e!4220129))

(declare-fun condSetEmpty!48678 () Bool)

(assert (=> start!676994 (= condSetEmpty!48678 (= z1!570 ((as const (Array Context!12762 Bool)) false)))))

(assert (=> start!676994 setRes!48678))

(assert (=> start!676994 (and (inv!86321 ct2!306) e!4220133)))

(assert (=> start!676994 e!4220138))

(declare-fun b!7020453 () Bool)

(assert (=> b!7020453 (= e!4220132 e!4220140)))

(declare-fun res!2865636 () Bool)

(assert (=> b!7020453 (=> res!2865636 e!4220140)))

(declare-fun lt!2511556 () Bool)

(assert (=> b!7020453 (= res!2865636 (not lt!2511556))))

(assert (=> b!7020453 (= lt!2511556 true)))

(assert (=> b!7020453 (= lt!2511556 (matchZipper!2925 lt!2511540 Nil!67576))))

(declare-fun lt!2511550 () Unit!161452)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!16 ((InoxSet Context!12762) List!67700) Unit!161452)

(assert (=> b!7020453 (= lt!2511550 (lemmaZipperOfEmptyContextMatchesEmptyString!16 lt!2511540 Nil!67576))))

(assert (=> b!7020453 (= lt!2511540 (store ((as const (Array Context!12762 Bool)) false) lt!2511557 true))))

(assert (=> b!7020454 (= e!4220137 e!4220135)))

(declare-fun res!2865642 () Bool)

(assert (=> b!7020454 (=> res!2865642 e!4220135)))

(declare-fun lt!2511558 () (InoxSet Context!12762))

(declare-fun derivationStepZipper!2865 ((InoxSet Context!12762) C!35040) (InoxSet Context!12762))

(assert (=> b!7020454 (= res!2865642 (not (= (derivationStepZipper!2865 lt!2511539 (h!74024 s!7408)) lt!2511558)))))

(declare-fun lambda!411230 () Int)

(declare-fun flatMap!2371 ((InoxSet Context!12762) Int) (InoxSet Context!12762))

(declare-fun derivationStepZipperUp!2035 (Context!12762 C!35040) (InoxSet Context!12762))

(assert (=> b!7020454 (= (flatMap!2371 lt!2511539 lambda!411230) (derivationStepZipperUp!2035 lt!2511545 (h!74024 s!7408)))))

(declare-fun lt!2511549 () Unit!161452)

(declare-fun lemmaFlatMapOnSingletonSet!1886 ((InoxSet Context!12762) Context!12762 Int) Unit!161452)

(assert (=> b!7020454 (= lt!2511549 (lemmaFlatMapOnSingletonSet!1886 lt!2511539 lt!2511545 lambda!411230))))

(assert (=> b!7020454 (= lt!2511558 (derivationStepZipperUp!2035 lt!2511545 (h!74024 s!7408)))))

(declare-fun lt!2511547 () Unit!161452)

(assert (=> b!7020454 (= lt!2511547 (lemmaConcatPreservesForall!721 (exprs!6881 lt!2511557) (exprs!6881 ct2!306) lambda!411229))))

(declare-fun b!7020455 () Bool)

(declare-fun res!2865635 () Bool)

(assert (=> b!7020455 (=> res!2865635 e!4220135)))

(assert (=> b!7020455 (= res!2865635 ((_ is Cons!67577) (exprs!6881 lt!2511557)))))

(declare-fun setIsEmpty!48678 () Bool)

(assert (=> setIsEmpty!48678 setRes!48678))

(assert (= (and start!676994 res!2865643) b!7020447))

(assert (= (and b!7020447 res!2865639) b!7020443))

(assert (= (and b!7020443 (not res!2865634)) b!7020452))

(assert (= (and b!7020452 (not res!2865638)) b!7020445))

(assert (= (and b!7020445 (not res!2865641)) b!7020449))

(assert (= (and b!7020449 (not res!2865633)) b!7020454))

(assert (= (and b!7020454 (not res!2865642)) b!7020455))

(assert (= (and b!7020455 (not res!2865635)) b!7020446))

(assert (= (and b!7020446 (not res!2865640)) b!7020450))

(assert (= (and b!7020450 (not res!2865637)) b!7020453))

(assert (= (and b!7020453 (not res!2865636)) b!7020448))

(assert (= (and b!7020448 (not res!2865632)) b!7020442))

(assert (= (and start!676994 condSetEmpty!48678) setIsEmpty!48678))

(assert (= (and start!676994 (not condSetEmpty!48678)) setNonEmpty!48678))

(assert (= setNonEmpty!48678 b!7020441))

(assert (= start!676994 b!7020444))

(assert (= (and start!676994 ((_ is Cons!67576) s!7408)) b!7020451))

(declare-fun m!7721956 () Bool)

(assert (=> b!7020445 m!7721956))

(declare-fun m!7721958 () Bool)

(assert (=> b!7020445 m!7721958))

(declare-fun m!7721960 () Bool)

(assert (=> b!7020445 m!7721960))

(declare-fun m!7721962 () Bool)

(assert (=> b!7020445 m!7721962))

(assert (=> b!7020446 m!7721960))

(declare-fun m!7721964 () Bool)

(assert (=> start!676994 m!7721964))

(declare-fun m!7721966 () Bool)

(assert (=> start!676994 m!7721966))

(declare-fun m!7721968 () Bool)

(assert (=> start!676994 m!7721968))

(declare-fun m!7721970 () Bool)

(assert (=> b!7020450 m!7721970))

(declare-fun m!7721972 () Bool)

(assert (=> b!7020450 m!7721972))

(declare-fun m!7721974 () Bool)

(assert (=> b!7020452 m!7721974))

(declare-fun m!7721976 () Bool)

(assert (=> b!7020442 m!7721976))

(declare-fun m!7721978 () Bool)

(assert (=> b!7020453 m!7721978))

(declare-fun m!7721980 () Bool)

(assert (=> b!7020453 m!7721980))

(declare-fun m!7721982 () Bool)

(assert (=> b!7020453 m!7721982))

(declare-fun m!7721984 () Bool)

(assert (=> b!7020448 m!7721984))

(declare-fun m!7721986 () Bool)

(assert (=> b!7020448 m!7721986))

(assert (=> b!7020448 m!7721976))

(declare-fun m!7721988 () Bool)

(assert (=> b!7020448 m!7721988))

(declare-fun m!7721990 () Bool)

(assert (=> b!7020448 m!7721990))

(assert (=> b!7020448 m!7721986))

(declare-fun m!7721992 () Bool)

(assert (=> b!7020448 m!7721992))

(declare-fun m!7721994 () Bool)

(assert (=> b!7020448 m!7721994))

(declare-fun m!7721996 () Bool)

(assert (=> setNonEmpty!48678 m!7721996))

(declare-fun m!7721998 () Bool)

(assert (=> b!7020449 m!7721998))

(assert (=> b!7020449 m!7721960))

(declare-fun m!7722000 () Bool)

(assert (=> b!7020443 m!7722000))

(declare-fun m!7722002 () Bool)

(assert (=> b!7020443 m!7722002))

(declare-fun m!7722004 () Bool)

(assert (=> b!7020443 m!7722004))

(declare-fun m!7722006 () Bool)

(assert (=> b!7020443 m!7722006))

(declare-fun m!7722008 () Bool)

(assert (=> b!7020443 m!7722008))

(declare-fun m!7722010 () Bool)

(assert (=> b!7020443 m!7722010))

(declare-fun m!7722012 () Bool)

(assert (=> b!7020454 m!7722012))

(declare-fun m!7722014 () Bool)

(assert (=> b!7020454 m!7722014))

(declare-fun m!7722016 () Bool)

(assert (=> b!7020454 m!7722016))

(assert (=> b!7020454 m!7721960))

(declare-fun m!7722018 () Bool)

(assert (=> b!7020454 m!7722018))

(check-sat (not b!7020451) (not b!7020444) (not b!7020448) tp_is_empty!43995 (not setNonEmpty!48678) (not b!7020442) (not b!7020445) (not b!7020454) (not b!7020449) (not b!7020450) (not b!7020441) (not start!676994) (not b!7020443) (not b!7020453) (not b!7020446))
(check-sat)
