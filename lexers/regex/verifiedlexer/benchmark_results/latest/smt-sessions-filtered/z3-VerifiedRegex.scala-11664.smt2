; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!654292 () Bool)

(assert start!654292)

(declare-fun b!6745693 () Bool)

(assert (=> b!6745693 true))

(assert (=> b!6745693 true))

(declare-fun lambda!379183 () Int)

(declare-fun lambda!379182 () Int)

(assert (=> b!6745693 (not (= lambda!379183 lambda!379182))))

(assert (=> b!6745693 true))

(assert (=> b!6745693 true))

(declare-fun lambda!379184 () Int)

(assert (=> b!6745693 (not (= lambda!379184 lambda!379182))))

(assert (=> b!6745693 (not (= lambda!379184 lambda!379183))))

(assert (=> b!6745693 true))

(assert (=> b!6745693 true))

(declare-fun b!6745694 () Bool)

(assert (=> b!6745694 true))

(declare-fun b!6745689 () Bool)

(declare-fun e!4074276 () Bool)

(declare-datatypes ((C!33420 0))(
  ( (C!33421 (val!26412 Int)) )
))
(declare-datatypes ((Regex!16575 0))(
  ( (ElementMatch!16575 (c!1251537 C!33420)) (Concat!25420 (regOne!33662 Regex!16575) (regTwo!33662 Regex!16575)) (EmptyExpr!16575) (Star!16575 (reg!16904 Regex!16575)) (EmptyLang!16575) (Union!16575 (regOne!33663 Regex!16575) (regTwo!33663 Regex!16575)) )
))
(declare-fun r!7292 () Regex!16575)

(declare-fun nullable!6562 (Regex!16575) Bool)

(assert (=> b!6745689 (= e!4074276 (not (nullable!6562 (reg!16904 r!7292))))))

(declare-fun b!6745690 () Bool)

(declare-fun res!2759228 () Bool)

(declare-fun e!4074272 () Bool)

(assert (=> b!6745690 (=> (not res!2759228) (not e!4074272))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66024 0))(
  ( (Nil!65900) (Cons!65900 (h!72348 Regex!16575) (t!379725 List!66024)) )
))
(declare-datatypes ((Context!11918 0))(
  ( (Context!11919 (exprs!6459 List!66024)) )
))
(declare-fun z!1189 () (InoxSet Context!11918))

(declare-datatypes ((List!66025 0))(
  ( (Nil!65901) (Cons!65901 (h!72349 Context!11918) (t!379726 List!66025)) )
))
(declare-fun zl!343 () List!66025)

(declare-fun toList!10359 ((InoxSet Context!11918)) List!66025)

(assert (=> b!6745690 (= res!2759228 (= (toList!10359 z!1189) zl!343))))

(declare-fun b!6745691 () Bool)

(declare-fun e!4074267 () Bool)

(declare-fun tp!1849020 () Bool)

(assert (=> b!6745691 (= e!4074267 tp!1849020)))

(declare-fun e!4074273 () Bool)

(declare-fun e!4074271 () Bool)

(declare-fun tp!1849019 () Bool)

(declare-fun b!6745692 () Bool)

(declare-fun inv!84684 (Context!11918) Bool)

(assert (=> b!6745692 (= e!4074273 (and (inv!84684 (h!72349 zl!343)) e!4074271 tp!1849019))))

(declare-fun e!4074282 () Bool)

(declare-fun e!4074274 () Bool)

(assert (=> b!6745693 (= e!4074282 e!4074274)))

(declare-fun res!2759219 () Bool)

(assert (=> b!6745693 (=> res!2759219 e!4074274)))

(declare-fun lt!2439997 () Bool)

(declare-fun e!4074268 () Bool)

(assert (=> b!6745693 (= res!2759219 (not (= lt!2439997 e!4074268)))))

(declare-fun res!2759224 () Bool)

(assert (=> b!6745693 (=> res!2759224 e!4074268)))

(declare-datatypes ((List!66026 0))(
  ( (Nil!65902) (Cons!65902 (h!72350 C!33420) (t!379727 List!66026)) )
))
(declare-fun s!2326 () List!66026)

(declare-fun isEmpty!38249 (List!66026) Bool)

(assert (=> b!6745693 (= res!2759224 (isEmpty!38249 s!2326))))

(declare-fun Exists!3643 (Int) Bool)

(assert (=> b!6745693 (= (Exists!3643 lambda!379182) (Exists!3643 lambda!379184))))

(declare-datatypes ((Unit!159841 0))(
  ( (Unit!159842) )
))
(declare-fun lt!2440018 () Unit!159841)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2170 (Regex!16575 Regex!16575 List!66026) Unit!159841)

(assert (=> b!6745693 (= lt!2440018 (lemmaExistCutMatchRandMatchRSpecEquivalent!2170 (reg!16904 r!7292) r!7292 s!2326))))

(assert (=> b!6745693 (= (Exists!3643 lambda!379182) (Exists!3643 lambda!379183))))

(declare-fun lt!2439994 () Unit!159841)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!734 (Regex!16575 List!66026) Unit!159841)

(assert (=> b!6745693 (= lt!2439994 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!734 (reg!16904 r!7292) s!2326))))

(declare-fun lt!2440000 () Bool)

(assert (=> b!6745693 (= lt!2440000 (Exists!3643 lambda!379182))))

(declare-datatypes ((tuple2!67100 0))(
  ( (tuple2!67101 (_1!36853 List!66026) (_2!36853 List!66026)) )
))
(declare-datatypes ((Option!16462 0))(
  ( (None!16461) (Some!16461 (v!52661 tuple2!67100)) )
))
(declare-fun isDefined!13165 (Option!16462) Bool)

(declare-fun findConcatSeparation!2876 (Regex!16575 Regex!16575 List!66026 List!66026 List!66026) Option!16462)

(assert (=> b!6745693 (= lt!2440000 (isDefined!13165 (findConcatSeparation!2876 (reg!16904 r!7292) r!7292 Nil!65902 s!2326 s!2326)))))

(declare-fun lt!2440014 () Unit!159841)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2640 (Regex!16575 Regex!16575 List!66026) Unit!159841)

(assert (=> b!6745693 (= lt!2440014 (lemmaFindConcatSeparationEquivalentToExists!2640 (reg!16904 r!7292) r!7292 s!2326))))

(declare-fun e!4074270 () Bool)

(declare-fun e!4074277 () Bool)

(assert (=> b!6745694 (= e!4074270 e!4074277)))

(declare-fun res!2759213 () Bool)

(assert (=> b!6745694 (=> res!2759213 e!4074277)))

(declare-fun lt!2440007 () (InoxSet Context!11918))

(declare-fun lt!2439996 () (InoxSet Context!11918))

(assert (=> b!6745694 (= res!2759213 (not (= lt!2440007 lt!2439996)))))

(declare-fun lambda!379185 () Int)

(declare-fun flatMap!2056 ((InoxSet Context!11918) Int) (InoxSet Context!11918))

(declare-fun derivationStepZipperUp!1729 (Context!11918 C!33420) (InoxSet Context!11918))

(assert (=> b!6745694 (= (flatMap!2056 z!1189 lambda!379185) (derivationStepZipperUp!1729 (h!72349 zl!343) (h!72350 s!2326)))))

(declare-fun lt!2440002 () Unit!159841)

(declare-fun lemmaFlatMapOnSingletonSet!1582 ((InoxSet Context!11918) Context!11918 Int) Unit!159841)

(assert (=> b!6745694 (= lt!2440002 (lemmaFlatMapOnSingletonSet!1582 z!1189 (h!72349 zl!343) lambda!379185))))

(declare-fun b!6745695 () Bool)

(declare-fun res!2759217 () Bool)

(declare-fun e!4074278 () Bool)

(assert (=> b!6745695 (=> res!2759217 e!4074278)))

(declare-fun lt!2440001 () (InoxSet Context!11918))

(declare-fun matchZipper!2561 ((InoxSet Context!11918) List!66026) Bool)

(declare-fun derivationStepZipper!2519 ((InoxSet Context!11918) C!33420) (InoxSet Context!11918))

(assert (=> b!6745695 (= res!2759217 (not (= (matchZipper!2561 lt!2440001 s!2326) (matchZipper!2561 (derivationStepZipper!2519 lt!2440001 (h!72350 s!2326)) (t!379727 s!2326)))))))

(declare-fun setIsEmpty!46087 () Bool)

(declare-fun setRes!46087 () Bool)

(assert (=> setIsEmpty!46087 setRes!46087))

(declare-fun b!6745696 () Bool)

(declare-fun e!4074269 () Bool)

(assert (=> b!6745696 (= e!4074269 (not e!4074282))))

(declare-fun res!2759225 () Bool)

(assert (=> b!6745696 (=> res!2759225 e!4074282)))

(get-info :version)

(assert (=> b!6745696 (= res!2759225 (not ((_ is Cons!65901) zl!343)))))

(declare-fun matchRSpec!3676 (Regex!16575 List!66026) Bool)

(assert (=> b!6745696 (= lt!2439997 (matchRSpec!3676 r!7292 s!2326))))

(declare-fun matchR!8758 (Regex!16575 List!66026) Bool)

(assert (=> b!6745696 (= lt!2439997 (matchR!8758 r!7292 s!2326))))

(declare-fun lt!2440009 () Unit!159841)

(declare-fun mainMatchTheorem!3676 (Regex!16575 List!66026) Unit!159841)

(assert (=> b!6745696 (= lt!2440009 (mainMatchTheorem!3676 r!7292 s!2326))))

(declare-fun b!6745697 () Bool)

(declare-fun e!4074280 () Bool)

(assert (=> b!6745697 (= e!4074278 e!4074280)))

(declare-fun res!2759221 () Bool)

(assert (=> b!6745697 (=> res!2759221 e!4074280)))

(declare-fun lt!2439995 () Context!11918)

(declare-fun lt!2440003 () Regex!16575)

(declare-fun unfocusZipper!2317 (List!66025) Regex!16575)

(assert (=> b!6745697 (= res!2759221 (not (= (unfocusZipper!2317 (Cons!65901 lt!2439995 Nil!65901)) lt!2440003)))))

(assert (=> b!6745697 (= lt!2440003 (Concat!25420 (reg!16904 r!7292) r!7292))))

(declare-fun b!6745698 () Bool)

(declare-fun res!2759223 () Bool)

(assert (=> b!6745698 (=> res!2759223 e!4074276)))

(declare-fun validRegex!8311 (Regex!16575) Bool)

(assert (=> b!6745698 (= res!2759223 (not (validRegex!8311 (reg!16904 r!7292))))))

(declare-fun b!6745699 () Bool)

(declare-fun res!2759222 () Bool)

(assert (=> b!6745699 (=> res!2759222 e!4074282)))

(declare-fun generalisedConcat!2172 (List!66024) Regex!16575)

(assert (=> b!6745699 (= res!2759222 (not (= r!7292 (generalisedConcat!2172 (exprs!6459 (h!72349 zl!343))))))))

(declare-fun b!6745700 () Bool)

(declare-fun tp_is_empty!42403 () Bool)

(assert (=> b!6745700 (= e!4074267 tp_is_empty!42403)))

(declare-fun b!6745701 () Bool)

(declare-fun tp!1849017 () Bool)

(declare-fun tp!1849024 () Bool)

(assert (=> b!6745701 (= e!4074267 (and tp!1849017 tp!1849024))))

(declare-fun b!6745702 () Bool)

(declare-fun res!2759230 () Bool)

(assert (=> b!6745702 (=> res!2759230 e!4074282)))

(assert (=> b!6745702 (= res!2759230 (not ((_ is Cons!65900) (exprs!6459 (h!72349 zl!343)))))))

(declare-fun b!6745703 () Bool)

(declare-fun tp!1849025 () Bool)

(assert (=> b!6745703 (= e!4074271 tp!1849025)))

(declare-fun b!6745704 () Bool)

(declare-fun e!4074275 () Bool)

(declare-fun tp!1849018 () Bool)

(assert (=> b!6745704 (= e!4074275 tp!1849018)))

(declare-fun b!6745705 () Bool)

(declare-fun res!2759231 () Bool)

(assert (=> b!6745705 (=> res!2759231 e!4074282)))

(assert (=> b!6745705 (= res!2759231 (or ((_ is EmptyExpr!16575) r!7292) ((_ is EmptyLang!16575) r!7292) ((_ is ElementMatch!16575) r!7292) ((_ is Union!16575) r!7292) ((_ is Concat!25420) r!7292)))))

(declare-fun b!6745706 () Bool)

(declare-fun e!4074279 () Bool)

(declare-fun tp!1849016 () Bool)

(assert (=> b!6745706 (= e!4074279 (and tp_is_empty!42403 tp!1849016))))

(declare-fun b!6745707 () Bool)

(assert (=> b!6745707 (= e!4074274 e!4074270)))

(declare-fun res!2759210 () Bool)

(assert (=> b!6745707 (=> res!2759210 e!4074270)))

(declare-fun lt!2440015 () (InoxSet Context!11918))

(assert (=> b!6745707 (= res!2759210 (not (= lt!2440015 lt!2439996)))))

(declare-fun derivationStepZipperDown!1803 (Regex!16575 Context!11918 C!33420) (InoxSet Context!11918))

(assert (=> b!6745707 (= lt!2439996 (derivationStepZipperDown!1803 r!7292 (Context!11919 Nil!65900) (h!72350 s!2326)))))

(assert (=> b!6745707 (= lt!2440015 (derivationStepZipperUp!1729 (Context!11919 (Cons!65900 r!7292 Nil!65900)) (h!72350 s!2326)))))

(assert (=> b!6745707 (= lt!2440007 (derivationStepZipper!2519 z!1189 (h!72350 s!2326)))))

(declare-fun b!6745708 () Bool)

(declare-fun e!4074281 () Bool)

(assert (=> b!6745708 (= e!4074281 e!4074276)))

(declare-fun res!2759215 () Bool)

(assert (=> b!6745708 (=> res!2759215 e!4074276)))

(declare-fun lt!2440005 () Bool)

(assert (=> b!6745708 (= res!2759215 (not lt!2440005))))

(assert (=> b!6745708 (= lt!2440005 (matchRSpec!3676 lt!2440003 s!2326))))

(assert (=> b!6745708 (= lt!2440005 (matchR!8758 lt!2440003 s!2326))))

(declare-fun lt!2440010 () Unit!159841)

(assert (=> b!6745708 (= lt!2440010 (mainMatchTheorem!3676 lt!2440003 s!2326))))

(declare-fun b!6745709 () Bool)

(declare-fun res!2759211 () Bool)

(assert (=> b!6745709 (=> res!2759211 e!4074282)))

(declare-fun generalisedUnion!2419 (List!66024) Regex!16575)

(declare-fun unfocusZipperList!1996 (List!66025) List!66024)

(assert (=> b!6745709 (= res!2759211 (not (= r!7292 (generalisedUnion!2419 (unfocusZipperList!1996 zl!343)))))))

(declare-fun b!6745710 () Bool)

(declare-fun res!2759229 () Bool)

(assert (=> b!6745710 (=> res!2759229 e!4074281)))

(declare-fun lt!2440006 () Context!11918)

(assert (=> b!6745710 (= res!2759229 (not (= (unfocusZipper!2317 (Cons!65901 lt!2440006 Nil!65901)) r!7292)))))

(declare-fun b!6745711 () Bool)

(declare-fun res!2759216 () Bool)

(assert (=> b!6745711 (=> res!2759216 e!4074282)))

(declare-fun isEmpty!38250 (List!66025) Bool)

(assert (=> b!6745711 (= res!2759216 (not (isEmpty!38250 (t!379726 zl!343))))))

(declare-fun b!6745712 () Bool)

(assert (=> b!6745712 (= e!4074268 lt!2440000)))

(declare-fun b!6745713 () Bool)

(assert (=> b!6745713 (= e!4074277 e!4074278)))

(declare-fun res!2759220 () Bool)

(assert (=> b!6745713 (=> res!2759220 e!4074278)))

(assert (=> b!6745713 (= res!2759220 (not (= lt!2440007 (derivationStepZipperDown!1803 (reg!16904 r!7292) lt!2440006 (h!72350 s!2326)))))))

(declare-fun lt!2440011 () List!66024)

(assert (=> b!6745713 (= lt!2440006 (Context!11919 lt!2440011))))

(assert (=> b!6745713 (= (flatMap!2056 lt!2440001 lambda!379185) (derivationStepZipperUp!1729 lt!2439995 (h!72350 s!2326)))))

(declare-fun lt!2440016 () Unit!159841)

(assert (=> b!6745713 (= lt!2440016 (lemmaFlatMapOnSingletonSet!1582 lt!2440001 lt!2439995 lambda!379185))))

(declare-fun lt!2440019 () (InoxSet Context!11918))

(assert (=> b!6745713 (= lt!2440019 (derivationStepZipperUp!1729 lt!2439995 (h!72350 s!2326)))))

(assert (=> b!6745713 (= lt!2440001 (store ((as const (Array Context!11918 Bool)) false) lt!2439995 true))))

(assert (=> b!6745713 (= lt!2439995 (Context!11919 (Cons!65900 (reg!16904 r!7292) lt!2440011)))))

(assert (=> b!6745713 (= lt!2440011 (Cons!65900 r!7292 Nil!65900))))

(declare-fun b!6745714 () Bool)

(declare-fun res!2759232 () Bool)

(assert (=> b!6745714 (=> res!2759232 e!4074278)))

(declare-fun lt!2440008 () Regex!16575)

(assert (=> b!6745714 (= res!2759232 (or (not (= lt!2440008 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun res!2759214 () Bool)

(assert (=> start!654292 (=> (not res!2759214) (not e!4074272))))

(assert (=> start!654292 (= res!2759214 (validRegex!8311 r!7292))))

(assert (=> start!654292 e!4074272))

(assert (=> start!654292 e!4074267))

(declare-fun condSetEmpty!46087 () Bool)

(assert (=> start!654292 (= condSetEmpty!46087 (= z!1189 ((as const (Array Context!11918 Bool)) false)))))

(assert (=> start!654292 setRes!46087))

(assert (=> start!654292 e!4074273))

(assert (=> start!654292 e!4074279))

(declare-fun b!6745715 () Bool)

(assert (=> b!6745715 (= e!4074272 e!4074269)))

(declare-fun res!2759218 () Bool)

(assert (=> b!6745715 (=> (not res!2759218) (not e!4074269))))

(assert (=> b!6745715 (= res!2759218 (= r!7292 lt!2440008))))

(assert (=> b!6745715 (= lt!2440008 (unfocusZipper!2317 zl!343))))

(declare-fun b!6745716 () Bool)

(declare-fun res!2759226 () Bool)

(assert (=> b!6745716 (=> res!2759226 e!4074281)))

(declare-fun lt!2439998 () Context!11918)

(assert (=> b!6745716 (= res!2759226 (not (= (unfocusZipper!2317 (Cons!65901 lt!2439998 Nil!65901)) (reg!16904 r!7292))))))

(declare-fun b!6745717 () Bool)

(declare-fun res!2759212 () Bool)

(assert (=> b!6745717 (=> res!2759212 e!4074274)))

(assert (=> b!6745717 (= res!2759212 ((_ is Nil!65902) s!2326))))

(declare-fun b!6745718 () Bool)

(declare-fun tp!1849022 () Bool)

(declare-fun tp!1849023 () Bool)

(assert (=> b!6745718 (= e!4074267 (and tp!1849022 tp!1849023))))

(declare-fun setNonEmpty!46087 () Bool)

(declare-fun setElem!46087 () Context!11918)

(declare-fun tp!1849021 () Bool)

(assert (=> setNonEmpty!46087 (= setRes!46087 (and tp!1849021 (inv!84684 setElem!46087) e!4074275))))

(declare-fun setRest!46087 () (InoxSet Context!11918))

(assert (=> setNonEmpty!46087 (= z!1189 ((_ map or) (store ((as const (Array Context!11918 Bool)) false) setElem!46087 true) setRest!46087))))

(declare-fun b!6745719 () Bool)

(assert (=> b!6745719 (= e!4074280 e!4074281)))

(declare-fun res!2759227 () Bool)

(assert (=> b!6745719 (=> res!2759227 e!4074281)))

(declare-fun lt!2439999 () (InoxSet Context!11918))

(assert (=> b!6745719 (= res!2759227 (not (= lt!2440007 (derivationStepZipper!2519 lt!2439999 (h!72350 s!2326)))))))

(assert (=> b!6745719 (= (flatMap!2056 lt!2439999 lambda!379185) (derivationStepZipperUp!1729 lt!2440006 (h!72350 s!2326)))))

(declare-fun lt!2440020 () Unit!159841)

(assert (=> b!6745719 (= lt!2440020 (lemmaFlatMapOnSingletonSet!1582 lt!2439999 lt!2440006 lambda!379185))))

(declare-fun lt!2440013 () (InoxSet Context!11918))

(assert (=> b!6745719 (= (flatMap!2056 lt!2440013 lambda!379185) (derivationStepZipperUp!1729 lt!2439998 (h!72350 s!2326)))))

(declare-fun lt!2440004 () Unit!159841)

(assert (=> b!6745719 (= lt!2440004 (lemmaFlatMapOnSingletonSet!1582 lt!2440013 lt!2439998 lambda!379185))))

(declare-fun lt!2440017 () (InoxSet Context!11918))

(assert (=> b!6745719 (= lt!2440017 (derivationStepZipperUp!1729 lt!2440006 (h!72350 s!2326)))))

(declare-fun lt!2440012 () (InoxSet Context!11918))

(assert (=> b!6745719 (= lt!2440012 (derivationStepZipperUp!1729 lt!2439998 (h!72350 s!2326)))))

(assert (=> b!6745719 (= lt!2439999 (store ((as const (Array Context!11918 Bool)) false) lt!2440006 true))))

(assert (=> b!6745719 (= lt!2440013 (store ((as const (Array Context!11918 Bool)) false) lt!2439998 true))))

(assert (=> b!6745719 (= lt!2439998 (Context!11919 (Cons!65900 (reg!16904 r!7292) Nil!65900)))))

(assert (= (and start!654292 res!2759214) b!6745690))

(assert (= (and b!6745690 res!2759228) b!6745715))

(assert (= (and b!6745715 res!2759218) b!6745696))

(assert (= (and b!6745696 (not res!2759225)) b!6745711))

(assert (= (and b!6745711 (not res!2759216)) b!6745699))

(assert (= (and b!6745699 (not res!2759222)) b!6745702))

(assert (= (and b!6745702 (not res!2759230)) b!6745709))

(assert (= (and b!6745709 (not res!2759211)) b!6745705))

(assert (= (and b!6745705 (not res!2759231)) b!6745693))

(assert (= (and b!6745693 (not res!2759224)) b!6745712))

(assert (= (and b!6745693 (not res!2759219)) b!6745717))

(assert (= (and b!6745717 (not res!2759212)) b!6745707))

(assert (= (and b!6745707 (not res!2759210)) b!6745694))

(assert (= (and b!6745694 (not res!2759213)) b!6745713))

(assert (= (and b!6745713 (not res!2759220)) b!6745695))

(assert (= (and b!6745695 (not res!2759217)) b!6745714))

(assert (= (and b!6745714 (not res!2759232)) b!6745697))

(assert (= (and b!6745697 (not res!2759221)) b!6745719))

(assert (= (and b!6745719 (not res!2759227)) b!6745716))

(assert (= (and b!6745716 (not res!2759226)) b!6745710))

(assert (= (and b!6745710 (not res!2759229)) b!6745708))

(assert (= (and b!6745708 (not res!2759215)) b!6745698))

(assert (= (and b!6745698 (not res!2759223)) b!6745689))

(assert (= (and start!654292 ((_ is ElementMatch!16575) r!7292)) b!6745700))

(assert (= (and start!654292 ((_ is Concat!25420) r!7292)) b!6745718))

(assert (= (and start!654292 ((_ is Star!16575) r!7292)) b!6745691))

(assert (= (and start!654292 ((_ is Union!16575) r!7292)) b!6745701))

(assert (= (and start!654292 condSetEmpty!46087) setIsEmpty!46087))

(assert (= (and start!654292 (not condSetEmpty!46087)) setNonEmpty!46087))

(assert (= setNonEmpty!46087 b!6745704))

(assert (= b!6745692 b!6745703))

(assert (= (and start!654292 ((_ is Cons!65901) zl!343)) b!6745692))

(assert (= (and start!654292 ((_ is Cons!65902) s!2326)) b!6745706))

(declare-fun m!7501120 () Bool)

(assert (=> b!6745689 m!7501120))

(declare-fun m!7501122 () Bool)

(assert (=> b!6745710 m!7501122))

(declare-fun m!7501124 () Bool)

(assert (=> b!6745716 m!7501124))

(declare-fun m!7501126 () Bool)

(assert (=> b!6745690 m!7501126))

(declare-fun m!7501128 () Bool)

(assert (=> start!654292 m!7501128))

(declare-fun m!7501130 () Bool)

(assert (=> b!6745692 m!7501130))

(declare-fun m!7501132 () Bool)

(assert (=> b!6745697 m!7501132))

(declare-fun m!7501134 () Bool)

(assert (=> b!6745719 m!7501134))

(declare-fun m!7501136 () Bool)

(assert (=> b!6745719 m!7501136))

(declare-fun m!7501138 () Bool)

(assert (=> b!6745719 m!7501138))

(declare-fun m!7501140 () Bool)

(assert (=> b!6745719 m!7501140))

(declare-fun m!7501142 () Bool)

(assert (=> b!6745719 m!7501142))

(declare-fun m!7501144 () Bool)

(assert (=> b!6745719 m!7501144))

(declare-fun m!7501146 () Bool)

(assert (=> b!6745719 m!7501146))

(declare-fun m!7501148 () Bool)

(assert (=> b!6745719 m!7501148))

(declare-fun m!7501150 () Bool)

(assert (=> b!6745719 m!7501150))

(declare-fun m!7501152 () Bool)

(assert (=> b!6745709 m!7501152))

(assert (=> b!6745709 m!7501152))

(declare-fun m!7501154 () Bool)

(assert (=> b!6745709 m!7501154))

(declare-fun m!7501156 () Bool)

(assert (=> setNonEmpty!46087 m!7501156))

(declare-fun m!7501158 () Bool)

(assert (=> b!6745708 m!7501158))

(declare-fun m!7501160 () Bool)

(assert (=> b!6745708 m!7501160))

(declare-fun m!7501162 () Bool)

(assert (=> b!6745708 m!7501162))

(declare-fun m!7501164 () Bool)

(assert (=> b!6745699 m!7501164))

(declare-fun m!7501166 () Bool)

(assert (=> b!6745694 m!7501166))

(declare-fun m!7501168 () Bool)

(assert (=> b!6745694 m!7501168))

(declare-fun m!7501170 () Bool)

(assert (=> b!6745694 m!7501170))

(declare-fun m!7501172 () Bool)

(assert (=> b!6745695 m!7501172))

(declare-fun m!7501174 () Bool)

(assert (=> b!6745695 m!7501174))

(assert (=> b!6745695 m!7501174))

(declare-fun m!7501176 () Bool)

(assert (=> b!6745695 m!7501176))

(declare-fun m!7501178 () Bool)

(assert (=> b!6745707 m!7501178))

(declare-fun m!7501180 () Bool)

(assert (=> b!6745707 m!7501180))

(declare-fun m!7501182 () Bool)

(assert (=> b!6745707 m!7501182))

(declare-fun m!7501184 () Bool)

(assert (=> b!6745693 m!7501184))

(declare-fun m!7501186 () Bool)

(assert (=> b!6745693 m!7501186))

(declare-fun m!7501188 () Bool)

(assert (=> b!6745693 m!7501188))

(declare-fun m!7501190 () Bool)

(assert (=> b!6745693 m!7501190))

(declare-fun m!7501192 () Bool)

(assert (=> b!6745693 m!7501192))

(declare-fun m!7501194 () Bool)

(assert (=> b!6745693 m!7501194))

(declare-fun m!7501196 () Bool)

(assert (=> b!6745693 m!7501196))

(assert (=> b!6745693 m!7501194))

(declare-fun m!7501198 () Bool)

(assert (=> b!6745693 m!7501198))

(declare-fun m!7501200 () Bool)

(assert (=> b!6745693 m!7501200))

(assert (=> b!6745693 m!7501196))

(assert (=> b!6745693 m!7501196))

(declare-fun m!7501202 () Bool)

(assert (=> b!6745711 m!7501202))

(declare-fun m!7501204 () Bool)

(assert (=> b!6745713 m!7501204))

(declare-fun m!7501206 () Bool)

(assert (=> b!6745713 m!7501206))

(declare-fun m!7501208 () Bool)

(assert (=> b!6745713 m!7501208))

(declare-fun m!7501210 () Bool)

(assert (=> b!6745713 m!7501210))

(declare-fun m!7501212 () Bool)

(assert (=> b!6745713 m!7501212))

(declare-fun m!7501214 () Bool)

(assert (=> b!6745715 m!7501214))

(declare-fun m!7501216 () Bool)

(assert (=> b!6745696 m!7501216))

(declare-fun m!7501218 () Bool)

(assert (=> b!6745696 m!7501218))

(declare-fun m!7501220 () Bool)

(assert (=> b!6745696 m!7501220))

(declare-fun m!7501222 () Bool)

(assert (=> b!6745698 m!7501222))

(check-sat (not b!6745716) (not b!6745718) (not b!6745695) (not b!6745698) (not b!6745697) (not b!6745713) (not b!6745699) (not b!6745689) (not start!654292) (not b!6745711) (not b!6745693) (not b!6745708) (not b!6745715) (not b!6745719) (not b!6745707) (not b!6745692) (not b!6745709) (not b!6745710) (not b!6745704) tp_is_empty!42403 (not setNonEmpty!46087) (not b!6745691) (not b!6745701) (not b!6745690) (not b!6745696) (not b!6745706) (not b!6745694) (not b!6745703))
(check-sat)
(get-model)

(declare-fun d!2119271 () Bool)

(declare-fun lt!2440033 () Regex!16575)

(assert (=> d!2119271 (validRegex!8311 lt!2440033)))

(assert (=> d!2119271 (= lt!2440033 (generalisedUnion!2419 (unfocusZipperList!1996 (Cons!65901 lt!2439998 Nil!65901))))))

(assert (=> d!2119271 (= (unfocusZipper!2317 (Cons!65901 lt!2439998 Nil!65901)) lt!2440033)))

(declare-fun bs!1793333 () Bool)

(assert (= bs!1793333 d!2119271))

(declare-fun m!7501270 () Bool)

(assert (=> bs!1793333 m!7501270))

(declare-fun m!7501272 () Bool)

(assert (=> bs!1793333 m!7501272))

(assert (=> bs!1793333 m!7501272))

(declare-fun m!7501274 () Bool)

(assert (=> bs!1793333 m!7501274))

(assert (=> b!6745716 d!2119271))

(declare-fun b!6745829 () Bool)

(declare-fun c!1251575 () Bool)

(assert (=> b!6745829 (= c!1251575 ((_ is Star!16575) r!7292))))

(declare-fun e!4074339 () (InoxSet Context!11918))

(declare-fun e!4074342 () (InoxSet Context!11918))

(assert (=> b!6745829 (= e!4074339 e!4074342)))

(declare-fun d!2119273 () Bool)

(declare-fun c!1251578 () Bool)

(assert (=> d!2119273 (= c!1251578 (and ((_ is ElementMatch!16575) r!7292) (= (c!1251537 r!7292) (h!72350 s!2326))))))

(declare-fun e!4074343 () (InoxSet Context!11918))

(assert (=> d!2119273 (= (derivationStepZipperDown!1803 r!7292 (Context!11919 Nil!65900) (h!72350 s!2326)) e!4074343)))

(declare-fun b!6745830 () Bool)

(declare-fun e!4074344 () (InoxSet Context!11918))

(declare-fun call!609991 () (InoxSet Context!11918))

(declare-fun call!609992 () (InoxSet Context!11918))

(assert (=> b!6745830 (= e!4074344 ((_ map or) call!609991 call!609992))))

(declare-fun bm!609984 () Bool)

(declare-fun call!609994 () (InoxSet Context!11918))

(assert (=> bm!609984 (= call!609992 call!609994)))

(declare-fun b!6745831 () Bool)

(declare-fun e!4074340 () Bool)

(assert (=> b!6745831 (= e!4074340 (nullable!6562 (regOne!33662 r!7292)))))

(declare-fun b!6745832 () Bool)

(assert (=> b!6745832 (= e!4074343 (store ((as const (Array Context!11918 Bool)) false) (Context!11919 Nil!65900) true))))

(declare-fun c!1251579 () Bool)

(declare-fun bm!609985 () Bool)

(declare-fun call!609993 () List!66024)

(assert (=> bm!609985 (= call!609991 (derivationStepZipperDown!1803 (ite c!1251579 (regOne!33663 r!7292) (regOne!33662 r!7292)) (ite c!1251579 (Context!11919 Nil!65900) (Context!11919 call!609993)) (h!72350 s!2326)))))

(declare-fun b!6745833 () Bool)

(declare-fun e!4074341 () (InoxSet Context!11918))

(assert (=> b!6745833 (= e!4074341 ((_ map or) call!609991 call!609994))))

(declare-fun b!6745834 () Bool)

(declare-fun call!609989 () (InoxSet Context!11918))

(assert (=> b!6745834 (= e!4074339 call!609989)))

(declare-fun bm!609986 () Bool)

(assert (=> bm!609986 (= call!609989 call!609992)))

(declare-fun bm!609987 () Bool)

(declare-fun call!609990 () List!66024)

(assert (=> bm!609987 (= call!609990 call!609993)))

(declare-fun b!6745835 () Bool)

(declare-fun c!1251576 () Bool)

(assert (=> b!6745835 (= c!1251576 e!4074340)))

(declare-fun res!2759264 () Bool)

(assert (=> b!6745835 (=> (not res!2759264) (not e!4074340))))

(assert (=> b!6745835 (= res!2759264 ((_ is Concat!25420) r!7292))))

(assert (=> b!6745835 (= e!4074341 e!4074344)))

(declare-fun c!1251577 () Bool)

(declare-fun bm!609988 () Bool)

(assert (=> bm!609988 (= call!609994 (derivationStepZipperDown!1803 (ite c!1251579 (regTwo!33663 r!7292) (ite c!1251576 (regTwo!33662 r!7292) (ite c!1251577 (regOne!33662 r!7292) (reg!16904 r!7292)))) (ite (or c!1251579 c!1251576) (Context!11919 Nil!65900) (Context!11919 call!609990)) (h!72350 s!2326)))))

(declare-fun b!6745836 () Bool)

(assert (=> b!6745836 (= e!4074342 ((as const (Array Context!11918 Bool)) false))))

(declare-fun b!6745837 () Bool)

(assert (=> b!6745837 (= e!4074343 e!4074341)))

(assert (=> b!6745837 (= c!1251579 ((_ is Union!16575) r!7292))))

(declare-fun bm!609989 () Bool)

(declare-fun $colon$colon!2392 (List!66024 Regex!16575) List!66024)

(assert (=> bm!609989 (= call!609993 ($colon$colon!2392 (exprs!6459 (Context!11919 Nil!65900)) (ite (or c!1251576 c!1251577) (regTwo!33662 r!7292) r!7292)))))

(declare-fun b!6745838 () Bool)

(assert (=> b!6745838 (= e!4074342 call!609989)))

(declare-fun b!6745839 () Bool)

(assert (=> b!6745839 (= e!4074344 e!4074339)))

(assert (=> b!6745839 (= c!1251577 ((_ is Concat!25420) r!7292))))

(assert (= (and d!2119273 c!1251578) b!6745832))

(assert (= (and d!2119273 (not c!1251578)) b!6745837))

(assert (= (and b!6745837 c!1251579) b!6745833))

(assert (= (and b!6745837 (not c!1251579)) b!6745835))

(assert (= (and b!6745835 res!2759264) b!6745831))

(assert (= (and b!6745835 c!1251576) b!6745830))

(assert (= (and b!6745835 (not c!1251576)) b!6745839))

(assert (= (and b!6745839 c!1251577) b!6745834))

(assert (= (and b!6745839 (not c!1251577)) b!6745829))

(assert (= (and b!6745829 c!1251575) b!6745838))

(assert (= (and b!6745829 (not c!1251575)) b!6745836))

(assert (= (or b!6745834 b!6745838) bm!609987))

(assert (= (or b!6745834 b!6745838) bm!609986))

(assert (= (or b!6745830 bm!609987) bm!609989))

(assert (= (or b!6745830 bm!609986) bm!609984))

(assert (= (or b!6745833 bm!609984) bm!609988))

(assert (= (or b!6745833 b!6745830) bm!609985))

(declare-fun m!7501294 () Bool)

(assert (=> bm!609988 m!7501294))

(declare-fun m!7501296 () Bool)

(assert (=> b!6745832 m!7501296))

(declare-fun m!7501298 () Bool)

(assert (=> bm!609985 m!7501298))

(declare-fun m!7501300 () Bool)

(assert (=> bm!609989 m!7501300))

(declare-fun m!7501302 () Bool)

(assert (=> b!6745831 m!7501302))

(assert (=> b!6745707 d!2119273))

(declare-fun b!6745871 () Bool)

(declare-fun e!4074364 () (InoxSet Context!11918))

(declare-fun e!4074363 () (InoxSet Context!11918))

(assert (=> b!6745871 (= e!4074364 e!4074363)))

(declare-fun c!1251586 () Bool)

(assert (=> b!6745871 (= c!1251586 ((_ is Cons!65900) (exprs!6459 (Context!11919 (Cons!65900 r!7292 Nil!65900)))))))

(declare-fun b!6745872 () Bool)

(declare-fun call!609997 () (InoxSet Context!11918))

(assert (=> b!6745872 (= e!4074363 call!609997)))

(declare-fun b!6745873 () Bool)

(assert (=> b!6745873 (= e!4074363 ((as const (Array Context!11918 Bool)) false))))

(declare-fun bm!609992 () Bool)

(assert (=> bm!609992 (= call!609997 (derivationStepZipperDown!1803 (h!72348 (exprs!6459 (Context!11919 (Cons!65900 r!7292 Nil!65900)))) (Context!11919 (t!379725 (exprs!6459 (Context!11919 (Cons!65900 r!7292 Nil!65900))))) (h!72350 s!2326)))))

(declare-fun d!2119287 () Bool)

(declare-fun c!1251587 () Bool)

(declare-fun e!4074362 () Bool)

(assert (=> d!2119287 (= c!1251587 e!4074362)))

(declare-fun res!2759284 () Bool)

(assert (=> d!2119287 (=> (not res!2759284) (not e!4074362))))

(assert (=> d!2119287 (= res!2759284 ((_ is Cons!65900) (exprs!6459 (Context!11919 (Cons!65900 r!7292 Nil!65900)))))))

(assert (=> d!2119287 (= (derivationStepZipperUp!1729 (Context!11919 (Cons!65900 r!7292 Nil!65900)) (h!72350 s!2326)) e!4074364)))

(declare-fun b!6745874 () Bool)

(assert (=> b!6745874 (= e!4074362 (nullable!6562 (h!72348 (exprs!6459 (Context!11919 (Cons!65900 r!7292 Nil!65900))))))))

(declare-fun b!6745875 () Bool)

(assert (=> b!6745875 (= e!4074364 ((_ map or) call!609997 (derivationStepZipperUp!1729 (Context!11919 (t!379725 (exprs!6459 (Context!11919 (Cons!65900 r!7292 Nil!65900))))) (h!72350 s!2326))))))

(assert (= (and d!2119287 res!2759284) b!6745874))

(assert (= (and d!2119287 c!1251587) b!6745875))

(assert (= (and d!2119287 (not c!1251587)) b!6745871))

(assert (= (and b!6745871 c!1251586) b!6745872))

(assert (= (and b!6745871 (not c!1251586)) b!6745873))

(assert (= (or b!6745875 b!6745872) bm!609992))

(declare-fun m!7501324 () Bool)

(assert (=> bm!609992 m!7501324))

(declare-fun m!7501326 () Bool)

(assert (=> b!6745874 m!7501326))

(declare-fun m!7501328 () Bool)

(assert (=> b!6745875 m!7501328))

(assert (=> b!6745707 d!2119287))

(declare-fun bs!1793346 () Bool)

(declare-fun d!2119291 () Bool)

(assert (= bs!1793346 (and d!2119291 b!6745694)))

(declare-fun lambda!379209 () Int)

(assert (=> bs!1793346 (= lambda!379209 lambda!379185)))

(assert (=> d!2119291 true))

(assert (=> d!2119291 (= (derivationStepZipper!2519 z!1189 (h!72350 s!2326)) (flatMap!2056 z!1189 lambda!379209))))

(declare-fun bs!1793347 () Bool)

(assert (= bs!1793347 d!2119291))

(declare-fun m!7501342 () Bool)

(assert (=> bs!1793347 m!7501342))

(assert (=> b!6745707 d!2119291))

(declare-fun bs!1793373 () Bool)

(declare-fun b!6746011 () Bool)

(assert (= bs!1793373 (and b!6746011 b!6745693)))

(declare-fun lambda!379223 () Int)

(assert (=> bs!1793373 (not (= lambda!379223 lambda!379182))))

(assert (=> bs!1793373 (= lambda!379223 lambda!379183)))

(assert (=> bs!1793373 (not (= lambda!379223 lambda!379184))))

(assert (=> b!6746011 true))

(assert (=> b!6746011 true))

(declare-fun bs!1793374 () Bool)

(declare-fun b!6746005 () Bool)

(assert (= bs!1793374 (and b!6746005 b!6745693)))

(declare-fun lambda!379224 () Int)

(assert (=> bs!1793374 (not (= lambda!379224 lambda!379182))))

(assert (=> bs!1793374 (not (= lambda!379224 lambda!379183))))

(assert (=> bs!1793374 (= (and (= (regOne!33662 r!7292) (reg!16904 r!7292)) (= (regTwo!33662 r!7292) r!7292)) (= lambda!379224 lambda!379184))))

(declare-fun bs!1793375 () Bool)

(assert (= bs!1793375 (and b!6746005 b!6746011)))

(assert (=> bs!1793375 (not (= lambda!379224 lambda!379223))))

(assert (=> b!6746005 true))

(assert (=> b!6746005 true))

(declare-fun b!6746003 () Bool)

(declare-fun e!4074443 () Bool)

(declare-fun e!4074442 () Bool)

(assert (=> b!6746003 (= e!4074443 e!4074442)))

(declare-fun c!1251628 () Bool)

(assert (=> b!6746003 (= c!1251628 ((_ is Star!16575) r!7292))))

(declare-fun b!6746004 () Bool)

(declare-fun c!1251629 () Bool)

(assert (=> b!6746004 (= c!1251629 ((_ is ElementMatch!16575) r!7292))))

(declare-fun e!4074446 () Bool)

(declare-fun e!4074448 () Bool)

(assert (=> b!6746004 (= e!4074446 e!4074448)))

(declare-fun call!610020 () Bool)

(assert (=> b!6746005 (= e!4074442 call!610020)))

(declare-fun b!6746006 () Bool)

(declare-fun e!4074447 () Bool)

(declare-fun call!610021 () Bool)

(assert (=> b!6746006 (= e!4074447 call!610021)))

(declare-fun b!6746007 () Bool)

(assert (=> b!6746007 (= e!4074448 (= s!2326 (Cons!65902 (c!1251537 r!7292) Nil!65902)))))

(declare-fun b!6746008 () Bool)

(declare-fun e!4074445 () Bool)

(assert (=> b!6746008 (= e!4074445 (matchRSpec!3676 (regTwo!33663 r!7292) s!2326))))

(declare-fun bm!610015 () Bool)

(assert (=> bm!610015 (= call!610020 (Exists!3643 (ite c!1251628 lambda!379223 lambda!379224)))))

(declare-fun b!6746010 () Bool)

(declare-fun res!2759339 () Bool)

(declare-fun e!4074444 () Bool)

(assert (=> b!6746010 (=> res!2759339 e!4074444)))

(assert (=> b!6746010 (= res!2759339 call!610021)))

(assert (=> b!6746010 (= e!4074442 e!4074444)))

(assert (=> b!6746011 (= e!4074444 call!610020)))

(declare-fun bm!610016 () Bool)

(assert (=> bm!610016 (= call!610021 (isEmpty!38249 s!2326))))

(declare-fun b!6746012 () Bool)

(assert (=> b!6746012 (= e!4074447 e!4074446)))

(declare-fun res!2759338 () Bool)

(assert (=> b!6746012 (= res!2759338 (not ((_ is EmptyLang!16575) r!7292)))))

(assert (=> b!6746012 (=> (not res!2759338) (not e!4074446))))

(declare-fun b!6746013 () Bool)

(declare-fun c!1251626 () Bool)

(assert (=> b!6746013 (= c!1251626 ((_ is Union!16575) r!7292))))

(assert (=> b!6746013 (= e!4074448 e!4074443)))

(declare-fun d!2119297 () Bool)

(declare-fun c!1251627 () Bool)

(assert (=> d!2119297 (= c!1251627 ((_ is EmptyExpr!16575) r!7292))))

(assert (=> d!2119297 (= (matchRSpec!3676 r!7292 s!2326) e!4074447)))

(declare-fun b!6746009 () Bool)

(assert (=> b!6746009 (= e!4074443 e!4074445)))

(declare-fun res!2759340 () Bool)

(assert (=> b!6746009 (= res!2759340 (matchRSpec!3676 (regOne!33663 r!7292) s!2326))))

(assert (=> b!6746009 (=> res!2759340 e!4074445)))

(assert (= (and d!2119297 c!1251627) b!6746006))

(assert (= (and d!2119297 (not c!1251627)) b!6746012))

(assert (= (and b!6746012 res!2759338) b!6746004))

(assert (= (and b!6746004 c!1251629) b!6746007))

(assert (= (and b!6746004 (not c!1251629)) b!6746013))

(assert (= (and b!6746013 c!1251626) b!6746009))

(assert (= (and b!6746013 (not c!1251626)) b!6746003))

(assert (= (and b!6746009 (not res!2759340)) b!6746008))

(assert (= (and b!6746003 c!1251628) b!6746010))

(assert (= (and b!6746003 (not c!1251628)) b!6746005))

(assert (= (and b!6746010 (not res!2759339)) b!6746011))

(assert (= (or b!6746011 b!6746005) bm!610015))

(assert (= (or b!6746006 b!6746010) bm!610016))

(declare-fun m!7501414 () Bool)

(assert (=> b!6746008 m!7501414))

(declare-fun m!7501416 () Bool)

(assert (=> bm!610015 m!7501416))

(assert (=> bm!610016 m!7501184))

(declare-fun m!7501418 () Bool)

(assert (=> b!6746009 m!7501418))

(assert (=> b!6745696 d!2119297))

(declare-fun b!6746134 () Bool)

(declare-fun res!2759406 () Bool)

(declare-fun e!4074516 () Bool)

(assert (=> b!6746134 (=> res!2759406 e!4074516)))

(assert (=> b!6746134 (= res!2759406 (not ((_ is ElementMatch!16575) r!7292)))))

(declare-fun e!4074519 () Bool)

(assert (=> b!6746134 (= e!4074519 e!4074516)))

(declare-fun b!6746135 () Bool)

(declare-fun lt!2440067 () Bool)

(assert (=> b!6746135 (= e!4074519 (not lt!2440067))))

(declare-fun b!6746136 () Bool)

(declare-fun res!2759403 () Bool)

(assert (=> b!6746136 (=> res!2759403 e!4074516)))

(declare-fun e!4074515 () Bool)

(assert (=> b!6746136 (= res!2759403 e!4074515)))

(declare-fun res!2759404 () Bool)

(assert (=> b!6746136 (=> (not res!2759404) (not e!4074515))))

(assert (=> b!6746136 (= res!2759404 lt!2440067)))

(declare-fun b!6746137 () Bool)

(declare-fun res!2759400 () Bool)

(declare-fun e!4074514 () Bool)

(assert (=> b!6746137 (=> res!2759400 e!4074514)))

(declare-fun tail!12661 (List!66026) List!66026)

(assert (=> b!6746137 (= res!2759400 (not (isEmpty!38249 (tail!12661 s!2326))))))

(declare-fun b!6746138 () Bool)

(declare-fun e!4074520 () Bool)

(declare-fun derivativeStep!5246 (Regex!16575 C!33420) Regex!16575)

(declare-fun head!13576 (List!66026) C!33420)

(assert (=> b!6746138 (= e!4074520 (matchR!8758 (derivativeStep!5246 r!7292 (head!13576 s!2326)) (tail!12661 s!2326)))))

(declare-fun b!6746139 () Bool)

(declare-fun e!4074517 () Bool)

(declare-fun call!610040 () Bool)

(assert (=> b!6746139 (= e!4074517 (= lt!2440067 call!610040))))

(declare-fun d!2119331 () Bool)

(assert (=> d!2119331 e!4074517))

(declare-fun c!1251663 () Bool)

(assert (=> d!2119331 (= c!1251663 ((_ is EmptyExpr!16575) r!7292))))

(assert (=> d!2119331 (= lt!2440067 e!4074520)))

(declare-fun c!1251662 () Bool)

(assert (=> d!2119331 (= c!1251662 (isEmpty!38249 s!2326))))

(assert (=> d!2119331 (validRegex!8311 r!7292)))

(assert (=> d!2119331 (= (matchR!8758 r!7292 s!2326) lt!2440067)))

(declare-fun b!6746140 () Bool)

(assert (=> b!6746140 (= e!4074515 (= (head!13576 s!2326) (c!1251537 r!7292)))))

(declare-fun b!6746141 () Bool)

(declare-fun e!4074518 () Bool)

(assert (=> b!6746141 (= e!4074518 e!4074514)))

(declare-fun res!2759405 () Bool)

(assert (=> b!6746141 (=> res!2759405 e!4074514)))

(assert (=> b!6746141 (= res!2759405 call!610040)))

(declare-fun b!6746142 () Bool)

(declare-fun res!2759402 () Bool)

(assert (=> b!6746142 (=> (not res!2759402) (not e!4074515))))

(assert (=> b!6746142 (= res!2759402 (isEmpty!38249 (tail!12661 s!2326)))))

(declare-fun b!6746143 () Bool)

(assert (=> b!6746143 (= e!4074517 e!4074519)))

(declare-fun c!1251661 () Bool)

(assert (=> b!6746143 (= c!1251661 ((_ is EmptyLang!16575) r!7292))))

(declare-fun b!6746144 () Bool)

(assert (=> b!6746144 (= e!4074516 e!4074518)))

(declare-fun res!2759399 () Bool)

(assert (=> b!6746144 (=> (not res!2759399) (not e!4074518))))

(assert (=> b!6746144 (= res!2759399 (not lt!2440067))))

(declare-fun b!6746145 () Bool)

(declare-fun res!2759401 () Bool)

(assert (=> b!6746145 (=> (not res!2759401) (not e!4074515))))

(assert (=> b!6746145 (= res!2759401 (not call!610040))))

(declare-fun bm!610035 () Bool)

(assert (=> bm!610035 (= call!610040 (isEmpty!38249 s!2326))))

(declare-fun b!6746146 () Bool)

(assert (=> b!6746146 (= e!4074514 (not (= (head!13576 s!2326) (c!1251537 r!7292))))))

(declare-fun b!6746147 () Bool)

(assert (=> b!6746147 (= e!4074520 (nullable!6562 r!7292))))

(assert (= (and d!2119331 c!1251662) b!6746147))

(assert (= (and d!2119331 (not c!1251662)) b!6746138))

(assert (= (and d!2119331 c!1251663) b!6746139))

(assert (= (and d!2119331 (not c!1251663)) b!6746143))

(assert (= (and b!6746143 c!1251661) b!6746135))

(assert (= (and b!6746143 (not c!1251661)) b!6746134))

(assert (= (and b!6746134 (not res!2759406)) b!6746136))

(assert (= (and b!6746136 res!2759404) b!6746145))

(assert (= (and b!6746145 res!2759401) b!6746142))

(assert (= (and b!6746142 res!2759402) b!6746140))

(assert (= (and b!6746136 (not res!2759403)) b!6746144))

(assert (= (and b!6746144 res!2759399) b!6746141))

(assert (= (and b!6746141 (not res!2759405)) b!6746137))

(assert (= (and b!6746137 (not res!2759400)) b!6746146))

(assert (= (or b!6746139 b!6746145 b!6746141) bm!610035))

(declare-fun m!7501474 () Bool)

(assert (=> b!6746147 m!7501474))

(declare-fun m!7501476 () Bool)

(assert (=> b!6746142 m!7501476))

(assert (=> b!6746142 m!7501476))

(declare-fun m!7501478 () Bool)

(assert (=> b!6746142 m!7501478))

(assert (=> bm!610035 m!7501184))

(declare-fun m!7501480 () Bool)

(assert (=> b!6746146 m!7501480))

(assert (=> d!2119331 m!7501184))

(assert (=> d!2119331 m!7501128))

(assert (=> b!6746138 m!7501480))

(assert (=> b!6746138 m!7501480))

(declare-fun m!7501482 () Bool)

(assert (=> b!6746138 m!7501482))

(assert (=> b!6746138 m!7501476))

(assert (=> b!6746138 m!7501482))

(assert (=> b!6746138 m!7501476))

(declare-fun m!7501484 () Bool)

(assert (=> b!6746138 m!7501484))

(assert (=> b!6746137 m!7501476))

(assert (=> b!6746137 m!7501476))

(assert (=> b!6746137 m!7501478))

(assert (=> b!6746140 m!7501480))

(assert (=> b!6745696 d!2119331))

(declare-fun d!2119355 () Bool)

(assert (=> d!2119355 (= (matchR!8758 r!7292 s!2326) (matchRSpec!3676 r!7292 s!2326))))

(declare-fun lt!2440072 () Unit!159841)

(declare-fun choose!50310 (Regex!16575 List!66026) Unit!159841)

(assert (=> d!2119355 (= lt!2440072 (choose!50310 r!7292 s!2326))))

(assert (=> d!2119355 (validRegex!8311 r!7292)))

(assert (=> d!2119355 (= (mainMatchTheorem!3676 r!7292 s!2326) lt!2440072)))

(declare-fun bs!1793394 () Bool)

(assert (= bs!1793394 d!2119355))

(assert (=> bs!1793394 m!7501218))

(assert (=> bs!1793394 m!7501216))

(declare-fun m!7501486 () Bool)

(assert (=> bs!1793394 m!7501486))

(assert (=> bs!1793394 m!7501128))

(assert (=> b!6745696 d!2119355))

(declare-fun b!6746168 () Bool)

(declare-fun c!1251672 () Bool)

(assert (=> b!6746168 (= c!1251672 ((_ is Star!16575) (reg!16904 r!7292)))))

(declare-fun e!4074533 () (InoxSet Context!11918))

(declare-fun e!4074536 () (InoxSet Context!11918))

(assert (=> b!6746168 (= e!4074533 e!4074536)))

(declare-fun d!2119357 () Bool)

(declare-fun c!1251675 () Bool)

(assert (=> d!2119357 (= c!1251675 (and ((_ is ElementMatch!16575) (reg!16904 r!7292)) (= (c!1251537 (reg!16904 r!7292)) (h!72350 s!2326))))))

(declare-fun e!4074537 () (InoxSet Context!11918))

(assert (=> d!2119357 (= (derivationStepZipperDown!1803 (reg!16904 r!7292) lt!2440006 (h!72350 s!2326)) e!4074537)))

(declare-fun b!6746169 () Bool)

(declare-fun e!4074538 () (InoxSet Context!11918))

(declare-fun call!610043 () (InoxSet Context!11918))

(declare-fun call!610044 () (InoxSet Context!11918))

(assert (=> b!6746169 (= e!4074538 ((_ map or) call!610043 call!610044))))

(declare-fun bm!610036 () Bool)

(declare-fun call!610046 () (InoxSet Context!11918))

(assert (=> bm!610036 (= call!610044 call!610046)))

(declare-fun b!6746170 () Bool)

(declare-fun e!4074534 () Bool)

(assert (=> b!6746170 (= e!4074534 (nullable!6562 (regOne!33662 (reg!16904 r!7292))))))

(declare-fun b!6746171 () Bool)

(assert (=> b!6746171 (= e!4074537 (store ((as const (Array Context!11918 Bool)) false) lt!2440006 true))))

(declare-fun call!610045 () List!66024)

(declare-fun c!1251676 () Bool)

(declare-fun bm!610037 () Bool)

(assert (=> bm!610037 (= call!610043 (derivationStepZipperDown!1803 (ite c!1251676 (regOne!33663 (reg!16904 r!7292)) (regOne!33662 (reg!16904 r!7292))) (ite c!1251676 lt!2440006 (Context!11919 call!610045)) (h!72350 s!2326)))))

(declare-fun b!6746172 () Bool)

(declare-fun e!4074535 () (InoxSet Context!11918))

(assert (=> b!6746172 (= e!4074535 ((_ map or) call!610043 call!610046))))

(declare-fun b!6746173 () Bool)

(declare-fun call!610041 () (InoxSet Context!11918))

(assert (=> b!6746173 (= e!4074533 call!610041)))

(declare-fun bm!610038 () Bool)

(assert (=> bm!610038 (= call!610041 call!610044)))

(declare-fun bm!610039 () Bool)

(declare-fun call!610042 () List!66024)

(assert (=> bm!610039 (= call!610042 call!610045)))

(declare-fun b!6746174 () Bool)

(declare-fun c!1251673 () Bool)

(assert (=> b!6746174 (= c!1251673 e!4074534)))

(declare-fun res!2759411 () Bool)

(assert (=> b!6746174 (=> (not res!2759411) (not e!4074534))))

(assert (=> b!6746174 (= res!2759411 ((_ is Concat!25420) (reg!16904 r!7292)))))

(assert (=> b!6746174 (= e!4074535 e!4074538)))

(declare-fun bm!610040 () Bool)

(declare-fun c!1251674 () Bool)

(assert (=> bm!610040 (= call!610046 (derivationStepZipperDown!1803 (ite c!1251676 (regTwo!33663 (reg!16904 r!7292)) (ite c!1251673 (regTwo!33662 (reg!16904 r!7292)) (ite c!1251674 (regOne!33662 (reg!16904 r!7292)) (reg!16904 (reg!16904 r!7292))))) (ite (or c!1251676 c!1251673) lt!2440006 (Context!11919 call!610042)) (h!72350 s!2326)))))

(declare-fun b!6746175 () Bool)

(assert (=> b!6746175 (= e!4074536 ((as const (Array Context!11918 Bool)) false))))

(declare-fun b!6746176 () Bool)

(assert (=> b!6746176 (= e!4074537 e!4074535)))

(assert (=> b!6746176 (= c!1251676 ((_ is Union!16575) (reg!16904 r!7292)))))

(declare-fun bm!610041 () Bool)

(assert (=> bm!610041 (= call!610045 ($colon$colon!2392 (exprs!6459 lt!2440006) (ite (or c!1251673 c!1251674) (regTwo!33662 (reg!16904 r!7292)) (reg!16904 r!7292))))))

(declare-fun b!6746177 () Bool)

(assert (=> b!6746177 (= e!4074536 call!610041)))

(declare-fun b!6746178 () Bool)

(assert (=> b!6746178 (= e!4074538 e!4074533)))

(assert (=> b!6746178 (= c!1251674 ((_ is Concat!25420) (reg!16904 r!7292)))))

(assert (= (and d!2119357 c!1251675) b!6746171))

(assert (= (and d!2119357 (not c!1251675)) b!6746176))

(assert (= (and b!6746176 c!1251676) b!6746172))

(assert (= (and b!6746176 (not c!1251676)) b!6746174))

(assert (= (and b!6746174 res!2759411) b!6746170))

(assert (= (and b!6746174 c!1251673) b!6746169))

(assert (= (and b!6746174 (not c!1251673)) b!6746178))

(assert (= (and b!6746178 c!1251674) b!6746173))

(assert (= (and b!6746178 (not c!1251674)) b!6746168))

(assert (= (and b!6746168 c!1251672) b!6746177))

(assert (= (and b!6746168 (not c!1251672)) b!6746175))

(assert (= (or b!6746173 b!6746177) bm!610039))

(assert (= (or b!6746173 b!6746177) bm!610038))

(assert (= (or b!6746169 bm!610039) bm!610041))

(assert (= (or b!6746169 bm!610038) bm!610036))

(assert (= (or b!6746172 bm!610036) bm!610040))

(assert (= (or b!6746172 b!6746169) bm!610037))

(declare-fun m!7501488 () Bool)

(assert (=> bm!610040 m!7501488))

(assert (=> b!6746171 m!7501150))

(declare-fun m!7501490 () Bool)

(assert (=> bm!610037 m!7501490))

(declare-fun m!7501498 () Bool)

(assert (=> bm!610041 m!7501498))

(declare-fun m!7501504 () Bool)

(assert (=> b!6746170 m!7501504))

(assert (=> b!6745713 d!2119357))

(declare-fun d!2119359 () Bool)

(declare-fun choose!50311 ((InoxSet Context!11918) Int) (InoxSet Context!11918))

(assert (=> d!2119359 (= (flatMap!2056 lt!2440001 lambda!379185) (choose!50311 lt!2440001 lambda!379185))))

(declare-fun bs!1793397 () Bool)

(assert (= bs!1793397 d!2119359))

(declare-fun m!7501516 () Bool)

(assert (=> bs!1793397 m!7501516))

(assert (=> b!6745713 d!2119359))

(declare-fun b!6746189 () Bool)

(declare-fun e!4074547 () (InoxSet Context!11918))

(declare-fun e!4074546 () (InoxSet Context!11918))

(assert (=> b!6746189 (= e!4074547 e!4074546)))

(declare-fun c!1251681 () Bool)

(assert (=> b!6746189 (= c!1251681 ((_ is Cons!65900) (exprs!6459 lt!2439995)))))

(declare-fun b!6746190 () Bool)

(declare-fun call!610047 () (InoxSet Context!11918))

(assert (=> b!6746190 (= e!4074546 call!610047)))

(declare-fun b!6746191 () Bool)

(assert (=> b!6746191 (= e!4074546 ((as const (Array Context!11918 Bool)) false))))

(declare-fun bm!610042 () Bool)

(assert (=> bm!610042 (= call!610047 (derivationStepZipperDown!1803 (h!72348 (exprs!6459 lt!2439995)) (Context!11919 (t!379725 (exprs!6459 lt!2439995))) (h!72350 s!2326)))))

(declare-fun d!2119363 () Bool)

(declare-fun c!1251682 () Bool)

(declare-fun e!4074545 () Bool)

(assert (=> d!2119363 (= c!1251682 e!4074545)))

(declare-fun res!2759414 () Bool)

(assert (=> d!2119363 (=> (not res!2759414) (not e!4074545))))

(assert (=> d!2119363 (= res!2759414 ((_ is Cons!65900) (exprs!6459 lt!2439995)))))

(assert (=> d!2119363 (= (derivationStepZipperUp!1729 lt!2439995 (h!72350 s!2326)) e!4074547)))

(declare-fun b!6746192 () Bool)

(assert (=> b!6746192 (= e!4074545 (nullable!6562 (h!72348 (exprs!6459 lt!2439995))))))

(declare-fun b!6746193 () Bool)

(assert (=> b!6746193 (= e!4074547 ((_ map or) call!610047 (derivationStepZipperUp!1729 (Context!11919 (t!379725 (exprs!6459 lt!2439995))) (h!72350 s!2326))))))

(assert (= (and d!2119363 res!2759414) b!6746192))

(assert (= (and d!2119363 c!1251682) b!6746193))

(assert (= (and d!2119363 (not c!1251682)) b!6746189))

(assert (= (and b!6746189 c!1251681) b!6746190))

(assert (= (and b!6746189 (not c!1251681)) b!6746191))

(assert (= (or b!6746193 b!6746190) bm!610042))

(declare-fun m!7501518 () Bool)

(assert (=> bm!610042 m!7501518))

(declare-fun m!7501520 () Bool)

(assert (=> b!6746192 m!7501520))

(declare-fun m!7501522 () Bool)

(assert (=> b!6746193 m!7501522))

(assert (=> b!6745713 d!2119363))

(declare-fun d!2119365 () Bool)

(declare-fun dynLambda!26296 (Int Context!11918) (InoxSet Context!11918))

(assert (=> d!2119365 (= (flatMap!2056 lt!2440001 lambda!379185) (dynLambda!26296 lambda!379185 lt!2439995))))

(declare-fun lt!2440079 () Unit!159841)

(declare-fun choose!50312 ((InoxSet Context!11918) Context!11918 Int) Unit!159841)

(assert (=> d!2119365 (= lt!2440079 (choose!50312 lt!2440001 lt!2439995 lambda!379185))))

(assert (=> d!2119365 (= lt!2440001 (store ((as const (Array Context!11918 Bool)) false) lt!2439995 true))))

(assert (=> d!2119365 (= (lemmaFlatMapOnSingletonSet!1582 lt!2440001 lt!2439995 lambda!379185) lt!2440079)))

(declare-fun b_lambda!254083 () Bool)

(assert (=> (not b_lambda!254083) (not d!2119365)))

(declare-fun bs!1793401 () Bool)

(assert (= bs!1793401 d!2119365))

(assert (=> bs!1793401 m!7501206))

(declare-fun m!7501528 () Bool)

(assert (=> bs!1793401 m!7501528))

(declare-fun m!7501530 () Bool)

(assert (=> bs!1793401 m!7501530))

(assert (=> bs!1793401 m!7501204))

(assert (=> b!6745713 d!2119365))

(declare-fun d!2119369 () Bool)

(declare-fun choose!50313 (Int) Bool)

(assert (=> d!2119369 (= (Exists!3643 lambda!379182) (choose!50313 lambda!379182))))

(declare-fun bs!1793402 () Bool)

(assert (= bs!1793402 d!2119369))

(declare-fun m!7501532 () Bool)

(assert (=> bs!1793402 m!7501532))

(assert (=> b!6745693 d!2119369))

(declare-fun d!2119371 () Bool)

(declare-fun isEmpty!38252 (Option!16462) Bool)

(assert (=> d!2119371 (= (isDefined!13165 (findConcatSeparation!2876 (reg!16904 r!7292) r!7292 Nil!65902 s!2326 s!2326)) (not (isEmpty!38252 (findConcatSeparation!2876 (reg!16904 r!7292) r!7292 Nil!65902 s!2326 s!2326))))))

(declare-fun bs!1793403 () Bool)

(assert (= bs!1793403 d!2119371))

(assert (=> bs!1793403 m!7501194))

(declare-fun m!7501534 () Bool)

(assert (=> bs!1793403 m!7501534))

(assert (=> b!6745693 d!2119371))

(declare-fun bs!1793411 () Bool)

(declare-fun d!2119373 () Bool)

(assert (= bs!1793411 (and d!2119373 b!6745693)))

(declare-fun lambda!379240 () Int)

(assert (=> bs!1793411 (= lambda!379240 lambda!379182)))

(declare-fun bs!1793413 () Bool)

(assert (= bs!1793413 (and d!2119373 b!6746011)))

(assert (=> bs!1793413 (not (= lambda!379240 lambda!379223))))

(assert (=> bs!1793411 (not (= lambda!379240 lambda!379183))))

(declare-fun bs!1793414 () Bool)

(assert (= bs!1793414 (and d!2119373 b!6746005)))

(assert (=> bs!1793414 (not (= lambda!379240 lambda!379224))))

(assert (=> bs!1793411 (not (= lambda!379240 lambda!379184))))

(assert (=> d!2119373 true))

(assert (=> d!2119373 true))

(assert (=> d!2119373 true))

(declare-fun lambda!379241 () Int)

(assert (=> bs!1793411 (not (= lambda!379241 lambda!379182))))

(assert (=> bs!1793413 (not (= lambda!379241 lambda!379223))))

(declare-fun bs!1793415 () Bool)

(assert (= bs!1793415 d!2119373))

(assert (=> bs!1793415 (not (= lambda!379241 lambda!379240))))

(assert (=> bs!1793411 (not (= lambda!379241 lambda!379183))))

(assert (=> bs!1793414 (= (and (= (reg!16904 r!7292) (regOne!33662 r!7292)) (= r!7292 (regTwo!33662 r!7292))) (= lambda!379241 lambda!379224))))

(assert (=> bs!1793411 (= lambda!379241 lambda!379184)))

(assert (=> d!2119373 true))

(assert (=> d!2119373 true))

(assert (=> d!2119373 true))

(assert (=> d!2119373 (= (Exists!3643 lambda!379240) (Exists!3643 lambda!379241))))

(declare-fun lt!2440085 () Unit!159841)

(declare-fun choose!50314 (Regex!16575 Regex!16575 List!66026) Unit!159841)

(assert (=> d!2119373 (= lt!2440085 (choose!50314 (reg!16904 r!7292) r!7292 s!2326))))

(assert (=> d!2119373 (validRegex!8311 (reg!16904 r!7292))))

(assert (=> d!2119373 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2170 (reg!16904 r!7292) r!7292 s!2326) lt!2440085)))

(declare-fun m!7501560 () Bool)

(assert (=> bs!1793415 m!7501560))

(declare-fun m!7501562 () Bool)

(assert (=> bs!1793415 m!7501562))

(declare-fun m!7501564 () Bool)

(assert (=> bs!1793415 m!7501564))

(assert (=> bs!1793415 m!7501222))

(assert (=> b!6745693 d!2119373))

(declare-fun bs!1793416 () Bool)

(declare-fun d!2119383 () Bool)

(assert (= bs!1793416 (and d!2119383 b!6745693)))

(declare-fun lambda!379246 () Int)

(assert (=> bs!1793416 (= (= (Star!16575 (reg!16904 r!7292)) r!7292) (= lambda!379246 lambda!379182))))

(declare-fun bs!1793417 () Bool)

(assert (= bs!1793417 (and d!2119383 b!6746011)))

(assert (=> bs!1793417 (not (= lambda!379246 lambda!379223))))

(assert (=> bs!1793416 (not (= lambda!379246 lambda!379183))))

(declare-fun bs!1793418 () Bool)

(assert (= bs!1793418 (and d!2119383 b!6746005)))

(assert (=> bs!1793418 (not (= lambda!379246 lambda!379224))))

(assert (=> bs!1793416 (not (= lambda!379246 lambda!379184))))

(declare-fun bs!1793419 () Bool)

(assert (= bs!1793419 (and d!2119383 d!2119373)))

(assert (=> bs!1793419 (not (= lambda!379246 lambda!379241))))

(assert (=> bs!1793419 (= (= (Star!16575 (reg!16904 r!7292)) r!7292) (= lambda!379246 lambda!379240))))

(assert (=> d!2119383 true))

(assert (=> d!2119383 true))

(declare-fun lambda!379247 () Int)

(assert (=> bs!1793416 (not (= lambda!379247 lambda!379182))))

(assert (=> bs!1793417 (= (= (Star!16575 (reg!16904 r!7292)) r!7292) (= lambda!379247 lambda!379223))))

(assert (=> bs!1793416 (= (= (Star!16575 (reg!16904 r!7292)) r!7292) (= lambda!379247 lambda!379183))))

(assert (=> bs!1793418 (not (= lambda!379247 lambda!379224))))

(declare-fun bs!1793420 () Bool)

(assert (= bs!1793420 d!2119383))

(assert (=> bs!1793420 (not (= lambda!379247 lambda!379246))))

(assert (=> bs!1793416 (not (= lambda!379247 lambda!379184))))

(assert (=> bs!1793419 (not (= lambda!379247 lambda!379241))))

(assert (=> bs!1793419 (not (= lambda!379247 lambda!379240))))

(assert (=> d!2119383 true))

(assert (=> d!2119383 true))

(assert (=> d!2119383 (= (Exists!3643 lambda!379246) (Exists!3643 lambda!379247))))

(declare-fun lt!2440088 () Unit!159841)

(declare-fun choose!50315 (Regex!16575 List!66026) Unit!159841)

(assert (=> d!2119383 (= lt!2440088 (choose!50315 (reg!16904 r!7292) s!2326))))

(assert (=> d!2119383 (validRegex!8311 (reg!16904 r!7292))))

(assert (=> d!2119383 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!734 (reg!16904 r!7292) s!2326) lt!2440088)))

(declare-fun m!7501566 () Bool)

(assert (=> bs!1793420 m!7501566))

(declare-fun m!7501568 () Bool)

(assert (=> bs!1793420 m!7501568))

(declare-fun m!7501570 () Bool)

(assert (=> bs!1793420 m!7501570))

(assert (=> bs!1793420 m!7501222))

(assert (=> b!6745693 d!2119383))

(declare-fun d!2119385 () Bool)

(assert (=> d!2119385 (= (Exists!3643 lambda!379183) (choose!50313 lambda!379183))))

(declare-fun bs!1793421 () Bool)

(assert (= bs!1793421 d!2119385))

(declare-fun m!7501572 () Bool)

(assert (=> bs!1793421 m!7501572))

(assert (=> b!6745693 d!2119385))

(declare-fun d!2119387 () Bool)

(assert (=> d!2119387 (= (Exists!3643 lambda!379184) (choose!50313 lambda!379184))))

(declare-fun bs!1793422 () Bool)

(assert (= bs!1793422 d!2119387))

(declare-fun m!7501574 () Bool)

(assert (=> bs!1793422 m!7501574))

(assert (=> b!6745693 d!2119387))

(declare-fun d!2119389 () Bool)

(assert (=> d!2119389 (= (isEmpty!38249 s!2326) ((_ is Nil!65902) s!2326))))

(assert (=> b!6745693 d!2119389))

(declare-fun b!6746320 () Bool)

(declare-fun e!4074614 () Option!16462)

(declare-fun e!4074611 () Option!16462)

(assert (=> b!6746320 (= e!4074614 e!4074611)))

(declare-fun c!1251703 () Bool)

(assert (=> b!6746320 (= c!1251703 ((_ is Nil!65902) s!2326))))

(declare-fun b!6746321 () Bool)

(assert (=> b!6746321 (= e!4074611 None!16461)))

(declare-fun b!6746322 () Bool)

(declare-fun res!2759449 () Bool)

(declare-fun e!4074613 () Bool)

(assert (=> b!6746322 (=> (not res!2759449) (not e!4074613))))

(declare-fun lt!2440097 () Option!16462)

(declare-fun get!22934 (Option!16462) tuple2!67100)

(assert (=> b!6746322 (= res!2759449 (matchR!8758 r!7292 (_2!36853 (get!22934 lt!2440097))))))

(declare-fun b!6746323 () Bool)

(declare-fun ++!14731 (List!66026 List!66026) List!66026)

(assert (=> b!6746323 (= e!4074613 (= (++!14731 (_1!36853 (get!22934 lt!2440097)) (_2!36853 (get!22934 lt!2440097))) s!2326))))

(declare-fun b!6746324 () Bool)

(declare-fun lt!2440096 () Unit!159841)

(declare-fun lt!2440095 () Unit!159841)

(assert (=> b!6746324 (= lt!2440096 lt!2440095)))

(assert (=> b!6746324 (= (++!14731 (++!14731 Nil!65902 (Cons!65902 (h!72350 s!2326) Nil!65902)) (t!379727 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2704 (List!66026 C!33420 List!66026 List!66026) Unit!159841)

(assert (=> b!6746324 (= lt!2440095 (lemmaMoveElementToOtherListKeepsConcatEq!2704 Nil!65902 (h!72350 s!2326) (t!379727 s!2326) s!2326))))

(assert (=> b!6746324 (= e!4074611 (findConcatSeparation!2876 (reg!16904 r!7292) r!7292 (++!14731 Nil!65902 (Cons!65902 (h!72350 s!2326) Nil!65902)) (t!379727 s!2326) s!2326))))

(declare-fun b!6746325 () Bool)

(declare-fun res!2759451 () Bool)

(assert (=> b!6746325 (=> (not res!2759451) (not e!4074613))))

(assert (=> b!6746325 (= res!2759451 (matchR!8758 (reg!16904 r!7292) (_1!36853 (get!22934 lt!2440097))))))

(declare-fun d!2119391 () Bool)

(declare-fun e!4074610 () Bool)

(assert (=> d!2119391 e!4074610))

(declare-fun res!2759452 () Bool)

(assert (=> d!2119391 (=> res!2759452 e!4074610)))

(assert (=> d!2119391 (= res!2759452 e!4074613)))

(declare-fun res!2759453 () Bool)

(assert (=> d!2119391 (=> (not res!2759453) (not e!4074613))))

(assert (=> d!2119391 (= res!2759453 (isDefined!13165 lt!2440097))))

(assert (=> d!2119391 (= lt!2440097 e!4074614)))

(declare-fun c!1251702 () Bool)

(declare-fun e!4074612 () Bool)

(assert (=> d!2119391 (= c!1251702 e!4074612)))

(declare-fun res!2759450 () Bool)

(assert (=> d!2119391 (=> (not res!2759450) (not e!4074612))))

(assert (=> d!2119391 (= res!2759450 (matchR!8758 (reg!16904 r!7292) Nil!65902))))

(assert (=> d!2119391 (validRegex!8311 (reg!16904 r!7292))))

(assert (=> d!2119391 (= (findConcatSeparation!2876 (reg!16904 r!7292) r!7292 Nil!65902 s!2326 s!2326) lt!2440097)))

(declare-fun b!6746326 () Bool)

(assert (=> b!6746326 (= e!4074612 (matchR!8758 r!7292 s!2326))))

(declare-fun b!6746327 () Bool)

(assert (=> b!6746327 (= e!4074610 (not (isDefined!13165 lt!2440097)))))

(declare-fun b!6746328 () Bool)

(assert (=> b!6746328 (= e!4074614 (Some!16461 (tuple2!67101 Nil!65902 s!2326)))))

(assert (= (and d!2119391 res!2759450) b!6746326))

(assert (= (and d!2119391 c!1251702) b!6746328))

(assert (= (and d!2119391 (not c!1251702)) b!6746320))

(assert (= (and b!6746320 c!1251703) b!6746321))

(assert (= (and b!6746320 (not c!1251703)) b!6746324))

(assert (= (and d!2119391 res!2759453) b!6746325))

(assert (= (and b!6746325 res!2759451) b!6746322))

(assert (= (and b!6746322 res!2759449) b!6746323))

(assert (= (and d!2119391 (not res!2759452)) b!6746327))

(declare-fun m!7501576 () Bool)

(assert (=> d!2119391 m!7501576))

(declare-fun m!7501578 () Bool)

(assert (=> d!2119391 m!7501578))

(assert (=> d!2119391 m!7501222))

(declare-fun m!7501580 () Bool)

(assert (=> b!6746324 m!7501580))

(assert (=> b!6746324 m!7501580))

(declare-fun m!7501582 () Bool)

(assert (=> b!6746324 m!7501582))

(declare-fun m!7501584 () Bool)

(assert (=> b!6746324 m!7501584))

(assert (=> b!6746324 m!7501580))

(declare-fun m!7501586 () Bool)

(assert (=> b!6746324 m!7501586))

(assert (=> b!6746326 m!7501218))

(declare-fun m!7501588 () Bool)

(assert (=> b!6746323 m!7501588))

(declare-fun m!7501590 () Bool)

(assert (=> b!6746323 m!7501590))

(assert (=> b!6746322 m!7501588))

(declare-fun m!7501592 () Bool)

(assert (=> b!6746322 m!7501592))

(assert (=> b!6746325 m!7501588))

(declare-fun m!7501594 () Bool)

(assert (=> b!6746325 m!7501594))

(assert (=> b!6746327 m!7501576))

(assert (=> b!6745693 d!2119391))

(declare-fun bs!1793423 () Bool)

(declare-fun d!2119393 () Bool)

(assert (= bs!1793423 (and d!2119393 d!2119383)))

(declare-fun lambda!379250 () Int)

(assert (=> bs!1793423 (not (= lambda!379250 lambda!379247))))

(declare-fun bs!1793424 () Bool)

(assert (= bs!1793424 (and d!2119393 b!6745693)))

(assert (=> bs!1793424 (= lambda!379250 lambda!379182)))

(declare-fun bs!1793425 () Bool)

(assert (= bs!1793425 (and d!2119393 b!6746011)))

(assert (=> bs!1793425 (not (= lambda!379250 lambda!379223))))

(assert (=> bs!1793424 (not (= lambda!379250 lambda!379183))))

(declare-fun bs!1793426 () Bool)

(assert (= bs!1793426 (and d!2119393 b!6746005)))

(assert (=> bs!1793426 (not (= lambda!379250 lambda!379224))))

(assert (=> bs!1793423 (= (= r!7292 (Star!16575 (reg!16904 r!7292))) (= lambda!379250 lambda!379246))))

(assert (=> bs!1793424 (not (= lambda!379250 lambda!379184))))

(declare-fun bs!1793427 () Bool)

(assert (= bs!1793427 (and d!2119393 d!2119373)))

(assert (=> bs!1793427 (not (= lambda!379250 lambda!379241))))

(assert (=> bs!1793427 (= lambda!379250 lambda!379240)))

(assert (=> d!2119393 true))

(assert (=> d!2119393 true))

(assert (=> d!2119393 true))

(assert (=> d!2119393 (= (isDefined!13165 (findConcatSeparation!2876 (reg!16904 r!7292) r!7292 Nil!65902 s!2326 s!2326)) (Exists!3643 lambda!379250))))

(declare-fun lt!2440100 () Unit!159841)

(declare-fun choose!50316 (Regex!16575 Regex!16575 List!66026) Unit!159841)

(assert (=> d!2119393 (= lt!2440100 (choose!50316 (reg!16904 r!7292) r!7292 s!2326))))

(assert (=> d!2119393 (validRegex!8311 (reg!16904 r!7292))))

(assert (=> d!2119393 (= (lemmaFindConcatSeparationEquivalentToExists!2640 (reg!16904 r!7292) r!7292 s!2326) lt!2440100)))

(declare-fun bs!1793428 () Bool)

(assert (= bs!1793428 d!2119393))

(assert (=> bs!1793428 m!7501222))

(assert (=> bs!1793428 m!7501194))

(assert (=> bs!1793428 m!7501198))

(declare-fun m!7501596 () Bool)

(assert (=> bs!1793428 m!7501596))

(declare-fun m!7501598 () Bool)

(assert (=> bs!1793428 m!7501598))

(assert (=> bs!1793428 m!7501194))

(assert (=> b!6745693 d!2119393))

(declare-fun d!2119395 () Bool)

(declare-fun lt!2440101 () Regex!16575)

(assert (=> d!2119395 (validRegex!8311 lt!2440101)))

(assert (=> d!2119395 (= lt!2440101 (generalisedUnion!2419 (unfocusZipperList!1996 zl!343)))))

(assert (=> d!2119395 (= (unfocusZipper!2317 zl!343) lt!2440101)))

(declare-fun bs!1793429 () Bool)

(assert (= bs!1793429 d!2119395))

(declare-fun m!7501600 () Bool)

(assert (=> bs!1793429 m!7501600))

(assert (=> bs!1793429 m!7501152))

(assert (=> bs!1793429 m!7501152))

(assert (=> bs!1793429 m!7501154))

(assert (=> b!6745715 d!2119395))

(declare-fun d!2119397 () Bool)

(declare-fun c!1251706 () Bool)

(assert (=> d!2119397 (= c!1251706 (isEmpty!38249 s!2326))))

(declare-fun e!4074619 () Bool)

(assert (=> d!2119397 (= (matchZipper!2561 lt!2440001 s!2326) e!4074619)))

(declare-fun b!6746337 () Bool)

(declare-fun nullableZipper!2290 ((InoxSet Context!11918)) Bool)

(assert (=> b!6746337 (= e!4074619 (nullableZipper!2290 lt!2440001))))

(declare-fun b!6746338 () Bool)

(assert (=> b!6746338 (= e!4074619 (matchZipper!2561 (derivationStepZipper!2519 lt!2440001 (head!13576 s!2326)) (tail!12661 s!2326)))))

(assert (= (and d!2119397 c!1251706) b!6746337))

(assert (= (and d!2119397 (not c!1251706)) b!6746338))

(assert (=> d!2119397 m!7501184))

(declare-fun m!7501602 () Bool)

(assert (=> b!6746337 m!7501602))

(assert (=> b!6746338 m!7501480))

(assert (=> b!6746338 m!7501480))

(declare-fun m!7501604 () Bool)

(assert (=> b!6746338 m!7501604))

(assert (=> b!6746338 m!7501476))

(assert (=> b!6746338 m!7501604))

(assert (=> b!6746338 m!7501476))

(declare-fun m!7501606 () Bool)

(assert (=> b!6746338 m!7501606))

(assert (=> b!6745695 d!2119397))

(declare-fun d!2119399 () Bool)

(declare-fun c!1251707 () Bool)

(assert (=> d!2119399 (= c!1251707 (isEmpty!38249 (t!379727 s!2326)))))

(declare-fun e!4074620 () Bool)

(assert (=> d!2119399 (= (matchZipper!2561 (derivationStepZipper!2519 lt!2440001 (h!72350 s!2326)) (t!379727 s!2326)) e!4074620)))

(declare-fun b!6746339 () Bool)

(assert (=> b!6746339 (= e!4074620 (nullableZipper!2290 (derivationStepZipper!2519 lt!2440001 (h!72350 s!2326))))))

(declare-fun b!6746340 () Bool)

(assert (=> b!6746340 (= e!4074620 (matchZipper!2561 (derivationStepZipper!2519 (derivationStepZipper!2519 lt!2440001 (h!72350 s!2326)) (head!13576 (t!379727 s!2326))) (tail!12661 (t!379727 s!2326))))))

(assert (= (and d!2119399 c!1251707) b!6746339))

(assert (= (and d!2119399 (not c!1251707)) b!6746340))

(declare-fun m!7501608 () Bool)

(assert (=> d!2119399 m!7501608))

(assert (=> b!6746339 m!7501174))

(declare-fun m!7501610 () Bool)

(assert (=> b!6746339 m!7501610))

(declare-fun m!7501612 () Bool)

(assert (=> b!6746340 m!7501612))

(assert (=> b!6746340 m!7501174))

(assert (=> b!6746340 m!7501612))

(declare-fun m!7501614 () Bool)

(assert (=> b!6746340 m!7501614))

(declare-fun m!7501616 () Bool)

(assert (=> b!6746340 m!7501616))

(assert (=> b!6746340 m!7501614))

(assert (=> b!6746340 m!7501616))

(declare-fun m!7501618 () Bool)

(assert (=> b!6746340 m!7501618))

(assert (=> b!6745695 d!2119399))

(declare-fun bs!1793430 () Bool)

(declare-fun d!2119401 () Bool)

(assert (= bs!1793430 (and d!2119401 b!6745694)))

(declare-fun lambda!379251 () Int)

(assert (=> bs!1793430 (= lambda!379251 lambda!379185)))

(declare-fun bs!1793431 () Bool)

(assert (= bs!1793431 (and d!2119401 d!2119291)))

(assert (=> bs!1793431 (= lambda!379251 lambda!379209)))

(assert (=> d!2119401 true))

(assert (=> d!2119401 (= (derivationStepZipper!2519 lt!2440001 (h!72350 s!2326)) (flatMap!2056 lt!2440001 lambda!379251))))

(declare-fun bs!1793432 () Bool)

(assert (= bs!1793432 d!2119401))

(declare-fun m!7501620 () Bool)

(assert (=> bs!1793432 m!7501620))

(assert (=> b!6745695 d!2119401))

(declare-fun d!2119403 () Bool)

(assert (=> d!2119403 (= (flatMap!2056 z!1189 lambda!379185) (choose!50311 z!1189 lambda!379185))))

(declare-fun bs!1793433 () Bool)

(assert (= bs!1793433 d!2119403))

(declare-fun m!7501622 () Bool)

(assert (=> bs!1793433 m!7501622))

(assert (=> b!6745694 d!2119403))

(declare-fun b!6746341 () Bool)

(declare-fun e!4074623 () (InoxSet Context!11918))

(declare-fun e!4074622 () (InoxSet Context!11918))

(assert (=> b!6746341 (= e!4074623 e!4074622)))

(declare-fun c!1251708 () Bool)

(assert (=> b!6746341 (= c!1251708 ((_ is Cons!65900) (exprs!6459 (h!72349 zl!343))))))

(declare-fun b!6746342 () Bool)

(declare-fun call!610048 () (InoxSet Context!11918))

(assert (=> b!6746342 (= e!4074622 call!610048)))

(declare-fun b!6746343 () Bool)

(assert (=> b!6746343 (= e!4074622 ((as const (Array Context!11918 Bool)) false))))

(declare-fun bm!610043 () Bool)

(assert (=> bm!610043 (= call!610048 (derivationStepZipperDown!1803 (h!72348 (exprs!6459 (h!72349 zl!343))) (Context!11919 (t!379725 (exprs!6459 (h!72349 zl!343)))) (h!72350 s!2326)))))

(declare-fun d!2119405 () Bool)

(declare-fun c!1251709 () Bool)

(declare-fun e!4074621 () Bool)

(assert (=> d!2119405 (= c!1251709 e!4074621)))

(declare-fun res!2759458 () Bool)

(assert (=> d!2119405 (=> (not res!2759458) (not e!4074621))))

(assert (=> d!2119405 (= res!2759458 ((_ is Cons!65900) (exprs!6459 (h!72349 zl!343))))))

(assert (=> d!2119405 (= (derivationStepZipperUp!1729 (h!72349 zl!343) (h!72350 s!2326)) e!4074623)))

(declare-fun b!6746344 () Bool)

(assert (=> b!6746344 (= e!4074621 (nullable!6562 (h!72348 (exprs!6459 (h!72349 zl!343)))))))

(declare-fun b!6746345 () Bool)

(assert (=> b!6746345 (= e!4074623 ((_ map or) call!610048 (derivationStepZipperUp!1729 (Context!11919 (t!379725 (exprs!6459 (h!72349 zl!343)))) (h!72350 s!2326))))))

(assert (= (and d!2119405 res!2759458) b!6746344))

(assert (= (and d!2119405 c!1251709) b!6746345))

(assert (= (and d!2119405 (not c!1251709)) b!6746341))

(assert (= (and b!6746341 c!1251708) b!6746342))

(assert (= (and b!6746341 (not c!1251708)) b!6746343))

(assert (= (or b!6746345 b!6746342) bm!610043))

(declare-fun m!7501624 () Bool)

(assert (=> bm!610043 m!7501624))

(declare-fun m!7501626 () Bool)

(assert (=> b!6746344 m!7501626))

(declare-fun m!7501628 () Bool)

(assert (=> b!6746345 m!7501628))

(assert (=> b!6745694 d!2119405))

(declare-fun d!2119407 () Bool)

(assert (=> d!2119407 (= (flatMap!2056 z!1189 lambda!379185) (dynLambda!26296 lambda!379185 (h!72349 zl!343)))))

(declare-fun lt!2440102 () Unit!159841)

(assert (=> d!2119407 (= lt!2440102 (choose!50312 z!1189 (h!72349 zl!343) lambda!379185))))

(assert (=> d!2119407 (= z!1189 (store ((as const (Array Context!11918 Bool)) false) (h!72349 zl!343) true))))

(assert (=> d!2119407 (= (lemmaFlatMapOnSingletonSet!1582 z!1189 (h!72349 zl!343) lambda!379185) lt!2440102)))

(declare-fun b_lambda!254093 () Bool)

(assert (=> (not b_lambda!254093) (not d!2119407)))

(declare-fun bs!1793434 () Bool)

(assert (= bs!1793434 d!2119407))

(assert (=> bs!1793434 m!7501166))

(declare-fun m!7501630 () Bool)

(assert (=> bs!1793434 m!7501630))

(declare-fun m!7501632 () Bool)

(assert (=> bs!1793434 m!7501632))

(declare-fun m!7501634 () Bool)

(assert (=> bs!1793434 m!7501634))

(assert (=> b!6745694 d!2119407))

(declare-fun d!2119409 () Bool)

(assert (=> d!2119409 (= (isEmpty!38250 (t!379726 zl!343)) ((_ is Nil!65901) (t!379726 zl!343)))))

(assert (=> b!6745711 d!2119409))

(declare-fun d!2119411 () Bool)

(declare-fun e!4074626 () Bool)

(assert (=> d!2119411 e!4074626))

(declare-fun res!2759461 () Bool)

(assert (=> d!2119411 (=> (not res!2759461) (not e!4074626))))

(declare-fun lt!2440105 () List!66025)

(declare-fun noDuplicate!2368 (List!66025) Bool)

(assert (=> d!2119411 (= res!2759461 (noDuplicate!2368 lt!2440105))))

(declare-fun choose!50317 ((InoxSet Context!11918)) List!66025)

(assert (=> d!2119411 (= lt!2440105 (choose!50317 z!1189))))

(assert (=> d!2119411 (= (toList!10359 z!1189) lt!2440105)))

(declare-fun b!6746348 () Bool)

(declare-fun content!12815 (List!66025) (InoxSet Context!11918))

(assert (=> b!6746348 (= e!4074626 (= (content!12815 lt!2440105) z!1189))))

(assert (= (and d!2119411 res!2759461) b!6746348))

(declare-fun m!7501636 () Bool)

(assert (=> d!2119411 m!7501636))

(declare-fun m!7501638 () Bool)

(assert (=> d!2119411 m!7501638))

(declare-fun m!7501640 () Bool)

(assert (=> b!6746348 m!7501640))

(assert (=> b!6745690 d!2119411))

(declare-fun d!2119413 () Bool)

(declare-fun lambda!379254 () Int)

(declare-fun forall!15775 (List!66024 Int) Bool)

(assert (=> d!2119413 (= (inv!84684 (h!72349 zl!343)) (forall!15775 (exprs!6459 (h!72349 zl!343)) lambda!379254))))

(declare-fun bs!1793435 () Bool)

(assert (= bs!1793435 d!2119413))

(declare-fun m!7501642 () Bool)

(assert (=> bs!1793435 m!7501642))

(assert (=> b!6745692 d!2119413))

(declare-fun bs!1793436 () Bool)

(declare-fun d!2119415 () Bool)

(assert (= bs!1793436 (and d!2119415 d!2119413)))

(declare-fun lambda!379255 () Int)

(assert (=> bs!1793436 (= lambda!379255 lambda!379254)))

(assert (=> d!2119415 (= (inv!84684 setElem!46087) (forall!15775 (exprs!6459 setElem!46087) lambda!379255))))

(declare-fun bs!1793437 () Bool)

(assert (= bs!1793437 d!2119415))

(declare-fun m!7501644 () Bool)

(assert (=> bs!1793437 m!7501644))

(assert (=> setNonEmpty!46087 d!2119415))

(declare-fun bm!610050 () Bool)

(declare-fun call!610055 () Bool)

(declare-fun c!1251715 () Bool)

(assert (=> bm!610050 (= call!610055 (validRegex!8311 (ite c!1251715 (regTwo!33663 (reg!16904 r!7292)) (regTwo!33662 (reg!16904 r!7292)))))))

(declare-fun b!6746367 () Bool)

(declare-fun e!4074642 () Bool)

(assert (=> b!6746367 (= e!4074642 call!610055)))

(declare-fun b!6746369 () Bool)

(declare-fun res!2759472 () Bool)

(declare-fun e!4074644 () Bool)

(assert (=> b!6746369 (=> res!2759472 e!4074644)))

(assert (=> b!6746369 (= res!2759472 (not ((_ is Concat!25420) (reg!16904 r!7292))))))

(declare-fun e!4074641 () Bool)

(assert (=> b!6746369 (= e!4074641 e!4074644)))

(declare-fun call!610056 () Bool)

(declare-fun c!1251714 () Bool)

(declare-fun bm!610051 () Bool)

(assert (=> bm!610051 (= call!610056 (validRegex!8311 (ite c!1251714 (reg!16904 (reg!16904 r!7292)) (ite c!1251715 (regOne!33663 (reg!16904 r!7292)) (regOne!33662 (reg!16904 r!7292))))))))

(declare-fun b!6746370 () Bool)

(declare-fun e!4074647 () Bool)

(assert (=> b!6746370 (= e!4074647 e!4074641)))

(assert (=> b!6746370 (= c!1251715 ((_ is Union!16575) (reg!16904 r!7292)))))

(declare-fun b!6746371 () Bool)

(assert (=> b!6746371 (= e!4074644 e!4074642)))

(declare-fun res!2759475 () Bool)

(assert (=> b!6746371 (=> (not res!2759475) (not e!4074642))))

(declare-fun call!610057 () Bool)

(assert (=> b!6746371 (= res!2759475 call!610057)))

(declare-fun b!6746372 () Bool)

(declare-fun e!4074645 () Bool)

(assert (=> b!6746372 (= e!4074645 e!4074647)))

(assert (=> b!6746372 (= c!1251714 ((_ is Star!16575) (reg!16904 r!7292)))))

(declare-fun b!6746373 () Bool)

(declare-fun e!4074646 () Bool)

(assert (=> b!6746373 (= e!4074647 e!4074646)))

(declare-fun res!2759473 () Bool)

(assert (=> b!6746373 (= res!2759473 (not (nullable!6562 (reg!16904 (reg!16904 r!7292)))))))

(assert (=> b!6746373 (=> (not res!2759473) (not e!4074646))))

(declare-fun b!6746368 () Bool)

(declare-fun res!2759476 () Bool)

(declare-fun e!4074643 () Bool)

(assert (=> b!6746368 (=> (not res!2759476) (not e!4074643))))

(assert (=> b!6746368 (= res!2759476 call!610057)))

(assert (=> b!6746368 (= e!4074641 e!4074643)))

(declare-fun d!2119417 () Bool)

(declare-fun res!2759474 () Bool)

(assert (=> d!2119417 (=> res!2759474 e!4074645)))

(assert (=> d!2119417 (= res!2759474 ((_ is ElementMatch!16575) (reg!16904 r!7292)))))

(assert (=> d!2119417 (= (validRegex!8311 (reg!16904 r!7292)) e!4074645)))

(declare-fun b!6746374 () Bool)

(assert (=> b!6746374 (= e!4074646 call!610056)))

(declare-fun b!6746375 () Bool)

(assert (=> b!6746375 (= e!4074643 call!610055)))

(declare-fun bm!610052 () Bool)

(assert (=> bm!610052 (= call!610057 call!610056)))

(assert (= (and d!2119417 (not res!2759474)) b!6746372))

(assert (= (and b!6746372 c!1251714) b!6746373))

(assert (= (and b!6746372 (not c!1251714)) b!6746370))

(assert (= (and b!6746373 res!2759473) b!6746374))

(assert (= (and b!6746370 c!1251715) b!6746368))

(assert (= (and b!6746370 (not c!1251715)) b!6746369))

(assert (= (and b!6746368 res!2759476) b!6746375))

(assert (= (and b!6746369 (not res!2759472)) b!6746371))

(assert (= (and b!6746371 res!2759475) b!6746367))

(assert (= (or b!6746375 b!6746367) bm!610050))

(assert (= (or b!6746368 b!6746371) bm!610052))

(assert (= (or b!6746374 bm!610052) bm!610051))

(declare-fun m!7501646 () Bool)

(assert (=> bm!610050 m!7501646))

(declare-fun m!7501648 () Bool)

(assert (=> bm!610051 m!7501648))

(declare-fun m!7501650 () Bool)

(assert (=> b!6746373 m!7501650))

(assert (=> b!6745698 d!2119417))

(declare-fun d!2119419 () Bool)

(declare-fun lt!2440106 () Regex!16575)

(assert (=> d!2119419 (validRegex!8311 lt!2440106)))

(assert (=> d!2119419 (= lt!2440106 (generalisedUnion!2419 (unfocusZipperList!1996 (Cons!65901 lt!2439995 Nil!65901))))))

(assert (=> d!2119419 (= (unfocusZipper!2317 (Cons!65901 lt!2439995 Nil!65901)) lt!2440106)))

(declare-fun bs!1793438 () Bool)

(assert (= bs!1793438 d!2119419))

(declare-fun m!7501652 () Bool)

(assert (=> bs!1793438 m!7501652))

(declare-fun m!7501654 () Bool)

(assert (=> bs!1793438 m!7501654))

(assert (=> bs!1793438 m!7501654))

(declare-fun m!7501656 () Bool)

(assert (=> bs!1793438 m!7501656))

(assert (=> b!6745697 d!2119419))

(declare-fun bs!1793439 () Bool)

(declare-fun b!6746384 () Bool)

(assert (= bs!1793439 (and b!6746384 d!2119383)))

(declare-fun lambda!379256 () Int)

(assert (=> bs!1793439 (= (and (= (reg!16904 lt!2440003) (reg!16904 r!7292)) (= lt!2440003 (Star!16575 (reg!16904 r!7292)))) (= lambda!379256 lambda!379247))))

(declare-fun bs!1793440 () Bool)

(assert (= bs!1793440 (and b!6746384 b!6745693)))

(assert (=> bs!1793440 (not (= lambda!379256 lambda!379182))))

(declare-fun bs!1793441 () Bool)

(assert (= bs!1793441 (and b!6746384 b!6746011)))

(assert (=> bs!1793441 (= (and (= (reg!16904 lt!2440003) (reg!16904 r!7292)) (= lt!2440003 r!7292)) (= lambda!379256 lambda!379223))))

(assert (=> bs!1793440 (= (and (= (reg!16904 lt!2440003) (reg!16904 r!7292)) (= lt!2440003 r!7292)) (= lambda!379256 lambda!379183))))

(declare-fun bs!1793442 () Bool)

(assert (= bs!1793442 (and b!6746384 b!6746005)))

(assert (=> bs!1793442 (not (= lambda!379256 lambda!379224))))

(assert (=> bs!1793439 (not (= lambda!379256 lambda!379246))))

(assert (=> bs!1793440 (not (= lambda!379256 lambda!379184))))

(declare-fun bs!1793443 () Bool)

(assert (= bs!1793443 (and b!6746384 d!2119393)))

(assert (=> bs!1793443 (not (= lambda!379256 lambda!379250))))

(declare-fun bs!1793444 () Bool)

(assert (= bs!1793444 (and b!6746384 d!2119373)))

(assert (=> bs!1793444 (not (= lambda!379256 lambda!379241))))

(assert (=> bs!1793444 (not (= lambda!379256 lambda!379240))))

(assert (=> b!6746384 true))

(assert (=> b!6746384 true))

(declare-fun bs!1793445 () Bool)

(declare-fun b!6746378 () Bool)

(assert (= bs!1793445 (and b!6746378 d!2119383)))

(declare-fun lambda!379257 () Int)

(assert (=> bs!1793445 (not (= lambda!379257 lambda!379247))))

(declare-fun bs!1793446 () Bool)

(assert (= bs!1793446 (and b!6746378 b!6745693)))

(assert (=> bs!1793446 (not (= lambda!379257 lambda!379182))))

(declare-fun bs!1793447 () Bool)

(assert (= bs!1793447 (and b!6746378 b!6746011)))

(assert (=> bs!1793447 (not (= lambda!379257 lambda!379223))))

(declare-fun bs!1793448 () Bool)

(assert (= bs!1793448 (and b!6746378 b!6746384)))

(assert (=> bs!1793448 (not (= lambda!379257 lambda!379256))))

(assert (=> bs!1793446 (not (= lambda!379257 lambda!379183))))

(declare-fun bs!1793449 () Bool)

(assert (= bs!1793449 (and b!6746378 b!6746005)))

(assert (=> bs!1793449 (= (and (= (regOne!33662 lt!2440003) (regOne!33662 r!7292)) (= (regTwo!33662 lt!2440003) (regTwo!33662 r!7292))) (= lambda!379257 lambda!379224))))

(assert (=> bs!1793445 (not (= lambda!379257 lambda!379246))))

(assert (=> bs!1793446 (= (and (= (regOne!33662 lt!2440003) (reg!16904 r!7292)) (= (regTwo!33662 lt!2440003) r!7292)) (= lambda!379257 lambda!379184))))

(declare-fun bs!1793450 () Bool)

(assert (= bs!1793450 (and b!6746378 d!2119393)))

(assert (=> bs!1793450 (not (= lambda!379257 lambda!379250))))

(declare-fun bs!1793451 () Bool)

(assert (= bs!1793451 (and b!6746378 d!2119373)))

(assert (=> bs!1793451 (= (and (= (regOne!33662 lt!2440003) (reg!16904 r!7292)) (= (regTwo!33662 lt!2440003) r!7292)) (= lambda!379257 lambda!379241))))

(assert (=> bs!1793451 (not (= lambda!379257 lambda!379240))))

(assert (=> b!6746378 true))

(assert (=> b!6746378 true))

(declare-fun b!6746376 () Bool)

(declare-fun e!4074649 () Bool)

(declare-fun e!4074648 () Bool)

(assert (=> b!6746376 (= e!4074649 e!4074648)))

(declare-fun c!1251718 () Bool)

(assert (=> b!6746376 (= c!1251718 ((_ is Star!16575) lt!2440003))))

(declare-fun b!6746377 () Bool)

(declare-fun c!1251719 () Bool)

(assert (=> b!6746377 (= c!1251719 ((_ is ElementMatch!16575) lt!2440003))))

(declare-fun e!4074652 () Bool)

(declare-fun e!4074654 () Bool)

(assert (=> b!6746377 (= e!4074652 e!4074654)))

(declare-fun call!610058 () Bool)

(assert (=> b!6746378 (= e!4074648 call!610058)))

(declare-fun b!6746379 () Bool)

(declare-fun e!4074653 () Bool)

(declare-fun call!610059 () Bool)

(assert (=> b!6746379 (= e!4074653 call!610059)))

(declare-fun b!6746380 () Bool)

(assert (=> b!6746380 (= e!4074654 (= s!2326 (Cons!65902 (c!1251537 lt!2440003) Nil!65902)))))

(declare-fun b!6746381 () Bool)

(declare-fun e!4074651 () Bool)

(assert (=> b!6746381 (= e!4074651 (matchRSpec!3676 (regTwo!33663 lt!2440003) s!2326))))

(declare-fun bm!610053 () Bool)

(assert (=> bm!610053 (= call!610058 (Exists!3643 (ite c!1251718 lambda!379256 lambda!379257)))))

(declare-fun b!6746383 () Bool)

(declare-fun res!2759478 () Bool)

(declare-fun e!4074650 () Bool)

(assert (=> b!6746383 (=> res!2759478 e!4074650)))

(assert (=> b!6746383 (= res!2759478 call!610059)))

(assert (=> b!6746383 (= e!4074648 e!4074650)))

(assert (=> b!6746384 (= e!4074650 call!610058)))

(declare-fun bm!610054 () Bool)

(assert (=> bm!610054 (= call!610059 (isEmpty!38249 s!2326))))

(declare-fun b!6746385 () Bool)

(assert (=> b!6746385 (= e!4074653 e!4074652)))

(declare-fun res!2759477 () Bool)

(assert (=> b!6746385 (= res!2759477 (not ((_ is EmptyLang!16575) lt!2440003)))))

(assert (=> b!6746385 (=> (not res!2759477) (not e!4074652))))

(declare-fun b!6746386 () Bool)

(declare-fun c!1251716 () Bool)

(assert (=> b!6746386 (= c!1251716 ((_ is Union!16575) lt!2440003))))

(assert (=> b!6746386 (= e!4074654 e!4074649)))

(declare-fun d!2119421 () Bool)

(declare-fun c!1251717 () Bool)

(assert (=> d!2119421 (= c!1251717 ((_ is EmptyExpr!16575) lt!2440003))))

(assert (=> d!2119421 (= (matchRSpec!3676 lt!2440003 s!2326) e!4074653)))

(declare-fun b!6746382 () Bool)

(assert (=> b!6746382 (= e!4074649 e!4074651)))

(declare-fun res!2759479 () Bool)

(assert (=> b!6746382 (= res!2759479 (matchRSpec!3676 (regOne!33663 lt!2440003) s!2326))))

(assert (=> b!6746382 (=> res!2759479 e!4074651)))

(assert (= (and d!2119421 c!1251717) b!6746379))

(assert (= (and d!2119421 (not c!1251717)) b!6746385))

(assert (= (and b!6746385 res!2759477) b!6746377))

(assert (= (and b!6746377 c!1251719) b!6746380))

(assert (= (and b!6746377 (not c!1251719)) b!6746386))

(assert (= (and b!6746386 c!1251716) b!6746382))

(assert (= (and b!6746386 (not c!1251716)) b!6746376))

(assert (= (and b!6746382 (not res!2759479)) b!6746381))

(assert (= (and b!6746376 c!1251718) b!6746383))

(assert (= (and b!6746376 (not c!1251718)) b!6746378))

(assert (= (and b!6746383 (not res!2759478)) b!6746384))

(assert (= (or b!6746384 b!6746378) bm!610053))

(assert (= (or b!6746379 b!6746383) bm!610054))

(declare-fun m!7501658 () Bool)

(assert (=> b!6746381 m!7501658))

(declare-fun m!7501660 () Bool)

(assert (=> bm!610053 m!7501660))

(assert (=> bm!610054 m!7501184))

(declare-fun m!7501662 () Bool)

(assert (=> b!6746382 m!7501662))

(assert (=> b!6745708 d!2119421))

(declare-fun b!6746387 () Bool)

(declare-fun res!2759487 () Bool)

(declare-fun e!4074657 () Bool)

(assert (=> b!6746387 (=> res!2759487 e!4074657)))

(assert (=> b!6746387 (= res!2759487 (not ((_ is ElementMatch!16575) lt!2440003)))))

(declare-fun e!4074660 () Bool)

(assert (=> b!6746387 (= e!4074660 e!4074657)))

(declare-fun b!6746388 () Bool)

(declare-fun lt!2440107 () Bool)

(assert (=> b!6746388 (= e!4074660 (not lt!2440107))))

(declare-fun b!6746389 () Bool)

(declare-fun res!2759484 () Bool)

(assert (=> b!6746389 (=> res!2759484 e!4074657)))

(declare-fun e!4074656 () Bool)

(assert (=> b!6746389 (= res!2759484 e!4074656)))

(declare-fun res!2759485 () Bool)

(assert (=> b!6746389 (=> (not res!2759485) (not e!4074656))))

(assert (=> b!6746389 (= res!2759485 lt!2440107)))

(declare-fun b!6746390 () Bool)

(declare-fun res!2759481 () Bool)

(declare-fun e!4074655 () Bool)

(assert (=> b!6746390 (=> res!2759481 e!4074655)))

(assert (=> b!6746390 (= res!2759481 (not (isEmpty!38249 (tail!12661 s!2326))))))

(declare-fun b!6746391 () Bool)

(declare-fun e!4074661 () Bool)

(assert (=> b!6746391 (= e!4074661 (matchR!8758 (derivativeStep!5246 lt!2440003 (head!13576 s!2326)) (tail!12661 s!2326)))))

(declare-fun b!6746392 () Bool)

(declare-fun e!4074658 () Bool)

(declare-fun call!610060 () Bool)

(assert (=> b!6746392 (= e!4074658 (= lt!2440107 call!610060))))

(declare-fun d!2119423 () Bool)

(assert (=> d!2119423 e!4074658))

(declare-fun c!1251722 () Bool)

(assert (=> d!2119423 (= c!1251722 ((_ is EmptyExpr!16575) lt!2440003))))

(assert (=> d!2119423 (= lt!2440107 e!4074661)))

(declare-fun c!1251721 () Bool)

(assert (=> d!2119423 (= c!1251721 (isEmpty!38249 s!2326))))

(assert (=> d!2119423 (validRegex!8311 lt!2440003)))

(assert (=> d!2119423 (= (matchR!8758 lt!2440003 s!2326) lt!2440107)))

(declare-fun b!6746393 () Bool)

(assert (=> b!6746393 (= e!4074656 (= (head!13576 s!2326) (c!1251537 lt!2440003)))))

(declare-fun b!6746394 () Bool)

(declare-fun e!4074659 () Bool)

(assert (=> b!6746394 (= e!4074659 e!4074655)))

(declare-fun res!2759486 () Bool)

(assert (=> b!6746394 (=> res!2759486 e!4074655)))

(assert (=> b!6746394 (= res!2759486 call!610060)))

(declare-fun b!6746395 () Bool)

(declare-fun res!2759483 () Bool)

(assert (=> b!6746395 (=> (not res!2759483) (not e!4074656))))

(assert (=> b!6746395 (= res!2759483 (isEmpty!38249 (tail!12661 s!2326)))))

(declare-fun b!6746396 () Bool)

(assert (=> b!6746396 (= e!4074658 e!4074660)))

(declare-fun c!1251720 () Bool)

(assert (=> b!6746396 (= c!1251720 ((_ is EmptyLang!16575) lt!2440003))))

(declare-fun b!6746397 () Bool)

(assert (=> b!6746397 (= e!4074657 e!4074659)))

(declare-fun res!2759480 () Bool)

(assert (=> b!6746397 (=> (not res!2759480) (not e!4074659))))

(assert (=> b!6746397 (= res!2759480 (not lt!2440107))))

(declare-fun b!6746398 () Bool)

(declare-fun res!2759482 () Bool)

(assert (=> b!6746398 (=> (not res!2759482) (not e!4074656))))

(assert (=> b!6746398 (= res!2759482 (not call!610060))))

(declare-fun bm!610055 () Bool)

(assert (=> bm!610055 (= call!610060 (isEmpty!38249 s!2326))))

(declare-fun b!6746399 () Bool)

(assert (=> b!6746399 (= e!4074655 (not (= (head!13576 s!2326) (c!1251537 lt!2440003))))))

(declare-fun b!6746400 () Bool)

(assert (=> b!6746400 (= e!4074661 (nullable!6562 lt!2440003))))

(assert (= (and d!2119423 c!1251721) b!6746400))

(assert (= (and d!2119423 (not c!1251721)) b!6746391))

(assert (= (and d!2119423 c!1251722) b!6746392))

(assert (= (and d!2119423 (not c!1251722)) b!6746396))

(assert (= (and b!6746396 c!1251720) b!6746388))

(assert (= (and b!6746396 (not c!1251720)) b!6746387))

(assert (= (and b!6746387 (not res!2759487)) b!6746389))

(assert (= (and b!6746389 res!2759485) b!6746398))

(assert (= (and b!6746398 res!2759482) b!6746395))

(assert (= (and b!6746395 res!2759483) b!6746393))

(assert (= (and b!6746389 (not res!2759484)) b!6746397))

(assert (= (and b!6746397 res!2759480) b!6746394))

(assert (= (and b!6746394 (not res!2759486)) b!6746390))

(assert (= (and b!6746390 (not res!2759481)) b!6746399))

(assert (= (or b!6746392 b!6746398 b!6746394) bm!610055))

(declare-fun m!7501664 () Bool)

(assert (=> b!6746400 m!7501664))

(assert (=> b!6746395 m!7501476))

(assert (=> b!6746395 m!7501476))

(assert (=> b!6746395 m!7501478))

(assert (=> bm!610055 m!7501184))

(assert (=> b!6746399 m!7501480))

(assert (=> d!2119423 m!7501184))

(declare-fun m!7501666 () Bool)

(assert (=> d!2119423 m!7501666))

(assert (=> b!6746391 m!7501480))

(assert (=> b!6746391 m!7501480))

(declare-fun m!7501668 () Bool)

(assert (=> b!6746391 m!7501668))

(assert (=> b!6746391 m!7501476))

(assert (=> b!6746391 m!7501668))

(assert (=> b!6746391 m!7501476))

(declare-fun m!7501670 () Bool)

(assert (=> b!6746391 m!7501670))

(assert (=> b!6746390 m!7501476))

(assert (=> b!6746390 m!7501476))

(assert (=> b!6746390 m!7501478))

(assert (=> b!6746393 m!7501480))

(assert (=> b!6745708 d!2119423))

(declare-fun d!2119425 () Bool)

(assert (=> d!2119425 (= (matchR!8758 lt!2440003 s!2326) (matchRSpec!3676 lt!2440003 s!2326))))

(declare-fun lt!2440108 () Unit!159841)

(assert (=> d!2119425 (= lt!2440108 (choose!50310 lt!2440003 s!2326))))

(assert (=> d!2119425 (validRegex!8311 lt!2440003)))

(assert (=> d!2119425 (= (mainMatchTheorem!3676 lt!2440003 s!2326) lt!2440108)))

(declare-fun bs!1793452 () Bool)

(assert (= bs!1793452 d!2119425))

(assert (=> bs!1793452 m!7501160))

(assert (=> bs!1793452 m!7501158))

(declare-fun m!7501672 () Bool)

(assert (=> bs!1793452 m!7501672))

(assert (=> bs!1793452 m!7501666))

(assert (=> b!6745708 d!2119425))

(declare-fun bs!1793453 () Bool)

(declare-fun d!2119427 () Bool)

(assert (= bs!1793453 (and d!2119427 d!2119413)))

(declare-fun lambda!379260 () Int)

(assert (=> bs!1793453 (= lambda!379260 lambda!379254)))

(declare-fun bs!1793454 () Bool)

(assert (= bs!1793454 (and d!2119427 d!2119415)))

(assert (=> bs!1793454 (= lambda!379260 lambda!379255)))

(declare-fun b!6746421 () Bool)

(declare-fun e!4074678 () Regex!16575)

(assert (=> b!6746421 (= e!4074678 (Concat!25420 (h!72348 (exprs!6459 (h!72349 zl!343))) (generalisedConcat!2172 (t!379725 (exprs!6459 (h!72349 zl!343))))))))

(declare-fun b!6746422 () Bool)

(declare-fun e!4074679 () Regex!16575)

(assert (=> b!6746422 (= e!4074679 (h!72348 (exprs!6459 (h!72349 zl!343))))))

(declare-fun b!6746423 () Bool)

(assert (=> b!6746423 (= e!4074679 e!4074678)))

(declare-fun c!1251732 () Bool)

(assert (=> b!6746423 (= c!1251732 ((_ is Cons!65900) (exprs!6459 (h!72349 zl!343))))))

(declare-fun b!6746424 () Bool)

(declare-fun e!4074674 () Bool)

(declare-fun e!4074676 () Bool)

(assert (=> b!6746424 (= e!4074674 e!4074676)))

(declare-fun c!1251733 () Bool)

(declare-fun isEmpty!38254 (List!66024) Bool)

(declare-fun tail!12663 (List!66024) List!66024)

(assert (=> b!6746424 (= c!1251733 (isEmpty!38254 (tail!12663 (exprs!6459 (h!72349 zl!343)))))))

(declare-fun b!6746425 () Bool)

(declare-fun e!4074677 () Bool)

(assert (=> b!6746425 (= e!4074677 e!4074674)))

(declare-fun c!1251734 () Bool)

(assert (=> b!6746425 (= c!1251734 (isEmpty!38254 (exprs!6459 (h!72349 zl!343))))))

(declare-fun b!6746426 () Bool)

(declare-fun lt!2440111 () Regex!16575)

(declare-fun head!13578 (List!66024) Regex!16575)

(assert (=> b!6746426 (= e!4074676 (= lt!2440111 (head!13578 (exprs!6459 (h!72349 zl!343)))))))

(declare-fun b!6746428 () Bool)

(declare-fun isConcat!1464 (Regex!16575) Bool)

(assert (=> b!6746428 (= e!4074676 (isConcat!1464 lt!2440111))))

(assert (=> d!2119427 e!4074677))

(declare-fun res!2759493 () Bool)

(assert (=> d!2119427 (=> (not res!2759493) (not e!4074677))))

(assert (=> d!2119427 (= res!2759493 (validRegex!8311 lt!2440111))))

(assert (=> d!2119427 (= lt!2440111 e!4074679)))

(declare-fun c!1251731 () Bool)

(declare-fun e!4074675 () Bool)

(assert (=> d!2119427 (= c!1251731 e!4074675)))

(declare-fun res!2759492 () Bool)

(assert (=> d!2119427 (=> (not res!2759492) (not e!4074675))))

(assert (=> d!2119427 (= res!2759492 ((_ is Cons!65900) (exprs!6459 (h!72349 zl!343))))))

(assert (=> d!2119427 (forall!15775 (exprs!6459 (h!72349 zl!343)) lambda!379260)))

(assert (=> d!2119427 (= (generalisedConcat!2172 (exprs!6459 (h!72349 zl!343))) lt!2440111)))

(declare-fun b!6746427 () Bool)

(assert (=> b!6746427 (= e!4074675 (isEmpty!38254 (t!379725 (exprs!6459 (h!72349 zl!343)))))))

(declare-fun b!6746429 () Bool)

(declare-fun isEmptyExpr!1941 (Regex!16575) Bool)

(assert (=> b!6746429 (= e!4074674 (isEmptyExpr!1941 lt!2440111))))

(declare-fun b!6746430 () Bool)

(assert (=> b!6746430 (= e!4074678 EmptyExpr!16575)))

(assert (= (and d!2119427 res!2759492) b!6746427))

(assert (= (and d!2119427 c!1251731) b!6746422))

(assert (= (and d!2119427 (not c!1251731)) b!6746423))

(assert (= (and b!6746423 c!1251732) b!6746421))

(assert (= (and b!6746423 (not c!1251732)) b!6746430))

(assert (= (and d!2119427 res!2759493) b!6746425))

(assert (= (and b!6746425 c!1251734) b!6746429))

(assert (= (and b!6746425 (not c!1251734)) b!6746424))

(assert (= (and b!6746424 c!1251733) b!6746426))

(assert (= (and b!6746424 (not c!1251733)) b!6746428))

(declare-fun m!7501674 () Bool)

(assert (=> b!6746421 m!7501674))

(declare-fun m!7501676 () Bool)

(assert (=> b!6746427 m!7501676))

(declare-fun m!7501678 () Bool)

(assert (=> b!6746425 m!7501678))

(declare-fun m!7501680 () Bool)

(assert (=> b!6746424 m!7501680))

(assert (=> b!6746424 m!7501680))

(declare-fun m!7501682 () Bool)

(assert (=> b!6746424 m!7501682))

(declare-fun m!7501684 () Bool)

(assert (=> d!2119427 m!7501684))

(declare-fun m!7501686 () Bool)

(assert (=> d!2119427 m!7501686))

(declare-fun m!7501688 () Bool)

(assert (=> b!6746428 m!7501688))

(declare-fun m!7501690 () Bool)

(assert (=> b!6746429 m!7501690))

(declare-fun m!7501692 () Bool)

(assert (=> b!6746426 m!7501692))

(assert (=> b!6745699 d!2119427))

(declare-fun d!2119429 () Bool)

(declare-fun lt!2440112 () Regex!16575)

(assert (=> d!2119429 (validRegex!8311 lt!2440112)))

(assert (=> d!2119429 (= lt!2440112 (generalisedUnion!2419 (unfocusZipperList!1996 (Cons!65901 lt!2440006 Nil!65901))))))

(assert (=> d!2119429 (= (unfocusZipper!2317 (Cons!65901 lt!2440006 Nil!65901)) lt!2440112)))

(declare-fun bs!1793455 () Bool)

(assert (= bs!1793455 d!2119429))

(declare-fun m!7501694 () Bool)

(assert (=> bs!1793455 m!7501694))

(declare-fun m!7501696 () Bool)

(assert (=> bs!1793455 m!7501696))

(assert (=> bs!1793455 m!7501696))

(declare-fun m!7501698 () Bool)

(assert (=> bs!1793455 m!7501698))

(assert (=> b!6745710 d!2119429))

(declare-fun bs!1793456 () Bool)

(declare-fun d!2119431 () Bool)

(assert (= bs!1793456 (and d!2119431 d!2119413)))

(declare-fun lambda!379263 () Int)

(assert (=> bs!1793456 (= lambda!379263 lambda!379254)))

(declare-fun bs!1793457 () Bool)

(assert (= bs!1793457 (and d!2119431 d!2119415)))

(assert (=> bs!1793457 (= lambda!379263 lambda!379255)))

(declare-fun bs!1793458 () Bool)

(assert (= bs!1793458 (and d!2119431 d!2119427)))

(assert (=> bs!1793458 (= lambda!379263 lambda!379260)))

(declare-fun b!6746452 () Bool)

(declare-fun e!4074695 () Bool)

(declare-fun lt!2440115 () Regex!16575)

(assert (=> b!6746452 (= e!4074695 (= lt!2440115 (head!13578 (unfocusZipperList!1996 zl!343))))))

(declare-fun b!6746453 () Bool)

(declare-fun e!4074692 () Bool)

(assert (=> b!6746453 (= e!4074692 e!4074695)))

(declare-fun c!1251745 () Bool)

(assert (=> b!6746453 (= c!1251745 (isEmpty!38254 (tail!12663 (unfocusZipperList!1996 zl!343))))))

(declare-fun b!6746454 () Bool)

(declare-fun isUnion!1379 (Regex!16575) Bool)

(assert (=> b!6746454 (= e!4074695 (isUnion!1379 lt!2440115))))

(declare-fun b!6746455 () Bool)

(declare-fun isEmptyLang!1949 (Regex!16575) Bool)

(assert (=> b!6746455 (= e!4074692 (isEmptyLang!1949 lt!2440115))))

(declare-fun b!6746456 () Bool)

(declare-fun e!4074693 () Regex!16575)

(assert (=> b!6746456 (= e!4074693 (Union!16575 (h!72348 (unfocusZipperList!1996 zl!343)) (generalisedUnion!2419 (t!379725 (unfocusZipperList!1996 zl!343)))))))

(declare-fun b!6746451 () Bool)

(declare-fun e!4074694 () Regex!16575)

(assert (=> b!6746451 (= e!4074694 (h!72348 (unfocusZipperList!1996 zl!343)))))

(declare-fun e!4074696 () Bool)

(assert (=> d!2119431 e!4074696))

(declare-fun res!2759499 () Bool)

(assert (=> d!2119431 (=> (not res!2759499) (not e!4074696))))

(assert (=> d!2119431 (= res!2759499 (validRegex!8311 lt!2440115))))

(assert (=> d!2119431 (= lt!2440115 e!4074694)))

(declare-fun c!1251743 () Bool)

(declare-fun e!4074697 () Bool)

(assert (=> d!2119431 (= c!1251743 e!4074697)))

(declare-fun res!2759498 () Bool)

(assert (=> d!2119431 (=> (not res!2759498) (not e!4074697))))

(assert (=> d!2119431 (= res!2759498 ((_ is Cons!65900) (unfocusZipperList!1996 zl!343)))))

(assert (=> d!2119431 (forall!15775 (unfocusZipperList!1996 zl!343) lambda!379263)))

(assert (=> d!2119431 (= (generalisedUnion!2419 (unfocusZipperList!1996 zl!343)) lt!2440115)))

(declare-fun b!6746457 () Bool)

(assert (=> b!6746457 (= e!4074694 e!4074693)))

(declare-fun c!1251746 () Bool)

(assert (=> b!6746457 (= c!1251746 ((_ is Cons!65900) (unfocusZipperList!1996 zl!343)))))

(declare-fun b!6746458 () Bool)

(assert (=> b!6746458 (= e!4074697 (isEmpty!38254 (t!379725 (unfocusZipperList!1996 zl!343))))))

(declare-fun b!6746459 () Bool)

(assert (=> b!6746459 (= e!4074693 EmptyLang!16575)))

(declare-fun b!6746460 () Bool)

(assert (=> b!6746460 (= e!4074696 e!4074692)))

(declare-fun c!1251744 () Bool)

(assert (=> b!6746460 (= c!1251744 (isEmpty!38254 (unfocusZipperList!1996 zl!343)))))

(assert (= (and d!2119431 res!2759498) b!6746458))

(assert (= (and d!2119431 c!1251743) b!6746451))

(assert (= (and d!2119431 (not c!1251743)) b!6746457))

(assert (= (and b!6746457 c!1251746) b!6746456))

(assert (= (and b!6746457 (not c!1251746)) b!6746459))

(assert (= (and d!2119431 res!2759499) b!6746460))

(assert (= (and b!6746460 c!1251744) b!6746455))

(assert (= (and b!6746460 (not c!1251744)) b!6746453))

(assert (= (and b!6746453 c!1251745) b!6746452))

(assert (= (and b!6746453 (not c!1251745)) b!6746454))

(declare-fun m!7501700 () Bool)

(assert (=> b!6746455 m!7501700))

(assert (=> b!6746452 m!7501152))

(declare-fun m!7501702 () Bool)

(assert (=> b!6746452 m!7501702))

(declare-fun m!7501704 () Bool)

(assert (=> b!6746456 m!7501704))

(declare-fun m!7501706 () Bool)

(assert (=> d!2119431 m!7501706))

(assert (=> d!2119431 m!7501152))

(declare-fun m!7501708 () Bool)

(assert (=> d!2119431 m!7501708))

(declare-fun m!7501710 () Bool)

(assert (=> b!6746458 m!7501710))

(assert (=> b!6746453 m!7501152))

(declare-fun m!7501712 () Bool)

(assert (=> b!6746453 m!7501712))

(assert (=> b!6746453 m!7501712))

(declare-fun m!7501714 () Bool)

(assert (=> b!6746453 m!7501714))

(declare-fun m!7501716 () Bool)

(assert (=> b!6746454 m!7501716))

(assert (=> b!6746460 m!7501152))

(declare-fun m!7501718 () Bool)

(assert (=> b!6746460 m!7501718))

(assert (=> b!6745709 d!2119431))

(declare-fun bs!1793459 () Bool)

(declare-fun d!2119433 () Bool)

(assert (= bs!1793459 (and d!2119433 d!2119413)))

(declare-fun lambda!379266 () Int)

(assert (=> bs!1793459 (= lambda!379266 lambda!379254)))

(declare-fun bs!1793460 () Bool)

(assert (= bs!1793460 (and d!2119433 d!2119415)))

(assert (=> bs!1793460 (= lambda!379266 lambda!379255)))

(declare-fun bs!1793461 () Bool)

(assert (= bs!1793461 (and d!2119433 d!2119427)))

(assert (=> bs!1793461 (= lambda!379266 lambda!379260)))

(declare-fun bs!1793462 () Bool)

(assert (= bs!1793462 (and d!2119433 d!2119431)))

(assert (=> bs!1793462 (= lambda!379266 lambda!379263)))

(declare-fun lt!2440118 () List!66024)

(assert (=> d!2119433 (forall!15775 lt!2440118 lambda!379266)))

(declare-fun e!4074700 () List!66024)

(assert (=> d!2119433 (= lt!2440118 e!4074700)))

(declare-fun c!1251749 () Bool)

(assert (=> d!2119433 (= c!1251749 ((_ is Cons!65901) zl!343))))

(assert (=> d!2119433 (= (unfocusZipperList!1996 zl!343) lt!2440118)))

(declare-fun b!6746465 () Bool)

(assert (=> b!6746465 (= e!4074700 (Cons!65900 (generalisedConcat!2172 (exprs!6459 (h!72349 zl!343))) (unfocusZipperList!1996 (t!379726 zl!343))))))

(declare-fun b!6746466 () Bool)

(assert (=> b!6746466 (= e!4074700 Nil!65900)))

(assert (= (and d!2119433 c!1251749) b!6746465))

(assert (= (and d!2119433 (not c!1251749)) b!6746466))

(declare-fun m!7501720 () Bool)

(assert (=> d!2119433 m!7501720))

(assert (=> b!6746465 m!7501164))

(declare-fun m!7501722 () Bool)

(assert (=> b!6746465 m!7501722))

(assert (=> b!6745709 d!2119433))

(declare-fun bm!610056 () Bool)

(declare-fun call!610061 () Bool)

(declare-fun c!1251751 () Bool)

(assert (=> bm!610056 (= call!610061 (validRegex!8311 (ite c!1251751 (regTwo!33663 r!7292) (regTwo!33662 r!7292))))))

(declare-fun b!6746467 () Bool)

(declare-fun e!4074702 () Bool)

(assert (=> b!6746467 (= e!4074702 call!610061)))

(declare-fun b!6746469 () Bool)

(declare-fun res!2759500 () Bool)

(declare-fun e!4074704 () Bool)

(assert (=> b!6746469 (=> res!2759500 e!4074704)))

(assert (=> b!6746469 (= res!2759500 (not ((_ is Concat!25420) r!7292)))))

(declare-fun e!4074701 () Bool)

(assert (=> b!6746469 (= e!4074701 e!4074704)))

(declare-fun call!610062 () Bool)

(declare-fun c!1251750 () Bool)

(declare-fun bm!610057 () Bool)

(assert (=> bm!610057 (= call!610062 (validRegex!8311 (ite c!1251750 (reg!16904 r!7292) (ite c!1251751 (regOne!33663 r!7292) (regOne!33662 r!7292)))))))

(declare-fun b!6746470 () Bool)

(declare-fun e!4074707 () Bool)

(assert (=> b!6746470 (= e!4074707 e!4074701)))

(assert (=> b!6746470 (= c!1251751 ((_ is Union!16575) r!7292))))

(declare-fun b!6746471 () Bool)

(assert (=> b!6746471 (= e!4074704 e!4074702)))

(declare-fun res!2759503 () Bool)

(assert (=> b!6746471 (=> (not res!2759503) (not e!4074702))))

(declare-fun call!610063 () Bool)

(assert (=> b!6746471 (= res!2759503 call!610063)))

(declare-fun b!6746472 () Bool)

(declare-fun e!4074705 () Bool)

(assert (=> b!6746472 (= e!4074705 e!4074707)))

(assert (=> b!6746472 (= c!1251750 ((_ is Star!16575) r!7292))))

(declare-fun b!6746473 () Bool)

(declare-fun e!4074706 () Bool)

(assert (=> b!6746473 (= e!4074707 e!4074706)))

(declare-fun res!2759501 () Bool)

(assert (=> b!6746473 (= res!2759501 (not (nullable!6562 (reg!16904 r!7292))))))

(assert (=> b!6746473 (=> (not res!2759501) (not e!4074706))))

(declare-fun b!6746468 () Bool)

(declare-fun res!2759504 () Bool)

(declare-fun e!4074703 () Bool)

(assert (=> b!6746468 (=> (not res!2759504) (not e!4074703))))

(assert (=> b!6746468 (= res!2759504 call!610063)))

(assert (=> b!6746468 (= e!4074701 e!4074703)))

(declare-fun d!2119435 () Bool)

(declare-fun res!2759502 () Bool)

(assert (=> d!2119435 (=> res!2759502 e!4074705)))

(assert (=> d!2119435 (= res!2759502 ((_ is ElementMatch!16575) r!7292))))

(assert (=> d!2119435 (= (validRegex!8311 r!7292) e!4074705)))

(declare-fun b!6746474 () Bool)

(assert (=> b!6746474 (= e!4074706 call!610062)))

(declare-fun b!6746475 () Bool)

(assert (=> b!6746475 (= e!4074703 call!610061)))

(declare-fun bm!610058 () Bool)

(assert (=> bm!610058 (= call!610063 call!610062)))

(assert (= (and d!2119435 (not res!2759502)) b!6746472))

(assert (= (and b!6746472 c!1251750) b!6746473))

(assert (= (and b!6746472 (not c!1251750)) b!6746470))

(assert (= (and b!6746473 res!2759501) b!6746474))

(assert (= (and b!6746470 c!1251751) b!6746468))

(assert (= (and b!6746470 (not c!1251751)) b!6746469))

(assert (= (and b!6746468 res!2759504) b!6746475))

(assert (= (and b!6746469 (not res!2759500)) b!6746471))

(assert (= (and b!6746471 res!2759503) b!6746467))

(assert (= (or b!6746475 b!6746467) bm!610056))

(assert (= (or b!6746468 b!6746471) bm!610058))

(assert (= (or b!6746474 bm!610058) bm!610057))

(declare-fun m!7501724 () Bool)

(assert (=> bm!610056 m!7501724))

(declare-fun m!7501726 () Bool)

(assert (=> bm!610057 m!7501726))

(assert (=> b!6746473 m!7501120))

(assert (=> start!654292 d!2119435))

(declare-fun d!2119437 () Bool)

(assert (=> d!2119437 (= (flatMap!2056 lt!2439999 lambda!379185) (dynLambda!26296 lambda!379185 lt!2440006))))

(declare-fun lt!2440119 () Unit!159841)

(assert (=> d!2119437 (= lt!2440119 (choose!50312 lt!2439999 lt!2440006 lambda!379185))))

(assert (=> d!2119437 (= lt!2439999 (store ((as const (Array Context!11918 Bool)) false) lt!2440006 true))))

(assert (=> d!2119437 (= (lemmaFlatMapOnSingletonSet!1582 lt!2439999 lt!2440006 lambda!379185) lt!2440119)))

(declare-fun b_lambda!254095 () Bool)

(assert (=> (not b_lambda!254095) (not d!2119437)))

(declare-fun bs!1793463 () Bool)

(assert (= bs!1793463 d!2119437))

(assert (=> bs!1793463 m!7501140))

(declare-fun m!7501728 () Bool)

(assert (=> bs!1793463 m!7501728))

(declare-fun m!7501730 () Bool)

(assert (=> bs!1793463 m!7501730))

(assert (=> bs!1793463 m!7501150))

(assert (=> b!6745719 d!2119437))

(declare-fun bs!1793464 () Bool)

(declare-fun d!2119439 () Bool)

(assert (= bs!1793464 (and d!2119439 b!6745694)))

(declare-fun lambda!379267 () Int)

(assert (=> bs!1793464 (= lambda!379267 lambda!379185)))

(declare-fun bs!1793465 () Bool)

(assert (= bs!1793465 (and d!2119439 d!2119291)))

(assert (=> bs!1793465 (= lambda!379267 lambda!379209)))

(declare-fun bs!1793466 () Bool)

(assert (= bs!1793466 (and d!2119439 d!2119401)))

(assert (=> bs!1793466 (= lambda!379267 lambda!379251)))

(assert (=> d!2119439 true))

(assert (=> d!2119439 (= (derivationStepZipper!2519 lt!2439999 (h!72350 s!2326)) (flatMap!2056 lt!2439999 lambda!379267))))

(declare-fun bs!1793467 () Bool)

(assert (= bs!1793467 d!2119439))

(declare-fun m!7501732 () Bool)

(assert (=> bs!1793467 m!7501732))

(assert (=> b!6745719 d!2119439))

(declare-fun d!2119441 () Bool)

(assert (=> d!2119441 (= (flatMap!2056 lt!2440013 lambda!379185) (dynLambda!26296 lambda!379185 lt!2439998))))

(declare-fun lt!2440120 () Unit!159841)

(assert (=> d!2119441 (= lt!2440120 (choose!50312 lt!2440013 lt!2439998 lambda!379185))))

(assert (=> d!2119441 (= lt!2440013 (store ((as const (Array Context!11918 Bool)) false) lt!2439998 true))))

(assert (=> d!2119441 (= (lemmaFlatMapOnSingletonSet!1582 lt!2440013 lt!2439998 lambda!379185) lt!2440120)))

(declare-fun b_lambda!254097 () Bool)

(assert (=> (not b_lambda!254097) (not d!2119441)))

(declare-fun bs!1793468 () Bool)

(assert (= bs!1793468 d!2119441))

(assert (=> bs!1793468 m!7501148))

(declare-fun m!7501734 () Bool)

(assert (=> bs!1793468 m!7501734))

(declare-fun m!7501736 () Bool)

(assert (=> bs!1793468 m!7501736))

(assert (=> bs!1793468 m!7501136))

(assert (=> b!6745719 d!2119441))

(declare-fun b!6746476 () Bool)

(declare-fun e!4074710 () (InoxSet Context!11918))

(declare-fun e!4074709 () (InoxSet Context!11918))

(assert (=> b!6746476 (= e!4074710 e!4074709)))

(declare-fun c!1251752 () Bool)

(assert (=> b!6746476 (= c!1251752 ((_ is Cons!65900) (exprs!6459 lt!2439998)))))

(declare-fun b!6746477 () Bool)

(declare-fun call!610064 () (InoxSet Context!11918))

(assert (=> b!6746477 (= e!4074709 call!610064)))

(declare-fun b!6746478 () Bool)

(assert (=> b!6746478 (= e!4074709 ((as const (Array Context!11918 Bool)) false))))

(declare-fun bm!610059 () Bool)

(assert (=> bm!610059 (= call!610064 (derivationStepZipperDown!1803 (h!72348 (exprs!6459 lt!2439998)) (Context!11919 (t!379725 (exprs!6459 lt!2439998))) (h!72350 s!2326)))))

(declare-fun d!2119443 () Bool)

(declare-fun c!1251753 () Bool)

(declare-fun e!4074708 () Bool)

(assert (=> d!2119443 (= c!1251753 e!4074708)))

(declare-fun res!2759505 () Bool)

(assert (=> d!2119443 (=> (not res!2759505) (not e!4074708))))

(assert (=> d!2119443 (= res!2759505 ((_ is Cons!65900) (exprs!6459 lt!2439998)))))

(assert (=> d!2119443 (= (derivationStepZipperUp!1729 lt!2439998 (h!72350 s!2326)) e!4074710)))

(declare-fun b!6746479 () Bool)

(assert (=> b!6746479 (= e!4074708 (nullable!6562 (h!72348 (exprs!6459 lt!2439998))))))

(declare-fun b!6746480 () Bool)

(assert (=> b!6746480 (= e!4074710 ((_ map or) call!610064 (derivationStepZipperUp!1729 (Context!11919 (t!379725 (exprs!6459 lt!2439998))) (h!72350 s!2326))))))

(assert (= (and d!2119443 res!2759505) b!6746479))

(assert (= (and d!2119443 c!1251753) b!6746480))

(assert (= (and d!2119443 (not c!1251753)) b!6746476))

(assert (= (and b!6746476 c!1251752) b!6746477))

(assert (= (and b!6746476 (not c!1251752)) b!6746478))

(assert (= (or b!6746480 b!6746477) bm!610059))

(declare-fun m!7501738 () Bool)

(assert (=> bm!610059 m!7501738))

(declare-fun m!7501740 () Bool)

(assert (=> b!6746479 m!7501740))

(declare-fun m!7501742 () Bool)

(assert (=> b!6746480 m!7501742))

(assert (=> b!6745719 d!2119443))

(declare-fun d!2119445 () Bool)

(assert (=> d!2119445 (= (flatMap!2056 lt!2440013 lambda!379185) (choose!50311 lt!2440013 lambda!379185))))

(declare-fun bs!1793469 () Bool)

(assert (= bs!1793469 d!2119445))

(declare-fun m!7501744 () Bool)

(assert (=> bs!1793469 m!7501744))

(assert (=> b!6745719 d!2119445))

(declare-fun b!6746481 () Bool)

(declare-fun e!4074713 () (InoxSet Context!11918))

(declare-fun e!4074712 () (InoxSet Context!11918))

(assert (=> b!6746481 (= e!4074713 e!4074712)))

(declare-fun c!1251754 () Bool)

(assert (=> b!6746481 (= c!1251754 ((_ is Cons!65900) (exprs!6459 lt!2440006)))))

(declare-fun b!6746482 () Bool)

(declare-fun call!610065 () (InoxSet Context!11918))

(assert (=> b!6746482 (= e!4074712 call!610065)))

(declare-fun b!6746483 () Bool)

(assert (=> b!6746483 (= e!4074712 ((as const (Array Context!11918 Bool)) false))))

(declare-fun bm!610060 () Bool)

(assert (=> bm!610060 (= call!610065 (derivationStepZipperDown!1803 (h!72348 (exprs!6459 lt!2440006)) (Context!11919 (t!379725 (exprs!6459 lt!2440006))) (h!72350 s!2326)))))

(declare-fun d!2119447 () Bool)

(declare-fun c!1251755 () Bool)

(declare-fun e!4074711 () Bool)

(assert (=> d!2119447 (= c!1251755 e!4074711)))

(declare-fun res!2759506 () Bool)

(assert (=> d!2119447 (=> (not res!2759506) (not e!4074711))))

(assert (=> d!2119447 (= res!2759506 ((_ is Cons!65900) (exprs!6459 lt!2440006)))))

(assert (=> d!2119447 (= (derivationStepZipperUp!1729 lt!2440006 (h!72350 s!2326)) e!4074713)))

(declare-fun b!6746484 () Bool)

(assert (=> b!6746484 (= e!4074711 (nullable!6562 (h!72348 (exprs!6459 lt!2440006))))))

(declare-fun b!6746485 () Bool)

(assert (=> b!6746485 (= e!4074713 ((_ map or) call!610065 (derivationStepZipperUp!1729 (Context!11919 (t!379725 (exprs!6459 lt!2440006))) (h!72350 s!2326))))))

(assert (= (and d!2119447 res!2759506) b!6746484))

(assert (= (and d!2119447 c!1251755) b!6746485))

(assert (= (and d!2119447 (not c!1251755)) b!6746481))

(assert (= (and b!6746481 c!1251754) b!6746482))

(assert (= (and b!6746481 (not c!1251754)) b!6746483))

(assert (= (or b!6746485 b!6746482) bm!610060))

(declare-fun m!7501746 () Bool)

(assert (=> bm!610060 m!7501746))

(declare-fun m!7501748 () Bool)

(assert (=> b!6746484 m!7501748))

(declare-fun m!7501750 () Bool)

(assert (=> b!6746485 m!7501750))

(assert (=> b!6745719 d!2119447))

(declare-fun d!2119449 () Bool)

(assert (=> d!2119449 (= (flatMap!2056 lt!2439999 lambda!379185) (choose!50311 lt!2439999 lambda!379185))))

(declare-fun bs!1793470 () Bool)

(assert (= bs!1793470 d!2119449))

(declare-fun m!7501752 () Bool)

(assert (=> bs!1793470 m!7501752))

(assert (=> b!6745719 d!2119449))

(declare-fun d!2119451 () Bool)

(declare-fun nullableFct!2472 (Regex!16575) Bool)

(assert (=> d!2119451 (= (nullable!6562 (reg!16904 r!7292)) (nullableFct!2472 (reg!16904 r!7292)))))

(declare-fun bs!1793471 () Bool)

(assert (= bs!1793471 d!2119451))

(declare-fun m!7501754 () Bool)

(assert (=> bs!1793471 m!7501754))

(assert (=> b!6745689 d!2119451))

(declare-fun b!6746490 () Bool)

(declare-fun e!4074716 () Bool)

(declare-fun tp!1849086 () Bool)

(assert (=> b!6746490 (= e!4074716 (and tp_is_empty!42403 tp!1849086))))

(assert (=> b!6745706 (= tp!1849016 e!4074716)))

(assert (= (and b!6745706 ((_ is Cons!65902) (t!379727 s!2326))) b!6746490))

(declare-fun b!6746504 () Bool)

(declare-fun e!4074719 () Bool)

(declare-fun tp!1849101 () Bool)

(declare-fun tp!1849100 () Bool)

(assert (=> b!6746504 (= e!4074719 (and tp!1849101 tp!1849100))))

(assert (=> b!6745691 (= tp!1849020 e!4074719)))

(declare-fun b!6746501 () Bool)

(assert (=> b!6746501 (= e!4074719 tp_is_empty!42403)))

(declare-fun b!6746502 () Bool)

(declare-fun tp!1849099 () Bool)

(declare-fun tp!1849098 () Bool)

(assert (=> b!6746502 (= e!4074719 (and tp!1849099 tp!1849098))))

(declare-fun b!6746503 () Bool)

(declare-fun tp!1849097 () Bool)

(assert (=> b!6746503 (= e!4074719 tp!1849097)))

(assert (= (and b!6745691 ((_ is ElementMatch!16575) (reg!16904 r!7292))) b!6746501))

(assert (= (and b!6745691 ((_ is Concat!25420) (reg!16904 r!7292))) b!6746502))

(assert (= (and b!6745691 ((_ is Star!16575) (reg!16904 r!7292))) b!6746503))

(assert (= (and b!6745691 ((_ is Union!16575) (reg!16904 r!7292))) b!6746504))

(declare-fun b!6746512 () Bool)

(declare-fun e!4074725 () Bool)

(declare-fun tp!1849106 () Bool)

(assert (=> b!6746512 (= e!4074725 tp!1849106)))

(declare-fun b!6746511 () Bool)

(declare-fun e!4074724 () Bool)

(declare-fun tp!1849107 () Bool)

(assert (=> b!6746511 (= e!4074724 (and (inv!84684 (h!72349 (t!379726 zl!343))) e!4074725 tp!1849107))))

(assert (=> b!6745692 (= tp!1849019 e!4074724)))

(assert (= b!6746511 b!6746512))

(assert (= (and b!6745692 ((_ is Cons!65901) (t!379726 zl!343))) b!6746511))

(declare-fun m!7501756 () Bool)

(assert (=> b!6746511 m!7501756))

(declare-fun b!6746516 () Bool)

(declare-fun e!4074726 () Bool)

(declare-fun tp!1849112 () Bool)

(declare-fun tp!1849111 () Bool)

(assert (=> b!6746516 (= e!4074726 (and tp!1849112 tp!1849111))))

(assert (=> b!6745718 (= tp!1849022 e!4074726)))

(declare-fun b!6746513 () Bool)

(assert (=> b!6746513 (= e!4074726 tp_is_empty!42403)))

(declare-fun b!6746514 () Bool)

(declare-fun tp!1849110 () Bool)

(declare-fun tp!1849109 () Bool)

(assert (=> b!6746514 (= e!4074726 (and tp!1849110 tp!1849109))))

(declare-fun b!6746515 () Bool)

(declare-fun tp!1849108 () Bool)

(assert (=> b!6746515 (= e!4074726 tp!1849108)))

(assert (= (and b!6745718 ((_ is ElementMatch!16575) (regOne!33662 r!7292))) b!6746513))

(assert (= (and b!6745718 ((_ is Concat!25420) (regOne!33662 r!7292))) b!6746514))

(assert (= (and b!6745718 ((_ is Star!16575) (regOne!33662 r!7292))) b!6746515))

(assert (= (and b!6745718 ((_ is Union!16575) (regOne!33662 r!7292))) b!6746516))

(declare-fun b!6746520 () Bool)

(declare-fun e!4074727 () Bool)

(declare-fun tp!1849117 () Bool)

(declare-fun tp!1849116 () Bool)

(assert (=> b!6746520 (= e!4074727 (and tp!1849117 tp!1849116))))

(assert (=> b!6745718 (= tp!1849023 e!4074727)))

(declare-fun b!6746517 () Bool)

(assert (=> b!6746517 (= e!4074727 tp_is_empty!42403)))

(declare-fun b!6746518 () Bool)

(declare-fun tp!1849115 () Bool)

(declare-fun tp!1849114 () Bool)

(assert (=> b!6746518 (= e!4074727 (and tp!1849115 tp!1849114))))

(declare-fun b!6746519 () Bool)

(declare-fun tp!1849113 () Bool)

(assert (=> b!6746519 (= e!4074727 tp!1849113)))

(assert (= (and b!6745718 ((_ is ElementMatch!16575) (regTwo!33662 r!7292))) b!6746517))

(assert (= (and b!6745718 ((_ is Concat!25420) (regTwo!33662 r!7292))) b!6746518))

(assert (= (and b!6745718 ((_ is Star!16575) (regTwo!33662 r!7292))) b!6746519))

(assert (= (and b!6745718 ((_ is Union!16575) (regTwo!33662 r!7292))) b!6746520))

(declare-fun b!6746524 () Bool)

(declare-fun e!4074728 () Bool)

(declare-fun tp!1849122 () Bool)

(declare-fun tp!1849121 () Bool)

(assert (=> b!6746524 (= e!4074728 (and tp!1849122 tp!1849121))))

(assert (=> b!6745701 (= tp!1849017 e!4074728)))

(declare-fun b!6746521 () Bool)

(assert (=> b!6746521 (= e!4074728 tp_is_empty!42403)))

(declare-fun b!6746522 () Bool)

(declare-fun tp!1849120 () Bool)

(declare-fun tp!1849119 () Bool)

(assert (=> b!6746522 (= e!4074728 (and tp!1849120 tp!1849119))))

(declare-fun b!6746523 () Bool)

(declare-fun tp!1849118 () Bool)

(assert (=> b!6746523 (= e!4074728 tp!1849118)))

(assert (= (and b!6745701 ((_ is ElementMatch!16575) (regOne!33663 r!7292))) b!6746521))

(assert (= (and b!6745701 ((_ is Concat!25420) (regOne!33663 r!7292))) b!6746522))

(assert (= (and b!6745701 ((_ is Star!16575) (regOne!33663 r!7292))) b!6746523))

(assert (= (and b!6745701 ((_ is Union!16575) (regOne!33663 r!7292))) b!6746524))

(declare-fun b!6746528 () Bool)

(declare-fun e!4074729 () Bool)

(declare-fun tp!1849127 () Bool)

(declare-fun tp!1849126 () Bool)

(assert (=> b!6746528 (= e!4074729 (and tp!1849127 tp!1849126))))

(assert (=> b!6745701 (= tp!1849024 e!4074729)))

(declare-fun b!6746525 () Bool)

(assert (=> b!6746525 (= e!4074729 tp_is_empty!42403)))

(declare-fun b!6746526 () Bool)

(declare-fun tp!1849125 () Bool)

(declare-fun tp!1849124 () Bool)

(assert (=> b!6746526 (= e!4074729 (and tp!1849125 tp!1849124))))

(declare-fun b!6746527 () Bool)

(declare-fun tp!1849123 () Bool)

(assert (=> b!6746527 (= e!4074729 tp!1849123)))

(assert (= (and b!6745701 ((_ is ElementMatch!16575) (regTwo!33663 r!7292))) b!6746525))

(assert (= (and b!6745701 ((_ is Concat!25420) (regTwo!33663 r!7292))) b!6746526))

(assert (= (and b!6745701 ((_ is Star!16575) (regTwo!33663 r!7292))) b!6746527))

(assert (= (and b!6745701 ((_ is Union!16575) (regTwo!33663 r!7292))) b!6746528))

(declare-fun b!6746533 () Bool)

(declare-fun e!4074732 () Bool)

(declare-fun tp!1849132 () Bool)

(declare-fun tp!1849133 () Bool)

(assert (=> b!6746533 (= e!4074732 (and tp!1849132 tp!1849133))))

(assert (=> b!6745703 (= tp!1849025 e!4074732)))

(assert (= (and b!6745703 ((_ is Cons!65900) (exprs!6459 (h!72349 zl!343)))) b!6746533))

(declare-fun condSetEmpty!46093 () Bool)

(assert (=> setNonEmpty!46087 (= condSetEmpty!46093 (= setRest!46087 ((as const (Array Context!11918 Bool)) false)))))

(declare-fun setRes!46093 () Bool)

(assert (=> setNonEmpty!46087 (= tp!1849021 setRes!46093)))

(declare-fun setIsEmpty!46093 () Bool)

(assert (=> setIsEmpty!46093 setRes!46093))

(declare-fun setElem!46093 () Context!11918)

(declare-fun tp!1849138 () Bool)

(declare-fun e!4074735 () Bool)

(declare-fun setNonEmpty!46093 () Bool)

(assert (=> setNonEmpty!46093 (= setRes!46093 (and tp!1849138 (inv!84684 setElem!46093) e!4074735))))

(declare-fun setRest!46093 () (InoxSet Context!11918))

(assert (=> setNonEmpty!46093 (= setRest!46087 ((_ map or) (store ((as const (Array Context!11918 Bool)) false) setElem!46093 true) setRest!46093))))

(declare-fun b!6746538 () Bool)

(declare-fun tp!1849139 () Bool)

(assert (=> b!6746538 (= e!4074735 tp!1849139)))

(assert (= (and setNonEmpty!46087 condSetEmpty!46093) setIsEmpty!46093))

(assert (= (and setNonEmpty!46087 (not condSetEmpty!46093)) setNonEmpty!46093))

(assert (= setNonEmpty!46093 b!6746538))

(declare-fun m!7501758 () Bool)

(assert (=> setNonEmpty!46093 m!7501758))

(declare-fun b!6746539 () Bool)

(declare-fun e!4074736 () Bool)

(declare-fun tp!1849140 () Bool)

(declare-fun tp!1849141 () Bool)

(assert (=> b!6746539 (= e!4074736 (and tp!1849140 tp!1849141))))

(assert (=> b!6745704 (= tp!1849018 e!4074736)))

(assert (= (and b!6745704 ((_ is Cons!65900) (exprs!6459 setElem!46087))) b!6746539))

(declare-fun b_lambda!254099 () Bool)

(assert (= b_lambda!254083 (or b!6745694 b_lambda!254099)))

(declare-fun bs!1793472 () Bool)

(declare-fun d!2119453 () Bool)

(assert (= bs!1793472 (and d!2119453 b!6745694)))

(assert (=> bs!1793472 (= (dynLambda!26296 lambda!379185 lt!2439995) (derivationStepZipperUp!1729 lt!2439995 (h!72350 s!2326)))))

(assert (=> bs!1793472 m!7501210))

(assert (=> d!2119365 d!2119453))

(declare-fun b_lambda!254101 () Bool)

(assert (= b_lambda!254097 (or b!6745694 b_lambda!254101)))

(declare-fun bs!1793473 () Bool)

(declare-fun d!2119455 () Bool)

(assert (= bs!1793473 (and d!2119455 b!6745694)))

(assert (=> bs!1793473 (= (dynLambda!26296 lambda!379185 lt!2439998) (derivationStepZipperUp!1729 lt!2439998 (h!72350 s!2326)))))

(assert (=> bs!1793473 m!7501142))

(assert (=> d!2119441 d!2119455))

(declare-fun b_lambda!254103 () Bool)

(assert (= b_lambda!254093 (or b!6745694 b_lambda!254103)))

(declare-fun bs!1793474 () Bool)

(declare-fun d!2119457 () Bool)

(assert (= bs!1793474 (and d!2119457 b!6745694)))

(assert (=> bs!1793474 (= (dynLambda!26296 lambda!379185 (h!72349 zl!343)) (derivationStepZipperUp!1729 (h!72349 zl!343) (h!72350 s!2326)))))

(assert (=> bs!1793474 m!7501168))

(assert (=> d!2119407 d!2119457))

(declare-fun b_lambda!254105 () Bool)

(assert (= b_lambda!254095 (or b!6745694 b_lambda!254105)))

(declare-fun bs!1793475 () Bool)

(declare-fun d!2119459 () Bool)

(assert (= bs!1793475 (and d!2119459 b!6745694)))

(assert (=> bs!1793475 (= (dynLambda!26296 lambda!379185 lt!2440006) (derivationStepZipperUp!1729 lt!2440006 (h!72350 s!2326)))))

(assert (=> bs!1793475 m!7501146))

(assert (=> d!2119437 d!2119459))

(check-sat (not b!6746391) (not bm!610050) (not d!2119425) (not d!2119355) (not d!2119383) (not b!6746325) (not d!2119407) (not bm!610016) (not b!6746456) (not b!6746009) (not d!2119397) (not b!6746453) (not b!6746345) (not d!2119427) (not bm!610060) (not d!2119411) (not bm!610059) (not b!6746399) (not b!6746395) (not b!6746138) (not b!6746393) (not bm!610055) (not b!6746502) (not b!6746421) (not b!6746511) (not d!2119431) (not bm!610054) (not b!6746327) (not b_lambda!254099) (not d!2119437) (not bm!610041) (not d!2119385) (not d!2119395) (not b!6746137) (not b_lambda!254103) (not d!2119451) (not b!6746339) (not b!6746192) (not b!6746515) (not b_lambda!254101) (not b!6746526) (not bm!610057) (not bs!1793475) (not b!6746480) (not b!6746425) (not b!6746484) (not d!2119331) (not b!6746527) (not b!6746519) (not b_lambda!254105) (not d!2119371) (not d!2119439) (not d!2119445) (not d!2119413) (not b!6745831) (not b!6746455) (not b!6746503) (not d!2119365) (not b!6746460) (not bs!1793473) (not d!2119403) (not bm!609989) (not b!6746512) (not bm!610037) (not b!6746524) (not b!6746381) (not b!6746348) (not d!2119415) (not b!6746458) (not b!6746008) (not bm!610043) (not bm!610051) (not setNonEmpty!46093) (not d!2119373) (not b!6746528) (not b!6746539) tp_is_empty!42403 (not b!6746146) (not b!6746424) (not bm!610015) (not b!6746504) (not b!6746326) (not bm!610042) (not bs!1793472) (not b!6746465) (not b!6746479) (not d!2119449) (not d!2119399) (not bs!1793474) (not d!2119441) (not d!2119391) (not b!6746193) (not bm!610053) (not d!2119401) (not b!6746322) (not d!2119387) (not b!6746454) (not bm!609992) (not b!6746337) (not b!6746520) (not bm!610035) (not b!6746338) (not b!6746382) (not b!6746533) (not b!6746142) (not bm!609988) (not b!6746518) (not b!6746373) (not b!6746400) (not b!6746516) (not b!6746140) (not b!6746522) (not b!6746514) (not b!6746429) (not b!6746147) (not d!2119271) (not b!6745874) (not d!2119423) (not bm!610040) (not b!6746538) (not b!6746170) (not b!6746340) (not bm!609985) (not d!2119393) (not b!6746490) (not b!6746390) (not b!6746452) (not b!6746427) (not d!2119429) (not d!2119291) (not b!6746324) (not b!6746426) (not bm!610056) (not d!2119433) (not d!2119359) (not b!6746344) (not d!2119419) (not d!2119369) (not b!6746473) (not b!6745875) (not b!6746523) (not b!6746485) (not b!6746323) (not b!6746428))
(check-sat)
