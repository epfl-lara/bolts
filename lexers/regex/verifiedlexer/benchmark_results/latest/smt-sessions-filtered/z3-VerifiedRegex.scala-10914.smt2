; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564618 () Bool)

(assert start!564618)

(declare-fun b!5364506 () Bool)

(assert (=> b!5364506 true))

(assert (=> b!5364506 true))

(declare-fun lambda!276479 () Int)

(declare-fun lambda!276478 () Int)

(assert (=> b!5364506 (not (= lambda!276479 lambda!276478))))

(assert (=> b!5364506 true))

(assert (=> b!5364506 true))

(declare-fun b!5364515 () Bool)

(assert (=> b!5364515 true))

(declare-fun bs!1242302 () Bool)

(declare-fun b!5364528 () Bool)

(assert (= bs!1242302 (and b!5364528 b!5364506)))

(declare-fun lambda!276481 () Int)

(declare-datatypes ((C!30420 0))(
  ( (C!30421 (val!24912 Int)) )
))
(declare-datatypes ((Regex!15075 0))(
  ( (ElementMatch!15075 (c!934311 C!30420)) (Concat!23920 (regOne!30662 Regex!15075) (regTwo!30662 Regex!15075)) (EmptyExpr!15075) (Star!15075 (reg!15404 Regex!15075)) (EmptyLang!15075) (Union!15075 (regOne!30663 Regex!15075) (regTwo!30663 Regex!15075)) )
))
(declare-fun lt!2185531 () Regex!15075)

(declare-fun r!7292 () Regex!15075)

(assert (=> bs!1242302 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276481 lambda!276478))))

(assert (=> bs!1242302 (not (= lambda!276481 lambda!276479))))

(assert (=> b!5364528 true))

(assert (=> b!5364528 true))

(assert (=> b!5364528 true))

(declare-fun lambda!276482 () Int)

(assert (=> bs!1242302 (not (= lambda!276482 lambda!276478))))

(assert (=> bs!1242302 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276482 lambda!276479))))

(assert (=> b!5364528 (not (= lambda!276482 lambda!276481))))

(assert (=> b!5364528 true))

(assert (=> b!5364528 true))

(assert (=> b!5364528 true))

(declare-fun b!5364489 () Bool)

(declare-fun res!2276704 () Bool)

(declare-fun e!3329126 () Bool)

(assert (=> b!5364489 (=> res!2276704 e!3329126)))

(declare-datatypes ((List!61524 0))(
  ( (Nil!61400) (Cons!61400 (h!67848 Regex!15075) (t!374745 List!61524)) )
))
(declare-datatypes ((Context!8918 0))(
  ( (Context!8919 (exprs!4959 List!61524)) )
))
(declare-datatypes ((List!61525 0))(
  ( (Nil!61401) (Cons!61401 (h!67849 Context!8918) (t!374746 List!61525)) )
))
(declare-fun zl!343 () List!61525)

(declare-fun isEmpty!33376 (List!61525) Bool)

(assert (=> b!5364489 (= res!2276704 (not (isEmpty!33376 (t!374746 zl!343))))))

(declare-fun res!2276693 () Bool)

(declare-fun e!3329113 () Bool)

(assert (=> start!564618 (=> (not res!2276693) (not e!3329113))))

(declare-fun validRegex!6811 (Regex!15075) Bool)

(assert (=> start!564618 (= res!2276693 (validRegex!6811 r!7292))))

(assert (=> start!564618 e!3329113))

(declare-fun e!3329116 () Bool)

(assert (=> start!564618 e!3329116))

(declare-fun condSetEmpty!34741 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8918))

(assert (=> start!564618 (= condSetEmpty!34741 (= z!1189 ((as const (Array Context!8918 Bool)) false)))))

(declare-fun setRes!34741 () Bool)

(assert (=> start!564618 setRes!34741))

(declare-fun e!3329119 () Bool)

(assert (=> start!564618 e!3329119))

(declare-fun e!3329124 () Bool)

(assert (=> start!564618 e!3329124))

(declare-fun b!5364490 () Bool)

(declare-fun e!3329117 () Bool)

(declare-fun tp!1489046 () Bool)

(declare-fun inv!80934 (Context!8918) Bool)

(assert (=> b!5364490 (= e!3329119 (and (inv!80934 (h!67849 zl!343)) e!3329117 tp!1489046))))

(declare-fun b!5364491 () Bool)

(declare-fun res!2276690 () Bool)

(declare-fun e!3329118 () Bool)

(assert (=> b!5364491 (=> res!2276690 e!3329118)))

(declare-datatypes ((List!61526 0))(
  ( (Nil!61402) (Cons!61402 (h!67850 C!30420) (t!374747 List!61526)) )
))
(declare-datatypes ((tuple2!64548 0))(
  ( (tuple2!64549 (_1!35577 List!61526) (_2!35577 List!61526)) )
))
(declare-fun lt!2185500 () tuple2!64548)

(declare-fun matchR!7260 (Regex!15075 List!61526) Bool)

(assert (=> b!5364491 (= res!2276690 (not (matchR!7260 (regTwo!30662 r!7292) (_2!35577 lt!2185500))))))

(declare-fun b!5364492 () Bool)

(declare-fun res!2276711 () Bool)

(declare-fun e!3329121 () Bool)

(assert (=> b!5364492 (=> res!2276711 e!3329121)))

(declare-fun lt!2185522 () Regex!15075)

(assert (=> b!5364492 (= res!2276711 (not (= lt!2185522 r!7292)))))

(declare-fun b!5364493 () Bool)

(declare-fun res!2276697 () Bool)

(assert (=> b!5364493 (=> res!2276697 e!3329118)))

(declare-fun isEmpty!33377 (List!61526) Bool)

(assert (=> b!5364493 (= res!2276697 (not (isEmpty!33377 (_1!35577 lt!2185500))))))

(declare-fun b!5364494 () Bool)

(declare-fun e!3329110 () Bool)

(declare-fun tp!1489049 () Bool)

(assert (=> b!5364494 (= e!3329110 tp!1489049)))

(declare-fun b!5364495 () Bool)

(declare-fun e!3329112 () Bool)

(declare-fun lt!2185496 () (InoxSet Context!8918))

(declare-fun s!2326 () List!61526)

(declare-fun matchZipper!1319 ((InoxSet Context!8918) List!61526) Bool)

(assert (=> b!5364495 (= e!3329112 (matchZipper!1319 lt!2185496 (t!374747 s!2326)))))

(declare-fun b!5364496 () Bool)

(declare-fun res!2276706 () Bool)

(declare-fun e!3329125 () Bool)

(assert (=> b!5364496 (=> res!2276706 e!3329125)))

(get-info :version)

(assert (=> b!5364496 (= res!2276706 (or ((_ is Concat!23920) (regOne!30662 r!7292)) (not ((_ is Star!15075) (regOne!30662 r!7292)))))))

(declare-fun b!5364497 () Bool)

(declare-fun res!2276701 () Bool)

(assert (=> b!5364497 (=> res!2276701 e!3329125)))

(declare-fun e!3329122 () Bool)

(assert (=> b!5364497 (= res!2276701 e!3329122)))

(declare-fun res!2276696 () Bool)

(assert (=> b!5364497 (=> (not res!2276696) (not e!3329122))))

(assert (=> b!5364497 (= res!2276696 ((_ is Concat!23920) (regOne!30662 r!7292)))))

(declare-fun b!5364498 () Bool)

(declare-fun res!2276708 () Bool)

(declare-fun e!3329115 () Bool)

(assert (=> b!5364498 (=> res!2276708 e!3329115)))

(declare-fun lt!2185533 () Context!8918)

(declare-fun lt!2185517 () Regex!15075)

(declare-fun unfocusZipper!817 (List!61525) Regex!15075)

(assert (=> b!5364498 (= res!2276708 (not (= (unfocusZipper!817 (Cons!61401 lt!2185533 Nil!61401)) lt!2185517)))))

(declare-fun b!5364499 () Bool)

(declare-fun tp!1489050 () Bool)

(assert (=> b!5364499 (= e!3329116 tp!1489050)))

(declare-fun b!5364500 () Bool)

(declare-fun res!2276700 () Bool)

(assert (=> b!5364500 (=> res!2276700 e!3329126)))

(declare-fun generalisedConcat!744 (List!61524) Regex!15075)

(assert (=> b!5364500 (= res!2276700 (not (= r!7292 (generalisedConcat!744 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun b!5364501 () Bool)

(declare-fun res!2276692 () Bool)

(assert (=> b!5364501 (=> res!2276692 e!3329126)))

(assert (=> b!5364501 (= res!2276692 (not ((_ is Cons!61400) (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5364502 () Bool)

(declare-fun e!3329106 () Bool)

(assert (=> b!5364502 (= e!3329121 e!3329106)))

(declare-fun res!2276698 () Bool)

(assert (=> b!5364502 (=> res!2276698 e!3329106)))

(assert (=> b!5364502 (= res!2276698 (not (= r!7292 lt!2185517)))))

(assert (=> b!5364502 (= lt!2185517 (Concat!23920 lt!2185531 (regTwo!30662 r!7292)))))

(declare-fun b!5364503 () Bool)

(declare-fun res!2276719 () Bool)

(assert (=> b!5364503 (=> (not res!2276719) (not e!3329113))))

(declare-fun toList!8859 ((InoxSet Context!8918)) List!61525)

(assert (=> b!5364503 (= res!2276719 (= (toList!8859 z!1189) zl!343))))

(declare-fun b!5364504 () Bool)

(declare-fun res!2276715 () Bool)

(declare-fun e!3329120 () Bool)

(assert (=> b!5364504 (=> res!2276715 e!3329120)))

(declare-fun isEmpty!33378 (List!61524) Bool)

(assert (=> b!5364504 (= res!2276715 (isEmpty!33378 (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5364505 () Bool)

(declare-fun e!3329123 () Bool)

(assert (=> b!5364505 (= e!3329123 (not e!3329126))))

(declare-fun res!2276702 () Bool)

(assert (=> b!5364505 (=> res!2276702 e!3329126)))

(assert (=> b!5364505 (= res!2276702 (not ((_ is Cons!61401) zl!343)))))

(declare-fun lt!2185506 () Bool)

(declare-fun lt!2185518 () Bool)

(assert (=> b!5364505 (= lt!2185506 lt!2185518)))

(declare-fun matchRSpec!2178 (Regex!15075 List!61526) Bool)

(assert (=> b!5364505 (= lt!2185518 (matchRSpec!2178 r!7292 s!2326))))

(assert (=> b!5364505 (= lt!2185506 (matchR!7260 r!7292 s!2326))))

(declare-datatypes ((Unit!153818 0))(
  ( (Unit!153819) )
))
(declare-fun lt!2185503 () Unit!153818)

(declare-fun mainMatchTheorem!2178 (Regex!15075 List!61526) Unit!153818)

(assert (=> b!5364505 (= lt!2185503 (mainMatchTheorem!2178 r!7292 s!2326))))

(assert (=> b!5364506 (= e!3329126 e!3329120)))

(declare-fun res!2276691 () Bool)

(assert (=> b!5364506 (=> res!2276691 e!3329120)))

(declare-fun lt!2185519 () Bool)

(assert (=> b!5364506 (= res!2276691 (or (not (= lt!2185506 lt!2185519)) ((_ is Nil!61402) s!2326)))))

(declare-fun Exists!2256 (Int) Bool)

(assert (=> b!5364506 (= (Exists!2256 lambda!276478) (Exists!2256 lambda!276479))))

(declare-fun lt!2185513 () Unit!153818)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!910 (Regex!15075 Regex!15075 List!61526) Unit!153818)

(assert (=> b!5364506 (= lt!2185513 (lemmaExistCutMatchRandMatchRSpecEquivalent!910 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326))))

(assert (=> b!5364506 (= lt!2185519 (Exists!2256 lambda!276478))))

(declare-datatypes ((Option!15186 0))(
  ( (None!15185) (Some!15185 (v!51214 tuple2!64548)) )
))
(declare-fun isDefined!11889 (Option!15186) Bool)

(declare-fun findConcatSeparation!1600 (Regex!15075 Regex!15075 List!61526 List!61526 List!61526) Option!15186)

(assert (=> b!5364506 (= lt!2185519 (isDefined!11889 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)))))

(declare-fun lt!2185499 () Unit!153818)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1364 (Regex!15075 Regex!15075 List!61526) Unit!153818)

(assert (=> b!5364506 (= lt!2185499 (lemmaFindConcatSeparationEquivalentToExists!1364 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326))))

(declare-fun b!5364507 () Bool)

(declare-fun tp_is_empty!39403 () Bool)

(assert (=> b!5364507 (= e!3329116 tp_is_empty!39403)))

(declare-fun b!5364508 () Bool)

(declare-fun res!2276713 () Bool)

(assert (=> b!5364508 (=> res!2276713 e!3329118)))

(assert (=> b!5364508 (= res!2276713 (not (matchR!7260 lt!2185531 (_1!35577 lt!2185500))))))

(declare-fun b!5364509 () Bool)

(declare-fun e!3329109 () Bool)

(assert (=> b!5364509 (= e!3329106 e!3329109)))

(declare-fun res!2276694 () Bool)

(assert (=> b!5364509 (=> res!2276694 e!3329109)))

(declare-fun lt!2185509 () Context!8918)

(declare-fun lt!2185527 () Regex!15075)

(assert (=> b!5364509 (= res!2276694 (not (= (unfocusZipper!817 (Cons!61401 lt!2185509 Nil!61401)) lt!2185527)))))

(assert (=> b!5364509 (= lt!2185527 (Concat!23920 (reg!15404 (regOne!30662 r!7292)) lt!2185517))))

(declare-fun b!5364510 () Bool)

(declare-fun tp!1489052 () Bool)

(assert (=> b!5364510 (= e!3329117 tp!1489052)))

(declare-fun b!5364511 () Bool)

(assert (=> b!5364511 (= e!3329109 e!3329115)))

(declare-fun res!2276705 () Bool)

(assert (=> b!5364511 (=> res!2276705 e!3329115)))

(declare-fun lt!2185523 () Context!8918)

(assert (=> b!5364511 (= res!2276705 (not (= (unfocusZipper!817 (Cons!61401 lt!2185523 Nil!61401)) (reg!15404 (regOne!30662 r!7292)))))))

(declare-fun lambda!276480 () Int)

(declare-fun lt!2185526 () (InoxSet Context!8918))

(declare-fun flatMap!802 ((InoxSet Context!8918) Int) (InoxSet Context!8918))

(declare-fun derivationStepZipperUp!447 (Context!8918 C!30420) (InoxSet Context!8918))

(assert (=> b!5364511 (= (flatMap!802 lt!2185526 lambda!276480) (derivationStepZipperUp!447 lt!2185533 (h!67850 s!2326)))))

(declare-fun lt!2185534 () Unit!153818)

(declare-fun lemmaFlatMapOnSingletonSet!334 ((InoxSet Context!8918) Context!8918 Int) Unit!153818)

(assert (=> b!5364511 (= lt!2185534 (lemmaFlatMapOnSingletonSet!334 lt!2185526 lt!2185533 lambda!276480))))

(declare-fun lt!2185501 () (InoxSet Context!8918))

(assert (=> b!5364511 (= (flatMap!802 lt!2185501 lambda!276480) (derivationStepZipperUp!447 lt!2185523 (h!67850 s!2326)))))

(declare-fun lt!2185511 () Unit!153818)

(assert (=> b!5364511 (= lt!2185511 (lemmaFlatMapOnSingletonSet!334 lt!2185501 lt!2185523 lambda!276480))))

(declare-fun lt!2185515 () (InoxSet Context!8918))

(assert (=> b!5364511 (= lt!2185515 (derivationStepZipperUp!447 lt!2185533 (h!67850 s!2326)))))

(declare-fun lt!2185528 () (InoxSet Context!8918))

(assert (=> b!5364511 (= lt!2185528 (derivationStepZipperUp!447 lt!2185523 (h!67850 s!2326)))))

(assert (=> b!5364511 (= lt!2185526 (store ((as const (Array Context!8918 Bool)) false) lt!2185533 true))))

(assert (=> b!5364511 (= lt!2185501 (store ((as const (Array Context!8918 Bool)) false) lt!2185523 true))))

(assert (=> b!5364511 (= lt!2185523 (Context!8919 (Cons!61400 (reg!15404 (regOne!30662 r!7292)) Nil!61400)))))

(declare-fun b!5364512 () Bool)

(declare-fun tp!1489047 () Bool)

(declare-fun tp!1489045 () Bool)

(assert (=> b!5364512 (= e!3329116 (and tp!1489047 tp!1489045))))

(declare-fun tp!1489044 () Bool)

(declare-fun setNonEmpty!34741 () Bool)

(declare-fun setElem!34741 () Context!8918)

(assert (=> setNonEmpty!34741 (= setRes!34741 (and tp!1489044 (inv!80934 setElem!34741) e!3329110))))

(declare-fun setRest!34741 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34741 (= z!1189 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34741 true) setRest!34741))))

(declare-fun b!5364513 () Bool)

(declare-fun nullable!5244 (Regex!15075) Bool)

(assert (=> b!5364513 (= e!3329122 (nullable!5244 (regOne!30662 (regOne!30662 r!7292))))))

(declare-fun b!5364514 () Bool)

(declare-fun e!3329105 () Unit!153818)

(declare-fun Unit!153820 () Unit!153818)

(assert (=> b!5364514 (= e!3329105 Unit!153820)))

(assert (=> b!5364515 (= e!3329120 e!3329125)))

(declare-fun res!2276695 () Bool)

(assert (=> b!5364515 (=> res!2276695 e!3329125)))

(assert (=> b!5364515 (= res!2276695 (or (and ((_ is ElementMatch!15075) (regOne!30662 r!7292)) (= (c!934311 (regOne!30662 r!7292)) (h!67850 s!2326))) ((_ is Union!15075) (regOne!30662 r!7292))))))

(declare-fun lt!2185520 () Unit!153818)

(assert (=> b!5364515 (= lt!2185520 e!3329105)))

(declare-fun c!934310 () Bool)

(assert (=> b!5364515 (= c!934310 (nullable!5244 (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> b!5364515 (= (flatMap!802 z!1189 lambda!276480) (derivationStepZipperUp!447 (h!67849 zl!343) (h!67850 s!2326)))))

(declare-fun lt!2185508 () Unit!153818)

(assert (=> b!5364515 (= lt!2185508 (lemmaFlatMapOnSingletonSet!334 z!1189 (h!67849 zl!343) lambda!276480))))

(declare-fun lt!2185502 () Context!8918)

(assert (=> b!5364515 (= lt!2185496 (derivationStepZipperUp!447 lt!2185502 (h!67850 s!2326)))))

(declare-fun lt!2185525 () (InoxSet Context!8918))

(declare-fun derivationStepZipperDown!523 (Regex!15075 Context!8918 C!30420) (InoxSet Context!8918))

(assert (=> b!5364515 (= lt!2185525 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (h!67849 zl!343))) lt!2185502 (h!67850 s!2326)))))

(assert (=> b!5364515 (= lt!2185502 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun lt!2185497 () (InoxSet Context!8918))

(assert (=> b!5364515 (= lt!2185497 (derivationStepZipperUp!447 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))) (h!67850 s!2326)))))

(declare-fun b!5364516 () Bool)

(declare-fun Unit!153821 () Unit!153818)

(assert (=> b!5364516 (= e!3329105 Unit!153821)))

(declare-fun lt!2185529 () Unit!153818)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!312 ((InoxSet Context!8918) (InoxSet Context!8918) List!61526) Unit!153818)

(assert (=> b!5364516 (= lt!2185529 (lemmaZipperConcatMatchesSameAsBothZippers!312 lt!2185525 lt!2185496 (t!374747 s!2326)))))

(declare-fun res!2276717 () Bool)

(assert (=> b!5364516 (= res!2276717 (matchZipper!1319 lt!2185525 (t!374747 s!2326)))))

(assert (=> b!5364516 (=> res!2276717 e!3329112)))

(assert (=> b!5364516 (= (matchZipper!1319 ((_ map or) lt!2185525 lt!2185496) (t!374747 s!2326)) e!3329112)))

(declare-fun b!5364517 () Bool)

(declare-fun res!2276707 () Bool)

(assert (=> b!5364517 (=> res!2276707 e!3329126)))

(declare-fun generalisedUnion!1004 (List!61524) Regex!15075)

(declare-fun unfocusZipperList!517 (List!61525) List!61524)

(assert (=> b!5364517 (= res!2276707 (not (= r!7292 (generalisedUnion!1004 (unfocusZipperList!517 zl!343)))))))

(declare-fun b!5364518 () Bool)

(declare-fun tp!1489051 () Bool)

(declare-fun tp!1489053 () Bool)

(assert (=> b!5364518 (= e!3329116 (and tp!1489051 tp!1489053))))

(declare-fun b!5364519 () Bool)

(assert (=> b!5364519 (= e!3329113 e!3329123)))

(declare-fun res!2276716 () Bool)

(assert (=> b!5364519 (=> (not res!2276716) (not e!3329123))))

(assert (=> b!5364519 (= res!2276716 (= r!7292 lt!2185522))))

(assert (=> b!5364519 (= lt!2185522 (unfocusZipper!817 zl!343))))

(declare-fun b!5364520 () Bool)

(declare-fun e!3329107 () Bool)

(assert (=> b!5364520 (= e!3329107 (or (not lt!2185506) lt!2185518))))

(declare-fun b!5364521 () Bool)

(declare-fun e!3329108 () Bool)

(assert (=> b!5364521 (= e!3329118 e!3329108)))

(declare-fun res!2276714 () Bool)

(assert (=> b!5364521 (=> res!2276714 e!3329108)))

(declare-fun lt!2185510 () (InoxSet Context!8918))

(declare-fun derivationStepZipper!1314 ((InoxSet Context!8918) C!30420) (InoxSet Context!8918))

(assert (=> b!5364521 (= res!2276714 (not (= lt!2185496 (derivationStepZipper!1314 lt!2185510 (h!67850 s!2326)))))))

(assert (=> b!5364521 (= (flatMap!802 lt!2185510 lambda!276480) (derivationStepZipperUp!447 lt!2185502 (h!67850 s!2326)))))

(declare-fun lt!2185498 () Unit!153818)

(assert (=> b!5364521 (= lt!2185498 (lemmaFlatMapOnSingletonSet!334 lt!2185510 lt!2185502 lambda!276480))))

(assert (=> b!5364521 (= lt!2185510 (store ((as const (Array Context!8918 Bool)) false) lt!2185502 true))))

(declare-fun b!5364522 () Bool)

(declare-fun e!3329111 () Bool)

(assert (=> b!5364522 (= e!3329111 e!3329121)))

(declare-fun res!2276718 () Bool)

(assert (=> b!5364522 (=> res!2276718 e!3329121)))

(declare-fun lt!2185530 () (InoxSet Context!8918))

(declare-fun lt!2185507 () (InoxSet Context!8918))

(assert (=> b!5364522 (= res!2276718 (not (= lt!2185530 lt!2185507)))))

(declare-fun lt!2185512 () (InoxSet Context!8918))

(assert (=> b!5364522 (= (flatMap!802 lt!2185512 lambda!276480) (derivationStepZipperUp!447 lt!2185509 (h!67850 s!2326)))))

(declare-fun lt!2185514 () Unit!153818)

(assert (=> b!5364522 (= lt!2185514 (lemmaFlatMapOnSingletonSet!334 lt!2185512 lt!2185509 lambda!276480))))

(declare-fun lt!2185505 () (InoxSet Context!8918))

(assert (=> b!5364522 (= lt!2185505 (derivationStepZipperUp!447 lt!2185509 (h!67850 s!2326)))))

(assert (=> b!5364522 (= lt!2185530 (derivationStepZipper!1314 lt!2185512 (h!67850 s!2326)))))

(assert (=> b!5364522 (= lt!2185512 (store ((as const (Array Context!8918 Bool)) false) lt!2185509 true))))

(declare-fun lt!2185521 () List!61524)

(assert (=> b!5364522 (= lt!2185509 (Context!8919 (Cons!61400 (reg!15404 (regOne!30662 r!7292)) lt!2185521)))))

(declare-fun b!5364523 () Bool)

(declare-fun lambda!276483 () Int)

(declare-fun forall!14483 (List!61524 Int) Bool)

(assert (=> b!5364523 (= e!3329108 (forall!14483 (t!374745 (exprs!4959 (h!67849 zl!343))) lambda!276483))))

(declare-fun b!5364524 () Bool)

(declare-fun e!3329114 () Bool)

(assert (=> b!5364524 (= e!3329115 e!3329114)))

(declare-fun res!2276709 () Bool)

(assert (=> b!5364524 (=> res!2276709 e!3329114)))

(assert (=> b!5364524 (= res!2276709 (not lt!2185506))))

(assert (=> b!5364524 e!3329107))

(declare-fun res!2276699 () Bool)

(assert (=> b!5364524 (=> (not res!2276699) (not e!3329107))))

(assert (=> b!5364524 (= res!2276699 (= (matchR!7260 lt!2185527 s!2326) (matchRSpec!2178 lt!2185527 s!2326)))))

(declare-fun lt!2185532 () Unit!153818)

(assert (=> b!5364524 (= lt!2185532 (mainMatchTheorem!2178 lt!2185527 s!2326))))

(declare-fun b!5364525 () Bool)

(declare-fun res!2276703 () Bool)

(assert (=> b!5364525 (=> res!2276703 e!3329121)))

(assert (=> b!5364525 (= res!2276703 (not (= (matchZipper!1319 lt!2185512 s!2326) (matchZipper!1319 lt!2185530 (t!374747 s!2326)))))))

(declare-fun b!5364526 () Bool)

(assert (=> b!5364526 (= e!3329125 e!3329111)))

(declare-fun res!2276710 () Bool)

(assert (=> b!5364526 (=> res!2276710 e!3329111)))

(assert (=> b!5364526 (= res!2276710 (not (= lt!2185525 lt!2185507)))))

(assert (=> b!5364526 (= lt!2185507 (derivationStepZipperDown!523 (reg!15404 (regOne!30662 r!7292)) lt!2185533 (h!67850 s!2326)))))

(assert (=> b!5364526 (= lt!2185533 (Context!8919 lt!2185521))))

(assert (=> b!5364526 (= lt!2185521 (Cons!61400 lt!2185531 (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> b!5364526 (= lt!2185531 (Star!15075 (reg!15404 (regOne!30662 r!7292))))))

(declare-fun setIsEmpty!34741 () Bool)

(assert (=> setIsEmpty!34741 setRes!34741))

(declare-fun b!5364527 () Bool)

(declare-fun res!2276712 () Bool)

(assert (=> b!5364527 (=> res!2276712 e!3329126)))

(assert (=> b!5364527 (= res!2276712 (or ((_ is EmptyExpr!15075) r!7292) ((_ is EmptyLang!15075) r!7292) ((_ is ElementMatch!15075) r!7292) ((_ is Union!15075) r!7292) (not ((_ is Concat!23920) r!7292))))))

(assert (=> b!5364528 (= e!3329114 e!3329118)))

(declare-fun res!2276689 () Bool)

(assert (=> b!5364528 (=> res!2276689 e!3329118)))

(declare-fun ++!13378 (List!61526 List!61526) List!61526)

(assert (=> b!5364528 (= res!2276689 (not (= (++!13378 (_1!35577 lt!2185500) (_2!35577 lt!2185500)) s!2326)))))

(declare-fun lt!2185524 () Option!15186)

(declare-fun get!21121 (Option!15186) tuple2!64548)

(assert (=> b!5364528 (= lt!2185500 (get!21121 lt!2185524))))

(assert (=> b!5364528 (= (Exists!2256 lambda!276481) (Exists!2256 lambda!276482))))

(declare-fun lt!2185516 () Unit!153818)

(assert (=> b!5364528 (= lt!2185516 (lemmaExistCutMatchRandMatchRSpecEquivalent!910 lt!2185531 (regTwo!30662 r!7292) s!2326))))

(assert (=> b!5364528 (= (isDefined!11889 lt!2185524) (Exists!2256 lambda!276481))))

(assert (=> b!5364528 (= lt!2185524 (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326))))

(declare-fun lt!2185504 () Unit!153818)

(assert (=> b!5364528 (= lt!2185504 (lemmaFindConcatSeparationEquivalentToExists!1364 lt!2185531 (regTwo!30662 r!7292) s!2326))))

(declare-fun b!5364529 () Bool)

(declare-fun tp!1489048 () Bool)

(assert (=> b!5364529 (= e!3329124 (and tp_is_empty!39403 tp!1489048))))

(assert (= (and start!564618 res!2276693) b!5364503))

(assert (= (and b!5364503 res!2276719) b!5364519))

(assert (= (and b!5364519 res!2276716) b!5364505))

(assert (= (and b!5364505 (not res!2276702)) b!5364489))

(assert (= (and b!5364489 (not res!2276704)) b!5364500))

(assert (= (and b!5364500 (not res!2276700)) b!5364501))

(assert (= (and b!5364501 (not res!2276692)) b!5364517))

(assert (= (and b!5364517 (not res!2276707)) b!5364527))

(assert (= (and b!5364527 (not res!2276712)) b!5364506))

(assert (= (and b!5364506 (not res!2276691)) b!5364504))

(assert (= (and b!5364504 (not res!2276715)) b!5364515))

(assert (= (and b!5364515 c!934310) b!5364516))

(assert (= (and b!5364515 (not c!934310)) b!5364514))

(assert (= (and b!5364516 (not res!2276717)) b!5364495))

(assert (= (and b!5364515 (not res!2276695)) b!5364497))

(assert (= (and b!5364497 res!2276696) b!5364513))

(assert (= (and b!5364497 (not res!2276701)) b!5364496))

(assert (= (and b!5364496 (not res!2276706)) b!5364526))

(assert (= (and b!5364526 (not res!2276710)) b!5364522))

(assert (= (and b!5364522 (not res!2276718)) b!5364525))

(assert (= (and b!5364525 (not res!2276703)) b!5364492))

(assert (= (and b!5364492 (not res!2276711)) b!5364502))

(assert (= (and b!5364502 (not res!2276698)) b!5364509))

(assert (= (and b!5364509 (not res!2276694)) b!5364511))

(assert (= (and b!5364511 (not res!2276705)) b!5364498))

(assert (= (and b!5364498 (not res!2276708)) b!5364524))

(assert (= (and b!5364524 res!2276699) b!5364520))

(assert (= (and b!5364524 (not res!2276709)) b!5364528))

(assert (= (and b!5364528 (not res!2276689)) b!5364508))

(assert (= (and b!5364508 (not res!2276713)) b!5364491))

(assert (= (and b!5364491 (not res!2276690)) b!5364493))

(assert (= (and b!5364493 (not res!2276697)) b!5364521))

(assert (= (and b!5364521 (not res!2276714)) b!5364523))

(assert (= (and start!564618 ((_ is ElementMatch!15075) r!7292)) b!5364507))

(assert (= (and start!564618 ((_ is Concat!23920) r!7292)) b!5364518))

(assert (= (and start!564618 ((_ is Star!15075) r!7292)) b!5364499))

(assert (= (and start!564618 ((_ is Union!15075) r!7292)) b!5364512))

(assert (= (and start!564618 condSetEmpty!34741) setIsEmpty!34741))

(assert (= (and start!564618 (not condSetEmpty!34741)) setNonEmpty!34741))

(assert (= setNonEmpty!34741 b!5364494))

(assert (= b!5364490 b!5364510))

(assert (= (and start!564618 ((_ is Cons!61401) zl!343)) b!5364490))

(assert (= (and start!564618 ((_ is Cons!61402) s!2326)) b!5364529))

(declare-fun m!6392618 () Bool)

(assert (=> setNonEmpty!34741 m!6392618))

(declare-fun m!6392620 () Bool)

(assert (=> b!5364519 m!6392620))

(declare-fun m!6392622 () Bool)

(assert (=> b!5364495 m!6392622))

(declare-fun m!6392624 () Bool)

(assert (=> b!5364505 m!6392624))

(declare-fun m!6392626 () Bool)

(assert (=> b!5364505 m!6392626))

(declare-fun m!6392628 () Bool)

(assert (=> b!5364505 m!6392628))

(declare-fun m!6392630 () Bool)

(assert (=> b!5364526 m!6392630))

(declare-fun m!6392632 () Bool)

(assert (=> b!5364511 m!6392632))

(declare-fun m!6392634 () Bool)

(assert (=> b!5364511 m!6392634))

(declare-fun m!6392636 () Bool)

(assert (=> b!5364511 m!6392636))

(declare-fun m!6392638 () Bool)

(assert (=> b!5364511 m!6392638))

(declare-fun m!6392640 () Bool)

(assert (=> b!5364511 m!6392640))

(declare-fun m!6392642 () Bool)

(assert (=> b!5364511 m!6392642))

(declare-fun m!6392644 () Bool)

(assert (=> b!5364511 m!6392644))

(declare-fun m!6392646 () Bool)

(assert (=> b!5364511 m!6392646))

(declare-fun m!6392648 () Bool)

(assert (=> b!5364511 m!6392648))

(declare-fun m!6392650 () Bool)

(assert (=> b!5364513 m!6392650))

(declare-fun m!6392652 () Bool)

(assert (=> start!564618 m!6392652))

(declare-fun m!6392654 () Bool)

(assert (=> b!5364525 m!6392654))

(declare-fun m!6392656 () Bool)

(assert (=> b!5364525 m!6392656))

(declare-fun m!6392658 () Bool)

(assert (=> b!5364508 m!6392658))

(declare-fun m!6392660 () Bool)

(assert (=> b!5364521 m!6392660))

(declare-fun m!6392662 () Bool)

(assert (=> b!5364521 m!6392662))

(declare-fun m!6392664 () Bool)

(assert (=> b!5364521 m!6392664))

(declare-fun m!6392666 () Bool)

(assert (=> b!5364521 m!6392666))

(declare-fun m!6392668 () Bool)

(assert (=> b!5364521 m!6392668))

(declare-fun m!6392670 () Bool)

(assert (=> b!5364509 m!6392670))

(declare-fun m!6392672 () Bool)

(assert (=> b!5364506 m!6392672))

(declare-fun m!6392674 () Bool)

(assert (=> b!5364506 m!6392674))

(declare-fun m!6392676 () Bool)

(assert (=> b!5364506 m!6392676))

(assert (=> b!5364506 m!6392672))

(declare-fun m!6392678 () Bool)

(assert (=> b!5364506 m!6392678))

(declare-fun m!6392680 () Bool)

(assert (=> b!5364506 m!6392680))

(assert (=> b!5364506 m!6392680))

(declare-fun m!6392682 () Bool)

(assert (=> b!5364506 m!6392682))

(declare-fun m!6392684 () Bool)

(assert (=> b!5364493 m!6392684))

(declare-fun m!6392686 () Bool)

(assert (=> b!5364517 m!6392686))

(assert (=> b!5364517 m!6392686))

(declare-fun m!6392688 () Bool)

(assert (=> b!5364517 m!6392688))

(declare-fun m!6392690 () Bool)

(assert (=> b!5364522 m!6392690))

(declare-fun m!6392692 () Bool)

(assert (=> b!5364522 m!6392692))

(declare-fun m!6392694 () Bool)

(assert (=> b!5364522 m!6392694))

(declare-fun m!6392696 () Bool)

(assert (=> b!5364522 m!6392696))

(declare-fun m!6392698 () Bool)

(assert (=> b!5364522 m!6392698))

(declare-fun m!6392700 () Bool)

(assert (=> b!5364528 m!6392700))

(declare-fun m!6392702 () Bool)

(assert (=> b!5364528 m!6392702))

(declare-fun m!6392704 () Bool)

(assert (=> b!5364528 m!6392704))

(assert (=> b!5364528 m!6392702))

(declare-fun m!6392706 () Bool)

(assert (=> b!5364528 m!6392706))

(declare-fun m!6392708 () Bool)

(assert (=> b!5364528 m!6392708))

(declare-fun m!6392710 () Bool)

(assert (=> b!5364528 m!6392710))

(declare-fun m!6392712 () Bool)

(assert (=> b!5364528 m!6392712))

(declare-fun m!6392714 () Bool)

(assert (=> b!5364528 m!6392714))

(declare-fun m!6392716 () Bool)

(assert (=> b!5364516 m!6392716))

(declare-fun m!6392718 () Bool)

(assert (=> b!5364516 m!6392718))

(declare-fun m!6392720 () Bool)

(assert (=> b!5364516 m!6392720))

(declare-fun m!6392722 () Bool)

(assert (=> b!5364503 m!6392722))

(declare-fun m!6392724 () Bool)

(assert (=> b!5364515 m!6392724))

(declare-fun m!6392726 () Bool)

(assert (=> b!5364515 m!6392726))

(declare-fun m!6392728 () Bool)

(assert (=> b!5364515 m!6392728))

(assert (=> b!5364515 m!6392660))

(declare-fun m!6392730 () Bool)

(assert (=> b!5364515 m!6392730))

(declare-fun m!6392732 () Bool)

(assert (=> b!5364515 m!6392732))

(declare-fun m!6392734 () Bool)

(assert (=> b!5364515 m!6392734))

(declare-fun m!6392736 () Bool)

(assert (=> b!5364489 m!6392736))

(declare-fun m!6392738 () Bool)

(assert (=> b!5364498 m!6392738))

(declare-fun m!6392740 () Bool)

(assert (=> b!5364490 m!6392740))

(declare-fun m!6392742 () Bool)

(assert (=> b!5364500 m!6392742))

(declare-fun m!6392744 () Bool)

(assert (=> b!5364504 m!6392744))

(declare-fun m!6392746 () Bool)

(assert (=> b!5364524 m!6392746))

(declare-fun m!6392748 () Bool)

(assert (=> b!5364524 m!6392748))

(declare-fun m!6392750 () Bool)

(assert (=> b!5364524 m!6392750))

(declare-fun m!6392752 () Bool)

(assert (=> b!5364523 m!6392752))

(declare-fun m!6392754 () Bool)

(assert (=> b!5364491 m!6392754))

(check-sat (not b!5364529) (not setNonEmpty!34741) (not b!5364511) (not b!5364518) (not b!5364525) (not b!5364510) (not b!5364519) (not b!5364500) (not b!5364498) (not b!5364517) (not b!5364523) (not b!5364513) (not b!5364526) tp_is_empty!39403 (not b!5364493) (not b!5364503) (not b!5364515) (not b!5364506) (not b!5364494) (not b!5364491) (not b!5364499) (not b!5364508) (not b!5364512) (not b!5364504) (not b!5364516) (not b!5364505) (not b!5364495) (not b!5364528) (not b!5364521) (not b!5364524) (not b!5364489) (not b!5364522) (not b!5364509) (not b!5364490) (not start!564618))
(check-sat)
(get-model)

(declare-fun b!5364801 () Bool)

(declare-fun res!2276814 () Bool)

(declare-fun e!3329281 () Bool)

(assert (=> b!5364801 (=> res!2276814 e!3329281)))

(assert (=> b!5364801 (= res!2276814 (not ((_ is Concat!23920) r!7292)))))

(declare-fun e!3329280 () Bool)

(assert (=> b!5364801 (= e!3329280 e!3329281)))

(declare-fun b!5364802 () Bool)

(declare-fun e!3329279 () Bool)

(declare-fun e!3329282 () Bool)

(assert (=> b!5364802 (= e!3329279 e!3329282)))

(declare-fun res!2276813 () Bool)

(assert (=> b!5364802 (= res!2276813 (not (nullable!5244 (reg!15404 r!7292))))))

(assert (=> b!5364802 (=> (not res!2276813) (not e!3329282))))

(declare-fun b!5364803 () Bool)

(declare-fun e!3329283 () Bool)

(declare-fun call!383822 () Bool)

(assert (=> b!5364803 (= e!3329283 call!383822)))

(declare-fun b!5364804 () Bool)

(declare-fun e!3329284 () Bool)

(assert (=> b!5364804 (= e!3329284 call!383822)))

(declare-fun c!934400 () Bool)

(declare-fun c!934399 () Bool)

(declare-fun bm!383815 () Bool)

(declare-fun call!383820 () Bool)

(assert (=> bm!383815 (= call!383820 (validRegex!6811 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))))))

(declare-fun b!5364805 () Bool)

(declare-fun e!3329285 () Bool)

(assert (=> b!5364805 (= e!3329285 e!3329279)))

(assert (=> b!5364805 (= c!934399 ((_ is Star!15075) r!7292))))

(declare-fun b!5364806 () Bool)

(assert (=> b!5364806 (= e!3329282 call!383820)))

(declare-fun d!1718465 () Bool)

(declare-fun res!2276817 () Bool)

(assert (=> d!1718465 (=> res!2276817 e!3329285)))

(assert (=> d!1718465 (= res!2276817 ((_ is ElementMatch!15075) r!7292))))

(assert (=> d!1718465 (= (validRegex!6811 r!7292) e!3329285)))

(declare-fun bm!383816 () Bool)

(assert (=> bm!383816 (= call!383822 (validRegex!6811 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))))))

(declare-fun b!5364807 () Bool)

(declare-fun res!2276815 () Bool)

(assert (=> b!5364807 (=> (not res!2276815) (not e!3329283))))

(declare-fun call!383821 () Bool)

(assert (=> b!5364807 (= res!2276815 call!383821)))

(assert (=> b!5364807 (= e!3329280 e!3329283)))

(declare-fun bm!383817 () Bool)

(assert (=> bm!383817 (= call!383821 call!383820)))

(declare-fun b!5364808 () Bool)

(assert (=> b!5364808 (= e!3329281 e!3329284)))

(declare-fun res!2276816 () Bool)

(assert (=> b!5364808 (=> (not res!2276816) (not e!3329284))))

(assert (=> b!5364808 (= res!2276816 call!383821)))

(declare-fun b!5364809 () Bool)

(assert (=> b!5364809 (= e!3329279 e!3329280)))

(assert (=> b!5364809 (= c!934400 ((_ is Union!15075) r!7292))))

(assert (= (and d!1718465 (not res!2276817)) b!5364805))

(assert (= (and b!5364805 c!934399) b!5364802))

(assert (= (and b!5364805 (not c!934399)) b!5364809))

(assert (= (and b!5364802 res!2276813) b!5364806))

(assert (= (and b!5364809 c!934400) b!5364807))

(assert (= (and b!5364809 (not c!934400)) b!5364801))

(assert (= (and b!5364807 res!2276815) b!5364803))

(assert (= (and b!5364801 (not res!2276814)) b!5364808))

(assert (= (and b!5364808 res!2276816) b!5364804))

(assert (= (or b!5364803 b!5364804) bm!383816))

(assert (= (or b!5364807 b!5364808) bm!383817))

(assert (= (or b!5364806 bm!383817) bm!383815))

(declare-fun m!6392954 () Bool)

(assert (=> b!5364802 m!6392954))

(declare-fun m!6392956 () Bool)

(assert (=> bm!383815 m!6392956))

(declare-fun m!6392958 () Bool)

(assert (=> bm!383816 m!6392958))

(assert (=> start!564618 d!1718465))

(declare-fun d!1718469 () Bool)

(declare-fun choose!40285 ((InoxSet Context!8918) Int) (InoxSet Context!8918))

(assert (=> d!1718469 (= (flatMap!802 lt!2185501 lambda!276480) (choose!40285 lt!2185501 lambda!276480))))

(declare-fun bs!1242318 () Bool)

(assert (= bs!1242318 d!1718469))

(declare-fun m!6392960 () Bool)

(assert (=> bs!1242318 m!6392960))

(assert (=> b!5364511 d!1718469))

(declare-fun b!5364831 () Bool)

(declare-fun e!3329300 () (InoxSet Context!8918))

(assert (=> b!5364831 (= e!3329300 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718471 () Bool)

(declare-fun c!934409 () Bool)

(declare-fun e!3329301 () Bool)

(assert (=> d!1718471 (= c!934409 e!3329301)))

(declare-fun res!2276823 () Bool)

(assert (=> d!1718471 (=> (not res!2276823) (not e!3329301))))

(assert (=> d!1718471 (= res!2276823 ((_ is Cons!61400) (exprs!4959 lt!2185523)))))

(declare-fun e!3329299 () (InoxSet Context!8918))

(assert (=> d!1718471 (= (derivationStepZipperUp!447 lt!2185523 (h!67850 s!2326)) e!3329299)))

(declare-fun b!5364832 () Bool)

(declare-fun call!383829 () (InoxSet Context!8918))

(assert (=> b!5364832 (= e!3329300 call!383829)))

(declare-fun bm!383824 () Bool)

(assert (=> bm!383824 (= call!383829 (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185523)) (Context!8919 (t!374745 (exprs!4959 lt!2185523))) (h!67850 s!2326)))))

(declare-fun b!5364833 () Bool)

(assert (=> b!5364833 (= e!3329299 ((_ map or) call!383829 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185523))) (h!67850 s!2326))))))

(declare-fun b!5364834 () Bool)

(assert (=> b!5364834 (= e!3329301 (nullable!5244 (h!67848 (exprs!4959 lt!2185523))))))

(declare-fun b!5364835 () Bool)

(assert (=> b!5364835 (= e!3329299 e!3329300)))

(declare-fun c!934410 () Bool)

(assert (=> b!5364835 (= c!934410 ((_ is Cons!61400) (exprs!4959 lt!2185523)))))

(assert (= (and d!1718471 res!2276823) b!5364834))

(assert (= (and d!1718471 c!934409) b!5364833))

(assert (= (and d!1718471 (not c!934409)) b!5364835))

(assert (= (and b!5364835 c!934410) b!5364832))

(assert (= (and b!5364835 (not c!934410)) b!5364831))

(assert (= (or b!5364833 b!5364832) bm!383824))

(declare-fun m!6392974 () Bool)

(assert (=> bm!383824 m!6392974))

(declare-fun m!6392976 () Bool)

(assert (=> b!5364833 m!6392976))

(declare-fun m!6392980 () Bool)

(assert (=> b!5364834 m!6392980))

(assert (=> b!5364511 d!1718471))

(declare-fun d!1718483 () Bool)

(declare-fun dynLambda!24252 (Int Context!8918) (InoxSet Context!8918))

(assert (=> d!1718483 (= (flatMap!802 lt!2185526 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185533))))

(declare-fun lt!2185565 () Unit!153818)

(declare-fun choose!40286 ((InoxSet Context!8918) Context!8918 Int) Unit!153818)

(assert (=> d!1718483 (= lt!2185565 (choose!40286 lt!2185526 lt!2185533 lambda!276480))))

(assert (=> d!1718483 (= lt!2185526 (store ((as const (Array Context!8918 Bool)) false) lt!2185533 true))))

(assert (=> d!1718483 (= (lemmaFlatMapOnSingletonSet!334 lt!2185526 lt!2185533 lambda!276480) lt!2185565)))

(declare-fun b_lambda!205671 () Bool)

(assert (=> (not b_lambda!205671) (not d!1718483)))

(declare-fun bs!1242340 () Bool)

(assert (= bs!1242340 d!1718483))

(assert (=> bs!1242340 m!6392636))

(declare-fun m!6392994 () Bool)

(assert (=> bs!1242340 m!6392994))

(declare-fun m!6392996 () Bool)

(assert (=> bs!1242340 m!6392996))

(assert (=> bs!1242340 m!6392632))

(assert (=> b!5364511 d!1718483))

(declare-fun d!1718491 () Bool)

(assert (=> d!1718491 (= (flatMap!802 lt!2185501 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185523))))

(declare-fun lt!2185567 () Unit!153818)

(assert (=> d!1718491 (= lt!2185567 (choose!40286 lt!2185501 lt!2185523 lambda!276480))))

(assert (=> d!1718491 (= lt!2185501 (store ((as const (Array Context!8918 Bool)) false) lt!2185523 true))))

(assert (=> d!1718491 (= (lemmaFlatMapOnSingletonSet!334 lt!2185501 lt!2185523 lambda!276480) lt!2185567)))

(declare-fun b_lambda!205673 () Bool)

(assert (=> (not b_lambda!205673) (not d!1718491)))

(declare-fun bs!1242342 () Bool)

(assert (= bs!1242342 d!1718491))

(assert (=> bs!1242342 m!6392648))

(declare-fun m!6393000 () Bool)

(assert (=> bs!1242342 m!6393000))

(declare-fun m!6393002 () Bool)

(assert (=> bs!1242342 m!6393002))

(assert (=> bs!1242342 m!6392640))

(assert (=> b!5364511 d!1718491))

(declare-fun b!5364861 () Bool)

(declare-fun e!3329317 () (InoxSet Context!8918))

(assert (=> b!5364861 (= e!3329317 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718493 () Bool)

(declare-fun c!934418 () Bool)

(declare-fun e!3329318 () Bool)

(assert (=> d!1718493 (= c!934418 e!3329318)))

(declare-fun res!2276835 () Bool)

(assert (=> d!1718493 (=> (not res!2276835) (not e!3329318))))

(assert (=> d!1718493 (= res!2276835 ((_ is Cons!61400) (exprs!4959 lt!2185533)))))

(declare-fun e!3329316 () (InoxSet Context!8918))

(assert (=> d!1718493 (= (derivationStepZipperUp!447 lt!2185533 (h!67850 s!2326)) e!3329316)))

(declare-fun b!5364862 () Bool)

(declare-fun call!383833 () (InoxSet Context!8918))

(assert (=> b!5364862 (= e!3329317 call!383833)))

(declare-fun bm!383828 () Bool)

(assert (=> bm!383828 (= call!383833 (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185533)) (Context!8919 (t!374745 (exprs!4959 lt!2185533))) (h!67850 s!2326)))))

(declare-fun b!5364863 () Bool)

(assert (=> b!5364863 (= e!3329316 ((_ map or) call!383833 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185533))) (h!67850 s!2326))))))

(declare-fun b!5364864 () Bool)

(assert (=> b!5364864 (= e!3329318 (nullable!5244 (h!67848 (exprs!4959 lt!2185533))))))

(declare-fun b!5364865 () Bool)

(assert (=> b!5364865 (= e!3329316 e!3329317)))

(declare-fun c!934419 () Bool)

(assert (=> b!5364865 (= c!934419 ((_ is Cons!61400) (exprs!4959 lt!2185533)))))

(assert (= (and d!1718493 res!2276835) b!5364864))

(assert (= (and d!1718493 c!934418) b!5364863))

(assert (= (and d!1718493 (not c!934418)) b!5364865))

(assert (= (and b!5364865 c!934419) b!5364862))

(assert (= (and b!5364865 (not c!934419)) b!5364861))

(assert (= (or b!5364863 b!5364862) bm!383828))

(declare-fun m!6393004 () Bool)

(assert (=> bm!383828 m!6393004))

(declare-fun m!6393006 () Bool)

(assert (=> b!5364863 m!6393006))

(declare-fun m!6393008 () Bool)

(assert (=> b!5364864 m!6393008))

(assert (=> b!5364511 d!1718493))

(declare-fun d!1718495 () Bool)

(assert (=> d!1718495 (= (flatMap!802 lt!2185526 lambda!276480) (choose!40285 lt!2185526 lambda!276480))))

(declare-fun bs!1242343 () Bool)

(assert (= bs!1242343 d!1718495))

(declare-fun m!6393010 () Bool)

(assert (=> bs!1242343 m!6393010))

(assert (=> b!5364511 d!1718495))

(declare-fun d!1718497 () Bool)

(declare-fun lt!2185575 () Regex!15075)

(assert (=> d!1718497 (validRegex!6811 lt!2185575)))

(assert (=> d!1718497 (= lt!2185575 (generalisedUnion!1004 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))))))

(assert (=> d!1718497 (= (unfocusZipper!817 (Cons!61401 lt!2185523 Nil!61401)) lt!2185575)))

(declare-fun bs!1242351 () Bool)

(assert (= bs!1242351 d!1718497))

(declare-fun m!6393032 () Bool)

(assert (=> bs!1242351 m!6393032))

(declare-fun m!6393034 () Bool)

(assert (=> bs!1242351 m!6393034))

(assert (=> bs!1242351 m!6393034))

(declare-fun m!6393036 () Bool)

(assert (=> bs!1242351 m!6393036))

(assert (=> b!5364511 d!1718497))

(declare-fun d!1718507 () Bool)

(assert (=> d!1718507 (= (isEmpty!33376 (t!374746 zl!343)) ((_ is Nil!61401) (t!374746 zl!343)))))

(assert (=> b!5364489 d!1718507))

(declare-fun d!1718509 () Bool)

(declare-fun choose!40287 (Int) Bool)

(assert (=> d!1718509 (= (Exists!2256 lambda!276482) (choose!40287 lambda!276482))))

(declare-fun bs!1242352 () Bool)

(assert (= bs!1242352 d!1718509))

(declare-fun m!6393038 () Bool)

(assert (=> bs!1242352 m!6393038))

(assert (=> b!5364528 d!1718509))

(declare-fun bs!1242367 () Bool)

(declare-fun d!1718511 () Bool)

(assert (= bs!1242367 (and d!1718511 b!5364506)))

(declare-fun lambda!276516 () Int)

(assert (=> bs!1242367 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276516 lambda!276478))))

(assert (=> bs!1242367 (not (= lambda!276516 lambda!276479))))

(declare-fun bs!1242368 () Bool)

(assert (= bs!1242368 (and d!1718511 b!5364528)))

(assert (=> bs!1242368 (= lambda!276516 lambda!276481)))

(assert (=> bs!1242368 (not (= lambda!276516 lambda!276482))))

(assert (=> d!1718511 true))

(assert (=> d!1718511 true))

(assert (=> d!1718511 true))

(declare-fun lambda!276517 () Int)

(assert (=> bs!1242367 (not (= lambda!276517 lambda!276478))))

(declare-fun bs!1242369 () Bool)

(assert (= bs!1242369 d!1718511))

(assert (=> bs!1242369 (not (= lambda!276517 lambda!276516))))

(assert (=> bs!1242368 (not (= lambda!276517 lambda!276481))))

(assert (=> bs!1242368 (= lambda!276517 lambda!276482)))

(assert (=> bs!1242367 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276517 lambda!276479))))

(assert (=> d!1718511 true))

(assert (=> d!1718511 true))

(assert (=> d!1718511 true))

(assert (=> d!1718511 (= (Exists!2256 lambda!276516) (Exists!2256 lambda!276517))))

(declare-fun lt!2185582 () Unit!153818)

(declare-fun choose!40288 (Regex!15075 Regex!15075 List!61526) Unit!153818)

(assert (=> d!1718511 (= lt!2185582 (choose!40288 lt!2185531 (regTwo!30662 r!7292) s!2326))))

(assert (=> d!1718511 (validRegex!6811 lt!2185531)))

(assert (=> d!1718511 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!910 lt!2185531 (regTwo!30662 r!7292) s!2326) lt!2185582)))

(declare-fun m!6393078 () Bool)

(assert (=> bs!1242369 m!6393078))

(declare-fun m!6393080 () Bool)

(assert (=> bs!1242369 m!6393080))

(declare-fun m!6393082 () Bool)

(assert (=> bs!1242369 m!6393082))

(declare-fun m!6393084 () Bool)

(assert (=> bs!1242369 m!6393084))

(assert (=> b!5364528 d!1718511))

(declare-fun bs!1242379 () Bool)

(declare-fun d!1718531 () Bool)

(assert (= bs!1242379 (and d!1718531 d!1718511)))

(declare-fun lambda!276523 () Int)

(assert (=> bs!1242379 (not (= lambda!276523 lambda!276517))))

(declare-fun bs!1242380 () Bool)

(assert (= bs!1242380 (and d!1718531 b!5364506)))

(assert (=> bs!1242380 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276523 lambda!276478))))

(assert (=> bs!1242379 (= lambda!276523 lambda!276516)))

(declare-fun bs!1242381 () Bool)

(assert (= bs!1242381 (and d!1718531 b!5364528)))

(assert (=> bs!1242381 (= lambda!276523 lambda!276481)))

(assert (=> bs!1242381 (not (= lambda!276523 lambda!276482))))

(assert (=> bs!1242380 (not (= lambda!276523 lambda!276479))))

(assert (=> d!1718531 true))

(assert (=> d!1718531 true))

(assert (=> d!1718531 true))

(assert (=> d!1718531 (= (isDefined!11889 (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)) (Exists!2256 lambda!276523))))

(declare-fun lt!2185591 () Unit!153818)

(declare-fun choose!40289 (Regex!15075 Regex!15075 List!61526) Unit!153818)

(assert (=> d!1718531 (= lt!2185591 (choose!40289 lt!2185531 (regTwo!30662 r!7292) s!2326))))

(assert (=> d!1718531 (validRegex!6811 lt!2185531)))

(assert (=> d!1718531 (= (lemmaFindConcatSeparationEquivalentToExists!1364 lt!2185531 (regTwo!30662 r!7292) s!2326) lt!2185591)))

(declare-fun bs!1242382 () Bool)

(assert (= bs!1242382 d!1718531))

(assert (=> bs!1242382 m!6393084))

(assert (=> bs!1242382 m!6392710))

(declare-fun m!6393094 () Bool)

(assert (=> bs!1242382 m!6393094))

(declare-fun m!6393096 () Bool)

(assert (=> bs!1242382 m!6393096))

(declare-fun m!6393098 () Bool)

(assert (=> bs!1242382 m!6393098))

(assert (=> bs!1242382 m!6392710))

(assert (=> b!5364528 d!1718531))

(declare-fun b!5364977 () Bool)

(declare-fun e!3329390 () Bool)

(declare-fun lt!2185608 () Option!15186)

(assert (=> b!5364977 (= e!3329390 (not (isDefined!11889 lt!2185608)))))

(declare-fun b!5364978 () Bool)

(declare-fun e!3329387 () Bool)

(assert (=> b!5364978 (= e!3329387 (matchR!7260 (regTwo!30662 r!7292) s!2326))))

(declare-fun b!5364979 () Bool)

(declare-fun lt!2185609 () Unit!153818)

(declare-fun lt!2185607 () Unit!153818)

(assert (=> b!5364979 (= lt!2185609 lt!2185607)))

(assert (=> b!5364979 (= (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1790 (List!61526 C!30420 List!61526 List!61526) Unit!153818)

(assert (=> b!5364979 (= lt!2185607 (lemmaMoveElementToOtherListKeepsConcatEq!1790 Nil!61402 (h!67850 s!2326) (t!374747 s!2326) s!2326))))

(declare-fun e!3329386 () Option!15186)

(assert (=> b!5364979 (= e!3329386 (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326) s!2326))))

(declare-fun b!5364980 () Bool)

(declare-fun res!2276909 () Bool)

(declare-fun e!3329388 () Bool)

(assert (=> b!5364980 (=> (not res!2276909) (not e!3329388))))

(assert (=> b!5364980 (= res!2276909 (matchR!7260 (regTwo!30662 r!7292) (_2!35577 (get!21121 lt!2185608))))))

(declare-fun b!5364981 () Bool)

(assert (=> b!5364981 (= e!3329388 (= (++!13378 (_1!35577 (get!21121 lt!2185608)) (_2!35577 (get!21121 lt!2185608))) s!2326))))

(declare-fun b!5364983 () Bool)

(declare-fun e!3329389 () Option!15186)

(assert (=> b!5364983 (= e!3329389 e!3329386)))

(declare-fun c!934440 () Bool)

(assert (=> b!5364983 (= c!934440 ((_ is Nil!61402) s!2326))))

(declare-fun b!5364984 () Bool)

(assert (=> b!5364984 (= e!3329386 None!15185)))

(declare-fun b!5364985 () Bool)

(declare-fun res!2276912 () Bool)

(assert (=> b!5364985 (=> (not res!2276912) (not e!3329388))))

(assert (=> b!5364985 (= res!2276912 (matchR!7260 lt!2185531 (_1!35577 (get!21121 lt!2185608))))))

(declare-fun d!1718537 () Bool)

(assert (=> d!1718537 e!3329390))

(declare-fun res!2276910 () Bool)

(assert (=> d!1718537 (=> res!2276910 e!3329390)))

(assert (=> d!1718537 (= res!2276910 e!3329388)))

(declare-fun res!2276913 () Bool)

(assert (=> d!1718537 (=> (not res!2276913) (not e!3329388))))

(assert (=> d!1718537 (= res!2276913 (isDefined!11889 lt!2185608))))

(assert (=> d!1718537 (= lt!2185608 e!3329389)))

(declare-fun c!934439 () Bool)

(assert (=> d!1718537 (= c!934439 e!3329387)))

(declare-fun res!2276911 () Bool)

(assert (=> d!1718537 (=> (not res!2276911) (not e!3329387))))

(assert (=> d!1718537 (= res!2276911 (matchR!7260 lt!2185531 Nil!61402))))

(assert (=> d!1718537 (validRegex!6811 lt!2185531)))

(assert (=> d!1718537 (= (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326) lt!2185608)))

(declare-fun b!5364982 () Bool)

(assert (=> b!5364982 (= e!3329389 (Some!15185 (tuple2!64549 Nil!61402 s!2326)))))

(assert (= (and d!1718537 res!2276911) b!5364978))

(assert (= (and d!1718537 c!934439) b!5364982))

(assert (= (and d!1718537 (not c!934439)) b!5364983))

(assert (= (and b!5364983 c!934440) b!5364984))

(assert (= (and b!5364983 (not c!934440)) b!5364979))

(assert (= (and d!1718537 res!2276913) b!5364985))

(assert (= (and b!5364985 res!2276912) b!5364980))

(assert (= (and b!5364980 res!2276909) b!5364981))

(assert (= (and d!1718537 (not res!2276910)) b!5364977))

(declare-fun m!6393122 () Bool)

(assert (=> b!5364979 m!6393122))

(assert (=> b!5364979 m!6393122))

(declare-fun m!6393124 () Bool)

(assert (=> b!5364979 m!6393124))

(declare-fun m!6393126 () Bool)

(assert (=> b!5364979 m!6393126))

(assert (=> b!5364979 m!6393122))

(declare-fun m!6393128 () Bool)

(assert (=> b!5364979 m!6393128))

(declare-fun m!6393130 () Bool)

(assert (=> d!1718537 m!6393130))

(declare-fun m!6393132 () Bool)

(assert (=> d!1718537 m!6393132))

(assert (=> d!1718537 m!6393084))

(declare-fun m!6393134 () Bool)

(assert (=> b!5364981 m!6393134))

(declare-fun m!6393136 () Bool)

(assert (=> b!5364981 m!6393136))

(assert (=> b!5364985 m!6393134))

(declare-fun m!6393138 () Bool)

(assert (=> b!5364985 m!6393138))

(declare-fun m!6393140 () Bool)

(assert (=> b!5364978 m!6393140))

(assert (=> b!5364977 m!6393130))

(assert (=> b!5364980 m!6393134))

(declare-fun m!6393142 () Bool)

(assert (=> b!5364980 m!6393142))

(assert (=> b!5364528 d!1718537))

(declare-fun d!1718541 () Bool)

(assert (=> d!1718541 (= (get!21121 lt!2185524) (v!51214 lt!2185524))))

(assert (=> b!5364528 d!1718541))

(declare-fun d!1718543 () Bool)

(assert (=> d!1718543 (= (Exists!2256 lambda!276481) (choose!40287 lambda!276481))))

(declare-fun bs!1242383 () Bool)

(assert (= bs!1242383 d!1718543))

(declare-fun m!6393144 () Bool)

(assert (=> bs!1242383 m!6393144))

(assert (=> b!5364528 d!1718543))

(declare-fun d!1718545 () Bool)

(declare-fun isEmpty!33379 (Option!15186) Bool)

(assert (=> d!1718545 (= (isDefined!11889 lt!2185524) (not (isEmpty!33379 lt!2185524)))))

(declare-fun bs!1242384 () Bool)

(assert (= bs!1242384 d!1718545))

(declare-fun m!6393146 () Bool)

(assert (=> bs!1242384 m!6393146))

(assert (=> b!5364528 d!1718545))

(declare-fun b!5365027 () Bool)

(declare-fun e!3329413 () Bool)

(declare-fun lt!2185615 () List!61526)

(assert (=> b!5365027 (= e!3329413 (or (not (= (_2!35577 lt!2185500) Nil!61402)) (= lt!2185615 (_1!35577 lt!2185500))))))

(declare-fun d!1718547 () Bool)

(assert (=> d!1718547 e!3329413))

(declare-fun res!2276925 () Bool)

(assert (=> d!1718547 (=> (not res!2276925) (not e!3329413))))

(declare-fun content!10965 (List!61526) (InoxSet C!30420))

(assert (=> d!1718547 (= res!2276925 (= (content!10965 lt!2185615) ((_ map or) (content!10965 (_1!35577 lt!2185500)) (content!10965 (_2!35577 lt!2185500)))))))

(declare-fun e!3329414 () List!61526)

(assert (=> d!1718547 (= lt!2185615 e!3329414)))

(declare-fun c!934455 () Bool)

(assert (=> d!1718547 (= c!934455 ((_ is Nil!61402) (_1!35577 lt!2185500)))))

(assert (=> d!1718547 (= (++!13378 (_1!35577 lt!2185500) (_2!35577 lt!2185500)) lt!2185615)))

(declare-fun b!5365024 () Bool)

(assert (=> b!5365024 (= e!3329414 (_2!35577 lt!2185500))))

(declare-fun b!5365025 () Bool)

(assert (=> b!5365025 (= e!3329414 (Cons!61402 (h!67850 (_1!35577 lt!2185500)) (++!13378 (t!374747 (_1!35577 lt!2185500)) (_2!35577 lt!2185500))))))

(declare-fun b!5365026 () Bool)

(declare-fun res!2276924 () Bool)

(assert (=> b!5365026 (=> (not res!2276924) (not e!3329413))))

(declare-fun size!39786 (List!61526) Int)

(assert (=> b!5365026 (= res!2276924 (= (size!39786 lt!2185615) (+ (size!39786 (_1!35577 lt!2185500)) (size!39786 (_2!35577 lt!2185500)))))))

(assert (= (and d!1718547 c!934455) b!5365024))

(assert (= (and d!1718547 (not c!934455)) b!5365025))

(assert (= (and d!1718547 res!2276925) b!5365026))

(assert (= (and b!5365026 res!2276924) b!5365027))

(declare-fun m!6393148 () Bool)

(assert (=> d!1718547 m!6393148))

(declare-fun m!6393150 () Bool)

(assert (=> d!1718547 m!6393150))

(declare-fun m!6393152 () Bool)

(assert (=> d!1718547 m!6393152))

(declare-fun m!6393154 () Bool)

(assert (=> b!5365025 m!6393154))

(declare-fun m!6393156 () Bool)

(assert (=> b!5365026 m!6393156))

(declare-fun m!6393158 () Bool)

(assert (=> b!5365026 m!6393158))

(declare-fun m!6393160 () Bool)

(assert (=> b!5365026 m!6393160))

(assert (=> b!5364528 d!1718547))

(declare-fun d!1718549 () Bool)

(declare-fun lt!2185616 () Regex!15075)

(assert (=> d!1718549 (validRegex!6811 lt!2185616)))

(assert (=> d!1718549 (= lt!2185616 (generalisedUnion!1004 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))))))

(assert (=> d!1718549 (= (unfocusZipper!817 (Cons!61401 lt!2185509 Nil!61401)) lt!2185616)))

(declare-fun bs!1242390 () Bool)

(assert (= bs!1242390 d!1718549))

(declare-fun m!6393174 () Bool)

(assert (=> bs!1242390 m!6393174))

(declare-fun m!6393180 () Bool)

(assert (=> bs!1242390 m!6393180))

(assert (=> bs!1242390 m!6393180))

(declare-fun m!6393182 () Bool)

(assert (=> bs!1242390 m!6393182))

(assert (=> b!5364509 d!1718549))

(declare-fun b!5365082 () Bool)

(declare-fun e!3329448 () Bool)

(declare-fun head!11510 (List!61526) C!30420)

(assert (=> b!5365082 (= e!3329448 (= (head!11510 (_1!35577 lt!2185500)) (c!934311 lt!2185531)))))

(declare-fun b!5365083 () Bool)

(declare-fun res!2276951 () Bool)

(assert (=> b!5365083 (=> (not res!2276951) (not e!3329448))))

(declare-fun call!383845 () Bool)

(assert (=> b!5365083 (= res!2276951 (not call!383845))))

(declare-fun b!5365084 () Bool)

(declare-fun res!2276954 () Bool)

(declare-fun e!3329445 () Bool)

(assert (=> b!5365084 (=> res!2276954 e!3329445)))

(assert (=> b!5365084 (= res!2276954 e!3329448)))

(declare-fun res!2276948 () Bool)

(assert (=> b!5365084 (=> (not res!2276948) (not e!3329448))))

(declare-fun lt!2185624 () Bool)

(assert (=> b!5365084 (= res!2276948 lt!2185624)))

(declare-fun b!5365085 () Bool)

(declare-fun e!3329449 () Bool)

(declare-fun e!3329446 () Bool)

(assert (=> b!5365085 (= e!3329449 e!3329446)))

(declare-fun c!934466 () Bool)

(assert (=> b!5365085 (= c!934466 ((_ is EmptyLang!15075) lt!2185531))))

(declare-fun b!5365086 () Bool)

(declare-fun e!3329450 () Bool)

(declare-fun e!3329447 () Bool)

(assert (=> b!5365086 (= e!3329450 e!3329447)))

(declare-fun res!2276947 () Bool)

(assert (=> b!5365086 (=> res!2276947 e!3329447)))

(assert (=> b!5365086 (= res!2276947 call!383845)))

(declare-fun b!5365087 () Bool)

(assert (=> b!5365087 (= e!3329447 (not (= (head!11510 (_1!35577 lt!2185500)) (c!934311 lt!2185531))))))

(declare-fun b!5365088 () Bool)

(declare-fun e!3329451 () Bool)

(declare-fun derivativeStep!4217 (Regex!15075 C!30420) Regex!15075)

(declare-fun tail!10607 (List!61526) List!61526)

(assert (=> b!5365088 (= e!3329451 (matchR!7260 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500))) (tail!10607 (_1!35577 lt!2185500))))))

(declare-fun b!5365090 () Bool)

(declare-fun res!2276952 () Bool)

(assert (=> b!5365090 (=> res!2276952 e!3329447)))

(assert (=> b!5365090 (= res!2276952 (not (isEmpty!33377 (tail!10607 (_1!35577 lt!2185500)))))))

(declare-fun b!5365091 () Bool)

(assert (=> b!5365091 (= e!3329445 e!3329450)))

(declare-fun res!2276953 () Bool)

(assert (=> b!5365091 (=> (not res!2276953) (not e!3329450))))

(assert (=> b!5365091 (= res!2276953 (not lt!2185624))))

(declare-fun bm!383840 () Bool)

(assert (=> bm!383840 (= call!383845 (isEmpty!33377 (_1!35577 lt!2185500)))))

(declare-fun b!5365092 () Bool)

(assert (=> b!5365092 (= e!3329446 (not lt!2185624))))

(declare-fun b!5365093 () Bool)

(assert (=> b!5365093 (= e!3329449 (= lt!2185624 call!383845))))

(declare-fun b!5365094 () Bool)

(declare-fun res!2276949 () Bool)

(assert (=> b!5365094 (=> res!2276949 e!3329445)))

(assert (=> b!5365094 (= res!2276949 (not ((_ is ElementMatch!15075) lt!2185531)))))

(assert (=> b!5365094 (= e!3329446 e!3329445)))

(declare-fun b!5365095 () Bool)

(declare-fun res!2276950 () Bool)

(assert (=> b!5365095 (=> (not res!2276950) (not e!3329448))))

(assert (=> b!5365095 (= res!2276950 (isEmpty!33377 (tail!10607 (_1!35577 lt!2185500))))))

(declare-fun d!1718551 () Bool)

(assert (=> d!1718551 e!3329449))

(declare-fun c!934465 () Bool)

(assert (=> d!1718551 (= c!934465 ((_ is EmptyExpr!15075) lt!2185531))))

(assert (=> d!1718551 (= lt!2185624 e!3329451)))

(declare-fun c!934464 () Bool)

(assert (=> d!1718551 (= c!934464 (isEmpty!33377 (_1!35577 lt!2185500)))))

(assert (=> d!1718551 (validRegex!6811 lt!2185531)))

(assert (=> d!1718551 (= (matchR!7260 lt!2185531 (_1!35577 lt!2185500)) lt!2185624)))

(declare-fun b!5365089 () Bool)

(assert (=> b!5365089 (= e!3329451 (nullable!5244 lt!2185531))))

(assert (= (and d!1718551 c!934464) b!5365089))

(assert (= (and d!1718551 (not c!934464)) b!5365088))

(assert (= (and d!1718551 c!934465) b!5365093))

(assert (= (and d!1718551 (not c!934465)) b!5365085))

(assert (= (and b!5365085 c!934466) b!5365092))

(assert (= (and b!5365085 (not c!934466)) b!5365094))

(assert (= (and b!5365094 (not res!2276949)) b!5365084))

(assert (= (and b!5365084 res!2276948) b!5365083))

(assert (= (and b!5365083 res!2276951) b!5365095))

(assert (= (and b!5365095 res!2276950) b!5365082))

(assert (= (and b!5365084 (not res!2276954)) b!5365091))

(assert (= (and b!5365091 res!2276953) b!5365086))

(assert (= (and b!5365086 (not res!2276947)) b!5365090))

(assert (= (and b!5365090 (not res!2276952)) b!5365087))

(assert (= (or b!5365093 b!5365083 b!5365086) bm!383840))

(assert (=> bm!383840 m!6392684))

(declare-fun m!6393220 () Bool)

(assert (=> b!5365089 m!6393220))

(declare-fun m!6393222 () Bool)

(assert (=> b!5365095 m!6393222))

(assert (=> b!5365095 m!6393222))

(declare-fun m!6393224 () Bool)

(assert (=> b!5365095 m!6393224))

(declare-fun m!6393226 () Bool)

(assert (=> b!5365088 m!6393226))

(assert (=> b!5365088 m!6393226))

(declare-fun m!6393228 () Bool)

(assert (=> b!5365088 m!6393228))

(assert (=> b!5365088 m!6393222))

(assert (=> b!5365088 m!6393228))

(assert (=> b!5365088 m!6393222))

(declare-fun m!6393230 () Bool)

(assert (=> b!5365088 m!6393230))

(assert (=> b!5365087 m!6393226))

(assert (=> b!5365090 m!6393222))

(assert (=> b!5365090 m!6393222))

(assert (=> b!5365090 m!6393224))

(assert (=> d!1718551 m!6392684))

(assert (=> d!1718551 m!6393084))

(assert (=> b!5365082 m!6393226))

(assert (=> b!5364508 d!1718551))

(declare-fun b!5365103 () Bool)

(declare-fun e!3329461 () Bool)

(declare-fun lt!2185626 () Option!15186)

(assert (=> b!5365103 (= e!3329461 (not (isDefined!11889 lt!2185626)))))

(declare-fun b!5365104 () Bool)

(declare-fun e!3329458 () Bool)

(assert (=> b!5365104 (= e!3329458 (matchR!7260 (regTwo!30662 r!7292) s!2326))))

(declare-fun b!5365105 () Bool)

(declare-fun lt!2185627 () Unit!153818)

(declare-fun lt!2185625 () Unit!153818)

(assert (=> b!5365105 (= lt!2185627 lt!2185625)))

(assert (=> b!5365105 (= (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326)) s!2326)))

(assert (=> b!5365105 (= lt!2185625 (lemmaMoveElementToOtherListKeepsConcatEq!1790 Nil!61402 (h!67850 s!2326) (t!374747 s!2326) s!2326))))

(declare-fun e!3329457 () Option!15186)

(assert (=> b!5365105 (= e!3329457 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326) s!2326))))

(declare-fun b!5365106 () Bool)

(declare-fun res!2276955 () Bool)

(declare-fun e!3329459 () Bool)

(assert (=> b!5365106 (=> (not res!2276955) (not e!3329459))))

(assert (=> b!5365106 (= res!2276955 (matchR!7260 (regTwo!30662 r!7292) (_2!35577 (get!21121 lt!2185626))))))

(declare-fun b!5365107 () Bool)

(assert (=> b!5365107 (= e!3329459 (= (++!13378 (_1!35577 (get!21121 lt!2185626)) (_2!35577 (get!21121 lt!2185626))) s!2326))))

(declare-fun b!5365109 () Bool)

(declare-fun e!3329460 () Option!15186)

(assert (=> b!5365109 (= e!3329460 e!3329457)))

(declare-fun c!934468 () Bool)

(assert (=> b!5365109 (= c!934468 ((_ is Nil!61402) s!2326))))

(declare-fun b!5365110 () Bool)

(assert (=> b!5365110 (= e!3329457 None!15185)))

(declare-fun b!5365111 () Bool)

(declare-fun res!2276958 () Bool)

(assert (=> b!5365111 (=> (not res!2276958) (not e!3329459))))

(assert (=> b!5365111 (= res!2276958 (matchR!7260 (regOne!30662 r!7292) (_1!35577 (get!21121 lt!2185626))))))

(declare-fun d!1718565 () Bool)

(assert (=> d!1718565 e!3329461))

(declare-fun res!2276956 () Bool)

(assert (=> d!1718565 (=> res!2276956 e!3329461)))

(assert (=> d!1718565 (= res!2276956 e!3329459)))

(declare-fun res!2276959 () Bool)

(assert (=> d!1718565 (=> (not res!2276959) (not e!3329459))))

(assert (=> d!1718565 (= res!2276959 (isDefined!11889 lt!2185626))))

(assert (=> d!1718565 (= lt!2185626 e!3329460)))

(declare-fun c!934467 () Bool)

(assert (=> d!1718565 (= c!934467 e!3329458)))

(declare-fun res!2276957 () Bool)

(assert (=> d!1718565 (=> (not res!2276957) (not e!3329458))))

(assert (=> d!1718565 (= res!2276957 (matchR!7260 (regOne!30662 r!7292) Nil!61402))))

(assert (=> d!1718565 (validRegex!6811 (regOne!30662 r!7292))))

(assert (=> d!1718565 (= (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326) lt!2185626)))

(declare-fun b!5365108 () Bool)

(assert (=> b!5365108 (= e!3329460 (Some!15185 (tuple2!64549 Nil!61402 s!2326)))))

(assert (= (and d!1718565 res!2276957) b!5365104))

(assert (= (and d!1718565 c!934467) b!5365108))

(assert (= (and d!1718565 (not c!934467)) b!5365109))

(assert (= (and b!5365109 c!934468) b!5365110))

(assert (= (and b!5365109 (not c!934468)) b!5365105))

(assert (= (and d!1718565 res!2276959) b!5365111))

(assert (= (and b!5365111 res!2276958) b!5365106))

(assert (= (and b!5365106 res!2276955) b!5365107))

(assert (= (and d!1718565 (not res!2276956)) b!5365103))

(assert (=> b!5365105 m!6393122))

(assert (=> b!5365105 m!6393122))

(assert (=> b!5365105 m!6393124))

(assert (=> b!5365105 m!6393126))

(assert (=> b!5365105 m!6393122))

(declare-fun m!6393234 () Bool)

(assert (=> b!5365105 m!6393234))

(declare-fun m!6393236 () Bool)

(assert (=> d!1718565 m!6393236))

(declare-fun m!6393238 () Bool)

(assert (=> d!1718565 m!6393238))

(declare-fun m!6393240 () Bool)

(assert (=> d!1718565 m!6393240))

(declare-fun m!6393242 () Bool)

(assert (=> b!5365107 m!6393242))

(declare-fun m!6393244 () Bool)

(assert (=> b!5365107 m!6393244))

(assert (=> b!5365111 m!6393242))

(declare-fun m!6393246 () Bool)

(assert (=> b!5365111 m!6393246))

(assert (=> b!5365104 m!6393140))

(assert (=> b!5365103 m!6393236))

(assert (=> b!5365106 m!6393242))

(declare-fun m!6393248 () Bool)

(assert (=> b!5365106 m!6393248))

(assert (=> b!5364506 d!1718565))

(declare-fun d!1718567 () Bool)

(assert (=> d!1718567 (= (Exists!2256 lambda!276479) (choose!40287 lambda!276479))))

(declare-fun bs!1242413 () Bool)

(assert (= bs!1242413 d!1718567))

(declare-fun m!6393250 () Bool)

(assert (=> bs!1242413 m!6393250))

(assert (=> b!5364506 d!1718567))

(declare-fun bs!1242414 () Bool)

(declare-fun d!1718569 () Bool)

(assert (= bs!1242414 (and d!1718569 d!1718511)))

(declare-fun lambda!276530 () Int)

(assert (=> bs!1242414 (not (= lambda!276530 lambda!276517))))

(declare-fun bs!1242416 () Bool)

(assert (= bs!1242416 (and d!1718569 b!5364506)))

(assert (=> bs!1242416 (= lambda!276530 lambda!276478)))

(assert (=> bs!1242414 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276530 lambda!276516))))

(declare-fun bs!1242419 () Bool)

(assert (= bs!1242419 (and d!1718569 b!5364528)))

(assert (=> bs!1242419 (not (= lambda!276530 lambda!276482))))

(assert (=> bs!1242416 (not (= lambda!276530 lambda!276479))))

(assert (=> bs!1242419 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276530 lambda!276481))))

(declare-fun bs!1242423 () Bool)

(assert (= bs!1242423 (and d!1718569 d!1718531)))

(assert (=> bs!1242423 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276530 lambda!276523))))

(assert (=> d!1718569 true))

(assert (=> d!1718569 true))

(assert (=> d!1718569 true))

(declare-fun lambda!276531 () Int)

(assert (=> bs!1242414 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276531 lambda!276517))))

(assert (=> bs!1242416 (not (= lambda!276531 lambda!276478))))

(assert (=> bs!1242414 (not (= lambda!276531 lambda!276516))))

(declare-fun bs!1242424 () Bool)

(assert (= bs!1242424 d!1718569))

(assert (=> bs!1242424 (not (= lambda!276531 lambda!276530))))

(assert (=> bs!1242419 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276531 lambda!276482))))

(assert (=> bs!1242416 (= lambda!276531 lambda!276479)))

(assert (=> bs!1242419 (not (= lambda!276531 lambda!276481))))

(assert (=> bs!1242423 (not (= lambda!276531 lambda!276523))))

(assert (=> d!1718569 true))

(assert (=> d!1718569 true))

(assert (=> d!1718569 true))

(assert (=> d!1718569 (= (Exists!2256 lambda!276530) (Exists!2256 lambda!276531))))

(declare-fun lt!2185628 () Unit!153818)

(assert (=> d!1718569 (= lt!2185628 (choose!40288 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326))))

(assert (=> d!1718569 (validRegex!6811 (regOne!30662 r!7292))))

(assert (=> d!1718569 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!910 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326) lt!2185628)))

(declare-fun m!6393254 () Bool)

(assert (=> bs!1242424 m!6393254))

(declare-fun m!6393256 () Bool)

(assert (=> bs!1242424 m!6393256))

(declare-fun m!6393258 () Bool)

(assert (=> bs!1242424 m!6393258))

(assert (=> bs!1242424 m!6393240))

(assert (=> b!5364506 d!1718569))

(declare-fun d!1718583 () Bool)

(assert (=> d!1718583 (= (isDefined!11889 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)) (not (isEmpty!33379 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326))))))

(declare-fun bs!1242425 () Bool)

(assert (= bs!1242425 d!1718583))

(assert (=> bs!1242425 m!6392672))

(declare-fun m!6393260 () Bool)

(assert (=> bs!1242425 m!6393260))

(assert (=> b!5364506 d!1718583))

(declare-fun d!1718585 () Bool)

(assert (=> d!1718585 (= (Exists!2256 lambda!276478) (choose!40287 lambda!276478))))

(declare-fun bs!1242426 () Bool)

(assert (= bs!1242426 d!1718585))

(declare-fun m!6393262 () Bool)

(assert (=> bs!1242426 m!6393262))

(assert (=> b!5364506 d!1718585))

(declare-fun bs!1242427 () Bool)

(declare-fun d!1718587 () Bool)

(assert (= bs!1242427 (and d!1718587 d!1718511)))

(declare-fun lambda!276532 () Int)

(assert (=> bs!1242427 (not (= lambda!276532 lambda!276517))))

(declare-fun bs!1242428 () Bool)

(assert (= bs!1242428 (and d!1718587 b!5364506)))

(assert (=> bs!1242428 (= lambda!276532 lambda!276478)))

(assert (=> bs!1242427 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276532 lambda!276516))))

(declare-fun bs!1242429 () Bool)

(assert (= bs!1242429 (and d!1718587 d!1718569)))

(assert (=> bs!1242429 (not (= lambda!276532 lambda!276531))))

(assert (=> bs!1242429 (= lambda!276532 lambda!276530)))

(declare-fun bs!1242430 () Bool)

(assert (= bs!1242430 (and d!1718587 b!5364528)))

(assert (=> bs!1242430 (not (= lambda!276532 lambda!276482))))

(assert (=> bs!1242428 (not (= lambda!276532 lambda!276479))))

(assert (=> bs!1242430 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276532 lambda!276481))))

(declare-fun bs!1242431 () Bool)

(assert (= bs!1242431 (and d!1718587 d!1718531)))

(assert (=> bs!1242431 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276532 lambda!276523))))

(assert (=> d!1718587 true))

(assert (=> d!1718587 true))

(assert (=> d!1718587 true))

(assert (=> d!1718587 (= (isDefined!11889 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)) (Exists!2256 lambda!276532))))

(declare-fun lt!2185629 () Unit!153818)

(assert (=> d!1718587 (= lt!2185629 (choose!40289 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326))))

(assert (=> d!1718587 (validRegex!6811 (regOne!30662 r!7292))))

(assert (=> d!1718587 (= (lemmaFindConcatSeparationEquivalentToExists!1364 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326) lt!2185629)))

(declare-fun bs!1242432 () Bool)

(assert (= bs!1242432 d!1718587))

(assert (=> bs!1242432 m!6393240))

(assert (=> bs!1242432 m!6392672))

(assert (=> bs!1242432 m!6392674))

(declare-fun m!6393264 () Bool)

(assert (=> bs!1242432 m!6393264))

(declare-fun m!6393266 () Bool)

(assert (=> bs!1242432 m!6393266))

(assert (=> bs!1242432 m!6392672))

(assert (=> b!5364506 d!1718587))

(declare-fun d!1718589 () Bool)

(declare-fun nullableFct!1548 (Regex!15075) Bool)

(assert (=> d!1718589 (= (nullable!5244 (h!67848 (exprs!4959 (h!67849 zl!343)))) (nullableFct!1548 (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun bs!1242433 () Bool)

(assert (= bs!1242433 d!1718589))

(declare-fun m!6393268 () Bool)

(assert (=> bs!1242433 m!6393268))

(assert (=> b!5364515 d!1718589))

(declare-fun b!5365142 () Bool)

(declare-fun e!3329470 () (InoxSet Context!8918))

(assert (=> b!5365142 (= e!3329470 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718591 () Bool)

(declare-fun c!934469 () Bool)

(declare-fun e!3329471 () Bool)

(assert (=> d!1718591 (= c!934469 e!3329471)))

(declare-fun res!2276960 () Bool)

(assert (=> d!1718591 (=> (not res!2276960) (not e!3329471))))

(assert (=> d!1718591 (= res!2276960 ((_ is Cons!61400) (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))

(declare-fun e!3329469 () (InoxSet Context!8918))

(assert (=> d!1718591 (= (derivationStepZipperUp!447 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))) (h!67850 s!2326)) e!3329469)))

(declare-fun b!5365143 () Bool)

(declare-fun call!383846 () (InoxSet Context!8918))

(assert (=> b!5365143 (= e!3329470 call!383846)))

(declare-fun bm!383841 () Bool)

(assert (=> bm!383841 (= call!383846 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (h!67850 s!2326)))))

(declare-fun b!5365144 () Bool)

(assert (=> b!5365144 (= e!3329469 ((_ map or) call!383846 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (h!67850 s!2326))))))

(declare-fun b!5365145 () Bool)

(assert (=> b!5365145 (= e!3329471 (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun b!5365146 () Bool)

(assert (=> b!5365146 (= e!3329469 e!3329470)))

(declare-fun c!934470 () Bool)

(assert (=> b!5365146 (= c!934470 ((_ is Cons!61400) (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))

(assert (= (and d!1718591 res!2276960) b!5365145))

(assert (= (and d!1718591 c!934469) b!5365144))

(assert (= (and d!1718591 (not c!934469)) b!5365146))

(assert (= (and b!5365146 c!934470) b!5365143))

(assert (= (and b!5365146 (not c!934470)) b!5365142))

(assert (= (or b!5365144 b!5365143) bm!383841))

(declare-fun m!6393270 () Bool)

(assert (=> bm!383841 m!6393270))

(declare-fun m!6393272 () Bool)

(assert (=> b!5365144 m!6393272))

(declare-fun m!6393274 () Bool)

(assert (=> b!5365145 m!6393274))

(assert (=> b!5364515 d!1718591))

(declare-fun b!5365169 () Bool)

(declare-fun c!934482 () Bool)

(declare-fun e!3329484 () Bool)

(assert (=> b!5365169 (= c!934482 e!3329484)))

(declare-fun res!2276963 () Bool)

(assert (=> b!5365169 (=> (not res!2276963) (not e!3329484))))

(assert (=> b!5365169 (= res!2276963 ((_ is Concat!23920) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun e!3329485 () (InoxSet Context!8918))

(declare-fun e!3329486 () (InoxSet Context!8918))

(assert (=> b!5365169 (= e!3329485 e!3329486)))

(declare-fun b!5365170 () Bool)

(declare-fun e!3329487 () (InoxSet Context!8918))

(declare-fun call!383861 () (InoxSet Context!8918))

(assert (=> b!5365170 (= e!3329487 call!383861)))

(declare-fun b!5365171 () Bool)

(declare-fun e!3329489 () (InoxSet Context!8918))

(assert (=> b!5365171 (= e!3329489 call!383861)))

(declare-fun b!5365172 () Bool)

(declare-fun e!3329488 () (InoxSet Context!8918))

(assert (=> b!5365172 (= e!3329488 e!3329485)))

(declare-fun c!934485 () Bool)

(assert (=> b!5365172 (= c!934485 ((_ is Union!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun bm!383854 () Bool)

(declare-fun call!383864 () (InoxSet Context!8918))

(declare-fun call!383863 () (InoxSet Context!8918))

(assert (=> bm!383854 (= call!383864 call!383863)))

(declare-fun b!5365173 () Bool)

(declare-fun call!383859 () (InoxSet Context!8918))

(assert (=> b!5365173 (= e!3329485 ((_ map or) call!383859 call!383863))))

(declare-fun b!5365174 () Bool)

(assert (=> b!5365174 (= e!3329488 (store ((as const (Array Context!8918 Bool)) false) lt!2185502 true))))

(declare-fun b!5365175 () Bool)

(assert (=> b!5365175 (= e!3329484 (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun bm!383855 () Bool)

(declare-fun call!383862 () List!61524)

(assert (=> bm!383855 (= call!383859 (derivationStepZipperDown!523 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))) (ite c!934485 lt!2185502 (Context!8919 call!383862)) (h!67850 s!2326)))))

(declare-fun d!1718593 () Bool)

(declare-fun c!934484 () Bool)

(assert (=> d!1718593 (= c!934484 (and ((_ is ElementMatch!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))) (= (c!934311 (h!67848 (exprs!4959 (h!67849 zl!343)))) (h!67850 s!2326))))))

(assert (=> d!1718593 (= (derivationStepZipperDown!523 (h!67848 (exprs!4959 (h!67849 zl!343))) lt!2185502 (h!67850 s!2326)) e!3329488)))

(declare-fun b!5365176 () Bool)

(declare-fun c!934483 () Bool)

(assert (=> b!5365176 (= c!934483 ((_ is Star!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> b!5365176 (= e!3329489 e!3329487)))

(declare-fun bm!383856 () Bool)

(declare-fun call!383860 () List!61524)

(assert (=> bm!383856 (= call!383860 call!383862)))

(declare-fun c!934481 () Bool)

(declare-fun bm!383857 () Bool)

(declare-fun $colon$colon!1446 (List!61524 Regex!15075) List!61524)

(assert (=> bm!383857 (= call!383862 ($colon$colon!1446 (exprs!4959 lt!2185502) (ite (or c!934482 c!934481) (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (h!67848 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun bm!383858 () Bool)

(assert (=> bm!383858 (= call!383861 call!383864)))

(declare-fun b!5365177 () Bool)

(assert (=> b!5365177 (= e!3329486 e!3329489)))

(assert (=> b!5365177 (= c!934481 ((_ is Concat!23920) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun bm!383859 () Bool)

(assert (=> bm!383859 (= call!383863 (derivationStepZipperDown!523 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343))))))) (ite (or c!934485 c!934482) lt!2185502 (Context!8919 call!383860)) (h!67850 s!2326)))))

(declare-fun b!5365178 () Bool)

(assert (=> b!5365178 (= e!3329486 ((_ map or) call!383859 call!383864))))

(declare-fun b!5365179 () Bool)

(assert (=> b!5365179 (= e!3329487 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718593 c!934484) b!5365174))

(assert (= (and d!1718593 (not c!934484)) b!5365172))

(assert (= (and b!5365172 c!934485) b!5365173))

(assert (= (and b!5365172 (not c!934485)) b!5365169))

(assert (= (and b!5365169 res!2276963) b!5365175))

(assert (= (and b!5365169 c!934482) b!5365178))

(assert (= (and b!5365169 (not c!934482)) b!5365177))

(assert (= (and b!5365177 c!934481) b!5365171))

(assert (= (and b!5365177 (not c!934481)) b!5365176))

(assert (= (and b!5365176 c!934483) b!5365170))

(assert (= (and b!5365176 (not c!934483)) b!5365179))

(assert (= (or b!5365171 b!5365170) bm!383856))

(assert (= (or b!5365171 b!5365170) bm!383858))

(assert (= (or b!5365178 bm!383856) bm!383857))

(assert (= (or b!5365178 bm!383858) bm!383854))

(assert (= (or b!5365173 bm!383854) bm!383859))

(assert (= (or b!5365173 b!5365178) bm!383855))

(assert (=> b!5365174 m!6392668))

(declare-fun m!6393276 () Bool)

(assert (=> bm!383859 m!6393276))

(declare-fun m!6393278 () Bool)

(assert (=> bm!383857 m!6393278))

(declare-fun m!6393280 () Bool)

(assert (=> b!5365175 m!6393280))

(declare-fun m!6393282 () Bool)

(assert (=> bm!383855 m!6393282))

(assert (=> b!5364515 d!1718593))

(declare-fun b!5365180 () Bool)

(declare-fun e!3329491 () (InoxSet Context!8918))

(assert (=> b!5365180 (= e!3329491 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718595 () Bool)

(declare-fun c!934486 () Bool)

(declare-fun e!3329492 () Bool)

(assert (=> d!1718595 (= c!934486 e!3329492)))

(declare-fun res!2276964 () Bool)

(assert (=> d!1718595 (=> (not res!2276964) (not e!3329492))))

(assert (=> d!1718595 (= res!2276964 ((_ is Cons!61400) (exprs!4959 (h!67849 zl!343))))))

(declare-fun e!3329490 () (InoxSet Context!8918))

(assert (=> d!1718595 (= (derivationStepZipperUp!447 (h!67849 zl!343) (h!67850 s!2326)) e!3329490)))

(declare-fun b!5365181 () Bool)

(declare-fun call!383865 () (InoxSet Context!8918))

(assert (=> b!5365181 (= e!3329491 call!383865)))

(declare-fun bm!383860 () Bool)

(assert (=> bm!383860 (= call!383865 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (h!67849 zl!343))) (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))) (h!67850 s!2326)))))

(declare-fun b!5365182 () Bool)

(assert (=> b!5365182 (= e!3329490 ((_ map or) call!383865 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))) (h!67850 s!2326))))))

(declare-fun b!5365183 () Bool)

(assert (=> b!5365183 (= e!3329492 (nullable!5244 (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5365184 () Bool)

(assert (=> b!5365184 (= e!3329490 e!3329491)))

(declare-fun c!934487 () Bool)

(assert (=> b!5365184 (= c!934487 ((_ is Cons!61400) (exprs!4959 (h!67849 zl!343))))))

(assert (= (and d!1718595 res!2276964) b!5365183))

(assert (= (and d!1718595 c!934486) b!5365182))

(assert (= (and d!1718595 (not c!934486)) b!5365184))

(assert (= (and b!5365184 c!934487) b!5365181))

(assert (= (and b!5365184 (not c!934487)) b!5365180))

(assert (= (or b!5365182 b!5365181) bm!383860))

(declare-fun m!6393284 () Bool)

(assert (=> bm!383860 m!6393284))

(declare-fun m!6393286 () Bool)

(assert (=> b!5365182 m!6393286))

(assert (=> b!5365183 m!6392728))

(assert (=> b!5364515 d!1718595))

(declare-fun b!5365185 () Bool)

(declare-fun e!3329494 () (InoxSet Context!8918))

(assert (=> b!5365185 (= e!3329494 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718597 () Bool)

(declare-fun c!934488 () Bool)

(declare-fun e!3329495 () Bool)

(assert (=> d!1718597 (= c!934488 e!3329495)))

(declare-fun res!2276965 () Bool)

(assert (=> d!1718597 (=> (not res!2276965) (not e!3329495))))

(assert (=> d!1718597 (= res!2276965 ((_ is Cons!61400) (exprs!4959 lt!2185502)))))

(declare-fun e!3329493 () (InoxSet Context!8918))

(assert (=> d!1718597 (= (derivationStepZipperUp!447 lt!2185502 (h!67850 s!2326)) e!3329493)))

(declare-fun b!5365186 () Bool)

(declare-fun call!383866 () (InoxSet Context!8918))

(assert (=> b!5365186 (= e!3329494 call!383866)))

(declare-fun bm!383861 () Bool)

(assert (=> bm!383861 (= call!383866 (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185502)) (Context!8919 (t!374745 (exprs!4959 lt!2185502))) (h!67850 s!2326)))))

(declare-fun b!5365187 () Bool)

(assert (=> b!5365187 (= e!3329493 ((_ map or) call!383866 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185502))) (h!67850 s!2326))))))

(declare-fun b!5365188 () Bool)

(assert (=> b!5365188 (= e!3329495 (nullable!5244 (h!67848 (exprs!4959 lt!2185502))))))

(declare-fun b!5365189 () Bool)

(assert (=> b!5365189 (= e!3329493 e!3329494)))

(declare-fun c!934489 () Bool)

(assert (=> b!5365189 (= c!934489 ((_ is Cons!61400) (exprs!4959 lt!2185502)))))

(assert (= (and d!1718597 res!2276965) b!5365188))

(assert (= (and d!1718597 c!934488) b!5365187))

(assert (= (and d!1718597 (not c!934488)) b!5365189))

(assert (= (and b!5365189 c!934489) b!5365186))

(assert (= (and b!5365189 (not c!934489)) b!5365185))

(assert (= (or b!5365187 b!5365186) bm!383861))

(declare-fun m!6393288 () Bool)

(assert (=> bm!383861 m!6393288))

(declare-fun m!6393290 () Bool)

(assert (=> b!5365187 m!6393290))

(declare-fun m!6393292 () Bool)

(assert (=> b!5365188 m!6393292))

(assert (=> b!5364515 d!1718597))

(declare-fun d!1718599 () Bool)

(assert (=> d!1718599 (= (flatMap!802 z!1189 lambda!276480) (dynLambda!24252 lambda!276480 (h!67849 zl!343)))))

(declare-fun lt!2185630 () Unit!153818)

(assert (=> d!1718599 (= lt!2185630 (choose!40286 z!1189 (h!67849 zl!343) lambda!276480))))

(assert (=> d!1718599 (= z!1189 (store ((as const (Array Context!8918 Bool)) false) (h!67849 zl!343) true))))

(assert (=> d!1718599 (= (lemmaFlatMapOnSingletonSet!334 z!1189 (h!67849 zl!343) lambda!276480) lt!2185630)))

(declare-fun b_lambda!205689 () Bool)

(assert (=> (not b_lambda!205689) (not d!1718599)))

(declare-fun bs!1242434 () Bool)

(assert (= bs!1242434 d!1718599))

(assert (=> bs!1242434 m!6392734))

(declare-fun m!6393294 () Bool)

(assert (=> bs!1242434 m!6393294))

(declare-fun m!6393296 () Bool)

(assert (=> bs!1242434 m!6393296))

(declare-fun m!6393298 () Bool)

(assert (=> bs!1242434 m!6393298))

(assert (=> b!5364515 d!1718599))

(declare-fun d!1718601 () Bool)

(assert (=> d!1718601 (= (flatMap!802 z!1189 lambda!276480) (choose!40285 z!1189 lambda!276480))))

(declare-fun bs!1242435 () Bool)

(assert (= bs!1242435 d!1718601))

(declare-fun m!6393300 () Bool)

(assert (=> bs!1242435 m!6393300))

(assert (=> b!5364515 d!1718601))

(declare-fun d!1718603 () Bool)

(declare-fun c!934492 () Bool)

(assert (=> d!1718603 (= c!934492 (isEmpty!33377 (t!374747 s!2326)))))

(declare-fun e!3329498 () Bool)

(assert (=> d!1718603 (= (matchZipper!1319 lt!2185496 (t!374747 s!2326)) e!3329498)))

(declare-fun b!5365194 () Bool)

(declare-fun nullableZipper!1396 ((InoxSet Context!8918)) Bool)

(assert (=> b!5365194 (= e!3329498 (nullableZipper!1396 lt!2185496))))

(declare-fun b!5365195 () Bool)

(assert (=> b!5365195 (= e!3329498 (matchZipper!1319 (derivationStepZipper!1314 lt!2185496 (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))))))

(assert (= (and d!1718603 c!934492) b!5365194))

(assert (= (and d!1718603 (not c!934492)) b!5365195))

(declare-fun m!6393302 () Bool)

(assert (=> d!1718603 m!6393302))

(declare-fun m!6393304 () Bool)

(assert (=> b!5365194 m!6393304))

(declare-fun m!6393306 () Bool)

(assert (=> b!5365195 m!6393306))

(assert (=> b!5365195 m!6393306))

(declare-fun m!6393308 () Bool)

(assert (=> b!5365195 m!6393308))

(declare-fun m!6393310 () Bool)

(assert (=> b!5365195 m!6393310))

(assert (=> b!5365195 m!6393308))

(assert (=> b!5365195 m!6393310))

(declare-fun m!6393312 () Bool)

(assert (=> b!5365195 m!6393312))

(assert (=> b!5364495 d!1718603))

(declare-fun d!1718605 () Bool)

(assert (=> d!1718605 (= (nullable!5244 (regOne!30662 (regOne!30662 r!7292))) (nullableFct!1548 (regOne!30662 (regOne!30662 r!7292))))))

(declare-fun bs!1242436 () Bool)

(assert (= bs!1242436 d!1718605))

(declare-fun m!6393314 () Bool)

(assert (=> bs!1242436 m!6393314))

(assert (=> b!5364513 d!1718605))

(declare-fun d!1718607 () Bool)

(assert (=> d!1718607 (= (isEmpty!33377 (_1!35577 lt!2185500)) ((_ is Nil!61402) (_1!35577 lt!2185500)))))

(assert (=> b!5364493 d!1718607))

(declare-fun bs!1242437 () Bool)

(declare-fun d!1718609 () Bool)

(assert (= bs!1242437 (and d!1718609 b!5364523)))

(declare-fun lambda!276535 () Int)

(assert (=> bs!1242437 (= lambda!276535 lambda!276483)))

(assert (=> d!1718609 (= (inv!80934 setElem!34741) (forall!14483 (exprs!4959 setElem!34741) lambda!276535))))

(declare-fun bs!1242438 () Bool)

(assert (= bs!1242438 d!1718609))

(declare-fun m!6393316 () Bool)

(assert (=> bs!1242438 m!6393316))

(assert (=> setNonEmpty!34741 d!1718609))

(declare-fun b!5365196 () Bool)

(declare-fun e!3329502 () Bool)

(assert (=> b!5365196 (= e!3329502 (= (head!11510 (_2!35577 lt!2185500)) (c!934311 (regTwo!30662 r!7292))))))

(declare-fun b!5365197 () Bool)

(declare-fun res!2276970 () Bool)

(assert (=> b!5365197 (=> (not res!2276970) (not e!3329502))))

(declare-fun call!383867 () Bool)

(assert (=> b!5365197 (= res!2276970 (not call!383867))))

(declare-fun b!5365198 () Bool)

(declare-fun res!2276973 () Bool)

(declare-fun e!3329499 () Bool)

(assert (=> b!5365198 (=> res!2276973 e!3329499)))

(assert (=> b!5365198 (= res!2276973 e!3329502)))

(declare-fun res!2276967 () Bool)

(assert (=> b!5365198 (=> (not res!2276967) (not e!3329502))))

(declare-fun lt!2185631 () Bool)

(assert (=> b!5365198 (= res!2276967 lt!2185631)))

(declare-fun b!5365199 () Bool)

(declare-fun e!3329503 () Bool)

(declare-fun e!3329500 () Bool)

(assert (=> b!5365199 (= e!3329503 e!3329500)))

(declare-fun c!934495 () Bool)

(assert (=> b!5365199 (= c!934495 ((_ is EmptyLang!15075) (regTwo!30662 r!7292)))))

(declare-fun b!5365200 () Bool)

(declare-fun e!3329504 () Bool)

(declare-fun e!3329501 () Bool)

(assert (=> b!5365200 (= e!3329504 e!3329501)))

(declare-fun res!2276966 () Bool)

(assert (=> b!5365200 (=> res!2276966 e!3329501)))

(assert (=> b!5365200 (= res!2276966 call!383867)))

(declare-fun b!5365201 () Bool)

(assert (=> b!5365201 (= e!3329501 (not (= (head!11510 (_2!35577 lt!2185500)) (c!934311 (regTwo!30662 r!7292)))))))

(declare-fun b!5365202 () Bool)

(declare-fun e!3329505 () Bool)

(assert (=> b!5365202 (= e!3329505 (matchR!7260 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500))) (tail!10607 (_2!35577 lt!2185500))))))

(declare-fun b!5365204 () Bool)

(declare-fun res!2276971 () Bool)

(assert (=> b!5365204 (=> res!2276971 e!3329501)))

(assert (=> b!5365204 (= res!2276971 (not (isEmpty!33377 (tail!10607 (_2!35577 lt!2185500)))))))

(declare-fun b!5365205 () Bool)

(assert (=> b!5365205 (= e!3329499 e!3329504)))

(declare-fun res!2276972 () Bool)

(assert (=> b!5365205 (=> (not res!2276972) (not e!3329504))))

(assert (=> b!5365205 (= res!2276972 (not lt!2185631))))

(declare-fun bm!383862 () Bool)

(assert (=> bm!383862 (= call!383867 (isEmpty!33377 (_2!35577 lt!2185500)))))

(declare-fun b!5365206 () Bool)

(assert (=> b!5365206 (= e!3329500 (not lt!2185631))))

(declare-fun b!5365207 () Bool)

(assert (=> b!5365207 (= e!3329503 (= lt!2185631 call!383867))))

(declare-fun b!5365208 () Bool)

(declare-fun res!2276968 () Bool)

(assert (=> b!5365208 (=> res!2276968 e!3329499)))

(assert (=> b!5365208 (= res!2276968 (not ((_ is ElementMatch!15075) (regTwo!30662 r!7292))))))

(assert (=> b!5365208 (= e!3329500 e!3329499)))

(declare-fun b!5365209 () Bool)

(declare-fun res!2276969 () Bool)

(assert (=> b!5365209 (=> (not res!2276969) (not e!3329502))))

(assert (=> b!5365209 (= res!2276969 (isEmpty!33377 (tail!10607 (_2!35577 lt!2185500))))))

(declare-fun d!1718611 () Bool)

(assert (=> d!1718611 e!3329503))

(declare-fun c!934494 () Bool)

(assert (=> d!1718611 (= c!934494 ((_ is EmptyExpr!15075) (regTwo!30662 r!7292)))))

(assert (=> d!1718611 (= lt!2185631 e!3329505)))

(declare-fun c!934493 () Bool)

(assert (=> d!1718611 (= c!934493 (isEmpty!33377 (_2!35577 lt!2185500)))))

(assert (=> d!1718611 (validRegex!6811 (regTwo!30662 r!7292))))

(assert (=> d!1718611 (= (matchR!7260 (regTwo!30662 r!7292) (_2!35577 lt!2185500)) lt!2185631)))

(declare-fun b!5365203 () Bool)

(assert (=> b!5365203 (= e!3329505 (nullable!5244 (regTwo!30662 r!7292)))))

(assert (= (and d!1718611 c!934493) b!5365203))

(assert (= (and d!1718611 (not c!934493)) b!5365202))

(assert (= (and d!1718611 c!934494) b!5365207))

(assert (= (and d!1718611 (not c!934494)) b!5365199))

(assert (= (and b!5365199 c!934495) b!5365206))

(assert (= (and b!5365199 (not c!934495)) b!5365208))

(assert (= (and b!5365208 (not res!2276968)) b!5365198))

(assert (= (and b!5365198 res!2276967) b!5365197))

(assert (= (and b!5365197 res!2276970) b!5365209))

(assert (= (and b!5365209 res!2276969) b!5365196))

(assert (= (and b!5365198 (not res!2276973)) b!5365205))

(assert (= (and b!5365205 res!2276972) b!5365200))

(assert (= (and b!5365200 (not res!2276966)) b!5365204))

(assert (= (and b!5365204 (not res!2276971)) b!5365201))

(assert (= (or b!5365207 b!5365197 b!5365200) bm!383862))

(declare-fun m!6393318 () Bool)

(assert (=> bm!383862 m!6393318))

(declare-fun m!6393320 () Bool)

(assert (=> b!5365203 m!6393320))

(declare-fun m!6393322 () Bool)

(assert (=> b!5365209 m!6393322))

(assert (=> b!5365209 m!6393322))

(declare-fun m!6393324 () Bool)

(assert (=> b!5365209 m!6393324))

(declare-fun m!6393326 () Bool)

(assert (=> b!5365202 m!6393326))

(assert (=> b!5365202 m!6393326))

(declare-fun m!6393328 () Bool)

(assert (=> b!5365202 m!6393328))

(assert (=> b!5365202 m!6393322))

(assert (=> b!5365202 m!6393328))

(assert (=> b!5365202 m!6393322))

(declare-fun m!6393330 () Bool)

(assert (=> b!5365202 m!6393330))

(assert (=> b!5365201 m!6393326))

(assert (=> b!5365204 m!6393322))

(assert (=> b!5365204 m!6393322))

(assert (=> b!5365204 m!6393324))

(assert (=> d!1718611 m!6393318))

(declare-fun m!6393332 () Bool)

(assert (=> d!1718611 m!6393332))

(assert (=> b!5365196 m!6393326))

(assert (=> b!5364491 d!1718611))

(declare-fun bs!1242439 () Bool)

(declare-fun d!1718613 () Bool)

(assert (= bs!1242439 (and d!1718613 b!5364523)))

(declare-fun lambda!276536 () Int)

(assert (=> bs!1242439 (= lambda!276536 lambda!276483)))

(declare-fun bs!1242440 () Bool)

(assert (= bs!1242440 (and d!1718613 d!1718609)))

(assert (=> bs!1242440 (= lambda!276536 lambda!276535)))

(assert (=> d!1718613 (= (inv!80934 (h!67849 zl!343)) (forall!14483 (exprs!4959 (h!67849 zl!343)) lambda!276536))))

(declare-fun bs!1242441 () Bool)

(assert (= bs!1242441 d!1718613))

(declare-fun m!6393334 () Bool)

(assert (=> bs!1242441 m!6393334))

(assert (=> b!5364490 d!1718613))

(declare-fun bs!1242442 () Bool)

(declare-fun d!1718615 () Bool)

(assert (= bs!1242442 (and d!1718615 b!5364523)))

(declare-fun lambda!276539 () Int)

(assert (=> bs!1242442 (= lambda!276539 lambda!276483)))

(declare-fun bs!1242443 () Bool)

(assert (= bs!1242443 (and d!1718615 d!1718609)))

(assert (=> bs!1242443 (= lambda!276539 lambda!276535)))

(declare-fun bs!1242444 () Bool)

(assert (= bs!1242444 (and d!1718615 d!1718613)))

(assert (=> bs!1242444 (= lambda!276539 lambda!276536)))

(declare-fun b!5365230 () Bool)

(declare-fun e!3329521 () Bool)

(declare-fun lt!2185634 () Regex!15075)

(declare-fun head!11511 (List!61524) Regex!15075)

(assert (=> b!5365230 (= e!3329521 (= lt!2185634 (head!11511 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5365231 () Bool)

(declare-fun e!3329522 () Bool)

(declare-fun isEmptyExpr!930 (Regex!15075) Bool)

(assert (=> b!5365231 (= e!3329522 (isEmptyExpr!930 lt!2185634))))

(declare-fun b!5365232 () Bool)

(declare-fun e!3329520 () Bool)

(assert (=> b!5365232 (= e!3329520 (isEmpty!33378 (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5365233 () Bool)

(declare-fun e!3329518 () Regex!15075)

(declare-fun e!3329523 () Regex!15075)

(assert (=> b!5365233 (= e!3329518 e!3329523)))

(declare-fun c!934506 () Bool)

(assert (=> b!5365233 (= c!934506 ((_ is Cons!61400) (exprs!4959 (h!67849 zl!343))))))

(declare-fun b!5365234 () Bool)

(assert (=> b!5365234 (= e!3329522 e!3329521)))

(declare-fun c!934507 () Bool)

(declare-fun tail!10608 (List!61524) List!61524)

(assert (=> b!5365234 (= c!934507 (isEmpty!33378 (tail!10608 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5365235 () Bool)

(declare-fun e!3329519 () Bool)

(assert (=> b!5365235 (= e!3329519 e!3329522)))

(declare-fun c!934505 () Bool)

(assert (=> b!5365235 (= c!934505 (isEmpty!33378 (exprs!4959 (h!67849 zl!343))))))

(assert (=> d!1718615 e!3329519))

(declare-fun res!2276979 () Bool)

(assert (=> d!1718615 (=> (not res!2276979) (not e!3329519))))

(assert (=> d!1718615 (= res!2276979 (validRegex!6811 lt!2185634))))

(assert (=> d!1718615 (= lt!2185634 e!3329518)))

(declare-fun c!934504 () Bool)

(assert (=> d!1718615 (= c!934504 e!3329520)))

(declare-fun res!2276978 () Bool)

(assert (=> d!1718615 (=> (not res!2276978) (not e!3329520))))

(assert (=> d!1718615 (= res!2276978 ((_ is Cons!61400) (exprs!4959 (h!67849 zl!343))))))

(assert (=> d!1718615 (forall!14483 (exprs!4959 (h!67849 zl!343)) lambda!276539)))

(assert (=> d!1718615 (= (generalisedConcat!744 (exprs!4959 (h!67849 zl!343))) lt!2185634)))

(declare-fun b!5365236 () Bool)

(assert (=> b!5365236 (= e!3329523 EmptyExpr!15075)))

(declare-fun b!5365237 () Bool)

(declare-fun isConcat!453 (Regex!15075) Bool)

(assert (=> b!5365237 (= e!3329521 (isConcat!453 lt!2185634))))

(declare-fun b!5365238 () Bool)

(assert (=> b!5365238 (= e!3329523 (Concat!23920 (h!67848 (exprs!4959 (h!67849 zl!343))) (generalisedConcat!744 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun b!5365239 () Bool)

(assert (=> b!5365239 (= e!3329518 (h!67848 (exprs!4959 (h!67849 zl!343))))))

(assert (= (and d!1718615 res!2276978) b!5365232))

(assert (= (and d!1718615 c!934504) b!5365239))

(assert (= (and d!1718615 (not c!934504)) b!5365233))

(assert (= (and b!5365233 c!934506) b!5365238))

(assert (= (and b!5365233 (not c!934506)) b!5365236))

(assert (= (and d!1718615 res!2276979) b!5365235))

(assert (= (and b!5365235 c!934505) b!5365231))

(assert (= (and b!5365235 (not c!934505)) b!5365234))

(assert (= (and b!5365234 c!934507) b!5365230))

(assert (= (and b!5365234 (not c!934507)) b!5365237))

(declare-fun m!6393336 () Bool)

(assert (=> b!5365235 m!6393336))

(declare-fun m!6393338 () Bool)

(assert (=> b!5365237 m!6393338))

(declare-fun m!6393340 () Bool)

(assert (=> b!5365238 m!6393340))

(declare-fun m!6393342 () Bool)

(assert (=> d!1718615 m!6393342))

(declare-fun m!6393344 () Bool)

(assert (=> d!1718615 m!6393344))

(declare-fun m!6393346 () Bool)

(assert (=> b!5365231 m!6393346))

(assert (=> b!5365232 m!6392744))

(declare-fun m!6393348 () Bool)

(assert (=> b!5365230 m!6393348))

(declare-fun m!6393350 () Bool)

(assert (=> b!5365234 m!6393350))

(assert (=> b!5365234 m!6393350))

(declare-fun m!6393352 () Bool)

(assert (=> b!5365234 m!6393352))

(assert (=> b!5364500 d!1718615))

(declare-fun d!1718617 () Bool)

(declare-fun lt!2185635 () Regex!15075)

(assert (=> d!1718617 (validRegex!6811 lt!2185635)))

(assert (=> d!1718617 (= lt!2185635 (generalisedUnion!1004 (unfocusZipperList!517 zl!343)))))

(assert (=> d!1718617 (= (unfocusZipper!817 zl!343) lt!2185635)))

(declare-fun bs!1242445 () Bool)

(assert (= bs!1242445 d!1718617))

(declare-fun m!6393354 () Bool)

(assert (=> bs!1242445 m!6393354))

(assert (=> bs!1242445 m!6392686))

(assert (=> bs!1242445 m!6392686))

(assert (=> bs!1242445 m!6392688))

(assert (=> b!5364519 d!1718617))

(declare-fun d!1718619 () Bool)

(declare-fun lt!2185636 () Regex!15075)

(assert (=> d!1718619 (validRegex!6811 lt!2185636)))

(assert (=> d!1718619 (= lt!2185636 (generalisedUnion!1004 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))))))

(assert (=> d!1718619 (= (unfocusZipper!817 (Cons!61401 lt!2185533 Nil!61401)) lt!2185636)))

(declare-fun bs!1242446 () Bool)

(assert (= bs!1242446 d!1718619))

(declare-fun m!6393356 () Bool)

(assert (=> bs!1242446 m!6393356))

(declare-fun m!6393358 () Bool)

(assert (=> bs!1242446 m!6393358))

(assert (=> bs!1242446 m!6393358))

(declare-fun m!6393360 () Bool)

(assert (=> bs!1242446 m!6393360))

(assert (=> b!5364498 d!1718619))

(declare-fun bs!1242447 () Bool)

(declare-fun d!1718621 () Bool)

(assert (= bs!1242447 (and d!1718621 b!5364523)))

(declare-fun lambda!276542 () Int)

(assert (=> bs!1242447 (= lambda!276542 lambda!276483)))

(declare-fun bs!1242448 () Bool)

(assert (= bs!1242448 (and d!1718621 d!1718609)))

(assert (=> bs!1242448 (= lambda!276542 lambda!276535)))

(declare-fun bs!1242449 () Bool)

(assert (= bs!1242449 (and d!1718621 d!1718613)))

(assert (=> bs!1242449 (= lambda!276542 lambda!276536)))

(declare-fun bs!1242450 () Bool)

(assert (= bs!1242450 (and d!1718621 d!1718615)))

(assert (=> bs!1242450 (= lambda!276542 lambda!276539)))

(declare-fun b!5365260 () Bool)

(declare-fun e!3329540 () Bool)

(assert (=> b!5365260 (= e!3329540 (isEmpty!33378 (t!374745 (unfocusZipperList!517 zl!343))))))

(declare-fun b!5365261 () Bool)

(declare-fun e!3329538 () Regex!15075)

(declare-fun e!3329536 () Regex!15075)

(assert (=> b!5365261 (= e!3329538 e!3329536)))

(declare-fun c!934517 () Bool)

(assert (=> b!5365261 (= c!934517 ((_ is Cons!61400) (unfocusZipperList!517 zl!343)))))

(declare-fun b!5365262 () Bool)

(declare-fun e!3329537 () Bool)

(declare-fun e!3329541 () Bool)

(assert (=> b!5365262 (= e!3329537 e!3329541)))

(declare-fun c!934516 () Bool)

(assert (=> b!5365262 (= c!934516 (isEmpty!33378 (tail!10608 (unfocusZipperList!517 zl!343))))))

(declare-fun b!5365263 () Bool)

(declare-fun lt!2185639 () Regex!15075)

(declare-fun isUnion!371 (Regex!15075) Bool)

(assert (=> b!5365263 (= e!3329541 (isUnion!371 lt!2185639))))

(declare-fun b!5365264 () Bool)

(declare-fun e!3329539 () Bool)

(assert (=> b!5365264 (= e!3329539 e!3329537)))

(declare-fun c!934518 () Bool)

(assert (=> b!5365264 (= c!934518 (isEmpty!33378 (unfocusZipperList!517 zl!343)))))

(declare-fun b!5365265 () Bool)

(declare-fun isEmptyLang!939 (Regex!15075) Bool)

(assert (=> b!5365265 (= e!3329537 (isEmptyLang!939 lt!2185639))))

(declare-fun b!5365266 () Bool)

(assert (=> b!5365266 (= e!3329538 (h!67848 (unfocusZipperList!517 zl!343)))))

(declare-fun b!5365267 () Bool)

(assert (=> b!5365267 (= e!3329536 (Union!15075 (h!67848 (unfocusZipperList!517 zl!343)) (generalisedUnion!1004 (t!374745 (unfocusZipperList!517 zl!343)))))))

(assert (=> d!1718621 e!3329539))

(declare-fun res!2276985 () Bool)

(assert (=> d!1718621 (=> (not res!2276985) (not e!3329539))))

(assert (=> d!1718621 (= res!2276985 (validRegex!6811 lt!2185639))))

(assert (=> d!1718621 (= lt!2185639 e!3329538)))

(declare-fun c!934519 () Bool)

(assert (=> d!1718621 (= c!934519 e!3329540)))

(declare-fun res!2276984 () Bool)

(assert (=> d!1718621 (=> (not res!2276984) (not e!3329540))))

(assert (=> d!1718621 (= res!2276984 ((_ is Cons!61400) (unfocusZipperList!517 zl!343)))))

(assert (=> d!1718621 (forall!14483 (unfocusZipperList!517 zl!343) lambda!276542)))

(assert (=> d!1718621 (= (generalisedUnion!1004 (unfocusZipperList!517 zl!343)) lt!2185639)))

(declare-fun b!5365268 () Bool)

(assert (=> b!5365268 (= e!3329536 EmptyLang!15075)))

(declare-fun b!5365269 () Bool)

(assert (=> b!5365269 (= e!3329541 (= lt!2185639 (head!11511 (unfocusZipperList!517 zl!343))))))

(assert (= (and d!1718621 res!2276984) b!5365260))

(assert (= (and d!1718621 c!934519) b!5365266))

(assert (= (and d!1718621 (not c!934519)) b!5365261))

(assert (= (and b!5365261 c!934517) b!5365267))

(assert (= (and b!5365261 (not c!934517)) b!5365268))

(assert (= (and d!1718621 res!2276985) b!5365264))

(assert (= (and b!5365264 c!934518) b!5365265))

(assert (= (and b!5365264 (not c!934518)) b!5365262))

(assert (= (and b!5365262 c!934516) b!5365269))

(assert (= (and b!5365262 (not c!934516)) b!5365263))

(declare-fun m!6393362 () Bool)

(assert (=> b!5365263 m!6393362))

(declare-fun m!6393364 () Bool)

(assert (=> b!5365260 m!6393364))

(declare-fun m!6393366 () Bool)

(assert (=> b!5365267 m!6393366))

(assert (=> b!5365264 m!6392686))

(declare-fun m!6393368 () Bool)

(assert (=> b!5365264 m!6393368))

(declare-fun m!6393370 () Bool)

(assert (=> b!5365265 m!6393370))

(declare-fun m!6393372 () Bool)

(assert (=> d!1718621 m!6393372))

(assert (=> d!1718621 m!6392686))

(declare-fun m!6393374 () Bool)

(assert (=> d!1718621 m!6393374))

(assert (=> b!5365269 m!6392686))

(declare-fun m!6393376 () Bool)

(assert (=> b!5365269 m!6393376))

(assert (=> b!5365262 m!6392686))

(declare-fun m!6393378 () Bool)

(assert (=> b!5365262 m!6393378))

(assert (=> b!5365262 m!6393378))

(declare-fun m!6393380 () Bool)

(assert (=> b!5365262 m!6393380))

(assert (=> b!5364517 d!1718621))

(declare-fun bs!1242451 () Bool)

(declare-fun d!1718623 () Bool)

(assert (= bs!1242451 (and d!1718623 d!1718609)))

(declare-fun lambda!276545 () Int)

(assert (=> bs!1242451 (= lambda!276545 lambda!276535)))

(declare-fun bs!1242452 () Bool)

(assert (= bs!1242452 (and d!1718623 d!1718621)))

(assert (=> bs!1242452 (= lambda!276545 lambda!276542)))

(declare-fun bs!1242453 () Bool)

(assert (= bs!1242453 (and d!1718623 d!1718613)))

(assert (=> bs!1242453 (= lambda!276545 lambda!276536)))

(declare-fun bs!1242454 () Bool)

(assert (= bs!1242454 (and d!1718623 d!1718615)))

(assert (=> bs!1242454 (= lambda!276545 lambda!276539)))

(declare-fun bs!1242455 () Bool)

(assert (= bs!1242455 (and d!1718623 b!5364523)))

(assert (=> bs!1242455 (= lambda!276545 lambda!276483)))

(declare-fun lt!2185642 () List!61524)

(assert (=> d!1718623 (forall!14483 lt!2185642 lambda!276545)))

(declare-fun e!3329544 () List!61524)

(assert (=> d!1718623 (= lt!2185642 e!3329544)))

(declare-fun c!934522 () Bool)

(assert (=> d!1718623 (= c!934522 ((_ is Cons!61401) zl!343))))

(assert (=> d!1718623 (= (unfocusZipperList!517 zl!343) lt!2185642)))

(declare-fun b!5365274 () Bool)

(assert (=> b!5365274 (= e!3329544 (Cons!61400 (generalisedConcat!744 (exprs!4959 (h!67849 zl!343))) (unfocusZipperList!517 (t!374746 zl!343))))))

(declare-fun b!5365275 () Bool)

(assert (=> b!5365275 (= e!3329544 Nil!61400)))

(assert (= (and d!1718623 c!934522) b!5365274))

(assert (= (and d!1718623 (not c!934522)) b!5365275))

(declare-fun m!6393382 () Bool)

(assert (=> d!1718623 m!6393382))

(assert (=> b!5365274 m!6392742))

(declare-fun m!6393384 () Bool)

(assert (=> b!5365274 m!6393384))

(assert (=> b!5364517 d!1718623))

(declare-fun d!1718625 () Bool)

(declare-fun e!3329547 () Bool)

(assert (=> d!1718625 (= (matchZipper!1319 ((_ map or) lt!2185525 lt!2185496) (t!374747 s!2326)) e!3329547)))

(declare-fun res!2276988 () Bool)

(assert (=> d!1718625 (=> res!2276988 e!3329547)))

(assert (=> d!1718625 (= res!2276988 (matchZipper!1319 lt!2185525 (t!374747 s!2326)))))

(declare-fun lt!2185645 () Unit!153818)

(declare-fun choose!40295 ((InoxSet Context!8918) (InoxSet Context!8918) List!61526) Unit!153818)

(assert (=> d!1718625 (= lt!2185645 (choose!40295 lt!2185525 lt!2185496 (t!374747 s!2326)))))

(assert (=> d!1718625 (= (lemmaZipperConcatMatchesSameAsBothZippers!312 lt!2185525 lt!2185496 (t!374747 s!2326)) lt!2185645)))

(declare-fun b!5365278 () Bool)

(assert (=> b!5365278 (= e!3329547 (matchZipper!1319 lt!2185496 (t!374747 s!2326)))))

(assert (= (and d!1718625 (not res!2276988)) b!5365278))

(assert (=> d!1718625 m!6392720))

(assert (=> d!1718625 m!6392718))

(declare-fun m!6393386 () Bool)

(assert (=> d!1718625 m!6393386))

(assert (=> b!5365278 m!6392622))

(assert (=> b!5364516 d!1718625))

(declare-fun d!1718627 () Bool)

(declare-fun c!934523 () Bool)

(assert (=> d!1718627 (= c!934523 (isEmpty!33377 (t!374747 s!2326)))))

(declare-fun e!3329548 () Bool)

(assert (=> d!1718627 (= (matchZipper!1319 lt!2185525 (t!374747 s!2326)) e!3329548)))

(declare-fun b!5365279 () Bool)

(assert (=> b!5365279 (= e!3329548 (nullableZipper!1396 lt!2185525))))

(declare-fun b!5365280 () Bool)

(assert (=> b!5365280 (= e!3329548 (matchZipper!1319 (derivationStepZipper!1314 lt!2185525 (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))))))

(assert (= (and d!1718627 c!934523) b!5365279))

(assert (= (and d!1718627 (not c!934523)) b!5365280))

(assert (=> d!1718627 m!6393302))

(declare-fun m!6393388 () Bool)

(assert (=> b!5365279 m!6393388))

(assert (=> b!5365280 m!6393306))

(assert (=> b!5365280 m!6393306))

(declare-fun m!6393390 () Bool)

(assert (=> b!5365280 m!6393390))

(assert (=> b!5365280 m!6393310))

(assert (=> b!5365280 m!6393390))

(assert (=> b!5365280 m!6393310))

(declare-fun m!6393392 () Bool)

(assert (=> b!5365280 m!6393392))

(assert (=> b!5364516 d!1718627))

(declare-fun d!1718629 () Bool)

(declare-fun c!934524 () Bool)

(assert (=> d!1718629 (= c!934524 (isEmpty!33377 (t!374747 s!2326)))))

(declare-fun e!3329549 () Bool)

(assert (=> d!1718629 (= (matchZipper!1319 ((_ map or) lt!2185525 lt!2185496) (t!374747 s!2326)) e!3329549)))

(declare-fun b!5365281 () Bool)

(assert (=> b!5365281 (= e!3329549 (nullableZipper!1396 ((_ map or) lt!2185525 lt!2185496)))))

(declare-fun b!5365282 () Bool)

(assert (=> b!5365282 (= e!3329549 (matchZipper!1319 (derivationStepZipper!1314 ((_ map or) lt!2185525 lt!2185496) (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))))))

(assert (= (and d!1718629 c!934524) b!5365281))

(assert (= (and d!1718629 (not c!934524)) b!5365282))

(assert (=> d!1718629 m!6393302))

(declare-fun m!6393394 () Bool)

(assert (=> b!5365281 m!6393394))

(assert (=> b!5365282 m!6393306))

(assert (=> b!5365282 m!6393306))

(declare-fun m!6393396 () Bool)

(assert (=> b!5365282 m!6393396))

(assert (=> b!5365282 m!6393310))

(assert (=> b!5365282 m!6393396))

(assert (=> b!5365282 m!6393310))

(declare-fun m!6393398 () Bool)

(assert (=> b!5365282 m!6393398))

(assert (=> b!5364516 d!1718629))

(declare-fun b!5365283 () Bool)

(declare-fun c!934526 () Bool)

(declare-fun e!3329550 () Bool)

(assert (=> b!5365283 (= c!934526 e!3329550)))

(declare-fun res!2276989 () Bool)

(assert (=> b!5365283 (=> (not res!2276989) (not e!3329550))))

(assert (=> b!5365283 (= res!2276989 ((_ is Concat!23920) (reg!15404 (regOne!30662 r!7292))))))

(declare-fun e!3329551 () (InoxSet Context!8918))

(declare-fun e!3329552 () (InoxSet Context!8918))

(assert (=> b!5365283 (= e!3329551 e!3329552)))

(declare-fun b!5365284 () Bool)

(declare-fun e!3329553 () (InoxSet Context!8918))

(declare-fun call!383870 () (InoxSet Context!8918))

(assert (=> b!5365284 (= e!3329553 call!383870)))

(declare-fun b!5365285 () Bool)

(declare-fun e!3329555 () (InoxSet Context!8918))

(assert (=> b!5365285 (= e!3329555 call!383870)))

(declare-fun b!5365286 () Bool)

(declare-fun e!3329554 () (InoxSet Context!8918))

(assert (=> b!5365286 (= e!3329554 e!3329551)))

(declare-fun c!934529 () Bool)

(assert (=> b!5365286 (= c!934529 ((_ is Union!15075) (reg!15404 (regOne!30662 r!7292))))))

(declare-fun bm!383863 () Bool)

(declare-fun call!383873 () (InoxSet Context!8918))

(declare-fun call!383872 () (InoxSet Context!8918))

(assert (=> bm!383863 (= call!383873 call!383872)))

(declare-fun b!5365287 () Bool)

(declare-fun call!383868 () (InoxSet Context!8918))

(assert (=> b!5365287 (= e!3329551 ((_ map or) call!383868 call!383872))))

(declare-fun b!5365288 () Bool)

(assert (=> b!5365288 (= e!3329554 (store ((as const (Array Context!8918 Bool)) false) lt!2185533 true))))

(declare-fun b!5365289 () Bool)

(assert (=> b!5365289 (= e!3329550 (nullable!5244 (regOne!30662 (reg!15404 (regOne!30662 r!7292)))))))

(declare-fun call!383871 () List!61524)

(declare-fun bm!383864 () Bool)

(assert (=> bm!383864 (= call!383868 (derivationStepZipperDown!523 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292)))) (ite c!934529 lt!2185533 (Context!8919 call!383871)) (h!67850 s!2326)))))

(declare-fun d!1718631 () Bool)

(declare-fun c!934528 () Bool)

(assert (=> d!1718631 (= c!934528 (and ((_ is ElementMatch!15075) (reg!15404 (regOne!30662 r!7292))) (= (c!934311 (reg!15404 (regOne!30662 r!7292))) (h!67850 s!2326))))))

(assert (=> d!1718631 (= (derivationStepZipperDown!523 (reg!15404 (regOne!30662 r!7292)) lt!2185533 (h!67850 s!2326)) e!3329554)))

(declare-fun b!5365290 () Bool)

(declare-fun c!934527 () Bool)

(assert (=> b!5365290 (= c!934527 ((_ is Star!15075) (reg!15404 (regOne!30662 r!7292))))))

(assert (=> b!5365290 (= e!3329555 e!3329553)))

(declare-fun bm!383865 () Bool)

(declare-fun call!383869 () List!61524)

(assert (=> bm!383865 (= call!383869 call!383871)))

(declare-fun bm!383866 () Bool)

(declare-fun c!934525 () Bool)

(assert (=> bm!383866 (= call!383871 ($colon$colon!1446 (exprs!4959 lt!2185533) (ite (or c!934526 c!934525) (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (regOne!30662 r!7292)))))))

(declare-fun bm!383867 () Bool)

(assert (=> bm!383867 (= call!383870 call!383873)))

(declare-fun b!5365291 () Bool)

(assert (=> b!5365291 (= e!3329552 e!3329555)))

(assert (=> b!5365291 (= c!934525 ((_ is Concat!23920) (reg!15404 (regOne!30662 r!7292))))))

(declare-fun bm!383868 () Bool)

(assert (=> bm!383868 (= call!383872 (derivationStepZipperDown!523 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292)))))) (ite (or c!934529 c!934526) lt!2185533 (Context!8919 call!383869)) (h!67850 s!2326)))))

(declare-fun b!5365292 () Bool)

(assert (=> b!5365292 (= e!3329552 ((_ map or) call!383868 call!383873))))

(declare-fun b!5365293 () Bool)

(assert (=> b!5365293 (= e!3329553 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718631 c!934528) b!5365288))

(assert (= (and d!1718631 (not c!934528)) b!5365286))

(assert (= (and b!5365286 c!934529) b!5365287))

(assert (= (and b!5365286 (not c!934529)) b!5365283))

(assert (= (and b!5365283 res!2276989) b!5365289))

(assert (= (and b!5365283 c!934526) b!5365292))

(assert (= (and b!5365283 (not c!934526)) b!5365291))

(assert (= (and b!5365291 c!934525) b!5365285))

(assert (= (and b!5365291 (not c!934525)) b!5365290))

(assert (= (and b!5365290 c!934527) b!5365284))

(assert (= (and b!5365290 (not c!934527)) b!5365293))

(assert (= (or b!5365285 b!5365284) bm!383865))

(assert (= (or b!5365285 b!5365284) bm!383867))

(assert (= (or b!5365292 bm!383865) bm!383866))

(assert (= (or b!5365292 bm!383867) bm!383863))

(assert (= (or b!5365287 bm!383863) bm!383868))

(assert (= (or b!5365287 b!5365292) bm!383864))

(assert (=> b!5365288 m!6392632))

(declare-fun m!6393400 () Bool)

(assert (=> bm!383868 m!6393400))

(declare-fun m!6393402 () Bool)

(assert (=> bm!383866 m!6393402))

(declare-fun m!6393404 () Bool)

(assert (=> b!5365289 m!6393404))

(declare-fun m!6393406 () Bool)

(assert (=> bm!383864 m!6393406))

(assert (=> b!5364526 d!1718631))

(declare-fun d!1718633 () Bool)

(declare-fun c!934530 () Bool)

(assert (=> d!1718633 (= c!934530 (isEmpty!33377 s!2326))))

(declare-fun e!3329556 () Bool)

(assert (=> d!1718633 (= (matchZipper!1319 lt!2185512 s!2326) e!3329556)))

(declare-fun b!5365294 () Bool)

(assert (=> b!5365294 (= e!3329556 (nullableZipper!1396 lt!2185512))))

(declare-fun b!5365295 () Bool)

(assert (=> b!5365295 (= e!3329556 (matchZipper!1319 (derivationStepZipper!1314 lt!2185512 (head!11510 s!2326)) (tail!10607 s!2326)))))

(assert (= (and d!1718633 c!934530) b!5365294))

(assert (= (and d!1718633 (not c!934530)) b!5365295))

(declare-fun m!6393408 () Bool)

(assert (=> d!1718633 m!6393408))

(declare-fun m!6393410 () Bool)

(assert (=> b!5365294 m!6393410))

(declare-fun m!6393412 () Bool)

(assert (=> b!5365295 m!6393412))

(assert (=> b!5365295 m!6393412))

(declare-fun m!6393414 () Bool)

(assert (=> b!5365295 m!6393414))

(declare-fun m!6393416 () Bool)

(assert (=> b!5365295 m!6393416))

(assert (=> b!5365295 m!6393414))

(assert (=> b!5365295 m!6393416))

(declare-fun m!6393418 () Bool)

(assert (=> b!5365295 m!6393418))

(assert (=> b!5364525 d!1718633))

(declare-fun d!1718635 () Bool)

(declare-fun c!934531 () Bool)

(assert (=> d!1718635 (= c!934531 (isEmpty!33377 (t!374747 s!2326)))))

(declare-fun e!3329557 () Bool)

(assert (=> d!1718635 (= (matchZipper!1319 lt!2185530 (t!374747 s!2326)) e!3329557)))

(declare-fun b!5365296 () Bool)

(assert (=> b!5365296 (= e!3329557 (nullableZipper!1396 lt!2185530))))

(declare-fun b!5365297 () Bool)

(assert (=> b!5365297 (= e!3329557 (matchZipper!1319 (derivationStepZipper!1314 lt!2185530 (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))))))

(assert (= (and d!1718635 c!934531) b!5365296))

(assert (= (and d!1718635 (not c!934531)) b!5365297))

(assert (=> d!1718635 m!6393302))

(declare-fun m!6393420 () Bool)

(assert (=> b!5365296 m!6393420))

(assert (=> b!5365297 m!6393306))

(assert (=> b!5365297 m!6393306))

(declare-fun m!6393422 () Bool)

(assert (=> b!5365297 m!6393422))

(assert (=> b!5365297 m!6393310))

(assert (=> b!5365297 m!6393422))

(assert (=> b!5365297 m!6393310))

(declare-fun m!6393424 () Bool)

(assert (=> b!5365297 m!6393424))

(assert (=> b!5364525 d!1718635))

(declare-fun bs!1242456 () Bool)

(declare-fun b!5365331 () Bool)

(assert (= bs!1242456 (and b!5365331 d!1718511)))

(declare-fun lambda!276550 () Int)

(assert (=> bs!1242456 (not (= lambda!276550 lambda!276517))))

(declare-fun bs!1242457 () Bool)

(assert (= bs!1242457 (and b!5365331 b!5364506)))

(assert (=> bs!1242457 (not (= lambda!276550 lambda!276478))))

(assert (=> bs!1242456 (not (= lambda!276550 lambda!276516))))

(declare-fun bs!1242458 () Bool)

(assert (= bs!1242458 (and b!5365331 d!1718569)))

(assert (=> bs!1242458 (not (= lambda!276550 lambda!276531))))

(assert (=> bs!1242458 (not (= lambda!276550 lambda!276530))))

(declare-fun bs!1242459 () Bool)

(assert (= bs!1242459 (and b!5365331 b!5364528)))

(assert (=> bs!1242459 (not (= lambda!276550 lambda!276482))))

(assert (=> bs!1242459 (not (= lambda!276550 lambda!276481))))

(declare-fun bs!1242460 () Bool)

(assert (= bs!1242460 (and b!5365331 d!1718531)))

(assert (=> bs!1242460 (not (= lambda!276550 lambda!276523))))

(assert (=> bs!1242457 (not (= lambda!276550 lambda!276479))))

(declare-fun bs!1242461 () Bool)

(assert (= bs!1242461 (and b!5365331 d!1718587)))

(assert (=> bs!1242461 (not (= lambda!276550 lambda!276532))))

(assert (=> b!5365331 true))

(assert (=> b!5365331 true))

(declare-fun bs!1242462 () Bool)

(declare-fun b!5365334 () Bool)

(assert (= bs!1242462 (and b!5365334 d!1718511)))

(declare-fun lambda!276551 () Int)

(assert (=> bs!1242462 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276551 lambda!276517))))

(declare-fun bs!1242463 () Bool)

(assert (= bs!1242463 (and b!5365334 b!5364506)))

(assert (=> bs!1242463 (not (= lambda!276551 lambda!276478))))

(assert (=> bs!1242462 (not (= lambda!276551 lambda!276516))))

(declare-fun bs!1242464 () Bool)

(assert (= bs!1242464 (and b!5365334 d!1718569)))

(assert (=> bs!1242464 (= lambda!276551 lambda!276531)))

(assert (=> bs!1242464 (not (= lambda!276551 lambda!276530))))

(declare-fun bs!1242465 () Bool)

(assert (= bs!1242465 (and b!5365334 b!5364528)))

(assert (=> bs!1242465 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276551 lambda!276482))))

(declare-fun bs!1242466 () Bool)

(assert (= bs!1242466 (and b!5365334 b!5365331)))

(assert (=> bs!1242466 (not (= lambda!276551 lambda!276550))))

(assert (=> bs!1242465 (not (= lambda!276551 lambda!276481))))

(declare-fun bs!1242467 () Bool)

(assert (= bs!1242467 (and b!5365334 d!1718531)))

(assert (=> bs!1242467 (not (= lambda!276551 lambda!276523))))

(assert (=> bs!1242463 (= lambda!276551 lambda!276479)))

(declare-fun bs!1242468 () Bool)

(assert (= bs!1242468 (and b!5365334 d!1718587)))

(assert (=> bs!1242468 (not (= lambda!276551 lambda!276532))))

(assert (=> b!5365334 true))

(assert (=> b!5365334 true))

(declare-fun b!5365330 () Bool)

(declare-fun e!3329581 () Bool)

(declare-fun e!3329582 () Bool)

(assert (=> b!5365330 (= e!3329581 e!3329582)))

(declare-fun res!2277007 () Bool)

(assert (=> b!5365330 (= res!2277007 (matchRSpec!2178 (regOne!30663 r!7292) s!2326))))

(assert (=> b!5365330 (=> res!2277007 e!3329582)))

(declare-fun e!3329577 () Bool)

(declare-fun call!383878 () Bool)

(assert (=> b!5365331 (= e!3329577 call!383878)))

(declare-fun b!5365332 () Bool)

(declare-fun e!3329576 () Bool)

(declare-fun call!383879 () Bool)

(assert (=> b!5365332 (= e!3329576 call!383879)))

(declare-fun b!5365333 () Bool)

(declare-fun c!934542 () Bool)

(assert (=> b!5365333 (= c!934542 ((_ is ElementMatch!15075) r!7292))))

(declare-fun e!3329580 () Bool)

(declare-fun e!3329579 () Bool)

(assert (=> b!5365333 (= e!3329580 e!3329579)))

(declare-fun e!3329578 () Bool)

(assert (=> b!5365334 (= e!3329578 call!383878)))

(declare-fun b!5365335 () Bool)

(assert (=> b!5365335 (= e!3329582 (matchRSpec!2178 (regTwo!30663 r!7292) s!2326))))

(declare-fun b!5365336 () Bool)

(declare-fun c!934541 () Bool)

(assert (=> b!5365336 (= c!934541 ((_ is Union!15075) r!7292))))

(assert (=> b!5365336 (= e!3329579 e!3329581)))

(declare-fun b!5365337 () Bool)

(assert (=> b!5365337 (= e!3329579 (= s!2326 (Cons!61402 (c!934311 r!7292) Nil!61402)))))

(declare-fun b!5365338 () Bool)

(assert (=> b!5365338 (= e!3329576 e!3329580)))

(declare-fun res!2277008 () Bool)

(assert (=> b!5365338 (= res!2277008 (not ((_ is EmptyLang!15075) r!7292)))))

(assert (=> b!5365338 (=> (not res!2277008) (not e!3329580))))

(declare-fun b!5365339 () Bool)

(assert (=> b!5365339 (= e!3329581 e!3329578)))

(declare-fun c!934543 () Bool)

(assert (=> b!5365339 (= c!934543 ((_ is Star!15075) r!7292))))

(declare-fun b!5365340 () Bool)

(declare-fun res!2277006 () Bool)

(assert (=> b!5365340 (=> res!2277006 e!3329577)))

(assert (=> b!5365340 (= res!2277006 call!383879)))

(assert (=> b!5365340 (= e!3329578 e!3329577)))

(declare-fun bm!383874 () Bool)

(assert (=> bm!383874 (= call!383878 (Exists!2256 (ite c!934543 lambda!276550 lambda!276551)))))

(declare-fun bm!383873 () Bool)

(assert (=> bm!383873 (= call!383879 (isEmpty!33377 s!2326))))

(declare-fun d!1718637 () Bool)

(declare-fun c!934540 () Bool)

(assert (=> d!1718637 (= c!934540 ((_ is EmptyExpr!15075) r!7292))))

(assert (=> d!1718637 (= (matchRSpec!2178 r!7292 s!2326) e!3329576)))

(assert (= (and d!1718637 c!934540) b!5365332))

(assert (= (and d!1718637 (not c!934540)) b!5365338))

(assert (= (and b!5365338 res!2277008) b!5365333))

(assert (= (and b!5365333 c!934542) b!5365337))

(assert (= (and b!5365333 (not c!934542)) b!5365336))

(assert (= (and b!5365336 c!934541) b!5365330))

(assert (= (and b!5365336 (not c!934541)) b!5365339))

(assert (= (and b!5365330 (not res!2277007)) b!5365335))

(assert (= (and b!5365339 c!934543) b!5365340))

(assert (= (and b!5365339 (not c!934543)) b!5365334))

(assert (= (and b!5365340 (not res!2277006)) b!5365331))

(assert (= (or b!5365331 b!5365334) bm!383874))

(assert (= (or b!5365332 b!5365340) bm!383873))

(declare-fun m!6393426 () Bool)

(assert (=> b!5365330 m!6393426))

(declare-fun m!6393428 () Bool)

(assert (=> b!5365335 m!6393428))

(declare-fun m!6393430 () Bool)

(assert (=> bm!383874 m!6393430))

(assert (=> bm!383873 m!6393408))

(assert (=> b!5364505 d!1718637))

(declare-fun b!5365341 () Bool)

(declare-fun e!3329586 () Bool)

(assert (=> b!5365341 (= e!3329586 (= (head!11510 s!2326) (c!934311 r!7292)))))

(declare-fun b!5365342 () Bool)

(declare-fun res!2277013 () Bool)

(assert (=> b!5365342 (=> (not res!2277013) (not e!3329586))))

(declare-fun call!383880 () Bool)

(assert (=> b!5365342 (= res!2277013 (not call!383880))))

(declare-fun b!5365343 () Bool)

(declare-fun res!2277016 () Bool)

(declare-fun e!3329583 () Bool)

(assert (=> b!5365343 (=> res!2277016 e!3329583)))

(assert (=> b!5365343 (= res!2277016 e!3329586)))

(declare-fun res!2277010 () Bool)

(assert (=> b!5365343 (=> (not res!2277010) (not e!3329586))))

(declare-fun lt!2185646 () Bool)

(assert (=> b!5365343 (= res!2277010 lt!2185646)))

(declare-fun b!5365344 () Bool)

(declare-fun e!3329587 () Bool)

(declare-fun e!3329584 () Bool)

(assert (=> b!5365344 (= e!3329587 e!3329584)))

(declare-fun c!934546 () Bool)

(assert (=> b!5365344 (= c!934546 ((_ is EmptyLang!15075) r!7292))))

(declare-fun b!5365345 () Bool)

(declare-fun e!3329588 () Bool)

(declare-fun e!3329585 () Bool)

(assert (=> b!5365345 (= e!3329588 e!3329585)))

(declare-fun res!2277009 () Bool)

(assert (=> b!5365345 (=> res!2277009 e!3329585)))

(assert (=> b!5365345 (= res!2277009 call!383880)))

(declare-fun b!5365346 () Bool)

(assert (=> b!5365346 (= e!3329585 (not (= (head!11510 s!2326) (c!934311 r!7292))))))

(declare-fun b!5365347 () Bool)

(declare-fun e!3329589 () Bool)

(assert (=> b!5365347 (= e!3329589 (matchR!7260 (derivativeStep!4217 r!7292 (head!11510 s!2326)) (tail!10607 s!2326)))))

(declare-fun b!5365349 () Bool)

(declare-fun res!2277014 () Bool)

(assert (=> b!5365349 (=> res!2277014 e!3329585)))

(assert (=> b!5365349 (= res!2277014 (not (isEmpty!33377 (tail!10607 s!2326))))))

(declare-fun b!5365350 () Bool)

(assert (=> b!5365350 (= e!3329583 e!3329588)))

(declare-fun res!2277015 () Bool)

(assert (=> b!5365350 (=> (not res!2277015) (not e!3329588))))

(assert (=> b!5365350 (= res!2277015 (not lt!2185646))))

(declare-fun bm!383875 () Bool)

(assert (=> bm!383875 (= call!383880 (isEmpty!33377 s!2326))))

(declare-fun b!5365351 () Bool)

(assert (=> b!5365351 (= e!3329584 (not lt!2185646))))

(declare-fun b!5365352 () Bool)

(assert (=> b!5365352 (= e!3329587 (= lt!2185646 call!383880))))

(declare-fun b!5365353 () Bool)

(declare-fun res!2277011 () Bool)

(assert (=> b!5365353 (=> res!2277011 e!3329583)))

(assert (=> b!5365353 (= res!2277011 (not ((_ is ElementMatch!15075) r!7292)))))

(assert (=> b!5365353 (= e!3329584 e!3329583)))

(declare-fun b!5365354 () Bool)

(declare-fun res!2277012 () Bool)

(assert (=> b!5365354 (=> (not res!2277012) (not e!3329586))))

(assert (=> b!5365354 (= res!2277012 (isEmpty!33377 (tail!10607 s!2326)))))

(declare-fun d!1718639 () Bool)

(assert (=> d!1718639 e!3329587))

(declare-fun c!934545 () Bool)

(assert (=> d!1718639 (= c!934545 ((_ is EmptyExpr!15075) r!7292))))

(assert (=> d!1718639 (= lt!2185646 e!3329589)))

(declare-fun c!934544 () Bool)

(assert (=> d!1718639 (= c!934544 (isEmpty!33377 s!2326))))

(assert (=> d!1718639 (validRegex!6811 r!7292)))

(assert (=> d!1718639 (= (matchR!7260 r!7292 s!2326) lt!2185646)))

(declare-fun b!5365348 () Bool)

(assert (=> b!5365348 (= e!3329589 (nullable!5244 r!7292))))

(assert (= (and d!1718639 c!934544) b!5365348))

(assert (= (and d!1718639 (not c!934544)) b!5365347))

(assert (= (and d!1718639 c!934545) b!5365352))

(assert (= (and d!1718639 (not c!934545)) b!5365344))

(assert (= (and b!5365344 c!934546) b!5365351))

(assert (= (and b!5365344 (not c!934546)) b!5365353))

(assert (= (and b!5365353 (not res!2277011)) b!5365343))

(assert (= (and b!5365343 res!2277010) b!5365342))

(assert (= (and b!5365342 res!2277013) b!5365354))

(assert (= (and b!5365354 res!2277012) b!5365341))

(assert (= (and b!5365343 (not res!2277016)) b!5365350))

(assert (= (and b!5365350 res!2277015) b!5365345))

(assert (= (and b!5365345 (not res!2277009)) b!5365349))

(assert (= (and b!5365349 (not res!2277014)) b!5365346))

(assert (= (or b!5365352 b!5365342 b!5365345) bm!383875))

(assert (=> bm!383875 m!6393408))

(declare-fun m!6393432 () Bool)

(assert (=> b!5365348 m!6393432))

(assert (=> b!5365354 m!6393416))

(assert (=> b!5365354 m!6393416))

(declare-fun m!6393434 () Bool)

(assert (=> b!5365354 m!6393434))

(assert (=> b!5365347 m!6393412))

(assert (=> b!5365347 m!6393412))

(declare-fun m!6393436 () Bool)

(assert (=> b!5365347 m!6393436))

(assert (=> b!5365347 m!6393416))

(assert (=> b!5365347 m!6393436))

(assert (=> b!5365347 m!6393416))

(declare-fun m!6393438 () Bool)

(assert (=> b!5365347 m!6393438))

(assert (=> b!5365346 m!6393412))

(assert (=> b!5365349 m!6393416))

(assert (=> b!5365349 m!6393416))

(assert (=> b!5365349 m!6393434))

(assert (=> d!1718639 m!6393408))

(assert (=> d!1718639 m!6392652))

(assert (=> b!5365341 m!6393412))

(assert (=> b!5364505 d!1718639))

(declare-fun d!1718641 () Bool)

(assert (=> d!1718641 (= (matchR!7260 r!7292 s!2326) (matchRSpec!2178 r!7292 s!2326))))

(declare-fun lt!2185649 () Unit!153818)

(declare-fun choose!40296 (Regex!15075 List!61526) Unit!153818)

(assert (=> d!1718641 (= lt!2185649 (choose!40296 r!7292 s!2326))))

(assert (=> d!1718641 (validRegex!6811 r!7292)))

(assert (=> d!1718641 (= (mainMatchTheorem!2178 r!7292 s!2326) lt!2185649)))

(declare-fun bs!1242469 () Bool)

(assert (= bs!1242469 d!1718641))

(assert (=> bs!1242469 m!6392626))

(assert (=> bs!1242469 m!6392624))

(declare-fun m!6393440 () Bool)

(assert (=> bs!1242469 m!6393440))

(assert (=> bs!1242469 m!6392652))

(assert (=> b!5364505 d!1718641))

(declare-fun d!1718643 () Bool)

(assert (=> d!1718643 (= (isEmpty!33378 (t!374745 (exprs!4959 (h!67849 zl!343)))) ((_ is Nil!61400) (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> b!5364504 d!1718643))

(declare-fun b!5365355 () Bool)

(declare-fun e!3329593 () Bool)

(assert (=> b!5365355 (= e!3329593 (= (head!11510 s!2326) (c!934311 lt!2185527)))))

(declare-fun b!5365356 () Bool)

(declare-fun res!2277021 () Bool)

(assert (=> b!5365356 (=> (not res!2277021) (not e!3329593))))

(declare-fun call!383881 () Bool)

(assert (=> b!5365356 (= res!2277021 (not call!383881))))

(declare-fun b!5365357 () Bool)

(declare-fun res!2277024 () Bool)

(declare-fun e!3329590 () Bool)

(assert (=> b!5365357 (=> res!2277024 e!3329590)))

(assert (=> b!5365357 (= res!2277024 e!3329593)))

(declare-fun res!2277018 () Bool)

(assert (=> b!5365357 (=> (not res!2277018) (not e!3329593))))

(declare-fun lt!2185650 () Bool)

(assert (=> b!5365357 (= res!2277018 lt!2185650)))

(declare-fun b!5365358 () Bool)

(declare-fun e!3329594 () Bool)

(declare-fun e!3329591 () Bool)

(assert (=> b!5365358 (= e!3329594 e!3329591)))

(declare-fun c!934549 () Bool)

(assert (=> b!5365358 (= c!934549 ((_ is EmptyLang!15075) lt!2185527))))

(declare-fun b!5365359 () Bool)

(declare-fun e!3329595 () Bool)

(declare-fun e!3329592 () Bool)

(assert (=> b!5365359 (= e!3329595 e!3329592)))

(declare-fun res!2277017 () Bool)

(assert (=> b!5365359 (=> res!2277017 e!3329592)))

(assert (=> b!5365359 (= res!2277017 call!383881)))

(declare-fun b!5365360 () Bool)

(assert (=> b!5365360 (= e!3329592 (not (= (head!11510 s!2326) (c!934311 lt!2185527))))))

(declare-fun b!5365361 () Bool)

(declare-fun e!3329596 () Bool)

(assert (=> b!5365361 (= e!3329596 (matchR!7260 (derivativeStep!4217 lt!2185527 (head!11510 s!2326)) (tail!10607 s!2326)))))

(declare-fun b!5365363 () Bool)

(declare-fun res!2277022 () Bool)

(assert (=> b!5365363 (=> res!2277022 e!3329592)))

(assert (=> b!5365363 (= res!2277022 (not (isEmpty!33377 (tail!10607 s!2326))))))

(declare-fun b!5365364 () Bool)

(assert (=> b!5365364 (= e!3329590 e!3329595)))

(declare-fun res!2277023 () Bool)

(assert (=> b!5365364 (=> (not res!2277023) (not e!3329595))))

(assert (=> b!5365364 (= res!2277023 (not lt!2185650))))

(declare-fun bm!383876 () Bool)

(assert (=> bm!383876 (= call!383881 (isEmpty!33377 s!2326))))

(declare-fun b!5365365 () Bool)

(assert (=> b!5365365 (= e!3329591 (not lt!2185650))))

(declare-fun b!5365366 () Bool)

(assert (=> b!5365366 (= e!3329594 (= lt!2185650 call!383881))))

(declare-fun b!5365367 () Bool)

(declare-fun res!2277019 () Bool)

(assert (=> b!5365367 (=> res!2277019 e!3329590)))

(assert (=> b!5365367 (= res!2277019 (not ((_ is ElementMatch!15075) lt!2185527)))))

(assert (=> b!5365367 (= e!3329591 e!3329590)))

(declare-fun b!5365368 () Bool)

(declare-fun res!2277020 () Bool)

(assert (=> b!5365368 (=> (not res!2277020) (not e!3329593))))

(assert (=> b!5365368 (= res!2277020 (isEmpty!33377 (tail!10607 s!2326)))))

(declare-fun d!1718645 () Bool)

(assert (=> d!1718645 e!3329594))

(declare-fun c!934548 () Bool)

(assert (=> d!1718645 (= c!934548 ((_ is EmptyExpr!15075) lt!2185527))))

(assert (=> d!1718645 (= lt!2185650 e!3329596)))

(declare-fun c!934547 () Bool)

(assert (=> d!1718645 (= c!934547 (isEmpty!33377 s!2326))))

(assert (=> d!1718645 (validRegex!6811 lt!2185527)))

(assert (=> d!1718645 (= (matchR!7260 lt!2185527 s!2326) lt!2185650)))

(declare-fun b!5365362 () Bool)

(assert (=> b!5365362 (= e!3329596 (nullable!5244 lt!2185527))))

(assert (= (and d!1718645 c!934547) b!5365362))

(assert (= (and d!1718645 (not c!934547)) b!5365361))

(assert (= (and d!1718645 c!934548) b!5365366))

(assert (= (and d!1718645 (not c!934548)) b!5365358))

(assert (= (and b!5365358 c!934549) b!5365365))

(assert (= (and b!5365358 (not c!934549)) b!5365367))

(assert (= (and b!5365367 (not res!2277019)) b!5365357))

(assert (= (and b!5365357 res!2277018) b!5365356))

(assert (= (and b!5365356 res!2277021) b!5365368))

(assert (= (and b!5365368 res!2277020) b!5365355))

(assert (= (and b!5365357 (not res!2277024)) b!5365364))

(assert (= (and b!5365364 res!2277023) b!5365359))

(assert (= (and b!5365359 (not res!2277017)) b!5365363))

(assert (= (and b!5365363 (not res!2277022)) b!5365360))

(assert (= (or b!5365366 b!5365356 b!5365359) bm!383876))

(assert (=> bm!383876 m!6393408))

(declare-fun m!6393442 () Bool)

(assert (=> b!5365362 m!6393442))

(assert (=> b!5365368 m!6393416))

(assert (=> b!5365368 m!6393416))

(assert (=> b!5365368 m!6393434))

(assert (=> b!5365361 m!6393412))

(assert (=> b!5365361 m!6393412))

(declare-fun m!6393444 () Bool)

(assert (=> b!5365361 m!6393444))

(assert (=> b!5365361 m!6393416))

(assert (=> b!5365361 m!6393444))

(assert (=> b!5365361 m!6393416))

(declare-fun m!6393446 () Bool)

(assert (=> b!5365361 m!6393446))

(assert (=> b!5365360 m!6393412))

(assert (=> b!5365363 m!6393416))

(assert (=> b!5365363 m!6393416))

(assert (=> b!5365363 m!6393434))

(assert (=> d!1718645 m!6393408))

(declare-fun m!6393448 () Bool)

(assert (=> d!1718645 m!6393448))

(assert (=> b!5365355 m!6393412))

(assert (=> b!5364524 d!1718645))

(declare-fun bs!1242470 () Bool)

(declare-fun b!5365370 () Bool)

(assert (= bs!1242470 (and b!5365370 b!5365334)))

(declare-fun lambda!276552 () Int)

(assert (=> bs!1242470 (not (= lambda!276552 lambda!276551))))

(declare-fun bs!1242471 () Bool)

(assert (= bs!1242471 (and b!5365370 d!1718511)))

(assert (=> bs!1242471 (not (= lambda!276552 lambda!276517))))

(declare-fun bs!1242472 () Bool)

(assert (= bs!1242472 (and b!5365370 b!5364506)))

(assert (=> bs!1242472 (not (= lambda!276552 lambda!276478))))

(assert (=> bs!1242471 (not (= lambda!276552 lambda!276516))))

(declare-fun bs!1242473 () Bool)

(assert (= bs!1242473 (and b!5365370 d!1718569)))

(assert (=> bs!1242473 (not (= lambda!276552 lambda!276531))))

(assert (=> bs!1242473 (not (= lambda!276552 lambda!276530))))

(declare-fun bs!1242474 () Bool)

(assert (= bs!1242474 (and b!5365370 b!5364528)))

(assert (=> bs!1242474 (not (= lambda!276552 lambda!276482))))

(declare-fun bs!1242475 () Bool)

(assert (= bs!1242475 (and b!5365370 b!5365331)))

(assert (=> bs!1242475 (= (and (= (reg!15404 lt!2185527) (reg!15404 r!7292)) (= lt!2185527 r!7292)) (= lambda!276552 lambda!276550))))

(assert (=> bs!1242474 (not (= lambda!276552 lambda!276481))))

(declare-fun bs!1242476 () Bool)

(assert (= bs!1242476 (and b!5365370 d!1718531)))

(assert (=> bs!1242476 (not (= lambda!276552 lambda!276523))))

(assert (=> bs!1242472 (not (= lambda!276552 lambda!276479))))

(declare-fun bs!1242477 () Bool)

(assert (= bs!1242477 (and b!5365370 d!1718587)))

(assert (=> bs!1242477 (not (= lambda!276552 lambda!276532))))

(assert (=> b!5365370 true))

(assert (=> b!5365370 true))

(declare-fun bs!1242478 () Bool)

(declare-fun b!5365373 () Bool)

(assert (= bs!1242478 (and b!5365373 b!5365334)))

(declare-fun lambda!276553 () Int)

(assert (=> bs!1242478 (= (and (= (regOne!30662 lt!2185527) (regOne!30662 r!7292)) (= (regTwo!30662 lt!2185527) (regTwo!30662 r!7292))) (= lambda!276553 lambda!276551))))

(declare-fun bs!1242479 () Bool)

(assert (= bs!1242479 (and b!5365373 d!1718511)))

(assert (=> bs!1242479 (= (and (= (regOne!30662 lt!2185527) lt!2185531) (= (regTwo!30662 lt!2185527) (regTwo!30662 r!7292))) (= lambda!276553 lambda!276517))))

(declare-fun bs!1242480 () Bool)

(assert (= bs!1242480 (and b!5365373 b!5365370)))

(assert (=> bs!1242480 (not (= lambda!276553 lambda!276552))))

(declare-fun bs!1242481 () Bool)

(assert (= bs!1242481 (and b!5365373 b!5364506)))

(assert (=> bs!1242481 (not (= lambda!276553 lambda!276478))))

(assert (=> bs!1242479 (not (= lambda!276553 lambda!276516))))

(declare-fun bs!1242482 () Bool)

(assert (= bs!1242482 (and b!5365373 d!1718569)))

(assert (=> bs!1242482 (= (and (= (regOne!30662 lt!2185527) (regOne!30662 r!7292)) (= (regTwo!30662 lt!2185527) (regTwo!30662 r!7292))) (= lambda!276553 lambda!276531))))

(assert (=> bs!1242482 (not (= lambda!276553 lambda!276530))))

(declare-fun bs!1242483 () Bool)

(assert (= bs!1242483 (and b!5365373 b!5364528)))

(assert (=> bs!1242483 (= (and (= (regOne!30662 lt!2185527) lt!2185531) (= (regTwo!30662 lt!2185527) (regTwo!30662 r!7292))) (= lambda!276553 lambda!276482))))

(declare-fun bs!1242484 () Bool)

(assert (= bs!1242484 (and b!5365373 b!5365331)))

(assert (=> bs!1242484 (not (= lambda!276553 lambda!276550))))

(assert (=> bs!1242483 (not (= lambda!276553 lambda!276481))))

(declare-fun bs!1242485 () Bool)

(assert (= bs!1242485 (and b!5365373 d!1718531)))

(assert (=> bs!1242485 (not (= lambda!276553 lambda!276523))))

(assert (=> bs!1242481 (= (and (= (regOne!30662 lt!2185527) (regOne!30662 r!7292)) (= (regTwo!30662 lt!2185527) (regTwo!30662 r!7292))) (= lambda!276553 lambda!276479))))

(declare-fun bs!1242486 () Bool)

(assert (= bs!1242486 (and b!5365373 d!1718587)))

(assert (=> bs!1242486 (not (= lambda!276553 lambda!276532))))

(assert (=> b!5365373 true))

(assert (=> b!5365373 true))

(declare-fun b!5365369 () Bool)

(declare-fun e!3329602 () Bool)

(declare-fun e!3329603 () Bool)

(assert (=> b!5365369 (= e!3329602 e!3329603)))

(declare-fun res!2277026 () Bool)

(assert (=> b!5365369 (= res!2277026 (matchRSpec!2178 (regOne!30663 lt!2185527) s!2326))))

(assert (=> b!5365369 (=> res!2277026 e!3329603)))

(declare-fun e!3329598 () Bool)

(declare-fun call!383882 () Bool)

(assert (=> b!5365370 (= e!3329598 call!383882)))

(declare-fun b!5365371 () Bool)

(declare-fun e!3329597 () Bool)

(declare-fun call!383883 () Bool)

(assert (=> b!5365371 (= e!3329597 call!383883)))

(declare-fun b!5365372 () Bool)

(declare-fun c!934552 () Bool)

(assert (=> b!5365372 (= c!934552 ((_ is ElementMatch!15075) lt!2185527))))

(declare-fun e!3329601 () Bool)

(declare-fun e!3329600 () Bool)

(assert (=> b!5365372 (= e!3329601 e!3329600)))

(declare-fun e!3329599 () Bool)

(assert (=> b!5365373 (= e!3329599 call!383882)))

(declare-fun b!5365374 () Bool)

(assert (=> b!5365374 (= e!3329603 (matchRSpec!2178 (regTwo!30663 lt!2185527) s!2326))))

(declare-fun b!5365375 () Bool)

(declare-fun c!934551 () Bool)

(assert (=> b!5365375 (= c!934551 ((_ is Union!15075) lt!2185527))))

(assert (=> b!5365375 (= e!3329600 e!3329602)))

(declare-fun b!5365376 () Bool)

(assert (=> b!5365376 (= e!3329600 (= s!2326 (Cons!61402 (c!934311 lt!2185527) Nil!61402)))))

(declare-fun b!5365377 () Bool)

(assert (=> b!5365377 (= e!3329597 e!3329601)))

(declare-fun res!2277027 () Bool)

(assert (=> b!5365377 (= res!2277027 (not ((_ is EmptyLang!15075) lt!2185527)))))

(assert (=> b!5365377 (=> (not res!2277027) (not e!3329601))))

(declare-fun b!5365378 () Bool)

(assert (=> b!5365378 (= e!3329602 e!3329599)))

(declare-fun c!934553 () Bool)

(assert (=> b!5365378 (= c!934553 ((_ is Star!15075) lt!2185527))))

(declare-fun b!5365379 () Bool)

(declare-fun res!2277025 () Bool)

(assert (=> b!5365379 (=> res!2277025 e!3329598)))

(assert (=> b!5365379 (= res!2277025 call!383883)))

(assert (=> b!5365379 (= e!3329599 e!3329598)))

(declare-fun bm!383878 () Bool)

(assert (=> bm!383878 (= call!383882 (Exists!2256 (ite c!934553 lambda!276552 lambda!276553)))))

(declare-fun bm!383877 () Bool)

(assert (=> bm!383877 (= call!383883 (isEmpty!33377 s!2326))))

(declare-fun d!1718647 () Bool)

(declare-fun c!934550 () Bool)

(assert (=> d!1718647 (= c!934550 ((_ is EmptyExpr!15075) lt!2185527))))

(assert (=> d!1718647 (= (matchRSpec!2178 lt!2185527 s!2326) e!3329597)))

(assert (= (and d!1718647 c!934550) b!5365371))

(assert (= (and d!1718647 (not c!934550)) b!5365377))

(assert (= (and b!5365377 res!2277027) b!5365372))

(assert (= (and b!5365372 c!934552) b!5365376))

(assert (= (and b!5365372 (not c!934552)) b!5365375))

(assert (= (and b!5365375 c!934551) b!5365369))

(assert (= (and b!5365375 (not c!934551)) b!5365378))

(assert (= (and b!5365369 (not res!2277026)) b!5365374))

(assert (= (and b!5365378 c!934553) b!5365379))

(assert (= (and b!5365378 (not c!934553)) b!5365373))

(assert (= (and b!5365379 (not res!2277025)) b!5365370))

(assert (= (or b!5365370 b!5365373) bm!383878))

(assert (= (or b!5365371 b!5365379) bm!383877))

(declare-fun m!6393450 () Bool)

(assert (=> b!5365369 m!6393450))

(declare-fun m!6393452 () Bool)

(assert (=> b!5365374 m!6393452))

(declare-fun m!6393454 () Bool)

(assert (=> bm!383878 m!6393454))

(assert (=> bm!383877 m!6393408))

(assert (=> b!5364524 d!1718647))

(declare-fun d!1718649 () Bool)

(assert (=> d!1718649 (= (matchR!7260 lt!2185527 s!2326) (matchRSpec!2178 lt!2185527 s!2326))))

(declare-fun lt!2185651 () Unit!153818)

(assert (=> d!1718649 (= lt!2185651 (choose!40296 lt!2185527 s!2326))))

(assert (=> d!1718649 (validRegex!6811 lt!2185527)))

(assert (=> d!1718649 (= (mainMatchTheorem!2178 lt!2185527 s!2326) lt!2185651)))

(declare-fun bs!1242487 () Bool)

(assert (= bs!1242487 d!1718649))

(assert (=> bs!1242487 m!6392746))

(assert (=> bs!1242487 m!6392748))

(declare-fun m!6393456 () Bool)

(assert (=> bs!1242487 m!6393456))

(assert (=> bs!1242487 m!6393448))

(assert (=> b!5364524 d!1718649))

(declare-fun d!1718651 () Bool)

(declare-fun res!2277032 () Bool)

(declare-fun e!3329608 () Bool)

(assert (=> d!1718651 (=> res!2277032 e!3329608)))

(assert (=> d!1718651 (= res!2277032 ((_ is Nil!61400) (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> d!1718651 (= (forall!14483 (t!374745 (exprs!4959 (h!67849 zl!343))) lambda!276483) e!3329608)))

(declare-fun b!5365384 () Bool)

(declare-fun e!3329609 () Bool)

(assert (=> b!5365384 (= e!3329608 e!3329609)))

(declare-fun res!2277033 () Bool)

(assert (=> b!5365384 (=> (not res!2277033) (not e!3329609))))

(declare-fun dynLambda!24253 (Int Regex!15075) Bool)

(assert (=> b!5365384 (= res!2277033 (dynLambda!24253 lambda!276483 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun b!5365385 () Bool)

(assert (=> b!5365385 (= e!3329609 (forall!14483 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343)))) lambda!276483))))

(assert (= (and d!1718651 (not res!2277032)) b!5365384))

(assert (= (and b!5365384 res!2277033) b!5365385))

(declare-fun b_lambda!205691 () Bool)

(assert (=> (not b_lambda!205691) (not b!5365384)))

(declare-fun m!6393458 () Bool)

(assert (=> b!5365384 m!6393458))

(declare-fun m!6393460 () Bool)

(assert (=> b!5365385 m!6393460))

(assert (=> b!5364523 d!1718651))

(declare-fun d!1718653 () Bool)

(declare-fun e!3329612 () Bool)

(assert (=> d!1718653 e!3329612))

(declare-fun res!2277036 () Bool)

(assert (=> d!1718653 (=> (not res!2277036) (not e!3329612))))

(declare-fun lt!2185654 () List!61525)

(declare-fun noDuplicate!1350 (List!61525) Bool)

(assert (=> d!1718653 (= res!2277036 (noDuplicate!1350 lt!2185654))))

(declare-fun choose!40297 ((InoxSet Context!8918)) List!61525)

(assert (=> d!1718653 (= lt!2185654 (choose!40297 z!1189))))

(assert (=> d!1718653 (= (toList!8859 z!1189) lt!2185654)))

(declare-fun b!5365388 () Bool)

(declare-fun content!10968 (List!61525) (InoxSet Context!8918))

(assert (=> b!5365388 (= e!3329612 (= (content!10968 lt!2185654) z!1189))))

(assert (= (and d!1718653 res!2277036) b!5365388))

(declare-fun m!6393462 () Bool)

(assert (=> d!1718653 m!6393462))

(declare-fun m!6393464 () Bool)

(assert (=> d!1718653 m!6393464))

(declare-fun m!6393466 () Bool)

(assert (=> b!5365388 m!6393466))

(assert (=> b!5364503 d!1718653))

(declare-fun d!1718655 () Bool)

(assert (=> d!1718655 (= (flatMap!802 lt!2185512 lambda!276480) (choose!40285 lt!2185512 lambda!276480))))

(declare-fun bs!1242488 () Bool)

(assert (= bs!1242488 d!1718655))

(declare-fun m!6393468 () Bool)

(assert (=> bs!1242488 m!6393468))

(assert (=> b!5364522 d!1718655))

(declare-fun b!5365389 () Bool)

(declare-fun e!3329614 () (InoxSet Context!8918))

(assert (=> b!5365389 (= e!3329614 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718657 () Bool)

(declare-fun c!934554 () Bool)

(declare-fun e!3329615 () Bool)

(assert (=> d!1718657 (= c!934554 e!3329615)))

(declare-fun res!2277037 () Bool)

(assert (=> d!1718657 (=> (not res!2277037) (not e!3329615))))

(assert (=> d!1718657 (= res!2277037 ((_ is Cons!61400) (exprs!4959 lt!2185509)))))

(declare-fun e!3329613 () (InoxSet Context!8918))

(assert (=> d!1718657 (= (derivationStepZipperUp!447 lt!2185509 (h!67850 s!2326)) e!3329613)))

(declare-fun b!5365390 () Bool)

(declare-fun call!383884 () (InoxSet Context!8918))

(assert (=> b!5365390 (= e!3329614 call!383884)))

(declare-fun bm!383879 () Bool)

(assert (=> bm!383879 (= call!383884 (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185509)) (Context!8919 (t!374745 (exprs!4959 lt!2185509))) (h!67850 s!2326)))))

(declare-fun b!5365391 () Bool)

(assert (=> b!5365391 (= e!3329613 ((_ map or) call!383884 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185509))) (h!67850 s!2326))))))

(declare-fun b!5365392 () Bool)

(assert (=> b!5365392 (= e!3329615 (nullable!5244 (h!67848 (exprs!4959 lt!2185509))))))

(declare-fun b!5365393 () Bool)

(assert (=> b!5365393 (= e!3329613 e!3329614)))

(declare-fun c!934555 () Bool)

(assert (=> b!5365393 (= c!934555 ((_ is Cons!61400) (exprs!4959 lt!2185509)))))

(assert (= (and d!1718657 res!2277037) b!5365392))

(assert (= (and d!1718657 c!934554) b!5365391))

(assert (= (and d!1718657 (not c!934554)) b!5365393))

(assert (= (and b!5365393 c!934555) b!5365390))

(assert (= (and b!5365393 (not c!934555)) b!5365389))

(assert (= (or b!5365391 b!5365390) bm!383879))

(declare-fun m!6393470 () Bool)

(assert (=> bm!383879 m!6393470))

(declare-fun m!6393472 () Bool)

(assert (=> b!5365391 m!6393472))

(declare-fun m!6393474 () Bool)

(assert (=> b!5365392 m!6393474))

(assert (=> b!5364522 d!1718657))

(declare-fun d!1718659 () Bool)

(assert (=> d!1718659 (= (flatMap!802 lt!2185512 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185509))))

(declare-fun lt!2185655 () Unit!153818)

(assert (=> d!1718659 (= lt!2185655 (choose!40286 lt!2185512 lt!2185509 lambda!276480))))

(assert (=> d!1718659 (= lt!2185512 (store ((as const (Array Context!8918 Bool)) false) lt!2185509 true))))

(assert (=> d!1718659 (= (lemmaFlatMapOnSingletonSet!334 lt!2185512 lt!2185509 lambda!276480) lt!2185655)))

(declare-fun b_lambda!205693 () Bool)

(assert (=> (not b_lambda!205693) (not d!1718659)))

(declare-fun bs!1242489 () Bool)

(assert (= bs!1242489 d!1718659))

(assert (=> bs!1242489 m!6392696))

(declare-fun m!6393476 () Bool)

(assert (=> bs!1242489 m!6393476))

(declare-fun m!6393478 () Bool)

(assert (=> bs!1242489 m!6393478))

(assert (=> bs!1242489 m!6392690))

(assert (=> b!5364522 d!1718659))

(declare-fun bs!1242490 () Bool)

(declare-fun d!1718661 () Bool)

(assert (= bs!1242490 (and d!1718661 b!5364515)))

(declare-fun lambda!276556 () Int)

(assert (=> bs!1242490 (= lambda!276556 lambda!276480)))

(assert (=> d!1718661 true))

(assert (=> d!1718661 (= (derivationStepZipper!1314 lt!2185512 (h!67850 s!2326)) (flatMap!802 lt!2185512 lambda!276556))))

(declare-fun bs!1242491 () Bool)

(assert (= bs!1242491 d!1718661))

(declare-fun m!6393480 () Bool)

(assert (=> bs!1242491 m!6393480))

(assert (=> b!5364522 d!1718661))

(declare-fun bs!1242492 () Bool)

(declare-fun d!1718663 () Bool)

(assert (= bs!1242492 (and d!1718663 b!5364515)))

(declare-fun lambda!276557 () Int)

(assert (=> bs!1242492 (= lambda!276557 lambda!276480)))

(declare-fun bs!1242493 () Bool)

(assert (= bs!1242493 (and d!1718663 d!1718661)))

(assert (=> bs!1242493 (= lambda!276557 lambda!276556)))

(assert (=> d!1718663 true))

(assert (=> d!1718663 (= (derivationStepZipper!1314 lt!2185510 (h!67850 s!2326)) (flatMap!802 lt!2185510 lambda!276557))))

(declare-fun bs!1242494 () Bool)

(assert (= bs!1242494 d!1718663))

(declare-fun m!6393482 () Bool)

(assert (=> bs!1242494 m!6393482))

(assert (=> b!5364521 d!1718663))

(declare-fun d!1718665 () Bool)

(assert (=> d!1718665 (= (flatMap!802 lt!2185510 lambda!276480) (choose!40285 lt!2185510 lambda!276480))))

(declare-fun bs!1242495 () Bool)

(assert (= bs!1242495 d!1718665))

(declare-fun m!6393484 () Bool)

(assert (=> bs!1242495 m!6393484))

(assert (=> b!5364521 d!1718665))

(assert (=> b!5364521 d!1718597))

(declare-fun d!1718667 () Bool)

(assert (=> d!1718667 (= (flatMap!802 lt!2185510 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185502))))

(declare-fun lt!2185656 () Unit!153818)

(assert (=> d!1718667 (= lt!2185656 (choose!40286 lt!2185510 lt!2185502 lambda!276480))))

(assert (=> d!1718667 (= lt!2185510 (store ((as const (Array Context!8918 Bool)) false) lt!2185502 true))))

(assert (=> d!1718667 (= (lemmaFlatMapOnSingletonSet!334 lt!2185510 lt!2185502 lambda!276480) lt!2185656)))

(declare-fun b_lambda!205695 () Bool)

(assert (=> (not b_lambda!205695) (not d!1718667)))

(declare-fun bs!1242496 () Bool)

(assert (= bs!1242496 d!1718667))

(assert (=> bs!1242496 m!6392664))

(declare-fun m!6393486 () Bool)

(assert (=> bs!1242496 m!6393486))

(declare-fun m!6393488 () Bool)

(assert (=> bs!1242496 m!6393488))

(assert (=> bs!1242496 m!6392668))

(assert (=> b!5364521 d!1718667))

(declare-fun b!5365400 () Bool)

(declare-fun e!3329618 () Bool)

(declare-fun tp!1489116 () Bool)

(declare-fun tp!1489117 () Bool)

(assert (=> b!5365400 (= e!3329618 (and tp!1489116 tp!1489117))))

(assert (=> b!5364494 (= tp!1489049 e!3329618)))

(assert (= (and b!5364494 ((_ is Cons!61400) (exprs!4959 setElem!34741))) b!5365400))

(declare-fun b!5365401 () Bool)

(declare-fun e!3329619 () Bool)

(declare-fun tp!1489118 () Bool)

(declare-fun tp!1489119 () Bool)

(assert (=> b!5365401 (= e!3329619 (and tp!1489118 tp!1489119))))

(assert (=> b!5364510 (= tp!1489052 e!3329619)))

(assert (= (and b!5364510 ((_ is Cons!61400) (exprs!4959 (h!67849 zl!343)))) b!5365401))

(declare-fun b!5365406 () Bool)

(declare-fun e!3329622 () Bool)

(declare-fun tp!1489122 () Bool)

(assert (=> b!5365406 (= e!3329622 (and tp_is_empty!39403 tp!1489122))))

(assert (=> b!5364529 (= tp!1489048 e!3329622)))

(assert (= (and b!5364529 ((_ is Cons!61402) (t!374747 s!2326))) b!5365406))

(declare-fun b!5365419 () Bool)

(declare-fun e!3329625 () Bool)

(declare-fun tp!1489133 () Bool)

(assert (=> b!5365419 (= e!3329625 tp!1489133)))

(declare-fun b!5365420 () Bool)

(declare-fun tp!1489134 () Bool)

(declare-fun tp!1489137 () Bool)

(assert (=> b!5365420 (= e!3329625 (and tp!1489134 tp!1489137))))

(declare-fun b!5365417 () Bool)

(assert (=> b!5365417 (= e!3329625 tp_is_empty!39403)))

(declare-fun b!5365418 () Bool)

(declare-fun tp!1489136 () Bool)

(declare-fun tp!1489135 () Bool)

(assert (=> b!5365418 (= e!3329625 (and tp!1489136 tp!1489135))))

(assert (=> b!5364499 (= tp!1489050 e!3329625)))

(assert (= (and b!5364499 ((_ is ElementMatch!15075) (reg!15404 r!7292))) b!5365417))

(assert (= (and b!5364499 ((_ is Concat!23920) (reg!15404 r!7292))) b!5365418))

(assert (= (and b!5364499 ((_ is Star!15075) (reg!15404 r!7292))) b!5365419))

(assert (= (and b!5364499 ((_ is Union!15075) (reg!15404 r!7292))) b!5365420))

(declare-fun b!5365423 () Bool)

(declare-fun e!3329626 () Bool)

(declare-fun tp!1489138 () Bool)

(assert (=> b!5365423 (= e!3329626 tp!1489138)))

(declare-fun b!5365424 () Bool)

(declare-fun tp!1489139 () Bool)

(declare-fun tp!1489142 () Bool)

(assert (=> b!5365424 (= e!3329626 (and tp!1489139 tp!1489142))))

(declare-fun b!5365421 () Bool)

(assert (=> b!5365421 (= e!3329626 tp_is_empty!39403)))

(declare-fun b!5365422 () Bool)

(declare-fun tp!1489141 () Bool)

(declare-fun tp!1489140 () Bool)

(assert (=> b!5365422 (= e!3329626 (and tp!1489141 tp!1489140))))

(assert (=> b!5364518 (= tp!1489051 e!3329626)))

(assert (= (and b!5364518 ((_ is ElementMatch!15075) (regOne!30662 r!7292))) b!5365421))

(assert (= (and b!5364518 ((_ is Concat!23920) (regOne!30662 r!7292))) b!5365422))

(assert (= (and b!5364518 ((_ is Star!15075) (regOne!30662 r!7292))) b!5365423))

(assert (= (and b!5364518 ((_ is Union!15075) (regOne!30662 r!7292))) b!5365424))

(declare-fun b!5365427 () Bool)

(declare-fun e!3329627 () Bool)

(declare-fun tp!1489143 () Bool)

(assert (=> b!5365427 (= e!3329627 tp!1489143)))

(declare-fun b!5365428 () Bool)

(declare-fun tp!1489144 () Bool)

(declare-fun tp!1489147 () Bool)

(assert (=> b!5365428 (= e!3329627 (and tp!1489144 tp!1489147))))

(declare-fun b!5365425 () Bool)

(assert (=> b!5365425 (= e!3329627 tp_is_empty!39403)))

(declare-fun b!5365426 () Bool)

(declare-fun tp!1489146 () Bool)

(declare-fun tp!1489145 () Bool)

(assert (=> b!5365426 (= e!3329627 (and tp!1489146 tp!1489145))))

(assert (=> b!5364518 (= tp!1489053 e!3329627)))

(assert (= (and b!5364518 ((_ is ElementMatch!15075) (regTwo!30662 r!7292))) b!5365425))

(assert (= (and b!5364518 ((_ is Concat!23920) (regTwo!30662 r!7292))) b!5365426))

(assert (= (and b!5364518 ((_ is Star!15075) (regTwo!30662 r!7292))) b!5365427))

(assert (= (and b!5364518 ((_ is Union!15075) (regTwo!30662 r!7292))) b!5365428))

(declare-fun condSetEmpty!34747 () Bool)

(assert (=> setNonEmpty!34741 (= condSetEmpty!34747 (= setRest!34741 ((as const (Array Context!8918 Bool)) false)))))

(declare-fun setRes!34747 () Bool)

(assert (=> setNonEmpty!34741 (= tp!1489044 setRes!34747)))

(declare-fun setIsEmpty!34747 () Bool)

(assert (=> setIsEmpty!34747 setRes!34747))

(declare-fun setElem!34747 () Context!8918)

(declare-fun tp!1489153 () Bool)

(declare-fun setNonEmpty!34747 () Bool)

(declare-fun e!3329630 () Bool)

(assert (=> setNonEmpty!34747 (= setRes!34747 (and tp!1489153 (inv!80934 setElem!34747) e!3329630))))

(declare-fun setRest!34747 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34747 (= setRest!34741 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34747 true) setRest!34747))))

(declare-fun b!5365433 () Bool)

(declare-fun tp!1489152 () Bool)

(assert (=> b!5365433 (= e!3329630 tp!1489152)))

(assert (= (and setNonEmpty!34741 condSetEmpty!34747) setIsEmpty!34747))

(assert (= (and setNonEmpty!34741 (not condSetEmpty!34747)) setNonEmpty!34747))

(assert (= setNonEmpty!34747 b!5365433))

(declare-fun m!6393490 () Bool)

(assert (=> setNonEmpty!34747 m!6393490))

(declare-fun b!5365436 () Bool)

(declare-fun e!3329631 () Bool)

(declare-fun tp!1489154 () Bool)

(assert (=> b!5365436 (= e!3329631 tp!1489154)))

(declare-fun b!5365437 () Bool)

(declare-fun tp!1489155 () Bool)

(declare-fun tp!1489158 () Bool)

(assert (=> b!5365437 (= e!3329631 (and tp!1489155 tp!1489158))))

(declare-fun b!5365434 () Bool)

(assert (=> b!5365434 (= e!3329631 tp_is_empty!39403)))

(declare-fun b!5365435 () Bool)

(declare-fun tp!1489157 () Bool)

(declare-fun tp!1489156 () Bool)

(assert (=> b!5365435 (= e!3329631 (and tp!1489157 tp!1489156))))

(assert (=> b!5364512 (= tp!1489047 e!3329631)))

(assert (= (and b!5364512 ((_ is ElementMatch!15075) (regOne!30663 r!7292))) b!5365434))

(assert (= (and b!5364512 ((_ is Concat!23920) (regOne!30663 r!7292))) b!5365435))

(assert (= (and b!5364512 ((_ is Star!15075) (regOne!30663 r!7292))) b!5365436))

(assert (= (and b!5364512 ((_ is Union!15075) (regOne!30663 r!7292))) b!5365437))

(declare-fun b!5365440 () Bool)

(declare-fun e!3329632 () Bool)

(declare-fun tp!1489159 () Bool)

(assert (=> b!5365440 (= e!3329632 tp!1489159)))

(declare-fun b!5365441 () Bool)

(declare-fun tp!1489160 () Bool)

(declare-fun tp!1489163 () Bool)

(assert (=> b!5365441 (= e!3329632 (and tp!1489160 tp!1489163))))

(declare-fun b!5365438 () Bool)

(assert (=> b!5365438 (= e!3329632 tp_is_empty!39403)))

(declare-fun b!5365439 () Bool)

(declare-fun tp!1489162 () Bool)

(declare-fun tp!1489161 () Bool)

(assert (=> b!5365439 (= e!3329632 (and tp!1489162 tp!1489161))))

(assert (=> b!5364512 (= tp!1489045 e!3329632)))

(assert (= (and b!5364512 ((_ is ElementMatch!15075) (regTwo!30663 r!7292))) b!5365438))

(assert (= (and b!5364512 ((_ is Concat!23920) (regTwo!30663 r!7292))) b!5365439))

(assert (= (and b!5364512 ((_ is Star!15075) (regTwo!30663 r!7292))) b!5365440))

(assert (= (and b!5364512 ((_ is Union!15075) (regTwo!30663 r!7292))) b!5365441))

(declare-fun b!5365449 () Bool)

(declare-fun e!3329638 () Bool)

(declare-fun tp!1489168 () Bool)

(assert (=> b!5365449 (= e!3329638 tp!1489168)))

(declare-fun e!3329637 () Bool)

(declare-fun b!5365448 () Bool)

(declare-fun tp!1489169 () Bool)

(assert (=> b!5365448 (= e!3329637 (and (inv!80934 (h!67849 (t!374746 zl!343))) e!3329638 tp!1489169))))

(assert (=> b!5364490 (= tp!1489046 e!3329637)))

(assert (= b!5365448 b!5365449))

(assert (= (and b!5364490 ((_ is Cons!61401) (t!374746 zl!343))) b!5365448))

(declare-fun m!6393492 () Bool)

(assert (=> b!5365448 m!6393492))

(declare-fun b_lambda!205697 () Bool)

(assert (= b_lambda!205695 (or b!5364515 b_lambda!205697)))

(declare-fun bs!1242497 () Bool)

(declare-fun d!1718669 () Bool)

(assert (= bs!1242497 (and d!1718669 b!5364515)))

(assert (=> bs!1242497 (= (dynLambda!24252 lambda!276480 lt!2185502) (derivationStepZipperUp!447 lt!2185502 (h!67850 s!2326)))))

(assert (=> bs!1242497 m!6392660))

(assert (=> d!1718667 d!1718669))

(declare-fun b_lambda!205699 () Bool)

(assert (= b_lambda!205693 (or b!5364515 b_lambda!205699)))

(declare-fun bs!1242498 () Bool)

(declare-fun d!1718671 () Bool)

(assert (= bs!1242498 (and d!1718671 b!5364515)))

(assert (=> bs!1242498 (= (dynLambda!24252 lambda!276480 lt!2185509) (derivationStepZipperUp!447 lt!2185509 (h!67850 s!2326)))))

(assert (=> bs!1242498 m!6392694))

(assert (=> d!1718659 d!1718671))

(declare-fun b_lambda!205701 () Bool)

(assert (= b_lambda!205673 (or b!5364515 b_lambda!205701)))

(declare-fun bs!1242499 () Bool)

(declare-fun d!1718673 () Bool)

(assert (= bs!1242499 (and d!1718673 b!5364515)))

(assert (=> bs!1242499 (= (dynLambda!24252 lambda!276480 lt!2185523) (derivationStepZipperUp!447 lt!2185523 (h!67850 s!2326)))))

(assert (=> bs!1242499 m!6392644))

(assert (=> d!1718491 d!1718673))

(declare-fun b_lambda!205703 () Bool)

(assert (= b_lambda!205689 (or b!5364515 b_lambda!205703)))

(declare-fun bs!1242500 () Bool)

(declare-fun d!1718675 () Bool)

(assert (= bs!1242500 (and d!1718675 b!5364515)))

(assert (=> bs!1242500 (= (dynLambda!24252 lambda!276480 (h!67849 zl!343)) (derivationStepZipperUp!447 (h!67849 zl!343) (h!67850 s!2326)))))

(assert (=> bs!1242500 m!6392726))

(assert (=> d!1718599 d!1718675))

(declare-fun b_lambda!205705 () Bool)

(assert (= b_lambda!205691 (or b!5364523 b_lambda!205705)))

(declare-fun bs!1242501 () Bool)

(declare-fun d!1718677 () Bool)

(assert (= bs!1242501 (and d!1718677 b!5364523)))

(assert (=> bs!1242501 (= (dynLambda!24253 lambda!276483 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))) (validRegex!6811 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun m!6393494 () Bool)

(assert (=> bs!1242501 m!6393494))

(assert (=> b!5365384 d!1718677))

(declare-fun b_lambda!205707 () Bool)

(assert (= b_lambda!205671 (or b!5364515 b_lambda!205707)))

(declare-fun bs!1242502 () Bool)

(declare-fun d!1718679 () Bool)

(assert (= bs!1242502 (and d!1718679 b!5364515)))

(assert (=> bs!1242502 (= (dynLambda!24252 lambda!276480 lt!2185533) (derivationStepZipperUp!447 lt!2185533 (h!67850 s!2326)))))

(assert (=> bs!1242502 m!6392642))

(assert (=> d!1718483 d!1718679))

(check-sat (not b!5365348) (not b!5365428) (not d!1718645) (not b!5365424) (not bm!383857) (not b!5365082) (not b!5365401) (not b!5365278) (not b!5365361) (not b!5365260) (not b!5365089) (not b!5365231) (not d!1718605) (not bm!383874) (not d!1718621) (not d!1718639) (not b!5365264) (not b!5365426) (not d!1718587) (not d!1718617) (not bm!383855) (not d!1718583) (not b!5365187) (not bs!1242498) (not b!5365449) (not b!5365090) (not b!5365235) (not d!1718567) (not b!5365144) (not d!1718569) (not b!5364977) (not b!5365294) (not d!1718603) (not b!5365391) (not b!5365196) (not b!5365406) (not bs!1242502) (not b!5365420) (not d!1718649) (not b!5365296) (not b!5365335) (not d!1718609) (not b!5364981) (not d!1718619) (not b!5365104) (not b!5365441) (not b!5364985) (not d!1718653) (not b!5365363) (not b!5365280) (not d!1718615) (not b!5365204) (not b!5365087) (not d!1718661) (not d!1718611) (not b!5364980) (not b!5365274) (not b!5365437) (not d!1718483) (not b!5365392) (not b_lambda!205707) (not b!5365095) (not b_lambda!205699) (not d!1718633) (not setNonEmpty!34747) (not b!5365175) (not bm!383859) (not bm!383841) (not b!5365103) (not b!5365448) (not bs!1242501) (not b!5365360) (not b!5365209) (not b!5365349) (not b!5365262) (not b!5364979) (not d!1718565) (not b!5365433) (not b!5365419) (not b!5365418) (not b!5364864) (not d!1718491) (not b!5365330) (not d!1718549) (not d!1718601) (not b_lambda!205705) (not b!5364978) (not bm!383861) (not bm!383876) (not b!5365388) (not b!5365439) (not d!1718545) (not b!5365281) (not d!1718627) (not b!5365269) (not b!5365232) (not b!5365111) (not bm!383877) (not bm!383860) (not d!1718547) (not d!1718665) (not d!1718667) (not d!1718531) (not b_lambda!205703) (not b!5365230) (not b!5364863) (not d!1718585) (not d!1718663) (not bs!1242500) (not bs!1242499) (not d!1718469) (not bm!383862) (not b_lambda!205697) (not d!1718509) (not bm!383824) (not bm!383840) (not b!5365105) (not bm!383875) (not bm!383816) (not b!5364834) (not b!5365295) (not d!1718551) (not b!5365435) (not b!5365188) (not b!5364802) (not b_lambda!205701) (not b!5365183) (not b!5365436) (not b!5365145) (not d!1718589) (not d!1718659) (not bm!383868) (not bm!383815) (not b!5365237) (not bm!383866) (not b!5365265) (not b!5365354) (not b!5364833) (not b!5365440) (not d!1718511) (not b!5365267) (not b!5365195) (not b!5365238) (not b!5365355) (not bm!383879) (not b!5365025) (not b!5365088) (not d!1718495) (not d!1718641) (not d!1718613) (not b!5365263) (not bs!1242497) (not b!5365194) (not b!5365385) (not b!5365400) (not b!5365279) (not b!5365289) (not b!5365234) (not b!5365026) (not b!5365106) (not b!5365182) (not b!5365201) (not d!1718543) (not b!5365282) (not d!1718629) (not b!5365423) (not bm!383828) (not bm!383878) (not d!1718599) (not b!5365347) (not bm!383873) (not b!5365427) (not d!1718537) (not d!1718623) (not b!5365362) (not b!5365374) (not bm!383864) (not b!5365202) (not d!1718625) (not b!5365297) (not b!5365368) (not b!5365107) (not b!5365369) (not d!1718635) (not b!5365203) (not b!5365341) (not b!5365422) (not b!5365346) tp_is_empty!39403 (not d!1718655) (not d!1718497))
(check-sat)
(get-model)

(declare-fun b!5365450 () Bool)

(declare-fun e!3329642 () Bool)

(assert (=> b!5365450 (= e!3329642 (= (head!11510 (tail!10607 s!2326)) (c!934311 (derivativeStep!4217 lt!2185527 (head!11510 s!2326)))))))

(declare-fun b!5365451 () Bool)

(declare-fun res!2277042 () Bool)

(assert (=> b!5365451 (=> (not res!2277042) (not e!3329642))))

(declare-fun call!383885 () Bool)

(assert (=> b!5365451 (= res!2277042 (not call!383885))))

(declare-fun b!5365452 () Bool)

(declare-fun res!2277045 () Bool)

(declare-fun e!3329639 () Bool)

(assert (=> b!5365452 (=> res!2277045 e!3329639)))

(assert (=> b!5365452 (= res!2277045 e!3329642)))

(declare-fun res!2277039 () Bool)

(assert (=> b!5365452 (=> (not res!2277039) (not e!3329642))))

(declare-fun lt!2185657 () Bool)

(assert (=> b!5365452 (= res!2277039 lt!2185657)))

(declare-fun b!5365453 () Bool)

(declare-fun e!3329643 () Bool)

(declare-fun e!3329640 () Bool)

(assert (=> b!5365453 (= e!3329643 e!3329640)))

(declare-fun c!934560 () Bool)

(assert (=> b!5365453 (= c!934560 ((_ is EmptyLang!15075) (derivativeStep!4217 lt!2185527 (head!11510 s!2326))))))

(declare-fun b!5365454 () Bool)

(declare-fun e!3329644 () Bool)

(declare-fun e!3329641 () Bool)

(assert (=> b!5365454 (= e!3329644 e!3329641)))

(declare-fun res!2277038 () Bool)

(assert (=> b!5365454 (=> res!2277038 e!3329641)))

(assert (=> b!5365454 (= res!2277038 call!383885)))

(declare-fun b!5365455 () Bool)

(assert (=> b!5365455 (= e!3329641 (not (= (head!11510 (tail!10607 s!2326)) (c!934311 (derivativeStep!4217 lt!2185527 (head!11510 s!2326))))))))

(declare-fun b!5365456 () Bool)

(declare-fun e!3329645 () Bool)

(assert (=> b!5365456 (= e!3329645 (matchR!7260 (derivativeStep!4217 (derivativeStep!4217 lt!2185527 (head!11510 s!2326)) (head!11510 (tail!10607 s!2326))) (tail!10607 (tail!10607 s!2326))))))

(declare-fun b!5365458 () Bool)

(declare-fun res!2277043 () Bool)

(assert (=> b!5365458 (=> res!2277043 e!3329641)))

(assert (=> b!5365458 (= res!2277043 (not (isEmpty!33377 (tail!10607 (tail!10607 s!2326)))))))

(declare-fun b!5365459 () Bool)

(assert (=> b!5365459 (= e!3329639 e!3329644)))

(declare-fun res!2277044 () Bool)

(assert (=> b!5365459 (=> (not res!2277044) (not e!3329644))))

(assert (=> b!5365459 (= res!2277044 (not lt!2185657))))

(declare-fun bm!383880 () Bool)

(assert (=> bm!383880 (= call!383885 (isEmpty!33377 (tail!10607 s!2326)))))

(declare-fun b!5365460 () Bool)

(assert (=> b!5365460 (= e!3329640 (not lt!2185657))))

(declare-fun b!5365461 () Bool)

(assert (=> b!5365461 (= e!3329643 (= lt!2185657 call!383885))))

(declare-fun b!5365462 () Bool)

(declare-fun res!2277040 () Bool)

(assert (=> b!5365462 (=> res!2277040 e!3329639)))

(assert (=> b!5365462 (= res!2277040 (not ((_ is ElementMatch!15075) (derivativeStep!4217 lt!2185527 (head!11510 s!2326)))))))

(assert (=> b!5365462 (= e!3329640 e!3329639)))

(declare-fun b!5365463 () Bool)

(declare-fun res!2277041 () Bool)

(assert (=> b!5365463 (=> (not res!2277041) (not e!3329642))))

(assert (=> b!5365463 (= res!2277041 (isEmpty!33377 (tail!10607 (tail!10607 s!2326))))))

(declare-fun d!1718681 () Bool)

(assert (=> d!1718681 e!3329643))

(declare-fun c!934559 () Bool)

(assert (=> d!1718681 (= c!934559 ((_ is EmptyExpr!15075) (derivativeStep!4217 lt!2185527 (head!11510 s!2326))))))

(assert (=> d!1718681 (= lt!2185657 e!3329645)))

(declare-fun c!934558 () Bool)

(assert (=> d!1718681 (= c!934558 (isEmpty!33377 (tail!10607 s!2326)))))

(assert (=> d!1718681 (validRegex!6811 (derivativeStep!4217 lt!2185527 (head!11510 s!2326)))))

(assert (=> d!1718681 (= (matchR!7260 (derivativeStep!4217 lt!2185527 (head!11510 s!2326)) (tail!10607 s!2326)) lt!2185657)))

(declare-fun b!5365457 () Bool)

(assert (=> b!5365457 (= e!3329645 (nullable!5244 (derivativeStep!4217 lt!2185527 (head!11510 s!2326))))))

(assert (= (and d!1718681 c!934558) b!5365457))

(assert (= (and d!1718681 (not c!934558)) b!5365456))

(assert (= (and d!1718681 c!934559) b!5365461))

(assert (= (and d!1718681 (not c!934559)) b!5365453))

(assert (= (and b!5365453 c!934560) b!5365460))

(assert (= (and b!5365453 (not c!934560)) b!5365462))

(assert (= (and b!5365462 (not res!2277040)) b!5365452))

(assert (= (and b!5365452 res!2277039) b!5365451))

(assert (= (and b!5365451 res!2277042) b!5365463))

(assert (= (and b!5365463 res!2277041) b!5365450))

(assert (= (and b!5365452 (not res!2277045)) b!5365459))

(assert (= (and b!5365459 res!2277044) b!5365454))

(assert (= (and b!5365454 (not res!2277038)) b!5365458))

(assert (= (and b!5365458 (not res!2277043)) b!5365455))

(assert (= (or b!5365461 b!5365451 b!5365454) bm!383880))

(assert (=> bm!383880 m!6393416))

(assert (=> bm!383880 m!6393434))

(assert (=> b!5365457 m!6393444))

(declare-fun m!6393496 () Bool)

(assert (=> b!5365457 m!6393496))

(assert (=> b!5365463 m!6393416))

(declare-fun m!6393498 () Bool)

(assert (=> b!5365463 m!6393498))

(assert (=> b!5365463 m!6393498))

(declare-fun m!6393500 () Bool)

(assert (=> b!5365463 m!6393500))

(assert (=> b!5365456 m!6393416))

(declare-fun m!6393502 () Bool)

(assert (=> b!5365456 m!6393502))

(assert (=> b!5365456 m!6393444))

(assert (=> b!5365456 m!6393502))

(declare-fun m!6393504 () Bool)

(assert (=> b!5365456 m!6393504))

(assert (=> b!5365456 m!6393416))

(assert (=> b!5365456 m!6393498))

(assert (=> b!5365456 m!6393504))

(assert (=> b!5365456 m!6393498))

(declare-fun m!6393506 () Bool)

(assert (=> b!5365456 m!6393506))

(assert (=> b!5365455 m!6393416))

(assert (=> b!5365455 m!6393502))

(assert (=> b!5365458 m!6393416))

(assert (=> b!5365458 m!6393498))

(assert (=> b!5365458 m!6393498))

(assert (=> b!5365458 m!6393500))

(assert (=> d!1718681 m!6393416))

(assert (=> d!1718681 m!6393434))

(assert (=> d!1718681 m!6393444))

(declare-fun m!6393508 () Bool)

(assert (=> d!1718681 m!6393508))

(assert (=> b!5365450 m!6393416))

(assert (=> b!5365450 m!6393502))

(assert (=> b!5365361 d!1718681))

(declare-fun b!5365484 () Bool)

(declare-fun e!3329658 () Regex!15075)

(assert (=> b!5365484 (= e!3329658 (ite (= (head!11510 s!2326) (c!934311 lt!2185527)) EmptyExpr!15075 EmptyLang!15075))))

(declare-fun b!5365486 () Bool)

(declare-fun e!3329657 () Regex!15075)

(assert (=> b!5365486 (= e!3329657 e!3329658)))

(declare-fun c!934572 () Bool)

(assert (=> b!5365486 (= c!934572 ((_ is ElementMatch!15075) lt!2185527))))

(declare-fun e!3329659 () Regex!15075)

(declare-fun b!5365487 () Bool)

(declare-fun call!383894 () Regex!15075)

(declare-fun call!383896 () Regex!15075)

(assert (=> b!5365487 (= e!3329659 (Union!15075 (Concat!23920 call!383896 (regTwo!30662 lt!2185527)) call!383894))))

(declare-fun b!5365488 () Bool)

(declare-fun c!934574 () Bool)

(assert (=> b!5365488 (= c!934574 ((_ is Union!15075) lt!2185527))))

(declare-fun e!3329660 () Regex!15075)

(assert (=> b!5365488 (= e!3329658 e!3329660)))

(declare-fun bm!383889 () Bool)

(declare-fun call!383895 () Regex!15075)

(assert (=> bm!383889 (= call!383894 call!383895)))

(declare-fun bm!383890 () Bool)

(declare-fun call!383897 () Regex!15075)

(assert (=> bm!383890 (= call!383895 call!383897)))

(declare-fun b!5365489 () Bool)

(assert (=> b!5365489 (= e!3329660 (Union!15075 call!383896 call!383897))))

(declare-fun b!5365490 () Bool)

(declare-fun c!934571 () Bool)

(assert (=> b!5365490 (= c!934571 (nullable!5244 (regOne!30662 lt!2185527)))))

(declare-fun e!3329656 () Regex!15075)

(assert (=> b!5365490 (= e!3329656 e!3329659)))

(declare-fun b!5365491 () Bool)

(assert (=> b!5365491 (= e!3329657 EmptyLang!15075)))

(declare-fun d!1718683 () Bool)

(declare-fun lt!2185660 () Regex!15075)

(assert (=> d!1718683 (validRegex!6811 lt!2185660)))

(assert (=> d!1718683 (= lt!2185660 e!3329657)))

(declare-fun c!934575 () Bool)

(assert (=> d!1718683 (= c!934575 (or ((_ is EmptyExpr!15075) lt!2185527) ((_ is EmptyLang!15075) lt!2185527)))))

(assert (=> d!1718683 (validRegex!6811 lt!2185527)))

(assert (=> d!1718683 (= (derivativeStep!4217 lt!2185527 (head!11510 s!2326)) lt!2185660)))

(declare-fun b!5365485 () Bool)

(assert (=> b!5365485 (= e!3329660 e!3329656)))

(declare-fun c!934573 () Bool)

(assert (=> b!5365485 (= c!934573 ((_ is Star!15075) lt!2185527))))

(declare-fun b!5365492 () Bool)

(assert (=> b!5365492 (= e!3329656 (Concat!23920 call!383895 lt!2185527))))

(declare-fun b!5365493 () Bool)

(assert (=> b!5365493 (= e!3329659 (Union!15075 (Concat!23920 call!383894 (regTwo!30662 lt!2185527)) EmptyLang!15075))))

(declare-fun bm!383891 () Bool)

(assert (=> bm!383891 (= call!383897 (derivativeStep!4217 (ite c!934574 (regTwo!30663 lt!2185527) (ite c!934573 (reg!15404 lt!2185527) (ite c!934571 (regTwo!30662 lt!2185527) (regOne!30662 lt!2185527)))) (head!11510 s!2326)))))

(declare-fun bm!383892 () Bool)

(assert (=> bm!383892 (= call!383896 (derivativeStep!4217 (ite c!934574 (regOne!30663 lt!2185527) (regOne!30662 lt!2185527)) (head!11510 s!2326)))))

(assert (= (and d!1718683 c!934575) b!5365491))

(assert (= (and d!1718683 (not c!934575)) b!5365486))

(assert (= (and b!5365486 c!934572) b!5365484))

(assert (= (and b!5365486 (not c!934572)) b!5365488))

(assert (= (and b!5365488 c!934574) b!5365489))

(assert (= (and b!5365488 (not c!934574)) b!5365485))

(assert (= (and b!5365485 c!934573) b!5365492))

(assert (= (and b!5365485 (not c!934573)) b!5365490))

(assert (= (and b!5365490 c!934571) b!5365487))

(assert (= (and b!5365490 (not c!934571)) b!5365493))

(assert (= (or b!5365487 b!5365493) bm!383889))

(assert (= (or b!5365492 bm!383889) bm!383890))

(assert (= (or b!5365489 bm!383890) bm!383891))

(assert (= (or b!5365489 b!5365487) bm!383892))

(declare-fun m!6393510 () Bool)

(assert (=> b!5365490 m!6393510))

(declare-fun m!6393512 () Bool)

(assert (=> d!1718683 m!6393512))

(assert (=> d!1718683 m!6393448))

(assert (=> bm!383891 m!6393412))

(declare-fun m!6393514 () Bool)

(assert (=> bm!383891 m!6393514))

(assert (=> bm!383892 m!6393412))

(declare-fun m!6393516 () Bool)

(assert (=> bm!383892 m!6393516))

(assert (=> b!5365361 d!1718683))

(declare-fun d!1718685 () Bool)

(assert (=> d!1718685 (= (head!11510 s!2326) (h!67850 s!2326))))

(assert (=> b!5365361 d!1718685))

(declare-fun d!1718687 () Bool)

(assert (=> d!1718687 (= (tail!10607 s!2326) (t!374747 s!2326))))

(assert (=> b!5365361 d!1718687))

(declare-fun d!1718689 () Bool)

(declare-fun c!934578 () Bool)

(assert (=> d!1718689 (= c!934578 ((_ is Nil!61402) lt!2185615))))

(declare-fun e!3329663 () (InoxSet C!30420))

(assert (=> d!1718689 (= (content!10965 lt!2185615) e!3329663)))

(declare-fun b!5365498 () Bool)

(assert (=> b!5365498 (= e!3329663 ((as const (Array C!30420 Bool)) false))))

(declare-fun b!5365499 () Bool)

(assert (=> b!5365499 (= e!3329663 ((_ map or) (store ((as const (Array C!30420 Bool)) false) (h!67850 lt!2185615) true) (content!10965 (t!374747 lt!2185615))))))

(assert (= (and d!1718689 c!934578) b!5365498))

(assert (= (and d!1718689 (not c!934578)) b!5365499))

(declare-fun m!6393518 () Bool)

(assert (=> b!5365499 m!6393518))

(declare-fun m!6393520 () Bool)

(assert (=> b!5365499 m!6393520))

(assert (=> d!1718547 d!1718689))

(declare-fun d!1718691 () Bool)

(declare-fun c!934579 () Bool)

(assert (=> d!1718691 (= c!934579 ((_ is Nil!61402) (_1!35577 lt!2185500)))))

(declare-fun e!3329664 () (InoxSet C!30420))

(assert (=> d!1718691 (= (content!10965 (_1!35577 lt!2185500)) e!3329664)))

(declare-fun b!5365500 () Bool)

(assert (=> b!5365500 (= e!3329664 ((as const (Array C!30420 Bool)) false))))

(declare-fun b!5365501 () Bool)

(assert (=> b!5365501 (= e!3329664 ((_ map or) (store ((as const (Array C!30420 Bool)) false) (h!67850 (_1!35577 lt!2185500)) true) (content!10965 (t!374747 (_1!35577 lt!2185500)))))))

(assert (= (and d!1718691 c!934579) b!5365500))

(assert (= (and d!1718691 (not c!934579)) b!5365501))

(declare-fun m!6393522 () Bool)

(assert (=> b!5365501 m!6393522))

(declare-fun m!6393524 () Bool)

(assert (=> b!5365501 m!6393524))

(assert (=> d!1718547 d!1718691))

(declare-fun d!1718693 () Bool)

(declare-fun c!934580 () Bool)

(assert (=> d!1718693 (= c!934580 ((_ is Nil!61402) (_2!35577 lt!2185500)))))

(declare-fun e!3329665 () (InoxSet C!30420))

(assert (=> d!1718693 (= (content!10965 (_2!35577 lt!2185500)) e!3329665)))

(declare-fun b!5365502 () Bool)

(assert (=> b!5365502 (= e!3329665 ((as const (Array C!30420 Bool)) false))))

(declare-fun b!5365503 () Bool)

(assert (=> b!5365503 (= e!3329665 ((_ map or) (store ((as const (Array C!30420 Bool)) false) (h!67850 (_2!35577 lt!2185500)) true) (content!10965 (t!374747 (_2!35577 lt!2185500)))))))

(assert (= (and d!1718693 c!934580) b!5365502))

(assert (= (and d!1718693 (not c!934580)) b!5365503))

(declare-fun m!6393526 () Bool)

(assert (=> b!5365503 m!6393526))

(declare-fun m!6393528 () Bool)

(assert (=> b!5365503 m!6393528))

(assert (=> d!1718547 d!1718693))

(declare-fun d!1718695 () Bool)

(assert (=> d!1718695 (= (isEmpty!33377 s!2326) ((_ is Nil!61402) s!2326))))

(assert (=> bm!383877 d!1718695))

(declare-fun d!1718697 () Bool)

(assert (=> d!1718697 (= (nullable!5244 (h!67848 (exprs!4959 lt!2185509))) (nullableFct!1548 (h!67848 (exprs!4959 lt!2185509))))))

(declare-fun bs!1242503 () Bool)

(assert (= bs!1242503 d!1718697))

(declare-fun m!6393530 () Bool)

(assert (=> bs!1242503 m!6393530))

(assert (=> b!5365392 d!1718697))

(declare-fun d!1718699 () Bool)

(assert (=> d!1718699 (= (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))) (nullableFct!1548 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun bs!1242504 () Bool)

(assert (= bs!1242504 d!1718699))

(declare-fun m!6393532 () Bool)

(assert (=> bs!1242504 m!6393532))

(assert (=> b!5365175 d!1718699))

(declare-fun b!5365504 () Bool)

(declare-fun e!3329669 () Bool)

(assert (=> b!5365504 (= e!3329669 (= (head!11510 (tail!10607 s!2326)) (c!934311 (derivativeStep!4217 r!7292 (head!11510 s!2326)))))))

(declare-fun b!5365505 () Bool)

(declare-fun res!2277050 () Bool)

(assert (=> b!5365505 (=> (not res!2277050) (not e!3329669))))

(declare-fun call!383898 () Bool)

(assert (=> b!5365505 (= res!2277050 (not call!383898))))

(declare-fun b!5365506 () Bool)

(declare-fun res!2277053 () Bool)

(declare-fun e!3329666 () Bool)

(assert (=> b!5365506 (=> res!2277053 e!3329666)))

(assert (=> b!5365506 (= res!2277053 e!3329669)))

(declare-fun res!2277047 () Bool)

(assert (=> b!5365506 (=> (not res!2277047) (not e!3329669))))

(declare-fun lt!2185661 () Bool)

(assert (=> b!5365506 (= res!2277047 lt!2185661)))

(declare-fun b!5365507 () Bool)

(declare-fun e!3329670 () Bool)

(declare-fun e!3329667 () Bool)

(assert (=> b!5365507 (= e!3329670 e!3329667)))

(declare-fun c!934583 () Bool)

(assert (=> b!5365507 (= c!934583 ((_ is EmptyLang!15075) (derivativeStep!4217 r!7292 (head!11510 s!2326))))))

(declare-fun b!5365508 () Bool)

(declare-fun e!3329671 () Bool)

(declare-fun e!3329668 () Bool)

(assert (=> b!5365508 (= e!3329671 e!3329668)))

(declare-fun res!2277046 () Bool)

(assert (=> b!5365508 (=> res!2277046 e!3329668)))

(assert (=> b!5365508 (= res!2277046 call!383898)))

(declare-fun b!5365509 () Bool)

(assert (=> b!5365509 (= e!3329668 (not (= (head!11510 (tail!10607 s!2326)) (c!934311 (derivativeStep!4217 r!7292 (head!11510 s!2326))))))))

(declare-fun b!5365510 () Bool)

(declare-fun e!3329672 () Bool)

(assert (=> b!5365510 (= e!3329672 (matchR!7260 (derivativeStep!4217 (derivativeStep!4217 r!7292 (head!11510 s!2326)) (head!11510 (tail!10607 s!2326))) (tail!10607 (tail!10607 s!2326))))))

(declare-fun b!5365512 () Bool)

(declare-fun res!2277051 () Bool)

(assert (=> b!5365512 (=> res!2277051 e!3329668)))

(assert (=> b!5365512 (= res!2277051 (not (isEmpty!33377 (tail!10607 (tail!10607 s!2326)))))))

(declare-fun b!5365513 () Bool)

(assert (=> b!5365513 (= e!3329666 e!3329671)))

(declare-fun res!2277052 () Bool)

(assert (=> b!5365513 (=> (not res!2277052) (not e!3329671))))

(assert (=> b!5365513 (= res!2277052 (not lt!2185661))))

(declare-fun bm!383893 () Bool)

(assert (=> bm!383893 (= call!383898 (isEmpty!33377 (tail!10607 s!2326)))))

(declare-fun b!5365514 () Bool)

(assert (=> b!5365514 (= e!3329667 (not lt!2185661))))

(declare-fun b!5365515 () Bool)

(assert (=> b!5365515 (= e!3329670 (= lt!2185661 call!383898))))

(declare-fun b!5365516 () Bool)

(declare-fun res!2277048 () Bool)

(assert (=> b!5365516 (=> res!2277048 e!3329666)))

(assert (=> b!5365516 (= res!2277048 (not ((_ is ElementMatch!15075) (derivativeStep!4217 r!7292 (head!11510 s!2326)))))))

(assert (=> b!5365516 (= e!3329667 e!3329666)))

(declare-fun b!5365517 () Bool)

(declare-fun res!2277049 () Bool)

(assert (=> b!5365517 (=> (not res!2277049) (not e!3329669))))

(assert (=> b!5365517 (= res!2277049 (isEmpty!33377 (tail!10607 (tail!10607 s!2326))))))

(declare-fun d!1718701 () Bool)

(assert (=> d!1718701 e!3329670))

(declare-fun c!934582 () Bool)

(assert (=> d!1718701 (= c!934582 ((_ is EmptyExpr!15075) (derivativeStep!4217 r!7292 (head!11510 s!2326))))))

(assert (=> d!1718701 (= lt!2185661 e!3329672)))

(declare-fun c!934581 () Bool)

(assert (=> d!1718701 (= c!934581 (isEmpty!33377 (tail!10607 s!2326)))))

(assert (=> d!1718701 (validRegex!6811 (derivativeStep!4217 r!7292 (head!11510 s!2326)))))

(assert (=> d!1718701 (= (matchR!7260 (derivativeStep!4217 r!7292 (head!11510 s!2326)) (tail!10607 s!2326)) lt!2185661)))

(declare-fun b!5365511 () Bool)

(assert (=> b!5365511 (= e!3329672 (nullable!5244 (derivativeStep!4217 r!7292 (head!11510 s!2326))))))

(assert (= (and d!1718701 c!934581) b!5365511))

(assert (= (and d!1718701 (not c!934581)) b!5365510))

(assert (= (and d!1718701 c!934582) b!5365515))

(assert (= (and d!1718701 (not c!934582)) b!5365507))

(assert (= (and b!5365507 c!934583) b!5365514))

(assert (= (and b!5365507 (not c!934583)) b!5365516))

(assert (= (and b!5365516 (not res!2277048)) b!5365506))

(assert (= (and b!5365506 res!2277047) b!5365505))

(assert (= (and b!5365505 res!2277050) b!5365517))

(assert (= (and b!5365517 res!2277049) b!5365504))

(assert (= (and b!5365506 (not res!2277053)) b!5365513))

(assert (= (and b!5365513 res!2277052) b!5365508))

(assert (= (and b!5365508 (not res!2277046)) b!5365512))

(assert (= (and b!5365512 (not res!2277051)) b!5365509))

(assert (= (or b!5365515 b!5365505 b!5365508) bm!383893))

(assert (=> bm!383893 m!6393416))

(assert (=> bm!383893 m!6393434))

(assert (=> b!5365511 m!6393436))

(declare-fun m!6393534 () Bool)

(assert (=> b!5365511 m!6393534))

(assert (=> b!5365517 m!6393416))

(assert (=> b!5365517 m!6393498))

(assert (=> b!5365517 m!6393498))

(assert (=> b!5365517 m!6393500))

(assert (=> b!5365510 m!6393416))

(assert (=> b!5365510 m!6393502))

(assert (=> b!5365510 m!6393436))

(assert (=> b!5365510 m!6393502))

(declare-fun m!6393536 () Bool)

(assert (=> b!5365510 m!6393536))

(assert (=> b!5365510 m!6393416))

(assert (=> b!5365510 m!6393498))

(assert (=> b!5365510 m!6393536))

(assert (=> b!5365510 m!6393498))

(declare-fun m!6393538 () Bool)

(assert (=> b!5365510 m!6393538))

(assert (=> b!5365509 m!6393416))

(assert (=> b!5365509 m!6393502))

(assert (=> b!5365512 m!6393416))

(assert (=> b!5365512 m!6393498))

(assert (=> b!5365512 m!6393498))

(assert (=> b!5365512 m!6393500))

(assert (=> d!1718701 m!6393416))

(assert (=> d!1718701 m!6393434))

(assert (=> d!1718701 m!6393436))

(declare-fun m!6393540 () Bool)

(assert (=> d!1718701 m!6393540))

(assert (=> b!5365504 m!6393416))

(assert (=> b!5365504 m!6393502))

(assert (=> b!5365347 d!1718701))

(declare-fun b!5365518 () Bool)

(declare-fun e!3329675 () Regex!15075)

(assert (=> b!5365518 (= e!3329675 (ite (= (head!11510 s!2326) (c!934311 r!7292)) EmptyExpr!15075 EmptyLang!15075))))

(declare-fun b!5365520 () Bool)

(declare-fun e!3329674 () Regex!15075)

(assert (=> b!5365520 (= e!3329674 e!3329675)))

(declare-fun c!934585 () Bool)

(assert (=> b!5365520 (= c!934585 ((_ is ElementMatch!15075) r!7292))))

(declare-fun e!3329676 () Regex!15075)

(declare-fun b!5365521 () Bool)

(declare-fun call!383899 () Regex!15075)

(declare-fun call!383901 () Regex!15075)

(assert (=> b!5365521 (= e!3329676 (Union!15075 (Concat!23920 call!383901 (regTwo!30662 r!7292)) call!383899))))

(declare-fun b!5365522 () Bool)

(declare-fun c!934587 () Bool)

(assert (=> b!5365522 (= c!934587 ((_ is Union!15075) r!7292))))

(declare-fun e!3329677 () Regex!15075)

(assert (=> b!5365522 (= e!3329675 e!3329677)))

(declare-fun bm!383894 () Bool)

(declare-fun call!383900 () Regex!15075)

(assert (=> bm!383894 (= call!383899 call!383900)))

(declare-fun bm!383895 () Bool)

(declare-fun call!383902 () Regex!15075)

(assert (=> bm!383895 (= call!383900 call!383902)))

(declare-fun b!5365523 () Bool)

(assert (=> b!5365523 (= e!3329677 (Union!15075 call!383901 call!383902))))

(declare-fun b!5365524 () Bool)

(declare-fun c!934584 () Bool)

(assert (=> b!5365524 (= c!934584 (nullable!5244 (regOne!30662 r!7292)))))

(declare-fun e!3329673 () Regex!15075)

(assert (=> b!5365524 (= e!3329673 e!3329676)))

(declare-fun b!5365525 () Bool)

(assert (=> b!5365525 (= e!3329674 EmptyLang!15075)))

(declare-fun d!1718703 () Bool)

(declare-fun lt!2185662 () Regex!15075)

(assert (=> d!1718703 (validRegex!6811 lt!2185662)))

(assert (=> d!1718703 (= lt!2185662 e!3329674)))

(declare-fun c!934588 () Bool)

(assert (=> d!1718703 (= c!934588 (or ((_ is EmptyExpr!15075) r!7292) ((_ is EmptyLang!15075) r!7292)))))

(assert (=> d!1718703 (validRegex!6811 r!7292)))

(assert (=> d!1718703 (= (derivativeStep!4217 r!7292 (head!11510 s!2326)) lt!2185662)))

(declare-fun b!5365519 () Bool)

(assert (=> b!5365519 (= e!3329677 e!3329673)))

(declare-fun c!934586 () Bool)

(assert (=> b!5365519 (= c!934586 ((_ is Star!15075) r!7292))))

(declare-fun b!5365526 () Bool)

(assert (=> b!5365526 (= e!3329673 (Concat!23920 call!383900 r!7292))))

(declare-fun b!5365527 () Bool)

(assert (=> b!5365527 (= e!3329676 (Union!15075 (Concat!23920 call!383899 (regTwo!30662 r!7292)) EmptyLang!15075))))

(declare-fun bm!383896 () Bool)

(assert (=> bm!383896 (= call!383902 (derivativeStep!4217 (ite c!934587 (regTwo!30663 r!7292) (ite c!934586 (reg!15404 r!7292) (ite c!934584 (regTwo!30662 r!7292) (regOne!30662 r!7292)))) (head!11510 s!2326)))))

(declare-fun bm!383897 () Bool)

(assert (=> bm!383897 (= call!383901 (derivativeStep!4217 (ite c!934587 (regOne!30663 r!7292) (regOne!30662 r!7292)) (head!11510 s!2326)))))

(assert (= (and d!1718703 c!934588) b!5365525))

(assert (= (and d!1718703 (not c!934588)) b!5365520))

(assert (= (and b!5365520 c!934585) b!5365518))

(assert (= (and b!5365520 (not c!934585)) b!5365522))

(assert (= (and b!5365522 c!934587) b!5365523))

(assert (= (and b!5365522 (not c!934587)) b!5365519))

(assert (= (and b!5365519 c!934586) b!5365526))

(assert (= (and b!5365519 (not c!934586)) b!5365524))

(assert (= (and b!5365524 c!934584) b!5365521))

(assert (= (and b!5365524 (not c!934584)) b!5365527))

(assert (= (or b!5365521 b!5365527) bm!383894))

(assert (= (or b!5365526 bm!383894) bm!383895))

(assert (= (or b!5365523 bm!383895) bm!383896))

(assert (= (or b!5365523 b!5365521) bm!383897))

(declare-fun m!6393542 () Bool)

(assert (=> b!5365524 m!6393542))

(declare-fun m!6393544 () Bool)

(assert (=> d!1718703 m!6393544))

(assert (=> d!1718703 m!6392652))

(assert (=> bm!383896 m!6393412))

(declare-fun m!6393546 () Bool)

(assert (=> bm!383896 m!6393546))

(assert (=> bm!383897 m!6393412))

(declare-fun m!6393548 () Bool)

(assert (=> bm!383897 m!6393548))

(assert (=> b!5365347 d!1718703))

(assert (=> b!5365347 d!1718685))

(assert (=> b!5365347 d!1718687))

(declare-fun b!5365528 () Bool)

(declare-fun e!3329681 () Bool)

(assert (=> b!5365528 (= e!3329681 (= (head!11510 (_2!35577 (get!21121 lt!2185608))) (c!934311 (regTwo!30662 r!7292))))))

(declare-fun b!5365529 () Bool)

(declare-fun res!2277058 () Bool)

(assert (=> b!5365529 (=> (not res!2277058) (not e!3329681))))

(declare-fun call!383903 () Bool)

(assert (=> b!5365529 (= res!2277058 (not call!383903))))

(declare-fun b!5365530 () Bool)

(declare-fun res!2277061 () Bool)

(declare-fun e!3329678 () Bool)

(assert (=> b!5365530 (=> res!2277061 e!3329678)))

(assert (=> b!5365530 (= res!2277061 e!3329681)))

(declare-fun res!2277055 () Bool)

(assert (=> b!5365530 (=> (not res!2277055) (not e!3329681))))

(declare-fun lt!2185663 () Bool)

(assert (=> b!5365530 (= res!2277055 lt!2185663)))

(declare-fun b!5365531 () Bool)

(declare-fun e!3329682 () Bool)

(declare-fun e!3329679 () Bool)

(assert (=> b!5365531 (= e!3329682 e!3329679)))

(declare-fun c!934591 () Bool)

(assert (=> b!5365531 (= c!934591 ((_ is EmptyLang!15075) (regTwo!30662 r!7292)))))

(declare-fun b!5365532 () Bool)

(declare-fun e!3329683 () Bool)

(declare-fun e!3329680 () Bool)

(assert (=> b!5365532 (= e!3329683 e!3329680)))

(declare-fun res!2277054 () Bool)

(assert (=> b!5365532 (=> res!2277054 e!3329680)))

(assert (=> b!5365532 (= res!2277054 call!383903)))

(declare-fun b!5365533 () Bool)

(assert (=> b!5365533 (= e!3329680 (not (= (head!11510 (_2!35577 (get!21121 lt!2185608))) (c!934311 (regTwo!30662 r!7292)))))))

(declare-fun b!5365534 () Bool)

(declare-fun e!3329684 () Bool)

(assert (=> b!5365534 (= e!3329684 (matchR!7260 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 (get!21121 lt!2185608)))) (tail!10607 (_2!35577 (get!21121 lt!2185608)))))))

(declare-fun b!5365536 () Bool)

(declare-fun res!2277059 () Bool)

(assert (=> b!5365536 (=> res!2277059 e!3329680)))

(assert (=> b!5365536 (= res!2277059 (not (isEmpty!33377 (tail!10607 (_2!35577 (get!21121 lt!2185608))))))))

(declare-fun b!5365537 () Bool)

(assert (=> b!5365537 (= e!3329678 e!3329683)))

(declare-fun res!2277060 () Bool)

(assert (=> b!5365537 (=> (not res!2277060) (not e!3329683))))

(assert (=> b!5365537 (= res!2277060 (not lt!2185663))))

(declare-fun bm!383898 () Bool)

(assert (=> bm!383898 (= call!383903 (isEmpty!33377 (_2!35577 (get!21121 lt!2185608))))))

(declare-fun b!5365538 () Bool)

(assert (=> b!5365538 (= e!3329679 (not lt!2185663))))

(declare-fun b!5365539 () Bool)

(assert (=> b!5365539 (= e!3329682 (= lt!2185663 call!383903))))

(declare-fun b!5365540 () Bool)

(declare-fun res!2277056 () Bool)

(assert (=> b!5365540 (=> res!2277056 e!3329678)))

(assert (=> b!5365540 (= res!2277056 (not ((_ is ElementMatch!15075) (regTwo!30662 r!7292))))))

(assert (=> b!5365540 (= e!3329679 e!3329678)))

(declare-fun b!5365541 () Bool)

(declare-fun res!2277057 () Bool)

(assert (=> b!5365541 (=> (not res!2277057) (not e!3329681))))

(assert (=> b!5365541 (= res!2277057 (isEmpty!33377 (tail!10607 (_2!35577 (get!21121 lt!2185608)))))))

(declare-fun d!1718705 () Bool)

(assert (=> d!1718705 e!3329682))

(declare-fun c!934590 () Bool)

(assert (=> d!1718705 (= c!934590 ((_ is EmptyExpr!15075) (regTwo!30662 r!7292)))))

(assert (=> d!1718705 (= lt!2185663 e!3329684)))

(declare-fun c!934589 () Bool)

(assert (=> d!1718705 (= c!934589 (isEmpty!33377 (_2!35577 (get!21121 lt!2185608))))))

(assert (=> d!1718705 (validRegex!6811 (regTwo!30662 r!7292))))

(assert (=> d!1718705 (= (matchR!7260 (regTwo!30662 r!7292) (_2!35577 (get!21121 lt!2185608))) lt!2185663)))

(declare-fun b!5365535 () Bool)

(assert (=> b!5365535 (= e!3329684 (nullable!5244 (regTwo!30662 r!7292)))))

(assert (= (and d!1718705 c!934589) b!5365535))

(assert (= (and d!1718705 (not c!934589)) b!5365534))

(assert (= (and d!1718705 c!934590) b!5365539))

(assert (= (and d!1718705 (not c!934590)) b!5365531))

(assert (= (and b!5365531 c!934591) b!5365538))

(assert (= (and b!5365531 (not c!934591)) b!5365540))

(assert (= (and b!5365540 (not res!2277056)) b!5365530))

(assert (= (and b!5365530 res!2277055) b!5365529))

(assert (= (and b!5365529 res!2277058) b!5365541))

(assert (= (and b!5365541 res!2277057) b!5365528))

(assert (= (and b!5365530 (not res!2277061)) b!5365537))

(assert (= (and b!5365537 res!2277060) b!5365532))

(assert (= (and b!5365532 (not res!2277054)) b!5365536))

(assert (= (and b!5365536 (not res!2277059)) b!5365533))

(assert (= (or b!5365539 b!5365529 b!5365532) bm!383898))

(declare-fun m!6393550 () Bool)

(assert (=> bm!383898 m!6393550))

(assert (=> b!5365535 m!6393320))

(declare-fun m!6393552 () Bool)

(assert (=> b!5365541 m!6393552))

(assert (=> b!5365541 m!6393552))

(declare-fun m!6393554 () Bool)

(assert (=> b!5365541 m!6393554))

(declare-fun m!6393556 () Bool)

(assert (=> b!5365534 m!6393556))

(assert (=> b!5365534 m!6393556))

(declare-fun m!6393558 () Bool)

(assert (=> b!5365534 m!6393558))

(assert (=> b!5365534 m!6393552))

(assert (=> b!5365534 m!6393558))

(assert (=> b!5365534 m!6393552))

(declare-fun m!6393560 () Bool)

(assert (=> b!5365534 m!6393560))

(assert (=> b!5365533 m!6393556))

(assert (=> b!5365536 m!6393552))

(assert (=> b!5365536 m!6393552))

(assert (=> b!5365536 m!6393554))

(assert (=> d!1718705 m!6393550))

(assert (=> d!1718705 m!6393332))

(assert (=> b!5365528 m!6393556))

(assert (=> b!5364980 d!1718705))

(declare-fun d!1718707 () Bool)

(assert (=> d!1718707 (= (get!21121 lt!2185608) (v!51214 lt!2185608))))

(assert (=> b!5364980 d!1718707))

(declare-fun b!5365542 () Bool)

(declare-fun e!3329686 () (InoxSet Context!8918))

(assert (=> b!5365542 (= e!3329686 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718709 () Bool)

(declare-fun c!934592 () Bool)

(declare-fun e!3329687 () Bool)

(assert (=> d!1718709 (= c!934592 e!3329687)))

(declare-fun res!2277062 () Bool)

(assert (=> d!1718709 (=> (not res!2277062) (not e!3329687))))

(assert (=> d!1718709 (= res!2277062 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185523))))))))

(declare-fun e!3329685 () (InoxSet Context!8918))

(assert (=> d!1718709 (= (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185523))) (h!67850 s!2326)) e!3329685)))

(declare-fun b!5365543 () Bool)

(declare-fun call!383904 () (InoxSet Context!8918))

(assert (=> b!5365543 (= e!3329686 call!383904)))

(declare-fun bm!383899 () Bool)

(assert (=> bm!383899 (= call!383904 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185523))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185523)))))) (h!67850 s!2326)))))

(declare-fun b!5365544 () Bool)

(assert (=> b!5365544 (= e!3329685 ((_ map or) call!383904 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185523)))))) (h!67850 s!2326))))))

(declare-fun b!5365545 () Bool)

(assert (=> b!5365545 (= e!3329687 (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185523)))))))))

(declare-fun b!5365546 () Bool)

(assert (=> b!5365546 (= e!3329685 e!3329686)))

(declare-fun c!934593 () Bool)

(assert (=> b!5365546 (= c!934593 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185523))))))))

(assert (= (and d!1718709 res!2277062) b!5365545))

(assert (= (and d!1718709 c!934592) b!5365544))

(assert (= (and d!1718709 (not c!934592)) b!5365546))

(assert (= (and b!5365546 c!934593) b!5365543))

(assert (= (and b!5365546 (not c!934593)) b!5365542))

(assert (= (or b!5365544 b!5365543) bm!383899))

(declare-fun m!6393562 () Bool)

(assert (=> bm!383899 m!6393562))

(declare-fun m!6393564 () Bool)

(assert (=> b!5365544 m!6393564))

(declare-fun m!6393566 () Bool)

(assert (=> b!5365545 m!6393566))

(assert (=> b!5364833 d!1718709))

(declare-fun d!1718711 () Bool)

(assert (=> d!1718711 (= (isEmpty!33378 (unfocusZipperList!517 zl!343)) ((_ is Nil!61400) (unfocusZipperList!517 zl!343)))))

(assert (=> b!5365264 d!1718711))

(declare-fun d!1718713 () Bool)

(declare-fun c!934596 () Bool)

(assert (=> d!1718713 (= c!934596 ((_ is Nil!61401) lt!2185654))))

(declare-fun e!3329690 () (InoxSet Context!8918))

(assert (=> d!1718713 (= (content!10968 lt!2185654) e!3329690)))

(declare-fun b!5365551 () Bool)

(assert (=> b!5365551 (= e!3329690 ((as const (Array Context!8918 Bool)) false))))

(declare-fun b!5365552 () Bool)

(assert (=> b!5365552 (= e!3329690 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) (h!67849 lt!2185654) true) (content!10968 (t!374746 lt!2185654))))))

(assert (= (and d!1718713 c!934596) b!5365551))

(assert (= (and d!1718713 (not c!934596)) b!5365552))

(declare-fun m!6393568 () Bool)

(assert (=> b!5365552 m!6393568))

(declare-fun m!6393570 () Bool)

(assert (=> b!5365552 m!6393570))

(assert (=> b!5365388 d!1718713))

(declare-fun b!5365553 () Bool)

(declare-fun e!3329694 () Bool)

(assert (=> b!5365553 (= e!3329694 (= (head!11510 s!2326) (c!934311 (regTwo!30662 r!7292))))))

(declare-fun b!5365554 () Bool)

(declare-fun res!2277067 () Bool)

(assert (=> b!5365554 (=> (not res!2277067) (not e!3329694))))

(declare-fun call!383905 () Bool)

(assert (=> b!5365554 (= res!2277067 (not call!383905))))

(declare-fun b!5365555 () Bool)

(declare-fun res!2277070 () Bool)

(declare-fun e!3329691 () Bool)

(assert (=> b!5365555 (=> res!2277070 e!3329691)))

(assert (=> b!5365555 (= res!2277070 e!3329694)))

(declare-fun res!2277064 () Bool)

(assert (=> b!5365555 (=> (not res!2277064) (not e!3329694))))

(declare-fun lt!2185664 () Bool)

(assert (=> b!5365555 (= res!2277064 lt!2185664)))

(declare-fun b!5365556 () Bool)

(declare-fun e!3329695 () Bool)

(declare-fun e!3329692 () Bool)

(assert (=> b!5365556 (= e!3329695 e!3329692)))

(declare-fun c!934599 () Bool)

(assert (=> b!5365556 (= c!934599 ((_ is EmptyLang!15075) (regTwo!30662 r!7292)))))

(declare-fun b!5365557 () Bool)

(declare-fun e!3329696 () Bool)

(declare-fun e!3329693 () Bool)

(assert (=> b!5365557 (= e!3329696 e!3329693)))

(declare-fun res!2277063 () Bool)

(assert (=> b!5365557 (=> res!2277063 e!3329693)))

(assert (=> b!5365557 (= res!2277063 call!383905)))

(declare-fun b!5365558 () Bool)

(assert (=> b!5365558 (= e!3329693 (not (= (head!11510 s!2326) (c!934311 (regTwo!30662 r!7292)))))))

(declare-fun b!5365559 () Bool)

(declare-fun e!3329697 () Bool)

(assert (=> b!5365559 (= e!3329697 (matchR!7260 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 s!2326)) (tail!10607 s!2326)))))

(declare-fun b!5365561 () Bool)

(declare-fun res!2277068 () Bool)

(assert (=> b!5365561 (=> res!2277068 e!3329693)))

(assert (=> b!5365561 (= res!2277068 (not (isEmpty!33377 (tail!10607 s!2326))))))

(declare-fun b!5365562 () Bool)

(assert (=> b!5365562 (= e!3329691 e!3329696)))

(declare-fun res!2277069 () Bool)

(assert (=> b!5365562 (=> (not res!2277069) (not e!3329696))))

(assert (=> b!5365562 (= res!2277069 (not lt!2185664))))

(declare-fun bm!383900 () Bool)

(assert (=> bm!383900 (= call!383905 (isEmpty!33377 s!2326))))

(declare-fun b!5365563 () Bool)

(assert (=> b!5365563 (= e!3329692 (not lt!2185664))))

(declare-fun b!5365564 () Bool)

(assert (=> b!5365564 (= e!3329695 (= lt!2185664 call!383905))))

(declare-fun b!5365565 () Bool)

(declare-fun res!2277065 () Bool)

(assert (=> b!5365565 (=> res!2277065 e!3329691)))

(assert (=> b!5365565 (= res!2277065 (not ((_ is ElementMatch!15075) (regTwo!30662 r!7292))))))

(assert (=> b!5365565 (= e!3329692 e!3329691)))

(declare-fun b!5365566 () Bool)

(declare-fun res!2277066 () Bool)

(assert (=> b!5365566 (=> (not res!2277066) (not e!3329694))))

(assert (=> b!5365566 (= res!2277066 (isEmpty!33377 (tail!10607 s!2326)))))

(declare-fun d!1718715 () Bool)

(assert (=> d!1718715 e!3329695))

(declare-fun c!934598 () Bool)

(assert (=> d!1718715 (= c!934598 ((_ is EmptyExpr!15075) (regTwo!30662 r!7292)))))

(assert (=> d!1718715 (= lt!2185664 e!3329697)))

(declare-fun c!934597 () Bool)

(assert (=> d!1718715 (= c!934597 (isEmpty!33377 s!2326))))

(assert (=> d!1718715 (validRegex!6811 (regTwo!30662 r!7292))))

(assert (=> d!1718715 (= (matchR!7260 (regTwo!30662 r!7292) s!2326) lt!2185664)))

(declare-fun b!5365560 () Bool)

(assert (=> b!5365560 (= e!3329697 (nullable!5244 (regTwo!30662 r!7292)))))

(assert (= (and d!1718715 c!934597) b!5365560))

(assert (= (and d!1718715 (not c!934597)) b!5365559))

(assert (= (and d!1718715 c!934598) b!5365564))

(assert (= (and d!1718715 (not c!934598)) b!5365556))

(assert (= (and b!5365556 c!934599) b!5365563))

(assert (= (and b!5365556 (not c!934599)) b!5365565))

(assert (= (and b!5365565 (not res!2277065)) b!5365555))

(assert (= (and b!5365555 res!2277064) b!5365554))

(assert (= (and b!5365554 res!2277067) b!5365566))

(assert (= (and b!5365566 res!2277066) b!5365553))

(assert (= (and b!5365555 (not res!2277070)) b!5365562))

(assert (= (and b!5365562 res!2277069) b!5365557))

(assert (= (and b!5365557 (not res!2277063)) b!5365561))

(assert (= (and b!5365561 (not res!2277068)) b!5365558))

(assert (= (or b!5365564 b!5365554 b!5365557) bm!383900))

(assert (=> bm!383900 m!6393408))

(assert (=> b!5365560 m!6393320))

(assert (=> b!5365566 m!6393416))

(assert (=> b!5365566 m!6393416))

(assert (=> b!5365566 m!6393434))

(assert (=> b!5365559 m!6393412))

(assert (=> b!5365559 m!6393412))

(declare-fun m!6393572 () Bool)

(assert (=> b!5365559 m!6393572))

(assert (=> b!5365559 m!6393416))

(assert (=> b!5365559 m!6393572))

(assert (=> b!5365559 m!6393416))

(declare-fun m!6393574 () Bool)

(assert (=> b!5365559 m!6393574))

(assert (=> b!5365558 m!6393412))

(assert (=> b!5365561 m!6393416))

(assert (=> b!5365561 m!6393416))

(assert (=> b!5365561 m!6393434))

(assert (=> d!1718715 m!6393408))

(assert (=> d!1718715 m!6393332))

(assert (=> b!5365553 m!6393412))

(assert (=> b!5365104 d!1718715))

(assert (=> bs!1242499 d!1718471))

(declare-fun d!1718717 () Bool)

(assert (=> d!1718717 (= ($colon$colon!1446 (exprs!4959 lt!2185502) (ite (or c!934482 c!934481) (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (h!67848 (exprs!4959 (h!67849 zl!343))))) (Cons!61400 (ite (or c!934482 c!934481) (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (h!67848 (exprs!4959 (h!67849 zl!343)))) (exprs!4959 lt!2185502)))))

(assert (=> bm!383857 d!1718717))

(assert (=> bm!383875 d!1718695))

(declare-fun d!1718719 () Bool)

(assert (=> d!1718719 (= (head!11510 (_1!35577 lt!2185500)) (h!67850 (_1!35577 lt!2185500)))))

(assert (=> b!5365087 d!1718719))

(declare-fun d!1718721 () Bool)

(assert (=> d!1718721 true))

(declare-fun setRes!34750 () Bool)

(assert (=> d!1718721 setRes!34750))

(declare-fun condSetEmpty!34750 () Bool)

(declare-fun res!2277073 () (InoxSet Context!8918))

(assert (=> d!1718721 (= condSetEmpty!34750 (= res!2277073 ((as const (Array Context!8918 Bool)) false)))))

(assert (=> d!1718721 (= (choose!40285 lt!2185512 lambda!276480) res!2277073)))

(declare-fun setIsEmpty!34750 () Bool)

(assert (=> setIsEmpty!34750 setRes!34750))

(declare-fun tp!1489174 () Bool)

(declare-fun setElem!34750 () Context!8918)

(declare-fun setNonEmpty!34750 () Bool)

(declare-fun e!3329700 () Bool)

(assert (=> setNonEmpty!34750 (= setRes!34750 (and tp!1489174 (inv!80934 setElem!34750) e!3329700))))

(declare-fun setRest!34750 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34750 (= res!2277073 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34750 true) setRest!34750))))

(declare-fun b!5365569 () Bool)

(declare-fun tp!1489175 () Bool)

(assert (=> b!5365569 (= e!3329700 tp!1489175)))

(assert (= (and d!1718721 condSetEmpty!34750) setIsEmpty!34750))

(assert (= (and d!1718721 (not condSetEmpty!34750)) setNonEmpty!34750))

(assert (= setNonEmpty!34750 b!5365569))

(declare-fun m!6393576 () Bool)

(assert (=> setNonEmpty!34750 m!6393576))

(assert (=> d!1718655 d!1718721))

(assert (=> bm!383876 d!1718695))

(declare-fun d!1718723 () Bool)

(declare-fun res!2277074 () Bool)

(declare-fun e!3329701 () Bool)

(assert (=> d!1718723 (=> res!2277074 e!3329701)))

(assert (=> d!1718723 (= res!2277074 ((_ is Nil!61400) (exprs!4959 setElem!34741)))))

(assert (=> d!1718723 (= (forall!14483 (exprs!4959 setElem!34741) lambda!276535) e!3329701)))

(declare-fun b!5365570 () Bool)

(declare-fun e!3329702 () Bool)

(assert (=> b!5365570 (= e!3329701 e!3329702)))

(declare-fun res!2277075 () Bool)

(assert (=> b!5365570 (=> (not res!2277075) (not e!3329702))))

(assert (=> b!5365570 (= res!2277075 (dynLambda!24253 lambda!276535 (h!67848 (exprs!4959 setElem!34741))))))

(declare-fun b!5365571 () Bool)

(assert (=> b!5365571 (= e!3329702 (forall!14483 (t!374745 (exprs!4959 setElem!34741)) lambda!276535))))

(assert (= (and d!1718723 (not res!2277074)) b!5365570))

(assert (= (and b!5365570 res!2277075) b!5365571))

(declare-fun b_lambda!205709 () Bool)

(assert (=> (not b_lambda!205709) (not b!5365570)))

(declare-fun m!6393578 () Bool)

(assert (=> b!5365570 m!6393578))

(declare-fun m!6393580 () Bool)

(assert (=> b!5365571 m!6393580))

(assert (=> d!1718609 d!1718723))

(declare-fun d!1718725 () Bool)

(assert (=> d!1718725 (= (nullable!5244 (regTwo!30662 r!7292)) (nullableFct!1548 (regTwo!30662 r!7292)))))

(declare-fun bs!1242505 () Bool)

(assert (= bs!1242505 d!1718725))

(declare-fun m!6393582 () Bool)

(assert (=> bs!1242505 m!6393582))

(assert (=> b!5365203 d!1718725))

(assert (=> bm!383873 d!1718695))

(declare-fun b!5365572 () Bool)

(declare-fun res!2277077 () Bool)

(declare-fun e!3329705 () Bool)

(assert (=> b!5365572 (=> res!2277077 e!3329705)))

(assert (=> b!5365572 (= res!2277077 (not ((_ is Concat!23920) lt!2185639)))))

(declare-fun e!3329704 () Bool)

(assert (=> b!5365572 (= e!3329704 e!3329705)))

(declare-fun b!5365573 () Bool)

(declare-fun e!3329703 () Bool)

(declare-fun e!3329706 () Bool)

(assert (=> b!5365573 (= e!3329703 e!3329706)))

(declare-fun res!2277076 () Bool)

(assert (=> b!5365573 (= res!2277076 (not (nullable!5244 (reg!15404 lt!2185639))))))

(assert (=> b!5365573 (=> (not res!2277076) (not e!3329706))))

(declare-fun b!5365574 () Bool)

(declare-fun e!3329707 () Bool)

(declare-fun call!383908 () Bool)

(assert (=> b!5365574 (= e!3329707 call!383908)))

(declare-fun b!5365575 () Bool)

(declare-fun e!3329708 () Bool)

(assert (=> b!5365575 (= e!3329708 call!383908)))

(declare-fun c!934601 () Bool)

(declare-fun bm!383901 () Bool)

(declare-fun call!383906 () Bool)

(declare-fun c!934600 () Bool)

(assert (=> bm!383901 (= call!383906 (validRegex!6811 (ite c!934600 (reg!15404 lt!2185639) (ite c!934601 (regOne!30663 lt!2185639) (regOne!30662 lt!2185639)))))))

(declare-fun b!5365576 () Bool)

(declare-fun e!3329709 () Bool)

(assert (=> b!5365576 (= e!3329709 e!3329703)))

(assert (=> b!5365576 (= c!934600 ((_ is Star!15075) lt!2185639))))

(declare-fun b!5365577 () Bool)

(assert (=> b!5365577 (= e!3329706 call!383906)))

(declare-fun d!1718727 () Bool)

(declare-fun res!2277080 () Bool)

(assert (=> d!1718727 (=> res!2277080 e!3329709)))

(assert (=> d!1718727 (= res!2277080 ((_ is ElementMatch!15075) lt!2185639))))

(assert (=> d!1718727 (= (validRegex!6811 lt!2185639) e!3329709)))

(declare-fun bm!383902 () Bool)

(assert (=> bm!383902 (= call!383908 (validRegex!6811 (ite c!934601 (regTwo!30663 lt!2185639) (regTwo!30662 lt!2185639))))))

(declare-fun b!5365578 () Bool)

(declare-fun res!2277078 () Bool)

(assert (=> b!5365578 (=> (not res!2277078) (not e!3329707))))

(declare-fun call!383907 () Bool)

(assert (=> b!5365578 (= res!2277078 call!383907)))

(assert (=> b!5365578 (= e!3329704 e!3329707)))

(declare-fun bm!383903 () Bool)

(assert (=> bm!383903 (= call!383907 call!383906)))

(declare-fun b!5365579 () Bool)

(assert (=> b!5365579 (= e!3329705 e!3329708)))

(declare-fun res!2277079 () Bool)

(assert (=> b!5365579 (=> (not res!2277079) (not e!3329708))))

(assert (=> b!5365579 (= res!2277079 call!383907)))

(declare-fun b!5365580 () Bool)

(assert (=> b!5365580 (= e!3329703 e!3329704)))

(assert (=> b!5365580 (= c!934601 ((_ is Union!15075) lt!2185639))))

(assert (= (and d!1718727 (not res!2277080)) b!5365576))

(assert (= (and b!5365576 c!934600) b!5365573))

(assert (= (and b!5365576 (not c!934600)) b!5365580))

(assert (= (and b!5365573 res!2277076) b!5365577))

(assert (= (and b!5365580 c!934601) b!5365578))

(assert (= (and b!5365580 (not c!934601)) b!5365572))

(assert (= (and b!5365578 res!2277078) b!5365574))

(assert (= (and b!5365572 (not res!2277077)) b!5365579))

(assert (= (and b!5365579 res!2277079) b!5365575))

(assert (= (or b!5365574 b!5365575) bm!383902))

(assert (= (or b!5365578 b!5365579) bm!383903))

(assert (= (or b!5365577 bm!383903) bm!383901))

(declare-fun m!6393584 () Bool)

(assert (=> b!5365573 m!6393584))

(declare-fun m!6393586 () Bool)

(assert (=> bm!383901 m!6393586))

(declare-fun m!6393588 () Bool)

(assert (=> bm!383902 m!6393588))

(assert (=> d!1718621 d!1718727))

(declare-fun d!1718729 () Bool)

(declare-fun res!2277081 () Bool)

(declare-fun e!3329710 () Bool)

(assert (=> d!1718729 (=> res!2277081 e!3329710)))

(assert (=> d!1718729 (= res!2277081 ((_ is Nil!61400) (unfocusZipperList!517 zl!343)))))

(assert (=> d!1718729 (= (forall!14483 (unfocusZipperList!517 zl!343) lambda!276542) e!3329710)))

(declare-fun b!5365581 () Bool)

(declare-fun e!3329711 () Bool)

(assert (=> b!5365581 (= e!3329710 e!3329711)))

(declare-fun res!2277082 () Bool)

(assert (=> b!5365581 (=> (not res!2277082) (not e!3329711))))

(assert (=> b!5365581 (= res!2277082 (dynLambda!24253 lambda!276542 (h!67848 (unfocusZipperList!517 zl!343))))))

(declare-fun b!5365582 () Bool)

(assert (=> b!5365582 (= e!3329711 (forall!14483 (t!374745 (unfocusZipperList!517 zl!343)) lambda!276542))))

(assert (= (and d!1718729 (not res!2277081)) b!5365581))

(assert (= (and b!5365581 res!2277082) b!5365582))

(declare-fun b_lambda!205711 () Bool)

(assert (=> (not b_lambda!205711) (not b!5365581)))

(declare-fun m!6393590 () Bool)

(assert (=> b!5365581 m!6393590))

(declare-fun m!6393592 () Bool)

(assert (=> b!5365582 m!6393592))

(assert (=> d!1718621 d!1718729))

(declare-fun b!5365583 () Bool)

(declare-fun c!934603 () Bool)

(declare-fun e!3329712 () Bool)

(assert (=> b!5365583 (= c!934603 e!3329712)))

(declare-fun res!2277083 () Bool)

(assert (=> b!5365583 (=> (not res!2277083) (not e!3329712))))

(assert (=> b!5365583 (= res!2277083 ((_ is Concat!23920) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun e!3329713 () (InoxSet Context!8918))

(declare-fun e!3329714 () (InoxSet Context!8918))

(assert (=> b!5365583 (= e!3329713 e!3329714)))

(declare-fun b!5365584 () Bool)

(declare-fun e!3329715 () (InoxSet Context!8918))

(declare-fun call!383911 () (InoxSet Context!8918))

(assert (=> b!5365584 (= e!3329715 call!383911)))

(declare-fun b!5365585 () Bool)

(declare-fun e!3329717 () (InoxSet Context!8918))

(assert (=> b!5365585 (= e!3329717 call!383911)))

(declare-fun b!5365586 () Bool)

(declare-fun e!3329716 () (InoxSet Context!8918))

(assert (=> b!5365586 (= e!3329716 e!3329713)))

(declare-fun c!934606 () Bool)

(assert (=> b!5365586 (= c!934606 ((_ is Union!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun bm!383904 () Bool)

(declare-fun call!383914 () (InoxSet Context!8918))

(declare-fun call!383913 () (InoxSet Context!8918))

(assert (=> bm!383904 (= call!383914 call!383913)))

(declare-fun b!5365587 () Bool)

(declare-fun call!383909 () (InoxSet Context!8918))

(assert (=> b!5365587 (= e!3329713 ((_ map or) call!383909 call!383913))))

(declare-fun b!5365588 () Bool)

(assert (=> b!5365588 (= e!3329716 (store ((as const (Array Context!8918 Bool)) false) (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))) true))))

(declare-fun b!5365589 () Bool)

(assert (=> b!5365589 (= e!3329712 (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun bm!383905 () Bool)

(declare-fun call!383912 () List!61524)

(assert (=> bm!383905 (= call!383909 (derivationStepZipperDown!523 (ite c!934606 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))) (ite c!934606 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))) (Context!8919 call!383912)) (h!67850 s!2326)))))

(declare-fun d!1718731 () Bool)

(declare-fun c!934605 () Bool)

(assert (=> d!1718731 (= c!934605 (and ((_ is ElementMatch!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))) (= (c!934311 (h!67848 (exprs!4959 (h!67849 zl!343)))) (h!67850 s!2326))))))

(assert (=> d!1718731 (= (derivationStepZipperDown!523 (h!67848 (exprs!4959 (h!67849 zl!343))) (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))) (h!67850 s!2326)) e!3329716)))

(declare-fun b!5365590 () Bool)

(declare-fun c!934604 () Bool)

(assert (=> b!5365590 (= c!934604 ((_ is Star!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> b!5365590 (= e!3329717 e!3329715)))

(declare-fun bm!383906 () Bool)

(declare-fun call!383910 () List!61524)

(assert (=> bm!383906 (= call!383910 call!383912)))

(declare-fun c!934602 () Bool)

(declare-fun bm!383907 () Bool)

(assert (=> bm!383907 (= call!383912 ($colon$colon!1446 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343))))) (ite (or c!934603 c!934602) (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (h!67848 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun bm!383908 () Bool)

(assert (=> bm!383908 (= call!383911 call!383914)))

(declare-fun b!5365591 () Bool)

(assert (=> b!5365591 (= e!3329714 e!3329717)))

(assert (=> b!5365591 (= c!934602 ((_ is Concat!23920) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun bm!383909 () Bool)

(assert (=> bm!383909 (= call!383913 (derivationStepZipperDown!523 (ite c!934606 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934603 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934602 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343))))))) (ite (or c!934606 c!934603) (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))) (Context!8919 call!383910)) (h!67850 s!2326)))))

(declare-fun b!5365592 () Bool)

(assert (=> b!5365592 (= e!3329714 ((_ map or) call!383909 call!383914))))

(declare-fun b!5365593 () Bool)

(assert (=> b!5365593 (= e!3329715 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718731 c!934605) b!5365588))

(assert (= (and d!1718731 (not c!934605)) b!5365586))

(assert (= (and b!5365586 c!934606) b!5365587))

(assert (= (and b!5365586 (not c!934606)) b!5365583))

(assert (= (and b!5365583 res!2277083) b!5365589))

(assert (= (and b!5365583 c!934603) b!5365592))

(assert (= (and b!5365583 (not c!934603)) b!5365591))

(assert (= (and b!5365591 c!934602) b!5365585))

(assert (= (and b!5365591 (not c!934602)) b!5365590))

(assert (= (and b!5365590 c!934604) b!5365584))

(assert (= (and b!5365590 (not c!934604)) b!5365593))

(assert (= (or b!5365585 b!5365584) bm!383906))

(assert (= (or b!5365585 b!5365584) bm!383908))

(assert (= (or b!5365592 bm!383906) bm!383907))

(assert (= (or b!5365592 bm!383908) bm!383904))

(assert (= (or b!5365587 bm!383904) bm!383909))

(assert (= (or b!5365587 b!5365592) bm!383905))

(declare-fun m!6393594 () Bool)

(assert (=> b!5365588 m!6393594))

(declare-fun m!6393596 () Bool)

(assert (=> bm!383909 m!6393596))

(declare-fun m!6393598 () Bool)

(assert (=> bm!383907 m!6393598))

(assert (=> b!5365589 m!6393280))

(declare-fun m!6393600 () Bool)

(assert (=> bm!383905 m!6393600))

(assert (=> bm!383860 d!1718731))

(declare-fun d!1718733 () Bool)

(assert (=> d!1718733 (= (isEmpty!33377 (tail!10607 s!2326)) ((_ is Nil!61402) (tail!10607 s!2326)))))

(assert (=> b!5365368 d!1718733))

(assert (=> b!5365368 d!1718687))

(declare-fun d!1718735 () Bool)

(assert (=> d!1718735 (= (nullable!5244 (h!67848 (exprs!4959 lt!2185502))) (nullableFct!1548 (h!67848 (exprs!4959 lt!2185502))))))

(declare-fun bs!1242506 () Bool)

(assert (= bs!1242506 d!1718735))

(declare-fun m!6393602 () Bool)

(assert (=> bs!1242506 m!6393602))

(assert (=> b!5365188 d!1718735))

(declare-fun d!1718737 () Bool)

(declare-fun lambda!276560 () Int)

(declare-fun exists!2020 ((InoxSet Context!8918) Int) Bool)

(assert (=> d!1718737 (= (nullableZipper!1396 lt!2185512) (exists!2020 lt!2185512 lambda!276560))))

(declare-fun bs!1242507 () Bool)

(assert (= bs!1242507 d!1718737))

(declare-fun m!6393604 () Bool)

(assert (=> bs!1242507 m!6393604))

(assert (=> b!5365294 d!1718737))

(declare-fun bs!1242508 () Bool)

(declare-fun d!1718739 () Bool)

(assert (= bs!1242508 (and d!1718739 d!1718737)))

(declare-fun lambda!276561 () Int)

(assert (=> bs!1242508 (= lambda!276561 lambda!276560)))

(assert (=> d!1718739 (= (nullableZipper!1396 lt!2185496) (exists!2020 lt!2185496 lambda!276561))))

(declare-fun bs!1242509 () Bool)

(assert (= bs!1242509 d!1718739))

(declare-fun m!6393606 () Bool)

(assert (=> bs!1242509 m!6393606))

(assert (=> b!5365194 d!1718739))

(declare-fun b!5365594 () Bool)

(declare-fun c!934610 () Bool)

(declare-fun e!3329718 () Bool)

(assert (=> b!5365594 (= c!934610 e!3329718)))

(declare-fun res!2277084 () Bool)

(assert (=> b!5365594 (=> (not res!2277084) (not e!3329718))))

(assert (=> b!5365594 (= res!2277084 ((_ is Concat!23920) (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))))))

(declare-fun e!3329719 () (InoxSet Context!8918))

(declare-fun e!3329720 () (InoxSet Context!8918))

(assert (=> b!5365594 (= e!3329719 e!3329720)))

(declare-fun b!5365595 () Bool)

(declare-fun e!3329721 () (InoxSet Context!8918))

(declare-fun call!383917 () (InoxSet Context!8918))

(assert (=> b!5365595 (= e!3329721 call!383917)))

(declare-fun b!5365596 () Bool)

(declare-fun e!3329723 () (InoxSet Context!8918))

(assert (=> b!5365596 (= e!3329723 call!383917)))

(declare-fun b!5365597 () Bool)

(declare-fun e!3329722 () (InoxSet Context!8918))

(assert (=> b!5365597 (= e!3329722 e!3329719)))

(declare-fun c!934613 () Bool)

(assert (=> b!5365597 (= c!934613 ((_ is Union!15075) (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))))))

(declare-fun bm!383910 () Bool)

(declare-fun call!383920 () (InoxSet Context!8918))

(declare-fun call!383919 () (InoxSet Context!8918))

(assert (=> bm!383910 (= call!383920 call!383919)))

(declare-fun b!5365598 () Bool)

(declare-fun call!383915 () (InoxSet Context!8918))

(assert (=> b!5365598 (= e!3329719 ((_ map or) call!383915 call!383919))))

(declare-fun b!5365599 () Bool)

(assert (=> b!5365599 (= e!3329722 (store ((as const (Array Context!8918 Bool)) false) (ite c!934529 lt!2185533 (Context!8919 call!383871)) true))))

(declare-fun b!5365600 () Bool)

(assert (=> b!5365600 (= e!3329718 (nullable!5244 (regOne!30662 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292)))))))))

(declare-fun call!383918 () List!61524)

(declare-fun bm!383911 () Bool)

(assert (=> bm!383911 (= call!383915 (derivationStepZipperDown!523 (ite c!934613 (regOne!30663 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))) (regOne!30662 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292)))))) (ite c!934613 (ite c!934529 lt!2185533 (Context!8919 call!383871)) (Context!8919 call!383918)) (h!67850 s!2326)))))

(declare-fun d!1718741 () Bool)

(declare-fun c!934612 () Bool)

(assert (=> d!1718741 (= c!934612 (and ((_ is ElementMatch!15075) (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))) (= (c!934311 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))) (h!67850 s!2326))))))

(assert (=> d!1718741 (= (derivationStepZipperDown!523 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292)))) (ite c!934529 lt!2185533 (Context!8919 call!383871)) (h!67850 s!2326)) e!3329722)))

(declare-fun b!5365601 () Bool)

(declare-fun c!934611 () Bool)

(assert (=> b!5365601 (= c!934611 ((_ is Star!15075) (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))))))

(assert (=> b!5365601 (= e!3329723 e!3329721)))

(declare-fun bm!383912 () Bool)

(declare-fun call!383916 () List!61524)

(assert (=> bm!383912 (= call!383916 call!383918)))

(declare-fun c!934609 () Bool)

(declare-fun bm!383913 () Bool)

(assert (=> bm!383913 (= call!383918 ($colon$colon!1446 (exprs!4959 (ite c!934529 lt!2185533 (Context!8919 call!383871))) (ite (or c!934610 c!934609) (regTwo!30662 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))) (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292)))))))))

(declare-fun bm!383914 () Bool)

(assert (=> bm!383914 (= call!383917 call!383920)))

(declare-fun b!5365602 () Bool)

(assert (=> b!5365602 (= e!3329720 e!3329723)))

(assert (=> b!5365602 (= c!934609 ((_ is Concat!23920) (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))))))

(declare-fun bm!383915 () Bool)

(assert (=> bm!383915 (= call!383919 (derivationStepZipperDown!523 (ite c!934613 (regTwo!30663 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))) (ite c!934610 (regTwo!30662 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))) (ite c!934609 (regOne!30662 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292))))) (reg!15404 (ite c!934529 (regOne!30663 (reg!15404 (regOne!30662 r!7292))) (regOne!30662 (reg!15404 (regOne!30662 r!7292)))))))) (ite (or c!934613 c!934610) (ite c!934529 lt!2185533 (Context!8919 call!383871)) (Context!8919 call!383916)) (h!67850 s!2326)))))

(declare-fun b!5365603 () Bool)

(assert (=> b!5365603 (= e!3329720 ((_ map or) call!383915 call!383920))))

(declare-fun b!5365604 () Bool)

(assert (=> b!5365604 (= e!3329721 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718741 c!934612) b!5365599))

(assert (= (and d!1718741 (not c!934612)) b!5365597))

(assert (= (and b!5365597 c!934613) b!5365598))

(assert (= (and b!5365597 (not c!934613)) b!5365594))

(assert (= (and b!5365594 res!2277084) b!5365600))

(assert (= (and b!5365594 c!934610) b!5365603))

(assert (= (and b!5365594 (not c!934610)) b!5365602))

(assert (= (and b!5365602 c!934609) b!5365596))

(assert (= (and b!5365602 (not c!934609)) b!5365601))

(assert (= (and b!5365601 c!934611) b!5365595))

(assert (= (and b!5365601 (not c!934611)) b!5365604))

(assert (= (or b!5365596 b!5365595) bm!383912))

(assert (= (or b!5365596 b!5365595) bm!383914))

(assert (= (or b!5365603 bm!383912) bm!383913))

(assert (= (or b!5365603 bm!383914) bm!383910))

(assert (= (or b!5365598 bm!383910) bm!383915))

(assert (= (or b!5365598 b!5365603) bm!383911))

(declare-fun m!6393608 () Bool)

(assert (=> b!5365599 m!6393608))

(declare-fun m!6393610 () Bool)

(assert (=> bm!383915 m!6393610))

(declare-fun m!6393612 () Bool)

(assert (=> bm!383913 m!6393612))

(declare-fun m!6393614 () Bool)

(assert (=> b!5365600 m!6393614))

(declare-fun m!6393616 () Bool)

(assert (=> bm!383911 m!6393616))

(assert (=> bm!383864 d!1718741))

(assert (=> b!5365354 d!1718733))

(assert (=> b!5365354 d!1718687))

(assert (=> b!5365278 d!1718603))

(declare-fun d!1718743 () Bool)

(assert (=> d!1718743 true))

(assert (=> d!1718743 true))

(declare-fun res!2277087 () Bool)

(assert (=> d!1718743 (= (choose!40287 lambda!276482) res!2277087)))

(assert (=> d!1718509 d!1718743))

(declare-fun d!1718745 () Bool)

(assert (=> d!1718745 (= (isConcat!453 lt!2185634) ((_ is Concat!23920) lt!2185634))))

(assert (=> b!5365237 d!1718745))

(assert (=> d!1718667 d!1718665))

(declare-fun d!1718747 () Bool)

(assert (=> d!1718747 (= (flatMap!802 lt!2185510 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185502))))

(assert (=> d!1718747 true))

(declare-fun _$13!1931 () Unit!153818)

(assert (=> d!1718747 (= (choose!40286 lt!2185510 lt!2185502 lambda!276480) _$13!1931)))

(declare-fun b_lambda!205713 () Bool)

(assert (=> (not b_lambda!205713) (not d!1718747)))

(declare-fun bs!1242510 () Bool)

(assert (= bs!1242510 d!1718747))

(assert (=> bs!1242510 m!6392664))

(assert (=> bs!1242510 m!6393486))

(assert (=> d!1718667 d!1718747))

(declare-fun d!1718749 () Bool)

(assert (=> d!1718749 (= (isDefined!11889 lt!2185608) (not (isEmpty!33379 lt!2185608)))))

(declare-fun bs!1242511 () Bool)

(assert (= bs!1242511 d!1718749))

(declare-fun m!6393618 () Bool)

(assert (=> bs!1242511 m!6393618))

(assert (=> d!1718537 d!1718749))

(declare-fun b!5365605 () Bool)

(declare-fun e!3329727 () Bool)

(assert (=> b!5365605 (= e!3329727 (= (head!11510 Nil!61402) (c!934311 lt!2185531)))))

(declare-fun b!5365606 () Bool)

(declare-fun res!2277092 () Bool)

(assert (=> b!5365606 (=> (not res!2277092) (not e!3329727))))

(declare-fun call!383921 () Bool)

(assert (=> b!5365606 (= res!2277092 (not call!383921))))

(declare-fun b!5365607 () Bool)

(declare-fun res!2277095 () Bool)

(declare-fun e!3329724 () Bool)

(assert (=> b!5365607 (=> res!2277095 e!3329724)))

(assert (=> b!5365607 (= res!2277095 e!3329727)))

(declare-fun res!2277089 () Bool)

(assert (=> b!5365607 (=> (not res!2277089) (not e!3329727))))

(declare-fun lt!2185665 () Bool)

(assert (=> b!5365607 (= res!2277089 lt!2185665)))

(declare-fun b!5365608 () Bool)

(declare-fun e!3329728 () Bool)

(declare-fun e!3329725 () Bool)

(assert (=> b!5365608 (= e!3329728 e!3329725)))

(declare-fun c!934616 () Bool)

(assert (=> b!5365608 (= c!934616 ((_ is EmptyLang!15075) lt!2185531))))

(declare-fun b!5365609 () Bool)

(declare-fun e!3329729 () Bool)

(declare-fun e!3329726 () Bool)

(assert (=> b!5365609 (= e!3329729 e!3329726)))

(declare-fun res!2277088 () Bool)

(assert (=> b!5365609 (=> res!2277088 e!3329726)))

(assert (=> b!5365609 (= res!2277088 call!383921)))

(declare-fun b!5365610 () Bool)

(assert (=> b!5365610 (= e!3329726 (not (= (head!11510 Nil!61402) (c!934311 lt!2185531))))))

(declare-fun b!5365611 () Bool)

(declare-fun e!3329730 () Bool)

(assert (=> b!5365611 (= e!3329730 (matchR!7260 (derivativeStep!4217 lt!2185531 (head!11510 Nil!61402)) (tail!10607 Nil!61402)))))

(declare-fun b!5365613 () Bool)

(declare-fun res!2277093 () Bool)

(assert (=> b!5365613 (=> res!2277093 e!3329726)))

(assert (=> b!5365613 (= res!2277093 (not (isEmpty!33377 (tail!10607 Nil!61402))))))

(declare-fun b!5365614 () Bool)

(assert (=> b!5365614 (= e!3329724 e!3329729)))

(declare-fun res!2277094 () Bool)

(assert (=> b!5365614 (=> (not res!2277094) (not e!3329729))))

(assert (=> b!5365614 (= res!2277094 (not lt!2185665))))

(declare-fun bm!383916 () Bool)

(assert (=> bm!383916 (= call!383921 (isEmpty!33377 Nil!61402))))

(declare-fun b!5365615 () Bool)

(assert (=> b!5365615 (= e!3329725 (not lt!2185665))))

(declare-fun b!5365616 () Bool)

(assert (=> b!5365616 (= e!3329728 (= lt!2185665 call!383921))))

(declare-fun b!5365617 () Bool)

(declare-fun res!2277090 () Bool)

(assert (=> b!5365617 (=> res!2277090 e!3329724)))

(assert (=> b!5365617 (= res!2277090 (not ((_ is ElementMatch!15075) lt!2185531)))))

(assert (=> b!5365617 (= e!3329725 e!3329724)))

(declare-fun b!5365618 () Bool)

(declare-fun res!2277091 () Bool)

(assert (=> b!5365618 (=> (not res!2277091) (not e!3329727))))

(assert (=> b!5365618 (= res!2277091 (isEmpty!33377 (tail!10607 Nil!61402)))))

(declare-fun d!1718751 () Bool)

(assert (=> d!1718751 e!3329728))

(declare-fun c!934615 () Bool)

(assert (=> d!1718751 (= c!934615 ((_ is EmptyExpr!15075) lt!2185531))))

(assert (=> d!1718751 (= lt!2185665 e!3329730)))

(declare-fun c!934614 () Bool)

(assert (=> d!1718751 (= c!934614 (isEmpty!33377 Nil!61402))))

(assert (=> d!1718751 (validRegex!6811 lt!2185531)))

(assert (=> d!1718751 (= (matchR!7260 lt!2185531 Nil!61402) lt!2185665)))

(declare-fun b!5365612 () Bool)

(assert (=> b!5365612 (= e!3329730 (nullable!5244 lt!2185531))))

(assert (= (and d!1718751 c!934614) b!5365612))

(assert (= (and d!1718751 (not c!934614)) b!5365611))

(assert (= (and d!1718751 c!934615) b!5365616))

(assert (= (and d!1718751 (not c!934615)) b!5365608))

(assert (= (and b!5365608 c!934616) b!5365615))

(assert (= (and b!5365608 (not c!934616)) b!5365617))

(assert (= (and b!5365617 (not res!2277090)) b!5365607))

(assert (= (and b!5365607 res!2277089) b!5365606))

(assert (= (and b!5365606 res!2277092) b!5365618))

(assert (= (and b!5365618 res!2277091) b!5365605))

(assert (= (and b!5365607 (not res!2277095)) b!5365614))

(assert (= (and b!5365614 res!2277094) b!5365609))

(assert (= (and b!5365609 (not res!2277088)) b!5365613))

(assert (= (and b!5365613 (not res!2277093)) b!5365610))

(assert (= (or b!5365616 b!5365606 b!5365609) bm!383916))

(declare-fun m!6393620 () Bool)

(assert (=> bm!383916 m!6393620))

(assert (=> b!5365612 m!6393220))

(declare-fun m!6393622 () Bool)

(assert (=> b!5365618 m!6393622))

(assert (=> b!5365618 m!6393622))

(declare-fun m!6393624 () Bool)

(assert (=> b!5365618 m!6393624))

(declare-fun m!6393626 () Bool)

(assert (=> b!5365611 m!6393626))

(assert (=> b!5365611 m!6393626))

(declare-fun m!6393628 () Bool)

(assert (=> b!5365611 m!6393628))

(assert (=> b!5365611 m!6393622))

(assert (=> b!5365611 m!6393628))

(assert (=> b!5365611 m!6393622))

(declare-fun m!6393630 () Bool)

(assert (=> b!5365611 m!6393630))

(assert (=> b!5365610 m!6393626))

(assert (=> b!5365613 m!6393622))

(assert (=> b!5365613 m!6393622))

(assert (=> b!5365613 m!6393624))

(assert (=> d!1718751 m!6393620))

(assert (=> d!1718751 m!6393084))

(assert (=> b!5365605 m!6393626))

(assert (=> d!1718537 d!1718751))

(declare-fun b!5365619 () Bool)

(declare-fun res!2277097 () Bool)

(declare-fun e!3329733 () Bool)

(assert (=> b!5365619 (=> res!2277097 e!3329733)))

(assert (=> b!5365619 (= res!2277097 (not ((_ is Concat!23920) lt!2185531)))))

(declare-fun e!3329732 () Bool)

(assert (=> b!5365619 (= e!3329732 e!3329733)))

(declare-fun b!5365620 () Bool)

(declare-fun e!3329731 () Bool)

(declare-fun e!3329734 () Bool)

(assert (=> b!5365620 (= e!3329731 e!3329734)))

(declare-fun res!2277096 () Bool)

(assert (=> b!5365620 (= res!2277096 (not (nullable!5244 (reg!15404 lt!2185531))))))

(assert (=> b!5365620 (=> (not res!2277096) (not e!3329734))))

(declare-fun b!5365621 () Bool)

(declare-fun e!3329735 () Bool)

(declare-fun call!383924 () Bool)

(assert (=> b!5365621 (= e!3329735 call!383924)))

(declare-fun b!5365622 () Bool)

(declare-fun e!3329736 () Bool)

(assert (=> b!5365622 (= e!3329736 call!383924)))

(declare-fun c!934617 () Bool)

(declare-fun call!383922 () Bool)

(declare-fun bm!383917 () Bool)

(declare-fun c!934618 () Bool)

(assert (=> bm!383917 (= call!383922 (validRegex!6811 (ite c!934617 (reg!15404 lt!2185531) (ite c!934618 (regOne!30663 lt!2185531) (regOne!30662 lt!2185531)))))))

(declare-fun b!5365623 () Bool)

(declare-fun e!3329737 () Bool)

(assert (=> b!5365623 (= e!3329737 e!3329731)))

(assert (=> b!5365623 (= c!934617 ((_ is Star!15075) lt!2185531))))

(declare-fun b!5365624 () Bool)

(assert (=> b!5365624 (= e!3329734 call!383922)))

(declare-fun d!1718753 () Bool)

(declare-fun res!2277100 () Bool)

(assert (=> d!1718753 (=> res!2277100 e!3329737)))

(assert (=> d!1718753 (= res!2277100 ((_ is ElementMatch!15075) lt!2185531))))

(assert (=> d!1718753 (= (validRegex!6811 lt!2185531) e!3329737)))

(declare-fun bm!383918 () Bool)

(assert (=> bm!383918 (= call!383924 (validRegex!6811 (ite c!934618 (regTwo!30663 lt!2185531) (regTwo!30662 lt!2185531))))))

(declare-fun b!5365625 () Bool)

(declare-fun res!2277098 () Bool)

(assert (=> b!5365625 (=> (not res!2277098) (not e!3329735))))

(declare-fun call!383923 () Bool)

(assert (=> b!5365625 (= res!2277098 call!383923)))

(assert (=> b!5365625 (= e!3329732 e!3329735)))

(declare-fun bm!383919 () Bool)

(assert (=> bm!383919 (= call!383923 call!383922)))

(declare-fun b!5365626 () Bool)

(assert (=> b!5365626 (= e!3329733 e!3329736)))

(declare-fun res!2277099 () Bool)

(assert (=> b!5365626 (=> (not res!2277099) (not e!3329736))))

(assert (=> b!5365626 (= res!2277099 call!383923)))

(declare-fun b!5365627 () Bool)

(assert (=> b!5365627 (= e!3329731 e!3329732)))

(assert (=> b!5365627 (= c!934618 ((_ is Union!15075) lt!2185531))))

(assert (= (and d!1718753 (not res!2277100)) b!5365623))

(assert (= (and b!5365623 c!934617) b!5365620))

(assert (= (and b!5365623 (not c!934617)) b!5365627))

(assert (= (and b!5365620 res!2277096) b!5365624))

(assert (= (and b!5365627 c!934618) b!5365625))

(assert (= (and b!5365627 (not c!934618)) b!5365619))

(assert (= (and b!5365625 res!2277098) b!5365621))

(assert (= (and b!5365619 (not res!2277097)) b!5365626))

(assert (= (and b!5365626 res!2277099) b!5365622))

(assert (= (or b!5365621 b!5365622) bm!383918))

(assert (= (or b!5365625 b!5365626) bm!383919))

(assert (= (or b!5365624 bm!383919) bm!383917))

(declare-fun m!6393632 () Bool)

(assert (=> b!5365620 m!6393632))

(declare-fun m!6393634 () Bool)

(assert (=> bm!383917 m!6393634))

(declare-fun m!6393636 () Bool)

(assert (=> bm!383918 m!6393636))

(assert (=> d!1718537 d!1718753))

(declare-fun d!1718755 () Bool)

(assert (=> d!1718755 (= (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (nullableFct!1548 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun bs!1242512 () Bool)

(assert (= bs!1242512 d!1718755))

(declare-fun m!6393638 () Bool)

(assert (=> bs!1242512 m!6393638))

(assert (=> b!5365145 d!1718755))

(declare-fun d!1718757 () Bool)

(assert (=> d!1718757 (= (nullable!5244 (reg!15404 r!7292)) (nullableFct!1548 (reg!15404 r!7292)))))

(declare-fun bs!1242513 () Bool)

(assert (= bs!1242513 d!1718757))

(declare-fun m!6393640 () Bool)

(assert (=> bs!1242513 m!6393640))

(assert (=> b!5364802 d!1718757))

(declare-fun d!1718759 () Bool)

(declare-fun res!2277101 () Bool)

(declare-fun e!3329738 () Bool)

(assert (=> d!1718759 (=> res!2277101 e!3329738)))

(assert (=> d!1718759 (= res!2277101 ((_ is Nil!61400) (exprs!4959 (h!67849 zl!343))))))

(assert (=> d!1718759 (= (forall!14483 (exprs!4959 (h!67849 zl!343)) lambda!276536) e!3329738)))

(declare-fun b!5365628 () Bool)

(declare-fun e!3329739 () Bool)

(assert (=> b!5365628 (= e!3329738 e!3329739)))

(declare-fun res!2277102 () Bool)

(assert (=> b!5365628 (=> (not res!2277102) (not e!3329739))))

(assert (=> b!5365628 (= res!2277102 (dynLambda!24253 lambda!276536 (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5365629 () Bool)

(assert (=> b!5365629 (= e!3329739 (forall!14483 (t!374745 (exprs!4959 (h!67849 zl!343))) lambda!276536))))

(assert (= (and d!1718759 (not res!2277101)) b!5365628))

(assert (= (and b!5365628 res!2277102) b!5365629))

(declare-fun b_lambda!205715 () Bool)

(assert (=> (not b_lambda!205715) (not b!5365628)))

(declare-fun m!6393642 () Bool)

(assert (=> b!5365628 m!6393642))

(declare-fun m!6393644 () Bool)

(assert (=> b!5365629 m!6393644))

(assert (=> d!1718613 d!1718759))

(assert (=> b!5365346 d!1718685))

(declare-fun d!1718761 () Bool)

(assert (=> d!1718761 (= (flatMap!802 lt!2185510 lambda!276557) (choose!40285 lt!2185510 lambda!276557))))

(declare-fun bs!1242514 () Bool)

(assert (= bs!1242514 d!1718761))

(declare-fun m!6393646 () Bool)

(assert (=> bs!1242514 m!6393646))

(assert (=> d!1718663 d!1718761))

(declare-fun d!1718763 () Bool)

(assert (=> d!1718763 (= (Exists!2256 lambda!276516) (choose!40287 lambda!276516))))

(declare-fun bs!1242515 () Bool)

(assert (= bs!1242515 d!1718763))

(declare-fun m!6393648 () Bool)

(assert (=> bs!1242515 m!6393648))

(assert (=> d!1718511 d!1718763))

(declare-fun d!1718765 () Bool)

(assert (=> d!1718765 (= (Exists!2256 lambda!276517) (choose!40287 lambda!276517))))

(declare-fun bs!1242516 () Bool)

(assert (= bs!1242516 d!1718765))

(declare-fun m!6393650 () Bool)

(assert (=> bs!1242516 m!6393650))

(assert (=> d!1718511 d!1718765))

(declare-fun bs!1242517 () Bool)

(declare-fun d!1718767 () Bool)

(assert (= bs!1242517 (and d!1718767 b!5365334)))

(declare-fun lambda!276566 () Int)

(assert (=> bs!1242517 (not (= lambda!276566 lambda!276551))))

(declare-fun bs!1242518 () Bool)

(assert (= bs!1242518 (and d!1718767 d!1718511)))

(assert (=> bs!1242518 (not (= lambda!276566 lambda!276517))))

(declare-fun bs!1242519 () Bool)

(assert (= bs!1242519 (and d!1718767 b!5365370)))

(assert (=> bs!1242519 (not (= lambda!276566 lambda!276552))))

(declare-fun bs!1242520 () Bool)

(assert (= bs!1242520 (and d!1718767 b!5365373)))

(assert (=> bs!1242520 (not (= lambda!276566 lambda!276553))))

(declare-fun bs!1242521 () Bool)

(assert (= bs!1242521 (and d!1718767 b!5364506)))

(assert (=> bs!1242521 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276566 lambda!276478))))

(assert (=> bs!1242518 (= lambda!276566 lambda!276516)))

(declare-fun bs!1242522 () Bool)

(assert (= bs!1242522 (and d!1718767 d!1718569)))

(assert (=> bs!1242522 (not (= lambda!276566 lambda!276531))))

(assert (=> bs!1242522 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276566 lambda!276530))))

(declare-fun bs!1242523 () Bool)

(assert (= bs!1242523 (and d!1718767 b!5364528)))

(assert (=> bs!1242523 (not (= lambda!276566 lambda!276482))))

(declare-fun bs!1242524 () Bool)

(assert (= bs!1242524 (and d!1718767 b!5365331)))

(assert (=> bs!1242524 (not (= lambda!276566 lambda!276550))))

(assert (=> bs!1242523 (= lambda!276566 lambda!276481)))

(declare-fun bs!1242525 () Bool)

(assert (= bs!1242525 (and d!1718767 d!1718531)))

(assert (=> bs!1242525 (= lambda!276566 lambda!276523)))

(assert (=> bs!1242521 (not (= lambda!276566 lambda!276479))))

(declare-fun bs!1242526 () Bool)

(assert (= bs!1242526 (and d!1718767 d!1718587)))

(assert (=> bs!1242526 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276566 lambda!276532))))

(assert (=> d!1718767 true))

(assert (=> d!1718767 true))

(assert (=> d!1718767 true))

(declare-fun lambda!276567 () Int)

(assert (=> bs!1242517 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276567 lambda!276551))))

(assert (=> bs!1242518 (= lambda!276567 lambda!276517)))

(assert (=> bs!1242519 (not (= lambda!276567 lambda!276552))))

(assert (=> bs!1242520 (= (and (= lt!2185531 (regOne!30662 lt!2185527)) (= (regTwo!30662 r!7292) (regTwo!30662 lt!2185527))) (= lambda!276567 lambda!276553))))

(assert (=> bs!1242521 (not (= lambda!276567 lambda!276478))))

(assert (=> bs!1242518 (not (= lambda!276567 lambda!276516))))

(assert (=> bs!1242522 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276567 lambda!276531))))

(assert (=> bs!1242522 (not (= lambda!276567 lambda!276530))))

(assert (=> bs!1242523 (= lambda!276567 lambda!276482)))

(assert (=> bs!1242524 (not (= lambda!276567 lambda!276550))))

(declare-fun bs!1242527 () Bool)

(assert (= bs!1242527 d!1718767))

(assert (=> bs!1242527 (not (= lambda!276567 lambda!276566))))

(assert (=> bs!1242523 (not (= lambda!276567 lambda!276481))))

(assert (=> bs!1242525 (not (= lambda!276567 lambda!276523))))

(assert (=> bs!1242521 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276567 lambda!276479))))

(assert (=> bs!1242526 (not (= lambda!276567 lambda!276532))))

(assert (=> d!1718767 true))

(assert (=> d!1718767 true))

(assert (=> d!1718767 true))

(assert (=> d!1718767 (= (Exists!2256 lambda!276566) (Exists!2256 lambda!276567))))

(assert (=> d!1718767 true))

(declare-fun _$90!1175 () Unit!153818)

(assert (=> d!1718767 (= (choose!40288 lt!2185531 (regTwo!30662 r!7292) s!2326) _$90!1175)))

(declare-fun m!6393652 () Bool)

(assert (=> bs!1242527 m!6393652))

(declare-fun m!6393654 () Bool)

(assert (=> bs!1242527 m!6393654))

(assert (=> d!1718511 d!1718767))

(assert (=> d!1718511 d!1718753))

(declare-fun d!1718769 () Bool)

(assert (=> d!1718769 (= (isEmpty!33377 (t!374747 s!2326)) ((_ is Nil!61402) (t!374747 s!2326)))))

(assert (=> d!1718627 d!1718769))

(declare-fun bs!1242528 () Bool)

(declare-fun d!1718771 () Bool)

(assert (= bs!1242528 (and d!1718771 d!1718609)))

(declare-fun lambda!276568 () Int)

(assert (=> bs!1242528 (= lambda!276568 lambda!276535)))

(declare-fun bs!1242529 () Bool)

(assert (= bs!1242529 (and d!1718771 d!1718621)))

(assert (=> bs!1242529 (= lambda!276568 lambda!276542)))

(declare-fun bs!1242530 () Bool)

(assert (= bs!1242530 (and d!1718771 d!1718613)))

(assert (=> bs!1242530 (= lambda!276568 lambda!276536)))

(declare-fun bs!1242531 () Bool)

(assert (= bs!1242531 (and d!1718771 d!1718623)))

(assert (=> bs!1242531 (= lambda!276568 lambda!276545)))

(declare-fun bs!1242532 () Bool)

(assert (= bs!1242532 (and d!1718771 d!1718615)))

(assert (=> bs!1242532 (= lambda!276568 lambda!276539)))

(declare-fun bs!1242533 () Bool)

(assert (= bs!1242533 (and d!1718771 b!5364523)))

(assert (=> bs!1242533 (= lambda!276568 lambda!276483)))

(declare-fun b!5365638 () Bool)

(declare-fun e!3329748 () Bool)

(assert (=> b!5365638 (= e!3329748 (isEmpty!33378 (t!374745 (t!374745 (unfocusZipperList!517 zl!343)))))))

(declare-fun b!5365639 () Bool)

(declare-fun e!3329746 () Regex!15075)

(declare-fun e!3329744 () Regex!15075)

(assert (=> b!5365639 (= e!3329746 e!3329744)))

(declare-fun c!934620 () Bool)

(assert (=> b!5365639 (= c!934620 ((_ is Cons!61400) (t!374745 (unfocusZipperList!517 zl!343))))))

(declare-fun b!5365640 () Bool)

(declare-fun e!3329745 () Bool)

(declare-fun e!3329749 () Bool)

(assert (=> b!5365640 (= e!3329745 e!3329749)))

(declare-fun c!934619 () Bool)

(assert (=> b!5365640 (= c!934619 (isEmpty!33378 (tail!10608 (t!374745 (unfocusZipperList!517 zl!343)))))))

(declare-fun b!5365641 () Bool)

(declare-fun lt!2185666 () Regex!15075)

(assert (=> b!5365641 (= e!3329749 (isUnion!371 lt!2185666))))

(declare-fun b!5365642 () Bool)

(declare-fun e!3329747 () Bool)

(assert (=> b!5365642 (= e!3329747 e!3329745)))

(declare-fun c!934621 () Bool)

(assert (=> b!5365642 (= c!934621 (isEmpty!33378 (t!374745 (unfocusZipperList!517 zl!343))))))

(declare-fun b!5365643 () Bool)

(assert (=> b!5365643 (= e!3329745 (isEmptyLang!939 lt!2185666))))

(declare-fun b!5365644 () Bool)

(assert (=> b!5365644 (= e!3329746 (h!67848 (t!374745 (unfocusZipperList!517 zl!343))))))

(declare-fun b!5365645 () Bool)

(assert (=> b!5365645 (= e!3329744 (Union!15075 (h!67848 (t!374745 (unfocusZipperList!517 zl!343))) (generalisedUnion!1004 (t!374745 (t!374745 (unfocusZipperList!517 zl!343))))))))

(assert (=> d!1718771 e!3329747))

(declare-fun res!2277112 () Bool)

(assert (=> d!1718771 (=> (not res!2277112) (not e!3329747))))

(assert (=> d!1718771 (= res!2277112 (validRegex!6811 lt!2185666))))

(assert (=> d!1718771 (= lt!2185666 e!3329746)))

(declare-fun c!934622 () Bool)

(assert (=> d!1718771 (= c!934622 e!3329748)))

(declare-fun res!2277111 () Bool)

(assert (=> d!1718771 (=> (not res!2277111) (not e!3329748))))

(assert (=> d!1718771 (= res!2277111 ((_ is Cons!61400) (t!374745 (unfocusZipperList!517 zl!343))))))

(assert (=> d!1718771 (forall!14483 (t!374745 (unfocusZipperList!517 zl!343)) lambda!276568)))

(assert (=> d!1718771 (= (generalisedUnion!1004 (t!374745 (unfocusZipperList!517 zl!343))) lt!2185666)))

(declare-fun b!5365646 () Bool)

(assert (=> b!5365646 (= e!3329744 EmptyLang!15075)))

(declare-fun b!5365647 () Bool)

(assert (=> b!5365647 (= e!3329749 (= lt!2185666 (head!11511 (t!374745 (unfocusZipperList!517 zl!343)))))))

(assert (= (and d!1718771 res!2277111) b!5365638))

(assert (= (and d!1718771 c!934622) b!5365644))

(assert (= (and d!1718771 (not c!934622)) b!5365639))

(assert (= (and b!5365639 c!934620) b!5365645))

(assert (= (and b!5365639 (not c!934620)) b!5365646))

(assert (= (and d!1718771 res!2277112) b!5365642))

(assert (= (and b!5365642 c!934621) b!5365643))

(assert (= (and b!5365642 (not c!934621)) b!5365640))

(assert (= (and b!5365640 c!934619) b!5365647))

(assert (= (and b!5365640 (not c!934619)) b!5365641))

(declare-fun m!6393656 () Bool)

(assert (=> b!5365641 m!6393656))

(declare-fun m!6393658 () Bool)

(assert (=> b!5365638 m!6393658))

(declare-fun m!6393660 () Bool)

(assert (=> b!5365645 m!6393660))

(assert (=> b!5365642 m!6393364))

(declare-fun m!6393662 () Bool)

(assert (=> b!5365643 m!6393662))

(declare-fun m!6393664 () Bool)

(assert (=> d!1718771 m!6393664))

(declare-fun m!6393666 () Bool)

(assert (=> d!1718771 m!6393666))

(declare-fun m!6393668 () Bool)

(assert (=> b!5365647 m!6393668))

(declare-fun m!6393670 () Bool)

(assert (=> b!5365640 m!6393670))

(assert (=> b!5365640 m!6393670))

(declare-fun m!6393672 () Bool)

(assert (=> b!5365640 m!6393672))

(assert (=> b!5365267 d!1718771))

(assert (=> d!1718625 d!1718629))

(assert (=> d!1718625 d!1718627))

(declare-fun d!1718773 () Bool)

(declare-fun e!3329752 () Bool)

(assert (=> d!1718773 (= (matchZipper!1319 ((_ map or) lt!2185525 lt!2185496) (t!374747 s!2326)) e!3329752)))

(declare-fun res!2277115 () Bool)

(assert (=> d!1718773 (=> res!2277115 e!3329752)))

(assert (=> d!1718773 (= res!2277115 (matchZipper!1319 lt!2185525 (t!374747 s!2326)))))

(assert (=> d!1718773 true))

(declare-fun _$48!1027 () Unit!153818)

(assert (=> d!1718773 (= (choose!40295 lt!2185525 lt!2185496 (t!374747 s!2326)) _$48!1027)))

(declare-fun b!5365650 () Bool)

(assert (=> b!5365650 (= e!3329752 (matchZipper!1319 lt!2185496 (t!374747 s!2326)))))

(assert (= (and d!1718773 (not res!2277115)) b!5365650))

(assert (=> d!1718773 m!6392720))

(assert (=> d!1718773 m!6392718))

(assert (=> b!5365650 m!6392622))

(assert (=> d!1718625 d!1718773))

(declare-fun b!5365651 () Bool)

(declare-fun e!3329754 () (InoxSet Context!8918))

(assert (=> b!5365651 (= e!3329754 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718779 () Bool)

(declare-fun c!934623 () Bool)

(declare-fun e!3329755 () Bool)

(assert (=> d!1718779 (= c!934623 e!3329755)))

(declare-fun res!2277116 () Bool)

(assert (=> d!1718779 (=> (not res!2277116) (not e!3329755))))

(assert (=> d!1718779 (= res!2277116 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185509))))))))

(declare-fun e!3329753 () (InoxSet Context!8918))

(assert (=> d!1718779 (= (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185509))) (h!67850 s!2326)) e!3329753)))

(declare-fun b!5365652 () Bool)

(declare-fun call!383925 () (InoxSet Context!8918))

(assert (=> b!5365652 (= e!3329754 call!383925)))

(declare-fun bm!383920 () Bool)

(assert (=> bm!383920 (= call!383925 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185509))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185509)))))) (h!67850 s!2326)))))

(declare-fun b!5365653 () Bool)

(assert (=> b!5365653 (= e!3329753 ((_ map or) call!383925 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185509)))))) (h!67850 s!2326))))))

(declare-fun b!5365654 () Bool)

(assert (=> b!5365654 (= e!3329755 (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185509)))))))))

(declare-fun b!5365655 () Bool)

(assert (=> b!5365655 (= e!3329753 e!3329754)))

(declare-fun c!934624 () Bool)

(assert (=> b!5365655 (= c!934624 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185509))))))))

(assert (= (and d!1718779 res!2277116) b!5365654))

(assert (= (and d!1718779 c!934623) b!5365653))

(assert (= (and d!1718779 (not c!934623)) b!5365655))

(assert (= (and b!5365655 c!934624) b!5365652))

(assert (= (and b!5365655 (not c!934624)) b!5365651))

(assert (= (or b!5365653 b!5365652) bm!383920))

(declare-fun m!6393676 () Bool)

(assert (=> bm!383920 m!6393676))

(declare-fun m!6393678 () Bool)

(assert (=> b!5365653 m!6393678))

(declare-fun m!6393680 () Bool)

(assert (=> b!5365654 m!6393680))

(assert (=> b!5365391 d!1718779))

(declare-fun b!5365656 () Bool)

(declare-fun res!2277118 () Bool)

(declare-fun e!3329758 () Bool)

(assert (=> b!5365656 (=> res!2277118 e!3329758)))

(assert (=> b!5365656 (= res!2277118 (not ((_ is Concat!23920) lt!2185634)))))

(declare-fun e!3329757 () Bool)

(assert (=> b!5365656 (= e!3329757 e!3329758)))

(declare-fun b!5365657 () Bool)

(declare-fun e!3329756 () Bool)

(declare-fun e!3329759 () Bool)

(assert (=> b!5365657 (= e!3329756 e!3329759)))

(declare-fun res!2277117 () Bool)

(assert (=> b!5365657 (= res!2277117 (not (nullable!5244 (reg!15404 lt!2185634))))))

(assert (=> b!5365657 (=> (not res!2277117) (not e!3329759))))

(declare-fun b!5365658 () Bool)

(declare-fun e!3329760 () Bool)

(declare-fun call!383928 () Bool)

(assert (=> b!5365658 (= e!3329760 call!383928)))

(declare-fun b!5365659 () Bool)

(declare-fun e!3329761 () Bool)

(assert (=> b!5365659 (= e!3329761 call!383928)))

(declare-fun c!934626 () Bool)

(declare-fun call!383926 () Bool)

(declare-fun c!934625 () Bool)

(declare-fun bm!383921 () Bool)

(assert (=> bm!383921 (= call!383926 (validRegex!6811 (ite c!934625 (reg!15404 lt!2185634) (ite c!934626 (regOne!30663 lt!2185634) (regOne!30662 lt!2185634)))))))

(declare-fun b!5365660 () Bool)

(declare-fun e!3329762 () Bool)

(assert (=> b!5365660 (= e!3329762 e!3329756)))

(assert (=> b!5365660 (= c!934625 ((_ is Star!15075) lt!2185634))))

(declare-fun b!5365661 () Bool)

(assert (=> b!5365661 (= e!3329759 call!383926)))

(declare-fun d!1718783 () Bool)

(declare-fun res!2277121 () Bool)

(assert (=> d!1718783 (=> res!2277121 e!3329762)))

(assert (=> d!1718783 (= res!2277121 ((_ is ElementMatch!15075) lt!2185634))))

(assert (=> d!1718783 (= (validRegex!6811 lt!2185634) e!3329762)))

(declare-fun bm!383922 () Bool)

(assert (=> bm!383922 (= call!383928 (validRegex!6811 (ite c!934626 (regTwo!30663 lt!2185634) (regTwo!30662 lt!2185634))))))

(declare-fun b!5365662 () Bool)

(declare-fun res!2277119 () Bool)

(assert (=> b!5365662 (=> (not res!2277119) (not e!3329760))))

(declare-fun call!383927 () Bool)

(assert (=> b!5365662 (= res!2277119 call!383927)))

(assert (=> b!5365662 (= e!3329757 e!3329760)))

(declare-fun bm!383923 () Bool)

(assert (=> bm!383923 (= call!383927 call!383926)))

(declare-fun b!5365663 () Bool)

(assert (=> b!5365663 (= e!3329758 e!3329761)))

(declare-fun res!2277120 () Bool)

(assert (=> b!5365663 (=> (not res!2277120) (not e!3329761))))

(assert (=> b!5365663 (= res!2277120 call!383927)))

(declare-fun b!5365664 () Bool)

(assert (=> b!5365664 (= e!3329756 e!3329757)))

(assert (=> b!5365664 (= c!934626 ((_ is Union!15075) lt!2185634))))

(assert (= (and d!1718783 (not res!2277121)) b!5365660))

(assert (= (and b!5365660 c!934625) b!5365657))

(assert (= (and b!5365660 (not c!934625)) b!5365664))

(assert (= (and b!5365657 res!2277117) b!5365661))

(assert (= (and b!5365664 c!934626) b!5365662))

(assert (= (and b!5365664 (not c!934626)) b!5365656))

(assert (= (and b!5365662 res!2277119) b!5365658))

(assert (= (and b!5365656 (not res!2277118)) b!5365663))

(assert (= (and b!5365663 res!2277120) b!5365659))

(assert (= (or b!5365658 b!5365659) bm!383922))

(assert (= (or b!5365662 b!5365663) bm!383923))

(assert (= (or b!5365661 bm!383923) bm!383921))

(declare-fun m!6393682 () Bool)

(assert (=> b!5365657 m!6393682))

(declare-fun m!6393684 () Bool)

(assert (=> bm!383921 m!6393684))

(declare-fun m!6393686 () Bool)

(assert (=> bm!383922 m!6393686))

(assert (=> d!1718615 d!1718783))

(declare-fun d!1718785 () Bool)

(declare-fun res!2277122 () Bool)

(declare-fun e!3329763 () Bool)

(assert (=> d!1718785 (=> res!2277122 e!3329763)))

(assert (=> d!1718785 (= res!2277122 ((_ is Nil!61400) (exprs!4959 (h!67849 zl!343))))))

(assert (=> d!1718785 (= (forall!14483 (exprs!4959 (h!67849 zl!343)) lambda!276539) e!3329763)))

(declare-fun b!5365665 () Bool)

(declare-fun e!3329764 () Bool)

(assert (=> b!5365665 (= e!3329763 e!3329764)))

(declare-fun res!2277123 () Bool)

(assert (=> b!5365665 (=> (not res!2277123) (not e!3329764))))

(assert (=> b!5365665 (= res!2277123 (dynLambda!24253 lambda!276539 (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5365666 () Bool)

(assert (=> b!5365666 (= e!3329764 (forall!14483 (t!374745 (exprs!4959 (h!67849 zl!343))) lambda!276539))))

(assert (= (and d!1718785 (not res!2277122)) b!5365665))

(assert (= (and b!5365665 res!2277123) b!5365666))

(declare-fun b_lambda!205717 () Bool)

(assert (=> (not b_lambda!205717) (not b!5365665)))

(declare-fun m!6393688 () Bool)

(assert (=> b!5365665 m!6393688))

(declare-fun m!6393690 () Bool)

(assert (=> b!5365666 m!6393690))

(assert (=> d!1718615 d!1718785))

(declare-fun b!5365667 () Bool)

(declare-fun c!934628 () Bool)

(declare-fun e!3329765 () Bool)

(assert (=> b!5365667 (= c!934628 e!3329765)))

(declare-fun res!2277124 () Bool)

(assert (=> b!5365667 (=> (not res!2277124) (not e!3329765))))

(assert (=> b!5365667 (= res!2277124 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185523))))))

(declare-fun e!3329766 () (InoxSet Context!8918))

(declare-fun e!3329767 () (InoxSet Context!8918))

(assert (=> b!5365667 (= e!3329766 e!3329767)))

(declare-fun b!5365668 () Bool)

(declare-fun e!3329768 () (InoxSet Context!8918))

(declare-fun call!383931 () (InoxSet Context!8918))

(assert (=> b!5365668 (= e!3329768 call!383931)))

(declare-fun b!5365669 () Bool)

(declare-fun e!3329770 () (InoxSet Context!8918))

(assert (=> b!5365669 (= e!3329770 call!383931)))

(declare-fun b!5365670 () Bool)

(declare-fun e!3329769 () (InoxSet Context!8918))

(assert (=> b!5365670 (= e!3329769 e!3329766)))

(declare-fun c!934631 () Bool)

(assert (=> b!5365670 (= c!934631 ((_ is Union!15075) (h!67848 (exprs!4959 lt!2185523))))))

(declare-fun bm!383924 () Bool)

(declare-fun call!383934 () (InoxSet Context!8918))

(declare-fun call!383933 () (InoxSet Context!8918))

(assert (=> bm!383924 (= call!383934 call!383933)))

(declare-fun b!5365671 () Bool)

(declare-fun call!383929 () (InoxSet Context!8918))

(assert (=> b!5365671 (= e!3329766 ((_ map or) call!383929 call!383933))))

(declare-fun b!5365672 () Bool)

(assert (=> b!5365672 (= e!3329769 (store ((as const (Array Context!8918 Bool)) false) (Context!8919 (t!374745 (exprs!4959 lt!2185523))) true))))

(declare-fun b!5365673 () Bool)

(assert (=> b!5365673 (= e!3329765 (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 lt!2185523)))))))

(declare-fun call!383932 () List!61524)

(declare-fun bm!383925 () Bool)

(assert (=> bm!383925 (= call!383929 (derivationStepZipperDown!523 (ite c!934631 (regOne!30663 (h!67848 (exprs!4959 lt!2185523))) (regOne!30662 (h!67848 (exprs!4959 lt!2185523)))) (ite c!934631 (Context!8919 (t!374745 (exprs!4959 lt!2185523))) (Context!8919 call!383932)) (h!67850 s!2326)))))

(declare-fun d!1718787 () Bool)

(declare-fun c!934630 () Bool)

(assert (=> d!1718787 (= c!934630 (and ((_ is ElementMatch!15075) (h!67848 (exprs!4959 lt!2185523))) (= (c!934311 (h!67848 (exprs!4959 lt!2185523))) (h!67850 s!2326))))))

(assert (=> d!1718787 (= (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185523)) (Context!8919 (t!374745 (exprs!4959 lt!2185523))) (h!67850 s!2326)) e!3329769)))

(declare-fun b!5365674 () Bool)

(declare-fun c!934629 () Bool)

(assert (=> b!5365674 (= c!934629 ((_ is Star!15075) (h!67848 (exprs!4959 lt!2185523))))))

(assert (=> b!5365674 (= e!3329770 e!3329768)))

(declare-fun bm!383926 () Bool)

(declare-fun call!383930 () List!61524)

(assert (=> bm!383926 (= call!383930 call!383932)))

(declare-fun c!934627 () Bool)

(declare-fun bm!383927 () Bool)

(assert (=> bm!383927 (= call!383932 ($colon$colon!1446 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185523)))) (ite (or c!934628 c!934627) (regTwo!30662 (h!67848 (exprs!4959 lt!2185523))) (h!67848 (exprs!4959 lt!2185523)))))))

(declare-fun bm!383928 () Bool)

(assert (=> bm!383928 (= call!383931 call!383934)))

(declare-fun b!5365675 () Bool)

(assert (=> b!5365675 (= e!3329767 e!3329770)))

(assert (=> b!5365675 (= c!934627 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185523))))))

(declare-fun bm!383929 () Bool)

(assert (=> bm!383929 (= call!383933 (derivationStepZipperDown!523 (ite c!934631 (regTwo!30663 (h!67848 (exprs!4959 lt!2185523))) (ite c!934628 (regTwo!30662 (h!67848 (exprs!4959 lt!2185523))) (ite c!934627 (regOne!30662 (h!67848 (exprs!4959 lt!2185523))) (reg!15404 (h!67848 (exprs!4959 lt!2185523)))))) (ite (or c!934631 c!934628) (Context!8919 (t!374745 (exprs!4959 lt!2185523))) (Context!8919 call!383930)) (h!67850 s!2326)))))

(declare-fun b!5365676 () Bool)

(assert (=> b!5365676 (= e!3329767 ((_ map or) call!383929 call!383934))))

(declare-fun b!5365677 () Bool)

(assert (=> b!5365677 (= e!3329768 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718787 c!934630) b!5365672))

(assert (= (and d!1718787 (not c!934630)) b!5365670))

(assert (= (and b!5365670 c!934631) b!5365671))

(assert (= (and b!5365670 (not c!934631)) b!5365667))

(assert (= (and b!5365667 res!2277124) b!5365673))

(assert (= (and b!5365667 c!934628) b!5365676))

(assert (= (and b!5365667 (not c!934628)) b!5365675))

(assert (= (and b!5365675 c!934627) b!5365669))

(assert (= (and b!5365675 (not c!934627)) b!5365674))

(assert (= (and b!5365674 c!934629) b!5365668))

(assert (= (and b!5365674 (not c!934629)) b!5365677))

(assert (= (or b!5365669 b!5365668) bm!383926))

(assert (= (or b!5365669 b!5365668) bm!383928))

(assert (= (or b!5365676 bm!383926) bm!383927))

(assert (= (or b!5365676 bm!383928) bm!383924))

(assert (= (or b!5365671 bm!383924) bm!383929))

(assert (= (or b!5365671 b!5365676) bm!383925))

(declare-fun m!6393692 () Bool)

(assert (=> b!5365672 m!6393692))

(declare-fun m!6393694 () Bool)

(assert (=> bm!383929 m!6393694))

(declare-fun m!6393696 () Bool)

(assert (=> bm!383927 m!6393696))

(declare-fun m!6393698 () Bool)

(assert (=> b!5365673 m!6393698))

(declare-fun m!6393700 () Bool)

(assert (=> bm!383925 m!6393700))

(assert (=> bm!383824 d!1718787))

(declare-fun d!1718789 () Bool)

(assert (=> d!1718789 (= (isUnion!371 lt!2185639) ((_ is Union!15075) lt!2185639))))

(assert (=> b!5365263 d!1718789))

(declare-fun b!5365681 () Bool)

(declare-fun e!3329771 () Bool)

(declare-fun lt!2185667 () List!61526)

(assert (=> b!5365681 (= e!3329771 (or (not (= (t!374747 s!2326) Nil!61402)) (= lt!2185667 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)))))))

(declare-fun d!1718791 () Bool)

(assert (=> d!1718791 e!3329771))

(declare-fun res!2277126 () Bool)

(assert (=> d!1718791 (=> (not res!2277126) (not e!3329771))))

(assert (=> d!1718791 (= res!2277126 (= (content!10965 lt!2185667) ((_ map or) (content!10965 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402))) (content!10965 (t!374747 s!2326)))))))

(declare-fun e!3329772 () List!61526)

(assert (=> d!1718791 (= lt!2185667 e!3329772)))

(declare-fun c!934632 () Bool)

(assert (=> d!1718791 (= c!934632 ((_ is Nil!61402) (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402))))))

(assert (=> d!1718791 (= (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326)) lt!2185667)))

(declare-fun b!5365678 () Bool)

(assert (=> b!5365678 (= e!3329772 (t!374747 s!2326))))

(declare-fun b!5365679 () Bool)

(assert (=> b!5365679 (= e!3329772 (Cons!61402 (h!67850 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402))) (++!13378 (t!374747 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402))) (t!374747 s!2326))))))

(declare-fun b!5365680 () Bool)

(declare-fun res!2277125 () Bool)

(assert (=> b!5365680 (=> (not res!2277125) (not e!3329771))))

(assert (=> b!5365680 (= res!2277125 (= (size!39786 lt!2185667) (+ (size!39786 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402))) (size!39786 (t!374747 s!2326)))))))

(assert (= (and d!1718791 c!934632) b!5365678))

(assert (= (and d!1718791 (not c!934632)) b!5365679))

(assert (= (and d!1718791 res!2277126) b!5365680))

(assert (= (and b!5365680 res!2277125) b!5365681))

(declare-fun m!6393702 () Bool)

(assert (=> d!1718791 m!6393702))

(assert (=> d!1718791 m!6393122))

(declare-fun m!6393704 () Bool)

(assert (=> d!1718791 m!6393704))

(declare-fun m!6393706 () Bool)

(assert (=> d!1718791 m!6393706))

(declare-fun m!6393708 () Bool)

(assert (=> b!5365679 m!6393708))

(declare-fun m!6393710 () Bool)

(assert (=> b!5365680 m!6393710))

(assert (=> b!5365680 m!6393122))

(declare-fun m!6393712 () Bool)

(assert (=> b!5365680 m!6393712))

(declare-fun m!6393714 () Bool)

(assert (=> b!5365680 m!6393714))

(assert (=> b!5364979 d!1718791))

(declare-fun b!5365685 () Bool)

(declare-fun e!3329773 () Bool)

(declare-fun lt!2185668 () List!61526)

(assert (=> b!5365685 (= e!3329773 (or (not (= (Cons!61402 (h!67850 s!2326) Nil!61402) Nil!61402)) (= lt!2185668 Nil!61402)))))

(declare-fun d!1718793 () Bool)

(assert (=> d!1718793 e!3329773))

(declare-fun res!2277128 () Bool)

(assert (=> d!1718793 (=> (not res!2277128) (not e!3329773))))

(assert (=> d!1718793 (= res!2277128 (= (content!10965 lt!2185668) ((_ map or) (content!10965 Nil!61402) (content!10965 (Cons!61402 (h!67850 s!2326) Nil!61402)))))))

(declare-fun e!3329774 () List!61526)

(assert (=> d!1718793 (= lt!2185668 e!3329774)))

(declare-fun c!934633 () Bool)

(assert (=> d!1718793 (= c!934633 ((_ is Nil!61402) Nil!61402))))

(assert (=> d!1718793 (= (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) lt!2185668)))

(declare-fun b!5365682 () Bool)

(assert (=> b!5365682 (= e!3329774 (Cons!61402 (h!67850 s!2326) Nil!61402))))

(declare-fun b!5365683 () Bool)

(assert (=> b!5365683 (= e!3329774 (Cons!61402 (h!67850 Nil!61402) (++!13378 (t!374747 Nil!61402) (Cons!61402 (h!67850 s!2326) Nil!61402))))))

(declare-fun b!5365684 () Bool)

(declare-fun res!2277127 () Bool)

(assert (=> b!5365684 (=> (not res!2277127) (not e!3329773))))

(assert (=> b!5365684 (= res!2277127 (= (size!39786 lt!2185668) (+ (size!39786 Nil!61402) (size!39786 (Cons!61402 (h!67850 s!2326) Nil!61402)))))))

(assert (= (and d!1718793 c!934633) b!5365682))

(assert (= (and d!1718793 (not c!934633)) b!5365683))

(assert (= (and d!1718793 res!2277128) b!5365684))

(assert (= (and b!5365684 res!2277127) b!5365685))

(declare-fun m!6393716 () Bool)

(assert (=> d!1718793 m!6393716))

(declare-fun m!6393718 () Bool)

(assert (=> d!1718793 m!6393718))

(declare-fun m!6393720 () Bool)

(assert (=> d!1718793 m!6393720))

(declare-fun m!6393722 () Bool)

(assert (=> b!5365683 m!6393722))

(declare-fun m!6393724 () Bool)

(assert (=> b!5365684 m!6393724))

(declare-fun m!6393726 () Bool)

(assert (=> b!5365684 m!6393726))

(declare-fun m!6393728 () Bool)

(assert (=> b!5365684 m!6393728))

(assert (=> b!5364979 d!1718793))

(declare-fun d!1718795 () Bool)

(assert (=> d!1718795 (= (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326)) s!2326)))

(declare-fun lt!2185671 () Unit!153818)

(declare-fun choose!40298 (List!61526 C!30420 List!61526 List!61526) Unit!153818)

(assert (=> d!1718795 (= lt!2185671 (choose!40298 Nil!61402 (h!67850 s!2326) (t!374747 s!2326) s!2326))))

(assert (=> d!1718795 (= (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) (t!374747 s!2326))) s!2326)))

(assert (=> d!1718795 (= (lemmaMoveElementToOtherListKeepsConcatEq!1790 Nil!61402 (h!67850 s!2326) (t!374747 s!2326) s!2326) lt!2185671)))

(declare-fun bs!1242536 () Bool)

(assert (= bs!1242536 d!1718795))

(assert (=> bs!1242536 m!6393122))

(assert (=> bs!1242536 m!6393122))

(assert (=> bs!1242536 m!6393124))

(declare-fun m!6393736 () Bool)

(assert (=> bs!1242536 m!6393736))

(declare-fun m!6393738 () Bool)

(assert (=> bs!1242536 m!6393738))

(assert (=> b!5364979 d!1718795))

(declare-fun b!5365695 () Bool)

(declare-fun e!3329786 () Bool)

(declare-fun lt!2185673 () Option!15186)

(assert (=> b!5365695 (= e!3329786 (not (isDefined!11889 lt!2185673)))))

(declare-fun b!5365696 () Bool)

(declare-fun e!3329783 () Bool)

(assert (=> b!5365696 (= e!3329783 (matchR!7260 (regTwo!30662 r!7292) (t!374747 s!2326)))))

(declare-fun b!5365697 () Bool)

(declare-fun lt!2185674 () Unit!153818)

(declare-fun lt!2185672 () Unit!153818)

(assert (=> b!5365697 (= lt!2185674 lt!2185672)))

(assert (=> b!5365697 (= (++!13378 (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (Cons!61402 (h!67850 (t!374747 s!2326)) Nil!61402)) (t!374747 (t!374747 s!2326))) s!2326)))

(assert (=> b!5365697 (= lt!2185672 (lemmaMoveElementToOtherListKeepsConcatEq!1790 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (h!67850 (t!374747 s!2326)) (t!374747 (t!374747 s!2326)) s!2326))))

(declare-fun e!3329782 () Option!15186)

(assert (=> b!5365697 (= e!3329782 (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (Cons!61402 (h!67850 (t!374747 s!2326)) Nil!61402)) (t!374747 (t!374747 s!2326)) s!2326))))

(declare-fun b!5365698 () Bool)

(declare-fun res!2277134 () Bool)

(declare-fun e!3329784 () Bool)

(assert (=> b!5365698 (=> (not res!2277134) (not e!3329784))))

(assert (=> b!5365698 (= res!2277134 (matchR!7260 (regTwo!30662 r!7292) (_2!35577 (get!21121 lt!2185673))))))

(declare-fun b!5365699 () Bool)

(assert (=> b!5365699 (= e!3329784 (= (++!13378 (_1!35577 (get!21121 lt!2185673)) (_2!35577 (get!21121 lt!2185673))) s!2326))))

(declare-fun b!5365701 () Bool)

(declare-fun e!3329785 () Option!15186)

(assert (=> b!5365701 (= e!3329785 e!3329782)))

(declare-fun c!934637 () Bool)

(assert (=> b!5365701 (= c!934637 ((_ is Nil!61402) (t!374747 s!2326)))))

(declare-fun b!5365702 () Bool)

(assert (=> b!5365702 (= e!3329782 None!15185)))

(declare-fun b!5365703 () Bool)

(declare-fun res!2277137 () Bool)

(assert (=> b!5365703 (=> (not res!2277137) (not e!3329784))))

(assert (=> b!5365703 (= res!2277137 (matchR!7260 lt!2185531 (_1!35577 (get!21121 lt!2185673))))))

(declare-fun d!1718801 () Bool)

(assert (=> d!1718801 e!3329786))

(declare-fun res!2277135 () Bool)

(assert (=> d!1718801 (=> res!2277135 e!3329786)))

(assert (=> d!1718801 (= res!2277135 e!3329784)))

(declare-fun res!2277138 () Bool)

(assert (=> d!1718801 (=> (not res!2277138) (not e!3329784))))

(assert (=> d!1718801 (= res!2277138 (isDefined!11889 lt!2185673))))

(assert (=> d!1718801 (= lt!2185673 e!3329785)))

(declare-fun c!934636 () Bool)

(assert (=> d!1718801 (= c!934636 e!3329783)))

(declare-fun res!2277136 () Bool)

(assert (=> d!1718801 (=> (not res!2277136) (not e!3329783))))

(assert (=> d!1718801 (= res!2277136 (matchR!7260 lt!2185531 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402))))))

(assert (=> d!1718801 (validRegex!6811 lt!2185531)))

(assert (=> d!1718801 (= (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326) s!2326) lt!2185673)))

(declare-fun b!5365700 () Bool)

(assert (=> b!5365700 (= e!3329785 (Some!15185 (tuple2!64549 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326))))))

(assert (= (and d!1718801 res!2277136) b!5365696))

(assert (= (and d!1718801 c!934636) b!5365700))

(assert (= (and d!1718801 (not c!934636)) b!5365701))

(assert (= (and b!5365701 c!934637) b!5365702))

(assert (= (and b!5365701 (not c!934637)) b!5365697))

(assert (= (and d!1718801 res!2277138) b!5365703))

(assert (= (and b!5365703 res!2277137) b!5365698))

(assert (= (and b!5365698 res!2277134) b!5365699))

(assert (= (and d!1718801 (not res!2277135)) b!5365695))

(assert (=> b!5365697 m!6393122))

(declare-fun m!6393740 () Bool)

(assert (=> b!5365697 m!6393740))

(assert (=> b!5365697 m!6393740))

(declare-fun m!6393742 () Bool)

(assert (=> b!5365697 m!6393742))

(assert (=> b!5365697 m!6393122))

(declare-fun m!6393744 () Bool)

(assert (=> b!5365697 m!6393744))

(assert (=> b!5365697 m!6393740))

(declare-fun m!6393746 () Bool)

(assert (=> b!5365697 m!6393746))

(declare-fun m!6393748 () Bool)

(assert (=> d!1718801 m!6393748))

(assert (=> d!1718801 m!6393122))

(declare-fun m!6393750 () Bool)

(assert (=> d!1718801 m!6393750))

(assert (=> d!1718801 m!6393084))

(declare-fun m!6393752 () Bool)

(assert (=> b!5365699 m!6393752))

(declare-fun m!6393754 () Bool)

(assert (=> b!5365699 m!6393754))

(assert (=> b!5365703 m!6393752))

(declare-fun m!6393756 () Bool)

(assert (=> b!5365703 m!6393756))

(declare-fun m!6393758 () Bool)

(assert (=> b!5365696 m!6393758))

(assert (=> b!5365695 m!6393748))

(assert (=> b!5365698 m!6393752))

(declare-fun m!6393760 () Bool)

(assert (=> b!5365698 m!6393760))

(assert (=> b!5364979 d!1718801))

(assert (=> b!5365360 d!1718685))

(declare-fun d!1718803 () Bool)

(assert (=> d!1718803 (= (isDefined!11889 lt!2185626) (not (isEmpty!33379 lt!2185626)))))

(declare-fun bs!1242537 () Bool)

(assert (= bs!1242537 d!1718803))

(declare-fun m!6393762 () Bool)

(assert (=> bs!1242537 m!6393762))

(assert (=> b!5365103 d!1718803))

(declare-fun b!5365708 () Bool)

(declare-fun e!3329790 () (InoxSet Context!8918))

(assert (=> b!5365708 (= e!3329790 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718805 () Bool)

(declare-fun c!934640 () Bool)

(declare-fun e!3329791 () Bool)

(assert (=> d!1718805 (= c!934640 e!3329791)))

(declare-fun res!2277139 () Bool)

(assert (=> d!1718805 (=> (not res!2277139) (not e!3329791))))

(assert (=> d!1718805 (= res!2277139 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185502))))))))

(declare-fun e!3329789 () (InoxSet Context!8918))

(assert (=> d!1718805 (= (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185502))) (h!67850 s!2326)) e!3329789)))

(declare-fun b!5365709 () Bool)

(declare-fun call!383938 () (InoxSet Context!8918))

(assert (=> b!5365709 (= e!3329790 call!383938)))

(declare-fun bm!383933 () Bool)

(assert (=> bm!383933 (= call!383938 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185502))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185502)))))) (h!67850 s!2326)))))

(declare-fun b!5365710 () Bool)

(assert (=> b!5365710 (= e!3329789 ((_ map or) call!383938 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185502)))))) (h!67850 s!2326))))))

(declare-fun b!5365711 () Bool)

(assert (=> b!5365711 (= e!3329791 (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185502)))))))))

(declare-fun b!5365712 () Bool)

(assert (=> b!5365712 (= e!3329789 e!3329790)))

(declare-fun c!934641 () Bool)

(assert (=> b!5365712 (= c!934641 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185502))))))))

(assert (= (and d!1718805 res!2277139) b!5365711))

(assert (= (and d!1718805 c!934640) b!5365710))

(assert (= (and d!1718805 (not c!934640)) b!5365712))

(assert (= (and b!5365712 c!934641) b!5365709))

(assert (= (and b!5365712 (not c!934641)) b!5365708))

(assert (= (or b!5365710 b!5365709) bm!383933))

(declare-fun m!6393764 () Bool)

(assert (=> bm!383933 m!6393764))

(declare-fun m!6393766 () Bool)

(assert (=> b!5365710 m!6393766))

(declare-fun m!6393768 () Bool)

(assert (=> b!5365711 m!6393768))

(assert (=> b!5365187 d!1718805))

(declare-fun b!5365713 () Bool)

(declare-fun res!2277141 () Bool)

(declare-fun e!3329794 () Bool)

(assert (=> b!5365713 (=> res!2277141 e!3329794)))

(assert (=> b!5365713 (= res!2277141 (not ((_ is Concat!23920) lt!2185616)))))

(declare-fun e!3329793 () Bool)

(assert (=> b!5365713 (= e!3329793 e!3329794)))

(declare-fun b!5365714 () Bool)

(declare-fun e!3329792 () Bool)

(declare-fun e!3329795 () Bool)

(assert (=> b!5365714 (= e!3329792 e!3329795)))

(declare-fun res!2277140 () Bool)

(assert (=> b!5365714 (= res!2277140 (not (nullable!5244 (reg!15404 lt!2185616))))))

(assert (=> b!5365714 (=> (not res!2277140) (not e!3329795))))

(declare-fun b!5365715 () Bool)

(declare-fun e!3329796 () Bool)

(declare-fun call!383941 () Bool)

(assert (=> b!5365715 (= e!3329796 call!383941)))

(declare-fun b!5365716 () Bool)

(declare-fun e!3329797 () Bool)

(assert (=> b!5365716 (= e!3329797 call!383941)))

(declare-fun c!934643 () Bool)

(declare-fun bm!383934 () Bool)

(declare-fun call!383939 () Bool)

(declare-fun c!934642 () Bool)

(assert (=> bm!383934 (= call!383939 (validRegex!6811 (ite c!934642 (reg!15404 lt!2185616) (ite c!934643 (regOne!30663 lt!2185616) (regOne!30662 lt!2185616)))))))

(declare-fun b!5365717 () Bool)

(declare-fun e!3329798 () Bool)

(assert (=> b!5365717 (= e!3329798 e!3329792)))

(assert (=> b!5365717 (= c!934642 ((_ is Star!15075) lt!2185616))))

(declare-fun b!5365718 () Bool)

(assert (=> b!5365718 (= e!3329795 call!383939)))

(declare-fun d!1718807 () Bool)

(declare-fun res!2277144 () Bool)

(assert (=> d!1718807 (=> res!2277144 e!3329798)))

(assert (=> d!1718807 (= res!2277144 ((_ is ElementMatch!15075) lt!2185616))))

(assert (=> d!1718807 (= (validRegex!6811 lt!2185616) e!3329798)))

(declare-fun bm!383935 () Bool)

(assert (=> bm!383935 (= call!383941 (validRegex!6811 (ite c!934643 (regTwo!30663 lt!2185616) (regTwo!30662 lt!2185616))))))

(declare-fun b!5365719 () Bool)

(declare-fun res!2277142 () Bool)

(assert (=> b!5365719 (=> (not res!2277142) (not e!3329796))))

(declare-fun call!383940 () Bool)

(assert (=> b!5365719 (= res!2277142 call!383940)))

(assert (=> b!5365719 (= e!3329793 e!3329796)))

(declare-fun bm!383936 () Bool)

(assert (=> bm!383936 (= call!383940 call!383939)))

(declare-fun b!5365720 () Bool)

(assert (=> b!5365720 (= e!3329794 e!3329797)))

(declare-fun res!2277143 () Bool)

(assert (=> b!5365720 (=> (not res!2277143) (not e!3329797))))

(assert (=> b!5365720 (= res!2277143 call!383940)))

(declare-fun b!5365721 () Bool)

(assert (=> b!5365721 (= e!3329792 e!3329793)))

(assert (=> b!5365721 (= c!934643 ((_ is Union!15075) lt!2185616))))

(assert (= (and d!1718807 (not res!2277144)) b!5365717))

(assert (= (and b!5365717 c!934642) b!5365714))

(assert (= (and b!5365717 (not c!934642)) b!5365721))

(assert (= (and b!5365714 res!2277140) b!5365718))

(assert (= (and b!5365721 c!934643) b!5365719))

(assert (= (and b!5365721 (not c!934643)) b!5365713))

(assert (= (and b!5365719 res!2277142) b!5365715))

(assert (= (and b!5365713 (not res!2277141)) b!5365720))

(assert (= (and b!5365720 res!2277143) b!5365716))

(assert (= (or b!5365715 b!5365716) bm!383935))

(assert (= (or b!5365719 b!5365720) bm!383936))

(assert (= (or b!5365718 bm!383936) bm!383934))

(declare-fun m!6393770 () Bool)

(assert (=> b!5365714 m!6393770))

(declare-fun m!6393772 () Bool)

(assert (=> bm!383934 m!6393772))

(declare-fun m!6393774 () Bool)

(assert (=> bm!383935 m!6393774))

(assert (=> d!1718549 d!1718807))

(declare-fun bs!1242538 () Bool)

(declare-fun d!1718809 () Bool)

(assert (= bs!1242538 (and d!1718809 d!1718609)))

(declare-fun lambda!276569 () Int)

(assert (=> bs!1242538 (= lambda!276569 lambda!276535)))

(declare-fun bs!1242539 () Bool)

(assert (= bs!1242539 (and d!1718809 d!1718621)))

(assert (=> bs!1242539 (= lambda!276569 lambda!276542)))

(declare-fun bs!1242540 () Bool)

(assert (= bs!1242540 (and d!1718809 d!1718613)))

(assert (=> bs!1242540 (= lambda!276569 lambda!276536)))

(declare-fun bs!1242541 () Bool)

(assert (= bs!1242541 (and d!1718809 d!1718771)))

(assert (=> bs!1242541 (= lambda!276569 lambda!276568)))

(declare-fun bs!1242542 () Bool)

(assert (= bs!1242542 (and d!1718809 d!1718623)))

(assert (=> bs!1242542 (= lambda!276569 lambda!276545)))

(declare-fun bs!1242543 () Bool)

(assert (= bs!1242543 (and d!1718809 d!1718615)))

(assert (=> bs!1242543 (= lambda!276569 lambda!276539)))

(declare-fun bs!1242544 () Bool)

(assert (= bs!1242544 (and d!1718809 b!5364523)))

(assert (=> bs!1242544 (= lambda!276569 lambda!276483)))

(declare-fun b!5365722 () Bool)

(declare-fun e!3329803 () Bool)

(assert (=> b!5365722 (= e!3329803 (isEmpty!33378 (t!374745 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401)))))))

(declare-fun b!5365723 () Bool)

(declare-fun e!3329801 () Regex!15075)

(declare-fun e!3329799 () Regex!15075)

(assert (=> b!5365723 (= e!3329801 e!3329799)))

(declare-fun c!934645 () Bool)

(assert (=> b!5365723 (= c!934645 ((_ is Cons!61400) (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))))))

(declare-fun b!5365724 () Bool)

(declare-fun e!3329800 () Bool)

(declare-fun e!3329804 () Bool)

(assert (=> b!5365724 (= e!3329800 e!3329804)))

(declare-fun c!934644 () Bool)

(assert (=> b!5365724 (= c!934644 (isEmpty!33378 (tail!10608 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401)))))))

(declare-fun b!5365725 () Bool)

(declare-fun lt!2185675 () Regex!15075)

(assert (=> b!5365725 (= e!3329804 (isUnion!371 lt!2185675))))

(declare-fun b!5365726 () Bool)

(declare-fun e!3329802 () Bool)

(assert (=> b!5365726 (= e!3329802 e!3329800)))

(declare-fun c!934646 () Bool)

(assert (=> b!5365726 (= c!934646 (isEmpty!33378 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))))))

(declare-fun b!5365727 () Bool)

(assert (=> b!5365727 (= e!3329800 (isEmptyLang!939 lt!2185675))))

(declare-fun b!5365728 () Bool)

(assert (=> b!5365728 (= e!3329801 (h!67848 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))))))

(declare-fun b!5365729 () Bool)

(assert (=> b!5365729 (= e!3329799 (Union!15075 (h!67848 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))) (generalisedUnion!1004 (t!374745 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))))))))

(assert (=> d!1718809 e!3329802))

(declare-fun res!2277146 () Bool)

(assert (=> d!1718809 (=> (not res!2277146) (not e!3329802))))

(assert (=> d!1718809 (= res!2277146 (validRegex!6811 lt!2185675))))

(assert (=> d!1718809 (= lt!2185675 e!3329801)))

(declare-fun c!934647 () Bool)

(assert (=> d!1718809 (= c!934647 e!3329803)))

(declare-fun res!2277145 () Bool)

(assert (=> d!1718809 (=> (not res!2277145) (not e!3329803))))

(assert (=> d!1718809 (= res!2277145 ((_ is Cons!61400) (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))))))

(assert (=> d!1718809 (forall!14483 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401)) lambda!276569)))

(assert (=> d!1718809 (= (generalisedUnion!1004 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401))) lt!2185675)))

(declare-fun b!5365730 () Bool)

(assert (=> b!5365730 (= e!3329799 EmptyLang!15075)))

(declare-fun b!5365731 () Bool)

(assert (=> b!5365731 (= e!3329804 (= lt!2185675 (head!11511 (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401)))))))

(assert (= (and d!1718809 res!2277145) b!5365722))

(assert (= (and d!1718809 c!934647) b!5365728))

(assert (= (and d!1718809 (not c!934647)) b!5365723))

(assert (= (and b!5365723 c!934645) b!5365729))

(assert (= (and b!5365723 (not c!934645)) b!5365730))

(assert (= (and d!1718809 res!2277146) b!5365726))

(assert (= (and b!5365726 c!934646) b!5365727))

(assert (= (and b!5365726 (not c!934646)) b!5365724))

(assert (= (and b!5365724 c!934644) b!5365731))

(assert (= (and b!5365724 (not c!934644)) b!5365725))

(declare-fun m!6393780 () Bool)

(assert (=> b!5365725 m!6393780))

(declare-fun m!6393782 () Bool)

(assert (=> b!5365722 m!6393782))

(declare-fun m!6393784 () Bool)

(assert (=> b!5365729 m!6393784))

(assert (=> b!5365726 m!6393180))

(declare-fun m!6393786 () Bool)

(assert (=> b!5365726 m!6393786))

(declare-fun m!6393788 () Bool)

(assert (=> b!5365727 m!6393788))

(declare-fun m!6393790 () Bool)

(assert (=> d!1718809 m!6393790))

(assert (=> d!1718809 m!6393180))

(declare-fun m!6393792 () Bool)

(assert (=> d!1718809 m!6393792))

(assert (=> b!5365731 m!6393180))

(declare-fun m!6393794 () Bool)

(assert (=> b!5365731 m!6393794))

(assert (=> b!5365724 m!6393180))

(declare-fun m!6393796 () Bool)

(assert (=> b!5365724 m!6393796))

(assert (=> b!5365724 m!6393796))

(declare-fun m!6393798 () Bool)

(assert (=> b!5365724 m!6393798))

(assert (=> d!1718549 d!1718809))

(declare-fun bs!1242545 () Bool)

(declare-fun d!1718813 () Bool)

(assert (= bs!1242545 (and d!1718813 d!1718609)))

(declare-fun lambda!276570 () Int)

(assert (=> bs!1242545 (= lambda!276570 lambda!276535)))

(declare-fun bs!1242546 () Bool)

(assert (= bs!1242546 (and d!1718813 d!1718621)))

(assert (=> bs!1242546 (= lambda!276570 lambda!276542)))

(declare-fun bs!1242547 () Bool)

(assert (= bs!1242547 (and d!1718813 d!1718613)))

(assert (=> bs!1242547 (= lambda!276570 lambda!276536)))

(declare-fun bs!1242548 () Bool)

(assert (= bs!1242548 (and d!1718813 d!1718771)))

(assert (=> bs!1242548 (= lambda!276570 lambda!276568)))

(declare-fun bs!1242549 () Bool)

(assert (= bs!1242549 (and d!1718813 d!1718809)))

(assert (=> bs!1242549 (= lambda!276570 lambda!276569)))

(declare-fun bs!1242550 () Bool)

(assert (= bs!1242550 (and d!1718813 d!1718623)))

(assert (=> bs!1242550 (= lambda!276570 lambda!276545)))

(declare-fun bs!1242551 () Bool)

(assert (= bs!1242551 (and d!1718813 d!1718615)))

(assert (=> bs!1242551 (= lambda!276570 lambda!276539)))

(declare-fun bs!1242552 () Bool)

(assert (= bs!1242552 (and d!1718813 b!5364523)))

(assert (=> bs!1242552 (= lambda!276570 lambda!276483)))

(declare-fun lt!2185676 () List!61524)

(assert (=> d!1718813 (forall!14483 lt!2185676 lambda!276570)))

(declare-fun e!3329806 () List!61524)

(assert (=> d!1718813 (= lt!2185676 e!3329806)))

(declare-fun c!934649 () Bool)

(assert (=> d!1718813 (= c!934649 ((_ is Cons!61401) (Cons!61401 lt!2185509 Nil!61401)))))

(assert (=> d!1718813 (= (unfocusZipperList!517 (Cons!61401 lt!2185509 Nil!61401)) lt!2185676)))

(declare-fun b!5365734 () Bool)

(assert (=> b!5365734 (= e!3329806 (Cons!61400 (generalisedConcat!744 (exprs!4959 (h!67849 (Cons!61401 lt!2185509 Nil!61401)))) (unfocusZipperList!517 (t!374746 (Cons!61401 lt!2185509 Nil!61401)))))))

(declare-fun b!5365735 () Bool)

(assert (=> b!5365735 (= e!3329806 Nil!61400)))

(assert (= (and d!1718813 c!934649) b!5365734))

(assert (= (and d!1718813 (not c!934649)) b!5365735))

(declare-fun m!6393800 () Bool)

(assert (=> d!1718813 m!6393800))

(declare-fun m!6393802 () Bool)

(assert (=> b!5365734 m!6393802))

(declare-fun m!6393804 () Bool)

(assert (=> b!5365734 m!6393804))

(assert (=> d!1718549 d!1718813))

(assert (=> b!5365082 d!1718719))

(assert (=> d!1718587 d!1718565))

(declare-fun b!5365736 () Bool)

(declare-fun res!2277151 () Bool)

(declare-fun e!3329809 () Bool)

(assert (=> b!5365736 (=> res!2277151 e!3329809)))

(assert (=> b!5365736 (= res!2277151 (not ((_ is Concat!23920) (regOne!30662 r!7292))))))

(declare-fun e!3329808 () Bool)

(assert (=> b!5365736 (= e!3329808 e!3329809)))

(declare-fun b!5365737 () Bool)

(declare-fun e!3329807 () Bool)

(declare-fun e!3329810 () Bool)

(assert (=> b!5365737 (= e!3329807 e!3329810)))

(declare-fun res!2277150 () Bool)

(assert (=> b!5365737 (= res!2277150 (not (nullable!5244 (reg!15404 (regOne!30662 r!7292)))))))

(assert (=> b!5365737 (=> (not res!2277150) (not e!3329810))))

(declare-fun b!5365738 () Bool)

(declare-fun e!3329811 () Bool)

(declare-fun call!383944 () Bool)

(assert (=> b!5365738 (= e!3329811 call!383944)))

(declare-fun b!5365739 () Bool)

(declare-fun e!3329812 () Bool)

(assert (=> b!5365739 (= e!3329812 call!383944)))

(declare-fun c!934651 () Bool)

(declare-fun call!383942 () Bool)

(declare-fun bm!383937 () Bool)

(declare-fun c!934650 () Bool)

(assert (=> bm!383937 (= call!383942 (validRegex!6811 (ite c!934650 (reg!15404 (regOne!30662 r!7292)) (ite c!934651 (regOne!30663 (regOne!30662 r!7292)) (regOne!30662 (regOne!30662 r!7292))))))))

(declare-fun b!5365740 () Bool)

(declare-fun e!3329813 () Bool)

(assert (=> b!5365740 (= e!3329813 e!3329807)))

(assert (=> b!5365740 (= c!934650 ((_ is Star!15075) (regOne!30662 r!7292)))))

(declare-fun b!5365741 () Bool)

(assert (=> b!5365741 (= e!3329810 call!383942)))

(declare-fun d!1718817 () Bool)

(declare-fun res!2277154 () Bool)

(assert (=> d!1718817 (=> res!2277154 e!3329813)))

(assert (=> d!1718817 (= res!2277154 ((_ is ElementMatch!15075) (regOne!30662 r!7292)))))

(assert (=> d!1718817 (= (validRegex!6811 (regOne!30662 r!7292)) e!3329813)))

(declare-fun bm!383938 () Bool)

(assert (=> bm!383938 (= call!383944 (validRegex!6811 (ite c!934651 (regTwo!30663 (regOne!30662 r!7292)) (regTwo!30662 (regOne!30662 r!7292)))))))

(declare-fun b!5365742 () Bool)

(declare-fun res!2277152 () Bool)

(assert (=> b!5365742 (=> (not res!2277152) (not e!3329811))))

(declare-fun call!383943 () Bool)

(assert (=> b!5365742 (= res!2277152 call!383943)))

(assert (=> b!5365742 (= e!3329808 e!3329811)))

(declare-fun bm!383939 () Bool)

(assert (=> bm!383939 (= call!383943 call!383942)))

(declare-fun b!5365743 () Bool)

(assert (=> b!5365743 (= e!3329809 e!3329812)))

(declare-fun res!2277153 () Bool)

(assert (=> b!5365743 (=> (not res!2277153) (not e!3329812))))

(assert (=> b!5365743 (= res!2277153 call!383943)))

(declare-fun b!5365744 () Bool)

(assert (=> b!5365744 (= e!3329807 e!3329808)))

(assert (=> b!5365744 (= c!934651 ((_ is Union!15075) (regOne!30662 r!7292)))))

(assert (= (and d!1718817 (not res!2277154)) b!5365740))

(assert (= (and b!5365740 c!934650) b!5365737))

(assert (= (and b!5365740 (not c!934650)) b!5365744))

(assert (= (and b!5365737 res!2277150) b!5365741))

(assert (= (and b!5365744 c!934651) b!5365742))

(assert (= (and b!5365744 (not c!934651)) b!5365736))

(assert (= (and b!5365742 res!2277152) b!5365738))

(assert (= (and b!5365736 (not res!2277151)) b!5365743))

(assert (= (and b!5365743 res!2277153) b!5365739))

(assert (= (or b!5365738 b!5365739) bm!383938))

(assert (= (or b!5365742 b!5365743) bm!383939))

(assert (= (or b!5365741 bm!383939) bm!383937))

(declare-fun m!6393806 () Bool)

(assert (=> b!5365737 m!6393806))

(declare-fun m!6393808 () Bool)

(assert (=> bm!383937 m!6393808))

(declare-fun m!6393810 () Bool)

(assert (=> bm!383938 m!6393810))

(assert (=> d!1718587 d!1718817))

(assert (=> d!1718587 d!1718583))

(declare-fun bs!1242554 () Bool)

(declare-fun d!1718819 () Bool)

(assert (= bs!1242554 (and d!1718819 b!5365334)))

(declare-fun lambda!276573 () Int)

(assert (=> bs!1242554 (not (= lambda!276573 lambda!276551))))

(declare-fun bs!1242555 () Bool)

(assert (= bs!1242555 (and d!1718819 d!1718511)))

(assert (=> bs!1242555 (not (= lambda!276573 lambda!276517))))

(declare-fun bs!1242556 () Bool)

(assert (= bs!1242556 (and d!1718819 b!5365370)))

(assert (=> bs!1242556 (not (= lambda!276573 lambda!276552))))

(declare-fun bs!1242557 () Bool)

(assert (= bs!1242557 (and d!1718819 b!5365373)))

(assert (=> bs!1242557 (not (= lambda!276573 lambda!276553))))

(declare-fun bs!1242558 () Bool)

(assert (= bs!1242558 (and d!1718819 b!5364506)))

(assert (=> bs!1242558 (= lambda!276573 lambda!276478)))

(assert (=> bs!1242555 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276573 lambda!276516))))

(declare-fun bs!1242559 () Bool)

(assert (= bs!1242559 (and d!1718819 d!1718569)))

(assert (=> bs!1242559 (not (= lambda!276573 lambda!276531))))

(assert (=> bs!1242559 (= lambda!276573 lambda!276530)))

(declare-fun bs!1242560 () Bool)

(assert (= bs!1242560 (and d!1718819 b!5364528)))

(assert (=> bs!1242560 (not (= lambda!276573 lambda!276482))))

(declare-fun bs!1242561 () Bool)

(assert (= bs!1242561 (and d!1718819 b!5365331)))

(assert (=> bs!1242561 (not (= lambda!276573 lambda!276550))))

(declare-fun bs!1242562 () Bool)

(assert (= bs!1242562 (and d!1718819 d!1718767)))

(assert (=> bs!1242562 (not (= lambda!276573 lambda!276567))))

(assert (=> bs!1242562 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276573 lambda!276566))))

(assert (=> bs!1242560 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276573 lambda!276481))))

(declare-fun bs!1242563 () Bool)

(assert (= bs!1242563 (and d!1718819 d!1718531)))

(assert (=> bs!1242563 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276573 lambda!276523))))

(assert (=> bs!1242558 (not (= lambda!276573 lambda!276479))))

(declare-fun bs!1242564 () Bool)

(assert (= bs!1242564 (and d!1718819 d!1718587)))

(assert (=> bs!1242564 (= lambda!276573 lambda!276532)))

(assert (=> d!1718819 true))

(assert (=> d!1718819 true))

(assert (=> d!1718819 true))

(assert (=> d!1718819 (= (isDefined!11889 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)) (Exists!2256 lambda!276573))))

(assert (=> d!1718819 true))

(declare-fun _$89!1551 () Unit!153818)

(assert (=> d!1718819 (= (choose!40289 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326) _$89!1551)))

(declare-fun bs!1242565 () Bool)

(assert (= bs!1242565 d!1718819))

(assert (=> bs!1242565 m!6392672))

(assert (=> bs!1242565 m!6392672))

(assert (=> bs!1242565 m!6392674))

(declare-fun m!6393826 () Bool)

(assert (=> bs!1242565 m!6393826))

(assert (=> d!1718587 d!1718819))

(declare-fun d!1718827 () Bool)

(assert (=> d!1718827 (= (Exists!2256 lambda!276532) (choose!40287 lambda!276532))))

(declare-fun bs!1242566 () Bool)

(assert (= bs!1242566 d!1718827))

(declare-fun m!6393828 () Bool)

(assert (=> bs!1242566 m!6393828))

(assert (=> d!1718587 d!1718827))

(declare-fun d!1718829 () Bool)

(declare-fun c!934656 () Bool)

(assert (=> d!1718829 (= c!934656 (isEmpty!33377 (tail!10607 (t!374747 s!2326))))))

(declare-fun e!3329830 () Bool)

(assert (=> d!1718829 (= (matchZipper!1319 (derivationStepZipper!1314 lt!2185525 (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))) e!3329830)))

(declare-fun b!5365767 () Bool)

(assert (=> b!5365767 (= e!3329830 (nullableZipper!1396 (derivationStepZipper!1314 lt!2185525 (head!11510 (t!374747 s!2326)))))))

(declare-fun b!5365768 () Bool)

(assert (=> b!5365768 (= e!3329830 (matchZipper!1319 (derivationStepZipper!1314 (derivationStepZipper!1314 lt!2185525 (head!11510 (t!374747 s!2326))) (head!11510 (tail!10607 (t!374747 s!2326)))) (tail!10607 (tail!10607 (t!374747 s!2326)))))))

(assert (= (and d!1718829 c!934656) b!5365767))

(assert (= (and d!1718829 (not c!934656)) b!5365768))

(assert (=> d!1718829 m!6393310))

(declare-fun m!6393830 () Bool)

(assert (=> d!1718829 m!6393830))

(assert (=> b!5365767 m!6393390))

(declare-fun m!6393832 () Bool)

(assert (=> b!5365767 m!6393832))

(assert (=> b!5365768 m!6393310))

(declare-fun m!6393834 () Bool)

(assert (=> b!5365768 m!6393834))

(assert (=> b!5365768 m!6393390))

(assert (=> b!5365768 m!6393834))

(declare-fun m!6393836 () Bool)

(assert (=> b!5365768 m!6393836))

(assert (=> b!5365768 m!6393310))

(declare-fun m!6393838 () Bool)

(assert (=> b!5365768 m!6393838))

(assert (=> b!5365768 m!6393836))

(assert (=> b!5365768 m!6393838))

(declare-fun m!6393840 () Bool)

(assert (=> b!5365768 m!6393840))

(assert (=> b!5365280 d!1718829))

(declare-fun bs!1242567 () Bool)

(declare-fun d!1718831 () Bool)

(assert (= bs!1242567 (and d!1718831 b!5364515)))

(declare-fun lambda!276574 () Int)

(assert (=> bs!1242567 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276574 lambda!276480))))

(declare-fun bs!1242568 () Bool)

(assert (= bs!1242568 (and d!1718831 d!1718661)))

(assert (=> bs!1242568 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276574 lambda!276556))))

(declare-fun bs!1242569 () Bool)

(assert (= bs!1242569 (and d!1718831 d!1718663)))

(assert (=> bs!1242569 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276574 lambda!276557))))

(assert (=> d!1718831 true))

(assert (=> d!1718831 (= (derivationStepZipper!1314 lt!2185525 (head!11510 (t!374747 s!2326))) (flatMap!802 lt!2185525 lambda!276574))))

(declare-fun bs!1242570 () Bool)

(assert (= bs!1242570 d!1718831))

(declare-fun m!6393842 () Bool)

(assert (=> bs!1242570 m!6393842))

(assert (=> b!5365280 d!1718831))

(declare-fun d!1718833 () Bool)

(assert (=> d!1718833 (= (head!11510 (t!374747 s!2326)) (h!67850 (t!374747 s!2326)))))

(assert (=> b!5365280 d!1718833))

(declare-fun d!1718835 () Bool)

(assert (=> d!1718835 (= (tail!10607 (t!374747 s!2326)) (t!374747 (t!374747 s!2326)))))

(assert (=> b!5365280 d!1718835))

(declare-fun d!1718837 () Bool)

(assert (=> d!1718837 true))

(assert (=> d!1718837 true))

(declare-fun res!2277169 () Bool)

(assert (=> d!1718837 (= (choose!40287 lambda!276479) res!2277169)))

(assert (=> d!1718567 d!1718837))

(declare-fun d!1718839 () Bool)

(declare-fun lt!2185679 () Int)

(assert (=> d!1718839 (>= lt!2185679 0)))

(declare-fun e!3329833 () Int)

(assert (=> d!1718839 (= lt!2185679 e!3329833)))

(declare-fun c!934659 () Bool)

(assert (=> d!1718839 (= c!934659 ((_ is Nil!61402) lt!2185615))))

(assert (=> d!1718839 (= (size!39786 lt!2185615) lt!2185679)))

(declare-fun b!5365773 () Bool)

(assert (=> b!5365773 (= e!3329833 0)))

(declare-fun b!5365774 () Bool)

(assert (=> b!5365774 (= e!3329833 (+ 1 (size!39786 (t!374747 lt!2185615))))))

(assert (= (and d!1718839 c!934659) b!5365773))

(assert (= (and d!1718839 (not c!934659)) b!5365774))

(declare-fun m!6393844 () Bool)

(assert (=> b!5365774 m!6393844))

(assert (=> b!5365026 d!1718839))

(declare-fun d!1718841 () Bool)

(declare-fun lt!2185680 () Int)

(assert (=> d!1718841 (>= lt!2185680 0)))

(declare-fun e!3329834 () Int)

(assert (=> d!1718841 (= lt!2185680 e!3329834)))

(declare-fun c!934660 () Bool)

(assert (=> d!1718841 (= c!934660 ((_ is Nil!61402) (_1!35577 lt!2185500)))))

(assert (=> d!1718841 (= (size!39786 (_1!35577 lt!2185500)) lt!2185680)))

(declare-fun b!5365775 () Bool)

(assert (=> b!5365775 (= e!3329834 0)))

(declare-fun b!5365776 () Bool)

(assert (=> b!5365776 (= e!3329834 (+ 1 (size!39786 (t!374747 (_1!35577 lt!2185500)))))))

(assert (= (and d!1718841 c!934660) b!5365775))

(assert (= (and d!1718841 (not c!934660)) b!5365776))

(declare-fun m!6393846 () Bool)

(assert (=> b!5365776 m!6393846))

(assert (=> b!5365026 d!1718841))

(declare-fun d!1718843 () Bool)

(declare-fun lt!2185681 () Int)

(assert (=> d!1718843 (>= lt!2185681 0)))

(declare-fun e!3329835 () Int)

(assert (=> d!1718843 (= lt!2185681 e!3329835)))

(declare-fun c!934661 () Bool)

(assert (=> d!1718843 (= c!934661 ((_ is Nil!61402) (_2!35577 lt!2185500)))))

(assert (=> d!1718843 (= (size!39786 (_2!35577 lt!2185500)) lt!2185681)))

(declare-fun b!5365777 () Bool)

(assert (=> b!5365777 (= e!3329835 0)))

(declare-fun b!5365778 () Bool)

(assert (=> b!5365778 (= e!3329835 (+ 1 (size!39786 (t!374747 (_2!35577 lt!2185500)))))))

(assert (= (and d!1718843 c!934661) b!5365777))

(assert (= (and d!1718843 (not c!934661)) b!5365778))

(declare-fun m!6393848 () Bool)

(assert (=> b!5365778 m!6393848))

(assert (=> b!5365026 d!1718843))

(assert (=> d!1718649 d!1718645))

(assert (=> d!1718649 d!1718647))

(declare-fun d!1718845 () Bool)

(assert (=> d!1718845 (= (matchR!7260 lt!2185527 s!2326) (matchRSpec!2178 lt!2185527 s!2326))))

(assert (=> d!1718845 true))

(declare-fun _$88!3656 () Unit!153818)

(assert (=> d!1718845 (= (choose!40296 lt!2185527 s!2326) _$88!3656)))

(declare-fun bs!1242571 () Bool)

(assert (= bs!1242571 d!1718845))

(assert (=> bs!1242571 m!6392746))

(assert (=> bs!1242571 m!6392748))

(assert (=> d!1718649 d!1718845))

(declare-fun b!5365783 () Bool)

(declare-fun res!2277175 () Bool)

(declare-fun e!3329840 () Bool)

(assert (=> b!5365783 (=> res!2277175 e!3329840)))

(assert (=> b!5365783 (= res!2277175 (not ((_ is Concat!23920) lt!2185527)))))

(declare-fun e!3329839 () Bool)

(assert (=> b!5365783 (= e!3329839 e!3329840)))

(declare-fun b!5365784 () Bool)

(declare-fun e!3329838 () Bool)

(declare-fun e!3329841 () Bool)

(assert (=> b!5365784 (= e!3329838 e!3329841)))

(declare-fun res!2277174 () Bool)

(assert (=> b!5365784 (= res!2277174 (not (nullable!5244 (reg!15404 lt!2185527))))))

(assert (=> b!5365784 (=> (not res!2277174) (not e!3329841))))

(declare-fun b!5365785 () Bool)

(declare-fun e!3329842 () Bool)

(declare-fun call!383953 () Bool)

(assert (=> b!5365785 (= e!3329842 call!383953)))

(declare-fun b!5365786 () Bool)

(declare-fun e!3329843 () Bool)

(assert (=> b!5365786 (= e!3329843 call!383953)))

(declare-fun bm!383946 () Bool)

(declare-fun call!383951 () Bool)

(declare-fun c!934662 () Bool)

(declare-fun c!934663 () Bool)

(assert (=> bm!383946 (= call!383951 (validRegex!6811 (ite c!934662 (reg!15404 lt!2185527) (ite c!934663 (regOne!30663 lt!2185527) (regOne!30662 lt!2185527)))))))

(declare-fun b!5365787 () Bool)

(declare-fun e!3329844 () Bool)

(assert (=> b!5365787 (= e!3329844 e!3329838)))

(assert (=> b!5365787 (= c!934662 ((_ is Star!15075) lt!2185527))))

(declare-fun b!5365788 () Bool)

(assert (=> b!5365788 (= e!3329841 call!383951)))

(declare-fun d!1718847 () Bool)

(declare-fun res!2277178 () Bool)

(assert (=> d!1718847 (=> res!2277178 e!3329844)))

(assert (=> d!1718847 (= res!2277178 ((_ is ElementMatch!15075) lt!2185527))))

(assert (=> d!1718847 (= (validRegex!6811 lt!2185527) e!3329844)))

(declare-fun bm!383947 () Bool)

(assert (=> bm!383947 (= call!383953 (validRegex!6811 (ite c!934663 (regTwo!30663 lt!2185527) (regTwo!30662 lt!2185527))))))

(declare-fun b!5365789 () Bool)

(declare-fun res!2277176 () Bool)

(assert (=> b!5365789 (=> (not res!2277176) (not e!3329842))))

(declare-fun call!383952 () Bool)

(assert (=> b!5365789 (= res!2277176 call!383952)))

(assert (=> b!5365789 (= e!3329839 e!3329842)))

(declare-fun bm!383948 () Bool)

(assert (=> bm!383948 (= call!383952 call!383951)))

(declare-fun b!5365790 () Bool)

(assert (=> b!5365790 (= e!3329840 e!3329843)))

(declare-fun res!2277177 () Bool)

(assert (=> b!5365790 (=> (not res!2277177) (not e!3329843))))

(assert (=> b!5365790 (= res!2277177 call!383952)))

(declare-fun b!5365791 () Bool)

(assert (=> b!5365791 (= e!3329838 e!3329839)))

(assert (=> b!5365791 (= c!934663 ((_ is Union!15075) lt!2185527))))

(assert (= (and d!1718847 (not res!2277178)) b!5365787))

(assert (= (and b!5365787 c!934662) b!5365784))

(assert (= (and b!5365787 (not c!934662)) b!5365791))

(assert (= (and b!5365784 res!2277174) b!5365788))

(assert (= (and b!5365791 c!934663) b!5365789))

(assert (= (and b!5365791 (not c!934663)) b!5365783))

(assert (= (and b!5365789 res!2277176) b!5365785))

(assert (= (and b!5365783 (not res!2277175)) b!5365790))

(assert (= (and b!5365790 res!2277177) b!5365786))

(assert (= (or b!5365785 b!5365786) bm!383947))

(assert (= (or b!5365789 b!5365790) bm!383948))

(assert (= (or b!5365788 bm!383948) bm!383946))

(declare-fun m!6393850 () Bool)

(assert (=> b!5365784 m!6393850))

(declare-fun m!6393852 () Bool)

(assert (=> bm!383946 m!6393852))

(declare-fun m!6393854 () Bool)

(assert (=> bm!383947 m!6393854))

(assert (=> d!1718649 d!1718847))

(declare-fun d!1718849 () Bool)

(assert (=> d!1718849 (= (isEmpty!33377 (tail!10607 (_1!35577 lt!2185500))) ((_ is Nil!61402) (tail!10607 (_1!35577 lt!2185500))))))

(assert (=> b!5365090 d!1718849))

(declare-fun d!1718851 () Bool)

(assert (=> d!1718851 (= (tail!10607 (_1!35577 lt!2185500)) (t!374747 (_1!35577 lt!2185500)))))

(assert (=> b!5365090 d!1718851))

(assert (=> d!1718629 d!1718769))

(declare-fun d!1718853 () Bool)

(assert (=> d!1718853 (= ($colon$colon!1446 (exprs!4959 lt!2185533) (ite (or c!934526 c!934525) (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (regOne!30662 r!7292)))) (Cons!61400 (ite (or c!934526 c!934525) (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (regOne!30662 r!7292))) (exprs!4959 lt!2185533)))))

(assert (=> bm!383866 d!1718853))

(declare-fun d!1718855 () Bool)

(assert (=> d!1718855 true))

(declare-fun setRes!34751 () Bool)

(assert (=> d!1718855 setRes!34751))

(declare-fun condSetEmpty!34751 () Bool)

(declare-fun res!2277179 () (InoxSet Context!8918))

(assert (=> d!1718855 (= condSetEmpty!34751 (= res!2277179 ((as const (Array Context!8918 Bool)) false)))))

(assert (=> d!1718855 (= (choose!40285 lt!2185510 lambda!276480) res!2277179)))

(declare-fun setIsEmpty!34751 () Bool)

(assert (=> setIsEmpty!34751 setRes!34751))

(declare-fun tp!1489176 () Bool)

(declare-fun setNonEmpty!34751 () Bool)

(declare-fun setElem!34751 () Context!8918)

(declare-fun e!3329845 () Bool)

(assert (=> setNonEmpty!34751 (= setRes!34751 (and tp!1489176 (inv!80934 setElem!34751) e!3329845))))

(declare-fun setRest!34751 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34751 (= res!2277179 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34751 true) setRest!34751))))

(declare-fun b!5365792 () Bool)

(declare-fun tp!1489177 () Bool)

(assert (=> b!5365792 (= e!3329845 tp!1489177)))

(assert (= (and d!1718855 condSetEmpty!34751) setIsEmpty!34751))

(assert (= (and d!1718855 (not condSetEmpty!34751)) setNonEmpty!34751))

(assert (= setNonEmpty!34751 b!5365792))

(declare-fun m!6393856 () Bool)

(assert (=> setNonEmpty!34751 m!6393856))

(assert (=> d!1718665 d!1718855))

(assert (=> b!5365232 d!1718643))

(declare-fun b!5365793 () Bool)

(declare-fun c!934665 () Bool)

(declare-fun e!3329846 () Bool)

(assert (=> b!5365793 (= c!934665 e!3329846)))

(declare-fun res!2277180 () Bool)

(assert (=> b!5365793 (=> (not res!2277180) (not e!3329846))))

(assert (=> b!5365793 (= res!2277180 ((_ is Concat!23920) (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun e!3329847 () (InoxSet Context!8918))

(declare-fun e!3329848 () (InoxSet Context!8918))

(assert (=> b!5365793 (= e!3329847 e!3329848)))

(declare-fun b!5365794 () Bool)

(declare-fun e!3329849 () (InoxSet Context!8918))

(declare-fun call!383956 () (InoxSet Context!8918))

(assert (=> b!5365794 (= e!3329849 call!383956)))

(declare-fun b!5365795 () Bool)

(declare-fun e!3329851 () (InoxSet Context!8918))

(assert (=> b!5365795 (= e!3329851 call!383956)))

(declare-fun b!5365796 () Bool)

(declare-fun e!3329850 () (InoxSet Context!8918))

(assert (=> b!5365796 (= e!3329850 e!3329847)))

(declare-fun c!934668 () Bool)

(assert (=> b!5365796 (= c!934668 ((_ is Union!15075) (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun bm!383949 () Bool)

(declare-fun call!383959 () (InoxSet Context!8918))

(declare-fun call!383958 () (InoxSet Context!8918))

(assert (=> bm!383949 (= call!383959 call!383958)))

(declare-fun b!5365797 () Bool)

(declare-fun call!383954 () (InoxSet Context!8918))

(assert (=> b!5365797 (= e!3329847 ((_ map or) call!383954 call!383958))))

(declare-fun b!5365798 () Bool)

(assert (=> b!5365798 (= e!3329850 (store ((as const (Array Context!8918 Bool)) false) (ite (or c!934485 c!934482) lt!2185502 (Context!8919 call!383860)) true))))

(declare-fun b!5365799 () Bool)

(assert (=> b!5365799 (= e!3329846 (nullable!5244 (regOne!30662 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343))))))))))))

(declare-fun call!383957 () List!61524)

(declare-fun bm!383950 () Bool)

(assert (=> bm!383950 (= call!383954 (derivationStepZipperDown!523 (ite c!934668 (regOne!30663 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))) (regOne!30662 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343))))))))) (ite c!934668 (ite (or c!934485 c!934482) lt!2185502 (Context!8919 call!383860)) (Context!8919 call!383957)) (h!67850 s!2326)))))

(declare-fun d!1718857 () Bool)

(declare-fun c!934667 () Bool)

(assert (=> d!1718857 (= c!934667 (and ((_ is ElementMatch!15075) (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))) (= (c!934311 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))) (h!67850 s!2326))))))

(assert (=> d!1718857 (= (derivationStepZipperDown!523 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343))))))) (ite (or c!934485 c!934482) lt!2185502 (Context!8919 call!383860)) (h!67850 s!2326)) e!3329850)))

(declare-fun b!5365800 () Bool)

(declare-fun c!934666 () Bool)

(assert (=> b!5365800 (= c!934666 ((_ is Star!15075) (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))))

(assert (=> b!5365800 (= e!3329851 e!3329849)))

(declare-fun bm!383951 () Bool)

(declare-fun call!383955 () List!61524)

(assert (=> bm!383951 (= call!383955 call!383957)))

(declare-fun bm!383952 () Bool)

(declare-fun c!934664 () Bool)

(assert (=> bm!383952 (= call!383957 ($colon$colon!1446 (exprs!4959 (ite (or c!934485 c!934482) lt!2185502 (Context!8919 call!383860))) (ite (or c!934665 c!934664) (regTwo!30662 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))) (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343))))))))))))

(declare-fun bm!383953 () Bool)

(assert (=> bm!383953 (= call!383956 call!383959)))

(declare-fun b!5365801 () Bool)

(assert (=> b!5365801 (= e!3329848 e!3329851)))

(assert (=> b!5365801 (= c!934664 ((_ is Concat!23920) (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun bm!383954 () Bool)

(assert (=> bm!383954 (= call!383958 (derivationStepZipperDown!523 (ite c!934668 (regTwo!30663 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))) (ite c!934665 (regTwo!30662 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))) (ite c!934664 (regOne!30662 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343)))))))) (reg!15404 (ite c!934485 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934482 (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (ite c!934481 (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))) (reg!15404 (h!67848 (exprs!4959 (h!67849 zl!343))))))))))) (ite (or c!934668 c!934665) (ite (or c!934485 c!934482) lt!2185502 (Context!8919 call!383860)) (Context!8919 call!383955)) (h!67850 s!2326)))))

(declare-fun b!5365802 () Bool)

(assert (=> b!5365802 (= e!3329848 ((_ map or) call!383954 call!383959))))

(declare-fun b!5365803 () Bool)

(assert (=> b!5365803 (= e!3329849 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718857 c!934667) b!5365798))

(assert (= (and d!1718857 (not c!934667)) b!5365796))

(assert (= (and b!5365796 c!934668) b!5365797))

(assert (= (and b!5365796 (not c!934668)) b!5365793))

(assert (= (and b!5365793 res!2277180) b!5365799))

(assert (= (and b!5365793 c!934665) b!5365802))

(assert (= (and b!5365793 (not c!934665)) b!5365801))

(assert (= (and b!5365801 c!934664) b!5365795))

(assert (= (and b!5365801 (not c!934664)) b!5365800))

(assert (= (and b!5365800 c!934666) b!5365794))

(assert (= (and b!5365800 (not c!934666)) b!5365803))

(assert (= (or b!5365795 b!5365794) bm!383951))

(assert (= (or b!5365795 b!5365794) bm!383953))

(assert (= (or b!5365802 bm!383951) bm!383952))

(assert (= (or b!5365802 bm!383953) bm!383949))

(assert (= (or b!5365797 bm!383949) bm!383954))

(assert (= (or b!5365797 b!5365802) bm!383950))

(declare-fun m!6393858 () Bool)

(assert (=> b!5365798 m!6393858))

(declare-fun m!6393860 () Bool)

(assert (=> bm!383954 m!6393860))

(declare-fun m!6393862 () Bool)

(assert (=> bm!383952 m!6393862))

(declare-fun m!6393864 () Bool)

(assert (=> b!5365799 m!6393864))

(declare-fun m!6393866 () Bool)

(assert (=> bm!383950 m!6393866))

(assert (=> bm!383859 d!1718857))

(declare-fun d!1718859 () Bool)

(assert (=> d!1718859 (= (nullable!5244 (regOne!30662 (reg!15404 (regOne!30662 r!7292)))) (nullableFct!1548 (regOne!30662 (reg!15404 (regOne!30662 r!7292)))))))

(declare-fun bs!1242573 () Bool)

(assert (= bs!1242573 d!1718859))

(declare-fun m!6393868 () Bool)

(assert (=> bs!1242573 m!6393868))

(assert (=> b!5365289 d!1718859))

(declare-fun d!1718861 () Bool)

(declare-fun res!2277181 () Bool)

(declare-fun e!3329852 () Bool)

(assert (=> d!1718861 (=> res!2277181 e!3329852)))

(assert (=> d!1718861 (= res!2277181 ((_ is Nil!61400) lt!2185642))))

(assert (=> d!1718861 (= (forall!14483 lt!2185642 lambda!276545) e!3329852)))

(declare-fun b!5365804 () Bool)

(declare-fun e!3329853 () Bool)

(assert (=> b!5365804 (= e!3329852 e!3329853)))

(declare-fun res!2277182 () Bool)

(assert (=> b!5365804 (=> (not res!2277182) (not e!3329853))))

(assert (=> b!5365804 (= res!2277182 (dynLambda!24253 lambda!276545 (h!67848 lt!2185642)))))

(declare-fun b!5365805 () Bool)

(assert (=> b!5365805 (= e!3329853 (forall!14483 (t!374745 lt!2185642) lambda!276545))))

(assert (= (and d!1718861 (not res!2277181)) b!5365804))

(assert (= (and b!5365804 res!2277182) b!5365805))

(declare-fun b_lambda!205719 () Bool)

(assert (=> (not b_lambda!205719) (not b!5365804)))

(declare-fun m!6393870 () Bool)

(assert (=> b!5365804 m!6393870))

(declare-fun m!6393872 () Bool)

(assert (=> b!5365805 m!6393872))

(assert (=> d!1718623 d!1718861))

(declare-fun b!5365806 () Bool)

(declare-fun e!3329857 () Bool)

(assert (=> b!5365806 (= e!3329857 (= (head!11510 (tail!10607 (_2!35577 lt!2185500))) (c!934311 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500))))))))

(declare-fun b!5365807 () Bool)

(declare-fun res!2277187 () Bool)

(assert (=> b!5365807 (=> (not res!2277187) (not e!3329857))))

(declare-fun call!383960 () Bool)

(assert (=> b!5365807 (= res!2277187 (not call!383960))))

(declare-fun b!5365808 () Bool)

(declare-fun res!2277190 () Bool)

(declare-fun e!3329854 () Bool)

(assert (=> b!5365808 (=> res!2277190 e!3329854)))

(assert (=> b!5365808 (= res!2277190 e!3329857)))

(declare-fun res!2277184 () Bool)

(assert (=> b!5365808 (=> (not res!2277184) (not e!3329857))))

(declare-fun lt!2185682 () Bool)

(assert (=> b!5365808 (= res!2277184 lt!2185682)))

(declare-fun b!5365809 () Bool)

(declare-fun e!3329858 () Bool)

(declare-fun e!3329855 () Bool)

(assert (=> b!5365809 (= e!3329858 e!3329855)))

(declare-fun c!934671 () Bool)

(assert (=> b!5365809 (= c!934671 ((_ is EmptyLang!15075) (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500)))))))

(declare-fun b!5365810 () Bool)

(declare-fun e!3329859 () Bool)

(declare-fun e!3329856 () Bool)

(assert (=> b!5365810 (= e!3329859 e!3329856)))

(declare-fun res!2277183 () Bool)

(assert (=> b!5365810 (=> res!2277183 e!3329856)))

(assert (=> b!5365810 (= res!2277183 call!383960)))

(declare-fun b!5365811 () Bool)

(assert (=> b!5365811 (= e!3329856 (not (= (head!11510 (tail!10607 (_2!35577 lt!2185500))) (c!934311 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500)))))))))

(declare-fun b!5365812 () Bool)

(declare-fun e!3329860 () Bool)

(assert (=> b!5365812 (= e!3329860 (matchR!7260 (derivativeStep!4217 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500))) (head!11510 (tail!10607 (_2!35577 lt!2185500)))) (tail!10607 (tail!10607 (_2!35577 lt!2185500)))))))

(declare-fun b!5365814 () Bool)

(declare-fun res!2277188 () Bool)

(assert (=> b!5365814 (=> res!2277188 e!3329856)))

(assert (=> b!5365814 (= res!2277188 (not (isEmpty!33377 (tail!10607 (tail!10607 (_2!35577 lt!2185500))))))))

(declare-fun b!5365815 () Bool)

(assert (=> b!5365815 (= e!3329854 e!3329859)))

(declare-fun res!2277189 () Bool)

(assert (=> b!5365815 (=> (not res!2277189) (not e!3329859))))

(assert (=> b!5365815 (= res!2277189 (not lt!2185682))))

(declare-fun bm!383955 () Bool)

(assert (=> bm!383955 (= call!383960 (isEmpty!33377 (tail!10607 (_2!35577 lt!2185500))))))

(declare-fun b!5365816 () Bool)

(assert (=> b!5365816 (= e!3329855 (not lt!2185682))))

(declare-fun b!5365817 () Bool)

(assert (=> b!5365817 (= e!3329858 (= lt!2185682 call!383960))))

(declare-fun b!5365818 () Bool)

(declare-fun res!2277185 () Bool)

(assert (=> b!5365818 (=> res!2277185 e!3329854)))

(assert (=> b!5365818 (= res!2277185 (not ((_ is ElementMatch!15075) (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500))))))))

(assert (=> b!5365818 (= e!3329855 e!3329854)))

(declare-fun b!5365819 () Bool)

(declare-fun res!2277186 () Bool)

(assert (=> b!5365819 (=> (not res!2277186) (not e!3329857))))

(assert (=> b!5365819 (= res!2277186 (isEmpty!33377 (tail!10607 (tail!10607 (_2!35577 lt!2185500)))))))

(declare-fun d!1718863 () Bool)

(assert (=> d!1718863 e!3329858))

(declare-fun c!934670 () Bool)

(assert (=> d!1718863 (= c!934670 ((_ is EmptyExpr!15075) (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500)))))))

(assert (=> d!1718863 (= lt!2185682 e!3329860)))

(declare-fun c!934669 () Bool)

(assert (=> d!1718863 (= c!934669 (isEmpty!33377 (tail!10607 (_2!35577 lt!2185500))))))

(assert (=> d!1718863 (validRegex!6811 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500))))))

(assert (=> d!1718863 (= (matchR!7260 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500))) (tail!10607 (_2!35577 lt!2185500))) lt!2185682)))

(declare-fun b!5365813 () Bool)

(assert (=> b!5365813 (= e!3329860 (nullable!5244 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500)))))))

(assert (= (and d!1718863 c!934669) b!5365813))

(assert (= (and d!1718863 (not c!934669)) b!5365812))

(assert (= (and d!1718863 c!934670) b!5365817))

(assert (= (and d!1718863 (not c!934670)) b!5365809))

(assert (= (and b!5365809 c!934671) b!5365816))

(assert (= (and b!5365809 (not c!934671)) b!5365818))

(assert (= (and b!5365818 (not res!2277185)) b!5365808))

(assert (= (and b!5365808 res!2277184) b!5365807))

(assert (= (and b!5365807 res!2277187) b!5365819))

(assert (= (and b!5365819 res!2277186) b!5365806))

(assert (= (and b!5365808 (not res!2277190)) b!5365815))

(assert (= (and b!5365815 res!2277189) b!5365810))

(assert (= (and b!5365810 (not res!2277183)) b!5365814))

(assert (= (and b!5365814 (not res!2277188)) b!5365811))

(assert (= (or b!5365817 b!5365807 b!5365810) bm!383955))

(assert (=> bm!383955 m!6393322))

(assert (=> bm!383955 m!6393324))

(assert (=> b!5365813 m!6393328))

(declare-fun m!6393874 () Bool)

(assert (=> b!5365813 m!6393874))

(assert (=> b!5365819 m!6393322))

(declare-fun m!6393876 () Bool)

(assert (=> b!5365819 m!6393876))

(assert (=> b!5365819 m!6393876))

(declare-fun m!6393878 () Bool)

(assert (=> b!5365819 m!6393878))

(assert (=> b!5365812 m!6393322))

(declare-fun m!6393880 () Bool)

(assert (=> b!5365812 m!6393880))

(assert (=> b!5365812 m!6393328))

(assert (=> b!5365812 m!6393880))

(declare-fun m!6393882 () Bool)

(assert (=> b!5365812 m!6393882))

(assert (=> b!5365812 m!6393322))

(assert (=> b!5365812 m!6393876))

(assert (=> b!5365812 m!6393882))

(assert (=> b!5365812 m!6393876))

(declare-fun m!6393884 () Bool)

(assert (=> b!5365812 m!6393884))

(assert (=> b!5365811 m!6393322))

(assert (=> b!5365811 m!6393880))

(assert (=> b!5365814 m!6393322))

(assert (=> b!5365814 m!6393876))

(assert (=> b!5365814 m!6393876))

(assert (=> b!5365814 m!6393878))

(assert (=> d!1718863 m!6393322))

(assert (=> d!1718863 m!6393324))

(assert (=> d!1718863 m!6393328))

(declare-fun m!6393886 () Bool)

(assert (=> d!1718863 m!6393886))

(assert (=> b!5365806 m!6393322))

(assert (=> b!5365806 m!6393880))

(assert (=> b!5365202 d!1718863))

(declare-fun b!5365820 () Bool)

(declare-fun e!3329863 () Regex!15075)

(assert (=> b!5365820 (= e!3329863 (ite (= (head!11510 (_2!35577 lt!2185500)) (c!934311 (regTwo!30662 r!7292))) EmptyExpr!15075 EmptyLang!15075))))

(declare-fun b!5365822 () Bool)

(declare-fun e!3329862 () Regex!15075)

(assert (=> b!5365822 (= e!3329862 e!3329863)))

(declare-fun c!934673 () Bool)

(assert (=> b!5365822 (= c!934673 ((_ is ElementMatch!15075) (regTwo!30662 r!7292)))))

(declare-fun call!383961 () Regex!15075)

(declare-fun e!3329864 () Regex!15075)

(declare-fun b!5365823 () Bool)

(declare-fun call!383963 () Regex!15075)

(assert (=> b!5365823 (= e!3329864 (Union!15075 (Concat!23920 call!383963 (regTwo!30662 (regTwo!30662 r!7292))) call!383961))))

(declare-fun b!5365824 () Bool)

(declare-fun c!934675 () Bool)

(assert (=> b!5365824 (= c!934675 ((_ is Union!15075) (regTwo!30662 r!7292)))))

(declare-fun e!3329865 () Regex!15075)

(assert (=> b!5365824 (= e!3329863 e!3329865)))

(declare-fun bm!383956 () Bool)

(declare-fun call!383962 () Regex!15075)

(assert (=> bm!383956 (= call!383961 call!383962)))

(declare-fun bm!383957 () Bool)

(declare-fun call!383964 () Regex!15075)

(assert (=> bm!383957 (= call!383962 call!383964)))

(declare-fun b!5365825 () Bool)

(assert (=> b!5365825 (= e!3329865 (Union!15075 call!383963 call!383964))))

(declare-fun b!5365826 () Bool)

(declare-fun c!934672 () Bool)

(assert (=> b!5365826 (= c!934672 (nullable!5244 (regOne!30662 (regTwo!30662 r!7292))))))

(declare-fun e!3329861 () Regex!15075)

(assert (=> b!5365826 (= e!3329861 e!3329864)))

(declare-fun b!5365827 () Bool)

(assert (=> b!5365827 (= e!3329862 EmptyLang!15075)))

(declare-fun d!1718865 () Bool)

(declare-fun lt!2185683 () Regex!15075)

(assert (=> d!1718865 (validRegex!6811 lt!2185683)))

(assert (=> d!1718865 (= lt!2185683 e!3329862)))

(declare-fun c!934676 () Bool)

(assert (=> d!1718865 (= c!934676 (or ((_ is EmptyExpr!15075) (regTwo!30662 r!7292)) ((_ is EmptyLang!15075) (regTwo!30662 r!7292))))))

(assert (=> d!1718865 (validRegex!6811 (regTwo!30662 r!7292))))

(assert (=> d!1718865 (= (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 lt!2185500))) lt!2185683)))

(declare-fun b!5365821 () Bool)

(assert (=> b!5365821 (= e!3329865 e!3329861)))

(declare-fun c!934674 () Bool)

(assert (=> b!5365821 (= c!934674 ((_ is Star!15075) (regTwo!30662 r!7292)))))

(declare-fun b!5365828 () Bool)

(assert (=> b!5365828 (= e!3329861 (Concat!23920 call!383962 (regTwo!30662 r!7292)))))

(declare-fun b!5365829 () Bool)

(assert (=> b!5365829 (= e!3329864 (Union!15075 (Concat!23920 call!383961 (regTwo!30662 (regTwo!30662 r!7292))) EmptyLang!15075))))

(declare-fun bm!383958 () Bool)

(assert (=> bm!383958 (= call!383964 (derivativeStep!4217 (ite c!934675 (regTwo!30663 (regTwo!30662 r!7292)) (ite c!934674 (reg!15404 (regTwo!30662 r!7292)) (ite c!934672 (regTwo!30662 (regTwo!30662 r!7292)) (regOne!30662 (regTwo!30662 r!7292))))) (head!11510 (_2!35577 lt!2185500))))))

(declare-fun bm!383959 () Bool)

(assert (=> bm!383959 (= call!383963 (derivativeStep!4217 (ite c!934675 (regOne!30663 (regTwo!30662 r!7292)) (regOne!30662 (regTwo!30662 r!7292))) (head!11510 (_2!35577 lt!2185500))))))

(assert (= (and d!1718865 c!934676) b!5365827))

(assert (= (and d!1718865 (not c!934676)) b!5365822))

(assert (= (and b!5365822 c!934673) b!5365820))

(assert (= (and b!5365822 (not c!934673)) b!5365824))

(assert (= (and b!5365824 c!934675) b!5365825))

(assert (= (and b!5365824 (not c!934675)) b!5365821))

(assert (= (and b!5365821 c!934674) b!5365828))

(assert (= (and b!5365821 (not c!934674)) b!5365826))

(assert (= (and b!5365826 c!934672) b!5365823))

(assert (= (and b!5365826 (not c!934672)) b!5365829))

(assert (= (or b!5365823 b!5365829) bm!383956))

(assert (= (or b!5365828 bm!383956) bm!383957))

(assert (= (or b!5365825 bm!383957) bm!383958))

(assert (= (or b!5365825 b!5365823) bm!383959))

(declare-fun m!6393888 () Bool)

(assert (=> b!5365826 m!6393888))

(declare-fun m!6393890 () Bool)

(assert (=> d!1718865 m!6393890))

(assert (=> d!1718865 m!6393332))

(assert (=> bm!383958 m!6393326))

(declare-fun m!6393892 () Bool)

(assert (=> bm!383958 m!6393892))

(assert (=> bm!383959 m!6393326))

(declare-fun m!6393894 () Bool)

(assert (=> bm!383959 m!6393894))

(assert (=> b!5365202 d!1718865))

(declare-fun d!1718867 () Bool)

(assert (=> d!1718867 (= (head!11510 (_2!35577 lt!2185500)) (h!67850 (_2!35577 lt!2185500)))))

(assert (=> b!5365202 d!1718867))

(declare-fun d!1718869 () Bool)

(assert (=> d!1718869 (= (tail!10607 (_2!35577 lt!2185500)) (t!374747 (_2!35577 lt!2185500)))))

(assert (=> b!5365202 d!1718869))

(assert (=> bs!1242500 d!1718595))

(declare-fun b!5365833 () Bool)

(declare-fun e!3329866 () Bool)

(declare-fun lt!2185684 () List!61526)

(assert (=> b!5365833 (= e!3329866 (or (not (= (_2!35577 (get!21121 lt!2185626)) Nil!61402)) (= lt!2185684 (_1!35577 (get!21121 lt!2185626)))))))

(declare-fun d!1718871 () Bool)

(assert (=> d!1718871 e!3329866))

(declare-fun res!2277192 () Bool)

(assert (=> d!1718871 (=> (not res!2277192) (not e!3329866))))

(assert (=> d!1718871 (= res!2277192 (= (content!10965 lt!2185684) ((_ map or) (content!10965 (_1!35577 (get!21121 lt!2185626))) (content!10965 (_2!35577 (get!21121 lt!2185626))))))))

(declare-fun e!3329867 () List!61526)

(assert (=> d!1718871 (= lt!2185684 e!3329867)))

(declare-fun c!934677 () Bool)

(assert (=> d!1718871 (= c!934677 ((_ is Nil!61402) (_1!35577 (get!21121 lt!2185626))))))

(assert (=> d!1718871 (= (++!13378 (_1!35577 (get!21121 lt!2185626)) (_2!35577 (get!21121 lt!2185626))) lt!2185684)))

(declare-fun b!5365830 () Bool)

(assert (=> b!5365830 (= e!3329867 (_2!35577 (get!21121 lt!2185626)))))

(declare-fun b!5365831 () Bool)

(assert (=> b!5365831 (= e!3329867 (Cons!61402 (h!67850 (_1!35577 (get!21121 lt!2185626))) (++!13378 (t!374747 (_1!35577 (get!21121 lt!2185626))) (_2!35577 (get!21121 lt!2185626)))))))

(declare-fun b!5365832 () Bool)

(declare-fun res!2277191 () Bool)

(assert (=> b!5365832 (=> (not res!2277191) (not e!3329866))))

(assert (=> b!5365832 (= res!2277191 (= (size!39786 lt!2185684) (+ (size!39786 (_1!35577 (get!21121 lt!2185626))) (size!39786 (_2!35577 (get!21121 lt!2185626))))))))

(assert (= (and d!1718871 c!934677) b!5365830))

(assert (= (and d!1718871 (not c!934677)) b!5365831))

(assert (= (and d!1718871 res!2277192) b!5365832))

(assert (= (and b!5365832 res!2277191) b!5365833))

(declare-fun m!6393896 () Bool)

(assert (=> d!1718871 m!6393896))

(declare-fun m!6393898 () Bool)

(assert (=> d!1718871 m!6393898))

(declare-fun m!6393900 () Bool)

(assert (=> d!1718871 m!6393900))

(declare-fun m!6393902 () Bool)

(assert (=> b!5365831 m!6393902))

(declare-fun m!6393904 () Bool)

(assert (=> b!5365832 m!6393904))

(declare-fun m!6393906 () Bool)

(assert (=> b!5365832 m!6393906))

(declare-fun m!6393908 () Bool)

(assert (=> b!5365832 m!6393908))

(assert (=> b!5365107 d!1718871))

(declare-fun d!1718873 () Bool)

(assert (=> d!1718873 (= (get!21121 lt!2185626) (v!51214 lt!2185626))))

(assert (=> b!5365107 d!1718873))

(assert (=> b!5365274 d!1718615))

(declare-fun bs!1242583 () Bool)

(declare-fun d!1718875 () Bool)

(assert (= bs!1242583 (and d!1718875 d!1718813)))

(declare-fun lambda!276578 () Int)

(assert (=> bs!1242583 (= lambda!276578 lambda!276570)))

(declare-fun bs!1242585 () Bool)

(assert (= bs!1242585 (and d!1718875 d!1718609)))

(assert (=> bs!1242585 (= lambda!276578 lambda!276535)))

(declare-fun bs!1242586 () Bool)

(assert (= bs!1242586 (and d!1718875 d!1718621)))

(assert (=> bs!1242586 (= lambda!276578 lambda!276542)))

(declare-fun bs!1242587 () Bool)

(assert (= bs!1242587 (and d!1718875 d!1718613)))

(assert (=> bs!1242587 (= lambda!276578 lambda!276536)))

(declare-fun bs!1242588 () Bool)

(assert (= bs!1242588 (and d!1718875 d!1718771)))

(assert (=> bs!1242588 (= lambda!276578 lambda!276568)))

(declare-fun bs!1242589 () Bool)

(assert (= bs!1242589 (and d!1718875 d!1718809)))

(assert (=> bs!1242589 (= lambda!276578 lambda!276569)))

(declare-fun bs!1242590 () Bool)

(assert (= bs!1242590 (and d!1718875 d!1718623)))

(assert (=> bs!1242590 (= lambda!276578 lambda!276545)))

(declare-fun bs!1242591 () Bool)

(assert (= bs!1242591 (and d!1718875 d!1718615)))

(assert (=> bs!1242591 (= lambda!276578 lambda!276539)))

(declare-fun bs!1242592 () Bool)

(assert (= bs!1242592 (and d!1718875 b!5364523)))

(assert (=> bs!1242592 (= lambda!276578 lambda!276483)))

(declare-fun lt!2185685 () List!61524)

(assert (=> d!1718875 (forall!14483 lt!2185685 lambda!276578)))

(declare-fun e!3329868 () List!61524)

(assert (=> d!1718875 (= lt!2185685 e!3329868)))

(declare-fun c!934678 () Bool)

(assert (=> d!1718875 (= c!934678 ((_ is Cons!61401) (t!374746 zl!343)))))

(assert (=> d!1718875 (= (unfocusZipperList!517 (t!374746 zl!343)) lt!2185685)))

(declare-fun b!5365834 () Bool)

(assert (=> b!5365834 (= e!3329868 (Cons!61400 (generalisedConcat!744 (exprs!4959 (h!67849 (t!374746 zl!343)))) (unfocusZipperList!517 (t!374746 (t!374746 zl!343)))))))

(declare-fun b!5365835 () Bool)

(assert (=> b!5365835 (= e!3329868 Nil!61400)))

(assert (= (and d!1718875 c!934678) b!5365834))

(assert (= (and d!1718875 (not c!934678)) b!5365835))

(declare-fun m!6393914 () Bool)

(assert (=> d!1718875 m!6393914))

(declare-fun m!6393916 () Bool)

(assert (=> b!5365834 m!6393916))

(declare-fun m!6393918 () Bool)

(assert (=> b!5365834 m!6393918))

(assert (=> b!5365274 d!1718875))

(assert (=> b!5365341 d!1718685))

(declare-fun d!1718881 () Bool)

(declare-fun c!934679 () Bool)

(assert (=> d!1718881 (= c!934679 (isEmpty!33377 (tail!10607 (t!374747 s!2326))))))

(declare-fun e!3329869 () Bool)

(assert (=> d!1718881 (= (matchZipper!1319 (derivationStepZipper!1314 ((_ map or) lt!2185525 lt!2185496) (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))) e!3329869)))

(declare-fun b!5365836 () Bool)

(assert (=> b!5365836 (= e!3329869 (nullableZipper!1396 (derivationStepZipper!1314 ((_ map or) lt!2185525 lt!2185496) (head!11510 (t!374747 s!2326)))))))

(declare-fun b!5365837 () Bool)

(assert (=> b!5365837 (= e!3329869 (matchZipper!1319 (derivationStepZipper!1314 (derivationStepZipper!1314 ((_ map or) lt!2185525 lt!2185496) (head!11510 (t!374747 s!2326))) (head!11510 (tail!10607 (t!374747 s!2326)))) (tail!10607 (tail!10607 (t!374747 s!2326)))))))

(assert (= (and d!1718881 c!934679) b!5365836))

(assert (= (and d!1718881 (not c!934679)) b!5365837))

(assert (=> d!1718881 m!6393310))

(assert (=> d!1718881 m!6393830))

(assert (=> b!5365836 m!6393396))

(declare-fun m!6393922 () Bool)

(assert (=> b!5365836 m!6393922))

(assert (=> b!5365837 m!6393310))

(assert (=> b!5365837 m!6393834))

(assert (=> b!5365837 m!6393396))

(assert (=> b!5365837 m!6393834))

(declare-fun m!6393924 () Bool)

(assert (=> b!5365837 m!6393924))

(assert (=> b!5365837 m!6393310))

(assert (=> b!5365837 m!6393838))

(assert (=> b!5365837 m!6393924))

(assert (=> b!5365837 m!6393838))

(declare-fun m!6393926 () Bool)

(assert (=> b!5365837 m!6393926))

(assert (=> b!5365282 d!1718881))

(declare-fun bs!1242595 () Bool)

(declare-fun d!1718885 () Bool)

(assert (= bs!1242595 (and d!1718885 b!5364515)))

(declare-fun lambda!276579 () Int)

(assert (=> bs!1242595 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276579 lambda!276480))))

(declare-fun bs!1242596 () Bool)

(assert (= bs!1242596 (and d!1718885 d!1718661)))

(assert (=> bs!1242596 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276579 lambda!276556))))

(declare-fun bs!1242597 () Bool)

(assert (= bs!1242597 (and d!1718885 d!1718663)))

(assert (=> bs!1242597 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276579 lambda!276557))))

(declare-fun bs!1242598 () Bool)

(assert (= bs!1242598 (and d!1718885 d!1718831)))

(assert (=> bs!1242598 (= lambda!276579 lambda!276574)))

(assert (=> d!1718885 true))

(assert (=> d!1718885 (= (derivationStepZipper!1314 ((_ map or) lt!2185525 lt!2185496) (head!11510 (t!374747 s!2326))) (flatMap!802 ((_ map or) lt!2185525 lt!2185496) lambda!276579))))

(declare-fun bs!1242599 () Bool)

(assert (= bs!1242599 d!1718885))

(declare-fun m!6393928 () Bool)

(assert (=> bs!1242599 m!6393928))

(assert (=> b!5365282 d!1718885))

(assert (=> b!5365282 d!1718833))

(assert (=> b!5365282 d!1718835))

(assert (=> b!5364978 d!1718715))

(assert (=> b!5365355 d!1718685))

(assert (=> d!1718645 d!1718695))

(assert (=> d!1718645 d!1718847))

(declare-fun d!1718887 () Bool)

(assert (=> d!1718887 (= (nullable!5244 (h!67848 (exprs!4959 lt!2185533))) (nullableFct!1548 (h!67848 (exprs!4959 lt!2185533))))))

(declare-fun bs!1242600 () Bool)

(assert (= bs!1242600 d!1718887))

(declare-fun m!6393930 () Bool)

(assert (=> bs!1242600 m!6393930))

(assert (=> b!5364864 d!1718887))

(declare-fun d!1718889 () Bool)

(assert (=> d!1718889 (= (isEmpty!33377 (tail!10607 (_2!35577 lt!2185500))) ((_ is Nil!61402) (tail!10607 (_2!35577 lt!2185500))))))

(assert (=> b!5365209 d!1718889))

(assert (=> b!5365209 d!1718869))

(declare-fun d!1718891 () Bool)

(declare-fun res!2277193 () Bool)

(declare-fun e!3329870 () Bool)

(assert (=> d!1718891 (=> res!2277193 e!3329870)))

(assert (=> d!1718891 (= res!2277193 ((_ is Nil!61400) (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(assert (=> d!1718891 (= (forall!14483 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343)))) lambda!276483) e!3329870)))

(declare-fun b!5365838 () Bool)

(declare-fun e!3329871 () Bool)

(assert (=> b!5365838 (= e!3329870 e!3329871)))

(declare-fun res!2277194 () Bool)

(assert (=> b!5365838 (=> (not res!2277194) (not e!3329871))))

(assert (=> b!5365838 (= res!2277194 (dynLambda!24253 lambda!276483 (h!67848 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun b!5365839 () Bool)

(assert (=> b!5365839 (= e!3329871 (forall!14483 (t!374745 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343))))) lambda!276483))))

(assert (= (and d!1718891 (not res!2277193)) b!5365838))

(assert (= (and b!5365838 res!2277194) b!5365839))

(declare-fun b_lambda!205721 () Bool)

(assert (=> (not b_lambda!205721) (not b!5365838)))

(declare-fun m!6393932 () Bool)

(assert (=> b!5365838 m!6393932))

(declare-fun m!6393934 () Bool)

(assert (=> b!5365839 m!6393934))

(assert (=> b!5365385 d!1718891))

(declare-fun b!5365840 () Bool)

(declare-fun res!2277196 () Bool)

(declare-fun e!3329874 () Bool)

(assert (=> b!5365840 (=> res!2277196 e!3329874)))

(assert (=> b!5365840 (= res!2277196 (not ((_ is Concat!23920) (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292))))))))

(declare-fun e!3329873 () Bool)

(assert (=> b!5365840 (= e!3329873 e!3329874)))

(declare-fun b!5365841 () Bool)

(declare-fun e!3329872 () Bool)

(declare-fun e!3329875 () Bool)

(assert (=> b!5365841 (= e!3329872 e!3329875)))

(declare-fun res!2277195 () Bool)

(assert (=> b!5365841 (= res!2277195 (not (nullable!5244 (reg!15404 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))))))))

(assert (=> b!5365841 (=> (not res!2277195) (not e!3329875))))

(declare-fun b!5365842 () Bool)

(declare-fun e!3329876 () Bool)

(declare-fun call!383967 () Bool)

(assert (=> b!5365842 (= e!3329876 call!383967)))

(declare-fun b!5365843 () Bool)

(declare-fun e!3329877 () Bool)

(assert (=> b!5365843 (= e!3329877 call!383967)))

(declare-fun c!934680 () Bool)

(declare-fun c!934681 () Bool)

(declare-fun call!383965 () Bool)

(declare-fun bm!383960 () Bool)

(assert (=> bm!383960 (= call!383965 (validRegex!6811 (ite c!934680 (reg!15404 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))) (ite c!934681 (regOne!30663 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))) (regOne!30662 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292))))))))))

(declare-fun b!5365844 () Bool)

(declare-fun e!3329878 () Bool)

(assert (=> b!5365844 (= e!3329878 e!3329872)))

(assert (=> b!5365844 (= c!934680 ((_ is Star!15075) (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))))))

(declare-fun b!5365845 () Bool)

(assert (=> b!5365845 (= e!3329875 call!383965)))

(declare-fun d!1718893 () Bool)

(declare-fun res!2277199 () Bool)

(assert (=> d!1718893 (=> res!2277199 e!3329878)))

(assert (=> d!1718893 (= res!2277199 ((_ is ElementMatch!15075) (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))))))

(assert (=> d!1718893 (= (validRegex!6811 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))) e!3329878)))

(declare-fun bm!383961 () Bool)

(assert (=> bm!383961 (= call!383967 (validRegex!6811 (ite c!934681 (regTwo!30663 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))) (regTwo!30662 (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))))))))

(declare-fun b!5365846 () Bool)

(declare-fun res!2277197 () Bool)

(assert (=> b!5365846 (=> (not res!2277197) (not e!3329876))))

(declare-fun call!383966 () Bool)

(assert (=> b!5365846 (= res!2277197 call!383966)))

(assert (=> b!5365846 (= e!3329873 e!3329876)))

(declare-fun bm!383962 () Bool)

(assert (=> bm!383962 (= call!383966 call!383965)))

(declare-fun b!5365847 () Bool)

(assert (=> b!5365847 (= e!3329874 e!3329877)))

(declare-fun res!2277198 () Bool)

(assert (=> b!5365847 (=> (not res!2277198) (not e!3329877))))

(assert (=> b!5365847 (= res!2277198 call!383966)))

(declare-fun b!5365848 () Bool)

(assert (=> b!5365848 (= e!3329872 e!3329873)))

(assert (=> b!5365848 (= c!934681 ((_ is Union!15075) (ite c!934399 (reg!15404 r!7292) (ite c!934400 (regOne!30663 r!7292) (regOne!30662 r!7292)))))))

(assert (= (and d!1718893 (not res!2277199)) b!5365844))

(assert (= (and b!5365844 c!934680) b!5365841))

(assert (= (and b!5365844 (not c!934680)) b!5365848))

(assert (= (and b!5365841 res!2277195) b!5365845))

(assert (= (and b!5365848 c!934681) b!5365846))

(assert (= (and b!5365848 (not c!934681)) b!5365840))

(assert (= (and b!5365846 res!2277197) b!5365842))

(assert (= (and b!5365840 (not res!2277196)) b!5365847))

(assert (= (and b!5365847 res!2277198) b!5365843))

(assert (= (or b!5365842 b!5365843) bm!383961))

(assert (= (or b!5365846 b!5365847) bm!383962))

(assert (= (or b!5365845 bm!383962) bm!383960))

(declare-fun m!6393936 () Bool)

(assert (=> b!5365841 m!6393936))

(declare-fun m!6393938 () Bool)

(assert (=> bm!383960 m!6393938))

(declare-fun m!6393940 () Bool)

(assert (=> bm!383961 m!6393940))

(assert (=> bm!383815 d!1718893))

(assert (=> d!1718639 d!1718695))

(assert (=> d!1718639 d!1718465))

(assert (=> bs!1242502 d!1718493))

(declare-fun b!5365849 () Bool)

(declare-fun e!3329880 () (InoxSet Context!8918))

(assert (=> b!5365849 (= e!3329880 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718895 () Bool)

(declare-fun c!934682 () Bool)

(declare-fun e!3329881 () Bool)

(assert (=> d!1718895 (= c!934682 e!3329881)))

(declare-fun res!2277200 () Bool)

(assert (=> d!1718895 (=> (not res!2277200) (not e!3329881))))

(assert (=> d!1718895 (= res!2277200 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))))

(declare-fun e!3329879 () (InoxSet Context!8918))

(assert (=> d!1718895 (= (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (h!67850 s!2326)) e!3329879)))

(declare-fun b!5365850 () Bool)

(declare-fun call!383968 () (InoxSet Context!8918))

(assert (=> b!5365850 (= e!3329880 call!383968)))

(declare-fun bm!383963 () Bool)

(assert (=> bm!383963 (= call!383968 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))) (h!67850 s!2326)))))

(declare-fun b!5365851 () Bool)

(assert (=> b!5365851 (= e!3329879 ((_ map or) call!383968 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))) (h!67850 s!2326))))))

(declare-fun b!5365852 () Bool)

(assert (=> b!5365852 (= e!3329881 (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))))))

(declare-fun b!5365853 () Bool)

(assert (=> b!5365853 (= e!3329879 e!3329880)))

(declare-fun c!934683 () Bool)

(assert (=> b!5365853 (= c!934683 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))))

(assert (= (and d!1718895 res!2277200) b!5365852))

(assert (= (and d!1718895 c!934682) b!5365851))

(assert (= (and d!1718895 (not c!934682)) b!5365853))

(assert (= (and b!5365853 c!934683) b!5365850))

(assert (= (and b!5365853 (not c!934683)) b!5365849))

(assert (= (or b!5365851 b!5365850) bm!383963))

(declare-fun m!6393942 () Bool)

(assert (=> bm!383963 m!6393942))

(declare-fun m!6393944 () Bool)

(assert (=> b!5365851 m!6393944))

(declare-fun m!6393946 () Bool)

(assert (=> b!5365852 m!6393946))

(assert (=> b!5365144 d!1718895))

(declare-fun d!1718897 () Bool)

(assert (=> d!1718897 (= (isEmpty!33377 (_2!35577 lt!2185500)) ((_ is Nil!61402) (_2!35577 lt!2185500)))))

(assert (=> bm!383862 d!1718897))

(declare-fun b!5365854 () Bool)

(declare-fun e!3329885 () Bool)

(assert (=> b!5365854 (= e!3329885 (= (head!11510 (_1!35577 (get!21121 lt!2185626))) (c!934311 (regOne!30662 r!7292))))))

(declare-fun b!5365855 () Bool)

(declare-fun res!2277205 () Bool)

(assert (=> b!5365855 (=> (not res!2277205) (not e!3329885))))

(declare-fun call!383969 () Bool)

(assert (=> b!5365855 (= res!2277205 (not call!383969))))

(declare-fun b!5365856 () Bool)

(declare-fun res!2277208 () Bool)

(declare-fun e!3329882 () Bool)

(assert (=> b!5365856 (=> res!2277208 e!3329882)))

(assert (=> b!5365856 (= res!2277208 e!3329885)))

(declare-fun res!2277202 () Bool)

(assert (=> b!5365856 (=> (not res!2277202) (not e!3329885))))

(declare-fun lt!2185686 () Bool)

(assert (=> b!5365856 (= res!2277202 lt!2185686)))

(declare-fun b!5365857 () Bool)

(declare-fun e!3329886 () Bool)

(declare-fun e!3329883 () Bool)

(assert (=> b!5365857 (= e!3329886 e!3329883)))

(declare-fun c!934686 () Bool)

(assert (=> b!5365857 (= c!934686 ((_ is EmptyLang!15075) (regOne!30662 r!7292)))))

(declare-fun b!5365858 () Bool)

(declare-fun e!3329887 () Bool)

(declare-fun e!3329884 () Bool)

(assert (=> b!5365858 (= e!3329887 e!3329884)))

(declare-fun res!2277201 () Bool)

(assert (=> b!5365858 (=> res!2277201 e!3329884)))

(assert (=> b!5365858 (= res!2277201 call!383969)))

(declare-fun b!5365859 () Bool)

(assert (=> b!5365859 (= e!3329884 (not (= (head!11510 (_1!35577 (get!21121 lt!2185626))) (c!934311 (regOne!30662 r!7292)))))))

(declare-fun b!5365860 () Bool)

(declare-fun e!3329888 () Bool)

(assert (=> b!5365860 (= e!3329888 (matchR!7260 (derivativeStep!4217 (regOne!30662 r!7292) (head!11510 (_1!35577 (get!21121 lt!2185626)))) (tail!10607 (_1!35577 (get!21121 lt!2185626)))))))

(declare-fun b!5365862 () Bool)

(declare-fun res!2277206 () Bool)

(assert (=> b!5365862 (=> res!2277206 e!3329884)))

(assert (=> b!5365862 (= res!2277206 (not (isEmpty!33377 (tail!10607 (_1!35577 (get!21121 lt!2185626))))))))

(declare-fun b!5365863 () Bool)

(assert (=> b!5365863 (= e!3329882 e!3329887)))

(declare-fun res!2277207 () Bool)

(assert (=> b!5365863 (=> (not res!2277207) (not e!3329887))))

(assert (=> b!5365863 (= res!2277207 (not lt!2185686))))

(declare-fun bm!383964 () Bool)

(assert (=> bm!383964 (= call!383969 (isEmpty!33377 (_1!35577 (get!21121 lt!2185626))))))

(declare-fun b!5365864 () Bool)

(assert (=> b!5365864 (= e!3329883 (not lt!2185686))))

(declare-fun b!5365865 () Bool)

(assert (=> b!5365865 (= e!3329886 (= lt!2185686 call!383969))))

(declare-fun b!5365866 () Bool)

(declare-fun res!2277203 () Bool)

(assert (=> b!5365866 (=> res!2277203 e!3329882)))

(assert (=> b!5365866 (= res!2277203 (not ((_ is ElementMatch!15075) (regOne!30662 r!7292))))))

(assert (=> b!5365866 (= e!3329883 e!3329882)))

(declare-fun b!5365867 () Bool)

(declare-fun res!2277204 () Bool)

(assert (=> b!5365867 (=> (not res!2277204) (not e!3329885))))

(assert (=> b!5365867 (= res!2277204 (isEmpty!33377 (tail!10607 (_1!35577 (get!21121 lt!2185626)))))))

(declare-fun d!1718899 () Bool)

(assert (=> d!1718899 e!3329886))

(declare-fun c!934685 () Bool)

(assert (=> d!1718899 (= c!934685 ((_ is EmptyExpr!15075) (regOne!30662 r!7292)))))

(assert (=> d!1718899 (= lt!2185686 e!3329888)))

(declare-fun c!934684 () Bool)

(assert (=> d!1718899 (= c!934684 (isEmpty!33377 (_1!35577 (get!21121 lt!2185626))))))

(assert (=> d!1718899 (validRegex!6811 (regOne!30662 r!7292))))

(assert (=> d!1718899 (= (matchR!7260 (regOne!30662 r!7292) (_1!35577 (get!21121 lt!2185626))) lt!2185686)))

(declare-fun b!5365861 () Bool)

(assert (=> b!5365861 (= e!3329888 (nullable!5244 (regOne!30662 r!7292)))))

(assert (= (and d!1718899 c!934684) b!5365861))

(assert (= (and d!1718899 (not c!934684)) b!5365860))

(assert (= (and d!1718899 c!934685) b!5365865))

(assert (= (and d!1718899 (not c!934685)) b!5365857))

(assert (= (and b!5365857 c!934686) b!5365864))

(assert (= (and b!5365857 (not c!934686)) b!5365866))

(assert (= (and b!5365866 (not res!2277203)) b!5365856))

(assert (= (and b!5365856 res!2277202) b!5365855))

(assert (= (and b!5365855 res!2277205) b!5365867))

(assert (= (and b!5365867 res!2277204) b!5365854))

(assert (= (and b!5365856 (not res!2277208)) b!5365863))

(assert (= (and b!5365863 res!2277207) b!5365858))

(assert (= (and b!5365858 (not res!2277201)) b!5365862))

(assert (= (and b!5365862 (not res!2277206)) b!5365859))

(assert (= (or b!5365865 b!5365855 b!5365858) bm!383964))

(declare-fun m!6393948 () Bool)

(assert (=> bm!383964 m!6393948))

(assert (=> b!5365861 m!6393542))

(declare-fun m!6393950 () Bool)

(assert (=> b!5365867 m!6393950))

(assert (=> b!5365867 m!6393950))

(declare-fun m!6393952 () Bool)

(assert (=> b!5365867 m!6393952))

(declare-fun m!6393954 () Bool)

(assert (=> b!5365860 m!6393954))

(assert (=> b!5365860 m!6393954))

(declare-fun m!6393956 () Bool)

(assert (=> b!5365860 m!6393956))

(assert (=> b!5365860 m!6393950))

(assert (=> b!5365860 m!6393956))

(assert (=> b!5365860 m!6393950))

(declare-fun m!6393958 () Bool)

(assert (=> b!5365860 m!6393958))

(assert (=> b!5365859 m!6393954))

(assert (=> b!5365862 m!6393950))

(assert (=> b!5365862 m!6393950))

(assert (=> b!5365862 m!6393952))

(assert (=> d!1718899 m!6393948))

(assert (=> d!1718899 m!6393240))

(assert (=> b!5365854 m!6393954))

(assert (=> b!5365111 d!1718899))

(assert (=> b!5365111 d!1718873))

(declare-fun d!1718901 () Bool)

(assert (=> d!1718901 (= (Exists!2256 lambda!276523) (choose!40287 lambda!276523))))

(declare-fun bs!1242601 () Bool)

(assert (= bs!1242601 d!1718901))

(declare-fun m!6393960 () Bool)

(assert (=> bs!1242601 m!6393960))

(assert (=> d!1718531 d!1718901))

(assert (=> d!1718531 d!1718753))

(declare-fun bs!1242602 () Bool)

(declare-fun d!1718903 () Bool)

(assert (= bs!1242602 (and d!1718903 b!5365334)))

(declare-fun lambda!276580 () Int)

(assert (=> bs!1242602 (not (= lambda!276580 lambda!276551))))

(declare-fun bs!1242603 () Bool)

(assert (= bs!1242603 (and d!1718903 d!1718511)))

(assert (=> bs!1242603 (not (= lambda!276580 lambda!276517))))

(declare-fun bs!1242604 () Bool)

(assert (= bs!1242604 (and d!1718903 b!5365370)))

(assert (=> bs!1242604 (not (= lambda!276580 lambda!276552))))

(declare-fun bs!1242605 () Bool)

(assert (= bs!1242605 (and d!1718903 b!5364506)))

(assert (=> bs!1242605 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276580 lambda!276478))))

(assert (=> bs!1242603 (= lambda!276580 lambda!276516)))

(declare-fun bs!1242606 () Bool)

(assert (= bs!1242606 (and d!1718903 d!1718569)))

(assert (=> bs!1242606 (not (= lambda!276580 lambda!276531))))

(assert (=> bs!1242606 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276580 lambda!276530))))

(declare-fun bs!1242607 () Bool)

(assert (= bs!1242607 (and d!1718903 b!5364528)))

(assert (=> bs!1242607 (not (= lambda!276580 lambda!276482))))

(declare-fun bs!1242608 () Bool)

(assert (= bs!1242608 (and d!1718903 b!5365331)))

(assert (=> bs!1242608 (not (= lambda!276580 lambda!276550))))

(declare-fun bs!1242609 () Bool)

(assert (= bs!1242609 (and d!1718903 d!1718767)))

(assert (=> bs!1242609 (not (= lambda!276580 lambda!276567))))

(assert (=> bs!1242609 (= lambda!276580 lambda!276566)))

(declare-fun bs!1242610 () Bool)

(assert (= bs!1242610 (and d!1718903 d!1718819)))

(assert (=> bs!1242610 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276580 lambda!276573))))

(declare-fun bs!1242611 () Bool)

(assert (= bs!1242611 (and d!1718903 b!5365373)))

(assert (=> bs!1242611 (not (= lambda!276580 lambda!276553))))

(assert (=> bs!1242607 (= lambda!276580 lambda!276481)))

(declare-fun bs!1242612 () Bool)

(assert (= bs!1242612 (and d!1718903 d!1718531)))

(assert (=> bs!1242612 (= lambda!276580 lambda!276523)))

(assert (=> bs!1242605 (not (= lambda!276580 lambda!276479))))

(declare-fun bs!1242613 () Bool)

(assert (= bs!1242613 (and d!1718903 d!1718587)))

(assert (=> bs!1242613 (= (= lt!2185531 (regOne!30662 r!7292)) (= lambda!276580 lambda!276532))))

(assert (=> d!1718903 true))

(assert (=> d!1718903 true))

(assert (=> d!1718903 true))

(assert (=> d!1718903 (= (isDefined!11889 (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)) (Exists!2256 lambda!276580))))

(assert (=> d!1718903 true))

(declare-fun _$89!1555 () Unit!153818)

(assert (=> d!1718903 (= (choose!40289 lt!2185531 (regTwo!30662 r!7292) s!2326) _$89!1555)))

(declare-fun bs!1242614 () Bool)

(assert (= bs!1242614 d!1718903))

(assert (=> bs!1242614 m!6392710))

(assert (=> bs!1242614 m!6392710))

(assert (=> bs!1242614 m!6393094))

(declare-fun m!6393962 () Bool)

(assert (=> bs!1242614 m!6393962))

(assert (=> d!1718531 d!1718903))

(assert (=> d!1718531 d!1718537))

(declare-fun d!1718905 () Bool)

(assert (=> d!1718905 (= (isDefined!11889 (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)) (not (isEmpty!33379 (findConcatSeparation!1600 lt!2185531 (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326))))))

(declare-fun bs!1242615 () Bool)

(assert (= bs!1242615 d!1718905))

(assert (=> bs!1242615 m!6392710))

(declare-fun m!6393964 () Bool)

(assert (=> bs!1242615 m!6393964))

(assert (=> d!1718531 d!1718905))

(assert (=> d!1718565 d!1718803))

(declare-fun b!5365868 () Bool)

(declare-fun e!3329892 () Bool)

(assert (=> b!5365868 (= e!3329892 (= (head!11510 Nil!61402) (c!934311 (regOne!30662 r!7292))))))

(declare-fun b!5365869 () Bool)

(declare-fun res!2277213 () Bool)

(assert (=> b!5365869 (=> (not res!2277213) (not e!3329892))))

(declare-fun call!383970 () Bool)

(assert (=> b!5365869 (= res!2277213 (not call!383970))))

(declare-fun b!5365870 () Bool)

(declare-fun res!2277216 () Bool)

(declare-fun e!3329889 () Bool)

(assert (=> b!5365870 (=> res!2277216 e!3329889)))

(assert (=> b!5365870 (= res!2277216 e!3329892)))

(declare-fun res!2277210 () Bool)

(assert (=> b!5365870 (=> (not res!2277210) (not e!3329892))))

(declare-fun lt!2185687 () Bool)

(assert (=> b!5365870 (= res!2277210 lt!2185687)))

(declare-fun b!5365871 () Bool)

(declare-fun e!3329893 () Bool)

(declare-fun e!3329890 () Bool)

(assert (=> b!5365871 (= e!3329893 e!3329890)))

(declare-fun c!934689 () Bool)

(assert (=> b!5365871 (= c!934689 ((_ is EmptyLang!15075) (regOne!30662 r!7292)))))

(declare-fun b!5365872 () Bool)

(declare-fun e!3329894 () Bool)

(declare-fun e!3329891 () Bool)

(assert (=> b!5365872 (= e!3329894 e!3329891)))

(declare-fun res!2277209 () Bool)

(assert (=> b!5365872 (=> res!2277209 e!3329891)))

(assert (=> b!5365872 (= res!2277209 call!383970)))

(declare-fun b!5365873 () Bool)

(assert (=> b!5365873 (= e!3329891 (not (= (head!11510 Nil!61402) (c!934311 (regOne!30662 r!7292)))))))

(declare-fun b!5365874 () Bool)

(declare-fun e!3329895 () Bool)

(assert (=> b!5365874 (= e!3329895 (matchR!7260 (derivativeStep!4217 (regOne!30662 r!7292) (head!11510 Nil!61402)) (tail!10607 Nil!61402)))))

(declare-fun b!5365876 () Bool)

(declare-fun res!2277214 () Bool)

(assert (=> b!5365876 (=> res!2277214 e!3329891)))

(assert (=> b!5365876 (= res!2277214 (not (isEmpty!33377 (tail!10607 Nil!61402))))))

(declare-fun b!5365877 () Bool)

(assert (=> b!5365877 (= e!3329889 e!3329894)))

(declare-fun res!2277215 () Bool)

(assert (=> b!5365877 (=> (not res!2277215) (not e!3329894))))

(assert (=> b!5365877 (= res!2277215 (not lt!2185687))))

(declare-fun bm!383965 () Bool)

(assert (=> bm!383965 (= call!383970 (isEmpty!33377 Nil!61402))))

(declare-fun b!5365878 () Bool)

(assert (=> b!5365878 (= e!3329890 (not lt!2185687))))

(declare-fun b!5365879 () Bool)

(assert (=> b!5365879 (= e!3329893 (= lt!2185687 call!383970))))

(declare-fun b!5365880 () Bool)

(declare-fun res!2277211 () Bool)

(assert (=> b!5365880 (=> res!2277211 e!3329889)))

(assert (=> b!5365880 (= res!2277211 (not ((_ is ElementMatch!15075) (regOne!30662 r!7292))))))

(assert (=> b!5365880 (= e!3329890 e!3329889)))

(declare-fun b!5365881 () Bool)

(declare-fun res!2277212 () Bool)

(assert (=> b!5365881 (=> (not res!2277212) (not e!3329892))))

(assert (=> b!5365881 (= res!2277212 (isEmpty!33377 (tail!10607 Nil!61402)))))

(declare-fun d!1718907 () Bool)

(assert (=> d!1718907 e!3329893))

(declare-fun c!934688 () Bool)

(assert (=> d!1718907 (= c!934688 ((_ is EmptyExpr!15075) (regOne!30662 r!7292)))))

(assert (=> d!1718907 (= lt!2185687 e!3329895)))

(declare-fun c!934687 () Bool)

(assert (=> d!1718907 (= c!934687 (isEmpty!33377 Nil!61402))))

(assert (=> d!1718907 (validRegex!6811 (regOne!30662 r!7292))))

(assert (=> d!1718907 (= (matchR!7260 (regOne!30662 r!7292) Nil!61402) lt!2185687)))

(declare-fun b!5365875 () Bool)

(assert (=> b!5365875 (= e!3329895 (nullable!5244 (regOne!30662 r!7292)))))

(assert (= (and d!1718907 c!934687) b!5365875))

(assert (= (and d!1718907 (not c!934687)) b!5365874))

(assert (= (and d!1718907 c!934688) b!5365879))

(assert (= (and d!1718907 (not c!934688)) b!5365871))

(assert (= (and b!5365871 c!934689) b!5365878))

(assert (= (and b!5365871 (not c!934689)) b!5365880))

(assert (= (and b!5365880 (not res!2277211)) b!5365870))

(assert (= (and b!5365870 res!2277210) b!5365869))

(assert (= (and b!5365869 res!2277213) b!5365881))

(assert (= (and b!5365881 res!2277212) b!5365868))

(assert (= (and b!5365870 (not res!2277216)) b!5365877))

(assert (= (and b!5365877 res!2277215) b!5365872))

(assert (= (and b!5365872 (not res!2277209)) b!5365876))

(assert (= (and b!5365876 (not res!2277214)) b!5365873))

(assert (= (or b!5365879 b!5365869 b!5365872) bm!383965))

(assert (=> bm!383965 m!6393620))

(assert (=> b!5365875 m!6393542))

(assert (=> b!5365881 m!6393622))

(assert (=> b!5365881 m!6393622))

(assert (=> b!5365881 m!6393624))

(assert (=> b!5365874 m!6393626))

(assert (=> b!5365874 m!6393626))

(declare-fun m!6393966 () Bool)

(assert (=> b!5365874 m!6393966))

(assert (=> b!5365874 m!6393622))

(assert (=> b!5365874 m!6393966))

(assert (=> b!5365874 m!6393622))

(declare-fun m!6393968 () Bool)

(assert (=> b!5365874 m!6393968))

(assert (=> b!5365873 m!6393626))

(assert (=> b!5365876 m!6393622))

(assert (=> b!5365876 m!6393622))

(assert (=> b!5365876 m!6393624))

(assert (=> d!1718907 m!6393620))

(assert (=> d!1718907 m!6393240))

(assert (=> b!5365868 m!6393626))

(assert (=> d!1718565 d!1718907))

(assert (=> d!1718565 d!1718817))

(declare-fun d!1718909 () Bool)

(assert (=> d!1718909 (= (flatMap!802 lt!2185512 lambda!276556) (choose!40285 lt!2185512 lambda!276556))))

(declare-fun bs!1242616 () Bool)

(assert (= bs!1242616 d!1718909))

(declare-fun m!6393970 () Bool)

(assert (=> bs!1242616 m!6393970))

(assert (=> d!1718661 d!1718909))

(assert (=> bs!1242497 d!1718597))

(declare-fun b!5365886 () Bool)

(declare-fun c!934691 () Bool)

(declare-fun e!3329898 () Bool)

(assert (=> b!5365886 (= c!934691 e!3329898)))

(declare-fun res!2277221 () Bool)

(assert (=> b!5365886 (=> (not res!2277221) (not e!3329898))))

(assert (=> b!5365886 (= res!2277221 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185509))))))

(declare-fun e!3329899 () (InoxSet Context!8918))

(declare-fun e!3329900 () (InoxSet Context!8918))

(assert (=> b!5365886 (= e!3329899 e!3329900)))

(declare-fun b!5365887 () Bool)

(declare-fun e!3329901 () (InoxSet Context!8918))

(declare-fun call!383973 () (InoxSet Context!8918))

(assert (=> b!5365887 (= e!3329901 call!383973)))

(declare-fun b!5365888 () Bool)

(declare-fun e!3329903 () (InoxSet Context!8918))

(assert (=> b!5365888 (= e!3329903 call!383973)))

(declare-fun b!5365889 () Bool)

(declare-fun e!3329902 () (InoxSet Context!8918))

(assert (=> b!5365889 (= e!3329902 e!3329899)))

(declare-fun c!934694 () Bool)

(assert (=> b!5365889 (= c!934694 ((_ is Union!15075) (h!67848 (exprs!4959 lt!2185509))))))

(declare-fun bm!383966 () Bool)

(declare-fun call!383976 () (InoxSet Context!8918))

(declare-fun call!383975 () (InoxSet Context!8918))

(assert (=> bm!383966 (= call!383976 call!383975)))

(declare-fun b!5365890 () Bool)

(declare-fun call!383971 () (InoxSet Context!8918))

(assert (=> b!5365890 (= e!3329899 ((_ map or) call!383971 call!383975))))

(declare-fun b!5365891 () Bool)

(assert (=> b!5365891 (= e!3329902 (store ((as const (Array Context!8918 Bool)) false) (Context!8919 (t!374745 (exprs!4959 lt!2185509))) true))))

(declare-fun b!5365892 () Bool)

(assert (=> b!5365892 (= e!3329898 (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 lt!2185509)))))))

(declare-fun bm!383967 () Bool)

(declare-fun call!383974 () List!61524)

(assert (=> bm!383967 (= call!383971 (derivationStepZipperDown!523 (ite c!934694 (regOne!30663 (h!67848 (exprs!4959 lt!2185509))) (regOne!30662 (h!67848 (exprs!4959 lt!2185509)))) (ite c!934694 (Context!8919 (t!374745 (exprs!4959 lt!2185509))) (Context!8919 call!383974)) (h!67850 s!2326)))))

(declare-fun d!1718911 () Bool)

(declare-fun c!934693 () Bool)

(assert (=> d!1718911 (= c!934693 (and ((_ is ElementMatch!15075) (h!67848 (exprs!4959 lt!2185509))) (= (c!934311 (h!67848 (exprs!4959 lt!2185509))) (h!67850 s!2326))))))

(assert (=> d!1718911 (= (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185509)) (Context!8919 (t!374745 (exprs!4959 lt!2185509))) (h!67850 s!2326)) e!3329902)))

(declare-fun b!5365893 () Bool)

(declare-fun c!934692 () Bool)

(assert (=> b!5365893 (= c!934692 ((_ is Star!15075) (h!67848 (exprs!4959 lt!2185509))))))

(assert (=> b!5365893 (= e!3329903 e!3329901)))

(declare-fun bm!383968 () Bool)

(declare-fun call!383972 () List!61524)

(assert (=> bm!383968 (= call!383972 call!383974)))

(declare-fun c!934690 () Bool)

(declare-fun bm!383969 () Bool)

(assert (=> bm!383969 (= call!383974 ($colon$colon!1446 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185509)))) (ite (or c!934691 c!934690) (regTwo!30662 (h!67848 (exprs!4959 lt!2185509))) (h!67848 (exprs!4959 lt!2185509)))))))

(declare-fun bm!383970 () Bool)

(assert (=> bm!383970 (= call!383973 call!383976)))

(declare-fun b!5365894 () Bool)

(assert (=> b!5365894 (= e!3329900 e!3329903)))

(assert (=> b!5365894 (= c!934690 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185509))))))

(declare-fun bm!383971 () Bool)

(assert (=> bm!383971 (= call!383975 (derivationStepZipperDown!523 (ite c!934694 (regTwo!30663 (h!67848 (exprs!4959 lt!2185509))) (ite c!934691 (regTwo!30662 (h!67848 (exprs!4959 lt!2185509))) (ite c!934690 (regOne!30662 (h!67848 (exprs!4959 lt!2185509))) (reg!15404 (h!67848 (exprs!4959 lt!2185509)))))) (ite (or c!934694 c!934691) (Context!8919 (t!374745 (exprs!4959 lt!2185509))) (Context!8919 call!383972)) (h!67850 s!2326)))))

(declare-fun b!5365895 () Bool)

(assert (=> b!5365895 (= e!3329900 ((_ map or) call!383971 call!383976))))

(declare-fun b!5365896 () Bool)

(assert (=> b!5365896 (= e!3329901 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718911 c!934693) b!5365891))

(assert (= (and d!1718911 (not c!934693)) b!5365889))

(assert (= (and b!5365889 c!934694) b!5365890))

(assert (= (and b!5365889 (not c!934694)) b!5365886))

(assert (= (and b!5365886 res!2277221) b!5365892))

(assert (= (and b!5365886 c!934691) b!5365895))

(assert (= (and b!5365886 (not c!934691)) b!5365894))

(assert (= (and b!5365894 c!934690) b!5365888))

(assert (= (and b!5365894 (not c!934690)) b!5365893))

(assert (= (and b!5365893 c!934692) b!5365887))

(assert (= (and b!5365893 (not c!934692)) b!5365896))

(assert (= (or b!5365888 b!5365887) bm!383968))

(assert (= (or b!5365888 b!5365887) bm!383970))

(assert (= (or b!5365895 bm!383968) bm!383969))

(assert (= (or b!5365895 bm!383970) bm!383966))

(assert (= (or b!5365890 bm!383966) bm!383971))

(assert (= (or b!5365890 b!5365895) bm!383967))

(declare-fun m!6393972 () Bool)

(assert (=> b!5365891 m!6393972))

(declare-fun m!6393974 () Bool)

(assert (=> bm!383971 m!6393974))

(declare-fun m!6393976 () Bool)

(assert (=> bm!383969 m!6393976))

(declare-fun m!6393978 () Bool)

(assert (=> b!5365892 m!6393978))

(declare-fun m!6393980 () Bool)

(assert (=> bm!383967 m!6393980))

(assert (=> bm!383879 d!1718911))

(declare-fun d!1718913 () Bool)

(assert (=> d!1718913 (= (isEmpty!33379 lt!2185524) (not ((_ is Some!15185) lt!2185524)))))

(assert (=> d!1718545 d!1718913))

(declare-fun b!5365915 () Bool)

(declare-fun e!3329923 () Bool)

(declare-fun e!3329918 () Bool)

(assert (=> b!5365915 (= e!3329923 e!3329918)))

(declare-fun res!2277239 () Bool)

(assert (=> b!5365915 (=> (not res!2277239) (not e!3329918))))

(assert (=> b!5365915 (= res!2277239 (and (not ((_ is EmptyLang!15075) (regOne!30662 (regOne!30662 r!7292)))) (not ((_ is ElementMatch!15075) (regOne!30662 (regOne!30662 r!7292))))))))

(declare-fun bm!383976 () Bool)

(declare-fun call!383981 () Bool)

(declare-fun c!934697 () Bool)

(assert (=> bm!383976 (= call!383981 (nullable!5244 (ite c!934697 (regOne!30663 (regOne!30662 (regOne!30662 r!7292))) (regOne!30662 (regOne!30662 (regOne!30662 r!7292))))))))

(declare-fun b!5365916 () Bool)

(declare-fun e!3329921 () Bool)

(declare-fun e!3329919 () Bool)

(assert (=> b!5365916 (= e!3329921 e!3329919)))

(declare-fun res!2277238 () Bool)

(assert (=> b!5365916 (= res!2277238 call!383981)))

(assert (=> b!5365916 (=> (not res!2277238) (not e!3329919))))

(declare-fun b!5365917 () Bool)

(declare-fun e!3329920 () Bool)

(declare-fun call!383982 () Bool)

(assert (=> b!5365917 (= e!3329920 call!383982)))

(declare-fun d!1718915 () Bool)

(declare-fun res!2277240 () Bool)

(assert (=> d!1718915 (=> res!2277240 e!3329923)))

(assert (=> d!1718915 (= res!2277240 ((_ is EmptyExpr!15075) (regOne!30662 (regOne!30662 r!7292))))))

(assert (=> d!1718915 (= (nullableFct!1548 (regOne!30662 (regOne!30662 r!7292))) e!3329923)))

(declare-fun b!5365918 () Bool)

(declare-fun e!3329922 () Bool)

(assert (=> b!5365918 (= e!3329918 e!3329922)))

(declare-fun res!2277237 () Bool)

(assert (=> b!5365918 (=> res!2277237 e!3329922)))

(assert (=> b!5365918 (= res!2277237 ((_ is Star!15075) (regOne!30662 (regOne!30662 r!7292))))))

(declare-fun b!5365919 () Bool)

(assert (=> b!5365919 (= e!3329919 call!383982)))

(declare-fun b!5365920 () Bool)

(assert (=> b!5365920 (= e!3329922 e!3329921)))

(assert (=> b!5365920 (= c!934697 ((_ is Union!15075) (regOne!30662 (regOne!30662 r!7292))))))

(declare-fun b!5365921 () Bool)

(assert (=> b!5365921 (= e!3329921 e!3329920)))

(declare-fun res!2277236 () Bool)

(assert (=> b!5365921 (= res!2277236 call!383981)))

(assert (=> b!5365921 (=> res!2277236 e!3329920)))

(declare-fun bm!383977 () Bool)

(assert (=> bm!383977 (= call!383982 (nullable!5244 (ite c!934697 (regTwo!30663 (regOne!30662 (regOne!30662 r!7292))) (regTwo!30662 (regOne!30662 (regOne!30662 r!7292))))))))

(assert (= (and d!1718915 (not res!2277240)) b!5365915))

(assert (= (and b!5365915 res!2277239) b!5365918))

(assert (= (and b!5365918 (not res!2277237)) b!5365920))

(assert (= (and b!5365920 c!934697) b!5365921))

(assert (= (and b!5365920 (not c!934697)) b!5365916))

(assert (= (and b!5365921 (not res!2277236)) b!5365917))

(assert (= (and b!5365916 res!2277238) b!5365919))

(assert (= (or b!5365917 b!5365919) bm!383977))

(assert (= (or b!5365921 b!5365916) bm!383976))

(declare-fun m!6393982 () Bool)

(assert (=> bm!383976 m!6393982))

(declare-fun m!6393984 () Bool)

(assert (=> bm!383977 m!6393984))

(assert (=> d!1718605 d!1718915))

(declare-fun bs!1242620 () Bool)

(declare-fun b!5365923 () Bool)

(assert (= bs!1242620 (and b!5365923 d!1718903)))

(declare-fun lambda!276586 () Int)

(assert (=> bs!1242620 (not (= lambda!276586 lambda!276580))))

(declare-fun bs!1242622 () Bool)

(assert (= bs!1242622 (and b!5365923 b!5365334)))

(assert (=> bs!1242622 (not (= lambda!276586 lambda!276551))))

(declare-fun bs!1242623 () Bool)

(assert (= bs!1242623 (and b!5365923 d!1718511)))

(assert (=> bs!1242623 (not (= lambda!276586 lambda!276517))))

(declare-fun bs!1242625 () Bool)

(assert (= bs!1242625 (and b!5365923 b!5365370)))

(assert (=> bs!1242625 (= (and (= (reg!15404 (regTwo!30663 lt!2185527)) (reg!15404 lt!2185527)) (= (regTwo!30663 lt!2185527) lt!2185527)) (= lambda!276586 lambda!276552))))

(declare-fun bs!1242626 () Bool)

(assert (= bs!1242626 (and b!5365923 b!5364506)))

(assert (=> bs!1242626 (not (= lambda!276586 lambda!276478))))

(assert (=> bs!1242623 (not (= lambda!276586 lambda!276516))))

(declare-fun bs!1242628 () Bool)

(assert (= bs!1242628 (and b!5365923 d!1718569)))

(assert (=> bs!1242628 (not (= lambda!276586 lambda!276531))))

(assert (=> bs!1242628 (not (= lambda!276586 lambda!276530))))

(declare-fun bs!1242630 () Bool)

(assert (= bs!1242630 (and b!5365923 b!5364528)))

(assert (=> bs!1242630 (not (= lambda!276586 lambda!276482))))

(declare-fun bs!1242631 () Bool)

(assert (= bs!1242631 (and b!5365923 b!5365331)))

(assert (=> bs!1242631 (= (and (= (reg!15404 (regTwo!30663 lt!2185527)) (reg!15404 r!7292)) (= (regTwo!30663 lt!2185527) r!7292)) (= lambda!276586 lambda!276550))))

(declare-fun bs!1242633 () Bool)

(assert (= bs!1242633 (and b!5365923 d!1718767)))

(assert (=> bs!1242633 (not (= lambda!276586 lambda!276567))))

(assert (=> bs!1242633 (not (= lambda!276586 lambda!276566))))

(declare-fun bs!1242635 () Bool)

(assert (= bs!1242635 (and b!5365923 d!1718819)))

(assert (=> bs!1242635 (not (= lambda!276586 lambda!276573))))

(declare-fun bs!1242636 () Bool)

(assert (= bs!1242636 (and b!5365923 b!5365373)))

(assert (=> bs!1242636 (not (= lambda!276586 lambda!276553))))

(assert (=> bs!1242630 (not (= lambda!276586 lambda!276481))))

(declare-fun bs!1242637 () Bool)

(assert (= bs!1242637 (and b!5365923 d!1718531)))

(assert (=> bs!1242637 (not (= lambda!276586 lambda!276523))))

(assert (=> bs!1242626 (not (= lambda!276586 lambda!276479))))

(declare-fun bs!1242639 () Bool)

(assert (= bs!1242639 (and b!5365923 d!1718587)))

(assert (=> bs!1242639 (not (= lambda!276586 lambda!276532))))

(assert (=> b!5365923 true))

(assert (=> b!5365923 true))

(declare-fun bs!1242641 () Bool)

(declare-fun b!5365926 () Bool)

(assert (= bs!1242641 (and b!5365926 d!1718903)))

(declare-fun lambda!276587 () Int)

(assert (=> bs!1242641 (not (= lambda!276587 lambda!276580))))

(declare-fun bs!1242642 () Bool)

(assert (= bs!1242642 (and b!5365926 b!5365334)))

(assert (=> bs!1242642 (= (and (= (regOne!30662 (regTwo!30663 lt!2185527)) (regOne!30662 r!7292)) (= (regTwo!30662 (regTwo!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276587 lambda!276551))))

(declare-fun bs!1242643 () Bool)

(assert (= bs!1242643 (and b!5365926 d!1718511)))

(assert (=> bs!1242643 (= (and (= (regOne!30662 (regTwo!30663 lt!2185527)) lt!2185531) (= (regTwo!30662 (regTwo!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276587 lambda!276517))))

(declare-fun bs!1242644 () Bool)

(assert (= bs!1242644 (and b!5365926 b!5365370)))

(assert (=> bs!1242644 (not (= lambda!276587 lambda!276552))))

(declare-fun bs!1242645 () Bool)

(assert (= bs!1242645 (and b!5365926 b!5364506)))

(assert (=> bs!1242645 (not (= lambda!276587 lambda!276478))))

(assert (=> bs!1242643 (not (= lambda!276587 lambda!276516))))

(declare-fun bs!1242646 () Bool)

(assert (= bs!1242646 (and b!5365926 d!1718569)))

(assert (=> bs!1242646 (= (and (= (regOne!30662 (regTwo!30663 lt!2185527)) (regOne!30662 r!7292)) (= (regTwo!30662 (regTwo!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276587 lambda!276531))))

(declare-fun bs!1242647 () Bool)

(assert (= bs!1242647 (and b!5365926 b!5365923)))

(assert (=> bs!1242647 (not (= lambda!276587 lambda!276586))))

(assert (=> bs!1242646 (not (= lambda!276587 lambda!276530))))

(declare-fun bs!1242648 () Bool)

(assert (= bs!1242648 (and b!5365926 b!5364528)))

(assert (=> bs!1242648 (= (and (= (regOne!30662 (regTwo!30663 lt!2185527)) lt!2185531) (= (regTwo!30662 (regTwo!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276587 lambda!276482))))

(declare-fun bs!1242649 () Bool)

(assert (= bs!1242649 (and b!5365926 b!5365331)))

(assert (=> bs!1242649 (not (= lambda!276587 lambda!276550))))

(declare-fun bs!1242650 () Bool)

(assert (= bs!1242650 (and b!5365926 d!1718767)))

(assert (=> bs!1242650 (= (and (= (regOne!30662 (regTwo!30663 lt!2185527)) lt!2185531) (= (regTwo!30662 (regTwo!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276587 lambda!276567))))

(assert (=> bs!1242650 (not (= lambda!276587 lambda!276566))))

(declare-fun bs!1242651 () Bool)

(assert (= bs!1242651 (and b!5365926 d!1718819)))

(assert (=> bs!1242651 (not (= lambda!276587 lambda!276573))))

(declare-fun bs!1242652 () Bool)

(assert (= bs!1242652 (and b!5365926 b!5365373)))

(assert (=> bs!1242652 (= (and (= (regOne!30662 (regTwo!30663 lt!2185527)) (regOne!30662 lt!2185527)) (= (regTwo!30662 (regTwo!30663 lt!2185527)) (regTwo!30662 lt!2185527))) (= lambda!276587 lambda!276553))))

(assert (=> bs!1242648 (not (= lambda!276587 lambda!276481))))

(declare-fun bs!1242653 () Bool)

(assert (= bs!1242653 (and b!5365926 d!1718531)))

(assert (=> bs!1242653 (not (= lambda!276587 lambda!276523))))

(assert (=> bs!1242645 (= (and (= (regOne!30662 (regTwo!30663 lt!2185527)) (regOne!30662 r!7292)) (= (regTwo!30662 (regTwo!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276587 lambda!276479))))

(declare-fun bs!1242654 () Bool)

(assert (= bs!1242654 (and b!5365926 d!1718587)))

(assert (=> bs!1242654 (not (= lambda!276587 lambda!276532))))

(assert (=> b!5365926 true))

(assert (=> b!5365926 true))

(declare-fun b!5365922 () Bool)

(declare-fun e!3329929 () Bool)

(declare-fun e!3329930 () Bool)

(assert (=> b!5365922 (= e!3329929 e!3329930)))

(declare-fun res!2277242 () Bool)

(assert (=> b!5365922 (= res!2277242 (matchRSpec!2178 (regOne!30663 (regTwo!30663 lt!2185527)) s!2326))))

(assert (=> b!5365922 (=> res!2277242 e!3329930)))

(declare-fun e!3329925 () Bool)

(declare-fun call!383983 () Bool)

(assert (=> b!5365923 (= e!3329925 call!383983)))

(declare-fun b!5365924 () Bool)

(declare-fun e!3329924 () Bool)

(declare-fun call!383984 () Bool)

(assert (=> b!5365924 (= e!3329924 call!383984)))

(declare-fun b!5365925 () Bool)

(declare-fun c!934700 () Bool)

(assert (=> b!5365925 (= c!934700 ((_ is ElementMatch!15075) (regTwo!30663 lt!2185527)))))

(declare-fun e!3329928 () Bool)

(declare-fun e!3329927 () Bool)

(assert (=> b!5365925 (= e!3329928 e!3329927)))

(declare-fun e!3329926 () Bool)

(assert (=> b!5365926 (= e!3329926 call!383983)))

(declare-fun b!5365927 () Bool)

(assert (=> b!5365927 (= e!3329930 (matchRSpec!2178 (regTwo!30663 (regTwo!30663 lt!2185527)) s!2326))))

(declare-fun b!5365928 () Bool)

(declare-fun c!934699 () Bool)

(assert (=> b!5365928 (= c!934699 ((_ is Union!15075) (regTwo!30663 lt!2185527)))))

(assert (=> b!5365928 (= e!3329927 e!3329929)))

(declare-fun b!5365929 () Bool)

(assert (=> b!5365929 (= e!3329927 (= s!2326 (Cons!61402 (c!934311 (regTwo!30663 lt!2185527)) Nil!61402)))))

(declare-fun b!5365930 () Bool)

(assert (=> b!5365930 (= e!3329924 e!3329928)))

(declare-fun res!2277243 () Bool)

(assert (=> b!5365930 (= res!2277243 (not ((_ is EmptyLang!15075) (regTwo!30663 lt!2185527))))))

(assert (=> b!5365930 (=> (not res!2277243) (not e!3329928))))

(declare-fun b!5365931 () Bool)

(assert (=> b!5365931 (= e!3329929 e!3329926)))

(declare-fun c!934701 () Bool)

(assert (=> b!5365931 (= c!934701 ((_ is Star!15075) (regTwo!30663 lt!2185527)))))

(declare-fun b!5365932 () Bool)

(declare-fun res!2277241 () Bool)

(assert (=> b!5365932 (=> res!2277241 e!3329925)))

(assert (=> b!5365932 (= res!2277241 call!383984)))

(assert (=> b!5365932 (= e!3329926 e!3329925)))

(declare-fun bm!383979 () Bool)

(assert (=> bm!383979 (= call!383983 (Exists!2256 (ite c!934701 lambda!276586 lambda!276587)))))

(declare-fun bm!383978 () Bool)

(assert (=> bm!383978 (= call!383984 (isEmpty!33377 s!2326))))

(declare-fun d!1718917 () Bool)

(declare-fun c!934698 () Bool)

(assert (=> d!1718917 (= c!934698 ((_ is EmptyExpr!15075) (regTwo!30663 lt!2185527)))))

(assert (=> d!1718917 (= (matchRSpec!2178 (regTwo!30663 lt!2185527) s!2326) e!3329924)))

(assert (= (and d!1718917 c!934698) b!5365924))

(assert (= (and d!1718917 (not c!934698)) b!5365930))

(assert (= (and b!5365930 res!2277243) b!5365925))

(assert (= (and b!5365925 c!934700) b!5365929))

(assert (= (and b!5365925 (not c!934700)) b!5365928))

(assert (= (and b!5365928 c!934699) b!5365922))

(assert (= (and b!5365928 (not c!934699)) b!5365931))

(assert (= (and b!5365922 (not res!2277242)) b!5365927))

(assert (= (and b!5365931 c!934701) b!5365932))

(assert (= (and b!5365931 (not c!934701)) b!5365926))

(assert (= (and b!5365932 (not res!2277241)) b!5365923))

(assert (= (or b!5365923 b!5365926) bm!383979))

(assert (= (or b!5365924 b!5365932) bm!383978))

(declare-fun m!6393986 () Bool)

(assert (=> b!5365922 m!6393986))

(declare-fun m!6393988 () Bool)

(assert (=> b!5365927 m!6393988))

(declare-fun m!6393990 () Bool)

(assert (=> bm!383979 m!6393990))

(assert (=> bm!383978 m!6393408))

(assert (=> b!5365374 d!1718917))

(declare-fun d!1718919 () Bool)

(assert (=> d!1718919 true))

(assert (=> d!1718919 true))

(declare-fun res!2277244 () Bool)

(assert (=> d!1718919 (= (choose!40287 lambda!276478) res!2277244)))

(assert (=> d!1718585 d!1718919))

(declare-fun d!1718921 () Bool)

(assert (=> d!1718921 (= (isEmpty!33378 (tail!10608 (unfocusZipperList!517 zl!343))) ((_ is Nil!61400) (tail!10608 (unfocusZipperList!517 zl!343))))))

(assert (=> b!5365262 d!1718921))

(declare-fun d!1718923 () Bool)

(assert (=> d!1718923 (= (tail!10608 (unfocusZipperList!517 zl!343)) (t!374745 (unfocusZipperList!517 zl!343)))))

(assert (=> b!5365262 d!1718923))

(declare-fun d!1718925 () Bool)

(assert (=> d!1718925 (= (isEmptyExpr!930 lt!2185634) ((_ is EmptyExpr!15075) lt!2185634))))

(assert (=> b!5365231 d!1718925))

(declare-fun d!1718927 () Bool)

(declare-fun c!934702 () Bool)

(assert (=> d!1718927 (= c!934702 (isEmpty!33377 (tail!10607 (t!374747 s!2326))))))

(declare-fun e!3329931 () Bool)

(assert (=> d!1718927 (= (matchZipper!1319 (derivationStepZipper!1314 lt!2185530 (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))) e!3329931)))

(declare-fun b!5365933 () Bool)

(assert (=> b!5365933 (= e!3329931 (nullableZipper!1396 (derivationStepZipper!1314 lt!2185530 (head!11510 (t!374747 s!2326)))))))

(declare-fun b!5365934 () Bool)

(assert (=> b!5365934 (= e!3329931 (matchZipper!1319 (derivationStepZipper!1314 (derivationStepZipper!1314 lt!2185530 (head!11510 (t!374747 s!2326))) (head!11510 (tail!10607 (t!374747 s!2326)))) (tail!10607 (tail!10607 (t!374747 s!2326)))))))

(assert (= (and d!1718927 c!934702) b!5365933))

(assert (= (and d!1718927 (not c!934702)) b!5365934))

(assert (=> d!1718927 m!6393310))

(assert (=> d!1718927 m!6393830))

(assert (=> b!5365933 m!6393422))

(declare-fun m!6393992 () Bool)

(assert (=> b!5365933 m!6393992))

(assert (=> b!5365934 m!6393310))

(assert (=> b!5365934 m!6393834))

(assert (=> b!5365934 m!6393422))

(assert (=> b!5365934 m!6393834))

(declare-fun m!6393996 () Bool)

(assert (=> b!5365934 m!6393996))

(assert (=> b!5365934 m!6393310))

(assert (=> b!5365934 m!6393838))

(assert (=> b!5365934 m!6393996))

(assert (=> b!5365934 m!6393838))

(declare-fun m!6394000 () Bool)

(assert (=> b!5365934 m!6394000))

(assert (=> b!5365297 d!1718927))

(declare-fun bs!1242656 () Bool)

(declare-fun d!1718931 () Bool)

(assert (= bs!1242656 (and d!1718931 d!1718663)))

(declare-fun lambda!276589 () Int)

(assert (=> bs!1242656 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276589 lambda!276557))))

(declare-fun bs!1242657 () Bool)

(assert (= bs!1242657 (and d!1718931 d!1718661)))

(assert (=> bs!1242657 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276589 lambda!276556))))

(declare-fun bs!1242658 () Bool)

(assert (= bs!1242658 (and d!1718931 b!5364515)))

(assert (=> bs!1242658 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276589 lambda!276480))))

(declare-fun bs!1242659 () Bool)

(assert (= bs!1242659 (and d!1718931 d!1718885)))

(assert (=> bs!1242659 (= lambda!276589 lambda!276579)))

(declare-fun bs!1242660 () Bool)

(assert (= bs!1242660 (and d!1718931 d!1718831)))

(assert (=> bs!1242660 (= lambda!276589 lambda!276574)))

(assert (=> d!1718931 true))

(assert (=> d!1718931 (= (derivationStepZipper!1314 lt!2185530 (head!11510 (t!374747 s!2326))) (flatMap!802 lt!2185530 lambda!276589))))

(declare-fun bs!1242661 () Bool)

(assert (= bs!1242661 d!1718931))

(declare-fun m!6394002 () Bool)

(assert (=> bs!1242661 m!6394002))

(assert (=> b!5365297 d!1718931))

(assert (=> b!5365297 d!1718833))

(assert (=> b!5365297 d!1718835))

(declare-fun b!5365944 () Bool)

(declare-fun c!934706 () Bool)

(declare-fun e!3329939 () Bool)

(assert (=> b!5365944 (= c!934706 e!3329939)))

(declare-fun res!2277250 () Bool)

(assert (=> b!5365944 (=> (not res!2277250) (not e!3329939))))

(assert (=> b!5365944 (= res!2277250 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185502))))))

(declare-fun e!3329940 () (InoxSet Context!8918))

(declare-fun e!3329941 () (InoxSet Context!8918))

(assert (=> b!5365944 (= e!3329940 e!3329941)))

(declare-fun b!5365945 () Bool)

(declare-fun e!3329942 () (InoxSet Context!8918))

(declare-fun call!383990 () (InoxSet Context!8918))

(assert (=> b!5365945 (= e!3329942 call!383990)))

(declare-fun b!5365946 () Bool)

(declare-fun e!3329944 () (InoxSet Context!8918))

(assert (=> b!5365946 (= e!3329944 call!383990)))

(declare-fun b!5365947 () Bool)

(declare-fun e!3329943 () (InoxSet Context!8918))

(assert (=> b!5365947 (= e!3329943 e!3329940)))

(declare-fun c!934709 () Bool)

(assert (=> b!5365947 (= c!934709 ((_ is Union!15075) (h!67848 (exprs!4959 lt!2185502))))))

(declare-fun bm!383983 () Bool)

(declare-fun call!383993 () (InoxSet Context!8918))

(declare-fun call!383992 () (InoxSet Context!8918))

(assert (=> bm!383983 (= call!383993 call!383992)))

(declare-fun b!5365948 () Bool)

(declare-fun call!383988 () (InoxSet Context!8918))

(assert (=> b!5365948 (= e!3329940 ((_ map or) call!383988 call!383992))))

(declare-fun b!5365949 () Bool)

(assert (=> b!5365949 (= e!3329943 (store ((as const (Array Context!8918 Bool)) false) (Context!8919 (t!374745 (exprs!4959 lt!2185502))) true))))

(declare-fun b!5365950 () Bool)

(assert (=> b!5365950 (= e!3329939 (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 lt!2185502)))))))

(declare-fun call!383991 () List!61524)

(declare-fun bm!383984 () Bool)

(assert (=> bm!383984 (= call!383988 (derivationStepZipperDown!523 (ite c!934709 (regOne!30663 (h!67848 (exprs!4959 lt!2185502))) (regOne!30662 (h!67848 (exprs!4959 lt!2185502)))) (ite c!934709 (Context!8919 (t!374745 (exprs!4959 lt!2185502))) (Context!8919 call!383991)) (h!67850 s!2326)))))

(declare-fun d!1718933 () Bool)

(declare-fun c!934708 () Bool)

(assert (=> d!1718933 (= c!934708 (and ((_ is ElementMatch!15075) (h!67848 (exprs!4959 lt!2185502))) (= (c!934311 (h!67848 (exprs!4959 lt!2185502))) (h!67850 s!2326))))))

(assert (=> d!1718933 (= (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185502)) (Context!8919 (t!374745 (exprs!4959 lt!2185502))) (h!67850 s!2326)) e!3329943)))

(declare-fun b!5365951 () Bool)

(declare-fun c!934707 () Bool)

(assert (=> b!5365951 (= c!934707 ((_ is Star!15075) (h!67848 (exprs!4959 lt!2185502))))))

(assert (=> b!5365951 (= e!3329944 e!3329942)))

(declare-fun bm!383985 () Bool)

(declare-fun call!383989 () List!61524)

(assert (=> bm!383985 (= call!383989 call!383991)))

(declare-fun c!934705 () Bool)

(declare-fun bm!383986 () Bool)

(assert (=> bm!383986 (= call!383991 ($colon$colon!1446 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185502)))) (ite (or c!934706 c!934705) (regTwo!30662 (h!67848 (exprs!4959 lt!2185502))) (h!67848 (exprs!4959 lt!2185502)))))))

(declare-fun bm!383987 () Bool)

(assert (=> bm!383987 (= call!383990 call!383993)))

(declare-fun b!5365952 () Bool)

(assert (=> b!5365952 (= e!3329941 e!3329944)))

(assert (=> b!5365952 (= c!934705 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185502))))))

(declare-fun bm!383988 () Bool)

(assert (=> bm!383988 (= call!383992 (derivationStepZipperDown!523 (ite c!934709 (regTwo!30663 (h!67848 (exprs!4959 lt!2185502))) (ite c!934706 (regTwo!30662 (h!67848 (exprs!4959 lt!2185502))) (ite c!934705 (regOne!30662 (h!67848 (exprs!4959 lt!2185502))) (reg!15404 (h!67848 (exprs!4959 lt!2185502)))))) (ite (or c!934709 c!934706) (Context!8919 (t!374745 (exprs!4959 lt!2185502))) (Context!8919 call!383989)) (h!67850 s!2326)))))

(declare-fun b!5365953 () Bool)

(assert (=> b!5365953 (= e!3329941 ((_ map or) call!383988 call!383993))))

(declare-fun b!5365954 () Bool)

(assert (=> b!5365954 (= e!3329942 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1718933 c!934708) b!5365949))

(assert (= (and d!1718933 (not c!934708)) b!5365947))

(assert (= (and b!5365947 c!934709) b!5365948))

(assert (= (and b!5365947 (not c!934709)) b!5365944))

(assert (= (and b!5365944 res!2277250) b!5365950))

(assert (= (and b!5365944 c!934706) b!5365953))

(assert (= (and b!5365944 (not c!934706)) b!5365952))

(assert (= (and b!5365952 c!934705) b!5365946))

(assert (= (and b!5365952 (not c!934705)) b!5365951))

(assert (= (and b!5365951 c!934707) b!5365945))

(assert (= (and b!5365951 (not c!934707)) b!5365954))

(assert (= (or b!5365946 b!5365945) bm!383985))

(assert (= (or b!5365946 b!5365945) bm!383987))

(assert (= (or b!5365953 bm!383985) bm!383986))

(assert (= (or b!5365953 bm!383987) bm!383983))

(assert (= (or b!5365948 bm!383983) bm!383988))

(assert (= (or b!5365948 b!5365953) bm!383984))

(declare-fun m!6394010 () Bool)

(assert (=> b!5365949 m!6394010))

(declare-fun m!6394012 () Bool)

(assert (=> bm!383988 m!6394012))

(declare-fun m!6394014 () Bool)

(assert (=> bm!383986 m!6394014))

(declare-fun m!6394016 () Bool)

(assert (=> b!5365950 m!6394016))

(declare-fun m!6394018 () Bool)

(assert (=> bm!383984 m!6394018))

(assert (=> bm!383861 d!1718933))

(assert (=> b!5365349 d!1718733))

(assert (=> b!5365349 d!1718687))

(assert (=> b!5365363 d!1718733))

(assert (=> b!5365363 d!1718687))

(assert (=> d!1718635 d!1718769))

(declare-fun b!5365957 () Bool)

(declare-fun res!2277252 () Bool)

(declare-fun e!3329948 () Bool)

(assert (=> b!5365957 (=> res!2277252 e!3329948)))

(assert (=> b!5365957 (= res!2277252 (not ((_ is Concat!23920) lt!2185636)))))

(declare-fun e!3329947 () Bool)

(assert (=> b!5365957 (= e!3329947 e!3329948)))

(declare-fun b!5365958 () Bool)

(declare-fun e!3329946 () Bool)

(declare-fun e!3329949 () Bool)

(assert (=> b!5365958 (= e!3329946 e!3329949)))

(declare-fun res!2277251 () Bool)

(assert (=> b!5365958 (= res!2277251 (not (nullable!5244 (reg!15404 lt!2185636))))))

(assert (=> b!5365958 (=> (not res!2277251) (not e!3329949))))

(declare-fun b!5365959 () Bool)

(declare-fun e!3329950 () Bool)

(declare-fun call!383996 () Bool)

(assert (=> b!5365959 (= e!3329950 call!383996)))

(declare-fun b!5365960 () Bool)

(declare-fun e!3329951 () Bool)

(assert (=> b!5365960 (= e!3329951 call!383996)))

(declare-fun call!383994 () Bool)

(declare-fun c!934712 () Bool)

(declare-fun c!934711 () Bool)

(declare-fun bm!383989 () Bool)

(assert (=> bm!383989 (= call!383994 (validRegex!6811 (ite c!934711 (reg!15404 lt!2185636) (ite c!934712 (regOne!30663 lt!2185636) (regOne!30662 lt!2185636)))))))

(declare-fun b!5365961 () Bool)

(declare-fun e!3329952 () Bool)

(assert (=> b!5365961 (= e!3329952 e!3329946)))

(assert (=> b!5365961 (= c!934711 ((_ is Star!15075) lt!2185636))))

(declare-fun b!5365962 () Bool)

(assert (=> b!5365962 (= e!3329949 call!383994)))

(declare-fun d!1718937 () Bool)

(declare-fun res!2277255 () Bool)

(assert (=> d!1718937 (=> res!2277255 e!3329952)))

(assert (=> d!1718937 (= res!2277255 ((_ is ElementMatch!15075) lt!2185636))))

(assert (=> d!1718937 (= (validRegex!6811 lt!2185636) e!3329952)))

(declare-fun bm!383990 () Bool)

(assert (=> bm!383990 (= call!383996 (validRegex!6811 (ite c!934712 (regTwo!30663 lt!2185636) (regTwo!30662 lt!2185636))))))

(declare-fun b!5365963 () Bool)

(declare-fun res!2277253 () Bool)

(assert (=> b!5365963 (=> (not res!2277253) (not e!3329950))))

(declare-fun call!383995 () Bool)

(assert (=> b!5365963 (= res!2277253 call!383995)))

(assert (=> b!5365963 (= e!3329947 e!3329950)))

(declare-fun bm!383991 () Bool)

(assert (=> bm!383991 (= call!383995 call!383994)))

(declare-fun b!5365964 () Bool)

(assert (=> b!5365964 (= e!3329948 e!3329951)))

(declare-fun res!2277254 () Bool)

(assert (=> b!5365964 (=> (not res!2277254) (not e!3329951))))

(assert (=> b!5365964 (= res!2277254 call!383995)))

(declare-fun b!5365965 () Bool)

(assert (=> b!5365965 (= e!3329946 e!3329947)))

(assert (=> b!5365965 (= c!934712 ((_ is Union!15075) lt!2185636))))

(assert (= (and d!1718937 (not res!2277255)) b!5365961))

(assert (= (and b!5365961 c!934711) b!5365958))

(assert (= (and b!5365961 (not c!934711)) b!5365965))

(assert (= (and b!5365958 res!2277251) b!5365962))

(assert (= (and b!5365965 c!934712) b!5365963))

(assert (= (and b!5365965 (not c!934712)) b!5365957))

(assert (= (and b!5365963 res!2277253) b!5365959))

(assert (= (and b!5365957 (not res!2277252)) b!5365964))

(assert (= (and b!5365964 res!2277254) b!5365960))

(assert (= (or b!5365959 b!5365960) bm!383990))

(assert (= (or b!5365963 b!5365964) bm!383991))

(assert (= (or b!5365962 bm!383991) bm!383989))

(declare-fun m!6394020 () Bool)

(assert (=> b!5365958 m!6394020))

(declare-fun m!6394022 () Bool)

(assert (=> bm!383989 m!6394022))

(declare-fun m!6394024 () Bool)

(assert (=> bm!383990 m!6394024))

(assert (=> d!1718619 d!1718937))

(declare-fun bs!1242668 () Bool)

(declare-fun d!1718939 () Bool)

(assert (= bs!1242668 (and d!1718939 d!1718813)))

(declare-fun lambda!276591 () Int)

(assert (=> bs!1242668 (= lambda!276591 lambda!276570)))

(declare-fun bs!1242669 () Bool)

(assert (= bs!1242669 (and d!1718939 d!1718609)))

(assert (=> bs!1242669 (= lambda!276591 lambda!276535)))

(declare-fun bs!1242670 () Bool)

(assert (= bs!1242670 (and d!1718939 d!1718621)))

(assert (=> bs!1242670 (= lambda!276591 lambda!276542)))

(declare-fun bs!1242671 () Bool)

(assert (= bs!1242671 (and d!1718939 d!1718613)))

(assert (=> bs!1242671 (= lambda!276591 lambda!276536)))

(declare-fun bs!1242672 () Bool)

(assert (= bs!1242672 (and d!1718939 d!1718771)))

(assert (=> bs!1242672 (= lambda!276591 lambda!276568)))

(declare-fun bs!1242673 () Bool)

(assert (= bs!1242673 (and d!1718939 d!1718875)))

(assert (=> bs!1242673 (= lambda!276591 lambda!276578)))

(declare-fun bs!1242674 () Bool)

(assert (= bs!1242674 (and d!1718939 d!1718809)))

(assert (=> bs!1242674 (= lambda!276591 lambda!276569)))

(declare-fun bs!1242675 () Bool)

(assert (= bs!1242675 (and d!1718939 d!1718623)))

(assert (=> bs!1242675 (= lambda!276591 lambda!276545)))

(declare-fun bs!1242676 () Bool)

(assert (= bs!1242676 (and d!1718939 d!1718615)))

(assert (=> bs!1242676 (= lambda!276591 lambda!276539)))

(declare-fun bs!1242677 () Bool)

(assert (= bs!1242677 (and d!1718939 b!5364523)))

(assert (=> bs!1242677 (= lambda!276591 lambda!276483)))

(declare-fun b!5365966 () Bool)

(declare-fun e!3329957 () Bool)

(assert (=> b!5365966 (= e!3329957 (isEmpty!33378 (t!374745 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401)))))))

(declare-fun b!5365967 () Bool)

(declare-fun e!3329955 () Regex!15075)

(declare-fun e!3329953 () Regex!15075)

(assert (=> b!5365967 (= e!3329955 e!3329953)))

(declare-fun c!934714 () Bool)

(assert (=> b!5365967 (= c!934714 ((_ is Cons!61400) (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))))))

(declare-fun b!5365968 () Bool)

(declare-fun e!3329954 () Bool)

(declare-fun e!3329958 () Bool)

(assert (=> b!5365968 (= e!3329954 e!3329958)))

(declare-fun c!934713 () Bool)

(assert (=> b!5365968 (= c!934713 (isEmpty!33378 (tail!10608 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401)))))))

(declare-fun b!5365969 () Bool)

(declare-fun lt!2185689 () Regex!15075)

(assert (=> b!5365969 (= e!3329958 (isUnion!371 lt!2185689))))

(declare-fun b!5365970 () Bool)

(declare-fun e!3329956 () Bool)

(assert (=> b!5365970 (= e!3329956 e!3329954)))

(declare-fun c!934715 () Bool)

(assert (=> b!5365970 (= c!934715 (isEmpty!33378 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))))))

(declare-fun b!5365971 () Bool)

(assert (=> b!5365971 (= e!3329954 (isEmptyLang!939 lt!2185689))))

(declare-fun b!5365972 () Bool)

(assert (=> b!5365972 (= e!3329955 (h!67848 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))))))

(declare-fun b!5365973 () Bool)

(assert (=> b!5365973 (= e!3329953 (Union!15075 (h!67848 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))) (generalisedUnion!1004 (t!374745 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))))))))

(assert (=> d!1718939 e!3329956))

(declare-fun res!2277257 () Bool)

(assert (=> d!1718939 (=> (not res!2277257) (not e!3329956))))

(assert (=> d!1718939 (= res!2277257 (validRegex!6811 lt!2185689))))

(assert (=> d!1718939 (= lt!2185689 e!3329955)))

(declare-fun c!934716 () Bool)

(assert (=> d!1718939 (= c!934716 e!3329957)))

(declare-fun res!2277256 () Bool)

(assert (=> d!1718939 (=> (not res!2277256) (not e!3329957))))

(assert (=> d!1718939 (= res!2277256 ((_ is Cons!61400) (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))))))

(assert (=> d!1718939 (forall!14483 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401)) lambda!276591)))

(assert (=> d!1718939 (= (generalisedUnion!1004 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401))) lt!2185689)))

(declare-fun b!5365974 () Bool)

(assert (=> b!5365974 (= e!3329953 EmptyLang!15075)))

(declare-fun b!5365975 () Bool)

(assert (=> b!5365975 (= e!3329958 (= lt!2185689 (head!11511 (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401)))))))

(assert (= (and d!1718939 res!2277256) b!5365966))

(assert (= (and d!1718939 c!934716) b!5365972))

(assert (= (and d!1718939 (not c!934716)) b!5365967))

(assert (= (and b!5365967 c!934714) b!5365973))

(assert (= (and b!5365967 (not c!934714)) b!5365974))

(assert (= (and d!1718939 res!2277257) b!5365970))

(assert (= (and b!5365970 c!934715) b!5365971))

(assert (= (and b!5365970 (not c!934715)) b!5365968))

(assert (= (and b!5365968 c!934713) b!5365975))

(assert (= (and b!5365968 (not c!934713)) b!5365969))

(declare-fun m!6394032 () Bool)

(assert (=> b!5365969 m!6394032))

(declare-fun m!6394034 () Bool)

(assert (=> b!5365966 m!6394034))

(declare-fun m!6394036 () Bool)

(assert (=> b!5365973 m!6394036))

(assert (=> b!5365970 m!6393358))

(declare-fun m!6394038 () Bool)

(assert (=> b!5365970 m!6394038))

(declare-fun m!6394040 () Bool)

(assert (=> b!5365971 m!6394040))

(declare-fun m!6394042 () Bool)

(assert (=> d!1718939 m!6394042))

(assert (=> d!1718939 m!6393358))

(declare-fun m!6394044 () Bool)

(assert (=> d!1718939 m!6394044))

(assert (=> b!5365975 m!6393358))

(declare-fun m!6394046 () Bool)

(assert (=> b!5365975 m!6394046))

(assert (=> b!5365968 m!6393358))

(declare-fun m!6394048 () Bool)

(assert (=> b!5365968 m!6394048))

(assert (=> b!5365968 m!6394048))

(declare-fun m!6394050 () Bool)

(assert (=> b!5365968 m!6394050))

(assert (=> d!1718619 d!1718939))

(declare-fun bs!1242678 () Bool)

(declare-fun d!1718947 () Bool)

(assert (= bs!1242678 (and d!1718947 d!1718939)))

(declare-fun lambda!276592 () Int)

(assert (=> bs!1242678 (= lambda!276592 lambda!276591)))

(declare-fun bs!1242679 () Bool)

(assert (= bs!1242679 (and d!1718947 d!1718813)))

(assert (=> bs!1242679 (= lambda!276592 lambda!276570)))

(declare-fun bs!1242680 () Bool)

(assert (= bs!1242680 (and d!1718947 d!1718609)))

(assert (=> bs!1242680 (= lambda!276592 lambda!276535)))

(declare-fun bs!1242681 () Bool)

(assert (= bs!1242681 (and d!1718947 d!1718621)))

(assert (=> bs!1242681 (= lambda!276592 lambda!276542)))

(declare-fun bs!1242682 () Bool)

(assert (= bs!1242682 (and d!1718947 d!1718613)))

(assert (=> bs!1242682 (= lambda!276592 lambda!276536)))

(declare-fun bs!1242683 () Bool)

(assert (= bs!1242683 (and d!1718947 d!1718771)))

(assert (=> bs!1242683 (= lambda!276592 lambda!276568)))

(declare-fun bs!1242684 () Bool)

(assert (= bs!1242684 (and d!1718947 d!1718875)))

(assert (=> bs!1242684 (= lambda!276592 lambda!276578)))

(declare-fun bs!1242685 () Bool)

(assert (= bs!1242685 (and d!1718947 d!1718809)))

(assert (=> bs!1242685 (= lambda!276592 lambda!276569)))

(declare-fun bs!1242686 () Bool)

(assert (= bs!1242686 (and d!1718947 d!1718623)))

(assert (=> bs!1242686 (= lambda!276592 lambda!276545)))

(declare-fun bs!1242687 () Bool)

(assert (= bs!1242687 (and d!1718947 d!1718615)))

(assert (=> bs!1242687 (= lambda!276592 lambda!276539)))

(declare-fun bs!1242688 () Bool)

(assert (= bs!1242688 (and d!1718947 b!5364523)))

(assert (=> bs!1242688 (= lambda!276592 lambda!276483)))

(declare-fun lt!2185690 () List!61524)

(assert (=> d!1718947 (forall!14483 lt!2185690 lambda!276592)))

(declare-fun e!3329959 () List!61524)

(assert (=> d!1718947 (= lt!2185690 e!3329959)))

(declare-fun c!934717 () Bool)

(assert (=> d!1718947 (= c!934717 ((_ is Cons!61401) (Cons!61401 lt!2185533 Nil!61401)))))

(assert (=> d!1718947 (= (unfocusZipperList!517 (Cons!61401 lt!2185533 Nil!61401)) lt!2185690)))

(declare-fun b!5365976 () Bool)

(assert (=> b!5365976 (= e!3329959 (Cons!61400 (generalisedConcat!744 (exprs!4959 (h!67849 (Cons!61401 lt!2185533 Nil!61401)))) (unfocusZipperList!517 (t!374746 (Cons!61401 lt!2185533 Nil!61401)))))))

(declare-fun b!5365977 () Bool)

(assert (=> b!5365977 (= e!3329959 Nil!61400)))

(assert (= (and d!1718947 c!934717) b!5365976))

(assert (= (and d!1718947 (not c!934717)) b!5365977))

(declare-fun m!6394052 () Bool)

(assert (=> d!1718947 m!6394052))

(declare-fun m!6394054 () Bool)

(assert (=> b!5365976 m!6394054))

(declare-fun m!6394056 () Bool)

(assert (=> b!5365976 m!6394056))

(assert (=> d!1718619 d!1718947))

(declare-fun b!5365978 () Bool)

(declare-fun res!2277259 () Bool)

(declare-fun e!3329962 () Bool)

(assert (=> b!5365978 (=> res!2277259 e!3329962)))

(assert (=> b!5365978 (= res!2277259 (not ((_ is Concat!23920) lt!2185575)))))

(declare-fun e!3329961 () Bool)

(assert (=> b!5365978 (= e!3329961 e!3329962)))

(declare-fun b!5365979 () Bool)

(declare-fun e!3329960 () Bool)

(declare-fun e!3329963 () Bool)

(assert (=> b!5365979 (= e!3329960 e!3329963)))

(declare-fun res!2277258 () Bool)

(assert (=> b!5365979 (= res!2277258 (not (nullable!5244 (reg!15404 lt!2185575))))))

(assert (=> b!5365979 (=> (not res!2277258) (not e!3329963))))

(declare-fun b!5365980 () Bool)

(declare-fun e!3329964 () Bool)

(declare-fun call!383999 () Bool)

(assert (=> b!5365980 (= e!3329964 call!383999)))

(declare-fun b!5365981 () Bool)

(declare-fun e!3329965 () Bool)

(assert (=> b!5365981 (= e!3329965 call!383999)))

(declare-fun c!934718 () Bool)

(declare-fun c!934719 () Bool)

(declare-fun bm!383992 () Bool)

(declare-fun call!383997 () Bool)

(assert (=> bm!383992 (= call!383997 (validRegex!6811 (ite c!934718 (reg!15404 lt!2185575) (ite c!934719 (regOne!30663 lt!2185575) (regOne!30662 lt!2185575)))))))

(declare-fun b!5365982 () Bool)

(declare-fun e!3329966 () Bool)

(assert (=> b!5365982 (= e!3329966 e!3329960)))

(assert (=> b!5365982 (= c!934718 ((_ is Star!15075) lt!2185575))))

(declare-fun b!5365983 () Bool)

(assert (=> b!5365983 (= e!3329963 call!383997)))

(declare-fun d!1718949 () Bool)

(declare-fun res!2277262 () Bool)

(assert (=> d!1718949 (=> res!2277262 e!3329966)))

(assert (=> d!1718949 (= res!2277262 ((_ is ElementMatch!15075) lt!2185575))))

(assert (=> d!1718949 (= (validRegex!6811 lt!2185575) e!3329966)))

(declare-fun bm!383993 () Bool)

(assert (=> bm!383993 (= call!383999 (validRegex!6811 (ite c!934719 (regTwo!30663 lt!2185575) (regTwo!30662 lt!2185575))))))

(declare-fun b!5365984 () Bool)

(declare-fun res!2277260 () Bool)

(assert (=> b!5365984 (=> (not res!2277260) (not e!3329964))))

(declare-fun call!383998 () Bool)

(assert (=> b!5365984 (= res!2277260 call!383998)))

(assert (=> b!5365984 (= e!3329961 e!3329964)))

(declare-fun bm!383994 () Bool)

(assert (=> bm!383994 (= call!383998 call!383997)))

(declare-fun b!5365985 () Bool)

(assert (=> b!5365985 (= e!3329962 e!3329965)))

(declare-fun res!2277261 () Bool)

(assert (=> b!5365985 (=> (not res!2277261) (not e!3329965))))

(assert (=> b!5365985 (= res!2277261 call!383998)))

(declare-fun b!5365986 () Bool)

(assert (=> b!5365986 (= e!3329960 e!3329961)))

(assert (=> b!5365986 (= c!934719 ((_ is Union!15075) lt!2185575))))

(assert (= (and d!1718949 (not res!2277262)) b!5365982))

(assert (= (and b!5365982 c!934718) b!5365979))

(assert (= (and b!5365982 (not c!934718)) b!5365986))

(assert (= (and b!5365979 res!2277258) b!5365983))

(assert (= (and b!5365986 c!934719) b!5365984))

(assert (= (and b!5365986 (not c!934719)) b!5365978))

(assert (= (and b!5365984 res!2277260) b!5365980))

(assert (= (and b!5365978 (not res!2277259)) b!5365985))

(assert (= (and b!5365985 res!2277261) b!5365981))

(assert (= (or b!5365980 b!5365981) bm!383993))

(assert (= (or b!5365984 b!5365985) bm!383994))

(assert (= (or b!5365983 bm!383994) bm!383992))

(declare-fun m!6394058 () Bool)

(assert (=> b!5365979 m!6394058))

(declare-fun m!6394060 () Bool)

(assert (=> bm!383992 m!6394060))

(declare-fun m!6394062 () Bool)

(assert (=> bm!383993 m!6394062))

(assert (=> d!1718497 d!1718949))

(declare-fun bs!1242689 () Bool)

(declare-fun d!1718951 () Bool)

(assert (= bs!1242689 (and d!1718951 d!1718939)))

(declare-fun lambda!276595 () Int)

(assert (=> bs!1242689 (= lambda!276595 lambda!276591)))

(declare-fun bs!1242690 () Bool)

(assert (= bs!1242690 (and d!1718951 d!1718947)))

(assert (=> bs!1242690 (= lambda!276595 lambda!276592)))

(declare-fun bs!1242691 () Bool)

(assert (= bs!1242691 (and d!1718951 d!1718813)))

(assert (=> bs!1242691 (= lambda!276595 lambda!276570)))

(declare-fun bs!1242692 () Bool)

(assert (= bs!1242692 (and d!1718951 d!1718609)))

(assert (=> bs!1242692 (= lambda!276595 lambda!276535)))

(declare-fun bs!1242693 () Bool)

(assert (= bs!1242693 (and d!1718951 d!1718621)))

(assert (=> bs!1242693 (= lambda!276595 lambda!276542)))

(declare-fun bs!1242694 () Bool)

(assert (= bs!1242694 (and d!1718951 d!1718613)))

(assert (=> bs!1242694 (= lambda!276595 lambda!276536)))

(declare-fun bs!1242695 () Bool)

(assert (= bs!1242695 (and d!1718951 d!1718771)))

(assert (=> bs!1242695 (= lambda!276595 lambda!276568)))

(declare-fun bs!1242696 () Bool)

(assert (= bs!1242696 (and d!1718951 d!1718875)))

(assert (=> bs!1242696 (= lambda!276595 lambda!276578)))

(declare-fun bs!1242697 () Bool)

(assert (= bs!1242697 (and d!1718951 d!1718809)))

(assert (=> bs!1242697 (= lambda!276595 lambda!276569)))

(declare-fun bs!1242698 () Bool)

(assert (= bs!1242698 (and d!1718951 d!1718623)))

(assert (=> bs!1242698 (= lambda!276595 lambda!276545)))

(declare-fun bs!1242699 () Bool)

(assert (= bs!1242699 (and d!1718951 d!1718615)))

(assert (=> bs!1242699 (= lambda!276595 lambda!276539)))

(declare-fun bs!1242700 () Bool)

(assert (= bs!1242700 (and d!1718951 b!5364523)))

(assert (=> bs!1242700 (= lambda!276595 lambda!276483)))

(declare-fun b!5365987 () Bool)

(declare-fun e!3329971 () Bool)

(assert (=> b!5365987 (= e!3329971 (isEmpty!33378 (t!374745 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401)))))))

(declare-fun b!5365988 () Bool)

(declare-fun e!3329969 () Regex!15075)

(declare-fun e!3329967 () Regex!15075)

(assert (=> b!5365988 (= e!3329969 e!3329967)))

(declare-fun c!934723 () Bool)

(assert (=> b!5365988 (= c!934723 ((_ is Cons!61400) (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))))))

(declare-fun b!5365989 () Bool)

(declare-fun e!3329968 () Bool)

(declare-fun e!3329972 () Bool)

(assert (=> b!5365989 (= e!3329968 e!3329972)))

(declare-fun c!934722 () Bool)

(assert (=> b!5365989 (= c!934722 (isEmpty!33378 (tail!10608 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401)))))))

(declare-fun b!5365990 () Bool)

(declare-fun lt!2185691 () Regex!15075)

(assert (=> b!5365990 (= e!3329972 (isUnion!371 lt!2185691))))

(declare-fun b!5365991 () Bool)

(declare-fun e!3329970 () Bool)

(assert (=> b!5365991 (= e!3329970 e!3329968)))

(declare-fun c!934724 () Bool)

(assert (=> b!5365991 (= c!934724 (isEmpty!33378 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))))))

(declare-fun b!5365992 () Bool)

(assert (=> b!5365992 (= e!3329968 (isEmptyLang!939 lt!2185691))))

(declare-fun b!5365993 () Bool)

(assert (=> b!5365993 (= e!3329969 (h!67848 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))))))

(declare-fun b!5365994 () Bool)

(assert (=> b!5365994 (= e!3329967 (Union!15075 (h!67848 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))) (generalisedUnion!1004 (t!374745 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))))))))

(assert (=> d!1718951 e!3329970))

(declare-fun res!2277264 () Bool)

(assert (=> d!1718951 (=> (not res!2277264) (not e!3329970))))

(assert (=> d!1718951 (= res!2277264 (validRegex!6811 lt!2185691))))

(assert (=> d!1718951 (= lt!2185691 e!3329969)))

(declare-fun c!934725 () Bool)

(assert (=> d!1718951 (= c!934725 e!3329971)))

(declare-fun res!2277263 () Bool)

(assert (=> d!1718951 (=> (not res!2277263) (not e!3329971))))

(assert (=> d!1718951 (= res!2277263 ((_ is Cons!61400) (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))))))

(assert (=> d!1718951 (forall!14483 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401)) lambda!276595)))

(assert (=> d!1718951 (= (generalisedUnion!1004 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401))) lt!2185691)))

(declare-fun b!5365995 () Bool)

(assert (=> b!5365995 (= e!3329967 EmptyLang!15075)))

(declare-fun b!5365996 () Bool)

(assert (=> b!5365996 (= e!3329972 (= lt!2185691 (head!11511 (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401)))))))

(assert (= (and d!1718951 res!2277263) b!5365987))

(assert (= (and d!1718951 c!934725) b!5365993))

(assert (= (and d!1718951 (not c!934725)) b!5365988))

(assert (= (and b!5365988 c!934723) b!5365994))

(assert (= (and b!5365988 (not c!934723)) b!5365995))

(assert (= (and d!1718951 res!2277264) b!5365991))

(assert (= (and b!5365991 c!934724) b!5365992))

(assert (= (and b!5365991 (not c!934724)) b!5365989))

(assert (= (and b!5365989 c!934722) b!5365996))

(assert (= (and b!5365989 (not c!934722)) b!5365990))

(declare-fun m!6394066 () Bool)

(assert (=> b!5365990 m!6394066))

(declare-fun m!6394068 () Bool)

(assert (=> b!5365987 m!6394068))

(declare-fun m!6394070 () Bool)

(assert (=> b!5365994 m!6394070))

(assert (=> b!5365991 m!6393034))

(declare-fun m!6394072 () Bool)

(assert (=> b!5365991 m!6394072))

(declare-fun m!6394074 () Bool)

(assert (=> b!5365992 m!6394074))

(declare-fun m!6394076 () Bool)

(assert (=> d!1718951 m!6394076))

(assert (=> d!1718951 m!6393034))

(declare-fun m!6394078 () Bool)

(assert (=> d!1718951 m!6394078))

(assert (=> b!5365996 m!6393034))

(declare-fun m!6394080 () Bool)

(assert (=> b!5365996 m!6394080))

(assert (=> b!5365989 m!6393034))

(declare-fun m!6394082 () Bool)

(assert (=> b!5365989 m!6394082))

(assert (=> b!5365989 m!6394082))

(declare-fun m!6394084 () Bool)

(assert (=> b!5365989 m!6394084))

(assert (=> d!1718497 d!1718951))

(declare-fun bs!1242702 () Bool)

(declare-fun d!1718955 () Bool)

(assert (= bs!1242702 (and d!1718955 d!1718939)))

(declare-fun lambda!276597 () Int)

(assert (=> bs!1242702 (= lambda!276597 lambda!276591)))

(declare-fun bs!1242703 () Bool)

(assert (= bs!1242703 (and d!1718955 d!1718947)))

(assert (=> bs!1242703 (= lambda!276597 lambda!276592)))

(declare-fun bs!1242704 () Bool)

(assert (= bs!1242704 (and d!1718955 d!1718609)))

(assert (=> bs!1242704 (= lambda!276597 lambda!276535)))

(declare-fun bs!1242705 () Bool)

(assert (= bs!1242705 (and d!1718955 d!1718621)))

(assert (=> bs!1242705 (= lambda!276597 lambda!276542)))

(declare-fun bs!1242706 () Bool)

(assert (= bs!1242706 (and d!1718955 d!1718613)))

(assert (=> bs!1242706 (= lambda!276597 lambda!276536)))

(declare-fun bs!1242707 () Bool)

(assert (= bs!1242707 (and d!1718955 d!1718771)))

(assert (=> bs!1242707 (= lambda!276597 lambda!276568)))

(declare-fun bs!1242708 () Bool)

(assert (= bs!1242708 (and d!1718955 d!1718875)))

(assert (=> bs!1242708 (= lambda!276597 lambda!276578)))

(declare-fun bs!1242709 () Bool)

(assert (= bs!1242709 (and d!1718955 d!1718809)))

(assert (=> bs!1242709 (= lambda!276597 lambda!276569)))

(declare-fun bs!1242710 () Bool)

(assert (= bs!1242710 (and d!1718955 d!1718623)))

(assert (=> bs!1242710 (= lambda!276597 lambda!276545)))

(declare-fun bs!1242711 () Bool)

(assert (= bs!1242711 (and d!1718955 d!1718951)))

(assert (=> bs!1242711 (= lambda!276597 lambda!276595)))

(declare-fun bs!1242712 () Bool)

(assert (= bs!1242712 (and d!1718955 d!1718813)))

(assert (=> bs!1242712 (= lambda!276597 lambda!276570)))

(declare-fun bs!1242713 () Bool)

(assert (= bs!1242713 (and d!1718955 d!1718615)))

(assert (=> bs!1242713 (= lambda!276597 lambda!276539)))

(declare-fun bs!1242714 () Bool)

(assert (= bs!1242714 (and d!1718955 b!5364523)))

(assert (=> bs!1242714 (= lambda!276597 lambda!276483)))

(declare-fun lt!2185692 () List!61524)

(assert (=> d!1718955 (forall!14483 lt!2185692 lambda!276597)))

(declare-fun e!3329980 () List!61524)

(assert (=> d!1718955 (= lt!2185692 e!3329980)))

(declare-fun c!934730 () Bool)

(assert (=> d!1718955 (= c!934730 ((_ is Cons!61401) (Cons!61401 lt!2185523 Nil!61401)))))

(assert (=> d!1718955 (= (unfocusZipperList!517 (Cons!61401 lt!2185523 Nil!61401)) lt!2185692)))

(declare-fun b!5366008 () Bool)

(assert (=> b!5366008 (= e!3329980 (Cons!61400 (generalisedConcat!744 (exprs!4959 (h!67849 (Cons!61401 lt!2185523 Nil!61401)))) (unfocusZipperList!517 (t!374746 (Cons!61401 lt!2185523 Nil!61401)))))))

(declare-fun b!5366009 () Bool)

(assert (=> b!5366009 (= e!3329980 Nil!61400)))

(assert (= (and d!1718955 c!934730) b!5366008))

(assert (= (and d!1718955 (not c!934730)) b!5366009))

(declare-fun m!6394086 () Bool)

(assert (=> d!1718955 m!6394086))

(declare-fun m!6394088 () Bool)

(assert (=> b!5366008 m!6394088))

(declare-fun m!6394090 () Bool)

(assert (=> b!5366008 m!6394090))

(assert (=> d!1718497 d!1718955))

(declare-fun d!1718957 () Bool)

(declare-fun res!2277272 () Bool)

(declare-fun e!3329985 () Bool)

(assert (=> d!1718957 (=> res!2277272 e!3329985)))

(assert (=> d!1718957 (= res!2277272 ((_ is Nil!61401) lt!2185654))))

(assert (=> d!1718957 (= (noDuplicate!1350 lt!2185654) e!3329985)))

(declare-fun b!5366014 () Bool)

(declare-fun e!3329986 () Bool)

(assert (=> b!5366014 (= e!3329985 e!3329986)))

(declare-fun res!2277273 () Bool)

(assert (=> b!5366014 (=> (not res!2277273) (not e!3329986))))

(declare-fun contains!19720 (List!61525 Context!8918) Bool)

(assert (=> b!5366014 (= res!2277273 (not (contains!19720 (t!374746 lt!2185654) (h!67849 lt!2185654))))))

(declare-fun b!5366015 () Bool)

(assert (=> b!5366015 (= e!3329986 (noDuplicate!1350 (t!374746 lt!2185654)))))

(assert (= (and d!1718957 (not res!2277272)) b!5366014))

(assert (= (and b!5366014 res!2277273) b!5366015))

(declare-fun m!6394092 () Bool)

(assert (=> b!5366014 m!6394092))

(declare-fun m!6394094 () Bool)

(assert (=> b!5366015 m!6394094))

(assert (=> d!1718653 d!1718957))

(declare-fun d!1718959 () Bool)

(declare-fun e!3329995 () Bool)

(assert (=> d!1718959 e!3329995))

(declare-fun res!2277279 () Bool)

(assert (=> d!1718959 (=> (not res!2277279) (not e!3329995))))

(declare-fun res!2277278 () List!61525)

(assert (=> d!1718959 (= res!2277279 (noDuplicate!1350 res!2277278))))

(declare-fun e!3329993 () Bool)

(assert (=> d!1718959 e!3329993))

(assert (=> d!1718959 (= (choose!40297 z!1189) res!2277278)))

(declare-fun b!5366023 () Bool)

(declare-fun e!3329994 () Bool)

(declare-fun tp!1489183 () Bool)

(assert (=> b!5366023 (= e!3329994 tp!1489183)))

(declare-fun tp!1489182 () Bool)

(declare-fun b!5366022 () Bool)

(assert (=> b!5366022 (= e!3329993 (and (inv!80934 (h!67849 res!2277278)) e!3329994 tp!1489182))))

(declare-fun b!5366024 () Bool)

(assert (=> b!5366024 (= e!3329995 (= (content!10968 res!2277278) z!1189))))

(assert (= b!5366022 b!5366023))

(assert (= (and d!1718959 ((_ is Cons!61401) res!2277278)) b!5366022))

(assert (= (and d!1718959 res!2277279) b!5366024))

(declare-fun m!6394096 () Bool)

(assert (=> d!1718959 m!6394096))

(declare-fun m!6394098 () Bool)

(assert (=> b!5366022 m!6394098))

(declare-fun m!6394100 () Bool)

(assert (=> b!5366024 m!6394100))

(assert (=> d!1718653 d!1718959))

(declare-fun bs!1242728 () Bool)

(declare-fun d!1718961 () Bool)

(assert (= bs!1242728 (and d!1718961 d!1718737)))

(declare-fun lambda!276600 () Int)

(assert (=> bs!1242728 (= lambda!276600 lambda!276560)))

(declare-fun bs!1242729 () Bool)

(assert (= bs!1242729 (and d!1718961 d!1718739)))

(assert (=> bs!1242729 (= lambda!276600 lambda!276561)))

(assert (=> d!1718961 (= (nullableZipper!1396 lt!2185525) (exists!2020 lt!2185525 lambda!276600))))

(declare-fun bs!1242731 () Bool)

(assert (= bs!1242731 d!1718961))

(declare-fun m!6394102 () Bool)

(assert (=> bs!1242731 m!6394102))

(assert (=> b!5365279 d!1718961))

(declare-fun d!1718963 () Bool)

(assert (=> d!1718963 (= (isEmpty!33378 (exprs!4959 (h!67849 zl!343))) ((_ is Nil!61400) (exprs!4959 (h!67849 zl!343))))))

(assert (=> b!5365235 d!1718963))

(assert (=> b!5365183 d!1718589))

(declare-fun b!5366025 () Bool)

(declare-fun res!2277281 () Bool)

(declare-fun e!3329998 () Bool)

(assert (=> b!5366025 (=> res!2277281 e!3329998)))

(assert (=> b!5366025 (= res!2277281 (not ((_ is Concat!23920) (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun e!3329997 () Bool)

(assert (=> b!5366025 (= e!3329997 e!3329998)))

(declare-fun b!5366026 () Bool)

(declare-fun e!3329996 () Bool)

(declare-fun e!3329999 () Bool)

(assert (=> b!5366026 (= e!3329996 e!3329999)))

(declare-fun res!2277280 () Bool)

(assert (=> b!5366026 (= res!2277280 (not (nullable!5244 (reg!15404 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))))))))

(assert (=> b!5366026 (=> (not res!2277280) (not e!3329999))))

(declare-fun b!5366027 () Bool)

(declare-fun e!3330000 () Bool)

(declare-fun call!384004 () Bool)

(assert (=> b!5366027 (= e!3330000 call!384004)))

(declare-fun b!5366028 () Bool)

(declare-fun e!3330001 () Bool)

(assert (=> b!5366028 (= e!3330001 call!384004)))

(declare-fun bm!383997 () Bool)

(declare-fun c!934731 () Bool)

(declare-fun c!934732 () Bool)

(declare-fun call!384002 () Bool)

(assert (=> bm!383997 (= call!384002 (validRegex!6811 (ite c!934731 (reg!15404 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))) (ite c!934732 (regOne!30663 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))) (regOne!30662 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun b!5366029 () Bool)

(declare-fun e!3330002 () Bool)

(assert (=> b!5366029 (= e!3330002 e!3329996)))

(assert (=> b!5366029 (= c!934731 ((_ is Star!15075) (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun b!5366030 () Bool)

(assert (=> b!5366030 (= e!3329999 call!384002)))

(declare-fun d!1718965 () Bool)

(declare-fun res!2277284 () Bool)

(assert (=> d!1718965 (=> res!2277284 e!3330002)))

(assert (=> d!1718965 (= res!2277284 ((_ is ElementMatch!15075) (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(assert (=> d!1718965 (= (validRegex!6811 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))) e!3330002)))

(declare-fun bm!383998 () Bool)

(assert (=> bm!383998 (= call!384004 (validRegex!6811 (ite c!934732 (regTwo!30663 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))) (regTwo!30662 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))))))))

(declare-fun b!5366031 () Bool)

(declare-fun res!2277282 () Bool)

(assert (=> b!5366031 (=> (not res!2277282) (not e!3330000))))

(declare-fun call!384003 () Bool)

(assert (=> b!5366031 (= res!2277282 call!384003)))

(assert (=> b!5366031 (= e!3329997 e!3330000)))

(declare-fun bm!383999 () Bool)

(assert (=> bm!383999 (= call!384003 call!384002)))

(declare-fun b!5366032 () Bool)

(assert (=> b!5366032 (= e!3329998 e!3330001)))

(declare-fun res!2277283 () Bool)

(assert (=> b!5366032 (=> (not res!2277283) (not e!3330001))))

(assert (=> b!5366032 (= res!2277283 call!384003)))

(declare-fun b!5366033 () Bool)

(assert (=> b!5366033 (= e!3329996 e!3329997)))

(assert (=> b!5366033 (= c!934732 ((_ is Union!15075) (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(assert (= (and d!1718965 (not res!2277284)) b!5366029))

(assert (= (and b!5366029 c!934731) b!5366026))

(assert (= (and b!5366029 (not c!934731)) b!5366033))

(assert (= (and b!5366026 res!2277280) b!5366030))

(assert (= (and b!5366033 c!934732) b!5366031))

(assert (= (and b!5366033 (not c!934732)) b!5366025))

(assert (= (and b!5366031 res!2277282) b!5366027))

(assert (= (and b!5366025 (not res!2277281)) b!5366032))

(assert (= (and b!5366032 res!2277283) b!5366028))

(assert (= (or b!5366027 b!5366028) bm!383998))

(assert (= (or b!5366031 b!5366032) bm!383999))

(assert (= (or b!5366030 bm!383999) bm!383997))

(declare-fun m!6394104 () Bool)

(assert (=> b!5366026 m!6394104))

(declare-fun m!6394106 () Bool)

(assert (=> bm!383997 m!6394106))

(declare-fun m!6394108 () Bool)

(assert (=> bm!383998 m!6394108))

(assert (=> bs!1242501 d!1718965))

(assert (=> b!5365201 d!1718867))

(declare-fun bs!1242739 () Bool)

(declare-fun b!5366035 () Bool)

(assert (= bs!1242739 (and b!5366035 d!1718903)))

(declare-fun lambda!276601 () Int)

(assert (=> bs!1242739 (not (= lambda!276601 lambda!276580))))

(declare-fun bs!1242740 () Bool)

(assert (= bs!1242740 (and b!5366035 b!5365334)))

(assert (=> bs!1242740 (not (= lambda!276601 lambda!276551))))

(declare-fun bs!1242741 () Bool)

(assert (= bs!1242741 (and b!5366035 d!1718511)))

(assert (=> bs!1242741 (not (= lambda!276601 lambda!276517))))

(declare-fun bs!1242743 () Bool)

(assert (= bs!1242743 (and b!5366035 b!5365370)))

(assert (=> bs!1242743 (= (and (= (reg!15404 (regTwo!30663 r!7292)) (reg!15404 lt!2185527)) (= (regTwo!30663 r!7292) lt!2185527)) (= lambda!276601 lambda!276552))))

(declare-fun bs!1242745 () Bool)

(assert (= bs!1242745 (and b!5366035 b!5364506)))

(assert (=> bs!1242745 (not (= lambda!276601 lambda!276478))))

(assert (=> bs!1242741 (not (= lambda!276601 lambda!276516))))

(declare-fun bs!1242746 () Bool)

(assert (= bs!1242746 (and b!5366035 d!1718569)))

(assert (=> bs!1242746 (not (= lambda!276601 lambda!276531))))

(declare-fun bs!1242747 () Bool)

(assert (= bs!1242747 (and b!5366035 b!5365923)))

(assert (=> bs!1242747 (= (and (= (reg!15404 (regTwo!30663 r!7292)) (reg!15404 (regTwo!30663 lt!2185527))) (= (regTwo!30663 r!7292) (regTwo!30663 lt!2185527))) (= lambda!276601 lambda!276586))))

(assert (=> bs!1242746 (not (= lambda!276601 lambda!276530))))

(declare-fun bs!1242749 () Bool)

(assert (= bs!1242749 (and b!5366035 b!5364528)))

(assert (=> bs!1242749 (not (= lambda!276601 lambda!276482))))

(declare-fun bs!1242750 () Bool)

(assert (= bs!1242750 (and b!5366035 b!5365331)))

(assert (=> bs!1242750 (= (and (= (reg!15404 (regTwo!30663 r!7292)) (reg!15404 r!7292)) (= (regTwo!30663 r!7292) r!7292)) (= lambda!276601 lambda!276550))))

(declare-fun bs!1242751 () Bool)

(assert (= bs!1242751 (and b!5366035 b!5365926)))

(assert (=> bs!1242751 (not (= lambda!276601 lambda!276587))))

(declare-fun bs!1242752 () Bool)

(assert (= bs!1242752 (and b!5366035 d!1718767)))

(assert (=> bs!1242752 (not (= lambda!276601 lambda!276567))))

(assert (=> bs!1242752 (not (= lambda!276601 lambda!276566))))

(declare-fun bs!1242754 () Bool)

(assert (= bs!1242754 (and b!5366035 d!1718819)))

(assert (=> bs!1242754 (not (= lambda!276601 lambda!276573))))

(declare-fun bs!1242755 () Bool)

(assert (= bs!1242755 (and b!5366035 b!5365373)))

(assert (=> bs!1242755 (not (= lambda!276601 lambda!276553))))

(assert (=> bs!1242749 (not (= lambda!276601 lambda!276481))))

(declare-fun bs!1242756 () Bool)

(assert (= bs!1242756 (and b!5366035 d!1718531)))

(assert (=> bs!1242756 (not (= lambda!276601 lambda!276523))))

(assert (=> bs!1242745 (not (= lambda!276601 lambda!276479))))

(declare-fun bs!1242757 () Bool)

(assert (= bs!1242757 (and b!5366035 d!1718587)))

(assert (=> bs!1242757 (not (= lambda!276601 lambda!276532))))

(assert (=> b!5366035 true))

(assert (=> b!5366035 true))

(declare-fun bs!1242758 () Bool)

(declare-fun b!5366038 () Bool)

(assert (= bs!1242758 (and b!5366038 d!1718903)))

(declare-fun lambda!276602 () Int)

(assert (=> bs!1242758 (not (= lambda!276602 lambda!276580))))

(declare-fun bs!1242759 () Bool)

(assert (= bs!1242759 (and b!5366038 b!5365334)))

(assert (=> bs!1242759 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) (regOne!30662 r!7292)) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276602 lambda!276551))))

(declare-fun bs!1242760 () Bool)

(assert (= bs!1242760 (and b!5366038 d!1718511)))

(assert (=> bs!1242760 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) lt!2185531) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276602 lambda!276517))))

(declare-fun bs!1242761 () Bool)

(assert (= bs!1242761 (and b!5366038 b!5365370)))

(assert (=> bs!1242761 (not (= lambda!276602 lambda!276552))))

(declare-fun bs!1242762 () Bool)

(assert (= bs!1242762 (and b!5366038 b!5364506)))

(assert (=> bs!1242762 (not (= lambda!276602 lambda!276478))))

(assert (=> bs!1242760 (not (= lambda!276602 lambda!276516))))

(declare-fun bs!1242763 () Bool)

(assert (= bs!1242763 (and b!5366038 d!1718569)))

(assert (=> bs!1242763 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) (regOne!30662 r!7292)) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276602 lambda!276531))))

(declare-fun bs!1242764 () Bool)

(assert (= bs!1242764 (and b!5366038 b!5365923)))

(assert (=> bs!1242764 (not (= lambda!276602 lambda!276586))))

(assert (=> bs!1242763 (not (= lambda!276602 lambda!276530))))

(declare-fun bs!1242765 () Bool)

(assert (= bs!1242765 (and b!5366038 b!5364528)))

(assert (=> bs!1242765 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) lt!2185531) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276602 lambda!276482))))

(declare-fun bs!1242766 () Bool)

(assert (= bs!1242766 (and b!5366038 b!5365331)))

(assert (=> bs!1242766 (not (= lambda!276602 lambda!276550))))

(declare-fun bs!1242767 () Bool)

(assert (= bs!1242767 (and b!5366038 b!5365926)))

(assert (=> bs!1242767 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) (regOne!30662 (regTwo!30663 lt!2185527))) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 (regTwo!30663 lt!2185527)))) (= lambda!276602 lambda!276587))))

(declare-fun bs!1242768 () Bool)

(assert (= bs!1242768 (and b!5366038 d!1718767)))

(assert (=> bs!1242768 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) lt!2185531) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276602 lambda!276567))))

(assert (=> bs!1242768 (not (= lambda!276602 lambda!276566))))

(declare-fun bs!1242769 () Bool)

(assert (= bs!1242769 (and b!5366038 d!1718819)))

(assert (=> bs!1242769 (not (= lambda!276602 lambda!276573))))

(declare-fun bs!1242770 () Bool)

(assert (= bs!1242770 (and b!5366038 b!5365373)))

(assert (=> bs!1242770 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) (regOne!30662 lt!2185527)) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 lt!2185527))) (= lambda!276602 lambda!276553))))

(declare-fun bs!1242771 () Bool)

(assert (= bs!1242771 (and b!5366038 b!5366035)))

(assert (=> bs!1242771 (not (= lambda!276602 lambda!276601))))

(assert (=> bs!1242765 (not (= lambda!276602 lambda!276481))))

(declare-fun bs!1242772 () Bool)

(assert (= bs!1242772 (and b!5366038 d!1718531)))

(assert (=> bs!1242772 (not (= lambda!276602 lambda!276523))))

(assert (=> bs!1242762 (= (and (= (regOne!30662 (regTwo!30663 r!7292)) (regOne!30662 r!7292)) (= (regTwo!30662 (regTwo!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276602 lambda!276479))))

(declare-fun bs!1242773 () Bool)

(assert (= bs!1242773 (and b!5366038 d!1718587)))

(assert (=> bs!1242773 (not (= lambda!276602 lambda!276532))))

(assert (=> b!5366038 true))

(assert (=> b!5366038 true))

(declare-fun b!5366034 () Bool)

(declare-fun e!3330008 () Bool)

(declare-fun e!3330009 () Bool)

(assert (=> b!5366034 (= e!3330008 e!3330009)))

(declare-fun res!2277286 () Bool)

(assert (=> b!5366034 (= res!2277286 (matchRSpec!2178 (regOne!30663 (regTwo!30663 r!7292)) s!2326))))

(assert (=> b!5366034 (=> res!2277286 e!3330009)))

(declare-fun e!3330004 () Bool)

(declare-fun call!384005 () Bool)

(assert (=> b!5366035 (= e!3330004 call!384005)))

(declare-fun b!5366036 () Bool)

(declare-fun e!3330003 () Bool)

(declare-fun call!384006 () Bool)

(assert (=> b!5366036 (= e!3330003 call!384006)))

(declare-fun b!5366037 () Bool)

(declare-fun c!934735 () Bool)

(assert (=> b!5366037 (= c!934735 ((_ is ElementMatch!15075) (regTwo!30663 r!7292)))))

(declare-fun e!3330007 () Bool)

(declare-fun e!3330006 () Bool)

(assert (=> b!5366037 (= e!3330007 e!3330006)))

(declare-fun e!3330005 () Bool)

(assert (=> b!5366038 (= e!3330005 call!384005)))

(declare-fun b!5366039 () Bool)

(assert (=> b!5366039 (= e!3330009 (matchRSpec!2178 (regTwo!30663 (regTwo!30663 r!7292)) s!2326))))

(declare-fun b!5366040 () Bool)

(declare-fun c!934734 () Bool)

(assert (=> b!5366040 (= c!934734 ((_ is Union!15075) (regTwo!30663 r!7292)))))

(assert (=> b!5366040 (= e!3330006 e!3330008)))

(declare-fun b!5366041 () Bool)

(assert (=> b!5366041 (= e!3330006 (= s!2326 (Cons!61402 (c!934311 (regTwo!30663 r!7292)) Nil!61402)))))

(declare-fun b!5366042 () Bool)

(assert (=> b!5366042 (= e!3330003 e!3330007)))

(declare-fun res!2277287 () Bool)

(assert (=> b!5366042 (= res!2277287 (not ((_ is EmptyLang!15075) (regTwo!30663 r!7292))))))

(assert (=> b!5366042 (=> (not res!2277287) (not e!3330007))))

(declare-fun b!5366043 () Bool)

(assert (=> b!5366043 (= e!3330008 e!3330005)))

(declare-fun c!934736 () Bool)

(assert (=> b!5366043 (= c!934736 ((_ is Star!15075) (regTwo!30663 r!7292)))))

(declare-fun b!5366044 () Bool)

(declare-fun res!2277285 () Bool)

(assert (=> b!5366044 (=> res!2277285 e!3330004)))

(assert (=> b!5366044 (= res!2277285 call!384006)))

(assert (=> b!5366044 (= e!3330005 e!3330004)))

(declare-fun bm!384001 () Bool)

(assert (=> bm!384001 (= call!384005 (Exists!2256 (ite c!934736 lambda!276601 lambda!276602)))))

(declare-fun bm!384000 () Bool)

(assert (=> bm!384000 (= call!384006 (isEmpty!33377 s!2326))))

(declare-fun d!1718967 () Bool)

(declare-fun c!934733 () Bool)

(assert (=> d!1718967 (= c!934733 ((_ is EmptyExpr!15075) (regTwo!30663 r!7292)))))

(assert (=> d!1718967 (= (matchRSpec!2178 (regTwo!30663 r!7292) s!2326) e!3330003)))

(assert (= (and d!1718967 c!934733) b!5366036))

(assert (= (and d!1718967 (not c!934733)) b!5366042))

(assert (= (and b!5366042 res!2277287) b!5366037))

(assert (= (and b!5366037 c!934735) b!5366041))

(assert (= (and b!5366037 (not c!934735)) b!5366040))

(assert (= (and b!5366040 c!934734) b!5366034))

(assert (= (and b!5366040 (not c!934734)) b!5366043))

(assert (= (and b!5366034 (not res!2277286)) b!5366039))

(assert (= (and b!5366043 c!934736) b!5366044))

(assert (= (and b!5366043 (not c!934736)) b!5366038))

(assert (= (and b!5366044 (not res!2277285)) b!5366035))

(assert (= (or b!5366035 b!5366038) bm!384001))

(assert (= (or b!5366036 b!5366044) bm!384000))

(declare-fun m!6394120 () Bool)

(assert (=> b!5366034 m!6394120))

(declare-fun m!6394122 () Bool)

(assert (=> b!5366039 m!6394122))

(declare-fun m!6394124 () Bool)

(assert (=> bm!384001 m!6394124))

(assert (=> bm!384000 m!6393408))

(assert (=> b!5365335 d!1718967))

(declare-fun b!5366051 () Bool)

(declare-fun e!3330017 () Bool)

(assert (=> b!5366051 (= e!3330017 (= (head!11510 (_2!35577 (get!21121 lt!2185626))) (c!934311 (regTwo!30662 r!7292))))))

(declare-fun b!5366052 () Bool)

(declare-fun res!2277294 () Bool)

(assert (=> b!5366052 (=> (not res!2277294) (not e!3330017))))

(declare-fun call!384007 () Bool)

(assert (=> b!5366052 (= res!2277294 (not call!384007))))

(declare-fun b!5366053 () Bool)

(declare-fun res!2277297 () Bool)

(declare-fun e!3330014 () Bool)

(assert (=> b!5366053 (=> res!2277297 e!3330014)))

(assert (=> b!5366053 (= res!2277297 e!3330017)))

(declare-fun res!2277291 () Bool)

(assert (=> b!5366053 (=> (not res!2277291) (not e!3330017))))

(declare-fun lt!2185693 () Bool)

(assert (=> b!5366053 (= res!2277291 lt!2185693)))

(declare-fun b!5366054 () Bool)

(declare-fun e!3330018 () Bool)

(declare-fun e!3330015 () Bool)

(assert (=> b!5366054 (= e!3330018 e!3330015)))

(declare-fun c!934741 () Bool)

(assert (=> b!5366054 (= c!934741 ((_ is EmptyLang!15075) (regTwo!30662 r!7292)))))

(declare-fun b!5366055 () Bool)

(declare-fun e!3330019 () Bool)

(declare-fun e!3330016 () Bool)

(assert (=> b!5366055 (= e!3330019 e!3330016)))

(declare-fun res!2277290 () Bool)

(assert (=> b!5366055 (=> res!2277290 e!3330016)))

(assert (=> b!5366055 (= res!2277290 call!384007)))

(declare-fun b!5366056 () Bool)

(assert (=> b!5366056 (= e!3330016 (not (= (head!11510 (_2!35577 (get!21121 lt!2185626))) (c!934311 (regTwo!30662 r!7292)))))))

(declare-fun b!5366057 () Bool)

(declare-fun e!3330020 () Bool)

(assert (=> b!5366057 (= e!3330020 (matchR!7260 (derivativeStep!4217 (regTwo!30662 r!7292) (head!11510 (_2!35577 (get!21121 lt!2185626)))) (tail!10607 (_2!35577 (get!21121 lt!2185626)))))))

(declare-fun b!5366059 () Bool)

(declare-fun res!2277295 () Bool)

(assert (=> b!5366059 (=> res!2277295 e!3330016)))

(assert (=> b!5366059 (= res!2277295 (not (isEmpty!33377 (tail!10607 (_2!35577 (get!21121 lt!2185626))))))))

(declare-fun b!5366060 () Bool)

(assert (=> b!5366060 (= e!3330014 e!3330019)))

(declare-fun res!2277296 () Bool)

(assert (=> b!5366060 (=> (not res!2277296) (not e!3330019))))

(assert (=> b!5366060 (= res!2277296 (not lt!2185693))))

(declare-fun bm!384002 () Bool)

(assert (=> bm!384002 (= call!384007 (isEmpty!33377 (_2!35577 (get!21121 lt!2185626))))))

(declare-fun b!5366061 () Bool)

(assert (=> b!5366061 (= e!3330015 (not lt!2185693))))

(declare-fun b!5366062 () Bool)

(assert (=> b!5366062 (= e!3330018 (= lt!2185693 call!384007))))

(declare-fun b!5366063 () Bool)

(declare-fun res!2277292 () Bool)

(assert (=> b!5366063 (=> res!2277292 e!3330014)))

(assert (=> b!5366063 (= res!2277292 (not ((_ is ElementMatch!15075) (regTwo!30662 r!7292))))))

(assert (=> b!5366063 (= e!3330015 e!3330014)))

(declare-fun b!5366064 () Bool)

(declare-fun res!2277293 () Bool)

(assert (=> b!5366064 (=> (not res!2277293) (not e!3330017))))

(assert (=> b!5366064 (= res!2277293 (isEmpty!33377 (tail!10607 (_2!35577 (get!21121 lt!2185626)))))))

(declare-fun d!1718973 () Bool)

(assert (=> d!1718973 e!3330018))

(declare-fun c!934740 () Bool)

(assert (=> d!1718973 (= c!934740 ((_ is EmptyExpr!15075) (regTwo!30662 r!7292)))))

(assert (=> d!1718973 (= lt!2185693 e!3330020)))

(declare-fun c!934739 () Bool)

(assert (=> d!1718973 (= c!934739 (isEmpty!33377 (_2!35577 (get!21121 lt!2185626))))))

(assert (=> d!1718973 (validRegex!6811 (regTwo!30662 r!7292))))

(assert (=> d!1718973 (= (matchR!7260 (regTwo!30662 r!7292) (_2!35577 (get!21121 lt!2185626))) lt!2185693)))

(declare-fun b!5366058 () Bool)

(assert (=> b!5366058 (= e!3330020 (nullable!5244 (regTwo!30662 r!7292)))))

(assert (= (and d!1718973 c!934739) b!5366058))

(assert (= (and d!1718973 (not c!934739)) b!5366057))

(assert (= (and d!1718973 c!934740) b!5366062))

(assert (= (and d!1718973 (not c!934740)) b!5366054))

(assert (= (and b!5366054 c!934741) b!5366061))

(assert (= (and b!5366054 (not c!934741)) b!5366063))

(assert (= (and b!5366063 (not res!2277292)) b!5366053))

(assert (= (and b!5366053 res!2277291) b!5366052))

(assert (= (and b!5366052 res!2277294) b!5366064))

(assert (= (and b!5366064 res!2277293) b!5366051))

(assert (= (and b!5366053 (not res!2277297)) b!5366060))

(assert (= (and b!5366060 res!2277296) b!5366055))

(assert (= (and b!5366055 (not res!2277290)) b!5366059))

(assert (= (and b!5366059 (not res!2277295)) b!5366056))

(assert (= (or b!5366062 b!5366052 b!5366055) bm!384002))

(declare-fun m!6394126 () Bool)

(assert (=> bm!384002 m!6394126))

(assert (=> b!5366058 m!6393320))

(declare-fun m!6394128 () Bool)

(assert (=> b!5366064 m!6394128))

(assert (=> b!5366064 m!6394128))

(declare-fun m!6394130 () Bool)

(assert (=> b!5366064 m!6394130))

(declare-fun m!6394132 () Bool)

(assert (=> b!5366057 m!6394132))

(assert (=> b!5366057 m!6394132))

(declare-fun m!6394134 () Bool)

(assert (=> b!5366057 m!6394134))

(assert (=> b!5366057 m!6394128))

(assert (=> b!5366057 m!6394134))

(assert (=> b!5366057 m!6394128))

(declare-fun m!6394136 () Bool)

(assert (=> b!5366057 m!6394136))

(assert (=> b!5366056 m!6394132))

(assert (=> b!5366059 m!6394128))

(assert (=> b!5366059 m!6394128))

(assert (=> b!5366059 m!6394130))

(assert (=> d!1718973 m!6394126))

(assert (=> d!1718973 m!6393332))

(assert (=> b!5366051 m!6394132))

(assert (=> b!5365106 d!1718973))

(assert (=> b!5365106 d!1718873))

(declare-fun b!5366072 () Bool)

(declare-fun e!3330022 () Bool)

(declare-fun lt!2185694 () List!61526)

(assert (=> b!5366072 (= e!3330022 (or (not (= (_2!35577 lt!2185500) Nil!61402)) (= lt!2185694 (t!374747 (_1!35577 lt!2185500)))))))

(declare-fun d!1718975 () Bool)

(assert (=> d!1718975 e!3330022))

(declare-fun res!2277299 () Bool)

(assert (=> d!1718975 (=> (not res!2277299) (not e!3330022))))

(assert (=> d!1718975 (= res!2277299 (= (content!10965 lt!2185694) ((_ map or) (content!10965 (t!374747 (_1!35577 lt!2185500))) (content!10965 (_2!35577 lt!2185500)))))))

(declare-fun e!3330023 () List!61526)

(assert (=> d!1718975 (= lt!2185694 e!3330023)))

(declare-fun c!934744 () Bool)

(assert (=> d!1718975 (= c!934744 ((_ is Nil!61402) (t!374747 (_1!35577 lt!2185500))))))

(assert (=> d!1718975 (= (++!13378 (t!374747 (_1!35577 lt!2185500)) (_2!35577 lt!2185500)) lt!2185694)))

(declare-fun b!5366069 () Bool)

(assert (=> b!5366069 (= e!3330023 (_2!35577 lt!2185500))))

(declare-fun b!5366070 () Bool)

(assert (=> b!5366070 (= e!3330023 (Cons!61402 (h!67850 (t!374747 (_1!35577 lt!2185500))) (++!13378 (t!374747 (t!374747 (_1!35577 lt!2185500))) (_2!35577 lt!2185500))))))

(declare-fun b!5366071 () Bool)

(declare-fun res!2277298 () Bool)

(assert (=> b!5366071 (=> (not res!2277298) (not e!3330022))))

(assert (=> b!5366071 (= res!2277298 (= (size!39786 lt!2185694) (+ (size!39786 (t!374747 (_1!35577 lt!2185500))) (size!39786 (_2!35577 lt!2185500)))))))

(assert (= (and d!1718975 c!934744) b!5366069))

(assert (= (and d!1718975 (not c!934744)) b!5366070))

(assert (= (and d!1718975 res!2277299) b!5366071))

(assert (= (and b!5366071 res!2277298) b!5366072))

(declare-fun m!6394146 () Bool)

(assert (=> d!1718975 m!6394146))

(assert (=> d!1718975 m!6393524))

(assert (=> d!1718975 m!6393152))

(declare-fun m!6394148 () Bool)

(assert (=> b!5366070 m!6394148))

(declare-fun m!6394150 () Bool)

(assert (=> b!5366071 m!6394150))

(assert (=> b!5366071 m!6393846))

(assert (=> b!5366071 m!6393160))

(assert (=> b!5365025 d!1718975))

(declare-fun d!1718981 () Bool)

(assert (=> d!1718981 (= (nullable!5244 lt!2185531) (nullableFct!1548 lt!2185531))))

(declare-fun bs!1242774 () Bool)

(assert (= bs!1242774 d!1718981))

(declare-fun m!6394152 () Bool)

(assert (=> bs!1242774 m!6394152))

(assert (=> b!5365089 d!1718981))

(declare-fun bs!1242775 () Bool)

(declare-fun d!1718983 () Bool)

(assert (= bs!1242775 (and d!1718983 d!1718737)))

(declare-fun lambda!276603 () Int)

(assert (=> bs!1242775 (= lambda!276603 lambda!276560)))

(declare-fun bs!1242776 () Bool)

(assert (= bs!1242776 (and d!1718983 d!1718739)))

(assert (=> bs!1242776 (= lambda!276603 lambda!276561)))

(declare-fun bs!1242777 () Bool)

(assert (= bs!1242777 (and d!1718983 d!1718961)))

(assert (=> bs!1242777 (= lambda!276603 lambda!276600)))

(assert (=> d!1718983 (= (nullableZipper!1396 ((_ map or) lt!2185525 lt!2185496)) (exists!2020 ((_ map or) lt!2185525 lt!2185496) lambda!276603))))

(declare-fun bs!1242779 () Bool)

(assert (= bs!1242779 d!1718983))

(declare-fun m!6394160 () Bool)

(assert (=> bs!1242779 m!6394160))

(assert (=> b!5365281 d!1718983))

(assert (=> b!5364977 d!1718749))

(assert (=> d!1718603 d!1718769))

(declare-fun d!1718989 () Bool)

(assert (=> d!1718989 true))

(declare-fun setRes!34752 () Bool)

(assert (=> d!1718989 setRes!34752))

(declare-fun condSetEmpty!34752 () Bool)

(declare-fun res!2277300 () (InoxSet Context!8918))

(assert (=> d!1718989 (= condSetEmpty!34752 (= res!2277300 ((as const (Array Context!8918 Bool)) false)))))

(assert (=> d!1718989 (= (choose!40285 lt!2185526 lambda!276480) res!2277300)))

(declare-fun setIsEmpty!34752 () Bool)

(assert (=> setIsEmpty!34752 setRes!34752))

(declare-fun tp!1489184 () Bool)

(declare-fun e!3330026 () Bool)

(declare-fun setNonEmpty!34752 () Bool)

(declare-fun setElem!34752 () Context!8918)

(assert (=> setNonEmpty!34752 (= setRes!34752 (and tp!1489184 (inv!80934 setElem!34752) e!3330026))))

(declare-fun setRest!34752 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34752 (= res!2277300 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34752 true) setRest!34752))))

(declare-fun b!5366075 () Bool)

(declare-fun tp!1489185 () Bool)

(assert (=> b!5366075 (= e!3330026 tp!1489185)))

(assert (= (and d!1718989 condSetEmpty!34752) setIsEmpty!34752))

(assert (= (and d!1718989 (not condSetEmpty!34752)) setNonEmpty!34752))

(assert (= setNonEmpty!34752 b!5366075))

(declare-fun m!6394162 () Bool)

(assert (=> setNonEmpty!34752 m!6394162))

(assert (=> d!1718495 d!1718989))

(declare-fun d!1718991 () Bool)

(assert (=> d!1718991 (= (isEmpty!33379 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326)) (not ((_ is Some!15185) (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) Nil!61402 s!2326 s!2326))))))

(assert (=> d!1718583 d!1718991))

(declare-fun bs!1242780 () Bool)

(declare-fun b!5366077 () Bool)

(assert (= bs!1242780 (and b!5366077 d!1718903)))

(declare-fun lambda!276604 () Int)

(assert (=> bs!1242780 (not (= lambda!276604 lambda!276580))))

(declare-fun bs!1242781 () Bool)

(assert (= bs!1242781 (and b!5366077 b!5365334)))

(assert (=> bs!1242781 (not (= lambda!276604 lambda!276551))))

(declare-fun bs!1242782 () Bool)

(assert (= bs!1242782 (and b!5366077 d!1718511)))

(assert (=> bs!1242782 (not (= lambda!276604 lambda!276517))))

(declare-fun bs!1242783 () Bool)

(assert (= bs!1242783 (and b!5366077 b!5365370)))

(assert (=> bs!1242783 (= (and (= (reg!15404 (regOne!30663 lt!2185527)) (reg!15404 lt!2185527)) (= (regOne!30663 lt!2185527) lt!2185527)) (= lambda!276604 lambda!276552))))

(declare-fun bs!1242784 () Bool)

(assert (= bs!1242784 (and b!5366077 b!5364506)))

(assert (=> bs!1242784 (not (= lambda!276604 lambda!276478))))

(assert (=> bs!1242782 (not (= lambda!276604 lambda!276516))))

(declare-fun bs!1242785 () Bool)

(assert (= bs!1242785 (and b!5366077 d!1718569)))

(assert (=> bs!1242785 (not (= lambda!276604 lambda!276531))))

(declare-fun bs!1242786 () Bool)

(assert (= bs!1242786 (and b!5366077 b!5365923)))

(assert (=> bs!1242786 (= (and (= (reg!15404 (regOne!30663 lt!2185527)) (reg!15404 (regTwo!30663 lt!2185527))) (= (regOne!30663 lt!2185527) (regTwo!30663 lt!2185527))) (= lambda!276604 lambda!276586))))

(assert (=> bs!1242785 (not (= lambda!276604 lambda!276530))))

(declare-fun bs!1242787 () Bool)

(assert (= bs!1242787 (and b!5366077 b!5364528)))

(assert (=> bs!1242787 (not (= lambda!276604 lambda!276482))))

(declare-fun bs!1242788 () Bool)

(assert (= bs!1242788 (and b!5366077 b!5366038)))

(assert (=> bs!1242788 (not (= lambda!276604 lambda!276602))))

(declare-fun bs!1242789 () Bool)

(assert (= bs!1242789 (and b!5366077 b!5365331)))

(assert (=> bs!1242789 (= (and (= (reg!15404 (regOne!30663 lt!2185527)) (reg!15404 r!7292)) (= (regOne!30663 lt!2185527) r!7292)) (= lambda!276604 lambda!276550))))

(declare-fun bs!1242790 () Bool)

(assert (= bs!1242790 (and b!5366077 b!5365926)))

(assert (=> bs!1242790 (not (= lambda!276604 lambda!276587))))

(declare-fun bs!1242791 () Bool)

(assert (= bs!1242791 (and b!5366077 d!1718767)))

(assert (=> bs!1242791 (not (= lambda!276604 lambda!276567))))

(assert (=> bs!1242791 (not (= lambda!276604 lambda!276566))))

(declare-fun bs!1242792 () Bool)

(assert (= bs!1242792 (and b!5366077 d!1718819)))

(assert (=> bs!1242792 (not (= lambda!276604 lambda!276573))))

(declare-fun bs!1242793 () Bool)

(assert (= bs!1242793 (and b!5366077 b!5365373)))

(assert (=> bs!1242793 (not (= lambda!276604 lambda!276553))))

(declare-fun bs!1242794 () Bool)

(assert (= bs!1242794 (and b!5366077 b!5366035)))

(assert (=> bs!1242794 (= (and (= (reg!15404 (regOne!30663 lt!2185527)) (reg!15404 (regTwo!30663 r!7292))) (= (regOne!30663 lt!2185527) (regTwo!30663 r!7292))) (= lambda!276604 lambda!276601))))

(assert (=> bs!1242787 (not (= lambda!276604 lambda!276481))))

(declare-fun bs!1242795 () Bool)

(assert (= bs!1242795 (and b!5366077 d!1718531)))

(assert (=> bs!1242795 (not (= lambda!276604 lambda!276523))))

(assert (=> bs!1242784 (not (= lambda!276604 lambda!276479))))

(declare-fun bs!1242796 () Bool)

(assert (= bs!1242796 (and b!5366077 d!1718587)))

(assert (=> bs!1242796 (not (= lambda!276604 lambda!276532))))

(assert (=> b!5366077 true))

(assert (=> b!5366077 true))

(declare-fun bs!1242797 () Bool)

(declare-fun b!5366080 () Bool)

(assert (= bs!1242797 (and b!5366080 d!1718903)))

(declare-fun lambda!276605 () Int)

(assert (=> bs!1242797 (not (= lambda!276605 lambda!276580))))

(declare-fun bs!1242798 () Bool)

(assert (= bs!1242798 (and b!5366080 b!5365334)))

(assert (=> bs!1242798 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) (regOne!30662 r!7292)) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276605 lambda!276551))))

(declare-fun bs!1242799 () Bool)

(assert (= bs!1242799 (and b!5366080 d!1718511)))

(assert (=> bs!1242799 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) lt!2185531) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276605 lambda!276517))))

(declare-fun bs!1242800 () Bool)

(assert (= bs!1242800 (and b!5366080 b!5365370)))

(assert (=> bs!1242800 (not (= lambda!276605 lambda!276552))))

(declare-fun bs!1242801 () Bool)

(assert (= bs!1242801 (and b!5366080 b!5366077)))

(assert (=> bs!1242801 (not (= lambda!276605 lambda!276604))))

(declare-fun bs!1242802 () Bool)

(assert (= bs!1242802 (and b!5366080 b!5364506)))

(assert (=> bs!1242802 (not (= lambda!276605 lambda!276478))))

(assert (=> bs!1242799 (not (= lambda!276605 lambda!276516))))

(declare-fun bs!1242803 () Bool)

(assert (= bs!1242803 (and b!5366080 d!1718569)))

(assert (=> bs!1242803 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) (regOne!30662 r!7292)) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276605 lambda!276531))))

(declare-fun bs!1242805 () Bool)

(assert (= bs!1242805 (and b!5366080 b!5365923)))

(assert (=> bs!1242805 (not (= lambda!276605 lambda!276586))))

(assert (=> bs!1242803 (not (= lambda!276605 lambda!276530))))

(declare-fun bs!1242806 () Bool)

(assert (= bs!1242806 (and b!5366080 b!5364528)))

(assert (=> bs!1242806 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) lt!2185531) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276605 lambda!276482))))

(declare-fun bs!1242808 () Bool)

(assert (= bs!1242808 (and b!5366080 b!5366038)))

(assert (=> bs!1242808 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) (regOne!30662 (regTwo!30663 r!7292))) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 (regTwo!30663 r!7292)))) (= lambda!276605 lambda!276602))))

(declare-fun bs!1242809 () Bool)

(assert (= bs!1242809 (and b!5366080 b!5365331)))

(assert (=> bs!1242809 (not (= lambda!276605 lambda!276550))))

(declare-fun bs!1242811 () Bool)

(assert (= bs!1242811 (and b!5366080 b!5365926)))

(assert (=> bs!1242811 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) (regOne!30662 (regTwo!30663 lt!2185527))) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 (regTwo!30663 lt!2185527)))) (= lambda!276605 lambda!276587))))

(declare-fun bs!1242812 () Bool)

(assert (= bs!1242812 (and b!5366080 d!1718767)))

(assert (=> bs!1242812 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) lt!2185531) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276605 lambda!276567))))

(assert (=> bs!1242812 (not (= lambda!276605 lambda!276566))))

(declare-fun bs!1242814 () Bool)

(assert (= bs!1242814 (and b!5366080 d!1718819)))

(assert (=> bs!1242814 (not (= lambda!276605 lambda!276573))))

(declare-fun bs!1242816 () Bool)

(assert (= bs!1242816 (and b!5366080 b!5365373)))

(assert (=> bs!1242816 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) (regOne!30662 lt!2185527)) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 lt!2185527))) (= lambda!276605 lambda!276553))))

(declare-fun bs!1242817 () Bool)

(assert (= bs!1242817 (and b!5366080 b!5366035)))

(assert (=> bs!1242817 (not (= lambda!276605 lambda!276601))))

(assert (=> bs!1242806 (not (= lambda!276605 lambda!276481))))

(declare-fun bs!1242819 () Bool)

(assert (= bs!1242819 (and b!5366080 d!1718531)))

(assert (=> bs!1242819 (not (= lambda!276605 lambda!276523))))

(assert (=> bs!1242802 (= (and (= (regOne!30662 (regOne!30663 lt!2185527)) (regOne!30662 r!7292)) (= (regTwo!30662 (regOne!30663 lt!2185527)) (regTwo!30662 r!7292))) (= lambda!276605 lambda!276479))))

(declare-fun bs!1242821 () Bool)

(assert (= bs!1242821 (and b!5366080 d!1718587)))

(assert (=> bs!1242821 (not (= lambda!276605 lambda!276532))))

(assert (=> b!5366080 true))

(assert (=> b!5366080 true))

(declare-fun b!5366076 () Bool)

(declare-fun e!3330032 () Bool)

(declare-fun e!3330033 () Bool)

(assert (=> b!5366076 (= e!3330032 e!3330033)))

(declare-fun res!2277302 () Bool)

(assert (=> b!5366076 (= res!2277302 (matchRSpec!2178 (regOne!30663 (regOne!30663 lt!2185527)) s!2326))))

(assert (=> b!5366076 (=> res!2277302 e!3330033)))

(declare-fun e!3330028 () Bool)

(declare-fun call!384008 () Bool)

(assert (=> b!5366077 (= e!3330028 call!384008)))

(declare-fun b!5366078 () Bool)

(declare-fun e!3330027 () Bool)

(declare-fun call!384009 () Bool)

(assert (=> b!5366078 (= e!3330027 call!384009)))

(declare-fun b!5366079 () Bool)

(declare-fun c!934748 () Bool)

(assert (=> b!5366079 (= c!934748 ((_ is ElementMatch!15075) (regOne!30663 lt!2185527)))))

(declare-fun e!3330031 () Bool)

(declare-fun e!3330030 () Bool)

(assert (=> b!5366079 (= e!3330031 e!3330030)))

(declare-fun e!3330029 () Bool)

(assert (=> b!5366080 (= e!3330029 call!384008)))

(declare-fun b!5366081 () Bool)

(assert (=> b!5366081 (= e!3330033 (matchRSpec!2178 (regTwo!30663 (regOne!30663 lt!2185527)) s!2326))))

(declare-fun b!5366082 () Bool)

(declare-fun c!934747 () Bool)

(assert (=> b!5366082 (= c!934747 ((_ is Union!15075) (regOne!30663 lt!2185527)))))

(assert (=> b!5366082 (= e!3330030 e!3330032)))

(declare-fun b!5366083 () Bool)

(assert (=> b!5366083 (= e!3330030 (= s!2326 (Cons!61402 (c!934311 (regOne!30663 lt!2185527)) Nil!61402)))))

(declare-fun b!5366084 () Bool)

(assert (=> b!5366084 (= e!3330027 e!3330031)))

(declare-fun res!2277303 () Bool)

(assert (=> b!5366084 (= res!2277303 (not ((_ is EmptyLang!15075) (regOne!30663 lt!2185527))))))

(assert (=> b!5366084 (=> (not res!2277303) (not e!3330031))))

(declare-fun b!5366085 () Bool)

(assert (=> b!5366085 (= e!3330032 e!3330029)))

(declare-fun c!934749 () Bool)

(assert (=> b!5366085 (= c!934749 ((_ is Star!15075) (regOne!30663 lt!2185527)))))

(declare-fun b!5366086 () Bool)

(declare-fun res!2277301 () Bool)

(assert (=> b!5366086 (=> res!2277301 e!3330028)))

(assert (=> b!5366086 (= res!2277301 call!384009)))

(assert (=> b!5366086 (= e!3330029 e!3330028)))

(declare-fun bm!384004 () Bool)

(assert (=> bm!384004 (= call!384008 (Exists!2256 (ite c!934749 lambda!276604 lambda!276605)))))

(declare-fun bm!384003 () Bool)

(assert (=> bm!384003 (= call!384009 (isEmpty!33377 s!2326))))

(declare-fun d!1718993 () Bool)

(declare-fun c!934746 () Bool)

(assert (=> d!1718993 (= c!934746 ((_ is EmptyExpr!15075) (regOne!30663 lt!2185527)))))

(assert (=> d!1718993 (= (matchRSpec!2178 (regOne!30663 lt!2185527) s!2326) e!3330027)))

(assert (= (and d!1718993 c!934746) b!5366078))

(assert (= (and d!1718993 (not c!934746)) b!5366084))

(assert (= (and b!5366084 res!2277303) b!5366079))

(assert (= (and b!5366079 c!934748) b!5366083))

(assert (= (and b!5366079 (not c!934748)) b!5366082))

(assert (= (and b!5366082 c!934747) b!5366076))

(assert (= (and b!5366082 (not c!934747)) b!5366085))

(assert (= (and b!5366076 (not res!2277302)) b!5366081))

(assert (= (and b!5366085 c!934749) b!5366086))

(assert (= (and b!5366085 (not c!934749)) b!5366080))

(assert (= (and b!5366086 (not res!2277301)) b!5366077))

(assert (= (or b!5366077 b!5366080) bm!384004))

(assert (= (or b!5366078 b!5366086) bm!384003))

(declare-fun m!6394166 () Bool)

(assert (=> b!5366076 m!6394166))

(declare-fun m!6394168 () Bool)

(assert (=> b!5366081 m!6394168))

(declare-fun m!6394170 () Bool)

(assert (=> bm!384004 m!6394170))

(assert (=> bm!384003 m!6393408))

(assert (=> b!5365369 d!1718993))

(declare-fun b!5366101 () Bool)

(declare-fun e!3330045 () (InoxSet Context!8918))

(assert (=> b!5366101 (= e!3330045 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1718999 () Bool)

(declare-fun c!934754 () Bool)

(declare-fun e!3330046 () Bool)

(assert (=> d!1718999 (= c!934754 e!3330046)))

(declare-fun res!2277310 () Bool)

(assert (=> d!1718999 (=> (not res!2277310) (not e!3330046))))

(assert (=> d!1718999 (= res!2277310 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185533))))))))

(declare-fun e!3330044 () (InoxSet Context!8918))

(assert (=> d!1718999 (= (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 lt!2185533))) (h!67850 s!2326)) e!3330044)))

(declare-fun b!5366102 () Bool)

(declare-fun call!384012 () (InoxSet Context!8918))

(assert (=> b!5366102 (= e!3330045 call!384012)))

(declare-fun bm!384007 () Bool)

(assert (=> bm!384007 (= call!384012 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185533))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185533)))))) (h!67850 s!2326)))))

(declare-fun b!5366103 () Bool)

(assert (=> b!5366103 (= e!3330044 ((_ map or) call!384012 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185533)))))) (h!67850 s!2326))))))

(declare-fun b!5366104 () Bool)

(assert (=> b!5366104 (= e!3330046 (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185533)))))))))

(declare-fun b!5366105 () Bool)

(assert (=> b!5366105 (= e!3330044 e!3330045)))

(declare-fun c!934755 () Bool)

(assert (=> b!5366105 (= c!934755 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185533))))))))

(assert (= (and d!1718999 res!2277310) b!5366104))

(assert (= (and d!1718999 c!934754) b!5366103))

(assert (= (and d!1718999 (not c!934754)) b!5366105))

(assert (= (and b!5366105 c!934755) b!5366102))

(assert (= (and b!5366105 (not c!934755)) b!5366101))

(assert (= (or b!5366103 b!5366102) bm!384007))

(declare-fun m!6394172 () Bool)

(assert (=> bm!384007 m!6394172))

(declare-fun m!6394174 () Bool)

(assert (=> b!5366103 m!6394174))

(declare-fun m!6394176 () Bool)

(assert (=> b!5366104 m!6394176))

(assert (=> b!5364863 d!1718999))

(assert (=> d!1718551 d!1718607))

(assert (=> d!1718551 d!1718753))

(assert (=> d!1718491 d!1718469))

(declare-fun d!1719001 () Bool)

(assert (=> d!1719001 (= (flatMap!802 lt!2185501 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185523))))

(assert (=> d!1719001 true))

(declare-fun _$13!1932 () Unit!153818)

(assert (=> d!1719001 (= (choose!40286 lt!2185501 lt!2185523 lambda!276480) _$13!1932)))

(declare-fun b_lambda!205725 () Bool)

(assert (=> (not b_lambda!205725) (not d!1719001)))

(declare-fun bs!1242828 () Bool)

(assert (= bs!1242828 d!1719001))

(assert (=> bs!1242828 m!6392648))

(assert (=> bs!1242828 m!6393000))

(assert (=> d!1718491 d!1719001))

(declare-fun b!5366106 () Bool)

(declare-fun c!934757 () Bool)

(declare-fun e!3330047 () Bool)

(assert (=> b!5366106 (= c!934757 e!3330047)))

(declare-fun res!2277311 () Bool)

(assert (=> b!5366106 (=> (not res!2277311) (not e!3330047))))

(assert (=> b!5366106 (= res!2277311 ((_ is Concat!23920) (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun e!3330048 () (InoxSet Context!8918))

(declare-fun e!3330049 () (InoxSet Context!8918))

(assert (=> b!5366106 (= e!3330048 e!3330049)))

(declare-fun b!5366107 () Bool)

(declare-fun e!3330050 () (InoxSet Context!8918))

(declare-fun call!384015 () (InoxSet Context!8918))

(assert (=> b!5366107 (= e!3330050 call!384015)))

(declare-fun b!5366108 () Bool)

(declare-fun e!3330052 () (InoxSet Context!8918))

(assert (=> b!5366108 (= e!3330052 call!384015)))

(declare-fun b!5366109 () Bool)

(declare-fun e!3330051 () (InoxSet Context!8918))

(assert (=> b!5366109 (= e!3330051 e!3330048)))

(declare-fun c!934760 () Bool)

(assert (=> b!5366109 (= c!934760 ((_ is Union!15075) (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun bm!384008 () Bool)

(declare-fun call!384018 () (InoxSet Context!8918))

(declare-fun call!384017 () (InoxSet Context!8918))

(assert (=> bm!384008 (= call!384018 call!384017)))

(declare-fun b!5366110 () Bool)

(declare-fun call!384013 () (InoxSet Context!8918))

(assert (=> b!5366110 (= e!3330048 ((_ map or) call!384013 call!384017))))

(declare-fun b!5366111 () Bool)

(assert (=> b!5366111 (= e!3330051 (store ((as const (Array Context!8918 Bool)) false) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) true))))

(declare-fun b!5366112 () Bool)

(assert (=> b!5366112 (= e!3330047 (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))))

(declare-fun call!384016 () List!61524)

(declare-fun bm!384009 () Bool)

(assert (=> bm!384009 (= call!384013 (derivationStepZipperDown!523 (ite c!934760 (regOne!30663 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (regOne!30662 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))) (ite c!934760 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (Context!8919 call!384016)) (h!67850 s!2326)))))

(declare-fun d!1719003 () Bool)

(declare-fun c!934759 () Bool)

(assert (=> d!1719003 (= c!934759 (and ((_ is ElementMatch!15075) (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (= (c!934311 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (h!67850 s!2326))))))

(assert (=> d!1719003 (= (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (h!67850 s!2326)) e!3330051)))

(declare-fun b!5366113 () Bool)

(declare-fun c!934758 () Bool)

(assert (=> b!5366113 (= c!934758 ((_ is Star!15075) (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))

(assert (=> b!5366113 (= e!3330052 e!3330050)))

(declare-fun bm!384010 () Bool)

(declare-fun call!384014 () List!61524)

(assert (=> bm!384010 (= call!384014 call!384016)))

(declare-fun c!934756 () Bool)

(declare-fun bm!384011 () Bool)

(assert (=> bm!384011 (= call!384016 ($colon$colon!1446 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))) (ite (or c!934757 c!934756) (regTwo!30662 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))))

(declare-fun bm!384012 () Bool)

(assert (=> bm!384012 (= call!384015 call!384018)))

(declare-fun b!5366114 () Bool)

(assert (=> b!5366114 (= e!3330049 e!3330052)))

(assert (=> b!5366114 (= c!934756 ((_ is Concat!23920) (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))))))

(declare-fun bm!384013 () Bool)

(assert (=> bm!384013 (= call!384017 (derivationStepZipperDown!523 (ite c!934760 (regTwo!30663 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (ite c!934757 (regTwo!30662 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (ite c!934756 (regOne!30662 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (reg!15404 (h!67848 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))))))) (ite (or c!934760 c!934757) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (Cons!61400 (h!67848 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343)))))))) (Context!8919 call!384014)) (h!67850 s!2326)))))

(declare-fun b!5366115 () Bool)

(assert (=> b!5366115 (= e!3330049 ((_ map or) call!384013 call!384018))))

(declare-fun b!5366116 () Bool)

(assert (=> b!5366116 (= e!3330050 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1719003 c!934759) b!5366111))

(assert (= (and d!1719003 (not c!934759)) b!5366109))

(assert (= (and b!5366109 c!934760) b!5366110))

(assert (= (and b!5366109 (not c!934760)) b!5366106))

(assert (= (and b!5366106 res!2277311) b!5366112))

(assert (= (and b!5366106 c!934757) b!5366115))

(assert (= (and b!5366106 (not c!934757)) b!5366114))

(assert (= (and b!5366114 c!934756) b!5366108))

(assert (= (and b!5366114 (not c!934756)) b!5366113))

(assert (= (and b!5366113 c!934758) b!5366107))

(assert (= (and b!5366113 (not c!934758)) b!5366116))

(assert (= (or b!5366108 b!5366107) bm!384010))

(assert (= (or b!5366108 b!5366107) bm!384012))

(assert (= (or b!5366115 bm!384010) bm!384011))

(assert (= (or b!5366115 bm!384012) bm!384008))

(assert (= (or b!5366110 bm!384008) bm!384013))

(assert (= (or b!5366110 b!5366115) bm!384009))

(declare-fun m!6394178 () Bool)

(assert (=> b!5366111 m!6394178))

(declare-fun m!6394180 () Bool)

(assert (=> bm!384013 m!6394180))

(declare-fun m!6394182 () Bool)

(assert (=> bm!384011 m!6394182))

(declare-fun m!6394184 () Bool)

(assert (=> b!5366112 m!6394184))

(declare-fun m!6394186 () Bool)

(assert (=> bm!384009 m!6394186))

(assert (=> bm!383841 d!1719003))

(declare-fun b!5366117 () Bool)

(declare-fun c!934762 () Bool)

(declare-fun e!3330053 () Bool)

(assert (=> b!5366117 (= c!934762 e!3330053)))

(declare-fun res!2277312 () Bool)

(assert (=> b!5366117 (=> (not res!2277312) (not e!3330053))))

(assert (=> b!5366117 (= res!2277312 ((_ is Concat!23920) (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))))))

(declare-fun e!3330054 () (InoxSet Context!8918))

(declare-fun e!3330055 () (InoxSet Context!8918))

(assert (=> b!5366117 (= e!3330054 e!3330055)))

(declare-fun b!5366118 () Bool)

(declare-fun e!3330056 () (InoxSet Context!8918))

(declare-fun call!384021 () (InoxSet Context!8918))

(assert (=> b!5366118 (= e!3330056 call!384021)))

(declare-fun b!5366119 () Bool)

(declare-fun e!3330058 () (InoxSet Context!8918))

(assert (=> b!5366119 (= e!3330058 call!384021)))

(declare-fun b!5366120 () Bool)

(declare-fun e!3330057 () (InoxSet Context!8918))

(assert (=> b!5366120 (= e!3330057 e!3330054)))

(declare-fun c!934765 () Bool)

(assert (=> b!5366120 (= c!934765 ((_ is Union!15075) (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))))))

(declare-fun bm!384014 () Bool)

(declare-fun call!384024 () (InoxSet Context!8918))

(declare-fun call!384023 () (InoxSet Context!8918))

(assert (=> bm!384014 (= call!384024 call!384023)))

(declare-fun b!5366121 () Bool)

(declare-fun call!384019 () (InoxSet Context!8918))

(assert (=> b!5366121 (= e!3330054 ((_ map or) call!384019 call!384023))))

(declare-fun b!5366122 () Bool)

(assert (=> b!5366122 (= e!3330057 (store ((as const (Array Context!8918 Bool)) false) (ite (or c!934529 c!934526) lt!2185533 (Context!8919 call!383869)) true))))

(declare-fun b!5366123 () Bool)

(assert (=> b!5366123 (= e!3330053 (nullable!5244 (regOne!30662 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292)))))))))))

(declare-fun call!384022 () List!61524)

(declare-fun bm!384015 () Bool)

(assert (=> bm!384015 (= call!384019 (derivationStepZipperDown!523 (ite c!934765 (regOne!30663 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))) (regOne!30662 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292)))))))) (ite c!934765 (ite (or c!934529 c!934526) lt!2185533 (Context!8919 call!383869)) (Context!8919 call!384022)) (h!67850 s!2326)))))

(declare-fun c!934764 () Bool)

(declare-fun d!1719005 () Bool)

(assert (=> d!1719005 (= c!934764 (and ((_ is ElementMatch!15075) (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))) (= (c!934311 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))) (h!67850 s!2326))))))

(assert (=> d!1719005 (= (derivationStepZipperDown!523 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292)))))) (ite (or c!934529 c!934526) lt!2185533 (Context!8919 call!383869)) (h!67850 s!2326)) e!3330057)))

(declare-fun c!934763 () Bool)

(declare-fun b!5366124 () Bool)

(assert (=> b!5366124 (= c!934763 ((_ is Star!15075) (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))))))

(assert (=> b!5366124 (= e!3330058 e!3330056)))

(declare-fun bm!384016 () Bool)

(declare-fun call!384020 () List!61524)

(assert (=> bm!384016 (= call!384020 call!384022)))

(declare-fun c!934761 () Bool)

(declare-fun bm!384017 () Bool)

(assert (=> bm!384017 (= call!384022 ($colon$colon!1446 (exprs!4959 (ite (or c!934529 c!934526) lt!2185533 (Context!8919 call!383869))) (ite (or c!934762 c!934761) (regTwo!30662 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))) (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292)))))))))))

(declare-fun bm!384018 () Bool)

(assert (=> bm!384018 (= call!384021 call!384024)))

(declare-fun b!5366125 () Bool)

(assert (=> b!5366125 (= e!3330055 e!3330058)))

(assert (=> b!5366125 (= c!934761 ((_ is Concat!23920) (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))))))

(declare-fun bm!384019 () Bool)

(assert (=> bm!384019 (= call!384023 (derivationStepZipperDown!523 (ite c!934765 (regTwo!30663 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))) (ite c!934762 (regTwo!30662 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))) (ite c!934761 (regOne!30662 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292))))))) (reg!15404 (ite c!934529 (regTwo!30663 (reg!15404 (regOne!30662 r!7292))) (ite c!934526 (regTwo!30662 (reg!15404 (regOne!30662 r!7292))) (ite c!934525 (regOne!30662 (reg!15404 (regOne!30662 r!7292))) (reg!15404 (reg!15404 (regOne!30662 r!7292)))))))))) (ite (or c!934765 c!934762) (ite (or c!934529 c!934526) lt!2185533 (Context!8919 call!383869)) (Context!8919 call!384020)) (h!67850 s!2326)))))

(declare-fun b!5366126 () Bool)

(assert (=> b!5366126 (= e!3330055 ((_ map or) call!384019 call!384024))))

(declare-fun b!5366127 () Bool)

(assert (=> b!5366127 (= e!3330056 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1719005 c!934764) b!5366122))

(assert (= (and d!1719005 (not c!934764)) b!5366120))

(assert (= (and b!5366120 c!934765) b!5366121))

(assert (= (and b!5366120 (not c!934765)) b!5366117))

(assert (= (and b!5366117 res!2277312) b!5366123))

(assert (= (and b!5366117 c!934762) b!5366126))

(assert (= (and b!5366117 (not c!934762)) b!5366125))

(assert (= (and b!5366125 c!934761) b!5366119))

(assert (= (and b!5366125 (not c!934761)) b!5366124))

(assert (= (and b!5366124 c!934763) b!5366118))

(assert (= (and b!5366124 (not c!934763)) b!5366127))

(assert (= (or b!5366119 b!5366118) bm!384016))

(assert (= (or b!5366119 b!5366118) bm!384018))

(assert (= (or b!5366126 bm!384016) bm!384017))

(assert (= (or b!5366126 bm!384018) bm!384014))

(assert (= (or b!5366121 bm!384014) bm!384019))

(assert (= (or b!5366121 b!5366126) bm!384015))

(declare-fun m!6394188 () Bool)

(assert (=> b!5366122 m!6394188))

(declare-fun m!6394190 () Bool)

(assert (=> bm!384019 m!6394190))

(declare-fun m!6394192 () Bool)

(assert (=> bm!384017 m!6394192))

(declare-fun m!6394194 () Bool)

(assert (=> b!5366123 m!6394194))

(declare-fun m!6394196 () Bool)

(assert (=> bm!384015 m!6394196))

(assert (=> bm!383868 d!1719005))

(declare-fun d!1719007 () Bool)

(assert (=> d!1719007 (= (isEmptyLang!939 lt!2185639) ((_ is EmptyLang!15075) lt!2185639))))

(assert (=> b!5365265 d!1719007))

(declare-fun bs!1242839 () Bool)

(declare-fun d!1719009 () Bool)

(assert (= bs!1242839 (and d!1719009 d!1718955)))

(declare-fun lambda!276608 () Int)

(assert (=> bs!1242839 (= lambda!276608 lambda!276597)))

(declare-fun bs!1242841 () Bool)

(assert (= bs!1242841 (and d!1719009 d!1718939)))

(assert (=> bs!1242841 (= lambda!276608 lambda!276591)))

(declare-fun bs!1242842 () Bool)

(assert (= bs!1242842 (and d!1719009 d!1718947)))

(assert (=> bs!1242842 (= lambda!276608 lambda!276592)))

(declare-fun bs!1242844 () Bool)

(assert (= bs!1242844 (and d!1719009 d!1718609)))

(assert (=> bs!1242844 (= lambda!276608 lambda!276535)))

(declare-fun bs!1242845 () Bool)

(assert (= bs!1242845 (and d!1719009 d!1718621)))

(assert (=> bs!1242845 (= lambda!276608 lambda!276542)))

(declare-fun bs!1242846 () Bool)

(assert (= bs!1242846 (and d!1719009 d!1718613)))

(assert (=> bs!1242846 (= lambda!276608 lambda!276536)))

(declare-fun bs!1242847 () Bool)

(assert (= bs!1242847 (and d!1719009 d!1718771)))

(assert (=> bs!1242847 (= lambda!276608 lambda!276568)))

(declare-fun bs!1242848 () Bool)

(assert (= bs!1242848 (and d!1719009 d!1718875)))

(assert (=> bs!1242848 (= lambda!276608 lambda!276578)))

(declare-fun bs!1242849 () Bool)

(assert (= bs!1242849 (and d!1719009 d!1718809)))

(assert (=> bs!1242849 (= lambda!276608 lambda!276569)))

(declare-fun bs!1242850 () Bool)

(assert (= bs!1242850 (and d!1719009 d!1718623)))

(assert (=> bs!1242850 (= lambda!276608 lambda!276545)))

(declare-fun bs!1242852 () Bool)

(assert (= bs!1242852 (and d!1719009 d!1718951)))

(assert (=> bs!1242852 (= lambda!276608 lambda!276595)))

(declare-fun bs!1242853 () Bool)

(assert (= bs!1242853 (and d!1719009 d!1718813)))

(assert (=> bs!1242853 (= lambda!276608 lambda!276570)))

(declare-fun bs!1242854 () Bool)

(assert (= bs!1242854 (and d!1719009 d!1718615)))

(assert (=> bs!1242854 (= lambda!276608 lambda!276539)))

(declare-fun bs!1242855 () Bool)

(assert (= bs!1242855 (and d!1719009 b!5364523)))

(assert (=> bs!1242855 (= lambda!276608 lambda!276483)))

(assert (=> d!1719009 (= (inv!80934 setElem!34747) (forall!14483 (exprs!4959 setElem!34747) lambda!276608))))

(declare-fun bs!1242857 () Bool)

(assert (= bs!1242857 d!1719009))

(declare-fun m!6394198 () Bool)

(assert (=> bs!1242857 m!6394198))

(assert (=> setNonEmpty!34747 d!1719009))

(declare-fun b!5366128 () Bool)

(declare-fun c!934767 () Bool)

(declare-fun e!3330059 () Bool)

(assert (=> b!5366128 (= c!934767 e!3330059)))

(declare-fun res!2277313 () Bool)

(assert (=> b!5366128 (=> (not res!2277313) (not e!3330059))))

(assert (=> b!5366128 (= res!2277313 ((_ is Concat!23920) (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun e!3330060 () (InoxSet Context!8918))

(declare-fun e!3330061 () (InoxSet Context!8918))

(assert (=> b!5366128 (= e!3330060 e!3330061)))

(declare-fun b!5366129 () Bool)

(declare-fun e!3330062 () (InoxSet Context!8918))

(declare-fun call!384027 () (InoxSet Context!8918))

(assert (=> b!5366129 (= e!3330062 call!384027)))

(declare-fun b!5366130 () Bool)

(declare-fun e!3330064 () (InoxSet Context!8918))

(assert (=> b!5366130 (= e!3330064 call!384027)))

(declare-fun b!5366131 () Bool)

(declare-fun e!3330063 () (InoxSet Context!8918))

(assert (=> b!5366131 (= e!3330063 e!3330060)))

(declare-fun c!934770 () Bool)

(assert (=> b!5366131 (= c!934770 ((_ is Union!15075) (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun bm!384020 () Bool)

(declare-fun call!384030 () (InoxSet Context!8918))

(declare-fun call!384029 () (InoxSet Context!8918))

(assert (=> bm!384020 (= call!384030 call!384029)))

(declare-fun b!5366132 () Bool)

(declare-fun call!384025 () (InoxSet Context!8918))

(assert (=> b!5366132 (= e!3330060 ((_ map or) call!384025 call!384029))))

(declare-fun b!5366133 () Bool)

(assert (=> b!5366133 (= e!3330063 (store ((as const (Array Context!8918 Bool)) false) (ite c!934485 lt!2185502 (Context!8919 call!383862)) true))))

(declare-fun b!5366134 () Bool)

(assert (=> b!5366134 (= e!3330059 (nullable!5244 (regOne!30662 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))))))))

(declare-fun bm!384021 () Bool)

(declare-fun call!384028 () List!61524)

(assert (=> bm!384021 (= call!384025 (derivationStepZipperDown!523 (ite c!934770 (regOne!30663 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))) (regOne!30662 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))))) (ite c!934770 (ite c!934485 lt!2185502 (Context!8919 call!383862)) (Context!8919 call!384028)) (h!67850 s!2326)))))

(declare-fun c!934769 () Bool)

(declare-fun d!1719011 () Bool)

(assert (=> d!1719011 (= c!934769 (and ((_ is ElementMatch!15075) (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))) (= (c!934311 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))) (h!67850 s!2326))))))

(assert (=> d!1719011 (= (derivationStepZipperDown!523 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))) (ite c!934485 lt!2185502 (Context!8919 call!383862)) (h!67850 s!2326)) e!3330063)))

(declare-fun b!5366135 () Bool)

(declare-fun c!934768 () Bool)

(assert (=> b!5366135 (= c!934768 ((_ is Star!15075) (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))

(assert (=> b!5366135 (= e!3330064 e!3330062)))

(declare-fun bm!384022 () Bool)

(declare-fun call!384026 () List!61524)

(assert (=> bm!384022 (= call!384026 call!384028)))

(declare-fun c!934766 () Bool)

(declare-fun bm!384023 () Bool)

(assert (=> bm!384023 (= call!384028 ($colon$colon!1446 (exprs!4959 (ite c!934485 lt!2185502 (Context!8919 call!383862))) (ite (or c!934767 c!934766) (regTwo!30662 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))) (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))))))))

(declare-fun bm!384024 () Bool)

(assert (=> bm!384024 (= call!384027 call!384030)))

(declare-fun b!5366136 () Bool)

(assert (=> b!5366136 (= e!3330061 e!3330064)))

(assert (=> b!5366136 (= c!934766 ((_ is Concat!23920) (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun bm!384025 () Bool)

(assert (=> bm!384025 (= call!384029 (derivationStepZipperDown!523 (ite c!934770 (regTwo!30663 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))) (ite c!934767 (regTwo!30662 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))) (ite c!934766 (regOne!30662 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))) (reg!15404 (ite c!934485 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343))))))))) (ite (or c!934770 c!934767) (ite c!934485 lt!2185502 (Context!8919 call!383862)) (Context!8919 call!384026)) (h!67850 s!2326)))))

(declare-fun b!5366137 () Bool)

(assert (=> b!5366137 (= e!3330061 ((_ map or) call!384025 call!384030))))

(declare-fun b!5366138 () Bool)

(assert (=> b!5366138 (= e!3330062 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1719011 c!934769) b!5366133))

(assert (= (and d!1719011 (not c!934769)) b!5366131))

(assert (= (and b!5366131 c!934770) b!5366132))

(assert (= (and b!5366131 (not c!934770)) b!5366128))

(assert (= (and b!5366128 res!2277313) b!5366134))

(assert (= (and b!5366128 c!934767) b!5366137))

(assert (= (and b!5366128 (not c!934767)) b!5366136))

(assert (= (and b!5366136 c!934766) b!5366130))

(assert (= (and b!5366136 (not c!934766)) b!5366135))

(assert (= (and b!5366135 c!934768) b!5366129))

(assert (= (and b!5366135 (not c!934768)) b!5366138))

(assert (= (or b!5366130 b!5366129) bm!384022))

(assert (= (or b!5366130 b!5366129) bm!384024))

(assert (= (or b!5366137 bm!384022) bm!384023))

(assert (= (or b!5366137 bm!384024) bm!384020))

(assert (= (or b!5366132 bm!384020) bm!384025))

(assert (= (or b!5366132 b!5366137) bm!384021))

(declare-fun m!6394200 () Bool)

(assert (=> b!5366133 m!6394200))

(declare-fun m!6394202 () Bool)

(assert (=> bm!384025 m!6394202))

(declare-fun m!6394204 () Bool)

(assert (=> bm!384023 m!6394204))

(declare-fun m!6394206 () Bool)

(assert (=> b!5366134 m!6394206))

(declare-fun m!6394208 () Bool)

(assert (=> bm!384021 m!6394208))

(assert (=> bm!383855 d!1719011))

(declare-fun d!1719013 () Bool)

(assert (=> d!1719013 (= (nullable!5244 (h!67848 (exprs!4959 lt!2185523))) (nullableFct!1548 (h!67848 (exprs!4959 lt!2185523))))))

(declare-fun bs!1242860 () Bool)

(assert (= bs!1242860 d!1719013))

(declare-fun m!6394210 () Bool)

(assert (=> bs!1242860 m!6394210))

(assert (=> b!5364834 d!1719013))

(declare-fun d!1719015 () Bool)

(assert (=> d!1719015 (= (nullable!5244 lt!2185527) (nullableFct!1548 lt!2185527))))

(declare-fun bs!1242861 () Bool)

(assert (= bs!1242861 d!1719015))

(declare-fun m!6394212 () Bool)

(assert (=> bs!1242861 m!6394212))

(assert (=> b!5365362 d!1719015))

(declare-fun b!5366139 () Bool)

(declare-fun res!2277315 () Bool)

(declare-fun e!3330067 () Bool)

(assert (=> b!5366139 (=> res!2277315 e!3330067)))

(assert (=> b!5366139 (= res!2277315 (not ((_ is Concat!23920) (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292)))))))

(declare-fun e!3330066 () Bool)

(assert (=> b!5366139 (= e!3330066 e!3330067)))

(declare-fun b!5366140 () Bool)

(declare-fun e!3330065 () Bool)

(declare-fun e!3330068 () Bool)

(assert (=> b!5366140 (= e!3330065 e!3330068)))

(declare-fun res!2277314 () Bool)

(assert (=> b!5366140 (= res!2277314 (not (nullable!5244 (reg!15404 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))))))))

(assert (=> b!5366140 (=> (not res!2277314) (not e!3330068))))

(declare-fun b!5366141 () Bool)

(declare-fun e!3330069 () Bool)

(declare-fun call!384033 () Bool)

(assert (=> b!5366141 (= e!3330069 call!384033)))

(declare-fun b!5366142 () Bool)

(declare-fun e!3330070 () Bool)

(assert (=> b!5366142 (= e!3330070 call!384033)))

(declare-fun c!934772 () Bool)

(declare-fun call!384031 () Bool)

(declare-fun bm!384026 () Bool)

(declare-fun c!934771 () Bool)

(assert (=> bm!384026 (= call!384031 (validRegex!6811 (ite c!934771 (reg!15404 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))) (ite c!934772 (regOne!30663 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))) (regOne!30662 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292)))))))))

(declare-fun b!5366143 () Bool)

(declare-fun e!3330071 () Bool)

(assert (=> b!5366143 (= e!3330071 e!3330065)))

(assert (=> b!5366143 (= c!934771 ((_ is Star!15075) (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))))))

(declare-fun b!5366144 () Bool)

(assert (=> b!5366144 (= e!3330068 call!384031)))

(declare-fun d!1719017 () Bool)

(declare-fun res!2277318 () Bool)

(assert (=> d!1719017 (=> res!2277318 e!3330071)))

(assert (=> d!1719017 (= res!2277318 ((_ is ElementMatch!15075) (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))))))

(assert (=> d!1719017 (= (validRegex!6811 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))) e!3330071)))

(declare-fun bm!384027 () Bool)

(assert (=> bm!384027 (= call!384033 (validRegex!6811 (ite c!934772 (regTwo!30663 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))) (regTwo!30662 (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))))))))

(declare-fun b!5366145 () Bool)

(declare-fun res!2277316 () Bool)

(assert (=> b!5366145 (=> (not res!2277316) (not e!3330069))))

(declare-fun call!384032 () Bool)

(assert (=> b!5366145 (= res!2277316 call!384032)))

(assert (=> b!5366145 (= e!3330066 e!3330069)))

(declare-fun bm!384028 () Bool)

(assert (=> bm!384028 (= call!384032 call!384031)))

(declare-fun b!5366146 () Bool)

(assert (=> b!5366146 (= e!3330067 e!3330070)))

(declare-fun res!2277317 () Bool)

(assert (=> b!5366146 (=> (not res!2277317) (not e!3330070))))

(assert (=> b!5366146 (= res!2277317 call!384032)))

(declare-fun b!5366147 () Bool)

(assert (=> b!5366147 (= e!3330065 e!3330066)))

(assert (=> b!5366147 (= c!934772 ((_ is Union!15075) (ite c!934400 (regTwo!30663 r!7292) (regTwo!30662 r!7292))))))

(assert (= (and d!1719017 (not res!2277318)) b!5366143))

(assert (= (and b!5366143 c!934771) b!5366140))

(assert (= (and b!5366143 (not c!934771)) b!5366147))

(assert (= (and b!5366140 res!2277314) b!5366144))

(assert (= (and b!5366147 c!934772) b!5366145))

(assert (= (and b!5366147 (not c!934772)) b!5366139))

(assert (= (and b!5366145 res!2277316) b!5366141))

(assert (= (and b!5366139 (not res!2277315)) b!5366146))

(assert (= (and b!5366146 res!2277317) b!5366142))

(assert (= (or b!5366141 b!5366142) bm!384027))

(assert (= (or b!5366145 b!5366146) bm!384028))

(assert (= (or b!5366144 bm!384028) bm!384026))

(declare-fun m!6394220 () Bool)

(assert (=> b!5366140 m!6394220))

(declare-fun m!6394222 () Bool)

(assert (=> bm!384026 m!6394222))

(declare-fun m!6394224 () Bool)

(assert (=> bm!384027 m!6394224))

(assert (=> bm!383816 d!1719017))

(assert (=> d!1718641 d!1718639))

(assert (=> d!1718641 d!1718637))

(declare-fun d!1719021 () Bool)

(assert (=> d!1719021 (= (matchR!7260 r!7292 s!2326) (matchRSpec!2178 r!7292 s!2326))))

(assert (=> d!1719021 true))

(declare-fun _$88!3657 () Unit!153818)

(assert (=> d!1719021 (= (choose!40296 r!7292 s!2326) _$88!3657)))

(declare-fun bs!1242862 () Bool)

(assert (= bs!1242862 d!1719021))

(assert (=> bs!1242862 m!6392626))

(assert (=> bs!1242862 m!6392624))

(assert (=> d!1718641 d!1719021))

(assert (=> d!1718641 d!1718465))

(declare-fun d!1719023 () Bool)

(assert (=> d!1719023 (= (Exists!2256 lambda!276530) (choose!40287 lambda!276530))))

(declare-fun bs!1242863 () Bool)

(assert (= bs!1242863 d!1719023))

(declare-fun m!6394226 () Bool)

(assert (=> bs!1242863 m!6394226))

(assert (=> d!1718569 d!1719023))

(declare-fun d!1719025 () Bool)

(assert (=> d!1719025 (= (Exists!2256 lambda!276531) (choose!40287 lambda!276531))))

(declare-fun bs!1242864 () Bool)

(assert (= bs!1242864 d!1719025))

(declare-fun m!6394228 () Bool)

(assert (=> bs!1242864 m!6394228))

(assert (=> d!1718569 d!1719025))

(declare-fun bs!1242868 () Bool)

(declare-fun d!1719027 () Bool)

(assert (= bs!1242868 (and d!1719027 d!1718903)))

(declare-fun lambda!276610 () Int)

(assert (=> bs!1242868 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276610 lambda!276580))))

(declare-fun bs!1242871 () Bool)

(assert (= bs!1242871 (and d!1719027 b!5365334)))

(assert (=> bs!1242871 (not (= lambda!276610 lambda!276551))))

(declare-fun bs!1242873 () Bool)

(assert (= bs!1242873 (and d!1719027 d!1718511)))

(assert (=> bs!1242873 (not (= lambda!276610 lambda!276517))))

(declare-fun bs!1242875 () Bool)

(assert (= bs!1242875 (and d!1719027 b!5365370)))

(assert (=> bs!1242875 (not (= lambda!276610 lambda!276552))))

(declare-fun bs!1242876 () Bool)

(assert (= bs!1242876 (and d!1719027 b!5364506)))

(assert (=> bs!1242876 (= lambda!276610 lambda!276478)))

(assert (=> bs!1242873 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276610 lambda!276516))))

(declare-fun bs!1242877 () Bool)

(assert (= bs!1242877 (and d!1719027 d!1718569)))

(assert (=> bs!1242877 (not (= lambda!276610 lambda!276531))))

(declare-fun bs!1242878 () Bool)

(assert (= bs!1242878 (and d!1719027 b!5365923)))

(assert (=> bs!1242878 (not (= lambda!276610 lambda!276586))))

(assert (=> bs!1242877 (= lambda!276610 lambda!276530)))

(declare-fun bs!1242879 () Bool)

(assert (= bs!1242879 (and d!1719027 b!5364528)))

(assert (=> bs!1242879 (not (= lambda!276610 lambda!276482))))

(declare-fun bs!1242880 () Bool)

(assert (= bs!1242880 (and d!1719027 b!5366038)))

(assert (=> bs!1242880 (not (= lambda!276610 lambda!276602))))

(declare-fun bs!1242881 () Bool)

(assert (= bs!1242881 (and d!1719027 b!5365331)))

(assert (=> bs!1242881 (not (= lambda!276610 lambda!276550))))

(declare-fun bs!1242882 () Bool)

(assert (= bs!1242882 (and d!1719027 b!5365926)))

(assert (=> bs!1242882 (not (= lambda!276610 lambda!276587))))

(declare-fun bs!1242883 () Bool)

(assert (= bs!1242883 (and d!1719027 d!1718767)))

(assert (=> bs!1242883 (not (= lambda!276610 lambda!276567))))

(assert (=> bs!1242883 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276610 lambda!276566))))

(declare-fun bs!1242884 () Bool)

(assert (= bs!1242884 (and d!1719027 d!1718819)))

(assert (=> bs!1242884 (= lambda!276610 lambda!276573)))

(declare-fun bs!1242885 () Bool)

(assert (= bs!1242885 (and d!1719027 b!5365373)))

(assert (=> bs!1242885 (not (= lambda!276610 lambda!276553))))

(declare-fun bs!1242886 () Bool)

(assert (= bs!1242886 (and d!1719027 b!5366080)))

(assert (=> bs!1242886 (not (= lambda!276610 lambda!276605))))

(declare-fun bs!1242887 () Bool)

(assert (= bs!1242887 (and d!1719027 b!5366077)))

(assert (=> bs!1242887 (not (= lambda!276610 lambda!276604))))

(declare-fun bs!1242888 () Bool)

(assert (= bs!1242888 (and d!1719027 b!5366035)))

(assert (=> bs!1242888 (not (= lambda!276610 lambda!276601))))

(assert (=> bs!1242879 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276610 lambda!276481))))

(declare-fun bs!1242889 () Bool)

(assert (= bs!1242889 (and d!1719027 d!1718531)))

(assert (=> bs!1242889 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276610 lambda!276523))))

(assert (=> bs!1242876 (not (= lambda!276610 lambda!276479))))

(declare-fun bs!1242890 () Bool)

(assert (= bs!1242890 (and d!1719027 d!1718587)))

(assert (=> bs!1242890 (= lambda!276610 lambda!276532)))

(assert (=> d!1719027 true))

(assert (=> d!1719027 true))

(assert (=> d!1719027 true))

(declare-fun lambda!276611 () Int)

(assert (=> bs!1242868 (not (= lambda!276611 lambda!276580))))

(assert (=> bs!1242871 (= lambda!276611 lambda!276551)))

(assert (=> bs!1242873 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276611 lambda!276517))))

(assert (=> bs!1242875 (not (= lambda!276611 lambda!276552))))

(declare-fun bs!1242891 () Bool)

(assert (= bs!1242891 d!1719027))

(assert (=> bs!1242891 (not (= lambda!276611 lambda!276610))))

(assert (=> bs!1242876 (not (= lambda!276611 lambda!276478))))

(assert (=> bs!1242873 (not (= lambda!276611 lambda!276516))))

(assert (=> bs!1242877 (= lambda!276611 lambda!276531)))

(assert (=> bs!1242878 (not (= lambda!276611 lambda!276586))))

(assert (=> bs!1242877 (not (= lambda!276611 lambda!276530))))

(assert (=> bs!1242879 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276611 lambda!276482))))

(assert (=> bs!1242880 (= (and (= (regOne!30662 r!7292) (regOne!30662 (regTwo!30663 r!7292))) (= (regTwo!30662 r!7292) (regTwo!30662 (regTwo!30663 r!7292)))) (= lambda!276611 lambda!276602))))

(assert (=> bs!1242881 (not (= lambda!276611 lambda!276550))))

(assert (=> bs!1242882 (= (and (= (regOne!30662 r!7292) (regOne!30662 (regTwo!30663 lt!2185527))) (= (regTwo!30662 r!7292) (regTwo!30662 (regTwo!30663 lt!2185527)))) (= lambda!276611 lambda!276587))))

(assert (=> bs!1242883 (= (= (regOne!30662 r!7292) lt!2185531) (= lambda!276611 lambda!276567))))

(assert (=> bs!1242883 (not (= lambda!276611 lambda!276566))))

(assert (=> bs!1242884 (not (= lambda!276611 lambda!276573))))

(assert (=> bs!1242885 (= (and (= (regOne!30662 r!7292) (regOne!30662 lt!2185527)) (= (regTwo!30662 r!7292) (regTwo!30662 lt!2185527))) (= lambda!276611 lambda!276553))))

(assert (=> bs!1242886 (= (and (= (regOne!30662 r!7292) (regOne!30662 (regOne!30663 lt!2185527))) (= (regTwo!30662 r!7292) (regTwo!30662 (regOne!30663 lt!2185527)))) (= lambda!276611 lambda!276605))))

(assert (=> bs!1242887 (not (= lambda!276611 lambda!276604))))

(assert (=> bs!1242888 (not (= lambda!276611 lambda!276601))))

(assert (=> bs!1242879 (not (= lambda!276611 lambda!276481))))

(assert (=> bs!1242889 (not (= lambda!276611 lambda!276523))))

(assert (=> bs!1242876 (= lambda!276611 lambda!276479)))

(assert (=> bs!1242890 (not (= lambda!276611 lambda!276532))))

(assert (=> d!1719027 true))

(assert (=> d!1719027 true))

(assert (=> d!1719027 true))

(assert (=> d!1719027 (= (Exists!2256 lambda!276610) (Exists!2256 lambda!276611))))

(assert (=> d!1719027 true))

(declare-fun _$90!1179 () Unit!153818)

(assert (=> d!1719027 (= (choose!40288 (regOne!30662 r!7292) (regTwo!30662 r!7292) s!2326) _$90!1179)))

(declare-fun m!6394260 () Bool)

(assert (=> bs!1242891 m!6394260))

(declare-fun m!6394262 () Bool)

(assert (=> bs!1242891 m!6394262))

(assert (=> d!1718569 d!1719027))

(assert (=> d!1718569 d!1718817))

(declare-fun b!5366175 () Bool)

(declare-fun e!3330085 () Bool)

(declare-fun lt!2185697 () List!61526)

(assert (=> b!5366175 (= e!3330085 (or (not (= (_2!35577 (get!21121 lt!2185608)) Nil!61402)) (= lt!2185697 (_1!35577 (get!21121 lt!2185608)))))))

(declare-fun d!1719039 () Bool)

(assert (=> d!1719039 e!3330085))

(declare-fun res!2277330 () Bool)

(assert (=> d!1719039 (=> (not res!2277330) (not e!3330085))))

(assert (=> d!1719039 (= res!2277330 (= (content!10965 lt!2185697) ((_ map or) (content!10965 (_1!35577 (get!21121 lt!2185608))) (content!10965 (_2!35577 (get!21121 lt!2185608))))))))

(declare-fun e!3330086 () List!61526)

(assert (=> d!1719039 (= lt!2185697 e!3330086)))

(declare-fun c!934780 () Bool)

(assert (=> d!1719039 (= c!934780 ((_ is Nil!61402) (_1!35577 (get!21121 lt!2185608))))))

(assert (=> d!1719039 (= (++!13378 (_1!35577 (get!21121 lt!2185608)) (_2!35577 (get!21121 lt!2185608))) lt!2185697)))

(declare-fun b!5366172 () Bool)

(assert (=> b!5366172 (= e!3330086 (_2!35577 (get!21121 lt!2185608)))))

(declare-fun b!5366173 () Bool)

(assert (=> b!5366173 (= e!3330086 (Cons!61402 (h!67850 (_1!35577 (get!21121 lt!2185608))) (++!13378 (t!374747 (_1!35577 (get!21121 lt!2185608))) (_2!35577 (get!21121 lt!2185608)))))))

(declare-fun b!5366174 () Bool)

(declare-fun res!2277329 () Bool)

(assert (=> b!5366174 (=> (not res!2277329) (not e!3330085))))

(assert (=> b!5366174 (= res!2277329 (= (size!39786 lt!2185697) (+ (size!39786 (_1!35577 (get!21121 lt!2185608))) (size!39786 (_2!35577 (get!21121 lt!2185608))))))))

(assert (= (and d!1719039 c!934780) b!5366172))

(assert (= (and d!1719039 (not c!934780)) b!5366173))

(assert (= (and d!1719039 res!2277330) b!5366174))

(assert (= (and b!5366174 res!2277329) b!5366175))

(declare-fun m!6394264 () Bool)

(assert (=> d!1719039 m!6394264))

(declare-fun m!6394266 () Bool)

(assert (=> d!1719039 m!6394266))

(declare-fun m!6394268 () Bool)

(assert (=> d!1719039 m!6394268))

(declare-fun m!6394270 () Bool)

(assert (=> b!5366173 m!6394270))

(declare-fun m!6394272 () Bool)

(assert (=> b!5366174 m!6394272))

(declare-fun m!6394274 () Bool)

(assert (=> b!5366174 m!6394274))

(declare-fun m!6394276 () Bool)

(assert (=> b!5366174 m!6394276))

(assert (=> b!5364981 d!1719039))

(assert (=> b!5364981 d!1718707))

(declare-fun d!1719043 () Bool)

(assert (=> d!1719043 (= (head!11511 (exprs!4959 (h!67849 zl!343))) (h!67848 (exprs!4959 (h!67849 zl!343))))))

(assert (=> b!5365230 d!1719043))

(assert (=> d!1718633 d!1718695))

(declare-fun bs!1242892 () Bool)

(declare-fun d!1719047 () Bool)

(assert (= bs!1242892 (and d!1719047 d!1718737)))

(declare-fun lambda!276612 () Int)

(assert (=> bs!1242892 (= lambda!276612 lambda!276560)))

(declare-fun bs!1242893 () Bool)

(assert (= bs!1242893 (and d!1719047 d!1718739)))

(assert (=> bs!1242893 (= lambda!276612 lambda!276561)))

(declare-fun bs!1242894 () Bool)

(assert (= bs!1242894 (and d!1719047 d!1718961)))

(assert (=> bs!1242894 (= lambda!276612 lambda!276600)))

(declare-fun bs!1242895 () Bool)

(assert (= bs!1242895 (and d!1719047 d!1718983)))

(assert (=> bs!1242895 (= lambda!276612 lambda!276603)))

(assert (=> d!1719047 (= (nullableZipper!1396 lt!2185530) (exists!2020 lt!2185530 lambda!276612))))

(declare-fun bs!1242896 () Bool)

(assert (= bs!1242896 d!1719047))

(declare-fun m!6394280 () Bool)

(assert (=> bs!1242896 m!6394280))

(assert (=> b!5365296 d!1719047))

(assert (=> b!5365105 d!1718791))

(assert (=> b!5365105 d!1718793))

(assert (=> b!5365105 d!1718795))

(declare-fun b!5366188 () Bool)

(declare-fun e!3330098 () Bool)

(declare-fun lt!2185699 () Option!15186)

(assert (=> b!5366188 (= e!3330098 (not (isDefined!11889 lt!2185699)))))

(declare-fun b!5366189 () Bool)

(declare-fun e!3330095 () Bool)

(assert (=> b!5366189 (= e!3330095 (matchR!7260 (regTwo!30662 r!7292) (t!374747 s!2326)))))

(declare-fun b!5366190 () Bool)

(declare-fun lt!2185700 () Unit!153818)

(declare-fun lt!2185698 () Unit!153818)

(assert (=> b!5366190 (= lt!2185700 lt!2185698)))

(assert (=> b!5366190 (= (++!13378 (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (Cons!61402 (h!67850 (t!374747 s!2326)) Nil!61402)) (t!374747 (t!374747 s!2326))) s!2326)))

(assert (=> b!5366190 (= lt!2185698 (lemmaMoveElementToOtherListKeepsConcatEq!1790 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (h!67850 (t!374747 s!2326)) (t!374747 (t!374747 s!2326)) s!2326))))

(declare-fun e!3330094 () Option!15186)

(assert (=> b!5366190 (= e!3330094 (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) (++!13378 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (Cons!61402 (h!67850 (t!374747 s!2326)) Nil!61402)) (t!374747 (t!374747 s!2326)) s!2326))))

(declare-fun b!5366191 () Bool)

(declare-fun res!2277333 () Bool)

(declare-fun e!3330096 () Bool)

(assert (=> b!5366191 (=> (not res!2277333) (not e!3330096))))

(assert (=> b!5366191 (= res!2277333 (matchR!7260 (regTwo!30662 r!7292) (_2!35577 (get!21121 lt!2185699))))))

(declare-fun b!5366192 () Bool)

(assert (=> b!5366192 (= e!3330096 (= (++!13378 (_1!35577 (get!21121 lt!2185699)) (_2!35577 (get!21121 lt!2185699))) s!2326))))

(declare-fun b!5366194 () Bool)

(declare-fun e!3330097 () Option!15186)

(assert (=> b!5366194 (= e!3330097 e!3330094)))

(declare-fun c!934787 () Bool)

(assert (=> b!5366194 (= c!934787 ((_ is Nil!61402) (t!374747 s!2326)))))

(declare-fun b!5366195 () Bool)

(assert (=> b!5366195 (= e!3330094 None!15185)))

(declare-fun b!5366196 () Bool)

(declare-fun res!2277336 () Bool)

(assert (=> b!5366196 (=> (not res!2277336) (not e!3330096))))

(assert (=> b!5366196 (= res!2277336 (matchR!7260 (regOne!30662 r!7292) (_1!35577 (get!21121 lt!2185699))))))

(declare-fun d!1719049 () Bool)

(assert (=> d!1719049 e!3330098))

(declare-fun res!2277334 () Bool)

(assert (=> d!1719049 (=> res!2277334 e!3330098)))

(assert (=> d!1719049 (= res!2277334 e!3330096)))

(declare-fun res!2277337 () Bool)

(assert (=> d!1719049 (=> (not res!2277337) (not e!3330096))))

(assert (=> d!1719049 (= res!2277337 (isDefined!11889 lt!2185699))))

(assert (=> d!1719049 (= lt!2185699 e!3330097)))

(declare-fun c!934786 () Bool)

(assert (=> d!1719049 (= c!934786 e!3330095)))

(declare-fun res!2277335 () Bool)

(assert (=> d!1719049 (=> (not res!2277335) (not e!3330095))))

(assert (=> d!1719049 (= res!2277335 (matchR!7260 (regOne!30662 r!7292) (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402))))))

(assert (=> d!1719049 (validRegex!6811 (regOne!30662 r!7292))))

(assert (=> d!1719049 (= (findConcatSeparation!1600 (regOne!30662 r!7292) (regTwo!30662 r!7292) (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326) s!2326) lt!2185699)))

(declare-fun b!5366193 () Bool)

(assert (=> b!5366193 (= e!3330097 (Some!15185 (tuple2!64549 (++!13378 Nil!61402 (Cons!61402 (h!67850 s!2326) Nil!61402)) (t!374747 s!2326))))))

(assert (= (and d!1719049 res!2277335) b!5366189))

(assert (= (and d!1719049 c!934786) b!5366193))

(assert (= (and d!1719049 (not c!934786)) b!5366194))

(assert (= (and b!5366194 c!934787) b!5366195))

(assert (= (and b!5366194 (not c!934787)) b!5366190))

(assert (= (and d!1719049 res!2277337) b!5366196))

(assert (= (and b!5366196 res!2277336) b!5366191))

(assert (= (and b!5366191 res!2277333) b!5366192))

(assert (= (and d!1719049 (not res!2277334)) b!5366188))

(assert (=> b!5366190 m!6393122))

(assert (=> b!5366190 m!6393740))

(assert (=> b!5366190 m!6393740))

(assert (=> b!5366190 m!6393742))

(assert (=> b!5366190 m!6393122))

(assert (=> b!5366190 m!6393744))

(assert (=> b!5366190 m!6393740))

(declare-fun m!6394282 () Bool)

(assert (=> b!5366190 m!6394282))

(declare-fun m!6394284 () Bool)

(assert (=> d!1719049 m!6394284))

(assert (=> d!1719049 m!6393122))

(declare-fun m!6394286 () Bool)

(assert (=> d!1719049 m!6394286))

(assert (=> d!1719049 m!6393240))

(declare-fun m!6394288 () Bool)

(assert (=> b!5366192 m!6394288))

(declare-fun m!6394290 () Bool)

(assert (=> b!5366192 m!6394290))

(assert (=> b!5366196 m!6394288))

(declare-fun m!6394294 () Bool)

(assert (=> b!5366196 m!6394294))

(assert (=> b!5366189 m!6393758))

(assert (=> b!5366188 m!6394284))

(assert (=> b!5366191 m!6394288))

(declare-fun m!6394300 () Bool)

(assert (=> b!5366191 m!6394300))

(assert (=> b!5365105 d!1719049))

(assert (=> bs!1242498 d!1718657))

(declare-fun bs!1242899 () Bool)

(declare-fun b!5366198 () Bool)

(assert (= bs!1242899 (and b!5366198 d!1718903)))

(declare-fun lambda!276614 () Int)

(assert (=> bs!1242899 (not (= lambda!276614 lambda!276580))))

(declare-fun bs!1242900 () Bool)

(assert (= bs!1242900 (and b!5366198 b!5365334)))

(assert (=> bs!1242900 (not (= lambda!276614 lambda!276551))))

(declare-fun bs!1242901 () Bool)

(assert (= bs!1242901 (and b!5366198 d!1718511)))

(assert (=> bs!1242901 (not (= lambda!276614 lambda!276517))))

(declare-fun bs!1242902 () Bool)

(assert (= bs!1242902 (and b!5366198 b!5365370)))

(assert (=> bs!1242902 (= (and (= (reg!15404 (regOne!30663 r!7292)) (reg!15404 lt!2185527)) (= (regOne!30663 r!7292) lt!2185527)) (= lambda!276614 lambda!276552))))

(declare-fun bs!1242903 () Bool)

(assert (= bs!1242903 (and b!5366198 d!1719027)))

(assert (=> bs!1242903 (not (= lambda!276614 lambda!276610))))

(declare-fun bs!1242904 () Bool)

(assert (= bs!1242904 (and b!5366198 b!5364506)))

(assert (=> bs!1242904 (not (= lambda!276614 lambda!276478))))

(assert (=> bs!1242901 (not (= lambda!276614 lambda!276516))))

(declare-fun bs!1242905 () Bool)

(assert (= bs!1242905 (and b!5366198 d!1718569)))

(assert (=> bs!1242905 (not (= lambda!276614 lambda!276531))))

(declare-fun bs!1242906 () Bool)

(assert (= bs!1242906 (and b!5366198 b!5365923)))

(assert (=> bs!1242906 (= (and (= (reg!15404 (regOne!30663 r!7292)) (reg!15404 (regTwo!30663 lt!2185527))) (= (regOne!30663 r!7292) (regTwo!30663 lt!2185527))) (= lambda!276614 lambda!276586))))

(assert (=> bs!1242905 (not (= lambda!276614 lambda!276530))))

(declare-fun bs!1242907 () Bool)

(assert (= bs!1242907 (and b!5366198 b!5364528)))

(assert (=> bs!1242907 (not (= lambda!276614 lambda!276482))))

(declare-fun bs!1242908 () Bool)

(assert (= bs!1242908 (and b!5366198 b!5366038)))

(assert (=> bs!1242908 (not (= lambda!276614 lambda!276602))))

(declare-fun bs!1242909 () Bool)

(assert (= bs!1242909 (and b!5366198 b!5365331)))

(assert (=> bs!1242909 (= (and (= (reg!15404 (regOne!30663 r!7292)) (reg!15404 r!7292)) (= (regOne!30663 r!7292) r!7292)) (= lambda!276614 lambda!276550))))

(declare-fun bs!1242910 () Bool)

(assert (= bs!1242910 (and b!5366198 b!5365926)))

(assert (=> bs!1242910 (not (= lambda!276614 lambda!276587))))

(declare-fun bs!1242911 () Bool)

(assert (= bs!1242911 (and b!5366198 d!1718767)))

(assert (=> bs!1242911 (not (= lambda!276614 lambda!276567))))

(assert (=> bs!1242911 (not (= lambda!276614 lambda!276566))))

(declare-fun bs!1242912 () Bool)

(assert (= bs!1242912 (and b!5366198 d!1718819)))

(assert (=> bs!1242912 (not (= lambda!276614 lambda!276573))))

(declare-fun bs!1242913 () Bool)

(assert (= bs!1242913 (and b!5366198 b!5365373)))

(assert (=> bs!1242913 (not (= lambda!276614 lambda!276553))))

(declare-fun bs!1242914 () Bool)

(assert (= bs!1242914 (and b!5366198 b!5366080)))

(assert (=> bs!1242914 (not (= lambda!276614 lambda!276605))))

(declare-fun bs!1242915 () Bool)

(assert (= bs!1242915 (and b!5366198 b!5366077)))

(assert (=> bs!1242915 (= (and (= (reg!15404 (regOne!30663 r!7292)) (reg!15404 (regOne!30663 lt!2185527))) (= (regOne!30663 r!7292) (regOne!30663 lt!2185527))) (= lambda!276614 lambda!276604))))

(assert (=> bs!1242903 (not (= lambda!276614 lambda!276611))))

(declare-fun bs!1242919 () Bool)

(assert (= bs!1242919 (and b!5366198 b!5366035)))

(assert (=> bs!1242919 (= (and (= (reg!15404 (regOne!30663 r!7292)) (reg!15404 (regTwo!30663 r!7292))) (= (regOne!30663 r!7292) (regTwo!30663 r!7292))) (= lambda!276614 lambda!276601))))

(assert (=> bs!1242907 (not (= lambda!276614 lambda!276481))))

(declare-fun bs!1242921 () Bool)

(assert (= bs!1242921 (and b!5366198 d!1718531)))

(assert (=> bs!1242921 (not (= lambda!276614 lambda!276523))))

(assert (=> bs!1242904 (not (= lambda!276614 lambda!276479))))

(declare-fun bs!1242922 () Bool)

(assert (= bs!1242922 (and b!5366198 d!1718587)))

(assert (=> bs!1242922 (not (= lambda!276614 lambda!276532))))

(assert (=> b!5366198 true))

(assert (=> b!5366198 true))

(declare-fun bs!1242923 () Bool)

(declare-fun b!5366201 () Bool)

(assert (= bs!1242923 (and b!5366201 d!1718903)))

(declare-fun lambda!276616 () Int)

(assert (=> bs!1242923 (not (= lambda!276616 lambda!276580))))

(declare-fun bs!1242925 () Bool)

(assert (= bs!1242925 (and b!5366201 b!5365334)))

(assert (=> bs!1242925 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 r!7292)) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276616 lambda!276551))))

(declare-fun bs!1242927 () Bool)

(assert (= bs!1242927 (and b!5366201 d!1718511)))

(assert (=> bs!1242927 (= (and (= (regOne!30662 (regOne!30663 r!7292)) lt!2185531) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276616 lambda!276517))))

(declare-fun bs!1242930 () Bool)

(assert (= bs!1242930 (and b!5366201 d!1719027)))

(assert (=> bs!1242930 (not (= lambda!276616 lambda!276610))))

(declare-fun bs!1242931 () Bool)

(assert (= bs!1242931 (and b!5366201 b!5364506)))

(assert (=> bs!1242931 (not (= lambda!276616 lambda!276478))))

(assert (=> bs!1242927 (not (= lambda!276616 lambda!276516))))

(declare-fun bs!1242933 () Bool)

(assert (= bs!1242933 (and b!5366201 d!1718569)))

(assert (=> bs!1242933 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 r!7292)) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276616 lambda!276531))))

(declare-fun bs!1242934 () Bool)

(assert (= bs!1242934 (and b!5366201 b!5365923)))

(assert (=> bs!1242934 (not (= lambda!276616 lambda!276586))))

(assert (=> bs!1242933 (not (= lambda!276616 lambda!276530))))

(declare-fun bs!1242935 () Bool)

(assert (= bs!1242935 (and b!5366201 b!5364528)))

(assert (=> bs!1242935 (= (and (= (regOne!30662 (regOne!30663 r!7292)) lt!2185531) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276616 lambda!276482))))

(declare-fun bs!1242938 () Bool)

(assert (= bs!1242938 (and b!5366201 b!5366038)))

(assert (=> bs!1242938 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 (regTwo!30663 r!7292))) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 (regTwo!30663 r!7292)))) (= lambda!276616 lambda!276602))))

(declare-fun bs!1242940 () Bool)

(assert (= bs!1242940 (and b!5366201 b!5365331)))

(assert (=> bs!1242940 (not (= lambda!276616 lambda!276550))))

(declare-fun bs!1242943 () Bool)

(assert (= bs!1242943 (and b!5366201 b!5365926)))

(assert (=> bs!1242943 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 (regTwo!30663 lt!2185527))) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 (regTwo!30663 lt!2185527)))) (= lambda!276616 lambda!276587))))

(declare-fun bs!1242946 () Bool)

(assert (= bs!1242946 (and b!5366201 d!1718767)))

(assert (=> bs!1242946 (= (and (= (regOne!30662 (regOne!30663 r!7292)) lt!2185531) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276616 lambda!276567))))

(assert (=> bs!1242946 (not (= lambda!276616 lambda!276566))))

(declare-fun bs!1242948 () Bool)

(assert (= bs!1242948 (and b!5366201 b!5366198)))

(assert (=> bs!1242948 (not (= lambda!276616 lambda!276614))))

(declare-fun bs!1242949 () Bool)

(assert (= bs!1242949 (and b!5366201 b!5365370)))

(assert (=> bs!1242949 (not (= lambda!276616 lambda!276552))))

(declare-fun bs!1242950 () Bool)

(assert (= bs!1242950 (and b!5366201 d!1718819)))

(assert (=> bs!1242950 (not (= lambda!276616 lambda!276573))))

(declare-fun bs!1242951 () Bool)

(assert (= bs!1242951 (and b!5366201 b!5365373)))

(assert (=> bs!1242951 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 lt!2185527)) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 lt!2185527))) (= lambda!276616 lambda!276553))))

(declare-fun bs!1242952 () Bool)

(assert (= bs!1242952 (and b!5366201 b!5366080)))

(assert (=> bs!1242952 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 (regOne!30663 lt!2185527))) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 (regOne!30663 lt!2185527)))) (= lambda!276616 lambda!276605))))

(declare-fun bs!1242953 () Bool)

(assert (= bs!1242953 (and b!5366201 b!5366077)))

(assert (=> bs!1242953 (not (= lambda!276616 lambda!276604))))

(assert (=> bs!1242930 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 r!7292)) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276616 lambda!276611))))

(declare-fun bs!1242954 () Bool)

(assert (= bs!1242954 (and b!5366201 b!5366035)))

(assert (=> bs!1242954 (not (= lambda!276616 lambda!276601))))

(assert (=> bs!1242935 (not (= lambda!276616 lambda!276481))))

(declare-fun bs!1242955 () Bool)

(assert (= bs!1242955 (and b!5366201 d!1718531)))

(assert (=> bs!1242955 (not (= lambda!276616 lambda!276523))))

(assert (=> bs!1242931 (= (and (= (regOne!30662 (regOne!30663 r!7292)) (regOne!30662 r!7292)) (= (regTwo!30662 (regOne!30663 r!7292)) (regTwo!30662 r!7292))) (= lambda!276616 lambda!276479))))

(declare-fun bs!1242956 () Bool)

(assert (= bs!1242956 (and b!5366201 d!1718587)))

(assert (=> bs!1242956 (not (= lambda!276616 lambda!276532))))

(assert (=> b!5366201 true))

(assert (=> b!5366201 true))

(declare-fun b!5366197 () Bool)

(declare-fun e!3330104 () Bool)

(declare-fun e!3330105 () Bool)

(assert (=> b!5366197 (= e!3330104 e!3330105)))

(declare-fun res!2277339 () Bool)

(assert (=> b!5366197 (= res!2277339 (matchRSpec!2178 (regOne!30663 (regOne!30663 r!7292)) s!2326))))

(assert (=> b!5366197 (=> res!2277339 e!3330105)))

(declare-fun e!3330100 () Bool)

(declare-fun call!384041 () Bool)

(assert (=> b!5366198 (= e!3330100 call!384041)))

(declare-fun b!5366199 () Bool)

(declare-fun e!3330099 () Bool)

(declare-fun call!384042 () Bool)

(assert (=> b!5366199 (= e!3330099 call!384042)))

(declare-fun b!5366200 () Bool)

(declare-fun c!934790 () Bool)

(assert (=> b!5366200 (= c!934790 ((_ is ElementMatch!15075) (regOne!30663 r!7292)))))

(declare-fun e!3330103 () Bool)

(declare-fun e!3330102 () Bool)

(assert (=> b!5366200 (= e!3330103 e!3330102)))

(declare-fun e!3330101 () Bool)

(assert (=> b!5366201 (= e!3330101 call!384041)))

(declare-fun b!5366202 () Bool)

(assert (=> b!5366202 (= e!3330105 (matchRSpec!2178 (regTwo!30663 (regOne!30663 r!7292)) s!2326))))

(declare-fun b!5366203 () Bool)

(declare-fun c!934789 () Bool)

(assert (=> b!5366203 (= c!934789 ((_ is Union!15075) (regOne!30663 r!7292)))))

(assert (=> b!5366203 (= e!3330102 e!3330104)))

(declare-fun b!5366204 () Bool)

(assert (=> b!5366204 (= e!3330102 (= s!2326 (Cons!61402 (c!934311 (regOne!30663 r!7292)) Nil!61402)))))

(declare-fun b!5366205 () Bool)

(assert (=> b!5366205 (= e!3330099 e!3330103)))

(declare-fun res!2277340 () Bool)

(assert (=> b!5366205 (= res!2277340 (not ((_ is EmptyLang!15075) (regOne!30663 r!7292))))))

(assert (=> b!5366205 (=> (not res!2277340) (not e!3330103))))

(declare-fun b!5366206 () Bool)

(assert (=> b!5366206 (= e!3330104 e!3330101)))

(declare-fun c!934791 () Bool)

(assert (=> b!5366206 (= c!934791 ((_ is Star!15075) (regOne!30663 r!7292)))))

(declare-fun b!5366207 () Bool)

(declare-fun res!2277338 () Bool)

(assert (=> b!5366207 (=> res!2277338 e!3330100)))

(assert (=> b!5366207 (= res!2277338 call!384042)))

(assert (=> b!5366207 (= e!3330101 e!3330100)))

(declare-fun bm!384037 () Bool)

(assert (=> bm!384037 (= call!384041 (Exists!2256 (ite c!934791 lambda!276614 lambda!276616)))))

(declare-fun bm!384036 () Bool)

(assert (=> bm!384036 (= call!384042 (isEmpty!33377 s!2326))))

(declare-fun d!1719051 () Bool)

(declare-fun c!934788 () Bool)

(assert (=> d!1719051 (= c!934788 ((_ is EmptyExpr!15075) (regOne!30663 r!7292)))))

(assert (=> d!1719051 (= (matchRSpec!2178 (regOne!30663 r!7292) s!2326) e!3330099)))

(assert (= (and d!1719051 c!934788) b!5366199))

(assert (= (and d!1719051 (not c!934788)) b!5366205))

(assert (= (and b!5366205 res!2277340) b!5366200))

(assert (= (and b!5366200 c!934790) b!5366204))

(assert (= (and b!5366200 (not c!934790)) b!5366203))

(assert (= (and b!5366203 c!934789) b!5366197))

(assert (= (and b!5366203 (not c!934789)) b!5366206))

(assert (= (and b!5366197 (not res!2277339)) b!5366202))

(assert (= (and b!5366206 c!934791) b!5366207))

(assert (= (and b!5366206 (not c!934791)) b!5366201))

(assert (= (and b!5366207 (not res!2277338)) b!5366198))

(assert (= (or b!5366198 b!5366201) bm!384037))

(assert (= (or b!5366199 b!5366207) bm!384036))

(declare-fun m!6394368 () Bool)

(assert (=> b!5366197 m!6394368))

(declare-fun m!6394370 () Bool)

(assert (=> b!5366202 m!6394370))

(declare-fun m!6394374 () Bool)

(assert (=> bm!384037 m!6394374))

(assert (=> bm!384036 m!6393408))

(assert (=> b!5365330 d!1719051))

(declare-fun bs!1242957 () Bool)

(declare-fun d!1719081 () Bool)

(assert (= bs!1242957 (and d!1719081 d!1718955)))

(declare-fun lambda!276619 () Int)

(assert (=> bs!1242957 (= lambda!276619 lambda!276597)))

(declare-fun bs!1242958 () Bool)

(assert (= bs!1242958 (and d!1719081 d!1718939)))

(assert (=> bs!1242958 (= lambda!276619 lambda!276591)))

(declare-fun bs!1242959 () Bool)

(assert (= bs!1242959 (and d!1719081 d!1719009)))

(assert (=> bs!1242959 (= lambda!276619 lambda!276608)))

(declare-fun bs!1242960 () Bool)

(assert (= bs!1242960 (and d!1719081 d!1718947)))

(assert (=> bs!1242960 (= lambda!276619 lambda!276592)))

(declare-fun bs!1242961 () Bool)

(assert (= bs!1242961 (and d!1719081 d!1718609)))

(assert (=> bs!1242961 (= lambda!276619 lambda!276535)))

(declare-fun bs!1242962 () Bool)

(assert (= bs!1242962 (and d!1719081 d!1718621)))

(assert (=> bs!1242962 (= lambda!276619 lambda!276542)))

(declare-fun bs!1242963 () Bool)

(assert (= bs!1242963 (and d!1719081 d!1718613)))

(assert (=> bs!1242963 (= lambda!276619 lambda!276536)))

(declare-fun bs!1242964 () Bool)

(assert (= bs!1242964 (and d!1719081 d!1718771)))

(assert (=> bs!1242964 (= lambda!276619 lambda!276568)))

(declare-fun bs!1242965 () Bool)

(assert (= bs!1242965 (and d!1719081 d!1718875)))

(assert (=> bs!1242965 (= lambda!276619 lambda!276578)))

(declare-fun bs!1242966 () Bool)

(assert (= bs!1242966 (and d!1719081 d!1718809)))

(assert (=> bs!1242966 (= lambda!276619 lambda!276569)))

(declare-fun bs!1242967 () Bool)

(assert (= bs!1242967 (and d!1719081 d!1718623)))

(assert (=> bs!1242967 (= lambda!276619 lambda!276545)))

(declare-fun bs!1242968 () Bool)

(assert (= bs!1242968 (and d!1719081 d!1718951)))

(assert (=> bs!1242968 (= lambda!276619 lambda!276595)))

(declare-fun bs!1242969 () Bool)

(assert (= bs!1242969 (and d!1719081 d!1718813)))

(assert (=> bs!1242969 (= lambda!276619 lambda!276570)))

(declare-fun bs!1242970 () Bool)

(assert (= bs!1242970 (and d!1719081 d!1718615)))

(assert (=> bs!1242970 (= lambda!276619 lambda!276539)))

(declare-fun bs!1242971 () Bool)

(assert (= bs!1242971 (and d!1719081 b!5364523)))

(assert (=> bs!1242971 (= lambda!276619 lambda!276483)))

(assert (=> d!1719081 (= (inv!80934 (h!67849 (t!374746 zl!343))) (forall!14483 (exprs!4959 (h!67849 (t!374746 zl!343))) lambda!276619))))

(declare-fun bs!1242972 () Bool)

(assert (= bs!1242972 d!1719081))

(declare-fun m!6394392 () Bool)

(assert (=> bs!1242972 m!6394392))

(assert (=> b!5365448 d!1719081))

(declare-fun d!1719085 () Bool)

(assert (=> d!1719085 (= (nullable!5244 r!7292) (nullableFct!1548 r!7292))))

(declare-fun bs!1242973 () Bool)

(assert (= bs!1242973 d!1719085))

(declare-fun m!6394394 () Bool)

(assert (=> bs!1242973 m!6394394))

(assert (=> b!5365348 d!1719085))

(declare-fun d!1719087 () Bool)

(assert (=> d!1719087 (= (Exists!2256 (ite c!934553 lambda!276552 lambda!276553)) (choose!40287 (ite c!934553 lambda!276552 lambda!276553)))))

(declare-fun bs!1242974 () Bool)

(assert (= bs!1242974 d!1719087))

(declare-fun m!6394396 () Bool)

(assert (=> bs!1242974 m!6394396))

(assert (=> bm!383878 d!1719087))

(assert (=> d!1718611 d!1718897))

(declare-fun b!5366258 () Bool)

(declare-fun res!2277354 () Bool)

(declare-fun e!3330135 () Bool)

(assert (=> b!5366258 (=> res!2277354 e!3330135)))

(assert (=> b!5366258 (= res!2277354 (not ((_ is Concat!23920) (regTwo!30662 r!7292))))))

(declare-fun e!3330134 () Bool)

(assert (=> b!5366258 (= e!3330134 e!3330135)))

(declare-fun b!5366259 () Bool)

(declare-fun e!3330133 () Bool)

(declare-fun e!3330136 () Bool)

(assert (=> b!5366259 (= e!3330133 e!3330136)))

(declare-fun res!2277353 () Bool)

(assert (=> b!5366259 (= res!2277353 (not (nullable!5244 (reg!15404 (regTwo!30662 r!7292)))))))

(assert (=> b!5366259 (=> (not res!2277353) (not e!3330136))))

(declare-fun b!5366260 () Bool)

(declare-fun e!3330137 () Bool)

(declare-fun call!384058 () Bool)

(assert (=> b!5366260 (= e!3330137 call!384058)))

(declare-fun b!5366261 () Bool)

(declare-fun e!3330138 () Bool)

(assert (=> b!5366261 (= e!3330138 call!384058)))

(declare-fun c!934812 () Bool)

(declare-fun bm!384051 () Bool)

(declare-fun c!934811 () Bool)

(declare-fun call!384056 () Bool)

(assert (=> bm!384051 (= call!384056 (validRegex!6811 (ite c!934811 (reg!15404 (regTwo!30662 r!7292)) (ite c!934812 (regOne!30663 (regTwo!30662 r!7292)) (regOne!30662 (regTwo!30662 r!7292))))))))

(declare-fun b!5366262 () Bool)

(declare-fun e!3330139 () Bool)

(assert (=> b!5366262 (= e!3330139 e!3330133)))

(assert (=> b!5366262 (= c!934811 ((_ is Star!15075) (regTwo!30662 r!7292)))))

(declare-fun b!5366263 () Bool)

(assert (=> b!5366263 (= e!3330136 call!384056)))

(declare-fun d!1719089 () Bool)

(declare-fun res!2277357 () Bool)

(assert (=> d!1719089 (=> res!2277357 e!3330139)))

(assert (=> d!1719089 (= res!2277357 ((_ is ElementMatch!15075) (regTwo!30662 r!7292)))))

(assert (=> d!1719089 (= (validRegex!6811 (regTwo!30662 r!7292)) e!3330139)))

(declare-fun bm!384052 () Bool)

(assert (=> bm!384052 (= call!384058 (validRegex!6811 (ite c!934812 (regTwo!30663 (regTwo!30662 r!7292)) (regTwo!30662 (regTwo!30662 r!7292)))))))

(declare-fun b!5366264 () Bool)

(declare-fun res!2277355 () Bool)

(assert (=> b!5366264 (=> (not res!2277355) (not e!3330137))))

(declare-fun call!384057 () Bool)

(assert (=> b!5366264 (= res!2277355 call!384057)))

(assert (=> b!5366264 (= e!3330134 e!3330137)))

(declare-fun bm!384053 () Bool)

(assert (=> bm!384053 (= call!384057 call!384056)))

(declare-fun b!5366265 () Bool)

(assert (=> b!5366265 (= e!3330135 e!3330138)))

(declare-fun res!2277356 () Bool)

(assert (=> b!5366265 (=> (not res!2277356) (not e!3330138))))

(assert (=> b!5366265 (= res!2277356 call!384057)))

(declare-fun b!5366266 () Bool)

(assert (=> b!5366266 (= e!3330133 e!3330134)))

(assert (=> b!5366266 (= c!934812 ((_ is Union!15075) (regTwo!30662 r!7292)))))

(assert (= (and d!1719089 (not res!2277357)) b!5366262))

(assert (= (and b!5366262 c!934811) b!5366259))

(assert (= (and b!5366262 (not c!934811)) b!5366266))

(assert (= (and b!5366259 res!2277353) b!5366263))

(assert (= (and b!5366266 c!934812) b!5366264))

(assert (= (and b!5366266 (not c!934812)) b!5366258))

(assert (= (and b!5366264 res!2277355) b!5366260))

(assert (= (and b!5366258 (not res!2277354)) b!5366265))

(assert (= (and b!5366265 res!2277356) b!5366261))

(assert (= (or b!5366260 b!5366261) bm!384052))

(assert (= (or b!5366264 b!5366265) bm!384053))

(assert (= (or b!5366263 bm!384053) bm!384051))

(declare-fun m!6394398 () Bool)

(assert (=> b!5366259 m!6394398))

(declare-fun m!6394400 () Bool)

(assert (=> bm!384051 m!6394400))

(declare-fun m!6394402 () Bool)

(assert (=> bm!384052 m!6394402))

(assert (=> d!1718611 d!1719089))

(declare-fun b!5366271 () Bool)

(declare-fun e!3330147 () Bool)

(assert (=> b!5366271 (= e!3330147 (= (head!11510 (_1!35577 (get!21121 lt!2185608))) (c!934311 lt!2185531)))))

(declare-fun b!5366272 () Bool)

(declare-fun res!2277366 () Bool)

(assert (=> b!5366272 (=> (not res!2277366) (not e!3330147))))

(declare-fun call!384059 () Bool)

(assert (=> b!5366272 (= res!2277366 (not call!384059))))

(declare-fun b!5366273 () Bool)

(declare-fun res!2277369 () Bool)

(declare-fun e!3330144 () Bool)

(assert (=> b!5366273 (=> res!2277369 e!3330144)))

(assert (=> b!5366273 (= res!2277369 e!3330147)))

(declare-fun res!2277363 () Bool)

(assert (=> b!5366273 (=> (not res!2277363) (not e!3330147))))

(declare-fun lt!2185703 () Bool)

(assert (=> b!5366273 (= res!2277363 lt!2185703)))

(declare-fun b!5366274 () Bool)

(declare-fun e!3330148 () Bool)

(declare-fun e!3330145 () Bool)

(assert (=> b!5366274 (= e!3330148 e!3330145)))

(declare-fun c!934815 () Bool)

(assert (=> b!5366274 (= c!934815 ((_ is EmptyLang!15075) lt!2185531))))

(declare-fun b!5366275 () Bool)

(declare-fun e!3330149 () Bool)

(declare-fun e!3330146 () Bool)

(assert (=> b!5366275 (= e!3330149 e!3330146)))

(declare-fun res!2277362 () Bool)

(assert (=> b!5366275 (=> res!2277362 e!3330146)))

(assert (=> b!5366275 (= res!2277362 call!384059)))

(declare-fun b!5366276 () Bool)

(assert (=> b!5366276 (= e!3330146 (not (= (head!11510 (_1!35577 (get!21121 lt!2185608))) (c!934311 lt!2185531))))))

(declare-fun b!5366277 () Bool)

(declare-fun e!3330150 () Bool)

(assert (=> b!5366277 (= e!3330150 (matchR!7260 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 (get!21121 lt!2185608)))) (tail!10607 (_1!35577 (get!21121 lt!2185608)))))))

(declare-fun b!5366279 () Bool)

(declare-fun res!2277367 () Bool)

(assert (=> b!5366279 (=> res!2277367 e!3330146)))

(assert (=> b!5366279 (= res!2277367 (not (isEmpty!33377 (tail!10607 (_1!35577 (get!21121 lt!2185608))))))))

(declare-fun b!5366280 () Bool)

(assert (=> b!5366280 (= e!3330144 e!3330149)))

(declare-fun res!2277368 () Bool)

(assert (=> b!5366280 (=> (not res!2277368) (not e!3330149))))

(assert (=> b!5366280 (= res!2277368 (not lt!2185703))))

(declare-fun bm!384054 () Bool)

(assert (=> bm!384054 (= call!384059 (isEmpty!33377 (_1!35577 (get!21121 lt!2185608))))))

(declare-fun b!5366281 () Bool)

(assert (=> b!5366281 (= e!3330145 (not lt!2185703))))

(declare-fun b!5366282 () Bool)

(assert (=> b!5366282 (= e!3330148 (= lt!2185703 call!384059))))

(declare-fun b!5366283 () Bool)

(declare-fun res!2277364 () Bool)

(assert (=> b!5366283 (=> res!2277364 e!3330144)))

(assert (=> b!5366283 (= res!2277364 (not ((_ is ElementMatch!15075) lt!2185531)))))

(assert (=> b!5366283 (= e!3330145 e!3330144)))

(declare-fun b!5366284 () Bool)

(declare-fun res!2277365 () Bool)

(assert (=> b!5366284 (=> (not res!2277365) (not e!3330147))))

(assert (=> b!5366284 (= res!2277365 (isEmpty!33377 (tail!10607 (_1!35577 (get!21121 lt!2185608)))))))

(declare-fun d!1719091 () Bool)

(assert (=> d!1719091 e!3330148))

(declare-fun c!934814 () Bool)

(assert (=> d!1719091 (= c!934814 ((_ is EmptyExpr!15075) lt!2185531))))

(assert (=> d!1719091 (= lt!2185703 e!3330150)))

(declare-fun c!934813 () Bool)

(assert (=> d!1719091 (= c!934813 (isEmpty!33377 (_1!35577 (get!21121 lt!2185608))))))

(assert (=> d!1719091 (validRegex!6811 lt!2185531)))

(assert (=> d!1719091 (= (matchR!7260 lt!2185531 (_1!35577 (get!21121 lt!2185608))) lt!2185703)))

(declare-fun b!5366278 () Bool)

(assert (=> b!5366278 (= e!3330150 (nullable!5244 lt!2185531))))

(assert (= (and d!1719091 c!934813) b!5366278))

(assert (= (and d!1719091 (not c!934813)) b!5366277))

(assert (= (and d!1719091 c!934814) b!5366282))

(assert (= (and d!1719091 (not c!934814)) b!5366274))

(assert (= (and b!5366274 c!934815) b!5366281))

(assert (= (and b!5366274 (not c!934815)) b!5366283))

(assert (= (and b!5366283 (not res!2277364)) b!5366273))

(assert (= (and b!5366273 res!2277363) b!5366272))

(assert (= (and b!5366272 res!2277366) b!5366284))

(assert (= (and b!5366284 res!2277365) b!5366271))

(assert (= (and b!5366273 (not res!2277369)) b!5366280))

(assert (= (and b!5366280 res!2277368) b!5366275))

(assert (= (and b!5366275 (not res!2277362)) b!5366279))

(assert (= (and b!5366279 (not res!2277367)) b!5366276))

(assert (= (or b!5366282 b!5366272 b!5366275) bm!384054))

(declare-fun m!6394404 () Bool)

(assert (=> bm!384054 m!6394404))

(assert (=> b!5366278 m!6393220))

(declare-fun m!6394406 () Bool)

(assert (=> b!5366284 m!6394406))

(assert (=> b!5366284 m!6394406))

(declare-fun m!6394408 () Bool)

(assert (=> b!5366284 m!6394408))

(declare-fun m!6394410 () Bool)

(assert (=> b!5366277 m!6394410))

(assert (=> b!5366277 m!6394410))

(declare-fun m!6394412 () Bool)

(assert (=> b!5366277 m!6394412))

(assert (=> b!5366277 m!6394406))

(assert (=> b!5366277 m!6394412))

(assert (=> b!5366277 m!6394406))

(declare-fun m!6394416 () Bool)

(assert (=> b!5366277 m!6394416))

(assert (=> b!5366276 m!6394410))

(assert (=> b!5366279 m!6394406))

(assert (=> b!5366279 m!6394406))

(assert (=> b!5366279 m!6394408))

(assert (=> d!1719091 m!6394404))

(assert (=> d!1719091 m!6393084))

(assert (=> b!5366271 m!6394410))

(assert (=> b!5364985 d!1719091))

(assert (=> b!5364985 d!1718707))

(assert (=> b!5365196 d!1718867))

(declare-fun d!1719095 () Bool)

(assert (=> d!1719095 (= (head!11511 (unfocusZipperList!517 zl!343)) (h!67848 (unfocusZipperList!517 zl!343)))))

(assert (=> b!5365269 d!1719095))

(assert (=> d!1718659 d!1718655))

(declare-fun d!1719097 () Bool)

(assert (=> d!1719097 (= (flatMap!802 lt!2185512 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185509))))

(assert (=> d!1719097 true))

(declare-fun _$13!1933 () Unit!153818)

(assert (=> d!1719097 (= (choose!40286 lt!2185512 lt!2185509 lambda!276480) _$13!1933)))

(declare-fun b_lambda!205727 () Bool)

(assert (=> (not b_lambda!205727) (not d!1719097)))

(declare-fun bs!1242975 () Bool)

(assert (= bs!1242975 d!1719097))

(assert (=> bs!1242975 m!6392696))

(assert (=> bs!1242975 m!6393476))

(assert (=> d!1718659 d!1719097))

(assert (=> bm!383840 d!1718607))

(declare-fun d!1719099 () Bool)

(assert (=> d!1719099 true))

(assert (=> d!1719099 true))

(declare-fun res!2277374 () Bool)

(assert (=> d!1719099 (= (choose!40287 lambda!276481) res!2277374)))

(assert (=> d!1718543 d!1719099))

(assert (=> b!5365204 d!1718889))

(assert (=> b!5365204 d!1718869))

(declare-fun d!1719101 () Bool)

(declare-fun c!934816 () Bool)

(assert (=> d!1719101 (= c!934816 (isEmpty!33377 (tail!10607 (t!374747 s!2326))))))

(declare-fun e!3330157 () Bool)

(assert (=> d!1719101 (= (matchZipper!1319 (derivationStepZipper!1314 lt!2185496 (head!11510 (t!374747 s!2326))) (tail!10607 (t!374747 s!2326))) e!3330157)))

(declare-fun b!5366291 () Bool)

(assert (=> b!5366291 (= e!3330157 (nullableZipper!1396 (derivationStepZipper!1314 lt!2185496 (head!11510 (t!374747 s!2326)))))))

(declare-fun b!5366292 () Bool)

(assert (=> b!5366292 (= e!3330157 (matchZipper!1319 (derivationStepZipper!1314 (derivationStepZipper!1314 lt!2185496 (head!11510 (t!374747 s!2326))) (head!11510 (tail!10607 (t!374747 s!2326)))) (tail!10607 (tail!10607 (t!374747 s!2326)))))))

(assert (= (and d!1719101 c!934816) b!5366291))

(assert (= (and d!1719101 (not c!934816)) b!5366292))

(assert (=> d!1719101 m!6393310))

(assert (=> d!1719101 m!6393830))

(assert (=> b!5366291 m!6393308))

(declare-fun m!6394420 () Bool)

(assert (=> b!5366291 m!6394420))

(assert (=> b!5366292 m!6393310))

(assert (=> b!5366292 m!6393834))

(assert (=> b!5366292 m!6393308))

(assert (=> b!5366292 m!6393834))

(declare-fun m!6394422 () Bool)

(assert (=> b!5366292 m!6394422))

(assert (=> b!5366292 m!6393310))

(assert (=> b!5366292 m!6393838))

(assert (=> b!5366292 m!6394422))

(assert (=> b!5366292 m!6393838))

(declare-fun m!6394424 () Bool)

(assert (=> b!5366292 m!6394424))

(assert (=> b!5365195 d!1719101))

(declare-fun bs!1242976 () Bool)

(declare-fun d!1719103 () Bool)

(assert (= bs!1242976 (and d!1719103 d!1718663)))

(declare-fun lambda!276620 () Int)

(assert (=> bs!1242976 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276620 lambda!276557))))

(declare-fun bs!1242977 () Bool)

(assert (= bs!1242977 (and d!1719103 d!1718661)))

(assert (=> bs!1242977 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276620 lambda!276556))))

(declare-fun bs!1242978 () Bool)

(assert (= bs!1242978 (and d!1719103 b!5364515)))

(assert (=> bs!1242978 (= (= (head!11510 (t!374747 s!2326)) (h!67850 s!2326)) (= lambda!276620 lambda!276480))))

(declare-fun bs!1242979 () Bool)

(assert (= bs!1242979 (and d!1719103 d!1718831)))

(assert (=> bs!1242979 (= lambda!276620 lambda!276574)))

(declare-fun bs!1242980 () Bool)

(assert (= bs!1242980 (and d!1719103 d!1718885)))

(assert (=> bs!1242980 (= lambda!276620 lambda!276579)))

(declare-fun bs!1242981 () Bool)

(assert (= bs!1242981 (and d!1719103 d!1718931)))

(assert (=> bs!1242981 (= lambda!276620 lambda!276589)))

(assert (=> d!1719103 true))

(assert (=> d!1719103 (= (derivationStepZipper!1314 lt!2185496 (head!11510 (t!374747 s!2326))) (flatMap!802 lt!2185496 lambda!276620))))

(declare-fun bs!1242982 () Bool)

(assert (= bs!1242982 d!1719103))

(declare-fun m!6394426 () Bool)

(assert (=> bs!1242982 m!6394426))

(assert (=> b!5365195 d!1719103))

(assert (=> b!5365195 d!1718833))

(assert (=> b!5365195 d!1718835))

(declare-fun b!5366298 () Bool)

(declare-fun e!3330166 () Bool)

(assert (=> b!5366298 (= e!3330166 (= (head!11510 (tail!10607 (_1!35577 lt!2185500))) (c!934311 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500))))))))

(declare-fun b!5366299 () Bool)

(declare-fun res!2277383 () Bool)

(assert (=> b!5366299 (=> (not res!2277383) (not e!3330166))))

(declare-fun call!384060 () Bool)

(assert (=> b!5366299 (= res!2277383 (not call!384060))))

(declare-fun b!5366300 () Bool)

(declare-fun res!2277386 () Bool)

(declare-fun e!3330163 () Bool)

(assert (=> b!5366300 (=> res!2277386 e!3330163)))

(assert (=> b!5366300 (= res!2277386 e!3330166)))

(declare-fun res!2277380 () Bool)

(assert (=> b!5366300 (=> (not res!2277380) (not e!3330166))))

(declare-fun lt!2185704 () Bool)

(assert (=> b!5366300 (= res!2277380 lt!2185704)))

(declare-fun b!5366301 () Bool)

(declare-fun e!3330167 () Bool)

(declare-fun e!3330164 () Bool)

(assert (=> b!5366301 (= e!3330167 e!3330164)))

(declare-fun c!934819 () Bool)

(assert (=> b!5366301 (= c!934819 ((_ is EmptyLang!15075) (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500)))))))

(declare-fun b!5366302 () Bool)

(declare-fun e!3330168 () Bool)

(declare-fun e!3330165 () Bool)

(assert (=> b!5366302 (= e!3330168 e!3330165)))

(declare-fun res!2277379 () Bool)

(assert (=> b!5366302 (=> res!2277379 e!3330165)))

(assert (=> b!5366302 (= res!2277379 call!384060)))

(declare-fun b!5366303 () Bool)

(assert (=> b!5366303 (= e!3330165 (not (= (head!11510 (tail!10607 (_1!35577 lt!2185500))) (c!934311 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500)))))))))

(declare-fun b!5366304 () Bool)

(declare-fun e!3330169 () Bool)

(assert (=> b!5366304 (= e!3330169 (matchR!7260 (derivativeStep!4217 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500))) (head!11510 (tail!10607 (_1!35577 lt!2185500)))) (tail!10607 (tail!10607 (_1!35577 lt!2185500)))))))

(declare-fun b!5366306 () Bool)

(declare-fun res!2277384 () Bool)

(assert (=> b!5366306 (=> res!2277384 e!3330165)))

(assert (=> b!5366306 (= res!2277384 (not (isEmpty!33377 (tail!10607 (tail!10607 (_1!35577 lt!2185500))))))))

(declare-fun b!5366307 () Bool)

(assert (=> b!5366307 (= e!3330163 e!3330168)))

(declare-fun res!2277385 () Bool)

(assert (=> b!5366307 (=> (not res!2277385) (not e!3330168))))

(assert (=> b!5366307 (= res!2277385 (not lt!2185704))))

(declare-fun bm!384055 () Bool)

(assert (=> bm!384055 (= call!384060 (isEmpty!33377 (tail!10607 (_1!35577 lt!2185500))))))

(declare-fun b!5366308 () Bool)

(assert (=> b!5366308 (= e!3330164 (not lt!2185704))))

(declare-fun b!5366309 () Bool)

(assert (=> b!5366309 (= e!3330167 (= lt!2185704 call!384060))))

(declare-fun b!5366310 () Bool)

(declare-fun res!2277381 () Bool)

(assert (=> b!5366310 (=> res!2277381 e!3330163)))

(assert (=> b!5366310 (= res!2277381 (not ((_ is ElementMatch!15075) (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500))))))))

(assert (=> b!5366310 (= e!3330164 e!3330163)))

(declare-fun b!5366311 () Bool)

(declare-fun res!2277382 () Bool)

(assert (=> b!5366311 (=> (not res!2277382) (not e!3330166))))

(assert (=> b!5366311 (= res!2277382 (isEmpty!33377 (tail!10607 (tail!10607 (_1!35577 lt!2185500)))))))

(declare-fun d!1719105 () Bool)

(assert (=> d!1719105 e!3330167))

(declare-fun c!934818 () Bool)

(assert (=> d!1719105 (= c!934818 ((_ is EmptyExpr!15075) (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500)))))))

(assert (=> d!1719105 (= lt!2185704 e!3330169)))

(declare-fun c!934817 () Bool)

(assert (=> d!1719105 (= c!934817 (isEmpty!33377 (tail!10607 (_1!35577 lt!2185500))))))

(assert (=> d!1719105 (validRegex!6811 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500))))))

(assert (=> d!1719105 (= (matchR!7260 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500))) (tail!10607 (_1!35577 lt!2185500))) lt!2185704)))

(declare-fun b!5366305 () Bool)

(assert (=> b!5366305 (= e!3330169 (nullable!5244 (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500)))))))

(assert (= (and d!1719105 c!934817) b!5366305))

(assert (= (and d!1719105 (not c!934817)) b!5366304))

(assert (= (and d!1719105 c!934818) b!5366309))

(assert (= (and d!1719105 (not c!934818)) b!5366301))

(assert (= (and b!5366301 c!934819) b!5366308))

(assert (= (and b!5366301 (not c!934819)) b!5366310))

(assert (= (and b!5366310 (not res!2277381)) b!5366300))

(assert (= (and b!5366300 res!2277380) b!5366299))

(assert (= (and b!5366299 res!2277383) b!5366311))

(assert (= (and b!5366311 res!2277382) b!5366298))

(assert (= (and b!5366300 (not res!2277386)) b!5366307))

(assert (= (and b!5366307 res!2277385) b!5366302))

(assert (= (and b!5366302 (not res!2277379)) b!5366306))

(assert (= (and b!5366306 (not res!2277384)) b!5366303))

(assert (= (or b!5366309 b!5366299 b!5366302) bm!384055))

(assert (=> bm!384055 m!6393222))

(assert (=> bm!384055 m!6393224))

(assert (=> b!5366305 m!6393228))

(declare-fun m!6394448 () Bool)

(assert (=> b!5366305 m!6394448))

(assert (=> b!5366311 m!6393222))

(declare-fun m!6394450 () Bool)

(assert (=> b!5366311 m!6394450))

(assert (=> b!5366311 m!6394450))

(declare-fun m!6394452 () Bool)

(assert (=> b!5366311 m!6394452))

(assert (=> b!5366304 m!6393222))

(declare-fun m!6394454 () Bool)

(assert (=> b!5366304 m!6394454))

(assert (=> b!5366304 m!6393228))

(assert (=> b!5366304 m!6394454))

(declare-fun m!6394456 () Bool)

(assert (=> b!5366304 m!6394456))

(assert (=> b!5366304 m!6393222))

(assert (=> b!5366304 m!6394450))

(assert (=> b!5366304 m!6394456))

(assert (=> b!5366304 m!6394450))

(declare-fun m!6394458 () Bool)

(assert (=> b!5366304 m!6394458))

(assert (=> b!5366303 m!6393222))

(assert (=> b!5366303 m!6394454))

(assert (=> b!5366306 m!6393222))

(assert (=> b!5366306 m!6394450))

(assert (=> b!5366306 m!6394450))

(assert (=> b!5366306 m!6394452))

(assert (=> d!1719105 m!6393222))

(assert (=> d!1719105 m!6393224))

(assert (=> d!1719105 m!6393228))

(declare-fun m!6394472 () Bool)

(assert (=> d!1719105 m!6394472))

(assert (=> b!5366298 m!6393222))

(assert (=> b!5366298 m!6394454))

(assert (=> b!5365088 d!1719105))

(declare-fun b!5366320 () Bool)

(declare-fun e!3330176 () Regex!15075)

(assert (=> b!5366320 (= e!3330176 (ite (= (head!11510 (_1!35577 lt!2185500)) (c!934311 lt!2185531)) EmptyExpr!15075 EmptyLang!15075))))

(declare-fun b!5366322 () Bool)

(declare-fun e!3330175 () Regex!15075)

(assert (=> b!5366322 (= e!3330175 e!3330176)))

(declare-fun c!934823 () Bool)

(assert (=> b!5366322 (= c!934823 ((_ is ElementMatch!15075) lt!2185531))))

(declare-fun call!384063 () Regex!15075)

(declare-fun b!5366323 () Bool)

(declare-fun e!3330177 () Regex!15075)

(declare-fun call!384061 () Regex!15075)

(assert (=> b!5366323 (= e!3330177 (Union!15075 (Concat!23920 call!384063 (regTwo!30662 lt!2185531)) call!384061))))

(declare-fun b!5366324 () Bool)

(declare-fun c!934825 () Bool)

(assert (=> b!5366324 (= c!934825 ((_ is Union!15075) lt!2185531))))

(declare-fun e!3330178 () Regex!15075)

(assert (=> b!5366324 (= e!3330176 e!3330178)))

(declare-fun bm!384056 () Bool)

(declare-fun call!384062 () Regex!15075)

(assert (=> bm!384056 (= call!384061 call!384062)))

(declare-fun bm!384057 () Bool)

(declare-fun call!384064 () Regex!15075)

(assert (=> bm!384057 (= call!384062 call!384064)))

(declare-fun b!5366325 () Bool)

(assert (=> b!5366325 (= e!3330178 (Union!15075 call!384063 call!384064))))

(declare-fun b!5366326 () Bool)

(declare-fun c!934822 () Bool)

(assert (=> b!5366326 (= c!934822 (nullable!5244 (regOne!30662 lt!2185531)))))

(declare-fun e!3330174 () Regex!15075)

(assert (=> b!5366326 (= e!3330174 e!3330177)))

(declare-fun b!5366327 () Bool)

(assert (=> b!5366327 (= e!3330175 EmptyLang!15075)))

(declare-fun d!1719113 () Bool)

(declare-fun lt!2185707 () Regex!15075)

(assert (=> d!1719113 (validRegex!6811 lt!2185707)))

(assert (=> d!1719113 (= lt!2185707 e!3330175)))

(declare-fun c!934826 () Bool)

(assert (=> d!1719113 (= c!934826 (or ((_ is EmptyExpr!15075) lt!2185531) ((_ is EmptyLang!15075) lt!2185531)))))

(assert (=> d!1719113 (validRegex!6811 lt!2185531)))

(assert (=> d!1719113 (= (derivativeStep!4217 lt!2185531 (head!11510 (_1!35577 lt!2185500))) lt!2185707)))

(declare-fun b!5366321 () Bool)

(assert (=> b!5366321 (= e!3330178 e!3330174)))

(declare-fun c!934824 () Bool)

(assert (=> b!5366321 (= c!934824 ((_ is Star!15075) lt!2185531))))

(declare-fun b!5366328 () Bool)

(assert (=> b!5366328 (= e!3330174 (Concat!23920 call!384062 lt!2185531))))

(declare-fun b!5366329 () Bool)

(assert (=> b!5366329 (= e!3330177 (Union!15075 (Concat!23920 call!384061 (regTwo!30662 lt!2185531)) EmptyLang!15075))))

(declare-fun bm!384058 () Bool)

(assert (=> bm!384058 (= call!384064 (derivativeStep!4217 (ite c!934825 (regTwo!30663 lt!2185531) (ite c!934824 (reg!15404 lt!2185531) (ite c!934822 (regTwo!30662 lt!2185531) (regOne!30662 lt!2185531)))) (head!11510 (_1!35577 lt!2185500))))))

(declare-fun bm!384059 () Bool)

(assert (=> bm!384059 (= call!384063 (derivativeStep!4217 (ite c!934825 (regOne!30663 lt!2185531) (regOne!30662 lt!2185531)) (head!11510 (_1!35577 lt!2185500))))))

(assert (= (and d!1719113 c!934826) b!5366327))

(assert (= (and d!1719113 (not c!934826)) b!5366322))

(assert (= (and b!5366322 c!934823) b!5366320))

(assert (= (and b!5366322 (not c!934823)) b!5366324))

(assert (= (and b!5366324 c!934825) b!5366325))

(assert (= (and b!5366324 (not c!934825)) b!5366321))

(assert (= (and b!5366321 c!934824) b!5366328))

(assert (= (and b!5366321 (not c!934824)) b!5366326))

(assert (= (and b!5366326 c!934822) b!5366323))

(assert (= (and b!5366326 (not c!934822)) b!5366329))

(assert (= (or b!5366323 b!5366329) bm!384056))

(assert (= (or b!5366328 bm!384056) bm!384057))

(assert (= (or b!5366325 bm!384057) bm!384058))

(assert (= (or b!5366325 b!5366323) bm!384059))

(declare-fun m!6394476 () Bool)

(assert (=> b!5366326 m!6394476))

(declare-fun m!6394478 () Bool)

(assert (=> d!1719113 m!6394478))

(assert (=> d!1719113 m!6393084))

(assert (=> bm!384058 m!6393226))

(declare-fun m!6394480 () Bool)

(assert (=> bm!384058 m!6394480))

(assert (=> bm!384059 m!6393226))

(declare-fun m!6394482 () Bool)

(assert (=> bm!384059 m!6394482))

(assert (=> b!5365088 d!1719113))

(assert (=> b!5365088 d!1718719))

(assert (=> b!5365088 d!1718851))

(declare-fun d!1719115 () Bool)

(assert (=> d!1719115 (= (isEmpty!33378 (tail!10608 (exprs!4959 (h!67849 zl!343)))) ((_ is Nil!61400) (tail!10608 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> b!5365234 d!1719115))

(declare-fun d!1719117 () Bool)

(assert (=> d!1719117 (= (tail!10608 (exprs!4959 (h!67849 zl!343))) (t!374745 (exprs!4959 (h!67849 zl!343))))))

(assert (=> b!5365234 d!1719117))

(declare-fun d!1719119 () Bool)

(declare-fun c!934827 () Bool)

(assert (=> d!1719119 (= c!934827 (isEmpty!33377 (tail!10607 s!2326)))))

(declare-fun e!3330179 () Bool)

(assert (=> d!1719119 (= (matchZipper!1319 (derivationStepZipper!1314 lt!2185512 (head!11510 s!2326)) (tail!10607 s!2326)) e!3330179)))

(declare-fun b!5366330 () Bool)

(assert (=> b!5366330 (= e!3330179 (nullableZipper!1396 (derivationStepZipper!1314 lt!2185512 (head!11510 s!2326))))))

(declare-fun b!5366331 () Bool)

(assert (=> b!5366331 (= e!3330179 (matchZipper!1319 (derivationStepZipper!1314 (derivationStepZipper!1314 lt!2185512 (head!11510 s!2326)) (head!11510 (tail!10607 s!2326))) (tail!10607 (tail!10607 s!2326))))))

(assert (= (and d!1719119 c!934827) b!5366330))

(assert (= (and d!1719119 (not c!934827)) b!5366331))

(assert (=> d!1719119 m!6393416))

(assert (=> d!1719119 m!6393434))

(assert (=> b!5366330 m!6393414))

(declare-fun m!6394484 () Bool)

(assert (=> b!5366330 m!6394484))

(assert (=> b!5366331 m!6393416))

(assert (=> b!5366331 m!6393502))

(assert (=> b!5366331 m!6393414))

(assert (=> b!5366331 m!6393502))

(declare-fun m!6394486 () Bool)

(assert (=> b!5366331 m!6394486))

(assert (=> b!5366331 m!6393416))

(assert (=> b!5366331 m!6393498))

(assert (=> b!5366331 m!6394486))

(assert (=> b!5366331 m!6393498))

(declare-fun m!6394488 () Bool)

(assert (=> b!5366331 m!6394488))

(assert (=> b!5365295 d!1719119))

(declare-fun bs!1242983 () Bool)

(declare-fun d!1719121 () Bool)

(assert (= bs!1242983 (and d!1719121 d!1718663)))

(declare-fun lambda!276621 () Int)

(assert (=> bs!1242983 (= (= (head!11510 s!2326) (h!67850 s!2326)) (= lambda!276621 lambda!276557))))

(declare-fun bs!1242984 () Bool)

(assert (= bs!1242984 (and d!1719121 d!1718661)))

(assert (=> bs!1242984 (= (= (head!11510 s!2326) (h!67850 s!2326)) (= lambda!276621 lambda!276556))))

(declare-fun bs!1242985 () Bool)

(assert (= bs!1242985 (and d!1719121 b!5364515)))

(assert (=> bs!1242985 (= (= (head!11510 s!2326) (h!67850 s!2326)) (= lambda!276621 lambda!276480))))

(declare-fun bs!1242986 () Bool)

(assert (= bs!1242986 (and d!1719121 d!1719103)))

(assert (=> bs!1242986 (= (= (head!11510 s!2326) (head!11510 (t!374747 s!2326))) (= lambda!276621 lambda!276620))))

(declare-fun bs!1242987 () Bool)

(assert (= bs!1242987 (and d!1719121 d!1718831)))

(assert (=> bs!1242987 (= (= (head!11510 s!2326) (head!11510 (t!374747 s!2326))) (= lambda!276621 lambda!276574))))

(declare-fun bs!1242988 () Bool)

(assert (= bs!1242988 (and d!1719121 d!1718885)))

(assert (=> bs!1242988 (= (= (head!11510 s!2326) (head!11510 (t!374747 s!2326))) (= lambda!276621 lambda!276579))))

(declare-fun bs!1242989 () Bool)

(assert (= bs!1242989 (and d!1719121 d!1718931)))

(assert (=> bs!1242989 (= (= (head!11510 s!2326) (head!11510 (t!374747 s!2326))) (= lambda!276621 lambda!276589))))

(assert (=> d!1719121 true))

(assert (=> d!1719121 (= (derivationStepZipper!1314 lt!2185512 (head!11510 s!2326)) (flatMap!802 lt!2185512 lambda!276621))))

(declare-fun bs!1242990 () Bool)

(assert (= bs!1242990 d!1719121))

(declare-fun m!6394490 () Bool)

(assert (=> bs!1242990 m!6394490))

(assert (=> b!5365295 d!1719121))

(assert (=> b!5365295 d!1718685))

(assert (=> b!5365295 d!1718687))

(assert (=> d!1718483 d!1718495))

(declare-fun d!1719123 () Bool)

(assert (=> d!1719123 (= (flatMap!802 lt!2185526 lambda!276480) (dynLambda!24252 lambda!276480 lt!2185533))))

(assert (=> d!1719123 true))

(declare-fun _$13!1934 () Unit!153818)

(assert (=> d!1719123 (= (choose!40286 lt!2185526 lt!2185533 lambda!276480) _$13!1934)))

(declare-fun b_lambda!205729 () Bool)

(assert (=> (not b_lambda!205729) (not d!1719123)))

(declare-fun bs!1242991 () Bool)

(assert (= bs!1242991 d!1719123))

(assert (=> bs!1242991 m!6392636))

(assert (=> bs!1242991 m!6392994))

(assert (=> d!1718483 d!1719123))

(declare-fun b!5366332 () Bool)

(declare-fun e!3330181 () (InoxSet Context!8918))

(assert (=> b!5366332 (= e!3330181 ((as const (Array Context!8918 Bool)) false))))

(declare-fun d!1719125 () Bool)

(declare-fun c!934828 () Bool)

(declare-fun e!3330182 () Bool)

(assert (=> d!1719125 (= c!934828 e!3330182)))

(declare-fun res!2277391 () Bool)

(assert (=> d!1719125 (=> (not res!2277391) (not e!3330182))))

(assert (=> d!1719125 (= res!2277391 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun e!3330180 () (InoxSet Context!8918))

(assert (=> d!1719125 (= (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))) (h!67850 s!2326)) e!3330180)))

(declare-fun b!5366333 () Bool)

(declare-fun call!384065 () (InoxSet Context!8918))

(assert (=> b!5366333 (= e!3330181 call!384065)))

(declare-fun bm!384060 () Bool)

(assert (=> bm!384060 (= call!384065 (derivationStepZipperDown!523 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))))) (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343))))))) (h!67850 s!2326)))))

(declare-fun b!5366334 () Bool)

(assert (=> b!5366334 (= e!3330180 ((_ map or) call!384065 (derivationStepZipperUp!447 (Context!8919 (t!374745 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343))))))) (h!67850 s!2326))))))

(declare-fun b!5366335 () Bool)

(assert (=> b!5366335 (= e!3330182 (nullable!5244 (h!67848 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343))))))))))

(declare-fun b!5366336 () Bool)

(assert (=> b!5366336 (= e!3330180 e!3330181)))

(declare-fun c!934829 () Bool)

(assert (=> b!5366336 (= c!934829 ((_ is Cons!61400) (exprs!4959 (Context!8919 (t!374745 (exprs!4959 (h!67849 zl!343)))))))))

(assert (= (and d!1719125 res!2277391) b!5366335))

(assert (= (and d!1719125 c!934828) b!5366334))

(assert (= (and d!1719125 (not c!934828)) b!5366336))

(assert (= (and b!5366336 c!934829) b!5366333))

(assert (= (and b!5366336 (not c!934829)) b!5366332))

(assert (= (or b!5366334 b!5366333) bm!384060))

(declare-fun m!6394496 () Bool)

(assert (=> bm!384060 m!6394496))

(declare-fun m!6394498 () Bool)

(assert (=> b!5366334 m!6394498))

(declare-fun m!6394500 () Bool)

(assert (=> b!5366335 m!6394500))

(assert (=> b!5365182 d!1719125))

(declare-fun d!1719129 () Bool)

(assert (=> d!1719129 true))

(declare-fun setRes!34757 () Bool)

(assert (=> d!1719129 setRes!34757))

(declare-fun condSetEmpty!34757 () Bool)

(declare-fun res!2277397 () (InoxSet Context!8918))

(assert (=> d!1719129 (= condSetEmpty!34757 (= res!2277397 ((as const (Array Context!8918 Bool)) false)))))

(assert (=> d!1719129 (= (choose!40285 z!1189 lambda!276480) res!2277397)))

(declare-fun setIsEmpty!34757 () Bool)

(assert (=> setIsEmpty!34757 setRes!34757))

(declare-fun setElem!34757 () Context!8918)

(declare-fun e!3330188 () Bool)

(declare-fun tp!1489200 () Bool)

(declare-fun setNonEmpty!34757 () Bool)

(assert (=> setNonEmpty!34757 (= setRes!34757 (and tp!1489200 (inv!80934 setElem!34757) e!3330188))))

(declare-fun setRest!34757 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34757 (= res!2277397 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34757 true) setRest!34757))))

(declare-fun b!5366346 () Bool)

(declare-fun tp!1489201 () Bool)

(assert (=> b!5366346 (= e!3330188 tp!1489201)))

(assert (= (and d!1719129 condSetEmpty!34757) setIsEmpty!34757))

(assert (= (and d!1719129 (not condSetEmpty!34757)) setNonEmpty!34757))

(assert (= setNonEmpty!34757 b!5366346))

(declare-fun m!6394502 () Bool)

(assert (=> setNonEmpty!34757 m!6394502))

(assert (=> d!1718601 d!1719129))

(declare-fun d!1719131 () Bool)

(assert (=> d!1719131 (= (isEmpty!33378 (t!374745 (unfocusZipperList!517 zl!343))) ((_ is Nil!61400) (t!374745 (unfocusZipperList!517 zl!343))))))

(assert (=> b!5365260 d!1719131))

(assert (=> b!5365095 d!1718849))

(assert (=> b!5365095 d!1718851))

(declare-fun b!5366347 () Bool)

(declare-fun e!3330194 () Bool)

(declare-fun e!3330189 () Bool)

(assert (=> b!5366347 (= e!3330194 e!3330189)))

(declare-fun res!2277401 () Bool)

(assert (=> b!5366347 (=> (not res!2277401) (not e!3330189))))

(assert (=> b!5366347 (= res!2277401 (and (not ((_ is EmptyLang!15075) (h!67848 (exprs!4959 (h!67849 zl!343))))) (not ((_ is ElementMatch!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun bm!384061 () Bool)

(declare-fun call!384066 () Bool)

(declare-fun c!934832 () Bool)

(assert (=> bm!384061 (= call!384066 (nullable!5244 (ite c!934832 (regOne!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regOne!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun b!5366348 () Bool)

(declare-fun e!3330192 () Bool)

(declare-fun e!3330190 () Bool)

(assert (=> b!5366348 (= e!3330192 e!3330190)))

(declare-fun res!2277400 () Bool)

(assert (=> b!5366348 (= res!2277400 call!384066)))

(assert (=> b!5366348 (=> (not res!2277400) (not e!3330190))))

(declare-fun b!5366349 () Bool)

(declare-fun e!3330191 () Bool)

(declare-fun call!384067 () Bool)

(assert (=> b!5366349 (= e!3330191 call!384067)))

(declare-fun d!1719133 () Bool)

(declare-fun res!2277402 () Bool)

(assert (=> d!1719133 (=> res!2277402 e!3330194)))

(assert (=> d!1719133 (= res!2277402 ((_ is EmptyExpr!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> d!1719133 (= (nullableFct!1548 (h!67848 (exprs!4959 (h!67849 zl!343)))) e!3330194)))

(declare-fun b!5366350 () Bool)

(declare-fun e!3330193 () Bool)

(assert (=> b!5366350 (= e!3330189 e!3330193)))

(declare-fun res!2277399 () Bool)

(assert (=> b!5366350 (=> res!2277399 e!3330193)))

(assert (=> b!5366350 (= res!2277399 ((_ is Star!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5366351 () Bool)

(assert (=> b!5366351 (= e!3330190 call!384067)))

(declare-fun b!5366352 () Bool)

(assert (=> b!5366352 (= e!3330193 e!3330192)))

(assert (=> b!5366352 (= c!934832 ((_ is Union!15075) (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5366353 () Bool)

(assert (=> b!5366353 (= e!3330192 e!3330191)))

(declare-fun res!2277398 () Bool)

(assert (=> b!5366353 (= res!2277398 call!384066)))

(assert (=> b!5366353 (=> res!2277398 e!3330191)))

(declare-fun bm!384062 () Bool)

(assert (=> bm!384062 (= call!384067 (nullable!5244 (ite c!934832 (regTwo!30663 (h!67848 (exprs!4959 (h!67849 zl!343)))) (regTwo!30662 (h!67848 (exprs!4959 (h!67849 zl!343)))))))))

(assert (= (and d!1719133 (not res!2277402)) b!5366347))

(assert (= (and b!5366347 res!2277401) b!5366350))

(assert (= (and b!5366350 (not res!2277399)) b!5366352))

(assert (= (and b!5366352 c!934832) b!5366353))

(assert (= (and b!5366352 (not c!934832)) b!5366348))

(assert (= (and b!5366353 (not res!2277398)) b!5366349))

(assert (= (and b!5366348 res!2277400) b!5366351))

(assert (= (or b!5366349 b!5366351) bm!384062))

(assert (= (or b!5366353 b!5366348) bm!384061))

(declare-fun m!6394504 () Bool)

(assert (=> bm!384061 m!6394504))

(declare-fun m!6394506 () Bool)

(assert (=> bm!384062 m!6394506))

(assert (=> d!1718589 d!1719133))

(declare-fun b!5366354 () Bool)

(declare-fun res!2277404 () Bool)

(declare-fun e!3330197 () Bool)

(assert (=> b!5366354 (=> res!2277404 e!3330197)))

(assert (=> b!5366354 (= res!2277404 (not ((_ is Concat!23920) lt!2185635)))))

(declare-fun e!3330196 () Bool)

(assert (=> b!5366354 (= e!3330196 e!3330197)))

(declare-fun b!5366355 () Bool)

(declare-fun e!3330195 () Bool)

(declare-fun e!3330198 () Bool)

(assert (=> b!5366355 (= e!3330195 e!3330198)))

(declare-fun res!2277403 () Bool)

(assert (=> b!5366355 (= res!2277403 (not (nullable!5244 (reg!15404 lt!2185635))))))

(assert (=> b!5366355 (=> (not res!2277403) (not e!3330198))))

(declare-fun b!5366356 () Bool)

(declare-fun e!3330199 () Bool)

(declare-fun call!384070 () Bool)

(assert (=> b!5366356 (= e!3330199 call!384070)))

(declare-fun b!5366357 () Bool)

(declare-fun e!3330200 () Bool)

(assert (=> b!5366357 (= e!3330200 call!384070)))

(declare-fun c!934834 () Bool)

(declare-fun bm!384063 () Bool)

(declare-fun call!384068 () Bool)

(declare-fun c!934833 () Bool)

(assert (=> bm!384063 (= call!384068 (validRegex!6811 (ite c!934833 (reg!15404 lt!2185635) (ite c!934834 (regOne!30663 lt!2185635) (regOne!30662 lt!2185635)))))))

(declare-fun b!5366358 () Bool)

(declare-fun e!3330201 () Bool)

(assert (=> b!5366358 (= e!3330201 e!3330195)))

(assert (=> b!5366358 (= c!934833 ((_ is Star!15075) lt!2185635))))

(declare-fun b!5366359 () Bool)

(assert (=> b!5366359 (= e!3330198 call!384068)))

(declare-fun d!1719135 () Bool)

(declare-fun res!2277407 () Bool)

(assert (=> d!1719135 (=> res!2277407 e!3330201)))

(assert (=> d!1719135 (= res!2277407 ((_ is ElementMatch!15075) lt!2185635))))

(assert (=> d!1719135 (= (validRegex!6811 lt!2185635) e!3330201)))

(declare-fun bm!384064 () Bool)

(assert (=> bm!384064 (= call!384070 (validRegex!6811 (ite c!934834 (regTwo!30663 lt!2185635) (regTwo!30662 lt!2185635))))))

(declare-fun b!5366360 () Bool)

(declare-fun res!2277405 () Bool)

(assert (=> b!5366360 (=> (not res!2277405) (not e!3330199))))

(declare-fun call!384069 () Bool)

(assert (=> b!5366360 (= res!2277405 call!384069)))

(assert (=> b!5366360 (= e!3330196 e!3330199)))

(declare-fun bm!384065 () Bool)

(assert (=> bm!384065 (= call!384069 call!384068)))

(declare-fun b!5366361 () Bool)

(assert (=> b!5366361 (= e!3330197 e!3330200)))

(declare-fun res!2277406 () Bool)

(assert (=> b!5366361 (=> (not res!2277406) (not e!3330200))))

(assert (=> b!5366361 (= res!2277406 call!384069)))

(declare-fun b!5366362 () Bool)

(assert (=> b!5366362 (= e!3330195 e!3330196)))

(assert (=> b!5366362 (= c!934834 ((_ is Union!15075) lt!2185635))))

(assert (= (and d!1719135 (not res!2277407)) b!5366358))

(assert (= (and b!5366358 c!934833) b!5366355))

(assert (= (and b!5366358 (not c!934833)) b!5366362))

(assert (= (and b!5366355 res!2277403) b!5366359))

(assert (= (and b!5366362 c!934834) b!5366360))

(assert (= (and b!5366362 (not c!934834)) b!5366354))

(assert (= (and b!5366360 res!2277405) b!5366356))

(assert (= (and b!5366354 (not res!2277404)) b!5366361))

(assert (= (and b!5366361 res!2277406) b!5366357))

(assert (= (or b!5366356 b!5366357) bm!384064))

(assert (= (or b!5366360 b!5366361) bm!384065))

(assert (= (or b!5366359 bm!384065) bm!384063))

(declare-fun m!6394524 () Bool)

(assert (=> b!5366355 m!6394524))

(declare-fun m!6394530 () Bool)

(assert (=> bm!384063 m!6394530))

(declare-fun m!6394532 () Bool)

(assert (=> bm!384064 m!6394532))

(assert (=> d!1718617 d!1719135))

(assert (=> d!1718617 d!1718621))

(assert (=> d!1718617 d!1718623))

(assert (=> d!1718599 d!1718601))

(declare-fun d!1719137 () Bool)

(assert (=> d!1719137 (= (flatMap!802 z!1189 lambda!276480) (dynLambda!24252 lambda!276480 (h!67849 zl!343)))))

(assert (=> d!1719137 true))

(declare-fun _$13!1935 () Unit!153818)

(assert (=> d!1719137 (= (choose!40286 z!1189 (h!67849 zl!343) lambda!276480) _$13!1935)))

(declare-fun b_lambda!205731 () Bool)

(assert (=> (not b_lambda!205731) (not d!1719137)))

(declare-fun bs!1242993 () Bool)

(assert (= bs!1242993 d!1719137))

(assert (=> bs!1242993 m!6392734))

(assert (=> bs!1242993 m!6393294))

(assert (=> d!1718599 d!1719137))

(declare-fun d!1719143 () Bool)

(assert (=> d!1719143 true))

(declare-fun setRes!34758 () Bool)

(assert (=> d!1719143 setRes!34758))

(declare-fun condSetEmpty!34758 () Bool)

(declare-fun res!2277410 () (InoxSet Context!8918))

(assert (=> d!1719143 (= condSetEmpty!34758 (= res!2277410 ((as const (Array Context!8918 Bool)) false)))))

(assert (=> d!1719143 (= (choose!40285 lt!2185501 lambda!276480) res!2277410)))

(declare-fun setIsEmpty!34758 () Bool)

(assert (=> setIsEmpty!34758 setRes!34758))

(declare-fun setNonEmpty!34758 () Bool)

(declare-fun tp!1489202 () Bool)

(declare-fun setElem!34758 () Context!8918)

(declare-fun e!3330208 () Bool)

(assert (=> setNonEmpty!34758 (= setRes!34758 (and tp!1489202 (inv!80934 setElem!34758) e!3330208))))

(declare-fun setRest!34758 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34758 (= res!2277410 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34758 true) setRest!34758))))

(declare-fun b!5366374 () Bool)

(declare-fun tp!1489203 () Bool)

(assert (=> b!5366374 (= e!3330208 tp!1489203)))

(assert (= (and d!1719143 condSetEmpty!34758) setIsEmpty!34758))

(assert (= (and d!1719143 (not condSetEmpty!34758)) setNonEmpty!34758))

(assert (= setNonEmpty!34758 b!5366374))

(declare-fun m!6394536 () Bool)

(assert (=> setNonEmpty!34758 m!6394536))

(assert (=> d!1718469 d!1719143))

(declare-fun bs!1242994 () Bool)

(declare-fun d!1719145 () Bool)

(assert (= bs!1242994 (and d!1719145 d!1718955)))

(declare-fun lambda!276622 () Int)

(assert (=> bs!1242994 (= lambda!276622 lambda!276597)))

(declare-fun bs!1242995 () Bool)

(assert (= bs!1242995 (and d!1719145 d!1718939)))

(assert (=> bs!1242995 (= lambda!276622 lambda!276591)))

(declare-fun bs!1242996 () Bool)

(assert (= bs!1242996 (and d!1719145 d!1719009)))

(assert (=> bs!1242996 (= lambda!276622 lambda!276608)))

(declare-fun bs!1242997 () Bool)

(assert (= bs!1242997 (and d!1719145 d!1718947)))

(assert (=> bs!1242997 (= lambda!276622 lambda!276592)))

(declare-fun bs!1242998 () Bool)

(assert (= bs!1242998 (and d!1719145 d!1718609)))

(assert (=> bs!1242998 (= lambda!276622 lambda!276535)))

(declare-fun bs!1242999 () Bool)

(assert (= bs!1242999 (and d!1719145 d!1718621)))

(assert (=> bs!1242999 (= lambda!276622 lambda!276542)))

(declare-fun bs!1243000 () Bool)

(assert (= bs!1243000 (and d!1719145 d!1718613)))

(assert (=> bs!1243000 (= lambda!276622 lambda!276536)))

(declare-fun bs!1243001 () Bool)

(assert (= bs!1243001 (and d!1719145 d!1718771)))

(assert (=> bs!1243001 (= lambda!276622 lambda!276568)))

(declare-fun bs!1243002 () Bool)

(assert (= bs!1243002 (and d!1719145 d!1718875)))

(assert (=> bs!1243002 (= lambda!276622 lambda!276578)))

(declare-fun bs!1243004 () Bool)

(assert (= bs!1243004 (and d!1719145 d!1718809)))

(assert (=> bs!1243004 (= lambda!276622 lambda!276569)))

(declare-fun bs!1243005 () Bool)

(assert (= bs!1243005 (and d!1719145 d!1718623)))

(assert (=> bs!1243005 (= lambda!276622 lambda!276545)))

(declare-fun bs!1243006 () Bool)

(assert (= bs!1243006 (and d!1719145 d!1718951)))

(assert (=> bs!1243006 (= lambda!276622 lambda!276595)))

(declare-fun bs!1243007 () Bool)

(assert (= bs!1243007 (and d!1719145 d!1718813)))

(assert (=> bs!1243007 (= lambda!276622 lambda!276570)))

(declare-fun bs!1243008 () Bool)

(assert (= bs!1243008 (and d!1719145 d!1718615)))

(assert (=> bs!1243008 (= lambda!276622 lambda!276539)))

(declare-fun bs!1243009 () Bool)

(assert (= bs!1243009 (and d!1719145 d!1719081)))

(assert (=> bs!1243009 (= lambda!276622 lambda!276619)))

(declare-fun bs!1243010 () Bool)

(assert (= bs!1243010 (and d!1719145 b!5364523)))

(assert (=> bs!1243010 (= lambda!276622 lambda!276483)))

(declare-fun b!5366375 () Bool)

(declare-fun e!3330212 () Bool)

(declare-fun lt!2185714 () Regex!15075)

(assert (=> b!5366375 (= e!3330212 (= lt!2185714 (head!11511 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun b!5366376 () Bool)

(declare-fun e!3330213 () Bool)

(assert (=> b!5366376 (= e!3330213 (isEmptyExpr!930 lt!2185714))))

(declare-fun b!5366377 () Bool)

(declare-fun e!3330211 () Bool)

(assert (=> b!5366377 (= e!3330211 (isEmpty!33378 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun b!5366378 () Bool)

(declare-fun e!3330209 () Regex!15075)

(declare-fun e!3330214 () Regex!15075)

(assert (=> b!5366378 (= e!3330209 e!3330214)))

(declare-fun c!934842 () Bool)

(assert (=> b!5366378 (= c!934842 ((_ is Cons!61400) (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun b!5366379 () Bool)

(assert (=> b!5366379 (= e!3330213 e!3330212)))

(declare-fun c!934843 () Bool)

(assert (=> b!5366379 (= c!934843 (isEmpty!33378 (tail!10608 (t!374745 (exprs!4959 (h!67849 zl!343))))))))

(declare-fun b!5366380 () Bool)

(declare-fun e!3330210 () Bool)

(assert (=> b!5366380 (= e!3330210 e!3330213)))

(declare-fun c!934841 () Bool)

(assert (=> b!5366380 (= c!934841 (isEmpty!33378 (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> d!1719145 e!3330210))

(declare-fun res!2277412 () Bool)

(assert (=> d!1719145 (=> (not res!2277412) (not e!3330210))))

(assert (=> d!1719145 (= res!2277412 (validRegex!6811 lt!2185714))))

(assert (=> d!1719145 (= lt!2185714 e!3330209)))

(declare-fun c!934840 () Bool)

(assert (=> d!1719145 (= c!934840 e!3330211)))

(declare-fun res!2277411 () Bool)

(assert (=> d!1719145 (=> (not res!2277411) (not e!3330211))))

(assert (=> d!1719145 (= res!2277411 ((_ is Cons!61400) (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> d!1719145 (forall!14483 (t!374745 (exprs!4959 (h!67849 zl!343))) lambda!276622)))

(assert (=> d!1719145 (= (generalisedConcat!744 (t!374745 (exprs!4959 (h!67849 zl!343)))) lt!2185714)))

(declare-fun b!5366381 () Bool)

(assert (=> b!5366381 (= e!3330214 EmptyExpr!15075)))

(declare-fun b!5366382 () Bool)

(assert (=> b!5366382 (= e!3330212 (isConcat!453 lt!2185714))))

(declare-fun b!5366383 () Bool)

(assert (=> b!5366383 (= e!3330214 (Concat!23920 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343)))) (generalisedConcat!744 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun b!5366384 () Bool)

(assert (=> b!5366384 (= e!3330209 (h!67848 (t!374745 (exprs!4959 (h!67849 zl!343)))))))

(assert (= (and d!1719145 res!2277411) b!5366377))

(assert (= (and d!1719145 c!934840) b!5366384))

(assert (= (and d!1719145 (not c!934840)) b!5366378))

(assert (= (and b!5366378 c!934842) b!5366383))

(assert (= (and b!5366378 (not c!934842)) b!5366381))

(assert (= (and d!1719145 res!2277412) b!5366380))

(assert (= (and b!5366380 c!934841) b!5366376))

(assert (= (and b!5366380 (not c!934841)) b!5366379))

(assert (= (and b!5366379 c!934843) b!5366375))

(assert (= (and b!5366379 (not c!934843)) b!5366382))

(assert (=> b!5366380 m!6392744))

(declare-fun m!6394550 () Bool)

(assert (=> b!5366382 m!6394550))

(declare-fun m!6394554 () Bool)

(assert (=> b!5366383 m!6394554))

(declare-fun m!6394556 () Bool)

(assert (=> d!1719145 m!6394556))

(declare-fun m!6394560 () Bool)

(assert (=> d!1719145 m!6394560))

(declare-fun m!6394562 () Bool)

(assert (=> b!5366376 m!6394562))

(declare-fun m!6394564 () Bool)

(assert (=> b!5366377 m!6394564))

(declare-fun m!6394566 () Bool)

(assert (=> b!5366375 m!6394566))

(declare-fun m!6394568 () Bool)

(assert (=> b!5366379 m!6394568))

(assert (=> b!5366379 m!6394568))

(declare-fun m!6394572 () Bool)

(assert (=> b!5366379 m!6394572))

(assert (=> b!5365238 d!1719145))

(declare-fun d!1719151 () Bool)

(assert (=> d!1719151 (= (Exists!2256 (ite c!934543 lambda!276550 lambda!276551)) (choose!40287 (ite c!934543 lambda!276550 lambda!276551)))))

(declare-fun bs!1243011 () Bool)

(assert (= bs!1243011 d!1719151))

(declare-fun m!6394576 () Bool)

(assert (=> bs!1243011 m!6394576))

(assert (=> bm!383874 d!1719151))

(declare-fun b!5366400 () Bool)

(declare-fun c!934850 () Bool)

(declare-fun e!3330221 () Bool)

(assert (=> b!5366400 (= c!934850 e!3330221)))

(declare-fun res!2277418 () Bool)

(assert (=> b!5366400 (=> (not res!2277418) (not e!3330221))))

(assert (=> b!5366400 (= res!2277418 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185533))))))

(declare-fun e!3330223 () (InoxSet Context!8918))

(declare-fun e!3330227 () (InoxSet Context!8918))

(assert (=> b!5366400 (= e!3330223 e!3330227)))

(declare-fun b!5366402 () Bool)

(declare-fun e!3330229 () (InoxSet Context!8918))

(declare-fun call!384088 () (InoxSet Context!8918))

(assert (=> b!5366402 (= e!3330229 call!384088)))

(declare-fun b!5366403 () Bool)

(declare-fun e!3330233 () (InoxSet Context!8918))

(assert (=> b!5366403 (= e!3330233 call!384088)))

(declare-fun b!5366405 () Bool)

(declare-fun e!3330232 () (InoxSet Context!8918))

(assert (=> b!5366405 (= e!3330232 e!3330223)))

(declare-fun c!934855 () Bool)

(assert (=> b!5366405 (= c!934855 ((_ is Union!15075) (h!67848 (exprs!4959 lt!2185533))))))

(declare-fun bm!384080 () Bool)

(declare-fun call!384091 () (InoxSet Context!8918))

(declare-fun call!384090 () (InoxSet Context!8918))

(assert (=> bm!384080 (= call!384091 call!384090)))

(declare-fun b!5366407 () Bool)

(declare-fun call!384085 () (InoxSet Context!8918))

(assert (=> b!5366407 (= e!3330223 ((_ map or) call!384085 call!384090))))

(declare-fun b!5366409 () Bool)

(assert (=> b!5366409 (= e!3330232 (store ((as const (Array Context!8918 Bool)) false) (Context!8919 (t!374745 (exprs!4959 lt!2185533))) true))))

(declare-fun b!5366411 () Bool)

(assert (=> b!5366411 (= e!3330221 (nullable!5244 (regOne!30662 (h!67848 (exprs!4959 lt!2185533)))))))

(declare-fun bm!384082 () Bool)

(declare-fun call!384089 () List!61524)

(assert (=> bm!384082 (= call!384085 (derivationStepZipperDown!523 (ite c!934855 (regOne!30663 (h!67848 (exprs!4959 lt!2185533))) (regOne!30662 (h!67848 (exprs!4959 lt!2185533)))) (ite c!934855 (Context!8919 (t!374745 (exprs!4959 lt!2185533))) (Context!8919 call!384089)) (h!67850 s!2326)))))

(declare-fun d!1719157 () Bool)

(declare-fun c!934854 () Bool)

(assert (=> d!1719157 (= c!934854 (and ((_ is ElementMatch!15075) (h!67848 (exprs!4959 lt!2185533))) (= (c!934311 (h!67848 (exprs!4959 lt!2185533))) (h!67850 s!2326))))))

(assert (=> d!1719157 (= (derivationStepZipperDown!523 (h!67848 (exprs!4959 lt!2185533)) (Context!8919 (t!374745 (exprs!4959 lt!2185533))) (h!67850 s!2326)) e!3330232)))

(declare-fun b!5366412 () Bool)

(declare-fun c!934852 () Bool)

(assert (=> b!5366412 (= c!934852 ((_ is Star!15075) (h!67848 (exprs!4959 lt!2185533))))))

(assert (=> b!5366412 (= e!3330233 e!3330229)))

(declare-fun bm!384083 () Bool)

(declare-fun call!384087 () List!61524)

(assert (=> bm!384083 (= call!384087 call!384089)))

(declare-fun bm!384084 () Bool)

(declare-fun c!934849 () Bool)

(assert (=> bm!384084 (= call!384089 ($colon$colon!1446 (exprs!4959 (Context!8919 (t!374745 (exprs!4959 lt!2185533)))) (ite (or c!934850 c!934849) (regTwo!30662 (h!67848 (exprs!4959 lt!2185533))) (h!67848 (exprs!4959 lt!2185533)))))))

(declare-fun bm!384085 () Bool)

(assert (=> bm!384085 (= call!384088 call!384091)))

(declare-fun b!5366413 () Bool)

(assert (=> b!5366413 (= e!3330227 e!3330233)))

(assert (=> b!5366413 (= c!934849 ((_ is Concat!23920) (h!67848 (exprs!4959 lt!2185533))))))

(declare-fun bm!384086 () Bool)

(assert (=> bm!384086 (= call!384090 (derivationStepZipperDown!523 (ite c!934855 (regTwo!30663 (h!67848 (exprs!4959 lt!2185533))) (ite c!934850 (regTwo!30662 (h!67848 (exprs!4959 lt!2185533))) (ite c!934849 (regOne!30662 (h!67848 (exprs!4959 lt!2185533))) (reg!15404 (h!67848 (exprs!4959 lt!2185533)))))) (ite (or c!934855 c!934850) (Context!8919 (t!374745 (exprs!4959 lt!2185533))) (Context!8919 call!384087)) (h!67850 s!2326)))))

(declare-fun b!5366414 () Bool)

(assert (=> b!5366414 (= e!3330227 ((_ map or) call!384085 call!384091))))

(declare-fun b!5366415 () Bool)

(assert (=> b!5366415 (= e!3330229 ((as const (Array Context!8918 Bool)) false))))

(assert (= (and d!1719157 c!934854) b!5366409))

(assert (= (and d!1719157 (not c!934854)) b!5366405))

(assert (= (and b!5366405 c!934855) b!5366407))

(assert (= (and b!5366405 (not c!934855)) b!5366400))

(assert (= (and b!5366400 res!2277418) b!5366411))

(assert (= (and b!5366400 c!934850) b!5366414))

(assert (= (and b!5366400 (not c!934850)) b!5366413))

(assert (= (and b!5366413 c!934849) b!5366403))

(assert (= (and b!5366413 (not c!934849)) b!5366412))

(assert (= (and b!5366412 c!934852) b!5366402))

(assert (= (and b!5366412 (not c!934852)) b!5366415))

(assert (= (or b!5366403 b!5366402) bm!384083))

(assert (= (or b!5366403 b!5366402) bm!384085))

(assert (= (or b!5366414 bm!384083) bm!384084))

(assert (= (or b!5366414 bm!384085) bm!384080))

(assert (= (or b!5366407 bm!384080) bm!384086))

(assert (= (or b!5366407 b!5366414) bm!384082))

(declare-fun m!6394584 () Bool)

(assert (=> b!5366409 m!6394584))

(declare-fun m!6394586 () Bool)

(assert (=> bm!384086 m!6394586))

(declare-fun m!6394588 () Bool)

(assert (=> bm!384084 m!6394588))

(declare-fun m!6394590 () Bool)

(assert (=> b!5366411 m!6394590))

(declare-fun m!6394592 () Bool)

(assert (=> bm!384082 m!6394592))

(assert (=> bm!383828 d!1719157))

(declare-fun b!5366428 () Bool)

(declare-fun e!3330240 () Bool)

(declare-fun tp!1489204 () Bool)

(assert (=> b!5366428 (= e!3330240 tp!1489204)))

(declare-fun b!5366429 () Bool)

(declare-fun tp!1489205 () Bool)

(declare-fun tp!1489208 () Bool)

(assert (=> b!5366429 (= e!3330240 (and tp!1489205 tp!1489208))))

(declare-fun b!5366426 () Bool)

(assert (=> b!5366426 (= e!3330240 tp_is_empty!39403)))

(declare-fun b!5366427 () Bool)

(declare-fun tp!1489207 () Bool)

(declare-fun tp!1489206 () Bool)

(assert (=> b!5366427 (= e!3330240 (and tp!1489207 tp!1489206))))

(assert (=> b!5365440 (= tp!1489159 e!3330240)))

(assert (= (and b!5365440 ((_ is ElementMatch!15075) (reg!15404 (regTwo!30663 r!7292)))) b!5366426))

(assert (= (and b!5365440 ((_ is Concat!23920) (reg!15404 (regTwo!30663 r!7292)))) b!5366427))

(assert (= (and b!5365440 ((_ is Star!15075) (reg!15404 (regTwo!30663 r!7292)))) b!5366428))

(assert (= (and b!5365440 ((_ is Union!15075) (reg!15404 (regTwo!30663 r!7292)))) b!5366429))

(declare-fun b!5366432 () Bool)

(declare-fun e!3330241 () Bool)

(declare-fun tp!1489209 () Bool)

(assert (=> b!5366432 (= e!3330241 tp!1489209)))

(declare-fun b!5366433 () Bool)

(declare-fun tp!1489210 () Bool)

(declare-fun tp!1489213 () Bool)

(assert (=> b!5366433 (= e!3330241 (and tp!1489210 tp!1489213))))

(declare-fun b!5366430 () Bool)

(assert (=> b!5366430 (= e!3330241 tp_is_empty!39403)))

(declare-fun b!5366431 () Bool)

(declare-fun tp!1489212 () Bool)

(declare-fun tp!1489211 () Bool)

(assert (=> b!5366431 (= e!3330241 (and tp!1489212 tp!1489211))))

(assert (=> b!5365401 (= tp!1489118 e!3330241)))

(assert (= (and b!5365401 ((_ is ElementMatch!15075) (h!67848 (exprs!4959 (h!67849 zl!343))))) b!5366430))

(assert (= (and b!5365401 ((_ is Concat!23920) (h!67848 (exprs!4959 (h!67849 zl!343))))) b!5366431))

(assert (= (and b!5365401 ((_ is Star!15075) (h!67848 (exprs!4959 (h!67849 zl!343))))) b!5366432))

(assert (= (and b!5365401 ((_ is Union!15075) (h!67848 (exprs!4959 (h!67849 zl!343))))) b!5366433))

(declare-fun b!5366434 () Bool)

(declare-fun e!3330242 () Bool)

(declare-fun tp!1489214 () Bool)

(declare-fun tp!1489215 () Bool)

(assert (=> b!5366434 (= e!3330242 (and tp!1489214 tp!1489215))))

(assert (=> b!5365401 (= tp!1489119 e!3330242)))

(assert (= (and b!5365401 ((_ is Cons!61400) (t!374745 (exprs!4959 (h!67849 zl!343))))) b!5366434))

(declare-fun b!5366437 () Bool)

(declare-fun e!3330243 () Bool)

(declare-fun tp!1489216 () Bool)

(assert (=> b!5366437 (= e!3330243 tp!1489216)))

(declare-fun b!5366438 () Bool)

(declare-fun tp!1489217 () Bool)

(declare-fun tp!1489220 () Bool)

(assert (=> b!5366438 (= e!3330243 (and tp!1489217 tp!1489220))))

(declare-fun b!5366435 () Bool)

(assert (=> b!5366435 (= e!3330243 tp_is_empty!39403)))

(declare-fun b!5366436 () Bool)

(declare-fun tp!1489219 () Bool)

(declare-fun tp!1489218 () Bool)

(assert (=> b!5366436 (= e!3330243 (and tp!1489219 tp!1489218))))

(assert (=> b!5365439 (= tp!1489162 e!3330243)))

(assert (= (and b!5365439 ((_ is ElementMatch!15075) (regOne!30662 (regTwo!30663 r!7292)))) b!5366435))

(assert (= (and b!5365439 ((_ is Concat!23920) (regOne!30662 (regTwo!30663 r!7292)))) b!5366436))

(assert (= (and b!5365439 ((_ is Star!15075) (regOne!30662 (regTwo!30663 r!7292)))) b!5366437))

(assert (= (and b!5365439 ((_ is Union!15075) (regOne!30662 (regTwo!30663 r!7292)))) b!5366438))

(declare-fun b!5366443 () Bool)

(declare-fun e!3330245 () Bool)

(declare-fun tp!1489221 () Bool)

(assert (=> b!5366443 (= e!3330245 tp!1489221)))

(declare-fun b!5366444 () Bool)

(declare-fun tp!1489222 () Bool)

(declare-fun tp!1489225 () Bool)

(assert (=> b!5366444 (= e!3330245 (and tp!1489222 tp!1489225))))

(declare-fun b!5366441 () Bool)

(assert (=> b!5366441 (= e!3330245 tp_is_empty!39403)))

(declare-fun b!5366442 () Bool)

(declare-fun tp!1489224 () Bool)

(declare-fun tp!1489223 () Bool)

(assert (=> b!5366442 (= e!3330245 (and tp!1489224 tp!1489223))))

(assert (=> b!5365439 (= tp!1489161 e!3330245)))

(assert (= (and b!5365439 ((_ is ElementMatch!15075) (regTwo!30662 (regTwo!30663 r!7292)))) b!5366441))

(assert (= (and b!5365439 ((_ is Concat!23920) (regTwo!30662 (regTwo!30663 r!7292)))) b!5366442))

(assert (= (and b!5365439 ((_ is Star!15075) (regTwo!30662 (regTwo!30663 r!7292)))) b!5366443))

(assert (= (and b!5365439 ((_ is Union!15075) (regTwo!30662 (regTwo!30663 r!7292)))) b!5366444))

(declare-fun condSetEmpty!34759 () Bool)

(assert (=> setNonEmpty!34747 (= condSetEmpty!34759 (= setRest!34747 ((as const (Array Context!8918 Bool)) false)))))

(declare-fun setRes!34759 () Bool)

(assert (=> setNonEmpty!34747 (= tp!1489153 setRes!34759)))

(declare-fun setIsEmpty!34759 () Bool)

(assert (=> setIsEmpty!34759 setRes!34759))

(declare-fun e!3330246 () Bool)

(declare-fun setElem!34759 () Context!8918)

(declare-fun tp!1489227 () Bool)

(declare-fun setNonEmpty!34759 () Bool)

(assert (=> setNonEmpty!34759 (= setRes!34759 (and tp!1489227 (inv!80934 setElem!34759) e!3330246))))

(declare-fun setRest!34759 () (InoxSet Context!8918))

(assert (=> setNonEmpty!34759 (= setRest!34747 ((_ map or) (store ((as const (Array Context!8918 Bool)) false) setElem!34759 true) setRest!34759))))

(declare-fun b!5366445 () Bool)

(declare-fun tp!1489226 () Bool)

(assert (=> b!5366445 (= e!3330246 tp!1489226)))

(assert (= (and setNonEmpty!34747 condSetEmpty!34759) setIsEmpty!34759))

(assert (= (and setNonEmpty!34747 (not condSetEmpty!34759)) setNonEmpty!34759))

(assert (= setNonEmpty!34759 b!5366445))

(declare-fun m!6394614 () Bool)

(assert (=> setNonEmpty!34759 m!6394614))

(declare-fun b!5366448 () Bool)

(declare-fun e!3330247 () Bool)

(declare-fun tp!1489228 () Bool)

(assert (=> b!5366448 (= e!3330247 tp!1489228)))

(declare-fun b!5366449 () Bool)

(declare-fun tp!1489229 () Bool)

(declare-fun tp!1489232 () Bool)

(assert (=> b!5366449 (= e!3330247 (and tp!1489229 tp!1489232))))

(declare-fun b!5366446 () Bool)

(assert (=> b!5366446 (= e!3330247 tp_is_empty!39403)))

(declare-fun b!5366447 () Bool)

(declare-fun tp!1489231 () Bool)

(declare-fun tp!1489230 () Bool)

(assert (=> b!5366447 (= e!3330247 (and tp!1489231 tp!1489230))))

(assert (=> b!5365441 (= tp!1489160 e!3330247)))

(assert (= (and b!5365441 ((_ is ElementMatch!15075) (regOne!30663 (regTwo!30663 r!7292)))) b!5366446))

(assert (= (and b!5365441 ((_ is Concat!23920) (regOne!30663 (regTwo!30663 r!7292)))) b!5366447))

(assert (= (and b!5365441 ((_ is Star!15075) (regOne!30663 (regTwo!30663 r!7292)))) b!5366448))

(assert (= (and b!5365441 ((_ is Union!15075) (regOne!30663 (regTwo!30663 r!7292)))) b!5366449))

(declare-fun b!5366452 () Bool)

(declare-fun e!3330248 () Bool)

(declare-fun tp!1489233 () Bool)

(assert (=> b!5366452 (= e!3330248 tp!1489233)))

(declare-fun b!5366453 () Bool)

(declare-fun tp!1489234 () Bool)

(declare-fun tp!1489237 () Bool)

(assert (=> b!5366453 (= e!3330248 (and tp!1489234 tp!1489237))))

(declare-fun b!5366450 () Bool)

(assert (=> b!5366450 (= e!3330248 tp_is_empty!39403)))

(declare-fun b!5366451 () Bool)

(declare-fun tp!1489236 () Bool)

(declare-fun tp!1489235 () Bool)

(assert (=> b!5366451 (= e!3330248 (and tp!1489236 tp!1489235))))

(assert (=> b!5365441 (= tp!1489163 e!3330248)))

(assert (= (and b!5365441 ((_ is ElementMatch!15075) (regTwo!30663 (regTwo!30663 r!7292)))) b!5366450))

(assert (= (and b!5365441 ((_ is Concat!23920) (regTwo!30663 (regTwo!30663 r!7292)))) b!5366451))

(assert (= (and b!5365441 ((_ is Star!15075) (regTwo!30663 (regTwo!30663 r!7292)))) b!5366452))

(assert (= (and b!5365441 ((_ is Union!15075) (regTwo!30663 (regTwo!30663 r!7292)))) b!5366453))

(declare-fun b!5366454 () Bool)

(declare-fun e!3330249 () Bool)

(declare-fun tp!1489238 () Bool)

(declare-fun tp!1489239 () Bool)

(assert (=> b!5366454 (= e!3330249 (and tp!1489238 tp!1489239))))

(assert (=> b!5365433 (= tp!1489152 e!3330249)))

(assert (= (and b!5365433 ((_ is Cons!61400) (exprs!4959 setElem!34747))) b!5366454))

(declare-fun b!5366457 () Bool)

(declare-fun e!3330250 () Bool)

(declare-fun tp!1489240 () Bool)

(assert (=> b!5366457 (= e!3330250 tp!1489240)))

(declare-fun b!5366458 () Bool)

(declare-fun tp!1489241 () Bool)

(declare-fun tp!1489244 () Bool)

(assert (=> b!5366458 (= e!3330250 (and tp!1489241 tp!1489244))))

(declare-fun b!5366455 () Bool)

(assert (=> b!5366455 (= e!3330250 tp_is_empty!39403)))

(declare-fun b!5366456 () Bool)

(declare-fun tp!1489243 () Bool)

(declare-fun tp!1489242 () Bool)

(assert (=> b!5366456 (= e!3330250 (and tp!1489243 tp!1489242))))

(assert (=> b!5365424 (= tp!1489139 e!3330250)))

(assert (= (and b!5365424 ((_ is ElementMatch!15075) (regOne!30663 (regOne!30662 r!7292)))) b!5366455))

(assert (= (and b!5365424 ((_ is Concat!23920) (regOne!30663 (regOne!30662 r!7292)))) b!5366456))

(assert (= (and b!5365424 ((_ is Star!15075) (regOne!30663 (regOne!30662 r!7292)))) b!5366457))

(assert (= (and b!5365424 ((_ is Union!15075) (regOne!30663 (regOne!30662 r!7292)))) b!5366458))

(declare-fun b!5366461 () Bool)

(declare-fun e!3330251 () Bool)

(declare-fun tp!1489245 () Bool)

(assert (=> b!5366461 (= e!3330251 tp!1489245)))

(declare-fun b!5366462 () Bool)

(declare-fun tp!1489246 () Bool)

(declare-fun tp!1489249 () Bool)

(assert (=> b!5366462 (= e!3330251 (and tp!1489246 tp!1489249))))

(declare-fun b!5366459 () Bool)

(assert (=> b!5366459 (= e!3330251 tp_is_empty!39403)))

(declare-fun b!5366460 () Bool)

(declare-fun tp!1489248 () Bool)

(declare-fun tp!1489247 () Bool)

(assert (=> b!5366460 (= e!3330251 (and tp!1489248 tp!1489247))))

(assert (=> b!5365424 (= tp!1489142 e!3330251)))

(assert (= (and b!5365424 ((_ is ElementMatch!15075) (regTwo!30663 (regOne!30662 r!7292)))) b!5366459))

(assert (= (and b!5365424 ((_ is Concat!23920) (regTwo!30663 (regOne!30662 r!7292)))) b!5366460))

(assert (= (and b!5365424 ((_ is Star!15075) (regTwo!30663 (regOne!30662 r!7292)))) b!5366461))

(assert (= (and b!5365424 ((_ is Union!15075) (regTwo!30663 (regOne!30662 r!7292)))) b!5366462))

(declare-fun b!5366465 () Bool)

(declare-fun e!3330252 () Bool)

(declare-fun tp!1489250 () Bool)

(assert (=> b!5366465 (= e!3330252 tp!1489250)))

(declare-fun b!5366466 () Bool)

(declare-fun tp!1489251 () Bool)

(declare-fun tp!1489254 () Bool)

(assert (=> b!5366466 (= e!3330252 (and tp!1489251 tp!1489254))))

(declare-fun b!5366463 () Bool)

(assert (=> b!5366463 (= e!3330252 tp_is_empty!39403)))

(declare-fun b!5366464 () Bool)

(declare-fun tp!1489253 () Bool)

(declare-fun tp!1489252 () Bool)

(assert (=> b!5366464 (= e!3330252 (and tp!1489253 tp!1489252))))

(assert (=> b!5365426 (= tp!1489146 e!3330252)))

(assert (= (and b!5365426 ((_ is ElementMatch!15075) (regOne!30662 (regTwo!30662 r!7292)))) b!5366463))

(assert (= (and b!5365426 ((_ is Concat!23920) (regOne!30662 (regTwo!30662 r!7292)))) b!5366464))

(assert (= (and b!5365426 ((_ is Star!15075) (regOne!30662 (regTwo!30662 r!7292)))) b!5366465))

(assert (= (and b!5365426 ((_ is Union!15075) (regOne!30662 (regTwo!30662 r!7292)))) b!5366466))

(declare-fun b!5366483 () Bool)

(declare-fun e!3330260 () Bool)

(declare-fun tp!1489255 () Bool)

(assert (=> b!5366483 (= e!3330260 tp!1489255)))

(declare-fun b!5366484 () Bool)

(declare-fun tp!1489256 () Bool)

(declare-fun tp!1489259 () Bool)

(assert (=> b!5366484 (= e!3330260 (and tp!1489256 tp!1489259))))

(declare-fun b!5366481 () Bool)

(assert (=> b!5366481 (= e!3330260 tp_is_empty!39403)))

(declare-fun b!5366482 () Bool)

(declare-fun tp!1489258 () Bool)

(declare-fun tp!1489257 () Bool)

(assert (=> b!5366482 (= e!3330260 (and tp!1489258 tp!1489257))))

(assert (=> b!5365426 (= tp!1489145 e!3330260)))

(assert (= (and b!5365426 ((_ is ElementMatch!15075) (regTwo!30662 (regTwo!30662 r!7292)))) b!5366481))

(assert (= (and b!5365426 ((_ is Concat!23920) (regTwo!30662 (regTwo!30662 r!7292)))) b!5366482))

(assert (= (and b!5365426 ((_ is Star!15075) (regTwo!30662 (regTwo!30662 r!7292)))) b!5366483))

(assert (= (and b!5365426 ((_ is Union!15075) (regTwo!30662 (regTwo!30662 r!7292)))) b!5366484))

(declare-fun b!5366487 () Bool)

(declare-fun e!3330261 () Bool)

(declare-fun tp!1489260 () Bool)

(assert (=> b!5366487 (= e!3330261 tp!1489260)))

(declare-fun b!5366488 () Bool)

(declare-fun tp!1489261 () Bool)

(declare-fun tp!1489264 () Bool)

(assert (=> b!5366488 (= e!3330261 (and tp!1489261 tp!1489264))))

(declare-fun b!5366485 () Bool)

(assert (=> b!5366485 (= e!3330261 tp_is_empty!39403)))

(declare-fun b!5366486 () Bool)

(declare-fun tp!1489263 () Bool)

(declare-fun tp!1489262 () Bool)

(assert (=> b!5366486 (= e!3330261 (and tp!1489263 tp!1489262))))

(assert (=> b!5365418 (= tp!1489136 e!3330261)))

(assert (= (and b!5365418 ((_ is ElementMatch!15075) (regOne!30662 (reg!15404 r!7292)))) b!5366485))

(assert (= (and b!5365418 ((_ is Concat!23920) (regOne!30662 (reg!15404 r!7292)))) b!5366486))

(assert (= (and b!5365418 ((_ is Star!15075) (regOne!30662 (reg!15404 r!7292)))) b!5366487))

(assert (= (and b!5365418 ((_ is Union!15075) (regOne!30662 (reg!15404 r!7292)))) b!5366488))

(declare-fun b!5366491 () Bool)

(declare-fun e!3330262 () Bool)

(declare-fun tp!1489265 () Bool)

(assert (=> b!5366491 (= e!3330262 tp!1489265)))

(declare-fun b!5366492 () Bool)

(declare-fun tp!1489266 () Bool)

(declare-fun tp!1489269 () Bool)

(assert (=> b!5366492 (= e!3330262 (and tp!1489266 tp!1489269))))

(declare-fun b!5366489 () Bool)

(assert (=> b!5366489 (= e!3330262 tp_is_empty!39403)))

(declare-fun b!5366490 () Bool)

(declare-fun tp!1489268 () Bool)

(declare-fun tp!1489267 () Bool)

(assert (=> b!5366490 (= e!3330262 (and tp!1489268 tp!1489267))))

(assert (=> b!5365418 (= tp!1489135 e!3330262)))

(assert (= (and b!5365418 ((_ is ElementMatch!15075) (regTwo!30662 (reg!15404 r!7292)))) b!5366489))

(assert (= (and b!5365418 ((_ is Concat!23920) (regTwo!30662 (reg!15404 r!7292)))) b!5366490))

(assert (= (and b!5365418 ((_ is Star!15075) (regTwo!30662 (reg!15404 r!7292)))) b!5366491))

(assert (= (and b!5365418 ((_ is Union!15075) (regTwo!30662 (reg!15404 r!7292)))) b!5366492))

(declare-fun b!5366495 () Bool)

(declare-fun e!3330263 () Bool)

(declare-fun tp!1489270 () Bool)

(assert (=> b!5366495 (= e!3330263 tp!1489270)))

(declare-fun b!5366496 () Bool)

(declare-fun tp!1489271 () Bool)

(declare-fun tp!1489274 () Bool)

(assert (=> b!5366496 (= e!3330263 (and tp!1489271 tp!1489274))))

(declare-fun b!5366493 () Bool)

(assert (=> b!5366493 (= e!3330263 tp_is_empty!39403)))

(declare-fun b!5366494 () Bool)

(declare-fun tp!1489273 () Bool)

(declare-fun tp!1489272 () Bool)

(assert (=> b!5366494 (= e!3330263 (and tp!1489273 tp!1489272))))

(assert (=> b!5365427 (= tp!1489143 e!3330263)))

(assert (= (and b!5365427 ((_ is ElementMatch!15075) (reg!15404 (regTwo!30662 r!7292)))) b!5366493))

(assert (= (and b!5365427 ((_ is Concat!23920) (reg!15404 (regTwo!30662 r!7292)))) b!5366494))

(assert (= (and b!5365427 ((_ is Star!15075) (reg!15404 (regTwo!30662 r!7292)))) b!5366495))

(assert (= (and b!5365427 ((_ is Union!15075) (reg!15404 (regTwo!30662 r!7292)))) b!5366496))

(declare-fun b!5366498 () Bool)

(declare-fun e!3330265 () Bool)

(declare-fun tp!1489275 () Bool)

(assert (=> b!5366498 (= e!3330265 tp!1489275)))

(declare-fun e!3330264 () Bool)

(declare-fun tp!1489276 () Bool)

(declare-fun b!5366497 () Bool)

(assert (=> b!5366497 (= e!3330264 (and (inv!80934 (h!67849 (t!374746 (t!374746 zl!343)))) e!3330265 tp!1489276))))

(assert (=> b!5365448 (= tp!1489169 e!3330264)))

(assert (= b!5366497 b!5366498))

(assert (= (and b!5365448 ((_ is Cons!61401) (t!374746 (t!374746 zl!343)))) b!5366497))

(declare-fun m!6394626 () Bool)

(assert (=> b!5366497 m!6394626))

(declare-fun b!5366499 () Bool)

(declare-fun e!3330266 () Bool)

(declare-fun tp!1489277 () Bool)

(declare-fun tp!1489278 () Bool)

(assert (=> b!5366499 (= e!3330266 (and tp!1489277 tp!1489278))))

(assert (=> b!5365449 (= tp!1489168 e!3330266)))

(assert (= (and b!5365449 ((_ is Cons!61400) (exprs!4959 (h!67849 (t!374746 zl!343))))) b!5366499))

(declare-fun b!5366502 () Bool)

(declare-fun e!3330267 () Bool)

(declare-fun tp!1489279 () Bool)

(assert (=> b!5366502 (= e!3330267 tp!1489279)))

(declare-fun b!5366503 () Bool)

(declare-fun tp!1489280 () Bool)

(declare-fun tp!1489283 () Bool)

(assert (=> b!5366503 (= e!3330267 (and tp!1489280 tp!1489283))))

(declare-fun b!5366500 () Bool)

(assert (=> b!5366500 (= e!3330267 tp_is_empty!39403)))

(declare-fun b!5366501 () Bool)

(declare-fun tp!1489282 () Bool)

(declare-fun tp!1489281 () Bool)

(assert (=> b!5366501 (= e!3330267 (and tp!1489282 tp!1489281))))

(assert (=> b!5365435 (= tp!1489157 e!3330267)))

(assert (= (and b!5365435 ((_ is ElementMatch!15075) (regOne!30662 (regOne!30663 r!7292)))) b!5366500))

(assert (= (and b!5365435 ((_ is Concat!23920) (regOne!30662 (regOne!30663 r!7292)))) b!5366501))

(assert (= (and b!5365435 ((_ is Star!15075) (regOne!30662 (regOne!30663 r!7292)))) b!5366502))

(assert (= (and b!5365435 ((_ is Union!15075) (regOne!30662 (regOne!30663 r!7292)))) b!5366503))

(declare-fun b!5366506 () Bool)

(declare-fun e!3330268 () Bool)

(declare-fun tp!1489284 () Bool)

(assert (=> b!5366506 (= e!3330268 tp!1489284)))

(declare-fun b!5366507 () Bool)

(declare-fun tp!1489285 () Bool)

(declare-fun tp!1489288 () Bool)

(assert (=> b!5366507 (= e!3330268 (and tp!1489285 tp!1489288))))

(declare-fun b!5366504 () Bool)

(assert (=> b!5366504 (= e!3330268 tp_is_empty!39403)))

(declare-fun b!5366505 () Bool)

(declare-fun tp!1489287 () Bool)

(declare-fun tp!1489286 () Bool)

(assert (=> b!5366505 (= e!3330268 (and tp!1489287 tp!1489286))))

(assert (=> b!5365435 (= tp!1489156 e!3330268)))

(assert (= (and b!5365435 ((_ is ElementMatch!15075) (regTwo!30662 (regOne!30663 r!7292)))) b!5366504))

(assert (= (and b!5365435 ((_ is Concat!23920) (regTwo!30662 (regOne!30663 r!7292)))) b!5366505))

(assert (= (and b!5365435 ((_ is Star!15075) (regTwo!30662 (regOne!30663 r!7292)))) b!5366506))

(assert (= (and b!5365435 ((_ is Union!15075) (regTwo!30662 (regOne!30663 r!7292)))) b!5366507))

(declare-fun b!5366514 () Bool)

(declare-fun e!3330271 () Bool)

(declare-fun tp!1489289 () Bool)

(assert (=> b!5366514 (= e!3330271 tp!1489289)))

(declare-fun b!5366515 () Bool)

(declare-fun tp!1489290 () Bool)

(declare-fun tp!1489293 () Bool)

(assert (=> b!5366515 (= e!3330271 (and tp!1489290 tp!1489293))))

(declare-fun b!5366512 () Bool)

(assert (=> b!5366512 (= e!3330271 tp_is_empty!39403)))

(declare-fun b!5366513 () Bool)

(declare-fun tp!1489292 () Bool)

(declare-fun tp!1489291 () Bool)

(assert (=> b!5366513 (= e!3330271 (and tp!1489292 tp!1489291))))

(assert (=> b!5365436 (= tp!1489154 e!3330271)))

(assert (= (and b!5365436 ((_ is ElementMatch!15075) (reg!15404 (regOne!30663 r!7292)))) b!5366512))

(assert (= (and b!5365436 ((_ is Concat!23920) (reg!15404 (regOne!30663 r!7292)))) b!5366513))

(assert (= (and b!5365436 ((_ is Star!15075) (reg!15404 (regOne!30663 r!7292)))) b!5366514))

(assert (= (and b!5365436 ((_ is Union!15075) (reg!15404 (regOne!30663 r!7292)))) b!5366515))

(declare-fun b!5366518 () Bool)

(declare-fun e!3330272 () Bool)

(declare-fun tp!1489294 () Bool)

(assert (=> b!5366518 (= e!3330272 tp!1489294)))

(declare-fun b!5366519 () Bool)

(declare-fun tp!1489295 () Bool)

(declare-fun tp!1489298 () Bool)

(assert (=> b!5366519 (= e!3330272 (and tp!1489295 tp!1489298))))

(declare-fun b!5366516 () Bool)

(assert (=> b!5366516 (= e!3330272 tp_is_empty!39403)))

(declare-fun b!5366517 () Bool)

(declare-fun tp!1489297 () Bool)

(declare-fun tp!1489296 () Bool)

(assert (=> b!5366517 (= e!3330272 (and tp!1489297 tp!1489296))))

(assert (=> b!5365428 (= tp!1489144 e!3330272)))

(assert (= (and b!5365428 ((_ is ElementMatch!15075) (regOne!30663 (regTwo!30662 r!7292)))) b!5366516))

(assert (= (and b!5365428 ((_ is Concat!23920) (regOne!30663 (regTwo!30662 r!7292)))) b!5366517))

(assert (= (and b!5365428 ((_ is Star!15075) (regOne!30663 (regTwo!30662 r!7292)))) b!5366518))

(assert (= (and b!5365428 ((_ is Union!15075) (regOne!30663 (regTwo!30662 r!7292)))) b!5366519))

(declare-fun b!5366522 () Bool)

(declare-fun e!3330273 () Bool)

(declare-fun tp!1489299 () Bool)

(assert (=> b!5366522 (= e!3330273 tp!1489299)))

(declare-fun b!5366523 () Bool)

(declare-fun tp!1489300 () Bool)

(declare-fun tp!1489303 () Bool)

(assert (=> b!5366523 (= e!3330273 (and tp!1489300 tp!1489303))))

(declare-fun b!5366520 () Bool)

(assert (=> b!5366520 (= e!3330273 tp_is_empty!39403)))

(declare-fun b!5366521 () Bool)

(declare-fun tp!1489302 () Bool)

(declare-fun tp!1489301 () Bool)

(assert (=> b!5366521 (= e!3330273 (and tp!1489302 tp!1489301))))

(assert (=> b!5365428 (= tp!1489147 e!3330273)))

(assert (= (and b!5365428 ((_ is ElementMatch!15075) (regTwo!30663 (regTwo!30662 r!7292)))) b!5366520))

(assert (= (and b!5365428 ((_ is Concat!23920) (regTwo!30663 (regTwo!30662 r!7292)))) b!5366521))

(assert (= (and b!5365428 ((_ is Star!15075) (regTwo!30663 (regTwo!30662 r!7292)))) b!5366522))

(assert (= (and b!5365428 ((_ is Union!15075) (regTwo!30663 (regTwo!30662 r!7292)))) b!5366523))

(declare-fun b!5366526 () Bool)

(declare-fun e!3330274 () Bool)

(declare-fun tp!1489304 () Bool)

(assert (=> b!5366526 (= e!3330274 tp!1489304)))

(declare-fun b!5366527 () Bool)

(declare-fun tp!1489305 () Bool)

(declare-fun tp!1489308 () Bool)

(assert (=> b!5366527 (= e!3330274 (and tp!1489305 tp!1489308))))

(declare-fun b!5366524 () Bool)

(assert (=> b!5366524 (= e!3330274 tp_is_empty!39403)))

(declare-fun b!5366525 () Bool)

(declare-fun tp!1489307 () Bool)

(declare-fun tp!1489306 () Bool)

(assert (=> b!5366525 (= e!3330274 (and tp!1489307 tp!1489306))))

(assert (=> b!5365419 (= tp!1489133 e!3330274)))

(assert (= (and b!5365419 ((_ is ElementMatch!15075) (reg!15404 (reg!15404 r!7292)))) b!5366524))

(assert (= (and b!5365419 ((_ is Concat!23920) (reg!15404 (reg!15404 r!7292)))) b!5366525))

(assert (= (and b!5365419 ((_ is Star!15075) (reg!15404 (reg!15404 r!7292)))) b!5366526))

(assert (= (and b!5365419 ((_ is Union!15075) (reg!15404 (reg!15404 r!7292)))) b!5366527))

(declare-fun b!5366530 () Bool)

(declare-fun e!3330275 () Bool)

(declare-fun tp!1489309 () Bool)

(assert (=> b!5366530 (= e!3330275 tp!1489309)))

(declare-fun b!5366531 () Bool)

(declare-fun tp!1489310 () Bool)

(declare-fun tp!1489313 () Bool)

(assert (=> b!5366531 (= e!3330275 (and tp!1489310 tp!1489313))))

(declare-fun b!5366528 () Bool)

(assert (=> b!5366528 (= e!3330275 tp_is_empty!39403)))

(declare-fun b!5366529 () Bool)

(declare-fun tp!1489312 () Bool)

(declare-fun tp!1489311 () Bool)

(assert (=> b!5366529 (= e!3330275 (and tp!1489312 tp!1489311))))

(assert (=> b!5365420 (= tp!1489134 e!3330275)))

(assert (= (and b!5365420 ((_ is ElementMatch!15075) (regOne!30663 (reg!15404 r!7292)))) b!5366528))

(assert (= (and b!5365420 ((_ is Concat!23920) (regOne!30663 (reg!15404 r!7292)))) b!5366529))

(assert (= (and b!5365420 ((_ is Star!15075) (regOne!30663 (reg!15404 r!7292)))) b!5366530))

(assert (= (and b!5365420 ((_ is Union!15075) (regOne!30663 (reg!15404 r!7292)))) b!5366531))

(declare-fun b!5366534 () Bool)

(declare-fun e!3330276 () Bool)

(declare-fun tp!1489314 () Bool)

(assert (=> b!5366534 (= e!3330276 tp!1489314)))

(declare-fun b!5366535 () Bool)

(declare-fun tp!1489315 () Bool)

(declare-fun tp!1489318 () Bool)

(assert (=> b!5366535 (= e!3330276 (and tp!1489315 tp!1489318))))

(declare-fun b!5366532 () Bool)

(assert (=> b!5366532 (= e!3330276 tp_is_empty!39403)))

(declare-fun b!5366533 () Bool)

(declare-fun tp!1489317 () Bool)

(declare-fun tp!1489316 () Bool)

(assert (=> b!5366533 (= e!3330276 (and tp!1489317 tp!1489316))))

(assert (=> b!5365420 (= tp!1489137 e!3330276)))

(assert (= (and b!5365420 ((_ is ElementMatch!15075) (regTwo!30663 (reg!15404 r!7292)))) b!5366532))

(assert (= (and b!5365420 ((_ is Concat!23920) (regTwo!30663 (reg!15404 r!7292)))) b!5366533))

(assert (= (and b!5365420 ((_ is Star!15075) (regTwo!30663 (reg!15404 r!7292)))) b!5366534))

(assert (= (and b!5365420 ((_ is Union!15075) (regTwo!30663 (reg!15404 r!7292)))) b!5366535))

(declare-fun b!5366536 () Bool)

(declare-fun e!3330277 () Bool)

(declare-fun tp!1489319 () Bool)

(assert (=> b!5366536 (= e!3330277 (and tp_is_empty!39403 tp!1489319))))

(assert (=> b!5365406 (= tp!1489122 e!3330277)))

(assert (= (and b!5365406 ((_ is Cons!61402) (t!374747 (t!374747 s!2326)))) b!5366536))

(declare-fun b!5366539 () Bool)

(declare-fun e!3330278 () Bool)

(declare-fun tp!1489320 () Bool)

(assert (=> b!5366539 (= e!3330278 tp!1489320)))

(declare-fun b!5366540 () Bool)

(declare-fun tp!1489321 () Bool)

(declare-fun tp!1489324 () Bool)

(assert (=> b!5366540 (= e!3330278 (and tp!1489321 tp!1489324))))

(declare-fun b!5366537 () Bool)

(assert (=> b!5366537 (= e!3330278 tp_is_empty!39403)))

(declare-fun b!5366538 () Bool)

(declare-fun tp!1489323 () Bool)

(declare-fun tp!1489322 () Bool)

(assert (=> b!5366538 (= e!3330278 (and tp!1489323 tp!1489322))))

(assert (=> b!5365400 (= tp!1489116 e!3330278)))

(assert (= (and b!5365400 ((_ is ElementMatch!15075) (h!67848 (exprs!4959 setElem!34741)))) b!5366537))

(assert (= (and b!5365400 ((_ is Concat!23920) (h!67848 (exprs!4959 setElem!34741)))) b!5366538))

(assert (= (and b!5365400 ((_ is Star!15075) (h!67848 (exprs!4959 setElem!34741)))) b!5366539))

(assert (= (and b!5365400 ((_ is Union!15075) (h!67848 (exprs!4959 setElem!34741)))) b!5366540))

(declare-fun b!5366541 () Bool)

(declare-fun e!3330279 () Bool)

(declare-fun tp!1489325 () Bool)

(declare-fun tp!1489326 () Bool)

(assert (=> b!5366541 (= e!3330279 (and tp!1489325 tp!1489326))))

(assert (=> b!5365400 (= tp!1489117 e!3330279)))

(assert (= (and b!5365400 ((_ is Cons!61400) (t!374745 (exprs!4959 setElem!34741)))) b!5366541))

(declare-fun b!5366544 () Bool)

(declare-fun e!3330280 () Bool)

(declare-fun tp!1489327 () Bool)

(assert (=> b!5366544 (= e!3330280 tp!1489327)))

(declare-fun b!5366545 () Bool)

(declare-fun tp!1489328 () Bool)

(declare-fun tp!1489331 () Bool)

(assert (=> b!5366545 (= e!3330280 (and tp!1489328 tp!1489331))))

(declare-fun b!5366542 () Bool)

(assert (=> b!5366542 (= e!3330280 tp_is_empty!39403)))

(declare-fun b!5366543 () Bool)

(declare-fun tp!1489330 () Bool)

(declare-fun tp!1489329 () Bool)

(assert (=> b!5366543 (= e!3330280 (and tp!1489330 tp!1489329))))

(assert (=> b!5365423 (= tp!1489138 e!3330280)))

(assert (= (and b!5365423 ((_ is ElementMatch!15075) (reg!15404 (regOne!30662 r!7292)))) b!5366542))

(assert (= (and b!5365423 ((_ is Concat!23920) (reg!15404 (regOne!30662 r!7292)))) b!5366543))

(assert (= (and b!5365423 ((_ is Star!15075) (reg!15404 (regOne!30662 r!7292)))) b!5366544))

(assert (= (and b!5365423 ((_ is Union!15075) (reg!15404 (regOne!30662 r!7292)))) b!5366545))

(declare-fun b!5366548 () Bool)

(declare-fun e!3330281 () Bool)

(declare-fun tp!1489332 () Bool)

(assert (=> b!5366548 (= e!3330281 tp!1489332)))

(declare-fun b!5366549 () Bool)

(declare-fun tp!1489333 () Bool)

(declare-fun tp!1489336 () Bool)

(assert (=> b!5366549 (= e!3330281 (and tp!1489333 tp!1489336))))

(declare-fun b!5366546 () Bool)

(assert (=> b!5366546 (= e!3330281 tp_is_empty!39403)))

(declare-fun b!5366547 () Bool)

(declare-fun tp!1489335 () Bool)

(declare-fun tp!1489334 () Bool)

(assert (=> b!5366547 (= e!3330281 (and tp!1489335 tp!1489334))))

(assert (=> b!5365422 (= tp!1489141 e!3330281)))

(assert (= (and b!5365422 ((_ is ElementMatch!15075) (regOne!30662 (regOne!30662 r!7292)))) b!5366546))

(assert (= (and b!5365422 ((_ is Concat!23920) (regOne!30662 (regOne!30662 r!7292)))) b!5366547))

(assert (= (and b!5365422 ((_ is Star!15075) (regOne!30662 (regOne!30662 r!7292)))) b!5366548))

(assert (= (and b!5365422 ((_ is Union!15075) (regOne!30662 (regOne!30662 r!7292)))) b!5366549))

(declare-fun b!5366552 () Bool)

(declare-fun e!3330282 () Bool)

(declare-fun tp!1489337 () Bool)

(assert (=> b!5366552 (= e!3330282 tp!1489337)))

(declare-fun b!5366553 () Bool)

(declare-fun tp!1489338 () Bool)

(declare-fun tp!1489341 () Bool)

(assert (=> b!5366553 (= e!3330282 (and tp!1489338 tp!1489341))))

(declare-fun b!5366550 () Bool)

(assert (=> b!5366550 (= e!3330282 tp_is_empty!39403)))

(declare-fun b!5366551 () Bool)

(declare-fun tp!1489340 () Bool)

(declare-fun tp!1489339 () Bool)

(assert (=> b!5366551 (= e!3330282 (and tp!1489340 tp!1489339))))

(assert (=> b!5365422 (= tp!1489140 e!3330282)))

(assert (= (and b!5365422 ((_ is ElementMatch!15075) (regTwo!30662 (regOne!30662 r!7292)))) b!5366550))

(assert (= (and b!5365422 ((_ is Concat!23920) (regTwo!30662 (regOne!30662 r!7292)))) b!5366551))

(assert (= (and b!5365422 ((_ is Star!15075) (regTwo!30662 (regOne!30662 r!7292)))) b!5366552))

(assert (= (and b!5365422 ((_ is Union!15075) (regTwo!30662 (regOne!30662 r!7292)))) b!5366553))

(declare-fun b!5366556 () Bool)

(declare-fun e!3330283 () Bool)

(declare-fun tp!1489342 () Bool)

(assert (=> b!5366556 (= e!3330283 tp!1489342)))

(declare-fun b!5366557 () Bool)

(declare-fun tp!1489343 () Bool)

(declare-fun tp!1489346 () Bool)

(assert (=> b!5366557 (= e!3330283 (and tp!1489343 tp!1489346))))

(declare-fun b!5366554 () Bool)

(assert (=> b!5366554 (= e!3330283 tp_is_empty!39403)))

(declare-fun b!5366555 () Bool)

(declare-fun tp!1489345 () Bool)

(declare-fun tp!1489344 () Bool)

(assert (=> b!5366555 (= e!3330283 (and tp!1489345 tp!1489344))))

(assert (=> b!5365437 (= tp!1489155 e!3330283)))

(assert (= (and b!5365437 ((_ is ElementMatch!15075) (regOne!30663 (regOne!30663 r!7292)))) b!5366554))

(assert (= (and b!5365437 ((_ is Concat!23920) (regOne!30663 (regOne!30663 r!7292)))) b!5366555))

(assert (= (and b!5365437 ((_ is Star!15075) (regOne!30663 (regOne!30663 r!7292)))) b!5366556))

(assert (= (and b!5365437 ((_ is Union!15075) (regOne!30663 (regOne!30663 r!7292)))) b!5366557))

(declare-fun b!5366560 () Bool)

(declare-fun e!3330284 () Bool)

(declare-fun tp!1489347 () Bool)

(assert (=> b!5366560 (= e!3330284 tp!1489347)))

(declare-fun b!5366561 () Bool)

(declare-fun tp!1489348 () Bool)

(declare-fun tp!1489351 () Bool)

(assert (=> b!5366561 (= e!3330284 (and tp!1489348 tp!1489351))))

(declare-fun b!5366558 () Bool)

(assert (=> b!5366558 (= e!3330284 tp_is_empty!39403)))

(declare-fun b!5366559 () Bool)

(declare-fun tp!1489350 () Bool)

(declare-fun tp!1489349 () Bool)

(assert (=> b!5366559 (= e!3330284 (and tp!1489350 tp!1489349))))

(assert (=> b!5365437 (= tp!1489158 e!3330284)))

(assert (= (and b!5365437 ((_ is ElementMatch!15075) (regTwo!30663 (regOne!30663 r!7292)))) b!5366558))

(assert (= (and b!5365437 ((_ is Concat!23920) (regTwo!30663 (regOne!30663 r!7292)))) b!5366559))

(assert (= (and b!5365437 ((_ is Star!15075) (regTwo!30663 (regOne!30663 r!7292)))) b!5366560))

(assert (= (and b!5365437 ((_ is Union!15075) (regTwo!30663 (regOne!30663 r!7292)))) b!5366561))

(declare-fun b_lambda!205733 () Bool)

(assert (= b_lambda!205729 (or b!5364515 b_lambda!205733)))

(assert (=> d!1719123 d!1718679))

(declare-fun b_lambda!205735 () Bool)

(assert (= b_lambda!205727 (or b!5364515 b_lambda!205735)))

(assert (=> d!1719097 d!1718671))

(declare-fun b_lambda!205737 () Bool)

(assert (= b_lambda!205731 (or b!5364515 b_lambda!205737)))

(assert (=> d!1719137 d!1718675))

(declare-fun b_lambda!205739 () Bool)

(assert (= b_lambda!205711 (or d!1718621 b_lambda!205739)))

(declare-fun bs!1243032 () Bool)

(declare-fun d!1719179 () Bool)

(assert (= bs!1243032 (and d!1719179 d!1718621)))

(assert (=> bs!1243032 (= (dynLambda!24253 lambda!276542 (h!67848 (unfocusZipperList!517 zl!343))) (validRegex!6811 (h!67848 (unfocusZipperList!517 zl!343))))))

(declare-fun m!6394646 () Bool)

(assert (=> bs!1243032 m!6394646))

(assert (=> b!5365581 d!1719179))

(declare-fun b_lambda!205741 () Bool)

(assert (= b_lambda!205721 (or b!5364523 b_lambda!205741)))

(declare-fun bs!1243033 () Bool)

(declare-fun d!1719181 () Bool)

(assert (= bs!1243033 (and d!1719181 b!5364523)))

(assert (=> bs!1243033 (= (dynLambda!24253 lambda!276483 (h!67848 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343)))))) (validRegex!6811 (h!67848 (t!374745 (t!374745 (exprs!4959 (h!67849 zl!343)))))))))

(declare-fun m!6394648 () Bool)

(assert (=> bs!1243033 m!6394648))

(assert (=> b!5365838 d!1719181))

(declare-fun b_lambda!205743 () Bool)

(assert (= b_lambda!205715 (or d!1718613 b_lambda!205743)))

(declare-fun bs!1243034 () Bool)

(declare-fun d!1719183 () Bool)

(assert (= bs!1243034 (and d!1719183 d!1718613)))

(assert (=> bs!1243034 (= (dynLambda!24253 lambda!276536 (h!67848 (exprs!4959 (h!67849 zl!343)))) (validRegex!6811 (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(declare-fun m!6394650 () Bool)

(assert (=> bs!1243034 m!6394650))

(assert (=> b!5365628 d!1719183))

(declare-fun b_lambda!205745 () Bool)

(assert (= b_lambda!205717 (or d!1718615 b_lambda!205745)))

(declare-fun bs!1243035 () Bool)

(declare-fun d!1719185 () Bool)

(assert (= bs!1243035 (and d!1719185 d!1718615)))

(assert (=> bs!1243035 (= (dynLambda!24253 lambda!276539 (h!67848 (exprs!4959 (h!67849 zl!343)))) (validRegex!6811 (h!67848 (exprs!4959 (h!67849 zl!343)))))))

(assert (=> bs!1243035 m!6394650))

(assert (=> b!5365665 d!1719185))

(declare-fun b_lambda!205747 () Bool)

(assert (= b_lambda!205725 (or b!5364515 b_lambda!205747)))

(assert (=> d!1719001 d!1718673))

(declare-fun b_lambda!205749 () Bool)

(assert (= b_lambda!205719 (or d!1718623 b_lambda!205749)))

(declare-fun bs!1243036 () Bool)

(declare-fun d!1719187 () Bool)

(assert (= bs!1243036 (and d!1719187 d!1718623)))

(assert (=> bs!1243036 (= (dynLambda!24253 lambda!276545 (h!67848 lt!2185642)) (validRegex!6811 (h!67848 lt!2185642)))))

(declare-fun m!6394652 () Bool)

(assert (=> bs!1243036 m!6394652))

(assert (=> b!5365804 d!1719187))

(declare-fun b_lambda!205751 () Bool)

(assert (= b_lambda!205709 (or d!1718609 b_lambda!205751)))

(declare-fun bs!1243037 () Bool)

(declare-fun d!1719189 () Bool)

(assert (= bs!1243037 (and d!1719189 d!1718609)))

(assert (=> bs!1243037 (= (dynLambda!24253 lambda!276535 (h!67848 (exprs!4959 setElem!34741))) (validRegex!6811 (h!67848 (exprs!4959 setElem!34741))))))

(declare-fun m!6394654 () Bool)

(assert (=> bs!1243037 m!6394654))

(assert (=> b!5365570 d!1719189))

(declare-fun b_lambda!205753 () Bool)

(assert (= b_lambda!205713 (or b!5364515 b_lambda!205753)))

(assert (=> d!1718747 d!1718669))

(check-sat (not bm!383964) (not bm!384003) (not d!1718955) (not b!5366445) (not b!5365989) (not bm!383961) (not b!5365812) (not b!5365854) (not b!5365552) (not b!5365922) (not b!5365511) (not b!5366549) (not b!5366461) (not b!5365499) (not b!5366487) (not b!5365875) (not bm!383898) (not b!5366447) (not b!5366457) (not b!5366555) (not b!5366259) (not bm!384086) (not b!5366411) (not setNonEmpty!34759) (not b!5365612) (not b!5365970) (not bm!384019) (not b!5366436) (not b!5366202) (not b!5366531) (not b!5366039) (not b!5366492) (not b!5366458) (not b!5365589) (not b!5366551) (not b!5366437) (not b!5366008) (not b!5366355) (not b!5365504) (not b!5365976) (not d!1719119) (not d!1719123) (not d!1718765) (not b!5366521) (not b!5366526) (not b!5365641) (not b!5366076) (not b!5365996) (not b!5365726) (not b!5366488) (not b!5366514) (not b!5365620) (not b!5366536) (not bm!384004) (not b!5366191) (not bm!383954) (not bm!384013) (not bm!384007) (not d!1719097) (not b!5366548) (not bs!1243034) (not bm!383905) (not b!5365881) (not b!5366192) (not b!5365571) (not bm!383907) (not b_lambda!205735) (not b!5366284) (not bm!384059) (not b!5366527) (not b!5365605) (not bm!384017) (not d!1718747) (not b!5366311) (not b!5366112) (not b!5366278) (not b!5365975) (not b!5365503) (not b!5365837) (not b!5365512) (not bm!384027) (not b!5366529) (not bm!384001) (not b!5365969) (not b!5365697) (not bm!383967) (not bm!383921) (not b!5365737) (not d!1718899) (not bm!383902) (not bm!384052) (not b!5365679) (not d!1719047) (not bm!383988) (not setNonEmpty!34750) (not setNonEmpty!34752) (not d!1718819) (not b!5366081) (not b_lambda!205743) (not b!5366525) (not b!5365811) (not bm!383880) (not b!5365458) (not b!5365734) (not bm!383927) (not b!5366451) (not d!1718737) (not b!5365722) (not bm!384063) (not bm!383947) (not b!5366057) (not b!5366379) (not b!5366197) (not b!5366058) (not b!5366559) (not bm!383955) (not b!5365642) (not d!1718865) (not b!5365819) (not d!1718909) (not b!5366070) (not d!1718681) (not b!5366173) (not b!5365696) (not d!1718871) (not b!5366519) (not d!1719085) (not b!5366448) (not bs!1243035) (not d!1718845) (not b_lambda!205707) (not bm!383899) (not bm!384055) (not b!5366279) (not b!5365973) (not b!5365457) (not b!5366490) (not d!1719039) (not b_lambda!205699) (not b!5366023) (not b!5366501) (not b_lambda!205745) (not b!5366140) (not d!1718697) (not b!5365724) (not b!5365861) (not d!1719081) (not b!5366432) (not b!5365832) (not bm!383971) (not b!5366486) (not b!5365971) (not b!5366015) (not b!5366346) (not b!5365657) (not b!5365524) (not bm!384064) (not b!5366174) (not b!5366452) (not bm!383990) (not b!5365979) (not bm!383963) (not b!5365558) (not b!5366190) (not d!1718881) (not b!5366561) (not d!1718699) (not b!5365566) (not b!5366335) (not b!5365836) (not b!5366483) (not b!5365852) (not b_lambda!205733) (not b!5365968) (not b!5366374) (not b!5366428) (not b!5365600) (not b!5365629) (not b!5365992) (not b!5365640) (not bm!384023) (not d!1719027) (not d!1718863) (not b!5366522) (not bm!383960) (not b!5365876) (not b!5366495) (not bm!384002) (not b!5365768) (not b!5365990) (not b!5365613) (not d!1719049) (not b!5365991) (not d!1718751) (not b!5366465) (not b!5366298) (not b!5365618) (not b!5366277) (not b!5366306) (not b!5366502) (not d!1719021) (not b!5366454) (not b!5366431) (not bm!383952) (not b!5366024) (not d!1718931) (not b!5365792) (not b!5365650) (not b!5365643) (not b!5366056) (not b_lambda!205705) (not b!5365501) (not d!1718703) (not bm!383913) (not b!5366460) (not d!1718763) (not b!5366541) (not bm!383918) (not d!1718801) (not b_lambda!205753) (not bm!383901) (not b!5365784) (not d!1718755) (not b!5366533) (not bm!383997) (not b!5366271) (not b!5366064) (not d!1718927) (not bm!384026) (not d!1718739) (not d!1718829) (not b!5366196) (not b!5365573) (not b!5365934) (not setNonEmpty!34758) (not b!5366517) (not bs!1243036) (not bm!384037) (not b!5366456) (not d!1719151) (not d!1718947) (not b!5365533) (not bm!384061) (not d!1718813) (not b!5366543) (not b!5365874) (not b!5365698) (not b!5366552) (not d!1718875) (not bm!383993) (not b!5365831) (not bm!383965) (not b!5365867) (not b!5366075) (not d!1718885) (not b!5365450) (not d!1719113) (not b!5365541) (not b_lambda!205703) (not b!5366051) (not d!1719101) (not b!5366534) (not b!5366544) (not b!5365510) (not d!1718705) (not b!5365892) (not b!5366377) (not d!1719015) (not b!5365851) (not d!1718757) (not b!5366556) (not bm!384051) (not b!5365774) (not b!5365611) (not b!5366014) (not d!1718767) (not b!5366305) (not d!1718761) (not b!5365767) (not b!5366453) (not b!5366438) (not bm!383900) (not setNonEmpty!34751) (not d!1718983) (not b!5365569) (not d!1718961) (not d!1718803) (not d!1719091) (not b_lambda!205697) (not b!5366449) (not b!5366494) (not d!1718771) (not b!5366496) (not b!5365868) (not b!5366497) (not b!5365561) (not bm!383979) (not bs!1243037) (not b!5365729) (not b!5366427) (not b!5366026) (not b!5366429) (not b!5366518) (not d!1718725) (not b_lambda!205741) (not bm!383989) (not b!5365582) (not b!5365933) (not d!1718715) (not bm!383892) (not b!5365535) (not b!5365776) (not b_lambda!205701) (not bm!383915) (not d!1718903) (not d!1718887) (not b!5366276) (not d!1718901) (not d!1719137) (not bs!1243033) (not b!5365987) (not bm!383922) (not b!5365813) (not b!5366123) (not b!5366292) (not b!5366513) (not d!1719087) (not bm!383969) (not b!5365509) (not b!5366466) (not b!5365673) (not b_lambda!205751) (not b!5365455) (not b!5366034) (not b!5366462) (not d!1718793) (not bm!384036) (not b!5366506) (not b!5366382) (not d!1719023) (not bm!383897) (not b!5366540) (not d!1719001) (not b!5365456) (not d!1718791) (not d!1719105) (not b!5366188) (not b!5366553) (not b!5366505) (not b!5365534) (not b!5365927) (not setNonEmpty!34757) (not b!5365647) (not b!5365528) (not bm!384084) (not b!5366535) (not b!5366103) (not bm!383937) (not b!5366434) (not b!5365731) (not d!1719103) (not b!5365517) (not b!5365653) (not bm!383938) (not b!5366303) (not b!5365841) (not d!1719025) (not b!5365490) (not b!5366507) (not b!5366484) (not b!5365544) (not b!5366189) (not d!1719013) (not bm!383893) (not bm!383934) (not bm!383976) (not b!5366523) (not b!5365950) (not b!5366443) (not b_lambda!205747) (not bm!383986) (not bm!383977) (not b!5365814) (not bm!384054) (not bm!384009) (not b!5366557) (not d!1718827) (not d!1718773) (not d!1719145) (not b!5366059) (not b!5365862) (not b!5366442) (not b!5365727) (not bm!384082) (not b!5366499) (not b!5365654) (not b!5365859) (not d!1718959) (not d!1718831) (not bm!383946) (not d!1718683) (not b!5366380) (not bm!383896) (not b!5366491) (not d!1718735) (not b!5365966) (not bm!383891) (not b!5366331) (not b!5366515) (not b!5366071) (not d!1719121) (not b!5365834) (not b!5365553) (not b!5366498) (not b!5365560) (not b!5366482) (not b!5365799) (not b!5366326) (not bm!383950) (not b!5366134) (not d!1718749) (not bm!384060) (not b!5366104) (not bm!384021) (not b!5365699) (not bs!1243032) (not b!5366375) (not b!5365680) (not bm!383920) (not d!1718981) (not d!1718975) (not b!5365725) (not bm!383984) (not d!1719009) (not b!5365860) (not b!5366022) (not b_lambda!205737) (not b!5366547) (not b!5366433) (not bm!383911) (not b!5365666) (not b!5365683) (not b!5365684) (not d!1718859) (not d!1718809) (not b!5366304) (not b!5365710) (not b!5366464) (not b!5365806) (not b!5366545) (not bm!383958) (not bm!384025) (not d!1718905) (not bm!383998) (not b!5365994) (not b!5365536) (not b!5365873) (not b!5366530) (not b!5365826) (not b!5365711) (not b!5366383) (not bm!383959) (not d!1718951) (not b!5365778) (not b!5365839) (not bm!383933) (not b!5366330) (not d!1718939) (not b!5365703) (not b!5366539) (not d!1718795) (not b!5365463) (not b!5366560) (not b!5365714) (not d!1718973) (not bm!384000) (not bm!383935) (not bm!383978) (not bm!384015) (not b!5366538) (not b_lambda!205739) (not b!5365695) (not bm!383909) (not bm!383929) (not b!5366291) (not bm!383917) (not bm!383925) (not b!5365805) (not b!5365958) (not bm!384011) (not bm!384058) (not b!5365645) (not b!5365545) (not bm!383916) (not b!5366376) (not b!5366444) (not b!5365638) (not b_lambda!205749) (not b!5366503) (not bm!384062) (not b!5366334) (not b!5365610) (not d!1718701) (not d!1718907) (not b!5365559) (not bm!383992) tp_is_empty!39403)
(check-sat)
