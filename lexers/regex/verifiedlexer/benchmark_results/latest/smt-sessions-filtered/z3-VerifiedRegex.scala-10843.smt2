; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!558794 () Bool)

(assert start!558794)

(declare-fun b!5295512 () Bool)

(assert (=> b!5295512 true))

(assert (=> b!5295512 true))

(declare-fun lambda!268491 () Int)

(declare-fun lambda!268490 () Int)

(assert (=> b!5295512 (not (= lambda!268491 lambda!268490))))

(assert (=> b!5295512 true))

(assert (=> b!5295512 true))

(declare-fun b!5295514 () Bool)

(assert (=> b!5295514 true))

(declare-fun bs!1228190 () Bool)

(declare-fun b!5295527 () Bool)

(assert (= bs!1228190 (and b!5295527 b!5295512)))

(declare-datatypes ((C!30136 0))(
  ( (C!30137 (val!24770 Int)) )
))
(declare-datatypes ((Regex!14933 0))(
  ( (ElementMatch!14933 (c!918905 C!30136)) (Concat!23778 (regOne!30378 Regex!14933) (regTwo!30378 Regex!14933)) (EmptyExpr!14933) (Star!14933 (reg!15262 Regex!14933)) (EmptyLang!14933) (Union!14933 (regOne!30379 Regex!14933) (regTwo!30379 Regex!14933)) )
))
(declare-fun r!7292 () Regex!14933)

(declare-fun lambda!268493 () Int)

(declare-fun lt!2163798 () Regex!14933)

(assert (=> bs!1228190 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268493 lambda!268490))))

(assert (=> bs!1228190 (not (= lambda!268493 lambda!268491))))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(declare-fun lambda!268494 () Int)

(assert (=> bs!1228190 (not (= lambda!268494 lambda!268490))))

(assert (=> bs!1228190 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268494 lambda!268491))))

(assert (=> b!5295527 (not (= lambda!268494 lambda!268493))))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(declare-fun lambda!268495 () Int)

(declare-fun lt!2163767 () Regex!14933)

(assert (=> bs!1228190 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268495 lambda!268490))))

(assert (=> bs!1228190 (not (= lambda!268495 lambda!268491))))

(assert (=> b!5295527 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 (regOne!30378 r!7292))) (= lt!2163767 lt!2163798)) (= lambda!268495 lambda!268493))))

(assert (=> b!5295527 (not (= lambda!268495 lambda!268494))))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(declare-fun lambda!268496 () Int)

(assert (=> bs!1228190 (not (= lambda!268496 lambda!268490))))

(assert (=> bs!1228190 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268496 lambda!268491))))

(assert (=> b!5295527 (not (= lambda!268496 lambda!268493))))

(assert (=> b!5295527 (not (= lambda!268496 lambda!268495))))

(assert (=> b!5295527 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 (regOne!30378 r!7292))) (= lt!2163767 lt!2163798)) (= lambda!268496 lambda!268494))))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(assert (=> b!5295527 true))

(declare-fun b!5295494 () Bool)

(declare-fun e!3291741 () Bool)

(declare-fun tp_is_empty!39119 () Bool)

(assert (=> b!5295494 (= e!3291741 tp_is_empty!39119)))

(declare-fun b!5295495 () Bool)

(declare-fun tp!1477564 () Bool)

(declare-fun tp!1477570 () Bool)

(assert (=> b!5295495 (= e!3291741 (and tp!1477564 tp!1477570))))

(declare-fun b!5295496 () Bool)

(declare-fun e!3291739 () Bool)

(declare-datatypes ((List!61098 0))(
  ( (Nil!60974) (Cons!60974 (h!67422 Regex!14933) (t!374303 List!61098)) )
))
(declare-fun lt!2163792 () List!61098)

(declare-fun lambda!268497 () Int)

(declare-fun forall!14345 (List!61098 Int) Bool)

(assert (=> b!5295496 (= e!3291739 (forall!14345 lt!2163792 lambda!268497))))

(declare-fun b!5295497 () Bool)

(declare-fun e!3291737 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!8634 0))(
  ( (Context!8635 (exprs!4817 List!61098)) )
))
(declare-fun lt!2163799 () (InoxSet Context!8634))

(declare-datatypes ((List!61099 0))(
  ( (Nil!60975) (Cons!60975 (h!67423 C!30136) (t!374304 List!61099)) )
))
(declare-fun s!2326 () List!61099)

(declare-fun matchZipper!1177 ((InoxSet Context!8634) List!61099) Bool)

(assert (=> b!5295497 (= e!3291737 (matchZipper!1177 lt!2163799 (t!374304 s!2326)))))

(declare-fun b!5295498 () Bool)

(declare-fun e!3291735 () Bool)

(declare-fun lt!2163766 () (InoxSet Context!8634))

(assert (=> b!5295498 (= e!3291735 (not (matchZipper!1177 lt!2163766 (t!374304 s!2326))))))

(declare-fun b!5295499 () Bool)

(declare-fun res!2245985 () Bool)

(declare-fun e!3291730 () Bool)

(assert (=> b!5295499 (=> res!2245985 e!3291730)))

(declare-datatypes ((List!61100 0))(
  ( (Nil!60976) (Cons!60976 (h!67424 Context!8634) (t!374305 List!61100)) )
))
(declare-fun zl!343 () List!61100)

(declare-fun isEmpty!32931 (List!61100) Bool)

(assert (=> b!5295499 (= res!2245985 (not (isEmpty!32931 (t!374305 zl!343))))))

(declare-fun b!5295500 () Bool)

(declare-fun e!3291732 () Bool)

(declare-fun e!3291723 () Bool)

(assert (=> b!5295500 (= e!3291732 e!3291723)))

(declare-fun res!2245992 () Bool)

(assert (=> b!5295500 (=> res!2245992 e!3291723)))

(declare-fun lt!2163787 () List!61100)

(declare-fun zipperDepthTotal!94 (List!61100) Int)

(assert (=> b!5295500 (= res!2245992 (>= (zipperDepthTotal!94 lt!2163787) (zipperDepthTotal!94 zl!343)))))

(declare-fun lt!2163791 () Context!8634)

(assert (=> b!5295500 (= lt!2163787 (Cons!60976 lt!2163791 Nil!60976))))

(declare-fun setIsEmpty!34001 () Bool)

(declare-fun setRes!34001 () Bool)

(assert (=> setIsEmpty!34001 setRes!34001))

(declare-fun b!5295501 () Bool)

(declare-fun e!3291736 () Bool)

(declare-fun e!3291725 () Bool)

(assert (=> b!5295501 (= e!3291736 e!3291725)))

(declare-fun res!2245977 () Bool)

(assert (=> b!5295501 (=> res!2245977 e!3291725)))

(declare-fun lt!2163796 () (InoxSet Context!8634))

(declare-fun lt!2163768 () (InoxSet Context!8634))

(assert (=> b!5295501 (= res!2245977 (not (= lt!2163796 lt!2163768)))))

(declare-fun lt!2163806 () (InoxSet Context!8634))

(assert (=> b!5295501 (= lt!2163768 ((_ map or) lt!2163806 lt!2163766))))

(declare-fun lt!2163769 () Context!8634)

(declare-fun derivationStepZipperDown!381 (Regex!14933 Context!8634 C!30136) (InoxSet Context!8634))

(assert (=> b!5295501 (= lt!2163766 (derivationStepZipperDown!381 (regTwo!30378 (regOne!30378 r!7292)) lt!2163769 (h!67423 s!2326)))))

(declare-fun lt!2163790 () Context!8634)

(assert (=> b!5295501 (= lt!2163806 (derivationStepZipperDown!381 (regOne!30378 (regOne!30378 r!7292)) lt!2163790 (h!67423 s!2326)))))

(assert (=> b!5295501 (= lt!2163790 (Context!8635 lt!2163792))))

(assert (=> b!5295501 (= lt!2163792 (Cons!60974 (regTwo!30378 (regOne!30378 r!7292)) (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5295502 () Bool)

(declare-fun e!3291742 () Bool)

(assert (=> b!5295502 (= e!3291742 (matchZipper!1177 lt!2163766 (t!374304 s!2326)))))

(declare-fun b!5295503 () Bool)

(declare-fun e!3291733 () Bool)

(declare-fun tp!1477566 () Bool)

(declare-fun e!3291729 () Bool)

(declare-fun inv!80579 (Context!8634) Bool)

(assert (=> b!5295503 (= e!3291729 (and (inv!80579 (h!67424 zl!343)) e!3291733 tp!1477566))))

(declare-fun b!5295504 () Bool)

(declare-fun e!3291740 () Bool)

(assert (=> b!5295504 (= e!3291740 e!3291732)))

(declare-fun res!2245979 () Bool)

(assert (=> b!5295504 (=> res!2245979 e!3291732)))

(declare-fun e!3291728 () Bool)

(assert (=> b!5295504 (= res!2245979 e!3291728)))

(declare-fun res!2245989 () Bool)

(assert (=> b!5295504 (=> (not res!2245989) (not e!3291728))))

(declare-fun lt!2163765 () (InoxSet Context!8634))

(declare-fun lt!2163804 () Bool)

(assert (=> b!5295504 (= res!2245989 (not (= lt!2163804 (matchZipper!1177 lt!2163765 (t!374304 s!2326)))))))

(declare-fun lt!2163774 () (InoxSet Context!8634))

(assert (=> b!5295504 (= (matchZipper!1177 lt!2163774 (t!374304 s!2326)) e!3291737)))

(declare-fun res!2245978 () Bool)

(assert (=> b!5295504 (=> res!2245978 e!3291737)))

(declare-fun lt!2163789 () Bool)

(assert (=> b!5295504 (= res!2245978 lt!2163789)))

(declare-datatypes ((Unit!153250 0))(
  ( (Unit!153251) )
))
(declare-fun lt!2163800 () Unit!153250)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!170 ((InoxSet Context!8634) (InoxSet Context!8634) List!61099) Unit!153250)

(assert (=> b!5295504 (= lt!2163800 (lemmaZipperConcatMatchesSameAsBothZippers!170 lt!2163806 lt!2163799 (t!374304 s!2326)))))

(declare-fun lambda!268492 () Int)

(declare-fun lt!2163773 () (InoxSet Context!8634))

(declare-fun flatMap!660 ((InoxSet Context!8634) Int) (InoxSet Context!8634))

(declare-fun derivationStepZipperUp!305 (Context!8634 C!30136) (InoxSet Context!8634))

(assert (=> b!5295504 (= (flatMap!660 lt!2163773 lambda!268492) (derivationStepZipperUp!305 lt!2163790 (h!67423 s!2326)))))

(declare-fun lt!2163803 () Unit!153250)

(declare-fun lemmaFlatMapOnSingletonSet!192 ((InoxSet Context!8634) Context!8634 Int) Unit!153250)

(assert (=> b!5295504 (= lt!2163803 (lemmaFlatMapOnSingletonSet!192 lt!2163773 lt!2163790 lambda!268492))))

(declare-fun b!5295505 () Bool)

(declare-fun e!3291731 () Unit!153250)

(declare-fun Unit!153252 () Unit!153250)

(assert (=> b!5295505 (= e!3291731 Unit!153252)))

(declare-fun lt!2163779 () Unit!153250)

(declare-fun lt!2163805 () (InoxSet Context!8634))

(assert (=> b!5295505 (= lt!2163779 (lemmaZipperConcatMatchesSameAsBothZippers!170 lt!2163796 lt!2163805 (t!374304 s!2326)))))

(declare-fun res!2245981 () Bool)

(assert (=> b!5295505 (= res!2245981 (matchZipper!1177 lt!2163796 (t!374304 s!2326)))))

(declare-fun e!3291734 () Bool)

(assert (=> b!5295505 (=> res!2245981 e!3291734)))

(assert (=> b!5295505 (= (matchZipper!1177 ((_ map or) lt!2163796 lt!2163805) (t!374304 s!2326)) e!3291734)))

(declare-fun b!5295506 () Bool)

(declare-fun e!3291724 () Bool)

(declare-fun tp!1477568 () Bool)

(assert (=> b!5295506 (= e!3291724 tp!1477568)))

(declare-fun b!5295507 () Bool)

(declare-fun res!2245990 () Bool)

(assert (=> b!5295507 (=> res!2245990 e!3291730)))

(declare-fun generalisedConcat!602 (List!61098) Regex!14933)

(assert (=> b!5295507 (= res!2245990 (not (= r!7292 (generalisedConcat!602 (exprs!4817 (h!67424 zl!343))))))))

(declare-fun b!5295508 () Bool)

(declare-fun Unit!153253 () Unit!153250)

(assert (=> b!5295508 (= e!3291731 Unit!153253)))

(declare-fun b!5295509 () Bool)

(declare-fun e!3291727 () Bool)

(declare-fun tp!1477573 () Bool)

(assert (=> b!5295509 (= e!3291727 (and tp_is_empty!39119 tp!1477573))))

(declare-fun b!5295510 () Bool)

(declare-fun derivationStepZipper!1176 ((InoxSet Context!8634) C!30136) (InoxSet Context!8634))

(assert (=> b!5295510 (= e!3291728 (not (matchZipper!1177 (derivationStepZipper!1176 lt!2163773 (h!67423 s!2326)) (t!374304 s!2326))))))

(declare-fun b!5295511 () Bool)

(declare-fun tp!1477572 () Bool)

(assert (=> b!5295511 (= e!3291741 tp!1477572)))

(declare-fun e!3291722 () Bool)

(assert (=> b!5295512 (= e!3291730 e!3291722)))

(declare-fun res!2245982 () Bool)

(assert (=> b!5295512 (=> res!2245982 e!3291722)))

(declare-fun lt!2163762 () Bool)

(declare-fun lt!2163808 () Bool)

(get-info :version)

(assert (=> b!5295512 (= res!2245982 (or (not (= lt!2163808 lt!2163762)) ((_ is Nil!60975) s!2326)))))

(declare-fun Exists!2114 (Int) Bool)

(assert (=> b!5295512 (= (Exists!2114 lambda!268490) (Exists!2114 lambda!268491))))

(declare-fun lt!2163763 () Unit!153250)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!768 (Regex!14933 Regex!14933 List!61099) Unit!153250)

(assert (=> b!5295512 (= lt!2163763 (lemmaExistCutMatchRandMatchRSpecEquivalent!768 (regOne!30378 r!7292) (regTwo!30378 r!7292) s!2326))))

(assert (=> b!5295512 (= lt!2163762 (Exists!2114 lambda!268490))))

(declare-datatypes ((tuple2!64264 0))(
  ( (tuple2!64265 (_1!35435 List!61099) (_2!35435 List!61099)) )
))
(declare-datatypes ((Option!15044 0))(
  ( (None!15043) (Some!15043 (v!51072 tuple2!64264)) )
))
(declare-fun isDefined!11747 (Option!15044) Bool)

(declare-fun findConcatSeparation!1458 (Regex!14933 Regex!14933 List!61099 List!61099 List!61099) Option!15044)

(assert (=> b!5295512 (= lt!2163762 (isDefined!11747 (findConcatSeparation!1458 (regOne!30378 r!7292) (regTwo!30378 r!7292) Nil!60975 s!2326 s!2326)))))

(declare-fun lt!2163788 () Unit!153250)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1222 (Regex!14933 Regex!14933 List!61099) Unit!153250)

(assert (=> b!5295512 (= lt!2163788 (lemmaFindConcatSeparationEquivalentToExists!1222 (regOne!30378 r!7292) (regTwo!30378 r!7292) s!2326))))

(declare-fun setElem!34001 () Context!8634)

(declare-fun setNonEmpty!34001 () Bool)

(declare-fun tp!1477569 () Bool)

(assert (=> setNonEmpty!34001 (= setRes!34001 (and tp!1477569 (inv!80579 setElem!34001) e!3291724))))

(declare-fun z!1189 () (InoxSet Context!8634))

(declare-fun setRest!34001 () (InoxSet Context!8634))

(assert (=> setNonEmpty!34001 (= z!1189 ((_ map or) (store ((as const (Array Context!8634 Bool)) false) setElem!34001 true) setRest!34001))))

(declare-fun b!5295513 () Bool)

(declare-fun tp!1477571 () Bool)

(declare-fun tp!1477565 () Bool)

(assert (=> b!5295513 (= e!3291741 (and tp!1477571 tp!1477565))))

(assert (=> b!5295514 (= e!3291722 e!3291736)))

(declare-fun res!2245971 () Bool)

(assert (=> b!5295514 (=> res!2245971 e!3291736)))

(assert (=> b!5295514 (= res!2245971 (or (and ((_ is ElementMatch!14933) (regOne!30378 r!7292)) (= (c!918905 (regOne!30378 r!7292)) (h!67423 s!2326))) ((_ is Union!14933) (regOne!30378 r!7292)) (not ((_ is Concat!23778) (regOne!30378 r!7292)))))))

(declare-fun lt!2163793 () Unit!153250)

(assert (=> b!5295514 (= lt!2163793 e!3291731)))

(declare-fun c!918904 () Bool)

(declare-fun nullable!5102 (Regex!14933) Bool)

(assert (=> b!5295514 (= c!918904 (nullable!5102 (h!67422 (exprs!4817 (h!67424 zl!343)))))))

(assert (=> b!5295514 (= (flatMap!660 z!1189 lambda!268492) (derivationStepZipperUp!305 (h!67424 zl!343) (h!67423 s!2326)))))

(declare-fun lt!2163782 () Unit!153250)

(assert (=> b!5295514 (= lt!2163782 (lemmaFlatMapOnSingletonSet!192 z!1189 (h!67424 zl!343) lambda!268492))))

(assert (=> b!5295514 (= lt!2163805 (derivationStepZipperUp!305 lt!2163769 (h!67423 s!2326)))))

(assert (=> b!5295514 (= lt!2163796 (derivationStepZipperDown!381 (h!67422 (exprs!4817 (h!67424 zl!343))) lt!2163769 (h!67423 s!2326)))))

(assert (=> b!5295514 (= lt!2163769 (Context!8635 (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun lt!2163780 () (InoxSet Context!8634))

(assert (=> b!5295514 (= lt!2163780 (derivationStepZipperUp!305 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343))))) (h!67423 s!2326)))))

(declare-fun b!5295515 () Bool)

(declare-fun res!2245973 () Bool)

(assert (=> b!5295515 (=> res!2245973 e!3291736)))

(assert (=> b!5295515 (= res!2245973 (not (nullable!5102 (regOne!30378 (regOne!30378 r!7292)))))))

(declare-fun b!5295516 () Bool)

(declare-fun res!2245988 () Bool)

(assert (=> b!5295516 (=> res!2245988 e!3291730)))

(declare-fun generalisedUnion!862 (List!61098) Regex!14933)

(declare-fun unfocusZipperList!375 (List!61100) List!61098)

(assert (=> b!5295516 (= res!2245988 (not (= r!7292 (generalisedUnion!862 (unfocusZipperList!375 zl!343)))))))

(declare-fun b!5295517 () Bool)

(declare-fun res!2245975 () Bool)

(declare-fun e!3291738 () Bool)

(assert (=> b!5295517 (=> (not res!2245975) (not e!3291738))))

(declare-fun unfocusZipper!675 (List!61100) Regex!14933)

(assert (=> b!5295517 (= res!2245975 (= r!7292 (unfocusZipper!675 zl!343)))))

(declare-fun b!5295518 () Bool)

(declare-fun res!2245987 () Bool)

(assert (=> b!5295518 (=> res!2245987 e!3291723)))

(declare-fun zipperDepth!50 (List!61100) Int)

(assert (=> b!5295518 (= res!2245987 (> (zipperDepth!50 lt!2163787) (zipperDepth!50 zl!343)))))

(declare-fun b!5295519 () Bool)

(declare-fun res!2245983 () Bool)

(assert (=> b!5295519 (=> res!2245983 e!3291730)))

(assert (=> b!5295519 (= res!2245983 (not ((_ is Cons!60974) (exprs!4817 (h!67424 zl!343)))))))

(declare-fun res!2245984 () Bool)

(assert (=> start!558794 (=> (not res!2245984) (not e!3291738))))

(declare-fun validRegex!6669 (Regex!14933) Bool)

(assert (=> start!558794 (= res!2245984 (validRegex!6669 r!7292))))

(assert (=> start!558794 e!3291738))

(assert (=> start!558794 e!3291741))

(declare-fun condSetEmpty!34001 () Bool)

(assert (=> start!558794 (= condSetEmpty!34001 (= z!1189 ((as const (Array Context!8634 Bool)) false)))))

(assert (=> start!558794 setRes!34001))

(assert (=> start!558794 e!3291729))

(assert (=> start!558794 e!3291727))

(declare-fun b!5295520 () Bool)

(declare-fun res!2245996 () Bool)

(assert (=> b!5295520 (=> (not res!2245996) (not e!3291738))))

(declare-fun toList!8717 ((InoxSet Context!8634)) List!61100)

(assert (=> b!5295520 (= res!2245996 (= (toList!8717 z!1189) zl!343))))

(declare-fun b!5295521 () Bool)

(declare-fun res!2245986 () Bool)

(assert (=> b!5295521 (=> res!2245986 e!3291722)))

(declare-fun isEmpty!32932 (List!61098) Bool)

(assert (=> b!5295521 (= res!2245986 (isEmpty!32932 (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5295522 () Bool)

(declare-fun res!2245994 () Bool)

(assert (=> b!5295522 (=> res!2245994 e!3291732)))

(declare-fun contextDepthTotal!74 (Context!8634) Int)

(assert (=> b!5295522 (= res!2245994 (>= (contextDepthTotal!74 lt!2163791) (contextDepthTotal!74 (h!67424 zl!343))))))

(declare-fun b!5295523 () Bool)

(declare-fun res!2245993 () Bool)

(assert (=> b!5295523 (=> res!2245993 e!3291732)))

(assert (=> b!5295523 (= res!2245993 (not (= (exprs!4817 (h!67424 zl!343)) (Cons!60974 (Concat!23778 (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (t!374303 (exprs!4817 (h!67424 zl!343)))))))))

(declare-fun b!5295524 () Bool)

(declare-fun tp!1477567 () Bool)

(assert (=> b!5295524 (= e!3291733 tp!1477567)))

(declare-fun b!5295525 () Bool)

(declare-fun e!3291726 () Bool)

(assert (=> b!5295525 (= e!3291726 e!3291740)))

(declare-fun res!2245970 () Bool)

(assert (=> b!5295525 (=> res!2245970 e!3291740)))

(assert (=> b!5295525 (= res!2245970 (not (= lt!2163765 lt!2163774)))))

(assert (=> b!5295525 (= lt!2163774 ((_ map or) lt!2163806 lt!2163799))))

(assert (=> b!5295525 (= lt!2163799 (derivationStepZipperUp!305 lt!2163790 (h!67423 s!2326)))))

(declare-fun lt!2163795 () (InoxSet Context!8634))

(assert (=> b!5295525 (= (flatMap!660 lt!2163795 lambda!268492) (derivationStepZipperUp!305 lt!2163791 (h!67423 s!2326)))))

(declare-fun lt!2163794 () Unit!153250)

(assert (=> b!5295525 (= lt!2163794 (lemmaFlatMapOnSingletonSet!192 lt!2163795 lt!2163791 lambda!268492))))

(declare-fun lt!2163775 () (InoxSet Context!8634))

(assert (=> b!5295525 (= lt!2163775 (derivationStepZipperUp!305 lt!2163791 (h!67423 s!2326)))))

(assert (=> b!5295525 (= lt!2163765 (derivationStepZipper!1176 lt!2163795 (h!67423 s!2326)))))

(assert (=> b!5295525 (= lt!2163773 (store ((as const (Array Context!8634 Bool)) false) lt!2163790 true))))

(assert (=> b!5295525 (= lt!2163795 (store ((as const (Array Context!8634 Bool)) false) lt!2163791 true))))

(declare-fun lt!2163764 () List!61098)

(assert (=> b!5295525 (= lt!2163791 (Context!8635 lt!2163764))))

(assert (=> b!5295525 (= lt!2163764 (Cons!60974 (regOne!30378 (regOne!30378 r!7292)) lt!2163792))))

(declare-fun b!5295526 () Bool)

(assert (=> b!5295526 (= e!3291734 (matchZipper!1177 lt!2163805 (t!374304 s!2326)))))

(assert (=> b!5295527 (= e!3291723 e!3291739)))

(declare-fun res!2245976 () Bool)

(assert (=> b!5295527 (=> res!2245976 e!3291739)))

(declare-fun lt!2163802 () Bool)

(declare-fun lt!2163807 () Bool)

(assert (=> b!5295527 (= res!2245976 (not (= (matchZipper!1177 z!1189 s!2326) (or lt!2163802 lt!2163807))))))

(assert (=> b!5295527 (= (Exists!2114 lambda!268495) (Exists!2114 lambda!268496))))

(declare-fun lt!2163786 () Unit!153250)

(assert (=> b!5295527 (= lt!2163786 (lemmaExistCutMatchRandMatchRSpecEquivalent!768 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 s!2326))))

(assert (=> b!5295527 (= (isDefined!11747 (findConcatSeparation!1458 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 Nil!60975 s!2326 s!2326)) (Exists!2114 lambda!268495))))

(declare-fun lt!2163778 () Unit!153250)

(assert (=> b!5295527 (= lt!2163778 (lemmaFindConcatSeparationEquivalentToExists!1222 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 s!2326))))

(assert (=> b!5295527 (= lt!2163767 (generalisedConcat!602 (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun lt!2163785 () Bool)

(declare-fun matchRSpec!2036 (Regex!14933 List!61099) Bool)

(assert (=> b!5295527 (= lt!2163785 (matchRSpec!2036 lt!2163798 s!2326))))

(declare-fun lt!2163783 () Unit!153250)

(declare-fun mainMatchTheorem!2036 (Regex!14933 List!61099) Unit!153250)

(assert (=> b!5295527 (= lt!2163783 (mainMatchTheorem!2036 lt!2163798 s!2326))))

(assert (=> b!5295527 (= (Exists!2114 lambda!268493) (Exists!2114 lambda!268494))))

(declare-fun lt!2163771 () Unit!153250)

(assert (=> b!5295527 (= lt!2163771 (lemmaExistCutMatchRandMatchRSpecEquivalent!768 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 s!2326))))

(assert (=> b!5295527 (= (isDefined!11747 (findConcatSeparation!1458 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 Nil!60975 s!2326 s!2326)) (Exists!2114 lambda!268493))))

(declare-fun lt!2163776 () Unit!153250)

(assert (=> b!5295527 (= lt!2163776 (lemmaFindConcatSeparationEquivalentToExists!1222 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 s!2326))))

(declare-fun lt!2163777 () Bool)

(declare-fun lt!2163770 () Regex!14933)

(assert (=> b!5295527 (= lt!2163777 (matchRSpec!2036 lt!2163770 s!2326))))

(declare-fun lt!2163781 () Unit!153250)

(assert (=> b!5295527 (= lt!2163781 (mainMatchTheorem!2036 lt!2163770 s!2326))))

(assert (=> b!5295527 (= lt!2163785 lt!2163807)))

(assert (=> b!5295527 (= lt!2163807 (matchZipper!1177 lt!2163773 s!2326))))

(declare-fun matchR!7118 (Regex!14933 List!61099) Bool)

(assert (=> b!5295527 (= lt!2163785 (matchR!7118 lt!2163798 s!2326))))

(declare-fun lt!2163801 () Unit!153250)

(declare-fun theoremZipperRegexEquiv!343 ((InoxSet Context!8634) List!61100 Regex!14933 List!61099) Unit!153250)

(assert (=> b!5295527 (= lt!2163801 (theoremZipperRegexEquiv!343 lt!2163773 (Cons!60976 lt!2163790 Nil!60976) lt!2163798 s!2326))))

(assert (=> b!5295527 (= lt!2163798 (generalisedConcat!602 lt!2163792))))

(assert (=> b!5295527 (= lt!2163777 lt!2163802)))

(assert (=> b!5295527 (= lt!2163802 (matchZipper!1177 lt!2163795 s!2326))))

(assert (=> b!5295527 (= lt!2163777 (matchR!7118 lt!2163770 s!2326))))

(declare-fun lt!2163772 () Unit!153250)

(assert (=> b!5295527 (= lt!2163772 (theoremZipperRegexEquiv!343 lt!2163795 lt!2163787 lt!2163770 s!2326))))

(assert (=> b!5295527 (= lt!2163770 (generalisedConcat!602 lt!2163764))))

(declare-fun b!5295528 () Bool)

(declare-fun res!2245995 () Bool)

(assert (=> b!5295528 (=> res!2245995 e!3291739)))

(assert (=> b!5295528 (= res!2245995 lt!2163777)))

(declare-fun b!5295529 () Bool)

(assert (=> b!5295529 (= e!3291738 (not e!3291730))))

(declare-fun res!2245991 () Bool)

(assert (=> b!5295529 (=> res!2245991 e!3291730)))

(assert (=> b!5295529 (= res!2245991 (not ((_ is Cons!60976) zl!343)))))

(assert (=> b!5295529 (= lt!2163808 (matchRSpec!2036 r!7292 s!2326))))

(assert (=> b!5295529 (= lt!2163808 (matchR!7118 r!7292 s!2326))))

(declare-fun lt!2163784 () Unit!153250)

(assert (=> b!5295529 (= lt!2163784 (mainMatchTheorem!2036 r!7292 s!2326))))

(declare-fun b!5295530 () Bool)

(declare-fun res!2245980 () Bool)

(assert (=> b!5295530 (=> res!2245980 e!3291730)))

(assert (=> b!5295530 (= res!2245980 (or ((_ is EmptyExpr!14933) r!7292) ((_ is EmptyLang!14933) r!7292) ((_ is ElementMatch!14933) r!7292) ((_ is Union!14933) r!7292) (not ((_ is Concat!23778) r!7292))))))

(declare-fun b!5295531 () Bool)

(assert (=> b!5295531 (= e!3291725 e!3291726)))

(declare-fun res!2245974 () Bool)

(assert (=> b!5295531 (=> res!2245974 e!3291726)))

(assert (=> b!5295531 (= res!2245974 e!3291735)))

(declare-fun res!2245997 () Bool)

(assert (=> b!5295531 (=> (not res!2245997) (not e!3291735))))

(assert (=> b!5295531 (= res!2245997 (not (= lt!2163804 lt!2163789)))))

(assert (=> b!5295531 (= lt!2163804 (matchZipper!1177 lt!2163796 (t!374304 s!2326)))))

(assert (=> b!5295531 (= (matchZipper!1177 lt!2163768 (t!374304 s!2326)) e!3291742)))

(declare-fun res!2245972 () Bool)

(assert (=> b!5295531 (=> res!2245972 e!3291742)))

(assert (=> b!5295531 (= res!2245972 lt!2163789)))

(assert (=> b!5295531 (= lt!2163789 (matchZipper!1177 lt!2163806 (t!374304 s!2326)))))

(declare-fun lt!2163797 () Unit!153250)

(assert (=> b!5295531 (= lt!2163797 (lemmaZipperConcatMatchesSameAsBothZippers!170 lt!2163806 lt!2163766 (t!374304 s!2326)))))

(assert (= (and start!558794 res!2245984) b!5295520))

(assert (= (and b!5295520 res!2245996) b!5295517))

(assert (= (and b!5295517 res!2245975) b!5295529))

(assert (= (and b!5295529 (not res!2245991)) b!5295499))

(assert (= (and b!5295499 (not res!2245985)) b!5295507))

(assert (= (and b!5295507 (not res!2245990)) b!5295519))

(assert (= (and b!5295519 (not res!2245983)) b!5295516))

(assert (= (and b!5295516 (not res!2245988)) b!5295530))

(assert (= (and b!5295530 (not res!2245980)) b!5295512))

(assert (= (and b!5295512 (not res!2245982)) b!5295521))

(assert (= (and b!5295521 (not res!2245986)) b!5295514))

(assert (= (and b!5295514 c!918904) b!5295505))

(assert (= (and b!5295514 (not c!918904)) b!5295508))

(assert (= (and b!5295505 (not res!2245981)) b!5295526))

(assert (= (and b!5295514 (not res!2245971)) b!5295515))

(assert (= (and b!5295515 (not res!2245973)) b!5295501))

(assert (= (and b!5295501 (not res!2245977)) b!5295531))

(assert (= (and b!5295531 (not res!2245972)) b!5295502))

(assert (= (and b!5295531 res!2245997) b!5295498))

(assert (= (and b!5295531 (not res!2245974)) b!5295525))

(assert (= (and b!5295525 (not res!2245970)) b!5295504))

(assert (= (and b!5295504 (not res!2245978)) b!5295497))

(assert (= (and b!5295504 res!2245989) b!5295510))

(assert (= (and b!5295504 (not res!2245979)) b!5295523))

(assert (= (and b!5295523 (not res!2245993)) b!5295522))

(assert (= (and b!5295522 (not res!2245994)) b!5295500))

(assert (= (and b!5295500 (not res!2245992)) b!5295518))

(assert (= (and b!5295518 (not res!2245987)) b!5295527))

(assert (= (and b!5295527 (not res!2245976)) b!5295528))

(assert (= (and b!5295528 (not res!2245995)) b!5295496))

(assert (= (and start!558794 ((_ is ElementMatch!14933) r!7292)) b!5295494))

(assert (= (and start!558794 ((_ is Concat!23778) r!7292)) b!5295513))

(assert (= (and start!558794 ((_ is Star!14933) r!7292)) b!5295511))

(assert (= (and start!558794 ((_ is Union!14933) r!7292)) b!5295495))

(assert (= (and start!558794 condSetEmpty!34001) setIsEmpty!34001))

(assert (= (and start!558794 (not condSetEmpty!34001)) setNonEmpty!34001))

(assert (= setNonEmpty!34001 b!5295506))

(assert (= b!5295503 b!5295524))

(assert (= (and start!558794 ((_ is Cons!60976) zl!343)) b!5295503))

(assert (= (and start!558794 ((_ is Cons!60975) s!2326)) b!5295509))

(declare-fun m!6332854 () Bool)

(assert (=> b!5295515 m!6332854))

(declare-fun m!6332856 () Bool)

(assert (=> b!5295504 m!6332856))

(declare-fun m!6332858 () Bool)

(assert (=> b!5295504 m!6332858))

(declare-fun m!6332860 () Bool)

(assert (=> b!5295504 m!6332860))

(declare-fun m!6332862 () Bool)

(assert (=> b!5295504 m!6332862))

(declare-fun m!6332864 () Bool)

(assert (=> b!5295504 m!6332864))

(declare-fun m!6332866 () Bool)

(assert (=> b!5295504 m!6332866))

(declare-fun m!6332868 () Bool)

(assert (=> b!5295499 m!6332868))

(assert (=> b!5295525 m!6332858))

(declare-fun m!6332870 () Bool)

(assert (=> b!5295525 m!6332870))

(declare-fun m!6332872 () Bool)

(assert (=> b!5295525 m!6332872))

(declare-fun m!6332874 () Bool)

(assert (=> b!5295525 m!6332874))

(declare-fun m!6332876 () Bool)

(assert (=> b!5295525 m!6332876))

(declare-fun m!6332878 () Bool)

(assert (=> b!5295525 m!6332878))

(declare-fun m!6332880 () Bool)

(assert (=> b!5295525 m!6332880))

(declare-fun m!6332882 () Bool)

(assert (=> b!5295507 m!6332882))

(declare-fun m!6332884 () Bool)

(assert (=> b!5295518 m!6332884))

(declare-fun m!6332886 () Bool)

(assert (=> b!5295518 m!6332886))

(declare-fun m!6332888 () Bool)

(assert (=> b!5295512 m!6332888))

(declare-fun m!6332890 () Bool)

(assert (=> b!5295512 m!6332890))

(declare-fun m!6332892 () Bool)

(assert (=> b!5295512 m!6332892))

(declare-fun m!6332894 () Bool)

(assert (=> b!5295512 m!6332894))

(assert (=> b!5295512 m!6332894))

(declare-fun m!6332896 () Bool)

(assert (=> b!5295512 m!6332896))

(assert (=> b!5295512 m!6332890))

(declare-fun m!6332898 () Bool)

(assert (=> b!5295512 m!6332898))

(declare-fun m!6332900 () Bool)

(assert (=> b!5295498 m!6332900))

(declare-fun m!6332902 () Bool)

(assert (=> b!5295514 m!6332902))

(declare-fun m!6332904 () Bool)

(assert (=> b!5295514 m!6332904))

(declare-fun m!6332906 () Bool)

(assert (=> b!5295514 m!6332906))

(declare-fun m!6332908 () Bool)

(assert (=> b!5295514 m!6332908))

(declare-fun m!6332910 () Bool)

(assert (=> b!5295514 m!6332910))

(declare-fun m!6332912 () Bool)

(assert (=> b!5295514 m!6332912))

(declare-fun m!6332914 () Bool)

(assert (=> b!5295514 m!6332914))

(declare-fun m!6332916 () Bool)

(assert (=> b!5295521 m!6332916))

(declare-fun m!6332918 () Bool)

(assert (=> b!5295503 m!6332918))

(declare-fun m!6332920 () Bool)

(assert (=> b!5295516 m!6332920))

(assert (=> b!5295516 m!6332920))

(declare-fun m!6332922 () Bool)

(assert (=> b!5295516 m!6332922))

(declare-fun m!6332924 () Bool)

(assert (=> b!5295517 m!6332924))

(declare-fun m!6332926 () Bool)

(assert (=> start!558794 m!6332926))

(declare-fun m!6332928 () Bool)

(assert (=> b!5295529 m!6332928))

(declare-fun m!6332930 () Bool)

(assert (=> b!5295529 m!6332930))

(declare-fun m!6332932 () Bool)

(assert (=> b!5295529 m!6332932))

(declare-fun m!6332934 () Bool)

(assert (=> b!5295505 m!6332934))

(declare-fun m!6332936 () Bool)

(assert (=> b!5295505 m!6332936))

(declare-fun m!6332938 () Bool)

(assert (=> b!5295505 m!6332938))

(declare-fun m!6332940 () Bool)

(assert (=> b!5295526 m!6332940))

(assert (=> b!5295531 m!6332936))

(declare-fun m!6332942 () Bool)

(assert (=> b!5295531 m!6332942))

(declare-fun m!6332944 () Bool)

(assert (=> b!5295531 m!6332944))

(declare-fun m!6332946 () Bool)

(assert (=> b!5295531 m!6332946))

(declare-fun m!6332948 () Bool)

(assert (=> b!5295496 m!6332948))

(declare-fun m!6332950 () Bool)

(assert (=> b!5295520 m!6332950))

(declare-fun m!6332952 () Bool)

(assert (=> b!5295500 m!6332952))

(declare-fun m!6332954 () Bool)

(assert (=> b!5295500 m!6332954))

(declare-fun m!6332956 () Bool)

(assert (=> setNonEmpty!34001 m!6332956))

(assert (=> b!5295502 m!6332900))

(declare-fun m!6332958 () Bool)

(assert (=> b!5295510 m!6332958))

(assert (=> b!5295510 m!6332958))

(declare-fun m!6332960 () Bool)

(assert (=> b!5295510 m!6332960))

(declare-fun m!6332962 () Bool)

(assert (=> b!5295522 m!6332962))

(declare-fun m!6332964 () Bool)

(assert (=> b!5295522 m!6332964))

(declare-fun m!6332966 () Bool)

(assert (=> b!5295501 m!6332966))

(declare-fun m!6332968 () Bool)

(assert (=> b!5295501 m!6332968))

(declare-fun m!6332970 () Bool)

(assert (=> b!5295497 m!6332970))

(declare-fun m!6332972 () Bool)

(assert (=> b!5295527 m!6332972))

(declare-fun m!6332974 () Bool)

(assert (=> b!5295527 m!6332974))

(declare-fun m!6332976 () Bool)

(assert (=> b!5295527 m!6332976))

(declare-fun m!6332978 () Bool)

(assert (=> b!5295527 m!6332978))

(declare-fun m!6332980 () Bool)

(assert (=> b!5295527 m!6332980))

(declare-fun m!6332982 () Bool)

(assert (=> b!5295527 m!6332982))

(assert (=> b!5295527 m!6332980))

(declare-fun m!6332984 () Bool)

(assert (=> b!5295527 m!6332984))

(declare-fun m!6332986 () Bool)

(assert (=> b!5295527 m!6332986))

(declare-fun m!6332988 () Bool)

(assert (=> b!5295527 m!6332988))

(declare-fun m!6332990 () Bool)

(assert (=> b!5295527 m!6332990))

(declare-fun m!6332992 () Bool)

(assert (=> b!5295527 m!6332992))

(declare-fun m!6332994 () Bool)

(assert (=> b!5295527 m!6332994))

(declare-fun m!6332996 () Bool)

(assert (=> b!5295527 m!6332996))

(declare-fun m!6332998 () Bool)

(assert (=> b!5295527 m!6332998))

(declare-fun m!6333000 () Bool)

(assert (=> b!5295527 m!6333000))

(declare-fun m!6333002 () Bool)

(assert (=> b!5295527 m!6333002))

(declare-fun m!6333004 () Bool)

(assert (=> b!5295527 m!6333004))

(declare-fun m!6333006 () Bool)

(assert (=> b!5295527 m!6333006))

(declare-fun m!6333008 () Bool)

(assert (=> b!5295527 m!6333008))

(declare-fun m!6333010 () Bool)

(assert (=> b!5295527 m!6333010))

(assert (=> b!5295527 m!6333000))

(declare-fun m!6333012 () Bool)

(assert (=> b!5295527 m!6333012))

(assert (=> b!5295527 m!6332974))

(declare-fun m!6333014 () Bool)

(assert (=> b!5295527 m!6333014))

(declare-fun m!6333016 () Bool)

(assert (=> b!5295527 m!6333016))

(declare-fun m!6333018 () Bool)

(assert (=> b!5295527 m!6333018))

(assert (=> b!5295527 m!6332986))

(declare-fun m!6333020 () Bool)

(assert (=> b!5295527 m!6333020))

(declare-fun m!6333022 () Bool)

(assert (=> b!5295527 m!6333022))

(check-sat (not b!5295522) (not b!5295524) (not b!5295501) (not b!5295521) (not b!5295513) (not b!5295516) (not b!5295525) (not b!5295511) (not b!5295512) (not b!5295496) (not start!558794) (not b!5295495) (not b!5295500) (not setNonEmpty!34001) (not b!5295518) (not b!5295498) tp_is_empty!39119 (not b!5295527) (not b!5295497) (not b!5295504) (not b!5295514) (not b!5295529) (not b!5295502) (not b!5295517) (not b!5295515) (not b!5295526) (not b!5295505) (not b!5295509) (not b!5295507) (not b!5295520) (not b!5295499) (not b!5295531) (not b!5295506) (not b!5295503) (not b!5295510))
(check-sat)
(get-model)

(declare-fun bs!1228199 () Bool)

(declare-fun d!1703250 () Bool)

(assert (= bs!1228199 (and d!1703250 b!5295496)))

(declare-fun lambda!268510 () Int)

(assert (=> bs!1228199 (= lambda!268510 lambda!268497)))

(assert (=> d!1703250 (= (inv!80579 (h!67424 zl!343)) (forall!14345 (exprs!4817 (h!67424 zl!343)) lambda!268510))))

(declare-fun bs!1228200 () Bool)

(assert (= bs!1228200 d!1703250))

(declare-fun m!6333148 () Bool)

(assert (=> bs!1228200 m!6333148))

(assert (=> b!5295503 d!1703250))

(declare-fun d!1703252 () Bool)

(declare-fun lt!2163834 () Int)

(assert (=> d!1703252 (>= lt!2163834 0)))

(declare-fun e!3291817 () Int)

(assert (=> d!1703252 (= lt!2163834 e!3291817)))

(declare-fun c!918946 () Bool)

(assert (=> d!1703252 (= c!918946 ((_ is Cons!60974) (exprs!4817 lt!2163791)))))

(assert (=> d!1703252 (= (contextDepthTotal!74 lt!2163791) lt!2163834)))

(declare-fun b!5295667 () Bool)

(declare-fun regexDepthTotal!27 (Regex!14933) Int)

(assert (=> b!5295667 (= e!3291817 (+ (regexDepthTotal!27 (h!67422 (exprs!4817 lt!2163791))) (contextDepthTotal!74 (Context!8635 (t!374303 (exprs!4817 lt!2163791))))))))

(declare-fun b!5295668 () Bool)

(assert (=> b!5295668 (= e!3291817 1)))

(assert (= (and d!1703252 c!918946) b!5295667))

(assert (= (and d!1703252 (not c!918946)) b!5295668))

(declare-fun m!6333150 () Bool)

(assert (=> b!5295667 m!6333150))

(declare-fun m!6333152 () Bool)

(assert (=> b!5295667 m!6333152))

(assert (=> b!5295522 d!1703252))

(declare-fun d!1703254 () Bool)

(declare-fun lt!2163835 () Int)

(assert (=> d!1703254 (>= lt!2163835 0)))

(declare-fun e!3291818 () Int)

(assert (=> d!1703254 (= lt!2163835 e!3291818)))

(declare-fun c!918947 () Bool)

(assert (=> d!1703254 (= c!918947 ((_ is Cons!60974) (exprs!4817 (h!67424 zl!343))))))

(assert (=> d!1703254 (= (contextDepthTotal!74 (h!67424 zl!343)) lt!2163835)))

(declare-fun b!5295669 () Bool)

(assert (=> b!5295669 (= e!3291818 (+ (regexDepthTotal!27 (h!67422 (exprs!4817 (h!67424 zl!343)))) (contextDepthTotal!74 (Context!8635 (t!374303 (exprs!4817 (h!67424 zl!343)))))))))

(declare-fun b!5295670 () Bool)

(assert (=> b!5295670 (= e!3291818 1)))

(assert (= (and d!1703254 c!918947) b!5295669))

(assert (= (and d!1703254 (not c!918947)) b!5295670))

(declare-fun m!6333154 () Bool)

(assert (=> b!5295669 m!6333154))

(declare-fun m!6333156 () Bool)

(assert (=> b!5295669 m!6333156))

(assert (=> b!5295522 d!1703254))

(declare-fun d!1703256 () Bool)

(declare-fun c!918956 () Bool)

(declare-fun isEmpty!32934 (List!61099) Bool)

(assert (=> d!1703256 (= c!918956 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3291833 () Bool)

(assert (=> d!1703256 (= (matchZipper!1177 lt!2163766 (t!374304 s!2326)) e!3291833)))

(declare-fun b!5295695 () Bool)

(declare-fun nullableZipper!1316 ((InoxSet Context!8634)) Bool)

(assert (=> b!5295695 (= e!3291833 (nullableZipper!1316 lt!2163766))))

(declare-fun b!5295696 () Bool)

(declare-fun head!11350 (List!61099) C!30136)

(declare-fun tail!10447 (List!61099) List!61099)

(assert (=> b!5295696 (= e!3291833 (matchZipper!1177 (derivationStepZipper!1176 lt!2163766 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703256 c!918956) b!5295695))

(assert (= (and d!1703256 (not c!918956)) b!5295696))

(declare-fun m!6333180 () Bool)

(assert (=> d!1703256 m!6333180))

(declare-fun m!6333182 () Bool)

(assert (=> b!5295695 m!6333182))

(declare-fun m!6333184 () Bool)

(assert (=> b!5295696 m!6333184))

(assert (=> b!5295696 m!6333184))

(declare-fun m!6333186 () Bool)

(assert (=> b!5295696 m!6333186))

(declare-fun m!6333188 () Bool)

(assert (=> b!5295696 m!6333188))

(assert (=> b!5295696 m!6333186))

(assert (=> b!5295696 m!6333188))

(declare-fun m!6333190 () Bool)

(assert (=> b!5295696 m!6333190))

(assert (=> b!5295502 d!1703256))

(declare-fun b!5295779 () Bool)

(declare-fun e!3291881 () (InoxSet Context!8634))

(declare-fun call!377458 () (InoxSet Context!8634))

(declare-fun call!377462 () (InoxSet Context!8634))

(assert (=> b!5295779 (= e!3291881 ((_ map or) call!377458 call!377462))))

(declare-fun b!5295780 () Bool)

(declare-fun e!3291877 () (InoxSet Context!8634))

(declare-fun call!377460 () (InoxSet Context!8634))

(assert (=> b!5295780 (= e!3291877 ((_ map or) call!377460 call!377458))))

(declare-fun bm!377452 () Bool)

(declare-fun call!377457 () List!61098)

(declare-fun call!377459 () List!61098)

(assert (=> bm!377452 (= call!377457 call!377459)))

(declare-fun b!5295781 () Bool)

(declare-fun c!918979 () Bool)

(declare-fun e!3291880 () Bool)

(assert (=> b!5295781 (= c!918979 e!3291880)))

(declare-fun res!2246095 () Bool)

(assert (=> b!5295781 (=> (not res!2246095) (not e!3291880))))

(assert (=> b!5295781 (= res!2246095 ((_ is Concat!23778) (regTwo!30378 (regOne!30378 r!7292))))))

(assert (=> b!5295781 (= e!3291877 e!3291881)))

(declare-fun bm!377453 () Bool)

(declare-fun call!377461 () (InoxSet Context!8634))

(assert (=> bm!377453 (= call!377461 call!377462)))

(declare-fun c!918983 () Bool)

(declare-fun c!918982 () Bool)

(declare-fun bm!377454 () Bool)

(assert (=> bm!377454 (= call!377460 (derivationStepZipperDown!381 (ite c!918983 (regOne!30379 (regTwo!30378 (regOne!30378 r!7292))) (ite c!918979 (regTwo!30378 (regTwo!30378 (regOne!30378 r!7292))) (ite c!918982 (regOne!30378 (regTwo!30378 (regOne!30378 r!7292))) (reg!15262 (regTwo!30378 (regOne!30378 r!7292)))))) (ite (or c!918983 c!918979) lt!2163769 (Context!8635 call!377457)) (h!67423 s!2326)))))

(declare-fun b!5295782 () Bool)

(declare-fun e!3291878 () (InoxSet Context!8634))

(assert (=> b!5295782 (= e!3291878 call!377461)))

(declare-fun bm!377455 () Bool)

(assert (=> bm!377455 (= call!377458 (derivationStepZipperDown!381 (ite c!918983 (regTwo!30379 (regTwo!30378 (regOne!30378 r!7292))) (regOne!30378 (regTwo!30378 (regOne!30378 r!7292)))) (ite c!918983 lt!2163769 (Context!8635 call!377459)) (h!67423 s!2326)))))

(declare-fun b!5295783 () Bool)

(declare-fun e!3291876 () (InoxSet Context!8634))

(assert (=> b!5295783 (= e!3291876 e!3291877)))

(assert (=> b!5295783 (= c!918983 ((_ is Union!14933) (regTwo!30378 (regOne!30378 r!7292))))))

(declare-fun b!5295784 () Bool)

(declare-fun e!3291879 () (InoxSet Context!8634))

(assert (=> b!5295784 (= e!3291879 ((as const (Array Context!8634 Bool)) false))))

(declare-fun bm!377457 () Bool)

(declare-fun $colon$colon!1365 (List!61098 Regex!14933) List!61098)

(assert (=> bm!377457 (= call!377459 ($colon$colon!1365 (exprs!4817 lt!2163769) (ite (or c!918979 c!918982) (regTwo!30378 (regTwo!30378 (regOne!30378 r!7292))) (regTwo!30378 (regOne!30378 r!7292)))))))

(declare-fun b!5295785 () Bool)

(assert (=> b!5295785 (= e!3291881 e!3291878)))

(assert (=> b!5295785 (= c!918982 ((_ is Concat!23778) (regTwo!30378 (regOne!30378 r!7292))))))

(declare-fun b!5295786 () Bool)

(assert (=> b!5295786 (= e!3291879 call!377461)))

(declare-fun b!5295787 () Bool)

(assert (=> b!5295787 (= e!3291876 (store ((as const (Array Context!8634 Bool)) false) lt!2163769 true))))

(declare-fun b!5295788 () Bool)

(declare-fun c!918981 () Bool)

(assert (=> b!5295788 (= c!918981 ((_ is Star!14933) (regTwo!30378 (regOne!30378 r!7292))))))

(assert (=> b!5295788 (= e!3291878 e!3291879)))

(declare-fun b!5295789 () Bool)

(assert (=> b!5295789 (= e!3291880 (nullable!5102 (regOne!30378 (regTwo!30378 (regOne!30378 r!7292)))))))

(declare-fun bm!377456 () Bool)

(assert (=> bm!377456 (= call!377462 call!377460)))

(declare-fun d!1703262 () Bool)

(declare-fun c!918980 () Bool)

(assert (=> d!1703262 (= c!918980 (and ((_ is ElementMatch!14933) (regTwo!30378 (regOne!30378 r!7292))) (= (c!918905 (regTwo!30378 (regOne!30378 r!7292))) (h!67423 s!2326))))))

(assert (=> d!1703262 (= (derivationStepZipperDown!381 (regTwo!30378 (regOne!30378 r!7292)) lt!2163769 (h!67423 s!2326)) e!3291876)))

(assert (= (and d!1703262 c!918980) b!5295787))

(assert (= (and d!1703262 (not c!918980)) b!5295783))

(assert (= (and b!5295783 c!918983) b!5295780))

(assert (= (and b!5295783 (not c!918983)) b!5295781))

(assert (= (and b!5295781 res!2246095) b!5295789))

(assert (= (and b!5295781 c!918979) b!5295779))

(assert (= (and b!5295781 (not c!918979)) b!5295785))

(assert (= (and b!5295785 c!918982) b!5295782))

(assert (= (and b!5295785 (not c!918982)) b!5295788))

(assert (= (and b!5295788 c!918981) b!5295786))

(assert (= (and b!5295788 (not c!918981)) b!5295784))

(assert (= (or b!5295782 b!5295786) bm!377452))

(assert (= (or b!5295782 b!5295786) bm!377453))

(assert (= (or b!5295779 bm!377452) bm!377457))

(assert (= (or b!5295779 bm!377453) bm!377456))

(assert (= (or b!5295780 b!5295779) bm!377455))

(assert (= (or b!5295780 bm!377456) bm!377454))

(declare-fun m!6333214 () Bool)

(assert (=> bm!377454 m!6333214))

(declare-fun m!6333216 () Bool)

(assert (=> bm!377457 m!6333216))

(declare-fun m!6333218 () Bool)

(assert (=> bm!377455 m!6333218))

(declare-fun m!6333220 () Bool)

(assert (=> b!5295787 m!6333220))

(declare-fun m!6333222 () Bool)

(assert (=> b!5295789 m!6333222))

(assert (=> b!5295501 d!1703262))

(declare-fun b!5295790 () Bool)

(declare-fun e!3291887 () (InoxSet Context!8634))

(declare-fun call!377464 () (InoxSet Context!8634))

(declare-fun call!377468 () (InoxSet Context!8634))

(assert (=> b!5295790 (= e!3291887 ((_ map or) call!377464 call!377468))))

(declare-fun b!5295791 () Bool)

(declare-fun e!3291883 () (InoxSet Context!8634))

(declare-fun call!377466 () (InoxSet Context!8634))

(assert (=> b!5295791 (= e!3291883 ((_ map or) call!377466 call!377464))))

(declare-fun bm!377458 () Bool)

(declare-fun call!377463 () List!61098)

(declare-fun call!377465 () List!61098)

(assert (=> bm!377458 (= call!377463 call!377465)))

(declare-fun b!5295792 () Bool)

(declare-fun c!918984 () Bool)

(declare-fun e!3291886 () Bool)

(assert (=> b!5295792 (= c!918984 e!3291886)))

(declare-fun res!2246096 () Bool)

(assert (=> b!5295792 (=> (not res!2246096) (not e!3291886))))

(assert (=> b!5295792 (= res!2246096 ((_ is Concat!23778) (regOne!30378 (regOne!30378 r!7292))))))

(assert (=> b!5295792 (= e!3291883 e!3291887)))

(declare-fun bm!377459 () Bool)

(declare-fun call!377467 () (InoxSet Context!8634))

(assert (=> bm!377459 (= call!377467 call!377468)))

(declare-fun c!918987 () Bool)

(declare-fun c!918988 () Bool)

(declare-fun bm!377460 () Bool)

(assert (=> bm!377460 (= call!377466 (derivationStepZipperDown!381 (ite c!918988 (regOne!30379 (regOne!30378 (regOne!30378 r!7292))) (ite c!918984 (regTwo!30378 (regOne!30378 (regOne!30378 r!7292))) (ite c!918987 (regOne!30378 (regOne!30378 (regOne!30378 r!7292))) (reg!15262 (regOne!30378 (regOne!30378 r!7292)))))) (ite (or c!918988 c!918984) lt!2163790 (Context!8635 call!377463)) (h!67423 s!2326)))))

(declare-fun b!5295793 () Bool)

(declare-fun e!3291884 () (InoxSet Context!8634))

(assert (=> b!5295793 (= e!3291884 call!377467)))

(declare-fun bm!377461 () Bool)

(assert (=> bm!377461 (= call!377464 (derivationStepZipperDown!381 (ite c!918988 (regTwo!30379 (regOne!30378 (regOne!30378 r!7292))) (regOne!30378 (regOne!30378 (regOne!30378 r!7292)))) (ite c!918988 lt!2163790 (Context!8635 call!377465)) (h!67423 s!2326)))))

(declare-fun b!5295794 () Bool)

(declare-fun e!3291882 () (InoxSet Context!8634))

(assert (=> b!5295794 (= e!3291882 e!3291883)))

(assert (=> b!5295794 (= c!918988 ((_ is Union!14933) (regOne!30378 (regOne!30378 r!7292))))))

(declare-fun b!5295795 () Bool)

(declare-fun e!3291885 () (InoxSet Context!8634))

(assert (=> b!5295795 (= e!3291885 ((as const (Array Context!8634 Bool)) false))))

(declare-fun bm!377463 () Bool)

(assert (=> bm!377463 (= call!377465 ($colon$colon!1365 (exprs!4817 lt!2163790) (ite (or c!918984 c!918987) (regTwo!30378 (regOne!30378 (regOne!30378 r!7292))) (regOne!30378 (regOne!30378 r!7292)))))))

(declare-fun b!5295796 () Bool)

(assert (=> b!5295796 (= e!3291887 e!3291884)))

(assert (=> b!5295796 (= c!918987 ((_ is Concat!23778) (regOne!30378 (regOne!30378 r!7292))))))

(declare-fun b!5295797 () Bool)

(assert (=> b!5295797 (= e!3291885 call!377467)))

(declare-fun b!5295798 () Bool)

(assert (=> b!5295798 (= e!3291882 (store ((as const (Array Context!8634 Bool)) false) lt!2163790 true))))

(declare-fun b!5295799 () Bool)

(declare-fun c!918986 () Bool)

(assert (=> b!5295799 (= c!918986 ((_ is Star!14933) (regOne!30378 (regOne!30378 r!7292))))))

(assert (=> b!5295799 (= e!3291884 e!3291885)))

(declare-fun b!5295800 () Bool)

(assert (=> b!5295800 (= e!3291886 (nullable!5102 (regOne!30378 (regOne!30378 (regOne!30378 r!7292)))))))

(declare-fun bm!377462 () Bool)

(assert (=> bm!377462 (= call!377468 call!377466)))

(declare-fun d!1703272 () Bool)

(declare-fun c!918985 () Bool)

(assert (=> d!1703272 (= c!918985 (and ((_ is ElementMatch!14933) (regOne!30378 (regOne!30378 r!7292))) (= (c!918905 (regOne!30378 (regOne!30378 r!7292))) (h!67423 s!2326))))))

(assert (=> d!1703272 (= (derivationStepZipperDown!381 (regOne!30378 (regOne!30378 r!7292)) lt!2163790 (h!67423 s!2326)) e!3291882)))

(assert (= (and d!1703272 c!918985) b!5295798))

(assert (= (and d!1703272 (not c!918985)) b!5295794))

(assert (= (and b!5295794 c!918988) b!5295791))

(assert (= (and b!5295794 (not c!918988)) b!5295792))

(assert (= (and b!5295792 res!2246096) b!5295800))

(assert (= (and b!5295792 c!918984) b!5295790))

(assert (= (and b!5295792 (not c!918984)) b!5295796))

(assert (= (and b!5295796 c!918987) b!5295793))

(assert (= (and b!5295796 (not c!918987)) b!5295799))

(assert (= (and b!5295799 c!918986) b!5295797))

(assert (= (and b!5295799 (not c!918986)) b!5295795))

(assert (= (or b!5295793 b!5295797) bm!377458))

(assert (= (or b!5295793 b!5295797) bm!377459))

(assert (= (or b!5295790 bm!377458) bm!377463))

(assert (= (or b!5295790 bm!377459) bm!377462))

(assert (= (or b!5295791 b!5295790) bm!377461))

(assert (= (or b!5295791 bm!377462) bm!377460))

(declare-fun m!6333232 () Bool)

(assert (=> bm!377460 m!6333232))

(declare-fun m!6333234 () Bool)

(assert (=> bm!377463 m!6333234))

(declare-fun m!6333236 () Bool)

(assert (=> bm!377461 m!6333236))

(assert (=> b!5295798 m!6332880))

(declare-fun m!6333238 () Bool)

(assert (=> b!5295800 m!6333238))

(assert (=> b!5295501 d!1703272))

(declare-fun d!1703278 () Bool)

(declare-fun c!918989 () Bool)

(assert (=> d!1703278 (= c!918989 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3291888 () Bool)

(assert (=> d!1703278 (= (matchZipper!1177 lt!2163805 (t!374304 s!2326)) e!3291888)))

(declare-fun b!5295801 () Bool)

(assert (=> b!5295801 (= e!3291888 (nullableZipper!1316 lt!2163805))))

(declare-fun b!5295802 () Bool)

(assert (=> b!5295802 (= e!3291888 (matchZipper!1177 (derivationStepZipper!1176 lt!2163805 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703278 c!918989) b!5295801))

(assert (= (and d!1703278 (not c!918989)) b!5295802))

(assert (=> d!1703278 m!6333180))

(declare-fun m!6333242 () Bool)

(assert (=> b!5295801 m!6333242))

(assert (=> b!5295802 m!6333184))

(assert (=> b!5295802 m!6333184))

(declare-fun m!6333246 () Bool)

(assert (=> b!5295802 m!6333246))

(assert (=> b!5295802 m!6333188))

(assert (=> b!5295802 m!6333246))

(assert (=> b!5295802 m!6333188))

(declare-fun m!6333248 () Bool)

(assert (=> b!5295802 m!6333248))

(assert (=> b!5295526 d!1703278))

(declare-fun e!3291906 () Bool)

(declare-fun d!1703282 () Bool)

(assert (=> d!1703282 (= (matchZipper!1177 ((_ map or) lt!2163796 lt!2163805) (t!374304 s!2326)) e!3291906)))

(declare-fun res!2246104 () Bool)

(assert (=> d!1703282 (=> res!2246104 e!3291906)))

(assert (=> d!1703282 (= res!2246104 (matchZipper!1177 lt!2163796 (t!374304 s!2326)))))

(declare-fun lt!2163856 () Unit!153250)

(declare-fun choose!39561 ((InoxSet Context!8634) (InoxSet Context!8634) List!61099) Unit!153250)

(assert (=> d!1703282 (= lt!2163856 (choose!39561 lt!2163796 lt!2163805 (t!374304 s!2326)))))

(assert (=> d!1703282 (= (lemmaZipperConcatMatchesSameAsBothZippers!170 lt!2163796 lt!2163805 (t!374304 s!2326)) lt!2163856)))

(declare-fun b!5295830 () Bool)

(assert (=> b!5295830 (= e!3291906 (matchZipper!1177 lt!2163805 (t!374304 s!2326)))))

(assert (= (and d!1703282 (not res!2246104)) b!5295830))

(assert (=> d!1703282 m!6332938))

(assert (=> d!1703282 m!6332936))

(declare-fun m!6333292 () Bool)

(assert (=> d!1703282 m!6333292))

(assert (=> b!5295830 m!6332940))

(assert (=> b!5295505 d!1703282))

(declare-fun d!1703302 () Bool)

(declare-fun c!919000 () Bool)

(assert (=> d!1703302 (= c!919000 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3291907 () Bool)

(assert (=> d!1703302 (= (matchZipper!1177 lt!2163796 (t!374304 s!2326)) e!3291907)))

(declare-fun b!5295831 () Bool)

(assert (=> b!5295831 (= e!3291907 (nullableZipper!1316 lt!2163796))))

(declare-fun b!5295832 () Bool)

(assert (=> b!5295832 (= e!3291907 (matchZipper!1177 (derivationStepZipper!1176 lt!2163796 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703302 c!919000) b!5295831))

(assert (= (and d!1703302 (not c!919000)) b!5295832))

(assert (=> d!1703302 m!6333180))

(declare-fun m!6333294 () Bool)

(assert (=> b!5295831 m!6333294))

(assert (=> b!5295832 m!6333184))

(assert (=> b!5295832 m!6333184))

(declare-fun m!6333296 () Bool)

(assert (=> b!5295832 m!6333296))

(assert (=> b!5295832 m!6333188))

(assert (=> b!5295832 m!6333296))

(assert (=> b!5295832 m!6333188))

(declare-fun m!6333298 () Bool)

(assert (=> b!5295832 m!6333298))

(assert (=> b!5295505 d!1703302))

(declare-fun d!1703304 () Bool)

(declare-fun c!919001 () Bool)

(assert (=> d!1703304 (= c!919001 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3291908 () Bool)

(assert (=> d!1703304 (= (matchZipper!1177 ((_ map or) lt!2163796 lt!2163805) (t!374304 s!2326)) e!3291908)))

(declare-fun b!5295833 () Bool)

(assert (=> b!5295833 (= e!3291908 (nullableZipper!1316 ((_ map or) lt!2163796 lt!2163805)))))

(declare-fun b!5295834 () Bool)

(assert (=> b!5295834 (= e!3291908 (matchZipper!1177 (derivationStepZipper!1176 ((_ map or) lt!2163796 lt!2163805) (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703304 c!919001) b!5295833))

(assert (= (and d!1703304 (not c!919001)) b!5295834))

(assert (=> d!1703304 m!6333180))

(declare-fun m!6333306 () Bool)

(assert (=> b!5295833 m!6333306))

(assert (=> b!5295834 m!6333184))

(assert (=> b!5295834 m!6333184))

(declare-fun m!6333308 () Bool)

(assert (=> b!5295834 m!6333308))

(assert (=> b!5295834 m!6333188))

(assert (=> b!5295834 m!6333308))

(assert (=> b!5295834 m!6333188))

(declare-fun m!6333310 () Bool)

(assert (=> b!5295834 m!6333310))

(assert (=> b!5295505 d!1703304))

(declare-fun d!1703308 () Bool)

(declare-fun c!919015 () Bool)

(declare-fun e!3291929 () Bool)

(assert (=> d!1703308 (= c!919015 e!3291929)))

(declare-fun res!2246111 () Bool)

(assert (=> d!1703308 (=> (not res!2246111) (not e!3291929))))

(assert (=> d!1703308 (= res!2246111 ((_ is Cons!60974) (exprs!4817 lt!2163790)))))

(declare-fun e!3291927 () (InoxSet Context!8634))

(assert (=> d!1703308 (= (derivationStepZipperUp!305 lt!2163790 (h!67423 s!2326)) e!3291927)))

(declare-fun bm!377468 () Bool)

(declare-fun call!377473 () (InoxSet Context!8634))

(assert (=> bm!377468 (= call!377473 (derivationStepZipperDown!381 (h!67422 (exprs!4817 lt!2163790)) (Context!8635 (t!374303 (exprs!4817 lt!2163790))) (h!67423 s!2326)))))

(declare-fun b!5295865 () Bool)

(declare-fun e!3291928 () (InoxSet Context!8634))

(assert (=> b!5295865 (= e!3291928 ((as const (Array Context!8634 Bool)) false))))

(declare-fun b!5295866 () Bool)

(assert (=> b!5295866 (= e!3291929 (nullable!5102 (h!67422 (exprs!4817 lt!2163790))))))

(declare-fun b!5295867 () Bool)

(assert (=> b!5295867 (= e!3291927 ((_ map or) call!377473 (derivationStepZipperUp!305 (Context!8635 (t!374303 (exprs!4817 lt!2163790))) (h!67423 s!2326))))))

(declare-fun b!5295868 () Bool)

(assert (=> b!5295868 (= e!3291927 e!3291928)))

(declare-fun c!919014 () Bool)

(assert (=> b!5295868 (= c!919014 ((_ is Cons!60974) (exprs!4817 lt!2163790)))))

(declare-fun b!5295869 () Bool)

(assert (=> b!5295869 (= e!3291928 call!377473)))

(assert (= (and d!1703308 res!2246111) b!5295866))

(assert (= (and d!1703308 c!919015) b!5295867))

(assert (= (and d!1703308 (not c!919015)) b!5295868))

(assert (= (and b!5295868 c!919014) b!5295869))

(assert (= (and b!5295868 (not c!919014)) b!5295865))

(assert (= (or b!5295867 b!5295869) bm!377468))

(declare-fun m!6333314 () Bool)

(assert (=> bm!377468 m!6333314))

(declare-fun m!6333316 () Bool)

(assert (=> b!5295866 m!6333316))

(declare-fun m!6333318 () Bool)

(assert (=> b!5295867 m!6333318))

(assert (=> b!5295525 d!1703308))

(declare-fun d!1703312 () Bool)

(declare-fun dynLambda!24110 (Int Context!8634) (InoxSet Context!8634))

(assert (=> d!1703312 (= (flatMap!660 lt!2163795 lambda!268492) (dynLambda!24110 lambda!268492 lt!2163791))))

(declare-fun lt!2163865 () Unit!153250)

(declare-fun choose!39562 ((InoxSet Context!8634) Context!8634 Int) Unit!153250)

(assert (=> d!1703312 (= lt!2163865 (choose!39562 lt!2163795 lt!2163791 lambda!268492))))

(assert (=> d!1703312 (= lt!2163795 (store ((as const (Array Context!8634 Bool)) false) lt!2163791 true))))

(assert (=> d!1703312 (= (lemmaFlatMapOnSingletonSet!192 lt!2163795 lt!2163791 lambda!268492) lt!2163865)))

(declare-fun b_lambda!204157 () Bool)

(assert (=> (not b_lambda!204157) (not d!1703312)))

(declare-fun bs!1228262 () Bool)

(assert (= bs!1228262 d!1703312))

(assert (=> bs!1228262 m!6332872))

(declare-fun m!6333340 () Bool)

(assert (=> bs!1228262 m!6333340))

(declare-fun m!6333342 () Bool)

(assert (=> bs!1228262 m!6333342))

(assert (=> bs!1228262 m!6332878))

(assert (=> b!5295525 d!1703312))

(declare-fun d!1703316 () Bool)

(declare-fun c!919023 () Bool)

(declare-fun e!3291940 () Bool)

(assert (=> d!1703316 (= c!919023 e!3291940)))

(declare-fun res!2246114 () Bool)

(assert (=> d!1703316 (=> (not res!2246114) (not e!3291940))))

(assert (=> d!1703316 (= res!2246114 ((_ is Cons!60974) (exprs!4817 lt!2163791)))))

(declare-fun e!3291938 () (InoxSet Context!8634))

(assert (=> d!1703316 (= (derivationStepZipperUp!305 lt!2163791 (h!67423 s!2326)) e!3291938)))

(declare-fun bm!377469 () Bool)

(declare-fun call!377474 () (InoxSet Context!8634))

(assert (=> bm!377469 (= call!377474 (derivationStepZipperDown!381 (h!67422 (exprs!4817 lt!2163791)) (Context!8635 (t!374303 (exprs!4817 lt!2163791))) (h!67423 s!2326)))))

(declare-fun b!5295884 () Bool)

(declare-fun e!3291939 () (InoxSet Context!8634))

(assert (=> b!5295884 (= e!3291939 ((as const (Array Context!8634 Bool)) false))))

(declare-fun b!5295885 () Bool)

(assert (=> b!5295885 (= e!3291940 (nullable!5102 (h!67422 (exprs!4817 lt!2163791))))))

(declare-fun b!5295886 () Bool)

(assert (=> b!5295886 (= e!3291938 ((_ map or) call!377474 (derivationStepZipperUp!305 (Context!8635 (t!374303 (exprs!4817 lt!2163791))) (h!67423 s!2326))))))

(declare-fun b!5295887 () Bool)

(assert (=> b!5295887 (= e!3291938 e!3291939)))

(declare-fun c!919022 () Bool)

(assert (=> b!5295887 (= c!919022 ((_ is Cons!60974) (exprs!4817 lt!2163791)))))

(declare-fun b!5295888 () Bool)

(assert (=> b!5295888 (= e!3291939 call!377474)))

(assert (= (and d!1703316 res!2246114) b!5295885))

(assert (= (and d!1703316 c!919023) b!5295886))

(assert (= (and d!1703316 (not c!919023)) b!5295887))

(assert (= (and b!5295887 c!919022) b!5295888))

(assert (= (and b!5295887 (not c!919022)) b!5295884))

(assert (= (or b!5295886 b!5295888) bm!377469))

(declare-fun m!6333344 () Bool)

(assert (=> bm!377469 m!6333344))

(declare-fun m!6333346 () Bool)

(assert (=> b!5295885 m!6333346))

(declare-fun m!6333348 () Bool)

(assert (=> b!5295886 m!6333348))

(assert (=> b!5295525 d!1703316))

(declare-fun d!1703318 () Bool)

(declare-fun choose!39563 ((InoxSet Context!8634) Int) (InoxSet Context!8634))

(assert (=> d!1703318 (= (flatMap!660 lt!2163795 lambda!268492) (choose!39563 lt!2163795 lambda!268492))))

(declare-fun bs!1228268 () Bool)

(assert (= bs!1228268 d!1703318))

(declare-fun m!6333352 () Bool)

(assert (=> bs!1228268 m!6333352))

(assert (=> b!5295525 d!1703318))

(declare-fun bs!1228284 () Bool)

(declare-fun d!1703320 () Bool)

(assert (= bs!1228284 (and d!1703320 b!5295514)))

(declare-fun lambda!268538 () Int)

(assert (=> bs!1228284 (= lambda!268538 lambda!268492)))

(assert (=> d!1703320 true))

(assert (=> d!1703320 (= (derivationStepZipper!1176 lt!2163795 (h!67423 s!2326)) (flatMap!660 lt!2163795 lambda!268538))))

(declare-fun bs!1228285 () Bool)

(assert (= bs!1228285 d!1703320))

(declare-fun m!6333366 () Bool)

(assert (=> bs!1228285 m!6333366))

(assert (=> b!5295525 d!1703320))

(assert (=> b!5295504 d!1703308))

(declare-fun e!3291943 () Bool)

(declare-fun d!1703330 () Bool)

(assert (=> d!1703330 (= (matchZipper!1177 ((_ map or) lt!2163806 lt!2163799) (t!374304 s!2326)) e!3291943)))

(declare-fun res!2246115 () Bool)

(assert (=> d!1703330 (=> res!2246115 e!3291943)))

(assert (=> d!1703330 (= res!2246115 (matchZipper!1177 lt!2163806 (t!374304 s!2326)))))

(declare-fun lt!2163869 () Unit!153250)

(assert (=> d!1703330 (= lt!2163869 (choose!39561 lt!2163806 lt!2163799 (t!374304 s!2326)))))

(assert (=> d!1703330 (= (lemmaZipperConcatMatchesSameAsBothZippers!170 lt!2163806 lt!2163799 (t!374304 s!2326)) lt!2163869)))

(declare-fun b!5295895 () Bool)

(assert (=> b!5295895 (= e!3291943 (matchZipper!1177 lt!2163799 (t!374304 s!2326)))))

(assert (= (and d!1703330 (not res!2246115)) b!5295895))

(declare-fun m!6333368 () Bool)

(assert (=> d!1703330 m!6333368))

(assert (=> d!1703330 m!6332944))

(declare-fun m!6333370 () Bool)

(assert (=> d!1703330 m!6333370))

(assert (=> b!5295895 m!6332970))

(assert (=> b!5295504 d!1703330))

(declare-fun d!1703332 () Bool)

(declare-fun c!919028 () Bool)

(assert (=> d!1703332 (= c!919028 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3291944 () Bool)

(assert (=> d!1703332 (= (matchZipper!1177 lt!2163765 (t!374304 s!2326)) e!3291944)))

(declare-fun b!5295896 () Bool)

(assert (=> b!5295896 (= e!3291944 (nullableZipper!1316 lt!2163765))))

(declare-fun b!5295897 () Bool)

(assert (=> b!5295897 (= e!3291944 (matchZipper!1177 (derivationStepZipper!1176 lt!2163765 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703332 c!919028) b!5295896))

(assert (= (and d!1703332 (not c!919028)) b!5295897))

(assert (=> d!1703332 m!6333180))

(declare-fun m!6333372 () Bool)

(assert (=> b!5295896 m!6333372))

(assert (=> b!5295897 m!6333184))

(assert (=> b!5295897 m!6333184))

(declare-fun m!6333374 () Bool)

(assert (=> b!5295897 m!6333374))

(assert (=> b!5295897 m!6333188))

(assert (=> b!5295897 m!6333374))

(assert (=> b!5295897 m!6333188))

(declare-fun m!6333376 () Bool)

(assert (=> b!5295897 m!6333376))

(assert (=> b!5295504 d!1703332))

(declare-fun d!1703334 () Bool)

(assert (=> d!1703334 (= (flatMap!660 lt!2163773 lambda!268492) (choose!39563 lt!2163773 lambda!268492))))

(declare-fun bs!1228286 () Bool)

(assert (= bs!1228286 d!1703334))

(declare-fun m!6333378 () Bool)

(assert (=> bs!1228286 m!6333378))

(assert (=> b!5295504 d!1703334))

(declare-fun d!1703336 () Bool)

(declare-fun c!919029 () Bool)

(assert (=> d!1703336 (= c!919029 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3291945 () Bool)

(assert (=> d!1703336 (= (matchZipper!1177 lt!2163774 (t!374304 s!2326)) e!3291945)))

(declare-fun b!5295898 () Bool)

(assert (=> b!5295898 (= e!3291945 (nullableZipper!1316 lt!2163774))))

(declare-fun b!5295899 () Bool)

(assert (=> b!5295899 (= e!3291945 (matchZipper!1177 (derivationStepZipper!1176 lt!2163774 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703336 c!919029) b!5295898))

(assert (= (and d!1703336 (not c!919029)) b!5295899))

(assert (=> d!1703336 m!6333180))

(declare-fun m!6333382 () Bool)

(assert (=> b!5295898 m!6333382))

(assert (=> b!5295899 m!6333184))

(assert (=> b!5295899 m!6333184))

(declare-fun m!6333388 () Bool)

(assert (=> b!5295899 m!6333388))

(assert (=> b!5295899 m!6333188))

(assert (=> b!5295899 m!6333388))

(assert (=> b!5295899 m!6333188))

(declare-fun m!6333390 () Bool)

(assert (=> b!5295899 m!6333390))

(assert (=> b!5295504 d!1703336))

(declare-fun d!1703340 () Bool)

(assert (=> d!1703340 (= (flatMap!660 lt!2163773 lambda!268492) (dynLambda!24110 lambda!268492 lt!2163790))))

(declare-fun lt!2163873 () Unit!153250)

(assert (=> d!1703340 (= lt!2163873 (choose!39562 lt!2163773 lt!2163790 lambda!268492))))

(assert (=> d!1703340 (= lt!2163773 (store ((as const (Array Context!8634 Bool)) false) lt!2163790 true))))

(assert (=> d!1703340 (= (lemmaFlatMapOnSingletonSet!192 lt!2163773 lt!2163790 lambda!268492) lt!2163873)))

(declare-fun b_lambda!204161 () Bool)

(assert (=> (not b_lambda!204161) (not d!1703340)))

(declare-fun bs!1228289 () Bool)

(assert (= bs!1228289 d!1703340))

(assert (=> bs!1228289 m!6332856))

(declare-fun m!6333394 () Bool)

(assert (=> bs!1228289 m!6333394))

(declare-fun m!6333396 () Bool)

(assert (=> bs!1228289 m!6333396))

(assert (=> bs!1228289 m!6332880))

(assert (=> b!5295504 d!1703340))

(declare-fun b!5295960 () Bool)

(assert (=> b!5295960 true))

(declare-fun bs!1228290 () Bool)

(declare-fun b!5295964 () Bool)

(assert (= bs!1228290 (and b!5295964 b!5295960)))

(declare-fun lt!2163883 () Int)

(declare-fun lt!2163885 () Int)

(declare-fun lambda!268546 () Int)

(declare-fun lambda!268547 () Int)

(assert (=> bs!1228290 (= (= lt!2163883 lt!2163885) (= lambda!268547 lambda!268546))))

(assert (=> b!5295964 true))

(declare-fun d!1703344 () Bool)

(declare-fun e!3291982 () Bool)

(assert (=> d!1703344 e!3291982))

(declare-fun res!2246126 () Bool)

(assert (=> d!1703344 (=> (not res!2246126) (not e!3291982))))

(assert (=> d!1703344 (= res!2246126 (>= lt!2163883 0))))

(declare-fun e!3291984 () Int)

(assert (=> d!1703344 (= lt!2163883 e!3291984)))

(declare-fun c!919062 () Bool)

(assert (=> d!1703344 (= c!919062 ((_ is Cons!60976) lt!2163787))))

(assert (=> d!1703344 (= (zipperDepth!50 lt!2163787) lt!2163883)))

(assert (=> b!5295960 (= e!3291984 lt!2163885)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!27 (Context!8634) Int)

(assert (=> b!5295960 (= lt!2163885 (maxBigInt!0 (contextDepth!27 (h!67424 lt!2163787)) (zipperDepth!50 (t!374305 lt!2163787))))))

(declare-fun lt!2163884 () Unit!153250)

(declare-fun lambda!268545 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!21 (List!61100 Int Int Int) Unit!153250)

(assert (=> b!5295960 (= lt!2163884 (lemmaForallContextDepthBiggerThanTransitive!21 (t!374305 lt!2163787) lt!2163885 (zipperDepth!50 (t!374305 lt!2163787)) lambda!268545))))

(declare-fun forall!14346 (List!61100 Int) Bool)

(assert (=> b!5295960 (forall!14346 (t!374305 lt!2163787) lambda!268546)))

(declare-fun lt!2163882 () Unit!153250)

(assert (=> b!5295960 (= lt!2163882 lt!2163884)))

(declare-fun b!5295962 () Bool)

(assert (=> b!5295962 (= e!3291984 0)))

(assert (=> b!5295964 (= e!3291982 (forall!14346 lt!2163787 lambda!268547))))

(assert (= (and d!1703344 c!919062) b!5295960))

(assert (= (and d!1703344 (not c!919062)) b!5295962))

(assert (= (and d!1703344 res!2246126) b!5295964))

(declare-fun m!6333426 () Bool)

(assert (=> b!5295960 m!6333426))

(declare-fun m!6333428 () Bool)

(assert (=> b!5295960 m!6333428))

(declare-fun m!6333430 () Bool)

(assert (=> b!5295960 m!6333430))

(declare-fun m!6333432 () Bool)

(assert (=> b!5295960 m!6333432))

(assert (=> b!5295960 m!6333426))

(assert (=> b!5295960 m!6333430))

(declare-fun m!6333434 () Bool)

(assert (=> b!5295960 m!6333434))

(assert (=> b!5295960 m!6333430))

(declare-fun m!6333436 () Bool)

(assert (=> b!5295964 m!6333436))

(assert (=> b!5295518 d!1703344))

(declare-fun bs!1228292 () Bool)

(declare-fun b!5295971 () Bool)

(assert (= bs!1228292 (and b!5295971 b!5295960)))

(declare-fun lambda!268548 () Int)

(assert (=> bs!1228292 (= lambda!268548 lambda!268545)))

(declare-fun lambda!268549 () Int)

(declare-fun lt!2163891 () Int)

(assert (=> bs!1228292 (= (= lt!2163891 lt!2163885) (= lambda!268549 lambda!268546))))

(declare-fun bs!1228293 () Bool)

(assert (= bs!1228293 (and b!5295971 b!5295964)))

(assert (=> bs!1228293 (= (= lt!2163891 lt!2163883) (= lambda!268549 lambda!268547))))

(assert (=> b!5295971 true))

(declare-fun bs!1228294 () Bool)

(declare-fun b!5295973 () Bool)

(assert (= bs!1228294 (and b!5295973 b!5295960)))

(declare-fun lt!2163889 () Int)

(declare-fun lambda!268550 () Int)

(assert (=> bs!1228294 (= (= lt!2163889 lt!2163885) (= lambda!268550 lambda!268546))))

(declare-fun bs!1228295 () Bool)

(assert (= bs!1228295 (and b!5295973 b!5295964)))

(assert (=> bs!1228295 (= (= lt!2163889 lt!2163883) (= lambda!268550 lambda!268547))))

(declare-fun bs!1228296 () Bool)

(assert (= bs!1228296 (and b!5295973 b!5295971)))

(assert (=> bs!1228296 (= (= lt!2163889 lt!2163891) (= lambda!268550 lambda!268549))))

(assert (=> b!5295973 true))

(declare-fun d!1703356 () Bool)

(declare-fun e!3291987 () Bool)

(assert (=> d!1703356 e!3291987))

(declare-fun res!2246129 () Bool)

(assert (=> d!1703356 (=> (not res!2246129) (not e!3291987))))

(assert (=> d!1703356 (= res!2246129 (>= lt!2163889 0))))

(declare-fun e!3291988 () Int)

(assert (=> d!1703356 (= lt!2163889 e!3291988)))

(declare-fun c!919064 () Bool)

(assert (=> d!1703356 (= c!919064 ((_ is Cons!60976) zl!343))))

(assert (=> d!1703356 (= (zipperDepth!50 zl!343) lt!2163889)))

(assert (=> b!5295971 (= e!3291988 lt!2163891)))

(assert (=> b!5295971 (= lt!2163891 (maxBigInt!0 (contextDepth!27 (h!67424 zl!343)) (zipperDepth!50 (t!374305 zl!343))))))

(declare-fun lt!2163890 () Unit!153250)

(assert (=> b!5295971 (= lt!2163890 (lemmaForallContextDepthBiggerThanTransitive!21 (t!374305 zl!343) lt!2163891 (zipperDepth!50 (t!374305 zl!343)) lambda!268548))))

(assert (=> b!5295971 (forall!14346 (t!374305 zl!343) lambda!268549)))

(declare-fun lt!2163888 () Unit!153250)

(assert (=> b!5295971 (= lt!2163888 lt!2163890)))

(declare-fun b!5295972 () Bool)

(assert (=> b!5295972 (= e!3291988 0)))

(assert (=> b!5295973 (= e!3291987 (forall!14346 zl!343 lambda!268550))))

(assert (= (and d!1703356 c!919064) b!5295971))

(assert (= (and d!1703356 (not c!919064)) b!5295972))

(assert (= (and d!1703356 res!2246129) b!5295973))

(declare-fun m!6333456 () Bool)

(assert (=> b!5295971 m!6333456))

(declare-fun m!6333460 () Bool)

(assert (=> b!5295971 m!6333460))

(declare-fun m!6333462 () Bool)

(assert (=> b!5295971 m!6333462))

(declare-fun m!6333464 () Bool)

(assert (=> b!5295971 m!6333464))

(assert (=> b!5295971 m!6333456))

(assert (=> b!5295971 m!6333462))

(declare-fun m!6333468 () Bool)

(assert (=> b!5295971 m!6333468))

(assert (=> b!5295971 m!6333462))

(declare-fun m!6333472 () Bool)

(assert (=> b!5295973 m!6333472))

(assert (=> b!5295518 d!1703356))

(declare-fun d!1703362 () Bool)

(assert (=> d!1703362 (= (isEmpty!32931 (t!374305 zl!343)) ((_ is Nil!60976) (t!374305 zl!343)))))

(assert (=> b!5295499 d!1703362))

(assert (=> b!5295498 d!1703256))

(declare-fun d!1703368 () Bool)

(declare-fun lt!2163900 () Regex!14933)

(assert (=> d!1703368 (validRegex!6669 lt!2163900)))

(assert (=> d!1703368 (= lt!2163900 (generalisedUnion!862 (unfocusZipperList!375 zl!343)))))

(assert (=> d!1703368 (= (unfocusZipper!675 zl!343) lt!2163900)))

(declare-fun bs!1228311 () Bool)

(assert (= bs!1228311 d!1703368))

(declare-fun m!6333482 () Bool)

(assert (=> bs!1228311 m!6333482))

(assert (=> bs!1228311 m!6332920))

(assert (=> bs!1228311 m!6332920))

(assert (=> bs!1228311 m!6332922))

(assert (=> b!5295517 d!1703368))

(declare-fun bs!1228336 () Bool)

(declare-fun d!1703372 () Bool)

(assert (= bs!1228336 (and d!1703372 b!5295496)))

(declare-fun lambda!268557 () Int)

(assert (=> bs!1228336 (= lambda!268557 lambda!268497)))

(declare-fun bs!1228337 () Bool)

(assert (= bs!1228337 (and d!1703372 d!1703250)))

(assert (=> bs!1228337 (= lambda!268557 lambda!268510)))

(declare-fun b!5296015 () Bool)

(declare-fun e!3292018 () Bool)

(declare-fun e!3292014 () Bool)

(assert (=> b!5296015 (= e!3292018 e!3292014)))

(declare-fun c!919081 () Bool)

(assert (=> b!5296015 (= c!919081 (isEmpty!32932 (unfocusZipperList!375 zl!343)))))

(declare-fun b!5296016 () Bool)

(declare-fun e!3292019 () Regex!14933)

(assert (=> b!5296016 (= e!3292019 EmptyLang!14933)))

(declare-fun b!5296017 () Bool)

(declare-fun e!3292016 () Bool)

(assert (=> b!5296017 (= e!3292016 (isEmpty!32932 (t!374303 (unfocusZipperList!375 zl!343))))))

(assert (=> d!1703372 e!3292018))

(declare-fun res!2246143 () Bool)

(assert (=> d!1703372 (=> (not res!2246143) (not e!3292018))))

(declare-fun lt!2163903 () Regex!14933)

(assert (=> d!1703372 (= res!2246143 (validRegex!6669 lt!2163903))))

(declare-fun e!3292017 () Regex!14933)

(assert (=> d!1703372 (= lt!2163903 e!3292017)))

(declare-fun c!919082 () Bool)

(assert (=> d!1703372 (= c!919082 e!3292016)))

(declare-fun res!2246144 () Bool)

(assert (=> d!1703372 (=> (not res!2246144) (not e!3292016))))

(assert (=> d!1703372 (= res!2246144 ((_ is Cons!60974) (unfocusZipperList!375 zl!343)))))

(assert (=> d!1703372 (forall!14345 (unfocusZipperList!375 zl!343) lambda!268557)))

(assert (=> d!1703372 (= (generalisedUnion!862 (unfocusZipperList!375 zl!343)) lt!2163903)))

(declare-fun b!5296018 () Bool)

(declare-fun isEmptyLang!858 (Regex!14933) Bool)

(assert (=> b!5296018 (= e!3292014 (isEmptyLang!858 lt!2163903))))

(declare-fun b!5296019 () Bool)

(declare-fun e!3292015 () Bool)

(declare-fun isUnion!290 (Regex!14933) Bool)

(assert (=> b!5296019 (= e!3292015 (isUnion!290 lt!2163903))))

(declare-fun b!5296020 () Bool)

(assert (=> b!5296020 (= e!3292019 (Union!14933 (h!67422 (unfocusZipperList!375 zl!343)) (generalisedUnion!862 (t!374303 (unfocusZipperList!375 zl!343)))))))

(declare-fun b!5296021 () Bool)

(assert (=> b!5296021 (= e!3292014 e!3292015)))

(declare-fun c!919079 () Bool)

(declare-fun tail!10448 (List!61098) List!61098)

(assert (=> b!5296021 (= c!919079 (isEmpty!32932 (tail!10448 (unfocusZipperList!375 zl!343))))))

(declare-fun b!5296022 () Bool)

(assert (=> b!5296022 (= e!3292017 e!3292019)))

(declare-fun c!919080 () Bool)

(assert (=> b!5296022 (= c!919080 ((_ is Cons!60974) (unfocusZipperList!375 zl!343)))))

(declare-fun b!5296023 () Bool)

(assert (=> b!5296023 (= e!3292017 (h!67422 (unfocusZipperList!375 zl!343)))))

(declare-fun b!5296024 () Bool)

(declare-fun head!11351 (List!61098) Regex!14933)

(assert (=> b!5296024 (= e!3292015 (= lt!2163903 (head!11351 (unfocusZipperList!375 zl!343))))))

(assert (= (and d!1703372 res!2246144) b!5296017))

(assert (= (and d!1703372 c!919082) b!5296023))

(assert (= (and d!1703372 (not c!919082)) b!5296022))

(assert (= (and b!5296022 c!919080) b!5296020))

(assert (= (and b!5296022 (not c!919080)) b!5296016))

(assert (= (and d!1703372 res!2246143) b!5296015))

(assert (= (and b!5296015 c!919081) b!5296018))

(assert (= (and b!5296015 (not c!919081)) b!5296021))

(assert (= (and b!5296021 c!919079) b!5296024))

(assert (= (and b!5296021 (not c!919079)) b!5296019))

(declare-fun m!6333492 () Bool)

(assert (=> b!5296019 m!6333492))

(assert (=> b!5296015 m!6332920))

(declare-fun m!6333494 () Bool)

(assert (=> b!5296015 m!6333494))

(declare-fun m!6333496 () Bool)

(assert (=> b!5296017 m!6333496))

(assert (=> b!5296021 m!6332920))

(declare-fun m!6333498 () Bool)

(assert (=> b!5296021 m!6333498))

(assert (=> b!5296021 m!6333498))

(declare-fun m!6333500 () Bool)

(assert (=> b!5296021 m!6333500))

(declare-fun m!6333502 () Bool)

(assert (=> b!5296018 m!6333502))

(assert (=> b!5296024 m!6332920))

(declare-fun m!6333504 () Bool)

(assert (=> b!5296024 m!6333504))

(declare-fun m!6333506 () Bool)

(assert (=> d!1703372 m!6333506))

(assert (=> d!1703372 m!6332920))

(declare-fun m!6333508 () Bool)

(assert (=> d!1703372 m!6333508))

(declare-fun m!6333510 () Bool)

(assert (=> b!5296020 m!6333510))

(assert (=> b!5295516 d!1703372))

(declare-fun bs!1228351 () Bool)

(declare-fun d!1703378 () Bool)

(assert (= bs!1228351 (and d!1703378 b!5295496)))

(declare-fun lambda!268561 () Int)

(assert (=> bs!1228351 (= lambda!268561 lambda!268497)))

(declare-fun bs!1228353 () Bool)

(assert (= bs!1228353 (and d!1703378 d!1703250)))

(assert (=> bs!1228353 (= lambda!268561 lambda!268510)))

(declare-fun bs!1228354 () Bool)

(assert (= bs!1228354 (and d!1703378 d!1703372)))

(assert (=> bs!1228354 (= lambda!268561 lambda!268557)))

(declare-fun lt!2163907 () List!61098)

(assert (=> d!1703378 (forall!14345 lt!2163907 lambda!268561)))

(declare-fun e!3292029 () List!61098)

(assert (=> d!1703378 (= lt!2163907 e!3292029)))

(declare-fun c!919088 () Bool)

(assert (=> d!1703378 (= c!919088 ((_ is Cons!60976) zl!343))))

(assert (=> d!1703378 (= (unfocusZipperList!375 zl!343) lt!2163907)))

(declare-fun b!5296043 () Bool)

(assert (=> b!5296043 (= e!3292029 (Cons!60974 (generalisedConcat!602 (exprs!4817 (h!67424 zl!343))) (unfocusZipperList!375 (t!374305 zl!343))))))

(declare-fun b!5296044 () Bool)

(assert (=> b!5296044 (= e!3292029 Nil!60974)))

(assert (= (and d!1703378 c!919088) b!5296043))

(assert (= (and d!1703378 (not c!919088)) b!5296044))

(declare-fun m!6333528 () Bool)

(assert (=> d!1703378 m!6333528))

(assert (=> b!5296043 m!6332882))

(declare-fun m!6333532 () Bool)

(assert (=> b!5296043 m!6333532))

(assert (=> b!5295516 d!1703378))

(declare-fun d!1703386 () Bool)

(declare-fun c!919090 () Bool)

(assert (=> d!1703386 (= c!919090 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3292031 () Bool)

(assert (=> d!1703386 (= (matchZipper!1177 lt!2163799 (t!374304 s!2326)) e!3292031)))

(declare-fun b!5296047 () Bool)

(assert (=> b!5296047 (= e!3292031 (nullableZipper!1316 lt!2163799))))

(declare-fun b!5296048 () Bool)

(assert (=> b!5296048 (= e!3292031 (matchZipper!1177 (derivationStepZipper!1176 lt!2163799 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703386 c!919090) b!5296047))

(assert (= (and d!1703386 (not c!919090)) b!5296048))

(assert (=> d!1703386 m!6333180))

(declare-fun m!6333536 () Bool)

(assert (=> b!5296047 m!6333536))

(assert (=> b!5296048 m!6333184))

(assert (=> b!5296048 m!6333184))

(declare-fun m!6333538 () Bool)

(assert (=> b!5296048 m!6333538))

(assert (=> b!5296048 m!6333188))

(assert (=> b!5296048 m!6333538))

(assert (=> b!5296048 m!6333188))

(declare-fun m!6333540 () Bool)

(assert (=> b!5296048 m!6333540))

(assert (=> b!5295497 d!1703386))

(declare-fun d!1703390 () Bool)

(assert (=> d!1703390 (= (isEmpty!32932 (t!374303 (exprs!4817 (h!67424 zl!343)))) ((_ is Nil!60974) (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(assert (=> b!5295521 d!1703390))

(declare-fun d!1703392 () Bool)

(declare-fun e!3292036 () Bool)

(assert (=> d!1703392 e!3292036))

(declare-fun res!2246155 () Bool)

(assert (=> d!1703392 (=> (not res!2246155) (not e!3292036))))

(declare-fun lt!2163913 () List!61100)

(declare-fun noDuplicate!1270 (List!61100) Bool)

(assert (=> d!1703392 (= res!2246155 (noDuplicate!1270 lt!2163913))))

(declare-fun choose!39564 ((InoxSet Context!8634)) List!61100)

(assert (=> d!1703392 (= lt!2163913 (choose!39564 z!1189))))

(assert (=> d!1703392 (= (toList!8717 z!1189) lt!2163913)))

(declare-fun b!5296055 () Bool)

(declare-fun content!10858 (List!61100) (InoxSet Context!8634))

(assert (=> b!5296055 (= e!3292036 (= (content!10858 lt!2163913) z!1189))))

(assert (= (and d!1703392 res!2246155) b!5296055))

(declare-fun m!6333542 () Bool)

(assert (=> d!1703392 m!6333542))

(declare-fun m!6333544 () Bool)

(assert (=> d!1703392 m!6333544))

(declare-fun m!6333546 () Bool)

(assert (=> b!5296055 m!6333546))

(assert (=> b!5295520 d!1703392))

(declare-fun d!1703394 () Bool)

(declare-fun lt!2163919 () Int)

(assert (=> d!1703394 (>= lt!2163919 0)))

(declare-fun e!3292046 () Int)

(assert (=> d!1703394 (= lt!2163919 e!3292046)))

(declare-fun c!919101 () Bool)

(assert (=> d!1703394 (= c!919101 ((_ is Cons!60976) lt!2163787))))

(assert (=> d!1703394 (= (zipperDepthTotal!94 lt!2163787) lt!2163919)))

(declare-fun b!5296072 () Bool)

(assert (=> b!5296072 (= e!3292046 (+ (contextDepthTotal!74 (h!67424 lt!2163787)) (zipperDepthTotal!94 (t!374305 lt!2163787))))))

(declare-fun b!5296073 () Bool)

(assert (=> b!5296073 (= e!3292046 0)))

(assert (= (and d!1703394 c!919101) b!5296072))

(assert (= (and d!1703394 (not c!919101)) b!5296073))

(declare-fun m!6333572 () Bool)

(assert (=> b!5296072 m!6333572))

(declare-fun m!6333574 () Bool)

(assert (=> b!5296072 m!6333574))

(assert (=> b!5295500 d!1703394))

(declare-fun d!1703406 () Bool)

(declare-fun lt!2163920 () Int)

(assert (=> d!1703406 (>= lt!2163920 0)))

(declare-fun e!3292047 () Int)

(assert (=> d!1703406 (= lt!2163920 e!3292047)))

(declare-fun c!919102 () Bool)

(assert (=> d!1703406 (= c!919102 ((_ is Cons!60976) zl!343))))

(assert (=> d!1703406 (= (zipperDepthTotal!94 zl!343) lt!2163920)))

(declare-fun b!5296074 () Bool)

(assert (=> b!5296074 (= e!3292047 (+ (contextDepthTotal!74 (h!67424 zl!343)) (zipperDepthTotal!94 (t!374305 zl!343))))))

(declare-fun b!5296075 () Bool)

(assert (=> b!5296075 (= e!3292047 0)))

(assert (= (and d!1703406 c!919102) b!5296074))

(assert (= (and d!1703406 (not c!919102)) b!5296075))

(assert (=> b!5296074 m!6332964))

(declare-fun m!6333578 () Bool)

(assert (=> b!5296074 m!6333578))

(assert (=> b!5295500 d!1703406))

(declare-fun bs!1228356 () Bool)

(declare-fun d!1703410 () Bool)

(assert (= bs!1228356 (and d!1703410 b!5295496)))

(declare-fun lambda!268562 () Int)

(assert (=> bs!1228356 (= lambda!268562 lambda!268497)))

(declare-fun bs!1228357 () Bool)

(assert (= bs!1228357 (and d!1703410 d!1703250)))

(assert (=> bs!1228357 (= lambda!268562 lambda!268510)))

(declare-fun bs!1228358 () Bool)

(assert (= bs!1228358 (and d!1703410 d!1703372)))

(assert (=> bs!1228358 (= lambda!268562 lambda!268557)))

(declare-fun bs!1228359 () Bool)

(assert (= bs!1228359 (and d!1703410 d!1703378)))

(assert (=> bs!1228359 (= lambda!268562 lambda!268561)))

(assert (=> d!1703410 (= (inv!80579 setElem!34001) (forall!14345 (exprs!4817 setElem!34001) lambda!268562))))

(declare-fun bs!1228361 () Bool)

(assert (= bs!1228361 d!1703410))

(declare-fun m!6333590 () Bool)

(assert (=> bs!1228361 m!6333590))

(assert (=> setNonEmpty!34001 d!1703410))

(declare-fun b!5296153 () Bool)

(declare-fun e!3292093 () Option!15044)

(assert (=> b!5296153 (= e!3292093 (Some!15043 (tuple2!64265 Nil!60975 s!2326)))))

(declare-fun d!1703416 () Bool)

(declare-fun e!3292094 () Bool)

(assert (=> d!1703416 e!3292094))

(declare-fun res!2246180 () Bool)

(assert (=> d!1703416 (=> res!2246180 e!3292094)))

(declare-fun e!3292095 () Bool)

(assert (=> d!1703416 (= res!2246180 e!3292095)))

(declare-fun res!2246182 () Bool)

(assert (=> d!1703416 (=> (not res!2246182) (not e!3292095))))

(declare-fun lt!2163936 () Option!15044)

(assert (=> d!1703416 (= res!2246182 (isDefined!11747 lt!2163936))))

(assert (=> d!1703416 (= lt!2163936 e!3292093)))

(declare-fun c!919132 () Bool)

(declare-fun e!3292092 () Bool)

(assert (=> d!1703416 (= c!919132 e!3292092)))

(declare-fun res!2246179 () Bool)

(assert (=> d!1703416 (=> (not res!2246179) (not e!3292092))))

(assert (=> d!1703416 (= res!2246179 (matchR!7118 (regOne!30378 r!7292) Nil!60975))))

(assert (=> d!1703416 (validRegex!6669 (regOne!30378 r!7292))))

(assert (=> d!1703416 (= (findConcatSeparation!1458 (regOne!30378 r!7292) (regTwo!30378 r!7292) Nil!60975 s!2326 s!2326) lt!2163936)))

(declare-fun b!5296154 () Bool)

(assert (=> b!5296154 (= e!3292092 (matchR!7118 (regTwo!30378 r!7292) s!2326))))

(declare-fun b!5296155 () Bool)

(declare-fun e!3292096 () Option!15044)

(assert (=> b!5296155 (= e!3292093 e!3292096)))

(declare-fun c!919133 () Bool)

(assert (=> b!5296155 (= c!919133 ((_ is Nil!60975) s!2326))))

(declare-fun b!5296156 () Bool)

(declare-fun ++!13296 (List!61099 List!61099) List!61099)

(declare-fun get!20968 (Option!15044) tuple2!64264)

(assert (=> b!5296156 (= e!3292095 (= (++!13296 (_1!35435 (get!20968 lt!2163936)) (_2!35435 (get!20968 lt!2163936))) s!2326))))

(declare-fun b!5296157 () Bool)

(declare-fun res!2246181 () Bool)

(assert (=> b!5296157 (=> (not res!2246181) (not e!3292095))))

(assert (=> b!5296157 (= res!2246181 (matchR!7118 (regOne!30378 r!7292) (_1!35435 (get!20968 lt!2163936))))))

(declare-fun b!5296158 () Bool)

(assert (=> b!5296158 (= e!3292096 None!15043)))

(declare-fun b!5296159 () Bool)

(declare-fun res!2246183 () Bool)

(assert (=> b!5296159 (=> (not res!2246183) (not e!3292095))))

(assert (=> b!5296159 (= res!2246183 (matchR!7118 (regTwo!30378 r!7292) (_2!35435 (get!20968 lt!2163936))))))

(declare-fun b!5296160 () Bool)

(declare-fun lt!2163935 () Unit!153250)

(declare-fun lt!2163934 () Unit!153250)

(assert (=> b!5296160 (= lt!2163935 lt!2163934)))

(assert (=> b!5296160 (= (++!13296 (++!13296 Nil!60975 (Cons!60975 (h!67423 s!2326) Nil!60975)) (t!374304 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1711 (List!61099 C!30136 List!61099 List!61099) Unit!153250)

(assert (=> b!5296160 (= lt!2163934 (lemmaMoveElementToOtherListKeepsConcatEq!1711 Nil!60975 (h!67423 s!2326) (t!374304 s!2326) s!2326))))

(assert (=> b!5296160 (= e!3292096 (findConcatSeparation!1458 (regOne!30378 r!7292) (regTwo!30378 r!7292) (++!13296 Nil!60975 (Cons!60975 (h!67423 s!2326) Nil!60975)) (t!374304 s!2326) s!2326))))

(declare-fun b!5296161 () Bool)

(assert (=> b!5296161 (= e!3292094 (not (isDefined!11747 lt!2163936)))))

(assert (= (and d!1703416 res!2246179) b!5296154))

(assert (= (and d!1703416 c!919132) b!5296153))

(assert (= (and d!1703416 (not c!919132)) b!5296155))

(assert (= (and b!5296155 c!919133) b!5296158))

(assert (= (and b!5296155 (not c!919133)) b!5296160))

(assert (= (and d!1703416 res!2246182) b!5296157))

(assert (= (and b!5296157 res!2246181) b!5296159))

(assert (= (and b!5296159 res!2246183) b!5296156))

(assert (= (and d!1703416 (not res!2246180)) b!5296161))

(declare-fun m!6333664 () Bool)

(assert (=> d!1703416 m!6333664))

(declare-fun m!6333666 () Bool)

(assert (=> d!1703416 m!6333666))

(declare-fun m!6333668 () Bool)

(assert (=> d!1703416 m!6333668))

(assert (=> b!5296161 m!6333664))

(declare-fun m!6333670 () Bool)

(assert (=> b!5296159 m!6333670))

(declare-fun m!6333672 () Bool)

(assert (=> b!5296159 m!6333672))

(assert (=> b!5296156 m!6333670))

(declare-fun m!6333674 () Bool)

(assert (=> b!5296156 m!6333674))

(declare-fun m!6333676 () Bool)

(assert (=> b!5296160 m!6333676))

(assert (=> b!5296160 m!6333676))

(declare-fun m!6333678 () Bool)

(assert (=> b!5296160 m!6333678))

(declare-fun m!6333680 () Bool)

(assert (=> b!5296160 m!6333680))

(assert (=> b!5296160 m!6333676))

(declare-fun m!6333682 () Bool)

(assert (=> b!5296160 m!6333682))

(declare-fun m!6333684 () Bool)

(assert (=> b!5296154 m!6333684))

(assert (=> b!5296157 m!6333670))

(declare-fun m!6333686 () Bool)

(assert (=> b!5296157 m!6333686))

(assert (=> b!5295512 d!1703416))

(declare-fun d!1703450 () Bool)

(declare-fun choose!39566 (Int) Bool)

(assert (=> d!1703450 (= (Exists!2114 lambda!268491) (choose!39566 lambda!268491))))

(declare-fun bs!1228378 () Bool)

(assert (= bs!1228378 d!1703450))

(declare-fun m!6333688 () Bool)

(assert (=> bs!1228378 m!6333688))

(assert (=> b!5295512 d!1703450))

(declare-fun d!1703452 () Bool)

(assert (=> d!1703452 (= (Exists!2114 lambda!268490) (choose!39566 lambda!268490))))

(declare-fun bs!1228379 () Bool)

(assert (= bs!1228379 d!1703452))

(declare-fun m!6333690 () Bool)

(assert (=> bs!1228379 m!6333690))

(assert (=> b!5295512 d!1703452))

(declare-fun bs!1228381 () Bool)

(declare-fun d!1703454 () Bool)

(assert (= bs!1228381 (and d!1703454 b!5295527)))

(declare-fun lambda!268579 () Int)

(assert (=> bs!1228381 (not (= lambda!268579 lambda!268496))))

(declare-fun bs!1228382 () Bool)

(assert (= bs!1228382 (and d!1703454 b!5295512)))

(assert (=> bs!1228382 (= lambda!268579 lambda!268490)))

(assert (=> bs!1228382 (not (= lambda!268579 lambda!268491))))

(assert (=> bs!1228381 (= (and (= (regOne!30378 r!7292) (regOne!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163798)) (= lambda!268579 lambda!268493))))

(assert (=> bs!1228381 (= (and (= (regOne!30378 r!7292) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163767)) (= lambda!268579 lambda!268495))))

(assert (=> bs!1228381 (not (= lambda!268579 lambda!268494))))

(assert (=> d!1703454 true))

(assert (=> d!1703454 true))

(assert (=> d!1703454 true))

(assert (=> d!1703454 (= (isDefined!11747 (findConcatSeparation!1458 (regOne!30378 r!7292) (regTwo!30378 r!7292) Nil!60975 s!2326 s!2326)) (Exists!2114 lambda!268579))))

(declare-fun lt!2163951 () Unit!153250)

(declare-fun choose!39567 (Regex!14933 Regex!14933 List!61099) Unit!153250)

(assert (=> d!1703454 (= lt!2163951 (choose!39567 (regOne!30378 r!7292) (regTwo!30378 r!7292) s!2326))))

(assert (=> d!1703454 (validRegex!6669 (regOne!30378 r!7292))))

(assert (=> d!1703454 (= (lemmaFindConcatSeparationEquivalentToExists!1222 (regOne!30378 r!7292) (regTwo!30378 r!7292) s!2326) lt!2163951)))

(declare-fun bs!1228388 () Bool)

(assert (= bs!1228388 d!1703454))

(declare-fun m!6333704 () Bool)

(assert (=> bs!1228388 m!6333704))

(assert (=> bs!1228388 m!6333668))

(assert (=> bs!1228388 m!6332890))

(declare-fun m!6333706 () Bool)

(assert (=> bs!1228388 m!6333706))

(assert (=> bs!1228388 m!6332890))

(assert (=> bs!1228388 m!6332892))

(assert (=> b!5295512 d!1703454))

(declare-fun bs!1228389 () Bool)

(declare-fun d!1703458 () Bool)

(assert (= bs!1228389 (and d!1703458 b!5295527)))

(declare-fun lambda!268587 () Int)

(assert (=> bs!1228389 (not (= lambda!268587 lambda!268496))))

(declare-fun bs!1228390 () Bool)

(assert (= bs!1228390 (and d!1703458 d!1703454)))

(assert (=> bs!1228390 (= lambda!268587 lambda!268579)))

(declare-fun bs!1228391 () Bool)

(assert (= bs!1228391 (and d!1703458 b!5295512)))

(assert (=> bs!1228391 (= lambda!268587 lambda!268490)))

(assert (=> bs!1228391 (not (= lambda!268587 lambda!268491))))

(assert (=> bs!1228389 (= (and (= (regOne!30378 r!7292) (regOne!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163798)) (= lambda!268587 lambda!268493))))

(assert (=> bs!1228389 (= (and (= (regOne!30378 r!7292) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163767)) (= lambda!268587 lambda!268495))))

(assert (=> bs!1228389 (not (= lambda!268587 lambda!268494))))

(assert (=> d!1703458 true))

(assert (=> d!1703458 true))

(assert (=> d!1703458 true))

(declare-fun lambda!268588 () Int)

(assert (=> bs!1228389 (= (and (= (regOne!30378 r!7292) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163767)) (= lambda!268588 lambda!268496))))

(assert (=> bs!1228390 (not (= lambda!268588 lambda!268579))))

(declare-fun bs!1228392 () Bool)

(assert (= bs!1228392 d!1703458))

(assert (=> bs!1228392 (not (= lambda!268588 lambda!268587))))

(assert (=> bs!1228391 (not (= lambda!268588 lambda!268490))))

(assert (=> bs!1228391 (= lambda!268588 lambda!268491)))

(assert (=> bs!1228389 (not (= lambda!268588 lambda!268493))))

(assert (=> bs!1228389 (not (= lambda!268588 lambda!268495))))

(assert (=> bs!1228389 (= (and (= (regOne!30378 r!7292) (regOne!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163798)) (= lambda!268588 lambda!268494))))

(assert (=> d!1703458 true))

(assert (=> d!1703458 true))

(assert (=> d!1703458 true))

(assert (=> d!1703458 (= (Exists!2114 lambda!268587) (Exists!2114 lambda!268588))))

(declare-fun lt!2163958 () Unit!153250)

(declare-fun choose!39568 (Regex!14933 Regex!14933 List!61099) Unit!153250)

(assert (=> d!1703458 (= lt!2163958 (choose!39568 (regOne!30378 r!7292) (regTwo!30378 r!7292) s!2326))))

(assert (=> d!1703458 (validRegex!6669 (regOne!30378 r!7292))))

(assert (=> d!1703458 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!768 (regOne!30378 r!7292) (regTwo!30378 r!7292) s!2326) lt!2163958)))

(declare-fun m!6333732 () Bool)

(assert (=> bs!1228392 m!6333732))

(declare-fun m!6333734 () Bool)

(assert (=> bs!1228392 m!6333734))

(declare-fun m!6333736 () Bool)

(assert (=> bs!1228392 m!6333736))

(assert (=> bs!1228392 m!6333668))

(assert (=> b!5295512 d!1703458))

(declare-fun d!1703470 () Bool)

(declare-fun isEmpty!32936 (Option!15044) Bool)

(assert (=> d!1703470 (= (isDefined!11747 (findConcatSeparation!1458 (regOne!30378 r!7292) (regTwo!30378 r!7292) Nil!60975 s!2326 s!2326)) (not (isEmpty!32936 (findConcatSeparation!1458 (regOne!30378 r!7292) (regTwo!30378 r!7292) Nil!60975 s!2326 s!2326))))))

(declare-fun bs!1228397 () Bool)

(assert (= bs!1228397 d!1703470))

(assert (=> bs!1228397 m!6332890))

(declare-fun m!6333738 () Bool)

(assert (=> bs!1228397 m!6333738))

(assert (=> b!5295512 d!1703470))

(declare-fun d!1703472 () Bool)

(declare-fun res!2246219 () Bool)

(declare-fun e!3292159 () Bool)

(assert (=> d!1703472 (=> res!2246219 e!3292159)))

(assert (=> d!1703472 (= res!2246219 ((_ is Nil!60974) lt!2163792))))

(assert (=> d!1703472 (= (forall!14345 lt!2163792 lambda!268497) e!3292159)))

(declare-fun b!5296273 () Bool)

(declare-fun e!3292160 () Bool)

(assert (=> b!5296273 (= e!3292159 e!3292160)))

(declare-fun res!2246220 () Bool)

(assert (=> b!5296273 (=> (not res!2246220) (not e!3292160))))

(declare-fun dynLambda!24112 (Int Regex!14933) Bool)

(assert (=> b!5296273 (= res!2246220 (dynLambda!24112 lambda!268497 (h!67422 lt!2163792)))))

(declare-fun b!5296274 () Bool)

(assert (=> b!5296274 (= e!3292160 (forall!14345 (t!374303 lt!2163792) lambda!268497))))

(assert (= (and d!1703472 (not res!2246219)) b!5296273))

(assert (= (and b!5296273 res!2246220) b!5296274))

(declare-fun b_lambda!204177 () Bool)

(assert (=> (not b_lambda!204177) (not b!5296273)))

(declare-fun m!6333740 () Bool)

(assert (=> b!5296273 m!6333740))

(declare-fun m!6333742 () Bool)

(assert (=> b!5296274 m!6333742))

(assert (=> b!5295496 d!1703472))

(declare-fun d!1703474 () Bool)

(declare-fun nullableFct!1468 (Regex!14933) Bool)

(assert (=> d!1703474 (= (nullable!5102 (regOne!30378 (regOne!30378 r!7292))) (nullableFct!1468 (regOne!30378 (regOne!30378 r!7292))))))

(declare-fun bs!1228398 () Bool)

(assert (= bs!1228398 d!1703474))

(declare-fun m!6333744 () Bool)

(assert (=> bs!1228398 m!6333744))

(assert (=> b!5295515 d!1703474))

(declare-fun d!1703476 () Bool)

(assert (=> d!1703476 (= (flatMap!660 z!1189 lambda!268492) (dynLambda!24110 lambda!268492 (h!67424 zl!343)))))

(declare-fun lt!2163959 () Unit!153250)

(assert (=> d!1703476 (= lt!2163959 (choose!39562 z!1189 (h!67424 zl!343) lambda!268492))))

(assert (=> d!1703476 (= z!1189 (store ((as const (Array Context!8634 Bool)) false) (h!67424 zl!343) true))))

(assert (=> d!1703476 (= (lemmaFlatMapOnSingletonSet!192 z!1189 (h!67424 zl!343) lambda!268492) lt!2163959)))

(declare-fun b_lambda!204179 () Bool)

(assert (=> (not b_lambda!204179) (not d!1703476)))

(declare-fun bs!1228399 () Bool)

(assert (= bs!1228399 d!1703476))

(assert (=> bs!1228399 m!6332908))

(declare-fun m!6333746 () Bool)

(assert (=> bs!1228399 m!6333746))

(declare-fun m!6333748 () Bool)

(assert (=> bs!1228399 m!6333748))

(declare-fun m!6333750 () Bool)

(assert (=> bs!1228399 m!6333750))

(assert (=> b!5295514 d!1703476))

(declare-fun d!1703478 () Bool)

(declare-fun c!919151 () Bool)

(declare-fun e!3292163 () Bool)

(assert (=> d!1703478 (= c!919151 e!3292163)))

(declare-fun res!2246221 () Bool)

(assert (=> d!1703478 (=> (not res!2246221) (not e!3292163))))

(assert (=> d!1703478 (= res!2246221 ((_ is Cons!60974) (exprs!4817 lt!2163769)))))

(declare-fun e!3292161 () (InoxSet Context!8634))

(assert (=> d!1703478 (= (derivationStepZipperUp!305 lt!2163769 (h!67423 s!2326)) e!3292161)))

(declare-fun bm!377519 () Bool)

(declare-fun call!377524 () (InoxSet Context!8634))

(assert (=> bm!377519 (= call!377524 (derivationStepZipperDown!381 (h!67422 (exprs!4817 lt!2163769)) (Context!8635 (t!374303 (exprs!4817 lt!2163769))) (h!67423 s!2326)))))

(declare-fun b!5296275 () Bool)

(declare-fun e!3292162 () (InoxSet Context!8634))

(assert (=> b!5296275 (= e!3292162 ((as const (Array Context!8634 Bool)) false))))

(declare-fun b!5296276 () Bool)

(assert (=> b!5296276 (= e!3292163 (nullable!5102 (h!67422 (exprs!4817 lt!2163769))))))

(declare-fun b!5296277 () Bool)

(assert (=> b!5296277 (= e!3292161 ((_ map or) call!377524 (derivationStepZipperUp!305 (Context!8635 (t!374303 (exprs!4817 lt!2163769))) (h!67423 s!2326))))))

(declare-fun b!5296278 () Bool)

(assert (=> b!5296278 (= e!3292161 e!3292162)))

(declare-fun c!919150 () Bool)

(assert (=> b!5296278 (= c!919150 ((_ is Cons!60974) (exprs!4817 lt!2163769)))))

(declare-fun b!5296279 () Bool)

(assert (=> b!5296279 (= e!3292162 call!377524)))

(assert (= (and d!1703478 res!2246221) b!5296276))

(assert (= (and d!1703478 c!919151) b!5296277))

(assert (= (and d!1703478 (not c!919151)) b!5296278))

(assert (= (and b!5296278 c!919150) b!5296279))

(assert (= (and b!5296278 (not c!919150)) b!5296275))

(assert (= (or b!5296277 b!5296279) bm!377519))

(declare-fun m!6333752 () Bool)

(assert (=> bm!377519 m!6333752))

(declare-fun m!6333754 () Bool)

(assert (=> b!5296276 m!6333754))

(declare-fun m!6333756 () Bool)

(assert (=> b!5296277 m!6333756))

(assert (=> b!5295514 d!1703478))

(declare-fun d!1703480 () Bool)

(assert (=> d!1703480 (= (nullable!5102 (h!67422 (exprs!4817 (h!67424 zl!343)))) (nullableFct!1468 (h!67422 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun bs!1228400 () Bool)

(assert (= bs!1228400 d!1703480))

(declare-fun m!6333758 () Bool)

(assert (=> bs!1228400 m!6333758))

(assert (=> b!5295514 d!1703480))

(declare-fun d!1703482 () Bool)

(assert (=> d!1703482 (= (flatMap!660 z!1189 lambda!268492) (choose!39563 z!1189 lambda!268492))))

(declare-fun bs!1228401 () Bool)

(assert (= bs!1228401 d!1703482))

(declare-fun m!6333760 () Bool)

(assert (=> bs!1228401 m!6333760))

(assert (=> b!5295514 d!1703482))

(declare-fun d!1703484 () Bool)

(declare-fun c!919153 () Bool)

(declare-fun e!3292166 () Bool)

(assert (=> d!1703484 (= c!919153 e!3292166)))

(declare-fun res!2246222 () Bool)

(assert (=> d!1703484 (=> (not res!2246222) (not e!3292166))))

(assert (=> d!1703484 (= res!2246222 ((_ is Cons!60974) (exprs!4817 (h!67424 zl!343))))))

(declare-fun e!3292164 () (InoxSet Context!8634))

(assert (=> d!1703484 (= (derivationStepZipperUp!305 (h!67424 zl!343) (h!67423 s!2326)) e!3292164)))

(declare-fun bm!377520 () Bool)

(declare-fun call!377525 () (InoxSet Context!8634))

(assert (=> bm!377520 (= call!377525 (derivationStepZipperDown!381 (h!67422 (exprs!4817 (h!67424 zl!343))) (Context!8635 (t!374303 (exprs!4817 (h!67424 zl!343)))) (h!67423 s!2326)))))

(declare-fun b!5296280 () Bool)

(declare-fun e!3292165 () (InoxSet Context!8634))

(assert (=> b!5296280 (= e!3292165 ((as const (Array Context!8634 Bool)) false))))

(declare-fun b!5296281 () Bool)

(assert (=> b!5296281 (= e!3292166 (nullable!5102 (h!67422 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5296282 () Bool)

(assert (=> b!5296282 (= e!3292164 ((_ map or) call!377525 (derivationStepZipperUp!305 (Context!8635 (t!374303 (exprs!4817 (h!67424 zl!343)))) (h!67423 s!2326))))))

(declare-fun b!5296283 () Bool)

(assert (=> b!5296283 (= e!3292164 e!3292165)))

(declare-fun c!919152 () Bool)

(assert (=> b!5296283 (= c!919152 ((_ is Cons!60974) (exprs!4817 (h!67424 zl!343))))))

(declare-fun b!5296284 () Bool)

(assert (=> b!5296284 (= e!3292165 call!377525)))

(assert (= (and d!1703484 res!2246222) b!5296281))

(assert (= (and d!1703484 c!919153) b!5296282))

(assert (= (and d!1703484 (not c!919153)) b!5296283))

(assert (= (and b!5296283 c!919152) b!5296284))

(assert (= (and b!5296283 (not c!919152)) b!5296280))

(assert (= (or b!5296282 b!5296284) bm!377520))

(declare-fun m!6333762 () Bool)

(assert (=> bm!377520 m!6333762))

(assert (=> b!5296281 m!6332910))

(declare-fun m!6333764 () Bool)

(assert (=> b!5296282 m!6333764))

(assert (=> b!5295514 d!1703484))

(declare-fun b!5296285 () Bool)

(declare-fun e!3292172 () (InoxSet Context!8634))

(declare-fun call!377527 () (InoxSet Context!8634))

(declare-fun call!377531 () (InoxSet Context!8634))

(assert (=> b!5296285 (= e!3292172 ((_ map or) call!377527 call!377531))))

(declare-fun b!5296286 () Bool)

(declare-fun e!3292168 () (InoxSet Context!8634))

(declare-fun call!377529 () (InoxSet Context!8634))

(assert (=> b!5296286 (= e!3292168 ((_ map or) call!377529 call!377527))))

(declare-fun bm!377521 () Bool)

(declare-fun call!377526 () List!61098)

(declare-fun call!377528 () List!61098)

(assert (=> bm!377521 (= call!377526 call!377528)))

(declare-fun b!5296287 () Bool)

(declare-fun c!919154 () Bool)

(declare-fun e!3292171 () Bool)

(assert (=> b!5296287 (= c!919154 e!3292171)))

(declare-fun res!2246223 () Bool)

(assert (=> b!5296287 (=> (not res!2246223) (not e!3292171))))

(assert (=> b!5296287 (= res!2246223 ((_ is Concat!23778) (h!67422 (exprs!4817 (h!67424 zl!343)))))))

(assert (=> b!5296287 (= e!3292168 e!3292172)))

(declare-fun bm!377522 () Bool)

(declare-fun call!377530 () (InoxSet Context!8634))

(assert (=> bm!377522 (= call!377530 call!377531)))

(declare-fun c!919158 () Bool)

(declare-fun c!919157 () Bool)

(declare-fun bm!377523 () Bool)

(assert (=> bm!377523 (= call!377529 (derivationStepZipperDown!381 (ite c!919158 (regOne!30379 (h!67422 (exprs!4817 (h!67424 zl!343)))) (ite c!919154 (regTwo!30378 (h!67422 (exprs!4817 (h!67424 zl!343)))) (ite c!919157 (regOne!30378 (h!67422 (exprs!4817 (h!67424 zl!343)))) (reg!15262 (h!67422 (exprs!4817 (h!67424 zl!343))))))) (ite (or c!919158 c!919154) lt!2163769 (Context!8635 call!377526)) (h!67423 s!2326)))))

(declare-fun b!5296288 () Bool)

(declare-fun e!3292169 () (InoxSet Context!8634))

(assert (=> b!5296288 (= e!3292169 call!377530)))

(declare-fun bm!377524 () Bool)

(assert (=> bm!377524 (= call!377527 (derivationStepZipperDown!381 (ite c!919158 (regTwo!30379 (h!67422 (exprs!4817 (h!67424 zl!343)))) (regOne!30378 (h!67422 (exprs!4817 (h!67424 zl!343))))) (ite c!919158 lt!2163769 (Context!8635 call!377528)) (h!67423 s!2326)))))

(declare-fun b!5296289 () Bool)

(declare-fun e!3292167 () (InoxSet Context!8634))

(assert (=> b!5296289 (= e!3292167 e!3292168)))

(assert (=> b!5296289 (= c!919158 ((_ is Union!14933) (h!67422 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5296290 () Bool)

(declare-fun e!3292170 () (InoxSet Context!8634))

(assert (=> b!5296290 (= e!3292170 ((as const (Array Context!8634 Bool)) false))))

(declare-fun bm!377526 () Bool)

(assert (=> bm!377526 (= call!377528 ($colon$colon!1365 (exprs!4817 lt!2163769) (ite (or c!919154 c!919157) (regTwo!30378 (h!67422 (exprs!4817 (h!67424 zl!343)))) (h!67422 (exprs!4817 (h!67424 zl!343))))))))

(declare-fun b!5296291 () Bool)

(assert (=> b!5296291 (= e!3292172 e!3292169)))

(assert (=> b!5296291 (= c!919157 ((_ is Concat!23778) (h!67422 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5296292 () Bool)

(assert (=> b!5296292 (= e!3292170 call!377530)))

(declare-fun b!5296293 () Bool)

(assert (=> b!5296293 (= e!3292167 (store ((as const (Array Context!8634 Bool)) false) lt!2163769 true))))

(declare-fun b!5296294 () Bool)

(declare-fun c!919156 () Bool)

(assert (=> b!5296294 (= c!919156 ((_ is Star!14933) (h!67422 (exprs!4817 (h!67424 zl!343)))))))

(assert (=> b!5296294 (= e!3292169 e!3292170)))

(declare-fun b!5296295 () Bool)

(assert (=> b!5296295 (= e!3292171 (nullable!5102 (regOne!30378 (h!67422 (exprs!4817 (h!67424 zl!343))))))))

(declare-fun bm!377525 () Bool)

(assert (=> bm!377525 (= call!377531 call!377529)))

(declare-fun d!1703486 () Bool)

(declare-fun c!919155 () Bool)

(assert (=> d!1703486 (= c!919155 (and ((_ is ElementMatch!14933) (h!67422 (exprs!4817 (h!67424 zl!343)))) (= (c!918905 (h!67422 (exprs!4817 (h!67424 zl!343)))) (h!67423 s!2326))))))

(assert (=> d!1703486 (= (derivationStepZipperDown!381 (h!67422 (exprs!4817 (h!67424 zl!343))) lt!2163769 (h!67423 s!2326)) e!3292167)))

(assert (= (and d!1703486 c!919155) b!5296293))

(assert (= (and d!1703486 (not c!919155)) b!5296289))

(assert (= (and b!5296289 c!919158) b!5296286))

(assert (= (and b!5296289 (not c!919158)) b!5296287))

(assert (= (and b!5296287 res!2246223) b!5296295))

(assert (= (and b!5296287 c!919154) b!5296285))

(assert (= (and b!5296287 (not c!919154)) b!5296291))

(assert (= (and b!5296291 c!919157) b!5296288))

(assert (= (and b!5296291 (not c!919157)) b!5296294))

(assert (= (and b!5296294 c!919156) b!5296292))

(assert (= (and b!5296294 (not c!919156)) b!5296290))

(assert (= (or b!5296288 b!5296292) bm!377521))

(assert (= (or b!5296288 b!5296292) bm!377522))

(assert (= (or b!5296285 bm!377521) bm!377526))

(assert (= (or b!5296285 bm!377522) bm!377525))

(assert (= (or b!5296286 b!5296285) bm!377524))

(assert (= (or b!5296286 bm!377525) bm!377523))

(declare-fun m!6333766 () Bool)

(assert (=> bm!377523 m!6333766))

(declare-fun m!6333768 () Bool)

(assert (=> bm!377526 m!6333768))

(declare-fun m!6333770 () Bool)

(assert (=> bm!377524 m!6333770))

(assert (=> b!5296293 m!6333220))

(declare-fun m!6333772 () Bool)

(assert (=> b!5296295 m!6333772))

(assert (=> b!5295514 d!1703486))

(declare-fun d!1703488 () Bool)

(declare-fun c!919160 () Bool)

(declare-fun e!3292175 () Bool)

(assert (=> d!1703488 (= c!919160 e!3292175)))

(declare-fun res!2246224 () Bool)

(assert (=> d!1703488 (=> (not res!2246224) (not e!3292175))))

(assert (=> d!1703488 (= res!2246224 ((_ is Cons!60974) (exprs!4817 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343))))))))))

(declare-fun e!3292173 () (InoxSet Context!8634))

(assert (=> d!1703488 (= (derivationStepZipperUp!305 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343))))) (h!67423 s!2326)) e!3292173)))

(declare-fun bm!377527 () Bool)

(declare-fun call!377532 () (InoxSet Context!8634))

(assert (=> bm!377527 (= call!377532 (derivationStepZipperDown!381 (h!67422 (exprs!4817 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343))))))) (Context!8635 (t!374303 (exprs!4817 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343)))))))) (h!67423 s!2326)))))

(declare-fun b!5296296 () Bool)

(declare-fun e!3292174 () (InoxSet Context!8634))

(assert (=> b!5296296 (= e!3292174 ((as const (Array Context!8634 Bool)) false))))

(declare-fun b!5296297 () Bool)

(assert (=> b!5296297 (= e!3292175 (nullable!5102 (h!67422 (exprs!4817 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343)))))))))))

(declare-fun b!5296298 () Bool)

(assert (=> b!5296298 (= e!3292173 ((_ map or) call!377532 (derivationStepZipperUp!305 (Context!8635 (t!374303 (exprs!4817 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343)))))))) (h!67423 s!2326))))))

(declare-fun b!5296299 () Bool)

(assert (=> b!5296299 (= e!3292173 e!3292174)))

(declare-fun c!919159 () Bool)

(assert (=> b!5296299 (= c!919159 ((_ is Cons!60974) (exprs!4817 (Context!8635 (Cons!60974 (h!67422 (exprs!4817 (h!67424 zl!343))) (t!374303 (exprs!4817 (h!67424 zl!343))))))))))

(declare-fun b!5296300 () Bool)

(assert (=> b!5296300 (= e!3292174 call!377532)))

(assert (= (and d!1703488 res!2246224) b!5296297))

(assert (= (and d!1703488 c!919160) b!5296298))

(assert (= (and d!1703488 (not c!919160)) b!5296299))

(assert (= (and b!5296299 c!919159) b!5296300))

(assert (= (and b!5296299 (not c!919159)) b!5296296))

(assert (= (or b!5296298 b!5296300) bm!377527))

(declare-fun m!6333774 () Bool)

(assert (=> bm!377527 m!6333774))

(declare-fun m!6333776 () Bool)

(assert (=> b!5296297 m!6333776))

(declare-fun m!6333778 () Bool)

(assert (=> b!5296298 m!6333778))

(assert (=> b!5295514 d!1703488))

(declare-fun bs!1228402 () Bool)

(declare-fun b!5296336 () Bool)

(assert (= bs!1228402 (and b!5296336 d!1703458)))

(declare-fun lambda!268593 () Int)

(assert (=> bs!1228402 (not (= lambda!268593 lambda!268588))))

(declare-fun bs!1228403 () Bool)

(assert (= bs!1228403 (and b!5296336 b!5295527)))

(assert (=> bs!1228403 (not (= lambda!268593 lambda!268496))))

(declare-fun bs!1228404 () Bool)

(assert (= bs!1228404 (and b!5296336 d!1703454)))

(assert (=> bs!1228404 (not (= lambda!268593 lambda!268579))))

(assert (=> bs!1228402 (not (= lambda!268593 lambda!268587))))

(declare-fun bs!1228405 () Bool)

(assert (= bs!1228405 (and b!5296336 b!5295512)))

(assert (=> bs!1228405 (not (= lambda!268593 lambda!268490))))

(assert (=> bs!1228405 (not (= lambda!268593 lambda!268491))))

(assert (=> bs!1228403 (not (= lambda!268593 lambda!268493))))

(assert (=> bs!1228403 (not (= lambda!268593 lambda!268495))))

(assert (=> bs!1228403 (not (= lambda!268593 lambda!268494))))

(assert (=> b!5296336 true))

(assert (=> b!5296336 true))

(declare-fun bs!1228406 () Bool)

(declare-fun b!5296342 () Bool)

(assert (= bs!1228406 (and b!5296342 d!1703458)))

(declare-fun lambda!268594 () Int)

(assert (=> bs!1228406 (= lambda!268594 lambda!268588)))

(declare-fun bs!1228407 () Bool)

(assert (= bs!1228407 (and b!5296342 b!5295527)))

(assert (=> bs!1228407 (= (and (= (regOne!30378 r!7292) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163767)) (= lambda!268594 lambda!268496))))

(declare-fun bs!1228408 () Bool)

(assert (= bs!1228408 (and b!5296342 d!1703454)))

(assert (=> bs!1228408 (not (= lambda!268594 lambda!268579))))

(assert (=> bs!1228406 (not (= lambda!268594 lambda!268587))))

(declare-fun bs!1228409 () Bool)

(assert (= bs!1228409 (and b!5296342 b!5296336)))

(assert (=> bs!1228409 (not (= lambda!268594 lambda!268593))))

(declare-fun bs!1228410 () Bool)

(assert (= bs!1228410 (and b!5296342 b!5295512)))

(assert (=> bs!1228410 (not (= lambda!268594 lambda!268490))))

(assert (=> bs!1228410 (= lambda!268594 lambda!268491)))

(assert (=> bs!1228407 (not (= lambda!268594 lambda!268493))))

(assert (=> bs!1228407 (not (= lambda!268594 lambda!268495))))

(assert (=> bs!1228407 (= (and (= (regOne!30378 r!7292) (regOne!30378 (regOne!30378 r!7292))) (= (regTwo!30378 r!7292) lt!2163798)) (= lambda!268594 lambda!268494))))

(assert (=> b!5296342 true))

(assert (=> b!5296342 true))

(declare-fun b!5296333 () Bool)

(declare-fun e!3292195 () Bool)

(declare-fun e!3292199 () Bool)

(assert (=> b!5296333 (= e!3292195 e!3292199)))

(declare-fun c!919169 () Bool)

(assert (=> b!5296333 (= c!919169 ((_ is Star!14933) r!7292))))

(declare-fun bm!377532 () Bool)

(declare-fun call!377538 () Bool)

(assert (=> bm!377532 (= call!377538 (isEmpty!32934 s!2326))))

(declare-fun b!5296335 () Bool)

(declare-fun c!919171 () Bool)

(assert (=> b!5296335 (= c!919171 ((_ is Union!14933) r!7292))))

(declare-fun e!3292197 () Bool)

(assert (=> b!5296335 (= e!3292197 e!3292195)))

(declare-fun e!3292198 () Bool)

(declare-fun call!377537 () Bool)

(assert (=> b!5296336 (= e!3292198 call!377537)))

(declare-fun b!5296337 () Bool)

(declare-fun c!919170 () Bool)

(assert (=> b!5296337 (= c!919170 ((_ is ElementMatch!14933) r!7292))))

(declare-fun e!3292194 () Bool)

(assert (=> b!5296337 (= e!3292194 e!3292197)))

(declare-fun b!5296338 () Bool)

(declare-fun res!2246241 () Bool)

(assert (=> b!5296338 (=> res!2246241 e!3292198)))

(assert (=> b!5296338 (= res!2246241 call!377538)))

(assert (=> b!5296338 (= e!3292199 e!3292198)))

(declare-fun b!5296339 () Bool)

(declare-fun e!3292196 () Bool)

(assert (=> b!5296339 (= e!3292195 e!3292196)))

(declare-fun res!2246243 () Bool)

(assert (=> b!5296339 (= res!2246243 (matchRSpec!2036 (regOne!30379 r!7292) s!2326))))

(assert (=> b!5296339 (=> res!2246243 e!3292196)))

(declare-fun b!5296340 () Bool)

(declare-fun e!3292200 () Bool)

(assert (=> b!5296340 (= e!3292200 call!377538)))

(declare-fun b!5296341 () Bool)

(assert (=> b!5296341 (= e!3292200 e!3292194)))

(declare-fun res!2246242 () Bool)

(assert (=> b!5296341 (= res!2246242 (not ((_ is EmptyLang!14933) r!7292)))))

(assert (=> b!5296341 (=> (not res!2246242) (not e!3292194))))

(assert (=> b!5296342 (= e!3292199 call!377537)))

(declare-fun b!5296334 () Bool)

(assert (=> b!5296334 (= e!3292196 (matchRSpec!2036 (regTwo!30379 r!7292) s!2326))))

(declare-fun d!1703490 () Bool)

(declare-fun c!919172 () Bool)

(assert (=> d!1703490 (= c!919172 ((_ is EmptyExpr!14933) r!7292))))

(assert (=> d!1703490 (= (matchRSpec!2036 r!7292 s!2326) e!3292200)))

(declare-fun bm!377533 () Bool)

(assert (=> bm!377533 (= call!377537 (Exists!2114 (ite c!919169 lambda!268593 lambda!268594)))))

(declare-fun b!5296343 () Bool)

(assert (=> b!5296343 (= e!3292197 (= s!2326 (Cons!60975 (c!918905 r!7292) Nil!60975)))))

(assert (= (and d!1703490 c!919172) b!5296340))

(assert (= (and d!1703490 (not c!919172)) b!5296341))

(assert (= (and b!5296341 res!2246242) b!5296337))

(assert (= (and b!5296337 c!919170) b!5296343))

(assert (= (and b!5296337 (not c!919170)) b!5296335))

(assert (= (and b!5296335 c!919171) b!5296339))

(assert (= (and b!5296335 (not c!919171)) b!5296333))

(assert (= (and b!5296339 (not res!2246243)) b!5296334))

(assert (= (and b!5296333 c!919169) b!5296338))

(assert (= (and b!5296333 (not c!919169)) b!5296342))

(assert (= (and b!5296338 (not res!2246241)) b!5296336))

(assert (= (or b!5296336 b!5296342) bm!377533))

(assert (= (or b!5296340 b!5296338) bm!377532))

(declare-fun m!6333780 () Bool)

(assert (=> bm!377532 m!6333780))

(declare-fun m!6333782 () Bool)

(assert (=> b!5296339 m!6333782))

(declare-fun m!6333784 () Bool)

(assert (=> b!5296334 m!6333784))

(declare-fun m!6333786 () Bool)

(assert (=> bm!377533 m!6333786))

(assert (=> b!5295529 d!1703490))

(declare-fun b!5296372 () Bool)

(declare-fun res!2246262 () Bool)

(declare-fun e!3292217 () Bool)

(assert (=> b!5296372 (=> res!2246262 e!3292217)))

(assert (=> b!5296372 (= res!2246262 (not (isEmpty!32934 (tail!10447 s!2326))))))

(declare-fun b!5296373 () Bool)

(declare-fun e!3292220 () Bool)

(declare-fun lt!2163962 () Bool)

(assert (=> b!5296373 (= e!3292220 (not lt!2163962))))

(declare-fun d!1703492 () Bool)

(declare-fun e!3292216 () Bool)

(assert (=> d!1703492 e!3292216))

(declare-fun c!919179 () Bool)

(assert (=> d!1703492 (= c!919179 ((_ is EmptyExpr!14933) r!7292))))

(declare-fun e!3292218 () Bool)

(assert (=> d!1703492 (= lt!2163962 e!3292218)))

(declare-fun c!919180 () Bool)

(assert (=> d!1703492 (= c!919180 (isEmpty!32934 s!2326))))

(assert (=> d!1703492 (validRegex!6669 r!7292)))

(assert (=> d!1703492 (= (matchR!7118 r!7292 s!2326) lt!2163962)))

(declare-fun b!5296374 () Bool)

(assert (=> b!5296374 (= e!3292218 (nullable!5102 r!7292))))

(declare-fun b!5296375 () Bool)

(assert (=> b!5296375 (= e!3292216 e!3292220)))

(declare-fun c!919181 () Bool)

(assert (=> b!5296375 (= c!919181 ((_ is EmptyLang!14933) r!7292))))

(declare-fun b!5296376 () Bool)

(declare-fun res!2246267 () Bool)

(declare-fun e!3292221 () Bool)

(assert (=> b!5296376 (=> res!2246267 e!3292221)))

(declare-fun e!3292219 () Bool)

(assert (=> b!5296376 (= res!2246267 e!3292219)))

(declare-fun res!2246261 () Bool)

(assert (=> b!5296376 (=> (not res!2246261) (not e!3292219))))

(assert (=> b!5296376 (= res!2246261 lt!2163962)))

(declare-fun b!5296377 () Bool)

(declare-fun e!3292215 () Bool)

(assert (=> b!5296377 (= e!3292221 e!3292215)))

(declare-fun res!2246263 () Bool)

(assert (=> b!5296377 (=> (not res!2246263) (not e!3292215))))

(assert (=> b!5296377 (= res!2246263 (not lt!2163962))))

(declare-fun b!5296378 () Bool)

(assert (=> b!5296378 (= e!3292219 (= (head!11350 s!2326) (c!918905 r!7292)))))

(declare-fun b!5296379 () Bool)

(assert (=> b!5296379 (= e!3292217 (not (= (head!11350 s!2326) (c!918905 r!7292))))))

(declare-fun b!5296380 () Bool)

(declare-fun res!2246265 () Bool)

(assert (=> b!5296380 (=> res!2246265 e!3292221)))

(assert (=> b!5296380 (= res!2246265 (not ((_ is ElementMatch!14933) r!7292)))))

(assert (=> b!5296380 (= e!3292220 e!3292221)))

(declare-fun b!5296381 () Bool)

(declare-fun res!2246264 () Bool)

(assert (=> b!5296381 (=> (not res!2246264) (not e!3292219))))

(declare-fun call!377541 () Bool)

(assert (=> b!5296381 (= res!2246264 (not call!377541))))

(declare-fun b!5296382 () Bool)

(assert (=> b!5296382 (= e!3292215 e!3292217)))

(declare-fun res!2246266 () Bool)

(assert (=> b!5296382 (=> res!2246266 e!3292217)))

(assert (=> b!5296382 (= res!2246266 call!377541)))

(declare-fun bm!377536 () Bool)

(assert (=> bm!377536 (= call!377541 (isEmpty!32934 s!2326))))

(declare-fun b!5296383 () Bool)

(declare-fun res!2246260 () Bool)

(assert (=> b!5296383 (=> (not res!2246260) (not e!3292219))))

(assert (=> b!5296383 (= res!2246260 (isEmpty!32934 (tail!10447 s!2326)))))

(declare-fun b!5296384 () Bool)

(declare-fun derivativeStep!4137 (Regex!14933 C!30136) Regex!14933)

(assert (=> b!5296384 (= e!3292218 (matchR!7118 (derivativeStep!4137 r!7292 (head!11350 s!2326)) (tail!10447 s!2326)))))

(declare-fun b!5296385 () Bool)

(assert (=> b!5296385 (= e!3292216 (= lt!2163962 call!377541))))

(assert (= (and d!1703492 c!919180) b!5296374))

(assert (= (and d!1703492 (not c!919180)) b!5296384))

(assert (= (and d!1703492 c!919179) b!5296385))

(assert (= (and d!1703492 (not c!919179)) b!5296375))

(assert (= (and b!5296375 c!919181) b!5296373))

(assert (= (and b!5296375 (not c!919181)) b!5296380))

(assert (= (and b!5296380 (not res!2246265)) b!5296376))

(assert (= (and b!5296376 res!2246261) b!5296381))

(assert (= (and b!5296381 res!2246264) b!5296383))

(assert (= (and b!5296383 res!2246260) b!5296378))

(assert (= (and b!5296376 (not res!2246267)) b!5296377))

(assert (= (and b!5296377 res!2246263) b!5296382))

(assert (= (and b!5296382 (not res!2246266)) b!5296372))

(assert (= (and b!5296372 (not res!2246262)) b!5296379))

(assert (= (or b!5296385 b!5296381 b!5296382) bm!377536))

(declare-fun m!6333788 () Bool)

(assert (=> b!5296384 m!6333788))

(assert (=> b!5296384 m!6333788))

(declare-fun m!6333790 () Bool)

(assert (=> b!5296384 m!6333790))

(declare-fun m!6333792 () Bool)

(assert (=> b!5296384 m!6333792))

(assert (=> b!5296384 m!6333790))

(assert (=> b!5296384 m!6333792))

(declare-fun m!6333794 () Bool)

(assert (=> b!5296384 m!6333794))

(assert (=> d!1703492 m!6333780))

(assert (=> d!1703492 m!6332926))

(declare-fun m!6333796 () Bool)

(assert (=> b!5296374 m!6333796))

(assert (=> b!5296372 m!6333792))

(assert (=> b!5296372 m!6333792))

(declare-fun m!6333798 () Bool)

(assert (=> b!5296372 m!6333798))

(assert (=> b!5296379 m!6333788))

(assert (=> b!5296378 m!6333788))

(assert (=> b!5296383 m!6333792))

(assert (=> b!5296383 m!6333792))

(assert (=> b!5296383 m!6333798))

(assert (=> bm!377536 m!6333780))

(assert (=> b!5295529 d!1703492))

(declare-fun d!1703494 () Bool)

(assert (=> d!1703494 (= (matchR!7118 r!7292 s!2326) (matchRSpec!2036 r!7292 s!2326))))

(declare-fun lt!2163965 () Unit!153250)

(declare-fun choose!39571 (Regex!14933 List!61099) Unit!153250)

(assert (=> d!1703494 (= lt!2163965 (choose!39571 r!7292 s!2326))))

(assert (=> d!1703494 (validRegex!6669 r!7292)))

(assert (=> d!1703494 (= (mainMatchTheorem!2036 r!7292 s!2326) lt!2163965)))

(declare-fun bs!1228411 () Bool)

(assert (= bs!1228411 d!1703494))

(assert (=> bs!1228411 m!6332930))

(assert (=> bs!1228411 m!6332928))

(declare-fun m!6333800 () Bool)

(assert (=> bs!1228411 m!6333800))

(assert (=> bs!1228411 m!6332926))

(assert (=> b!5295529 d!1703494))

(declare-fun bs!1228412 () Bool)

(declare-fun d!1703496 () Bool)

(assert (= bs!1228412 (and d!1703496 b!5295496)))

(declare-fun lambda!268597 () Int)

(assert (=> bs!1228412 (= lambda!268597 lambda!268497)))

(declare-fun bs!1228413 () Bool)

(assert (= bs!1228413 (and d!1703496 d!1703372)))

(assert (=> bs!1228413 (= lambda!268597 lambda!268557)))

(declare-fun bs!1228414 () Bool)

(assert (= bs!1228414 (and d!1703496 d!1703250)))

(assert (=> bs!1228414 (= lambda!268597 lambda!268510)))

(declare-fun bs!1228415 () Bool)

(assert (= bs!1228415 (and d!1703496 d!1703410)))

(assert (=> bs!1228415 (= lambda!268597 lambda!268562)))

(declare-fun bs!1228416 () Bool)

(assert (= bs!1228416 (and d!1703496 d!1703378)))

(assert (=> bs!1228416 (= lambda!268597 lambda!268561)))

(declare-fun b!5296406 () Bool)

(declare-fun e!3292235 () Bool)

(declare-fun lt!2163968 () Regex!14933)

(assert (=> b!5296406 (= e!3292235 (= lt!2163968 (head!11351 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5296407 () Bool)

(declare-fun e!3292236 () Regex!14933)

(assert (=> b!5296407 (= e!3292236 (h!67422 (exprs!4817 (h!67424 zl!343))))))

(declare-fun e!3292237 () Bool)

(assert (=> d!1703496 e!3292237))

(declare-fun res!2246273 () Bool)

(assert (=> d!1703496 (=> (not res!2246273) (not e!3292237))))

(assert (=> d!1703496 (= res!2246273 (validRegex!6669 lt!2163968))))

(assert (=> d!1703496 (= lt!2163968 e!3292236)))

(declare-fun c!919193 () Bool)

(declare-fun e!3292234 () Bool)

(assert (=> d!1703496 (= c!919193 e!3292234)))

(declare-fun res!2246272 () Bool)

(assert (=> d!1703496 (=> (not res!2246272) (not e!3292234))))

(assert (=> d!1703496 (= res!2246272 ((_ is Cons!60974) (exprs!4817 (h!67424 zl!343))))))

(assert (=> d!1703496 (forall!14345 (exprs!4817 (h!67424 zl!343)) lambda!268597)))

(assert (=> d!1703496 (= (generalisedConcat!602 (exprs!4817 (h!67424 zl!343))) lt!2163968)))

(declare-fun b!5296408 () Bool)

(declare-fun e!3292239 () Bool)

(declare-fun isEmptyExpr!851 (Regex!14933) Bool)

(assert (=> b!5296408 (= e!3292239 (isEmptyExpr!851 lt!2163968))))

(declare-fun b!5296409 () Bool)

(assert (=> b!5296409 (= e!3292234 (isEmpty!32932 (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5296410 () Bool)

(declare-fun isConcat!374 (Regex!14933) Bool)

(assert (=> b!5296410 (= e!3292235 (isConcat!374 lt!2163968))))

(declare-fun b!5296411 () Bool)

(declare-fun e!3292238 () Regex!14933)

(assert (=> b!5296411 (= e!3292238 EmptyExpr!14933)))

(declare-fun b!5296412 () Bool)

(assert (=> b!5296412 (= e!3292237 e!3292239)))

(declare-fun c!919191 () Bool)

(assert (=> b!5296412 (= c!919191 (isEmpty!32932 (exprs!4817 (h!67424 zl!343))))))

(declare-fun b!5296413 () Bool)

(assert (=> b!5296413 (= e!3292238 (Concat!23778 (h!67422 (exprs!4817 (h!67424 zl!343))) (generalisedConcat!602 (t!374303 (exprs!4817 (h!67424 zl!343))))))))

(declare-fun b!5296414 () Bool)

(assert (=> b!5296414 (= e!3292236 e!3292238)))

(declare-fun c!919190 () Bool)

(assert (=> b!5296414 (= c!919190 ((_ is Cons!60974) (exprs!4817 (h!67424 zl!343))))))

(declare-fun b!5296415 () Bool)

(assert (=> b!5296415 (= e!3292239 e!3292235)))

(declare-fun c!919192 () Bool)

(assert (=> b!5296415 (= c!919192 (isEmpty!32932 (tail!10448 (exprs!4817 (h!67424 zl!343)))))))

(assert (= (and d!1703496 res!2246272) b!5296409))

(assert (= (and d!1703496 c!919193) b!5296407))

(assert (= (and d!1703496 (not c!919193)) b!5296414))

(assert (= (and b!5296414 c!919190) b!5296413))

(assert (= (and b!5296414 (not c!919190)) b!5296411))

(assert (= (and d!1703496 res!2246273) b!5296412))

(assert (= (and b!5296412 c!919191) b!5296408))

(assert (= (and b!5296412 (not c!919191)) b!5296415))

(assert (= (and b!5296415 c!919192) b!5296406))

(assert (= (and b!5296415 (not c!919192)) b!5296410))

(assert (=> b!5296409 m!6332916))

(declare-fun m!6333802 () Bool)

(assert (=> b!5296410 m!6333802))

(declare-fun m!6333804 () Bool)

(assert (=> b!5296415 m!6333804))

(assert (=> b!5296415 m!6333804))

(declare-fun m!6333806 () Bool)

(assert (=> b!5296415 m!6333806))

(declare-fun m!6333808 () Bool)

(assert (=> b!5296406 m!6333808))

(declare-fun m!6333810 () Bool)

(assert (=> b!5296408 m!6333810))

(assert (=> b!5296413 m!6333016))

(declare-fun m!6333812 () Bool)

(assert (=> d!1703496 m!6333812))

(declare-fun m!6333814 () Bool)

(assert (=> d!1703496 m!6333814))

(declare-fun m!6333816 () Bool)

(assert (=> b!5296412 m!6333816))

(assert (=> b!5295507 d!1703496))

(declare-fun d!1703498 () Bool)

(assert (=> d!1703498 (= (Exists!2114 lambda!268493) (choose!39566 lambda!268493))))

(declare-fun bs!1228417 () Bool)

(assert (= bs!1228417 d!1703498))

(declare-fun m!6333818 () Bool)

(assert (=> bs!1228417 m!6333818))

(assert (=> b!5295527 d!1703498))

(declare-fun d!1703500 () Bool)

(declare-fun c!919194 () Bool)

(assert (=> d!1703500 (= c!919194 (isEmpty!32934 s!2326))))

(declare-fun e!3292240 () Bool)

(assert (=> d!1703500 (= (matchZipper!1177 z!1189 s!2326) e!3292240)))

(declare-fun b!5296416 () Bool)

(assert (=> b!5296416 (= e!3292240 (nullableZipper!1316 z!1189))))

(declare-fun b!5296417 () Bool)

(assert (=> b!5296417 (= e!3292240 (matchZipper!1177 (derivationStepZipper!1176 z!1189 (head!11350 s!2326)) (tail!10447 s!2326)))))

(assert (= (and d!1703500 c!919194) b!5296416))

(assert (= (and d!1703500 (not c!919194)) b!5296417))

(assert (=> d!1703500 m!6333780))

(declare-fun m!6333820 () Bool)

(assert (=> b!5296416 m!6333820))

(assert (=> b!5296417 m!6333788))

(assert (=> b!5296417 m!6333788))

(declare-fun m!6333822 () Bool)

(assert (=> b!5296417 m!6333822))

(assert (=> b!5296417 m!6333792))

(assert (=> b!5296417 m!6333822))

(assert (=> b!5296417 m!6333792))

(declare-fun m!6333824 () Bool)

(assert (=> b!5296417 m!6333824))

(assert (=> b!5295527 d!1703500))

(declare-fun d!1703502 () Bool)

(declare-fun c!919195 () Bool)

(assert (=> d!1703502 (= c!919195 (isEmpty!32934 s!2326))))

(declare-fun e!3292241 () Bool)

(assert (=> d!1703502 (= (matchZipper!1177 lt!2163795 s!2326) e!3292241)))

(declare-fun b!5296418 () Bool)

(assert (=> b!5296418 (= e!3292241 (nullableZipper!1316 lt!2163795))))

(declare-fun b!5296419 () Bool)

(assert (=> b!5296419 (= e!3292241 (matchZipper!1177 (derivationStepZipper!1176 lt!2163795 (head!11350 s!2326)) (tail!10447 s!2326)))))

(assert (= (and d!1703502 c!919195) b!5296418))

(assert (= (and d!1703502 (not c!919195)) b!5296419))

(assert (=> d!1703502 m!6333780))

(declare-fun m!6333826 () Bool)

(assert (=> b!5296418 m!6333826))

(assert (=> b!5296419 m!6333788))

(assert (=> b!5296419 m!6333788))

(declare-fun m!6333828 () Bool)

(assert (=> b!5296419 m!6333828))

(assert (=> b!5296419 m!6333792))

(assert (=> b!5296419 m!6333828))

(assert (=> b!5296419 m!6333792))

(declare-fun m!6333830 () Bool)

(assert (=> b!5296419 m!6333830))

(assert (=> b!5295527 d!1703502))

(declare-fun bs!1228418 () Bool)

(declare-fun d!1703504 () Bool)

(assert (= bs!1228418 (and d!1703504 d!1703458)))

(declare-fun lambda!268598 () Int)

(assert (=> bs!1228418 (not (= lambda!268598 lambda!268588))))

(declare-fun bs!1228419 () Bool)

(assert (= bs!1228419 (and d!1703504 b!5295527)))

(assert (=> bs!1228419 (not (= lambda!268598 lambda!268496))))

(declare-fun bs!1228420 () Bool)

(assert (= bs!1228420 (and d!1703504 d!1703454)))

(assert (=> bs!1228420 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268598 lambda!268579))))

(assert (=> bs!1228418 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268598 lambda!268587))))

(declare-fun bs!1228421 () Bool)

(assert (= bs!1228421 (and d!1703504 b!5296336)))

(assert (=> bs!1228421 (not (= lambda!268598 lambda!268593))))

(declare-fun bs!1228422 () Bool)

(assert (= bs!1228422 (and d!1703504 b!5295512)))

(assert (=> bs!1228422 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268598 lambda!268490))))

(assert (=> bs!1228419 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 (regOne!30378 r!7292))) (= lt!2163767 lt!2163798)) (= lambda!268598 lambda!268493))))

(assert (=> bs!1228419 (= lambda!268598 lambda!268495)))

(assert (=> bs!1228419 (not (= lambda!268598 lambda!268494))))

(assert (=> bs!1228422 (not (= lambda!268598 lambda!268491))))

(declare-fun bs!1228423 () Bool)

(assert (= bs!1228423 (and d!1703504 b!5296342)))

(assert (=> bs!1228423 (not (= lambda!268598 lambda!268594))))

(assert (=> d!1703504 true))

(assert (=> d!1703504 true))

(assert (=> d!1703504 true))

(declare-fun lambda!268599 () Int)

(assert (=> bs!1228418 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268599 lambda!268588))))

(declare-fun bs!1228424 () Bool)

(assert (= bs!1228424 d!1703504))

(assert (=> bs!1228424 (not (= lambda!268599 lambda!268598))))

(assert (=> bs!1228419 (= lambda!268599 lambda!268496)))

(assert (=> bs!1228420 (not (= lambda!268599 lambda!268579))))

(assert (=> bs!1228418 (not (= lambda!268599 lambda!268587))))

(assert (=> bs!1228421 (not (= lambda!268599 lambda!268593))))

(assert (=> bs!1228422 (not (= lambda!268599 lambda!268490))))

(assert (=> bs!1228419 (not (= lambda!268599 lambda!268493))))

(assert (=> bs!1228419 (not (= lambda!268599 lambda!268495))))

(assert (=> bs!1228419 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 (regOne!30378 r!7292))) (= lt!2163767 lt!2163798)) (= lambda!268599 lambda!268494))))

(assert (=> bs!1228422 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268599 lambda!268491))))

(assert (=> bs!1228423 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268599 lambda!268594))))

(assert (=> d!1703504 true))

(assert (=> d!1703504 true))

(assert (=> d!1703504 true))

(assert (=> d!1703504 (= (Exists!2114 lambda!268598) (Exists!2114 lambda!268599))))

(declare-fun lt!2163969 () Unit!153250)

(assert (=> d!1703504 (= lt!2163969 (choose!39568 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 s!2326))))

(assert (=> d!1703504 (validRegex!6669 (regTwo!30378 (regOne!30378 r!7292)))))

(assert (=> d!1703504 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!768 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 s!2326) lt!2163969)))

(declare-fun m!6333832 () Bool)

(assert (=> bs!1228424 m!6333832))

(declare-fun m!6333834 () Bool)

(assert (=> bs!1228424 m!6333834))

(declare-fun m!6333836 () Bool)

(assert (=> bs!1228424 m!6333836))

(declare-fun m!6333838 () Bool)

(assert (=> bs!1228424 m!6333838))

(assert (=> b!5295527 d!1703504))

(declare-fun d!1703506 () Bool)

(assert (=> d!1703506 (= (Exists!2114 lambda!268494) (choose!39566 lambda!268494))))

(declare-fun bs!1228425 () Bool)

(assert (= bs!1228425 d!1703506))

(declare-fun m!6333840 () Bool)

(assert (=> bs!1228425 m!6333840))

(assert (=> b!5295527 d!1703506))

(declare-fun d!1703508 () Bool)

(assert (=> d!1703508 (= (matchR!7118 lt!2163798 s!2326) (matchRSpec!2036 lt!2163798 s!2326))))

(declare-fun lt!2163970 () Unit!153250)

(assert (=> d!1703508 (= lt!2163970 (choose!39571 lt!2163798 s!2326))))

(assert (=> d!1703508 (validRegex!6669 lt!2163798)))

(assert (=> d!1703508 (= (mainMatchTheorem!2036 lt!2163798 s!2326) lt!2163970)))

(declare-fun bs!1228426 () Bool)

(assert (= bs!1228426 d!1703508))

(assert (=> bs!1228426 m!6332982))

(assert (=> bs!1228426 m!6332990))

(declare-fun m!6333842 () Bool)

(assert (=> bs!1228426 m!6333842))

(declare-fun m!6333844 () Bool)

(assert (=> bs!1228426 m!6333844))

(assert (=> b!5295527 d!1703508))

(declare-fun d!1703510 () Bool)

(assert (=> d!1703510 (= (matchR!7118 lt!2163770 s!2326) (matchZipper!1177 lt!2163795 s!2326))))

(declare-fun lt!2163973 () Unit!153250)

(declare-fun choose!39572 ((InoxSet Context!8634) List!61100 Regex!14933 List!61099) Unit!153250)

(assert (=> d!1703510 (= lt!2163973 (choose!39572 lt!2163795 lt!2163787 lt!2163770 s!2326))))

(assert (=> d!1703510 (validRegex!6669 lt!2163770)))

(assert (=> d!1703510 (= (theoremZipperRegexEquiv!343 lt!2163795 lt!2163787 lt!2163770 s!2326) lt!2163973)))

(declare-fun bs!1228427 () Bool)

(assert (= bs!1228427 d!1703510))

(assert (=> bs!1228427 m!6332996))

(assert (=> bs!1228427 m!6333018))

(declare-fun m!6333846 () Bool)

(assert (=> bs!1228427 m!6333846))

(declare-fun m!6333848 () Bool)

(assert (=> bs!1228427 m!6333848))

(assert (=> b!5295527 d!1703510))

(declare-fun d!1703512 () Bool)

(assert (=> d!1703512 (= (isDefined!11747 (findConcatSeparation!1458 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 Nil!60975 s!2326 s!2326)) (not (isEmpty!32936 (findConcatSeparation!1458 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 Nil!60975 s!2326 s!2326))))))

(declare-fun bs!1228428 () Bool)

(assert (= bs!1228428 d!1703512))

(assert (=> bs!1228428 m!6333000))

(declare-fun m!6333850 () Bool)

(assert (=> bs!1228428 m!6333850))

(assert (=> b!5295527 d!1703512))

(declare-fun b!5296420 () Bool)

(declare-fun e!3292243 () Option!15044)

(assert (=> b!5296420 (= e!3292243 (Some!15043 (tuple2!64265 Nil!60975 s!2326)))))

(declare-fun d!1703514 () Bool)

(declare-fun e!3292244 () Bool)

(assert (=> d!1703514 e!3292244))

(declare-fun res!2246275 () Bool)

(assert (=> d!1703514 (=> res!2246275 e!3292244)))

(declare-fun e!3292245 () Bool)

(assert (=> d!1703514 (= res!2246275 e!3292245)))

(declare-fun res!2246277 () Bool)

(assert (=> d!1703514 (=> (not res!2246277) (not e!3292245))))

(declare-fun lt!2163976 () Option!15044)

(assert (=> d!1703514 (= res!2246277 (isDefined!11747 lt!2163976))))

(assert (=> d!1703514 (= lt!2163976 e!3292243)))

(declare-fun c!919196 () Bool)

(declare-fun e!3292242 () Bool)

(assert (=> d!1703514 (= c!919196 e!3292242)))

(declare-fun res!2246274 () Bool)

(assert (=> d!1703514 (=> (not res!2246274) (not e!3292242))))

(assert (=> d!1703514 (= res!2246274 (matchR!7118 (regOne!30378 (regOne!30378 r!7292)) Nil!60975))))

(assert (=> d!1703514 (validRegex!6669 (regOne!30378 (regOne!30378 r!7292)))))

(assert (=> d!1703514 (= (findConcatSeparation!1458 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 Nil!60975 s!2326 s!2326) lt!2163976)))

(declare-fun b!5296421 () Bool)

(assert (=> b!5296421 (= e!3292242 (matchR!7118 lt!2163798 s!2326))))

(declare-fun b!5296422 () Bool)

(declare-fun e!3292246 () Option!15044)

(assert (=> b!5296422 (= e!3292243 e!3292246)))

(declare-fun c!919197 () Bool)

(assert (=> b!5296422 (= c!919197 ((_ is Nil!60975) s!2326))))

(declare-fun b!5296423 () Bool)

(assert (=> b!5296423 (= e!3292245 (= (++!13296 (_1!35435 (get!20968 lt!2163976)) (_2!35435 (get!20968 lt!2163976))) s!2326))))

(declare-fun b!5296424 () Bool)

(declare-fun res!2246276 () Bool)

(assert (=> b!5296424 (=> (not res!2246276) (not e!3292245))))

(assert (=> b!5296424 (= res!2246276 (matchR!7118 (regOne!30378 (regOne!30378 r!7292)) (_1!35435 (get!20968 lt!2163976))))))

(declare-fun b!5296425 () Bool)

(assert (=> b!5296425 (= e!3292246 None!15043)))

(declare-fun b!5296426 () Bool)

(declare-fun res!2246278 () Bool)

(assert (=> b!5296426 (=> (not res!2246278) (not e!3292245))))

(assert (=> b!5296426 (= res!2246278 (matchR!7118 lt!2163798 (_2!35435 (get!20968 lt!2163976))))))

(declare-fun b!5296427 () Bool)

(declare-fun lt!2163975 () Unit!153250)

(declare-fun lt!2163974 () Unit!153250)

(assert (=> b!5296427 (= lt!2163975 lt!2163974)))

(assert (=> b!5296427 (= (++!13296 (++!13296 Nil!60975 (Cons!60975 (h!67423 s!2326) Nil!60975)) (t!374304 s!2326)) s!2326)))

(assert (=> b!5296427 (= lt!2163974 (lemmaMoveElementToOtherListKeepsConcatEq!1711 Nil!60975 (h!67423 s!2326) (t!374304 s!2326) s!2326))))

(assert (=> b!5296427 (= e!3292246 (findConcatSeparation!1458 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 (++!13296 Nil!60975 (Cons!60975 (h!67423 s!2326) Nil!60975)) (t!374304 s!2326) s!2326))))

(declare-fun b!5296428 () Bool)

(assert (=> b!5296428 (= e!3292244 (not (isDefined!11747 lt!2163976)))))

(assert (= (and d!1703514 res!2246274) b!5296421))

(assert (= (and d!1703514 c!919196) b!5296420))

(assert (= (and d!1703514 (not c!919196)) b!5296422))

(assert (= (and b!5296422 c!919197) b!5296425))

(assert (= (and b!5296422 (not c!919197)) b!5296427))

(assert (= (and d!1703514 res!2246277) b!5296424))

(assert (= (and b!5296424 res!2246276) b!5296426))

(assert (= (and b!5296426 res!2246278) b!5296423))

(assert (= (and d!1703514 (not res!2246275)) b!5296428))

(declare-fun m!6333852 () Bool)

(assert (=> d!1703514 m!6333852))

(declare-fun m!6333854 () Bool)

(assert (=> d!1703514 m!6333854))

(declare-fun m!6333856 () Bool)

(assert (=> d!1703514 m!6333856))

(assert (=> b!5296428 m!6333852))

(declare-fun m!6333858 () Bool)

(assert (=> b!5296426 m!6333858))

(declare-fun m!6333860 () Bool)

(assert (=> b!5296426 m!6333860))

(assert (=> b!5296423 m!6333858))

(declare-fun m!6333862 () Bool)

(assert (=> b!5296423 m!6333862))

(assert (=> b!5296427 m!6333676))

(assert (=> b!5296427 m!6333676))

(assert (=> b!5296427 m!6333678))

(assert (=> b!5296427 m!6333680))

(assert (=> b!5296427 m!6333676))

(declare-fun m!6333864 () Bool)

(assert (=> b!5296427 m!6333864))

(assert (=> b!5296421 m!6332982))

(assert (=> b!5296424 m!6333858))

(declare-fun m!6333866 () Bool)

(assert (=> b!5296424 m!6333866))

(assert (=> b!5295527 d!1703514))

(declare-fun b!5296429 () Bool)

(declare-fun res!2246281 () Bool)

(declare-fun e!3292249 () Bool)

(assert (=> b!5296429 (=> res!2246281 e!3292249)))

(assert (=> b!5296429 (= res!2246281 (not (isEmpty!32934 (tail!10447 s!2326))))))

(declare-fun b!5296430 () Bool)

(declare-fun e!3292252 () Bool)

(declare-fun lt!2163977 () Bool)

(assert (=> b!5296430 (= e!3292252 (not lt!2163977))))

(declare-fun d!1703516 () Bool)

(declare-fun e!3292248 () Bool)

(assert (=> d!1703516 e!3292248))

(declare-fun c!919198 () Bool)

(assert (=> d!1703516 (= c!919198 ((_ is EmptyExpr!14933) lt!2163798))))

(declare-fun e!3292250 () Bool)

(assert (=> d!1703516 (= lt!2163977 e!3292250)))

(declare-fun c!919199 () Bool)

(assert (=> d!1703516 (= c!919199 (isEmpty!32934 s!2326))))

(assert (=> d!1703516 (validRegex!6669 lt!2163798)))

(assert (=> d!1703516 (= (matchR!7118 lt!2163798 s!2326) lt!2163977)))

(declare-fun b!5296431 () Bool)

(assert (=> b!5296431 (= e!3292250 (nullable!5102 lt!2163798))))

(declare-fun b!5296432 () Bool)

(assert (=> b!5296432 (= e!3292248 e!3292252)))

(declare-fun c!919200 () Bool)

(assert (=> b!5296432 (= c!919200 ((_ is EmptyLang!14933) lt!2163798))))

(declare-fun b!5296433 () Bool)

(declare-fun res!2246286 () Bool)

(declare-fun e!3292253 () Bool)

(assert (=> b!5296433 (=> res!2246286 e!3292253)))

(declare-fun e!3292251 () Bool)

(assert (=> b!5296433 (= res!2246286 e!3292251)))

(declare-fun res!2246280 () Bool)

(assert (=> b!5296433 (=> (not res!2246280) (not e!3292251))))

(assert (=> b!5296433 (= res!2246280 lt!2163977)))

(declare-fun b!5296434 () Bool)

(declare-fun e!3292247 () Bool)

(assert (=> b!5296434 (= e!3292253 e!3292247)))

(declare-fun res!2246282 () Bool)

(assert (=> b!5296434 (=> (not res!2246282) (not e!3292247))))

(assert (=> b!5296434 (= res!2246282 (not lt!2163977))))

(declare-fun b!5296435 () Bool)

(assert (=> b!5296435 (= e!3292251 (= (head!11350 s!2326) (c!918905 lt!2163798)))))

(declare-fun b!5296436 () Bool)

(assert (=> b!5296436 (= e!3292249 (not (= (head!11350 s!2326) (c!918905 lt!2163798))))))

(declare-fun b!5296437 () Bool)

(declare-fun res!2246284 () Bool)

(assert (=> b!5296437 (=> res!2246284 e!3292253)))

(assert (=> b!5296437 (= res!2246284 (not ((_ is ElementMatch!14933) lt!2163798)))))

(assert (=> b!5296437 (= e!3292252 e!3292253)))

(declare-fun b!5296438 () Bool)

(declare-fun res!2246283 () Bool)

(assert (=> b!5296438 (=> (not res!2246283) (not e!3292251))))

(declare-fun call!377542 () Bool)

(assert (=> b!5296438 (= res!2246283 (not call!377542))))

(declare-fun b!5296439 () Bool)

(assert (=> b!5296439 (= e!3292247 e!3292249)))

(declare-fun res!2246285 () Bool)

(assert (=> b!5296439 (=> res!2246285 e!3292249)))

(assert (=> b!5296439 (= res!2246285 call!377542)))

(declare-fun bm!377537 () Bool)

(assert (=> bm!377537 (= call!377542 (isEmpty!32934 s!2326))))

(declare-fun b!5296440 () Bool)

(declare-fun res!2246279 () Bool)

(assert (=> b!5296440 (=> (not res!2246279) (not e!3292251))))

(assert (=> b!5296440 (= res!2246279 (isEmpty!32934 (tail!10447 s!2326)))))

(declare-fun b!5296441 () Bool)

(assert (=> b!5296441 (= e!3292250 (matchR!7118 (derivativeStep!4137 lt!2163798 (head!11350 s!2326)) (tail!10447 s!2326)))))

(declare-fun b!5296442 () Bool)

(assert (=> b!5296442 (= e!3292248 (= lt!2163977 call!377542))))

(assert (= (and d!1703516 c!919199) b!5296431))

(assert (= (and d!1703516 (not c!919199)) b!5296441))

(assert (= (and d!1703516 c!919198) b!5296442))

(assert (= (and d!1703516 (not c!919198)) b!5296432))

(assert (= (and b!5296432 c!919200) b!5296430))

(assert (= (and b!5296432 (not c!919200)) b!5296437))

(assert (= (and b!5296437 (not res!2246284)) b!5296433))

(assert (= (and b!5296433 res!2246280) b!5296438))

(assert (= (and b!5296438 res!2246283) b!5296440))

(assert (= (and b!5296440 res!2246279) b!5296435))

(assert (= (and b!5296433 (not res!2246286)) b!5296434))

(assert (= (and b!5296434 res!2246282) b!5296439))

(assert (= (and b!5296439 (not res!2246285)) b!5296429))

(assert (= (and b!5296429 (not res!2246281)) b!5296436))

(assert (= (or b!5296442 b!5296438 b!5296439) bm!377537))

(assert (=> b!5296441 m!6333788))

(assert (=> b!5296441 m!6333788))

(declare-fun m!6333868 () Bool)

(assert (=> b!5296441 m!6333868))

(assert (=> b!5296441 m!6333792))

(assert (=> b!5296441 m!6333868))

(assert (=> b!5296441 m!6333792))

(declare-fun m!6333870 () Bool)

(assert (=> b!5296441 m!6333870))

(assert (=> d!1703516 m!6333780))

(assert (=> d!1703516 m!6333844))

(declare-fun m!6333872 () Bool)

(assert (=> b!5296431 m!6333872))

(assert (=> b!5296429 m!6333792))

(assert (=> b!5296429 m!6333792))

(assert (=> b!5296429 m!6333798))

(assert (=> b!5296436 m!6333788))

(assert (=> b!5296435 m!6333788))

(assert (=> b!5296440 m!6333792))

(assert (=> b!5296440 m!6333792))

(assert (=> b!5296440 m!6333798))

(assert (=> bm!377537 m!6333780))

(assert (=> b!5295527 d!1703516))

(declare-fun bs!1228429 () Bool)

(declare-fun b!5296446 () Bool)

(assert (= bs!1228429 (and b!5296446 d!1703458)))

(declare-fun lambda!268600 () Int)

(assert (=> bs!1228429 (not (= lambda!268600 lambda!268588))))

(declare-fun bs!1228430 () Bool)

(assert (= bs!1228430 (and b!5296446 d!1703504)))

(assert (=> bs!1228430 (not (= lambda!268600 lambda!268598))))

(declare-fun bs!1228431 () Bool)

(assert (= bs!1228431 (and b!5296446 d!1703454)))

(assert (=> bs!1228431 (not (= lambda!268600 lambda!268579))))

(assert (=> bs!1228429 (not (= lambda!268600 lambda!268587))))

(declare-fun bs!1228432 () Bool)

(assert (= bs!1228432 (and b!5296446 b!5296336)))

(assert (=> bs!1228432 (= (and (= (reg!15262 lt!2163798) (reg!15262 r!7292)) (= lt!2163798 r!7292)) (= lambda!268600 lambda!268593))))

(declare-fun bs!1228433 () Bool)

(assert (= bs!1228433 (and b!5296446 b!5295512)))

(assert (=> bs!1228433 (not (= lambda!268600 lambda!268490))))

(declare-fun bs!1228434 () Bool)

(assert (= bs!1228434 (and b!5296446 b!5295527)))

(assert (=> bs!1228434 (not (= lambda!268600 lambda!268493))))

(assert (=> bs!1228434 (not (= lambda!268600 lambda!268495))))

(assert (=> bs!1228434 (not (= lambda!268600 lambda!268494))))

(assert (=> bs!1228430 (not (= lambda!268600 lambda!268599))))

(assert (=> bs!1228434 (not (= lambda!268600 lambda!268496))))

(assert (=> bs!1228433 (not (= lambda!268600 lambda!268491))))

(declare-fun bs!1228435 () Bool)

(assert (= bs!1228435 (and b!5296446 b!5296342)))

(assert (=> bs!1228435 (not (= lambda!268600 lambda!268594))))

(assert (=> b!5296446 true))

(assert (=> b!5296446 true))

(declare-fun bs!1228436 () Bool)

(declare-fun b!5296452 () Bool)

(assert (= bs!1228436 (and b!5296452 d!1703458)))

(declare-fun lambda!268601 () Int)

(assert (=> bs!1228436 (= (and (= (regOne!30378 lt!2163798) (regOne!30378 r!7292)) (= (regTwo!30378 lt!2163798) (regTwo!30378 r!7292))) (= lambda!268601 lambda!268588))))

(declare-fun bs!1228437 () Bool)

(assert (= bs!1228437 (and b!5296452 d!1703504)))

(assert (=> bs!1228437 (not (= lambda!268601 lambda!268598))))

(declare-fun bs!1228438 () Bool)

(assert (= bs!1228438 (and b!5296452 d!1703454)))

(assert (=> bs!1228438 (not (= lambda!268601 lambda!268579))))

(assert (=> bs!1228436 (not (= lambda!268601 lambda!268587))))

(declare-fun bs!1228439 () Bool)

(assert (= bs!1228439 (and b!5296452 b!5296336)))

(assert (=> bs!1228439 (not (= lambda!268601 lambda!268593))))

(declare-fun bs!1228440 () Bool)

(assert (= bs!1228440 (and b!5296452 b!5295512)))

(assert (=> bs!1228440 (not (= lambda!268601 lambda!268490))))

(declare-fun bs!1228441 () Bool)

(assert (= bs!1228441 (and b!5296452 b!5295527)))

(assert (=> bs!1228441 (not (= lambda!268601 lambda!268493))))

(assert (=> bs!1228441 (not (= lambda!268601 lambda!268495))))

(assert (=> bs!1228441 (= (and (= (regOne!30378 lt!2163798) (regOne!30378 (regOne!30378 r!7292))) (= (regTwo!30378 lt!2163798) lt!2163798)) (= lambda!268601 lambda!268494))))

(assert (=> bs!1228437 (= (and (= (regOne!30378 lt!2163798) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 lt!2163798) lt!2163767)) (= lambda!268601 lambda!268599))))

(assert (=> bs!1228441 (= (and (= (regOne!30378 lt!2163798) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 lt!2163798) lt!2163767)) (= lambda!268601 lambda!268496))))

(assert (=> bs!1228440 (= (and (= (regOne!30378 lt!2163798) (regOne!30378 r!7292)) (= (regTwo!30378 lt!2163798) (regTwo!30378 r!7292))) (= lambda!268601 lambda!268491))))

(declare-fun bs!1228442 () Bool)

(assert (= bs!1228442 (and b!5296452 b!5296342)))

(assert (=> bs!1228442 (= (and (= (regOne!30378 lt!2163798) (regOne!30378 r!7292)) (= (regTwo!30378 lt!2163798) (regTwo!30378 r!7292))) (= lambda!268601 lambda!268594))))

(declare-fun bs!1228443 () Bool)

(assert (= bs!1228443 (and b!5296452 b!5296446)))

(assert (=> bs!1228443 (not (= lambda!268601 lambda!268600))))

(assert (=> b!5296452 true))

(assert (=> b!5296452 true))

(declare-fun b!5296443 () Bool)

(declare-fun e!3292255 () Bool)

(declare-fun e!3292259 () Bool)

(assert (=> b!5296443 (= e!3292255 e!3292259)))

(declare-fun c!919201 () Bool)

(assert (=> b!5296443 (= c!919201 ((_ is Star!14933) lt!2163798))))

(declare-fun bm!377538 () Bool)

(declare-fun call!377544 () Bool)

(assert (=> bm!377538 (= call!377544 (isEmpty!32934 s!2326))))

(declare-fun b!5296445 () Bool)

(declare-fun c!919203 () Bool)

(assert (=> b!5296445 (= c!919203 ((_ is Union!14933) lt!2163798))))

(declare-fun e!3292257 () Bool)

(assert (=> b!5296445 (= e!3292257 e!3292255)))

(declare-fun e!3292258 () Bool)

(declare-fun call!377543 () Bool)

(assert (=> b!5296446 (= e!3292258 call!377543)))

(declare-fun b!5296447 () Bool)

(declare-fun c!919202 () Bool)

(assert (=> b!5296447 (= c!919202 ((_ is ElementMatch!14933) lt!2163798))))

(declare-fun e!3292254 () Bool)

(assert (=> b!5296447 (= e!3292254 e!3292257)))

(declare-fun b!5296448 () Bool)

(declare-fun res!2246287 () Bool)

(assert (=> b!5296448 (=> res!2246287 e!3292258)))

(assert (=> b!5296448 (= res!2246287 call!377544)))

(assert (=> b!5296448 (= e!3292259 e!3292258)))

(declare-fun b!5296449 () Bool)

(declare-fun e!3292256 () Bool)

(assert (=> b!5296449 (= e!3292255 e!3292256)))

(declare-fun res!2246289 () Bool)

(assert (=> b!5296449 (= res!2246289 (matchRSpec!2036 (regOne!30379 lt!2163798) s!2326))))

(assert (=> b!5296449 (=> res!2246289 e!3292256)))

(declare-fun b!5296450 () Bool)

(declare-fun e!3292260 () Bool)

(assert (=> b!5296450 (= e!3292260 call!377544)))

(declare-fun b!5296451 () Bool)

(assert (=> b!5296451 (= e!3292260 e!3292254)))

(declare-fun res!2246288 () Bool)

(assert (=> b!5296451 (= res!2246288 (not ((_ is EmptyLang!14933) lt!2163798)))))

(assert (=> b!5296451 (=> (not res!2246288) (not e!3292254))))

(assert (=> b!5296452 (= e!3292259 call!377543)))

(declare-fun b!5296444 () Bool)

(assert (=> b!5296444 (= e!3292256 (matchRSpec!2036 (regTwo!30379 lt!2163798) s!2326))))

(declare-fun d!1703518 () Bool)

(declare-fun c!919204 () Bool)

(assert (=> d!1703518 (= c!919204 ((_ is EmptyExpr!14933) lt!2163798))))

(assert (=> d!1703518 (= (matchRSpec!2036 lt!2163798 s!2326) e!3292260)))

(declare-fun bm!377539 () Bool)

(assert (=> bm!377539 (= call!377543 (Exists!2114 (ite c!919201 lambda!268600 lambda!268601)))))

(declare-fun b!5296453 () Bool)

(assert (=> b!5296453 (= e!3292257 (= s!2326 (Cons!60975 (c!918905 lt!2163798) Nil!60975)))))

(assert (= (and d!1703518 c!919204) b!5296450))

(assert (= (and d!1703518 (not c!919204)) b!5296451))

(assert (= (and b!5296451 res!2246288) b!5296447))

(assert (= (and b!5296447 c!919202) b!5296453))

(assert (= (and b!5296447 (not c!919202)) b!5296445))

(assert (= (and b!5296445 c!919203) b!5296449))

(assert (= (and b!5296445 (not c!919203)) b!5296443))

(assert (= (and b!5296449 (not res!2246289)) b!5296444))

(assert (= (and b!5296443 c!919201) b!5296448))

(assert (= (and b!5296443 (not c!919201)) b!5296452))

(assert (= (and b!5296448 (not res!2246287)) b!5296446))

(assert (= (or b!5296446 b!5296452) bm!377539))

(assert (= (or b!5296450 b!5296448) bm!377538))

(assert (=> bm!377538 m!6333780))

(declare-fun m!6333874 () Bool)

(assert (=> b!5296449 m!6333874))

(declare-fun m!6333876 () Bool)

(assert (=> b!5296444 m!6333876))

(declare-fun m!6333878 () Bool)

(assert (=> bm!377539 m!6333878))

(assert (=> b!5295527 d!1703518))

(declare-fun b!5296454 () Bool)

(declare-fun res!2246292 () Bool)

(declare-fun e!3292263 () Bool)

(assert (=> b!5296454 (=> res!2246292 e!3292263)))

(assert (=> b!5296454 (= res!2246292 (not (isEmpty!32934 (tail!10447 s!2326))))))

(declare-fun b!5296455 () Bool)

(declare-fun e!3292266 () Bool)

(declare-fun lt!2163978 () Bool)

(assert (=> b!5296455 (= e!3292266 (not lt!2163978))))

(declare-fun d!1703520 () Bool)

(declare-fun e!3292262 () Bool)

(assert (=> d!1703520 e!3292262))

(declare-fun c!919205 () Bool)

(assert (=> d!1703520 (= c!919205 ((_ is EmptyExpr!14933) lt!2163770))))

(declare-fun e!3292264 () Bool)

(assert (=> d!1703520 (= lt!2163978 e!3292264)))

(declare-fun c!919206 () Bool)

(assert (=> d!1703520 (= c!919206 (isEmpty!32934 s!2326))))

(assert (=> d!1703520 (validRegex!6669 lt!2163770)))

(assert (=> d!1703520 (= (matchR!7118 lt!2163770 s!2326) lt!2163978)))

(declare-fun b!5296456 () Bool)

(assert (=> b!5296456 (= e!3292264 (nullable!5102 lt!2163770))))

(declare-fun b!5296457 () Bool)

(assert (=> b!5296457 (= e!3292262 e!3292266)))

(declare-fun c!919207 () Bool)

(assert (=> b!5296457 (= c!919207 ((_ is EmptyLang!14933) lt!2163770))))

(declare-fun b!5296458 () Bool)

(declare-fun res!2246297 () Bool)

(declare-fun e!3292267 () Bool)

(assert (=> b!5296458 (=> res!2246297 e!3292267)))

(declare-fun e!3292265 () Bool)

(assert (=> b!5296458 (= res!2246297 e!3292265)))

(declare-fun res!2246291 () Bool)

(assert (=> b!5296458 (=> (not res!2246291) (not e!3292265))))

(assert (=> b!5296458 (= res!2246291 lt!2163978)))

(declare-fun b!5296459 () Bool)

(declare-fun e!3292261 () Bool)

(assert (=> b!5296459 (= e!3292267 e!3292261)))

(declare-fun res!2246293 () Bool)

(assert (=> b!5296459 (=> (not res!2246293) (not e!3292261))))

(assert (=> b!5296459 (= res!2246293 (not lt!2163978))))

(declare-fun b!5296460 () Bool)

(assert (=> b!5296460 (= e!3292265 (= (head!11350 s!2326) (c!918905 lt!2163770)))))

(declare-fun b!5296461 () Bool)

(assert (=> b!5296461 (= e!3292263 (not (= (head!11350 s!2326) (c!918905 lt!2163770))))))

(declare-fun b!5296462 () Bool)

(declare-fun res!2246295 () Bool)

(assert (=> b!5296462 (=> res!2246295 e!3292267)))

(assert (=> b!5296462 (= res!2246295 (not ((_ is ElementMatch!14933) lt!2163770)))))

(assert (=> b!5296462 (= e!3292266 e!3292267)))

(declare-fun b!5296463 () Bool)

(declare-fun res!2246294 () Bool)

(assert (=> b!5296463 (=> (not res!2246294) (not e!3292265))))

(declare-fun call!377545 () Bool)

(assert (=> b!5296463 (= res!2246294 (not call!377545))))

(declare-fun b!5296464 () Bool)

(assert (=> b!5296464 (= e!3292261 e!3292263)))

(declare-fun res!2246296 () Bool)

(assert (=> b!5296464 (=> res!2246296 e!3292263)))

(assert (=> b!5296464 (= res!2246296 call!377545)))

(declare-fun bm!377540 () Bool)

(assert (=> bm!377540 (= call!377545 (isEmpty!32934 s!2326))))

(declare-fun b!5296465 () Bool)

(declare-fun res!2246290 () Bool)

(assert (=> b!5296465 (=> (not res!2246290) (not e!3292265))))

(assert (=> b!5296465 (= res!2246290 (isEmpty!32934 (tail!10447 s!2326)))))

(declare-fun b!5296466 () Bool)

(assert (=> b!5296466 (= e!3292264 (matchR!7118 (derivativeStep!4137 lt!2163770 (head!11350 s!2326)) (tail!10447 s!2326)))))

(declare-fun b!5296467 () Bool)

(assert (=> b!5296467 (= e!3292262 (= lt!2163978 call!377545))))

(assert (= (and d!1703520 c!919206) b!5296456))

(assert (= (and d!1703520 (not c!919206)) b!5296466))

(assert (= (and d!1703520 c!919205) b!5296467))

(assert (= (and d!1703520 (not c!919205)) b!5296457))

(assert (= (and b!5296457 c!919207) b!5296455))

(assert (= (and b!5296457 (not c!919207)) b!5296462))

(assert (= (and b!5296462 (not res!2246295)) b!5296458))

(assert (= (and b!5296458 res!2246291) b!5296463))

(assert (= (and b!5296463 res!2246294) b!5296465))

(assert (= (and b!5296465 res!2246290) b!5296460))

(assert (= (and b!5296458 (not res!2246297)) b!5296459))

(assert (= (and b!5296459 res!2246293) b!5296464))

(assert (= (and b!5296464 (not res!2246296)) b!5296454))

(assert (= (and b!5296454 (not res!2246292)) b!5296461))

(assert (= (or b!5296467 b!5296463 b!5296464) bm!377540))

(assert (=> b!5296466 m!6333788))

(assert (=> b!5296466 m!6333788))

(declare-fun m!6333880 () Bool)

(assert (=> b!5296466 m!6333880))

(assert (=> b!5296466 m!6333792))

(assert (=> b!5296466 m!6333880))

(assert (=> b!5296466 m!6333792))

(declare-fun m!6333882 () Bool)

(assert (=> b!5296466 m!6333882))

(assert (=> d!1703520 m!6333780))

(assert (=> d!1703520 m!6333848))

(declare-fun m!6333884 () Bool)

(assert (=> b!5296456 m!6333884))

(assert (=> b!5296454 m!6333792))

(assert (=> b!5296454 m!6333792))

(assert (=> b!5296454 m!6333798))

(assert (=> b!5296461 m!6333788))

(assert (=> b!5296460 m!6333788))

(assert (=> b!5296465 m!6333792))

(assert (=> b!5296465 m!6333792))

(assert (=> b!5296465 m!6333798))

(assert (=> bm!377540 m!6333780))

(assert (=> b!5295527 d!1703520))

(declare-fun d!1703522 () Bool)

(assert (=> d!1703522 (= (matchR!7118 lt!2163770 s!2326) (matchRSpec!2036 lt!2163770 s!2326))))

(declare-fun lt!2163979 () Unit!153250)

(assert (=> d!1703522 (= lt!2163979 (choose!39571 lt!2163770 s!2326))))

(assert (=> d!1703522 (validRegex!6669 lt!2163770)))

(assert (=> d!1703522 (= (mainMatchTheorem!2036 lt!2163770 s!2326) lt!2163979)))

(declare-fun bs!1228444 () Bool)

(assert (= bs!1228444 d!1703522))

(assert (=> bs!1228444 m!6332996))

(assert (=> bs!1228444 m!6333006))

(declare-fun m!6333886 () Bool)

(assert (=> bs!1228444 m!6333886))

(assert (=> bs!1228444 m!6333848))

(assert (=> b!5295527 d!1703522))

(declare-fun d!1703524 () Bool)

(declare-fun c!919208 () Bool)

(assert (=> d!1703524 (= c!919208 (isEmpty!32934 s!2326))))

(declare-fun e!3292268 () Bool)

(assert (=> d!1703524 (= (matchZipper!1177 lt!2163773 s!2326) e!3292268)))

(declare-fun b!5296468 () Bool)

(assert (=> b!5296468 (= e!3292268 (nullableZipper!1316 lt!2163773))))

(declare-fun b!5296469 () Bool)

(assert (=> b!5296469 (= e!3292268 (matchZipper!1177 (derivationStepZipper!1176 lt!2163773 (head!11350 s!2326)) (tail!10447 s!2326)))))

(assert (= (and d!1703524 c!919208) b!5296468))

(assert (= (and d!1703524 (not c!919208)) b!5296469))

(assert (=> d!1703524 m!6333780))

(declare-fun m!6333888 () Bool)

(assert (=> b!5296468 m!6333888))

(assert (=> b!5296469 m!6333788))

(assert (=> b!5296469 m!6333788))

(declare-fun m!6333890 () Bool)

(assert (=> b!5296469 m!6333890))

(assert (=> b!5296469 m!6333792))

(assert (=> b!5296469 m!6333890))

(assert (=> b!5296469 m!6333792))

(declare-fun m!6333892 () Bool)

(assert (=> b!5296469 m!6333892))

(assert (=> b!5295527 d!1703524))

(declare-fun bs!1228445 () Bool)

(declare-fun d!1703526 () Bool)

(assert (= bs!1228445 (and d!1703526 b!5295496)))

(declare-fun lambda!268602 () Int)

(assert (=> bs!1228445 (= lambda!268602 lambda!268497)))

(declare-fun bs!1228446 () Bool)

(assert (= bs!1228446 (and d!1703526 d!1703250)))

(assert (=> bs!1228446 (= lambda!268602 lambda!268510)))

(declare-fun bs!1228447 () Bool)

(assert (= bs!1228447 (and d!1703526 d!1703372)))

(assert (=> bs!1228447 (= lambda!268602 lambda!268557)))

(declare-fun bs!1228448 () Bool)

(assert (= bs!1228448 (and d!1703526 d!1703496)))

(assert (=> bs!1228448 (= lambda!268602 lambda!268597)))

(declare-fun bs!1228449 () Bool)

(assert (= bs!1228449 (and d!1703526 d!1703410)))

(assert (=> bs!1228449 (= lambda!268602 lambda!268562)))

(declare-fun bs!1228450 () Bool)

(assert (= bs!1228450 (and d!1703526 d!1703378)))

(assert (=> bs!1228450 (= lambda!268602 lambda!268561)))

(declare-fun b!5296470 () Bool)

(declare-fun e!3292270 () Bool)

(declare-fun lt!2163980 () Regex!14933)

(assert (=> b!5296470 (= e!3292270 (= lt!2163980 (head!11351 (t!374303 (exprs!4817 (h!67424 zl!343))))))))

(declare-fun b!5296471 () Bool)

(declare-fun e!3292271 () Regex!14933)

(assert (=> b!5296471 (= e!3292271 (h!67422 (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun e!3292272 () Bool)

(assert (=> d!1703526 e!3292272))

(declare-fun res!2246299 () Bool)

(assert (=> d!1703526 (=> (not res!2246299) (not e!3292272))))

(assert (=> d!1703526 (= res!2246299 (validRegex!6669 lt!2163980))))

(assert (=> d!1703526 (= lt!2163980 e!3292271)))

(declare-fun c!919212 () Bool)

(declare-fun e!3292269 () Bool)

(assert (=> d!1703526 (= c!919212 e!3292269)))

(declare-fun res!2246298 () Bool)

(assert (=> d!1703526 (=> (not res!2246298) (not e!3292269))))

(assert (=> d!1703526 (= res!2246298 ((_ is Cons!60974) (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(assert (=> d!1703526 (forall!14345 (t!374303 (exprs!4817 (h!67424 zl!343))) lambda!268602)))

(assert (=> d!1703526 (= (generalisedConcat!602 (t!374303 (exprs!4817 (h!67424 zl!343)))) lt!2163980)))

(declare-fun b!5296472 () Bool)

(declare-fun e!3292274 () Bool)

(assert (=> b!5296472 (= e!3292274 (isEmptyExpr!851 lt!2163980))))

(declare-fun b!5296473 () Bool)

(assert (=> b!5296473 (= e!3292269 (isEmpty!32932 (t!374303 (t!374303 (exprs!4817 (h!67424 zl!343))))))))

(declare-fun b!5296474 () Bool)

(assert (=> b!5296474 (= e!3292270 (isConcat!374 lt!2163980))))

(declare-fun b!5296475 () Bool)

(declare-fun e!3292273 () Regex!14933)

(assert (=> b!5296475 (= e!3292273 EmptyExpr!14933)))

(declare-fun b!5296476 () Bool)

(assert (=> b!5296476 (= e!3292272 e!3292274)))

(declare-fun c!919210 () Bool)

(assert (=> b!5296476 (= c!919210 (isEmpty!32932 (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5296477 () Bool)

(assert (=> b!5296477 (= e!3292273 (Concat!23778 (h!67422 (t!374303 (exprs!4817 (h!67424 zl!343)))) (generalisedConcat!602 (t!374303 (t!374303 (exprs!4817 (h!67424 zl!343)))))))))

(declare-fun b!5296478 () Bool)

(assert (=> b!5296478 (= e!3292271 e!3292273)))

(declare-fun c!919209 () Bool)

(assert (=> b!5296478 (= c!919209 ((_ is Cons!60974) (t!374303 (exprs!4817 (h!67424 zl!343)))))))

(declare-fun b!5296479 () Bool)

(assert (=> b!5296479 (= e!3292274 e!3292270)))

(declare-fun c!919211 () Bool)

(assert (=> b!5296479 (= c!919211 (isEmpty!32932 (tail!10448 (t!374303 (exprs!4817 (h!67424 zl!343))))))))

(assert (= (and d!1703526 res!2246298) b!5296473))

(assert (= (and d!1703526 c!919212) b!5296471))

(assert (= (and d!1703526 (not c!919212)) b!5296478))

(assert (= (and b!5296478 c!919209) b!5296477))

(assert (= (and b!5296478 (not c!919209)) b!5296475))

(assert (= (and d!1703526 res!2246299) b!5296476))

(assert (= (and b!5296476 c!919210) b!5296472))

(assert (= (and b!5296476 (not c!919210)) b!5296479))

(assert (= (and b!5296479 c!919211) b!5296470))

(assert (= (and b!5296479 (not c!919211)) b!5296474))

(declare-fun m!6333894 () Bool)

(assert (=> b!5296473 m!6333894))

(declare-fun m!6333896 () Bool)

(assert (=> b!5296474 m!6333896))

(declare-fun m!6333898 () Bool)

(assert (=> b!5296479 m!6333898))

(assert (=> b!5296479 m!6333898))

(declare-fun m!6333900 () Bool)

(assert (=> b!5296479 m!6333900))

(declare-fun m!6333902 () Bool)

(assert (=> b!5296470 m!6333902))

(declare-fun m!6333904 () Bool)

(assert (=> b!5296472 m!6333904))

(declare-fun m!6333906 () Bool)

(assert (=> b!5296477 m!6333906))

(declare-fun m!6333908 () Bool)

(assert (=> d!1703526 m!6333908))

(declare-fun m!6333910 () Bool)

(assert (=> d!1703526 m!6333910))

(assert (=> b!5296476 m!6332916))

(assert (=> b!5295527 d!1703526))

(declare-fun bs!1228451 () Bool)

(declare-fun b!5296483 () Bool)

(assert (= bs!1228451 (and b!5296483 d!1703458)))

(declare-fun lambda!268603 () Int)

(assert (=> bs!1228451 (not (= lambda!268603 lambda!268588))))

(declare-fun bs!1228452 () Bool)

(assert (= bs!1228452 (and b!5296483 d!1703504)))

(assert (=> bs!1228452 (not (= lambda!268603 lambda!268598))))

(declare-fun bs!1228453 () Bool)

(assert (= bs!1228453 (and b!5296483 b!5296452)))

(assert (=> bs!1228453 (not (= lambda!268603 lambda!268601))))

(declare-fun bs!1228454 () Bool)

(assert (= bs!1228454 (and b!5296483 d!1703454)))

(assert (=> bs!1228454 (not (= lambda!268603 lambda!268579))))

(assert (=> bs!1228451 (not (= lambda!268603 lambda!268587))))

(declare-fun bs!1228455 () Bool)

(assert (= bs!1228455 (and b!5296483 b!5296336)))

(assert (=> bs!1228455 (= (and (= (reg!15262 lt!2163770) (reg!15262 r!7292)) (= lt!2163770 r!7292)) (= lambda!268603 lambda!268593))))

(declare-fun bs!1228456 () Bool)

(assert (= bs!1228456 (and b!5296483 b!5295512)))

(assert (=> bs!1228456 (not (= lambda!268603 lambda!268490))))

(declare-fun bs!1228457 () Bool)

(assert (= bs!1228457 (and b!5296483 b!5295527)))

(assert (=> bs!1228457 (not (= lambda!268603 lambda!268493))))

(assert (=> bs!1228457 (not (= lambda!268603 lambda!268495))))

(assert (=> bs!1228457 (not (= lambda!268603 lambda!268494))))

(assert (=> bs!1228452 (not (= lambda!268603 lambda!268599))))

(assert (=> bs!1228457 (not (= lambda!268603 lambda!268496))))

(assert (=> bs!1228456 (not (= lambda!268603 lambda!268491))))

(declare-fun bs!1228458 () Bool)

(assert (= bs!1228458 (and b!5296483 b!5296342)))

(assert (=> bs!1228458 (not (= lambda!268603 lambda!268594))))

(declare-fun bs!1228459 () Bool)

(assert (= bs!1228459 (and b!5296483 b!5296446)))

(assert (=> bs!1228459 (= (and (= (reg!15262 lt!2163770) (reg!15262 lt!2163798)) (= lt!2163770 lt!2163798)) (= lambda!268603 lambda!268600))))

(assert (=> b!5296483 true))

(assert (=> b!5296483 true))

(declare-fun bs!1228460 () Bool)

(declare-fun b!5296489 () Bool)

(assert (= bs!1228460 (and b!5296489 d!1703458)))

(declare-fun lambda!268604 () Int)

(assert (=> bs!1228460 (= (and (= (regOne!30378 lt!2163770) (regOne!30378 r!7292)) (= (regTwo!30378 lt!2163770) (regTwo!30378 r!7292))) (= lambda!268604 lambda!268588))))

(declare-fun bs!1228461 () Bool)

(assert (= bs!1228461 (and b!5296489 d!1703504)))

(assert (=> bs!1228461 (not (= lambda!268604 lambda!268598))))

(declare-fun bs!1228462 () Bool)

(assert (= bs!1228462 (and b!5296489 b!5296452)))

(assert (=> bs!1228462 (= (and (= (regOne!30378 lt!2163770) (regOne!30378 lt!2163798)) (= (regTwo!30378 lt!2163770) (regTwo!30378 lt!2163798))) (= lambda!268604 lambda!268601))))

(declare-fun bs!1228463 () Bool)

(assert (= bs!1228463 (and b!5296489 d!1703454)))

(assert (=> bs!1228463 (not (= lambda!268604 lambda!268579))))

(assert (=> bs!1228460 (not (= lambda!268604 lambda!268587))))

(declare-fun bs!1228464 () Bool)

(assert (= bs!1228464 (and b!5296489 b!5295512)))

(assert (=> bs!1228464 (not (= lambda!268604 lambda!268490))))

(declare-fun bs!1228465 () Bool)

(assert (= bs!1228465 (and b!5296489 b!5295527)))

(assert (=> bs!1228465 (not (= lambda!268604 lambda!268493))))

(assert (=> bs!1228465 (not (= lambda!268604 lambda!268495))))

(assert (=> bs!1228465 (= (and (= (regOne!30378 lt!2163770) (regOne!30378 (regOne!30378 r!7292))) (= (regTwo!30378 lt!2163770) lt!2163798)) (= lambda!268604 lambda!268494))))

(assert (=> bs!1228461 (= (and (= (regOne!30378 lt!2163770) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 lt!2163770) lt!2163767)) (= lambda!268604 lambda!268599))))

(assert (=> bs!1228465 (= (and (= (regOne!30378 lt!2163770) (regTwo!30378 (regOne!30378 r!7292))) (= (regTwo!30378 lt!2163770) lt!2163767)) (= lambda!268604 lambda!268496))))

(declare-fun bs!1228466 () Bool)

(assert (= bs!1228466 (and b!5296489 b!5296336)))

(assert (=> bs!1228466 (not (= lambda!268604 lambda!268593))))

(declare-fun bs!1228467 () Bool)

(assert (= bs!1228467 (and b!5296489 b!5296483)))

(assert (=> bs!1228467 (not (= lambda!268604 lambda!268603))))

(assert (=> bs!1228464 (= (and (= (regOne!30378 lt!2163770) (regOne!30378 r!7292)) (= (regTwo!30378 lt!2163770) (regTwo!30378 r!7292))) (= lambda!268604 lambda!268491))))

(declare-fun bs!1228468 () Bool)

(assert (= bs!1228468 (and b!5296489 b!5296342)))

(assert (=> bs!1228468 (= (and (= (regOne!30378 lt!2163770) (regOne!30378 r!7292)) (= (regTwo!30378 lt!2163770) (regTwo!30378 r!7292))) (= lambda!268604 lambda!268594))))

(declare-fun bs!1228469 () Bool)

(assert (= bs!1228469 (and b!5296489 b!5296446)))

(assert (=> bs!1228469 (not (= lambda!268604 lambda!268600))))

(assert (=> b!5296489 true))

(assert (=> b!5296489 true))

(declare-fun b!5296480 () Bool)

(declare-fun e!3292276 () Bool)

(declare-fun e!3292280 () Bool)

(assert (=> b!5296480 (= e!3292276 e!3292280)))

(declare-fun c!919213 () Bool)

(assert (=> b!5296480 (= c!919213 ((_ is Star!14933) lt!2163770))))

(declare-fun bm!377541 () Bool)

(declare-fun call!377547 () Bool)

(assert (=> bm!377541 (= call!377547 (isEmpty!32934 s!2326))))

(declare-fun b!5296482 () Bool)

(declare-fun c!919215 () Bool)

(assert (=> b!5296482 (= c!919215 ((_ is Union!14933) lt!2163770))))

(declare-fun e!3292278 () Bool)

(assert (=> b!5296482 (= e!3292278 e!3292276)))

(declare-fun e!3292279 () Bool)

(declare-fun call!377546 () Bool)

(assert (=> b!5296483 (= e!3292279 call!377546)))

(declare-fun b!5296484 () Bool)

(declare-fun c!919214 () Bool)

(assert (=> b!5296484 (= c!919214 ((_ is ElementMatch!14933) lt!2163770))))

(declare-fun e!3292275 () Bool)

(assert (=> b!5296484 (= e!3292275 e!3292278)))

(declare-fun b!5296485 () Bool)

(declare-fun res!2246300 () Bool)

(assert (=> b!5296485 (=> res!2246300 e!3292279)))

(assert (=> b!5296485 (= res!2246300 call!377547)))

(assert (=> b!5296485 (= e!3292280 e!3292279)))

(declare-fun b!5296486 () Bool)

(declare-fun e!3292277 () Bool)

(assert (=> b!5296486 (= e!3292276 e!3292277)))

(declare-fun res!2246302 () Bool)

(assert (=> b!5296486 (= res!2246302 (matchRSpec!2036 (regOne!30379 lt!2163770) s!2326))))

(assert (=> b!5296486 (=> res!2246302 e!3292277)))

(declare-fun b!5296487 () Bool)

(declare-fun e!3292281 () Bool)

(assert (=> b!5296487 (= e!3292281 call!377547)))

(declare-fun b!5296488 () Bool)

(assert (=> b!5296488 (= e!3292281 e!3292275)))

(declare-fun res!2246301 () Bool)

(assert (=> b!5296488 (= res!2246301 (not ((_ is EmptyLang!14933) lt!2163770)))))

(assert (=> b!5296488 (=> (not res!2246301) (not e!3292275))))

(assert (=> b!5296489 (= e!3292280 call!377546)))

(declare-fun b!5296481 () Bool)

(assert (=> b!5296481 (= e!3292277 (matchRSpec!2036 (regTwo!30379 lt!2163770) s!2326))))

(declare-fun d!1703528 () Bool)

(declare-fun c!919216 () Bool)

(assert (=> d!1703528 (= c!919216 ((_ is EmptyExpr!14933) lt!2163770))))

(assert (=> d!1703528 (= (matchRSpec!2036 lt!2163770 s!2326) e!3292281)))

(declare-fun bm!377542 () Bool)

(assert (=> bm!377542 (= call!377546 (Exists!2114 (ite c!919213 lambda!268603 lambda!268604)))))

(declare-fun b!5296490 () Bool)

(assert (=> b!5296490 (= e!3292278 (= s!2326 (Cons!60975 (c!918905 lt!2163770) Nil!60975)))))

(assert (= (and d!1703528 c!919216) b!5296487))

(assert (= (and d!1703528 (not c!919216)) b!5296488))

(assert (= (and b!5296488 res!2246301) b!5296484))

(assert (= (and b!5296484 c!919214) b!5296490))

(assert (= (and b!5296484 (not c!919214)) b!5296482))

(assert (= (and b!5296482 c!919215) b!5296486))

(assert (= (and b!5296482 (not c!919215)) b!5296480))

(assert (= (and b!5296486 (not res!2246302)) b!5296481))

(assert (= (and b!5296480 c!919213) b!5296485))

(assert (= (and b!5296480 (not c!919213)) b!5296489))

(assert (= (and b!5296485 (not res!2246300)) b!5296483))

(assert (= (or b!5296483 b!5296489) bm!377542))

(assert (= (or b!5296487 b!5296485) bm!377541))

(assert (=> bm!377541 m!6333780))

(declare-fun m!6333912 () Bool)

(assert (=> b!5296486 m!6333912))

(declare-fun m!6333914 () Bool)

(assert (=> b!5296481 m!6333914))

(declare-fun m!6333916 () Bool)

(assert (=> bm!377542 m!6333916))

(assert (=> b!5295527 d!1703528))

(declare-fun bs!1228470 () Bool)

(declare-fun d!1703530 () Bool)

(assert (= bs!1228470 (and d!1703530 d!1703458)))

(declare-fun lambda!268605 () Int)

(assert (=> bs!1228470 (not (= lambda!268605 lambda!268588))))

(declare-fun bs!1228471 () Bool)

(assert (= bs!1228471 (and d!1703530 d!1703504)))

(assert (=> bs!1228471 (= lambda!268605 lambda!268598)))

(declare-fun bs!1228472 () Bool)

(assert (= bs!1228472 (and d!1703530 b!5296452)))

(assert (=> bs!1228472 (not (= lambda!268605 lambda!268601))))

(declare-fun bs!1228473 () Bool)

(assert (= bs!1228473 (and d!1703530 d!1703454)))

(assert (=> bs!1228473 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268605 lambda!268579))))

(assert (=> bs!1228470 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268605 lambda!268587))))

(declare-fun bs!1228474 () Bool)

(assert (= bs!1228474 (and d!1703530 b!5296489)))

(assert (=> bs!1228474 (not (= lambda!268605 lambda!268604))))

(declare-fun bs!1228475 () Bool)

(assert (= bs!1228475 (and d!1703530 b!5295512)))

(assert (=> bs!1228475 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163767 (regTwo!30378 r!7292))) (= lambda!268605 lambda!268490))))

(declare-fun bs!1228476 () Bool)

(assert (= bs!1228476 (and d!1703530 b!5295527)))

(assert (=> bs!1228476 (= (and (= (regTwo!30378 (regOne!30378 r!7292)) (regOne!30378 (regOne!30378 r!7292))) (= lt!2163767 lt!2163798)) (= lambda!268605 lambda!268493))))

(assert (=> bs!1228476 (= lambda!268605 lambda!268495)))

(assert (=> bs!1228476 (not (= lambda!268605 lambda!268494))))

(assert (=> bs!1228471 (not (= lambda!268605 lambda!268599))))

(assert (=> bs!1228476 (not (= lambda!268605 lambda!268496))))

(declare-fun bs!1228477 () Bool)

(assert (= bs!1228477 (and d!1703530 b!5296336)))

(assert (=> bs!1228477 (not (= lambda!268605 lambda!268593))))

(declare-fun bs!1228478 () Bool)

(assert (= bs!1228478 (and d!1703530 b!5296483)))

(assert (=> bs!1228478 (not (= lambda!268605 lambda!268603))))

(assert (=> bs!1228475 (not (= lambda!268605 lambda!268491))))

(declare-fun bs!1228479 () Bool)

(assert (= bs!1228479 (and d!1703530 b!5296342)))

(assert (=> bs!1228479 (not (= lambda!268605 lambda!268594))))

(declare-fun bs!1228480 () Bool)

(assert (= bs!1228480 (and d!1703530 b!5296446)))

(assert (=> bs!1228480 (not (= lambda!268605 lambda!268600))))

(assert (=> d!1703530 true))

(assert (=> d!1703530 true))

(assert (=> d!1703530 true))

(assert (=> d!1703530 (= (isDefined!11747 (findConcatSeparation!1458 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 Nil!60975 s!2326 s!2326)) (Exists!2114 lambda!268605))))

(declare-fun lt!2163981 () Unit!153250)

(assert (=> d!1703530 (= lt!2163981 (choose!39567 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 s!2326))))

(assert (=> d!1703530 (validRegex!6669 (regTwo!30378 (regOne!30378 r!7292)))))

(assert (=> d!1703530 (= (lemmaFindConcatSeparationEquivalentToExists!1222 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 s!2326) lt!2163981)))

(declare-fun bs!1228481 () Bool)

(assert (= bs!1228481 d!1703530))

(declare-fun m!6333918 () Bool)

(assert (=> bs!1228481 m!6333918))

(assert (=> bs!1228481 m!6333838))

(assert (=> bs!1228481 m!6332980))

(declare-fun m!6333920 () Bool)

(assert (=> bs!1228481 m!6333920))

(assert (=> bs!1228481 m!6332980))

(assert (=> bs!1228481 m!6332984))

(assert (=> b!5295527 d!1703530))

(declare-fun d!1703532 () Bool)

(assert (=> d!1703532 (= (isDefined!11747 (findConcatSeparation!1458 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 Nil!60975 s!2326 s!2326)) (not (isEmpty!32936 (findConcatSeparation!1458 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 Nil!60975 s!2326 s!2326))))))

(declare-fun bs!1228482 () Bool)

(assert (= bs!1228482 d!1703532))

(assert (=> bs!1228482 m!6332980))

(declare-fun m!6333922 () Bool)

(assert (=> bs!1228482 m!6333922))

(assert (=> b!5295527 d!1703532))

(declare-fun bs!1228483 () Bool)

(declare-fun d!1703534 () Bool)

(assert (= bs!1228483 (and d!1703534 b!5295496)))

(declare-fun lambda!268606 () Int)

(assert (=> bs!1228483 (= lambda!268606 lambda!268497)))

(declare-fun bs!1228484 () Bool)

(assert (= bs!1228484 (and d!1703534 d!1703526)))

(assert (=> bs!1228484 (= lambda!268606 lambda!268602)))

(declare-fun bs!1228485 () Bool)

(assert (= bs!1228485 (and d!1703534 d!1703250)))

(assert (=> bs!1228485 (= lambda!268606 lambda!268510)))

(declare-fun bs!1228486 () Bool)

(assert (= bs!1228486 (and d!1703534 d!1703372)))

(assert (=> bs!1228486 (= lambda!268606 lambda!268557)))

(declare-fun bs!1228487 () Bool)

(assert (= bs!1228487 (and d!1703534 d!1703496)))

(assert (=> bs!1228487 (= lambda!268606 lambda!268597)))

(declare-fun bs!1228488 () Bool)

(assert (= bs!1228488 (and d!1703534 d!1703410)))

(assert (=> bs!1228488 (= lambda!268606 lambda!268562)))

(declare-fun bs!1228489 () Bool)

(assert (= bs!1228489 (and d!1703534 d!1703378)))

(assert (=> bs!1228489 (= lambda!268606 lambda!268561)))

(declare-fun b!5296491 () Bool)

(declare-fun e!3292283 () Bool)

(declare-fun lt!2163982 () Regex!14933)

(assert (=> b!5296491 (= e!3292283 (= lt!2163982 (head!11351 lt!2163792)))))

(declare-fun b!5296492 () Bool)

(declare-fun e!3292284 () Regex!14933)

(assert (=> b!5296492 (= e!3292284 (h!67422 lt!2163792))))

(declare-fun e!3292285 () Bool)

(assert (=> d!1703534 e!3292285))

(declare-fun res!2246304 () Bool)

(assert (=> d!1703534 (=> (not res!2246304) (not e!3292285))))

(assert (=> d!1703534 (= res!2246304 (validRegex!6669 lt!2163982))))

(assert (=> d!1703534 (= lt!2163982 e!3292284)))

(declare-fun c!919220 () Bool)

(declare-fun e!3292282 () Bool)

(assert (=> d!1703534 (= c!919220 e!3292282)))

(declare-fun res!2246303 () Bool)

(assert (=> d!1703534 (=> (not res!2246303) (not e!3292282))))

(assert (=> d!1703534 (= res!2246303 ((_ is Cons!60974) lt!2163792))))

(assert (=> d!1703534 (forall!14345 lt!2163792 lambda!268606)))

(assert (=> d!1703534 (= (generalisedConcat!602 lt!2163792) lt!2163982)))

(declare-fun b!5296493 () Bool)

(declare-fun e!3292287 () Bool)

(assert (=> b!5296493 (= e!3292287 (isEmptyExpr!851 lt!2163982))))

(declare-fun b!5296494 () Bool)

(assert (=> b!5296494 (= e!3292282 (isEmpty!32932 (t!374303 lt!2163792)))))

(declare-fun b!5296495 () Bool)

(assert (=> b!5296495 (= e!3292283 (isConcat!374 lt!2163982))))

(declare-fun b!5296496 () Bool)

(declare-fun e!3292286 () Regex!14933)

(assert (=> b!5296496 (= e!3292286 EmptyExpr!14933)))

(declare-fun b!5296497 () Bool)

(assert (=> b!5296497 (= e!3292285 e!3292287)))

(declare-fun c!919218 () Bool)

(assert (=> b!5296497 (= c!919218 (isEmpty!32932 lt!2163792))))

(declare-fun b!5296498 () Bool)

(assert (=> b!5296498 (= e!3292286 (Concat!23778 (h!67422 lt!2163792) (generalisedConcat!602 (t!374303 lt!2163792))))))

(declare-fun b!5296499 () Bool)

(assert (=> b!5296499 (= e!3292284 e!3292286)))

(declare-fun c!919217 () Bool)

(assert (=> b!5296499 (= c!919217 ((_ is Cons!60974) lt!2163792))))

(declare-fun b!5296500 () Bool)

(assert (=> b!5296500 (= e!3292287 e!3292283)))

(declare-fun c!919219 () Bool)

(assert (=> b!5296500 (= c!919219 (isEmpty!32932 (tail!10448 lt!2163792)))))

(assert (= (and d!1703534 res!2246303) b!5296494))

(assert (= (and d!1703534 c!919220) b!5296492))

(assert (= (and d!1703534 (not c!919220)) b!5296499))

(assert (= (and b!5296499 c!919217) b!5296498))

(assert (= (and b!5296499 (not c!919217)) b!5296496))

(assert (= (and d!1703534 res!2246304) b!5296497))

(assert (= (and b!5296497 c!919218) b!5296493))

(assert (= (and b!5296497 (not c!919218)) b!5296500))

(assert (= (and b!5296500 c!919219) b!5296491))

(assert (= (and b!5296500 (not c!919219)) b!5296495))

(declare-fun m!6333924 () Bool)

(assert (=> b!5296494 m!6333924))

(declare-fun m!6333926 () Bool)

(assert (=> b!5296495 m!6333926))

(declare-fun m!6333928 () Bool)

(assert (=> b!5296500 m!6333928))

(assert (=> b!5296500 m!6333928))

(declare-fun m!6333930 () Bool)

(assert (=> b!5296500 m!6333930))

(declare-fun m!6333932 () Bool)

(assert (=> b!5296491 m!6333932))

(declare-fun m!6333934 () Bool)

(assert (=> b!5296493 m!6333934))

(declare-fun m!6333936 () Bool)

(assert (=> b!5296498 m!6333936))

(declare-fun m!6333938 () Bool)

(assert (=> d!1703534 m!6333938))

(declare-fun m!6333940 () Bool)

(assert (=> d!1703534 m!6333940))

(declare-fun m!6333942 () Bool)

(assert (=> b!5296497 m!6333942))

(assert (=> b!5295527 d!1703534))

(declare-fun b!5296501 () Bool)

(declare-fun e!3292289 () Option!15044)

(assert (=> b!5296501 (= e!3292289 (Some!15043 (tuple2!64265 Nil!60975 s!2326)))))

(declare-fun d!1703536 () Bool)

(declare-fun e!3292290 () Bool)

(assert (=> d!1703536 e!3292290))

(declare-fun res!2246306 () Bool)

(assert (=> d!1703536 (=> res!2246306 e!3292290)))

(declare-fun e!3292291 () Bool)

(assert (=> d!1703536 (= res!2246306 e!3292291)))

(declare-fun res!2246308 () Bool)

(assert (=> d!1703536 (=> (not res!2246308) (not e!3292291))))

(declare-fun lt!2163985 () Option!15044)

(assert (=> d!1703536 (= res!2246308 (isDefined!11747 lt!2163985))))

(assert (=> d!1703536 (= lt!2163985 e!3292289)))

(declare-fun c!919221 () Bool)

(declare-fun e!3292288 () Bool)

(assert (=> d!1703536 (= c!919221 e!3292288)))

(declare-fun res!2246305 () Bool)

(assert (=> d!1703536 (=> (not res!2246305) (not e!3292288))))

(assert (=> d!1703536 (= res!2246305 (matchR!7118 (regTwo!30378 (regOne!30378 r!7292)) Nil!60975))))

(assert (=> d!1703536 (validRegex!6669 (regTwo!30378 (regOne!30378 r!7292)))))

(assert (=> d!1703536 (= (findConcatSeparation!1458 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 Nil!60975 s!2326 s!2326) lt!2163985)))

(declare-fun b!5296502 () Bool)

(assert (=> b!5296502 (= e!3292288 (matchR!7118 lt!2163767 s!2326))))

(declare-fun b!5296503 () Bool)

(declare-fun e!3292292 () Option!15044)

(assert (=> b!5296503 (= e!3292289 e!3292292)))

(declare-fun c!919222 () Bool)

(assert (=> b!5296503 (= c!919222 ((_ is Nil!60975) s!2326))))

(declare-fun b!5296504 () Bool)

(assert (=> b!5296504 (= e!3292291 (= (++!13296 (_1!35435 (get!20968 lt!2163985)) (_2!35435 (get!20968 lt!2163985))) s!2326))))

(declare-fun b!5296505 () Bool)

(declare-fun res!2246307 () Bool)

(assert (=> b!5296505 (=> (not res!2246307) (not e!3292291))))

(assert (=> b!5296505 (= res!2246307 (matchR!7118 (regTwo!30378 (regOne!30378 r!7292)) (_1!35435 (get!20968 lt!2163985))))))

(declare-fun b!5296506 () Bool)

(assert (=> b!5296506 (= e!3292292 None!15043)))

(declare-fun b!5296507 () Bool)

(declare-fun res!2246309 () Bool)

(assert (=> b!5296507 (=> (not res!2246309) (not e!3292291))))

(assert (=> b!5296507 (= res!2246309 (matchR!7118 lt!2163767 (_2!35435 (get!20968 lt!2163985))))))

(declare-fun b!5296508 () Bool)

(declare-fun lt!2163984 () Unit!153250)

(declare-fun lt!2163983 () Unit!153250)

(assert (=> b!5296508 (= lt!2163984 lt!2163983)))

(assert (=> b!5296508 (= (++!13296 (++!13296 Nil!60975 (Cons!60975 (h!67423 s!2326) Nil!60975)) (t!374304 s!2326)) s!2326)))

(assert (=> b!5296508 (= lt!2163983 (lemmaMoveElementToOtherListKeepsConcatEq!1711 Nil!60975 (h!67423 s!2326) (t!374304 s!2326) s!2326))))

(assert (=> b!5296508 (= e!3292292 (findConcatSeparation!1458 (regTwo!30378 (regOne!30378 r!7292)) lt!2163767 (++!13296 Nil!60975 (Cons!60975 (h!67423 s!2326) Nil!60975)) (t!374304 s!2326) s!2326))))

(declare-fun b!5296509 () Bool)

(assert (=> b!5296509 (= e!3292290 (not (isDefined!11747 lt!2163985)))))

(assert (= (and d!1703536 res!2246305) b!5296502))

(assert (= (and d!1703536 c!919221) b!5296501))

(assert (= (and d!1703536 (not c!919221)) b!5296503))

(assert (= (and b!5296503 c!919222) b!5296506))

(assert (= (and b!5296503 (not c!919222)) b!5296508))

(assert (= (and d!1703536 res!2246308) b!5296505))

(assert (= (and b!5296505 res!2246307) b!5296507))

(assert (= (and b!5296507 res!2246309) b!5296504))

(assert (= (and d!1703536 (not res!2246306)) b!5296509))

(declare-fun m!6333944 () Bool)

(assert (=> d!1703536 m!6333944))

(declare-fun m!6333946 () Bool)

(assert (=> d!1703536 m!6333946))

(assert (=> d!1703536 m!6333838))

(assert (=> b!5296509 m!6333944))

(declare-fun m!6333948 () Bool)

(assert (=> b!5296507 m!6333948))

(declare-fun m!6333950 () Bool)

(assert (=> b!5296507 m!6333950))

(assert (=> b!5296504 m!6333948))

(declare-fun m!6333952 () Bool)

(assert (=> b!5296504 m!6333952))

(assert (=> b!5296508 m!6333676))

(assert (=> b!5296508 m!6333676))

(assert (=> b!5296508 m!6333678))

(assert (=> b!5296508 m!6333680))

(assert (=> b!5296508 m!6333676))

(declare-fun m!6333954 () Bool)

(assert (=> b!5296508 m!6333954))

(declare-fun m!6333956 () Bool)

(assert (=> b!5296502 m!6333956))

(assert (=> b!5296505 m!6333948))

(declare-fun m!6333958 () Bool)

(assert (=> b!5296505 m!6333958))

(assert (=> b!5295527 d!1703536))

(declare-fun d!1703538 () Bool)

(assert (=> d!1703538 (= (Exists!2114 lambda!268495) (choose!39566 lambda!268495))))

(declare-fun bs!1228490 () Bool)

(assert (= bs!1228490 d!1703538))

(declare-fun m!6333960 () Bool)

(assert (=> bs!1228490 m!6333960))

(assert (=> b!5295527 d!1703538))

(declare-fun bs!1228491 () Bool)

(declare-fun d!1703540 () Bool)

(assert (= bs!1228491 (and d!1703540 d!1703458)))

(declare-fun lambda!268607 () Int)

(assert (=> bs!1228491 (not (= lambda!268607 lambda!268588))))

(declare-fun bs!1228492 () Bool)

(assert (= bs!1228492 (and d!1703540 d!1703504)))

(assert (=> bs!1228492 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268607 lambda!268598))))

(declare-fun bs!1228493 () Bool)

(assert (= bs!1228493 (and d!1703540 b!5296452)))

(assert (=> bs!1228493 (not (= lambda!268607 lambda!268601))))

(declare-fun bs!1228494 () Bool)

(assert (= bs!1228494 (and d!1703540 d!1703454)))

(assert (=> bs!1228494 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268607 lambda!268579))))

(assert (=> bs!1228491 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268607 lambda!268587))))

(declare-fun bs!1228495 () Bool)

(assert (= bs!1228495 (and d!1703540 d!1703530)))

(assert (=> bs!1228495 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268607 lambda!268605))))

(declare-fun bs!1228496 () Bool)

(assert (= bs!1228496 (and d!1703540 b!5296489)))

(assert (=> bs!1228496 (not (= lambda!268607 lambda!268604))))

(declare-fun bs!1228497 () Bool)

(assert (= bs!1228497 (and d!1703540 b!5295512)))

(assert (=> bs!1228497 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268607 lambda!268490))))

(declare-fun bs!1228498 () Bool)

(assert (= bs!1228498 (and d!1703540 b!5295527)))

(assert (=> bs!1228498 (= lambda!268607 lambda!268493)))

(assert (=> bs!1228498 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268607 lambda!268495))))

(assert (=> bs!1228498 (not (= lambda!268607 lambda!268494))))

(assert (=> bs!1228492 (not (= lambda!268607 lambda!268599))))

(assert (=> bs!1228498 (not (= lambda!268607 lambda!268496))))

(declare-fun bs!1228499 () Bool)

(assert (= bs!1228499 (and d!1703540 b!5296336)))

(assert (=> bs!1228499 (not (= lambda!268607 lambda!268593))))

(declare-fun bs!1228500 () Bool)

(assert (= bs!1228500 (and d!1703540 b!5296483)))

(assert (=> bs!1228500 (not (= lambda!268607 lambda!268603))))

(assert (=> bs!1228497 (not (= lambda!268607 lambda!268491))))

(declare-fun bs!1228501 () Bool)

(assert (= bs!1228501 (and d!1703540 b!5296342)))

(assert (=> bs!1228501 (not (= lambda!268607 lambda!268594))))

(declare-fun bs!1228502 () Bool)

(assert (= bs!1228502 (and d!1703540 b!5296446)))

(assert (=> bs!1228502 (not (= lambda!268607 lambda!268600))))

(assert (=> d!1703540 true))

(assert (=> d!1703540 true))

(assert (=> d!1703540 true))

(declare-fun lambda!268608 () Int)

(assert (=> bs!1228491 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268608 lambda!268588))))

(declare-fun bs!1228503 () Bool)

(assert (= bs!1228503 d!1703540))

(assert (=> bs!1228503 (not (= lambda!268608 lambda!268607))))

(assert (=> bs!1228492 (not (= lambda!268608 lambda!268598))))

(assert (=> bs!1228493 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 lt!2163798)) (= lt!2163798 (regTwo!30378 lt!2163798))) (= lambda!268608 lambda!268601))))

(assert (=> bs!1228494 (not (= lambda!268608 lambda!268579))))

(assert (=> bs!1228491 (not (= lambda!268608 lambda!268587))))

(assert (=> bs!1228495 (not (= lambda!268608 lambda!268605))))

(assert (=> bs!1228496 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 lt!2163770)) (= lt!2163798 (regTwo!30378 lt!2163770))) (= lambda!268608 lambda!268604))))

(assert (=> bs!1228497 (not (= lambda!268608 lambda!268490))))

(assert (=> bs!1228498 (not (= lambda!268608 lambda!268493))))

(assert (=> bs!1228498 (not (= lambda!268608 lambda!268495))))

(assert (=> bs!1228498 (= lambda!268608 lambda!268494)))

(assert (=> bs!1228492 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268608 lambda!268599))))

(assert (=> bs!1228498 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268608 lambda!268496))))

(assert (=> bs!1228499 (not (= lambda!268608 lambda!268593))))

(assert (=> bs!1228500 (not (= lambda!268608 lambda!268603))))

(assert (=> bs!1228497 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268608 lambda!268491))))

(assert (=> bs!1228501 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268608 lambda!268594))))

(assert (=> bs!1228502 (not (= lambda!268608 lambda!268600))))

(assert (=> d!1703540 true))

(assert (=> d!1703540 true))

(assert (=> d!1703540 true))

(assert (=> d!1703540 (= (Exists!2114 lambda!268607) (Exists!2114 lambda!268608))))

(declare-fun lt!2163986 () Unit!153250)

(assert (=> d!1703540 (= lt!2163986 (choose!39568 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 s!2326))))

(assert (=> d!1703540 (validRegex!6669 (regOne!30378 (regOne!30378 r!7292)))))

(assert (=> d!1703540 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!768 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 s!2326) lt!2163986)))

(declare-fun m!6333962 () Bool)

(assert (=> bs!1228503 m!6333962))

(declare-fun m!6333964 () Bool)

(assert (=> bs!1228503 m!6333964))

(declare-fun m!6333966 () Bool)

(assert (=> bs!1228503 m!6333966))

(assert (=> bs!1228503 m!6333856))

(assert (=> b!5295527 d!1703540))

(declare-fun bs!1228504 () Bool)

(declare-fun d!1703542 () Bool)

(assert (= bs!1228504 (and d!1703542 d!1703458)))

(declare-fun lambda!268609 () Int)

(assert (=> bs!1228504 (not (= lambda!268609 lambda!268588))))

(declare-fun bs!1228505 () Bool)

(assert (= bs!1228505 (and d!1703542 d!1703540)))

(assert (=> bs!1228505 (= lambda!268609 lambda!268607)))

(declare-fun bs!1228506 () Bool)

(assert (= bs!1228506 (and d!1703542 d!1703504)))

(assert (=> bs!1228506 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268609 lambda!268598))))

(declare-fun bs!1228507 () Bool)

(assert (= bs!1228507 (and d!1703542 b!5296452)))

(assert (=> bs!1228507 (not (= lambda!268609 lambda!268601))))

(assert (=> bs!1228505 (not (= lambda!268609 lambda!268608))))

(declare-fun bs!1228508 () Bool)

(assert (= bs!1228508 (and d!1703542 d!1703454)))

(assert (=> bs!1228508 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268609 lambda!268579))))

(assert (=> bs!1228504 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268609 lambda!268587))))

(declare-fun bs!1228509 () Bool)

(assert (= bs!1228509 (and d!1703542 d!1703530)))

(assert (=> bs!1228509 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268609 lambda!268605))))

(declare-fun bs!1228510 () Bool)

(assert (= bs!1228510 (and d!1703542 b!5296489)))

(assert (=> bs!1228510 (not (= lambda!268609 lambda!268604))))

(declare-fun bs!1228511 () Bool)

(assert (= bs!1228511 (and d!1703542 b!5295512)))

(assert (=> bs!1228511 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regOne!30378 r!7292)) (= lt!2163798 (regTwo!30378 r!7292))) (= lambda!268609 lambda!268490))))

(declare-fun bs!1228512 () Bool)

(assert (= bs!1228512 (and d!1703542 b!5295527)))

(assert (=> bs!1228512 (= lambda!268609 lambda!268493)))

(assert (=> bs!1228512 (= (and (= (regOne!30378 (regOne!30378 r!7292)) (regTwo!30378 (regOne!30378 r!7292))) (= lt!2163798 lt!2163767)) (= lambda!268609 lambda!268495))))

(assert (=> bs!1228512 (not (= lambda!268609 lambda!268494))))

(assert (=> bs!1228506 (not (= lambda!268609 lambda!268599))))

(assert (=> bs!1228512 (not (= lambda!268609 lambda!268496))))

(declare-fun bs!1228513 () Bool)

(assert (= bs!1228513 (and d!1703542 b!5296336)))

(assert (=> bs!1228513 (not (= lambda!268609 lambda!268593))))

(declare-fun bs!1228514 () Bool)

(assert (= bs!1228514 (and d!1703542 b!5296483)))

(assert (=> bs!1228514 (not (= lambda!268609 lambda!268603))))

(assert (=> bs!1228511 (not (= lambda!268609 lambda!268491))))

(declare-fun bs!1228515 () Bool)

(assert (= bs!1228515 (and d!1703542 b!5296342)))

(assert (=> bs!1228515 (not (= lambda!268609 lambda!268594))))

(declare-fun bs!1228516 () Bool)

(assert (= bs!1228516 (and d!1703542 b!5296446)))

(assert (=> bs!1228516 (not (= lambda!268609 lambda!268600))))

(assert (=> d!1703542 true))

(assert (=> d!1703542 true))

(assert (=> d!1703542 true))

(assert (=> d!1703542 (= (isDefined!11747 (findConcatSeparation!1458 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 Nil!60975 s!2326 s!2326)) (Exists!2114 lambda!268609))))

(declare-fun lt!2163987 () Unit!153250)

(assert (=> d!1703542 (= lt!2163987 (choose!39567 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 s!2326))))

(assert (=> d!1703542 (validRegex!6669 (regOne!30378 (regOne!30378 r!7292)))))

(assert (=> d!1703542 (= (lemmaFindConcatSeparationEquivalentToExists!1222 (regOne!30378 (regOne!30378 r!7292)) lt!2163798 s!2326) lt!2163987)))

(declare-fun bs!1228517 () Bool)

(assert (= bs!1228517 d!1703542))

(declare-fun m!6333968 () Bool)

(assert (=> bs!1228517 m!6333968))

(assert (=> bs!1228517 m!6333856))

(assert (=> bs!1228517 m!6333000))

(declare-fun m!6333970 () Bool)

(assert (=> bs!1228517 m!6333970))

(assert (=> bs!1228517 m!6333000))

(assert (=> bs!1228517 m!6333002))

(assert (=> b!5295527 d!1703542))

(declare-fun d!1703544 () Bool)

(assert (=> d!1703544 (= (Exists!2114 lambda!268496) (choose!39566 lambda!268496))))

(declare-fun bs!1228518 () Bool)

(assert (= bs!1228518 d!1703544))

(declare-fun m!6333972 () Bool)

(assert (=> bs!1228518 m!6333972))

(assert (=> b!5295527 d!1703544))

(declare-fun bs!1228519 () Bool)

(declare-fun d!1703546 () Bool)

(assert (= bs!1228519 (and d!1703546 b!5295496)))

(declare-fun lambda!268610 () Int)

(assert (=> bs!1228519 (= lambda!268610 lambda!268497)))

(declare-fun bs!1228520 () Bool)

(assert (= bs!1228520 (and d!1703546 d!1703534)))

(assert (=> bs!1228520 (= lambda!268610 lambda!268606)))

(declare-fun bs!1228521 () Bool)

(assert (= bs!1228521 (and d!1703546 d!1703526)))

(assert (=> bs!1228521 (= lambda!268610 lambda!268602)))

(declare-fun bs!1228522 () Bool)

(assert (= bs!1228522 (and d!1703546 d!1703250)))

(assert (=> bs!1228522 (= lambda!268610 lambda!268510)))

(declare-fun bs!1228523 () Bool)

(assert (= bs!1228523 (and d!1703546 d!1703372)))

(assert (=> bs!1228523 (= lambda!268610 lambda!268557)))

(declare-fun bs!1228524 () Bool)

(assert (= bs!1228524 (and d!1703546 d!1703496)))

(assert (=> bs!1228524 (= lambda!268610 lambda!268597)))

(declare-fun bs!1228525 () Bool)

(assert (= bs!1228525 (and d!1703546 d!1703410)))

(assert (=> bs!1228525 (= lambda!268610 lambda!268562)))

(declare-fun bs!1228526 () Bool)

(assert (= bs!1228526 (and d!1703546 d!1703378)))

(assert (=> bs!1228526 (= lambda!268610 lambda!268561)))

(declare-fun b!5296510 () Bool)

(declare-fun e!3292294 () Bool)

(declare-fun lt!2163988 () Regex!14933)

(assert (=> b!5296510 (= e!3292294 (= lt!2163988 (head!11351 lt!2163764)))))

(declare-fun b!5296511 () Bool)

(declare-fun e!3292295 () Regex!14933)

(assert (=> b!5296511 (= e!3292295 (h!67422 lt!2163764))))

(declare-fun e!3292296 () Bool)

(assert (=> d!1703546 e!3292296))

(declare-fun res!2246311 () Bool)

(assert (=> d!1703546 (=> (not res!2246311) (not e!3292296))))

(assert (=> d!1703546 (= res!2246311 (validRegex!6669 lt!2163988))))

(assert (=> d!1703546 (= lt!2163988 e!3292295)))

(declare-fun c!919226 () Bool)

(declare-fun e!3292293 () Bool)

(assert (=> d!1703546 (= c!919226 e!3292293)))

(declare-fun res!2246310 () Bool)

(assert (=> d!1703546 (=> (not res!2246310) (not e!3292293))))

(assert (=> d!1703546 (= res!2246310 ((_ is Cons!60974) lt!2163764))))

(assert (=> d!1703546 (forall!14345 lt!2163764 lambda!268610)))

(assert (=> d!1703546 (= (generalisedConcat!602 lt!2163764) lt!2163988)))

(declare-fun b!5296512 () Bool)

(declare-fun e!3292298 () Bool)

(assert (=> b!5296512 (= e!3292298 (isEmptyExpr!851 lt!2163988))))

(declare-fun b!5296513 () Bool)

(assert (=> b!5296513 (= e!3292293 (isEmpty!32932 (t!374303 lt!2163764)))))

(declare-fun b!5296514 () Bool)

(assert (=> b!5296514 (= e!3292294 (isConcat!374 lt!2163988))))

(declare-fun b!5296515 () Bool)

(declare-fun e!3292297 () Regex!14933)

(assert (=> b!5296515 (= e!3292297 EmptyExpr!14933)))

(declare-fun b!5296516 () Bool)

(assert (=> b!5296516 (= e!3292296 e!3292298)))

(declare-fun c!919224 () Bool)

(assert (=> b!5296516 (= c!919224 (isEmpty!32932 lt!2163764))))

(declare-fun b!5296517 () Bool)

(assert (=> b!5296517 (= e!3292297 (Concat!23778 (h!67422 lt!2163764) (generalisedConcat!602 (t!374303 lt!2163764))))))

(declare-fun b!5296518 () Bool)

(assert (=> b!5296518 (= e!3292295 e!3292297)))

(declare-fun c!919223 () Bool)

(assert (=> b!5296518 (= c!919223 ((_ is Cons!60974) lt!2163764))))

(declare-fun b!5296519 () Bool)

(assert (=> b!5296519 (= e!3292298 e!3292294)))

(declare-fun c!919225 () Bool)

(assert (=> b!5296519 (= c!919225 (isEmpty!32932 (tail!10448 lt!2163764)))))

(assert (= (and d!1703546 res!2246310) b!5296513))

(assert (= (and d!1703546 c!919226) b!5296511))

(assert (= (and d!1703546 (not c!919226)) b!5296518))

(assert (= (and b!5296518 c!919223) b!5296517))

(assert (= (and b!5296518 (not c!919223)) b!5296515))

(assert (= (and d!1703546 res!2246311) b!5296516))

(assert (= (and b!5296516 c!919224) b!5296512))

(assert (= (and b!5296516 (not c!919224)) b!5296519))

(assert (= (and b!5296519 c!919225) b!5296510))

(assert (= (and b!5296519 (not c!919225)) b!5296514))

(declare-fun m!6333974 () Bool)

(assert (=> b!5296513 m!6333974))

(declare-fun m!6333976 () Bool)

(assert (=> b!5296514 m!6333976))

(declare-fun m!6333978 () Bool)

(assert (=> b!5296519 m!6333978))

(assert (=> b!5296519 m!6333978))

(declare-fun m!6333980 () Bool)

(assert (=> b!5296519 m!6333980))

(declare-fun m!6333982 () Bool)

(assert (=> b!5296510 m!6333982))

(declare-fun m!6333984 () Bool)

(assert (=> b!5296512 m!6333984))

(declare-fun m!6333986 () Bool)

(assert (=> b!5296517 m!6333986))

(declare-fun m!6333988 () Bool)

(assert (=> d!1703546 m!6333988))

(declare-fun m!6333990 () Bool)

(assert (=> d!1703546 m!6333990))

(declare-fun m!6333992 () Bool)

(assert (=> b!5296516 m!6333992))

(assert (=> b!5295527 d!1703546))

(declare-fun d!1703548 () Bool)

(assert (=> d!1703548 (= (matchR!7118 lt!2163798 s!2326) (matchZipper!1177 lt!2163773 s!2326))))

(declare-fun lt!2163989 () Unit!153250)

(assert (=> d!1703548 (= lt!2163989 (choose!39572 lt!2163773 (Cons!60976 lt!2163790 Nil!60976) lt!2163798 s!2326))))

(assert (=> d!1703548 (validRegex!6669 lt!2163798)))

(assert (=> d!1703548 (= (theoremZipperRegexEquiv!343 lt!2163773 (Cons!60976 lt!2163790 Nil!60976) lt!2163798 s!2326) lt!2163989)))

(declare-fun bs!1228527 () Bool)

(assert (= bs!1228527 d!1703548))

(assert (=> bs!1228527 m!6332982))

(assert (=> bs!1228527 m!6333022))

(declare-fun m!6333994 () Bool)

(assert (=> bs!1228527 m!6333994))

(assert (=> bs!1228527 m!6333844))

(assert (=> b!5295527 d!1703548))

(declare-fun c!919232 () Bool)

(declare-fun bm!377549 () Bool)

(declare-fun call!377556 () Bool)

(declare-fun c!919231 () Bool)

(assert (=> bm!377549 (= call!377556 (validRegex!6669 (ite c!919231 (reg!15262 r!7292) (ite c!919232 (regOne!30379 r!7292) (regOne!30378 r!7292)))))))

(declare-fun b!5296538 () Bool)

(declare-fun e!3292315 () Bool)

(declare-fun e!3292318 () Bool)

(assert (=> b!5296538 (= e!3292315 e!3292318)))

(declare-fun res!2246322 () Bool)

(assert (=> b!5296538 (= res!2246322 (not (nullable!5102 (reg!15262 r!7292))))))

(assert (=> b!5296538 (=> (not res!2246322) (not e!3292318))))

(declare-fun b!5296539 () Bool)

(declare-fun e!3292316 () Bool)

(declare-fun e!3292317 () Bool)

(assert (=> b!5296539 (= e!3292316 e!3292317)))

(declare-fun res!2246326 () Bool)

(assert (=> b!5296539 (=> (not res!2246326) (not e!3292317))))

(declare-fun call!377555 () Bool)

(assert (=> b!5296539 (= res!2246326 call!377555)))

(declare-fun b!5296540 () Bool)

(declare-fun res!2246323 () Bool)

(assert (=> b!5296540 (=> res!2246323 e!3292316)))

(assert (=> b!5296540 (= res!2246323 (not ((_ is Concat!23778) r!7292)))))

(declare-fun e!3292319 () Bool)

(assert (=> b!5296540 (= e!3292319 e!3292316)))

(declare-fun d!1703550 () Bool)

(declare-fun res!2246324 () Bool)

(declare-fun e!3292313 () Bool)

(assert (=> d!1703550 (=> res!2246324 e!3292313)))

(assert (=> d!1703550 (= res!2246324 ((_ is ElementMatch!14933) r!7292))))

(assert (=> d!1703550 (= (validRegex!6669 r!7292) e!3292313)))

(declare-fun b!5296541 () Bool)

(assert (=> b!5296541 (= e!3292313 e!3292315)))

(assert (=> b!5296541 (= c!919231 ((_ is Star!14933) r!7292))))

(declare-fun bm!377550 () Bool)

(assert (=> bm!377550 (= call!377555 call!377556)))

(declare-fun b!5296542 () Bool)

(declare-fun e!3292314 () Bool)

(declare-fun call!377554 () Bool)

(assert (=> b!5296542 (= e!3292314 call!377554)))

(declare-fun b!5296543 () Bool)

(assert (=> b!5296543 (= e!3292318 call!377556)))

(declare-fun b!5296544 () Bool)

(declare-fun res!2246325 () Bool)

(assert (=> b!5296544 (=> (not res!2246325) (not e!3292314))))

(assert (=> b!5296544 (= res!2246325 call!377555)))

(assert (=> b!5296544 (= e!3292319 e!3292314)))

(declare-fun bm!377551 () Bool)

(assert (=> bm!377551 (= call!377554 (validRegex!6669 (ite c!919232 (regTwo!30379 r!7292) (regTwo!30378 r!7292))))))

(declare-fun b!5296545 () Bool)

(assert (=> b!5296545 (= e!3292315 e!3292319)))

(assert (=> b!5296545 (= c!919232 ((_ is Union!14933) r!7292))))

(declare-fun b!5296546 () Bool)

(assert (=> b!5296546 (= e!3292317 call!377554)))

(assert (= (and d!1703550 (not res!2246324)) b!5296541))

(assert (= (and b!5296541 c!919231) b!5296538))

(assert (= (and b!5296541 (not c!919231)) b!5296545))

(assert (= (and b!5296538 res!2246322) b!5296543))

(assert (= (and b!5296545 c!919232) b!5296544))

(assert (= (and b!5296545 (not c!919232)) b!5296540))

(assert (= (and b!5296544 res!2246325) b!5296542))

(assert (= (and b!5296540 (not res!2246323)) b!5296539))

(assert (= (and b!5296539 res!2246326) b!5296546))

(assert (= (or b!5296542 b!5296546) bm!377551))

(assert (= (or b!5296544 b!5296539) bm!377550))

(assert (= (or b!5296543 bm!377550) bm!377549))

(declare-fun m!6333996 () Bool)

(assert (=> bm!377549 m!6333996))

(declare-fun m!6333998 () Bool)

(assert (=> b!5296538 m!6333998))

(declare-fun m!6334000 () Bool)

(assert (=> bm!377551 m!6334000))

(assert (=> start!558794 d!1703550))

(assert (=> b!5295531 d!1703302))

(declare-fun d!1703552 () Bool)

(declare-fun c!919233 () Bool)

(assert (=> d!1703552 (= c!919233 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3292320 () Bool)

(assert (=> d!1703552 (= (matchZipper!1177 lt!2163768 (t!374304 s!2326)) e!3292320)))

(declare-fun b!5296547 () Bool)

(assert (=> b!5296547 (= e!3292320 (nullableZipper!1316 lt!2163768))))

(declare-fun b!5296548 () Bool)

(assert (=> b!5296548 (= e!3292320 (matchZipper!1177 (derivationStepZipper!1176 lt!2163768 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703552 c!919233) b!5296547))

(assert (= (and d!1703552 (not c!919233)) b!5296548))

(assert (=> d!1703552 m!6333180))

(declare-fun m!6334002 () Bool)

(assert (=> b!5296547 m!6334002))

(assert (=> b!5296548 m!6333184))

(assert (=> b!5296548 m!6333184))

(declare-fun m!6334004 () Bool)

(assert (=> b!5296548 m!6334004))

(assert (=> b!5296548 m!6333188))

(assert (=> b!5296548 m!6334004))

(assert (=> b!5296548 m!6333188))

(declare-fun m!6334006 () Bool)

(assert (=> b!5296548 m!6334006))

(assert (=> b!5295531 d!1703552))

(declare-fun d!1703554 () Bool)

(declare-fun c!919234 () Bool)

(assert (=> d!1703554 (= c!919234 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3292321 () Bool)

(assert (=> d!1703554 (= (matchZipper!1177 lt!2163806 (t!374304 s!2326)) e!3292321)))

(declare-fun b!5296549 () Bool)

(assert (=> b!5296549 (= e!3292321 (nullableZipper!1316 lt!2163806))))

(declare-fun b!5296550 () Bool)

(assert (=> b!5296550 (= e!3292321 (matchZipper!1177 (derivationStepZipper!1176 lt!2163806 (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703554 c!919234) b!5296549))

(assert (= (and d!1703554 (not c!919234)) b!5296550))

(assert (=> d!1703554 m!6333180))

(declare-fun m!6334008 () Bool)

(assert (=> b!5296549 m!6334008))

(assert (=> b!5296550 m!6333184))

(assert (=> b!5296550 m!6333184))

(declare-fun m!6334010 () Bool)

(assert (=> b!5296550 m!6334010))

(assert (=> b!5296550 m!6333188))

(assert (=> b!5296550 m!6334010))

(assert (=> b!5296550 m!6333188))

(declare-fun m!6334012 () Bool)

(assert (=> b!5296550 m!6334012))

(assert (=> b!5295531 d!1703554))

(declare-fun d!1703556 () Bool)

(declare-fun e!3292322 () Bool)

(assert (=> d!1703556 (= (matchZipper!1177 ((_ map or) lt!2163806 lt!2163766) (t!374304 s!2326)) e!3292322)))

(declare-fun res!2246327 () Bool)

(assert (=> d!1703556 (=> res!2246327 e!3292322)))

(assert (=> d!1703556 (= res!2246327 (matchZipper!1177 lt!2163806 (t!374304 s!2326)))))

(declare-fun lt!2163990 () Unit!153250)

(assert (=> d!1703556 (= lt!2163990 (choose!39561 lt!2163806 lt!2163766 (t!374304 s!2326)))))

(assert (=> d!1703556 (= (lemmaZipperConcatMatchesSameAsBothZippers!170 lt!2163806 lt!2163766 (t!374304 s!2326)) lt!2163990)))

(declare-fun b!5296551 () Bool)

(assert (=> b!5296551 (= e!3292322 (matchZipper!1177 lt!2163766 (t!374304 s!2326)))))

(assert (= (and d!1703556 (not res!2246327)) b!5296551))

(declare-fun m!6334014 () Bool)

(assert (=> d!1703556 m!6334014))

(assert (=> d!1703556 m!6332944))

(declare-fun m!6334016 () Bool)

(assert (=> d!1703556 m!6334016))

(assert (=> b!5296551 m!6332900))

(assert (=> b!5295531 d!1703556))

(declare-fun d!1703558 () Bool)

(declare-fun c!919235 () Bool)

(assert (=> d!1703558 (= c!919235 (isEmpty!32934 (t!374304 s!2326)))))

(declare-fun e!3292323 () Bool)

(assert (=> d!1703558 (= (matchZipper!1177 (derivationStepZipper!1176 lt!2163773 (h!67423 s!2326)) (t!374304 s!2326)) e!3292323)))

(declare-fun b!5296552 () Bool)

(assert (=> b!5296552 (= e!3292323 (nullableZipper!1316 (derivationStepZipper!1176 lt!2163773 (h!67423 s!2326))))))

(declare-fun b!5296553 () Bool)

(assert (=> b!5296553 (= e!3292323 (matchZipper!1177 (derivationStepZipper!1176 (derivationStepZipper!1176 lt!2163773 (h!67423 s!2326)) (head!11350 (t!374304 s!2326))) (tail!10447 (t!374304 s!2326))))))

(assert (= (and d!1703558 c!919235) b!5296552))

(assert (= (and d!1703558 (not c!919235)) b!5296553))

(assert (=> d!1703558 m!6333180))

(assert (=> b!5296552 m!6332958))

(declare-fun m!6334018 () Bool)

(assert (=> b!5296552 m!6334018))

(assert (=> b!5296553 m!6333184))

(assert (=> b!5296553 m!6332958))

(assert (=> b!5296553 m!6333184))

(declare-fun m!6334020 () Bool)

(assert (=> b!5296553 m!6334020))

(assert (=> b!5296553 m!6333188))

(assert (=> b!5296553 m!6334020))

(assert (=> b!5296553 m!6333188))

(declare-fun m!6334022 () Bool)

(assert (=> b!5296553 m!6334022))

(assert (=> b!5295510 d!1703558))

(declare-fun bs!1228528 () Bool)

(declare-fun d!1703560 () Bool)

(assert (= bs!1228528 (and d!1703560 b!5295514)))

(declare-fun lambda!268611 () Int)

(assert (=> bs!1228528 (= lambda!268611 lambda!268492)))

(declare-fun bs!1228529 () Bool)

(assert (= bs!1228529 (and d!1703560 d!1703320)))

(assert (=> bs!1228529 (= lambda!268611 lambda!268538)))

(assert (=> d!1703560 true))

(assert (=> d!1703560 (= (derivationStepZipper!1176 lt!2163773 (h!67423 s!2326)) (flatMap!660 lt!2163773 lambda!268611))))

(declare-fun bs!1228530 () Bool)

(assert (= bs!1228530 d!1703560))

(declare-fun m!6334024 () Bool)

(assert (=> bs!1228530 m!6334024))

(assert (=> b!5295510 d!1703560))

(declare-fun b!5296561 () Bool)

(declare-fun e!3292329 () Bool)

(declare-fun tp!1477636 () Bool)

(assert (=> b!5296561 (= e!3292329 tp!1477636)))

(declare-fun e!3292328 () Bool)

(declare-fun b!5296560 () Bool)

(declare-fun tp!1477637 () Bool)

(assert (=> b!5296560 (= e!3292328 (and (inv!80579 (h!67424 (t!374305 zl!343))) e!3292329 tp!1477637))))

(assert (=> b!5295503 (= tp!1477566 e!3292328)))

(assert (= b!5296560 b!5296561))

(assert (= (and b!5295503 ((_ is Cons!60976) (t!374305 zl!343))) b!5296560))

(declare-fun m!6334026 () Bool)

(assert (=> b!5296560 m!6334026))

(declare-fun b!5296572 () Bool)

(declare-fun e!3292332 () Bool)

(assert (=> b!5296572 (= e!3292332 tp_is_empty!39119)))

(declare-fun b!5296575 () Bool)

(declare-fun tp!1477650 () Bool)

(declare-fun tp!1477651 () Bool)

(assert (=> b!5296575 (= e!3292332 (and tp!1477650 tp!1477651))))

(assert (=> b!5295513 (= tp!1477571 e!3292332)))

(declare-fun b!5296574 () Bool)

(declare-fun tp!1477652 () Bool)

(assert (=> b!5296574 (= e!3292332 tp!1477652)))

(declare-fun b!5296573 () Bool)

(declare-fun tp!1477648 () Bool)

(declare-fun tp!1477649 () Bool)

(assert (=> b!5296573 (= e!3292332 (and tp!1477648 tp!1477649))))

(assert (= (and b!5295513 ((_ is ElementMatch!14933) (regOne!30378 r!7292))) b!5296572))

(assert (= (and b!5295513 ((_ is Concat!23778) (regOne!30378 r!7292))) b!5296573))

(assert (= (and b!5295513 ((_ is Star!14933) (regOne!30378 r!7292))) b!5296574))

(assert (= (and b!5295513 ((_ is Union!14933) (regOne!30378 r!7292))) b!5296575))

(declare-fun b!5296576 () Bool)

(declare-fun e!3292333 () Bool)

(assert (=> b!5296576 (= e!3292333 tp_is_empty!39119)))

(declare-fun b!5296579 () Bool)

(declare-fun tp!1477655 () Bool)

(declare-fun tp!1477656 () Bool)

(assert (=> b!5296579 (= e!3292333 (and tp!1477655 tp!1477656))))

(assert (=> b!5295513 (= tp!1477565 e!3292333)))

(declare-fun b!5296578 () Bool)

(declare-fun tp!1477657 () Bool)

(assert (=> b!5296578 (= e!3292333 tp!1477657)))

(declare-fun b!5296577 () Bool)

(declare-fun tp!1477653 () Bool)

(declare-fun tp!1477654 () Bool)

(assert (=> b!5296577 (= e!3292333 (and tp!1477653 tp!1477654))))

(assert (= (and b!5295513 ((_ is ElementMatch!14933) (regTwo!30378 r!7292))) b!5296576))

(assert (= (and b!5295513 ((_ is Concat!23778) (regTwo!30378 r!7292))) b!5296577))

(assert (= (and b!5295513 ((_ is Star!14933) (regTwo!30378 r!7292))) b!5296578))

(assert (= (and b!5295513 ((_ is Union!14933) (regTwo!30378 r!7292))) b!5296579))

(declare-fun condSetEmpty!34007 () Bool)

(assert (=> setNonEmpty!34001 (= condSetEmpty!34007 (= setRest!34001 ((as const (Array Context!8634 Bool)) false)))))

(declare-fun setRes!34007 () Bool)

(assert (=> setNonEmpty!34001 (= tp!1477569 setRes!34007)))

(declare-fun setIsEmpty!34007 () Bool)

(assert (=> setIsEmpty!34007 setRes!34007))

(declare-fun tp!1477662 () Bool)

(declare-fun e!3292336 () Bool)

(declare-fun setElem!34007 () Context!8634)

(declare-fun setNonEmpty!34007 () Bool)

(assert (=> setNonEmpty!34007 (= setRes!34007 (and tp!1477662 (inv!80579 setElem!34007) e!3292336))))

(declare-fun setRest!34007 () (InoxSet Context!8634))

(assert (=> setNonEmpty!34007 (= setRest!34001 ((_ map or) (store ((as const (Array Context!8634 Bool)) false) setElem!34007 true) setRest!34007))))

(declare-fun b!5296584 () Bool)

(declare-fun tp!1477663 () Bool)

(assert (=> b!5296584 (= e!3292336 tp!1477663)))

(assert (= (and setNonEmpty!34001 condSetEmpty!34007) setIsEmpty!34007))

(assert (= (and setNonEmpty!34001 (not condSetEmpty!34007)) setNonEmpty!34007))

(assert (= setNonEmpty!34007 b!5296584))

(declare-fun m!6334028 () Bool)

(assert (=> setNonEmpty!34007 m!6334028))

(declare-fun b!5296585 () Bool)

(declare-fun e!3292337 () Bool)

(assert (=> b!5296585 (= e!3292337 tp_is_empty!39119)))

(declare-fun b!5296588 () Bool)

(declare-fun tp!1477666 () Bool)

(declare-fun tp!1477667 () Bool)

(assert (=> b!5296588 (= e!3292337 (and tp!1477666 tp!1477667))))

(assert (=> b!5295511 (= tp!1477572 e!3292337)))

(declare-fun b!5296587 () Bool)

(declare-fun tp!1477668 () Bool)

(assert (=> b!5296587 (= e!3292337 tp!1477668)))

(declare-fun b!5296586 () Bool)

(declare-fun tp!1477664 () Bool)

(declare-fun tp!1477665 () Bool)

(assert (=> b!5296586 (= e!3292337 (and tp!1477664 tp!1477665))))

(assert (= (and b!5295511 ((_ is ElementMatch!14933) (reg!15262 r!7292))) b!5296585))

(assert (= (and b!5295511 ((_ is Concat!23778) (reg!15262 r!7292))) b!5296586))

(assert (= (and b!5295511 ((_ is Star!14933) (reg!15262 r!7292))) b!5296587))

(assert (= (and b!5295511 ((_ is Union!14933) (reg!15262 r!7292))) b!5296588))

(declare-fun b!5296593 () Bool)

(declare-fun e!3292340 () Bool)

(declare-fun tp!1477673 () Bool)

(declare-fun tp!1477674 () Bool)

(assert (=> b!5296593 (= e!3292340 (and tp!1477673 tp!1477674))))

(assert (=> b!5295506 (= tp!1477568 e!3292340)))

(assert (= (and b!5295506 ((_ is Cons!60974) (exprs!4817 setElem!34001))) b!5296593))

(declare-fun b!5296594 () Bool)

(declare-fun e!3292341 () Bool)

(assert (=> b!5296594 (= e!3292341 tp_is_empty!39119)))

(declare-fun b!5296597 () Bool)

(declare-fun tp!1477677 () Bool)

(declare-fun tp!1477678 () Bool)

(assert (=> b!5296597 (= e!3292341 (and tp!1477677 tp!1477678))))

(assert (=> b!5295495 (= tp!1477564 e!3292341)))

(declare-fun b!5296596 () Bool)

(declare-fun tp!1477679 () Bool)

(assert (=> b!5296596 (= e!3292341 tp!1477679)))

(declare-fun b!5296595 () Bool)

(declare-fun tp!1477675 () Bool)

(declare-fun tp!1477676 () Bool)

(assert (=> b!5296595 (= e!3292341 (and tp!1477675 tp!1477676))))

(assert (= (and b!5295495 ((_ is ElementMatch!14933) (regOne!30379 r!7292))) b!5296594))

(assert (= (and b!5295495 ((_ is Concat!23778) (regOne!30379 r!7292))) b!5296595))

(assert (= (and b!5295495 ((_ is Star!14933) (regOne!30379 r!7292))) b!5296596))

(assert (= (and b!5295495 ((_ is Union!14933) (regOne!30379 r!7292))) b!5296597))

(declare-fun b!5296598 () Bool)

(declare-fun e!3292342 () Bool)

(assert (=> b!5296598 (= e!3292342 tp_is_empty!39119)))

(declare-fun b!5296601 () Bool)

(declare-fun tp!1477682 () Bool)

(declare-fun tp!1477683 () Bool)

(assert (=> b!5296601 (= e!3292342 (and tp!1477682 tp!1477683))))

(assert (=> b!5295495 (= tp!1477570 e!3292342)))

(declare-fun b!5296600 () Bool)

(declare-fun tp!1477684 () Bool)

(assert (=> b!5296600 (= e!3292342 tp!1477684)))

(declare-fun b!5296599 () Bool)

(declare-fun tp!1477680 () Bool)

(declare-fun tp!1477681 () Bool)

(assert (=> b!5296599 (= e!3292342 (and tp!1477680 tp!1477681))))

(assert (= (and b!5295495 ((_ is ElementMatch!14933) (regTwo!30379 r!7292))) b!5296598))

(assert (= (and b!5295495 ((_ is Concat!23778) (regTwo!30379 r!7292))) b!5296599))

(assert (= (and b!5295495 ((_ is Star!14933) (regTwo!30379 r!7292))) b!5296600))

(assert (= (and b!5295495 ((_ is Union!14933) (regTwo!30379 r!7292))) b!5296601))

(declare-fun b!5296606 () Bool)

(declare-fun e!3292345 () Bool)

(declare-fun tp!1477687 () Bool)

(assert (=> b!5296606 (= e!3292345 (and tp_is_empty!39119 tp!1477687))))

(assert (=> b!5295509 (= tp!1477573 e!3292345)))

(assert (= (and b!5295509 ((_ is Cons!60975) (t!374304 s!2326))) b!5296606))

(declare-fun b!5296607 () Bool)

(declare-fun e!3292346 () Bool)

(declare-fun tp!1477688 () Bool)

(declare-fun tp!1477689 () Bool)

(assert (=> b!5296607 (= e!3292346 (and tp!1477688 tp!1477689))))

(assert (=> b!5295524 (= tp!1477567 e!3292346)))

(assert (= (and b!5295524 ((_ is Cons!60974) (exprs!4817 (h!67424 zl!343)))) b!5296607))

(declare-fun b_lambda!204181 () Bool)

(assert (= b_lambda!204157 (or b!5295514 b_lambda!204181)))

(declare-fun bs!1228531 () Bool)

(declare-fun d!1703562 () Bool)

(assert (= bs!1228531 (and d!1703562 b!5295514)))

(assert (=> bs!1228531 (= (dynLambda!24110 lambda!268492 lt!2163791) (derivationStepZipperUp!305 lt!2163791 (h!67423 s!2326)))))

(assert (=> bs!1228531 m!6332874))

(assert (=> d!1703312 d!1703562))

(declare-fun b_lambda!204183 () Bool)

(assert (= b_lambda!204161 (or b!5295514 b_lambda!204183)))

(declare-fun bs!1228532 () Bool)

(declare-fun d!1703564 () Bool)

(assert (= bs!1228532 (and d!1703564 b!5295514)))

(assert (=> bs!1228532 (= (dynLambda!24110 lambda!268492 lt!2163790) (derivationStepZipperUp!305 lt!2163790 (h!67423 s!2326)))))

(assert (=> bs!1228532 m!6332858))

(assert (=> d!1703340 d!1703564))

(declare-fun b_lambda!204185 () Bool)

(assert (= b_lambda!204179 (or b!5295514 b_lambda!204185)))

(declare-fun bs!1228533 () Bool)

(declare-fun d!1703566 () Bool)

(assert (= bs!1228533 (and d!1703566 b!5295514)))

(assert (=> bs!1228533 (= (dynLambda!24110 lambda!268492 (h!67424 zl!343)) (derivationStepZipperUp!305 (h!67424 zl!343) (h!67423 s!2326)))))

(assert (=> bs!1228533 m!6332906))

(assert (=> d!1703476 d!1703566))

(declare-fun b_lambda!204187 () Bool)

(assert (= b_lambda!204177 (or b!5295496 b_lambda!204187)))

(declare-fun bs!1228534 () Bool)

(declare-fun d!1703568 () Bool)

(assert (= bs!1228534 (and d!1703568 b!5295496)))

(assert (=> bs!1228534 (= (dynLambda!24112 lambda!268497 (h!67422 lt!2163792)) (validRegex!6669 (h!67422 lt!2163792)))))

(declare-fun m!6334030 () Bool)

(assert (=> bs!1228534 m!6334030))

(assert (=> b!5296273 d!1703568))

(check-sat (not d!1703532) (not b!5296426) (not b!5296043) (not b!5296578) (not d!1703320) (not b!5296595) (not b!5296606) (not d!1703332) (not b!5296550) (not bm!377461) (not d!1703450) (not b!5296419) (not d!1703470) (not b!5296339) (not b!5296298) (not b!5295896) (not b!5296441) (not d!1703494) (not bm!377468) (not d!1703510) (not b!5296498) (not d!1703542) (not b!5296552) (not b!5296465) (not b!5296599) (not b!5296372) (not b!5295696) (not b!5296048) (not b!5295866) (not d!1703548) (not b!5296383) (not b!5296507) (not b!5295899) (not b!5295895) (not d!1703372) (not d!1703334) (not b!5296018) (not d!1703278) (not d!1703302) (not b!5296423) (not b!5296456) (not b!5295898) (not bm!377469) (not b_lambda!204181) (not b!5296440) (not bm!377457) (not setNonEmpty!34007) (not b!5295964) (not bm!377527) (not b!5296474) (not b!5295669) (not b!5296384) (not d!1703508) (not b!5296586) (not b!5296015) (not b!5296497) (not b!5296466) (not b!5296579) (not b!5296431) (not bm!377533) (not b!5296295) (not b!5296477) (not d!1703256) (not d!1703524) (not d!1703538) (not b!5295801) (not b!5296072) (not b!5295834) (not b!5296334) (not b!5295897) (not b!5296493) (not bm!377541) (not d!1703516) (not b!5295833) (not b!5296156) (not b!5296491) (not b_lambda!204187) (not d!1703504) (not b!5296504) (not bm!377538) (not b!5296276) (not b!5296574) (not d!1703506) (not d!1703514) (not b!5296596) (not d!1703368) (not b!5296154) (not b!5296415) (not d!1703512) (not b!5296297) (not b!5296575) (not b!5296416) (not b!5296021) (not b!5296017) (not b!5296502) tp_is_empty!39119 (not b!5296607) (not bm!377542) (not b!5296417) (not b!5296547) (not d!1703498) (not b!5295667) (not b!5295971) (not d!1703526) (not b!5296486) (not bm!377455) (not b!5296509) (not bs!1228534) (not b!5296500) (not b!5295831) (not d!1703534) (not b!5295789) (not b!5296588) (not b!5295800) (not d!1703556) (not b!5296413) (not b!5296514) (not bm!377519) (not bm!377524) (not d!1703530) (not d!1703560) (not b!5296472) (not d!1703552) (not b!5296473) (not d!1703480) (not b!5296428) (not b!5296577) (not bm!377460) (not b!5295832) (not b!5296282) (not d!1703250) (not d!1703458) (not d!1703392) (not b!5296481) (not bm!377536) (not b!5296561) (not b!5295830) (not b!5296593) (not d!1703340) (not b!5296374) (not b!5296516) (not b!5296560) (not b!5295867) (not bm!377526) (not b!5296449) (not b!5296454) (not b!5296429) (not d!1703282) (not bm!377523) (not b!5296510) (not d!1703520) (not b!5295802) (not b!5296476) (not d!1703482) (not b!5296409) (not d!1703386) (not b!5296047) (not b!5296508) (not b!5296020) (not d!1703416) (not bm!377532) (not d!1703452) (not d!1703476) (not d!1703378) (not d!1703500) (not d!1703546) (not b!5296277) (not b!5296505) (not d!1703540) (not d!1703492) (not d!1703336) (not b!5296019) (not d!1703410) (not b!5296074) (not d!1703536) (not b!5296378) (not b!5296549) (not d!1703558) (not b!5295695) (not b!5296519) (not bm!377463) (not d!1703554) (not d!1703502) (not b!5296494) (not b!5296587) (not b!5296161) (not bs!1228533) (not b!5296479) (not b!5296436) (not d!1703318) (not b!5296517) (not b!5296412) (not d!1703312) (not d!1703330) (not bs!1228531) (not b!5296157) (not b!5295973) (not b!5296408) (not bm!377520) (not d!1703454) (not bm!377549) (not b!5296055) (not b!5296281) (not b!5295960) (not b!5295885) (not b!5296427) (not bs!1228532) (not b!5296159) (not d!1703544) (not b!5296461) (not bm!377551) (not b_lambda!204185) (not b!5296573) (not b!5296597) (not bm!377539) (not b!5296553) (not b!5296379) (not b!5296444) (not d!1703522) (not b!5296468) (not b!5296406) (not b!5296418) (not b!5296600) (not d!1703304) (not b!5296538) (not b!5296160) (not d!1703496) (not b!5296584) (not b!5296513) (not b!5296424) (not b!5296024) (not bm!377454) (not b!5296495) (not b!5296601) (not b_lambda!204183) (not b!5296551) (not bm!377537) (not b!5296512) (not b!5296470) (not b!5296435) (not bm!377540) (not b!5296274) (not d!1703474) (not b!5296460) (not b!5296469) (not b!5296421) (not b!5295886) (not b!5296410) (not b!5296548))
(check-sat)
