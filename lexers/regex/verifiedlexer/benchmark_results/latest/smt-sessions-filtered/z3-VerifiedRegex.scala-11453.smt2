; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!619588 () Bool)

(assert start!619588)

(declare-fun b!6216632 () Bool)

(assert (=> b!6216632 true))

(assert (=> b!6216632 true))

(declare-fun lambda!339712 () Int)

(declare-fun lambda!339711 () Int)

(assert (=> b!6216632 (not (= lambda!339712 lambda!339711))))

(assert (=> b!6216632 true))

(assert (=> b!6216632 true))

(declare-fun b!6216622 () Bool)

(assert (=> b!6216622 true))

(declare-fun b!6216615 () Bool)

(declare-fun res!2569746 () Bool)

(declare-fun e!3784409 () Bool)

(assert (=> b!6216615 (=> res!2569746 e!3784409)))

(declare-datatypes ((C!32576 0))(
  ( (C!32577 (val!25990 Int)) )
))
(declare-datatypes ((Regex!16153 0))(
  ( (ElementMatch!16153 (c!1122921 C!32576)) (Concat!24998 (regOne!32818 Regex!16153) (regTwo!32818 Regex!16153)) (EmptyExpr!16153) (Star!16153 (reg!16482 Regex!16153)) (EmptyLang!16153) (Union!16153 (regOne!32819 Regex!16153) (regTwo!32819 Regex!16153)) )
))
(declare-datatypes ((List!64758 0))(
  ( (Nil!64634) (Cons!64634 (h!71082 Regex!16153) (t!378286 List!64758)) )
))
(declare-datatypes ((Context!11074 0))(
  ( (Context!11075 (exprs!6037 List!64758)) )
))
(declare-datatypes ((List!64759 0))(
  ( (Nil!64635) (Cons!64635 (h!71083 Context!11074) (t!378287 List!64759)) )
))
(declare-fun zl!343 () List!64759)

(declare-fun isEmpty!36638 (List!64758) Bool)

(assert (=> b!6216615 (= res!2569746 (isEmpty!36638 (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6216616 () Bool)

(declare-fun e!3784412 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2344412 () (InoxSet Context!11074))

(declare-datatypes ((List!64760 0))(
  ( (Nil!64636) (Cons!64636 (h!71084 C!32576) (t!378288 List!64760)) )
))
(declare-fun s!2326 () List!64760)

(declare-fun matchZipper!2165 ((InoxSet Context!11074) List!64760) Bool)

(assert (=> b!6216616 (= e!3784412 (matchZipper!2165 lt!2344412 (t!378288 s!2326)))))

(declare-fun b!6216617 () Bool)

(declare-fun e!3784406 () Bool)

(declare-fun lt!2344399 () Context!11074)

(declare-fun inv!83629 (Context!11074) Bool)

(assert (=> b!6216617 (= e!3784406 (inv!83629 lt!2344399))))

(declare-fun lt!2344404 () (InoxSet Context!11074))

(declare-fun lambda!339713 () Int)

(declare-fun lt!2344414 () Context!11074)

(declare-fun flatMap!1658 ((InoxSet Context!11074) Int) (InoxSet Context!11074))

(declare-fun derivationStepZipperUp!1327 (Context!11074 C!32576) (InoxSet Context!11074))

(assert (=> b!6216617 (= (flatMap!1658 lt!2344404 lambda!339713) (derivationStepZipperUp!1327 lt!2344414 (h!71084 s!2326)))))

(declare-datatypes ((Unit!157943 0))(
  ( (Unit!157944) )
))
(declare-fun lt!2344397 () Unit!157943)

(declare-fun lemmaFlatMapOnSingletonSet!1184 ((InoxSet Context!11074) Context!11074 Int) Unit!157943)

(assert (=> b!6216617 (= lt!2344397 (lemmaFlatMapOnSingletonSet!1184 lt!2344404 lt!2344414 lambda!339713))))

(declare-fun lt!2344407 () (InoxSet Context!11074))

(assert (=> b!6216617 (= lt!2344407 (derivationStepZipperUp!1327 lt!2344414 (h!71084 s!2326)))))

(assert (=> b!6216617 (= lt!2344404 (store ((as const (Array Context!11074 Bool)) false) lt!2344414 true))))

(declare-fun r!7292 () Regex!16153)

(declare-fun lt!2344409 () List!64758)

(assert (=> b!6216617 (= lt!2344414 (Context!11075 (Cons!64634 (regOne!32818 (regOne!32818 r!7292)) lt!2344409)))))

(declare-fun b!6216618 () Bool)

(declare-fun e!3784415 () Bool)

(declare-fun e!3784407 () Bool)

(assert (=> b!6216618 (= e!3784415 (not e!3784407))))

(declare-fun res!2569745 () Bool)

(assert (=> b!6216618 (=> res!2569745 e!3784407)))

(get-info :version)

(assert (=> b!6216618 (= res!2569745 (not ((_ is Cons!64635) zl!343)))))

(declare-fun lt!2344398 () Bool)

(declare-fun matchRSpec!3254 (Regex!16153 List!64760) Bool)

(assert (=> b!6216618 (= lt!2344398 (matchRSpec!3254 r!7292 s!2326))))

(declare-fun matchR!8336 (Regex!16153 List!64760) Bool)

(assert (=> b!6216618 (= lt!2344398 (matchR!8336 r!7292 s!2326))))

(declare-fun lt!2344411 () Unit!157943)

(declare-fun mainMatchTheorem!3254 (Regex!16153 List!64760) Unit!157943)

(assert (=> b!6216618 (= lt!2344411 (mainMatchTheorem!3254 r!7292 s!2326))))

(declare-fun b!6216619 () Bool)

(declare-fun e!3784416 () Bool)

(assert (=> b!6216619 (= e!3784416 e!3784406)))

(declare-fun res!2569744 () Bool)

(assert (=> b!6216619 (=> res!2569744 e!3784406)))

(declare-fun e!3784413 () Bool)

(assert (=> b!6216619 (= res!2569744 e!3784413)))

(declare-fun res!2569733 () Bool)

(assert (=> b!6216619 (=> (not res!2569733) (not e!3784413))))

(declare-fun lt!2344416 () (InoxSet Context!11074))

(declare-fun lt!2344406 () Bool)

(assert (=> b!6216619 (= res!2569733 (not (= (matchZipper!2165 lt!2344416 (t!378288 s!2326)) lt!2344406)))))

(declare-fun lt!2344410 () (InoxSet Context!11074))

(declare-fun e!3784408 () Bool)

(assert (=> b!6216619 (= (matchZipper!2165 lt!2344410 (t!378288 s!2326)) e!3784408)))

(declare-fun res!2569740 () Bool)

(assert (=> b!6216619 (=> res!2569740 e!3784408)))

(assert (=> b!6216619 (= res!2569740 lt!2344406)))

(declare-fun lt!2344417 () (InoxSet Context!11074))

(assert (=> b!6216619 (= lt!2344406 (matchZipper!2165 lt!2344417 (t!378288 s!2326)))))

(declare-fun lt!2344396 () (InoxSet Context!11074))

(declare-fun lt!2344403 () Unit!157943)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!984 ((InoxSet Context!11074) (InoxSet Context!11074) List!64760) Unit!157943)

(assert (=> b!6216619 (= lt!2344403 (lemmaZipperConcatMatchesSameAsBothZippers!984 lt!2344417 lt!2344396 (t!378288 s!2326)))))

(declare-fun b!6216620 () Bool)

(declare-fun res!2569743 () Bool)

(assert (=> b!6216620 (=> res!2569743 e!3784407)))

(declare-fun isEmpty!36639 (List!64759) Bool)

(assert (=> b!6216620 (= res!2569743 (not (isEmpty!36639 (t!378287 zl!343))))))

(declare-fun b!6216621 () Bool)

(declare-fun e!3784417 () Bool)

(assert (=> b!6216621 (= e!3784417 e!3784416)))

(declare-fun res!2569738 () Bool)

(assert (=> b!6216621 (=> res!2569738 e!3784416)))

(assert (=> b!6216621 (= res!2569738 (not (= lt!2344416 lt!2344410)))))

(assert (=> b!6216621 (= lt!2344410 ((_ map or) lt!2344417 lt!2344396))))

(declare-fun lt!2344415 () Context!11074)

(declare-fun derivationStepZipperDown!1401 (Regex!16153 Context!11074 C!32576) (InoxSet Context!11074))

(assert (=> b!6216621 (= lt!2344396 (derivationStepZipperDown!1401 (regTwo!32818 (regOne!32818 r!7292)) lt!2344415 (h!71084 s!2326)))))

(assert (=> b!6216621 (= lt!2344417 (derivationStepZipperDown!1401 (regOne!32818 (regOne!32818 r!7292)) lt!2344399 (h!71084 s!2326)))))

(assert (=> b!6216621 (= lt!2344399 (Context!11075 lt!2344409))))

(assert (=> b!6216621 (= lt!2344409 (Cons!64634 (regTwo!32818 (regOne!32818 r!7292)) (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun tp!1734436 () Bool)

(declare-fun setElem!42210 () Context!11074)

(declare-fun setNonEmpty!42210 () Bool)

(declare-fun e!3784404 () Bool)

(declare-fun setRes!42210 () Bool)

(assert (=> setNonEmpty!42210 (= setRes!42210 (and tp!1734436 (inv!83629 setElem!42210) e!3784404))))

(declare-fun z!1189 () (InoxSet Context!11074))

(declare-fun setRest!42210 () (InoxSet Context!11074))

(assert (=> setNonEmpty!42210 (= z!1189 ((_ map or) (store ((as const (Array Context!11074 Bool)) false) setElem!42210 true) setRest!42210))))

(assert (=> b!6216622 (= e!3784409 e!3784417)))

(declare-fun res!2569750 () Bool)

(assert (=> b!6216622 (=> res!2569750 e!3784417)))

(assert (=> b!6216622 (= res!2569750 (or (and ((_ is ElementMatch!16153) (regOne!32818 r!7292)) (= (c!1122921 (regOne!32818 r!7292)) (h!71084 s!2326))) ((_ is Union!16153) (regOne!32818 r!7292)) (not ((_ is Concat!24998) (regOne!32818 r!7292)))))))

(declare-fun lt!2344402 () Unit!157943)

(declare-fun e!3784410 () Unit!157943)

(assert (=> b!6216622 (= lt!2344402 e!3784410)))

(declare-fun c!1122920 () Bool)

(declare-fun nullable!6146 (Regex!16153) Bool)

(assert (=> b!6216622 (= c!1122920 (nullable!6146 (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> b!6216622 (= (flatMap!1658 z!1189 lambda!339713) (derivationStepZipperUp!1327 (h!71083 zl!343) (h!71084 s!2326)))))

(declare-fun lt!2344408 () Unit!157943)

(assert (=> b!6216622 (= lt!2344408 (lemmaFlatMapOnSingletonSet!1184 z!1189 (h!71083 zl!343) lambda!339713))))

(assert (=> b!6216622 (= lt!2344412 (derivationStepZipperUp!1327 lt!2344415 (h!71084 s!2326)))))

(assert (=> b!6216622 (= lt!2344416 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (h!71083 zl!343))) lt!2344415 (h!71084 s!2326)))))

(assert (=> b!6216622 (= lt!2344415 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun lt!2344418 () (InoxSet Context!11074))

(assert (=> b!6216622 (= lt!2344418 (derivationStepZipperUp!1327 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))) (h!71084 s!2326)))))

(declare-fun b!6216623 () Bool)

(declare-fun Unit!157945 () Unit!157943)

(assert (=> b!6216623 (= e!3784410 Unit!157945)))

(declare-fun lt!2344401 () Unit!157943)

(assert (=> b!6216623 (= lt!2344401 (lemmaZipperConcatMatchesSameAsBothZippers!984 lt!2344416 lt!2344412 (t!378288 s!2326)))))

(declare-fun res!2569736 () Bool)

(assert (=> b!6216623 (= res!2569736 (matchZipper!2165 lt!2344416 (t!378288 s!2326)))))

(assert (=> b!6216623 (=> res!2569736 e!3784412)))

(assert (=> b!6216623 (= (matchZipper!2165 ((_ map or) lt!2344416 lt!2344412) (t!378288 s!2326)) e!3784412)))

(declare-fun b!6216624 () Bool)

(declare-fun e!3784414 () Bool)

(declare-fun tp!1734438 () Bool)

(assert (=> b!6216624 (= e!3784414 tp!1734438)))

(declare-fun e!3784411 () Bool)

(declare-fun tp!1734433 () Bool)

(declare-fun e!3784405 () Bool)

(declare-fun b!6216625 () Bool)

(assert (=> b!6216625 (= e!3784411 (and (inv!83629 (h!71083 zl!343)) e!3784405 tp!1734433))))

(declare-fun b!6216626 () Bool)

(declare-fun res!2569737 () Bool)

(assert (=> b!6216626 (=> (not res!2569737) (not e!3784415))))

(declare-fun toList!9937 ((InoxSet Context!11074)) List!64759)

(assert (=> b!6216626 (= res!2569737 (= (toList!9937 z!1189) zl!343))))

(declare-fun b!6216627 () Bool)

(declare-fun tp!1734440 () Bool)

(declare-fun tp!1734442 () Bool)

(assert (=> b!6216627 (= e!3784414 (and tp!1734440 tp!1734442))))

(declare-fun b!6216628 () Bool)

(declare-fun res!2569734 () Bool)

(assert (=> b!6216628 (=> res!2569734 e!3784407)))

(assert (=> b!6216628 (= res!2569734 (not ((_ is Cons!64634) (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6216629 () Bool)

(declare-fun Unit!157946 () Unit!157943)

(assert (=> b!6216629 (= e!3784410 Unit!157946)))

(declare-fun setIsEmpty!42210 () Bool)

(assert (=> setIsEmpty!42210 setRes!42210))

(declare-fun b!6216630 () Bool)

(declare-fun tp_is_empty!41559 () Bool)

(assert (=> b!6216630 (= e!3784414 tp_is_empty!41559)))

(declare-fun b!6216631 () Bool)

(declare-fun res!2569741 () Bool)

(assert (=> b!6216631 (=> res!2569741 e!3784407)))

(declare-fun generalisedUnion!1997 (List!64758) Regex!16153)

(declare-fun unfocusZipperList!1574 (List!64759) List!64758)

(assert (=> b!6216631 (= res!2569741 (not (= r!7292 (generalisedUnion!1997 (unfocusZipperList!1574 zl!343)))))))

(assert (=> b!6216632 (= e!3784407 e!3784409)))

(declare-fun res!2569739 () Bool)

(assert (=> b!6216632 (=> res!2569739 e!3784409)))

(declare-fun lt!2344400 () Bool)

(assert (=> b!6216632 (= res!2569739 (or (not (= lt!2344398 lt!2344400)) ((_ is Nil!64636) s!2326)))))

(declare-fun Exists!3223 (Int) Bool)

(assert (=> b!6216632 (= (Exists!3223 lambda!339711) (Exists!3223 lambda!339712))))

(declare-fun lt!2344405 () Unit!157943)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1760 (Regex!16153 Regex!16153 List!64760) Unit!157943)

(assert (=> b!6216632 (= lt!2344405 (lemmaExistCutMatchRandMatchRSpecEquivalent!1760 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326))))

(assert (=> b!6216632 (= lt!2344400 (Exists!3223 lambda!339711))))

(declare-datatypes ((tuple2!66264 0))(
  ( (tuple2!66265 (_1!36435 List!64760) (_2!36435 List!64760)) )
))
(declare-datatypes ((Option!16044 0))(
  ( (None!16043) (Some!16043 (v!52189 tuple2!66264)) )
))
(declare-fun isDefined!12747 (Option!16044) Bool)

(declare-fun findConcatSeparation!2458 (Regex!16153 Regex!16153 List!64760 List!64760 List!64760) Option!16044)

(assert (=> b!6216632 (= lt!2344400 (isDefined!12747 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326)))))

(declare-fun lt!2344413 () Unit!157943)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2222 (Regex!16153 Regex!16153 List!64760) Unit!157943)

(assert (=> b!6216632 (= lt!2344413 (lemmaFindConcatSeparationEquivalentToExists!2222 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326))))

(declare-fun b!6216633 () Bool)

(declare-fun e!3784403 () Bool)

(declare-fun tp!1734441 () Bool)

(assert (=> b!6216633 (= e!3784403 (and tp_is_empty!41559 tp!1734441))))

(declare-fun b!6216634 () Bool)

(declare-fun res!2569749 () Bool)

(assert (=> b!6216634 (=> res!2569749 e!3784417)))

(assert (=> b!6216634 (= res!2569749 (not (nullable!6146 (regOne!32818 (regOne!32818 r!7292)))))))

(declare-fun b!6216635 () Bool)

(declare-fun tp!1734435 () Bool)

(declare-fun tp!1734437 () Bool)

(assert (=> b!6216635 (= e!3784414 (and tp!1734435 tp!1734437))))

(declare-fun b!6216636 () Bool)

(assert (=> b!6216636 (= e!3784413 (not (matchZipper!2165 lt!2344396 (t!378288 s!2326))))))

(declare-fun b!6216637 () Bool)

(declare-fun tp!1734439 () Bool)

(assert (=> b!6216637 (= e!3784405 tp!1734439)))

(declare-fun res!2569735 () Bool)

(assert (=> start!619588 (=> (not res!2569735) (not e!3784415))))

(declare-fun validRegex!7889 (Regex!16153) Bool)

(assert (=> start!619588 (= res!2569735 (validRegex!7889 r!7292))))

(assert (=> start!619588 e!3784415))

(assert (=> start!619588 e!3784414))

(declare-fun condSetEmpty!42210 () Bool)

(assert (=> start!619588 (= condSetEmpty!42210 (= z!1189 ((as const (Array Context!11074 Bool)) false)))))

(assert (=> start!619588 setRes!42210))

(assert (=> start!619588 e!3784411))

(assert (=> start!619588 e!3784403))

(declare-fun b!6216638 () Bool)

(declare-fun tp!1734434 () Bool)

(assert (=> b!6216638 (= e!3784404 tp!1734434)))

(declare-fun b!6216639 () Bool)

(assert (=> b!6216639 (= e!3784408 (matchZipper!2165 lt!2344396 (t!378288 s!2326)))))

(declare-fun b!6216640 () Bool)

(declare-fun res!2569748 () Bool)

(assert (=> b!6216640 (=> (not res!2569748) (not e!3784415))))

(declare-fun unfocusZipper!1895 (List!64759) Regex!16153)

(assert (=> b!6216640 (= res!2569748 (= r!7292 (unfocusZipper!1895 zl!343)))))

(declare-fun b!6216641 () Bool)

(declare-fun res!2569742 () Bool)

(assert (=> b!6216641 (=> res!2569742 e!3784407)))

(declare-fun generalisedConcat!1750 (List!64758) Regex!16153)

(assert (=> b!6216641 (= res!2569742 (not (= r!7292 (generalisedConcat!1750 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6216642 () Bool)

(declare-fun res!2569747 () Bool)

(assert (=> b!6216642 (=> res!2569747 e!3784407)))

(assert (=> b!6216642 (= res!2569747 (or ((_ is EmptyExpr!16153) r!7292) ((_ is EmptyLang!16153) r!7292) ((_ is ElementMatch!16153) r!7292) ((_ is Union!16153) r!7292) (not ((_ is Concat!24998) r!7292))))))

(assert (= (and start!619588 res!2569735) b!6216626))

(assert (= (and b!6216626 res!2569737) b!6216640))

(assert (= (and b!6216640 res!2569748) b!6216618))

(assert (= (and b!6216618 (not res!2569745)) b!6216620))

(assert (= (and b!6216620 (not res!2569743)) b!6216641))

(assert (= (and b!6216641 (not res!2569742)) b!6216628))

(assert (= (and b!6216628 (not res!2569734)) b!6216631))

(assert (= (and b!6216631 (not res!2569741)) b!6216642))

(assert (= (and b!6216642 (not res!2569747)) b!6216632))

(assert (= (and b!6216632 (not res!2569739)) b!6216615))

(assert (= (and b!6216615 (not res!2569746)) b!6216622))

(assert (= (and b!6216622 c!1122920) b!6216623))

(assert (= (and b!6216622 (not c!1122920)) b!6216629))

(assert (= (and b!6216623 (not res!2569736)) b!6216616))

(assert (= (and b!6216622 (not res!2569750)) b!6216634))

(assert (= (and b!6216634 (not res!2569749)) b!6216621))

(assert (= (and b!6216621 (not res!2569738)) b!6216619))

(assert (= (and b!6216619 (not res!2569740)) b!6216639))

(assert (= (and b!6216619 res!2569733) b!6216636))

(assert (= (and b!6216619 (not res!2569744)) b!6216617))

(assert (= (and start!619588 ((_ is ElementMatch!16153) r!7292)) b!6216630))

(assert (= (and start!619588 ((_ is Concat!24998) r!7292)) b!6216627))

(assert (= (and start!619588 ((_ is Star!16153) r!7292)) b!6216624))

(assert (= (and start!619588 ((_ is Union!16153) r!7292)) b!6216635))

(assert (= (and start!619588 condSetEmpty!42210) setIsEmpty!42210))

(assert (= (and start!619588 (not condSetEmpty!42210)) setNonEmpty!42210))

(assert (= setNonEmpty!42210 b!6216638))

(assert (= b!6216625 b!6216637))

(assert (= (and start!619588 ((_ is Cons!64635) zl!343)) b!6216625))

(assert (= (and start!619588 ((_ is Cons!64636) s!2326)) b!6216633))

(declare-fun m!7045266 () Bool)

(assert (=> b!6216622 m!7045266))

(declare-fun m!7045268 () Bool)

(assert (=> b!6216622 m!7045268))

(declare-fun m!7045270 () Bool)

(assert (=> b!6216622 m!7045270))

(declare-fun m!7045272 () Bool)

(assert (=> b!6216622 m!7045272))

(declare-fun m!7045274 () Bool)

(assert (=> b!6216622 m!7045274))

(declare-fun m!7045276 () Bool)

(assert (=> b!6216622 m!7045276))

(declare-fun m!7045278 () Bool)

(assert (=> b!6216622 m!7045278))

(declare-fun m!7045280 () Bool)

(assert (=> b!6216639 m!7045280))

(declare-fun m!7045282 () Bool)

(assert (=> b!6216621 m!7045282))

(declare-fun m!7045284 () Bool)

(assert (=> b!6216621 m!7045284))

(declare-fun m!7045286 () Bool)

(assert (=> b!6216620 m!7045286))

(declare-fun m!7045288 () Bool)

(assert (=> b!6216616 m!7045288))

(declare-fun m!7045290 () Bool)

(assert (=> b!6216618 m!7045290))

(declare-fun m!7045292 () Bool)

(assert (=> b!6216618 m!7045292))

(declare-fun m!7045294 () Bool)

(assert (=> b!6216618 m!7045294))

(assert (=> b!6216636 m!7045280))

(declare-fun m!7045296 () Bool)

(assert (=> b!6216640 m!7045296))

(declare-fun m!7045298 () Bool)

(assert (=> b!6216632 m!7045298))

(declare-fun m!7045300 () Bool)

(assert (=> b!6216632 m!7045300))

(declare-fun m!7045302 () Bool)

(assert (=> b!6216632 m!7045302))

(assert (=> b!6216632 m!7045302))

(declare-fun m!7045304 () Bool)

(assert (=> b!6216632 m!7045304))

(declare-fun m!7045306 () Bool)

(assert (=> b!6216632 m!7045306))

(assert (=> b!6216632 m!7045298))

(declare-fun m!7045308 () Bool)

(assert (=> b!6216632 m!7045308))

(declare-fun m!7045310 () Bool)

(assert (=> start!619588 m!7045310))

(declare-fun m!7045312 () Bool)

(assert (=> b!6216623 m!7045312))

(declare-fun m!7045314 () Bool)

(assert (=> b!6216623 m!7045314))

(declare-fun m!7045316 () Bool)

(assert (=> b!6216623 m!7045316))

(declare-fun m!7045318 () Bool)

(assert (=> b!6216617 m!7045318))

(declare-fun m!7045320 () Bool)

(assert (=> b!6216617 m!7045320))

(declare-fun m!7045322 () Bool)

(assert (=> b!6216617 m!7045322))

(declare-fun m!7045324 () Bool)

(assert (=> b!6216617 m!7045324))

(declare-fun m!7045326 () Bool)

(assert (=> b!6216617 m!7045326))

(declare-fun m!7045328 () Bool)

(assert (=> b!6216634 m!7045328))

(assert (=> b!6216619 m!7045314))

(declare-fun m!7045330 () Bool)

(assert (=> b!6216619 m!7045330))

(declare-fun m!7045332 () Bool)

(assert (=> b!6216619 m!7045332))

(declare-fun m!7045334 () Bool)

(assert (=> b!6216619 m!7045334))

(declare-fun m!7045336 () Bool)

(assert (=> b!6216631 m!7045336))

(assert (=> b!6216631 m!7045336))

(declare-fun m!7045338 () Bool)

(assert (=> b!6216631 m!7045338))

(declare-fun m!7045340 () Bool)

(assert (=> b!6216641 m!7045340))

(declare-fun m!7045342 () Bool)

(assert (=> b!6216625 m!7045342))

(declare-fun m!7045344 () Bool)

(assert (=> b!6216626 m!7045344))

(declare-fun m!7045346 () Bool)

(assert (=> b!6216615 m!7045346))

(declare-fun m!7045348 () Bool)

(assert (=> setNonEmpty!42210 m!7045348))

(check-sat tp_is_empty!41559 (not b!6216636) (not b!6216616) (not b!6216620) (not b!6216623) (not b!6216618) (not b!6216626) (not b!6216639) (not setNonEmpty!42210) (not b!6216631) (not b!6216627) (not b!6216637) (not b!6216633) (not b!6216625) (not b!6216619) (not b!6216632) (not b!6216621) (not b!6216615) (not start!619588) (not b!6216624) (not b!6216640) (not b!6216641) (not b!6216617) (not b!6216635) (not b!6216638) (not b!6216634) (not b!6216622))
(check-sat)
(get-model)

(declare-fun d!1948712 () Bool)

(declare-fun c!1122944 () Bool)

(declare-fun isEmpty!36642 (List!64760) Bool)

(assert (=> d!1948712 (= c!1122944 (isEmpty!36642 (t!378288 s!2326)))))

(declare-fun e!3784466 () Bool)

(assert (=> d!1948712 (= (matchZipper!2165 lt!2344416 (t!378288 s!2326)) e!3784466)))

(declare-fun b!6216735 () Bool)

(declare-fun nullableZipper!1926 ((InoxSet Context!11074)) Bool)

(assert (=> b!6216735 (= e!3784466 (nullableZipper!1926 lt!2344416))))

(declare-fun b!6216736 () Bool)

(declare-fun derivationStepZipper!2118 ((InoxSet Context!11074) C!32576) (InoxSet Context!11074))

(declare-fun head!12812 (List!64760) C!32576)

(declare-fun tail!11897 (List!64760) List!64760)

(assert (=> b!6216736 (= e!3784466 (matchZipper!2165 (derivationStepZipper!2118 lt!2344416 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))))))

(assert (= (and d!1948712 c!1122944) b!6216735))

(assert (= (and d!1948712 (not c!1122944)) b!6216736))

(declare-fun m!7045406 () Bool)

(assert (=> d!1948712 m!7045406))

(declare-fun m!7045408 () Bool)

(assert (=> b!6216735 m!7045408))

(declare-fun m!7045410 () Bool)

(assert (=> b!6216736 m!7045410))

(assert (=> b!6216736 m!7045410))

(declare-fun m!7045412 () Bool)

(assert (=> b!6216736 m!7045412))

(declare-fun m!7045414 () Bool)

(assert (=> b!6216736 m!7045414))

(assert (=> b!6216736 m!7045412))

(assert (=> b!6216736 m!7045414))

(declare-fun m!7045416 () Bool)

(assert (=> b!6216736 m!7045416))

(assert (=> b!6216619 d!1948712))

(declare-fun d!1948714 () Bool)

(declare-fun c!1122945 () Bool)

(assert (=> d!1948714 (= c!1122945 (isEmpty!36642 (t!378288 s!2326)))))

(declare-fun e!3784467 () Bool)

(assert (=> d!1948714 (= (matchZipper!2165 lt!2344410 (t!378288 s!2326)) e!3784467)))

(declare-fun b!6216737 () Bool)

(assert (=> b!6216737 (= e!3784467 (nullableZipper!1926 lt!2344410))))

(declare-fun b!6216738 () Bool)

(assert (=> b!6216738 (= e!3784467 (matchZipper!2165 (derivationStepZipper!2118 lt!2344410 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))))))

(assert (= (and d!1948714 c!1122945) b!6216737))

(assert (= (and d!1948714 (not c!1122945)) b!6216738))

(assert (=> d!1948714 m!7045406))

(declare-fun m!7045418 () Bool)

(assert (=> b!6216737 m!7045418))

(assert (=> b!6216738 m!7045410))

(assert (=> b!6216738 m!7045410))

(declare-fun m!7045420 () Bool)

(assert (=> b!6216738 m!7045420))

(assert (=> b!6216738 m!7045414))

(assert (=> b!6216738 m!7045420))

(assert (=> b!6216738 m!7045414))

(declare-fun m!7045422 () Bool)

(assert (=> b!6216738 m!7045422))

(assert (=> b!6216619 d!1948714))

(declare-fun d!1948716 () Bool)

(declare-fun c!1122946 () Bool)

(assert (=> d!1948716 (= c!1122946 (isEmpty!36642 (t!378288 s!2326)))))

(declare-fun e!3784468 () Bool)

(assert (=> d!1948716 (= (matchZipper!2165 lt!2344417 (t!378288 s!2326)) e!3784468)))

(declare-fun b!6216739 () Bool)

(assert (=> b!6216739 (= e!3784468 (nullableZipper!1926 lt!2344417))))

(declare-fun b!6216740 () Bool)

(assert (=> b!6216740 (= e!3784468 (matchZipper!2165 (derivationStepZipper!2118 lt!2344417 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))))))

(assert (= (and d!1948716 c!1122946) b!6216739))

(assert (= (and d!1948716 (not c!1122946)) b!6216740))

(assert (=> d!1948716 m!7045406))

(declare-fun m!7045424 () Bool)

(assert (=> b!6216739 m!7045424))

(assert (=> b!6216740 m!7045410))

(assert (=> b!6216740 m!7045410))

(declare-fun m!7045426 () Bool)

(assert (=> b!6216740 m!7045426))

(assert (=> b!6216740 m!7045414))

(assert (=> b!6216740 m!7045426))

(assert (=> b!6216740 m!7045414))

(declare-fun m!7045428 () Bool)

(assert (=> b!6216740 m!7045428))

(assert (=> b!6216619 d!1948716))

(declare-fun e!3784473 () Bool)

(declare-fun d!1948718 () Bool)

(assert (=> d!1948718 (= (matchZipper!2165 ((_ map or) lt!2344417 lt!2344396) (t!378288 s!2326)) e!3784473)))

(declare-fun res!2569799 () Bool)

(assert (=> d!1948718 (=> res!2569799 e!3784473)))

(assert (=> d!1948718 (= res!2569799 (matchZipper!2165 lt!2344417 (t!378288 s!2326)))))

(declare-fun lt!2344439 () Unit!157943)

(declare-fun choose!46192 ((InoxSet Context!11074) (InoxSet Context!11074) List!64760) Unit!157943)

(assert (=> d!1948718 (= lt!2344439 (choose!46192 lt!2344417 lt!2344396 (t!378288 s!2326)))))

(assert (=> d!1948718 (= (lemmaZipperConcatMatchesSameAsBothZippers!984 lt!2344417 lt!2344396 (t!378288 s!2326)) lt!2344439)))

(declare-fun b!6216747 () Bool)

(assert (=> b!6216747 (= e!3784473 (matchZipper!2165 lt!2344396 (t!378288 s!2326)))))

(assert (= (and d!1948718 (not res!2569799)) b!6216747))

(declare-fun m!7045430 () Bool)

(assert (=> d!1948718 m!7045430))

(assert (=> d!1948718 m!7045332))

(declare-fun m!7045432 () Bool)

(assert (=> d!1948718 m!7045432))

(assert (=> b!6216747 m!7045280))

(assert (=> b!6216619 d!1948718))

(declare-fun d!1948720 () Bool)

(declare-fun lambda!339734 () Int)

(declare-fun forall!15267 (List!64758 Int) Bool)

(assert (=> d!1948720 (= (inv!83629 lt!2344399) (forall!15267 (exprs!6037 lt!2344399) lambda!339734))))

(declare-fun bs!1541896 () Bool)

(assert (= bs!1541896 d!1948720))

(declare-fun m!7045434 () Bool)

(assert (=> bs!1541896 m!7045434))

(assert (=> b!6216617 d!1948720))

(declare-fun d!1948722 () Bool)

(declare-fun choose!46193 ((InoxSet Context!11074) Int) (InoxSet Context!11074))

(assert (=> d!1948722 (= (flatMap!1658 lt!2344404 lambda!339713) (choose!46193 lt!2344404 lambda!339713))))

(declare-fun bs!1541899 () Bool)

(assert (= bs!1541899 d!1948722))

(declare-fun m!7045436 () Bool)

(assert (=> bs!1541899 m!7045436))

(assert (=> b!6216617 d!1948722))

(declare-fun b!6216769 () Bool)

(declare-fun e!3784487 () (InoxSet Context!11074))

(declare-fun call!521464 () (InoxSet Context!11074))

(assert (=> b!6216769 (= e!3784487 call!521464)))

(declare-fun e!3784489 () (InoxSet Context!11074))

(declare-fun b!6216770 () Bool)

(assert (=> b!6216770 (= e!3784489 ((_ map or) call!521464 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 lt!2344414))) (h!71084 s!2326))))))

(declare-fun b!6216771 () Bool)

(declare-fun e!3784488 () Bool)

(assert (=> b!6216771 (= e!3784488 (nullable!6146 (h!71082 (exprs!6037 lt!2344414))))))

(declare-fun b!6216772 () Bool)

(assert (=> b!6216772 (= e!3784487 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6216773 () Bool)

(assert (=> b!6216773 (= e!3784489 e!3784487)))

(declare-fun c!1122955 () Bool)

(assert (=> b!6216773 (= c!1122955 ((_ is Cons!64634) (exprs!6037 lt!2344414)))))

(declare-fun bm!521459 () Bool)

(assert (=> bm!521459 (= call!521464 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 lt!2344414)) (Context!11075 (t!378286 (exprs!6037 lt!2344414))) (h!71084 s!2326)))))

(declare-fun d!1948724 () Bool)

(declare-fun c!1122956 () Bool)

(assert (=> d!1948724 (= c!1122956 e!3784488)))

(declare-fun res!2569805 () Bool)

(assert (=> d!1948724 (=> (not res!2569805) (not e!3784488))))

(assert (=> d!1948724 (= res!2569805 ((_ is Cons!64634) (exprs!6037 lt!2344414)))))

(assert (=> d!1948724 (= (derivationStepZipperUp!1327 lt!2344414 (h!71084 s!2326)) e!3784489)))

(assert (= (and d!1948724 res!2569805) b!6216771))

(assert (= (and d!1948724 c!1122956) b!6216770))

(assert (= (and d!1948724 (not c!1122956)) b!6216773))

(assert (= (and b!6216773 c!1122955) b!6216769))

(assert (= (and b!6216773 (not c!1122955)) b!6216772))

(assert (= (or b!6216770 b!6216769) bm!521459))

(declare-fun m!7045446 () Bool)

(assert (=> b!6216770 m!7045446))

(declare-fun m!7045448 () Bool)

(assert (=> b!6216771 m!7045448))

(declare-fun m!7045450 () Bool)

(assert (=> bm!521459 m!7045450))

(assert (=> b!6216617 d!1948724))

(declare-fun d!1948728 () Bool)

(declare-fun dynLambda!25499 (Int Context!11074) (InoxSet Context!11074))

(assert (=> d!1948728 (= (flatMap!1658 lt!2344404 lambda!339713) (dynLambda!25499 lambda!339713 lt!2344414))))

(declare-fun lt!2344444 () Unit!157943)

(declare-fun choose!46195 ((InoxSet Context!11074) Context!11074 Int) Unit!157943)

(assert (=> d!1948728 (= lt!2344444 (choose!46195 lt!2344404 lt!2344414 lambda!339713))))

(assert (=> d!1948728 (= lt!2344404 (store ((as const (Array Context!11074 Bool)) false) lt!2344414 true))))

(assert (=> d!1948728 (= (lemmaFlatMapOnSingletonSet!1184 lt!2344404 lt!2344414 lambda!339713) lt!2344444)))

(declare-fun b_lambda!236347 () Bool)

(assert (=> (not b_lambda!236347) (not d!1948728)))

(declare-fun bs!1541902 () Bool)

(assert (= bs!1541902 d!1948728))

(assert (=> bs!1541902 m!7045318))

(declare-fun m!7045452 () Bool)

(assert (=> bs!1541902 m!7045452))

(declare-fun m!7045454 () Bool)

(assert (=> bs!1541902 m!7045454))

(assert (=> bs!1541902 m!7045326))

(assert (=> b!6216617 d!1948728))

(declare-fun bs!1541904 () Bool)

(declare-fun b!6216876 () Bool)

(assert (= bs!1541904 (and b!6216876 b!6216632)))

(declare-fun lambda!339740 () Int)

(assert (=> bs!1541904 (not (= lambda!339740 lambda!339711))))

(assert (=> bs!1541904 (not (= lambda!339740 lambda!339712))))

(assert (=> b!6216876 true))

(assert (=> b!6216876 true))

(declare-fun bs!1541905 () Bool)

(declare-fun b!6216878 () Bool)

(assert (= bs!1541905 (and b!6216878 b!6216632)))

(declare-fun lambda!339741 () Int)

(assert (=> bs!1541905 (not (= lambda!339741 lambda!339711))))

(assert (=> bs!1541905 (= lambda!339741 lambda!339712)))

(declare-fun bs!1541906 () Bool)

(assert (= bs!1541906 (and b!6216878 b!6216876)))

(assert (=> bs!1541906 (not (= lambda!339741 lambda!339740))))

(assert (=> b!6216878 true))

(assert (=> b!6216878 true))

(declare-fun b!6216870 () Bool)

(declare-fun e!3784547 () Bool)

(declare-fun call!521481 () Bool)

(assert (=> b!6216870 (= e!3784547 call!521481)))

(declare-fun b!6216871 () Bool)

(declare-fun e!3784546 () Bool)

(assert (=> b!6216871 (= e!3784547 e!3784546)))

(declare-fun res!2569849 () Bool)

(assert (=> b!6216871 (= res!2569849 (not ((_ is EmptyLang!16153) r!7292)))))

(assert (=> b!6216871 (=> (not res!2569849) (not e!3784546))))

(declare-fun d!1948730 () Bool)

(declare-fun c!1122987 () Bool)

(assert (=> d!1948730 (= c!1122987 ((_ is EmptyExpr!16153) r!7292))))

(assert (=> d!1948730 (= (matchRSpec!3254 r!7292 s!2326) e!3784547)))

(declare-fun b!6216872 () Bool)

(declare-fun e!3784541 () Bool)

(assert (=> b!6216872 (= e!3784541 (= s!2326 (Cons!64636 (c!1122921 r!7292) Nil!64636)))))

(declare-fun b!6216873 () Bool)

(declare-fun e!3784543 () Bool)

(declare-fun e!3784545 () Bool)

(assert (=> b!6216873 (= e!3784543 e!3784545)))

(declare-fun res!2569850 () Bool)

(assert (=> b!6216873 (= res!2569850 (matchRSpec!3254 (regOne!32819 r!7292) s!2326))))

(assert (=> b!6216873 (=> res!2569850 e!3784545)))

(declare-fun b!6216874 () Bool)

(declare-fun c!1122985 () Bool)

(assert (=> b!6216874 (= c!1122985 ((_ is ElementMatch!16153) r!7292))))

(assert (=> b!6216874 (= e!3784546 e!3784541)))

(declare-fun call!521480 () Bool)

(declare-fun c!1122986 () Bool)

(declare-fun bm!521475 () Bool)

(assert (=> bm!521475 (= call!521480 (Exists!3223 (ite c!1122986 lambda!339740 lambda!339741)))))

(declare-fun b!6216875 () Bool)

(assert (=> b!6216875 (= e!3784545 (matchRSpec!3254 (regTwo!32819 r!7292) s!2326))))

(declare-fun e!3784542 () Bool)

(assert (=> b!6216876 (= e!3784542 call!521480)))

(declare-fun b!6216877 () Bool)

(declare-fun res!2569848 () Bool)

(assert (=> b!6216877 (=> res!2569848 e!3784542)))

(assert (=> b!6216877 (= res!2569848 call!521481)))

(declare-fun e!3784544 () Bool)

(assert (=> b!6216877 (= e!3784544 e!3784542)))

(assert (=> b!6216878 (= e!3784544 call!521480)))

(declare-fun bm!521476 () Bool)

(assert (=> bm!521476 (= call!521481 (isEmpty!36642 s!2326))))

(declare-fun b!6216879 () Bool)

(assert (=> b!6216879 (= e!3784543 e!3784544)))

(assert (=> b!6216879 (= c!1122986 ((_ is Star!16153) r!7292))))

(declare-fun b!6216880 () Bool)

(declare-fun c!1122984 () Bool)

(assert (=> b!6216880 (= c!1122984 ((_ is Union!16153) r!7292))))

(assert (=> b!6216880 (= e!3784541 e!3784543)))

(assert (= (and d!1948730 c!1122987) b!6216870))

(assert (= (and d!1948730 (not c!1122987)) b!6216871))

(assert (= (and b!6216871 res!2569849) b!6216874))

(assert (= (and b!6216874 c!1122985) b!6216872))

(assert (= (and b!6216874 (not c!1122985)) b!6216880))

(assert (= (and b!6216880 c!1122984) b!6216873))

(assert (= (and b!6216880 (not c!1122984)) b!6216879))

(assert (= (and b!6216873 (not res!2569850)) b!6216875))

(assert (= (and b!6216879 c!1122986) b!6216877))

(assert (= (and b!6216879 (not c!1122986)) b!6216878))

(assert (= (and b!6216877 (not res!2569848)) b!6216876))

(assert (= (or b!6216876 b!6216878) bm!521475))

(assert (= (or b!6216870 b!6216877) bm!521476))

(declare-fun m!7045470 () Bool)

(assert (=> b!6216873 m!7045470))

(declare-fun m!7045472 () Bool)

(assert (=> bm!521475 m!7045472))

(declare-fun m!7045474 () Bool)

(assert (=> b!6216875 m!7045474))

(declare-fun m!7045476 () Bool)

(assert (=> bm!521476 m!7045476))

(assert (=> b!6216618 d!1948730))

(declare-fun b!6216951 () Bool)

(declare-fun e!3784587 () Bool)

(declare-fun e!3784589 () Bool)

(assert (=> b!6216951 (= e!3784587 e!3784589)))

(declare-fun res!2569880 () Bool)

(assert (=> b!6216951 (=> res!2569880 e!3784589)))

(declare-fun call!521500 () Bool)

(assert (=> b!6216951 (= res!2569880 call!521500)))

(declare-fun b!6216952 () Bool)

(declare-fun res!2569873 () Bool)

(declare-fun e!3784586 () Bool)

(assert (=> b!6216952 (=> res!2569873 e!3784586)))

(declare-fun e!3784588 () Bool)

(assert (=> b!6216952 (= res!2569873 e!3784588)))

(declare-fun res!2569879 () Bool)

(assert (=> b!6216952 (=> (not res!2569879) (not e!3784588))))

(declare-fun lt!2344453 () Bool)

(assert (=> b!6216952 (= res!2569879 lt!2344453)))

(declare-fun b!6216953 () Bool)

(declare-fun res!2569878 () Bool)

(assert (=> b!6216953 (=> res!2569878 e!3784589)))

(assert (=> b!6216953 (= res!2569878 (not (isEmpty!36642 (tail!11897 s!2326))))))

(declare-fun b!6216954 () Bool)

(assert (=> b!6216954 (= e!3784589 (not (= (head!12812 s!2326) (c!1122921 r!7292))))))

(declare-fun bm!521495 () Bool)

(assert (=> bm!521495 (= call!521500 (isEmpty!36642 s!2326))))

(declare-fun b!6216955 () Bool)

(declare-fun res!2569874 () Bool)

(assert (=> b!6216955 (=> res!2569874 e!3784586)))

(assert (=> b!6216955 (= res!2569874 (not ((_ is ElementMatch!16153) r!7292)))))

(declare-fun e!3784590 () Bool)

(assert (=> b!6216955 (= e!3784590 e!3784586)))

(declare-fun b!6216956 () Bool)

(declare-fun e!3784591 () Bool)

(assert (=> b!6216956 (= e!3784591 (nullable!6146 r!7292))))

(declare-fun b!6216957 () Bool)

(declare-fun e!3784592 () Bool)

(assert (=> b!6216957 (= e!3784592 (= lt!2344453 call!521500))))

(declare-fun d!1948738 () Bool)

(assert (=> d!1948738 e!3784592))

(declare-fun c!1123013 () Bool)

(assert (=> d!1948738 (= c!1123013 ((_ is EmptyExpr!16153) r!7292))))

(assert (=> d!1948738 (= lt!2344453 e!3784591)))

(declare-fun c!1123014 () Bool)

(assert (=> d!1948738 (= c!1123014 (isEmpty!36642 s!2326))))

(assert (=> d!1948738 (validRegex!7889 r!7292)))

(assert (=> d!1948738 (= (matchR!8336 r!7292 s!2326) lt!2344453)))

(declare-fun b!6216958 () Bool)

(assert (=> b!6216958 (= e!3784586 e!3784587)))

(declare-fun res!2569876 () Bool)

(assert (=> b!6216958 (=> (not res!2569876) (not e!3784587))))

(assert (=> b!6216958 (= res!2569876 (not lt!2344453))))

(declare-fun b!6216959 () Bool)

(declare-fun derivativeStep!4866 (Regex!16153 C!32576) Regex!16153)

(assert (=> b!6216959 (= e!3784591 (matchR!8336 (derivativeStep!4866 r!7292 (head!12812 s!2326)) (tail!11897 s!2326)))))

(declare-fun b!6216960 () Bool)

(assert (=> b!6216960 (= e!3784590 (not lt!2344453))))

(declare-fun b!6216961 () Bool)

(assert (=> b!6216961 (= e!3784588 (= (head!12812 s!2326) (c!1122921 r!7292)))))

(declare-fun b!6216962 () Bool)

(assert (=> b!6216962 (= e!3784592 e!3784590)))

(declare-fun c!1123012 () Bool)

(assert (=> b!6216962 (= c!1123012 ((_ is EmptyLang!16153) r!7292))))

(declare-fun b!6216963 () Bool)

(declare-fun res!2569877 () Bool)

(assert (=> b!6216963 (=> (not res!2569877) (not e!3784588))))

(assert (=> b!6216963 (= res!2569877 (not call!521500))))

(declare-fun b!6216964 () Bool)

(declare-fun res!2569875 () Bool)

(assert (=> b!6216964 (=> (not res!2569875) (not e!3784588))))

(assert (=> b!6216964 (= res!2569875 (isEmpty!36642 (tail!11897 s!2326)))))

(assert (= (and d!1948738 c!1123014) b!6216956))

(assert (= (and d!1948738 (not c!1123014)) b!6216959))

(assert (= (and d!1948738 c!1123013) b!6216957))

(assert (= (and d!1948738 (not c!1123013)) b!6216962))

(assert (= (and b!6216962 c!1123012) b!6216960))

(assert (= (and b!6216962 (not c!1123012)) b!6216955))

(assert (= (and b!6216955 (not res!2569874)) b!6216952))

(assert (= (and b!6216952 res!2569879) b!6216963))

(assert (= (and b!6216963 res!2569877) b!6216964))

(assert (= (and b!6216964 res!2569875) b!6216961))

(assert (= (and b!6216952 (not res!2569873)) b!6216958))

(assert (= (and b!6216958 res!2569876) b!6216951))

(assert (= (and b!6216951 (not res!2569880)) b!6216953))

(assert (= (and b!6216953 (not res!2569878)) b!6216954))

(assert (= (or b!6216957 b!6216951 b!6216963) bm!521495))

(declare-fun m!7045498 () Bool)

(assert (=> b!6216953 m!7045498))

(assert (=> b!6216953 m!7045498))

(declare-fun m!7045500 () Bool)

(assert (=> b!6216953 m!7045500))

(assert (=> d!1948738 m!7045476))

(assert (=> d!1948738 m!7045310))

(assert (=> b!6216964 m!7045498))

(assert (=> b!6216964 m!7045498))

(assert (=> b!6216964 m!7045500))

(declare-fun m!7045502 () Bool)

(assert (=> b!6216956 m!7045502))

(assert (=> bm!521495 m!7045476))

(declare-fun m!7045504 () Bool)

(assert (=> b!6216961 m!7045504))

(assert (=> b!6216954 m!7045504))

(assert (=> b!6216959 m!7045504))

(assert (=> b!6216959 m!7045504))

(declare-fun m!7045506 () Bool)

(assert (=> b!6216959 m!7045506))

(assert (=> b!6216959 m!7045498))

(assert (=> b!6216959 m!7045506))

(assert (=> b!6216959 m!7045498))

(declare-fun m!7045508 () Bool)

(assert (=> b!6216959 m!7045508))

(assert (=> b!6216618 d!1948738))

(declare-fun d!1948744 () Bool)

(assert (=> d!1948744 (= (matchR!8336 r!7292 s!2326) (matchRSpec!3254 r!7292 s!2326))))

(declare-fun lt!2344457 () Unit!157943)

(declare-fun choose!46196 (Regex!16153 List!64760) Unit!157943)

(assert (=> d!1948744 (= lt!2344457 (choose!46196 r!7292 s!2326))))

(assert (=> d!1948744 (validRegex!7889 r!7292)))

(assert (=> d!1948744 (= (mainMatchTheorem!3254 r!7292 s!2326) lt!2344457)))

(declare-fun bs!1541909 () Bool)

(assert (= bs!1541909 d!1948744))

(assert (=> bs!1541909 m!7045292))

(assert (=> bs!1541909 m!7045290))

(declare-fun m!7045530 () Bool)

(assert (=> bs!1541909 m!7045530))

(assert (=> bs!1541909 m!7045310))

(assert (=> b!6216618 d!1948744))

(declare-fun d!1948748 () Bool)

(declare-fun c!1123021 () Bool)

(assert (=> d!1948748 (= c!1123021 (isEmpty!36642 (t!378288 s!2326)))))

(declare-fun e!3784601 () Bool)

(assert (=> d!1948748 (= (matchZipper!2165 lt!2344412 (t!378288 s!2326)) e!3784601)))

(declare-fun b!6216979 () Bool)

(assert (=> b!6216979 (= e!3784601 (nullableZipper!1926 lt!2344412))))

(declare-fun b!6216980 () Bool)

(assert (=> b!6216980 (= e!3784601 (matchZipper!2165 (derivationStepZipper!2118 lt!2344412 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))))))

(assert (= (and d!1948748 c!1123021) b!6216979))

(assert (= (and d!1948748 (not c!1123021)) b!6216980))

(assert (=> d!1948748 m!7045406))

(declare-fun m!7045532 () Bool)

(assert (=> b!6216979 m!7045532))

(assert (=> b!6216980 m!7045410))

(assert (=> b!6216980 m!7045410))

(declare-fun m!7045534 () Bool)

(assert (=> b!6216980 m!7045534))

(assert (=> b!6216980 m!7045414))

(assert (=> b!6216980 m!7045534))

(assert (=> b!6216980 m!7045414))

(declare-fun m!7045536 () Bool)

(assert (=> b!6216980 m!7045536))

(assert (=> b!6216616 d!1948748))

(declare-fun d!1948750 () Bool)

(declare-fun e!3784605 () Bool)

(assert (=> d!1948750 e!3784605))

(declare-fun res!2569885 () Bool)

(assert (=> d!1948750 (=> (not res!2569885) (not e!3784605))))

(declare-fun lt!2344463 () List!64759)

(declare-fun noDuplicate!1990 (List!64759) Bool)

(assert (=> d!1948750 (= res!2569885 (noDuplicate!1990 lt!2344463))))

(declare-fun choose!46197 ((InoxSet Context!11074)) List!64759)

(assert (=> d!1948750 (= lt!2344463 (choose!46197 z!1189))))

(assert (=> d!1948750 (= (toList!9937 z!1189) lt!2344463)))

(declare-fun b!6216985 () Bool)

(declare-fun content!12099 (List!64759) (InoxSet Context!11074))

(assert (=> b!6216985 (= e!3784605 (= (content!12099 lt!2344463) z!1189))))

(assert (= (and d!1948750 res!2569885) b!6216985))

(declare-fun m!7045542 () Bool)

(assert (=> d!1948750 m!7045542))

(declare-fun m!7045544 () Bool)

(assert (=> d!1948750 m!7045544))

(declare-fun m!7045546 () Bool)

(assert (=> b!6216985 m!7045546))

(assert (=> b!6216626 d!1948750))

(declare-fun d!1948754 () Bool)

(declare-fun c!1123023 () Bool)

(assert (=> d!1948754 (= c!1123023 (isEmpty!36642 (t!378288 s!2326)))))

(declare-fun e!3784606 () Bool)

(assert (=> d!1948754 (= (matchZipper!2165 lt!2344396 (t!378288 s!2326)) e!3784606)))

(declare-fun b!6216986 () Bool)

(assert (=> b!6216986 (= e!3784606 (nullableZipper!1926 lt!2344396))))

(declare-fun b!6216987 () Bool)

(assert (=> b!6216987 (= e!3784606 (matchZipper!2165 (derivationStepZipper!2118 lt!2344396 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))))))

(assert (= (and d!1948754 c!1123023) b!6216986))

(assert (= (and d!1948754 (not c!1123023)) b!6216987))

(assert (=> d!1948754 m!7045406))

(declare-fun m!7045548 () Bool)

(assert (=> b!6216986 m!7045548))

(assert (=> b!6216987 m!7045410))

(assert (=> b!6216987 m!7045410))

(declare-fun m!7045550 () Bool)

(assert (=> b!6216987 m!7045550))

(assert (=> b!6216987 m!7045414))

(assert (=> b!6216987 m!7045550))

(assert (=> b!6216987 m!7045414))

(declare-fun m!7045554 () Bool)

(assert (=> b!6216987 m!7045554))

(assert (=> b!6216636 d!1948754))

(declare-fun d!1948756 () Bool)

(declare-fun nullableFct!2101 (Regex!16153) Bool)

(assert (=> d!1948756 (= (nullable!6146 (regOne!32818 (regOne!32818 r!7292))) (nullableFct!2101 (regOne!32818 (regOne!32818 r!7292))))))

(declare-fun bs!1541914 () Bool)

(assert (= bs!1541914 d!1948756))

(declare-fun m!7045556 () Bool)

(assert (=> bs!1541914 m!7045556))

(assert (=> b!6216634 d!1948756))

(declare-fun d!1948760 () Bool)

(assert (=> d!1948760 (= (isEmpty!36638 (t!378286 (exprs!6037 (h!71083 zl!343)))) ((_ is Nil!64634) (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> b!6216615 d!1948760))

(declare-fun bs!1541915 () Bool)

(declare-fun d!1948762 () Bool)

(assert (= bs!1541915 (and d!1948762 d!1948720)))

(declare-fun lambda!339748 () Int)

(assert (=> bs!1541915 (= lambda!339748 lambda!339734)))

(assert (=> d!1948762 (= (inv!83629 (h!71083 zl!343)) (forall!15267 (exprs!6037 (h!71083 zl!343)) lambda!339748))))

(declare-fun bs!1541916 () Bool)

(assert (= bs!1541916 d!1948762))

(declare-fun m!7045558 () Bool)

(assert (=> bs!1541916 m!7045558))

(assert (=> b!6216625 d!1948762))

(declare-fun d!1948764 () Bool)

(declare-fun e!3784607 () Bool)

(assert (=> d!1948764 (= (matchZipper!2165 ((_ map or) lt!2344416 lt!2344412) (t!378288 s!2326)) e!3784607)))

(declare-fun res!2569886 () Bool)

(assert (=> d!1948764 (=> res!2569886 e!3784607)))

(assert (=> d!1948764 (= res!2569886 (matchZipper!2165 lt!2344416 (t!378288 s!2326)))))

(declare-fun lt!2344464 () Unit!157943)

(assert (=> d!1948764 (= lt!2344464 (choose!46192 lt!2344416 lt!2344412 (t!378288 s!2326)))))

(assert (=> d!1948764 (= (lemmaZipperConcatMatchesSameAsBothZippers!984 lt!2344416 lt!2344412 (t!378288 s!2326)) lt!2344464)))

(declare-fun b!6216988 () Bool)

(assert (=> b!6216988 (= e!3784607 (matchZipper!2165 lt!2344412 (t!378288 s!2326)))))

(assert (= (and d!1948764 (not res!2569886)) b!6216988))

(assert (=> d!1948764 m!7045316))

(assert (=> d!1948764 m!7045314))

(declare-fun m!7045560 () Bool)

(assert (=> d!1948764 m!7045560))

(assert (=> b!6216988 m!7045288))

(assert (=> b!6216623 d!1948764))

(assert (=> b!6216623 d!1948712))

(declare-fun d!1948766 () Bool)

(declare-fun c!1123024 () Bool)

(assert (=> d!1948766 (= c!1123024 (isEmpty!36642 (t!378288 s!2326)))))

(declare-fun e!3784608 () Bool)

(assert (=> d!1948766 (= (matchZipper!2165 ((_ map or) lt!2344416 lt!2344412) (t!378288 s!2326)) e!3784608)))

(declare-fun b!6216989 () Bool)

(assert (=> b!6216989 (= e!3784608 (nullableZipper!1926 ((_ map or) lt!2344416 lt!2344412)))))

(declare-fun b!6216990 () Bool)

(assert (=> b!6216990 (= e!3784608 (matchZipper!2165 (derivationStepZipper!2118 ((_ map or) lt!2344416 lt!2344412) (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))))))

(assert (= (and d!1948766 c!1123024) b!6216989))

(assert (= (and d!1948766 (not c!1123024)) b!6216990))

(assert (=> d!1948766 m!7045406))

(declare-fun m!7045562 () Bool)

(assert (=> b!6216989 m!7045562))

(assert (=> b!6216990 m!7045410))

(assert (=> b!6216990 m!7045410))

(declare-fun m!7045564 () Bool)

(assert (=> b!6216990 m!7045564))

(assert (=> b!6216990 m!7045414))

(assert (=> b!6216990 m!7045564))

(assert (=> b!6216990 m!7045414))

(declare-fun m!7045566 () Bool)

(assert (=> b!6216990 m!7045566))

(assert (=> b!6216623 d!1948766))

(declare-fun bs!1541917 () Bool)

(declare-fun d!1948768 () Bool)

(assert (= bs!1541917 (and d!1948768 d!1948720)))

(declare-fun lambda!339751 () Int)

(assert (=> bs!1541917 (= lambda!339751 lambda!339734)))

(declare-fun bs!1541918 () Bool)

(assert (= bs!1541918 (and d!1948768 d!1948762)))

(assert (=> bs!1541918 (= lambda!339751 lambda!339748)))

(declare-fun b!6217022 () Bool)

(declare-fun e!3784633 () Regex!16153)

(declare-fun e!3784631 () Regex!16153)

(assert (=> b!6217022 (= e!3784633 e!3784631)))

(declare-fun c!1123037 () Bool)

(assert (=> b!6217022 (= c!1123037 ((_ is Cons!64634) (unfocusZipperList!1574 zl!343)))))

(declare-fun b!6217023 () Bool)

(declare-fun e!3784630 () Bool)

(declare-fun lt!2344470 () Regex!16153)

(declare-fun isUnion!1002 (Regex!16153) Bool)

(assert (=> b!6217023 (= e!3784630 (isUnion!1002 lt!2344470))))

(declare-fun e!3784628 () Bool)

(assert (=> d!1948768 e!3784628))

(declare-fun res!2569894 () Bool)

(assert (=> d!1948768 (=> (not res!2569894) (not e!3784628))))

(assert (=> d!1948768 (= res!2569894 (validRegex!7889 lt!2344470))))

(assert (=> d!1948768 (= lt!2344470 e!3784633)))

(declare-fun c!1123039 () Bool)

(declare-fun e!3784632 () Bool)

(assert (=> d!1948768 (= c!1123039 e!3784632)))

(declare-fun res!2569895 () Bool)

(assert (=> d!1948768 (=> (not res!2569895) (not e!3784632))))

(assert (=> d!1948768 (= res!2569895 ((_ is Cons!64634) (unfocusZipperList!1574 zl!343)))))

(assert (=> d!1948768 (forall!15267 (unfocusZipperList!1574 zl!343) lambda!339751)))

(assert (=> d!1948768 (= (generalisedUnion!1997 (unfocusZipperList!1574 zl!343)) lt!2344470)))

(declare-fun b!6217024 () Bool)

(assert (=> b!6217024 (= e!3784633 (h!71082 (unfocusZipperList!1574 zl!343)))))

(declare-fun b!6217025 () Bool)

(assert (=> b!6217025 (= e!3784632 (isEmpty!36638 (t!378286 (unfocusZipperList!1574 zl!343))))))

(declare-fun b!6217026 () Bool)

(assert (=> b!6217026 (= e!3784631 (Union!16153 (h!71082 (unfocusZipperList!1574 zl!343)) (generalisedUnion!1997 (t!378286 (unfocusZipperList!1574 zl!343)))))))

(declare-fun b!6217027 () Bool)

(declare-fun e!3784629 () Bool)

(assert (=> b!6217027 (= e!3784628 e!3784629)))

(declare-fun c!1123040 () Bool)

(assert (=> b!6217027 (= c!1123040 (isEmpty!36638 (unfocusZipperList!1574 zl!343)))))

(declare-fun b!6217028 () Bool)

(assert (=> b!6217028 (= e!3784631 EmptyLang!16153)))

(declare-fun b!6217029 () Bool)

(assert (=> b!6217029 (= e!3784629 e!3784630)))

(declare-fun c!1123038 () Bool)

(declare-fun tail!11900 (List!64758) List!64758)

(assert (=> b!6217029 (= c!1123038 (isEmpty!36638 (tail!11900 (unfocusZipperList!1574 zl!343))))))

(declare-fun b!6217030 () Bool)

(declare-fun head!12815 (List!64758) Regex!16153)

(assert (=> b!6217030 (= e!3784630 (= lt!2344470 (head!12815 (unfocusZipperList!1574 zl!343))))))

(declare-fun b!6217031 () Bool)

(declare-fun isEmptyLang!1572 (Regex!16153) Bool)

(assert (=> b!6217031 (= e!3784629 (isEmptyLang!1572 lt!2344470))))

(assert (= (and d!1948768 res!2569895) b!6217025))

(assert (= (and d!1948768 c!1123039) b!6217024))

(assert (= (and d!1948768 (not c!1123039)) b!6217022))

(assert (= (and b!6217022 c!1123037) b!6217026))

(assert (= (and b!6217022 (not c!1123037)) b!6217028))

(assert (= (and d!1948768 res!2569894) b!6217027))

(assert (= (and b!6217027 c!1123040) b!6217031))

(assert (= (and b!6217027 (not c!1123040)) b!6217029))

(assert (= (and b!6217029 c!1123038) b!6217030))

(assert (= (and b!6217029 (not c!1123038)) b!6217023))

(declare-fun m!7045588 () Bool)

(assert (=> b!6217031 m!7045588))

(assert (=> b!6217029 m!7045336))

(declare-fun m!7045590 () Bool)

(assert (=> b!6217029 m!7045590))

(assert (=> b!6217029 m!7045590))

(declare-fun m!7045592 () Bool)

(assert (=> b!6217029 m!7045592))

(assert (=> b!6217030 m!7045336))

(declare-fun m!7045594 () Bool)

(assert (=> b!6217030 m!7045594))

(declare-fun m!7045596 () Bool)

(assert (=> d!1948768 m!7045596))

(assert (=> d!1948768 m!7045336))

(declare-fun m!7045598 () Bool)

(assert (=> d!1948768 m!7045598))

(declare-fun m!7045600 () Bool)

(assert (=> b!6217026 m!7045600))

(declare-fun m!7045602 () Bool)

(assert (=> b!6217025 m!7045602))

(assert (=> b!6217027 m!7045336))

(declare-fun m!7045604 () Bool)

(assert (=> b!6217027 m!7045604))

(declare-fun m!7045606 () Bool)

(assert (=> b!6217023 m!7045606))

(assert (=> b!6216631 d!1948768))

(declare-fun bs!1541919 () Bool)

(declare-fun d!1948776 () Bool)

(assert (= bs!1541919 (and d!1948776 d!1948720)))

(declare-fun lambda!339756 () Int)

(assert (=> bs!1541919 (= lambda!339756 lambda!339734)))

(declare-fun bs!1541920 () Bool)

(assert (= bs!1541920 (and d!1948776 d!1948762)))

(assert (=> bs!1541920 (= lambda!339756 lambda!339748)))

(declare-fun bs!1541921 () Bool)

(assert (= bs!1541921 (and d!1948776 d!1948768)))

(assert (=> bs!1541921 (= lambda!339756 lambda!339751)))

(declare-fun lt!2344475 () List!64758)

(assert (=> d!1948776 (forall!15267 lt!2344475 lambda!339756)))

(declare-fun e!3784648 () List!64758)

(assert (=> d!1948776 (= lt!2344475 e!3784648)))

(declare-fun c!1123051 () Bool)

(assert (=> d!1948776 (= c!1123051 ((_ is Cons!64635) zl!343))))

(assert (=> d!1948776 (= (unfocusZipperList!1574 zl!343) lt!2344475)))

(declare-fun b!6217056 () Bool)

(assert (=> b!6217056 (= e!3784648 (Cons!64634 (generalisedConcat!1750 (exprs!6037 (h!71083 zl!343))) (unfocusZipperList!1574 (t!378287 zl!343))))))

(declare-fun b!6217057 () Bool)

(assert (=> b!6217057 (= e!3784648 Nil!64634)))

(assert (= (and d!1948776 c!1123051) b!6217056))

(assert (= (and d!1948776 (not c!1123051)) b!6217057))

(declare-fun m!7045608 () Bool)

(assert (=> d!1948776 m!7045608))

(assert (=> b!6217056 m!7045340))

(declare-fun m!7045610 () Bool)

(assert (=> b!6217056 m!7045610))

(assert (=> b!6216631 d!1948776))

(declare-fun d!1948778 () Bool)

(assert (=> d!1948778 (= (nullable!6146 (h!71082 (exprs!6037 (h!71083 zl!343)))) (nullableFct!2101 (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun bs!1541922 () Bool)

(assert (= bs!1541922 d!1948778))

(declare-fun m!7045612 () Bool)

(assert (=> bs!1541922 m!7045612))

(assert (=> b!6216622 d!1948778))

(declare-fun b!6217058 () Bool)

(declare-fun e!3784649 () (InoxSet Context!11074))

(declare-fun call!521501 () (InoxSet Context!11074))

(assert (=> b!6217058 (= e!3784649 call!521501)))

(declare-fun b!6217059 () Bool)

(declare-fun e!3784651 () (InoxSet Context!11074))

(assert (=> b!6217059 (= e!3784651 ((_ map or) call!521501 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (h!71084 s!2326))))))

(declare-fun b!6217060 () Bool)

(declare-fun e!3784650 () Bool)

(assert (=> b!6217060 (= e!3784650 (nullable!6146 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun b!6217061 () Bool)

(assert (=> b!6217061 (= e!3784649 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217062 () Bool)

(assert (=> b!6217062 (= e!3784651 e!3784649)))

(declare-fun c!1123052 () Bool)

(assert (=> b!6217062 (= c!1123052 ((_ is Cons!64634) (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))

(declare-fun bm!521496 () Bool)

(assert (=> bm!521496 (= call!521501 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (h!71084 s!2326)))))

(declare-fun d!1948780 () Bool)

(declare-fun c!1123053 () Bool)

(assert (=> d!1948780 (= c!1123053 e!3784650)))

(declare-fun res!2569900 () Bool)

(assert (=> d!1948780 (=> (not res!2569900) (not e!3784650))))

(assert (=> d!1948780 (= res!2569900 ((_ is Cons!64634) (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))

(assert (=> d!1948780 (= (derivationStepZipperUp!1327 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))) (h!71084 s!2326)) e!3784651)))

(assert (= (and d!1948780 res!2569900) b!6217060))

(assert (= (and d!1948780 c!1123053) b!6217059))

(assert (= (and d!1948780 (not c!1123053)) b!6217062))

(assert (= (and b!6217062 c!1123052) b!6217058))

(assert (= (and b!6217062 (not c!1123052)) b!6217061))

(assert (= (or b!6217059 b!6217058) bm!521496))

(declare-fun m!7045614 () Bool)

(assert (=> b!6217059 m!7045614))

(declare-fun m!7045616 () Bool)

(assert (=> b!6217060 m!7045616))

(declare-fun m!7045618 () Bool)

(assert (=> bm!521496 m!7045618))

(assert (=> b!6216622 d!1948780))

(declare-fun d!1948782 () Bool)

(assert (=> d!1948782 (= (flatMap!1658 z!1189 lambda!339713) (dynLambda!25499 lambda!339713 (h!71083 zl!343)))))

(declare-fun lt!2344477 () Unit!157943)

(assert (=> d!1948782 (= lt!2344477 (choose!46195 z!1189 (h!71083 zl!343) lambda!339713))))

(assert (=> d!1948782 (= z!1189 (store ((as const (Array Context!11074 Bool)) false) (h!71083 zl!343) true))))

(assert (=> d!1948782 (= (lemmaFlatMapOnSingletonSet!1184 z!1189 (h!71083 zl!343) lambda!339713) lt!2344477)))

(declare-fun b_lambda!236349 () Bool)

(assert (=> (not b_lambda!236349) (not d!1948782)))

(declare-fun bs!1541927 () Bool)

(assert (= bs!1541927 d!1948782))

(assert (=> bs!1541927 m!7045268))

(declare-fun m!7045620 () Bool)

(assert (=> bs!1541927 m!7045620))

(declare-fun m!7045622 () Bool)

(assert (=> bs!1541927 m!7045622))

(declare-fun m!7045624 () Bool)

(assert (=> bs!1541927 m!7045624))

(assert (=> b!6216622 d!1948782))

(declare-fun d!1948784 () Bool)

(assert (=> d!1948784 (= (flatMap!1658 z!1189 lambda!339713) (choose!46193 z!1189 lambda!339713))))

(declare-fun bs!1541928 () Bool)

(assert (= bs!1541928 d!1948784))

(declare-fun m!7045626 () Bool)

(assert (=> bs!1541928 m!7045626))

(assert (=> b!6216622 d!1948784))

(declare-fun b!6217073 () Bool)

(declare-fun e!3784658 () (InoxSet Context!11074))

(declare-fun call!521502 () (InoxSet Context!11074))

(assert (=> b!6217073 (= e!3784658 call!521502)))

(declare-fun b!6217074 () Bool)

(declare-fun e!3784660 () (InoxSet Context!11074))

(assert (=> b!6217074 (= e!3784660 ((_ map or) call!521502 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))) (h!71084 s!2326))))))

(declare-fun b!6217075 () Bool)

(declare-fun e!3784659 () Bool)

(assert (=> b!6217075 (= e!3784659 (nullable!6146 (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217076 () Bool)

(assert (=> b!6217076 (= e!3784658 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217077 () Bool)

(assert (=> b!6217077 (= e!3784660 e!3784658)))

(declare-fun c!1123058 () Bool)

(assert (=> b!6217077 (= c!1123058 ((_ is Cons!64634) (exprs!6037 (h!71083 zl!343))))))

(declare-fun bm!521497 () Bool)

(assert (=> bm!521497 (= call!521502 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (h!71083 zl!343))) (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))) (h!71084 s!2326)))))

(declare-fun d!1948786 () Bool)

(declare-fun c!1123059 () Bool)

(assert (=> d!1948786 (= c!1123059 e!3784659)))

(declare-fun res!2569903 () Bool)

(assert (=> d!1948786 (=> (not res!2569903) (not e!3784659))))

(assert (=> d!1948786 (= res!2569903 ((_ is Cons!64634) (exprs!6037 (h!71083 zl!343))))))

(assert (=> d!1948786 (= (derivationStepZipperUp!1327 (h!71083 zl!343) (h!71084 s!2326)) e!3784660)))

(assert (= (and d!1948786 res!2569903) b!6217075))

(assert (= (and d!1948786 c!1123059) b!6217074))

(assert (= (and d!1948786 (not c!1123059)) b!6217077))

(assert (= (and b!6217077 c!1123058) b!6217073))

(assert (= (and b!6217077 (not c!1123058)) b!6217076))

(assert (= (or b!6217074 b!6217073) bm!521497))

(declare-fun m!7045628 () Bool)

(assert (=> b!6217074 m!7045628))

(assert (=> b!6217075 m!7045272))

(declare-fun m!7045630 () Bool)

(assert (=> bm!521497 m!7045630))

(assert (=> b!6216622 d!1948786))

(declare-fun b!6217078 () Bool)

(declare-fun e!3784661 () (InoxSet Context!11074))

(declare-fun call!521503 () (InoxSet Context!11074))

(assert (=> b!6217078 (= e!3784661 call!521503)))

(declare-fun b!6217079 () Bool)

(declare-fun e!3784663 () (InoxSet Context!11074))

(assert (=> b!6217079 (= e!3784663 ((_ map or) call!521503 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 lt!2344415))) (h!71084 s!2326))))))

(declare-fun b!6217080 () Bool)

(declare-fun e!3784662 () Bool)

(assert (=> b!6217080 (= e!3784662 (nullable!6146 (h!71082 (exprs!6037 lt!2344415))))))

(declare-fun b!6217081 () Bool)

(assert (=> b!6217081 (= e!3784661 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217082 () Bool)

(assert (=> b!6217082 (= e!3784663 e!3784661)))

(declare-fun c!1123060 () Bool)

(assert (=> b!6217082 (= c!1123060 ((_ is Cons!64634) (exprs!6037 lt!2344415)))))

(declare-fun bm!521498 () Bool)

(assert (=> bm!521498 (= call!521503 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 lt!2344415)) (Context!11075 (t!378286 (exprs!6037 lt!2344415))) (h!71084 s!2326)))))

(declare-fun d!1948788 () Bool)

(declare-fun c!1123061 () Bool)

(assert (=> d!1948788 (= c!1123061 e!3784662)))

(declare-fun res!2569904 () Bool)

(assert (=> d!1948788 (=> (not res!2569904) (not e!3784662))))

(assert (=> d!1948788 (= res!2569904 ((_ is Cons!64634) (exprs!6037 lt!2344415)))))

(assert (=> d!1948788 (= (derivationStepZipperUp!1327 lt!2344415 (h!71084 s!2326)) e!3784663)))

(assert (= (and d!1948788 res!2569904) b!6217080))

(assert (= (and d!1948788 c!1123061) b!6217079))

(assert (= (and d!1948788 (not c!1123061)) b!6217082))

(assert (= (and b!6217082 c!1123060) b!6217078))

(assert (= (and b!6217082 (not c!1123060)) b!6217081))

(assert (= (or b!6217079 b!6217078) bm!521498))

(declare-fun m!7045650 () Bool)

(assert (=> b!6217079 m!7045650))

(declare-fun m!7045652 () Bool)

(assert (=> b!6217080 m!7045652))

(declare-fun m!7045654 () Bool)

(assert (=> bm!521498 m!7045654))

(assert (=> b!6216622 d!1948788))

(declare-fun c!1123081 () Bool)

(declare-fun c!1123082 () Bool)

(declare-fun call!521523 () (InoxSet Context!11074))

(declare-fun c!1123083 () Bool)

(declare-fun call!521525 () List!64758)

(declare-fun bm!521517 () Bool)

(assert (=> bm!521517 (= call!521523 (derivationStepZipperDown!1401 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343))))))) (ite (or c!1123082 c!1123083) lt!2344415 (Context!11075 call!521525)) (h!71084 s!2326)))))

(declare-fun b!6217135 () Bool)

(declare-fun e!3784699 () (InoxSet Context!11074))

(declare-fun e!3784703 () (InoxSet Context!11074))

(assert (=> b!6217135 (= e!3784699 e!3784703)))

(assert (=> b!6217135 (= c!1123082 ((_ is Union!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun d!1948792 () Bool)

(declare-fun c!1123080 () Bool)

(assert (=> d!1948792 (= c!1123080 (and ((_ is ElementMatch!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))) (= (c!1122921 (h!71082 (exprs!6037 (h!71083 zl!343)))) (h!71084 s!2326))))))

(assert (=> d!1948792 (= (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (h!71083 zl!343))) lt!2344415 (h!71084 s!2326)) e!3784699)))

(declare-fun b!6217136 () Bool)

(declare-fun e!3784700 () Bool)

(assert (=> b!6217136 (= c!1123083 e!3784700)))

(declare-fun res!2569921 () Bool)

(assert (=> b!6217136 (=> (not res!2569921) (not e!3784700))))

(assert (=> b!6217136 (= res!2569921 ((_ is Concat!24998) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun e!3784701 () (InoxSet Context!11074))

(assert (=> b!6217136 (= e!3784703 e!3784701)))

(declare-fun bm!521518 () Bool)

(declare-fun call!521526 () (InoxSet Context!11074))

(declare-fun call!521522 () (InoxSet Context!11074))

(assert (=> bm!521518 (= call!521526 call!521522)))

(declare-fun b!6217137 () Bool)

(declare-fun e!3784702 () (InoxSet Context!11074))

(assert (=> b!6217137 (= e!3784702 call!521526)))

(declare-fun call!521524 () List!64758)

(declare-fun bm!521519 () Bool)

(declare-fun $colon$colon!2022 (List!64758 Regex!16153) List!64758)

(assert (=> bm!521519 (= call!521524 ($colon$colon!2022 (exprs!6037 lt!2344415) (ite (or c!1123083 c!1123081) (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (h!71082 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6217138 () Bool)

(assert (=> b!6217138 (= e!3784699 (store ((as const (Array Context!11074 Bool)) false) lt!2344415 true))))

(declare-fun bm!521520 () Bool)

(declare-fun call!521527 () (InoxSet Context!11074))

(assert (=> bm!521520 (= call!521527 (derivationStepZipperDown!1401 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))) (ite c!1123082 lt!2344415 (Context!11075 call!521524)) (h!71084 s!2326)))))

(declare-fun b!6217139 () Bool)

(declare-fun e!3784698 () (InoxSet Context!11074))

(assert (=> b!6217139 (= e!3784698 call!521526)))

(declare-fun b!6217140 () Bool)

(assert (=> b!6217140 (= e!3784700 (nullable!6146 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6217141 () Bool)

(declare-fun c!1123084 () Bool)

(assert (=> b!6217141 (= c!1123084 ((_ is Star!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> b!6217141 (= e!3784702 e!3784698)))

(declare-fun b!6217142 () Bool)

(assert (=> b!6217142 (= e!3784703 ((_ map or) call!521527 call!521523))))

(declare-fun bm!521521 () Bool)

(assert (=> bm!521521 (= call!521522 call!521523)))

(declare-fun b!6217143 () Bool)

(assert (=> b!6217143 (= e!3784701 e!3784702)))

(assert (=> b!6217143 (= c!1123081 ((_ is Concat!24998) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun bm!521522 () Bool)

(assert (=> bm!521522 (= call!521525 call!521524)))

(declare-fun b!6217144 () Bool)

(assert (=> b!6217144 (= e!3784701 ((_ map or) call!521527 call!521522))))

(declare-fun b!6217145 () Bool)

(assert (=> b!6217145 (= e!3784698 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948792 c!1123080) b!6217138))

(assert (= (and d!1948792 (not c!1123080)) b!6217135))

(assert (= (and b!6217135 c!1123082) b!6217142))

(assert (= (and b!6217135 (not c!1123082)) b!6217136))

(assert (= (and b!6217136 res!2569921) b!6217140))

(assert (= (and b!6217136 c!1123083) b!6217144))

(assert (= (and b!6217136 (not c!1123083)) b!6217143))

(assert (= (and b!6217143 c!1123081) b!6217137))

(assert (= (and b!6217143 (not c!1123081)) b!6217141))

(assert (= (and b!6217141 c!1123084) b!6217139))

(assert (= (and b!6217141 (not c!1123084)) b!6217145))

(assert (= (or b!6217137 b!6217139) bm!521522))

(assert (= (or b!6217137 b!6217139) bm!521518))

(assert (= (or b!6217144 bm!521522) bm!521519))

(assert (= (or b!6217144 bm!521518) bm!521521))

(assert (= (or b!6217142 bm!521521) bm!521517))

(assert (= (or b!6217142 b!6217144) bm!521520))

(declare-fun m!7045692 () Bool)

(assert (=> b!6217138 m!7045692))

(declare-fun m!7045694 () Bool)

(assert (=> bm!521517 m!7045694))

(declare-fun m!7045696 () Bool)

(assert (=> bm!521519 m!7045696))

(declare-fun m!7045698 () Bool)

(assert (=> b!6217140 m!7045698))

(declare-fun m!7045700 () Bool)

(assert (=> bm!521520 m!7045700))

(assert (=> b!6216622 d!1948792))

(declare-fun b!6217253 () Bool)

(declare-fun res!2569945 () Bool)

(declare-fun e!3784763 () Bool)

(assert (=> b!6217253 (=> (not res!2569945) (not e!3784763))))

(declare-fun lt!2344494 () Option!16044)

(declare-fun get!22323 (Option!16044) tuple2!66264)

(assert (=> b!6217253 (= res!2569945 (matchR!8336 (regOne!32818 r!7292) (_1!36435 (get!22323 lt!2344494))))))

(declare-fun b!6217254 () Bool)

(declare-fun lt!2344492 () Unit!157943)

(declare-fun lt!2344493 () Unit!157943)

(assert (=> b!6217254 (= lt!2344492 lt!2344493)))

(declare-fun ++!14231 (List!64760 List!64760) List!64760)

(assert (=> b!6217254 (= (++!14231 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (t!378288 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2326 (List!64760 C!32576 List!64760 List!64760) Unit!157943)

(assert (=> b!6217254 (= lt!2344493 (lemmaMoveElementToOtherListKeepsConcatEq!2326 Nil!64636 (h!71084 s!2326) (t!378288 s!2326) s!2326))))

(declare-fun e!3784762 () Option!16044)

(assert (=> b!6217254 (= e!3784762 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (t!378288 s!2326) s!2326))))

(declare-fun b!6217255 () Bool)

(declare-fun e!3784761 () Option!16044)

(assert (=> b!6217255 (= e!3784761 (Some!16043 (tuple2!66265 Nil!64636 s!2326)))))

(declare-fun b!6217256 () Bool)

(assert (=> b!6217256 (= e!3784763 (= (++!14231 (_1!36435 (get!22323 lt!2344494)) (_2!36435 (get!22323 lt!2344494))) s!2326))))

(declare-fun d!1948810 () Bool)

(declare-fun e!3784760 () Bool)

(assert (=> d!1948810 e!3784760))

(declare-fun res!2569942 () Bool)

(assert (=> d!1948810 (=> res!2569942 e!3784760)))

(assert (=> d!1948810 (= res!2569942 e!3784763)))

(declare-fun res!2569944 () Bool)

(assert (=> d!1948810 (=> (not res!2569944) (not e!3784763))))

(assert (=> d!1948810 (= res!2569944 (isDefined!12747 lt!2344494))))

(assert (=> d!1948810 (= lt!2344494 e!3784761)))

(declare-fun c!1123103 () Bool)

(declare-fun e!3784759 () Bool)

(assert (=> d!1948810 (= c!1123103 e!3784759)))

(declare-fun res!2569941 () Bool)

(assert (=> d!1948810 (=> (not res!2569941) (not e!3784759))))

(assert (=> d!1948810 (= res!2569941 (matchR!8336 (regOne!32818 r!7292) Nil!64636))))

(assert (=> d!1948810 (validRegex!7889 (regOne!32818 r!7292))))

(assert (=> d!1948810 (= (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326) lt!2344494)))

(declare-fun b!6217257 () Bool)

(assert (=> b!6217257 (= e!3784762 None!16043)))

(declare-fun b!6217258 () Bool)

(assert (=> b!6217258 (= e!3784760 (not (isDefined!12747 lt!2344494)))))

(declare-fun b!6217259 () Bool)

(declare-fun res!2569943 () Bool)

(assert (=> b!6217259 (=> (not res!2569943) (not e!3784763))))

(assert (=> b!6217259 (= res!2569943 (matchR!8336 (regTwo!32818 r!7292) (_2!36435 (get!22323 lt!2344494))))))

(declare-fun b!6217260 () Bool)

(assert (=> b!6217260 (= e!3784759 (matchR!8336 (regTwo!32818 r!7292) s!2326))))

(declare-fun b!6217261 () Bool)

(assert (=> b!6217261 (= e!3784761 e!3784762)))

(declare-fun c!1123102 () Bool)

(assert (=> b!6217261 (= c!1123102 ((_ is Nil!64636) s!2326))))

(assert (= (and d!1948810 res!2569941) b!6217260))

(assert (= (and d!1948810 c!1123103) b!6217255))

(assert (= (and d!1948810 (not c!1123103)) b!6217261))

(assert (= (and b!6217261 c!1123102) b!6217257))

(assert (= (and b!6217261 (not c!1123102)) b!6217254))

(assert (= (and d!1948810 res!2569944) b!6217253))

(assert (= (and b!6217253 res!2569945) b!6217259))

(assert (= (and b!6217259 res!2569943) b!6217256))

(assert (= (and d!1948810 (not res!2569942)) b!6217258))

(declare-fun m!7045748 () Bool)

(assert (=> d!1948810 m!7045748))

(declare-fun m!7045750 () Bool)

(assert (=> d!1948810 m!7045750))

(declare-fun m!7045752 () Bool)

(assert (=> d!1948810 m!7045752))

(assert (=> b!6217258 m!7045748))

(declare-fun m!7045754 () Bool)

(assert (=> b!6217260 m!7045754))

(declare-fun m!7045756 () Bool)

(assert (=> b!6217259 m!7045756))

(declare-fun m!7045758 () Bool)

(assert (=> b!6217259 m!7045758))

(assert (=> b!6217256 m!7045756))

(declare-fun m!7045760 () Bool)

(assert (=> b!6217256 m!7045760))

(assert (=> b!6217253 m!7045756))

(declare-fun m!7045762 () Bool)

(assert (=> b!6217253 m!7045762))

(declare-fun m!7045764 () Bool)

(assert (=> b!6217254 m!7045764))

(assert (=> b!6217254 m!7045764))

(declare-fun m!7045766 () Bool)

(assert (=> b!6217254 m!7045766))

(declare-fun m!7045768 () Bool)

(assert (=> b!6217254 m!7045768))

(assert (=> b!6217254 m!7045764))

(declare-fun m!7045770 () Bool)

(assert (=> b!6217254 m!7045770))

(assert (=> b!6216632 d!1948810))

(declare-fun d!1948832 () Bool)

(declare-fun choose!46199 (Int) Bool)

(assert (=> d!1948832 (= (Exists!3223 lambda!339712) (choose!46199 lambda!339712))))

(declare-fun bs!1541941 () Bool)

(assert (= bs!1541941 d!1948832))

(declare-fun m!7045772 () Bool)

(assert (=> bs!1541941 m!7045772))

(assert (=> b!6216632 d!1948832))

(declare-fun d!1948834 () Bool)

(assert (=> d!1948834 (= (Exists!3223 lambda!339711) (choose!46199 lambda!339711))))

(declare-fun bs!1541942 () Bool)

(assert (= bs!1541942 d!1948834))

(declare-fun m!7045774 () Bool)

(assert (=> bs!1541942 m!7045774))

(assert (=> b!6216632 d!1948834))

(declare-fun bs!1541943 () Bool)

(declare-fun d!1948836 () Bool)

(assert (= bs!1541943 (and d!1948836 b!6216632)))

(declare-fun lambda!339761 () Int)

(assert (=> bs!1541943 (= lambda!339761 lambda!339711)))

(assert (=> bs!1541943 (not (= lambda!339761 lambda!339712))))

(declare-fun bs!1541944 () Bool)

(assert (= bs!1541944 (and d!1948836 b!6216876)))

(assert (=> bs!1541944 (not (= lambda!339761 lambda!339740))))

(declare-fun bs!1541945 () Bool)

(assert (= bs!1541945 (and d!1948836 b!6216878)))

(assert (=> bs!1541945 (not (= lambda!339761 lambda!339741))))

(assert (=> d!1948836 true))

(assert (=> d!1948836 true))

(assert (=> d!1948836 true))

(assert (=> d!1948836 (= (isDefined!12747 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326)) (Exists!3223 lambda!339761))))

(declare-fun lt!2344497 () Unit!157943)

(declare-fun choose!46200 (Regex!16153 Regex!16153 List!64760) Unit!157943)

(assert (=> d!1948836 (= lt!2344497 (choose!46200 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326))))

(assert (=> d!1948836 (validRegex!7889 (regOne!32818 r!7292))))

(assert (=> d!1948836 (= (lemmaFindConcatSeparationEquivalentToExists!2222 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326) lt!2344497)))

(declare-fun bs!1541946 () Bool)

(assert (= bs!1541946 d!1948836))

(declare-fun m!7045776 () Bool)

(assert (=> bs!1541946 m!7045776))

(assert (=> bs!1541946 m!7045298))

(assert (=> bs!1541946 m!7045300))

(declare-fun m!7045778 () Bool)

(assert (=> bs!1541946 m!7045778))

(assert (=> bs!1541946 m!7045298))

(assert (=> bs!1541946 m!7045752))

(assert (=> b!6216632 d!1948836))

(declare-fun bs!1541947 () Bool)

(declare-fun d!1948838 () Bool)

(assert (= bs!1541947 (and d!1948838 b!6216878)))

(declare-fun lambda!339766 () Int)

(assert (=> bs!1541947 (not (= lambda!339766 lambda!339741))))

(declare-fun bs!1541948 () Bool)

(assert (= bs!1541948 (and d!1948838 b!6216632)))

(assert (=> bs!1541948 (not (= lambda!339766 lambda!339712))))

(assert (=> bs!1541948 (= lambda!339766 lambda!339711)))

(declare-fun bs!1541949 () Bool)

(assert (= bs!1541949 (and d!1948838 b!6216876)))

(assert (=> bs!1541949 (not (= lambda!339766 lambda!339740))))

(declare-fun bs!1541950 () Bool)

(assert (= bs!1541950 (and d!1948838 d!1948836)))

(assert (=> bs!1541950 (= lambda!339766 lambda!339761)))

(assert (=> d!1948838 true))

(assert (=> d!1948838 true))

(assert (=> d!1948838 true))

(declare-fun lambda!339767 () Int)

(assert (=> bs!1541947 (= lambda!339767 lambda!339741)))

(assert (=> bs!1541948 (= lambda!339767 lambda!339712)))

(declare-fun bs!1541951 () Bool)

(assert (= bs!1541951 d!1948838))

(assert (=> bs!1541951 (not (= lambda!339767 lambda!339766))))

(assert (=> bs!1541948 (not (= lambda!339767 lambda!339711))))

(assert (=> bs!1541949 (not (= lambda!339767 lambda!339740))))

(assert (=> bs!1541950 (not (= lambda!339767 lambda!339761))))

(assert (=> d!1948838 true))

(assert (=> d!1948838 true))

(assert (=> d!1948838 true))

(assert (=> d!1948838 (= (Exists!3223 lambda!339766) (Exists!3223 lambda!339767))))

(declare-fun lt!2344500 () Unit!157943)

(declare-fun choose!46201 (Regex!16153 Regex!16153 List!64760) Unit!157943)

(assert (=> d!1948838 (= lt!2344500 (choose!46201 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326))))

(assert (=> d!1948838 (validRegex!7889 (regOne!32818 r!7292))))

(assert (=> d!1948838 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1760 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326) lt!2344500)))

(declare-fun m!7045780 () Bool)

(assert (=> bs!1541951 m!7045780))

(declare-fun m!7045782 () Bool)

(assert (=> bs!1541951 m!7045782))

(declare-fun m!7045784 () Bool)

(assert (=> bs!1541951 m!7045784))

(assert (=> bs!1541951 m!7045752))

(assert (=> b!6216632 d!1948838))

(declare-fun d!1948840 () Bool)

(declare-fun isEmpty!36643 (Option!16044) Bool)

(assert (=> d!1948840 (= (isDefined!12747 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326)) (not (isEmpty!36643 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326))))))

(declare-fun bs!1541952 () Bool)

(assert (= bs!1541952 d!1948840))

(assert (=> bs!1541952 m!7045298))

(declare-fun m!7045786 () Bool)

(assert (=> bs!1541952 m!7045786))

(assert (=> b!6216632 d!1948840))

(declare-fun b!6217292 () Bool)

(declare-fun e!3784784 () Bool)

(declare-fun e!3784788 () Bool)

(assert (=> b!6217292 (= e!3784784 e!3784788)))

(declare-fun res!2569971 () Bool)

(assert (=> b!6217292 (= res!2569971 (not (nullable!6146 (reg!16482 r!7292))))))

(assert (=> b!6217292 (=> (not res!2569971) (not e!3784788))))

(declare-fun bm!521541 () Bool)

(declare-fun call!521546 () Bool)

(declare-fun call!521547 () Bool)

(assert (=> bm!521541 (= call!521546 call!521547)))

(declare-fun b!6217293 () Bool)

(declare-fun e!3784789 () Bool)

(assert (=> b!6217293 (= e!3784784 e!3784789)))

(declare-fun c!1123108 () Bool)

(assert (=> b!6217293 (= c!1123108 ((_ is Union!16153) r!7292))))

(declare-fun b!6217294 () Bool)

(declare-fun e!3784787 () Bool)

(assert (=> b!6217294 (= e!3784787 e!3784784)))

(declare-fun c!1123109 () Bool)

(assert (=> b!6217294 (= c!1123109 ((_ is Star!16153) r!7292))))

(declare-fun b!6217295 () Bool)

(declare-fun e!3784785 () Bool)

(declare-fun call!521548 () Bool)

(assert (=> b!6217295 (= e!3784785 call!521548)))

(declare-fun b!6217296 () Bool)

(assert (=> b!6217296 (= e!3784788 call!521547)))

(declare-fun d!1948842 () Bool)

(declare-fun res!2569972 () Bool)

(assert (=> d!1948842 (=> res!2569972 e!3784787)))

(assert (=> d!1948842 (= res!2569972 ((_ is ElementMatch!16153) r!7292))))

(assert (=> d!1948842 (= (validRegex!7889 r!7292) e!3784787)))

(declare-fun b!6217297 () Bool)

(declare-fun e!3784790 () Bool)

(declare-fun e!3784786 () Bool)

(assert (=> b!6217297 (= e!3784790 e!3784786)))

(declare-fun res!2569969 () Bool)

(assert (=> b!6217297 (=> (not res!2569969) (not e!3784786))))

(assert (=> b!6217297 (= res!2569969 call!521546)))

(declare-fun bm!521542 () Bool)

(assert (=> bm!521542 (= call!521547 (validRegex!7889 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))))))

(declare-fun b!6217298 () Bool)

(declare-fun res!2569970 () Bool)

(assert (=> b!6217298 (=> (not res!2569970) (not e!3784785))))

(assert (=> b!6217298 (= res!2569970 call!521546)))

(assert (=> b!6217298 (= e!3784789 e!3784785)))

(declare-fun b!6217299 () Bool)

(declare-fun res!2569968 () Bool)

(assert (=> b!6217299 (=> res!2569968 e!3784790)))

(assert (=> b!6217299 (= res!2569968 (not ((_ is Concat!24998) r!7292)))))

(assert (=> b!6217299 (= e!3784789 e!3784790)))

(declare-fun b!6217300 () Bool)

(assert (=> b!6217300 (= e!3784786 call!521548)))

(declare-fun bm!521543 () Bool)

(assert (=> bm!521543 (= call!521548 (validRegex!7889 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))))))

(assert (= (and d!1948842 (not res!2569972)) b!6217294))

(assert (= (and b!6217294 c!1123109) b!6217292))

(assert (= (and b!6217294 (not c!1123109)) b!6217293))

(assert (= (and b!6217292 res!2569971) b!6217296))

(assert (= (and b!6217293 c!1123108) b!6217298))

(assert (= (and b!6217293 (not c!1123108)) b!6217299))

(assert (= (and b!6217298 res!2569970) b!6217295))

(assert (= (and b!6217299 (not res!2569968)) b!6217297))

(assert (= (and b!6217297 res!2569969) b!6217300))

(assert (= (or b!6217295 b!6217300) bm!521543))

(assert (= (or b!6217298 b!6217297) bm!521541))

(assert (= (or b!6217296 bm!521541) bm!521542))

(declare-fun m!7045788 () Bool)

(assert (=> b!6217292 m!7045788))

(declare-fun m!7045790 () Bool)

(assert (=> bm!521542 m!7045790))

(declare-fun m!7045792 () Bool)

(assert (=> bm!521543 m!7045792))

(assert (=> start!619588 d!1948842))

(declare-fun bm!521544 () Bool)

(declare-fun c!1123112 () Bool)

(declare-fun call!521552 () List!64758)

(declare-fun c!1123113 () Bool)

(declare-fun call!521550 () (InoxSet Context!11074))

(declare-fun c!1123111 () Bool)

(assert (=> bm!521544 (= call!521550 (derivationStepZipperDown!1401 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292)))))) (ite (or c!1123112 c!1123113) lt!2344415 (Context!11075 call!521552)) (h!71084 s!2326)))))

(declare-fun b!6217301 () Bool)

(declare-fun e!3784792 () (InoxSet Context!11074))

(declare-fun e!3784796 () (InoxSet Context!11074))

(assert (=> b!6217301 (= e!3784792 e!3784796)))

(assert (=> b!6217301 (= c!1123112 ((_ is Union!16153) (regTwo!32818 (regOne!32818 r!7292))))))

(declare-fun d!1948844 () Bool)

(declare-fun c!1123110 () Bool)

(assert (=> d!1948844 (= c!1123110 (and ((_ is ElementMatch!16153) (regTwo!32818 (regOne!32818 r!7292))) (= (c!1122921 (regTwo!32818 (regOne!32818 r!7292))) (h!71084 s!2326))))))

(assert (=> d!1948844 (= (derivationStepZipperDown!1401 (regTwo!32818 (regOne!32818 r!7292)) lt!2344415 (h!71084 s!2326)) e!3784792)))

(declare-fun b!6217302 () Bool)

(declare-fun e!3784793 () Bool)

(assert (=> b!6217302 (= c!1123113 e!3784793)))

(declare-fun res!2569973 () Bool)

(assert (=> b!6217302 (=> (not res!2569973) (not e!3784793))))

(assert (=> b!6217302 (= res!2569973 ((_ is Concat!24998) (regTwo!32818 (regOne!32818 r!7292))))))

(declare-fun e!3784794 () (InoxSet Context!11074))

(assert (=> b!6217302 (= e!3784796 e!3784794)))

(declare-fun bm!521545 () Bool)

(declare-fun call!521553 () (InoxSet Context!11074))

(declare-fun call!521549 () (InoxSet Context!11074))

(assert (=> bm!521545 (= call!521553 call!521549)))

(declare-fun b!6217303 () Bool)

(declare-fun e!3784795 () (InoxSet Context!11074))

(assert (=> b!6217303 (= e!3784795 call!521553)))

(declare-fun bm!521546 () Bool)

(declare-fun call!521551 () List!64758)

(assert (=> bm!521546 (= call!521551 ($colon$colon!2022 (exprs!6037 lt!2344415) (ite (or c!1123113 c!1123111) (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (regTwo!32818 (regOne!32818 r!7292)))))))

(declare-fun b!6217304 () Bool)

(assert (=> b!6217304 (= e!3784792 (store ((as const (Array Context!11074 Bool)) false) lt!2344415 true))))

(declare-fun call!521554 () (InoxSet Context!11074))

(declare-fun bm!521547 () Bool)

(assert (=> bm!521547 (= call!521554 (derivationStepZipperDown!1401 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))) (ite c!1123112 lt!2344415 (Context!11075 call!521551)) (h!71084 s!2326)))))

(declare-fun b!6217305 () Bool)

(declare-fun e!3784791 () (InoxSet Context!11074))

(assert (=> b!6217305 (= e!3784791 call!521553)))

(declare-fun b!6217306 () Bool)

(assert (=> b!6217306 (= e!3784793 (nullable!6146 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))))))

(declare-fun b!6217307 () Bool)

(declare-fun c!1123114 () Bool)

(assert (=> b!6217307 (= c!1123114 ((_ is Star!16153) (regTwo!32818 (regOne!32818 r!7292))))))

(assert (=> b!6217307 (= e!3784795 e!3784791)))

(declare-fun b!6217308 () Bool)

(assert (=> b!6217308 (= e!3784796 ((_ map or) call!521554 call!521550))))

(declare-fun bm!521548 () Bool)

(assert (=> bm!521548 (= call!521549 call!521550)))

(declare-fun b!6217309 () Bool)

(assert (=> b!6217309 (= e!3784794 e!3784795)))

(assert (=> b!6217309 (= c!1123111 ((_ is Concat!24998) (regTwo!32818 (regOne!32818 r!7292))))))

(declare-fun bm!521549 () Bool)

(assert (=> bm!521549 (= call!521552 call!521551)))

(declare-fun b!6217310 () Bool)

(assert (=> b!6217310 (= e!3784794 ((_ map or) call!521554 call!521549))))

(declare-fun b!6217311 () Bool)

(assert (=> b!6217311 (= e!3784791 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948844 c!1123110) b!6217304))

(assert (= (and d!1948844 (not c!1123110)) b!6217301))

(assert (= (and b!6217301 c!1123112) b!6217308))

(assert (= (and b!6217301 (not c!1123112)) b!6217302))

(assert (= (and b!6217302 res!2569973) b!6217306))

(assert (= (and b!6217302 c!1123113) b!6217310))

(assert (= (and b!6217302 (not c!1123113)) b!6217309))

(assert (= (and b!6217309 c!1123111) b!6217303))

(assert (= (and b!6217309 (not c!1123111)) b!6217307))

(assert (= (and b!6217307 c!1123114) b!6217305))

(assert (= (and b!6217307 (not c!1123114)) b!6217311))

(assert (= (or b!6217303 b!6217305) bm!521549))

(assert (= (or b!6217303 b!6217305) bm!521545))

(assert (= (or b!6217310 bm!521549) bm!521546))

(assert (= (or b!6217310 bm!521545) bm!521548))

(assert (= (or b!6217308 bm!521548) bm!521544))

(assert (= (or b!6217308 b!6217310) bm!521547))

(assert (=> b!6217304 m!7045692))

(declare-fun m!7045794 () Bool)

(assert (=> bm!521544 m!7045794))

(declare-fun m!7045796 () Bool)

(assert (=> bm!521546 m!7045796))

(declare-fun m!7045798 () Bool)

(assert (=> b!6217306 m!7045798))

(declare-fun m!7045800 () Bool)

(assert (=> bm!521547 m!7045800))

(assert (=> b!6216621 d!1948844))

(declare-fun c!1123116 () Bool)

(declare-fun c!1123117 () Bool)

(declare-fun c!1123118 () Bool)

(declare-fun bm!521550 () Bool)

(declare-fun call!521558 () List!64758)

(declare-fun call!521556 () (InoxSet Context!11074))

(assert (=> bm!521550 (= call!521556 (derivationStepZipperDown!1401 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292)))))) (ite (or c!1123117 c!1123118) lt!2344399 (Context!11075 call!521558)) (h!71084 s!2326)))))

(declare-fun b!6217312 () Bool)

(declare-fun e!3784798 () (InoxSet Context!11074))

(declare-fun e!3784802 () (InoxSet Context!11074))

(assert (=> b!6217312 (= e!3784798 e!3784802)))

(assert (=> b!6217312 (= c!1123117 ((_ is Union!16153) (regOne!32818 (regOne!32818 r!7292))))))

(declare-fun d!1948846 () Bool)

(declare-fun c!1123115 () Bool)

(assert (=> d!1948846 (= c!1123115 (and ((_ is ElementMatch!16153) (regOne!32818 (regOne!32818 r!7292))) (= (c!1122921 (regOne!32818 (regOne!32818 r!7292))) (h!71084 s!2326))))))

(assert (=> d!1948846 (= (derivationStepZipperDown!1401 (regOne!32818 (regOne!32818 r!7292)) lt!2344399 (h!71084 s!2326)) e!3784798)))

(declare-fun b!6217313 () Bool)

(declare-fun e!3784799 () Bool)

(assert (=> b!6217313 (= c!1123118 e!3784799)))

(declare-fun res!2569974 () Bool)

(assert (=> b!6217313 (=> (not res!2569974) (not e!3784799))))

(assert (=> b!6217313 (= res!2569974 ((_ is Concat!24998) (regOne!32818 (regOne!32818 r!7292))))))

(declare-fun e!3784800 () (InoxSet Context!11074))

(assert (=> b!6217313 (= e!3784802 e!3784800)))

(declare-fun bm!521551 () Bool)

(declare-fun call!521559 () (InoxSet Context!11074))

(declare-fun call!521555 () (InoxSet Context!11074))

(assert (=> bm!521551 (= call!521559 call!521555)))

(declare-fun b!6217314 () Bool)

(declare-fun e!3784801 () (InoxSet Context!11074))

(assert (=> b!6217314 (= e!3784801 call!521559)))

(declare-fun call!521557 () List!64758)

(declare-fun bm!521552 () Bool)

(assert (=> bm!521552 (= call!521557 ($colon$colon!2022 (exprs!6037 lt!2344399) (ite (or c!1123118 c!1123116) (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 r!7292)))))))

(declare-fun b!6217315 () Bool)

(assert (=> b!6217315 (= e!3784798 (store ((as const (Array Context!11074 Bool)) false) lt!2344399 true))))

(declare-fun call!521560 () (InoxSet Context!11074))

(declare-fun bm!521553 () Bool)

(assert (=> bm!521553 (= call!521560 (derivationStepZipperDown!1401 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))) (ite c!1123117 lt!2344399 (Context!11075 call!521557)) (h!71084 s!2326)))))

(declare-fun b!6217316 () Bool)

(declare-fun e!3784797 () (InoxSet Context!11074))

(assert (=> b!6217316 (= e!3784797 call!521559)))

(declare-fun b!6217317 () Bool)

(assert (=> b!6217317 (= e!3784799 (nullable!6146 (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))))))

(declare-fun b!6217318 () Bool)

(declare-fun c!1123119 () Bool)

(assert (=> b!6217318 (= c!1123119 ((_ is Star!16153) (regOne!32818 (regOne!32818 r!7292))))))

(assert (=> b!6217318 (= e!3784801 e!3784797)))

(declare-fun b!6217319 () Bool)

(assert (=> b!6217319 (= e!3784802 ((_ map or) call!521560 call!521556))))

(declare-fun bm!521554 () Bool)

(assert (=> bm!521554 (= call!521555 call!521556)))

(declare-fun b!6217320 () Bool)

(assert (=> b!6217320 (= e!3784800 e!3784801)))

(assert (=> b!6217320 (= c!1123116 ((_ is Concat!24998) (regOne!32818 (regOne!32818 r!7292))))))

(declare-fun bm!521555 () Bool)

(assert (=> bm!521555 (= call!521558 call!521557)))

(declare-fun b!6217321 () Bool)

(assert (=> b!6217321 (= e!3784800 ((_ map or) call!521560 call!521555))))

(declare-fun b!6217322 () Bool)

(assert (=> b!6217322 (= e!3784797 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948846 c!1123115) b!6217315))

(assert (= (and d!1948846 (not c!1123115)) b!6217312))

(assert (= (and b!6217312 c!1123117) b!6217319))

(assert (= (and b!6217312 (not c!1123117)) b!6217313))

(assert (= (and b!6217313 res!2569974) b!6217317))

(assert (= (and b!6217313 c!1123118) b!6217321))

(assert (= (and b!6217313 (not c!1123118)) b!6217320))

(assert (= (and b!6217320 c!1123116) b!6217314))

(assert (= (and b!6217320 (not c!1123116)) b!6217318))

(assert (= (and b!6217318 c!1123119) b!6217316))

(assert (= (and b!6217318 (not c!1123119)) b!6217322))

(assert (= (or b!6217314 b!6217316) bm!521555))

(assert (= (or b!6217314 b!6217316) bm!521551))

(assert (= (or b!6217321 bm!521555) bm!521552))

(assert (= (or b!6217321 bm!521551) bm!521554))

(assert (= (or b!6217319 bm!521554) bm!521550))

(assert (= (or b!6217319 b!6217321) bm!521553))

(declare-fun m!7045802 () Bool)

(assert (=> b!6217315 m!7045802))

(declare-fun m!7045804 () Bool)

(assert (=> bm!521550 m!7045804))

(declare-fun m!7045806 () Bool)

(assert (=> bm!521552 m!7045806))

(declare-fun m!7045808 () Bool)

(assert (=> b!6217317 m!7045808))

(declare-fun m!7045810 () Bool)

(assert (=> bm!521553 m!7045810))

(assert (=> b!6216621 d!1948846))

(declare-fun bs!1541953 () Bool)

(declare-fun d!1948848 () Bool)

(assert (= bs!1541953 (and d!1948848 d!1948720)))

(declare-fun lambda!339770 () Int)

(assert (=> bs!1541953 (= lambda!339770 lambda!339734)))

(declare-fun bs!1541954 () Bool)

(assert (= bs!1541954 (and d!1948848 d!1948762)))

(assert (=> bs!1541954 (= lambda!339770 lambda!339748)))

(declare-fun bs!1541955 () Bool)

(assert (= bs!1541955 (and d!1948848 d!1948768)))

(assert (=> bs!1541955 (= lambda!339770 lambda!339751)))

(declare-fun bs!1541956 () Bool)

(assert (= bs!1541956 (and d!1948848 d!1948776)))

(assert (=> bs!1541956 (= lambda!339770 lambda!339756)))

(declare-fun b!6217343 () Bool)

(declare-fun e!3784816 () Bool)

(assert (=> b!6217343 (= e!3784816 (isEmpty!36638 (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217344 () Bool)

(declare-fun e!3784815 () Bool)

(declare-fun lt!2344503 () Regex!16153)

(assert (=> b!6217344 (= e!3784815 (= lt!2344503 (head!12815 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217345 () Bool)

(declare-fun e!3784820 () Regex!16153)

(assert (=> b!6217345 (= e!3784820 (Concat!24998 (h!71082 (exprs!6037 (h!71083 zl!343))) (generalisedConcat!1750 (t!378286 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun e!3784817 () Bool)

(assert (=> d!1948848 e!3784817))

(declare-fun res!2569980 () Bool)

(assert (=> d!1948848 (=> (not res!2569980) (not e!3784817))))

(assert (=> d!1948848 (= res!2569980 (validRegex!7889 lt!2344503))))

(declare-fun e!3784818 () Regex!16153)

(assert (=> d!1948848 (= lt!2344503 e!3784818)))

(declare-fun c!1123131 () Bool)

(assert (=> d!1948848 (= c!1123131 e!3784816)))

(declare-fun res!2569979 () Bool)

(assert (=> d!1948848 (=> (not res!2569979) (not e!3784816))))

(assert (=> d!1948848 (= res!2569979 ((_ is Cons!64634) (exprs!6037 (h!71083 zl!343))))))

(assert (=> d!1948848 (forall!15267 (exprs!6037 (h!71083 zl!343)) lambda!339770)))

(assert (=> d!1948848 (= (generalisedConcat!1750 (exprs!6037 (h!71083 zl!343))) lt!2344503)))

(declare-fun b!6217346 () Bool)

(assert (=> b!6217346 (= e!3784820 EmptyExpr!16153)))

(declare-fun b!6217347 () Bool)

(declare-fun e!3784819 () Bool)

(assert (=> b!6217347 (= e!3784817 e!3784819)))

(declare-fun c!1123129 () Bool)

(assert (=> b!6217347 (= c!1123129 (isEmpty!36638 (exprs!6037 (h!71083 zl!343))))))

(declare-fun b!6217348 () Bool)

(assert (=> b!6217348 (= e!3784818 e!3784820)))

(declare-fun c!1123128 () Bool)

(assert (=> b!6217348 (= c!1123128 ((_ is Cons!64634) (exprs!6037 (h!71083 zl!343))))))

(declare-fun b!6217349 () Bool)

(declare-fun isEmptyExpr!1563 (Regex!16153) Bool)

(assert (=> b!6217349 (= e!3784819 (isEmptyExpr!1563 lt!2344503))))

(declare-fun b!6217350 () Bool)

(declare-fun isConcat!1086 (Regex!16153) Bool)

(assert (=> b!6217350 (= e!3784815 (isConcat!1086 lt!2344503))))

(declare-fun b!6217351 () Bool)

(assert (=> b!6217351 (= e!3784819 e!3784815)))

(declare-fun c!1123130 () Bool)

(assert (=> b!6217351 (= c!1123130 (isEmpty!36638 (tail!11900 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217352 () Bool)

(assert (=> b!6217352 (= e!3784818 (h!71082 (exprs!6037 (h!71083 zl!343))))))

(assert (= (and d!1948848 res!2569979) b!6217343))

(assert (= (and d!1948848 c!1123131) b!6217352))

(assert (= (and d!1948848 (not c!1123131)) b!6217348))

(assert (= (and b!6217348 c!1123128) b!6217345))

(assert (= (and b!6217348 (not c!1123128)) b!6217346))

(assert (= (and d!1948848 res!2569980) b!6217347))

(assert (= (and b!6217347 c!1123129) b!6217349))

(assert (= (and b!6217347 (not c!1123129)) b!6217351))

(assert (= (and b!6217351 c!1123130) b!6217344))

(assert (= (and b!6217351 (not c!1123130)) b!6217350))

(declare-fun m!7045812 () Bool)

(assert (=> d!1948848 m!7045812))

(declare-fun m!7045814 () Bool)

(assert (=> d!1948848 m!7045814))

(declare-fun m!7045816 () Bool)

(assert (=> b!6217344 m!7045816))

(declare-fun m!7045818 () Bool)

(assert (=> b!6217351 m!7045818))

(assert (=> b!6217351 m!7045818))

(declare-fun m!7045820 () Bool)

(assert (=> b!6217351 m!7045820))

(declare-fun m!7045822 () Bool)

(assert (=> b!6217350 m!7045822))

(assert (=> b!6217343 m!7045346))

(declare-fun m!7045824 () Bool)

(assert (=> b!6217347 m!7045824))

(declare-fun m!7045826 () Bool)

(assert (=> b!6217345 m!7045826))

(declare-fun m!7045828 () Bool)

(assert (=> b!6217349 m!7045828))

(assert (=> b!6216641 d!1948848))

(declare-fun bs!1541957 () Bool)

(declare-fun d!1948850 () Bool)

(assert (= bs!1541957 (and d!1948850 d!1948720)))

(declare-fun lambda!339771 () Int)

(assert (=> bs!1541957 (= lambda!339771 lambda!339734)))

(declare-fun bs!1541958 () Bool)

(assert (= bs!1541958 (and d!1948850 d!1948768)))

(assert (=> bs!1541958 (= lambda!339771 lambda!339751)))

(declare-fun bs!1541959 () Bool)

(assert (= bs!1541959 (and d!1948850 d!1948776)))

(assert (=> bs!1541959 (= lambda!339771 lambda!339756)))

(declare-fun bs!1541960 () Bool)

(assert (= bs!1541960 (and d!1948850 d!1948848)))

(assert (=> bs!1541960 (= lambda!339771 lambda!339770)))

(declare-fun bs!1541961 () Bool)

(assert (= bs!1541961 (and d!1948850 d!1948762)))

(assert (=> bs!1541961 (= lambda!339771 lambda!339748)))

(assert (=> d!1948850 (= (inv!83629 setElem!42210) (forall!15267 (exprs!6037 setElem!42210) lambda!339771))))

(declare-fun bs!1541962 () Bool)

(assert (= bs!1541962 d!1948850))

(declare-fun m!7045830 () Bool)

(assert (=> bs!1541962 m!7045830))

(assert (=> setNonEmpty!42210 d!1948850))

(assert (=> b!6216639 d!1948754))

(declare-fun d!1948852 () Bool)

(assert (=> d!1948852 (= (isEmpty!36639 (t!378287 zl!343)) ((_ is Nil!64635) (t!378287 zl!343)))))

(assert (=> b!6216620 d!1948852))

(declare-fun d!1948854 () Bool)

(declare-fun lt!2344506 () Regex!16153)

(assert (=> d!1948854 (validRegex!7889 lt!2344506)))

(assert (=> d!1948854 (= lt!2344506 (generalisedUnion!1997 (unfocusZipperList!1574 zl!343)))))

(assert (=> d!1948854 (= (unfocusZipper!1895 zl!343) lt!2344506)))

(declare-fun bs!1541963 () Bool)

(assert (= bs!1541963 d!1948854))

(declare-fun m!7045832 () Bool)

(assert (=> bs!1541963 m!7045832))

(assert (=> bs!1541963 m!7045336))

(assert (=> bs!1541963 m!7045336))

(assert (=> bs!1541963 m!7045338))

(assert (=> b!6216640 d!1948854))

(declare-fun b!6217357 () Bool)

(declare-fun e!3784823 () Bool)

(declare-fun tp!1734505 () Bool)

(declare-fun tp!1734506 () Bool)

(assert (=> b!6217357 (= e!3784823 (and tp!1734505 tp!1734506))))

(assert (=> b!6216638 (= tp!1734434 e!3784823)))

(assert (= (and b!6216638 ((_ is Cons!64634) (exprs!6037 setElem!42210))) b!6217357))

(declare-fun b!6217362 () Bool)

(declare-fun e!3784826 () Bool)

(declare-fun tp!1734509 () Bool)

(assert (=> b!6217362 (= e!3784826 (and tp_is_empty!41559 tp!1734509))))

(assert (=> b!6216633 (= tp!1734441 e!3784826)))

(assert (= (and b!6216633 ((_ is Cons!64636) (t!378288 s!2326))) b!6217362))

(declare-fun b!6217375 () Bool)

(declare-fun e!3784829 () Bool)

(declare-fun tp!1734520 () Bool)

(assert (=> b!6217375 (= e!3784829 tp!1734520)))

(declare-fun b!6217376 () Bool)

(declare-fun tp!1734522 () Bool)

(declare-fun tp!1734521 () Bool)

(assert (=> b!6217376 (= e!3784829 (and tp!1734522 tp!1734521))))

(declare-fun b!6217373 () Bool)

(assert (=> b!6217373 (= e!3784829 tp_is_empty!41559)))

(assert (=> b!6216627 (= tp!1734440 e!3784829)))

(declare-fun b!6217374 () Bool)

(declare-fun tp!1734524 () Bool)

(declare-fun tp!1734523 () Bool)

(assert (=> b!6217374 (= e!3784829 (and tp!1734524 tp!1734523))))

(assert (= (and b!6216627 ((_ is ElementMatch!16153) (regOne!32818 r!7292))) b!6217373))

(assert (= (and b!6216627 ((_ is Concat!24998) (regOne!32818 r!7292))) b!6217374))

(assert (= (and b!6216627 ((_ is Star!16153) (regOne!32818 r!7292))) b!6217375))

(assert (= (and b!6216627 ((_ is Union!16153) (regOne!32818 r!7292))) b!6217376))

(declare-fun b!6217379 () Bool)

(declare-fun e!3784830 () Bool)

(declare-fun tp!1734525 () Bool)

(assert (=> b!6217379 (= e!3784830 tp!1734525)))

(declare-fun b!6217380 () Bool)

(declare-fun tp!1734527 () Bool)

(declare-fun tp!1734526 () Bool)

(assert (=> b!6217380 (= e!3784830 (and tp!1734527 tp!1734526))))

(declare-fun b!6217377 () Bool)

(assert (=> b!6217377 (= e!3784830 tp_is_empty!41559)))

(assert (=> b!6216627 (= tp!1734442 e!3784830)))

(declare-fun b!6217378 () Bool)

(declare-fun tp!1734529 () Bool)

(declare-fun tp!1734528 () Bool)

(assert (=> b!6217378 (= e!3784830 (and tp!1734529 tp!1734528))))

(assert (= (and b!6216627 ((_ is ElementMatch!16153) (regTwo!32818 r!7292))) b!6217377))

(assert (= (and b!6216627 ((_ is Concat!24998) (regTwo!32818 r!7292))) b!6217378))

(assert (= (and b!6216627 ((_ is Star!16153) (regTwo!32818 r!7292))) b!6217379))

(assert (= (and b!6216627 ((_ is Union!16153) (regTwo!32818 r!7292))) b!6217380))

(declare-fun b!6217381 () Bool)

(declare-fun e!3784831 () Bool)

(declare-fun tp!1734530 () Bool)

(declare-fun tp!1734531 () Bool)

(assert (=> b!6217381 (= e!3784831 (and tp!1734530 tp!1734531))))

(assert (=> b!6216637 (= tp!1734439 e!3784831)))

(assert (= (and b!6216637 ((_ is Cons!64634) (exprs!6037 (h!71083 zl!343)))) b!6217381))

(declare-fun b!6217384 () Bool)

(declare-fun e!3784832 () Bool)

(declare-fun tp!1734532 () Bool)

(assert (=> b!6217384 (= e!3784832 tp!1734532)))

(declare-fun b!6217385 () Bool)

(declare-fun tp!1734534 () Bool)

(declare-fun tp!1734533 () Bool)

(assert (=> b!6217385 (= e!3784832 (and tp!1734534 tp!1734533))))

(declare-fun b!6217382 () Bool)

(assert (=> b!6217382 (= e!3784832 tp_is_empty!41559)))

(assert (=> b!6216635 (= tp!1734435 e!3784832)))

(declare-fun b!6217383 () Bool)

(declare-fun tp!1734536 () Bool)

(declare-fun tp!1734535 () Bool)

(assert (=> b!6217383 (= e!3784832 (and tp!1734536 tp!1734535))))

(assert (= (and b!6216635 ((_ is ElementMatch!16153) (regOne!32819 r!7292))) b!6217382))

(assert (= (and b!6216635 ((_ is Concat!24998) (regOne!32819 r!7292))) b!6217383))

(assert (= (and b!6216635 ((_ is Star!16153) (regOne!32819 r!7292))) b!6217384))

(assert (= (and b!6216635 ((_ is Union!16153) (regOne!32819 r!7292))) b!6217385))

(declare-fun b!6217388 () Bool)

(declare-fun e!3784833 () Bool)

(declare-fun tp!1734537 () Bool)

(assert (=> b!6217388 (= e!3784833 tp!1734537)))

(declare-fun b!6217389 () Bool)

(declare-fun tp!1734539 () Bool)

(declare-fun tp!1734538 () Bool)

(assert (=> b!6217389 (= e!3784833 (and tp!1734539 tp!1734538))))

(declare-fun b!6217386 () Bool)

(assert (=> b!6217386 (= e!3784833 tp_is_empty!41559)))

(assert (=> b!6216635 (= tp!1734437 e!3784833)))

(declare-fun b!6217387 () Bool)

(declare-fun tp!1734541 () Bool)

(declare-fun tp!1734540 () Bool)

(assert (=> b!6217387 (= e!3784833 (and tp!1734541 tp!1734540))))

(assert (= (and b!6216635 ((_ is ElementMatch!16153) (regTwo!32819 r!7292))) b!6217386))

(assert (= (and b!6216635 ((_ is Concat!24998) (regTwo!32819 r!7292))) b!6217387))

(assert (= (and b!6216635 ((_ is Star!16153) (regTwo!32819 r!7292))) b!6217388))

(assert (= (and b!6216635 ((_ is Union!16153) (regTwo!32819 r!7292))) b!6217389))

(declare-fun condSetEmpty!42216 () Bool)

(assert (=> setNonEmpty!42210 (= condSetEmpty!42216 (= setRest!42210 ((as const (Array Context!11074 Bool)) false)))))

(declare-fun setRes!42216 () Bool)

(assert (=> setNonEmpty!42210 (= tp!1734436 setRes!42216)))

(declare-fun setIsEmpty!42216 () Bool)

(assert (=> setIsEmpty!42216 setRes!42216))

(declare-fun setNonEmpty!42216 () Bool)

(declare-fun tp!1734547 () Bool)

(declare-fun setElem!42216 () Context!11074)

(declare-fun e!3784836 () Bool)

(assert (=> setNonEmpty!42216 (= setRes!42216 (and tp!1734547 (inv!83629 setElem!42216) e!3784836))))

(declare-fun setRest!42216 () (InoxSet Context!11074))

(assert (=> setNonEmpty!42216 (= setRest!42210 ((_ map or) (store ((as const (Array Context!11074 Bool)) false) setElem!42216 true) setRest!42216))))

(declare-fun b!6217394 () Bool)

(declare-fun tp!1734546 () Bool)

(assert (=> b!6217394 (= e!3784836 tp!1734546)))

(assert (= (and setNonEmpty!42210 condSetEmpty!42216) setIsEmpty!42216))

(assert (= (and setNonEmpty!42210 (not condSetEmpty!42216)) setNonEmpty!42216))

(assert (= setNonEmpty!42216 b!6217394))

(declare-fun m!7045834 () Bool)

(assert (=> setNonEmpty!42216 m!7045834))

(declare-fun b!6217397 () Bool)

(declare-fun e!3784837 () Bool)

(declare-fun tp!1734548 () Bool)

(assert (=> b!6217397 (= e!3784837 tp!1734548)))

(declare-fun b!6217398 () Bool)

(declare-fun tp!1734550 () Bool)

(declare-fun tp!1734549 () Bool)

(assert (=> b!6217398 (= e!3784837 (and tp!1734550 tp!1734549))))

(declare-fun b!6217395 () Bool)

(assert (=> b!6217395 (= e!3784837 tp_is_empty!41559)))

(assert (=> b!6216624 (= tp!1734438 e!3784837)))

(declare-fun b!6217396 () Bool)

(declare-fun tp!1734552 () Bool)

(declare-fun tp!1734551 () Bool)

(assert (=> b!6217396 (= e!3784837 (and tp!1734552 tp!1734551))))

(assert (= (and b!6216624 ((_ is ElementMatch!16153) (reg!16482 r!7292))) b!6217395))

(assert (= (and b!6216624 ((_ is Concat!24998) (reg!16482 r!7292))) b!6217396))

(assert (= (and b!6216624 ((_ is Star!16153) (reg!16482 r!7292))) b!6217397))

(assert (= (and b!6216624 ((_ is Union!16153) (reg!16482 r!7292))) b!6217398))

(declare-fun b!6217406 () Bool)

(declare-fun e!3784843 () Bool)

(declare-fun tp!1734557 () Bool)

(assert (=> b!6217406 (= e!3784843 tp!1734557)))

(declare-fun b!6217405 () Bool)

(declare-fun tp!1734558 () Bool)

(declare-fun e!3784842 () Bool)

(assert (=> b!6217405 (= e!3784842 (and (inv!83629 (h!71083 (t!378287 zl!343))) e!3784843 tp!1734558))))

(assert (=> b!6216625 (= tp!1734433 e!3784842)))

(assert (= b!6217405 b!6217406))

(assert (= (and b!6216625 ((_ is Cons!64635) (t!378287 zl!343))) b!6217405))

(declare-fun m!7045836 () Bool)

(assert (=> b!6217405 m!7045836))

(declare-fun b_lambda!236357 () Bool)

(assert (= b_lambda!236349 (or b!6216622 b_lambda!236357)))

(declare-fun bs!1541964 () Bool)

(declare-fun d!1948856 () Bool)

(assert (= bs!1541964 (and d!1948856 b!6216622)))

(assert (=> bs!1541964 (= (dynLambda!25499 lambda!339713 (h!71083 zl!343)) (derivationStepZipperUp!1327 (h!71083 zl!343) (h!71084 s!2326)))))

(assert (=> bs!1541964 m!7045270))

(assert (=> d!1948782 d!1948856))

(declare-fun b_lambda!236359 () Bool)

(assert (= b_lambda!236347 (or b!6216622 b_lambda!236359)))

(declare-fun bs!1541965 () Bool)

(declare-fun d!1948858 () Bool)

(assert (= bs!1541965 (and d!1948858 b!6216622)))

(assert (=> bs!1541965 (= (dynLambda!25499 lambda!339713 lt!2344414) (derivationStepZipperUp!1327 lt!2344414 (h!71084 s!2326)))))

(assert (=> bs!1541965 m!7045320))

(assert (=> d!1948728 d!1948858))

(check-sat (not b!6217253) (not b!6216873) (not b!6217344) (not b!6217254) (not b_lambda!236359) (not bm!521498) (not b!6216738) (not b!6217374) (not d!1948756) (not b!6217406) (not b!6217074) (not b!6217394) (not d!1948716) (not b!6217385) (not b!6216964) (not d!1948776) (not b!6216953) tp_is_empty!41559 (not b!6217345) (not b!6217060) (not bm!521546) (not d!1948836) (not b!6216959) (not bm!521542) (not b!6217259) (not b!6216985) (not bm!521475) (not bm!521544) (not d!1948840) (not b!6217387) (not b!6216739) (not b!6217075) (not b!6216980) (not b!6216875) (not b!6217258) (not b!6217292) (not bm!521459) (not bs!1541965) (not b!6217029) (not b!6217027) (not d!1948712) (not d!1948782) (not d!1948768) (not d!1948810) (not b!6216770) (not d!1948722) (not b!6217030) (not b!6217376) (not b!6216771) (not d!1948784) (not b!6217079) (not d!1948728) (not b!6217056) (not bm!521476) (not d!1948850) (not b!6217362) (not b!6217396) (not b!6216989) (not b!6217380) (not d!1948744) (not d!1948748) (not b!6217306) (not d!1948738) (not d!1948718) (not b!6217384) (not b!6217398) (not setNonEmpty!42216) (not bm!521519) (not bm!521496) (not b!6217349) (not b!6217031) (not bm!521553) (not b!6217381) (not b!6217317) (not b_lambda!236357) (not b!6217405) (not b!6217023) (not b!6216956) (not b!6217350) (not d!1948778) (not d!1948764) (not bm!521550) (not b!6217343) (not d!1948848) (not b!6217260) (not b!6216986) (not b!6217351) (not b!6217378) (not b!6217256) (not b!6217397) (not b!6217375) (not b!6216747) (not d!1948834) (not b!6217140) (not b!6217383) (not b!6217080) (not bm!521497) (not d!1948762) (not d!1948832) (not bm!521552) (not b!6217357) (not bm!521543) (not b!6216979) (not b!6217388) (not b!6216736) (not b!6217379) (not d!1948754) (not b!6217059) (not bm!521547) (not b!6216740) (not bm!521495) (not b!6217025) (not d!1948838) (not d!1948720) (not b!6217347) (not d!1948854) (not d!1948766) (not d!1948750) (not bm!521520) (not d!1948714) (not b!6216737) (not bm!521517) (not b!6216988) (not b!6216990) (not b!6216961) (not bs!1541964) (not b!6216735) (not b!6217389) (not b!6216987) (not b!6216954) (not b!6217026))
(check-sat)
(get-model)

(declare-fun d!1948860 () Bool)

(declare-fun e!3784848 () Bool)

(assert (=> d!1948860 e!3784848))

(declare-fun res!2569986 () Bool)

(assert (=> d!1948860 (=> (not res!2569986) (not e!3784848))))

(declare-fun lt!2344509 () List!64760)

(declare-fun content!12101 (List!64760) (InoxSet C!32576))

(assert (=> d!1948860 (= res!2569986 (= (content!12101 lt!2344509) ((_ map or) (content!12101 (_1!36435 (get!22323 lt!2344494))) (content!12101 (_2!36435 (get!22323 lt!2344494))))))))

(declare-fun e!3784849 () List!64760)

(assert (=> d!1948860 (= lt!2344509 e!3784849)))

(declare-fun c!1123134 () Bool)

(assert (=> d!1948860 (= c!1123134 ((_ is Nil!64636) (_1!36435 (get!22323 lt!2344494))))))

(assert (=> d!1948860 (= (++!14231 (_1!36435 (get!22323 lt!2344494)) (_2!36435 (get!22323 lt!2344494))) lt!2344509)))

(declare-fun b!6217416 () Bool)

(assert (=> b!6217416 (= e!3784849 (Cons!64636 (h!71084 (_1!36435 (get!22323 lt!2344494))) (++!14231 (t!378288 (_1!36435 (get!22323 lt!2344494))) (_2!36435 (get!22323 lt!2344494)))))))

(declare-fun b!6217415 () Bool)

(assert (=> b!6217415 (= e!3784849 (_2!36435 (get!22323 lt!2344494)))))

(declare-fun b!6217418 () Bool)

(assert (=> b!6217418 (= e!3784848 (or (not (= (_2!36435 (get!22323 lt!2344494)) Nil!64636)) (= lt!2344509 (_1!36435 (get!22323 lt!2344494)))))))

(declare-fun b!6217417 () Bool)

(declare-fun res!2569985 () Bool)

(assert (=> b!6217417 (=> (not res!2569985) (not e!3784848))))

(declare-fun size!40279 (List!64760) Int)

(assert (=> b!6217417 (= res!2569985 (= (size!40279 lt!2344509) (+ (size!40279 (_1!36435 (get!22323 lt!2344494))) (size!40279 (_2!36435 (get!22323 lt!2344494))))))))

(assert (= (and d!1948860 c!1123134) b!6217415))

(assert (= (and d!1948860 (not c!1123134)) b!6217416))

(assert (= (and d!1948860 res!2569986) b!6217417))

(assert (= (and b!6217417 res!2569985) b!6217418))

(declare-fun m!7045838 () Bool)

(assert (=> d!1948860 m!7045838))

(declare-fun m!7045840 () Bool)

(assert (=> d!1948860 m!7045840))

(declare-fun m!7045842 () Bool)

(assert (=> d!1948860 m!7045842))

(declare-fun m!7045844 () Bool)

(assert (=> b!6217416 m!7045844))

(declare-fun m!7045846 () Bool)

(assert (=> b!6217417 m!7045846))

(declare-fun m!7045848 () Bool)

(assert (=> b!6217417 m!7045848))

(declare-fun m!7045850 () Bool)

(assert (=> b!6217417 m!7045850))

(assert (=> b!6217256 d!1948860))

(declare-fun d!1948862 () Bool)

(assert (=> d!1948862 (= (get!22323 lt!2344494) (v!52189 lt!2344494))))

(assert (=> b!6217256 d!1948862))

(declare-fun bm!521556 () Bool)

(declare-fun c!1123138 () Bool)

(declare-fun call!521562 () (InoxSet Context!11074))

(declare-fun c!1123137 () Bool)

(declare-fun c!1123136 () Bool)

(declare-fun call!521564 () List!64758)

(assert (=> bm!521556 (= call!521562 (derivationStepZipperDown!1401 (ite c!1123137 (regTwo!32819 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))) (ite c!1123138 (regTwo!32818 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))) (ite c!1123136 (regOne!32818 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))) (reg!16482 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))))))) (ite (or c!1123137 c!1123138) (ite c!1123112 lt!2344415 (Context!11075 call!521551)) (Context!11075 call!521564)) (h!71084 s!2326)))))

(declare-fun b!6217419 () Bool)

(declare-fun e!3784851 () (InoxSet Context!11074))

(declare-fun e!3784855 () (InoxSet Context!11074))

(assert (=> b!6217419 (= e!3784851 e!3784855)))

(assert (=> b!6217419 (= c!1123137 ((_ is Union!16153) (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))))))

(declare-fun c!1123135 () Bool)

(declare-fun d!1948864 () Bool)

(assert (=> d!1948864 (= c!1123135 (and ((_ is ElementMatch!16153) (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))) (= (c!1122921 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))) (h!71084 s!2326))))))

(assert (=> d!1948864 (= (derivationStepZipperDown!1401 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))) (ite c!1123112 lt!2344415 (Context!11075 call!521551)) (h!71084 s!2326)) e!3784851)))

(declare-fun b!6217420 () Bool)

(declare-fun e!3784852 () Bool)

(assert (=> b!6217420 (= c!1123138 e!3784852)))

(declare-fun res!2569987 () Bool)

(assert (=> b!6217420 (=> (not res!2569987) (not e!3784852))))

(assert (=> b!6217420 (= res!2569987 ((_ is Concat!24998) (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))))))

(declare-fun e!3784853 () (InoxSet Context!11074))

(assert (=> b!6217420 (= e!3784855 e!3784853)))

(declare-fun bm!521557 () Bool)

(declare-fun call!521565 () (InoxSet Context!11074))

(declare-fun call!521561 () (InoxSet Context!11074))

(assert (=> bm!521557 (= call!521565 call!521561)))

(declare-fun b!6217421 () Bool)

(declare-fun e!3784854 () (InoxSet Context!11074))

(assert (=> b!6217421 (= e!3784854 call!521565)))

(declare-fun bm!521558 () Bool)

(declare-fun call!521563 () List!64758)

(assert (=> bm!521558 (= call!521563 ($colon$colon!2022 (exprs!6037 (ite c!1123112 lt!2344415 (Context!11075 call!521551))) (ite (or c!1123138 c!1123136) (regTwo!32818 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))) (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))))))))

(declare-fun b!6217422 () Bool)

(assert (=> b!6217422 (= e!3784851 (store ((as const (Array Context!11074 Bool)) false) (ite c!1123112 lt!2344415 (Context!11075 call!521551)) true))))

(declare-fun bm!521559 () Bool)

(declare-fun call!521566 () (InoxSet Context!11074))

(assert (=> bm!521559 (= call!521566 (derivationStepZipperDown!1401 (ite c!1123137 (regOne!32819 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))) (regOne!32818 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))))) (ite c!1123137 (ite c!1123112 lt!2344415 (Context!11075 call!521551)) (Context!11075 call!521563)) (h!71084 s!2326)))))

(declare-fun b!6217423 () Bool)

(declare-fun e!3784850 () (InoxSet Context!11074))

(assert (=> b!6217423 (= e!3784850 call!521565)))

(declare-fun b!6217424 () Bool)

(assert (=> b!6217424 (= e!3784852 (nullable!6146 (regOne!32818 (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))))))))

(declare-fun b!6217425 () Bool)

(declare-fun c!1123139 () Bool)

(assert (=> b!6217425 (= c!1123139 ((_ is Star!16153) (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))))))

(assert (=> b!6217425 (= e!3784854 e!3784850)))

(declare-fun b!6217426 () Bool)

(assert (=> b!6217426 (= e!3784855 ((_ map or) call!521566 call!521562))))

(declare-fun bm!521560 () Bool)

(assert (=> bm!521560 (= call!521561 call!521562)))

(declare-fun b!6217427 () Bool)

(assert (=> b!6217427 (= e!3784853 e!3784854)))

(assert (=> b!6217427 (= c!1123136 ((_ is Concat!24998) (ite c!1123112 (regOne!32819 (regTwo!32818 (regOne!32818 r!7292))) (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))))))))

(declare-fun bm!521561 () Bool)

(assert (=> bm!521561 (= call!521564 call!521563)))

(declare-fun b!6217428 () Bool)

(assert (=> b!6217428 (= e!3784853 ((_ map or) call!521566 call!521561))))

(declare-fun b!6217429 () Bool)

(assert (=> b!6217429 (= e!3784850 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948864 c!1123135) b!6217422))

(assert (= (and d!1948864 (not c!1123135)) b!6217419))

(assert (= (and b!6217419 c!1123137) b!6217426))

(assert (= (and b!6217419 (not c!1123137)) b!6217420))

(assert (= (and b!6217420 res!2569987) b!6217424))

(assert (= (and b!6217420 c!1123138) b!6217428))

(assert (= (and b!6217420 (not c!1123138)) b!6217427))

(assert (= (and b!6217427 c!1123136) b!6217421))

(assert (= (and b!6217427 (not c!1123136)) b!6217425))

(assert (= (and b!6217425 c!1123139) b!6217423))

(assert (= (and b!6217425 (not c!1123139)) b!6217429))

(assert (= (or b!6217421 b!6217423) bm!521561))

(assert (= (or b!6217421 b!6217423) bm!521557))

(assert (= (or b!6217428 bm!521561) bm!521558))

(assert (= (or b!6217428 bm!521557) bm!521560))

(assert (= (or b!6217426 bm!521560) bm!521556))

(assert (= (or b!6217426 b!6217428) bm!521559))

(declare-fun m!7045852 () Bool)

(assert (=> b!6217422 m!7045852))

(declare-fun m!7045854 () Bool)

(assert (=> bm!521556 m!7045854))

(declare-fun m!7045856 () Bool)

(assert (=> bm!521558 m!7045856))

(declare-fun m!7045858 () Bool)

(assert (=> b!6217424 m!7045858))

(declare-fun m!7045860 () Bool)

(assert (=> bm!521559 m!7045860))

(assert (=> bm!521547 d!1948864))

(declare-fun d!1948866 () Bool)

(assert (=> d!1948866 (= (isEmpty!36642 (t!378288 s!2326)) ((_ is Nil!64636) (t!378288 s!2326)))))

(assert (=> d!1948766 d!1948866))

(assert (=> b!6216988 d!1948748))

(assert (=> bs!1541965 d!1948724))

(declare-fun d!1948868 () Bool)

(assert (=> d!1948868 (= (isEmpty!36638 (unfocusZipperList!1574 zl!343)) ((_ is Nil!64634) (unfocusZipperList!1574 zl!343)))))

(assert (=> b!6217027 d!1948868))

(declare-fun d!1948870 () Bool)

(assert (=> d!1948870 (= (Exists!3223 lambda!339766) (choose!46199 lambda!339766))))

(declare-fun bs!1541966 () Bool)

(assert (= bs!1541966 d!1948870))

(declare-fun m!7045862 () Bool)

(assert (=> bs!1541966 m!7045862))

(assert (=> d!1948838 d!1948870))

(declare-fun d!1948872 () Bool)

(assert (=> d!1948872 (= (Exists!3223 lambda!339767) (choose!46199 lambda!339767))))

(declare-fun bs!1541967 () Bool)

(assert (= bs!1541967 d!1948872))

(declare-fun m!7045864 () Bool)

(assert (=> bs!1541967 m!7045864))

(assert (=> d!1948838 d!1948872))

(declare-fun bs!1541968 () Bool)

(declare-fun d!1948874 () Bool)

(assert (= bs!1541968 (and d!1948874 b!6216878)))

(declare-fun lambda!339776 () Int)

(assert (=> bs!1541968 (not (= lambda!339776 lambda!339741))))

(declare-fun bs!1541969 () Bool)

(assert (= bs!1541969 (and d!1948874 b!6216632)))

(assert (=> bs!1541969 (not (= lambda!339776 lambda!339712))))

(declare-fun bs!1541970 () Bool)

(assert (= bs!1541970 (and d!1948874 d!1948838)))

(assert (=> bs!1541970 (not (= lambda!339776 lambda!339767))))

(assert (=> bs!1541970 (= lambda!339776 lambda!339766)))

(assert (=> bs!1541969 (= lambda!339776 lambda!339711)))

(declare-fun bs!1541971 () Bool)

(assert (= bs!1541971 (and d!1948874 b!6216876)))

(assert (=> bs!1541971 (not (= lambda!339776 lambda!339740))))

(declare-fun bs!1541972 () Bool)

(assert (= bs!1541972 (and d!1948874 d!1948836)))

(assert (=> bs!1541972 (= lambda!339776 lambda!339761)))

(assert (=> d!1948874 true))

(assert (=> d!1948874 true))

(assert (=> d!1948874 true))

(declare-fun lambda!339777 () Int)

(assert (=> bs!1541968 (= lambda!339777 lambda!339741)))

(declare-fun bs!1541973 () Bool)

(assert (= bs!1541973 d!1948874))

(assert (=> bs!1541973 (not (= lambda!339777 lambda!339776))))

(assert (=> bs!1541969 (= lambda!339777 lambda!339712)))

(assert (=> bs!1541970 (= lambda!339777 lambda!339767)))

(assert (=> bs!1541970 (not (= lambda!339777 lambda!339766))))

(assert (=> bs!1541969 (not (= lambda!339777 lambda!339711))))

(assert (=> bs!1541971 (not (= lambda!339777 lambda!339740))))

(assert (=> bs!1541972 (not (= lambda!339777 lambda!339761))))

(assert (=> d!1948874 true))

(assert (=> d!1948874 true))

(assert (=> d!1948874 true))

(assert (=> d!1948874 (= (Exists!3223 lambda!339776) (Exists!3223 lambda!339777))))

(assert (=> d!1948874 true))

(declare-fun _$90!2004 () Unit!157943)

(assert (=> d!1948874 (= (choose!46201 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326) _$90!2004)))

(declare-fun m!7045866 () Bool)

(assert (=> bs!1541973 m!7045866))

(declare-fun m!7045868 () Bool)

(assert (=> bs!1541973 m!7045868))

(assert (=> d!1948838 d!1948874))

(declare-fun b!6217438 () Bool)

(declare-fun e!3784860 () Bool)

(declare-fun e!3784864 () Bool)

(assert (=> b!6217438 (= e!3784860 e!3784864)))

(declare-fun res!2569999 () Bool)

(assert (=> b!6217438 (= res!2569999 (not (nullable!6146 (reg!16482 (regOne!32818 r!7292)))))))

(assert (=> b!6217438 (=> (not res!2569999) (not e!3784864))))

(declare-fun bm!521562 () Bool)

(declare-fun call!521567 () Bool)

(declare-fun call!521568 () Bool)

(assert (=> bm!521562 (= call!521567 call!521568)))

(declare-fun b!6217439 () Bool)

(declare-fun e!3784865 () Bool)

(assert (=> b!6217439 (= e!3784860 e!3784865)))

(declare-fun c!1123140 () Bool)

(assert (=> b!6217439 (= c!1123140 ((_ is Union!16153) (regOne!32818 r!7292)))))

(declare-fun b!6217440 () Bool)

(declare-fun e!3784863 () Bool)

(assert (=> b!6217440 (= e!3784863 e!3784860)))

(declare-fun c!1123141 () Bool)

(assert (=> b!6217440 (= c!1123141 ((_ is Star!16153) (regOne!32818 r!7292)))))

(declare-fun b!6217441 () Bool)

(declare-fun e!3784861 () Bool)

(declare-fun call!521569 () Bool)

(assert (=> b!6217441 (= e!3784861 call!521569)))

(declare-fun b!6217442 () Bool)

(assert (=> b!6217442 (= e!3784864 call!521568)))

(declare-fun d!1948876 () Bool)

(declare-fun res!2570000 () Bool)

(assert (=> d!1948876 (=> res!2570000 e!3784863)))

(assert (=> d!1948876 (= res!2570000 ((_ is ElementMatch!16153) (regOne!32818 r!7292)))))

(assert (=> d!1948876 (= (validRegex!7889 (regOne!32818 r!7292)) e!3784863)))

(declare-fun b!6217443 () Bool)

(declare-fun e!3784866 () Bool)

(declare-fun e!3784862 () Bool)

(assert (=> b!6217443 (= e!3784866 e!3784862)))

(declare-fun res!2569997 () Bool)

(assert (=> b!6217443 (=> (not res!2569997) (not e!3784862))))

(assert (=> b!6217443 (= res!2569997 call!521567)))

(declare-fun bm!521563 () Bool)

(assert (=> bm!521563 (= call!521568 (validRegex!7889 (ite c!1123141 (reg!16482 (regOne!32818 r!7292)) (ite c!1123140 (regOne!32819 (regOne!32818 r!7292)) (regOne!32818 (regOne!32818 r!7292))))))))

(declare-fun b!6217444 () Bool)

(declare-fun res!2569998 () Bool)

(assert (=> b!6217444 (=> (not res!2569998) (not e!3784861))))

(assert (=> b!6217444 (= res!2569998 call!521567)))

(assert (=> b!6217444 (= e!3784865 e!3784861)))

(declare-fun b!6217445 () Bool)

(declare-fun res!2569996 () Bool)

(assert (=> b!6217445 (=> res!2569996 e!3784866)))

(assert (=> b!6217445 (= res!2569996 (not ((_ is Concat!24998) (regOne!32818 r!7292))))))

(assert (=> b!6217445 (= e!3784865 e!3784866)))

(declare-fun b!6217446 () Bool)

(assert (=> b!6217446 (= e!3784862 call!521569)))

(declare-fun bm!521564 () Bool)

(assert (=> bm!521564 (= call!521569 (validRegex!7889 (ite c!1123140 (regTwo!32819 (regOne!32818 r!7292)) (regTwo!32818 (regOne!32818 r!7292)))))))

(assert (= (and d!1948876 (not res!2570000)) b!6217440))

(assert (= (and b!6217440 c!1123141) b!6217438))

(assert (= (and b!6217440 (not c!1123141)) b!6217439))

(assert (= (and b!6217438 res!2569999) b!6217442))

(assert (= (and b!6217439 c!1123140) b!6217444))

(assert (= (and b!6217439 (not c!1123140)) b!6217445))

(assert (= (and b!6217444 res!2569998) b!6217441))

(assert (= (and b!6217445 (not res!2569996)) b!6217443))

(assert (= (and b!6217443 res!2569997) b!6217446))

(assert (= (or b!6217441 b!6217446) bm!521564))

(assert (= (or b!6217444 b!6217443) bm!521562))

(assert (= (or b!6217442 bm!521562) bm!521563))

(declare-fun m!7045870 () Bool)

(assert (=> b!6217438 m!7045870))

(declare-fun m!7045872 () Bool)

(assert (=> bm!521563 m!7045872))

(declare-fun m!7045874 () Bool)

(assert (=> bm!521564 m!7045874))

(assert (=> d!1948838 d!1948876))

(declare-fun d!1948878 () Bool)

(assert (=> d!1948878 (= (isUnion!1002 lt!2344470) ((_ is Union!16153) lt!2344470))))

(assert (=> b!6217023 d!1948878))

(declare-fun call!521573 () List!64758)

(declare-fun c!1123144 () Bool)

(declare-fun c!1123143 () Bool)

(declare-fun bm!521565 () Bool)

(declare-fun c!1123145 () Bool)

(declare-fun call!521571 () (InoxSet Context!11074))

(assert (=> bm!521565 (= call!521571 (derivationStepZipperDown!1401 (ite c!1123144 (regTwo!32819 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))) (ite c!1123145 (regTwo!32818 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))) (ite c!1123143 (regOne!32818 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))) (reg!16482 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292)))))))))) (ite (or c!1123144 c!1123145) (ite (or c!1123117 c!1123118) lt!2344399 (Context!11075 call!521558)) (Context!11075 call!521573)) (h!71084 s!2326)))))

(declare-fun b!6217447 () Bool)

(declare-fun e!3784868 () (InoxSet Context!11074))

(declare-fun e!3784872 () (InoxSet Context!11074))

(assert (=> b!6217447 (= e!3784868 e!3784872)))

(assert (=> b!6217447 (= c!1123144 ((_ is Union!16153) (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))))))

(declare-fun c!1123142 () Bool)

(declare-fun d!1948880 () Bool)

(assert (=> d!1948880 (= c!1123142 (and ((_ is ElementMatch!16153) (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))) (= (c!1122921 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))) (h!71084 s!2326))))))

(assert (=> d!1948880 (= (derivationStepZipperDown!1401 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292)))))) (ite (or c!1123117 c!1123118) lt!2344399 (Context!11075 call!521558)) (h!71084 s!2326)) e!3784868)))

(declare-fun b!6217448 () Bool)

(declare-fun e!3784869 () Bool)

(assert (=> b!6217448 (= c!1123145 e!3784869)))

(declare-fun res!2570001 () Bool)

(assert (=> b!6217448 (=> (not res!2570001) (not e!3784869))))

(assert (=> b!6217448 (= res!2570001 ((_ is Concat!24998) (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))))))

(declare-fun e!3784870 () (InoxSet Context!11074))

(assert (=> b!6217448 (= e!3784872 e!3784870)))

(declare-fun bm!521566 () Bool)

(declare-fun call!521574 () (InoxSet Context!11074))

(declare-fun call!521570 () (InoxSet Context!11074))

(assert (=> bm!521566 (= call!521574 call!521570)))

(declare-fun b!6217449 () Bool)

(declare-fun e!3784871 () (InoxSet Context!11074))

(assert (=> b!6217449 (= e!3784871 call!521574)))

(declare-fun call!521572 () List!64758)

(declare-fun bm!521567 () Bool)

(assert (=> bm!521567 (= call!521572 ($colon$colon!2022 (exprs!6037 (ite (or c!1123117 c!1123118) lt!2344399 (Context!11075 call!521558))) (ite (or c!1123145 c!1123143) (regTwo!32818 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))) (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292)))))))))))

(declare-fun b!6217450 () Bool)

(assert (=> b!6217450 (= e!3784868 (store ((as const (Array Context!11074 Bool)) false) (ite (or c!1123117 c!1123118) lt!2344399 (Context!11075 call!521558)) true))))

(declare-fun bm!521568 () Bool)

(declare-fun call!521575 () (InoxSet Context!11074))

(assert (=> bm!521568 (= call!521575 (derivationStepZipperDown!1401 (ite c!1123144 (regOne!32819 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))) (regOne!32818 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292)))))))) (ite c!1123144 (ite (or c!1123117 c!1123118) lt!2344399 (Context!11075 call!521558)) (Context!11075 call!521572)) (h!71084 s!2326)))))

(declare-fun b!6217451 () Bool)

(declare-fun e!3784867 () (InoxSet Context!11074))

(assert (=> b!6217451 (= e!3784867 call!521574)))

(declare-fun b!6217452 () Bool)

(assert (=> b!6217452 (= e!3784869 (nullable!6146 (regOne!32818 (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292)))))))))))

(declare-fun b!6217453 () Bool)

(declare-fun c!1123146 () Bool)

(assert (=> b!6217453 (= c!1123146 ((_ is Star!16153) (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))))))

(assert (=> b!6217453 (= e!3784871 e!3784867)))

(declare-fun b!6217454 () Bool)

(assert (=> b!6217454 (= e!3784872 ((_ map or) call!521575 call!521571))))

(declare-fun bm!521569 () Bool)

(assert (=> bm!521569 (= call!521570 call!521571)))

(declare-fun b!6217455 () Bool)

(assert (=> b!6217455 (= e!3784870 e!3784871)))

(assert (=> b!6217455 (= c!1123143 ((_ is Concat!24998) (ite c!1123117 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123118 (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (ite c!1123116 (regOne!32818 (regOne!32818 (regOne!32818 r!7292))) (reg!16482 (regOne!32818 (regOne!32818 r!7292))))))))))

(declare-fun bm!521570 () Bool)

(assert (=> bm!521570 (= call!521573 call!521572)))

(declare-fun b!6217456 () Bool)

(assert (=> b!6217456 (= e!3784870 ((_ map or) call!521575 call!521570))))

(declare-fun b!6217457 () Bool)

(assert (=> b!6217457 (= e!3784867 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948880 c!1123142) b!6217450))

(assert (= (and d!1948880 (not c!1123142)) b!6217447))

(assert (= (and b!6217447 c!1123144) b!6217454))

(assert (= (and b!6217447 (not c!1123144)) b!6217448))

(assert (= (and b!6217448 res!2570001) b!6217452))

(assert (= (and b!6217448 c!1123145) b!6217456))

(assert (= (and b!6217448 (not c!1123145)) b!6217455))

(assert (= (and b!6217455 c!1123143) b!6217449))

(assert (= (and b!6217455 (not c!1123143)) b!6217453))

(assert (= (and b!6217453 c!1123146) b!6217451))

(assert (= (and b!6217453 (not c!1123146)) b!6217457))

(assert (= (or b!6217449 b!6217451) bm!521570))

(assert (= (or b!6217449 b!6217451) bm!521566))

(assert (= (or b!6217456 bm!521570) bm!521567))

(assert (= (or b!6217456 bm!521566) bm!521569))

(assert (= (or b!6217454 bm!521569) bm!521565))

(assert (= (or b!6217454 b!6217456) bm!521568))

(declare-fun m!7045876 () Bool)

(assert (=> b!6217450 m!7045876))

(declare-fun m!7045878 () Bool)

(assert (=> bm!521565 m!7045878))

(declare-fun m!7045880 () Bool)

(assert (=> bm!521567 m!7045880))

(declare-fun m!7045882 () Bool)

(assert (=> b!6217452 m!7045882))

(declare-fun m!7045884 () Bool)

(assert (=> bm!521568 m!7045884))

(assert (=> bm!521550 d!1948880))

(declare-fun d!1948882 () Bool)

(assert (=> d!1948882 (= (nullable!6146 r!7292) (nullableFct!2101 r!7292))))

(declare-fun bs!1541974 () Bool)

(assert (= bs!1541974 d!1948882))

(declare-fun m!7045886 () Bool)

(assert (=> bs!1541974 m!7045886))

(assert (=> b!6216956 d!1948882))

(declare-fun d!1948884 () Bool)

(assert (=> d!1948884 (= (isEmpty!36642 (tail!11897 s!2326)) ((_ is Nil!64636) (tail!11897 s!2326)))))

(assert (=> b!6216953 d!1948884))

(declare-fun d!1948886 () Bool)

(assert (=> d!1948886 (= (tail!11897 s!2326) (t!378288 s!2326))))

(assert (=> b!6216953 d!1948886))

(assert (=> d!1948782 d!1948784))

(declare-fun d!1948888 () Bool)

(assert (=> d!1948888 (= (flatMap!1658 z!1189 lambda!339713) (dynLambda!25499 lambda!339713 (h!71083 zl!343)))))

(assert (=> d!1948888 true))

(declare-fun _$13!3239 () Unit!157943)

(assert (=> d!1948888 (= (choose!46195 z!1189 (h!71083 zl!343) lambda!339713) _$13!3239)))

(declare-fun b_lambda!236361 () Bool)

(assert (=> (not b_lambda!236361) (not d!1948888)))

(declare-fun bs!1541975 () Bool)

(assert (= bs!1541975 d!1948888))

(assert (=> bs!1541975 m!7045268))

(assert (=> bs!1541975 m!7045620))

(assert (=> d!1948782 d!1948888))

(declare-fun b!6217458 () Bool)

(declare-fun e!3784873 () Bool)

(declare-fun e!3784877 () Bool)

(assert (=> b!6217458 (= e!3784873 e!3784877)))

(declare-fun res!2570005 () Bool)

(assert (=> b!6217458 (= res!2570005 (not (nullable!6146 (reg!16482 lt!2344506))))))

(assert (=> b!6217458 (=> (not res!2570005) (not e!3784877))))

(declare-fun bm!521571 () Bool)

(declare-fun call!521576 () Bool)

(declare-fun call!521577 () Bool)

(assert (=> bm!521571 (= call!521576 call!521577)))

(declare-fun b!6217459 () Bool)

(declare-fun e!3784878 () Bool)

(assert (=> b!6217459 (= e!3784873 e!3784878)))

(declare-fun c!1123147 () Bool)

(assert (=> b!6217459 (= c!1123147 ((_ is Union!16153) lt!2344506))))

(declare-fun b!6217460 () Bool)

(declare-fun e!3784876 () Bool)

(assert (=> b!6217460 (= e!3784876 e!3784873)))

(declare-fun c!1123148 () Bool)

(assert (=> b!6217460 (= c!1123148 ((_ is Star!16153) lt!2344506))))

(declare-fun b!6217461 () Bool)

(declare-fun e!3784874 () Bool)

(declare-fun call!521578 () Bool)

(assert (=> b!6217461 (= e!3784874 call!521578)))

(declare-fun b!6217462 () Bool)

(assert (=> b!6217462 (= e!3784877 call!521577)))

(declare-fun d!1948890 () Bool)

(declare-fun res!2570006 () Bool)

(assert (=> d!1948890 (=> res!2570006 e!3784876)))

(assert (=> d!1948890 (= res!2570006 ((_ is ElementMatch!16153) lt!2344506))))

(assert (=> d!1948890 (= (validRegex!7889 lt!2344506) e!3784876)))

(declare-fun b!6217463 () Bool)

(declare-fun e!3784879 () Bool)

(declare-fun e!3784875 () Bool)

(assert (=> b!6217463 (= e!3784879 e!3784875)))

(declare-fun res!2570003 () Bool)

(assert (=> b!6217463 (=> (not res!2570003) (not e!3784875))))

(assert (=> b!6217463 (= res!2570003 call!521576)))

(declare-fun bm!521572 () Bool)

(assert (=> bm!521572 (= call!521577 (validRegex!7889 (ite c!1123148 (reg!16482 lt!2344506) (ite c!1123147 (regOne!32819 lt!2344506) (regOne!32818 lt!2344506)))))))

(declare-fun b!6217464 () Bool)

(declare-fun res!2570004 () Bool)

(assert (=> b!6217464 (=> (not res!2570004) (not e!3784874))))

(assert (=> b!6217464 (= res!2570004 call!521576)))

(assert (=> b!6217464 (= e!3784878 e!3784874)))

(declare-fun b!6217465 () Bool)

(declare-fun res!2570002 () Bool)

(assert (=> b!6217465 (=> res!2570002 e!3784879)))

(assert (=> b!6217465 (= res!2570002 (not ((_ is Concat!24998) lt!2344506)))))

(assert (=> b!6217465 (= e!3784878 e!3784879)))

(declare-fun b!6217466 () Bool)

(assert (=> b!6217466 (= e!3784875 call!521578)))

(declare-fun bm!521573 () Bool)

(assert (=> bm!521573 (= call!521578 (validRegex!7889 (ite c!1123147 (regTwo!32819 lt!2344506) (regTwo!32818 lt!2344506))))))

(assert (= (and d!1948890 (not res!2570006)) b!6217460))

(assert (= (and b!6217460 c!1123148) b!6217458))

(assert (= (and b!6217460 (not c!1123148)) b!6217459))

(assert (= (and b!6217458 res!2570005) b!6217462))

(assert (= (and b!6217459 c!1123147) b!6217464))

(assert (= (and b!6217459 (not c!1123147)) b!6217465))

(assert (= (and b!6217464 res!2570004) b!6217461))

(assert (= (and b!6217465 (not res!2570002)) b!6217463))

(assert (= (and b!6217463 res!2570003) b!6217466))

(assert (= (or b!6217461 b!6217466) bm!521573))

(assert (= (or b!6217464 b!6217463) bm!521571))

(assert (= (or b!6217462 bm!521571) bm!521572))

(declare-fun m!7045888 () Bool)

(assert (=> b!6217458 m!7045888))

(declare-fun m!7045890 () Bool)

(assert (=> bm!521572 m!7045890))

(declare-fun m!7045892 () Bool)

(assert (=> bm!521573 m!7045892))

(assert (=> d!1948854 d!1948890))

(assert (=> d!1948854 d!1948768))

(assert (=> d!1948854 d!1948776))

(declare-fun d!1948892 () Bool)

(assert (=> d!1948892 (= (isEmpty!36638 (tail!11900 (exprs!6037 (h!71083 zl!343)))) ((_ is Nil!64634) (tail!11900 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> b!6217351 d!1948892))

(declare-fun d!1948894 () Bool)

(assert (=> d!1948894 (= (tail!11900 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))

(assert (=> b!6217351 d!1948894))

(declare-fun d!1948896 () Bool)

(declare-fun c!1123149 () Bool)

(assert (=> d!1948896 (= c!1123149 (isEmpty!36642 (tail!11897 (t!378288 s!2326))))))

(declare-fun e!3784880 () Bool)

(assert (=> d!1948896 (= (matchZipper!2165 (derivationStepZipper!2118 lt!2344416 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))) e!3784880)))

(declare-fun b!6217467 () Bool)

(assert (=> b!6217467 (= e!3784880 (nullableZipper!1926 (derivationStepZipper!2118 lt!2344416 (head!12812 (t!378288 s!2326)))))))

(declare-fun b!6217468 () Bool)

(assert (=> b!6217468 (= e!3784880 (matchZipper!2165 (derivationStepZipper!2118 (derivationStepZipper!2118 lt!2344416 (head!12812 (t!378288 s!2326))) (head!12812 (tail!11897 (t!378288 s!2326)))) (tail!11897 (tail!11897 (t!378288 s!2326)))))))

(assert (= (and d!1948896 c!1123149) b!6217467))

(assert (= (and d!1948896 (not c!1123149)) b!6217468))

(assert (=> d!1948896 m!7045414))

(declare-fun m!7045894 () Bool)

(assert (=> d!1948896 m!7045894))

(assert (=> b!6217467 m!7045412))

(declare-fun m!7045896 () Bool)

(assert (=> b!6217467 m!7045896))

(assert (=> b!6217468 m!7045414))

(declare-fun m!7045898 () Bool)

(assert (=> b!6217468 m!7045898))

(assert (=> b!6217468 m!7045412))

(assert (=> b!6217468 m!7045898))

(declare-fun m!7045900 () Bool)

(assert (=> b!6217468 m!7045900))

(assert (=> b!6217468 m!7045414))

(declare-fun m!7045902 () Bool)

(assert (=> b!6217468 m!7045902))

(assert (=> b!6217468 m!7045900))

(assert (=> b!6217468 m!7045902))

(declare-fun m!7045904 () Bool)

(assert (=> b!6217468 m!7045904))

(assert (=> b!6216736 d!1948896))

(declare-fun bs!1541976 () Bool)

(declare-fun d!1948898 () Bool)

(assert (= bs!1541976 (and d!1948898 b!6216622)))

(declare-fun lambda!339780 () Int)

(assert (=> bs!1541976 (= (= (head!12812 (t!378288 s!2326)) (h!71084 s!2326)) (= lambda!339780 lambda!339713))))

(assert (=> d!1948898 true))

(assert (=> d!1948898 (= (derivationStepZipper!2118 lt!2344416 (head!12812 (t!378288 s!2326))) (flatMap!1658 lt!2344416 lambda!339780))))

(declare-fun bs!1541977 () Bool)

(assert (= bs!1541977 d!1948898))

(declare-fun m!7045906 () Bool)

(assert (=> bs!1541977 m!7045906))

(assert (=> b!6216736 d!1948898))

(declare-fun d!1948900 () Bool)

(assert (=> d!1948900 (= (head!12812 (t!378288 s!2326)) (h!71084 (t!378288 s!2326)))))

(assert (=> b!6216736 d!1948900))

(declare-fun d!1948902 () Bool)

(assert (=> d!1948902 (= (tail!11897 (t!378288 s!2326)) (t!378288 (t!378288 s!2326)))))

(assert (=> b!6216736 d!1948902))

(assert (=> d!1948764 d!1948766))

(assert (=> d!1948764 d!1948712))

(declare-fun d!1948904 () Bool)

(declare-fun e!3784883 () Bool)

(assert (=> d!1948904 (= (matchZipper!2165 ((_ map or) lt!2344416 lt!2344412) (t!378288 s!2326)) e!3784883)))

(declare-fun res!2570009 () Bool)

(assert (=> d!1948904 (=> res!2570009 e!3784883)))

(assert (=> d!1948904 (= res!2570009 (matchZipper!2165 lt!2344416 (t!378288 s!2326)))))

(assert (=> d!1948904 true))

(declare-fun _$48!1887 () Unit!157943)

(assert (=> d!1948904 (= (choose!46192 lt!2344416 lt!2344412 (t!378288 s!2326)) _$48!1887)))

(declare-fun b!6217473 () Bool)

(assert (=> b!6217473 (= e!3784883 (matchZipper!2165 lt!2344412 (t!378288 s!2326)))))

(assert (= (and d!1948904 (not res!2570009)) b!6217473))

(assert (=> d!1948904 m!7045316))

(assert (=> d!1948904 m!7045314))

(assert (=> b!6217473 m!7045288))

(assert (=> d!1948764 d!1948904))

(declare-fun d!1948906 () Bool)

(assert (=> d!1948906 (= (isEmpty!36638 (exprs!6037 (h!71083 zl!343))) ((_ is Nil!64634) (exprs!6037 (h!71083 zl!343))))))

(assert (=> b!6217347 d!1948906))

(declare-fun c!1123153 () Bool)

(declare-fun call!521582 () List!64758)

(declare-fun call!521580 () (InoxSet Context!11074))

(declare-fun c!1123155 () Bool)

(declare-fun c!1123154 () Bool)

(declare-fun bm!521574 () Bool)

(assert (=> bm!521574 (= call!521580 (derivationStepZipperDown!1401 (ite c!1123154 (regTwo!32819 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))) (ite c!1123155 (regTwo!32818 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))) (ite c!1123153 (regOne!32818 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))) (reg!16482 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))))))) (ite (or c!1123154 c!1123155) (ite c!1123082 lt!2344415 (Context!11075 call!521524)) (Context!11075 call!521582)) (h!71084 s!2326)))))

(declare-fun b!6217474 () Bool)

(declare-fun e!3784885 () (InoxSet Context!11074))

(declare-fun e!3784889 () (InoxSet Context!11074))

(assert (=> b!6217474 (= e!3784885 e!3784889)))

(assert (=> b!6217474 (= c!1123154 ((_ is Union!16153) (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun c!1123152 () Bool)

(declare-fun d!1948908 () Bool)

(assert (=> d!1948908 (= c!1123152 (and ((_ is ElementMatch!16153) (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))) (= (c!1122921 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))) (h!71084 s!2326))))))

(assert (=> d!1948908 (= (derivationStepZipperDown!1401 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))) (ite c!1123082 lt!2344415 (Context!11075 call!521524)) (h!71084 s!2326)) e!3784885)))

(declare-fun b!6217475 () Bool)

(declare-fun e!3784886 () Bool)

(assert (=> b!6217475 (= c!1123155 e!3784886)))

(declare-fun res!2570010 () Bool)

(assert (=> b!6217475 (=> (not res!2570010) (not e!3784886))))

(assert (=> b!6217475 (= res!2570010 ((_ is Concat!24998) (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun e!3784887 () (InoxSet Context!11074))

(assert (=> b!6217475 (= e!3784889 e!3784887)))

(declare-fun bm!521575 () Bool)

(declare-fun call!521583 () (InoxSet Context!11074))

(declare-fun call!521579 () (InoxSet Context!11074))

(assert (=> bm!521575 (= call!521583 call!521579)))

(declare-fun b!6217476 () Bool)

(declare-fun e!3784888 () (InoxSet Context!11074))

(assert (=> b!6217476 (= e!3784888 call!521583)))

(declare-fun bm!521576 () Bool)

(declare-fun call!521581 () List!64758)

(assert (=> bm!521576 (= call!521581 ($colon$colon!2022 (exprs!6037 (ite c!1123082 lt!2344415 (Context!11075 call!521524))) (ite (or c!1123155 c!1123153) (regTwo!32818 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))) (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))))))))

(declare-fun b!6217477 () Bool)

(assert (=> b!6217477 (= e!3784885 (store ((as const (Array Context!11074 Bool)) false) (ite c!1123082 lt!2344415 (Context!11075 call!521524)) true))))

(declare-fun bm!521577 () Bool)

(declare-fun call!521584 () (InoxSet Context!11074))

(assert (=> bm!521577 (= call!521584 (derivationStepZipperDown!1401 (ite c!1123154 (regOne!32819 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))) (regOne!32818 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))))) (ite c!1123154 (ite c!1123082 lt!2344415 (Context!11075 call!521524)) (Context!11075 call!521581)) (h!71084 s!2326)))))

(declare-fun b!6217478 () Bool)

(declare-fun e!3784884 () (InoxSet Context!11074))

(assert (=> b!6217478 (= e!3784884 call!521583)))

(declare-fun b!6217479 () Bool)

(assert (=> b!6217479 (= e!3784886 (nullable!6146 (regOne!32818 (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))))))))

(declare-fun b!6217480 () Bool)

(declare-fun c!1123156 () Bool)

(assert (=> b!6217480 (= c!1123156 ((_ is Star!16153) (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))

(assert (=> b!6217480 (= e!3784888 e!3784884)))

(declare-fun b!6217481 () Bool)

(assert (=> b!6217481 (= e!3784889 ((_ map or) call!521584 call!521580))))

(declare-fun bm!521578 () Bool)

(assert (=> bm!521578 (= call!521579 call!521580)))

(declare-fun b!6217482 () Bool)

(assert (=> b!6217482 (= e!3784887 e!3784888)))

(assert (=> b!6217482 (= c!1123153 ((_ is Concat!24998) (ite c!1123082 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun bm!521579 () Bool)

(assert (=> bm!521579 (= call!521582 call!521581)))

(declare-fun b!6217483 () Bool)

(assert (=> b!6217483 (= e!3784887 ((_ map or) call!521584 call!521579))))

(declare-fun b!6217484 () Bool)

(assert (=> b!6217484 (= e!3784884 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948908 c!1123152) b!6217477))

(assert (= (and d!1948908 (not c!1123152)) b!6217474))

(assert (= (and b!6217474 c!1123154) b!6217481))

(assert (= (and b!6217474 (not c!1123154)) b!6217475))

(assert (= (and b!6217475 res!2570010) b!6217479))

(assert (= (and b!6217475 c!1123155) b!6217483))

(assert (= (and b!6217475 (not c!1123155)) b!6217482))

(assert (= (and b!6217482 c!1123153) b!6217476))

(assert (= (and b!6217482 (not c!1123153)) b!6217480))

(assert (= (and b!6217480 c!1123156) b!6217478))

(assert (= (and b!6217480 (not c!1123156)) b!6217484))

(assert (= (or b!6217476 b!6217478) bm!521579))

(assert (= (or b!6217476 b!6217478) bm!521575))

(assert (= (or b!6217483 bm!521579) bm!521576))

(assert (= (or b!6217483 bm!521575) bm!521578))

(assert (= (or b!6217481 bm!521578) bm!521574))

(assert (= (or b!6217481 b!6217483) bm!521577))

(declare-fun m!7045908 () Bool)

(assert (=> b!6217477 m!7045908))

(declare-fun m!7045910 () Bool)

(assert (=> bm!521574 m!7045910))

(declare-fun m!7045912 () Bool)

(assert (=> bm!521576 m!7045912))

(declare-fun m!7045914 () Bool)

(assert (=> b!6217479 m!7045914))

(declare-fun m!7045916 () Bool)

(assert (=> bm!521577 m!7045916))

(assert (=> bm!521520 d!1948908))

(declare-fun d!1948910 () Bool)

(assert (=> d!1948910 (= (isDefined!12747 lt!2344494) (not (isEmpty!36643 lt!2344494)))))

(declare-fun bs!1541978 () Bool)

(assert (= bs!1541978 d!1948910))

(declare-fun m!7045918 () Bool)

(assert (=> bs!1541978 m!7045918))

(assert (=> d!1948810 d!1948910))

(declare-fun b!6217485 () Bool)

(declare-fun e!3784891 () Bool)

(declare-fun e!3784893 () Bool)

(assert (=> b!6217485 (= e!3784891 e!3784893)))

(declare-fun res!2570018 () Bool)

(assert (=> b!6217485 (=> res!2570018 e!3784893)))

(declare-fun call!521585 () Bool)

(assert (=> b!6217485 (= res!2570018 call!521585)))

(declare-fun b!6217486 () Bool)

(declare-fun res!2570011 () Bool)

(declare-fun e!3784890 () Bool)

(assert (=> b!6217486 (=> res!2570011 e!3784890)))

(declare-fun e!3784892 () Bool)

(assert (=> b!6217486 (= res!2570011 e!3784892)))

(declare-fun res!2570017 () Bool)

(assert (=> b!6217486 (=> (not res!2570017) (not e!3784892))))

(declare-fun lt!2344510 () Bool)

(assert (=> b!6217486 (= res!2570017 lt!2344510)))

(declare-fun b!6217487 () Bool)

(declare-fun res!2570016 () Bool)

(assert (=> b!6217487 (=> res!2570016 e!3784893)))

(assert (=> b!6217487 (= res!2570016 (not (isEmpty!36642 (tail!11897 Nil!64636))))))

(declare-fun b!6217488 () Bool)

(assert (=> b!6217488 (= e!3784893 (not (= (head!12812 Nil!64636) (c!1122921 (regOne!32818 r!7292)))))))

(declare-fun bm!521580 () Bool)

(assert (=> bm!521580 (= call!521585 (isEmpty!36642 Nil!64636))))

(declare-fun b!6217489 () Bool)

(declare-fun res!2570012 () Bool)

(assert (=> b!6217489 (=> res!2570012 e!3784890)))

(assert (=> b!6217489 (= res!2570012 (not ((_ is ElementMatch!16153) (regOne!32818 r!7292))))))

(declare-fun e!3784894 () Bool)

(assert (=> b!6217489 (= e!3784894 e!3784890)))

(declare-fun b!6217490 () Bool)

(declare-fun e!3784895 () Bool)

(assert (=> b!6217490 (= e!3784895 (nullable!6146 (regOne!32818 r!7292)))))

(declare-fun b!6217491 () Bool)

(declare-fun e!3784896 () Bool)

(assert (=> b!6217491 (= e!3784896 (= lt!2344510 call!521585))))

(declare-fun d!1948912 () Bool)

(assert (=> d!1948912 e!3784896))

(declare-fun c!1123158 () Bool)

(assert (=> d!1948912 (= c!1123158 ((_ is EmptyExpr!16153) (regOne!32818 r!7292)))))

(assert (=> d!1948912 (= lt!2344510 e!3784895)))

(declare-fun c!1123159 () Bool)

(assert (=> d!1948912 (= c!1123159 (isEmpty!36642 Nil!64636))))

(assert (=> d!1948912 (validRegex!7889 (regOne!32818 r!7292))))

(assert (=> d!1948912 (= (matchR!8336 (regOne!32818 r!7292) Nil!64636) lt!2344510)))

(declare-fun b!6217492 () Bool)

(assert (=> b!6217492 (= e!3784890 e!3784891)))

(declare-fun res!2570014 () Bool)

(assert (=> b!6217492 (=> (not res!2570014) (not e!3784891))))

(assert (=> b!6217492 (= res!2570014 (not lt!2344510))))

(declare-fun b!6217493 () Bool)

(assert (=> b!6217493 (= e!3784895 (matchR!8336 (derivativeStep!4866 (regOne!32818 r!7292) (head!12812 Nil!64636)) (tail!11897 Nil!64636)))))

(declare-fun b!6217494 () Bool)

(assert (=> b!6217494 (= e!3784894 (not lt!2344510))))

(declare-fun b!6217495 () Bool)

(assert (=> b!6217495 (= e!3784892 (= (head!12812 Nil!64636) (c!1122921 (regOne!32818 r!7292))))))

(declare-fun b!6217496 () Bool)

(assert (=> b!6217496 (= e!3784896 e!3784894)))

(declare-fun c!1123157 () Bool)

(assert (=> b!6217496 (= c!1123157 ((_ is EmptyLang!16153) (regOne!32818 r!7292)))))

(declare-fun b!6217497 () Bool)

(declare-fun res!2570015 () Bool)

(assert (=> b!6217497 (=> (not res!2570015) (not e!3784892))))

(assert (=> b!6217497 (= res!2570015 (not call!521585))))

(declare-fun b!6217498 () Bool)

(declare-fun res!2570013 () Bool)

(assert (=> b!6217498 (=> (not res!2570013) (not e!3784892))))

(assert (=> b!6217498 (= res!2570013 (isEmpty!36642 (tail!11897 Nil!64636)))))

(assert (= (and d!1948912 c!1123159) b!6217490))

(assert (= (and d!1948912 (not c!1123159)) b!6217493))

(assert (= (and d!1948912 c!1123158) b!6217491))

(assert (= (and d!1948912 (not c!1123158)) b!6217496))

(assert (= (and b!6217496 c!1123157) b!6217494))

(assert (= (and b!6217496 (not c!1123157)) b!6217489))

(assert (= (and b!6217489 (not res!2570012)) b!6217486))

(assert (= (and b!6217486 res!2570017) b!6217497))

(assert (= (and b!6217497 res!2570015) b!6217498))

(assert (= (and b!6217498 res!2570013) b!6217495))

(assert (= (and b!6217486 (not res!2570011)) b!6217492))

(assert (= (and b!6217492 res!2570014) b!6217485))

(assert (= (and b!6217485 (not res!2570018)) b!6217487))

(assert (= (and b!6217487 (not res!2570016)) b!6217488))

(assert (= (or b!6217491 b!6217485 b!6217497) bm!521580))

(declare-fun m!7045920 () Bool)

(assert (=> b!6217487 m!7045920))

(assert (=> b!6217487 m!7045920))

(declare-fun m!7045922 () Bool)

(assert (=> b!6217487 m!7045922))

(declare-fun m!7045924 () Bool)

(assert (=> d!1948912 m!7045924))

(assert (=> d!1948912 m!7045752))

(assert (=> b!6217498 m!7045920))

(assert (=> b!6217498 m!7045920))

(assert (=> b!6217498 m!7045922))

(declare-fun m!7045926 () Bool)

(assert (=> b!6217490 m!7045926))

(assert (=> bm!521580 m!7045924))

(declare-fun m!7045928 () Bool)

(assert (=> b!6217495 m!7045928))

(assert (=> b!6217488 m!7045928))

(assert (=> b!6217493 m!7045928))

(assert (=> b!6217493 m!7045928))

(declare-fun m!7045930 () Bool)

(assert (=> b!6217493 m!7045930))

(assert (=> b!6217493 m!7045920))

(assert (=> b!6217493 m!7045930))

(assert (=> b!6217493 m!7045920))

(declare-fun m!7045932 () Bool)

(assert (=> b!6217493 m!7045932))

(assert (=> d!1948810 d!1948912))

(assert (=> d!1948810 d!1948876))

(assert (=> b!6216747 d!1948754))

(declare-fun d!1948914 () Bool)

(declare-fun lambda!339783 () Int)

(declare-fun exists!2486 ((InoxSet Context!11074) Int) Bool)

(assert (=> d!1948914 (= (nullableZipper!1926 lt!2344417) (exists!2486 lt!2344417 lambda!339783))))

(declare-fun bs!1541979 () Bool)

(assert (= bs!1541979 d!1948914))

(declare-fun m!7045934 () Bool)

(assert (=> bs!1541979 m!7045934))

(assert (=> b!6216739 d!1948914))

(declare-fun d!1948916 () Bool)

(declare-fun c!1123162 () Bool)

(assert (=> d!1948916 (= c!1123162 (isEmpty!36642 (t!378288 s!2326)))))

(declare-fun e!3784897 () Bool)

(assert (=> d!1948916 (= (matchZipper!2165 ((_ map or) lt!2344417 lt!2344396) (t!378288 s!2326)) e!3784897)))

(declare-fun b!6217499 () Bool)

(assert (=> b!6217499 (= e!3784897 (nullableZipper!1926 ((_ map or) lt!2344417 lt!2344396)))))

(declare-fun b!6217500 () Bool)

(assert (=> b!6217500 (= e!3784897 (matchZipper!2165 (derivationStepZipper!2118 ((_ map or) lt!2344417 lt!2344396) (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))))))

(assert (= (and d!1948916 c!1123162) b!6217499))

(assert (= (and d!1948916 (not c!1123162)) b!6217500))

(assert (=> d!1948916 m!7045406))

(declare-fun m!7045936 () Bool)

(assert (=> b!6217499 m!7045936))

(assert (=> b!6217500 m!7045410))

(assert (=> b!6217500 m!7045410))

(declare-fun m!7045938 () Bool)

(assert (=> b!6217500 m!7045938))

(assert (=> b!6217500 m!7045414))

(assert (=> b!6217500 m!7045938))

(assert (=> b!6217500 m!7045414))

(declare-fun m!7045940 () Bool)

(assert (=> b!6217500 m!7045940))

(assert (=> d!1948718 d!1948916))

(assert (=> d!1948718 d!1948716))

(declare-fun d!1948918 () Bool)

(declare-fun e!3784898 () Bool)

(assert (=> d!1948918 (= (matchZipper!2165 ((_ map or) lt!2344417 lt!2344396) (t!378288 s!2326)) e!3784898)))

(declare-fun res!2570019 () Bool)

(assert (=> d!1948918 (=> res!2570019 e!3784898)))

(assert (=> d!1948918 (= res!2570019 (matchZipper!2165 lt!2344417 (t!378288 s!2326)))))

(assert (=> d!1948918 true))

(declare-fun _$48!1888 () Unit!157943)

(assert (=> d!1948918 (= (choose!46192 lt!2344417 lt!2344396 (t!378288 s!2326)) _$48!1888)))

(declare-fun b!6217501 () Bool)

(assert (=> b!6217501 (= e!3784898 (matchZipper!2165 lt!2344396 (t!378288 s!2326)))))

(assert (= (and d!1948918 (not res!2570019)) b!6217501))

(assert (=> d!1948918 m!7045430))

(assert (=> d!1948918 m!7045332))

(assert (=> b!6217501 m!7045280))

(assert (=> d!1948718 d!1948918))

(declare-fun c!1123164 () Bool)

(declare-fun bm!521581 () Bool)

(declare-fun call!521587 () (InoxSet Context!11074))

(declare-fun call!521589 () List!64758)

(declare-fun c!1123165 () Bool)

(declare-fun c!1123166 () Bool)

(assert (=> bm!521581 (= call!521587 (derivationStepZipperDown!1401 (ite c!1123165 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123166 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123164 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343))))))) (ite (or c!1123165 c!1123166) (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))) (Context!11075 call!521589)) (h!71084 s!2326)))))

(declare-fun b!6217502 () Bool)

(declare-fun e!3784900 () (InoxSet Context!11074))

(declare-fun e!3784904 () (InoxSet Context!11074))

(assert (=> b!6217502 (= e!3784900 e!3784904)))

(assert (=> b!6217502 (= c!1123165 ((_ is Union!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun d!1948920 () Bool)

(declare-fun c!1123163 () Bool)

(assert (=> d!1948920 (= c!1123163 (and ((_ is ElementMatch!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))) (= (c!1122921 (h!71082 (exprs!6037 (h!71083 zl!343)))) (h!71084 s!2326))))))

(assert (=> d!1948920 (= (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (h!71083 zl!343))) (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))) (h!71084 s!2326)) e!3784900)))

(declare-fun b!6217503 () Bool)

(declare-fun e!3784901 () Bool)

(assert (=> b!6217503 (= c!1123166 e!3784901)))

(declare-fun res!2570020 () Bool)

(assert (=> b!6217503 (=> (not res!2570020) (not e!3784901))))

(assert (=> b!6217503 (= res!2570020 ((_ is Concat!24998) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun e!3784902 () (InoxSet Context!11074))

(assert (=> b!6217503 (= e!3784904 e!3784902)))

(declare-fun bm!521582 () Bool)

(declare-fun call!521590 () (InoxSet Context!11074))

(declare-fun call!521586 () (InoxSet Context!11074))

(assert (=> bm!521582 (= call!521590 call!521586)))

(declare-fun b!6217504 () Bool)

(declare-fun e!3784903 () (InoxSet Context!11074))

(assert (=> b!6217504 (= e!3784903 call!521590)))

(declare-fun bm!521583 () Bool)

(declare-fun call!521588 () List!64758)

(assert (=> bm!521583 (= call!521588 ($colon$colon!2022 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343))))) (ite (or c!1123166 c!1123164) (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (h!71082 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6217505 () Bool)

(assert (=> b!6217505 (= e!3784900 (store ((as const (Array Context!11074 Bool)) false) (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))) true))))

(declare-fun bm!521584 () Bool)

(declare-fun call!521591 () (InoxSet Context!11074))

(assert (=> bm!521584 (= call!521591 (derivationStepZipperDown!1401 (ite c!1123165 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))) (ite c!1123165 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))) (Context!11075 call!521588)) (h!71084 s!2326)))))

(declare-fun b!6217506 () Bool)

(declare-fun e!3784899 () (InoxSet Context!11074))

(assert (=> b!6217506 (= e!3784899 call!521590)))

(declare-fun b!6217507 () Bool)

(assert (=> b!6217507 (= e!3784901 (nullable!6146 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6217508 () Bool)

(declare-fun c!1123167 () Bool)

(assert (=> b!6217508 (= c!1123167 ((_ is Star!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> b!6217508 (= e!3784903 e!3784899)))

(declare-fun b!6217509 () Bool)

(assert (=> b!6217509 (= e!3784904 ((_ map or) call!521591 call!521587))))

(declare-fun bm!521585 () Bool)

(assert (=> bm!521585 (= call!521586 call!521587)))

(declare-fun b!6217510 () Bool)

(assert (=> b!6217510 (= e!3784902 e!3784903)))

(assert (=> b!6217510 (= c!1123164 ((_ is Concat!24998) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun bm!521586 () Bool)

(assert (=> bm!521586 (= call!521589 call!521588)))

(declare-fun b!6217511 () Bool)

(assert (=> b!6217511 (= e!3784902 ((_ map or) call!521591 call!521586))))

(declare-fun b!6217512 () Bool)

(assert (=> b!6217512 (= e!3784899 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948920 c!1123163) b!6217505))

(assert (= (and d!1948920 (not c!1123163)) b!6217502))

(assert (= (and b!6217502 c!1123165) b!6217509))

(assert (= (and b!6217502 (not c!1123165)) b!6217503))

(assert (= (and b!6217503 res!2570020) b!6217507))

(assert (= (and b!6217503 c!1123166) b!6217511))

(assert (= (and b!6217503 (not c!1123166)) b!6217510))

(assert (= (and b!6217510 c!1123164) b!6217504))

(assert (= (and b!6217510 (not c!1123164)) b!6217508))

(assert (= (and b!6217508 c!1123167) b!6217506))

(assert (= (and b!6217508 (not c!1123167)) b!6217512))

(assert (= (or b!6217504 b!6217506) bm!521586))

(assert (= (or b!6217504 b!6217506) bm!521582))

(assert (= (or b!6217511 bm!521586) bm!521583))

(assert (= (or b!6217511 bm!521582) bm!521585))

(assert (= (or b!6217509 bm!521585) bm!521581))

(assert (= (or b!6217509 b!6217511) bm!521584))

(declare-fun m!7045942 () Bool)

(assert (=> b!6217505 m!7045942))

(declare-fun m!7045944 () Bool)

(assert (=> bm!521581 m!7045944))

(declare-fun m!7045946 () Bool)

(assert (=> bm!521583 m!7045946))

(assert (=> b!6217507 m!7045698))

(declare-fun m!7045948 () Bool)

(assert (=> bm!521584 m!7045948))

(assert (=> bm!521497 d!1948920))

(assert (=> b!6217343 d!1948760))

(declare-fun d!1948922 () Bool)

(declare-fun c!1123170 () Bool)

(assert (=> d!1948922 (= c!1123170 ((_ is Nil!64635) lt!2344463))))

(declare-fun e!3784907 () (InoxSet Context!11074))

(assert (=> d!1948922 (= (content!12099 lt!2344463) e!3784907)))

(declare-fun b!6217517 () Bool)

(assert (=> b!6217517 (= e!3784907 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217518 () Bool)

(assert (=> b!6217518 (= e!3784907 ((_ map or) (store ((as const (Array Context!11074 Bool)) false) (h!71083 lt!2344463) true) (content!12099 (t!378287 lt!2344463))))))

(assert (= (and d!1948922 c!1123170) b!6217517))

(assert (= (and d!1948922 (not c!1123170)) b!6217518))

(declare-fun m!7045950 () Bool)

(assert (=> b!6217518 m!7045950))

(declare-fun m!7045952 () Bool)

(assert (=> b!6217518 m!7045952))

(assert (=> b!6216985 d!1948922))

(declare-fun bm!521591 () Bool)

(declare-fun call!521596 () Bool)

(declare-fun c!1123173 () Bool)

(assert (=> bm!521591 (= call!521596 (nullable!6146 (ite c!1123173 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun b!6217533 () Bool)

(declare-fun e!3784924 () Bool)

(declare-fun e!3784925 () Bool)

(assert (=> b!6217533 (= e!3784924 e!3784925)))

(assert (=> b!6217533 (= c!1123173 ((_ is Union!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217535 () Bool)

(declare-fun e!3784922 () Bool)

(declare-fun e!3784923 () Bool)

(assert (=> b!6217535 (= e!3784922 e!3784923)))

(declare-fun res!2570035 () Bool)

(assert (=> b!6217535 (=> (not res!2570035) (not e!3784923))))

(assert (=> b!6217535 (= res!2570035 (and (not ((_ is EmptyLang!16153) (h!71082 (exprs!6037 (h!71083 zl!343))))) (not ((_ is ElementMatch!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun b!6217536 () Bool)

(declare-fun e!3784920 () Bool)

(assert (=> b!6217536 (= e!3784920 call!521596)))

(declare-fun b!6217537 () Bool)

(assert (=> b!6217537 (= e!3784925 e!3784920)))

(declare-fun res!2570034 () Bool)

(declare-fun call!521597 () Bool)

(assert (=> b!6217537 (= res!2570034 call!521597)))

(assert (=> b!6217537 (=> (not res!2570034) (not e!3784920))))

(declare-fun b!6217538 () Bool)

(assert (=> b!6217538 (= e!3784923 e!3784924)))

(declare-fun res!2570032 () Bool)

(assert (=> b!6217538 (=> res!2570032 e!3784924)))

(assert (=> b!6217538 (= res!2570032 ((_ is Star!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217539 () Bool)

(declare-fun e!3784921 () Bool)

(assert (=> b!6217539 (= e!3784921 call!521596)))

(declare-fun bm!521592 () Bool)

(assert (=> bm!521592 (= call!521597 (nullable!6146 (ite c!1123173 (regOne!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun d!1948924 () Bool)

(declare-fun res!2570031 () Bool)

(assert (=> d!1948924 (=> res!2570031 e!3784922)))

(assert (=> d!1948924 (= res!2570031 ((_ is EmptyExpr!16153) (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> d!1948924 (= (nullableFct!2101 (h!71082 (exprs!6037 (h!71083 zl!343)))) e!3784922)))

(declare-fun b!6217534 () Bool)

(assert (=> b!6217534 (= e!3784925 e!3784921)))

(declare-fun res!2570033 () Bool)

(assert (=> b!6217534 (= res!2570033 call!521597)))

(assert (=> b!6217534 (=> res!2570033 e!3784921)))

(assert (= (and d!1948924 (not res!2570031)) b!6217535))

(assert (= (and b!6217535 res!2570035) b!6217538))

(assert (= (and b!6217538 (not res!2570032)) b!6217533))

(assert (= (and b!6217533 c!1123173) b!6217534))

(assert (= (and b!6217533 (not c!1123173)) b!6217537))

(assert (= (and b!6217534 (not res!2570033)) b!6217539))

(assert (= (and b!6217537 res!2570034) b!6217536))

(assert (= (or b!6217539 b!6217536) bm!521591))

(assert (= (or b!6217534 b!6217537) bm!521592))

(declare-fun m!7045954 () Bool)

(assert (=> bm!521591 m!7045954))

(declare-fun m!7045956 () Bool)

(assert (=> bm!521592 m!7045956))

(assert (=> d!1948778 d!1948924))

(declare-fun d!1948926 () Bool)

(assert (=> d!1948926 (= (nullable!6146 (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))) (nullableFct!2101 (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))))))

(declare-fun bs!1541980 () Bool)

(assert (= bs!1541980 d!1948926))

(declare-fun m!7045958 () Bool)

(assert (=> bs!1541980 m!7045958))

(assert (=> b!6217317 d!1948926))

(assert (=> d!1948716 d!1948866))

(declare-fun d!1948928 () Bool)

(assert (=> d!1948928 (= (nullable!6146 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (nullableFct!2101 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun bs!1541981 () Bool)

(assert (= bs!1541981 d!1948928))

(declare-fun m!7045960 () Bool)

(assert (=> bs!1541981 m!7045960))

(assert (=> b!6217060 d!1948928))

(declare-fun d!1948930 () Bool)

(assert (=> d!1948930 (= (head!12815 (unfocusZipperList!1574 zl!343)) (h!71082 (unfocusZipperList!1574 zl!343)))))

(assert (=> b!6217030 d!1948930))

(declare-fun d!1948932 () Bool)

(assert (=> d!1948932 (= (nullable!6146 (h!71082 (exprs!6037 lt!2344414))) (nullableFct!2101 (h!71082 (exprs!6037 lt!2344414))))))

(declare-fun bs!1541982 () Bool)

(assert (= bs!1541982 d!1948932))

(declare-fun m!7045962 () Bool)

(assert (=> bs!1541982 m!7045962))

(assert (=> b!6216771 d!1948932))

(declare-fun call!521599 () (InoxSet Context!11074))

(declare-fun c!1123175 () Bool)

(declare-fun call!521601 () List!64758)

(declare-fun c!1123176 () Bool)

(declare-fun c!1123177 () Bool)

(declare-fun bm!521593 () Bool)

(assert (=> bm!521593 (= call!521599 (derivationStepZipperDown!1401 (ite c!1123176 (regTwo!32819 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))) (ite c!1123177 (regTwo!32818 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))) (ite c!1123175 (regOne!32818 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))) (reg!16482 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))))))) (ite (or c!1123176 c!1123177) (ite c!1123117 lt!2344399 (Context!11075 call!521557)) (Context!11075 call!521601)) (h!71084 s!2326)))))

(declare-fun b!6217540 () Bool)

(declare-fun e!3784927 () (InoxSet Context!11074))

(declare-fun e!3784931 () (InoxSet Context!11074))

(assert (=> b!6217540 (= e!3784927 e!3784931)))

(assert (=> b!6217540 (= c!1123176 ((_ is Union!16153) (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))))))

(declare-fun c!1123174 () Bool)

(declare-fun d!1948934 () Bool)

(assert (=> d!1948934 (= c!1123174 (and ((_ is ElementMatch!16153) (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))) (= (c!1122921 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))) (h!71084 s!2326))))))

(assert (=> d!1948934 (= (derivationStepZipperDown!1401 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))) (ite c!1123117 lt!2344399 (Context!11075 call!521557)) (h!71084 s!2326)) e!3784927)))

(declare-fun b!6217541 () Bool)

(declare-fun e!3784928 () Bool)

(assert (=> b!6217541 (= c!1123177 e!3784928)))

(declare-fun res!2570036 () Bool)

(assert (=> b!6217541 (=> (not res!2570036) (not e!3784928))))

(assert (=> b!6217541 (= res!2570036 ((_ is Concat!24998) (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))))))

(declare-fun e!3784929 () (InoxSet Context!11074))

(assert (=> b!6217541 (= e!3784931 e!3784929)))

(declare-fun bm!521594 () Bool)

(declare-fun call!521602 () (InoxSet Context!11074))

(declare-fun call!521598 () (InoxSet Context!11074))

(assert (=> bm!521594 (= call!521602 call!521598)))

(declare-fun b!6217542 () Bool)

(declare-fun e!3784930 () (InoxSet Context!11074))

(assert (=> b!6217542 (= e!3784930 call!521602)))

(declare-fun bm!521595 () Bool)

(declare-fun call!521600 () List!64758)

(assert (=> bm!521595 (= call!521600 ($colon$colon!2022 (exprs!6037 (ite c!1123117 lt!2344399 (Context!11075 call!521557))) (ite (or c!1123177 c!1123175) (regTwo!32818 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))) (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))))))))

(declare-fun b!6217543 () Bool)

(assert (=> b!6217543 (= e!3784927 (store ((as const (Array Context!11074 Bool)) false) (ite c!1123117 lt!2344399 (Context!11075 call!521557)) true))))

(declare-fun bm!521596 () Bool)

(declare-fun call!521603 () (InoxSet Context!11074))

(assert (=> bm!521596 (= call!521603 (derivationStepZipperDown!1401 (ite c!1123176 (regOne!32819 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))) (regOne!32818 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))))) (ite c!1123176 (ite c!1123117 lt!2344399 (Context!11075 call!521557)) (Context!11075 call!521600)) (h!71084 s!2326)))))

(declare-fun b!6217544 () Bool)

(declare-fun e!3784926 () (InoxSet Context!11074))

(assert (=> b!6217544 (= e!3784926 call!521602)))

(declare-fun b!6217545 () Bool)

(assert (=> b!6217545 (= e!3784928 (nullable!6146 (regOne!32818 (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292)))))))))

(declare-fun b!6217546 () Bool)

(declare-fun c!1123178 () Bool)

(assert (=> b!6217546 (= c!1123178 ((_ is Star!16153) (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))))))

(assert (=> b!6217546 (= e!3784930 e!3784926)))

(declare-fun b!6217547 () Bool)

(assert (=> b!6217547 (= e!3784931 ((_ map or) call!521603 call!521599))))

(declare-fun bm!521597 () Bool)

(assert (=> bm!521597 (= call!521598 call!521599)))

(declare-fun b!6217548 () Bool)

(assert (=> b!6217548 (= e!3784929 e!3784930)))

(assert (=> b!6217548 (= c!1123175 ((_ is Concat!24998) (ite c!1123117 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))))))

(declare-fun bm!521598 () Bool)

(assert (=> bm!521598 (= call!521601 call!521600)))

(declare-fun b!6217549 () Bool)

(assert (=> b!6217549 (= e!3784929 ((_ map or) call!521603 call!521598))))

(declare-fun b!6217550 () Bool)

(assert (=> b!6217550 (= e!3784926 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1948934 c!1123174) b!6217543))

(assert (= (and d!1948934 (not c!1123174)) b!6217540))

(assert (= (and b!6217540 c!1123176) b!6217547))

(assert (= (and b!6217540 (not c!1123176)) b!6217541))

(assert (= (and b!6217541 res!2570036) b!6217545))

(assert (= (and b!6217541 c!1123177) b!6217549))

(assert (= (and b!6217541 (not c!1123177)) b!6217548))

(assert (= (and b!6217548 c!1123175) b!6217542))

(assert (= (and b!6217548 (not c!1123175)) b!6217546))

(assert (= (and b!6217546 c!1123178) b!6217544))

(assert (= (and b!6217546 (not c!1123178)) b!6217550))

(assert (= (or b!6217542 b!6217544) bm!521598))

(assert (= (or b!6217542 b!6217544) bm!521594))

(assert (= (or b!6217549 bm!521598) bm!521595))

(assert (= (or b!6217549 bm!521594) bm!521597))

(assert (= (or b!6217547 bm!521597) bm!521593))

(assert (= (or b!6217547 b!6217549) bm!521596))

(declare-fun m!7045964 () Bool)

(assert (=> b!6217543 m!7045964))

(declare-fun m!7045966 () Bool)

(assert (=> bm!521593 m!7045966))

(declare-fun m!7045968 () Bool)

(assert (=> bm!521595 m!7045968))

(declare-fun m!7045970 () Bool)

(assert (=> b!6217545 m!7045970))

(declare-fun m!7045972 () Bool)

(assert (=> bm!521596 m!7045972))

(assert (=> bm!521553 d!1948934))

(declare-fun b!6217551 () Bool)

(declare-fun e!3784932 () Bool)

(declare-fun e!3784936 () Bool)

(assert (=> b!6217551 (= e!3784932 e!3784936)))

(declare-fun res!2570040 () Bool)

(assert (=> b!6217551 (= res!2570040 (not (nullable!6146 (reg!16482 lt!2344503))))))

(assert (=> b!6217551 (=> (not res!2570040) (not e!3784936))))

(declare-fun bm!521599 () Bool)

(declare-fun call!521604 () Bool)

(declare-fun call!521605 () Bool)

(assert (=> bm!521599 (= call!521604 call!521605)))

(declare-fun b!6217552 () Bool)

(declare-fun e!3784937 () Bool)

(assert (=> b!6217552 (= e!3784932 e!3784937)))

(declare-fun c!1123179 () Bool)

(assert (=> b!6217552 (= c!1123179 ((_ is Union!16153) lt!2344503))))

(declare-fun b!6217553 () Bool)

(declare-fun e!3784935 () Bool)

(assert (=> b!6217553 (= e!3784935 e!3784932)))

(declare-fun c!1123180 () Bool)

(assert (=> b!6217553 (= c!1123180 ((_ is Star!16153) lt!2344503))))

(declare-fun b!6217554 () Bool)

(declare-fun e!3784933 () Bool)

(declare-fun call!521606 () Bool)

(assert (=> b!6217554 (= e!3784933 call!521606)))

(declare-fun b!6217555 () Bool)

(assert (=> b!6217555 (= e!3784936 call!521605)))

(declare-fun d!1948936 () Bool)

(declare-fun res!2570041 () Bool)

(assert (=> d!1948936 (=> res!2570041 e!3784935)))

(assert (=> d!1948936 (= res!2570041 ((_ is ElementMatch!16153) lt!2344503))))

(assert (=> d!1948936 (= (validRegex!7889 lt!2344503) e!3784935)))

(declare-fun b!6217556 () Bool)

(declare-fun e!3784938 () Bool)

(declare-fun e!3784934 () Bool)

(assert (=> b!6217556 (= e!3784938 e!3784934)))

(declare-fun res!2570038 () Bool)

(assert (=> b!6217556 (=> (not res!2570038) (not e!3784934))))

(assert (=> b!6217556 (= res!2570038 call!521604)))

(declare-fun bm!521600 () Bool)

(assert (=> bm!521600 (= call!521605 (validRegex!7889 (ite c!1123180 (reg!16482 lt!2344503) (ite c!1123179 (regOne!32819 lt!2344503) (regOne!32818 lt!2344503)))))))

(declare-fun b!6217557 () Bool)

(declare-fun res!2570039 () Bool)

(assert (=> b!6217557 (=> (not res!2570039) (not e!3784933))))

(assert (=> b!6217557 (= res!2570039 call!521604)))

(assert (=> b!6217557 (= e!3784937 e!3784933)))

(declare-fun b!6217558 () Bool)

(declare-fun res!2570037 () Bool)

(assert (=> b!6217558 (=> res!2570037 e!3784938)))

(assert (=> b!6217558 (= res!2570037 (not ((_ is Concat!24998) lt!2344503)))))

(assert (=> b!6217558 (= e!3784937 e!3784938)))

(declare-fun b!6217559 () Bool)

(assert (=> b!6217559 (= e!3784934 call!521606)))

(declare-fun bm!521601 () Bool)

(assert (=> bm!521601 (= call!521606 (validRegex!7889 (ite c!1123179 (regTwo!32819 lt!2344503) (regTwo!32818 lt!2344503))))))

(assert (= (and d!1948936 (not res!2570041)) b!6217553))

(assert (= (and b!6217553 c!1123180) b!6217551))

(assert (= (and b!6217553 (not c!1123180)) b!6217552))

(assert (= (and b!6217551 res!2570040) b!6217555))

(assert (= (and b!6217552 c!1123179) b!6217557))

(assert (= (and b!6217552 (not c!1123179)) b!6217558))

(assert (= (and b!6217557 res!2570039) b!6217554))

(assert (= (and b!6217558 (not res!2570037)) b!6217556))

(assert (= (and b!6217556 res!2570038) b!6217559))

(assert (= (or b!6217554 b!6217559) bm!521601))

(assert (= (or b!6217557 b!6217556) bm!521599))

(assert (= (or b!6217555 bm!521599) bm!521600))

(declare-fun m!7045974 () Bool)

(assert (=> b!6217551 m!7045974))

(declare-fun m!7045976 () Bool)

(assert (=> bm!521600 m!7045976))

(declare-fun m!7045978 () Bool)

(assert (=> bm!521601 m!7045978))

(assert (=> d!1948848 d!1948936))

(declare-fun d!1948938 () Bool)

(declare-fun res!2570046 () Bool)

(declare-fun e!3784943 () Bool)

(assert (=> d!1948938 (=> res!2570046 e!3784943)))

(assert (=> d!1948938 (= res!2570046 ((_ is Nil!64634) (exprs!6037 (h!71083 zl!343))))))

(assert (=> d!1948938 (= (forall!15267 (exprs!6037 (h!71083 zl!343)) lambda!339770) e!3784943)))

(declare-fun b!6217564 () Bool)

(declare-fun e!3784944 () Bool)

(assert (=> b!6217564 (= e!3784943 e!3784944)))

(declare-fun res!2570047 () Bool)

(assert (=> b!6217564 (=> (not res!2570047) (not e!3784944))))

(declare-fun dynLambda!25500 (Int Regex!16153) Bool)

(assert (=> b!6217564 (= res!2570047 (dynLambda!25500 lambda!339770 (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217565 () Bool)

(assert (=> b!6217565 (= e!3784944 (forall!15267 (t!378286 (exprs!6037 (h!71083 zl!343))) lambda!339770))))

(assert (= (and d!1948938 (not res!2570046)) b!6217564))

(assert (= (and b!6217564 res!2570047) b!6217565))

(declare-fun b_lambda!236363 () Bool)

(assert (=> (not b_lambda!236363) (not b!6217564)))

(declare-fun m!7045980 () Bool)

(assert (=> b!6217564 m!7045980))

(declare-fun m!7045982 () Bool)

(assert (=> b!6217565 m!7045982))

(assert (=> d!1948848 d!1948938))

(declare-fun bs!1541983 () Bool)

(declare-fun d!1948940 () Bool)

(assert (= bs!1541983 (and d!1948940 d!1948720)))

(declare-fun lambda!339784 () Int)

(assert (=> bs!1541983 (= lambda!339784 lambda!339734)))

(declare-fun bs!1541984 () Bool)

(assert (= bs!1541984 (and d!1948940 d!1948768)))

(assert (=> bs!1541984 (= lambda!339784 lambda!339751)))

(declare-fun bs!1541985 () Bool)

(assert (= bs!1541985 (and d!1948940 d!1948776)))

(assert (=> bs!1541985 (= lambda!339784 lambda!339756)))

(declare-fun bs!1541986 () Bool)

(assert (= bs!1541986 (and d!1948940 d!1948762)))

(assert (=> bs!1541986 (= lambda!339784 lambda!339748)))

(declare-fun bs!1541987 () Bool)

(assert (= bs!1541987 (and d!1948940 d!1948850)))

(assert (=> bs!1541987 (= lambda!339784 lambda!339771)))

(declare-fun bs!1541988 () Bool)

(assert (= bs!1541988 (and d!1948940 d!1948848)))

(assert (=> bs!1541988 (= lambda!339784 lambda!339770)))

(declare-fun b!6217566 () Bool)

(declare-fun e!3784950 () Regex!16153)

(declare-fun e!3784948 () Regex!16153)

(assert (=> b!6217566 (= e!3784950 e!3784948)))

(declare-fun c!1123181 () Bool)

(assert (=> b!6217566 (= c!1123181 ((_ is Cons!64634) (t!378286 (unfocusZipperList!1574 zl!343))))))

(declare-fun b!6217567 () Bool)

(declare-fun e!3784947 () Bool)

(declare-fun lt!2344511 () Regex!16153)

(assert (=> b!6217567 (= e!3784947 (isUnion!1002 lt!2344511))))

(declare-fun e!3784945 () Bool)

(assert (=> d!1948940 e!3784945))

(declare-fun res!2570048 () Bool)

(assert (=> d!1948940 (=> (not res!2570048) (not e!3784945))))

(assert (=> d!1948940 (= res!2570048 (validRegex!7889 lt!2344511))))

(assert (=> d!1948940 (= lt!2344511 e!3784950)))

(declare-fun c!1123183 () Bool)

(declare-fun e!3784949 () Bool)

(assert (=> d!1948940 (= c!1123183 e!3784949)))

(declare-fun res!2570049 () Bool)

(assert (=> d!1948940 (=> (not res!2570049) (not e!3784949))))

(assert (=> d!1948940 (= res!2570049 ((_ is Cons!64634) (t!378286 (unfocusZipperList!1574 zl!343))))))

(assert (=> d!1948940 (forall!15267 (t!378286 (unfocusZipperList!1574 zl!343)) lambda!339784)))

(assert (=> d!1948940 (= (generalisedUnion!1997 (t!378286 (unfocusZipperList!1574 zl!343))) lt!2344511)))

(declare-fun b!6217568 () Bool)

(assert (=> b!6217568 (= e!3784950 (h!71082 (t!378286 (unfocusZipperList!1574 zl!343))))))

(declare-fun b!6217569 () Bool)

(assert (=> b!6217569 (= e!3784949 (isEmpty!36638 (t!378286 (t!378286 (unfocusZipperList!1574 zl!343)))))))

(declare-fun b!6217570 () Bool)

(assert (=> b!6217570 (= e!3784948 (Union!16153 (h!71082 (t!378286 (unfocusZipperList!1574 zl!343))) (generalisedUnion!1997 (t!378286 (t!378286 (unfocusZipperList!1574 zl!343))))))))

(declare-fun b!6217571 () Bool)

(declare-fun e!3784946 () Bool)

(assert (=> b!6217571 (= e!3784945 e!3784946)))

(declare-fun c!1123184 () Bool)

(assert (=> b!6217571 (= c!1123184 (isEmpty!36638 (t!378286 (unfocusZipperList!1574 zl!343))))))

(declare-fun b!6217572 () Bool)

(assert (=> b!6217572 (= e!3784948 EmptyLang!16153)))

(declare-fun b!6217573 () Bool)

(assert (=> b!6217573 (= e!3784946 e!3784947)))

(declare-fun c!1123182 () Bool)

(assert (=> b!6217573 (= c!1123182 (isEmpty!36638 (tail!11900 (t!378286 (unfocusZipperList!1574 zl!343)))))))

(declare-fun b!6217574 () Bool)

(assert (=> b!6217574 (= e!3784947 (= lt!2344511 (head!12815 (t!378286 (unfocusZipperList!1574 zl!343)))))))

(declare-fun b!6217575 () Bool)

(assert (=> b!6217575 (= e!3784946 (isEmptyLang!1572 lt!2344511))))

(assert (= (and d!1948940 res!2570049) b!6217569))

(assert (= (and d!1948940 c!1123183) b!6217568))

(assert (= (and d!1948940 (not c!1123183)) b!6217566))

(assert (= (and b!6217566 c!1123181) b!6217570))

(assert (= (and b!6217566 (not c!1123181)) b!6217572))

(assert (= (and d!1948940 res!2570048) b!6217571))

(assert (= (and b!6217571 c!1123184) b!6217575))

(assert (= (and b!6217571 (not c!1123184)) b!6217573))

(assert (= (and b!6217573 c!1123182) b!6217574))

(assert (= (and b!6217573 (not c!1123182)) b!6217567))

(declare-fun m!7045984 () Bool)

(assert (=> b!6217575 m!7045984))

(declare-fun m!7045986 () Bool)

(assert (=> b!6217573 m!7045986))

(assert (=> b!6217573 m!7045986))

(declare-fun m!7045988 () Bool)

(assert (=> b!6217573 m!7045988))

(declare-fun m!7045990 () Bool)

(assert (=> b!6217574 m!7045990))

(declare-fun m!7045992 () Bool)

(assert (=> d!1948940 m!7045992))

(declare-fun m!7045994 () Bool)

(assert (=> d!1948940 m!7045994))

(declare-fun m!7045996 () Bool)

(assert (=> b!6217570 m!7045996))

(declare-fun m!7045998 () Bool)

(assert (=> b!6217569 m!7045998))

(assert (=> b!6217571 m!7045602))

(declare-fun m!7046000 () Bool)

(assert (=> b!6217567 m!7046000))

(assert (=> b!6217026 d!1948940))

(declare-fun b!6217576 () Bool)

(declare-fun e!3784952 () Bool)

(declare-fun e!3784954 () Bool)

(assert (=> b!6217576 (= e!3784952 e!3784954)))

(declare-fun res!2570057 () Bool)

(assert (=> b!6217576 (=> res!2570057 e!3784954)))

(declare-fun call!521607 () Bool)

(assert (=> b!6217576 (= res!2570057 call!521607)))

(declare-fun b!6217577 () Bool)

(declare-fun res!2570050 () Bool)

(declare-fun e!3784951 () Bool)

(assert (=> b!6217577 (=> res!2570050 e!3784951)))

(declare-fun e!3784953 () Bool)

(assert (=> b!6217577 (= res!2570050 e!3784953)))

(declare-fun res!2570056 () Bool)

(assert (=> b!6217577 (=> (not res!2570056) (not e!3784953))))

(declare-fun lt!2344512 () Bool)

(assert (=> b!6217577 (= res!2570056 lt!2344512)))

(declare-fun b!6217578 () Bool)

(declare-fun res!2570055 () Bool)

(assert (=> b!6217578 (=> res!2570055 e!3784954)))

(assert (=> b!6217578 (= res!2570055 (not (isEmpty!36642 (tail!11897 (tail!11897 s!2326)))))))

(declare-fun b!6217579 () Bool)

(assert (=> b!6217579 (= e!3784954 (not (= (head!12812 (tail!11897 s!2326)) (c!1122921 (derivativeStep!4866 r!7292 (head!12812 s!2326))))))))

(declare-fun bm!521602 () Bool)

(assert (=> bm!521602 (= call!521607 (isEmpty!36642 (tail!11897 s!2326)))))

(declare-fun b!6217580 () Bool)

(declare-fun res!2570051 () Bool)

(assert (=> b!6217580 (=> res!2570051 e!3784951)))

(assert (=> b!6217580 (= res!2570051 (not ((_ is ElementMatch!16153) (derivativeStep!4866 r!7292 (head!12812 s!2326)))))))

(declare-fun e!3784955 () Bool)

(assert (=> b!6217580 (= e!3784955 e!3784951)))

(declare-fun b!6217581 () Bool)

(declare-fun e!3784956 () Bool)

(assert (=> b!6217581 (= e!3784956 (nullable!6146 (derivativeStep!4866 r!7292 (head!12812 s!2326))))))

(declare-fun b!6217582 () Bool)

(declare-fun e!3784957 () Bool)

(assert (=> b!6217582 (= e!3784957 (= lt!2344512 call!521607))))

(declare-fun d!1948942 () Bool)

(assert (=> d!1948942 e!3784957))

(declare-fun c!1123186 () Bool)

(assert (=> d!1948942 (= c!1123186 ((_ is EmptyExpr!16153) (derivativeStep!4866 r!7292 (head!12812 s!2326))))))

(assert (=> d!1948942 (= lt!2344512 e!3784956)))

(declare-fun c!1123187 () Bool)

(assert (=> d!1948942 (= c!1123187 (isEmpty!36642 (tail!11897 s!2326)))))

(assert (=> d!1948942 (validRegex!7889 (derivativeStep!4866 r!7292 (head!12812 s!2326)))))

(assert (=> d!1948942 (= (matchR!8336 (derivativeStep!4866 r!7292 (head!12812 s!2326)) (tail!11897 s!2326)) lt!2344512)))

(declare-fun b!6217583 () Bool)

(assert (=> b!6217583 (= e!3784951 e!3784952)))

(declare-fun res!2570053 () Bool)

(assert (=> b!6217583 (=> (not res!2570053) (not e!3784952))))

(assert (=> b!6217583 (= res!2570053 (not lt!2344512))))

(declare-fun b!6217584 () Bool)

(assert (=> b!6217584 (= e!3784956 (matchR!8336 (derivativeStep!4866 (derivativeStep!4866 r!7292 (head!12812 s!2326)) (head!12812 (tail!11897 s!2326))) (tail!11897 (tail!11897 s!2326))))))

(declare-fun b!6217585 () Bool)

(assert (=> b!6217585 (= e!3784955 (not lt!2344512))))

(declare-fun b!6217586 () Bool)

(assert (=> b!6217586 (= e!3784953 (= (head!12812 (tail!11897 s!2326)) (c!1122921 (derivativeStep!4866 r!7292 (head!12812 s!2326)))))))

(declare-fun b!6217587 () Bool)

(assert (=> b!6217587 (= e!3784957 e!3784955)))

(declare-fun c!1123185 () Bool)

(assert (=> b!6217587 (= c!1123185 ((_ is EmptyLang!16153) (derivativeStep!4866 r!7292 (head!12812 s!2326))))))

(declare-fun b!6217588 () Bool)

(declare-fun res!2570054 () Bool)

(assert (=> b!6217588 (=> (not res!2570054) (not e!3784953))))

(assert (=> b!6217588 (= res!2570054 (not call!521607))))

(declare-fun b!6217589 () Bool)

(declare-fun res!2570052 () Bool)

(assert (=> b!6217589 (=> (not res!2570052) (not e!3784953))))

(assert (=> b!6217589 (= res!2570052 (isEmpty!36642 (tail!11897 (tail!11897 s!2326))))))

(assert (= (and d!1948942 c!1123187) b!6217581))

(assert (= (and d!1948942 (not c!1123187)) b!6217584))

(assert (= (and d!1948942 c!1123186) b!6217582))

(assert (= (and d!1948942 (not c!1123186)) b!6217587))

(assert (= (and b!6217587 c!1123185) b!6217585))

(assert (= (and b!6217587 (not c!1123185)) b!6217580))

(assert (= (and b!6217580 (not res!2570051)) b!6217577))

(assert (= (and b!6217577 res!2570056) b!6217588))

(assert (= (and b!6217588 res!2570054) b!6217589))

(assert (= (and b!6217589 res!2570052) b!6217586))

(assert (= (and b!6217577 (not res!2570050)) b!6217583))

(assert (= (and b!6217583 res!2570053) b!6217576))

(assert (= (and b!6217576 (not res!2570057)) b!6217578))

(assert (= (and b!6217578 (not res!2570055)) b!6217579))

(assert (= (or b!6217582 b!6217576 b!6217588) bm!521602))

(assert (=> b!6217578 m!7045498))

(declare-fun m!7046002 () Bool)

(assert (=> b!6217578 m!7046002))

(assert (=> b!6217578 m!7046002))

(declare-fun m!7046004 () Bool)

(assert (=> b!6217578 m!7046004))

(assert (=> d!1948942 m!7045498))

(assert (=> d!1948942 m!7045500))

(assert (=> d!1948942 m!7045506))

(declare-fun m!7046006 () Bool)

(assert (=> d!1948942 m!7046006))

(assert (=> b!6217589 m!7045498))

(assert (=> b!6217589 m!7046002))

(assert (=> b!6217589 m!7046002))

(assert (=> b!6217589 m!7046004))

(assert (=> b!6217581 m!7045506))

(declare-fun m!7046008 () Bool)

(assert (=> b!6217581 m!7046008))

(assert (=> bm!521602 m!7045498))

(assert (=> bm!521602 m!7045500))

(assert (=> b!6217586 m!7045498))

(declare-fun m!7046010 () Bool)

(assert (=> b!6217586 m!7046010))

(assert (=> b!6217579 m!7045498))

(assert (=> b!6217579 m!7046010))

(assert (=> b!6217584 m!7045498))

(assert (=> b!6217584 m!7046010))

(assert (=> b!6217584 m!7045506))

(assert (=> b!6217584 m!7046010))

(declare-fun m!7046012 () Bool)

(assert (=> b!6217584 m!7046012))

(assert (=> b!6217584 m!7045498))

(assert (=> b!6217584 m!7046002))

(assert (=> b!6217584 m!7046012))

(assert (=> b!6217584 m!7046002))

(declare-fun m!7046014 () Bool)

(assert (=> b!6217584 m!7046014))

(assert (=> b!6216959 d!1948942))

(declare-fun b!6217610 () Bool)

(declare-fun e!3784969 () Regex!16153)

(declare-fun call!521618 () Regex!16153)

(assert (=> b!6217610 (= e!3784969 (Union!16153 (Concat!24998 call!521618 (regTwo!32818 r!7292)) EmptyLang!16153))))

(declare-fun bm!521611 () Bool)

(declare-fun call!521616 () Regex!16153)

(assert (=> bm!521611 (= call!521618 call!521616)))

(declare-fun bm!521612 () Bool)

(declare-fun c!1123200 () Bool)

(declare-fun call!521617 () Regex!16153)

(assert (=> bm!521612 (= call!521617 (derivativeStep!4866 (ite c!1123200 (regOne!32819 r!7292) (regOne!32818 r!7292)) (head!12812 s!2326)))))

(declare-fun b!6217611 () Bool)

(assert (=> b!6217611 (= e!3784969 (Union!16153 (Concat!24998 call!521617 (regTwo!32818 r!7292)) call!521618))))

(declare-fun b!6217612 () Bool)

(declare-fun e!3784971 () Regex!16153)

(declare-fun e!3784968 () Regex!16153)

(assert (=> b!6217612 (= e!3784971 e!3784968)))

(declare-fun c!1123201 () Bool)

(assert (=> b!6217612 (= c!1123201 ((_ is Star!16153) r!7292))))

(declare-fun b!6217613 () Bool)

(assert (=> b!6217613 (= e!3784968 (Concat!24998 call!521616 r!7292))))

(declare-fun bm!521613 () Bool)

(declare-fun call!521619 () Regex!16153)

(assert (=> bm!521613 (= call!521616 call!521619)))

(declare-fun bm!521614 () Bool)

(declare-fun c!1123199 () Bool)

(assert (=> bm!521614 (= call!521619 (derivativeStep!4866 (ite c!1123200 (regTwo!32819 r!7292) (ite c!1123201 (reg!16482 r!7292) (ite c!1123199 (regTwo!32818 r!7292) (regOne!32818 r!7292)))) (head!12812 s!2326)))))

(declare-fun b!6217615 () Bool)

(assert (=> b!6217615 (= e!3784971 (Union!16153 call!521617 call!521619))))

(declare-fun b!6217616 () Bool)

(declare-fun e!3784970 () Regex!16153)

(assert (=> b!6217616 (= e!3784970 EmptyLang!16153)))

(declare-fun b!6217617 () Bool)

(assert (=> b!6217617 (= c!1123199 (nullable!6146 (regOne!32818 r!7292)))))

(assert (=> b!6217617 (= e!3784968 e!3784969)))

(declare-fun d!1948944 () Bool)

(declare-fun lt!2344515 () Regex!16153)

(assert (=> d!1948944 (validRegex!7889 lt!2344515)))

(assert (=> d!1948944 (= lt!2344515 e!3784970)))

(declare-fun c!1123202 () Bool)

(assert (=> d!1948944 (= c!1123202 (or ((_ is EmptyExpr!16153) r!7292) ((_ is EmptyLang!16153) r!7292)))))

(assert (=> d!1948944 (validRegex!7889 r!7292)))

(assert (=> d!1948944 (= (derivativeStep!4866 r!7292 (head!12812 s!2326)) lt!2344515)))

(declare-fun b!6217614 () Bool)

(assert (=> b!6217614 (= c!1123200 ((_ is Union!16153) r!7292))))

(declare-fun e!3784972 () Regex!16153)

(assert (=> b!6217614 (= e!3784972 e!3784971)))

(declare-fun b!6217618 () Bool)

(assert (=> b!6217618 (= e!3784970 e!3784972)))

(declare-fun c!1123198 () Bool)

(assert (=> b!6217618 (= c!1123198 ((_ is ElementMatch!16153) r!7292))))

(declare-fun b!6217619 () Bool)

(assert (=> b!6217619 (= e!3784972 (ite (= (head!12812 s!2326) (c!1122921 r!7292)) EmptyExpr!16153 EmptyLang!16153))))

(assert (= (and d!1948944 c!1123202) b!6217616))

(assert (= (and d!1948944 (not c!1123202)) b!6217618))

(assert (= (and b!6217618 c!1123198) b!6217619))

(assert (= (and b!6217618 (not c!1123198)) b!6217614))

(assert (= (and b!6217614 c!1123200) b!6217615))

(assert (= (and b!6217614 (not c!1123200)) b!6217612))

(assert (= (and b!6217612 c!1123201) b!6217613))

(assert (= (and b!6217612 (not c!1123201)) b!6217617))

(assert (= (and b!6217617 c!1123199) b!6217611))

(assert (= (and b!6217617 (not c!1123199)) b!6217610))

(assert (= (or b!6217611 b!6217610) bm!521611))

(assert (= (or b!6217613 bm!521611) bm!521613))

(assert (= (or b!6217615 bm!521613) bm!521614))

(assert (= (or b!6217615 b!6217611) bm!521612))

(assert (=> bm!521612 m!7045504))

(declare-fun m!7046016 () Bool)

(assert (=> bm!521612 m!7046016))

(assert (=> bm!521614 m!7045504))

(declare-fun m!7046018 () Bool)

(assert (=> bm!521614 m!7046018))

(assert (=> b!6217617 m!7045926))

(declare-fun m!7046020 () Bool)

(assert (=> d!1948944 m!7046020))

(assert (=> d!1948944 m!7045310))

(assert (=> b!6216959 d!1948944))

(declare-fun d!1948946 () Bool)

(assert (=> d!1948946 (= (head!12812 s!2326) (h!71084 s!2326))))

(assert (=> b!6216959 d!1948946))

(assert (=> b!6216959 d!1948886))

(assert (=> d!1948744 d!1948738))

(assert (=> d!1948744 d!1948730))

(declare-fun d!1948948 () Bool)

(assert (=> d!1948948 (= (matchR!8336 r!7292 s!2326) (matchRSpec!3254 r!7292 s!2326))))

(assert (=> d!1948948 true))

(declare-fun _$88!4826 () Unit!157943)

(assert (=> d!1948948 (= (choose!46196 r!7292 s!2326) _$88!4826)))

(declare-fun bs!1541989 () Bool)

(assert (= bs!1541989 d!1948948))

(assert (=> bs!1541989 m!7045292))

(assert (=> bs!1541989 m!7045290))

(assert (=> d!1948744 d!1948948))

(assert (=> d!1948744 d!1948842))

(declare-fun bs!1541990 () Bool)

(declare-fun b!6217626 () Bool)

(assert (= bs!1541990 (and b!6217626 b!6216878)))

(declare-fun lambda!339785 () Int)

(assert (=> bs!1541990 (not (= lambda!339785 lambda!339741))))

(declare-fun bs!1541991 () Bool)

(assert (= bs!1541991 (and b!6217626 d!1948874)))

(assert (=> bs!1541991 (not (= lambda!339785 lambda!339776))))

(declare-fun bs!1541992 () Bool)

(assert (= bs!1541992 (and b!6217626 d!1948838)))

(assert (=> bs!1541992 (not (= lambda!339785 lambda!339767))))

(assert (=> bs!1541992 (not (= lambda!339785 lambda!339766))))

(declare-fun bs!1541993 () Bool)

(assert (= bs!1541993 (and b!6217626 b!6216632)))

(assert (=> bs!1541993 (not (= lambda!339785 lambda!339711))))

(declare-fun bs!1541994 () Bool)

(assert (= bs!1541994 (and b!6217626 b!6216876)))

(assert (=> bs!1541994 (= (and (= (reg!16482 (regOne!32819 r!7292)) (reg!16482 r!7292)) (= (regOne!32819 r!7292) r!7292)) (= lambda!339785 lambda!339740))))

(declare-fun bs!1541995 () Bool)

(assert (= bs!1541995 (and b!6217626 d!1948836)))

(assert (=> bs!1541995 (not (= lambda!339785 lambda!339761))))

(assert (=> bs!1541993 (not (= lambda!339785 lambda!339712))))

(assert (=> bs!1541991 (not (= lambda!339785 lambda!339777))))

(assert (=> b!6217626 true))

(assert (=> b!6217626 true))

(declare-fun bs!1541996 () Bool)

(declare-fun b!6217628 () Bool)

(assert (= bs!1541996 (and b!6217628 b!6216878)))

(declare-fun lambda!339786 () Int)

(assert (=> bs!1541996 (= (and (= (regOne!32818 (regOne!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regOne!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339786 lambda!339741))))

(declare-fun bs!1541997 () Bool)

(assert (= bs!1541997 (and b!6217628 d!1948874)))

(assert (=> bs!1541997 (not (= lambda!339786 lambda!339776))))

(declare-fun bs!1541998 () Bool)

(assert (= bs!1541998 (and b!6217628 d!1948838)))

(assert (=> bs!1541998 (= (and (= (regOne!32818 (regOne!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regOne!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339786 lambda!339767))))

(declare-fun bs!1541999 () Bool)

(assert (= bs!1541999 (and b!6217628 b!6217626)))

(assert (=> bs!1541999 (not (= lambda!339786 lambda!339785))))

(assert (=> bs!1541998 (not (= lambda!339786 lambda!339766))))

(declare-fun bs!1542000 () Bool)

(assert (= bs!1542000 (and b!6217628 b!6216632)))

(assert (=> bs!1542000 (not (= lambda!339786 lambda!339711))))

(declare-fun bs!1542001 () Bool)

(assert (= bs!1542001 (and b!6217628 b!6216876)))

(assert (=> bs!1542001 (not (= lambda!339786 lambda!339740))))

(declare-fun bs!1542002 () Bool)

(assert (= bs!1542002 (and b!6217628 d!1948836)))

(assert (=> bs!1542002 (not (= lambda!339786 lambda!339761))))

(assert (=> bs!1542000 (= (and (= (regOne!32818 (regOne!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regOne!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339786 lambda!339712))))

(assert (=> bs!1541997 (= (and (= (regOne!32818 (regOne!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regOne!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339786 lambda!339777))))

(assert (=> b!6217628 true))

(assert (=> b!6217628 true))

(declare-fun b!6217620 () Bool)

(declare-fun e!3784979 () Bool)

(declare-fun call!521621 () Bool)

(assert (=> b!6217620 (= e!3784979 call!521621)))

(declare-fun b!6217621 () Bool)

(declare-fun e!3784978 () Bool)

(assert (=> b!6217621 (= e!3784979 e!3784978)))

(declare-fun res!2570059 () Bool)

(assert (=> b!6217621 (= res!2570059 (not ((_ is EmptyLang!16153) (regOne!32819 r!7292))))))

(assert (=> b!6217621 (=> (not res!2570059) (not e!3784978))))

(declare-fun d!1948950 () Bool)

(declare-fun c!1123206 () Bool)

(assert (=> d!1948950 (= c!1123206 ((_ is EmptyExpr!16153) (regOne!32819 r!7292)))))

(assert (=> d!1948950 (= (matchRSpec!3254 (regOne!32819 r!7292) s!2326) e!3784979)))

(declare-fun b!6217622 () Bool)

(declare-fun e!3784973 () Bool)

(assert (=> b!6217622 (= e!3784973 (= s!2326 (Cons!64636 (c!1122921 (regOne!32819 r!7292)) Nil!64636)))))

(declare-fun b!6217623 () Bool)

(declare-fun e!3784975 () Bool)

(declare-fun e!3784977 () Bool)

(assert (=> b!6217623 (= e!3784975 e!3784977)))

(declare-fun res!2570060 () Bool)

(assert (=> b!6217623 (= res!2570060 (matchRSpec!3254 (regOne!32819 (regOne!32819 r!7292)) s!2326))))

(assert (=> b!6217623 (=> res!2570060 e!3784977)))

(declare-fun b!6217624 () Bool)

(declare-fun c!1123204 () Bool)

(assert (=> b!6217624 (= c!1123204 ((_ is ElementMatch!16153) (regOne!32819 r!7292)))))

(assert (=> b!6217624 (= e!3784978 e!3784973)))

(declare-fun bm!521615 () Bool)

(declare-fun call!521620 () Bool)

(declare-fun c!1123205 () Bool)

(assert (=> bm!521615 (= call!521620 (Exists!3223 (ite c!1123205 lambda!339785 lambda!339786)))))

(declare-fun b!6217625 () Bool)

(assert (=> b!6217625 (= e!3784977 (matchRSpec!3254 (regTwo!32819 (regOne!32819 r!7292)) s!2326))))

(declare-fun e!3784974 () Bool)

(assert (=> b!6217626 (= e!3784974 call!521620)))

(declare-fun b!6217627 () Bool)

(declare-fun res!2570058 () Bool)

(assert (=> b!6217627 (=> res!2570058 e!3784974)))

(assert (=> b!6217627 (= res!2570058 call!521621)))

(declare-fun e!3784976 () Bool)

(assert (=> b!6217627 (= e!3784976 e!3784974)))

(assert (=> b!6217628 (= e!3784976 call!521620)))

(declare-fun bm!521616 () Bool)

(assert (=> bm!521616 (= call!521621 (isEmpty!36642 s!2326))))

(declare-fun b!6217629 () Bool)

(assert (=> b!6217629 (= e!3784975 e!3784976)))

(assert (=> b!6217629 (= c!1123205 ((_ is Star!16153) (regOne!32819 r!7292)))))

(declare-fun b!6217630 () Bool)

(declare-fun c!1123203 () Bool)

(assert (=> b!6217630 (= c!1123203 ((_ is Union!16153) (regOne!32819 r!7292)))))

(assert (=> b!6217630 (= e!3784973 e!3784975)))

(assert (= (and d!1948950 c!1123206) b!6217620))

(assert (= (and d!1948950 (not c!1123206)) b!6217621))

(assert (= (and b!6217621 res!2570059) b!6217624))

(assert (= (and b!6217624 c!1123204) b!6217622))

(assert (= (and b!6217624 (not c!1123204)) b!6217630))

(assert (= (and b!6217630 c!1123203) b!6217623))

(assert (= (and b!6217630 (not c!1123203)) b!6217629))

(assert (= (and b!6217623 (not res!2570060)) b!6217625))

(assert (= (and b!6217629 c!1123205) b!6217627))

(assert (= (and b!6217629 (not c!1123205)) b!6217628))

(assert (= (and b!6217627 (not res!2570058)) b!6217626))

(assert (= (or b!6217626 b!6217628) bm!521615))

(assert (= (or b!6217620 b!6217627) bm!521616))

(declare-fun m!7046022 () Bool)

(assert (=> b!6217623 m!7046022))

(declare-fun m!7046024 () Bool)

(assert (=> bm!521615 m!7046024))

(declare-fun m!7046026 () Bool)

(assert (=> b!6217625 m!7046026))

(assert (=> bm!521616 m!7045476))

(assert (=> b!6216873 d!1948950))

(declare-fun bs!1542003 () Bool)

(declare-fun d!1948952 () Bool)

(assert (= bs!1542003 (and d!1948952 d!1948914)))

(declare-fun lambda!339787 () Int)

(assert (=> bs!1542003 (= lambda!339787 lambda!339783)))

(assert (=> d!1948952 (= (nullableZipper!1926 lt!2344416) (exists!2486 lt!2344416 lambda!339787))))

(declare-fun bs!1542004 () Bool)

(assert (= bs!1542004 d!1948952))

(declare-fun m!7046028 () Bool)

(assert (=> bs!1542004 m!7046028))

(assert (=> b!6216735 d!1948952))

(declare-fun bm!521617 () Bool)

(declare-fun call!521622 () Bool)

(declare-fun c!1123207 () Bool)

(assert (=> bm!521617 (= call!521622 (nullable!6146 (ite c!1123207 (regTwo!32819 (regOne!32818 (regOne!32818 r!7292))) (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))))))))

(declare-fun b!6217631 () Bool)

(declare-fun e!3784984 () Bool)

(declare-fun e!3784985 () Bool)

(assert (=> b!6217631 (= e!3784984 e!3784985)))

(assert (=> b!6217631 (= c!1123207 ((_ is Union!16153) (regOne!32818 (regOne!32818 r!7292))))))

(declare-fun b!6217633 () Bool)

(declare-fun e!3784982 () Bool)

(declare-fun e!3784983 () Bool)

(assert (=> b!6217633 (= e!3784982 e!3784983)))

(declare-fun res!2570065 () Bool)

(assert (=> b!6217633 (=> (not res!2570065) (not e!3784983))))

(assert (=> b!6217633 (= res!2570065 (and (not ((_ is EmptyLang!16153) (regOne!32818 (regOne!32818 r!7292)))) (not ((_ is ElementMatch!16153) (regOne!32818 (regOne!32818 r!7292))))))))

(declare-fun b!6217634 () Bool)

(declare-fun e!3784980 () Bool)

(assert (=> b!6217634 (= e!3784980 call!521622)))

(declare-fun b!6217635 () Bool)

(assert (=> b!6217635 (= e!3784985 e!3784980)))

(declare-fun res!2570064 () Bool)

(declare-fun call!521623 () Bool)

(assert (=> b!6217635 (= res!2570064 call!521623)))

(assert (=> b!6217635 (=> (not res!2570064) (not e!3784980))))

(declare-fun b!6217636 () Bool)

(assert (=> b!6217636 (= e!3784983 e!3784984)))

(declare-fun res!2570062 () Bool)

(assert (=> b!6217636 (=> res!2570062 e!3784984)))

(assert (=> b!6217636 (= res!2570062 ((_ is Star!16153) (regOne!32818 (regOne!32818 r!7292))))))

(declare-fun b!6217637 () Bool)

(declare-fun e!3784981 () Bool)

(assert (=> b!6217637 (= e!3784981 call!521622)))

(declare-fun bm!521618 () Bool)

(assert (=> bm!521618 (= call!521623 (nullable!6146 (ite c!1123207 (regOne!32819 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 (regOne!32818 r!7292))))))))

(declare-fun d!1948954 () Bool)

(declare-fun res!2570061 () Bool)

(assert (=> d!1948954 (=> res!2570061 e!3784982)))

(assert (=> d!1948954 (= res!2570061 ((_ is EmptyExpr!16153) (regOne!32818 (regOne!32818 r!7292))))))

(assert (=> d!1948954 (= (nullableFct!2101 (regOne!32818 (regOne!32818 r!7292))) e!3784982)))

(declare-fun b!6217632 () Bool)

(assert (=> b!6217632 (= e!3784985 e!3784981)))

(declare-fun res!2570063 () Bool)

(assert (=> b!6217632 (= res!2570063 call!521623)))

(assert (=> b!6217632 (=> res!2570063 e!3784981)))

(assert (= (and d!1948954 (not res!2570061)) b!6217633))

(assert (= (and b!6217633 res!2570065) b!6217636))

(assert (= (and b!6217636 (not res!2570062)) b!6217631))

(assert (= (and b!6217631 c!1123207) b!6217632))

(assert (= (and b!6217631 (not c!1123207)) b!6217635))

(assert (= (and b!6217632 (not res!2570063)) b!6217637))

(assert (= (and b!6217635 res!2570064) b!6217634))

(assert (= (or b!6217637 b!6217634) bm!521617))

(assert (= (or b!6217632 b!6217635) bm!521618))

(declare-fun m!7046030 () Bool)

(assert (=> bm!521617 m!7046030))

(declare-fun m!7046032 () Bool)

(assert (=> bm!521618 m!7046032))

(assert (=> d!1948756 d!1948954))

(declare-fun d!1948956 () Bool)

(declare-fun c!1123208 () Bool)

(assert (=> d!1948956 (= c!1123208 (isEmpty!36642 (tail!11897 (t!378288 s!2326))))))

(declare-fun e!3784986 () Bool)

(assert (=> d!1948956 (= (matchZipper!2165 (derivationStepZipper!2118 lt!2344410 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))) e!3784986)))

(declare-fun b!6217638 () Bool)

(assert (=> b!6217638 (= e!3784986 (nullableZipper!1926 (derivationStepZipper!2118 lt!2344410 (head!12812 (t!378288 s!2326)))))))

(declare-fun b!6217639 () Bool)

(assert (=> b!6217639 (= e!3784986 (matchZipper!2165 (derivationStepZipper!2118 (derivationStepZipper!2118 lt!2344410 (head!12812 (t!378288 s!2326))) (head!12812 (tail!11897 (t!378288 s!2326)))) (tail!11897 (tail!11897 (t!378288 s!2326)))))))

(assert (= (and d!1948956 c!1123208) b!6217638))

(assert (= (and d!1948956 (not c!1123208)) b!6217639))

(assert (=> d!1948956 m!7045414))

(assert (=> d!1948956 m!7045894))

(assert (=> b!6217638 m!7045420))

(declare-fun m!7046034 () Bool)

(assert (=> b!6217638 m!7046034))

(assert (=> b!6217639 m!7045414))

(assert (=> b!6217639 m!7045898))

(assert (=> b!6217639 m!7045420))

(assert (=> b!6217639 m!7045898))

(declare-fun m!7046036 () Bool)

(assert (=> b!6217639 m!7046036))

(assert (=> b!6217639 m!7045414))

(assert (=> b!6217639 m!7045902))

(assert (=> b!6217639 m!7046036))

(assert (=> b!6217639 m!7045902))

(declare-fun m!7046038 () Bool)

(assert (=> b!6217639 m!7046038))

(assert (=> b!6216738 d!1948956))

(declare-fun bs!1542005 () Bool)

(declare-fun d!1948958 () Bool)

(assert (= bs!1542005 (and d!1948958 b!6216622)))

(declare-fun lambda!339788 () Int)

(assert (=> bs!1542005 (= (= (head!12812 (t!378288 s!2326)) (h!71084 s!2326)) (= lambda!339788 lambda!339713))))

(declare-fun bs!1542006 () Bool)

(assert (= bs!1542006 (and d!1948958 d!1948898)))

(assert (=> bs!1542006 (= lambda!339788 lambda!339780)))

(assert (=> d!1948958 true))

(assert (=> d!1948958 (= (derivationStepZipper!2118 lt!2344410 (head!12812 (t!378288 s!2326))) (flatMap!1658 lt!2344410 lambda!339788))))

(declare-fun bs!1542007 () Bool)

(assert (= bs!1542007 d!1948958))

(declare-fun m!7046040 () Bool)

(assert (=> bs!1542007 m!7046040))

(assert (=> b!6216738 d!1948958))

(assert (=> b!6216738 d!1948900))

(assert (=> b!6216738 d!1948902))

(declare-fun b!6217640 () Bool)

(declare-fun e!3784987 () Bool)

(declare-fun e!3784991 () Bool)

(assert (=> b!6217640 (= e!3784987 e!3784991)))

(declare-fun res!2570069 () Bool)

(assert (=> b!6217640 (= res!2570069 (not (nullable!6146 (reg!16482 lt!2344470))))))

(assert (=> b!6217640 (=> (not res!2570069) (not e!3784991))))

(declare-fun bm!521619 () Bool)

(declare-fun call!521624 () Bool)

(declare-fun call!521625 () Bool)

(assert (=> bm!521619 (= call!521624 call!521625)))

(declare-fun b!6217641 () Bool)

(declare-fun e!3784992 () Bool)

(assert (=> b!6217641 (= e!3784987 e!3784992)))

(declare-fun c!1123209 () Bool)

(assert (=> b!6217641 (= c!1123209 ((_ is Union!16153) lt!2344470))))

(declare-fun b!6217642 () Bool)

(declare-fun e!3784990 () Bool)

(assert (=> b!6217642 (= e!3784990 e!3784987)))

(declare-fun c!1123210 () Bool)

(assert (=> b!6217642 (= c!1123210 ((_ is Star!16153) lt!2344470))))

(declare-fun b!6217643 () Bool)

(declare-fun e!3784988 () Bool)

(declare-fun call!521626 () Bool)

(assert (=> b!6217643 (= e!3784988 call!521626)))

(declare-fun b!6217644 () Bool)

(assert (=> b!6217644 (= e!3784991 call!521625)))

(declare-fun d!1948960 () Bool)

(declare-fun res!2570070 () Bool)

(assert (=> d!1948960 (=> res!2570070 e!3784990)))

(assert (=> d!1948960 (= res!2570070 ((_ is ElementMatch!16153) lt!2344470))))

(assert (=> d!1948960 (= (validRegex!7889 lt!2344470) e!3784990)))

(declare-fun b!6217645 () Bool)

(declare-fun e!3784993 () Bool)

(declare-fun e!3784989 () Bool)

(assert (=> b!6217645 (= e!3784993 e!3784989)))

(declare-fun res!2570067 () Bool)

(assert (=> b!6217645 (=> (not res!2570067) (not e!3784989))))

(assert (=> b!6217645 (= res!2570067 call!521624)))

(declare-fun bm!521620 () Bool)

(assert (=> bm!521620 (= call!521625 (validRegex!7889 (ite c!1123210 (reg!16482 lt!2344470) (ite c!1123209 (regOne!32819 lt!2344470) (regOne!32818 lt!2344470)))))))

(declare-fun b!6217646 () Bool)

(declare-fun res!2570068 () Bool)

(assert (=> b!6217646 (=> (not res!2570068) (not e!3784988))))

(assert (=> b!6217646 (= res!2570068 call!521624)))

(assert (=> b!6217646 (= e!3784992 e!3784988)))

(declare-fun b!6217647 () Bool)

(declare-fun res!2570066 () Bool)

(assert (=> b!6217647 (=> res!2570066 e!3784993)))

(assert (=> b!6217647 (= res!2570066 (not ((_ is Concat!24998) lt!2344470)))))

(assert (=> b!6217647 (= e!3784992 e!3784993)))

(declare-fun b!6217648 () Bool)

(assert (=> b!6217648 (= e!3784989 call!521626)))

(declare-fun bm!521621 () Bool)

(assert (=> bm!521621 (= call!521626 (validRegex!7889 (ite c!1123209 (regTwo!32819 lt!2344470) (regTwo!32818 lt!2344470))))))

(assert (= (and d!1948960 (not res!2570070)) b!6217642))

(assert (= (and b!6217642 c!1123210) b!6217640))

(assert (= (and b!6217642 (not c!1123210)) b!6217641))

(assert (= (and b!6217640 res!2570069) b!6217644))

(assert (= (and b!6217641 c!1123209) b!6217646))

(assert (= (and b!6217641 (not c!1123209)) b!6217647))

(assert (= (and b!6217646 res!2570068) b!6217643))

(assert (= (and b!6217647 (not res!2570066)) b!6217645))

(assert (= (and b!6217645 res!2570067) b!6217648))

(assert (= (or b!6217643 b!6217648) bm!521621))

(assert (= (or b!6217646 b!6217645) bm!521619))

(assert (= (or b!6217644 bm!521619) bm!521620))

(declare-fun m!7046042 () Bool)

(assert (=> b!6217640 m!7046042))

(declare-fun m!7046044 () Bool)

(assert (=> bm!521620 m!7046044))

(declare-fun m!7046046 () Bool)

(assert (=> bm!521621 m!7046046))

(assert (=> d!1948768 d!1948960))

(declare-fun d!1948962 () Bool)

(declare-fun res!2570071 () Bool)

(declare-fun e!3784994 () Bool)

(assert (=> d!1948962 (=> res!2570071 e!3784994)))

(assert (=> d!1948962 (= res!2570071 ((_ is Nil!64634) (unfocusZipperList!1574 zl!343)))))

(assert (=> d!1948962 (= (forall!15267 (unfocusZipperList!1574 zl!343) lambda!339751) e!3784994)))

(declare-fun b!6217649 () Bool)

(declare-fun e!3784995 () Bool)

(assert (=> b!6217649 (= e!3784994 e!3784995)))

(declare-fun res!2570072 () Bool)

(assert (=> b!6217649 (=> (not res!2570072) (not e!3784995))))

(assert (=> b!6217649 (= res!2570072 (dynLambda!25500 lambda!339751 (h!71082 (unfocusZipperList!1574 zl!343))))))

(declare-fun b!6217650 () Bool)

(assert (=> b!6217650 (= e!3784995 (forall!15267 (t!378286 (unfocusZipperList!1574 zl!343)) lambda!339751))))

(assert (= (and d!1948962 (not res!2570071)) b!6217649))

(assert (= (and b!6217649 res!2570072) b!6217650))

(declare-fun b_lambda!236365 () Bool)

(assert (=> (not b_lambda!236365) (not b!6217649)))

(declare-fun m!7046048 () Bool)

(assert (=> b!6217649 m!7046048))

(declare-fun m!7046050 () Bool)

(assert (=> b!6217650 m!7046050))

(assert (=> d!1948768 d!1948962))

(declare-fun d!1948964 () Bool)

(assert (=> d!1948964 (= (isConcat!1086 lt!2344503) ((_ is Concat!24998) lt!2344503))))

(assert (=> b!6217350 d!1948964))

(declare-fun d!1948966 () Bool)

(assert (=> d!1948966 true))

(declare-fun setRes!42219 () Bool)

(assert (=> d!1948966 setRes!42219))

(declare-fun condSetEmpty!42219 () Bool)

(declare-fun res!2570075 () (InoxSet Context!11074))

(assert (=> d!1948966 (= condSetEmpty!42219 (= res!2570075 ((as const (Array Context!11074 Bool)) false)))))

(assert (=> d!1948966 (= (choose!46193 z!1189 lambda!339713) res!2570075)))

(declare-fun setIsEmpty!42219 () Bool)

(assert (=> setIsEmpty!42219 setRes!42219))

(declare-fun tp!1734564 () Bool)

(declare-fun setNonEmpty!42219 () Bool)

(declare-fun e!3784998 () Bool)

(declare-fun setElem!42219 () Context!11074)

(assert (=> setNonEmpty!42219 (= setRes!42219 (and tp!1734564 (inv!83629 setElem!42219) e!3784998))))

(declare-fun setRest!42219 () (InoxSet Context!11074))

(assert (=> setNonEmpty!42219 (= res!2570075 ((_ map or) (store ((as const (Array Context!11074 Bool)) false) setElem!42219 true) setRest!42219))))

(declare-fun b!6217653 () Bool)

(declare-fun tp!1734563 () Bool)

(assert (=> b!6217653 (= e!3784998 tp!1734563)))

(assert (= (and d!1948966 condSetEmpty!42219) setIsEmpty!42219))

(assert (= (and d!1948966 (not condSetEmpty!42219)) setNonEmpty!42219))

(assert (= setNonEmpty!42219 b!6217653))

(declare-fun m!7046052 () Bool)

(assert (=> setNonEmpty!42219 m!7046052))

(assert (=> d!1948784 d!1948966))

(declare-fun b!6217654 () Bool)

(declare-fun e!3784999 () Bool)

(declare-fun e!3785003 () Bool)

(assert (=> b!6217654 (= e!3784999 e!3785003)))

(declare-fun res!2570079 () Bool)

(assert (=> b!6217654 (= res!2570079 (not (nullable!6146 (reg!16482 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))))))))

(assert (=> b!6217654 (=> (not res!2570079) (not e!3785003))))

(declare-fun bm!521622 () Bool)

(declare-fun call!521627 () Bool)

(declare-fun call!521628 () Bool)

(assert (=> bm!521622 (= call!521627 call!521628)))

(declare-fun b!6217655 () Bool)

(declare-fun e!3785004 () Bool)

(assert (=> b!6217655 (= e!3784999 e!3785004)))

(declare-fun c!1123211 () Bool)

(assert (=> b!6217655 (= c!1123211 ((_ is Union!16153) (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))))))

(declare-fun b!6217656 () Bool)

(declare-fun e!3785002 () Bool)

(assert (=> b!6217656 (= e!3785002 e!3784999)))

(declare-fun c!1123212 () Bool)

(assert (=> b!6217656 (= c!1123212 ((_ is Star!16153) (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))))))

(declare-fun b!6217657 () Bool)

(declare-fun e!3785000 () Bool)

(declare-fun call!521629 () Bool)

(assert (=> b!6217657 (= e!3785000 call!521629)))

(declare-fun b!6217658 () Bool)

(assert (=> b!6217658 (= e!3785003 call!521628)))

(declare-fun d!1948968 () Bool)

(declare-fun res!2570080 () Bool)

(assert (=> d!1948968 (=> res!2570080 e!3785002)))

(assert (=> d!1948968 (= res!2570080 ((_ is ElementMatch!16153) (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))))))

(assert (=> d!1948968 (= (validRegex!7889 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))) e!3785002)))

(declare-fun b!6217659 () Bool)

(declare-fun e!3785005 () Bool)

(declare-fun e!3785001 () Bool)

(assert (=> b!6217659 (= e!3785005 e!3785001)))

(declare-fun res!2570077 () Bool)

(assert (=> b!6217659 (=> (not res!2570077) (not e!3785001))))

(assert (=> b!6217659 (= res!2570077 call!521627)))

(declare-fun bm!521623 () Bool)

(assert (=> bm!521623 (= call!521628 (validRegex!7889 (ite c!1123212 (reg!16482 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))) (ite c!1123211 (regOne!32819 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))) (regOne!32818 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292)))))))))

(declare-fun b!6217660 () Bool)

(declare-fun res!2570078 () Bool)

(assert (=> b!6217660 (=> (not res!2570078) (not e!3785000))))

(assert (=> b!6217660 (= res!2570078 call!521627)))

(assert (=> b!6217660 (= e!3785004 e!3785000)))

(declare-fun b!6217661 () Bool)

(declare-fun res!2570076 () Bool)

(assert (=> b!6217661 (=> res!2570076 e!3785005)))

(assert (=> b!6217661 (= res!2570076 (not ((_ is Concat!24998) (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292)))))))

(assert (=> b!6217661 (= e!3785004 e!3785005)))

(declare-fun b!6217662 () Bool)

(assert (=> b!6217662 (= e!3785001 call!521629)))

(declare-fun bm!521624 () Bool)

(assert (=> bm!521624 (= call!521629 (validRegex!7889 (ite c!1123211 (regTwo!32819 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))) (regTwo!32818 (ite c!1123108 (regTwo!32819 r!7292) (regTwo!32818 r!7292))))))))

(assert (= (and d!1948968 (not res!2570080)) b!6217656))

(assert (= (and b!6217656 c!1123212) b!6217654))

(assert (= (and b!6217656 (not c!1123212)) b!6217655))

(assert (= (and b!6217654 res!2570079) b!6217658))

(assert (= (and b!6217655 c!1123211) b!6217660))

(assert (= (and b!6217655 (not c!1123211)) b!6217661))

(assert (= (and b!6217660 res!2570078) b!6217657))

(assert (= (and b!6217661 (not res!2570076)) b!6217659))

(assert (= (and b!6217659 res!2570077) b!6217662))

(assert (= (or b!6217657 b!6217662) bm!521624))

(assert (= (or b!6217660 b!6217659) bm!521622))

(assert (= (or b!6217658 bm!521622) bm!521623))

(declare-fun m!7046054 () Bool)

(assert (=> b!6217654 m!7046054))

(declare-fun m!7046056 () Bool)

(assert (=> bm!521623 m!7046056))

(declare-fun m!7046058 () Bool)

(assert (=> bm!521624 m!7046058))

(assert (=> bm!521543 d!1948968))

(assert (=> d!1948714 d!1948866))

(declare-fun bs!1542008 () Bool)

(declare-fun d!1948970 () Bool)

(assert (= bs!1542008 (and d!1948970 d!1948720)))

(declare-fun lambda!339789 () Int)

(assert (=> bs!1542008 (= lambda!339789 lambda!339734)))

(declare-fun bs!1542009 () Bool)

(assert (= bs!1542009 (and d!1948970 d!1948768)))

(assert (=> bs!1542009 (= lambda!339789 lambda!339751)))

(declare-fun bs!1542010 () Bool)

(assert (= bs!1542010 (and d!1948970 d!1948776)))

(assert (=> bs!1542010 (= lambda!339789 lambda!339756)))

(declare-fun bs!1542011 () Bool)

(assert (= bs!1542011 (and d!1948970 d!1948940)))

(assert (=> bs!1542011 (= lambda!339789 lambda!339784)))

(declare-fun bs!1542012 () Bool)

(assert (= bs!1542012 (and d!1948970 d!1948762)))

(assert (=> bs!1542012 (= lambda!339789 lambda!339748)))

(declare-fun bs!1542013 () Bool)

(assert (= bs!1542013 (and d!1948970 d!1948850)))

(assert (=> bs!1542013 (= lambda!339789 lambda!339771)))

(declare-fun bs!1542014 () Bool)

(assert (= bs!1542014 (and d!1948970 d!1948848)))

(assert (=> bs!1542014 (= lambda!339789 lambda!339770)))

(assert (=> d!1948970 (= (inv!83629 (h!71083 (t!378287 zl!343))) (forall!15267 (exprs!6037 (h!71083 (t!378287 zl!343))) lambda!339789))))

(declare-fun bs!1542015 () Bool)

(assert (= bs!1542015 d!1948970))

(declare-fun m!7046060 () Bool)

(assert (=> bs!1542015 m!7046060))

(assert (=> b!6217405 d!1948970))

(declare-fun d!1948972 () Bool)

(declare-fun c!1123213 () Bool)

(assert (=> d!1948972 (= c!1123213 (isEmpty!36642 (tail!11897 (t!378288 s!2326))))))

(declare-fun e!3785006 () Bool)

(assert (=> d!1948972 (= (matchZipper!2165 (derivationStepZipper!2118 ((_ map or) lt!2344416 lt!2344412) (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))) e!3785006)))

(declare-fun b!6217663 () Bool)

(assert (=> b!6217663 (= e!3785006 (nullableZipper!1926 (derivationStepZipper!2118 ((_ map or) lt!2344416 lt!2344412) (head!12812 (t!378288 s!2326)))))))

(declare-fun b!6217664 () Bool)

(assert (=> b!6217664 (= e!3785006 (matchZipper!2165 (derivationStepZipper!2118 (derivationStepZipper!2118 ((_ map or) lt!2344416 lt!2344412) (head!12812 (t!378288 s!2326))) (head!12812 (tail!11897 (t!378288 s!2326)))) (tail!11897 (tail!11897 (t!378288 s!2326)))))))

(assert (= (and d!1948972 c!1123213) b!6217663))

(assert (= (and d!1948972 (not c!1123213)) b!6217664))

(assert (=> d!1948972 m!7045414))

(assert (=> d!1948972 m!7045894))

(assert (=> b!6217663 m!7045564))

(declare-fun m!7046062 () Bool)

(assert (=> b!6217663 m!7046062))

(assert (=> b!6217664 m!7045414))

(assert (=> b!6217664 m!7045898))

(assert (=> b!6217664 m!7045564))

(assert (=> b!6217664 m!7045898))

(declare-fun m!7046064 () Bool)

(assert (=> b!6217664 m!7046064))

(assert (=> b!6217664 m!7045414))

(assert (=> b!6217664 m!7045902))

(assert (=> b!6217664 m!7046064))

(assert (=> b!6217664 m!7045902))

(declare-fun m!7046066 () Bool)

(assert (=> b!6217664 m!7046066))

(assert (=> b!6216990 d!1948972))

(declare-fun bs!1542016 () Bool)

(declare-fun d!1948974 () Bool)

(assert (= bs!1542016 (and d!1948974 b!6216622)))

(declare-fun lambda!339790 () Int)

(assert (=> bs!1542016 (= (= (head!12812 (t!378288 s!2326)) (h!71084 s!2326)) (= lambda!339790 lambda!339713))))

(declare-fun bs!1542017 () Bool)

(assert (= bs!1542017 (and d!1948974 d!1948898)))

(assert (=> bs!1542017 (= lambda!339790 lambda!339780)))

(declare-fun bs!1542018 () Bool)

(assert (= bs!1542018 (and d!1948974 d!1948958)))

(assert (=> bs!1542018 (= lambda!339790 lambda!339788)))

(assert (=> d!1948974 true))

(assert (=> d!1948974 (= (derivationStepZipper!2118 ((_ map or) lt!2344416 lt!2344412) (head!12812 (t!378288 s!2326))) (flatMap!1658 ((_ map or) lt!2344416 lt!2344412) lambda!339790))))

(declare-fun bs!1542019 () Bool)

(assert (= bs!1542019 d!1948974))

(declare-fun m!7046068 () Bool)

(assert (=> bs!1542019 m!7046068))

(assert (=> b!6216990 d!1948974))

(assert (=> b!6216990 d!1948900))

(assert (=> b!6216990 d!1948902))

(declare-fun d!1948976 () Bool)

(declare-fun res!2570081 () Bool)

(declare-fun e!3785007 () Bool)

(assert (=> d!1948976 (=> res!2570081 e!3785007)))

(assert (=> d!1948976 (= res!2570081 ((_ is Nil!64634) lt!2344475))))

(assert (=> d!1948976 (= (forall!15267 lt!2344475 lambda!339756) e!3785007)))

(declare-fun b!6217665 () Bool)

(declare-fun e!3785008 () Bool)

(assert (=> b!6217665 (= e!3785007 e!3785008)))

(declare-fun res!2570082 () Bool)

(assert (=> b!6217665 (=> (not res!2570082) (not e!3785008))))

(assert (=> b!6217665 (= res!2570082 (dynLambda!25500 lambda!339756 (h!71082 lt!2344475)))))

(declare-fun b!6217666 () Bool)

(assert (=> b!6217666 (= e!3785008 (forall!15267 (t!378286 lt!2344475) lambda!339756))))

(assert (= (and d!1948976 (not res!2570081)) b!6217665))

(assert (= (and b!6217665 res!2570082) b!6217666))

(declare-fun b_lambda!236367 () Bool)

(assert (=> (not b_lambda!236367) (not b!6217665)))

(declare-fun m!7046070 () Bool)

(assert (=> b!6217665 m!7046070))

(declare-fun m!7046072 () Bool)

(assert (=> b!6217666 m!7046072))

(assert (=> d!1948776 d!1948976))

(declare-fun d!1948978 () Bool)

(assert (=> d!1948978 (= (isEmptyLang!1572 lt!2344470) ((_ is EmptyLang!16153) lt!2344470))))

(assert (=> b!6217031 d!1948978))

(assert (=> b!6216964 d!1948884))

(assert (=> b!6216964 d!1948886))

(declare-fun b!6217667 () Bool)

(declare-fun e!3785010 () Bool)

(declare-fun e!3785012 () Bool)

(assert (=> b!6217667 (= e!3785010 e!3785012)))

(declare-fun res!2570090 () Bool)

(assert (=> b!6217667 (=> res!2570090 e!3785012)))

(declare-fun call!521630 () Bool)

(assert (=> b!6217667 (= res!2570090 call!521630)))

(declare-fun b!6217668 () Bool)

(declare-fun res!2570083 () Bool)

(declare-fun e!3785009 () Bool)

(assert (=> b!6217668 (=> res!2570083 e!3785009)))

(declare-fun e!3785011 () Bool)

(assert (=> b!6217668 (= res!2570083 e!3785011)))

(declare-fun res!2570089 () Bool)

(assert (=> b!6217668 (=> (not res!2570089) (not e!3785011))))

(declare-fun lt!2344516 () Bool)

(assert (=> b!6217668 (= res!2570089 lt!2344516)))

(declare-fun b!6217669 () Bool)

(declare-fun res!2570088 () Bool)

(assert (=> b!6217669 (=> res!2570088 e!3785012)))

(assert (=> b!6217669 (= res!2570088 (not (isEmpty!36642 (tail!11897 s!2326))))))

(declare-fun b!6217670 () Bool)

(assert (=> b!6217670 (= e!3785012 (not (= (head!12812 s!2326) (c!1122921 (regTwo!32818 r!7292)))))))

(declare-fun bm!521625 () Bool)

(assert (=> bm!521625 (= call!521630 (isEmpty!36642 s!2326))))

(declare-fun b!6217671 () Bool)

(declare-fun res!2570084 () Bool)

(assert (=> b!6217671 (=> res!2570084 e!3785009)))

(assert (=> b!6217671 (= res!2570084 (not ((_ is ElementMatch!16153) (regTwo!32818 r!7292))))))

(declare-fun e!3785013 () Bool)

(assert (=> b!6217671 (= e!3785013 e!3785009)))

(declare-fun b!6217672 () Bool)

(declare-fun e!3785014 () Bool)

(assert (=> b!6217672 (= e!3785014 (nullable!6146 (regTwo!32818 r!7292)))))

(declare-fun b!6217673 () Bool)

(declare-fun e!3785015 () Bool)

(assert (=> b!6217673 (= e!3785015 (= lt!2344516 call!521630))))

(declare-fun d!1948980 () Bool)

(assert (=> d!1948980 e!3785015))

(declare-fun c!1123215 () Bool)

(assert (=> d!1948980 (= c!1123215 ((_ is EmptyExpr!16153) (regTwo!32818 r!7292)))))

(assert (=> d!1948980 (= lt!2344516 e!3785014)))

(declare-fun c!1123216 () Bool)

(assert (=> d!1948980 (= c!1123216 (isEmpty!36642 s!2326))))

(assert (=> d!1948980 (validRegex!7889 (regTwo!32818 r!7292))))

(assert (=> d!1948980 (= (matchR!8336 (regTwo!32818 r!7292) s!2326) lt!2344516)))

(declare-fun b!6217674 () Bool)

(assert (=> b!6217674 (= e!3785009 e!3785010)))

(declare-fun res!2570086 () Bool)

(assert (=> b!6217674 (=> (not res!2570086) (not e!3785010))))

(assert (=> b!6217674 (= res!2570086 (not lt!2344516))))

(declare-fun b!6217675 () Bool)

(assert (=> b!6217675 (= e!3785014 (matchR!8336 (derivativeStep!4866 (regTwo!32818 r!7292) (head!12812 s!2326)) (tail!11897 s!2326)))))

(declare-fun b!6217676 () Bool)

(assert (=> b!6217676 (= e!3785013 (not lt!2344516))))

(declare-fun b!6217677 () Bool)

(assert (=> b!6217677 (= e!3785011 (= (head!12812 s!2326) (c!1122921 (regTwo!32818 r!7292))))))

(declare-fun b!6217678 () Bool)

(assert (=> b!6217678 (= e!3785015 e!3785013)))

(declare-fun c!1123214 () Bool)

(assert (=> b!6217678 (= c!1123214 ((_ is EmptyLang!16153) (regTwo!32818 r!7292)))))

(declare-fun b!6217679 () Bool)

(declare-fun res!2570087 () Bool)

(assert (=> b!6217679 (=> (not res!2570087) (not e!3785011))))

(assert (=> b!6217679 (= res!2570087 (not call!521630))))

(declare-fun b!6217680 () Bool)

(declare-fun res!2570085 () Bool)

(assert (=> b!6217680 (=> (not res!2570085) (not e!3785011))))

(assert (=> b!6217680 (= res!2570085 (isEmpty!36642 (tail!11897 s!2326)))))

(assert (= (and d!1948980 c!1123216) b!6217672))

(assert (= (and d!1948980 (not c!1123216)) b!6217675))

(assert (= (and d!1948980 c!1123215) b!6217673))

(assert (= (and d!1948980 (not c!1123215)) b!6217678))

(assert (= (and b!6217678 c!1123214) b!6217676))

(assert (= (and b!6217678 (not c!1123214)) b!6217671))

(assert (= (and b!6217671 (not res!2570084)) b!6217668))

(assert (= (and b!6217668 res!2570089) b!6217679))

(assert (= (and b!6217679 res!2570087) b!6217680))

(assert (= (and b!6217680 res!2570085) b!6217677))

(assert (= (and b!6217668 (not res!2570083)) b!6217674))

(assert (= (and b!6217674 res!2570086) b!6217667))

(assert (= (and b!6217667 (not res!2570090)) b!6217669))

(assert (= (and b!6217669 (not res!2570088)) b!6217670))

(assert (= (or b!6217673 b!6217667 b!6217679) bm!521625))

(assert (=> b!6217669 m!7045498))

(assert (=> b!6217669 m!7045498))

(assert (=> b!6217669 m!7045500))

(assert (=> d!1948980 m!7045476))

(declare-fun m!7046074 () Bool)

(assert (=> d!1948980 m!7046074))

(assert (=> b!6217680 m!7045498))

(assert (=> b!6217680 m!7045498))

(assert (=> b!6217680 m!7045500))

(declare-fun m!7046076 () Bool)

(assert (=> b!6217672 m!7046076))

(assert (=> bm!521625 m!7045476))

(assert (=> b!6217677 m!7045504))

(assert (=> b!6217670 m!7045504))

(assert (=> b!6217675 m!7045504))

(assert (=> b!6217675 m!7045504))

(declare-fun m!7046078 () Bool)

(assert (=> b!6217675 m!7046078))

(assert (=> b!6217675 m!7045498))

(assert (=> b!6217675 m!7046078))

(assert (=> b!6217675 m!7045498))

(declare-fun m!7046080 () Bool)

(assert (=> b!6217675 m!7046080))

(assert (=> b!6217260 d!1948980))

(declare-fun d!1948982 () Bool)

(assert (=> d!1948982 (= (isEmpty!36642 s!2326) ((_ is Nil!64636) s!2326))))

(assert (=> d!1948738 d!1948982))

(assert (=> d!1948738 d!1948842))

(declare-fun d!1948984 () Bool)

(assert (=> d!1948984 (= (nullable!6146 (h!71082 (exprs!6037 lt!2344415))) (nullableFct!2101 (h!71082 (exprs!6037 lt!2344415))))))

(declare-fun bs!1542020 () Bool)

(assert (= bs!1542020 d!1948984))

(declare-fun m!7046082 () Bool)

(assert (=> bs!1542020 m!7046082))

(assert (=> b!6217080 d!1948984))

(declare-fun b!6217681 () Bool)

(declare-fun e!3785016 () Bool)

(declare-fun e!3785020 () Bool)

(assert (=> b!6217681 (= e!3785016 e!3785020)))

(declare-fun res!2570094 () Bool)

(assert (=> b!6217681 (= res!2570094 (not (nullable!6146 (reg!16482 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))))))))

(assert (=> b!6217681 (=> (not res!2570094) (not e!3785020))))

(declare-fun bm!521626 () Bool)

(declare-fun call!521631 () Bool)

(declare-fun call!521632 () Bool)

(assert (=> bm!521626 (= call!521631 call!521632)))

(declare-fun b!6217682 () Bool)

(declare-fun e!3785021 () Bool)

(assert (=> b!6217682 (= e!3785016 e!3785021)))

(declare-fun c!1123217 () Bool)

(assert (=> b!6217682 (= c!1123217 ((_ is Union!16153) (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))))))

(declare-fun b!6217683 () Bool)

(declare-fun e!3785019 () Bool)

(assert (=> b!6217683 (= e!3785019 e!3785016)))

(declare-fun c!1123218 () Bool)

(assert (=> b!6217683 (= c!1123218 ((_ is Star!16153) (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))))))

(declare-fun b!6217684 () Bool)

(declare-fun e!3785017 () Bool)

(declare-fun call!521633 () Bool)

(assert (=> b!6217684 (= e!3785017 call!521633)))

(declare-fun b!6217685 () Bool)

(assert (=> b!6217685 (= e!3785020 call!521632)))

(declare-fun d!1948986 () Bool)

(declare-fun res!2570095 () Bool)

(assert (=> d!1948986 (=> res!2570095 e!3785019)))

(assert (=> d!1948986 (= res!2570095 ((_ is ElementMatch!16153) (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))))))

(assert (=> d!1948986 (= (validRegex!7889 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))) e!3785019)))

(declare-fun b!6217686 () Bool)

(declare-fun e!3785022 () Bool)

(declare-fun e!3785018 () Bool)

(assert (=> b!6217686 (= e!3785022 e!3785018)))

(declare-fun res!2570092 () Bool)

(assert (=> b!6217686 (=> (not res!2570092) (not e!3785018))))

(assert (=> b!6217686 (= res!2570092 call!521631)))

(declare-fun bm!521627 () Bool)

(assert (=> bm!521627 (= call!521632 (validRegex!7889 (ite c!1123218 (reg!16482 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))) (ite c!1123217 (regOne!32819 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))) (regOne!32818 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292))))))))))

(declare-fun b!6217687 () Bool)

(declare-fun res!2570093 () Bool)

(assert (=> b!6217687 (=> (not res!2570093) (not e!3785017))))

(assert (=> b!6217687 (= res!2570093 call!521631)))

(assert (=> b!6217687 (= e!3785021 e!3785017)))

(declare-fun b!6217688 () Bool)

(declare-fun res!2570091 () Bool)

(assert (=> b!6217688 (=> res!2570091 e!3785022)))

(assert (=> b!6217688 (= res!2570091 (not ((_ is Concat!24998) (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292))))))))

(assert (=> b!6217688 (= e!3785021 e!3785022)))

(declare-fun b!6217689 () Bool)

(assert (=> b!6217689 (= e!3785018 call!521633)))

(declare-fun bm!521628 () Bool)

(assert (=> bm!521628 (= call!521633 (validRegex!7889 (ite c!1123217 (regTwo!32819 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))) (regTwo!32818 (ite c!1123109 (reg!16482 r!7292) (ite c!1123108 (regOne!32819 r!7292) (regOne!32818 r!7292)))))))))

(assert (= (and d!1948986 (not res!2570095)) b!6217683))

(assert (= (and b!6217683 c!1123218) b!6217681))

(assert (= (and b!6217683 (not c!1123218)) b!6217682))

(assert (= (and b!6217681 res!2570094) b!6217685))

(assert (= (and b!6217682 c!1123217) b!6217687))

(assert (= (and b!6217682 (not c!1123217)) b!6217688))

(assert (= (and b!6217687 res!2570093) b!6217684))

(assert (= (and b!6217688 (not res!2570091)) b!6217686))

(assert (= (and b!6217686 res!2570092) b!6217689))

(assert (= (or b!6217684 b!6217689) bm!521628))

(assert (= (or b!6217687 b!6217686) bm!521626))

(assert (= (or b!6217685 bm!521626) bm!521627))

(declare-fun m!7046084 () Bool)

(assert (=> b!6217681 m!7046084))

(declare-fun m!7046086 () Bool)

(assert (=> bm!521627 m!7046086))

(declare-fun m!7046088 () Bool)

(assert (=> bm!521628 m!7046088))

(assert (=> bm!521542 d!1948986))

(declare-fun b!6217690 () Bool)

(declare-fun e!3785023 () (InoxSet Context!11074))

(declare-fun call!521634 () (InoxSet Context!11074))

(assert (=> b!6217690 (= e!3785023 call!521634)))

(declare-fun e!3785025 () (InoxSet Context!11074))

(declare-fun b!6217691 () Bool)

(assert (=> b!6217691 (= e!3785025 ((_ map or) call!521634 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344414)))))) (h!71084 s!2326))))))

(declare-fun b!6217692 () Bool)

(declare-fun e!3785024 () Bool)

(assert (=> b!6217692 (= e!3785024 (nullable!6146 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344414)))))))))

(declare-fun b!6217693 () Bool)

(assert (=> b!6217693 (= e!3785023 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217694 () Bool)

(assert (=> b!6217694 (= e!3785025 e!3785023)))

(declare-fun c!1123219 () Bool)

(assert (=> b!6217694 (= c!1123219 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344414))))))))

(declare-fun bm!521629 () Bool)

(assert (=> bm!521629 (= call!521634 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344414))))) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344414)))))) (h!71084 s!2326)))))

(declare-fun d!1948988 () Bool)

(declare-fun c!1123220 () Bool)

(assert (=> d!1948988 (= c!1123220 e!3785024)))

(declare-fun res!2570096 () Bool)

(assert (=> d!1948988 (=> (not res!2570096) (not e!3785024))))

(assert (=> d!1948988 (= res!2570096 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344414))))))))

(assert (=> d!1948988 (= (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 lt!2344414))) (h!71084 s!2326)) e!3785025)))

(assert (= (and d!1948988 res!2570096) b!6217692))

(assert (= (and d!1948988 c!1123220) b!6217691))

(assert (= (and d!1948988 (not c!1123220)) b!6217694))

(assert (= (and b!6217694 c!1123219) b!6217690))

(assert (= (and b!6217694 (not c!1123219)) b!6217693))

(assert (= (or b!6217691 b!6217690) bm!521629))

(declare-fun m!7046090 () Bool)

(assert (=> b!6217691 m!7046090))

(declare-fun m!7046092 () Bool)

(assert (=> b!6217692 m!7046092))

(declare-fun m!7046094 () Bool)

(assert (=> bm!521629 m!7046094))

(assert (=> b!6216770 d!1948988))

(declare-fun d!1948990 () Bool)

(declare-fun c!1123221 () Bool)

(assert (=> d!1948990 (= c!1123221 (isEmpty!36642 (tail!11897 (t!378288 s!2326))))))

(declare-fun e!3785026 () Bool)

(assert (=> d!1948990 (= (matchZipper!2165 (derivationStepZipper!2118 lt!2344396 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))) e!3785026)))

(declare-fun b!6217695 () Bool)

(assert (=> b!6217695 (= e!3785026 (nullableZipper!1926 (derivationStepZipper!2118 lt!2344396 (head!12812 (t!378288 s!2326)))))))

(declare-fun b!6217696 () Bool)

(assert (=> b!6217696 (= e!3785026 (matchZipper!2165 (derivationStepZipper!2118 (derivationStepZipper!2118 lt!2344396 (head!12812 (t!378288 s!2326))) (head!12812 (tail!11897 (t!378288 s!2326)))) (tail!11897 (tail!11897 (t!378288 s!2326)))))))

(assert (= (and d!1948990 c!1123221) b!6217695))

(assert (= (and d!1948990 (not c!1123221)) b!6217696))

(assert (=> d!1948990 m!7045414))

(assert (=> d!1948990 m!7045894))

(assert (=> b!6217695 m!7045550))

(declare-fun m!7046096 () Bool)

(assert (=> b!6217695 m!7046096))

(assert (=> b!6217696 m!7045414))

(assert (=> b!6217696 m!7045898))

(assert (=> b!6217696 m!7045550))

(assert (=> b!6217696 m!7045898))

(declare-fun m!7046098 () Bool)

(assert (=> b!6217696 m!7046098))

(assert (=> b!6217696 m!7045414))

(assert (=> b!6217696 m!7045902))

(assert (=> b!6217696 m!7046098))

(assert (=> b!6217696 m!7045902))

(declare-fun m!7046100 () Bool)

(assert (=> b!6217696 m!7046100))

(assert (=> b!6216987 d!1948990))

(declare-fun bs!1542021 () Bool)

(declare-fun d!1948992 () Bool)

(assert (= bs!1542021 (and d!1948992 b!6216622)))

(declare-fun lambda!339791 () Int)

(assert (=> bs!1542021 (= (= (head!12812 (t!378288 s!2326)) (h!71084 s!2326)) (= lambda!339791 lambda!339713))))

(declare-fun bs!1542022 () Bool)

(assert (= bs!1542022 (and d!1948992 d!1948898)))

(assert (=> bs!1542022 (= lambda!339791 lambda!339780)))

(declare-fun bs!1542023 () Bool)

(assert (= bs!1542023 (and d!1948992 d!1948958)))

(assert (=> bs!1542023 (= lambda!339791 lambda!339788)))

(declare-fun bs!1542024 () Bool)

(assert (= bs!1542024 (and d!1948992 d!1948974)))

(assert (=> bs!1542024 (= lambda!339791 lambda!339790)))

(assert (=> d!1948992 true))

(assert (=> d!1948992 (= (derivationStepZipper!2118 lt!2344396 (head!12812 (t!378288 s!2326))) (flatMap!1658 lt!2344396 lambda!339791))))

(declare-fun bs!1542025 () Bool)

(assert (= bs!1542025 d!1948992))

(declare-fun m!7046102 () Bool)

(assert (=> bs!1542025 m!7046102))

(assert (=> b!6216987 d!1948992))

(assert (=> b!6216987 d!1948900))

(assert (=> b!6216987 d!1948902))

(assert (=> b!6217075 d!1948778))

(declare-fun d!1948994 () Bool)

(assert (=> d!1948994 true))

(declare-fun setRes!42220 () Bool)

(assert (=> d!1948994 setRes!42220))

(declare-fun condSetEmpty!42220 () Bool)

(declare-fun res!2570097 () (InoxSet Context!11074))

(assert (=> d!1948994 (= condSetEmpty!42220 (= res!2570097 ((as const (Array Context!11074 Bool)) false)))))

(assert (=> d!1948994 (= (choose!46193 lt!2344404 lambda!339713) res!2570097)))

(declare-fun setIsEmpty!42220 () Bool)

(assert (=> setIsEmpty!42220 setRes!42220))

(declare-fun tp!1734566 () Bool)

(declare-fun e!3785027 () Bool)

(declare-fun setNonEmpty!42220 () Bool)

(declare-fun setElem!42220 () Context!11074)

(assert (=> setNonEmpty!42220 (= setRes!42220 (and tp!1734566 (inv!83629 setElem!42220) e!3785027))))

(declare-fun setRest!42220 () (InoxSet Context!11074))

(assert (=> setNonEmpty!42220 (= res!2570097 ((_ map or) (store ((as const (Array Context!11074 Bool)) false) setElem!42220 true) setRest!42220))))

(declare-fun b!6217697 () Bool)

(declare-fun tp!1734565 () Bool)

(assert (=> b!6217697 (= e!3785027 tp!1734565)))

(assert (= (and d!1948994 condSetEmpty!42220) setIsEmpty!42220))

(assert (= (and d!1948994 (not condSetEmpty!42220)) setNonEmpty!42220))

(assert (= setNonEmpty!42220 b!6217697))

(declare-fun m!7046104 () Bool)

(assert (=> setNonEmpty!42220 m!7046104))

(assert (=> d!1948722 d!1948994))

(declare-fun d!1948996 () Bool)

(assert (=> d!1948996 (= (isEmpty!36638 (tail!11900 (unfocusZipperList!1574 zl!343))) ((_ is Nil!64634) (tail!11900 (unfocusZipperList!1574 zl!343))))))

(assert (=> b!6217029 d!1948996))

(declare-fun d!1948998 () Bool)

(assert (=> d!1948998 (= (tail!11900 (unfocusZipperList!1574 zl!343)) (t!378286 (unfocusZipperList!1574 zl!343)))))

(assert (=> b!6217029 d!1948998))

(assert (=> b!6217258 d!1948910))

(declare-fun d!1949000 () Bool)

(assert (=> d!1949000 (= (nullable!6146 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))) (nullableFct!2101 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292)))))))

(declare-fun bs!1542026 () Bool)

(assert (= bs!1542026 d!1949000))

(declare-fun m!7046106 () Bool)

(assert (=> bs!1542026 m!7046106))

(assert (=> b!6217306 d!1949000))

(declare-fun d!1949002 () Bool)

(assert (=> d!1949002 true))

(assert (=> d!1949002 true))

(declare-fun res!2570100 () Bool)

(assert (=> d!1949002 (= (choose!46199 lambda!339711) res!2570100)))

(assert (=> d!1948834 d!1949002))

(declare-fun d!1949004 () Bool)

(assert (=> d!1949004 (= (isEmpty!36638 (t!378286 (unfocusZipperList!1574 zl!343))) ((_ is Nil!64634) (t!378286 (unfocusZipperList!1574 zl!343))))))

(assert (=> b!6217025 d!1949004))

(declare-fun d!1949006 () Bool)

(declare-fun e!3785028 () Bool)

(assert (=> d!1949006 e!3785028))

(declare-fun res!2570102 () Bool)

(assert (=> d!1949006 (=> (not res!2570102) (not e!3785028))))

(declare-fun lt!2344517 () List!64760)

(assert (=> d!1949006 (= res!2570102 (= (content!12101 lt!2344517) ((_ map or) (content!12101 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636))) (content!12101 (t!378288 s!2326)))))))

(declare-fun e!3785029 () List!64760)

(assert (=> d!1949006 (= lt!2344517 e!3785029)))

(declare-fun c!1123222 () Bool)

(assert (=> d!1949006 (= c!1123222 ((_ is Nil!64636) (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636))))))

(assert (=> d!1949006 (= (++!14231 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (t!378288 s!2326)) lt!2344517)))

(declare-fun b!6217699 () Bool)

(assert (=> b!6217699 (= e!3785029 (Cons!64636 (h!71084 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636))) (++!14231 (t!378288 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636))) (t!378288 s!2326))))))

(declare-fun b!6217698 () Bool)

(assert (=> b!6217698 (= e!3785029 (t!378288 s!2326))))

(declare-fun b!6217701 () Bool)

(assert (=> b!6217701 (= e!3785028 (or (not (= (t!378288 s!2326) Nil!64636)) (= lt!2344517 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)))))))

(declare-fun b!6217700 () Bool)

(declare-fun res!2570101 () Bool)

(assert (=> b!6217700 (=> (not res!2570101) (not e!3785028))))

(assert (=> b!6217700 (= res!2570101 (= (size!40279 lt!2344517) (+ (size!40279 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636))) (size!40279 (t!378288 s!2326)))))))

(assert (= (and d!1949006 c!1123222) b!6217698))

(assert (= (and d!1949006 (not c!1123222)) b!6217699))

(assert (= (and d!1949006 res!2570102) b!6217700))

(assert (= (and b!6217700 res!2570101) b!6217701))

(declare-fun m!7046108 () Bool)

(assert (=> d!1949006 m!7046108))

(assert (=> d!1949006 m!7045764))

(declare-fun m!7046110 () Bool)

(assert (=> d!1949006 m!7046110))

(declare-fun m!7046112 () Bool)

(assert (=> d!1949006 m!7046112))

(declare-fun m!7046114 () Bool)

(assert (=> b!6217699 m!7046114))

(declare-fun m!7046116 () Bool)

(assert (=> b!6217700 m!7046116))

(assert (=> b!6217700 m!7045764))

(declare-fun m!7046118 () Bool)

(assert (=> b!6217700 m!7046118))

(declare-fun m!7046120 () Bool)

(assert (=> b!6217700 m!7046120))

(assert (=> b!6217254 d!1949006))

(declare-fun d!1949008 () Bool)

(declare-fun e!3785030 () Bool)

(assert (=> d!1949008 e!3785030))

(declare-fun res!2570104 () Bool)

(assert (=> d!1949008 (=> (not res!2570104) (not e!3785030))))

(declare-fun lt!2344518 () List!64760)

(assert (=> d!1949008 (= res!2570104 (= (content!12101 lt!2344518) ((_ map or) (content!12101 Nil!64636) (content!12101 (Cons!64636 (h!71084 s!2326) Nil!64636)))))))

(declare-fun e!3785031 () List!64760)

(assert (=> d!1949008 (= lt!2344518 e!3785031)))

(declare-fun c!1123223 () Bool)

(assert (=> d!1949008 (= c!1123223 ((_ is Nil!64636) Nil!64636))))

(assert (=> d!1949008 (= (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) lt!2344518)))

(declare-fun b!6217703 () Bool)

(assert (=> b!6217703 (= e!3785031 (Cons!64636 (h!71084 Nil!64636) (++!14231 (t!378288 Nil!64636) (Cons!64636 (h!71084 s!2326) Nil!64636))))))

(declare-fun b!6217702 () Bool)

(assert (=> b!6217702 (= e!3785031 (Cons!64636 (h!71084 s!2326) Nil!64636))))

(declare-fun b!6217705 () Bool)

(assert (=> b!6217705 (= e!3785030 (or (not (= (Cons!64636 (h!71084 s!2326) Nil!64636) Nil!64636)) (= lt!2344518 Nil!64636)))))

(declare-fun b!6217704 () Bool)

(declare-fun res!2570103 () Bool)

(assert (=> b!6217704 (=> (not res!2570103) (not e!3785030))))

(assert (=> b!6217704 (= res!2570103 (= (size!40279 lt!2344518) (+ (size!40279 Nil!64636) (size!40279 (Cons!64636 (h!71084 s!2326) Nil!64636)))))))

(assert (= (and d!1949008 c!1123223) b!6217702))

(assert (= (and d!1949008 (not c!1123223)) b!6217703))

(assert (= (and d!1949008 res!2570104) b!6217704))

(assert (= (and b!6217704 res!2570103) b!6217705))

(declare-fun m!7046122 () Bool)

(assert (=> d!1949008 m!7046122))

(declare-fun m!7046124 () Bool)

(assert (=> d!1949008 m!7046124))

(declare-fun m!7046126 () Bool)

(assert (=> d!1949008 m!7046126))

(declare-fun m!7046128 () Bool)

(assert (=> b!6217703 m!7046128))

(declare-fun m!7046130 () Bool)

(assert (=> b!6217704 m!7046130))

(declare-fun m!7046132 () Bool)

(assert (=> b!6217704 m!7046132))

(declare-fun m!7046134 () Bool)

(assert (=> b!6217704 m!7046134))

(assert (=> b!6217254 d!1949008))

(declare-fun d!1949010 () Bool)

(assert (=> d!1949010 (= (++!14231 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (t!378288 s!2326)) s!2326)))

(declare-fun lt!2344521 () Unit!157943)

(declare-fun choose!46203 (List!64760 C!32576 List!64760 List!64760) Unit!157943)

(assert (=> d!1949010 (= lt!2344521 (choose!46203 Nil!64636 (h!71084 s!2326) (t!378288 s!2326) s!2326))))

(assert (=> d!1949010 (= (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) (t!378288 s!2326))) s!2326)))

(assert (=> d!1949010 (= (lemmaMoveElementToOtherListKeepsConcatEq!2326 Nil!64636 (h!71084 s!2326) (t!378288 s!2326) s!2326) lt!2344521)))

(declare-fun bs!1542027 () Bool)

(assert (= bs!1542027 d!1949010))

(assert (=> bs!1542027 m!7045764))

(assert (=> bs!1542027 m!7045764))

(assert (=> bs!1542027 m!7045766))

(declare-fun m!7046136 () Bool)

(assert (=> bs!1542027 m!7046136))

(declare-fun m!7046138 () Bool)

(assert (=> bs!1542027 m!7046138))

(assert (=> b!6217254 d!1949010))

(declare-fun b!6217706 () Bool)

(declare-fun res!2570109 () Bool)

(declare-fun e!3785036 () Bool)

(assert (=> b!6217706 (=> (not res!2570109) (not e!3785036))))

(declare-fun lt!2344524 () Option!16044)

(assert (=> b!6217706 (= res!2570109 (matchR!8336 (regOne!32818 r!7292) (_1!36435 (get!22323 lt!2344524))))))

(declare-fun b!6217707 () Bool)

(declare-fun lt!2344522 () Unit!157943)

(declare-fun lt!2344523 () Unit!157943)

(assert (=> b!6217707 (= lt!2344522 lt!2344523)))

(assert (=> b!6217707 (= (++!14231 (++!14231 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (Cons!64636 (h!71084 (t!378288 s!2326)) Nil!64636)) (t!378288 (t!378288 s!2326))) s!2326)))

(assert (=> b!6217707 (= lt!2344523 (lemmaMoveElementToOtherListKeepsConcatEq!2326 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (h!71084 (t!378288 s!2326)) (t!378288 (t!378288 s!2326)) s!2326))))

(declare-fun e!3785035 () Option!16044)

(assert (=> b!6217707 (= e!3785035 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) (++!14231 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (Cons!64636 (h!71084 (t!378288 s!2326)) Nil!64636)) (t!378288 (t!378288 s!2326)) s!2326))))

(declare-fun b!6217708 () Bool)

(declare-fun e!3785034 () Option!16044)

(assert (=> b!6217708 (= e!3785034 (Some!16043 (tuple2!66265 (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (t!378288 s!2326))))))

(declare-fun b!6217709 () Bool)

(assert (=> b!6217709 (= e!3785036 (= (++!14231 (_1!36435 (get!22323 lt!2344524)) (_2!36435 (get!22323 lt!2344524))) s!2326))))

(declare-fun d!1949012 () Bool)

(declare-fun e!3785033 () Bool)

(assert (=> d!1949012 e!3785033))

(declare-fun res!2570106 () Bool)

(assert (=> d!1949012 (=> res!2570106 e!3785033)))

(assert (=> d!1949012 (= res!2570106 e!3785036)))

(declare-fun res!2570108 () Bool)

(assert (=> d!1949012 (=> (not res!2570108) (not e!3785036))))

(assert (=> d!1949012 (= res!2570108 (isDefined!12747 lt!2344524))))

(assert (=> d!1949012 (= lt!2344524 e!3785034)))

(declare-fun c!1123225 () Bool)

(declare-fun e!3785032 () Bool)

(assert (=> d!1949012 (= c!1123225 e!3785032)))

(declare-fun res!2570105 () Bool)

(assert (=> d!1949012 (=> (not res!2570105) (not e!3785032))))

(assert (=> d!1949012 (= res!2570105 (matchR!8336 (regOne!32818 r!7292) (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636))))))

(assert (=> d!1949012 (validRegex!7889 (regOne!32818 r!7292))))

(assert (=> d!1949012 (= (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) (++!14231 Nil!64636 (Cons!64636 (h!71084 s!2326) Nil!64636)) (t!378288 s!2326) s!2326) lt!2344524)))

(declare-fun b!6217710 () Bool)

(assert (=> b!6217710 (= e!3785035 None!16043)))

(declare-fun b!6217711 () Bool)

(assert (=> b!6217711 (= e!3785033 (not (isDefined!12747 lt!2344524)))))

(declare-fun b!6217712 () Bool)

(declare-fun res!2570107 () Bool)

(assert (=> b!6217712 (=> (not res!2570107) (not e!3785036))))

(assert (=> b!6217712 (= res!2570107 (matchR!8336 (regTwo!32818 r!7292) (_2!36435 (get!22323 lt!2344524))))))

(declare-fun b!6217713 () Bool)

(assert (=> b!6217713 (= e!3785032 (matchR!8336 (regTwo!32818 r!7292) (t!378288 s!2326)))))

(declare-fun b!6217714 () Bool)

(assert (=> b!6217714 (= e!3785034 e!3785035)))

(declare-fun c!1123224 () Bool)

(assert (=> b!6217714 (= c!1123224 ((_ is Nil!64636) (t!378288 s!2326)))))

(assert (= (and d!1949012 res!2570105) b!6217713))

(assert (= (and d!1949012 c!1123225) b!6217708))

(assert (= (and d!1949012 (not c!1123225)) b!6217714))

(assert (= (and b!6217714 c!1123224) b!6217710))

(assert (= (and b!6217714 (not c!1123224)) b!6217707))

(assert (= (and d!1949012 res!2570108) b!6217706))

(assert (= (and b!6217706 res!2570109) b!6217712))

(assert (= (and b!6217712 res!2570107) b!6217709))

(assert (= (and d!1949012 (not res!2570106)) b!6217711))

(declare-fun m!7046140 () Bool)

(assert (=> d!1949012 m!7046140))

(assert (=> d!1949012 m!7045764))

(declare-fun m!7046142 () Bool)

(assert (=> d!1949012 m!7046142))

(assert (=> d!1949012 m!7045752))

(assert (=> b!6217711 m!7046140))

(declare-fun m!7046144 () Bool)

(assert (=> b!6217713 m!7046144))

(declare-fun m!7046146 () Bool)

(assert (=> b!6217712 m!7046146))

(declare-fun m!7046148 () Bool)

(assert (=> b!6217712 m!7046148))

(assert (=> b!6217709 m!7046146))

(declare-fun m!7046150 () Bool)

(assert (=> b!6217709 m!7046150))

(assert (=> b!6217706 m!7046146))

(declare-fun m!7046152 () Bool)

(assert (=> b!6217706 m!7046152))

(assert (=> b!6217707 m!7045764))

(declare-fun m!7046154 () Bool)

(assert (=> b!6217707 m!7046154))

(assert (=> b!6217707 m!7046154))

(declare-fun m!7046156 () Bool)

(assert (=> b!6217707 m!7046156))

(assert (=> b!6217707 m!7045764))

(declare-fun m!7046158 () Bool)

(assert (=> b!6217707 m!7046158))

(assert (=> b!6217707 m!7046154))

(declare-fun m!7046160 () Bool)

(assert (=> b!6217707 m!7046160))

(assert (=> b!6217254 d!1949012))

(declare-fun d!1949014 () Bool)

(assert (=> d!1949014 (= ($colon$colon!2022 (exprs!6037 lt!2344415) (ite (or c!1123113 c!1123111) (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (regTwo!32818 (regOne!32818 r!7292)))) (Cons!64634 (ite (or c!1123113 c!1123111) (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (regTwo!32818 (regOne!32818 r!7292))) (exprs!6037 lt!2344415)))))

(assert (=> bm!521546 d!1949014))

(declare-fun b!6217715 () Bool)

(declare-fun e!3785037 () (InoxSet Context!11074))

(declare-fun call!521635 () (InoxSet Context!11074))

(assert (=> b!6217715 (= e!3785037 call!521635)))

(declare-fun b!6217716 () Bool)

(declare-fun e!3785039 () (InoxSet Context!11074))

(assert (=> b!6217716 (= e!3785039 ((_ map or) call!521635 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))) (h!71084 s!2326))))))

(declare-fun b!6217717 () Bool)

(declare-fun e!3785038 () Bool)

(assert (=> b!6217717 (= e!3785038 (nullable!6146 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))))))

(declare-fun b!6217718 () Bool)

(assert (=> b!6217718 (= e!3785037 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217719 () Bool)

(assert (=> b!6217719 (= e!3785039 e!3785037)))

(declare-fun c!1123226 () Bool)

(assert (=> b!6217719 (= c!1123226 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))))

(declare-fun bm!521630 () Bool)

(assert (=> bm!521630 (= call!521635 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))) (h!71084 s!2326)))))

(declare-fun d!1949016 () Bool)

(declare-fun c!1123227 () Bool)

(assert (=> d!1949016 (= c!1123227 e!3785038)))

(declare-fun res!2570110 () Bool)

(assert (=> d!1949016 (=> (not res!2570110) (not e!3785038))))

(assert (=> d!1949016 (= res!2570110 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))))

(assert (=> d!1949016 (= (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (h!71084 s!2326)) e!3785039)))

(assert (= (and d!1949016 res!2570110) b!6217717))

(assert (= (and d!1949016 c!1123227) b!6217716))

(assert (= (and d!1949016 (not c!1123227)) b!6217719))

(assert (= (and b!6217719 c!1123226) b!6217715))

(assert (= (and b!6217719 (not c!1123226)) b!6217718))

(assert (= (or b!6217716 b!6217715) bm!521630))

(declare-fun m!7046162 () Bool)

(assert (=> b!6217716 m!7046162))

(declare-fun m!7046164 () Bool)

(assert (=> b!6217717 m!7046164))

(declare-fun m!7046166 () Bool)

(assert (=> bm!521630 m!7046166))

(assert (=> b!6217059 d!1949016))

(declare-fun bs!1542028 () Bool)

(declare-fun b!6217726 () Bool)

(assert (= bs!1542028 (and b!6217726 d!1948874)))

(declare-fun lambda!339792 () Int)

(assert (=> bs!1542028 (not (= lambda!339792 lambda!339776))))

(declare-fun bs!1542029 () Bool)

(assert (= bs!1542029 (and b!6217726 d!1948838)))

(assert (=> bs!1542029 (not (= lambda!339792 lambda!339767))))

(declare-fun bs!1542030 () Bool)

(assert (= bs!1542030 (and b!6217726 b!6217626)))

(assert (=> bs!1542030 (= (and (= (reg!16482 (regTwo!32819 r!7292)) (reg!16482 (regOne!32819 r!7292))) (= (regTwo!32819 r!7292) (regOne!32819 r!7292))) (= lambda!339792 lambda!339785))))

(assert (=> bs!1542029 (not (= lambda!339792 lambda!339766))))

(declare-fun bs!1542031 () Bool)

(assert (= bs!1542031 (and b!6217726 b!6216632)))

(assert (=> bs!1542031 (not (= lambda!339792 lambda!339711))))

(declare-fun bs!1542032 () Bool)

(assert (= bs!1542032 (and b!6217726 b!6216876)))

(assert (=> bs!1542032 (= (and (= (reg!16482 (regTwo!32819 r!7292)) (reg!16482 r!7292)) (= (regTwo!32819 r!7292) r!7292)) (= lambda!339792 lambda!339740))))

(declare-fun bs!1542033 () Bool)

(assert (= bs!1542033 (and b!6217726 d!1948836)))

(assert (=> bs!1542033 (not (= lambda!339792 lambda!339761))))

(declare-fun bs!1542034 () Bool)

(assert (= bs!1542034 (and b!6217726 b!6216878)))

(assert (=> bs!1542034 (not (= lambda!339792 lambda!339741))))

(declare-fun bs!1542035 () Bool)

(assert (= bs!1542035 (and b!6217726 b!6217628)))

(assert (=> bs!1542035 (not (= lambda!339792 lambda!339786))))

(assert (=> bs!1542031 (not (= lambda!339792 lambda!339712))))

(assert (=> bs!1542028 (not (= lambda!339792 lambda!339777))))

(assert (=> b!6217726 true))

(assert (=> b!6217726 true))

(declare-fun bs!1542036 () Bool)

(declare-fun b!6217728 () Bool)

(assert (= bs!1542036 (and b!6217728 d!1948874)))

(declare-fun lambda!339793 () Int)

(assert (=> bs!1542036 (not (= lambda!339793 lambda!339776))))

(declare-fun bs!1542037 () Bool)

(assert (= bs!1542037 (and b!6217728 d!1948838)))

(assert (=> bs!1542037 (= (and (= (regOne!32818 (regTwo!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regTwo!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339793 lambda!339767))))

(declare-fun bs!1542038 () Bool)

(assert (= bs!1542038 (and b!6217728 b!6217726)))

(assert (=> bs!1542038 (not (= lambda!339793 lambda!339792))))

(declare-fun bs!1542039 () Bool)

(assert (= bs!1542039 (and b!6217728 b!6217626)))

(assert (=> bs!1542039 (not (= lambda!339793 lambda!339785))))

(assert (=> bs!1542037 (not (= lambda!339793 lambda!339766))))

(declare-fun bs!1542040 () Bool)

(assert (= bs!1542040 (and b!6217728 b!6216632)))

(assert (=> bs!1542040 (not (= lambda!339793 lambda!339711))))

(declare-fun bs!1542041 () Bool)

(assert (= bs!1542041 (and b!6217728 b!6216876)))

(assert (=> bs!1542041 (not (= lambda!339793 lambda!339740))))

(declare-fun bs!1542042 () Bool)

(assert (= bs!1542042 (and b!6217728 d!1948836)))

(assert (=> bs!1542042 (not (= lambda!339793 lambda!339761))))

(declare-fun bs!1542043 () Bool)

(assert (= bs!1542043 (and b!6217728 b!6216878)))

(assert (=> bs!1542043 (= (and (= (regOne!32818 (regTwo!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regTwo!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339793 lambda!339741))))

(declare-fun bs!1542044 () Bool)

(assert (= bs!1542044 (and b!6217728 b!6217628)))

(assert (=> bs!1542044 (= (and (= (regOne!32818 (regTwo!32819 r!7292)) (regOne!32818 (regOne!32819 r!7292))) (= (regTwo!32818 (regTwo!32819 r!7292)) (regTwo!32818 (regOne!32819 r!7292)))) (= lambda!339793 lambda!339786))))

(assert (=> bs!1542040 (= (and (= (regOne!32818 (regTwo!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regTwo!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339793 lambda!339712))))

(assert (=> bs!1542036 (= (and (= (regOne!32818 (regTwo!32819 r!7292)) (regOne!32818 r!7292)) (= (regTwo!32818 (regTwo!32819 r!7292)) (regTwo!32818 r!7292))) (= lambda!339793 lambda!339777))))

(assert (=> b!6217728 true))

(assert (=> b!6217728 true))

(declare-fun b!6217720 () Bool)

(declare-fun e!3785046 () Bool)

(declare-fun call!521637 () Bool)

(assert (=> b!6217720 (= e!3785046 call!521637)))

(declare-fun b!6217721 () Bool)

(declare-fun e!3785045 () Bool)

(assert (=> b!6217721 (= e!3785046 e!3785045)))

(declare-fun res!2570112 () Bool)

(assert (=> b!6217721 (= res!2570112 (not ((_ is EmptyLang!16153) (regTwo!32819 r!7292))))))

(assert (=> b!6217721 (=> (not res!2570112) (not e!3785045))))

(declare-fun d!1949018 () Bool)

(declare-fun c!1123231 () Bool)

(assert (=> d!1949018 (= c!1123231 ((_ is EmptyExpr!16153) (regTwo!32819 r!7292)))))

(assert (=> d!1949018 (= (matchRSpec!3254 (regTwo!32819 r!7292) s!2326) e!3785046)))

(declare-fun b!6217722 () Bool)

(declare-fun e!3785040 () Bool)

(assert (=> b!6217722 (= e!3785040 (= s!2326 (Cons!64636 (c!1122921 (regTwo!32819 r!7292)) Nil!64636)))))

(declare-fun b!6217723 () Bool)

(declare-fun e!3785042 () Bool)

(declare-fun e!3785044 () Bool)

(assert (=> b!6217723 (= e!3785042 e!3785044)))

(declare-fun res!2570113 () Bool)

(assert (=> b!6217723 (= res!2570113 (matchRSpec!3254 (regOne!32819 (regTwo!32819 r!7292)) s!2326))))

(assert (=> b!6217723 (=> res!2570113 e!3785044)))

(declare-fun b!6217724 () Bool)

(declare-fun c!1123229 () Bool)

(assert (=> b!6217724 (= c!1123229 ((_ is ElementMatch!16153) (regTwo!32819 r!7292)))))

(assert (=> b!6217724 (= e!3785045 e!3785040)))

(declare-fun c!1123230 () Bool)

(declare-fun call!521636 () Bool)

(declare-fun bm!521631 () Bool)

(assert (=> bm!521631 (= call!521636 (Exists!3223 (ite c!1123230 lambda!339792 lambda!339793)))))

(declare-fun b!6217725 () Bool)

(assert (=> b!6217725 (= e!3785044 (matchRSpec!3254 (regTwo!32819 (regTwo!32819 r!7292)) s!2326))))

(declare-fun e!3785041 () Bool)

(assert (=> b!6217726 (= e!3785041 call!521636)))

(declare-fun b!6217727 () Bool)

(declare-fun res!2570111 () Bool)

(assert (=> b!6217727 (=> res!2570111 e!3785041)))

(assert (=> b!6217727 (= res!2570111 call!521637)))

(declare-fun e!3785043 () Bool)

(assert (=> b!6217727 (= e!3785043 e!3785041)))

(assert (=> b!6217728 (= e!3785043 call!521636)))

(declare-fun bm!521632 () Bool)

(assert (=> bm!521632 (= call!521637 (isEmpty!36642 s!2326))))

(declare-fun b!6217729 () Bool)

(assert (=> b!6217729 (= e!3785042 e!3785043)))

(assert (=> b!6217729 (= c!1123230 ((_ is Star!16153) (regTwo!32819 r!7292)))))

(declare-fun b!6217730 () Bool)

(declare-fun c!1123228 () Bool)

(assert (=> b!6217730 (= c!1123228 ((_ is Union!16153) (regTwo!32819 r!7292)))))

(assert (=> b!6217730 (= e!3785040 e!3785042)))

(assert (= (and d!1949018 c!1123231) b!6217720))

(assert (= (and d!1949018 (not c!1123231)) b!6217721))

(assert (= (and b!6217721 res!2570112) b!6217724))

(assert (= (and b!6217724 c!1123229) b!6217722))

(assert (= (and b!6217724 (not c!1123229)) b!6217730))

(assert (= (and b!6217730 c!1123228) b!6217723))

(assert (= (and b!6217730 (not c!1123228)) b!6217729))

(assert (= (and b!6217723 (not res!2570113)) b!6217725))

(assert (= (and b!6217729 c!1123230) b!6217727))

(assert (= (and b!6217729 (not c!1123230)) b!6217728))

(assert (= (and b!6217727 (not res!2570111)) b!6217726))

(assert (= (or b!6217726 b!6217728) bm!521631))

(assert (= (or b!6217720 b!6217727) bm!521632))

(declare-fun m!7046168 () Bool)

(assert (=> b!6217723 m!7046168))

(declare-fun m!7046170 () Bool)

(assert (=> bm!521631 m!7046170))

(declare-fun m!7046172 () Bool)

(assert (=> b!6217725 m!7046172))

(assert (=> bm!521632 m!7045476))

(assert (=> b!6216875 d!1949018))

(assert (=> b!6217056 d!1948848))

(declare-fun bs!1542045 () Bool)

(declare-fun d!1949020 () Bool)

(assert (= bs!1542045 (and d!1949020 d!1948720)))

(declare-fun lambda!339794 () Int)

(assert (=> bs!1542045 (= lambda!339794 lambda!339734)))

(declare-fun bs!1542046 () Bool)

(assert (= bs!1542046 (and d!1949020 d!1948970)))

(assert (=> bs!1542046 (= lambda!339794 lambda!339789)))

(declare-fun bs!1542047 () Bool)

(assert (= bs!1542047 (and d!1949020 d!1948768)))

(assert (=> bs!1542047 (= lambda!339794 lambda!339751)))

(declare-fun bs!1542048 () Bool)

(assert (= bs!1542048 (and d!1949020 d!1948776)))

(assert (=> bs!1542048 (= lambda!339794 lambda!339756)))

(declare-fun bs!1542049 () Bool)

(assert (= bs!1542049 (and d!1949020 d!1948940)))

(assert (=> bs!1542049 (= lambda!339794 lambda!339784)))

(declare-fun bs!1542050 () Bool)

(assert (= bs!1542050 (and d!1949020 d!1948762)))

(assert (=> bs!1542050 (= lambda!339794 lambda!339748)))

(declare-fun bs!1542051 () Bool)

(assert (= bs!1542051 (and d!1949020 d!1948850)))

(assert (=> bs!1542051 (= lambda!339794 lambda!339771)))

(declare-fun bs!1542052 () Bool)

(assert (= bs!1542052 (and d!1949020 d!1948848)))

(assert (=> bs!1542052 (= lambda!339794 lambda!339770)))

(declare-fun lt!2344525 () List!64758)

(assert (=> d!1949020 (forall!15267 lt!2344525 lambda!339794)))

(declare-fun e!3785047 () List!64758)

(assert (=> d!1949020 (= lt!2344525 e!3785047)))

(declare-fun c!1123232 () Bool)

(assert (=> d!1949020 (= c!1123232 ((_ is Cons!64635) (t!378287 zl!343)))))

(assert (=> d!1949020 (= (unfocusZipperList!1574 (t!378287 zl!343)) lt!2344525)))

(declare-fun b!6217731 () Bool)

(assert (=> b!6217731 (= e!3785047 (Cons!64634 (generalisedConcat!1750 (exprs!6037 (h!71083 (t!378287 zl!343)))) (unfocusZipperList!1574 (t!378287 (t!378287 zl!343)))))))

(declare-fun b!6217732 () Bool)

(assert (=> b!6217732 (= e!3785047 Nil!64634)))

(assert (= (and d!1949020 c!1123232) b!6217731))

(assert (= (and d!1949020 (not c!1123232)) b!6217732))

(declare-fun m!7046174 () Bool)

(assert (=> d!1949020 m!7046174))

(declare-fun m!7046176 () Bool)

(assert (=> b!6217731 m!7046176))

(declare-fun m!7046178 () Bool)

(assert (=> b!6217731 m!7046178))

(assert (=> b!6217056 d!1949020))

(assert (=> bm!521495 d!1948982))

(assert (=> d!1948754 d!1948866))

(declare-fun d!1949022 () Bool)

(declare-fun res!2570114 () Bool)

(declare-fun e!3785048 () Bool)

(assert (=> d!1949022 (=> res!2570114 e!3785048)))

(assert (=> d!1949022 (= res!2570114 ((_ is Nil!64634) (exprs!6037 lt!2344399)))))

(assert (=> d!1949022 (= (forall!15267 (exprs!6037 lt!2344399) lambda!339734) e!3785048)))

(declare-fun b!6217733 () Bool)

(declare-fun e!3785049 () Bool)

(assert (=> b!6217733 (= e!3785048 e!3785049)))

(declare-fun res!2570115 () Bool)

(assert (=> b!6217733 (=> (not res!2570115) (not e!3785049))))

(assert (=> b!6217733 (= res!2570115 (dynLambda!25500 lambda!339734 (h!71082 (exprs!6037 lt!2344399))))))

(declare-fun b!6217734 () Bool)

(assert (=> b!6217734 (= e!3785049 (forall!15267 (t!378286 (exprs!6037 lt!2344399)) lambda!339734))))

(assert (= (and d!1949022 (not res!2570114)) b!6217733))

(assert (= (and b!6217733 res!2570115) b!6217734))

(declare-fun b_lambda!236369 () Bool)

(assert (=> (not b_lambda!236369) (not b!6217733)))

(declare-fun m!7046180 () Bool)

(assert (=> b!6217733 m!7046180))

(declare-fun m!7046182 () Bool)

(assert (=> b!6217734 m!7046182))

(assert (=> d!1948720 d!1949022))

(declare-fun d!1949024 () Bool)

(assert (=> d!1949024 (= (nullable!6146 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))) (nullableFct!2101 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun bs!1542053 () Bool)

(assert (= bs!1542053 d!1949024))

(declare-fun m!7046184 () Bool)

(assert (=> bs!1542053 m!7046184))

(assert (=> b!6217140 d!1949024))

(declare-fun d!1949026 () Bool)

(assert (=> d!1949026 true))

(assert (=> d!1949026 true))

(declare-fun res!2570116 () Bool)

(assert (=> d!1949026 (= (choose!46199 lambda!339712) res!2570116)))

(assert (=> d!1948832 d!1949026))

(declare-fun d!1949028 () Bool)

(assert (=> d!1949028 (= ($colon$colon!2022 (exprs!6037 lt!2344415) (ite (or c!1123083 c!1123081) (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (h!71082 (exprs!6037 (h!71083 zl!343))))) (Cons!64634 (ite (or c!1123083 c!1123081) (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (h!71082 (exprs!6037 (h!71083 zl!343)))) (exprs!6037 lt!2344415)))))

(assert (=> bm!521519 d!1949028))

(declare-fun bs!1542054 () Bool)

(declare-fun d!1949030 () Bool)

(assert (= bs!1542054 (and d!1949030 d!1948914)))

(declare-fun lambda!339795 () Int)

(assert (=> bs!1542054 (= lambda!339795 lambda!339783)))

(declare-fun bs!1542055 () Bool)

(assert (= bs!1542055 (and d!1949030 d!1948952)))

(assert (=> bs!1542055 (= lambda!339795 lambda!339787)))

(assert (=> d!1949030 (= (nullableZipper!1926 lt!2344410) (exists!2486 lt!2344410 lambda!339795))))

(declare-fun bs!1542056 () Bool)

(assert (= bs!1542056 d!1949030))

(declare-fun m!7046186 () Bool)

(assert (=> bs!1542056 m!7046186))

(assert (=> b!6216737 d!1949030))

(declare-fun d!1949032 () Bool)

(assert (=> d!1949032 (= (isEmptyExpr!1563 lt!2344503) ((_ is EmptyExpr!16153) lt!2344503))))

(assert (=> b!6217349 d!1949032))

(declare-fun bs!1542057 () Bool)

(declare-fun d!1949034 () Bool)

(assert (= bs!1542057 (and d!1949034 d!1948720)))

(declare-fun lambda!339796 () Int)

(assert (=> bs!1542057 (= lambda!339796 lambda!339734)))

(declare-fun bs!1542058 () Bool)

(assert (= bs!1542058 (and d!1949034 d!1948970)))

(assert (=> bs!1542058 (= lambda!339796 lambda!339789)))

(declare-fun bs!1542059 () Bool)

(assert (= bs!1542059 (and d!1949034 d!1948776)))

(assert (=> bs!1542059 (= lambda!339796 lambda!339756)))

(declare-fun bs!1542060 () Bool)

(assert (= bs!1542060 (and d!1949034 d!1948940)))

(assert (=> bs!1542060 (= lambda!339796 lambda!339784)))

(declare-fun bs!1542061 () Bool)

(assert (= bs!1542061 (and d!1949034 d!1948762)))

(assert (=> bs!1542061 (= lambda!339796 lambda!339748)))

(declare-fun bs!1542062 () Bool)

(assert (= bs!1542062 (and d!1949034 d!1949020)))

(assert (=> bs!1542062 (= lambda!339796 lambda!339794)))

(declare-fun bs!1542063 () Bool)

(assert (= bs!1542063 (and d!1949034 d!1948768)))

(assert (=> bs!1542063 (= lambda!339796 lambda!339751)))

(declare-fun bs!1542064 () Bool)

(assert (= bs!1542064 (and d!1949034 d!1948850)))

(assert (=> bs!1542064 (= lambda!339796 lambda!339771)))

(declare-fun bs!1542065 () Bool)

(assert (= bs!1542065 (and d!1949034 d!1948848)))

(assert (=> bs!1542065 (= lambda!339796 lambda!339770)))

(declare-fun b!6217735 () Bool)

(declare-fun e!3785051 () Bool)

(assert (=> b!6217735 (= e!3785051 (isEmpty!36638 (t!378286 (t!378286 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6217736 () Bool)

(declare-fun e!3785050 () Bool)

(declare-fun lt!2344526 () Regex!16153)

(assert (=> b!6217736 (= e!3785050 (= lt!2344526 (head!12815 (t!378286 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6217737 () Bool)

(declare-fun e!3785055 () Regex!16153)

(assert (=> b!6217737 (= e!3785055 (Concat!24998 (h!71082 (t!378286 (exprs!6037 (h!71083 zl!343)))) (generalisedConcat!1750 (t!378286 (t!378286 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun e!3785052 () Bool)

(assert (=> d!1949034 e!3785052))

(declare-fun res!2570118 () Bool)

(assert (=> d!1949034 (=> (not res!2570118) (not e!3785052))))

(assert (=> d!1949034 (= res!2570118 (validRegex!7889 lt!2344526))))

(declare-fun e!3785053 () Regex!16153)

(assert (=> d!1949034 (= lt!2344526 e!3785053)))

(declare-fun c!1123236 () Bool)

(assert (=> d!1949034 (= c!1123236 e!3785051)))

(declare-fun res!2570117 () Bool)

(assert (=> d!1949034 (=> (not res!2570117) (not e!3785051))))

(assert (=> d!1949034 (= res!2570117 ((_ is Cons!64634) (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> d!1949034 (forall!15267 (t!378286 (exprs!6037 (h!71083 zl!343))) lambda!339796)))

(assert (=> d!1949034 (= (generalisedConcat!1750 (t!378286 (exprs!6037 (h!71083 zl!343)))) lt!2344526)))

(declare-fun b!6217738 () Bool)

(assert (=> b!6217738 (= e!3785055 EmptyExpr!16153)))

(declare-fun b!6217739 () Bool)

(declare-fun e!3785054 () Bool)

(assert (=> b!6217739 (= e!3785052 e!3785054)))

(declare-fun c!1123234 () Bool)

(assert (=> b!6217739 (= c!1123234 (isEmpty!36638 (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217740 () Bool)

(assert (=> b!6217740 (= e!3785053 e!3785055)))

(declare-fun c!1123233 () Bool)

(assert (=> b!6217740 (= c!1123233 ((_ is Cons!64634) (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217741 () Bool)

(assert (=> b!6217741 (= e!3785054 (isEmptyExpr!1563 lt!2344526))))

(declare-fun b!6217742 () Bool)

(assert (=> b!6217742 (= e!3785050 (isConcat!1086 lt!2344526))))

(declare-fun b!6217743 () Bool)

(assert (=> b!6217743 (= e!3785054 e!3785050)))

(declare-fun c!1123235 () Bool)

(assert (=> b!6217743 (= c!1123235 (isEmpty!36638 (tail!11900 (t!378286 (exprs!6037 (h!71083 zl!343))))))))

(declare-fun b!6217744 () Bool)

(assert (=> b!6217744 (= e!3785053 (h!71082 (t!378286 (exprs!6037 (h!71083 zl!343)))))))

(assert (= (and d!1949034 res!2570117) b!6217735))

(assert (= (and d!1949034 c!1123236) b!6217744))

(assert (= (and d!1949034 (not c!1123236)) b!6217740))

(assert (= (and b!6217740 c!1123233) b!6217737))

(assert (= (and b!6217740 (not c!1123233)) b!6217738))

(assert (= (and d!1949034 res!2570118) b!6217739))

(assert (= (and b!6217739 c!1123234) b!6217741))

(assert (= (and b!6217739 (not c!1123234)) b!6217743))

(assert (= (and b!6217743 c!1123235) b!6217736))

(assert (= (and b!6217743 (not c!1123235)) b!6217742))

(declare-fun m!7046188 () Bool)

(assert (=> d!1949034 m!7046188))

(declare-fun m!7046190 () Bool)

(assert (=> d!1949034 m!7046190))

(declare-fun m!7046192 () Bool)

(assert (=> b!6217736 m!7046192))

(declare-fun m!7046194 () Bool)

(assert (=> b!6217743 m!7046194))

(assert (=> b!6217743 m!7046194))

(declare-fun m!7046196 () Bool)

(assert (=> b!6217743 m!7046196))

(declare-fun m!7046198 () Bool)

(assert (=> b!6217742 m!7046198))

(declare-fun m!7046200 () Bool)

(assert (=> b!6217735 m!7046200))

(assert (=> b!6217739 m!7045346))

(declare-fun m!7046202 () Bool)

(assert (=> b!6217737 m!7046202))

(declare-fun m!7046204 () Bool)

(assert (=> b!6217741 m!7046204))

(assert (=> b!6217345 d!1949034))

(declare-fun d!1949036 () Bool)

(declare-fun c!1123237 () Bool)

(assert (=> d!1949036 (= c!1123237 (isEmpty!36642 (tail!11897 (t!378288 s!2326))))))

(declare-fun e!3785056 () Bool)

(assert (=> d!1949036 (= (matchZipper!2165 (derivationStepZipper!2118 lt!2344412 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))) e!3785056)))

(declare-fun b!6217745 () Bool)

(assert (=> b!6217745 (= e!3785056 (nullableZipper!1926 (derivationStepZipper!2118 lt!2344412 (head!12812 (t!378288 s!2326)))))))

(declare-fun b!6217746 () Bool)

(assert (=> b!6217746 (= e!3785056 (matchZipper!2165 (derivationStepZipper!2118 (derivationStepZipper!2118 lt!2344412 (head!12812 (t!378288 s!2326))) (head!12812 (tail!11897 (t!378288 s!2326)))) (tail!11897 (tail!11897 (t!378288 s!2326)))))))

(assert (= (and d!1949036 c!1123237) b!6217745))

(assert (= (and d!1949036 (not c!1123237)) b!6217746))

(assert (=> d!1949036 m!7045414))

(assert (=> d!1949036 m!7045894))

(assert (=> b!6217745 m!7045534))

(declare-fun m!7046206 () Bool)

(assert (=> b!6217745 m!7046206))

(assert (=> b!6217746 m!7045414))

(assert (=> b!6217746 m!7045898))

(assert (=> b!6217746 m!7045534))

(assert (=> b!6217746 m!7045898))

(declare-fun m!7046208 () Bool)

(assert (=> b!6217746 m!7046208))

(assert (=> b!6217746 m!7045414))

(assert (=> b!6217746 m!7045902))

(assert (=> b!6217746 m!7046208))

(assert (=> b!6217746 m!7045902))

(declare-fun m!7046210 () Bool)

(assert (=> b!6217746 m!7046210))

(assert (=> b!6216980 d!1949036))

(declare-fun bs!1542066 () Bool)

(declare-fun d!1949038 () Bool)

(assert (= bs!1542066 (and d!1949038 d!1948958)))

(declare-fun lambda!339797 () Int)

(assert (=> bs!1542066 (= lambda!339797 lambda!339788)))

(declare-fun bs!1542067 () Bool)

(assert (= bs!1542067 (and d!1949038 d!1948898)))

(assert (=> bs!1542067 (= lambda!339797 lambda!339780)))

(declare-fun bs!1542068 () Bool)

(assert (= bs!1542068 (and d!1949038 d!1948974)))

(assert (=> bs!1542068 (= lambda!339797 lambda!339790)))

(declare-fun bs!1542069 () Bool)

(assert (= bs!1542069 (and d!1949038 b!6216622)))

(assert (=> bs!1542069 (= (= (head!12812 (t!378288 s!2326)) (h!71084 s!2326)) (= lambda!339797 lambda!339713))))

(declare-fun bs!1542070 () Bool)

(assert (= bs!1542070 (and d!1949038 d!1948992)))

(assert (=> bs!1542070 (= lambda!339797 lambda!339791)))

(assert (=> d!1949038 true))

(assert (=> d!1949038 (= (derivationStepZipper!2118 lt!2344412 (head!12812 (t!378288 s!2326))) (flatMap!1658 lt!2344412 lambda!339797))))

(declare-fun bs!1542071 () Bool)

(assert (= bs!1542071 d!1949038))

(declare-fun m!7046212 () Bool)

(assert (=> bs!1542071 m!7046212))

(assert (=> b!6216980 d!1949038))

(assert (=> b!6216980 d!1948900))

(assert (=> b!6216980 d!1948902))

(declare-fun call!521641 () List!64758)

(declare-fun call!521639 () (InoxSet Context!11074))

(declare-fun c!1123241 () Bool)

(declare-fun bm!521633 () Bool)

(declare-fun c!1123239 () Bool)

(declare-fun c!1123240 () Bool)

(assert (=> bm!521633 (= call!521639 (derivationStepZipperDown!1401 (ite c!1123240 (regTwo!32819 (h!71082 (exprs!6037 lt!2344415))) (ite c!1123241 (regTwo!32818 (h!71082 (exprs!6037 lt!2344415))) (ite c!1123239 (regOne!32818 (h!71082 (exprs!6037 lt!2344415))) (reg!16482 (h!71082 (exprs!6037 lt!2344415)))))) (ite (or c!1123240 c!1123241) (Context!11075 (t!378286 (exprs!6037 lt!2344415))) (Context!11075 call!521641)) (h!71084 s!2326)))))

(declare-fun b!6217747 () Bool)

(declare-fun e!3785058 () (InoxSet Context!11074))

(declare-fun e!3785062 () (InoxSet Context!11074))

(assert (=> b!6217747 (= e!3785058 e!3785062)))

(assert (=> b!6217747 (= c!1123240 ((_ is Union!16153) (h!71082 (exprs!6037 lt!2344415))))))

(declare-fun d!1949040 () Bool)

(declare-fun c!1123238 () Bool)

(assert (=> d!1949040 (= c!1123238 (and ((_ is ElementMatch!16153) (h!71082 (exprs!6037 lt!2344415))) (= (c!1122921 (h!71082 (exprs!6037 lt!2344415))) (h!71084 s!2326))))))

(assert (=> d!1949040 (= (derivationStepZipperDown!1401 (h!71082 (exprs!6037 lt!2344415)) (Context!11075 (t!378286 (exprs!6037 lt!2344415))) (h!71084 s!2326)) e!3785058)))

(declare-fun b!6217748 () Bool)

(declare-fun e!3785059 () Bool)

(assert (=> b!6217748 (= c!1123241 e!3785059)))

(declare-fun res!2570119 () Bool)

(assert (=> b!6217748 (=> (not res!2570119) (not e!3785059))))

(assert (=> b!6217748 (= res!2570119 ((_ is Concat!24998) (h!71082 (exprs!6037 lt!2344415))))))

(declare-fun e!3785060 () (InoxSet Context!11074))

(assert (=> b!6217748 (= e!3785062 e!3785060)))

(declare-fun bm!521634 () Bool)

(declare-fun call!521642 () (InoxSet Context!11074))

(declare-fun call!521638 () (InoxSet Context!11074))

(assert (=> bm!521634 (= call!521642 call!521638)))

(declare-fun b!6217749 () Bool)

(declare-fun e!3785061 () (InoxSet Context!11074))

(assert (=> b!6217749 (= e!3785061 call!521642)))

(declare-fun call!521640 () List!64758)

(declare-fun bm!521635 () Bool)

(assert (=> bm!521635 (= call!521640 ($colon$colon!2022 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344415)))) (ite (or c!1123241 c!1123239) (regTwo!32818 (h!71082 (exprs!6037 lt!2344415))) (h!71082 (exprs!6037 lt!2344415)))))))

(declare-fun b!6217750 () Bool)

(assert (=> b!6217750 (= e!3785058 (store ((as const (Array Context!11074 Bool)) false) (Context!11075 (t!378286 (exprs!6037 lt!2344415))) true))))

(declare-fun bm!521636 () Bool)

(declare-fun call!521643 () (InoxSet Context!11074))

(assert (=> bm!521636 (= call!521643 (derivationStepZipperDown!1401 (ite c!1123240 (regOne!32819 (h!71082 (exprs!6037 lt!2344415))) (regOne!32818 (h!71082 (exprs!6037 lt!2344415)))) (ite c!1123240 (Context!11075 (t!378286 (exprs!6037 lt!2344415))) (Context!11075 call!521640)) (h!71084 s!2326)))))

(declare-fun b!6217751 () Bool)

(declare-fun e!3785057 () (InoxSet Context!11074))

(assert (=> b!6217751 (= e!3785057 call!521642)))

(declare-fun b!6217752 () Bool)

(assert (=> b!6217752 (= e!3785059 (nullable!6146 (regOne!32818 (h!71082 (exprs!6037 lt!2344415)))))))

(declare-fun b!6217753 () Bool)

(declare-fun c!1123242 () Bool)

(assert (=> b!6217753 (= c!1123242 ((_ is Star!16153) (h!71082 (exprs!6037 lt!2344415))))))

(assert (=> b!6217753 (= e!3785061 e!3785057)))

(declare-fun b!6217754 () Bool)

(assert (=> b!6217754 (= e!3785062 ((_ map or) call!521643 call!521639))))

(declare-fun bm!521637 () Bool)

(assert (=> bm!521637 (= call!521638 call!521639)))

(declare-fun b!6217755 () Bool)

(assert (=> b!6217755 (= e!3785060 e!3785061)))

(assert (=> b!6217755 (= c!1123239 ((_ is Concat!24998) (h!71082 (exprs!6037 lt!2344415))))))

(declare-fun bm!521638 () Bool)

(assert (=> bm!521638 (= call!521641 call!521640)))

(declare-fun b!6217756 () Bool)

(assert (=> b!6217756 (= e!3785060 ((_ map or) call!521643 call!521638))))

(declare-fun b!6217757 () Bool)

(assert (=> b!6217757 (= e!3785057 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1949040 c!1123238) b!6217750))

(assert (= (and d!1949040 (not c!1123238)) b!6217747))

(assert (= (and b!6217747 c!1123240) b!6217754))

(assert (= (and b!6217747 (not c!1123240)) b!6217748))

(assert (= (and b!6217748 res!2570119) b!6217752))

(assert (= (and b!6217748 c!1123241) b!6217756))

(assert (= (and b!6217748 (not c!1123241)) b!6217755))

(assert (= (and b!6217755 c!1123239) b!6217749))

(assert (= (and b!6217755 (not c!1123239)) b!6217753))

(assert (= (and b!6217753 c!1123242) b!6217751))

(assert (= (and b!6217753 (not c!1123242)) b!6217757))

(assert (= (or b!6217749 b!6217751) bm!521638))

(assert (= (or b!6217749 b!6217751) bm!521634))

(assert (= (or b!6217756 bm!521638) bm!521635))

(assert (= (or b!6217756 bm!521634) bm!521637))

(assert (= (or b!6217754 bm!521637) bm!521633))

(assert (= (or b!6217754 b!6217756) bm!521636))

(declare-fun m!7046214 () Bool)

(assert (=> b!6217750 m!7046214))

(declare-fun m!7046216 () Bool)

(assert (=> bm!521633 m!7046216))

(declare-fun m!7046218 () Bool)

(assert (=> bm!521635 m!7046218))

(declare-fun m!7046220 () Bool)

(assert (=> b!6217752 m!7046220))

(declare-fun m!7046222 () Bool)

(assert (=> bm!521636 m!7046222))

(assert (=> bm!521498 d!1949040))

(assert (=> d!1948836 d!1948810))

(assert (=> d!1948836 d!1948876))

(assert (=> d!1948836 d!1948840))

(declare-fun bs!1542072 () Bool)

(declare-fun d!1949042 () Bool)

(assert (= bs!1542072 (and d!1949042 d!1948874)))

(declare-fun lambda!339800 () Int)

(assert (=> bs!1542072 (= lambda!339800 lambda!339776)))

(declare-fun bs!1542073 () Bool)

(assert (= bs!1542073 (and d!1949042 b!6217728)))

(assert (=> bs!1542073 (not (= lambda!339800 lambda!339793))))

(declare-fun bs!1542074 () Bool)

(assert (= bs!1542074 (and d!1949042 d!1948838)))

(assert (=> bs!1542074 (not (= lambda!339800 lambda!339767))))

(declare-fun bs!1542075 () Bool)

(assert (= bs!1542075 (and d!1949042 b!6217726)))

(assert (=> bs!1542075 (not (= lambda!339800 lambda!339792))))

(declare-fun bs!1542076 () Bool)

(assert (= bs!1542076 (and d!1949042 b!6217626)))

(assert (=> bs!1542076 (not (= lambda!339800 lambda!339785))))

(assert (=> bs!1542074 (= lambda!339800 lambda!339766)))

(declare-fun bs!1542077 () Bool)

(assert (= bs!1542077 (and d!1949042 b!6216632)))

(assert (=> bs!1542077 (= lambda!339800 lambda!339711)))

(declare-fun bs!1542078 () Bool)

(assert (= bs!1542078 (and d!1949042 b!6216876)))

(assert (=> bs!1542078 (not (= lambda!339800 lambda!339740))))

(declare-fun bs!1542079 () Bool)

(assert (= bs!1542079 (and d!1949042 d!1948836)))

(assert (=> bs!1542079 (= lambda!339800 lambda!339761)))

(declare-fun bs!1542080 () Bool)

(assert (= bs!1542080 (and d!1949042 b!6216878)))

(assert (=> bs!1542080 (not (= lambda!339800 lambda!339741))))

(declare-fun bs!1542081 () Bool)

(assert (= bs!1542081 (and d!1949042 b!6217628)))

(assert (=> bs!1542081 (not (= lambda!339800 lambda!339786))))

(assert (=> bs!1542077 (not (= lambda!339800 lambda!339712))))

(assert (=> bs!1542072 (not (= lambda!339800 lambda!339777))))

(assert (=> d!1949042 true))

(assert (=> d!1949042 true))

(assert (=> d!1949042 true))

(assert (=> d!1949042 (= (isDefined!12747 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326)) (Exists!3223 lambda!339800))))

(assert (=> d!1949042 true))

(declare-fun _$89!2380 () Unit!157943)

(assert (=> d!1949042 (= (choose!46200 (regOne!32818 r!7292) (regTwo!32818 r!7292) s!2326) _$89!2380)))

(declare-fun bs!1542082 () Bool)

(assert (= bs!1542082 d!1949042))

(assert (=> bs!1542082 m!7045298))

(assert (=> bs!1542082 m!7045298))

(assert (=> bs!1542082 m!7045300))

(declare-fun m!7046224 () Bool)

(assert (=> bs!1542082 m!7046224))

(assert (=> d!1948836 d!1949042))

(declare-fun d!1949044 () Bool)

(assert (=> d!1949044 (= (Exists!3223 lambda!339761) (choose!46199 lambda!339761))))

(declare-fun bs!1542083 () Bool)

(assert (= bs!1542083 d!1949044))

(declare-fun m!7046226 () Bool)

(assert (=> bs!1542083 m!7046226))

(assert (=> d!1948836 d!1949044))

(declare-fun b!6217762 () Bool)

(declare-fun e!3785065 () (InoxSet Context!11074))

(declare-fun call!521644 () (InoxSet Context!11074))

(assert (=> b!6217762 (= e!3785065 call!521644)))

(declare-fun b!6217763 () Bool)

(declare-fun e!3785067 () (InoxSet Context!11074))

(assert (=> b!6217763 (= e!3785067 ((_ map or) call!521644 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344415)))))) (h!71084 s!2326))))))

(declare-fun b!6217764 () Bool)

(declare-fun e!3785066 () Bool)

(assert (=> b!6217764 (= e!3785066 (nullable!6146 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344415)))))))))

(declare-fun b!6217765 () Bool)

(assert (=> b!6217765 (= e!3785065 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217766 () Bool)

(assert (=> b!6217766 (= e!3785067 e!3785065)))

(declare-fun c!1123243 () Bool)

(assert (=> b!6217766 (= c!1123243 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344415))))))))

(declare-fun bm!521639 () Bool)

(assert (=> bm!521639 (= call!521644 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344415))))) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344415)))))) (h!71084 s!2326)))))

(declare-fun d!1949046 () Bool)

(declare-fun c!1123244 () Bool)

(assert (=> d!1949046 (= c!1123244 e!3785066)))

(declare-fun res!2570124 () Bool)

(assert (=> d!1949046 (=> (not res!2570124) (not e!3785066))))

(assert (=> d!1949046 (= res!2570124 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344415))))))))

(assert (=> d!1949046 (= (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 lt!2344415))) (h!71084 s!2326)) e!3785067)))

(assert (= (and d!1949046 res!2570124) b!6217764))

(assert (= (and d!1949046 c!1123244) b!6217763))

(assert (= (and d!1949046 (not c!1123244)) b!6217766))

(assert (= (and b!6217766 c!1123243) b!6217762))

(assert (= (and b!6217766 (not c!1123243)) b!6217765))

(assert (= (or b!6217763 b!6217762) bm!521639))

(declare-fun m!7046228 () Bool)

(assert (=> b!6217763 m!7046228))

(declare-fun m!7046230 () Bool)

(assert (=> b!6217764 m!7046230))

(declare-fun m!7046232 () Bool)

(assert (=> bm!521639 m!7046232))

(assert (=> b!6217079 d!1949046))

(declare-fun b!6217767 () Bool)

(declare-fun e!3785069 () Bool)

(declare-fun e!3785071 () Bool)

(assert (=> b!6217767 (= e!3785069 e!3785071)))

(declare-fun res!2570132 () Bool)

(assert (=> b!6217767 (=> res!2570132 e!3785071)))

(declare-fun call!521645 () Bool)

(assert (=> b!6217767 (= res!2570132 call!521645)))

(declare-fun b!6217768 () Bool)

(declare-fun res!2570125 () Bool)

(declare-fun e!3785068 () Bool)

(assert (=> b!6217768 (=> res!2570125 e!3785068)))

(declare-fun e!3785070 () Bool)

(assert (=> b!6217768 (= res!2570125 e!3785070)))

(declare-fun res!2570131 () Bool)

(assert (=> b!6217768 (=> (not res!2570131) (not e!3785070))))

(declare-fun lt!2344527 () Bool)

(assert (=> b!6217768 (= res!2570131 lt!2344527)))

(declare-fun b!6217769 () Bool)

(declare-fun res!2570130 () Bool)

(assert (=> b!6217769 (=> res!2570130 e!3785071)))

(assert (=> b!6217769 (= res!2570130 (not (isEmpty!36642 (tail!11897 (_2!36435 (get!22323 lt!2344494))))))))

(declare-fun b!6217770 () Bool)

(assert (=> b!6217770 (= e!3785071 (not (= (head!12812 (_2!36435 (get!22323 lt!2344494))) (c!1122921 (regTwo!32818 r!7292)))))))

(declare-fun bm!521640 () Bool)

(assert (=> bm!521640 (= call!521645 (isEmpty!36642 (_2!36435 (get!22323 lt!2344494))))))

(declare-fun b!6217771 () Bool)

(declare-fun res!2570126 () Bool)

(assert (=> b!6217771 (=> res!2570126 e!3785068)))

(assert (=> b!6217771 (= res!2570126 (not ((_ is ElementMatch!16153) (regTwo!32818 r!7292))))))

(declare-fun e!3785072 () Bool)

(assert (=> b!6217771 (= e!3785072 e!3785068)))

(declare-fun b!6217772 () Bool)

(declare-fun e!3785073 () Bool)

(assert (=> b!6217772 (= e!3785073 (nullable!6146 (regTwo!32818 r!7292)))))

(declare-fun b!6217773 () Bool)

(declare-fun e!3785074 () Bool)

(assert (=> b!6217773 (= e!3785074 (= lt!2344527 call!521645))))

(declare-fun d!1949048 () Bool)

(assert (=> d!1949048 e!3785074))

(declare-fun c!1123246 () Bool)

(assert (=> d!1949048 (= c!1123246 ((_ is EmptyExpr!16153) (regTwo!32818 r!7292)))))

(assert (=> d!1949048 (= lt!2344527 e!3785073)))

(declare-fun c!1123247 () Bool)

(assert (=> d!1949048 (= c!1123247 (isEmpty!36642 (_2!36435 (get!22323 lt!2344494))))))

(assert (=> d!1949048 (validRegex!7889 (regTwo!32818 r!7292))))

(assert (=> d!1949048 (= (matchR!8336 (regTwo!32818 r!7292) (_2!36435 (get!22323 lt!2344494))) lt!2344527)))

(declare-fun b!6217774 () Bool)

(assert (=> b!6217774 (= e!3785068 e!3785069)))

(declare-fun res!2570128 () Bool)

(assert (=> b!6217774 (=> (not res!2570128) (not e!3785069))))

(assert (=> b!6217774 (= res!2570128 (not lt!2344527))))

(declare-fun b!6217775 () Bool)

(assert (=> b!6217775 (= e!3785073 (matchR!8336 (derivativeStep!4866 (regTwo!32818 r!7292) (head!12812 (_2!36435 (get!22323 lt!2344494)))) (tail!11897 (_2!36435 (get!22323 lt!2344494)))))))

(declare-fun b!6217776 () Bool)

(assert (=> b!6217776 (= e!3785072 (not lt!2344527))))

(declare-fun b!6217777 () Bool)

(assert (=> b!6217777 (= e!3785070 (= (head!12812 (_2!36435 (get!22323 lt!2344494))) (c!1122921 (regTwo!32818 r!7292))))))

(declare-fun b!6217778 () Bool)

(assert (=> b!6217778 (= e!3785074 e!3785072)))

(declare-fun c!1123245 () Bool)

(assert (=> b!6217778 (= c!1123245 ((_ is EmptyLang!16153) (regTwo!32818 r!7292)))))

(declare-fun b!6217779 () Bool)

(declare-fun res!2570129 () Bool)

(assert (=> b!6217779 (=> (not res!2570129) (not e!3785070))))

(assert (=> b!6217779 (= res!2570129 (not call!521645))))

(declare-fun b!6217780 () Bool)

(declare-fun res!2570127 () Bool)

(assert (=> b!6217780 (=> (not res!2570127) (not e!3785070))))

(assert (=> b!6217780 (= res!2570127 (isEmpty!36642 (tail!11897 (_2!36435 (get!22323 lt!2344494)))))))

(assert (= (and d!1949048 c!1123247) b!6217772))

(assert (= (and d!1949048 (not c!1123247)) b!6217775))

(assert (= (and d!1949048 c!1123246) b!6217773))

(assert (= (and d!1949048 (not c!1123246)) b!6217778))

(assert (= (and b!6217778 c!1123245) b!6217776))

(assert (= (and b!6217778 (not c!1123245)) b!6217771))

(assert (= (and b!6217771 (not res!2570126)) b!6217768))

(assert (= (and b!6217768 res!2570131) b!6217779))

(assert (= (and b!6217779 res!2570129) b!6217780))

(assert (= (and b!6217780 res!2570127) b!6217777))

(assert (= (and b!6217768 (not res!2570125)) b!6217774))

(assert (= (and b!6217774 res!2570128) b!6217767))

(assert (= (and b!6217767 (not res!2570132)) b!6217769))

(assert (= (and b!6217769 (not res!2570130)) b!6217770))

(assert (= (or b!6217773 b!6217767 b!6217779) bm!521640))

(declare-fun m!7046234 () Bool)

(assert (=> b!6217769 m!7046234))

(assert (=> b!6217769 m!7046234))

(declare-fun m!7046236 () Bool)

(assert (=> b!6217769 m!7046236))

(declare-fun m!7046238 () Bool)

(assert (=> d!1949048 m!7046238))

(assert (=> d!1949048 m!7046074))

(assert (=> b!6217780 m!7046234))

(assert (=> b!6217780 m!7046234))

(assert (=> b!6217780 m!7046236))

(assert (=> b!6217772 m!7046076))

(assert (=> bm!521640 m!7046238))

(declare-fun m!7046240 () Bool)

(assert (=> b!6217777 m!7046240))

(assert (=> b!6217770 m!7046240))

(assert (=> b!6217775 m!7046240))

(assert (=> b!6217775 m!7046240))

(declare-fun m!7046242 () Bool)

(assert (=> b!6217775 m!7046242))

(assert (=> b!6217775 m!7046234))

(assert (=> b!6217775 m!7046242))

(assert (=> b!6217775 m!7046234))

(declare-fun m!7046244 () Bool)

(assert (=> b!6217775 m!7046244))

(assert (=> b!6217259 d!1949048))

(assert (=> b!6217259 d!1948862))

(declare-fun bs!1542084 () Bool)

(declare-fun d!1949050 () Bool)

(assert (= bs!1542084 (and d!1949050 d!1948914)))

(declare-fun lambda!339801 () Int)

(assert (=> bs!1542084 (= lambda!339801 lambda!339783)))

(declare-fun bs!1542085 () Bool)

(assert (= bs!1542085 (and d!1949050 d!1948952)))

(assert (=> bs!1542085 (= lambda!339801 lambda!339787)))

(declare-fun bs!1542086 () Bool)

(assert (= bs!1542086 (and d!1949050 d!1949030)))

(assert (=> bs!1542086 (= lambda!339801 lambda!339795)))

(assert (=> d!1949050 (= (nullableZipper!1926 ((_ map or) lt!2344416 lt!2344412)) (exists!2486 ((_ map or) lt!2344416 lt!2344412) lambda!339801))))

(declare-fun bs!1542087 () Bool)

(assert (= bs!1542087 d!1949050))

(declare-fun m!7046246 () Bool)

(assert (=> bs!1542087 m!7046246))

(assert (=> b!6216989 d!1949050))

(declare-fun d!1949052 () Bool)

(assert (=> d!1949052 (= ($colon$colon!2022 (exprs!6037 lt!2344399) (ite (or c!1123118 c!1123116) (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 r!7292)))) (Cons!64634 (ite (or c!1123118 c!1123116) (regTwo!32818 (regOne!32818 (regOne!32818 r!7292))) (regOne!32818 (regOne!32818 r!7292))) (exprs!6037 lt!2344399)))))

(assert (=> bm!521552 d!1949052))

(declare-fun d!1949054 () Bool)

(declare-fun res!2570137 () Bool)

(declare-fun e!3785079 () Bool)

(assert (=> d!1949054 (=> res!2570137 e!3785079)))

(assert (=> d!1949054 (= res!2570137 ((_ is Nil!64635) lt!2344463))))

(assert (=> d!1949054 (= (noDuplicate!1990 lt!2344463) e!3785079)))

(declare-fun b!6217785 () Bool)

(declare-fun e!3785080 () Bool)

(assert (=> b!6217785 (= e!3785079 e!3785080)))

(declare-fun res!2570138 () Bool)

(assert (=> b!6217785 (=> (not res!2570138) (not e!3785080))))

(declare-fun contains!20093 (List!64759 Context!11074) Bool)

(assert (=> b!6217785 (= res!2570138 (not (contains!20093 (t!378287 lt!2344463) (h!71083 lt!2344463))))))

(declare-fun b!6217786 () Bool)

(assert (=> b!6217786 (= e!3785080 (noDuplicate!1990 (t!378287 lt!2344463)))))

(assert (= (and d!1949054 (not res!2570137)) b!6217785))

(assert (= (and b!6217785 res!2570138) b!6217786))

(declare-fun m!7046248 () Bool)

(assert (=> b!6217785 m!7046248))

(declare-fun m!7046250 () Bool)

(assert (=> b!6217786 m!7046250))

(assert (=> d!1948750 d!1949054))

(declare-fun d!1949056 () Bool)

(declare-fun e!3785089 () Bool)

(assert (=> d!1949056 e!3785089))

(declare-fun res!2570144 () Bool)

(assert (=> d!1949056 (=> (not res!2570144) (not e!3785089))))

(declare-fun res!2570143 () List!64759)

(assert (=> d!1949056 (= res!2570144 (noDuplicate!1990 res!2570143))))

(declare-fun e!3785088 () Bool)

(assert (=> d!1949056 e!3785088))

(assert (=> d!1949056 (= (choose!46197 z!1189) res!2570143)))

(declare-fun b!6217794 () Bool)

(declare-fun e!3785087 () Bool)

(declare-fun tp!1734572 () Bool)

(assert (=> b!6217794 (= e!3785087 tp!1734572)))

(declare-fun b!6217793 () Bool)

(declare-fun tp!1734571 () Bool)

(assert (=> b!6217793 (= e!3785088 (and (inv!83629 (h!71083 res!2570143)) e!3785087 tp!1734571))))

(declare-fun b!6217795 () Bool)

(assert (=> b!6217795 (= e!3785089 (= (content!12099 res!2570143) z!1189))))

(assert (= b!6217793 b!6217794))

(assert (= (and d!1949056 ((_ is Cons!64635) res!2570143)) b!6217793))

(assert (= (and d!1949056 res!2570144) b!6217795))

(declare-fun m!7046252 () Bool)

(assert (=> d!1949056 m!7046252))

(declare-fun m!7046254 () Bool)

(assert (=> b!6217793 m!7046254))

(declare-fun m!7046256 () Bool)

(assert (=> b!6217795 m!7046256))

(assert (=> d!1948750 d!1949056))

(assert (=> d!1948748 d!1948866))

(declare-fun b!6217796 () Bool)

(declare-fun e!3785090 () (InoxSet Context!11074))

(declare-fun call!521646 () (InoxSet Context!11074))

(assert (=> b!6217796 (= e!3785090 call!521646)))

(declare-fun b!6217797 () Bool)

(declare-fun e!3785092 () (InoxSet Context!11074))

(assert (=> b!6217797 (= e!3785092 ((_ map or) call!521646 (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343))))))) (h!71084 s!2326))))))

(declare-fun b!6217798 () Bool)

(declare-fun e!3785091 () Bool)

(assert (=> b!6217798 (= e!3785091 (nullable!6146 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343))))))))))

(declare-fun b!6217799 () Bool)

(assert (=> b!6217799 (= e!3785090 ((as const (Array Context!11074 Bool)) false))))

(declare-fun b!6217800 () Bool)

(assert (=> b!6217800 (= e!3785092 e!3785090)))

(declare-fun c!1123248 () Bool)

(assert (=> b!6217800 (= c!1123248 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))))))))

(declare-fun bm!521641 () Bool)

(assert (=> bm!521641 (= call!521646 (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))))) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343))))))) (h!71084 s!2326)))))

(declare-fun d!1949058 () Bool)

(declare-fun c!1123249 () Bool)

(assert (=> d!1949058 (= c!1123249 e!3785091)))

(declare-fun res!2570145 () Bool)

(assert (=> d!1949058 (=> (not res!2570145) (not e!3785091))))

(assert (=> d!1949058 (= res!2570145 ((_ is Cons!64634) (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))))))))

(assert (=> d!1949058 (= (derivationStepZipperUp!1327 (Context!11075 (t!378286 (exprs!6037 (h!71083 zl!343)))) (h!71084 s!2326)) e!3785092)))

(assert (= (and d!1949058 res!2570145) b!6217798))

(assert (= (and d!1949058 c!1123249) b!6217797))

(assert (= (and d!1949058 (not c!1123249)) b!6217800))

(assert (= (and b!6217800 c!1123248) b!6217796))

(assert (= (and b!6217800 (not c!1123248)) b!6217799))

(assert (= (or b!6217797 b!6217796) bm!521641))

(declare-fun m!7046258 () Bool)

(assert (=> b!6217797 m!7046258))

(declare-fun m!7046260 () Bool)

(assert (=> b!6217798 m!7046260))

(declare-fun m!7046262 () Bool)

(assert (=> bm!521641 m!7046262))

(assert (=> b!6217074 d!1949058))

(assert (=> b!6216961 d!1948946))

(declare-fun d!1949060 () Bool)

(assert (=> d!1949060 (= (nullable!6146 (reg!16482 r!7292)) (nullableFct!2101 (reg!16482 r!7292)))))

(declare-fun bs!1542088 () Bool)

(assert (= bs!1542088 d!1949060))

(declare-fun m!7046264 () Bool)

(assert (=> bs!1542088 m!7046264))

(assert (=> b!6217292 d!1949060))

(declare-fun d!1949062 () Bool)

(assert (=> d!1949062 (= (Exists!3223 (ite c!1122986 lambda!339740 lambda!339741)) (choose!46199 (ite c!1122986 lambda!339740 lambda!339741)))))

(declare-fun bs!1542089 () Bool)

(assert (= bs!1542089 d!1949062))

(declare-fun m!7046266 () Bool)

(assert (=> bs!1542089 m!7046266))

(assert (=> bm!521475 d!1949062))

(declare-fun b!6217801 () Bool)

(declare-fun e!3785094 () Bool)

(declare-fun e!3785096 () Bool)

(assert (=> b!6217801 (= e!3785094 e!3785096)))

(declare-fun res!2570153 () Bool)

(assert (=> b!6217801 (=> res!2570153 e!3785096)))

(declare-fun call!521647 () Bool)

(assert (=> b!6217801 (= res!2570153 call!521647)))

(declare-fun b!6217802 () Bool)

(declare-fun res!2570146 () Bool)

(declare-fun e!3785093 () Bool)

(assert (=> b!6217802 (=> res!2570146 e!3785093)))

(declare-fun e!3785095 () Bool)

(assert (=> b!6217802 (= res!2570146 e!3785095)))

(declare-fun res!2570152 () Bool)

(assert (=> b!6217802 (=> (not res!2570152) (not e!3785095))))

(declare-fun lt!2344528 () Bool)

(assert (=> b!6217802 (= res!2570152 lt!2344528)))

(declare-fun b!6217803 () Bool)

(declare-fun res!2570151 () Bool)

(assert (=> b!6217803 (=> res!2570151 e!3785096)))

(assert (=> b!6217803 (= res!2570151 (not (isEmpty!36642 (tail!11897 (_1!36435 (get!22323 lt!2344494))))))))

(declare-fun b!6217804 () Bool)

(assert (=> b!6217804 (= e!3785096 (not (= (head!12812 (_1!36435 (get!22323 lt!2344494))) (c!1122921 (regOne!32818 r!7292)))))))

(declare-fun bm!521642 () Bool)

(assert (=> bm!521642 (= call!521647 (isEmpty!36642 (_1!36435 (get!22323 lt!2344494))))))

(declare-fun b!6217805 () Bool)

(declare-fun res!2570147 () Bool)

(assert (=> b!6217805 (=> res!2570147 e!3785093)))

(assert (=> b!6217805 (= res!2570147 (not ((_ is ElementMatch!16153) (regOne!32818 r!7292))))))

(declare-fun e!3785097 () Bool)

(assert (=> b!6217805 (= e!3785097 e!3785093)))

(declare-fun b!6217806 () Bool)

(declare-fun e!3785098 () Bool)

(assert (=> b!6217806 (= e!3785098 (nullable!6146 (regOne!32818 r!7292)))))

(declare-fun b!6217807 () Bool)

(declare-fun e!3785099 () Bool)

(assert (=> b!6217807 (= e!3785099 (= lt!2344528 call!521647))))

(declare-fun d!1949064 () Bool)

(assert (=> d!1949064 e!3785099))

(declare-fun c!1123251 () Bool)

(assert (=> d!1949064 (= c!1123251 ((_ is EmptyExpr!16153) (regOne!32818 r!7292)))))

(assert (=> d!1949064 (= lt!2344528 e!3785098)))

(declare-fun c!1123252 () Bool)

(assert (=> d!1949064 (= c!1123252 (isEmpty!36642 (_1!36435 (get!22323 lt!2344494))))))

(assert (=> d!1949064 (validRegex!7889 (regOne!32818 r!7292))))

(assert (=> d!1949064 (= (matchR!8336 (regOne!32818 r!7292) (_1!36435 (get!22323 lt!2344494))) lt!2344528)))

(declare-fun b!6217808 () Bool)

(assert (=> b!6217808 (= e!3785093 e!3785094)))

(declare-fun res!2570149 () Bool)

(assert (=> b!6217808 (=> (not res!2570149) (not e!3785094))))

(assert (=> b!6217808 (= res!2570149 (not lt!2344528))))

(declare-fun b!6217809 () Bool)

(assert (=> b!6217809 (= e!3785098 (matchR!8336 (derivativeStep!4866 (regOne!32818 r!7292) (head!12812 (_1!36435 (get!22323 lt!2344494)))) (tail!11897 (_1!36435 (get!22323 lt!2344494)))))))

(declare-fun b!6217810 () Bool)

(assert (=> b!6217810 (= e!3785097 (not lt!2344528))))

(declare-fun b!6217811 () Bool)

(assert (=> b!6217811 (= e!3785095 (= (head!12812 (_1!36435 (get!22323 lt!2344494))) (c!1122921 (regOne!32818 r!7292))))))

(declare-fun b!6217812 () Bool)

(assert (=> b!6217812 (= e!3785099 e!3785097)))

(declare-fun c!1123250 () Bool)

(assert (=> b!6217812 (= c!1123250 ((_ is EmptyLang!16153) (regOne!32818 r!7292)))))

(declare-fun b!6217813 () Bool)

(declare-fun res!2570150 () Bool)

(assert (=> b!6217813 (=> (not res!2570150) (not e!3785095))))

(assert (=> b!6217813 (= res!2570150 (not call!521647))))

(declare-fun b!6217814 () Bool)

(declare-fun res!2570148 () Bool)

(assert (=> b!6217814 (=> (not res!2570148) (not e!3785095))))

(assert (=> b!6217814 (= res!2570148 (isEmpty!36642 (tail!11897 (_1!36435 (get!22323 lt!2344494)))))))

(assert (= (and d!1949064 c!1123252) b!6217806))

(assert (= (and d!1949064 (not c!1123252)) b!6217809))

(assert (= (and d!1949064 c!1123251) b!6217807))

(assert (= (and d!1949064 (not c!1123251)) b!6217812))

(assert (= (and b!6217812 c!1123250) b!6217810))

(assert (= (and b!6217812 (not c!1123250)) b!6217805))

(assert (= (and b!6217805 (not res!2570147)) b!6217802))

(assert (= (and b!6217802 res!2570152) b!6217813))

(assert (= (and b!6217813 res!2570150) b!6217814))

(assert (= (and b!6217814 res!2570148) b!6217811))

(assert (= (and b!6217802 (not res!2570146)) b!6217808))

(assert (= (and b!6217808 res!2570149) b!6217801))

(assert (= (and b!6217801 (not res!2570153)) b!6217803))

(assert (= (and b!6217803 (not res!2570151)) b!6217804))

(assert (= (or b!6217807 b!6217801 b!6217813) bm!521642))

(declare-fun m!7046268 () Bool)

(assert (=> b!6217803 m!7046268))

(assert (=> b!6217803 m!7046268))

(declare-fun m!7046270 () Bool)

(assert (=> b!6217803 m!7046270))

(declare-fun m!7046272 () Bool)

(assert (=> d!1949064 m!7046272))

(assert (=> d!1949064 m!7045752))

(assert (=> b!6217814 m!7046268))

(assert (=> b!6217814 m!7046268))

(assert (=> b!6217814 m!7046270))

(assert (=> b!6217806 m!7045926))

(assert (=> bm!521642 m!7046272))

(declare-fun m!7046274 () Bool)

(assert (=> b!6217811 m!7046274))

(assert (=> b!6217804 m!7046274))

(assert (=> b!6217809 m!7046274))

(assert (=> b!6217809 m!7046274))

(declare-fun m!7046276 () Bool)

(assert (=> b!6217809 m!7046276))

(assert (=> b!6217809 m!7046268))

(assert (=> b!6217809 m!7046276))

(assert (=> b!6217809 m!7046268))

(declare-fun m!7046278 () Bool)

(assert (=> b!6217809 m!7046278))

(assert (=> b!6217253 d!1949064))

(assert (=> b!6217253 d!1948862))

(declare-fun d!1949066 () Bool)

(declare-fun res!2570154 () Bool)

(declare-fun e!3785100 () Bool)

(assert (=> d!1949066 (=> res!2570154 e!3785100)))

(assert (=> d!1949066 (= res!2570154 ((_ is Nil!64634) (exprs!6037 setElem!42210)))))

(assert (=> d!1949066 (= (forall!15267 (exprs!6037 setElem!42210) lambda!339771) e!3785100)))

(declare-fun b!6217815 () Bool)

(declare-fun e!3785101 () Bool)

(assert (=> b!6217815 (= e!3785100 e!3785101)))

(declare-fun res!2570155 () Bool)

(assert (=> b!6217815 (=> (not res!2570155) (not e!3785101))))

(assert (=> b!6217815 (= res!2570155 (dynLambda!25500 lambda!339771 (h!71082 (exprs!6037 setElem!42210))))))

(declare-fun b!6217816 () Bool)

(assert (=> b!6217816 (= e!3785101 (forall!15267 (t!378286 (exprs!6037 setElem!42210)) lambda!339771))))

(assert (= (and d!1949066 (not res!2570154)) b!6217815))

(assert (= (and b!6217815 res!2570155) b!6217816))

(declare-fun b_lambda!236371 () Bool)

(assert (=> (not b_lambda!236371) (not b!6217815)))

(declare-fun m!7046280 () Bool)

(assert (=> b!6217815 m!7046280))

(declare-fun m!7046282 () Bool)

(assert (=> b!6217816 m!7046282))

(assert (=> d!1948850 d!1949066))

(declare-fun bs!1542090 () Bool)

(declare-fun d!1949068 () Bool)

(assert (= bs!1542090 (and d!1949068 d!1948914)))

(declare-fun lambda!339802 () Int)

(assert (=> bs!1542090 (= lambda!339802 lambda!339783)))

(declare-fun bs!1542091 () Bool)

(assert (= bs!1542091 (and d!1949068 d!1948952)))

(assert (=> bs!1542091 (= lambda!339802 lambda!339787)))

(declare-fun bs!1542092 () Bool)

(assert (= bs!1542092 (and d!1949068 d!1949030)))

(assert (=> bs!1542092 (= lambda!339802 lambda!339795)))

(declare-fun bs!1542093 () Bool)

(assert (= bs!1542093 (and d!1949068 d!1949050)))

(assert (=> bs!1542093 (= lambda!339802 lambda!339801)))

(assert (=> d!1949068 (= (nullableZipper!1926 lt!2344396) (exists!2486 lt!2344396 lambda!339802))))

(declare-fun bs!1542094 () Bool)

(assert (= bs!1542094 d!1949068))

(declare-fun m!7046284 () Bool)

(assert (=> bs!1542094 m!7046284))

(assert (=> b!6216986 d!1949068))

(declare-fun d!1949070 () Bool)

(assert (=> d!1949070 (= (isEmpty!36643 (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326)) (not ((_ is Some!16043) (findConcatSeparation!2458 (regOne!32818 r!7292) (regTwo!32818 r!7292) Nil!64636 s!2326 s!2326))))))

(assert (=> d!1948840 d!1949070))

(assert (=> bs!1541964 d!1948786))

(declare-fun c!1123255 () Bool)

(declare-fun c!1123254 () Bool)

(declare-fun call!521651 () List!64758)

(declare-fun bm!521643 () Bool)

(declare-fun c!1123256 () Bool)

(declare-fun call!521649 () (InoxSet Context!11074))

(assert (=> bm!521643 (= call!521649 (derivationStepZipperDown!1401 (ite c!1123255 (regTwo!32819 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))) (ite c!1123256 (regTwo!32818 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))) (ite c!1123254 (regOne!32818 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))) (reg!16482 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292)))))))))) (ite (or c!1123255 c!1123256) (ite (or c!1123112 c!1123113) lt!2344415 (Context!11075 call!521552)) (Context!11075 call!521651)) (h!71084 s!2326)))))

(declare-fun b!6217817 () Bool)

(declare-fun e!3785103 () (InoxSet Context!11074))

(declare-fun e!3785107 () (InoxSet Context!11074))

(assert (=> b!6217817 (= e!3785103 e!3785107)))

(assert (=> b!6217817 (= c!1123255 ((_ is Union!16153) (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))))))

(declare-fun d!1949072 () Bool)

(declare-fun c!1123253 () Bool)

(assert (=> d!1949072 (= c!1123253 (and ((_ is ElementMatch!16153) (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))) (= (c!1122921 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))) (h!71084 s!2326))))))

(assert (=> d!1949072 (= (derivationStepZipperDown!1401 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292)))))) (ite (or c!1123112 c!1123113) lt!2344415 (Context!11075 call!521552)) (h!71084 s!2326)) e!3785103)))

(declare-fun b!6217818 () Bool)

(declare-fun e!3785104 () Bool)

(assert (=> b!6217818 (= c!1123256 e!3785104)))

(declare-fun res!2570156 () Bool)

(assert (=> b!6217818 (=> (not res!2570156) (not e!3785104))))

(assert (=> b!6217818 (= res!2570156 ((_ is Concat!24998) (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))))))

(declare-fun e!3785105 () (InoxSet Context!11074))

(assert (=> b!6217818 (= e!3785107 e!3785105)))

(declare-fun bm!521644 () Bool)

(declare-fun call!521652 () (InoxSet Context!11074))

(declare-fun call!521648 () (InoxSet Context!11074))

(assert (=> bm!521644 (= call!521652 call!521648)))

(declare-fun b!6217819 () Bool)

(declare-fun e!3785106 () (InoxSet Context!11074))

(assert (=> b!6217819 (= e!3785106 call!521652)))

(declare-fun bm!521645 () Bool)

(declare-fun call!521650 () List!64758)

(assert (=> bm!521645 (= call!521650 ($colon$colon!2022 (exprs!6037 (ite (or c!1123112 c!1123113) lt!2344415 (Context!11075 call!521552))) (ite (or c!1123256 c!1123254) (regTwo!32818 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))) (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292)))))))))))

(declare-fun b!6217820 () Bool)

(assert (=> b!6217820 (= e!3785103 (store ((as const (Array Context!11074 Bool)) false) (ite (or c!1123112 c!1123113) lt!2344415 (Context!11075 call!521552)) true))))

(declare-fun call!521653 () (InoxSet Context!11074))

(declare-fun bm!521646 () Bool)

(assert (=> bm!521646 (= call!521653 (derivationStepZipperDown!1401 (ite c!1123255 (regOne!32819 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))) (regOne!32818 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292)))))))) (ite c!1123255 (ite (or c!1123112 c!1123113) lt!2344415 (Context!11075 call!521552)) (Context!11075 call!521650)) (h!71084 s!2326)))))

(declare-fun b!6217821 () Bool)

(declare-fun e!3785102 () (InoxSet Context!11074))

(assert (=> b!6217821 (= e!3785102 call!521652)))

(declare-fun b!6217822 () Bool)

(assert (=> b!6217822 (= e!3785104 (nullable!6146 (regOne!32818 (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292)))))))))))

(declare-fun c!1123257 () Bool)

(declare-fun b!6217823 () Bool)

(assert (=> b!6217823 (= c!1123257 ((_ is Star!16153) (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))))))

(assert (=> b!6217823 (= e!3785106 e!3785102)))

(declare-fun b!6217824 () Bool)

(assert (=> b!6217824 (= e!3785107 ((_ map or) call!521653 call!521649))))

(declare-fun bm!521647 () Bool)

(assert (=> bm!521647 (= call!521648 call!521649)))

(declare-fun b!6217825 () Bool)

(assert (=> b!6217825 (= e!3785105 e!3785106)))

(assert (=> b!6217825 (= c!1123254 ((_ is Concat!24998) (ite c!1123112 (regTwo!32819 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123113 (regTwo!32818 (regTwo!32818 (regOne!32818 r!7292))) (ite c!1123111 (regOne!32818 (regTwo!32818 (regOne!32818 r!7292))) (reg!16482 (regTwo!32818 (regOne!32818 r!7292))))))))))

(declare-fun bm!521648 () Bool)

(assert (=> bm!521648 (= call!521651 call!521650)))

(declare-fun b!6217826 () Bool)

(assert (=> b!6217826 (= e!3785105 ((_ map or) call!521653 call!521648))))

(declare-fun b!6217827 () Bool)

(assert (=> b!6217827 (= e!3785102 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1949072 c!1123253) b!6217820))

(assert (= (and d!1949072 (not c!1123253)) b!6217817))

(assert (= (and b!6217817 c!1123255) b!6217824))

(assert (= (and b!6217817 (not c!1123255)) b!6217818))

(assert (= (and b!6217818 res!2570156) b!6217822))

(assert (= (and b!6217818 c!1123256) b!6217826))

(assert (= (and b!6217818 (not c!1123256)) b!6217825))

(assert (= (and b!6217825 c!1123254) b!6217819))

(assert (= (and b!6217825 (not c!1123254)) b!6217823))

(assert (= (and b!6217823 c!1123257) b!6217821))

(assert (= (and b!6217823 (not c!1123257)) b!6217827))

(assert (= (or b!6217819 b!6217821) bm!521648))

(assert (= (or b!6217819 b!6217821) bm!521644))

(assert (= (or b!6217826 bm!521648) bm!521645))

(assert (= (or b!6217826 bm!521644) bm!521647))

(assert (= (or b!6217824 bm!521647) bm!521643))

(assert (= (or b!6217824 b!6217826) bm!521646))

(declare-fun m!7046286 () Bool)

(assert (=> b!6217820 m!7046286))

(declare-fun m!7046288 () Bool)

(assert (=> bm!521643 m!7046288))

(declare-fun m!7046290 () Bool)

(assert (=> bm!521645 m!7046290))

(declare-fun m!7046292 () Bool)

(assert (=> b!6217822 m!7046292))

(declare-fun m!7046294 () Bool)

(assert (=> bm!521646 m!7046294))

(assert (=> bm!521544 d!1949072))

(assert (=> b!6216954 d!1948946))

(assert (=> d!1948728 d!1948722))

(declare-fun d!1949074 () Bool)

(assert (=> d!1949074 (= (flatMap!1658 lt!2344404 lambda!339713) (dynLambda!25499 lambda!339713 lt!2344414))))

(assert (=> d!1949074 true))

(declare-fun _$13!3240 () Unit!157943)

(assert (=> d!1949074 (= (choose!46195 lt!2344404 lt!2344414 lambda!339713) _$13!3240)))

(declare-fun b_lambda!236373 () Bool)

(assert (=> (not b_lambda!236373) (not d!1949074)))

(declare-fun bs!1542095 () Bool)

(assert (= bs!1542095 d!1949074))

(assert (=> bs!1542095 m!7045318))

(assert (=> bs!1542095 m!7045452))

(assert (=> d!1948728 d!1949074))

(declare-fun bs!1542096 () Bool)

(declare-fun d!1949076 () Bool)

(assert (= bs!1542096 (and d!1949076 d!1948720)))

(declare-fun lambda!339803 () Int)

(assert (=> bs!1542096 (= lambda!339803 lambda!339734)))

(declare-fun bs!1542097 () Bool)

(assert (= bs!1542097 (and d!1949076 d!1949034)))

(assert (=> bs!1542097 (= lambda!339803 lambda!339796)))

(declare-fun bs!1542098 () Bool)

(assert (= bs!1542098 (and d!1949076 d!1948970)))

(assert (=> bs!1542098 (= lambda!339803 lambda!339789)))

(declare-fun bs!1542099 () Bool)

(assert (= bs!1542099 (and d!1949076 d!1948776)))

(assert (=> bs!1542099 (= lambda!339803 lambda!339756)))

(declare-fun bs!1542100 () Bool)

(assert (= bs!1542100 (and d!1949076 d!1948940)))

(assert (=> bs!1542100 (= lambda!339803 lambda!339784)))

(declare-fun bs!1542101 () Bool)

(assert (= bs!1542101 (and d!1949076 d!1948762)))

(assert (=> bs!1542101 (= lambda!339803 lambda!339748)))

(declare-fun bs!1542102 () Bool)

(assert (= bs!1542102 (and d!1949076 d!1949020)))

(assert (=> bs!1542102 (= lambda!339803 lambda!339794)))

(declare-fun bs!1542103 () Bool)

(assert (= bs!1542103 (and d!1949076 d!1948768)))

(assert (=> bs!1542103 (= lambda!339803 lambda!339751)))

(declare-fun bs!1542104 () Bool)

(assert (= bs!1542104 (and d!1949076 d!1948850)))

(assert (=> bs!1542104 (= lambda!339803 lambda!339771)))

(declare-fun bs!1542105 () Bool)

(assert (= bs!1542105 (and d!1949076 d!1948848)))

(assert (=> bs!1542105 (= lambda!339803 lambda!339770)))

(assert (=> d!1949076 (= (inv!83629 setElem!42216) (forall!15267 (exprs!6037 setElem!42216) lambda!339803))))

(declare-fun bs!1542106 () Bool)

(assert (= bs!1542106 d!1949076))

(declare-fun m!7046296 () Bool)

(assert (=> bs!1542106 m!7046296))

(assert (=> setNonEmpty!42216 d!1949076))

(declare-fun d!1949078 () Bool)

(assert (=> d!1949078 (= (head!12815 (exprs!6037 (h!71083 zl!343))) (h!71082 (exprs!6037 (h!71083 zl!343))))))

(assert (=> b!6217344 d!1949078))

(declare-fun d!1949080 () Bool)

(declare-fun res!2570157 () Bool)

(declare-fun e!3785108 () Bool)

(assert (=> d!1949080 (=> res!2570157 e!3785108)))

(assert (=> d!1949080 (= res!2570157 ((_ is Nil!64634) (exprs!6037 (h!71083 zl!343))))))

(assert (=> d!1949080 (= (forall!15267 (exprs!6037 (h!71083 zl!343)) lambda!339748) e!3785108)))

(declare-fun b!6217828 () Bool)

(declare-fun e!3785109 () Bool)

(assert (=> b!6217828 (= e!3785108 e!3785109)))

(declare-fun res!2570158 () Bool)

(assert (=> b!6217828 (=> (not res!2570158) (not e!3785109))))

(assert (=> b!6217828 (= res!2570158 (dynLambda!25500 lambda!339748 (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun b!6217829 () Bool)

(assert (=> b!6217829 (= e!3785109 (forall!15267 (t!378286 (exprs!6037 (h!71083 zl!343))) lambda!339748))))

(assert (= (and d!1949080 (not res!2570157)) b!6217828))

(assert (= (and b!6217828 res!2570158) b!6217829))

(declare-fun b_lambda!236375 () Bool)

(assert (=> (not b_lambda!236375) (not b!6217828)))

(declare-fun m!7046298 () Bool)

(assert (=> b!6217828 m!7046298))

(declare-fun m!7046300 () Bool)

(assert (=> b!6217829 m!7046300))

(assert (=> d!1948762 d!1949080))

(declare-fun bs!1542107 () Bool)

(declare-fun d!1949082 () Bool)

(assert (= bs!1542107 (and d!1949082 d!1949030)))

(declare-fun lambda!339804 () Int)

(assert (=> bs!1542107 (= lambda!339804 lambda!339795)))

(declare-fun bs!1542108 () Bool)

(assert (= bs!1542108 (and d!1949082 d!1948952)))

(assert (=> bs!1542108 (= lambda!339804 lambda!339787)))

(declare-fun bs!1542109 () Bool)

(assert (= bs!1542109 (and d!1949082 d!1949050)))

(assert (=> bs!1542109 (= lambda!339804 lambda!339801)))

(declare-fun bs!1542110 () Bool)

(assert (= bs!1542110 (and d!1949082 d!1948914)))

(assert (=> bs!1542110 (= lambda!339804 lambda!339783)))

(declare-fun bs!1542111 () Bool)

(assert (= bs!1542111 (and d!1949082 d!1949068)))

(assert (=> bs!1542111 (= lambda!339804 lambda!339802)))

(assert (=> d!1949082 (= (nullableZipper!1926 lt!2344412) (exists!2486 lt!2344412 lambda!339804))))

(declare-fun bs!1542112 () Bool)

(assert (= bs!1542112 d!1949082))

(declare-fun m!7046302 () Bool)

(assert (=> bs!1542112 m!7046302))

(assert (=> b!6216979 d!1949082))

(assert (=> d!1948712 d!1948866))

(declare-fun c!1123260 () Bool)

(declare-fun c!1123261 () Bool)

(declare-fun c!1123259 () Bool)

(declare-fun bm!521649 () Bool)

(declare-fun call!521657 () List!64758)

(declare-fun call!521655 () (InoxSet Context!11074))

(assert (=> bm!521649 (= call!521655 (derivationStepZipperDown!1401 (ite c!1123260 (regTwo!32819 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))) (ite c!1123261 (regTwo!32818 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))) (ite c!1123259 (regOne!32818 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))) (reg!16482 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343))))))))))) (ite (or c!1123260 c!1123261) (ite (or c!1123082 c!1123083) lt!2344415 (Context!11075 call!521525)) (Context!11075 call!521657)) (h!71084 s!2326)))))

(declare-fun b!6217830 () Bool)

(declare-fun e!3785111 () (InoxSet Context!11074))

(declare-fun e!3785115 () (InoxSet Context!11074))

(assert (=> b!6217830 (= e!3785111 e!3785115)))

(assert (=> b!6217830 (= c!1123260 ((_ is Union!16153) (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun d!1949084 () Bool)

(declare-fun c!1123258 () Bool)

(assert (=> d!1949084 (= c!1123258 (and ((_ is ElementMatch!16153) (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))) (= (c!1122921 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))) (h!71084 s!2326))))))

(assert (=> d!1949084 (= (derivationStepZipperDown!1401 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343))))))) (ite (or c!1123082 c!1123083) lt!2344415 (Context!11075 call!521525)) (h!71084 s!2326)) e!3785111)))

(declare-fun b!6217831 () Bool)

(declare-fun e!3785112 () Bool)

(assert (=> b!6217831 (= c!1123261 e!3785112)))

(declare-fun res!2570159 () Bool)

(assert (=> b!6217831 (=> (not res!2570159) (not e!3785112))))

(assert (=> b!6217831 (= res!2570159 ((_ is Concat!24998) (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun e!3785113 () (InoxSet Context!11074))

(assert (=> b!6217831 (= e!3785115 e!3785113)))

(declare-fun bm!521650 () Bool)

(declare-fun call!521658 () (InoxSet Context!11074))

(declare-fun call!521654 () (InoxSet Context!11074))

(assert (=> bm!521650 (= call!521658 call!521654)))

(declare-fun b!6217832 () Bool)

(declare-fun e!3785114 () (InoxSet Context!11074))

(assert (=> b!6217832 (= e!3785114 call!521658)))

(declare-fun call!521656 () List!64758)

(declare-fun bm!521651 () Bool)

(assert (=> bm!521651 (= call!521656 ($colon$colon!2022 (exprs!6037 (ite (or c!1123082 c!1123083) lt!2344415 (Context!11075 call!521525))) (ite (or c!1123261 c!1123259) (regTwo!32818 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))) (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343))))))))))))

(declare-fun b!6217833 () Bool)

(assert (=> b!6217833 (= e!3785111 (store ((as const (Array Context!11074 Bool)) false) (ite (or c!1123082 c!1123083) lt!2344415 (Context!11075 call!521525)) true))))

(declare-fun call!521659 () (InoxSet Context!11074))

(declare-fun bm!521652 () Bool)

(assert (=> bm!521652 (= call!521659 (derivationStepZipperDown!1401 (ite c!1123260 (regOne!32819 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))) (regOne!32818 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343))))))))) (ite c!1123260 (ite (or c!1123082 c!1123083) lt!2344415 (Context!11075 call!521525)) (Context!11075 call!521656)) (h!71084 s!2326)))))

(declare-fun b!6217834 () Bool)

(declare-fun e!3785110 () (InoxSet Context!11074))

(assert (=> b!6217834 (= e!3785110 call!521658)))

(declare-fun b!6217835 () Bool)

(assert (=> b!6217835 (= e!3785112 (nullable!6146 (regOne!32818 (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343))))))))))))

(declare-fun c!1123262 () Bool)

(declare-fun b!6217836 () Bool)

(assert (=> b!6217836 (= c!1123262 ((_ is Star!16153) (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))))

(assert (=> b!6217836 (= e!3785114 e!3785110)))

(declare-fun b!6217837 () Bool)

(assert (=> b!6217837 (= e!3785115 ((_ map or) call!521659 call!521655))))

(declare-fun bm!521653 () Bool)

(assert (=> bm!521653 (= call!521654 call!521655)))

(declare-fun b!6217838 () Bool)

(assert (=> b!6217838 (= e!3785113 e!3785114)))

(assert (=> b!6217838 (= c!1123259 ((_ is Concat!24998) (ite c!1123082 (regTwo!32819 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123083 (regTwo!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (ite c!1123081 (regOne!32818 (h!71082 (exprs!6037 (h!71083 zl!343)))) (reg!16482 (h!71082 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun bm!521654 () Bool)

(assert (=> bm!521654 (= call!521657 call!521656)))

(declare-fun b!6217839 () Bool)

(assert (=> b!6217839 (= e!3785113 ((_ map or) call!521659 call!521654))))

(declare-fun b!6217840 () Bool)

(assert (=> b!6217840 (= e!3785110 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1949084 c!1123258) b!6217833))

(assert (= (and d!1949084 (not c!1123258)) b!6217830))

(assert (= (and b!6217830 c!1123260) b!6217837))

(assert (= (and b!6217830 (not c!1123260)) b!6217831))

(assert (= (and b!6217831 res!2570159) b!6217835))

(assert (= (and b!6217831 c!1123261) b!6217839))

(assert (= (and b!6217831 (not c!1123261)) b!6217838))

(assert (= (and b!6217838 c!1123259) b!6217832))

(assert (= (and b!6217838 (not c!1123259)) b!6217836))

(assert (= (and b!6217836 c!1123262) b!6217834))

(assert (= (and b!6217836 (not c!1123262)) b!6217840))

(assert (= (or b!6217832 b!6217834) bm!521654))

(assert (= (or b!6217832 b!6217834) bm!521650))

(assert (= (or b!6217839 bm!521654) bm!521651))

(assert (= (or b!6217839 bm!521650) bm!521653))

(assert (= (or b!6217837 bm!521653) bm!521649))

(assert (= (or b!6217837 b!6217839) bm!521652))

(declare-fun m!7046304 () Bool)

(assert (=> b!6217833 m!7046304))

(declare-fun m!7046306 () Bool)

(assert (=> bm!521649 m!7046306))

(declare-fun m!7046308 () Bool)

(assert (=> bm!521651 m!7046308))

(declare-fun m!7046310 () Bool)

(assert (=> b!6217835 m!7046310))

(declare-fun m!7046312 () Bool)

(assert (=> bm!521652 m!7046312))

(assert (=> bm!521517 d!1949084))

(declare-fun d!1949086 () Bool)

(declare-fun c!1123263 () Bool)

(assert (=> d!1949086 (= c!1123263 (isEmpty!36642 (tail!11897 (t!378288 s!2326))))))

(declare-fun e!3785116 () Bool)

(assert (=> d!1949086 (= (matchZipper!2165 (derivationStepZipper!2118 lt!2344417 (head!12812 (t!378288 s!2326))) (tail!11897 (t!378288 s!2326))) e!3785116)))

(declare-fun b!6217841 () Bool)

(assert (=> b!6217841 (= e!3785116 (nullableZipper!1926 (derivationStepZipper!2118 lt!2344417 (head!12812 (t!378288 s!2326)))))))

(declare-fun b!6217842 () Bool)

(assert (=> b!6217842 (= e!3785116 (matchZipper!2165 (derivationStepZipper!2118 (derivationStepZipper!2118 lt!2344417 (head!12812 (t!378288 s!2326))) (head!12812 (tail!11897 (t!378288 s!2326)))) (tail!11897 (tail!11897 (t!378288 s!2326)))))))

(assert (= (and d!1949086 c!1123263) b!6217841))

(assert (= (and d!1949086 (not c!1123263)) b!6217842))

(assert (=> d!1949086 m!7045414))

(assert (=> d!1949086 m!7045894))

(assert (=> b!6217841 m!7045426))

(declare-fun m!7046314 () Bool)

(assert (=> b!6217841 m!7046314))

(assert (=> b!6217842 m!7045414))

(assert (=> b!6217842 m!7045898))

(assert (=> b!6217842 m!7045426))

(assert (=> b!6217842 m!7045898))

(declare-fun m!7046316 () Bool)

(assert (=> b!6217842 m!7046316))

(assert (=> b!6217842 m!7045414))

(assert (=> b!6217842 m!7045902))

(assert (=> b!6217842 m!7046316))

(assert (=> b!6217842 m!7045902))

(declare-fun m!7046318 () Bool)

(assert (=> b!6217842 m!7046318))

(assert (=> b!6216740 d!1949086))

(declare-fun bs!1542113 () Bool)

(declare-fun d!1949088 () Bool)

(assert (= bs!1542113 (and d!1949088 d!1949038)))

(declare-fun lambda!339805 () Int)

(assert (=> bs!1542113 (= lambda!339805 lambda!339797)))

(declare-fun bs!1542114 () Bool)

(assert (= bs!1542114 (and d!1949088 d!1948958)))

(assert (=> bs!1542114 (= lambda!339805 lambda!339788)))

(declare-fun bs!1542115 () Bool)

(assert (= bs!1542115 (and d!1949088 d!1948898)))

(assert (=> bs!1542115 (= lambda!339805 lambda!339780)))

(declare-fun bs!1542116 () Bool)

(assert (= bs!1542116 (and d!1949088 d!1948974)))

(assert (=> bs!1542116 (= lambda!339805 lambda!339790)))

(declare-fun bs!1542117 () Bool)

(assert (= bs!1542117 (and d!1949088 b!6216622)))

(assert (=> bs!1542117 (= (= (head!12812 (t!378288 s!2326)) (h!71084 s!2326)) (= lambda!339805 lambda!339713))))

(declare-fun bs!1542118 () Bool)

(assert (= bs!1542118 (and d!1949088 d!1948992)))

(assert (=> bs!1542118 (= lambda!339805 lambda!339791)))

(assert (=> d!1949088 true))

(assert (=> d!1949088 (= (derivationStepZipper!2118 lt!2344417 (head!12812 (t!378288 s!2326))) (flatMap!1658 lt!2344417 lambda!339805))))

(declare-fun bs!1542119 () Bool)

(assert (= bs!1542119 d!1949088))

(declare-fun m!7046320 () Bool)

(assert (=> bs!1542119 m!7046320))

(assert (=> b!6216740 d!1949088))

(assert (=> b!6216740 d!1948900))

(assert (=> b!6216740 d!1948902))

(declare-fun call!521663 () List!64758)

(declare-fun c!1123266 () Bool)

(declare-fun c!1123265 () Bool)

(declare-fun bm!521655 () Bool)

(declare-fun c!1123267 () Bool)

(declare-fun call!521661 () (InoxSet Context!11074))

(assert (=> bm!521655 (= call!521661 (derivationStepZipperDown!1401 (ite c!1123266 (regTwo!32819 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (ite c!1123267 (regTwo!32818 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (ite c!1123265 (regOne!32818 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (reg!16482 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))) (ite (or c!1123266 c!1123267) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (Context!11075 call!521663)) (h!71084 s!2326)))))

(declare-fun b!6217843 () Bool)

(declare-fun e!3785118 () (InoxSet Context!11074))

(declare-fun e!3785122 () (InoxSet Context!11074))

(assert (=> b!6217843 (= e!3785118 e!3785122)))

(assert (=> b!6217843 (= c!1123266 ((_ is Union!16153) (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun d!1949090 () Bool)

(declare-fun c!1123264 () Bool)

(assert (=> d!1949090 (= c!1123264 (and ((_ is ElementMatch!16153) (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (= (c!1122921 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (h!71084 s!2326))))))

(assert (=> d!1949090 (= (derivationStepZipperDown!1401 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (h!71084 s!2326)) e!3785118)))

(declare-fun b!6217844 () Bool)

(declare-fun e!3785119 () Bool)

(assert (=> b!6217844 (= c!1123267 e!3785119)))

(declare-fun res!2570160 () Bool)

(assert (=> b!6217844 (=> (not res!2570160) (not e!3785119))))

(assert (=> b!6217844 (= res!2570160 ((_ is Concat!24998) (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun e!3785120 () (InoxSet Context!11074))

(assert (=> b!6217844 (= e!3785122 e!3785120)))

(declare-fun bm!521656 () Bool)

(declare-fun call!521664 () (InoxSet Context!11074))

(declare-fun call!521660 () (InoxSet Context!11074))

(assert (=> bm!521656 (= call!521664 call!521660)))

(declare-fun b!6217845 () Bool)

(declare-fun e!3785121 () (InoxSet Context!11074))

(assert (=> b!6217845 (= e!3785121 call!521664)))

(declare-fun bm!521657 () Bool)

(declare-fun call!521662 () List!64758)

(assert (=> bm!521657 (= call!521662 ($colon$colon!2022 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))) (ite (or c!1123267 c!1123265) (regTwo!32818 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))))

(declare-fun b!6217846 () Bool)

(assert (=> b!6217846 (= e!3785118 (store ((as const (Array Context!11074 Bool)) false) (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) true))))

(declare-fun call!521665 () (InoxSet Context!11074))

(declare-fun bm!521658 () Bool)

(assert (=> bm!521658 (= call!521665 (derivationStepZipperDown!1401 (ite c!1123266 (regOne!32819 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (regOne!32818 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))) (ite c!1123266 (Context!11075 (t!378286 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))) (Context!11075 call!521662)) (h!71084 s!2326)))))

(declare-fun b!6217847 () Bool)

(declare-fun e!3785117 () (InoxSet Context!11074))

(assert (=> b!6217847 (= e!3785117 call!521664)))

(declare-fun b!6217848 () Bool)

(assert (=> b!6217848 (= e!3785119 (nullable!6146 (regOne!32818 (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343))))))))))))

(declare-fun b!6217849 () Bool)

(declare-fun c!1123268 () Bool)

(assert (=> b!6217849 (= c!1123268 ((_ is Star!16153) (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))

(assert (=> b!6217849 (= e!3785121 e!3785117)))

(declare-fun b!6217850 () Bool)

(assert (=> b!6217850 (= e!3785122 ((_ map or) call!521665 call!521661))))

(declare-fun bm!521659 () Bool)

(assert (=> bm!521659 (= call!521660 call!521661)))

(declare-fun b!6217851 () Bool)

(assert (=> b!6217851 (= e!3785120 e!3785121)))

(assert (=> b!6217851 (= c!1123265 ((_ is Concat!24998) (h!71082 (exprs!6037 (Context!11075 (Cons!64634 (h!71082 (exprs!6037 (h!71083 zl!343))) (t!378286 (exprs!6037 (h!71083 zl!343)))))))))))

(declare-fun bm!521660 () Bool)

(assert (=> bm!521660 (= call!521663 call!521662)))

(declare-fun b!6217852 () Bool)

(assert (=> b!6217852 (= e!3785120 ((_ map or) call!521665 call!521660))))

(declare-fun b!6217853 () Bool)

(assert (=> b!6217853 (= e!3785117 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1949090 c!1123264) b!6217846))

(assert (= (and d!1949090 (not c!1123264)) b!6217843))

(assert (= (and b!6217843 c!1123266) b!6217850))

(assert (= (and b!6217843 (not c!1123266)) b!6217844))

(assert (= (and b!6217844 res!2570160) b!6217848))

(assert (= (and b!6217844 c!1123267) b!6217852))

(assert (= (and b!6217844 (not c!1123267)) b!6217851))

(assert (= (and b!6217851 c!1123265) b!6217845))

(assert (= (and b!6217851 (not c!1123265)) b!6217849))

(assert (= (and b!6217849 c!1123268) b!6217847))

(assert (= (and b!6217849 (not c!1123268)) b!6217853))

(assert (= (or b!6217845 b!6217847) bm!521660))

(assert (= (or b!6217845 b!6217847) bm!521656))

(assert (= (or b!6217852 bm!521660) bm!521657))

(assert (= (or b!6217852 bm!521656) bm!521659))

(assert (= (or b!6217850 bm!521659) bm!521655))

(assert (= (or b!6217850 b!6217852) bm!521658))

(declare-fun m!7046322 () Bool)

(assert (=> b!6217846 m!7046322))

(declare-fun m!7046324 () Bool)

(assert (=> bm!521655 m!7046324))

(declare-fun m!7046326 () Bool)

(assert (=> bm!521657 m!7046326))

(declare-fun m!7046328 () Bool)

(assert (=> b!6217848 m!7046328))

(declare-fun m!7046330 () Bool)

(assert (=> bm!521658 m!7046330))

(assert (=> bm!521496 d!1949090))

(assert (=> bm!521476 d!1948982))

(declare-fun c!1123272 () Bool)

(declare-fun call!521667 () (InoxSet Context!11074))

(declare-fun c!1123271 () Bool)

(declare-fun call!521669 () List!64758)

(declare-fun bm!521661 () Bool)

(declare-fun c!1123270 () Bool)

(assert (=> bm!521661 (= call!521667 (derivationStepZipperDown!1401 (ite c!1123271 (regTwo!32819 (h!71082 (exprs!6037 lt!2344414))) (ite c!1123272 (regTwo!32818 (h!71082 (exprs!6037 lt!2344414))) (ite c!1123270 (regOne!32818 (h!71082 (exprs!6037 lt!2344414))) (reg!16482 (h!71082 (exprs!6037 lt!2344414)))))) (ite (or c!1123271 c!1123272) (Context!11075 (t!378286 (exprs!6037 lt!2344414))) (Context!11075 call!521669)) (h!71084 s!2326)))))

(declare-fun b!6217854 () Bool)

(declare-fun e!3785124 () (InoxSet Context!11074))

(declare-fun e!3785128 () (InoxSet Context!11074))

(assert (=> b!6217854 (= e!3785124 e!3785128)))

(assert (=> b!6217854 (= c!1123271 ((_ is Union!16153) (h!71082 (exprs!6037 lt!2344414))))))

(declare-fun d!1949092 () Bool)

(declare-fun c!1123269 () Bool)

(assert (=> d!1949092 (= c!1123269 (and ((_ is ElementMatch!16153) (h!71082 (exprs!6037 lt!2344414))) (= (c!1122921 (h!71082 (exprs!6037 lt!2344414))) (h!71084 s!2326))))))

(assert (=> d!1949092 (= (derivationStepZipperDown!1401 (h!71082 (exprs!6037 lt!2344414)) (Context!11075 (t!378286 (exprs!6037 lt!2344414))) (h!71084 s!2326)) e!3785124)))

(declare-fun b!6217855 () Bool)

(declare-fun e!3785125 () Bool)

(assert (=> b!6217855 (= c!1123272 e!3785125)))

(declare-fun res!2570161 () Bool)

(assert (=> b!6217855 (=> (not res!2570161) (not e!3785125))))

(assert (=> b!6217855 (= res!2570161 ((_ is Concat!24998) (h!71082 (exprs!6037 lt!2344414))))))

(declare-fun e!3785126 () (InoxSet Context!11074))

(assert (=> b!6217855 (= e!3785128 e!3785126)))

(declare-fun bm!521662 () Bool)

(declare-fun call!521670 () (InoxSet Context!11074))

(declare-fun call!521666 () (InoxSet Context!11074))

(assert (=> bm!521662 (= call!521670 call!521666)))

(declare-fun b!6217856 () Bool)

(declare-fun e!3785127 () (InoxSet Context!11074))

(assert (=> b!6217856 (= e!3785127 call!521670)))

(declare-fun bm!521663 () Bool)

(declare-fun call!521668 () List!64758)

(assert (=> bm!521663 (= call!521668 ($colon$colon!2022 (exprs!6037 (Context!11075 (t!378286 (exprs!6037 lt!2344414)))) (ite (or c!1123272 c!1123270) (regTwo!32818 (h!71082 (exprs!6037 lt!2344414))) (h!71082 (exprs!6037 lt!2344414)))))))

(declare-fun b!6217857 () Bool)

(assert (=> b!6217857 (= e!3785124 (store ((as const (Array Context!11074 Bool)) false) (Context!11075 (t!378286 (exprs!6037 lt!2344414))) true))))

(declare-fun bm!521664 () Bool)

(declare-fun call!521671 () (InoxSet Context!11074))

(assert (=> bm!521664 (= call!521671 (derivationStepZipperDown!1401 (ite c!1123271 (regOne!32819 (h!71082 (exprs!6037 lt!2344414))) (regOne!32818 (h!71082 (exprs!6037 lt!2344414)))) (ite c!1123271 (Context!11075 (t!378286 (exprs!6037 lt!2344414))) (Context!11075 call!521668)) (h!71084 s!2326)))))

(declare-fun b!6217858 () Bool)

(declare-fun e!3785123 () (InoxSet Context!11074))

(assert (=> b!6217858 (= e!3785123 call!521670)))

(declare-fun b!6217859 () Bool)

(assert (=> b!6217859 (= e!3785125 (nullable!6146 (regOne!32818 (h!71082 (exprs!6037 lt!2344414)))))))

(declare-fun b!6217860 () Bool)

(declare-fun c!1123273 () Bool)

(assert (=> b!6217860 (= c!1123273 ((_ is Star!16153) (h!71082 (exprs!6037 lt!2344414))))))

(assert (=> b!6217860 (= e!3785127 e!3785123)))

(declare-fun b!6217861 () Bool)

(assert (=> b!6217861 (= e!3785128 ((_ map or) call!521671 call!521667))))

(declare-fun bm!521665 () Bool)

(assert (=> bm!521665 (= call!521666 call!521667)))

(declare-fun b!6217862 () Bool)

(assert (=> b!6217862 (= e!3785126 e!3785127)))

(assert (=> b!6217862 (= c!1123270 ((_ is Concat!24998) (h!71082 (exprs!6037 lt!2344414))))))

(declare-fun bm!521666 () Bool)

(assert (=> bm!521666 (= call!521669 call!521668)))

(declare-fun b!6217863 () Bool)

(assert (=> b!6217863 (= e!3785126 ((_ map or) call!521671 call!521666))))

(declare-fun b!6217864 () Bool)

(assert (=> b!6217864 (= e!3785123 ((as const (Array Context!11074 Bool)) false))))

(assert (= (and d!1949092 c!1123269) b!6217857))

(assert (= (and d!1949092 (not c!1123269)) b!6217854))

(assert (= (and b!6217854 c!1123271) b!6217861))

(assert (= (and b!6217854 (not c!1123271)) b!6217855))

(assert (= (and b!6217855 res!2570161) b!6217859))

(assert (= (and b!6217855 c!1123272) b!6217863))

(assert (= (and b!6217855 (not c!1123272)) b!6217862))

(assert (= (and b!6217862 c!1123270) b!6217856))

(assert (= (and b!6217862 (not c!1123270)) b!6217860))

(assert (= (and b!6217860 c!1123273) b!6217858))

(assert (= (and b!6217860 (not c!1123273)) b!6217864))

(assert (= (or b!6217856 b!6217858) bm!521666))

(assert (= (or b!6217856 b!6217858) bm!521662))

(assert (= (or b!6217863 bm!521666) bm!521663))

(assert (= (or b!6217863 bm!521662) bm!521665))

(assert (= (or b!6217861 bm!521665) bm!521661))

(assert (= (or b!6217861 b!6217863) bm!521664))

(declare-fun m!7046332 () Bool)

(assert (=> b!6217857 m!7046332))

(declare-fun m!7046334 () Bool)

(assert (=> bm!521661 m!7046334))

(declare-fun m!7046336 () Bool)

(assert (=> bm!521663 m!7046336))

(declare-fun m!7046338 () Bool)

(assert (=> b!6217859 m!7046338))

(declare-fun m!7046340 () Bool)

(assert (=> bm!521664 m!7046340))

(assert (=> bm!521459 d!1949092))

(declare-fun b!6217867 () Bool)

(declare-fun e!3785129 () Bool)

(declare-fun tp!1734573 () Bool)

(assert (=> b!6217867 (= e!3785129 tp!1734573)))

(declare-fun b!6217868 () Bool)

(declare-fun tp!1734575 () Bool)

(declare-fun tp!1734574 () Bool)

(assert (=> b!6217868 (= e!3785129 (and tp!1734575 tp!1734574))))

(declare-fun b!6217865 () Bool)

(assert (=> b!6217865 (= e!3785129 tp_is_empty!41559)))

(assert (=> b!6217381 (= tp!1734530 e!3785129)))

(declare-fun b!6217866 () Bool)

(declare-fun tp!1734577 () Bool)

(declare-fun tp!1734576 () Bool)

(assert (=> b!6217866 (= e!3785129 (and tp!1734577 tp!1734576))))

(assert (= (and b!6217381 ((_ is ElementMatch!16153) (h!71082 (exprs!6037 (h!71083 zl!343))))) b!6217865))

(assert (= (and b!6217381 ((_ is Concat!24998) (h!71082 (exprs!6037 (h!71083 zl!343))))) b!6217866))

(assert (= (and b!6217381 ((_ is Star!16153) (h!71082 (exprs!6037 (h!71083 zl!343))))) b!6217867))

(assert (= (and b!6217381 ((_ is Union!16153) (h!71082 (exprs!6037 (h!71083 zl!343))))) b!6217868))

(declare-fun b!6217869 () Bool)

(declare-fun e!3785130 () Bool)

(declare-fun tp!1734578 () Bool)

(declare-fun tp!1734579 () Bool)

(assert (=> b!6217869 (= e!3785130 (and tp!1734578 tp!1734579))))

(assert (=> b!6217381 (= tp!1734531 e!3785130)))

(assert (= (and b!6217381 ((_ is Cons!64634) (t!378286 (exprs!6037 (h!71083 zl!343))))) b!6217869))

(declare-fun b!6217872 () Bool)

(declare-fun e!3785131 () Bool)

(declare-fun tp!1734580 () Bool)

(assert (=> b!6217872 (= e!3785131 tp!1734580)))

(declare-fun b!6217873 () Bool)

(declare-fun tp!1734582 () Bool)

(declare-fun tp!1734581 () Bool)

(assert (=> b!6217873 (= e!3785131 (and tp!1734582 tp!1734581))))

(declare-fun b!6217870 () Bool)

(assert (=> b!6217870 (= e!3785131 tp_is_empty!41559)))

(assert (=> b!6217387 (= tp!1734541 e!3785131)))

(declare-fun b!6217871 () Bool)

(declare-fun tp!1734584 () Bool)

(declare-fun tp!1734583 () Bool)

(assert (=> b!6217871 (= e!3785131 (and tp!1734584 tp!1734583))))

(assert (= (and b!6217387 ((_ is ElementMatch!16153) (regOne!32818 (regTwo!32819 r!7292)))) b!6217870))

(assert (= (and b!6217387 ((_ is Concat!24998) (regOne!32818 (regTwo!32819 r!7292)))) b!6217871))

(assert (= (and b!6217387 ((_ is Star!16153) (regOne!32818 (regTwo!32819 r!7292)))) b!6217872))

(assert (= (and b!6217387 ((_ is Union!16153) (regOne!32818 (regTwo!32819 r!7292)))) b!6217873))

(declare-fun b!6217876 () Bool)

(declare-fun e!3785132 () Bool)

(declare-fun tp!1734585 () Bool)

(assert (=> b!6217876 (= e!3785132 tp!1734585)))

(declare-fun b!6217877 () Bool)

(declare-fun tp!1734587 () Bool)

(declare-fun tp!1734586 () Bool)

(assert (=> b!6217877 (= e!3785132 (and tp!1734587 tp!1734586))))

(declare-fun b!6217874 () Bool)

(assert (=> b!6217874 (= e!3785132 tp_is_empty!41559)))

(assert (=> b!6217387 (= tp!1734540 e!3785132)))

(declare-fun b!6217875 () Bool)

(declare-fun tp!1734589 () Bool)

(declare-fun tp!1734588 () Bool)

(assert (=> b!6217875 (= e!3785132 (and tp!1734589 tp!1734588))))

(assert (= (and b!6217387 ((_ is ElementMatch!16153) (regTwo!32818 (regTwo!32819 r!7292)))) b!6217874))

(assert (= (and b!6217387 ((_ is Concat!24998) (regTwo!32818 (regTwo!32819 r!7292)))) b!6217875))

(assert (= (and b!6217387 ((_ is Star!16153) (regTwo!32818 (regTwo!32819 r!7292)))) b!6217876))

(assert (= (and b!6217387 ((_ is Union!16153) (regTwo!32818 (regTwo!32819 r!7292)))) b!6217877))

(declare-fun b!6217880 () Bool)

(declare-fun e!3785133 () Bool)

(declare-fun tp!1734590 () Bool)

(assert (=> b!6217880 (= e!3785133 tp!1734590)))

(declare-fun b!6217881 () Bool)

(declare-fun tp!1734592 () Bool)

(declare-fun tp!1734591 () Bool)

(assert (=> b!6217881 (= e!3785133 (and tp!1734592 tp!1734591))))

(declare-fun b!6217878 () Bool)

(assert (=> b!6217878 (= e!3785133 tp_is_empty!41559)))

(assert (=> b!6217388 (= tp!1734537 e!3785133)))

(declare-fun b!6217879 () Bool)

(declare-fun tp!1734594 () Bool)

(declare-fun tp!1734593 () Bool)

(assert (=> b!6217879 (= e!3785133 (and tp!1734594 tp!1734593))))

(assert (= (and b!6217388 ((_ is ElementMatch!16153) (reg!16482 (regTwo!32819 r!7292)))) b!6217878))

(assert (= (and b!6217388 ((_ is Concat!24998) (reg!16482 (regTwo!32819 r!7292)))) b!6217879))

(assert (= (and b!6217388 ((_ is Star!16153) (reg!16482 (regTwo!32819 r!7292)))) b!6217880))

(assert (= (and b!6217388 ((_ is Union!16153) (reg!16482 (regTwo!32819 r!7292)))) b!6217881))

(declare-fun b!6217884 () Bool)

(declare-fun e!3785134 () Bool)

(declare-fun tp!1734595 () Bool)

(assert (=> b!6217884 (= e!3785134 tp!1734595)))

(declare-fun b!6217885 () Bool)

(declare-fun tp!1734597 () Bool)

(declare-fun tp!1734596 () Bool)

(assert (=> b!6217885 (= e!3785134 (and tp!1734597 tp!1734596))))

(declare-fun b!6217882 () Bool)

(assert (=> b!6217882 (= e!3785134 tp_is_empty!41559)))

(assert (=> b!6217357 (= tp!1734505 e!3785134)))

(declare-fun b!6217883 () Bool)

(declare-fun tp!1734599 () Bool)

(declare-fun tp!1734598 () Bool)

(assert (=> b!6217883 (= e!3785134 (and tp!1734599 tp!1734598))))

(assert (= (and b!6217357 ((_ is ElementMatch!16153) (h!71082 (exprs!6037 setElem!42210)))) b!6217882))

(assert (= (and b!6217357 ((_ is Concat!24998) (h!71082 (exprs!6037 setElem!42210)))) b!6217883))

(assert (= (and b!6217357 ((_ is Star!16153) (h!71082 (exprs!6037 setElem!42210)))) b!6217884))

(assert (= (and b!6217357 ((_ is Union!16153) (h!71082 (exprs!6037 setElem!42210)))) b!6217885))

(declare-fun b!6217886 () Bool)

(declare-fun e!3785135 () Bool)

(declare-fun tp!1734600 () Bool)

(declare-fun tp!1734601 () Bool)

(assert (=> b!6217886 (= e!3785135 (and tp!1734600 tp!1734601))))

(assert (=> b!6217357 (= tp!1734506 e!3785135)))

(assert (= (and b!6217357 ((_ is Cons!64634) (t!378286 (exprs!6037 setElem!42210)))) b!6217886))

(declare-fun b!6217889 () Bool)

(declare-fun e!3785136 () Bool)

(declare-fun tp!1734602 () Bool)

(assert (=> b!6217889 (= e!3785136 tp!1734602)))

(declare-fun b!6217890 () Bool)

(declare-fun tp!1734604 () Bool)

(declare-fun tp!1734603 () Bool)

(assert (=> b!6217890 (= e!3785136 (and tp!1734604 tp!1734603))))

(declare-fun b!6217887 () Bool)

(assert (=> b!6217887 (= e!3785136 tp_is_empty!41559)))

(assert (=> b!6217389 (= tp!1734539 e!3785136)))

(declare-fun b!6217888 () Bool)

(declare-fun tp!1734606 () Bool)

(declare-fun tp!1734605 () Bool)

(assert (=> b!6217888 (= e!3785136 (and tp!1734606 tp!1734605))))

(assert (= (and b!6217389 ((_ is ElementMatch!16153) (regOne!32819 (regTwo!32819 r!7292)))) b!6217887))

(assert (= (and b!6217389 ((_ is Concat!24998) (regOne!32819 (regTwo!32819 r!7292)))) b!6217888))

(assert (= (and b!6217389 ((_ is Star!16153) (regOne!32819 (regTwo!32819 r!7292)))) b!6217889))

(assert (= (and b!6217389 ((_ is Union!16153) (regOne!32819 (regTwo!32819 r!7292)))) b!6217890))

(declare-fun b!6217893 () Bool)

(declare-fun e!3785137 () Bool)

(declare-fun tp!1734607 () Bool)

(assert (=> b!6217893 (= e!3785137 tp!1734607)))

(declare-fun b!6217894 () Bool)

(declare-fun tp!1734609 () Bool)

(declare-fun tp!1734608 () Bool)

(assert (=> b!6217894 (= e!3785137 (and tp!1734609 tp!1734608))))

(declare-fun b!6217891 () Bool)

(assert (=> b!6217891 (= e!3785137 tp_is_empty!41559)))

(assert (=> b!6217389 (= tp!1734538 e!3785137)))

(declare-fun b!6217892 () Bool)

(declare-fun tp!1734611 () Bool)

(declare-fun tp!1734610 () Bool)

(assert (=> b!6217892 (= e!3785137 (and tp!1734611 tp!1734610))))

(assert (= (and b!6217389 ((_ is ElementMatch!16153) (regTwo!32819 (regTwo!32819 r!7292)))) b!6217891))

(assert (= (and b!6217389 ((_ is Concat!24998) (regTwo!32819 (regTwo!32819 r!7292)))) b!6217892))

(assert (= (and b!6217389 ((_ is Star!16153) (regTwo!32819 (regTwo!32819 r!7292)))) b!6217893))

(assert (= (and b!6217389 ((_ is Union!16153) (regTwo!32819 (regTwo!32819 r!7292)))) b!6217894))

(declare-fun b!6217897 () Bool)

(declare-fun e!3785138 () Bool)

(declare-fun tp!1734612 () Bool)

(assert (=> b!6217897 (= e!3785138 tp!1734612)))

(declare-fun b!6217898 () Bool)

(declare-fun tp!1734614 () Bool)

(declare-fun tp!1734613 () Bool)

(assert (=> b!6217898 (= e!3785138 (and tp!1734614 tp!1734613))))

(declare-fun b!6217895 () Bool)

(assert (=> b!6217895 (= e!3785138 tp_is_empty!41559)))

(assert (=> b!6217378 (= tp!1734529 e!3785138)))

(declare-fun b!6217896 () Bool)

(declare-fun tp!1734616 () Bool)

(declare-fun tp!1734615 () Bool)

(assert (=> b!6217896 (= e!3785138 (and tp!1734616 tp!1734615))))

(assert (= (and b!6217378 ((_ is ElementMatch!16153) (regOne!32818 (regTwo!32818 r!7292)))) b!6217895))

(assert (= (and b!6217378 ((_ is Concat!24998) (regOne!32818 (regTwo!32818 r!7292)))) b!6217896))

(assert (= (and b!6217378 ((_ is Star!16153) (regOne!32818 (regTwo!32818 r!7292)))) b!6217897))

(assert (= (and b!6217378 ((_ is Union!16153) (regOne!32818 (regTwo!32818 r!7292)))) b!6217898))

(declare-fun b!6217901 () Bool)

(declare-fun e!3785139 () Bool)

(declare-fun tp!1734617 () Bool)

(assert (=> b!6217901 (= e!3785139 tp!1734617)))

(declare-fun b!6217902 () Bool)

(declare-fun tp!1734619 () Bool)

(declare-fun tp!1734618 () Bool)

(assert (=> b!6217902 (= e!3785139 (and tp!1734619 tp!1734618))))

(declare-fun b!6217899 () Bool)

(assert (=> b!6217899 (= e!3785139 tp_is_empty!41559)))

(assert (=> b!6217378 (= tp!1734528 e!3785139)))

(declare-fun b!6217900 () Bool)

(declare-fun tp!1734621 () Bool)

(declare-fun tp!1734620 () Bool)

(assert (=> b!6217900 (= e!3785139 (and tp!1734621 tp!1734620))))

(assert (= (and b!6217378 ((_ is ElementMatch!16153) (regTwo!32818 (regTwo!32818 r!7292)))) b!6217899))

(assert (= (and b!6217378 ((_ is Concat!24998) (regTwo!32818 (regTwo!32818 r!7292)))) b!6217900))

(assert (= (and b!6217378 ((_ is Star!16153) (regTwo!32818 (regTwo!32818 r!7292)))) b!6217901))

(assert (= (and b!6217378 ((_ is Union!16153) (regTwo!32818 (regTwo!32818 r!7292)))) b!6217902))

(declare-fun b!6217905 () Bool)

(declare-fun e!3785140 () Bool)

(declare-fun tp!1734622 () Bool)

(assert (=> b!6217905 (= e!3785140 tp!1734622)))

(declare-fun b!6217906 () Bool)

(declare-fun tp!1734624 () Bool)

(declare-fun tp!1734623 () Bool)

(assert (=> b!6217906 (= e!3785140 (and tp!1734624 tp!1734623))))

(declare-fun b!6217903 () Bool)

(assert (=> b!6217903 (= e!3785140 tp_is_empty!41559)))

(assert (=> b!6217379 (= tp!1734525 e!3785140)))

(declare-fun b!6217904 () Bool)

(declare-fun tp!1734626 () Bool)

(declare-fun tp!1734625 () Bool)

(assert (=> b!6217904 (= e!3785140 (and tp!1734626 tp!1734625))))

(assert (= (and b!6217379 ((_ is ElementMatch!16153) (reg!16482 (regTwo!32818 r!7292)))) b!6217903))

(assert (= (and b!6217379 ((_ is Concat!24998) (reg!16482 (regTwo!32818 r!7292)))) b!6217904))

(assert (= (and b!6217379 ((_ is Star!16153) (reg!16482 (regTwo!32818 r!7292)))) b!6217905))

(assert (= (and b!6217379 ((_ is Union!16153) (reg!16482 (regTwo!32818 r!7292)))) b!6217906))

(declare-fun b!6217909 () Bool)

(declare-fun e!3785141 () Bool)

(declare-fun tp!1734627 () Bool)

(assert (=> b!6217909 (= e!3785141 tp!1734627)))

(declare-fun b!6217910 () Bool)

(declare-fun tp!1734629 () Bool)

(declare-fun tp!1734628 () Bool)

(assert (=> b!6217910 (= e!3785141 (and tp!1734629 tp!1734628))))

(declare-fun b!6217907 () Bool)

(assert (=> b!6217907 (= e!3785141 tp_is_empty!41559)))

(assert (=> b!6217380 (= tp!1734527 e!3785141)))

(declare-fun b!6217908 () Bool)

(declare-fun tp!1734631 () Bool)

(declare-fun tp!1734630 () Bool)

(assert (=> b!6217908 (= e!3785141 (and tp!1734631 tp!1734630))))

(assert (= (and b!6217380 ((_ is ElementMatch!16153) (regOne!32819 (regTwo!32818 r!7292)))) b!6217907))

(assert (= (and b!6217380 ((_ is Concat!24998) (regOne!32819 (regTwo!32818 r!7292)))) b!6217908))

(assert (= (and b!6217380 ((_ is Star!16153) (regOne!32819 (regTwo!32818 r!7292)))) b!6217909))

(assert (= (and b!6217380 ((_ is Union!16153) (regOne!32819 (regTwo!32818 r!7292)))) b!6217910))

(declare-fun b!6217913 () Bool)

(declare-fun e!3785142 () Bool)

(declare-fun tp!1734632 () Bool)

(assert (=> b!6217913 (= e!3785142 tp!1734632)))

(declare-fun b!6217914 () Bool)

(declare-fun tp!1734634 () Bool)

(declare-fun tp!1734633 () Bool)

(assert (=> b!6217914 (= e!3785142 (and tp!1734634 tp!1734633))))

(declare-fun b!6217911 () Bool)

(assert (=> b!6217911 (= e!3785142 tp_is_empty!41559)))

(assert (=> b!6217380 (= tp!1734526 e!3785142)))

(declare-fun b!6217912 () Bool)

(declare-fun tp!1734636 () Bool)

(declare-fun tp!1734635 () Bool)

(assert (=> b!6217912 (= e!3785142 (and tp!1734636 tp!1734635))))

(assert (= (and b!6217380 ((_ is ElementMatch!16153) (regTwo!32819 (regTwo!32818 r!7292)))) b!6217911))

(assert (= (and b!6217380 ((_ is Concat!24998) (regTwo!32819 (regTwo!32818 r!7292)))) b!6217912))

(assert (= (and b!6217380 ((_ is Star!16153) (regTwo!32819 (regTwo!32818 r!7292)))) b!6217913))

(assert (= (and b!6217380 ((_ is Union!16153) (regTwo!32819 (regTwo!32818 r!7292)))) b!6217914))

(declare-fun b!6217915 () Bool)

(declare-fun e!3785143 () Bool)

(declare-fun tp!1734637 () Bool)

(assert (=> b!6217915 (= e!3785143 (and tp_is_empty!41559 tp!1734637))))

(assert (=> b!6217362 (= tp!1734509 e!3785143)))

(assert (= (and b!6217362 ((_ is Cons!64636) (t!378288 (t!378288 s!2326)))) b!6217915))

(declare-fun b!6217916 () Bool)

(declare-fun e!3785144 () Bool)

(declare-fun tp!1734638 () Bool)

(declare-fun tp!1734639 () Bool)

(assert (=> b!6217916 (= e!3785144 (and tp!1734638 tp!1734639))))

(assert (=> b!6217394 (= tp!1734546 e!3785144)))

(assert (= (and b!6217394 ((_ is Cons!64634) (exprs!6037 setElem!42216))) b!6217916))

(declare-fun b!6217919 () Bool)

(declare-fun e!3785145 () Bool)

(declare-fun tp!1734640 () Bool)

(assert (=> b!6217919 (= e!3785145 tp!1734640)))

(declare-fun b!6217920 () Bool)

(declare-fun tp!1734642 () Bool)

(declare-fun tp!1734641 () Bool)

(assert (=> b!6217920 (= e!3785145 (and tp!1734642 tp!1734641))))

(declare-fun b!6217917 () Bool)

(assert (=> b!6217917 (= e!3785145 tp_is_empty!41559)))

(assert (=> b!6217385 (= tp!1734534 e!3785145)))

(declare-fun b!6217918 () Bool)

(declare-fun tp!1734644 () Bool)

(declare-fun tp!1734643 () Bool)

(assert (=> b!6217918 (= e!3785145 (and tp!1734644 tp!1734643))))

(assert (= (and b!6217385 ((_ is ElementMatch!16153) (regOne!32819 (regOne!32819 r!7292)))) b!6217917))

(assert (= (and b!6217385 ((_ is Concat!24998) (regOne!32819 (regOne!32819 r!7292)))) b!6217918))

(assert (= (and b!6217385 ((_ is Star!16153) (regOne!32819 (regOne!32819 r!7292)))) b!6217919))

(assert (= (and b!6217385 ((_ is Union!16153) (regOne!32819 (regOne!32819 r!7292)))) b!6217920))

(declare-fun b!6217923 () Bool)

(declare-fun e!3785146 () Bool)

(declare-fun tp!1734645 () Bool)

(assert (=> b!6217923 (= e!3785146 tp!1734645)))

(declare-fun b!6217924 () Bool)

(declare-fun tp!1734647 () Bool)

(declare-fun tp!1734646 () Bool)

(assert (=> b!6217924 (= e!3785146 (and tp!1734647 tp!1734646))))

(declare-fun b!6217921 () Bool)

(assert (=> b!6217921 (= e!3785146 tp_is_empty!41559)))

(assert (=> b!6217385 (= tp!1734533 e!3785146)))

(declare-fun b!6217922 () Bool)

(declare-fun tp!1734649 () Bool)

(declare-fun tp!1734648 () Bool)

(assert (=> b!6217922 (= e!3785146 (and tp!1734649 tp!1734648))))

(assert (= (and b!6217385 ((_ is ElementMatch!16153) (regTwo!32819 (regOne!32819 r!7292)))) b!6217921))

(assert (= (and b!6217385 ((_ is Concat!24998) (regTwo!32819 (regOne!32819 r!7292)))) b!6217922))

(assert (= (and b!6217385 ((_ is Star!16153) (regTwo!32819 (regOne!32819 r!7292)))) b!6217923))

(assert (= (and b!6217385 ((_ is Union!16153) (regTwo!32819 (regOne!32819 r!7292)))) b!6217924))

(declare-fun condSetEmpty!42221 () Bool)

(assert (=> setNonEmpty!42216 (= condSetEmpty!42221 (= setRest!42216 ((as const (Array Context!11074 Bool)) false)))))

(declare-fun setRes!42221 () Bool)

(assert (=> setNonEmpty!42216 (= tp!1734547 setRes!42221)))

(declare-fun setIsEmpty!42221 () Bool)

(assert (=> setIsEmpty!42221 setRes!42221))

(declare-fun setNonEmpty!42221 () Bool)

(declare-fun e!3785147 () Bool)

(declare-fun tp!1734651 () Bool)

(declare-fun setElem!42221 () Context!11074)

(assert (=> setNonEmpty!42221 (= setRes!42221 (and tp!1734651 (inv!83629 setElem!42221) e!3785147))))

(declare-fun setRest!42221 () (InoxSet Context!11074))

(assert (=> setNonEmpty!42221 (= setRest!42216 ((_ map or) (store ((as const (Array Context!11074 Bool)) false) setElem!42221 true) setRest!42221))))

(declare-fun b!6217925 () Bool)

(declare-fun tp!1734650 () Bool)

(assert (=> b!6217925 (= e!3785147 tp!1734650)))

(assert (= (and setNonEmpty!42216 condSetEmpty!42221) setIsEmpty!42221))

(assert (= (and setNonEmpty!42216 (not condSetEmpty!42221)) setNonEmpty!42221))

(assert (= setNonEmpty!42221 b!6217925))

(declare-fun m!7046342 () Bool)

(assert (=> setNonEmpty!42221 m!7046342))

(declare-fun b!6217928 () Bool)

(declare-fun e!3785148 () Bool)

(declare-fun tp!1734652 () Bool)

(assert (=> b!6217928 (= e!3785148 tp!1734652)))

(declare-fun b!6217929 () Bool)

(declare-fun tp!1734654 () Bool)

(declare-fun tp!1734653 () Bool)

(assert (=> b!6217929 (= e!3785148 (and tp!1734654 tp!1734653))))

(declare-fun b!6217926 () Bool)

(assert (=> b!6217926 (= e!3785148 tp_is_empty!41559)))

(assert (=> b!6217383 (= tp!1734536 e!3785148)))

(declare-fun b!6217927 () Bool)

(declare-fun tp!1734656 () Bool)

(declare-fun tp!1734655 () Bool)

(assert (=> b!6217927 (= e!3785148 (and tp!1734656 tp!1734655))))

(assert (= (and b!6217383 ((_ is ElementMatch!16153) (regOne!32818 (regOne!32819 r!7292)))) b!6217926))

(assert (= (and b!6217383 ((_ is Concat!24998) (regOne!32818 (regOne!32819 r!7292)))) b!6217927))

(assert (= (and b!6217383 ((_ is Star!16153) (regOne!32818 (regOne!32819 r!7292)))) b!6217928))

(assert (= (and b!6217383 ((_ is Union!16153) (regOne!32818 (regOne!32819 r!7292)))) b!6217929))

(declare-fun b!6217932 () Bool)

(declare-fun e!3785149 () Bool)

(declare-fun tp!1734657 () Bool)

(assert (=> b!6217932 (= e!3785149 tp!1734657)))

(declare-fun b!6217933 () Bool)

(declare-fun tp!1734659 () Bool)

(declare-fun tp!1734658 () Bool)

(assert (=> b!6217933 (= e!3785149 (and tp!1734659 tp!1734658))))

(declare-fun b!6217930 () Bool)

(assert (=> b!6217930 (= e!3785149 tp_is_empty!41559)))

(assert (=> b!6217383 (= tp!1734535 e!3785149)))

(declare-fun b!6217931 () Bool)

(declare-fun tp!1734661 () Bool)

(declare-fun tp!1734660 () Bool)

(assert (=> b!6217931 (= e!3785149 (and tp!1734661 tp!1734660))))

(assert (= (and b!6217383 ((_ is ElementMatch!16153) (regTwo!32818 (regOne!32819 r!7292)))) b!6217930))

(assert (= (and b!6217383 ((_ is Concat!24998) (regTwo!32818 (regOne!32819 r!7292)))) b!6217931))

(assert (= (and b!6217383 ((_ is Star!16153) (regTwo!32818 (regOne!32819 r!7292)))) b!6217932))

(assert (= (and b!6217383 ((_ is Union!16153) (regTwo!32818 (regOne!32819 r!7292)))) b!6217933))

(declare-fun b!6217936 () Bool)

(declare-fun e!3785150 () Bool)

(declare-fun tp!1734662 () Bool)

(assert (=> b!6217936 (= e!3785150 tp!1734662)))

(declare-fun b!6217937 () Bool)

(declare-fun tp!1734664 () Bool)

(declare-fun tp!1734663 () Bool)

(assert (=> b!6217937 (= e!3785150 (and tp!1734664 tp!1734663))))

(declare-fun b!6217934 () Bool)

(assert (=> b!6217934 (= e!3785150 tp_is_empty!41559)))

(assert (=> b!6217384 (= tp!1734532 e!3785150)))

(declare-fun b!6217935 () Bool)

(declare-fun tp!1734666 () Bool)

(declare-fun tp!1734665 () Bool)

(assert (=> b!6217935 (= e!3785150 (and tp!1734666 tp!1734665))))

(assert (= (and b!6217384 ((_ is ElementMatch!16153) (reg!16482 (regOne!32819 r!7292)))) b!6217934))

(assert (= (and b!6217384 ((_ is Concat!24998) (reg!16482 (regOne!32819 r!7292)))) b!6217935))

(assert (= (and b!6217384 ((_ is Star!16153) (reg!16482 (regOne!32819 r!7292)))) b!6217936))

(assert (= (and b!6217384 ((_ is Union!16153) (reg!16482 (regOne!32819 r!7292)))) b!6217937))

(declare-fun b!6217939 () Bool)

(declare-fun e!3785152 () Bool)

(declare-fun tp!1734667 () Bool)

(assert (=> b!6217939 (= e!3785152 tp!1734667)))

(declare-fun tp!1734668 () Bool)

(declare-fun e!3785151 () Bool)

(declare-fun b!6217938 () Bool)

(assert (=> b!6217938 (= e!3785151 (and (inv!83629 (h!71083 (t!378287 (t!378287 zl!343)))) e!3785152 tp!1734668))))

(assert (=> b!6217405 (= tp!1734558 e!3785151)))

(assert (= b!6217938 b!6217939))

(assert (= (and b!6217405 ((_ is Cons!64635) (t!378287 (t!378287 zl!343)))) b!6217938))

(declare-fun m!7046344 () Bool)

(assert (=> b!6217938 m!7046344))

(declare-fun b!6217942 () Bool)

(declare-fun e!3785153 () Bool)

(declare-fun tp!1734669 () Bool)

(assert (=> b!6217942 (= e!3785153 tp!1734669)))

(declare-fun b!6217943 () Bool)

(declare-fun tp!1734671 () Bool)

(declare-fun tp!1734670 () Bool)

(assert (=> b!6217943 (= e!3785153 (and tp!1734671 tp!1734670))))

(declare-fun b!6217940 () Bool)

(assert (=> b!6217940 (= e!3785153 tp_is_empty!41559)))

(assert (=> b!6217375 (= tp!1734520 e!3785153)))

(declare-fun b!6217941 () Bool)

(declare-fun tp!1734673 () Bool)

(declare-fun tp!1734672 () Bool)

(assert (=> b!6217941 (= e!3785153 (and tp!1734673 tp!1734672))))

(assert (= (and b!6217375 ((_ is ElementMatch!16153) (reg!16482 (regOne!32818 r!7292)))) b!6217940))

(assert (= (and b!6217375 ((_ is Concat!24998) (reg!16482 (regOne!32818 r!7292)))) b!6217941))

(assert (= (and b!6217375 ((_ is Star!16153) (reg!16482 (regOne!32818 r!7292)))) b!6217942))

(assert (= (and b!6217375 ((_ is Union!16153) (reg!16482 (regOne!32818 r!7292)))) b!6217943))

(declare-fun b!6217946 () Bool)

(declare-fun e!3785154 () Bool)

(declare-fun tp!1734674 () Bool)

(assert (=> b!6217946 (= e!3785154 tp!1734674)))

(declare-fun b!6217947 () Bool)

(declare-fun tp!1734676 () Bool)

(declare-fun tp!1734675 () Bool)

(assert (=> b!6217947 (= e!3785154 (and tp!1734676 tp!1734675))))

(declare-fun b!6217944 () Bool)

(assert (=> b!6217944 (= e!3785154 tp_is_empty!41559)))

(assert (=> b!6217376 (= tp!1734522 e!3785154)))

(declare-fun b!6217945 () Bool)

(declare-fun tp!1734678 () Bool)

(declare-fun tp!1734677 () Bool)

(assert (=> b!6217945 (= e!3785154 (and tp!1734678 tp!1734677))))

(assert (= (and b!6217376 ((_ is ElementMatch!16153) (regOne!32819 (regOne!32818 r!7292)))) b!6217944))

(assert (= (and b!6217376 ((_ is Concat!24998) (regOne!32819 (regOne!32818 r!7292)))) b!6217945))

(assert (= (and b!6217376 ((_ is Star!16153) (regOne!32819 (regOne!32818 r!7292)))) b!6217946))

(assert (= (and b!6217376 ((_ is Union!16153) (regOne!32819 (regOne!32818 r!7292)))) b!6217947))

(declare-fun b!6217950 () Bool)

(declare-fun e!3785155 () Bool)

(declare-fun tp!1734679 () Bool)

(assert (=> b!6217950 (= e!3785155 tp!1734679)))

(declare-fun b!6217951 () Bool)

(declare-fun tp!1734681 () Bool)

(declare-fun tp!1734680 () Bool)

(assert (=> b!6217951 (= e!3785155 (and tp!1734681 tp!1734680))))

(declare-fun b!6217948 () Bool)

(assert (=> b!6217948 (= e!3785155 tp_is_empty!41559)))

(assert (=> b!6217376 (= tp!1734521 e!3785155)))

(declare-fun b!6217949 () Bool)

(declare-fun tp!1734683 () Bool)

(declare-fun tp!1734682 () Bool)

(assert (=> b!6217949 (= e!3785155 (and tp!1734683 tp!1734682))))

(assert (= (and b!6217376 ((_ is ElementMatch!16153) (regTwo!32819 (regOne!32818 r!7292)))) b!6217948))

(assert (= (and b!6217376 ((_ is Concat!24998) (regTwo!32819 (regOne!32818 r!7292)))) b!6217949))

(assert (= (and b!6217376 ((_ is Star!16153) (regTwo!32819 (regOne!32818 r!7292)))) b!6217950))

(assert (= (and b!6217376 ((_ is Union!16153) (regTwo!32819 (regOne!32818 r!7292)))) b!6217951))

(declare-fun b!6217952 () Bool)

(declare-fun e!3785156 () Bool)

(declare-fun tp!1734684 () Bool)

(declare-fun tp!1734685 () Bool)

(assert (=> b!6217952 (= e!3785156 (and tp!1734684 tp!1734685))))

(assert (=> b!6217406 (= tp!1734557 e!3785156)))

(assert (= (and b!6217406 ((_ is Cons!64634) (exprs!6037 (h!71083 (t!378287 zl!343))))) b!6217952))

(declare-fun b!6217955 () Bool)

(declare-fun e!3785157 () Bool)

(declare-fun tp!1734686 () Bool)

(assert (=> b!6217955 (= e!3785157 tp!1734686)))

(declare-fun b!6217956 () Bool)

(declare-fun tp!1734688 () Bool)

(declare-fun tp!1734687 () Bool)

(assert (=> b!6217956 (= e!3785157 (and tp!1734688 tp!1734687))))

(declare-fun b!6217953 () Bool)

(assert (=> b!6217953 (= e!3785157 tp_is_empty!41559)))

(assert (=> b!6217396 (= tp!1734552 e!3785157)))

(declare-fun b!6217954 () Bool)

(declare-fun tp!1734690 () Bool)

(declare-fun tp!1734689 () Bool)

(assert (=> b!6217954 (= e!3785157 (and tp!1734690 tp!1734689))))

(assert (= (and b!6217396 ((_ is ElementMatch!16153) (regOne!32818 (reg!16482 r!7292)))) b!6217953))

(assert (= (and b!6217396 ((_ is Concat!24998) (regOne!32818 (reg!16482 r!7292)))) b!6217954))

(assert (= (and b!6217396 ((_ is Star!16153) (regOne!32818 (reg!16482 r!7292)))) b!6217955))

(assert (= (and b!6217396 ((_ is Union!16153) (regOne!32818 (reg!16482 r!7292)))) b!6217956))

(declare-fun b!6217959 () Bool)

(declare-fun e!3785158 () Bool)

(declare-fun tp!1734691 () Bool)

(assert (=> b!6217959 (= e!3785158 tp!1734691)))

(declare-fun b!6217960 () Bool)

(declare-fun tp!1734693 () Bool)

(declare-fun tp!1734692 () Bool)

(assert (=> b!6217960 (= e!3785158 (and tp!1734693 tp!1734692))))

(declare-fun b!6217957 () Bool)

(assert (=> b!6217957 (= e!3785158 tp_is_empty!41559)))

(assert (=> b!6217396 (= tp!1734551 e!3785158)))

(declare-fun b!6217958 () Bool)

(declare-fun tp!1734695 () Bool)

(declare-fun tp!1734694 () Bool)

(assert (=> b!6217958 (= e!3785158 (and tp!1734695 tp!1734694))))

(assert (= (and b!6217396 ((_ is ElementMatch!16153) (regTwo!32818 (reg!16482 r!7292)))) b!6217957))

(assert (= (and b!6217396 ((_ is Concat!24998) (regTwo!32818 (reg!16482 r!7292)))) b!6217958))

(assert (= (and b!6217396 ((_ is Star!16153) (regTwo!32818 (reg!16482 r!7292)))) b!6217959))

(assert (= (and b!6217396 ((_ is Union!16153) (regTwo!32818 (reg!16482 r!7292)))) b!6217960))

(declare-fun b!6217963 () Bool)

(declare-fun e!3785159 () Bool)

(declare-fun tp!1734696 () Bool)

(assert (=> b!6217963 (= e!3785159 tp!1734696)))

(declare-fun b!6217964 () Bool)

(declare-fun tp!1734698 () Bool)

(declare-fun tp!1734697 () Bool)

(assert (=> b!6217964 (= e!3785159 (and tp!1734698 tp!1734697))))

(declare-fun b!6217961 () Bool)

(assert (=> b!6217961 (= e!3785159 tp_is_empty!41559)))

(assert (=> b!6217397 (= tp!1734548 e!3785159)))

(declare-fun b!6217962 () Bool)

(declare-fun tp!1734700 () Bool)

(declare-fun tp!1734699 () Bool)

(assert (=> b!6217962 (= e!3785159 (and tp!1734700 tp!1734699))))

(assert (= (and b!6217397 ((_ is ElementMatch!16153) (reg!16482 (reg!16482 r!7292)))) b!6217961))

(assert (= (and b!6217397 ((_ is Concat!24998) (reg!16482 (reg!16482 r!7292)))) b!6217962))

(assert (= (and b!6217397 ((_ is Star!16153) (reg!16482 (reg!16482 r!7292)))) b!6217963))

(assert (= (and b!6217397 ((_ is Union!16153) (reg!16482 (reg!16482 r!7292)))) b!6217964))

(declare-fun b!6217967 () Bool)

(declare-fun e!3785160 () Bool)

(declare-fun tp!1734701 () Bool)

(assert (=> b!6217967 (= e!3785160 tp!1734701)))

(declare-fun b!6217968 () Bool)

(declare-fun tp!1734703 () Bool)

(declare-fun tp!1734702 () Bool)

(assert (=> b!6217968 (= e!3785160 (and tp!1734703 tp!1734702))))

(declare-fun b!6217965 () Bool)

(assert (=> b!6217965 (= e!3785160 tp_is_empty!41559)))

(assert (=> b!6217374 (= tp!1734524 e!3785160)))

(declare-fun b!6217966 () Bool)

(declare-fun tp!1734705 () Bool)

(declare-fun tp!1734704 () Bool)

(assert (=> b!6217966 (= e!3785160 (and tp!1734705 tp!1734704))))

(assert (= (and b!6217374 ((_ is ElementMatch!16153) (regOne!32818 (regOne!32818 r!7292)))) b!6217965))

(assert (= (and b!6217374 ((_ is Concat!24998) (regOne!32818 (regOne!32818 r!7292)))) b!6217966))

(assert (= (and b!6217374 ((_ is Star!16153) (regOne!32818 (regOne!32818 r!7292)))) b!6217967))

(assert (= (and b!6217374 ((_ is Union!16153) (regOne!32818 (regOne!32818 r!7292)))) b!6217968))

(declare-fun b!6217971 () Bool)

(declare-fun e!3785161 () Bool)

(declare-fun tp!1734706 () Bool)

(assert (=> b!6217971 (= e!3785161 tp!1734706)))

(declare-fun b!6217972 () Bool)

(declare-fun tp!1734708 () Bool)

(declare-fun tp!1734707 () Bool)

(assert (=> b!6217972 (= e!3785161 (and tp!1734708 tp!1734707))))

(declare-fun b!6217969 () Bool)

(assert (=> b!6217969 (= e!3785161 tp_is_empty!41559)))

(assert (=> b!6217374 (= tp!1734523 e!3785161)))

(declare-fun b!6217970 () Bool)

(declare-fun tp!1734710 () Bool)

(declare-fun tp!1734709 () Bool)

(assert (=> b!6217970 (= e!3785161 (and tp!1734710 tp!1734709))))

(assert (= (and b!6217374 ((_ is ElementMatch!16153) (regTwo!32818 (regOne!32818 r!7292)))) b!6217969))

(assert (= (and b!6217374 ((_ is Concat!24998) (regTwo!32818 (regOne!32818 r!7292)))) b!6217970))

(assert (= (and b!6217374 ((_ is Star!16153) (regTwo!32818 (regOne!32818 r!7292)))) b!6217971))

(assert (= (and b!6217374 ((_ is Union!16153) (regTwo!32818 (regOne!32818 r!7292)))) b!6217972))

(declare-fun b!6217975 () Bool)

(declare-fun e!3785162 () Bool)

(declare-fun tp!1734711 () Bool)

(assert (=> b!6217975 (= e!3785162 tp!1734711)))

(declare-fun b!6217976 () Bool)

(declare-fun tp!1734713 () Bool)

(declare-fun tp!1734712 () Bool)

(assert (=> b!6217976 (= e!3785162 (and tp!1734713 tp!1734712))))

(declare-fun b!6217973 () Bool)

(assert (=> b!6217973 (= e!3785162 tp_is_empty!41559)))

(assert (=> b!6217398 (= tp!1734550 e!3785162)))

(declare-fun b!6217974 () Bool)

(declare-fun tp!1734715 () Bool)

(declare-fun tp!1734714 () Bool)

(assert (=> b!6217974 (= e!3785162 (and tp!1734715 tp!1734714))))

(assert (= (and b!6217398 ((_ is ElementMatch!16153) (regOne!32819 (reg!16482 r!7292)))) b!6217973))

(assert (= (and b!6217398 ((_ is Concat!24998) (regOne!32819 (reg!16482 r!7292)))) b!6217974))

(assert (= (and b!6217398 ((_ is Star!16153) (regOne!32819 (reg!16482 r!7292)))) b!6217975))

(assert (= (and b!6217398 ((_ is Union!16153) (regOne!32819 (reg!16482 r!7292)))) b!6217976))

(declare-fun b!6217979 () Bool)

(declare-fun e!3785163 () Bool)

(declare-fun tp!1734716 () Bool)

(assert (=> b!6217979 (= e!3785163 tp!1734716)))

(declare-fun b!6217980 () Bool)

(declare-fun tp!1734718 () Bool)

(declare-fun tp!1734717 () Bool)

(assert (=> b!6217980 (= e!3785163 (and tp!1734718 tp!1734717))))

(declare-fun b!6217977 () Bool)

(assert (=> b!6217977 (= e!3785163 tp_is_empty!41559)))

(assert (=> b!6217398 (= tp!1734549 e!3785163)))

(declare-fun b!6217978 () Bool)

(declare-fun tp!1734720 () Bool)

(declare-fun tp!1734719 () Bool)

(assert (=> b!6217978 (= e!3785163 (and tp!1734720 tp!1734719))))

(assert (= (and b!6217398 ((_ is ElementMatch!16153) (regTwo!32819 (reg!16482 r!7292)))) b!6217977))

(assert (= (and b!6217398 ((_ is Concat!24998) (regTwo!32819 (reg!16482 r!7292)))) b!6217978))

(assert (= (and b!6217398 ((_ is Star!16153) (regTwo!32819 (reg!16482 r!7292)))) b!6217979))

(assert (= (and b!6217398 ((_ is Union!16153) (regTwo!32819 (reg!16482 r!7292)))) b!6217980))

(declare-fun b_lambda!236377 () Bool)

(assert (= b_lambda!236371 (or d!1948850 b_lambda!236377)))

(declare-fun bs!1542120 () Bool)

(declare-fun d!1949094 () Bool)

(assert (= bs!1542120 (and d!1949094 d!1948850)))

(assert (=> bs!1542120 (= (dynLambda!25500 lambda!339771 (h!71082 (exprs!6037 setElem!42210))) (validRegex!7889 (h!71082 (exprs!6037 setElem!42210))))))

(declare-fun m!7046346 () Bool)

(assert (=> bs!1542120 m!7046346))

(assert (=> b!6217815 d!1949094))

(declare-fun b_lambda!236379 () Bool)

(assert (= b_lambda!236363 (or d!1948848 b_lambda!236379)))

(declare-fun bs!1542121 () Bool)

(declare-fun d!1949096 () Bool)

(assert (= bs!1542121 (and d!1949096 d!1948848)))

(assert (=> bs!1542121 (= (dynLambda!25500 lambda!339770 (h!71082 (exprs!6037 (h!71083 zl!343)))) (validRegex!7889 (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(declare-fun m!7046348 () Bool)

(assert (=> bs!1542121 m!7046348))

(assert (=> b!6217564 d!1949096))

(declare-fun b_lambda!236381 () Bool)

(assert (= b_lambda!236375 (or d!1948762 b_lambda!236381)))

(declare-fun bs!1542122 () Bool)

(declare-fun d!1949098 () Bool)

(assert (= bs!1542122 (and d!1949098 d!1948762)))

(assert (=> bs!1542122 (= (dynLambda!25500 lambda!339748 (h!71082 (exprs!6037 (h!71083 zl!343)))) (validRegex!7889 (h!71082 (exprs!6037 (h!71083 zl!343)))))))

(assert (=> bs!1542122 m!7046348))

(assert (=> b!6217828 d!1949098))

(declare-fun b_lambda!236383 () Bool)

(assert (= b_lambda!236361 (or b!6216622 b_lambda!236383)))

(assert (=> d!1948888 d!1948856))

(declare-fun b_lambda!236385 () Bool)

(assert (= b_lambda!236367 (or d!1948776 b_lambda!236385)))

(declare-fun bs!1542123 () Bool)

(declare-fun d!1949100 () Bool)

(assert (= bs!1542123 (and d!1949100 d!1948776)))

(assert (=> bs!1542123 (= (dynLambda!25500 lambda!339756 (h!71082 lt!2344475)) (validRegex!7889 (h!71082 lt!2344475)))))

(declare-fun m!7046350 () Bool)

(assert (=> bs!1542123 m!7046350))

(assert (=> b!6217665 d!1949100))

(declare-fun b_lambda!236387 () Bool)

(assert (= b_lambda!236373 (or b!6216622 b_lambda!236387)))

(assert (=> d!1949074 d!1948858))

(declare-fun b_lambda!236389 () Bool)

(assert (= b_lambda!236369 (or d!1948720 b_lambda!236389)))

(declare-fun bs!1542124 () Bool)

(declare-fun d!1949102 () Bool)

(assert (= bs!1542124 (and d!1949102 d!1948720)))

(assert (=> bs!1542124 (= (dynLambda!25500 lambda!339734 (h!71082 (exprs!6037 lt!2344399))) (validRegex!7889 (h!71082 (exprs!6037 lt!2344399))))))

(declare-fun m!7046352 () Bool)

(assert (=> bs!1542124 m!7046352))

(assert (=> b!6217733 d!1949102))

(declare-fun b_lambda!236391 () Bool)

(assert (= b_lambda!236365 (or d!1948768 b_lambda!236391)))

(declare-fun bs!1542125 () Bool)

(declare-fun d!1949104 () Bool)

(assert (= bs!1542125 (and d!1949104 d!1948768)))

(assert (=> bs!1542125 (= (dynLambda!25500 lambda!339751 (h!71082 (unfocusZipperList!1574 zl!343))) (validRegex!7889 (h!71082 (unfocusZipperList!1574 zl!343))))))

(declare-fun m!7046354 () Bool)

(assert (=> bs!1542125 m!7046354))

(assert (=> b!6217649 d!1949104))

(check-sat (not b!6217490) (not bm!521564) (not b!6217974) (not b!6217717) (not b!6217945) (not b!6217942) (not d!1949048) (not b_lambda!236359) (not bm!521627) (not b!6217417) (not b_lambda!236381) (not b!6217908) (not b!6217663) (not bm!521630) (not b!6217893) (not bm!521591) (not b!6217479) (not b!6217848) (not b_lambda!236379) (not b!6217675) (not b!6217581) (not b!6217737) (not b!6217697) (not b!6217664) (not b!6217889) (not b!6217794) (not b!6217902) tp_is_empty!41559 (not d!1948910) (not d!1948980) (not b!6217640) (not b!6217650) (not d!1949006) (not d!1948904) (not d!1948874) (not b_lambda!236389) (not b!6217793) (not b!6217909) (not d!1948918) (not bm!521658) (not b!6217866) (not b!6217691) (not b!6217943) (not b!6217922) (not b!6217795) (not bm!521577) (not bm!521621) (not b!6217458) (not bm!521632) (not b!6217670) (not b!6217741) (not b!6217716) (not b!6217567) (not d!1949038) (not d!1948942) (not b!6217416) (not d!1948914) (not b!6217913) (not b!6217797) (not b!6217884) (not b!6217954) (not b!6217681) (not b!6217897) (not d!1949024) (not b!6217654) (not b!6217910) (not b!6217772) (not b!6217869) (not bm!521576) (not b!6217932) (not d!1948888) (not b!6217872) (not b!6217885) (not b!6217712) (not bm!521663) (not b!6217873) (not bm!521651) (not b!6217898) (not b!6217699) (not b!6217912) (not b!6217780) (not b!6217617) (not b!6217752) (not bs!1542123) (not b!6217883) (not b!6217803) (not b_lambda!236383) (not b!6217725) (not b!6217950) (not d!1948912) (not bm!521620) (not b!6217949) (not bs!1542125) (not bm!521661) (not bm!521568) (not d!1948926) (not d!1948974) (not d!1949088) (not b!6217493) (not d!1948972) (not b!6217939) (not b!6217579) (not d!1948970) (not bs!1542121) (not b!6217935) (not b!6217916) (not b!6217867) (not bs!1542122) (not bm!521617) (not b!6217941) (not b!6217814) (not bm!521574) (not b!6217892) (not d!1948932) (not bm!521592) (not bm!521628) (not b!6217931) (not d!1949034) (not b!6217959) (not d!1948872) (not b!6217875) (not b!6217947) (not d!1948958) (not b!6217551) (not d!1948944) (not b!6217871) (not bm!521583) (not bm!521646) (not b!6217970) (not b!6217573) (not bm!521618) (not b!6217571) (not b!6217980) (not b!6217920) (not bm!521595) (not b!6217746) (not b!6217495) (not b!6217742) (not d!1949000) (not b!6217500) (not bm!521616) (not b!6217777) (not d!1949056) (not bm!521614) (not b!6217975) (not bm!521642) (not b!6217804) (not b!6217879) (not b!6217946) (not b!6217711) (not b!6217868) (not b!6217918) (not b!6217518) (not d!1949020) (not bm!521615) (not b_lambda!236387) (not d!1949074) (not bm!521639) (not b!6217888) (not bm!521600) (not b!6217569) (not bm!521596) (not b!6217859) (not d!1949082) (not b!6217623) (not b!6217467) (not d!1949050) (not d!1948952) (not bm!521629) (not b!6217575) (not b!6217706) (not bm!521565) (not d!1949062) (not b!6217955) (not b!6217927) (not b!6217960) (not b!6217842) (not bm!521558) (not d!1948990) (not d!1948984) (not bm!521584) (not b!6217723) (not b!6217625) (not bm!521624) (not b!6217498) (not b!6217896) (not bm!521635) (not b!6217925) (not d!1949086) (not b!6217919) (not d!1948940) (not b!6217877) (not setNonEmpty!42219) (not d!1949010) (not b!6217923) (not d!1949030) (not b!6217695) (not b!6217971) (not b!6217841) (not b!6217979) (not b!6217806) (not b_lambda!236391) (not bm!521645) (not b!6217468) (not b!6217704) (not b!6217829) (not bm!521657) (not d!1949036) (not d!1949064) (not setNonEmpty!42221) (not d!1948948) (not bm!521581) (not b!6217638) (not d!1949008) (not b!6217924) (not b!6217952) (not bm!521633) (not b!6217968) (not bm!521572) (not b!6217672) (not b!6217886) (not b!6217666) (not b_lambda!236357) (not bm!521664) (not b!6217816) (not b!6217763) (not b!6217962) (not b!6217914) (not b!6217972) (not b!6217890) (not b!6217736) (not b!6217487) (not bm!521593) (not b!6217764) (not b!6217978) (not b!6217958) (not d!1948916) (not b!6217881) (not b!6217578) (not b!6217499) (not b!6217964) (not d!1948882) (not b!6217653) (not bm!521625) (not b!6217811) (not b!6217809) (not bm!521602) (not b!6217473) (not b!6217769) (not b!6217770) (not bm!521563) (not d!1948898) (not d!1948928) (not bm!521580) (not d!1948870) (not b!6217507) (not b!6217589) (not bm!521559) (not setNonEmpty!42220) (not b!6217709) (not d!1949060) (not bm!521601) (not bm!521641) (not d!1948992) (not b!6217745) (not bm!521636) (not b!6217703) (not d!1948860) (not b!6217967) (not b!6217438) (not b_lambda!236385) (not b!6217901) (not bm!521631) (not b!6217680) (not b!6217775) (not b!6217933) (not bm!521652) (not b!6217798) (not b!6217692) (not bs!1542120) (not b!6217880) (not b!6217743) (not b_lambda!236377) (not b!6217501) (not b!6217876) (not d!1949068) (not b!6217785) (not bm!521643) (not b!6217639) (not d!1949044) (not d!1949076) (not b!6217735) (not b!6217936) (not d!1949012) (not b!6217734) (not b!6217584) (not b!6217906) (not b!6217424) (not b!6217565) (not b!6217937) (not b!6217822) (not b!6217452) (not b!6217574) (not b!6217488) (not bm!521649) (not b!6217894) (not b!6217905) (not d!1948956) (not b!6217570) (not b!6217696) (not b!6217900) (not b!6217739) (not b!6217976) (not b!6217956) (not b!6217545) (not bm!521623) (not bm!521640) (not b!6217786) (not b!6217966) (not bm!521556) (not b!6217929) (not b!6217904) (not b!6217700) (not b!6217586) (not bs!1542124) (not b!6217669) (not bm!521573) (not b!6217951) (not bm!521655) (not b!6217713) (not b!6217677) (not b!6217731) (not b!6217928) (not b!6217963) (not b!6217938) (not d!1949042) (not b!6217915) (not b!6217707) (not d!1948896) (not bm!521567) (not bm!521612) (not b!6217835))
(check-sat)
