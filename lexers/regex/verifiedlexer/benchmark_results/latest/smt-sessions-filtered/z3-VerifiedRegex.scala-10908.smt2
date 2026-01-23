; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564158 () Bool)

(assert start!564158)

(declare-fun b!5359196 () Bool)

(assert (=> b!5359196 true))

(assert (=> b!5359196 true))

(declare-fun lambda!275870 () Int)

(declare-fun lambda!275869 () Int)

(assert (=> b!5359196 (not (= lambda!275870 lambda!275869))))

(assert (=> b!5359196 true))

(assert (=> b!5359196 true))

(declare-fun b!5359213 () Bool)

(assert (=> b!5359213 true))

(declare-fun bs!1241550 () Bool)

(declare-fun b!5359217 () Bool)

(assert (= bs!1241550 (and b!5359217 b!5359196)))

(declare-datatypes ((C!30396 0))(
  ( (C!30397 (val!24900 Int)) )
))
(declare-datatypes ((Regex!15063 0))(
  ( (ElementMatch!15063 (c!933177 C!30396)) (Concat!23908 (regOne!30638 Regex!15063) (regTwo!30638 Regex!15063)) (EmptyExpr!15063) (Star!15063 (reg!15392 Regex!15063)) (EmptyLang!15063) (Union!15063 (regOne!30639 Regex!15063) (regTwo!30639 Regex!15063)) )
))
(declare-fun r!7292 () Regex!15063)

(declare-fun lambda!275872 () Int)

(declare-fun lt!2183684 () Regex!15063)

(assert (=> bs!1241550 (= (= lt!2183684 (regOne!30638 r!7292)) (= lambda!275872 lambda!275869))))

(assert (=> bs!1241550 (not (= lambda!275872 lambda!275870))))

(assert (=> b!5359217 true))

(assert (=> b!5359217 true))

(assert (=> b!5359217 true))

(declare-fun lambda!275873 () Int)

(assert (=> bs!1241550 (not (= lambda!275873 lambda!275869))))

(assert (=> bs!1241550 (= (= lt!2183684 (regOne!30638 r!7292)) (= lambda!275873 lambda!275870))))

(assert (=> b!5359217 (not (= lambda!275873 lambda!275872))))

(assert (=> b!5359217 true))

(assert (=> b!5359217 true))

(assert (=> b!5359217 true))

(declare-fun b!5359194 () Bool)

(declare-fun e!3326207 () Bool)

(declare-fun nullable!5232 (Regex!15063) Bool)

(assert (=> b!5359194 (= e!3326207 (nullable!5232 (regOne!30638 (regOne!30638 r!7292))))))

(declare-fun b!5359195 () Bool)

(declare-fun e!3326220 () Bool)

(declare-fun tp!1488223 () Bool)

(assert (=> b!5359195 (= e!3326220 tp!1488223)))

(declare-fun e!3326213 () Bool)

(declare-fun e!3326206 () Bool)

(assert (=> b!5359196 (= e!3326213 e!3326206)))

(declare-fun res!2274186 () Bool)

(assert (=> b!5359196 (=> res!2274186 e!3326206)))

(declare-fun lt!2183677 () Bool)

(declare-datatypes ((List!61488 0))(
  ( (Nil!61364) (Cons!61364 (h!67812 C!30396) (t!374709 List!61488)) )
))
(declare-fun s!2326 () List!61488)

(declare-fun lt!2183691 () Bool)

(get-info :version)

(assert (=> b!5359196 (= res!2274186 (or (not (= lt!2183691 lt!2183677)) ((_ is Nil!61364) s!2326)))))

(declare-fun Exists!2244 (Int) Bool)

(assert (=> b!5359196 (= (Exists!2244 lambda!275869) (Exists!2244 lambda!275870))))

(declare-datatypes ((Unit!153770 0))(
  ( (Unit!153771) )
))
(declare-fun lt!2183702 () Unit!153770)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!898 (Regex!15063 Regex!15063 List!61488) Unit!153770)

(assert (=> b!5359196 (= lt!2183702 (lemmaExistCutMatchRandMatchRSpecEquivalent!898 (regOne!30638 r!7292) (regTwo!30638 r!7292) s!2326))))

(assert (=> b!5359196 (= lt!2183677 (Exists!2244 lambda!275869))))

(declare-datatypes ((tuple2!64524 0))(
  ( (tuple2!64525 (_1!35565 List!61488) (_2!35565 List!61488)) )
))
(declare-datatypes ((Option!15174 0))(
  ( (None!15173) (Some!15173 (v!51202 tuple2!64524)) )
))
(declare-fun isDefined!11877 (Option!15174) Bool)

(declare-fun findConcatSeparation!1588 (Regex!15063 Regex!15063 List!61488 List!61488 List!61488) Option!15174)

(assert (=> b!5359196 (= lt!2183677 (isDefined!11877 (findConcatSeparation!1588 (regOne!30638 r!7292) (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326)))))

(declare-fun lt!2183694 () Unit!153770)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1352 (Regex!15063 Regex!15063 List!61488) Unit!153770)

(assert (=> b!5359196 (= lt!2183694 (lemmaFindConcatSeparationEquivalentToExists!1352 (regOne!30638 r!7292) (regTwo!30638 r!7292) s!2326))))

(declare-fun b!5359198 () Bool)

(declare-fun res!2274193 () Bool)

(declare-fun e!3326204 () Bool)

(assert (=> b!5359198 (=> res!2274193 e!3326204)))

(declare-fun validRegex!6799 (Regex!15063) Bool)

(assert (=> b!5359198 (= res!2274193 (not (validRegex!6799 (regTwo!30638 r!7292))))))

(declare-fun b!5359199 () Bool)

(declare-fun e!3326210 () Bool)

(declare-fun e!3326219 () Bool)

(assert (=> b!5359199 (= e!3326210 e!3326219)))

(declare-fun res!2274190 () Bool)

(assert (=> b!5359199 (=> res!2274190 e!3326219)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61489 0))(
  ( (Nil!61365) (Cons!61365 (h!67813 Regex!15063) (t!374710 List!61489)) )
))
(declare-datatypes ((Context!8894 0))(
  ( (Context!8895 (exprs!4947 List!61489)) )
))
(declare-fun lt!2183688 () (InoxSet Context!8894))

(declare-fun lt!2183706 () (InoxSet Context!8894))

(assert (=> b!5359199 (= res!2274190 (not (= lt!2183688 lt!2183706)))))

(declare-fun lt!2183699 () Context!8894)

(declare-fun derivationStepZipperDown!511 (Regex!15063 Context!8894 C!30396) (InoxSet Context!8894))

(assert (=> b!5359199 (= lt!2183706 (derivationStepZipperDown!511 (reg!15392 (regOne!30638 r!7292)) lt!2183699 (h!67812 s!2326)))))

(declare-fun lt!2183692 () List!61489)

(assert (=> b!5359199 (= lt!2183699 (Context!8895 lt!2183692))))

(declare-datatypes ((List!61490 0))(
  ( (Nil!61366) (Cons!61366 (h!67814 Context!8894) (t!374711 List!61490)) )
))
(declare-fun zl!343 () List!61490)

(assert (=> b!5359199 (= lt!2183692 (Cons!61365 lt!2183684 (t!374710 (exprs!4947 (h!67814 zl!343)))))))

(assert (=> b!5359199 (= lt!2183684 (Star!15063 (reg!15392 (regOne!30638 r!7292))))))

(declare-fun b!5359200 () Bool)

(declare-fun res!2274187 () Bool)

(assert (=> b!5359200 (=> res!2274187 e!3326213)))

(assert (=> b!5359200 (= res!2274187 (not ((_ is Cons!61365) (exprs!4947 (h!67814 zl!343)))))))

(declare-fun b!5359201 () Bool)

(declare-fun res!2274209 () Bool)

(assert (=> b!5359201 (=> res!2274209 e!3326210)))

(assert (=> b!5359201 (= res!2274209 (or ((_ is Concat!23908) (regOne!30638 r!7292)) (not ((_ is Star!15063) (regOne!30638 r!7292)))))))

(declare-fun setRes!34681 () Bool)

(declare-fun tp!1488224 () Bool)

(declare-fun setNonEmpty!34681 () Bool)

(declare-fun setElem!34681 () Context!8894)

(declare-fun inv!80904 (Context!8894) Bool)

(assert (=> setNonEmpty!34681 (= setRes!34681 (and tp!1488224 (inv!80904 setElem!34681) e!3326220))))

(declare-fun z!1189 () (InoxSet Context!8894))

(declare-fun setRest!34681 () (InoxSet Context!8894))

(assert (=> setNonEmpty!34681 (= z!1189 ((_ map or) (store ((as const (Array Context!8894 Bool)) false) setElem!34681 true) setRest!34681))))

(declare-fun b!5359202 () Bool)

(declare-fun res!2274185 () Bool)

(assert (=> b!5359202 (=> res!2274185 e!3326213)))

(assert (=> b!5359202 (= res!2274185 (or ((_ is EmptyExpr!15063) r!7292) ((_ is EmptyLang!15063) r!7292) ((_ is ElementMatch!15063) r!7292) ((_ is Union!15063) r!7292) (not ((_ is Concat!23908) r!7292))))))

(declare-fun b!5359203 () Bool)

(declare-fun e!3326222 () Bool)

(declare-fun tp!1488220 () Bool)

(declare-fun tp!1488227 () Bool)

(assert (=> b!5359203 (= e!3326222 (and tp!1488220 tp!1488227))))

(declare-fun b!5359204 () Bool)

(declare-fun e!3326205 () Bool)

(assert (=> b!5359204 (= e!3326219 e!3326205)))

(declare-fun res!2274183 () Bool)

(assert (=> b!5359204 (=> res!2274183 e!3326205)))

(declare-fun lt!2183700 () (InoxSet Context!8894))

(assert (=> b!5359204 (= res!2274183 (not (= lt!2183700 lt!2183706)))))

(declare-fun lt!2183695 () Context!8894)

(declare-fun lambda!275871 () Int)

(declare-fun lt!2183698 () (InoxSet Context!8894))

(declare-fun flatMap!790 ((InoxSet Context!8894) Int) (InoxSet Context!8894))

(declare-fun derivationStepZipperUp!435 (Context!8894 C!30396) (InoxSet Context!8894))

(assert (=> b!5359204 (= (flatMap!790 lt!2183698 lambda!275871) (derivationStepZipperUp!435 lt!2183695 (h!67812 s!2326)))))

(declare-fun lt!2183681 () Unit!153770)

(declare-fun lemmaFlatMapOnSingletonSet!322 ((InoxSet Context!8894) Context!8894 Int) Unit!153770)

(assert (=> b!5359204 (= lt!2183681 (lemmaFlatMapOnSingletonSet!322 lt!2183698 lt!2183695 lambda!275871))))

(declare-fun lt!2183673 () (InoxSet Context!8894))

(assert (=> b!5359204 (= lt!2183673 (derivationStepZipperUp!435 lt!2183695 (h!67812 s!2326)))))

(declare-fun derivationStepZipper!1302 ((InoxSet Context!8894) C!30396) (InoxSet Context!8894))

(assert (=> b!5359204 (= lt!2183700 (derivationStepZipper!1302 lt!2183698 (h!67812 s!2326)))))

(assert (=> b!5359204 (= lt!2183698 (store ((as const (Array Context!8894 Bool)) false) lt!2183695 true))))

(assert (=> b!5359204 (= lt!2183695 (Context!8895 (Cons!61365 (reg!15392 (regOne!30638 r!7292)) lt!2183692)))))

(declare-fun b!5359205 () Bool)

(declare-fun res!2274195 () Bool)

(assert (=> b!5359205 (=> res!2274195 e!3326213)))

(declare-fun generalisedUnion!992 (List!61489) Regex!15063)

(declare-fun unfocusZipperList!505 (List!61490) List!61489)

(assert (=> b!5359205 (= res!2274195 (not (= r!7292 (generalisedUnion!992 (unfocusZipperList!505 zl!343)))))))

(declare-fun b!5359206 () Bool)

(declare-fun e!3326203 () Unit!153770)

(declare-fun Unit!153772 () Unit!153770)

(assert (=> b!5359206 (= e!3326203 Unit!153772)))

(declare-fun lt!2183703 () (InoxSet Context!8894))

(declare-fun lt!2183697 () Unit!153770)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!300 ((InoxSet Context!8894) (InoxSet Context!8894) List!61488) Unit!153770)

(assert (=> b!5359206 (= lt!2183697 (lemmaZipperConcatMatchesSameAsBothZippers!300 lt!2183688 lt!2183703 (t!374709 s!2326)))))

(declare-fun res!2274208 () Bool)

(declare-fun matchZipper!1307 ((InoxSet Context!8894) List!61488) Bool)

(assert (=> b!5359206 (= res!2274208 (matchZipper!1307 lt!2183688 (t!374709 s!2326)))))

(declare-fun e!3326215 () Bool)

(assert (=> b!5359206 (=> res!2274208 e!3326215)))

(assert (=> b!5359206 (= (matchZipper!1307 ((_ map or) lt!2183688 lt!2183703) (t!374709 s!2326)) e!3326215)))

(declare-fun b!5359207 () Bool)

(declare-fun res!2274200 () Bool)

(assert (=> b!5359207 (=> res!2274200 e!3326205)))

(declare-fun lt!2183685 () Regex!15063)

(assert (=> b!5359207 (= res!2274200 (not (= lt!2183685 r!7292)))))

(declare-fun b!5359208 () Bool)

(declare-fun res!2274202 () Bool)

(assert (=> b!5359208 (=> res!2274202 e!3326213)))

(declare-fun isEmpty!33335 (List!61490) Bool)

(assert (=> b!5359208 (= res!2274202 (not (isEmpty!33335 (t!374711 zl!343))))))

(declare-fun b!5359209 () Bool)

(declare-fun e!3326214 () Bool)

(declare-fun e!3326216 () Bool)

(assert (=> b!5359209 (= e!3326214 e!3326216)))

(declare-fun res!2274207 () Bool)

(assert (=> b!5359209 (=> res!2274207 e!3326216)))

(declare-fun lt!2183676 () Context!8894)

(declare-fun unfocusZipper!805 (List!61490) Regex!15063)

(assert (=> b!5359209 (= res!2274207 (not (= (unfocusZipper!805 (Cons!61366 lt!2183676 Nil!61366)) (reg!15392 (regOne!30638 r!7292)))))))

(declare-fun lt!2183687 () (InoxSet Context!8894))

(assert (=> b!5359209 (= (flatMap!790 lt!2183687 lambda!275871) (derivationStepZipperUp!435 lt!2183699 (h!67812 s!2326)))))

(declare-fun lt!2183696 () Unit!153770)

(assert (=> b!5359209 (= lt!2183696 (lemmaFlatMapOnSingletonSet!322 lt!2183687 lt!2183699 lambda!275871))))

(declare-fun lt!2183674 () (InoxSet Context!8894))

(assert (=> b!5359209 (= (flatMap!790 lt!2183674 lambda!275871) (derivationStepZipperUp!435 lt!2183676 (h!67812 s!2326)))))

(declare-fun lt!2183683 () Unit!153770)

(assert (=> b!5359209 (= lt!2183683 (lemmaFlatMapOnSingletonSet!322 lt!2183674 lt!2183676 lambda!275871))))

(declare-fun lt!2183705 () (InoxSet Context!8894))

(assert (=> b!5359209 (= lt!2183705 (derivationStepZipperUp!435 lt!2183699 (h!67812 s!2326)))))

(declare-fun lt!2183693 () (InoxSet Context!8894))

(assert (=> b!5359209 (= lt!2183693 (derivationStepZipperUp!435 lt!2183676 (h!67812 s!2326)))))

(assert (=> b!5359209 (= lt!2183687 (store ((as const (Array Context!8894 Bool)) false) lt!2183699 true))))

(assert (=> b!5359209 (= lt!2183674 (store ((as const (Array Context!8894 Bool)) false) lt!2183676 true))))

(assert (=> b!5359209 (= lt!2183676 (Context!8895 (Cons!61365 (reg!15392 (regOne!30638 r!7292)) Nil!61365)))))

(declare-fun b!5359210 () Bool)

(assert (=> b!5359210 (= e!3326215 (matchZipper!1307 lt!2183703 (t!374709 s!2326)))))

(declare-fun b!5359211 () Bool)

(declare-fun e!3326208 () Bool)

(assert (=> b!5359211 (= e!3326208 (not e!3326213))))

(declare-fun res!2274199 () Bool)

(assert (=> b!5359211 (=> res!2274199 e!3326213)))

(assert (=> b!5359211 (= res!2274199 (not ((_ is Cons!61366) zl!343)))))

(declare-fun lt!2183682 () Bool)

(assert (=> b!5359211 (= lt!2183691 lt!2183682)))

(declare-fun matchRSpec!2166 (Regex!15063 List!61488) Bool)

(assert (=> b!5359211 (= lt!2183682 (matchRSpec!2166 r!7292 s!2326))))

(declare-fun matchR!7248 (Regex!15063 List!61488) Bool)

(assert (=> b!5359211 (= lt!2183691 (matchR!7248 r!7292 s!2326))))

(declare-fun lt!2183678 () Unit!153770)

(declare-fun mainMatchTheorem!2166 (Regex!15063 List!61488) Unit!153770)

(assert (=> b!5359211 (= lt!2183678 (mainMatchTheorem!2166 r!7292 s!2326))))

(declare-fun b!5359212 () Bool)

(declare-fun res!2274191 () Bool)

(assert (=> b!5359212 (=> res!2274191 e!3326206)))

(declare-fun isEmpty!33336 (List!61489) Bool)

(assert (=> b!5359212 (= res!2274191 (isEmpty!33336 (t!374710 (exprs!4947 (h!67814 zl!343)))))))

(assert (=> b!5359213 (= e!3326206 e!3326210)))

(declare-fun res!2274203 () Bool)

(assert (=> b!5359213 (=> res!2274203 e!3326210)))

(assert (=> b!5359213 (= res!2274203 (or (and ((_ is ElementMatch!15063) (regOne!30638 r!7292)) (= (c!933177 (regOne!30638 r!7292)) (h!67812 s!2326))) ((_ is Union!15063) (regOne!30638 r!7292))))))

(declare-fun lt!2183701 () Unit!153770)

(assert (=> b!5359213 (= lt!2183701 e!3326203)))

(declare-fun c!933176 () Bool)

(assert (=> b!5359213 (= c!933176 (nullable!5232 (h!67813 (exprs!4947 (h!67814 zl!343)))))))

(assert (=> b!5359213 (= (flatMap!790 z!1189 lambda!275871) (derivationStepZipperUp!435 (h!67814 zl!343) (h!67812 s!2326)))))

(declare-fun lt!2183672 () Unit!153770)

(assert (=> b!5359213 (= lt!2183672 (lemmaFlatMapOnSingletonSet!322 z!1189 (h!67814 zl!343) lambda!275871))))

(declare-fun lt!2183704 () Context!8894)

(assert (=> b!5359213 (= lt!2183703 (derivationStepZipperUp!435 lt!2183704 (h!67812 s!2326)))))

(assert (=> b!5359213 (= lt!2183688 (derivationStepZipperDown!511 (h!67813 (exprs!4947 (h!67814 zl!343))) lt!2183704 (h!67812 s!2326)))))

(assert (=> b!5359213 (= lt!2183704 (Context!8895 (t!374710 (exprs!4947 (h!67814 zl!343)))))))

(declare-fun lt!2183690 () (InoxSet Context!8894))

(assert (=> b!5359213 (= lt!2183690 (derivationStepZipperUp!435 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343))))) (h!67812 s!2326)))))

(declare-fun b!5359214 () Bool)

(declare-fun e!3326209 () Bool)

(declare-fun tp_is_empty!39379 () Bool)

(declare-fun tp!1488228 () Bool)

(assert (=> b!5359214 (= e!3326209 (and tp_is_empty!39379 tp!1488228))))

(declare-fun b!5359215 () Bool)

(declare-fun ++!13368 (List!61488 List!61488) List!61488)

(assert (=> b!5359215 (= e!3326204 (= (++!13368 Nil!61364 s!2326) s!2326))))

(declare-fun b!5359216 () Bool)

(declare-fun e!3326212 () Bool)

(assert (=> b!5359216 (= e!3326212 (or (not lt!2183691) lt!2183682))))

(declare-fun e!3326211 () Bool)

(assert (=> b!5359217 (= e!3326211 e!3326204)))

(declare-fun res!2274206 () Bool)

(assert (=> b!5359217 (=> res!2274206 e!3326204)))

(assert (=> b!5359217 (= res!2274206 (not (validRegex!6799 lt!2183684)))))

(assert (=> b!5359217 (= (Exists!2244 lambda!275872) (Exists!2244 lambda!275873))))

(declare-fun lt!2183689 () Unit!153770)

(assert (=> b!5359217 (= lt!2183689 (lemmaExistCutMatchRandMatchRSpecEquivalent!898 lt!2183684 (regTwo!30638 r!7292) s!2326))))

(assert (=> b!5359217 (= (isDefined!11877 (findConcatSeparation!1588 lt!2183684 (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326)) (Exists!2244 lambda!275872))))

(declare-fun lt!2183675 () Unit!153770)

(assert (=> b!5359217 (= lt!2183675 (lemmaFindConcatSeparationEquivalentToExists!1352 lt!2183684 (regTwo!30638 r!7292) s!2326))))

(declare-fun b!5359218 () Bool)

(declare-fun e!3326217 () Bool)

(declare-fun tp!1488222 () Bool)

(assert (=> b!5359218 (= e!3326217 tp!1488222)))

(declare-fun b!5359219 () Bool)

(declare-fun res!2274192 () Bool)

(assert (=> b!5359219 (=> res!2274192 e!3326205)))

(assert (=> b!5359219 (= res!2274192 (not (= (matchZipper!1307 lt!2183698 s!2326) (matchZipper!1307 lt!2183700 (t!374709 s!2326)))))))

(declare-fun b!5359197 () Bool)

(declare-fun e!3326218 () Bool)

(assert (=> b!5359197 (= e!3326218 e!3326214)))

(declare-fun res!2274198 () Bool)

(assert (=> b!5359197 (=> res!2274198 e!3326214)))

(declare-fun lt!2183679 () Regex!15063)

(assert (=> b!5359197 (= res!2274198 (not (= (unfocusZipper!805 (Cons!61366 lt!2183695 Nil!61366)) lt!2183679)))))

(declare-fun lt!2183686 () Regex!15063)

(assert (=> b!5359197 (= lt!2183679 (Concat!23908 (reg!15392 (regOne!30638 r!7292)) lt!2183686))))

(declare-fun res!2274189 () Bool)

(declare-fun e!3326221 () Bool)

(assert (=> start!564158 (=> (not res!2274189) (not e!3326221))))

(assert (=> start!564158 (= res!2274189 (validRegex!6799 r!7292))))

(assert (=> start!564158 e!3326221))

(assert (=> start!564158 e!3326222))

(declare-fun condSetEmpty!34681 () Bool)

(assert (=> start!564158 (= condSetEmpty!34681 (= z!1189 ((as const (Array Context!8894 Bool)) false)))))

(assert (=> start!564158 setRes!34681))

(declare-fun e!3326202 () Bool)

(assert (=> start!564158 e!3326202))

(assert (=> start!564158 e!3326209))

(declare-fun b!5359220 () Bool)

(assert (=> b!5359220 (= e!3326216 e!3326211)))

(declare-fun res!2274194 () Bool)

(assert (=> b!5359220 (=> res!2274194 e!3326211)))

(assert (=> b!5359220 (= res!2274194 (not lt!2183691))))

(assert (=> b!5359220 e!3326212))

(declare-fun res!2274188 () Bool)

(assert (=> b!5359220 (=> (not res!2274188) (not e!3326212))))

(assert (=> b!5359220 (= res!2274188 (= (matchR!7248 lt!2183679 s!2326) (matchRSpec!2166 lt!2183679 s!2326)))))

(declare-fun lt!2183680 () Unit!153770)

(assert (=> b!5359220 (= lt!2183680 (mainMatchTheorem!2166 lt!2183679 s!2326))))

(declare-fun b!5359221 () Bool)

(declare-fun tp!1488221 () Bool)

(assert (=> b!5359221 (= e!3326222 tp!1488221)))

(declare-fun setIsEmpty!34681 () Bool)

(assert (=> setIsEmpty!34681 setRes!34681))

(declare-fun b!5359222 () Bool)

(declare-fun res!2274196 () Bool)

(assert (=> b!5359222 (=> (not res!2274196) (not e!3326221))))

(declare-fun toList!8847 ((InoxSet Context!8894)) List!61490)

(assert (=> b!5359222 (= res!2274196 (= (toList!8847 z!1189) zl!343))))

(declare-fun b!5359223 () Bool)

(assert (=> b!5359223 (= e!3326221 e!3326208)))

(declare-fun res!2274184 () Bool)

(assert (=> b!5359223 (=> (not res!2274184) (not e!3326208))))

(assert (=> b!5359223 (= res!2274184 (= r!7292 lt!2183685))))

(assert (=> b!5359223 (= lt!2183685 (unfocusZipper!805 zl!343))))

(declare-fun b!5359224 () Bool)

(declare-fun Unit!153773 () Unit!153770)

(assert (=> b!5359224 (= e!3326203 Unit!153773)))

(declare-fun b!5359225 () Bool)

(assert (=> b!5359225 (= e!3326205 e!3326218)))

(declare-fun res!2274204 () Bool)

(assert (=> b!5359225 (=> res!2274204 e!3326218)))

(assert (=> b!5359225 (= res!2274204 (not (= r!7292 lt!2183686)))))

(assert (=> b!5359225 (= lt!2183686 (Concat!23908 lt!2183684 (regTwo!30638 r!7292)))))

(declare-fun b!5359226 () Bool)

(declare-fun res!2274182 () Bool)

(assert (=> b!5359226 (=> res!2274182 e!3326210)))

(assert (=> b!5359226 (= res!2274182 e!3326207)))

(declare-fun res!2274197 () Bool)

(assert (=> b!5359226 (=> (not res!2274197) (not e!3326207))))

(assert (=> b!5359226 (= res!2274197 ((_ is Concat!23908) (regOne!30638 r!7292)))))

(declare-fun b!5359227 () Bool)

(declare-fun tp!1488225 () Bool)

(declare-fun tp!1488226 () Bool)

(assert (=> b!5359227 (= e!3326222 (and tp!1488225 tp!1488226))))

(declare-fun b!5359228 () Bool)

(declare-fun res!2274205 () Bool)

(assert (=> b!5359228 (=> res!2274205 e!3326216)))

(assert (=> b!5359228 (= res!2274205 (not (= (unfocusZipper!805 (Cons!61366 lt!2183699 Nil!61366)) lt!2183686)))))

(declare-fun b!5359229 () Bool)

(declare-fun res!2274201 () Bool)

(assert (=> b!5359229 (=> res!2274201 e!3326213)))

(declare-fun generalisedConcat!732 (List!61489) Regex!15063)

(assert (=> b!5359229 (= res!2274201 (not (= r!7292 (generalisedConcat!732 (exprs!4947 (h!67814 zl!343))))))))

(declare-fun b!5359230 () Bool)

(declare-fun tp!1488229 () Bool)

(assert (=> b!5359230 (= e!3326202 (and (inv!80904 (h!67814 zl!343)) e!3326217 tp!1488229))))

(declare-fun b!5359231 () Bool)

(assert (=> b!5359231 (= e!3326222 tp_is_empty!39379)))

(assert (= (and start!564158 res!2274189) b!5359222))

(assert (= (and b!5359222 res!2274196) b!5359223))

(assert (= (and b!5359223 res!2274184) b!5359211))

(assert (= (and b!5359211 (not res!2274199)) b!5359208))

(assert (= (and b!5359208 (not res!2274202)) b!5359229))

(assert (= (and b!5359229 (not res!2274201)) b!5359200))

(assert (= (and b!5359200 (not res!2274187)) b!5359205))

(assert (= (and b!5359205 (not res!2274195)) b!5359202))

(assert (= (and b!5359202 (not res!2274185)) b!5359196))

(assert (= (and b!5359196 (not res!2274186)) b!5359212))

(assert (= (and b!5359212 (not res!2274191)) b!5359213))

(assert (= (and b!5359213 c!933176) b!5359206))

(assert (= (and b!5359213 (not c!933176)) b!5359224))

(assert (= (and b!5359206 (not res!2274208)) b!5359210))

(assert (= (and b!5359213 (not res!2274203)) b!5359226))

(assert (= (and b!5359226 res!2274197) b!5359194))

(assert (= (and b!5359226 (not res!2274182)) b!5359201))

(assert (= (and b!5359201 (not res!2274209)) b!5359199))

(assert (= (and b!5359199 (not res!2274190)) b!5359204))

(assert (= (and b!5359204 (not res!2274183)) b!5359219))

(assert (= (and b!5359219 (not res!2274192)) b!5359207))

(assert (= (and b!5359207 (not res!2274200)) b!5359225))

(assert (= (and b!5359225 (not res!2274204)) b!5359197))

(assert (= (and b!5359197 (not res!2274198)) b!5359209))

(assert (= (and b!5359209 (not res!2274207)) b!5359228))

(assert (= (and b!5359228 (not res!2274205)) b!5359220))

(assert (= (and b!5359220 res!2274188) b!5359216))

(assert (= (and b!5359220 (not res!2274194)) b!5359217))

(assert (= (and b!5359217 (not res!2274206)) b!5359198))

(assert (= (and b!5359198 (not res!2274193)) b!5359215))

(assert (= (and start!564158 ((_ is ElementMatch!15063) r!7292)) b!5359231))

(assert (= (and start!564158 ((_ is Concat!23908) r!7292)) b!5359203))

(assert (= (and start!564158 ((_ is Star!15063) r!7292)) b!5359221))

(assert (= (and start!564158 ((_ is Union!15063) r!7292)) b!5359227))

(assert (= (and start!564158 condSetEmpty!34681) setIsEmpty!34681))

(assert (= (and start!564158 (not condSetEmpty!34681)) setNonEmpty!34681))

(assert (= setNonEmpty!34681 b!5359195))

(assert (= b!5359230 b!5359218))

(assert (= (and start!564158 ((_ is Cons!61366) zl!343)) b!5359230))

(assert (= (and start!564158 ((_ is Cons!61364) s!2326)) b!5359214))

(declare-fun m!6388308 () Bool)

(assert (=> b!5359199 m!6388308))

(declare-fun m!6388310 () Bool)

(assert (=> b!5359230 m!6388310))

(declare-fun m!6388312 () Bool)

(assert (=> b!5359212 m!6388312))

(declare-fun m!6388314 () Bool)

(assert (=> b!5359219 m!6388314))

(declare-fun m!6388316 () Bool)

(assert (=> b!5359219 m!6388316))

(declare-fun m!6388318 () Bool)

(assert (=> b!5359229 m!6388318))

(declare-fun m!6388320 () Bool)

(assert (=> b!5359209 m!6388320))

(declare-fun m!6388322 () Bool)

(assert (=> b!5359209 m!6388322))

(declare-fun m!6388324 () Bool)

(assert (=> b!5359209 m!6388324))

(declare-fun m!6388326 () Bool)

(assert (=> b!5359209 m!6388326))

(declare-fun m!6388328 () Bool)

(assert (=> b!5359209 m!6388328))

(declare-fun m!6388330 () Bool)

(assert (=> b!5359209 m!6388330))

(declare-fun m!6388332 () Bool)

(assert (=> b!5359209 m!6388332))

(declare-fun m!6388334 () Bool)

(assert (=> b!5359209 m!6388334))

(declare-fun m!6388336 () Bool)

(assert (=> b!5359209 m!6388336))

(declare-fun m!6388338 () Bool)

(assert (=> b!5359205 m!6388338))

(assert (=> b!5359205 m!6388338))

(declare-fun m!6388340 () Bool)

(assert (=> b!5359205 m!6388340))

(declare-fun m!6388342 () Bool)

(assert (=> b!5359222 m!6388342))

(declare-fun m!6388344 () Bool)

(assert (=> b!5359228 m!6388344))

(declare-fun m!6388346 () Bool)

(assert (=> b!5359208 m!6388346))

(declare-fun m!6388348 () Bool)

(assert (=> b!5359204 m!6388348))

(declare-fun m!6388350 () Bool)

(assert (=> b!5359204 m!6388350))

(declare-fun m!6388352 () Bool)

(assert (=> b!5359204 m!6388352))

(declare-fun m!6388354 () Bool)

(assert (=> b!5359204 m!6388354))

(declare-fun m!6388356 () Bool)

(assert (=> b!5359204 m!6388356))

(declare-fun m!6388358 () Bool)

(assert (=> b!5359197 m!6388358))

(declare-fun m!6388360 () Bool)

(assert (=> b!5359215 m!6388360))

(declare-fun m!6388362 () Bool)

(assert (=> b!5359210 m!6388362))

(declare-fun m!6388364 () Bool)

(assert (=> b!5359198 m!6388364))

(declare-fun m!6388366 () Bool)

(assert (=> b!5359196 m!6388366))

(declare-fun m!6388368 () Bool)

(assert (=> b!5359196 m!6388368))

(declare-fun m!6388370 () Bool)

(assert (=> b!5359196 m!6388370))

(declare-fun m!6388372 () Bool)

(assert (=> b!5359196 m!6388372))

(assert (=> b!5359196 m!6388366))

(declare-fun m!6388374 () Bool)

(assert (=> b!5359196 m!6388374))

(assert (=> b!5359196 m!6388368))

(declare-fun m!6388376 () Bool)

(assert (=> b!5359196 m!6388376))

(declare-fun m!6388378 () Bool)

(assert (=> setNonEmpty!34681 m!6388378))

(declare-fun m!6388380 () Bool)

(assert (=> b!5359206 m!6388380))

(declare-fun m!6388382 () Bool)

(assert (=> b!5359206 m!6388382))

(declare-fun m!6388384 () Bool)

(assert (=> b!5359206 m!6388384))

(declare-fun m!6388386 () Bool)

(assert (=> b!5359213 m!6388386))

(declare-fun m!6388388 () Bool)

(assert (=> b!5359213 m!6388388))

(declare-fun m!6388390 () Bool)

(assert (=> b!5359213 m!6388390))

(declare-fun m!6388392 () Bool)

(assert (=> b!5359213 m!6388392))

(declare-fun m!6388394 () Bool)

(assert (=> b!5359213 m!6388394))

(declare-fun m!6388396 () Bool)

(assert (=> b!5359213 m!6388396))

(declare-fun m!6388398 () Bool)

(assert (=> b!5359213 m!6388398))

(declare-fun m!6388400 () Bool)

(assert (=> b!5359223 m!6388400))

(declare-fun m!6388402 () Bool)

(assert (=> b!5359211 m!6388402))

(declare-fun m!6388404 () Bool)

(assert (=> b!5359211 m!6388404))

(declare-fun m!6388406 () Bool)

(assert (=> b!5359211 m!6388406))

(declare-fun m!6388408 () Bool)

(assert (=> start!564158 m!6388408))

(declare-fun m!6388410 () Bool)

(assert (=> b!5359194 m!6388410))

(declare-fun m!6388412 () Bool)

(assert (=> b!5359217 m!6388412))

(declare-fun m!6388414 () Bool)

(assert (=> b!5359217 m!6388414))

(declare-fun m!6388416 () Bool)

(assert (=> b!5359217 m!6388416))

(declare-fun m!6388418 () Bool)

(assert (=> b!5359217 m!6388418))

(assert (=> b!5359217 m!6388414))

(declare-fun m!6388420 () Bool)

(assert (=> b!5359217 m!6388420))

(declare-fun m!6388422 () Bool)

(assert (=> b!5359217 m!6388422))

(assert (=> b!5359217 m!6388420))

(declare-fun m!6388424 () Bool)

(assert (=> b!5359217 m!6388424))

(declare-fun m!6388426 () Bool)

(assert (=> b!5359220 m!6388426))

(declare-fun m!6388428 () Bool)

(assert (=> b!5359220 m!6388428))

(declare-fun m!6388430 () Bool)

(assert (=> b!5359220 m!6388430))

(check-sat (not b!5359204) (not b!5359205) (not b!5359221) (not b!5359220) (not b!5359227) (not b!5359199) (not b!5359228) (not b!5359194) (not b!5359209) (not b!5359214) (not start!564158) (not b!5359197) (not b!5359219) (not b!5359195) (not b!5359217) (not b!5359203) (not b!5359215) tp_is_empty!39379 (not b!5359223) (not b!5359212) (not b!5359196) (not b!5359229) (not b!5359218) (not b!5359198) (not b!5359230) (not b!5359208) (not b!5359213) (not setNonEmpty!34681) (not b!5359222) (not b!5359210) (not b!5359211) (not b!5359206))
(check-sat)
(get-model)

(declare-fun b!5359248 () Bool)

(declare-fun e!3326230 () Bool)

(assert (=> b!5359248 (= e!3326230 (nullable!5232 (h!67813 (exprs!4947 lt!2183699))))))

(declare-fun d!1717347 () Bool)

(declare-fun c!933182 () Bool)

(assert (=> d!1717347 (= c!933182 e!3326230)))

(declare-fun res!2274212 () Bool)

(assert (=> d!1717347 (=> (not res!2274212) (not e!3326230))))

(assert (=> d!1717347 (= res!2274212 ((_ is Cons!61365) (exprs!4947 lt!2183699)))))

(declare-fun e!3326231 () (InoxSet Context!8894))

(assert (=> d!1717347 (= (derivationStepZipperUp!435 lt!2183699 (h!67812 s!2326)) e!3326231)))

(declare-fun b!5359249 () Bool)

(declare-fun e!3326229 () (InoxSet Context!8894))

(declare-fun call!383323 () (InoxSet Context!8894))

(assert (=> b!5359249 (= e!3326229 call!383323)))

(declare-fun b!5359250 () Bool)

(assert (=> b!5359250 (= e!3326231 e!3326229)))

(declare-fun c!933183 () Bool)

(assert (=> b!5359250 (= c!933183 ((_ is Cons!61365) (exprs!4947 lt!2183699)))))

(declare-fun b!5359251 () Bool)

(assert (=> b!5359251 (= e!3326229 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383318 () Bool)

(assert (=> bm!383318 (= call!383323 (derivationStepZipperDown!511 (h!67813 (exprs!4947 lt!2183699)) (Context!8895 (t!374710 (exprs!4947 lt!2183699))) (h!67812 s!2326)))))

(declare-fun b!5359252 () Bool)

(assert (=> b!5359252 (= e!3326231 ((_ map or) call!383323 (derivationStepZipperUp!435 (Context!8895 (t!374710 (exprs!4947 lt!2183699))) (h!67812 s!2326))))))

(assert (= (and d!1717347 res!2274212) b!5359248))

(assert (= (and d!1717347 c!933182) b!5359252))

(assert (= (and d!1717347 (not c!933182)) b!5359250))

(assert (= (and b!5359250 c!933183) b!5359249))

(assert (= (and b!5359250 (not c!933183)) b!5359251))

(assert (= (or b!5359252 b!5359249) bm!383318))

(declare-fun m!6388432 () Bool)

(assert (=> b!5359248 m!6388432))

(declare-fun m!6388434 () Bool)

(assert (=> bm!383318 m!6388434))

(declare-fun m!6388436 () Bool)

(assert (=> b!5359252 m!6388436))

(assert (=> b!5359209 d!1717347))

(declare-fun b!5359253 () Bool)

(declare-fun e!3326233 () Bool)

(assert (=> b!5359253 (= e!3326233 (nullable!5232 (h!67813 (exprs!4947 lt!2183676))))))

(declare-fun d!1717349 () Bool)

(declare-fun c!933184 () Bool)

(assert (=> d!1717349 (= c!933184 e!3326233)))

(declare-fun res!2274213 () Bool)

(assert (=> d!1717349 (=> (not res!2274213) (not e!3326233))))

(assert (=> d!1717349 (= res!2274213 ((_ is Cons!61365) (exprs!4947 lt!2183676)))))

(declare-fun e!3326234 () (InoxSet Context!8894))

(assert (=> d!1717349 (= (derivationStepZipperUp!435 lt!2183676 (h!67812 s!2326)) e!3326234)))

(declare-fun b!5359254 () Bool)

(declare-fun e!3326232 () (InoxSet Context!8894))

(declare-fun call!383324 () (InoxSet Context!8894))

(assert (=> b!5359254 (= e!3326232 call!383324)))

(declare-fun b!5359255 () Bool)

(assert (=> b!5359255 (= e!3326234 e!3326232)))

(declare-fun c!933185 () Bool)

(assert (=> b!5359255 (= c!933185 ((_ is Cons!61365) (exprs!4947 lt!2183676)))))

(declare-fun b!5359256 () Bool)

(assert (=> b!5359256 (= e!3326232 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383319 () Bool)

(assert (=> bm!383319 (= call!383324 (derivationStepZipperDown!511 (h!67813 (exprs!4947 lt!2183676)) (Context!8895 (t!374710 (exprs!4947 lt!2183676))) (h!67812 s!2326)))))

(declare-fun b!5359257 () Bool)

(assert (=> b!5359257 (= e!3326234 ((_ map or) call!383324 (derivationStepZipperUp!435 (Context!8895 (t!374710 (exprs!4947 lt!2183676))) (h!67812 s!2326))))))

(assert (= (and d!1717349 res!2274213) b!5359253))

(assert (= (and d!1717349 c!933184) b!5359257))

(assert (= (and d!1717349 (not c!933184)) b!5359255))

(assert (= (and b!5359255 c!933185) b!5359254))

(assert (= (and b!5359255 (not c!933185)) b!5359256))

(assert (= (or b!5359257 b!5359254) bm!383319))

(declare-fun m!6388438 () Bool)

(assert (=> b!5359253 m!6388438))

(declare-fun m!6388440 () Bool)

(assert (=> bm!383319 m!6388440))

(declare-fun m!6388442 () Bool)

(assert (=> b!5359257 m!6388442))

(assert (=> b!5359209 d!1717349))

(declare-fun d!1717351 () Bool)

(declare-fun choose!40222 ((InoxSet Context!8894) Int) (InoxSet Context!8894))

(assert (=> d!1717351 (= (flatMap!790 lt!2183674 lambda!275871) (choose!40222 lt!2183674 lambda!275871))))

(declare-fun bs!1241551 () Bool)

(assert (= bs!1241551 d!1717351))

(declare-fun m!6388444 () Bool)

(assert (=> bs!1241551 m!6388444))

(assert (=> b!5359209 d!1717351))

(declare-fun d!1717353 () Bool)

(declare-fun dynLambda!24240 (Int Context!8894) (InoxSet Context!8894))

(assert (=> d!1717353 (= (flatMap!790 lt!2183674 lambda!275871) (dynLambda!24240 lambda!275871 lt!2183676))))

(declare-fun lt!2183709 () Unit!153770)

(declare-fun choose!40223 ((InoxSet Context!8894) Context!8894 Int) Unit!153770)

(assert (=> d!1717353 (= lt!2183709 (choose!40223 lt!2183674 lt!2183676 lambda!275871))))

(assert (=> d!1717353 (= lt!2183674 (store ((as const (Array Context!8894 Bool)) false) lt!2183676 true))))

(assert (=> d!1717353 (= (lemmaFlatMapOnSingletonSet!322 lt!2183674 lt!2183676 lambda!275871) lt!2183709)))

(declare-fun b_lambda!205517 () Bool)

(assert (=> (not b_lambda!205517) (not d!1717353)))

(declare-fun bs!1241552 () Bool)

(assert (= bs!1241552 d!1717353))

(assert (=> bs!1241552 m!6388334))

(declare-fun m!6388446 () Bool)

(assert (=> bs!1241552 m!6388446))

(declare-fun m!6388448 () Bool)

(assert (=> bs!1241552 m!6388448))

(assert (=> bs!1241552 m!6388336))

(assert (=> b!5359209 d!1717353))

(declare-fun d!1717357 () Bool)

(declare-fun lt!2183712 () Regex!15063)

(assert (=> d!1717357 (validRegex!6799 lt!2183712)))

(assert (=> d!1717357 (= lt!2183712 (generalisedUnion!992 (unfocusZipperList!505 (Cons!61366 lt!2183676 Nil!61366))))))

(assert (=> d!1717357 (= (unfocusZipper!805 (Cons!61366 lt!2183676 Nil!61366)) lt!2183712)))

(declare-fun bs!1241553 () Bool)

(assert (= bs!1241553 d!1717357))

(declare-fun m!6388450 () Bool)

(assert (=> bs!1241553 m!6388450))

(declare-fun m!6388452 () Bool)

(assert (=> bs!1241553 m!6388452))

(assert (=> bs!1241553 m!6388452))

(declare-fun m!6388454 () Bool)

(assert (=> bs!1241553 m!6388454))

(assert (=> b!5359209 d!1717357))

(declare-fun d!1717359 () Bool)

(assert (=> d!1717359 (= (flatMap!790 lt!2183687 lambda!275871) (choose!40222 lt!2183687 lambda!275871))))

(declare-fun bs!1241554 () Bool)

(assert (= bs!1241554 d!1717359))

(declare-fun m!6388456 () Bool)

(assert (=> bs!1241554 m!6388456))

(assert (=> b!5359209 d!1717359))

(declare-fun d!1717361 () Bool)

(assert (=> d!1717361 (= (flatMap!790 lt!2183687 lambda!275871) (dynLambda!24240 lambda!275871 lt!2183699))))

(declare-fun lt!2183713 () Unit!153770)

(assert (=> d!1717361 (= lt!2183713 (choose!40223 lt!2183687 lt!2183699 lambda!275871))))

(assert (=> d!1717361 (= lt!2183687 (store ((as const (Array Context!8894 Bool)) false) lt!2183699 true))))

(assert (=> d!1717361 (= (lemmaFlatMapOnSingletonSet!322 lt!2183687 lt!2183699 lambda!275871) lt!2183713)))

(declare-fun b_lambda!205519 () Bool)

(assert (=> (not b_lambda!205519) (not d!1717361)))

(declare-fun bs!1241555 () Bool)

(assert (= bs!1241555 d!1717361))

(assert (=> bs!1241555 m!6388324))

(declare-fun m!6388458 () Bool)

(assert (=> bs!1241555 m!6388458))

(declare-fun m!6388460 () Bool)

(assert (=> bs!1241555 m!6388460))

(assert (=> bs!1241555 m!6388326))

(assert (=> b!5359209 d!1717361))

(declare-fun b!5359363 () Bool)

(declare-fun e!3326297 () Bool)

(assert (=> b!5359363 (= e!3326297 (isEmpty!33336 (t!374710 (exprs!4947 (h!67814 zl!343)))))))

(declare-fun b!5359364 () Bool)

(declare-fun e!3326293 () Bool)

(declare-fun lt!2183719 () Regex!15063)

(declare-fun isEmptyExpr!922 (Regex!15063) Bool)

(assert (=> b!5359364 (= e!3326293 (isEmptyExpr!922 lt!2183719))))

(declare-fun b!5359365 () Bool)

(declare-fun e!3326298 () Bool)

(assert (=> b!5359365 (= e!3326293 e!3326298)))

(declare-fun c!933215 () Bool)

(declare-fun tail!10591 (List!61489) List!61489)

(assert (=> b!5359365 (= c!933215 (isEmpty!33336 (tail!10591 (exprs!4947 (h!67814 zl!343)))))))

(declare-fun b!5359366 () Bool)

(declare-fun isConcat!445 (Regex!15063) Bool)

(assert (=> b!5359366 (= e!3326298 (isConcat!445 lt!2183719))))

(declare-fun b!5359367 () Bool)

(declare-fun e!3326296 () Bool)

(assert (=> b!5359367 (= e!3326296 e!3326293)))

(declare-fun c!933217 () Bool)

(assert (=> b!5359367 (= c!933217 (isEmpty!33336 (exprs!4947 (h!67814 zl!343))))))

(declare-fun b!5359369 () Bool)

(declare-fun e!3326295 () Regex!15063)

(assert (=> b!5359369 (= e!3326295 (Concat!23908 (h!67813 (exprs!4947 (h!67814 zl!343))) (generalisedConcat!732 (t!374710 (exprs!4947 (h!67814 zl!343))))))))

(declare-fun b!5359370 () Bool)

(assert (=> b!5359370 (= e!3326295 EmptyExpr!15063)))

(declare-fun b!5359371 () Bool)

(declare-fun e!3326294 () Regex!15063)

(assert (=> b!5359371 (= e!3326294 (h!67813 (exprs!4947 (h!67814 zl!343))))))

(declare-fun b!5359372 () Bool)

(assert (=> b!5359372 (= e!3326294 e!3326295)))

(declare-fun c!933216 () Bool)

(assert (=> b!5359372 (= c!933216 ((_ is Cons!61365) (exprs!4947 (h!67814 zl!343))))))

(declare-fun b!5359368 () Bool)

(declare-fun head!11494 (List!61489) Regex!15063)

(assert (=> b!5359368 (= e!3326298 (= lt!2183719 (head!11494 (exprs!4947 (h!67814 zl!343)))))))

(declare-fun d!1717363 () Bool)

(assert (=> d!1717363 e!3326296))

(declare-fun res!2274261 () Bool)

(assert (=> d!1717363 (=> (not res!2274261) (not e!3326296))))

(assert (=> d!1717363 (= res!2274261 (validRegex!6799 lt!2183719))))

(assert (=> d!1717363 (= lt!2183719 e!3326294)))

(declare-fun c!933218 () Bool)

(assert (=> d!1717363 (= c!933218 e!3326297)))

(declare-fun res!2274262 () Bool)

(assert (=> d!1717363 (=> (not res!2274262) (not e!3326297))))

(assert (=> d!1717363 (= res!2274262 ((_ is Cons!61365) (exprs!4947 (h!67814 zl!343))))))

(declare-fun lambda!275882 () Int)

(declare-fun forall!14475 (List!61489 Int) Bool)

(assert (=> d!1717363 (forall!14475 (exprs!4947 (h!67814 zl!343)) lambda!275882)))

(assert (=> d!1717363 (= (generalisedConcat!732 (exprs!4947 (h!67814 zl!343))) lt!2183719)))

(assert (= (and d!1717363 res!2274262) b!5359363))

(assert (= (and d!1717363 c!933218) b!5359371))

(assert (= (and d!1717363 (not c!933218)) b!5359372))

(assert (= (and b!5359372 c!933216) b!5359369))

(assert (= (and b!5359372 (not c!933216)) b!5359370))

(assert (= (and d!1717363 res!2274261) b!5359367))

(assert (= (and b!5359367 c!933217) b!5359364))

(assert (= (and b!5359367 (not c!933217)) b!5359365))

(assert (= (and b!5359365 c!933215) b!5359368))

(assert (= (and b!5359365 (not c!933215)) b!5359366))

(declare-fun m!6388482 () Bool)

(assert (=> d!1717363 m!6388482))

(declare-fun m!6388484 () Bool)

(assert (=> d!1717363 m!6388484))

(declare-fun m!6388486 () Bool)

(assert (=> b!5359366 m!6388486))

(declare-fun m!6388488 () Bool)

(assert (=> b!5359369 m!6388488))

(assert (=> b!5359363 m!6388312))

(declare-fun m!6388490 () Bool)

(assert (=> b!5359365 m!6388490))

(assert (=> b!5359365 m!6388490))

(declare-fun m!6388492 () Bool)

(assert (=> b!5359365 m!6388492))

(declare-fun m!6388494 () Bool)

(assert (=> b!5359367 m!6388494))

(declare-fun m!6388496 () Bool)

(assert (=> b!5359368 m!6388496))

(declare-fun m!6388498 () Bool)

(assert (=> b!5359364 m!6388498))

(assert (=> b!5359229 d!1717363))

(declare-fun d!1717369 () Bool)

(assert (=> d!1717369 (= (isEmpty!33335 (t!374711 zl!343)) ((_ is Nil!61366) (t!374711 zl!343)))))

(assert (=> b!5359208 d!1717369))

(declare-fun d!1717373 () Bool)

(declare-fun lt!2183723 () Regex!15063)

(assert (=> d!1717373 (validRegex!6799 lt!2183723)))

(assert (=> d!1717373 (= lt!2183723 (generalisedUnion!992 (unfocusZipperList!505 (Cons!61366 lt!2183699 Nil!61366))))))

(assert (=> d!1717373 (= (unfocusZipper!805 (Cons!61366 lt!2183699 Nil!61366)) lt!2183723)))

(declare-fun bs!1241562 () Bool)

(assert (= bs!1241562 d!1717373))

(declare-fun m!6388502 () Bool)

(assert (=> bs!1241562 m!6388502))

(declare-fun m!6388504 () Bool)

(assert (=> bs!1241562 m!6388504))

(assert (=> bs!1241562 m!6388504))

(declare-fun m!6388506 () Bool)

(assert (=> bs!1241562 m!6388506))

(assert (=> b!5359228 d!1717373))

(declare-fun bs!1241576 () Bool)

(declare-fun b!5359450 () Bool)

(assert (= bs!1241576 (and b!5359450 b!5359196)))

(declare-fun lambda!275896 () Int)

(assert (=> bs!1241576 (not (= lambda!275896 lambda!275869))))

(assert (=> bs!1241576 (not (= lambda!275896 lambda!275870))))

(declare-fun bs!1241577 () Bool)

(assert (= bs!1241577 (and b!5359450 b!5359217)))

(assert (=> bs!1241577 (not (= lambda!275896 lambda!275872))))

(assert (=> bs!1241577 (not (= lambda!275896 lambda!275873))))

(assert (=> b!5359450 true))

(assert (=> b!5359450 true))

(declare-fun bs!1241578 () Bool)

(declare-fun b!5359444 () Bool)

(assert (= bs!1241578 (and b!5359444 b!5359196)))

(declare-fun lambda!275897 () Int)

(assert (=> bs!1241578 (not (= lambda!275897 lambda!275869))))

(declare-fun bs!1241579 () Bool)

(assert (= bs!1241579 (and b!5359444 b!5359450)))

(assert (=> bs!1241579 (not (= lambda!275897 lambda!275896))))

(assert (=> bs!1241578 (= lambda!275897 lambda!275870)))

(declare-fun bs!1241580 () Bool)

(assert (= bs!1241580 (and b!5359444 b!5359217)))

(assert (=> bs!1241580 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275897 lambda!275873))))

(assert (=> bs!1241580 (not (= lambda!275897 lambda!275872))))

(assert (=> b!5359444 true))

(assert (=> b!5359444 true))

(declare-fun e!3326350 () Bool)

(declare-fun call!383347 () Bool)

(assert (=> b!5359444 (= e!3326350 call!383347)))

(declare-fun b!5359445 () Bool)

(declare-fun e!3326345 () Bool)

(declare-fun call!383348 () Bool)

(assert (=> b!5359445 (= e!3326345 call!383348)))

(declare-fun b!5359447 () Bool)

(declare-fun c!933236 () Bool)

(assert (=> b!5359447 (= c!933236 ((_ is ElementMatch!15063) r!7292))))

(declare-fun e!3326347 () Bool)

(declare-fun e!3326348 () Bool)

(assert (=> b!5359447 (= e!3326347 e!3326348)))

(declare-fun bm!383342 () Bool)

(declare-fun isEmpty!33339 (List!61488) Bool)

(assert (=> bm!383342 (= call!383348 (isEmpty!33339 s!2326))))

(declare-fun b!5359448 () Bool)

(assert (=> b!5359448 (= e!3326348 (= s!2326 (Cons!61364 (c!933177 r!7292) Nil!61364)))))

(declare-fun b!5359449 () Bool)

(declare-fun res!2274308 () Bool)

(declare-fun e!3326346 () Bool)

(assert (=> b!5359449 (=> res!2274308 e!3326346)))

(assert (=> b!5359449 (= res!2274308 call!383348)))

(assert (=> b!5359449 (= e!3326350 e!3326346)))

(assert (=> b!5359450 (= e!3326346 call!383347)))

(declare-fun b!5359451 () Bool)

(declare-fun e!3326344 () Bool)

(assert (=> b!5359451 (= e!3326344 e!3326350)))

(declare-fun c!933234 () Bool)

(assert (=> b!5359451 (= c!933234 ((_ is Star!15063) r!7292))))

(declare-fun b!5359452 () Bool)

(declare-fun c!933235 () Bool)

(assert (=> b!5359452 (= c!933235 ((_ is Union!15063) r!7292))))

(assert (=> b!5359452 (= e!3326348 e!3326344)))

(declare-fun b!5359453 () Bool)

(declare-fun e!3326349 () Bool)

(assert (=> b!5359453 (= e!3326349 (matchRSpec!2166 (regTwo!30639 r!7292) s!2326))))

(declare-fun b!5359446 () Bool)

(assert (=> b!5359446 (= e!3326344 e!3326349)))

(declare-fun res!2274306 () Bool)

(assert (=> b!5359446 (= res!2274306 (matchRSpec!2166 (regOne!30639 r!7292) s!2326))))

(assert (=> b!5359446 (=> res!2274306 e!3326349)))

(declare-fun d!1717375 () Bool)

(declare-fun c!933233 () Bool)

(assert (=> d!1717375 (= c!933233 ((_ is EmptyExpr!15063) r!7292))))

(assert (=> d!1717375 (= (matchRSpec!2166 r!7292 s!2326) e!3326345)))

(declare-fun b!5359454 () Bool)

(assert (=> b!5359454 (= e!3326345 e!3326347)))

(declare-fun res!2274307 () Bool)

(assert (=> b!5359454 (= res!2274307 (not ((_ is EmptyLang!15063) r!7292)))))

(assert (=> b!5359454 (=> (not res!2274307) (not e!3326347))))

(declare-fun bm!383343 () Bool)

(assert (=> bm!383343 (= call!383347 (Exists!2244 (ite c!933234 lambda!275896 lambda!275897)))))

(assert (= (and d!1717375 c!933233) b!5359445))

(assert (= (and d!1717375 (not c!933233)) b!5359454))

(assert (= (and b!5359454 res!2274307) b!5359447))

(assert (= (and b!5359447 c!933236) b!5359448))

(assert (= (and b!5359447 (not c!933236)) b!5359452))

(assert (= (and b!5359452 c!933235) b!5359446))

(assert (= (and b!5359452 (not c!933235)) b!5359451))

(assert (= (and b!5359446 (not res!2274306)) b!5359453))

(assert (= (and b!5359451 c!933234) b!5359449))

(assert (= (and b!5359451 (not c!933234)) b!5359444))

(assert (= (and b!5359449 (not res!2274308)) b!5359450))

(assert (= (or b!5359450 b!5359444) bm!383343))

(assert (= (or b!5359445 b!5359449) bm!383342))

(declare-fun m!6388528 () Bool)

(assert (=> bm!383342 m!6388528))

(declare-fun m!6388530 () Bool)

(assert (=> b!5359453 m!6388530))

(declare-fun m!6388532 () Bool)

(assert (=> b!5359446 m!6388532))

(declare-fun m!6388534 () Bool)

(assert (=> bm!383343 m!6388534))

(assert (=> b!5359211 d!1717375))

(declare-fun b!5359555 () Bool)

(declare-fun e!3326414 () Bool)

(declare-fun e!3326411 () Bool)

(assert (=> b!5359555 (= e!3326414 e!3326411)))

(declare-fun res!2274358 () Bool)

(assert (=> b!5359555 (=> (not res!2274358) (not e!3326411))))

(declare-fun lt!2183747 () Bool)

(assert (=> b!5359555 (= res!2274358 (not lt!2183747))))

(declare-fun b!5359556 () Bool)

(declare-fun e!3326408 () Bool)

(declare-fun head!11495 (List!61488) C!30396)

(assert (=> b!5359556 (= e!3326408 (not (= (head!11495 s!2326) (c!933177 r!7292))))))

(declare-fun b!5359557 () Bool)

(declare-fun e!3326412 () Bool)

(declare-fun e!3326409 () Bool)

(assert (=> b!5359557 (= e!3326412 e!3326409)))

(declare-fun c!933268 () Bool)

(assert (=> b!5359557 (= c!933268 ((_ is EmptyLang!15063) r!7292))))

(declare-fun d!1717387 () Bool)

(assert (=> d!1717387 e!3326412))

(declare-fun c!933266 () Bool)

(assert (=> d!1717387 (= c!933266 ((_ is EmptyExpr!15063) r!7292))))

(declare-fun e!3326410 () Bool)

(assert (=> d!1717387 (= lt!2183747 e!3326410)))

(declare-fun c!933267 () Bool)

(assert (=> d!1717387 (= c!933267 (isEmpty!33339 s!2326))))

(assert (=> d!1717387 (validRegex!6799 r!7292)))

(assert (=> d!1717387 (= (matchR!7248 r!7292 s!2326) lt!2183747)))

(declare-fun b!5359558 () Bool)

(assert (=> b!5359558 (= e!3326409 (not lt!2183747))))

(declare-fun b!5359559 () Bool)

(declare-fun res!2274353 () Bool)

(declare-fun e!3326413 () Bool)

(assert (=> b!5359559 (=> (not res!2274353) (not e!3326413))))

(declare-fun tail!10592 (List!61488) List!61488)

(assert (=> b!5359559 (= res!2274353 (isEmpty!33339 (tail!10592 s!2326)))))

(declare-fun b!5359560 () Bool)

(declare-fun call!383354 () Bool)

(assert (=> b!5359560 (= e!3326412 (= lt!2183747 call!383354))))

(declare-fun b!5359561 () Bool)

(assert (=> b!5359561 (= e!3326413 (= (head!11495 s!2326) (c!933177 r!7292)))))

(declare-fun b!5359562 () Bool)

(declare-fun derivativeStep!4209 (Regex!15063 C!30396) Regex!15063)

(assert (=> b!5359562 (= e!3326410 (matchR!7248 (derivativeStep!4209 r!7292 (head!11495 s!2326)) (tail!10592 s!2326)))))

(declare-fun bm!383349 () Bool)

(assert (=> bm!383349 (= call!383354 (isEmpty!33339 s!2326))))

(declare-fun b!5359563 () Bool)

(assert (=> b!5359563 (= e!3326410 (nullable!5232 r!7292))))

(declare-fun b!5359564 () Bool)

(declare-fun res!2274354 () Bool)

(assert (=> b!5359564 (=> res!2274354 e!3326408)))

(assert (=> b!5359564 (= res!2274354 (not (isEmpty!33339 (tail!10592 s!2326))))))

(declare-fun b!5359565 () Bool)

(declare-fun res!2274357 () Bool)

(assert (=> b!5359565 (=> res!2274357 e!3326414)))

(assert (=> b!5359565 (= res!2274357 (not ((_ is ElementMatch!15063) r!7292)))))

(assert (=> b!5359565 (= e!3326409 e!3326414)))

(declare-fun b!5359566 () Bool)

(declare-fun res!2274355 () Bool)

(assert (=> b!5359566 (=> (not res!2274355) (not e!3326413))))

(assert (=> b!5359566 (= res!2274355 (not call!383354))))

(declare-fun b!5359567 () Bool)

(assert (=> b!5359567 (= e!3326411 e!3326408)))

(declare-fun res!2274351 () Bool)

(assert (=> b!5359567 (=> res!2274351 e!3326408)))

(assert (=> b!5359567 (= res!2274351 call!383354)))

(declare-fun b!5359568 () Bool)

(declare-fun res!2274356 () Bool)

(assert (=> b!5359568 (=> res!2274356 e!3326414)))

(assert (=> b!5359568 (= res!2274356 e!3326413)))

(declare-fun res!2274352 () Bool)

(assert (=> b!5359568 (=> (not res!2274352) (not e!3326413))))

(assert (=> b!5359568 (= res!2274352 lt!2183747)))

(assert (= (and d!1717387 c!933267) b!5359563))

(assert (= (and d!1717387 (not c!933267)) b!5359562))

(assert (= (and d!1717387 c!933266) b!5359560))

(assert (= (and d!1717387 (not c!933266)) b!5359557))

(assert (= (and b!5359557 c!933268) b!5359558))

(assert (= (and b!5359557 (not c!933268)) b!5359565))

(assert (= (and b!5359565 (not res!2274357)) b!5359568))

(assert (= (and b!5359568 res!2274352) b!5359566))

(assert (= (and b!5359566 res!2274355) b!5359559))

(assert (= (and b!5359559 res!2274353) b!5359561))

(assert (= (and b!5359568 (not res!2274356)) b!5359555))

(assert (= (and b!5359555 res!2274358) b!5359567))

(assert (= (and b!5359567 (not res!2274351)) b!5359564))

(assert (= (and b!5359564 (not res!2274354)) b!5359556))

(assert (= (or b!5359560 b!5359566 b!5359567) bm!383349))

(declare-fun m!6388594 () Bool)

(assert (=> b!5359563 m!6388594))

(declare-fun m!6388596 () Bool)

(assert (=> b!5359564 m!6388596))

(assert (=> b!5359564 m!6388596))

(declare-fun m!6388598 () Bool)

(assert (=> b!5359564 m!6388598))

(assert (=> d!1717387 m!6388528))

(assert (=> d!1717387 m!6388408))

(declare-fun m!6388600 () Bool)

(assert (=> b!5359562 m!6388600))

(assert (=> b!5359562 m!6388600))

(declare-fun m!6388602 () Bool)

(assert (=> b!5359562 m!6388602))

(assert (=> b!5359562 m!6388596))

(assert (=> b!5359562 m!6388602))

(assert (=> b!5359562 m!6388596))

(declare-fun m!6388604 () Bool)

(assert (=> b!5359562 m!6388604))

(assert (=> b!5359559 m!6388596))

(assert (=> b!5359559 m!6388596))

(assert (=> b!5359559 m!6388598))

(assert (=> bm!383349 m!6388528))

(assert (=> b!5359561 m!6388600))

(assert (=> b!5359556 m!6388600))

(assert (=> b!5359211 d!1717387))

(declare-fun d!1717403 () Bool)

(assert (=> d!1717403 (= (matchR!7248 r!7292 s!2326) (matchRSpec!2166 r!7292 s!2326))))

(declare-fun lt!2183753 () Unit!153770)

(declare-fun choose!40226 (Regex!15063 List!61488) Unit!153770)

(assert (=> d!1717403 (= lt!2183753 (choose!40226 r!7292 s!2326))))

(assert (=> d!1717403 (validRegex!6799 r!7292)))

(assert (=> d!1717403 (= (mainMatchTheorem!2166 r!7292 s!2326) lt!2183753)))

(declare-fun bs!1241588 () Bool)

(assert (= bs!1241588 d!1717403))

(assert (=> bs!1241588 m!6388404))

(assert (=> bs!1241588 m!6388402))

(declare-fun m!6388616 () Bool)

(assert (=> bs!1241588 m!6388616))

(assert (=> bs!1241588 m!6388408))

(assert (=> b!5359211 d!1717403))

(declare-fun d!1717409 () Bool)

(declare-fun c!933283 () Bool)

(assert (=> d!1717409 (= c!933283 (isEmpty!33339 (t!374709 s!2326)))))

(declare-fun e!3326432 () Bool)

(assert (=> d!1717409 (= (matchZipper!1307 lt!2183703 (t!374709 s!2326)) e!3326432)))

(declare-fun b!5359600 () Bool)

(declare-fun nullableZipper!1387 ((InoxSet Context!8894)) Bool)

(assert (=> b!5359600 (= e!3326432 (nullableZipper!1387 lt!2183703))))

(declare-fun b!5359601 () Bool)

(assert (=> b!5359601 (= e!3326432 (matchZipper!1307 (derivationStepZipper!1302 lt!2183703 (head!11495 (t!374709 s!2326))) (tail!10592 (t!374709 s!2326))))))

(assert (= (and d!1717409 c!933283) b!5359600))

(assert (= (and d!1717409 (not c!933283)) b!5359601))

(declare-fun m!6388620 () Bool)

(assert (=> d!1717409 m!6388620))

(declare-fun m!6388622 () Bool)

(assert (=> b!5359600 m!6388622))

(declare-fun m!6388624 () Bool)

(assert (=> b!5359601 m!6388624))

(assert (=> b!5359601 m!6388624))

(declare-fun m!6388626 () Bool)

(assert (=> b!5359601 m!6388626))

(declare-fun m!6388628 () Bool)

(assert (=> b!5359601 m!6388628))

(assert (=> b!5359601 m!6388626))

(assert (=> b!5359601 m!6388628))

(declare-fun m!6388630 () Bool)

(assert (=> b!5359601 m!6388630))

(assert (=> b!5359210 d!1717409))

(declare-fun bs!1241594 () Bool)

(declare-fun d!1717413 () Bool)

(assert (= bs!1241594 (and d!1717413 d!1717363)))

(declare-fun lambda!275915 () Int)

(assert (=> bs!1241594 (= lambda!275915 lambda!275882)))

(assert (=> d!1717413 (= (inv!80904 (h!67814 zl!343)) (forall!14475 (exprs!4947 (h!67814 zl!343)) lambda!275915))))

(declare-fun bs!1241595 () Bool)

(assert (= bs!1241595 d!1717413))

(declare-fun m!6388632 () Bool)

(assert (=> bs!1241595 m!6388632))

(assert (=> b!5359230 d!1717413))

(declare-fun d!1717415 () Bool)

(declare-fun nullableFct!1539 (Regex!15063) Bool)

(assert (=> d!1717415 (= (nullable!5232 (regOne!30638 (regOne!30638 r!7292))) (nullableFct!1539 (regOne!30638 (regOne!30638 r!7292))))))

(declare-fun bs!1241596 () Bool)

(assert (= bs!1241596 d!1717415))

(declare-fun m!6388652 () Bool)

(assert (=> bs!1241596 m!6388652))

(assert (=> b!5359194 d!1717415))

(declare-fun c!933316 () Bool)

(declare-fun bm!383366 () Bool)

(declare-fun call!383373 () List!61489)

(declare-fun call!383374 () (InoxSet Context!8894))

(declare-fun c!933317 () Bool)

(declare-fun c!933314 () Bool)

(assert (=> bm!383366 (= call!383374 (derivationStepZipperDown!511 (ite c!933316 (regTwo!30639 (h!67813 (exprs!4947 (h!67814 zl!343)))) (ite c!933317 (regTwo!30638 (h!67813 (exprs!4947 (h!67814 zl!343)))) (ite c!933314 (regOne!30638 (h!67813 (exprs!4947 (h!67814 zl!343)))) (reg!15392 (h!67813 (exprs!4947 (h!67814 zl!343))))))) (ite (or c!933316 c!933317) lt!2183704 (Context!8895 call!383373)) (h!67812 s!2326)))))

(declare-fun b!5359687 () Bool)

(declare-fun e!3326485 () Bool)

(assert (=> b!5359687 (= e!3326485 (nullable!5232 (regOne!30638 (h!67813 (exprs!4947 (h!67814 zl!343))))))))

(declare-fun b!5359688 () Bool)

(declare-fun e!3326486 () (InoxSet Context!8894))

(assert (=> b!5359688 (= e!3326486 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383367 () Bool)

(declare-fun call!383375 () List!61489)

(assert (=> bm!383367 (= call!383373 call!383375)))

(declare-fun bm!383368 () Bool)

(declare-fun call!383371 () (InoxSet Context!8894))

(declare-fun call!383376 () (InoxSet Context!8894))

(assert (=> bm!383368 (= call!383371 call!383376)))

(declare-fun b!5359689 () Bool)

(declare-fun e!3326482 () (InoxSet Context!8894))

(assert (=> b!5359689 (= e!3326482 call!383371)))

(declare-fun b!5359690 () Bool)

(declare-fun e!3326481 () (InoxSet Context!8894))

(assert (=> b!5359690 (= e!3326481 (store ((as const (Array Context!8894 Bool)) false) lt!2183704 true))))

(declare-fun b!5359686 () Bool)

(declare-fun e!3326484 () (InoxSet Context!8894))

(declare-fun call!383372 () (InoxSet Context!8894))

(assert (=> b!5359686 (= e!3326484 ((_ map or) call!383372 call!383374))))

(declare-fun d!1717419 () Bool)

(declare-fun c!933315 () Bool)

(assert (=> d!1717419 (= c!933315 (and ((_ is ElementMatch!15063) (h!67813 (exprs!4947 (h!67814 zl!343)))) (= (c!933177 (h!67813 (exprs!4947 (h!67814 zl!343)))) (h!67812 s!2326))))))

(assert (=> d!1717419 (= (derivationStepZipperDown!511 (h!67813 (exprs!4947 (h!67814 zl!343))) lt!2183704 (h!67812 s!2326)) e!3326481)))

(declare-fun b!5359691 () Bool)

(declare-fun e!3326483 () (InoxSet Context!8894))

(assert (=> b!5359691 (= e!3326483 ((_ map or) call!383372 call!383376))))

(declare-fun bm!383369 () Bool)

(declare-fun $colon$colon!1437 (List!61489 Regex!15063) List!61489)

(assert (=> bm!383369 (= call!383375 ($colon$colon!1437 (exprs!4947 lt!2183704) (ite (or c!933317 c!933314) (regTwo!30638 (h!67813 (exprs!4947 (h!67814 zl!343)))) (h!67813 (exprs!4947 (h!67814 zl!343))))))))

(declare-fun bm!383370 () Bool)

(assert (=> bm!383370 (= call!383372 (derivationStepZipperDown!511 (ite c!933316 (regOne!30639 (h!67813 (exprs!4947 (h!67814 zl!343)))) (regOne!30638 (h!67813 (exprs!4947 (h!67814 zl!343))))) (ite c!933316 lt!2183704 (Context!8895 call!383375)) (h!67812 s!2326)))))

(declare-fun b!5359692 () Bool)

(assert (=> b!5359692 (= e!3326486 call!383371)))

(declare-fun b!5359693 () Bool)

(assert (=> b!5359693 (= c!933317 e!3326485)))

(declare-fun res!2274390 () Bool)

(assert (=> b!5359693 (=> (not res!2274390) (not e!3326485))))

(assert (=> b!5359693 (= res!2274390 ((_ is Concat!23908) (h!67813 (exprs!4947 (h!67814 zl!343)))))))

(assert (=> b!5359693 (= e!3326484 e!3326483)))

(declare-fun b!5359694 () Bool)

(declare-fun c!933313 () Bool)

(assert (=> b!5359694 (= c!933313 ((_ is Star!15063) (h!67813 (exprs!4947 (h!67814 zl!343)))))))

(assert (=> b!5359694 (= e!3326482 e!3326486)))

(declare-fun b!5359695 () Bool)

(assert (=> b!5359695 (= e!3326481 e!3326484)))

(assert (=> b!5359695 (= c!933316 ((_ is Union!15063) (h!67813 (exprs!4947 (h!67814 zl!343)))))))

(declare-fun bm!383371 () Bool)

(assert (=> bm!383371 (= call!383376 call!383374)))

(declare-fun b!5359696 () Bool)

(assert (=> b!5359696 (= e!3326483 e!3326482)))

(assert (=> b!5359696 (= c!933314 ((_ is Concat!23908) (h!67813 (exprs!4947 (h!67814 zl!343)))))))

(assert (= (and d!1717419 c!933315) b!5359690))

(assert (= (and d!1717419 (not c!933315)) b!5359695))

(assert (= (and b!5359695 c!933316) b!5359686))

(assert (= (and b!5359695 (not c!933316)) b!5359693))

(assert (= (and b!5359693 res!2274390) b!5359687))

(assert (= (and b!5359693 c!933317) b!5359691))

(assert (= (and b!5359693 (not c!933317)) b!5359696))

(assert (= (and b!5359696 c!933314) b!5359689))

(assert (= (and b!5359696 (not c!933314)) b!5359694))

(assert (= (and b!5359694 c!933313) b!5359692))

(assert (= (and b!5359694 (not c!933313)) b!5359688))

(assert (= (or b!5359689 b!5359692) bm!383367))

(assert (= (or b!5359689 b!5359692) bm!383368))

(assert (= (or b!5359691 bm!383367) bm!383369))

(assert (= (or b!5359691 bm!383368) bm!383371))

(assert (= (or b!5359686 bm!383371) bm!383366))

(assert (= (or b!5359686 b!5359691) bm!383370))

(declare-fun m!6388716 () Bool)

(assert (=> b!5359687 m!6388716))

(declare-fun m!6388718 () Bool)

(assert (=> b!5359690 m!6388718))

(declare-fun m!6388720 () Bool)

(assert (=> bm!383369 m!6388720))

(declare-fun m!6388722 () Bool)

(assert (=> bm!383366 m!6388722))

(declare-fun m!6388724 () Bool)

(assert (=> bm!383370 m!6388724))

(assert (=> b!5359213 d!1717419))

(declare-fun d!1717439 () Bool)

(assert (=> d!1717439 (= (nullable!5232 (h!67813 (exprs!4947 (h!67814 zl!343)))) (nullableFct!1539 (h!67813 (exprs!4947 (h!67814 zl!343)))))))

(declare-fun bs!1241601 () Bool)

(assert (= bs!1241601 d!1717439))

(declare-fun m!6388726 () Bool)

(assert (=> bs!1241601 m!6388726))

(assert (=> b!5359213 d!1717439))

(declare-fun b!5359708 () Bool)

(declare-fun e!3326495 () Bool)

(assert (=> b!5359708 (= e!3326495 (nullable!5232 (h!67813 (exprs!4947 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343)))))))))))

(declare-fun d!1717441 () Bool)

(declare-fun c!933322 () Bool)

(assert (=> d!1717441 (= c!933322 e!3326495)))

(declare-fun res!2274394 () Bool)

(assert (=> d!1717441 (=> (not res!2274394) (not e!3326495))))

(assert (=> d!1717441 (= res!2274394 ((_ is Cons!61365) (exprs!4947 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343))))))))))

(declare-fun e!3326496 () (InoxSet Context!8894))

(assert (=> d!1717441 (= (derivationStepZipperUp!435 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343))))) (h!67812 s!2326)) e!3326496)))

(declare-fun b!5359709 () Bool)

(declare-fun e!3326494 () (InoxSet Context!8894))

(declare-fun call!383379 () (InoxSet Context!8894))

(assert (=> b!5359709 (= e!3326494 call!383379)))

(declare-fun b!5359710 () Bool)

(assert (=> b!5359710 (= e!3326496 e!3326494)))

(declare-fun c!933323 () Bool)

(assert (=> b!5359710 (= c!933323 ((_ is Cons!61365) (exprs!4947 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343))))))))))

(declare-fun b!5359711 () Bool)

(assert (=> b!5359711 (= e!3326494 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383374 () Bool)

(assert (=> bm!383374 (= call!383379 (derivationStepZipperDown!511 (h!67813 (exprs!4947 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343))))))) (Context!8895 (t!374710 (exprs!4947 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343)))))))) (h!67812 s!2326)))))

(declare-fun b!5359712 () Bool)

(assert (=> b!5359712 (= e!3326496 ((_ map or) call!383379 (derivationStepZipperUp!435 (Context!8895 (t!374710 (exprs!4947 (Context!8895 (Cons!61365 (h!67813 (exprs!4947 (h!67814 zl!343))) (t!374710 (exprs!4947 (h!67814 zl!343)))))))) (h!67812 s!2326))))))

(assert (= (and d!1717441 res!2274394) b!5359708))

(assert (= (and d!1717441 c!933322) b!5359712))

(assert (= (and d!1717441 (not c!933322)) b!5359710))

(assert (= (and b!5359710 c!933323) b!5359709))

(assert (= (and b!5359710 (not c!933323)) b!5359711))

(assert (= (or b!5359712 b!5359709) bm!383374))

(declare-fun m!6388728 () Bool)

(assert (=> b!5359708 m!6388728))

(declare-fun m!6388730 () Bool)

(assert (=> bm!383374 m!6388730))

(declare-fun m!6388732 () Bool)

(assert (=> b!5359712 m!6388732))

(assert (=> b!5359213 d!1717441))

(declare-fun b!5359713 () Bool)

(declare-fun e!3326498 () Bool)

(assert (=> b!5359713 (= e!3326498 (nullable!5232 (h!67813 (exprs!4947 lt!2183704))))))

(declare-fun d!1717443 () Bool)

(declare-fun c!933324 () Bool)

(assert (=> d!1717443 (= c!933324 e!3326498)))

(declare-fun res!2274395 () Bool)

(assert (=> d!1717443 (=> (not res!2274395) (not e!3326498))))

(assert (=> d!1717443 (= res!2274395 ((_ is Cons!61365) (exprs!4947 lt!2183704)))))

(declare-fun e!3326499 () (InoxSet Context!8894))

(assert (=> d!1717443 (= (derivationStepZipperUp!435 lt!2183704 (h!67812 s!2326)) e!3326499)))

(declare-fun b!5359714 () Bool)

(declare-fun e!3326497 () (InoxSet Context!8894))

(declare-fun call!383380 () (InoxSet Context!8894))

(assert (=> b!5359714 (= e!3326497 call!383380)))

(declare-fun b!5359715 () Bool)

(assert (=> b!5359715 (= e!3326499 e!3326497)))

(declare-fun c!933325 () Bool)

(assert (=> b!5359715 (= c!933325 ((_ is Cons!61365) (exprs!4947 lt!2183704)))))

(declare-fun b!5359716 () Bool)

(assert (=> b!5359716 (= e!3326497 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383375 () Bool)

(assert (=> bm!383375 (= call!383380 (derivationStepZipperDown!511 (h!67813 (exprs!4947 lt!2183704)) (Context!8895 (t!374710 (exprs!4947 lt!2183704))) (h!67812 s!2326)))))

(declare-fun b!5359717 () Bool)

(assert (=> b!5359717 (= e!3326499 ((_ map or) call!383380 (derivationStepZipperUp!435 (Context!8895 (t!374710 (exprs!4947 lt!2183704))) (h!67812 s!2326))))))

(assert (= (and d!1717443 res!2274395) b!5359713))

(assert (= (and d!1717443 c!933324) b!5359717))

(assert (= (and d!1717443 (not c!933324)) b!5359715))

(assert (= (and b!5359715 c!933325) b!5359714))

(assert (= (and b!5359715 (not c!933325)) b!5359716))

(assert (= (or b!5359717 b!5359714) bm!383375))

(declare-fun m!6388734 () Bool)

(assert (=> b!5359713 m!6388734))

(declare-fun m!6388736 () Bool)

(assert (=> bm!383375 m!6388736))

(declare-fun m!6388738 () Bool)

(assert (=> b!5359717 m!6388738))

(assert (=> b!5359213 d!1717443))

(declare-fun b!5359718 () Bool)

(declare-fun e!3326501 () Bool)

(assert (=> b!5359718 (= e!3326501 (nullable!5232 (h!67813 (exprs!4947 (h!67814 zl!343)))))))

(declare-fun d!1717445 () Bool)

(declare-fun c!933326 () Bool)

(assert (=> d!1717445 (= c!933326 e!3326501)))

(declare-fun res!2274396 () Bool)

(assert (=> d!1717445 (=> (not res!2274396) (not e!3326501))))

(assert (=> d!1717445 (= res!2274396 ((_ is Cons!61365) (exprs!4947 (h!67814 zl!343))))))

(declare-fun e!3326502 () (InoxSet Context!8894))

(assert (=> d!1717445 (= (derivationStepZipperUp!435 (h!67814 zl!343) (h!67812 s!2326)) e!3326502)))

(declare-fun b!5359719 () Bool)

(declare-fun e!3326500 () (InoxSet Context!8894))

(declare-fun call!383381 () (InoxSet Context!8894))

(assert (=> b!5359719 (= e!3326500 call!383381)))

(declare-fun b!5359720 () Bool)

(assert (=> b!5359720 (= e!3326502 e!3326500)))

(declare-fun c!933327 () Bool)

(assert (=> b!5359720 (= c!933327 ((_ is Cons!61365) (exprs!4947 (h!67814 zl!343))))))

(declare-fun b!5359721 () Bool)

(assert (=> b!5359721 (= e!3326500 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383376 () Bool)

(assert (=> bm!383376 (= call!383381 (derivationStepZipperDown!511 (h!67813 (exprs!4947 (h!67814 zl!343))) (Context!8895 (t!374710 (exprs!4947 (h!67814 zl!343)))) (h!67812 s!2326)))))

(declare-fun b!5359722 () Bool)

(assert (=> b!5359722 (= e!3326502 ((_ map or) call!383381 (derivationStepZipperUp!435 (Context!8895 (t!374710 (exprs!4947 (h!67814 zl!343)))) (h!67812 s!2326))))))

(assert (= (and d!1717445 res!2274396) b!5359718))

(assert (= (and d!1717445 c!933326) b!5359722))

(assert (= (and d!1717445 (not c!933326)) b!5359720))

(assert (= (and b!5359720 c!933327) b!5359719))

(assert (= (and b!5359720 (not c!933327)) b!5359721))

(assert (= (or b!5359722 b!5359719) bm!383376))

(assert (=> b!5359718 m!6388394))

(declare-fun m!6388740 () Bool)

(assert (=> bm!383376 m!6388740))

(declare-fun m!6388742 () Bool)

(assert (=> b!5359722 m!6388742))

(assert (=> b!5359213 d!1717445))

(declare-fun d!1717447 () Bool)

(assert (=> d!1717447 (= (flatMap!790 z!1189 lambda!275871) (dynLambda!24240 lambda!275871 (h!67814 zl!343)))))

(declare-fun lt!2183770 () Unit!153770)

(assert (=> d!1717447 (= lt!2183770 (choose!40223 z!1189 (h!67814 zl!343) lambda!275871))))

(assert (=> d!1717447 (= z!1189 (store ((as const (Array Context!8894 Bool)) false) (h!67814 zl!343) true))))

(assert (=> d!1717447 (= (lemmaFlatMapOnSingletonSet!322 z!1189 (h!67814 zl!343) lambda!275871) lt!2183770)))

(declare-fun b_lambda!205523 () Bool)

(assert (=> (not b_lambda!205523) (not d!1717447)))

(declare-fun bs!1241610 () Bool)

(assert (= bs!1241610 d!1717447))

(assert (=> bs!1241610 m!6388398))

(declare-fun m!6388744 () Bool)

(assert (=> bs!1241610 m!6388744))

(declare-fun m!6388746 () Bool)

(assert (=> bs!1241610 m!6388746))

(declare-fun m!6388748 () Bool)

(assert (=> bs!1241610 m!6388748))

(assert (=> b!5359213 d!1717447))

(declare-fun d!1717449 () Bool)

(assert (=> d!1717449 (= (flatMap!790 z!1189 lambda!275871) (choose!40222 z!1189 lambda!275871))))

(declare-fun bs!1241611 () Bool)

(assert (= bs!1241611 d!1717449))

(declare-fun m!6388750 () Bool)

(assert (=> bs!1241611 m!6388750))

(assert (=> b!5359213 d!1717449))

(declare-fun d!1717451 () Bool)

(assert (=> d!1717451 (= (isEmpty!33336 (t!374710 (exprs!4947 (h!67814 zl!343)))) ((_ is Nil!61365) (t!374710 (exprs!4947 (h!67814 zl!343)))))))

(assert (=> b!5359212 d!1717451))

(declare-fun c!933341 () Bool)

(declare-fun bm!383388 () Bool)

(declare-fun c!933340 () Bool)

(declare-fun call!383394 () Bool)

(assert (=> bm!383388 (= call!383394 (validRegex!6799 (ite c!933341 (reg!15392 lt!2183684) (ite c!933340 (regTwo!30639 lt!2183684) (regTwo!30638 lt!2183684)))))))

(declare-fun d!1717453 () Bool)

(declare-fun res!2274415 () Bool)

(declare-fun e!3326536 () Bool)

(assert (=> d!1717453 (=> res!2274415 e!3326536)))

(assert (=> d!1717453 (= res!2274415 ((_ is ElementMatch!15063) lt!2183684))))

(assert (=> d!1717453 (= (validRegex!6799 lt!2183684) e!3326536)))

(declare-fun bm!383389 () Bool)

(declare-fun call!383393 () Bool)

(assert (=> bm!383389 (= call!383393 call!383394)))

(declare-fun b!5359764 () Bool)

(declare-fun res!2274414 () Bool)

(declare-fun e!3326533 () Bool)

(assert (=> b!5359764 (=> (not res!2274414) (not e!3326533))))

(declare-fun call!383395 () Bool)

(assert (=> b!5359764 (= res!2274414 call!383395)))

(declare-fun e!3326534 () Bool)

(assert (=> b!5359764 (= e!3326534 e!3326533)))

(declare-fun b!5359765 () Bool)

(declare-fun e!3326537 () Bool)

(assert (=> b!5359765 (= e!3326536 e!3326537)))

(assert (=> b!5359765 (= c!933341 ((_ is Star!15063) lt!2183684))))

(declare-fun b!5359766 () Bool)

(declare-fun e!3326535 () Bool)

(declare-fun e!3326532 () Bool)

(assert (=> b!5359766 (= e!3326535 e!3326532)))

(declare-fun res!2274417 () Bool)

(assert (=> b!5359766 (=> (not res!2274417) (not e!3326532))))

(assert (=> b!5359766 (= res!2274417 call!383395)))

(declare-fun b!5359767 () Bool)

(assert (=> b!5359767 (= e!3326537 e!3326534)))

(assert (=> b!5359767 (= c!933340 ((_ is Union!15063) lt!2183684))))

(declare-fun b!5359768 () Bool)

(declare-fun e!3326538 () Bool)

(assert (=> b!5359768 (= e!3326537 e!3326538)))

(declare-fun res!2274416 () Bool)

(assert (=> b!5359768 (= res!2274416 (not (nullable!5232 (reg!15392 lt!2183684))))))

(assert (=> b!5359768 (=> (not res!2274416) (not e!3326538))))

(declare-fun bm!383390 () Bool)

(assert (=> bm!383390 (= call!383395 (validRegex!6799 (ite c!933340 (regOne!30639 lt!2183684) (regOne!30638 lt!2183684))))))

(declare-fun b!5359769 () Bool)

(declare-fun res!2274418 () Bool)

(assert (=> b!5359769 (=> res!2274418 e!3326535)))

(assert (=> b!5359769 (= res!2274418 (not ((_ is Concat!23908) lt!2183684)))))

(assert (=> b!5359769 (= e!3326534 e!3326535)))

(declare-fun b!5359770 () Bool)

(assert (=> b!5359770 (= e!3326533 call!383393)))

(declare-fun b!5359771 () Bool)

(assert (=> b!5359771 (= e!3326532 call!383393)))

(declare-fun b!5359772 () Bool)

(assert (=> b!5359772 (= e!3326538 call!383394)))

(assert (= (and d!1717453 (not res!2274415)) b!5359765))

(assert (= (and b!5359765 c!933341) b!5359768))

(assert (= (and b!5359765 (not c!933341)) b!5359767))

(assert (= (and b!5359768 res!2274416) b!5359772))

(assert (= (and b!5359767 c!933340) b!5359764))

(assert (= (and b!5359767 (not c!933340)) b!5359769))

(assert (= (and b!5359764 res!2274414) b!5359770))

(assert (= (and b!5359769 (not res!2274418)) b!5359766))

(assert (= (and b!5359766 res!2274417) b!5359771))

(assert (= (or b!5359770 b!5359771) bm!383389))

(assert (= (or b!5359764 b!5359766) bm!383390))

(assert (= (or b!5359772 bm!383389) bm!383388))

(declare-fun m!6388800 () Bool)

(assert (=> bm!383388 m!6388800))

(declare-fun m!6388802 () Bool)

(assert (=> b!5359768 m!6388802))

(declare-fun m!6388804 () Bool)

(assert (=> bm!383390 m!6388804))

(assert (=> b!5359217 d!1717453))

(declare-fun d!1717477 () Bool)

(declare-fun choose!40229 (Int) Bool)

(assert (=> d!1717477 (= (Exists!2244 lambda!275873) (choose!40229 lambda!275873))))

(declare-fun bs!1241619 () Bool)

(assert (= bs!1241619 d!1717477))

(declare-fun m!6388806 () Bool)

(assert (=> bs!1241619 m!6388806))

(assert (=> b!5359217 d!1717477))

(declare-fun d!1717479 () Bool)

(declare-fun isEmpty!33340 (Option!15174) Bool)

(assert (=> d!1717479 (= (isDefined!11877 (findConcatSeparation!1588 lt!2183684 (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326)) (not (isEmpty!33340 (findConcatSeparation!1588 lt!2183684 (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326))))))

(declare-fun bs!1241620 () Bool)

(assert (= bs!1241620 d!1717479))

(assert (=> bs!1241620 m!6388420))

(declare-fun m!6388808 () Bool)

(assert (=> bs!1241620 m!6388808))

(assert (=> b!5359217 d!1717479))

(declare-fun bs!1241621 () Bool)

(declare-fun d!1717481 () Bool)

(assert (= bs!1241621 (and d!1717481 b!5359196)))

(declare-fun lambda!275920 () Int)

(assert (=> bs!1241621 (= (= lt!2183684 (regOne!30638 r!7292)) (= lambda!275920 lambda!275869))))

(declare-fun bs!1241622 () Bool)

(assert (= bs!1241622 (and d!1717481 b!5359450)))

(assert (=> bs!1241622 (not (= lambda!275920 lambda!275896))))

(assert (=> bs!1241621 (not (= lambda!275920 lambda!275870))))

(declare-fun bs!1241623 () Bool)

(assert (= bs!1241623 (and d!1717481 b!5359217)))

(assert (=> bs!1241623 (not (= lambda!275920 lambda!275873))))

(declare-fun bs!1241624 () Bool)

(assert (= bs!1241624 (and d!1717481 b!5359444)))

(assert (=> bs!1241624 (not (= lambda!275920 lambda!275897))))

(assert (=> bs!1241623 (= lambda!275920 lambda!275872)))

(assert (=> d!1717481 true))

(assert (=> d!1717481 true))

(assert (=> d!1717481 true))

(assert (=> d!1717481 (= (isDefined!11877 (findConcatSeparation!1588 lt!2183684 (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326)) (Exists!2244 lambda!275920))))

(declare-fun lt!2183776 () Unit!153770)

(declare-fun choose!40230 (Regex!15063 Regex!15063 List!61488) Unit!153770)

(assert (=> d!1717481 (= lt!2183776 (choose!40230 lt!2183684 (regTwo!30638 r!7292) s!2326))))

(assert (=> d!1717481 (validRegex!6799 lt!2183684)))

(assert (=> d!1717481 (= (lemmaFindConcatSeparationEquivalentToExists!1352 lt!2183684 (regTwo!30638 r!7292) s!2326) lt!2183776)))

(declare-fun bs!1241625 () Bool)

(assert (= bs!1241625 d!1717481))

(declare-fun m!6388820 () Bool)

(assert (=> bs!1241625 m!6388820))

(assert (=> bs!1241625 m!6388420))

(declare-fun m!6388822 () Bool)

(assert (=> bs!1241625 m!6388822))

(assert (=> bs!1241625 m!6388420))

(assert (=> bs!1241625 m!6388424))

(assert (=> bs!1241625 m!6388418))

(assert (=> b!5359217 d!1717481))

(declare-fun b!5359863 () Bool)

(declare-fun res!2274447 () Bool)

(declare-fun e!3326591 () Bool)

(assert (=> b!5359863 (=> (not res!2274447) (not e!3326591))))

(declare-fun lt!2183793 () Option!15174)

(declare-fun get!21105 (Option!15174) tuple2!64524)

(assert (=> b!5359863 (= res!2274447 (matchR!7248 (regTwo!30638 r!7292) (_2!35565 (get!21105 lt!2183793))))))

(declare-fun b!5359865 () Bool)

(declare-fun e!3326592 () Option!15174)

(assert (=> b!5359865 (= e!3326592 None!15173)))

(declare-fun b!5359866 () Bool)

(declare-fun res!2274448 () Bool)

(assert (=> b!5359866 (=> (not res!2274448) (not e!3326591))))

(assert (=> b!5359866 (= res!2274448 (matchR!7248 lt!2183684 (_1!35565 (get!21105 lt!2183793))))))

(declare-fun b!5359867 () Bool)

(assert (=> b!5359867 (= e!3326591 (= (++!13368 (_1!35565 (get!21105 lt!2183793)) (_2!35565 (get!21105 lt!2183793))) s!2326))))

(declare-fun b!5359868 () Bool)

(declare-fun e!3326593 () Bool)

(assert (=> b!5359868 (= e!3326593 (matchR!7248 (regTwo!30638 r!7292) s!2326))))

(declare-fun b!5359869 () Bool)

(declare-fun e!3326590 () Option!15174)

(assert (=> b!5359869 (= e!3326590 (Some!15173 (tuple2!64525 Nil!61364 s!2326)))))

(declare-fun b!5359870 () Bool)

(declare-fun lt!2183794 () Unit!153770)

(declare-fun lt!2183792 () Unit!153770)

(assert (=> b!5359870 (= lt!2183794 lt!2183792)))

(assert (=> b!5359870 (= (++!13368 (++!13368 Nil!61364 (Cons!61364 (h!67812 s!2326) Nil!61364)) (t!374709 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1783 (List!61488 C!30396 List!61488 List!61488) Unit!153770)

(assert (=> b!5359870 (= lt!2183792 (lemmaMoveElementToOtherListKeepsConcatEq!1783 Nil!61364 (h!67812 s!2326) (t!374709 s!2326) s!2326))))

(assert (=> b!5359870 (= e!3326592 (findConcatSeparation!1588 lt!2183684 (regTwo!30638 r!7292) (++!13368 Nil!61364 (Cons!61364 (h!67812 s!2326) Nil!61364)) (t!374709 s!2326) s!2326))))

(declare-fun b!5359871 () Bool)

(assert (=> b!5359871 (= e!3326590 e!3326592)))

(declare-fun c!933375 () Bool)

(assert (=> b!5359871 (= c!933375 ((_ is Nil!61364) s!2326))))

(declare-fun d!1717485 () Bool)

(declare-fun e!3326589 () Bool)

(assert (=> d!1717485 e!3326589))

(declare-fun res!2274449 () Bool)

(assert (=> d!1717485 (=> res!2274449 e!3326589)))

(assert (=> d!1717485 (= res!2274449 e!3326591)))

(declare-fun res!2274446 () Bool)

(assert (=> d!1717485 (=> (not res!2274446) (not e!3326591))))

(assert (=> d!1717485 (= res!2274446 (isDefined!11877 lt!2183793))))

(assert (=> d!1717485 (= lt!2183793 e!3326590)))

(declare-fun c!933374 () Bool)

(assert (=> d!1717485 (= c!933374 e!3326593)))

(declare-fun res!2274445 () Bool)

(assert (=> d!1717485 (=> (not res!2274445) (not e!3326593))))

(assert (=> d!1717485 (= res!2274445 (matchR!7248 lt!2183684 Nil!61364))))

(assert (=> d!1717485 (validRegex!6799 lt!2183684)))

(assert (=> d!1717485 (= (findConcatSeparation!1588 lt!2183684 (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326) lt!2183793)))

(declare-fun b!5359864 () Bool)

(assert (=> b!5359864 (= e!3326589 (not (isDefined!11877 lt!2183793)))))

(assert (= (and d!1717485 res!2274445) b!5359868))

(assert (= (and d!1717485 c!933374) b!5359869))

(assert (= (and d!1717485 (not c!933374)) b!5359871))

(assert (= (and b!5359871 c!933375) b!5359865))

(assert (= (and b!5359871 (not c!933375)) b!5359870))

(assert (= (and d!1717485 res!2274446) b!5359866))

(assert (= (and b!5359866 res!2274448) b!5359863))

(assert (= (and b!5359863 res!2274447) b!5359867))

(assert (= (and d!1717485 (not res!2274449)) b!5359864))

(declare-fun m!6388908 () Bool)

(assert (=> b!5359866 m!6388908))

(declare-fun m!6388910 () Bool)

(assert (=> b!5359866 m!6388910))

(declare-fun m!6388912 () Bool)

(assert (=> b!5359868 m!6388912))

(declare-fun m!6388914 () Bool)

(assert (=> b!5359870 m!6388914))

(assert (=> b!5359870 m!6388914))

(declare-fun m!6388916 () Bool)

(assert (=> b!5359870 m!6388916))

(declare-fun m!6388918 () Bool)

(assert (=> b!5359870 m!6388918))

(assert (=> b!5359870 m!6388914))

(declare-fun m!6388920 () Bool)

(assert (=> b!5359870 m!6388920))

(declare-fun m!6388922 () Bool)

(assert (=> d!1717485 m!6388922))

(declare-fun m!6388924 () Bool)

(assert (=> d!1717485 m!6388924))

(assert (=> d!1717485 m!6388418))

(assert (=> b!5359863 m!6388908))

(declare-fun m!6388926 () Bool)

(assert (=> b!5359863 m!6388926))

(assert (=> b!5359864 m!6388922))

(assert (=> b!5359867 m!6388908))

(declare-fun m!6388928 () Bool)

(assert (=> b!5359867 m!6388928))

(assert (=> b!5359217 d!1717485))

(declare-fun bs!1241664 () Bool)

(declare-fun d!1717523 () Bool)

(assert (= bs!1241664 (and d!1717523 b!5359196)))

(declare-fun lambda!275929 () Int)

(assert (=> bs!1241664 (= (= lt!2183684 (regOne!30638 r!7292)) (= lambda!275929 lambda!275869))))

(declare-fun bs!1241665 () Bool)

(assert (= bs!1241665 (and d!1717523 b!5359450)))

(assert (=> bs!1241665 (not (= lambda!275929 lambda!275896))))

(assert (=> bs!1241664 (not (= lambda!275929 lambda!275870))))

(declare-fun bs!1241666 () Bool)

(assert (= bs!1241666 (and d!1717523 d!1717481)))

(assert (=> bs!1241666 (= lambda!275929 lambda!275920)))

(declare-fun bs!1241667 () Bool)

(assert (= bs!1241667 (and d!1717523 b!5359217)))

(assert (=> bs!1241667 (not (= lambda!275929 lambda!275873))))

(declare-fun bs!1241668 () Bool)

(assert (= bs!1241668 (and d!1717523 b!5359444)))

(assert (=> bs!1241668 (not (= lambda!275929 lambda!275897))))

(assert (=> bs!1241667 (= lambda!275929 lambda!275872)))

(assert (=> d!1717523 true))

(assert (=> d!1717523 true))

(assert (=> d!1717523 true))

(declare-fun lambda!275930 () Int)

(assert (=> bs!1241664 (not (= lambda!275930 lambda!275869))))

(assert (=> bs!1241665 (not (= lambda!275930 lambda!275896))))

(assert (=> bs!1241664 (= (= lt!2183684 (regOne!30638 r!7292)) (= lambda!275930 lambda!275870))))

(assert (=> bs!1241666 (not (= lambda!275930 lambda!275920))))

(declare-fun bs!1241669 () Bool)

(assert (= bs!1241669 d!1717523))

(assert (=> bs!1241669 (not (= lambda!275930 lambda!275929))))

(assert (=> bs!1241667 (= lambda!275930 lambda!275873)))

(assert (=> bs!1241668 (= (= lt!2183684 (regOne!30638 r!7292)) (= lambda!275930 lambda!275897))))

(assert (=> bs!1241667 (not (= lambda!275930 lambda!275872))))

(assert (=> d!1717523 true))

(assert (=> d!1717523 true))

(assert (=> d!1717523 true))

(assert (=> d!1717523 (= (Exists!2244 lambda!275929) (Exists!2244 lambda!275930))))

(declare-fun lt!2183797 () Unit!153770)

(declare-fun choose!40231 (Regex!15063 Regex!15063 List!61488) Unit!153770)

(assert (=> d!1717523 (= lt!2183797 (choose!40231 lt!2183684 (regTwo!30638 r!7292) s!2326))))

(assert (=> d!1717523 (validRegex!6799 lt!2183684)))

(assert (=> d!1717523 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!898 lt!2183684 (regTwo!30638 r!7292) s!2326) lt!2183797)))

(declare-fun m!6388934 () Bool)

(assert (=> bs!1241669 m!6388934))

(declare-fun m!6388936 () Bool)

(assert (=> bs!1241669 m!6388936))

(declare-fun m!6388938 () Bool)

(assert (=> bs!1241669 m!6388938))

(assert (=> bs!1241669 m!6388418))

(assert (=> b!5359217 d!1717523))

(declare-fun d!1717533 () Bool)

(assert (=> d!1717533 (= (Exists!2244 lambda!275872) (choose!40229 lambda!275872))))

(declare-fun bs!1241670 () Bool)

(assert (= bs!1241670 d!1717533))

(declare-fun m!6388940 () Bool)

(assert (=> bs!1241670 m!6388940))

(assert (=> b!5359217 d!1717533))

(declare-fun b!5359934 () Bool)

(declare-fun res!2274460 () Bool)

(declare-fun e!3326623 () Bool)

(assert (=> b!5359934 (=> (not res!2274460) (not e!3326623))))

(declare-fun lt!2183799 () Option!15174)

(assert (=> b!5359934 (= res!2274460 (matchR!7248 (regTwo!30638 r!7292) (_2!35565 (get!21105 lt!2183799))))))

(declare-fun b!5359936 () Bool)

(declare-fun e!3326624 () Option!15174)

(assert (=> b!5359936 (= e!3326624 None!15173)))

(declare-fun b!5359937 () Bool)

(declare-fun res!2274461 () Bool)

(assert (=> b!5359937 (=> (not res!2274461) (not e!3326623))))

(assert (=> b!5359937 (= res!2274461 (matchR!7248 (regOne!30638 r!7292) (_1!35565 (get!21105 lt!2183799))))))

(declare-fun b!5359938 () Bool)

(assert (=> b!5359938 (= e!3326623 (= (++!13368 (_1!35565 (get!21105 lt!2183799)) (_2!35565 (get!21105 lt!2183799))) s!2326))))

(declare-fun b!5359939 () Bool)

(declare-fun e!3326625 () Bool)

(assert (=> b!5359939 (= e!3326625 (matchR!7248 (regTwo!30638 r!7292) s!2326))))

(declare-fun b!5359940 () Bool)

(declare-fun e!3326622 () Option!15174)

(assert (=> b!5359940 (= e!3326622 (Some!15173 (tuple2!64525 Nil!61364 s!2326)))))

(declare-fun b!5359941 () Bool)

(declare-fun lt!2183800 () Unit!153770)

(declare-fun lt!2183798 () Unit!153770)

(assert (=> b!5359941 (= lt!2183800 lt!2183798)))

(assert (=> b!5359941 (= (++!13368 (++!13368 Nil!61364 (Cons!61364 (h!67812 s!2326) Nil!61364)) (t!374709 s!2326)) s!2326)))

(assert (=> b!5359941 (= lt!2183798 (lemmaMoveElementToOtherListKeepsConcatEq!1783 Nil!61364 (h!67812 s!2326) (t!374709 s!2326) s!2326))))

(assert (=> b!5359941 (= e!3326624 (findConcatSeparation!1588 (regOne!30638 r!7292) (regTwo!30638 r!7292) (++!13368 Nil!61364 (Cons!61364 (h!67812 s!2326) Nil!61364)) (t!374709 s!2326) s!2326))))

(declare-fun b!5359942 () Bool)

(assert (=> b!5359942 (= e!3326622 e!3326624)))

(declare-fun c!933377 () Bool)

(assert (=> b!5359942 (= c!933377 ((_ is Nil!61364) s!2326))))

(declare-fun d!1717535 () Bool)

(declare-fun e!3326621 () Bool)

(assert (=> d!1717535 e!3326621))

(declare-fun res!2274462 () Bool)

(assert (=> d!1717535 (=> res!2274462 e!3326621)))

(assert (=> d!1717535 (= res!2274462 e!3326623)))

(declare-fun res!2274459 () Bool)

(assert (=> d!1717535 (=> (not res!2274459) (not e!3326623))))

(assert (=> d!1717535 (= res!2274459 (isDefined!11877 lt!2183799))))

(assert (=> d!1717535 (= lt!2183799 e!3326622)))

(declare-fun c!933376 () Bool)

(assert (=> d!1717535 (= c!933376 e!3326625)))

(declare-fun res!2274458 () Bool)

(assert (=> d!1717535 (=> (not res!2274458) (not e!3326625))))

(assert (=> d!1717535 (= res!2274458 (matchR!7248 (regOne!30638 r!7292) Nil!61364))))

(assert (=> d!1717535 (validRegex!6799 (regOne!30638 r!7292))))

(assert (=> d!1717535 (= (findConcatSeparation!1588 (regOne!30638 r!7292) (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326) lt!2183799)))

(declare-fun b!5359935 () Bool)

(assert (=> b!5359935 (= e!3326621 (not (isDefined!11877 lt!2183799)))))

(assert (= (and d!1717535 res!2274458) b!5359939))

(assert (= (and d!1717535 c!933376) b!5359940))

(assert (= (and d!1717535 (not c!933376)) b!5359942))

(assert (= (and b!5359942 c!933377) b!5359936))

(assert (= (and b!5359942 (not c!933377)) b!5359941))

(assert (= (and d!1717535 res!2274459) b!5359937))

(assert (= (and b!5359937 res!2274461) b!5359934))

(assert (= (and b!5359934 res!2274460) b!5359938))

(assert (= (and d!1717535 (not res!2274462)) b!5359935))

(declare-fun m!6388942 () Bool)

(assert (=> b!5359937 m!6388942))

(declare-fun m!6388944 () Bool)

(assert (=> b!5359937 m!6388944))

(assert (=> b!5359939 m!6388912))

(assert (=> b!5359941 m!6388914))

(assert (=> b!5359941 m!6388914))

(assert (=> b!5359941 m!6388916))

(assert (=> b!5359941 m!6388918))

(assert (=> b!5359941 m!6388914))

(declare-fun m!6388946 () Bool)

(assert (=> b!5359941 m!6388946))

(declare-fun m!6388948 () Bool)

(assert (=> d!1717535 m!6388948))

(declare-fun m!6388950 () Bool)

(assert (=> d!1717535 m!6388950))

(declare-fun m!6388952 () Bool)

(assert (=> d!1717535 m!6388952))

(assert (=> b!5359934 m!6388942))

(declare-fun m!6388954 () Bool)

(assert (=> b!5359934 m!6388954))

(assert (=> b!5359935 m!6388948))

(assert (=> b!5359938 m!6388942))

(declare-fun m!6388956 () Bool)

(assert (=> b!5359938 m!6388956))

(assert (=> b!5359196 d!1717535))

(declare-fun d!1717537 () Bool)

(assert (=> d!1717537 (= (Exists!2244 lambda!275870) (choose!40229 lambda!275870))))

(declare-fun bs!1241671 () Bool)

(assert (= bs!1241671 d!1717537))

(declare-fun m!6388958 () Bool)

(assert (=> bs!1241671 m!6388958))

(assert (=> b!5359196 d!1717537))

(declare-fun d!1717539 () Bool)

(assert (=> d!1717539 (= (Exists!2244 lambda!275869) (choose!40229 lambda!275869))))

(declare-fun bs!1241672 () Bool)

(assert (= bs!1241672 d!1717539))

(declare-fun m!6388960 () Bool)

(assert (=> bs!1241672 m!6388960))

(assert (=> b!5359196 d!1717539))

(declare-fun bs!1241673 () Bool)

(declare-fun d!1717541 () Bool)

(assert (= bs!1241673 (and d!1717541 b!5359196)))

(declare-fun lambda!275931 () Int)

(assert (=> bs!1241673 (= lambda!275931 lambda!275869)))

(assert (=> bs!1241673 (not (= lambda!275931 lambda!275870))))

(declare-fun bs!1241674 () Bool)

(assert (= bs!1241674 (and d!1717541 d!1717481)))

(assert (=> bs!1241674 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275931 lambda!275920))))

(declare-fun bs!1241675 () Bool)

(assert (= bs!1241675 (and d!1717541 d!1717523)))

(assert (=> bs!1241675 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275931 lambda!275929))))

(declare-fun bs!1241676 () Bool)

(assert (= bs!1241676 (and d!1717541 b!5359217)))

(assert (=> bs!1241676 (not (= lambda!275931 lambda!275873))))

(declare-fun bs!1241677 () Bool)

(assert (= bs!1241677 (and d!1717541 b!5359444)))

(assert (=> bs!1241677 (not (= lambda!275931 lambda!275897))))

(assert (=> bs!1241676 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275931 lambda!275872))))

(declare-fun bs!1241678 () Bool)

(assert (= bs!1241678 (and d!1717541 b!5359450)))

(assert (=> bs!1241678 (not (= lambda!275931 lambda!275896))))

(assert (=> bs!1241675 (not (= lambda!275931 lambda!275930))))

(assert (=> d!1717541 true))

(assert (=> d!1717541 true))

(assert (=> d!1717541 true))

(assert (=> d!1717541 (= (isDefined!11877 (findConcatSeparation!1588 (regOne!30638 r!7292) (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326)) (Exists!2244 lambda!275931))))

(declare-fun lt!2183801 () Unit!153770)

(assert (=> d!1717541 (= lt!2183801 (choose!40230 (regOne!30638 r!7292) (regTwo!30638 r!7292) s!2326))))

(assert (=> d!1717541 (validRegex!6799 (regOne!30638 r!7292))))

(assert (=> d!1717541 (= (lemmaFindConcatSeparationEquivalentToExists!1352 (regOne!30638 r!7292) (regTwo!30638 r!7292) s!2326) lt!2183801)))

(declare-fun bs!1241679 () Bool)

(assert (= bs!1241679 d!1717541))

(declare-fun m!6388962 () Bool)

(assert (=> bs!1241679 m!6388962))

(assert (=> bs!1241679 m!6388368))

(declare-fun m!6388964 () Bool)

(assert (=> bs!1241679 m!6388964))

(assert (=> bs!1241679 m!6388368))

(assert (=> bs!1241679 m!6388370))

(assert (=> bs!1241679 m!6388952))

(assert (=> b!5359196 d!1717541))

(declare-fun bs!1241680 () Bool)

(declare-fun d!1717543 () Bool)

(assert (= bs!1241680 (and d!1717543 b!5359196)))

(declare-fun lambda!275932 () Int)

(assert (=> bs!1241680 (= lambda!275932 lambda!275869)))

(assert (=> bs!1241680 (not (= lambda!275932 lambda!275870))))

(declare-fun bs!1241681 () Bool)

(assert (= bs!1241681 (and d!1717543 d!1717541)))

(assert (=> bs!1241681 (= lambda!275932 lambda!275931)))

(declare-fun bs!1241682 () Bool)

(assert (= bs!1241682 (and d!1717543 d!1717481)))

(assert (=> bs!1241682 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275932 lambda!275920))))

(declare-fun bs!1241683 () Bool)

(assert (= bs!1241683 (and d!1717543 d!1717523)))

(assert (=> bs!1241683 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275932 lambda!275929))))

(declare-fun bs!1241684 () Bool)

(assert (= bs!1241684 (and d!1717543 b!5359217)))

(assert (=> bs!1241684 (not (= lambda!275932 lambda!275873))))

(declare-fun bs!1241685 () Bool)

(assert (= bs!1241685 (and d!1717543 b!5359444)))

(assert (=> bs!1241685 (not (= lambda!275932 lambda!275897))))

(assert (=> bs!1241684 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275932 lambda!275872))))

(declare-fun bs!1241686 () Bool)

(assert (= bs!1241686 (and d!1717543 b!5359450)))

(assert (=> bs!1241686 (not (= lambda!275932 lambda!275896))))

(assert (=> bs!1241683 (not (= lambda!275932 lambda!275930))))

(assert (=> d!1717543 true))

(assert (=> d!1717543 true))

(assert (=> d!1717543 true))

(declare-fun lambda!275933 () Int)

(assert (=> bs!1241680 (not (= lambda!275933 lambda!275869))))

(assert (=> bs!1241680 (= lambda!275933 lambda!275870)))

(assert (=> bs!1241681 (not (= lambda!275933 lambda!275931))))

(assert (=> bs!1241682 (not (= lambda!275933 lambda!275920))))

(assert (=> bs!1241683 (not (= lambda!275933 lambda!275929))))

(assert (=> bs!1241684 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275933 lambda!275873))))

(declare-fun bs!1241687 () Bool)

(assert (= bs!1241687 d!1717543))

(assert (=> bs!1241687 (not (= lambda!275933 lambda!275932))))

(assert (=> bs!1241685 (= lambda!275933 lambda!275897)))

(assert (=> bs!1241684 (not (= lambda!275933 lambda!275872))))

(assert (=> bs!1241686 (not (= lambda!275933 lambda!275896))))

(assert (=> bs!1241683 (= (= (regOne!30638 r!7292) lt!2183684) (= lambda!275933 lambda!275930))))

(assert (=> d!1717543 true))

(assert (=> d!1717543 true))

(assert (=> d!1717543 true))

(assert (=> d!1717543 (= (Exists!2244 lambda!275932) (Exists!2244 lambda!275933))))

(declare-fun lt!2183802 () Unit!153770)

(assert (=> d!1717543 (= lt!2183802 (choose!40231 (regOne!30638 r!7292) (regTwo!30638 r!7292) s!2326))))

(assert (=> d!1717543 (validRegex!6799 (regOne!30638 r!7292))))

(assert (=> d!1717543 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!898 (regOne!30638 r!7292) (regTwo!30638 r!7292) s!2326) lt!2183802)))

(declare-fun m!6388966 () Bool)

(assert (=> bs!1241687 m!6388966))

(declare-fun m!6388968 () Bool)

(assert (=> bs!1241687 m!6388968))

(declare-fun m!6388970 () Bool)

(assert (=> bs!1241687 m!6388970))

(assert (=> bs!1241687 m!6388952))

(assert (=> b!5359196 d!1717543))

(declare-fun d!1717545 () Bool)

(assert (=> d!1717545 (= (isDefined!11877 (findConcatSeparation!1588 (regOne!30638 r!7292) (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326)) (not (isEmpty!33340 (findConcatSeparation!1588 (regOne!30638 r!7292) (regTwo!30638 r!7292) Nil!61364 s!2326 s!2326))))))

(declare-fun bs!1241688 () Bool)

(assert (= bs!1241688 d!1717545))

(assert (=> bs!1241688 m!6388368))

(declare-fun m!6388972 () Bool)

(assert (=> bs!1241688 m!6388972))

(assert (=> b!5359196 d!1717545))

(declare-fun bm!383418 () Bool)

(declare-fun c!933378 () Bool)

(declare-fun c!933379 () Bool)

(declare-fun call!383424 () Bool)

(assert (=> bm!383418 (= call!383424 (validRegex!6799 (ite c!933379 (reg!15392 r!7292) (ite c!933378 (regTwo!30639 r!7292) (regTwo!30638 r!7292)))))))

(declare-fun d!1717547 () Bool)

(declare-fun res!2274464 () Bool)

(declare-fun e!3326630 () Bool)

(assert (=> d!1717547 (=> res!2274464 e!3326630)))

(assert (=> d!1717547 (= res!2274464 ((_ is ElementMatch!15063) r!7292))))

(assert (=> d!1717547 (= (validRegex!6799 r!7292) e!3326630)))

(declare-fun bm!383419 () Bool)

(declare-fun call!383423 () Bool)

(assert (=> bm!383419 (= call!383423 call!383424)))

(declare-fun b!5359943 () Bool)

(declare-fun res!2274463 () Bool)

(declare-fun e!3326627 () Bool)

(assert (=> b!5359943 (=> (not res!2274463) (not e!3326627))))

(declare-fun call!383425 () Bool)

(assert (=> b!5359943 (= res!2274463 call!383425)))

(declare-fun e!3326628 () Bool)

(assert (=> b!5359943 (= e!3326628 e!3326627)))

(declare-fun b!5359944 () Bool)

(declare-fun e!3326631 () Bool)

(assert (=> b!5359944 (= e!3326630 e!3326631)))

(assert (=> b!5359944 (= c!933379 ((_ is Star!15063) r!7292))))

(declare-fun b!5359945 () Bool)

(declare-fun e!3326629 () Bool)

(declare-fun e!3326626 () Bool)

(assert (=> b!5359945 (= e!3326629 e!3326626)))

(declare-fun res!2274466 () Bool)

(assert (=> b!5359945 (=> (not res!2274466) (not e!3326626))))

(assert (=> b!5359945 (= res!2274466 call!383425)))

(declare-fun b!5359946 () Bool)

(assert (=> b!5359946 (= e!3326631 e!3326628)))

(assert (=> b!5359946 (= c!933378 ((_ is Union!15063) r!7292))))

(declare-fun b!5359947 () Bool)

(declare-fun e!3326632 () Bool)

(assert (=> b!5359947 (= e!3326631 e!3326632)))

(declare-fun res!2274465 () Bool)

(assert (=> b!5359947 (= res!2274465 (not (nullable!5232 (reg!15392 r!7292))))))

(assert (=> b!5359947 (=> (not res!2274465) (not e!3326632))))

(declare-fun bm!383420 () Bool)

(assert (=> bm!383420 (= call!383425 (validRegex!6799 (ite c!933378 (regOne!30639 r!7292) (regOne!30638 r!7292))))))

(declare-fun b!5359948 () Bool)

(declare-fun res!2274467 () Bool)

(assert (=> b!5359948 (=> res!2274467 e!3326629)))

(assert (=> b!5359948 (= res!2274467 (not ((_ is Concat!23908) r!7292)))))

(assert (=> b!5359948 (= e!3326628 e!3326629)))

(declare-fun b!5359949 () Bool)

(assert (=> b!5359949 (= e!3326627 call!383423)))

(declare-fun b!5359950 () Bool)

(assert (=> b!5359950 (= e!3326626 call!383423)))

(declare-fun b!5359951 () Bool)

(assert (=> b!5359951 (= e!3326632 call!383424)))

(assert (= (and d!1717547 (not res!2274464)) b!5359944))

(assert (= (and b!5359944 c!933379) b!5359947))

(assert (= (and b!5359944 (not c!933379)) b!5359946))

(assert (= (and b!5359947 res!2274465) b!5359951))

(assert (= (and b!5359946 c!933378) b!5359943))

(assert (= (and b!5359946 (not c!933378)) b!5359948))

(assert (= (and b!5359943 res!2274463) b!5359949))

(assert (= (and b!5359948 (not res!2274467)) b!5359945))

(assert (= (and b!5359945 res!2274466) b!5359950))

(assert (= (or b!5359949 b!5359950) bm!383419))

(assert (= (or b!5359943 b!5359945) bm!383420))

(assert (= (or b!5359951 bm!383419) bm!383418))

(declare-fun m!6388974 () Bool)

(assert (=> bm!383418 m!6388974))

(declare-fun m!6388976 () Bool)

(assert (=> b!5359947 m!6388976))

(declare-fun m!6388978 () Bool)

(assert (=> bm!383420 m!6388978))

(assert (=> start!564158 d!1717547))

(declare-fun b!5359962 () Bool)

(declare-fun res!2274473 () Bool)

(declare-fun e!3326638 () Bool)

(assert (=> b!5359962 (=> (not res!2274473) (not e!3326638))))

(declare-fun lt!2183805 () List!61488)

(declare-fun size!39779 (List!61488) Int)

(assert (=> b!5359962 (= res!2274473 (= (size!39779 lt!2183805) (+ (size!39779 Nil!61364) (size!39779 s!2326))))))

(declare-fun b!5359963 () Bool)

(assert (=> b!5359963 (= e!3326638 (or (not (= s!2326 Nil!61364)) (= lt!2183805 Nil!61364)))))

(declare-fun b!5359961 () Bool)

(declare-fun e!3326637 () List!61488)

(assert (=> b!5359961 (= e!3326637 (Cons!61364 (h!67812 Nil!61364) (++!13368 (t!374709 Nil!61364) s!2326)))))

(declare-fun d!1717549 () Bool)

(assert (=> d!1717549 e!3326638))

(declare-fun res!2274472 () Bool)

(assert (=> d!1717549 (=> (not res!2274472) (not e!3326638))))

(declare-fun content!10951 (List!61488) (InoxSet C!30396))

(assert (=> d!1717549 (= res!2274472 (= (content!10951 lt!2183805) ((_ map or) (content!10951 Nil!61364) (content!10951 s!2326))))))

(assert (=> d!1717549 (= lt!2183805 e!3326637)))

(declare-fun c!933382 () Bool)

(assert (=> d!1717549 (= c!933382 ((_ is Nil!61364) Nil!61364))))

(assert (=> d!1717549 (= (++!13368 Nil!61364 s!2326) lt!2183805)))

(declare-fun b!5359960 () Bool)

(assert (=> b!5359960 (= e!3326637 s!2326)))

(assert (= (and d!1717549 c!933382) b!5359960))

(assert (= (and d!1717549 (not c!933382)) b!5359961))

(assert (= (and d!1717549 res!2274472) b!5359962))

(assert (= (and b!5359962 res!2274473) b!5359963))

(declare-fun m!6388980 () Bool)

(assert (=> b!5359962 m!6388980))

(declare-fun m!6388982 () Bool)

(assert (=> b!5359962 m!6388982))

(declare-fun m!6388984 () Bool)

(assert (=> b!5359962 m!6388984))

(declare-fun m!6388986 () Bool)

(assert (=> b!5359961 m!6388986))

(declare-fun m!6388988 () Bool)

(assert (=> d!1717549 m!6388988))

(declare-fun m!6388990 () Bool)

(assert (=> d!1717549 m!6388990))

(declare-fun m!6388992 () Bool)

(assert (=> d!1717549 m!6388992))

(assert (=> b!5359215 d!1717549))

(declare-fun c!933387 () Bool)

(declare-fun call!383429 () (InoxSet Context!8894))

(declare-fun call!383428 () List!61489)

(declare-fun bm!383421 () Bool)

(declare-fun c!933386 () Bool)

(declare-fun c!933384 () Bool)

(assert (=> bm!383421 (= call!383429 (derivationStepZipperDown!511 (ite c!933386 (regTwo!30639 (reg!15392 (regOne!30638 r!7292))) (ite c!933387 (regTwo!30638 (reg!15392 (regOne!30638 r!7292))) (ite c!933384 (regOne!30638 (reg!15392 (regOne!30638 r!7292))) (reg!15392 (reg!15392 (regOne!30638 r!7292)))))) (ite (or c!933386 c!933387) lt!2183699 (Context!8895 call!383428)) (h!67812 s!2326)))))

(declare-fun b!5359965 () Bool)

(declare-fun e!3326643 () Bool)

(assert (=> b!5359965 (= e!3326643 (nullable!5232 (regOne!30638 (reg!15392 (regOne!30638 r!7292)))))))

(declare-fun b!5359966 () Bool)

(declare-fun e!3326644 () (InoxSet Context!8894))

(assert (=> b!5359966 (= e!3326644 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383422 () Bool)

(declare-fun call!383430 () List!61489)

(assert (=> bm!383422 (= call!383428 call!383430)))

(declare-fun bm!383423 () Bool)

(declare-fun call!383426 () (InoxSet Context!8894))

(declare-fun call!383431 () (InoxSet Context!8894))

(assert (=> bm!383423 (= call!383426 call!383431)))

(declare-fun b!5359967 () Bool)

(declare-fun e!3326640 () (InoxSet Context!8894))

(assert (=> b!5359967 (= e!3326640 call!383426)))

(declare-fun b!5359968 () Bool)

(declare-fun e!3326639 () (InoxSet Context!8894))

(assert (=> b!5359968 (= e!3326639 (store ((as const (Array Context!8894 Bool)) false) lt!2183699 true))))

(declare-fun b!5359964 () Bool)

(declare-fun e!3326642 () (InoxSet Context!8894))

(declare-fun call!383427 () (InoxSet Context!8894))

(assert (=> b!5359964 (= e!3326642 ((_ map or) call!383427 call!383429))))

(declare-fun d!1717551 () Bool)

(declare-fun c!933385 () Bool)

(assert (=> d!1717551 (= c!933385 (and ((_ is ElementMatch!15063) (reg!15392 (regOne!30638 r!7292))) (= (c!933177 (reg!15392 (regOne!30638 r!7292))) (h!67812 s!2326))))))

(assert (=> d!1717551 (= (derivationStepZipperDown!511 (reg!15392 (regOne!30638 r!7292)) lt!2183699 (h!67812 s!2326)) e!3326639)))

(declare-fun b!5359969 () Bool)

(declare-fun e!3326641 () (InoxSet Context!8894))

(assert (=> b!5359969 (= e!3326641 ((_ map or) call!383427 call!383431))))

(declare-fun bm!383424 () Bool)

(assert (=> bm!383424 (= call!383430 ($colon$colon!1437 (exprs!4947 lt!2183699) (ite (or c!933387 c!933384) (regTwo!30638 (reg!15392 (regOne!30638 r!7292))) (reg!15392 (regOne!30638 r!7292)))))))

(declare-fun bm!383425 () Bool)

(assert (=> bm!383425 (= call!383427 (derivationStepZipperDown!511 (ite c!933386 (regOne!30639 (reg!15392 (regOne!30638 r!7292))) (regOne!30638 (reg!15392 (regOne!30638 r!7292)))) (ite c!933386 lt!2183699 (Context!8895 call!383430)) (h!67812 s!2326)))))

(declare-fun b!5359970 () Bool)

(assert (=> b!5359970 (= e!3326644 call!383426)))

(declare-fun b!5359971 () Bool)

(assert (=> b!5359971 (= c!933387 e!3326643)))

(declare-fun res!2274474 () Bool)

(assert (=> b!5359971 (=> (not res!2274474) (not e!3326643))))

(assert (=> b!5359971 (= res!2274474 ((_ is Concat!23908) (reg!15392 (regOne!30638 r!7292))))))

(assert (=> b!5359971 (= e!3326642 e!3326641)))

(declare-fun b!5359972 () Bool)

(declare-fun c!933383 () Bool)

(assert (=> b!5359972 (= c!933383 ((_ is Star!15063) (reg!15392 (regOne!30638 r!7292))))))

(assert (=> b!5359972 (= e!3326640 e!3326644)))

(declare-fun b!5359973 () Bool)

(assert (=> b!5359973 (= e!3326639 e!3326642)))

(assert (=> b!5359973 (= c!933386 ((_ is Union!15063) (reg!15392 (regOne!30638 r!7292))))))

(declare-fun bm!383426 () Bool)

(assert (=> bm!383426 (= call!383431 call!383429)))

(declare-fun b!5359974 () Bool)

(assert (=> b!5359974 (= e!3326641 e!3326640)))

(assert (=> b!5359974 (= c!933384 ((_ is Concat!23908) (reg!15392 (regOne!30638 r!7292))))))

(assert (= (and d!1717551 c!933385) b!5359968))

(assert (= (and d!1717551 (not c!933385)) b!5359973))

(assert (= (and b!5359973 c!933386) b!5359964))

(assert (= (and b!5359973 (not c!933386)) b!5359971))

(assert (= (and b!5359971 res!2274474) b!5359965))

(assert (= (and b!5359971 c!933387) b!5359969))

(assert (= (and b!5359971 (not c!933387)) b!5359974))

(assert (= (and b!5359974 c!933384) b!5359967))

(assert (= (and b!5359974 (not c!933384)) b!5359972))

(assert (= (and b!5359972 c!933383) b!5359970))

(assert (= (and b!5359972 (not c!933383)) b!5359966))

(assert (= (or b!5359967 b!5359970) bm!383422))

(assert (= (or b!5359967 b!5359970) bm!383423))

(assert (= (or b!5359969 bm!383422) bm!383424))

(assert (= (or b!5359969 bm!383423) bm!383426))

(assert (= (or b!5359964 bm!383426) bm!383421))

(assert (= (or b!5359964 b!5359969) bm!383425))

(declare-fun m!6388994 () Bool)

(assert (=> b!5359965 m!6388994))

(assert (=> b!5359968 m!6388326))

(declare-fun m!6388996 () Bool)

(assert (=> bm!383424 m!6388996))

(declare-fun m!6388998 () Bool)

(assert (=> bm!383421 m!6388998))

(declare-fun m!6389000 () Bool)

(assert (=> bm!383425 m!6389000))

(assert (=> b!5359199 d!1717551))

(declare-fun d!1717553 () Bool)

(declare-fun c!933388 () Bool)

(assert (=> d!1717553 (= c!933388 (isEmpty!33339 s!2326))))

(declare-fun e!3326645 () Bool)

(assert (=> d!1717553 (= (matchZipper!1307 lt!2183698 s!2326) e!3326645)))

(declare-fun b!5359975 () Bool)

(assert (=> b!5359975 (= e!3326645 (nullableZipper!1387 lt!2183698))))

(declare-fun b!5359976 () Bool)

(assert (=> b!5359976 (= e!3326645 (matchZipper!1307 (derivationStepZipper!1302 lt!2183698 (head!11495 s!2326)) (tail!10592 s!2326)))))

(assert (= (and d!1717553 c!933388) b!5359975))

(assert (= (and d!1717553 (not c!933388)) b!5359976))

(assert (=> d!1717553 m!6388528))

(declare-fun m!6389002 () Bool)

(assert (=> b!5359975 m!6389002))

(assert (=> b!5359976 m!6388600))

(assert (=> b!5359976 m!6388600))

(declare-fun m!6389004 () Bool)

(assert (=> b!5359976 m!6389004))

(assert (=> b!5359976 m!6388596))

(assert (=> b!5359976 m!6389004))

(assert (=> b!5359976 m!6388596))

(declare-fun m!6389006 () Bool)

(assert (=> b!5359976 m!6389006))

(assert (=> b!5359219 d!1717553))

(declare-fun d!1717555 () Bool)

(declare-fun c!933389 () Bool)

(assert (=> d!1717555 (= c!933389 (isEmpty!33339 (t!374709 s!2326)))))

(declare-fun e!3326646 () Bool)

(assert (=> d!1717555 (= (matchZipper!1307 lt!2183700 (t!374709 s!2326)) e!3326646)))

(declare-fun b!5359977 () Bool)

(assert (=> b!5359977 (= e!3326646 (nullableZipper!1387 lt!2183700))))

(declare-fun b!5359978 () Bool)

(assert (=> b!5359978 (= e!3326646 (matchZipper!1307 (derivationStepZipper!1302 lt!2183700 (head!11495 (t!374709 s!2326))) (tail!10592 (t!374709 s!2326))))))

(assert (= (and d!1717555 c!933389) b!5359977))

(assert (= (and d!1717555 (not c!933389)) b!5359978))

(assert (=> d!1717555 m!6388620))

(declare-fun m!6389008 () Bool)

(assert (=> b!5359977 m!6389008))

(assert (=> b!5359978 m!6388624))

(assert (=> b!5359978 m!6388624))

(declare-fun m!6389010 () Bool)

(assert (=> b!5359978 m!6389010))

(assert (=> b!5359978 m!6388628))

(assert (=> b!5359978 m!6389010))

(assert (=> b!5359978 m!6388628))

(declare-fun m!6389012 () Bool)

(assert (=> b!5359978 m!6389012))

(assert (=> b!5359219 d!1717555))

(declare-fun c!933390 () Bool)

(declare-fun bm!383427 () Bool)

(declare-fun c!933391 () Bool)

(declare-fun call!383433 () Bool)

(assert (=> bm!383427 (= call!383433 (validRegex!6799 (ite c!933391 (reg!15392 (regTwo!30638 r!7292)) (ite c!933390 (regTwo!30639 (regTwo!30638 r!7292)) (regTwo!30638 (regTwo!30638 r!7292))))))))

(declare-fun d!1717557 () Bool)

(declare-fun res!2274476 () Bool)

(declare-fun e!3326651 () Bool)

(assert (=> d!1717557 (=> res!2274476 e!3326651)))

(assert (=> d!1717557 (= res!2274476 ((_ is ElementMatch!15063) (regTwo!30638 r!7292)))))

(assert (=> d!1717557 (= (validRegex!6799 (regTwo!30638 r!7292)) e!3326651)))

(declare-fun bm!383428 () Bool)

(declare-fun call!383432 () Bool)

(assert (=> bm!383428 (= call!383432 call!383433)))

(declare-fun b!5359979 () Bool)

(declare-fun res!2274475 () Bool)

(declare-fun e!3326648 () Bool)

(assert (=> b!5359979 (=> (not res!2274475) (not e!3326648))))

(declare-fun call!383434 () Bool)

(assert (=> b!5359979 (= res!2274475 call!383434)))

(declare-fun e!3326649 () Bool)

(assert (=> b!5359979 (= e!3326649 e!3326648)))

(declare-fun b!5359980 () Bool)

(declare-fun e!3326652 () Bool)

(assert (=> b!5359980 (= e!3326651 e!3326652)))

(assert (=> b!5359980 (= c!933391 ((_ is Star!15063) (regTwo!30638 r!7292)))))

(declare-fun b!5359981 () Bool)

(declare-fun e!3326650 () Bool)

(declare-fun e!3326647 () Bool)

(assert (=> b!5359981 (= e!3326650 e!3326647)))

(declare-fun res!2274478 () Bool)

(assert (=> b!5359981 (=> (not res!2274478) (not e!3326647))))

(assert (=> b!5359981 (= res!2274478 call!383434)))

(declare-fun b!5359982 () Bool)

(assert (=> b!5359982 (= e!3326652 e!3326649)))

(assert (=> b!5359982 (= c!933390 ((_ is Union!15063) (regTwo!30638 r!7292)))))

(declare-fun b!5359983 () Bool)

(declare-fun e!3326653 () Bool)

(assert (=> b!5359983 (= e!3326652 e!3326653)))

(declare-fun res!2274477 () Bool)

(assert (=> b!5359983 (= res!2274477 (not (nullable!5232 (reg!15392 (regTwo!30638 r!7292)))))))

(assert (=> b!5359983 (=> (not res!2274477) (not e!3326653))))

(declare-fun bm!383429 () Bool)

(assert (=> bm!383429 (= call!383434 (validRegex!6799 (ite c!933390 (regOne!30639 (regTwo!30638 r!7292)) (regOne!30638 (regTwo!30638 r!7292)))))))

(declare-fun b!5359984 () Bool)

(declare-fun res!2274479 () Bool)

(assert (=> b!5359984 (=> res!2274479 e!3326650)))

(assert (=> b!5359984 (= res!2274479 (not ((_ is Concat!23908) (regTwo!30638 r!7292))))))

(assert (=> b!5359984 (= e!3326649 e!3326650)))

(declare-fun b!5359985 () Bool)

(assert (=> b!5359985 (= e!3326648 call!383432)))

(declare-fun b!5359986 () Bool)

(assert (=> b!5359986 (= e!3326647 call!383432)))

(declare-fun b!5359987 () Bool)

(assert (=> b!5359987 (= e!3326653 call!383433)))

(assert (= (and d!1717557 (not res!2274476)) b!5359980))

(assert (= (and b!5359980 c!933391) b!5359983))

(assert (= (and b!5359980 (not c!933391)) b!5359982))

(assert (= (and b!5359983 res!2274477) b!5359987))

(assert (= (and b!5359982 c!933390) b!5359979))

(assert (= (and b!5359982 (not c!933390)) b!5359984))

(assert (= (and b!5359979 res!2274475) b!5359985))

(assert (= (and b!5359984 (not res!2274479)) b!5359981))

(assert (= (and b!5359981 res!2274478) b!5359986))

(assert (= (or b!5359985 b!5359986) bm!383428))

(assert (= (or b!5359979 b!5359981) bm!383429))

(assert (= (or b!5359987 bm!383428) bm!383427))

(declare-fun m!6389014 () Bool)

(assert (=> bm!383427 m!6389014))

(declare-fun m!6389016 () Bool)

(assert (=> b!5359983 m!6389016))

(declare-fun m!6389018 () Bool)

(assert (=> bm!383429 m!6389018))

(assert (=> b!5359198 d!1717557))

(declare-fun d!1717559 () Bool)

(declare-fun lt!2183806 () Regex!15063)

(assert (=> d!1717559 (validRegex!6799 lt!2183806)))

(assert (=> d!1717559 (= lt!2183806 (generalisedUnion!992 (unfocusZipperList!505 (Cons!61366 lt!2183695 Nil!61366))))))

(assert (=> d!1717559 (= (unfocusZipper!805 (Cons!61366 lt!2183695 Nil!61366)) lt!2183806)))

(declare-fun bs!1241689 () Bool)

(assert (= bs!1241689 d!1717559))

(declare-fun m!6389020 () Bool)

(assert (=> bs!1241689 m!6389020))

(declare-fun m!6389022 () Bool)

(assert (=> bs!1241689 m!6389022))

(assert (=> bs!1241689 m!6389022))

(declare-fun m!6389024 () Bool)

(assert (=> bs!1241689 m!6389024))

(assert (=> b!5359197 d!1717559))

(declare-fun bs!1241690 () Bool)

(declare-fun d!1717561 () Bool)

(assert (= bs!1241690 (and d!1717561 d!1717363)))

(declare-fun lambda!275934 () Int)

(assert (=> bs!1241690 (= lambda!275934 lambda!275882)))

(declare-fun bs!1241691 () Bool)

(assert (= bs!1241691 (and d!1717561 d!1717413)))

(assert (=> bs!1241691 (= lambda!275934 lambda!275915)))

(assert (=> d!1717561 (= (inv!80904 setElem!34681) (forall!14475 (exprs!4947 setElem!34681) lambda!275934))))

(declare-fun bs!1241692 () Bool)

(assert (= bs!1241692 d!1717561))

(declare-fun m!6389026 () Bool)

(assert (=> bs!1241692 m!6389026))

(assert (=> setNonEmpty!34681 d!1717561))

(declare-fun b!5359988 () Bool)

(declare-fun e!3326660 () Bool)

(declare-fun e!3326657 () Bool)

(assert (=> b!5359988 (= e!3326660 e!3326657)))

(declare-fun res!2274487 () Bool)

(assert (=> b!5359988 (=> (not res!2274487) (not e!3326657))))

(declare-fun lt!2183807 () Bool)

(assert (=> b!5359988 (= res!2274487 (not lt!2183807))))

(declare-fun b!5359989 () Bool)

(declare-fun e!3326654 () Bool)

(assert (=> b!5359989 (= e!3326654 (not (= (head!11495 s!2326) (c!933177 lt!2183679))))))

(declare-fun b!5359990 () Bool)

(declare-fun e!3326658 () Bool)

(declare-fun e!3326655 () Bool)

(assert (=> b!5359990 (= e!3326658 e!3326655)))

(declare-fun c!933394 () Bool)

(assert (=> b!5359990 (= c!933394 ((_ is EmptyLang!15063) lt!2183679))))

(declare-fun d!1717563 () Bool)

(assert (=> d!1717563 e!3326658))

(declare-fun c!933392 () Bool)

(assert (=> d!1717563 (= c!933392 ((_ is EmptyExpr!15063) lt!2183679))))

(declare-fun e!3326656 () Bool)

(assert (=> d!1717563 (= lt!2183807 e!3326656)))

(declare-fun c!933393 () Bool)

(assert (=> d!1717563 (= c!933393 (isEmpty!33339 s!2326))))

(assert (=> d!1717563 (validRegex!6799 lt!2183679)))

(assert (=> d!1717563 (= (matchR!7248 lt!2183679 s!2326) lt!2183807)))

(declare-fun b!5359991 () Bool)

(assert (=> b!5359991 (= e!3326655 (not lt!2183807))))

(declare-fun b!5359992 () Bool)

(declare-fun res!2274482 () Bool)

(declare-fun e!3326659 () Bool)

(assert (=> b!5359992 (=> (not res!2274482) (not e!3326659))))

(assert (=> b!5359992 (= res!2274482 (isEmpty!33339 (tail!10592 s!2326)))))

(declare-fun b!5359993 () Bool)

(declare-fun call!383435 () Bool)

(assert (=> b!5359993 (= e!3326658 (= lt!2183807 call!383435))))

(declare-fun b!5359994 () Bool)

(assert (=> b!5359994 (= e!3326659 (= (head!11495 s!2326) (c!933177 lt!2183679)))))

(declare-fun b!5359995 () Bool)

(assert (=> b!5359995 (= e!3326656 (matchR!7248 (derivativeStep!4209 lt!2183679 (head!11495 s!2326)) (tail!10592 s!2326)))))

(declare-fun bm!383430 () Bool)

(assert (=> bm!383430 (= call!383435 (isEmpty!33339 s!2326))))

(declare-fun b!5359996 () Bool)

(assert (=> b!5359996 (= e!3326656 (nullable!5232 lt!2183679))))

(declare-fun b!5359997 () Bool)

(declare-fun res!2274483 () Bool)

(assert (=> b!5359997 (=> res!2274483 e!3326654)))

(assert (=> b!5359997 (= res!2274483 (not (isEmpty!33339 (tail!10592 s!2326))))))

(declare-fun b!5359998 () Bool)

(declare-fun res!2274486 () Bool)

(assert (=> b!5359998 (=> res!2274486 e!3326660)))

(assert (=> b!5359998 (= res!2274486 (not ((_ is ElementMatch!15063) lt!2183679)))))

(assert (=> b!5359998 (= e!3326655 e!3326660)))

(declare-fun b!5359999 () Bool)

(declare-fun res!2274484 () Bool)

(assert (=> b!5359999 (=> (not res!2274484) (not e!3326659))))

(assert (=> b!5359999 (= res!2274484 (not call!383435))))

(declare-fun b!5360000 () Bool)

(assert (=> b!5360000 (= e!3326657 e!3326654)))

(declare-fun res!2274480 () Bool)

(assert (=> b!5360000 (=> res!2274480 e!3326654)))

(assert (=> b!5360000 (= res!2274480 call!383435)))

(declare-fun b!5360001 () Bool)

(declare-fun res!2274485 () Bool)

(assert (=> b!5360001 (=> res!2274485 e!3326660)))

(assert (=> b!5360001 (= res!2274485 e!3326659)))

(declare-fun res!2274481 () Bool)

(assert (=> b!5360001 (=> (not res!2274481) (not e!3326659))))

(assert (=> b!5360001 (= res!2274481 lt!2183807)))

(assert (= (and d!1717563 c!933393) b!5359996))

(assert (= (and d!1717563 (not c!933393)) b!5359995))

(assert (= (and d!1717563 c!933392) b!5359993))

(assert (= (and d!1717563 (not c!933392)) b!5359990))

(assert (= (and b!5359990 c!933394) b!5359991))

(assert (= (and b!5359990 (not c!933394)) b!5359998))

(assert (= (and b!5359998 (not res!2274486)) b!5360001))

(assert (= (and b!5360001 res!2274481) b!5359999))

(assert (= (and b!5359999 res!2274484) b!5359992))

(assert (= (and b!5359992 res!2274482) b!5359994))

(assert (= (and b!5360001 (not res!2274485)) b!5359988))

(assert (= (and b!5359988 res!2274487) b!5360000))

(assert (= (and b!5360000 (not res!2274480)) b!5359997))

(assert (= (and b!5359997 (not res!2274483)) b!5359989))

(assert (= (or b!5359993 b!5359999 b!5360000) bm!383430))

(declare-fun m!6389028 () Bool)

(assert (=> b!5359996 m!6389028))

(assert (=> b!5359997 m!6388596))

(assert (=> b!5359997 m!6388596))

(assert (=> b!5359997 m!6388598))

(assert (=> d!1717563 m!6388528))

(declare-fun m!6389030 () Bool)

(assert (=> d!1717563 m!6389030))

(assert (=> b!5359995 m!6388600))

(assert (=> b!5359995 m!6388600))

(declare-fun m!6389032 () Bool)

(assert (=> b!5359995 m!6389032))

(assert (=> b!5359995 m!6388596))

(assert (=> b!5359995 m!6389032))

(assert (=> b!5359995 m!6388596))

(declare-fun m!6389034 () Bool)

(assert (=> b!5359995 m!6389034))

(assert (=> b!5359992 m!6388596))

(assert (=> b!5359992 m!6388596))

(assert (=> b!5359992 m!6388598))

(assert (=> bm!383430 m!6388528))

(assert (=> b!5359994 m!6388600))

(assert (=> b!5359989 m!6388600))

(assert (=> b!5359220 d!1717563))

(declare-fun bs!1241693 () Bool)

(declare-fun b!5360008 () Bool)

(assert (= bs!1241693 (and b!5360008 b!5359196)))

(declare-fun lambda!275935 () Int)

(assert (=> bs!1241693 (not (= lambda!275935 lambda!275869))))

(assert (=> bs!1241693 (not (= lambda!275935 lambda!275870))))

(declare-fun bs!1241694 () Bool)

(assert (= bs!1241694 (and b!5360008 d!1717541)))

(assert (=> bs!1241694 (not (= lambda!275935 lambda!275931))))

(declare-fun bs!1241695 () Bool)

(assert (= bs!1241695 (and b!5360008 d!1717481)))

(assert (=> bs!1241695 (not (= lambda!275935 lambda!275920))))

(declare-fun bs!1241696 () Bool)

(assert (= bs!1241696 (and b!5360008 d!1717523)))

(assert (=> bs!1241696 (not (= lambda!275935 lambda!275929))))

(declare-fun bs!1241697 () Bool)

(assert (= bs!1241697 (and b!5360008 b!5359217)))

(assert (=> bs!1241697 (not (= lambda!275935 lambda!275873))))

(declare-fun bs!1241698 () Bool)

(assert (= bs!1241698 (and b!5360008 d!1717543)))

(assert (=> bs!1241698 (not (= lambda!275935 lambda!275933))))

(assert (=> bs!1241698 (not (= lambda!275935 lambda!275932))))

(declare-fun bs!1241699 () Bool)

(assert (= bs!1241699 (and b!5360008 b!5359444)))

(assert (=> bs!1241699 (not (= lambda!275935 lambda!275897))))

(assert (=> bs!1241697 (not (= lambda!275935 lambda!275872))))

(declare-fun bs!1241700 () Bool)

(assert (= bs!1241700 (and b!5360008 b!5359450)))

(assert (=> bs!1241700 (= (and (= (reg!15392 lt!2183679) (reg!15392 r!7292)) (= lt!2183679 r!7292)) (= lambda!275935 lambda!275896))))

(assert (=> bs!1241696 (not (= lambda!275935 lambda!275930))))

(assert (=> b!5360008 true))

(assert (=> b!5360008 true))

(declare-fun bs!1241701 () Bool)

(declare-fun b!5360002 () Bool)

(assert (= bs!1241701 (and b!5360002 b!5359196)))

(declare-fun lambda!275936 () Int)

(assert (=> bs!1241701 (not (= lambda!275936 lambda!275869))))

(assert (=> bs!1241701 (= (and (= (regOne!30638 lt!2183679) (regOne!30638 r!7292)) (= (regTwo!30638 lt!2183679) (regTwo!30638 r!7292))) (= lambda!275936 lambda!275870))))

(declare-fun bs!1241702 () Bool)

(assert (= bs!1241702 (and b!5360002 d!1717541)))

(assert (=> bs!1241702 (not (= lambda!275936 lambda!275931))))

(declare-fun bs!1241703 () Bool)

(assert (= bs!1241703 (and b!5360002 d!1717481)))

(assert (=> bs!1241703 (not (= lambda!275936 lambda!275920))))

(declare-fun bs!1241704 () Bool)

(assert (= bs!1241704 (and b!5360002 d!1717523)))

(assert (=> bs!1241704 (not (= lambda!275936 lambda!275929))))

(declare-fun bs!1241705 () Bool)

(assert (= bs!1241705 (and b!5360002 b!5360008)))

(assert (=> bs!1241705 (not (= lambda!275936 lambda!275935))))

(declare-fun bs!1241706 () Bool)

(assert (= bs!1241706 (and b!5360002 b!5359217)))

(assert (=> bs!1241706 (= (and (= (regOne!30638 lt!2183679) lt!2183684) (= (regTwo!30638 lt!2183679) (regTwo!30638 r!7292))) (= lambda!275936 lambda!275873))))

(declare-fun bs!1241707 () Bool)

(assert (= bs!1241707 (and b!5360002 d!1717543)))

(assert (=> bs!1241707 (= (and (= (regOne!30638 lt!2183679) (regOne!30638 r!7292)) (= (regTwo!30638 lt!2183679) (regTwo!30638 r!7292))) (= lambda!275936 lambda!275933))))

(assert (=> bs!1241707 (not (= lambda!275936 lambda!275932))))

(declare-fun bs!1241708 () Bool)

(assert (= bs!1241708 (and b!5360002 b!5359444)))

(assert (=> bs!1241708 (= (and (= (regOne!30638 lt!2183679) (regOne!30638 r!7292)) (= (regTwo!30638 lt!2183679) (regTwo!30638 r!7292))) (= lambda!275936 lambda!275897))))

(assert (=> bs!1241706 (not (= lambda!275936 lambda!275872))))

(declare-fun bs!1241709 () Bool)

(assert (= bs!1241709 (and b!5360002 b!5359450)))

(assert (=> bs!1241709 (not (= lambda!275936 lambda!275896))))

(assert (=> bs!1241704 (= (and (= (regOne!30638 lt!2183679) lt!2183684) (= (regTwo!30638 lt!2183679) (regTwo!30638 r!7292))) (= lambda!275936 lambda!275930))))

(assert (=> b!5360002 true))

(assert (=> b!5360002 true))

(declare-fun e!3326667 () Bool)

(declare-fun call!383436 () Bool)

(assert (=> b!5360002 (= e!3326667 call!383436)))

(declare-fun b!5360003 () Bool)

(declare-fun e!3326662 () Bool)

(declare-fun call!383437 () Bool)

(assert (=> b!5360003 (= e!3326662 call!383437)))

(declare-fun b!5360005 () Bool)

(declare-fun c!933398 () Bool)

(assert (=> b!5360005 (= c!933398 ((_ is ElementMatch!15063) lt!2183679))))

(declare-fun e!3326664 () Bool)

(declare-fun e!3326665 () Bool)

(assert (=> b!5360005 (= e!3326664 e!3326665)))

(declare-fun bm!383431 () Bool)

(assert (=> bm!383431 (= call!383437 (isEmpty!33339 s!2326))))

(declare-fun b!5360006 () Bool)

(assert (=> b!5360006 (= e!3326665 (= s!2326 (Cons!61364 (c!933177 lt!2183679) Nil!61364)))))

(declare-fun b!5360007 () Bool)

(declare-fun res!2274490 () Bool)

(declare-fun e!3326663 () Bool)

(assert (=> b!5360007 (=> res!2274490 e!3326663)))

(assert (=> b!5360007 (= res!2274490 call!383437)))

(assert (=> b!5360007 (= e!3326667 e!3326663)))

(assert (=> b!5360008 (= e!3326663 call!383436)))

(declare-fun b!5360009 () Bool)

(declare-fun e!3326661 () Bool)

(assert (=> b!5360009 (= e!3326661 e!3326667)))

(declare-fun c!933396 () Bool)

(assert (=> b!5360009 (= c!933396 ((_ is Star!15063) lt!2183679))))

(declare-fun b!5360010 () Bool)

(declare-fun c!933397 () Bool)

(assert (=> b!5360010 (= c!933397 ((_ is Union!15063) lt!2183679))))

(assert (=> b!5360010 (= e!3326665 e!3326661)))

(declare-fun b!5360011 () Bool)

(declare-fun e!3326666 () Bool)

(assert (=> b!5360011 (= e!3326666 (matchRSpec!2166 (regTwo!30639 lt!2183679) s!2326))))

(declare-fun b!5360004 () Bool)

(assert (=> b!5360004 (= e!3326661 e!3326666)))

(declare-fun res!2274488 () Bool)

(assert (=> b!5360004 (= res!2274488 (matchRSpec!2166 (regOne!30639 lt!2183679) s!2326))))

(assert (=> b!5360004 (=> res!2274488 e!3326666)))

(declare-fun d!1717565 () Bool)

(declare-fun c!933395 () Bool)

(assert (=> d!1717565 (= c!933395 ((_ is EmptyExpr!15063) lt!2183679))))

(assert (=> d!1717565 (= (matchRSpec!2166 lt!2183679 s!2326) e!3326662)))

(declare-fun b!5360012 () Bool)

(assert (=> b!5360012 (= e!3326662 e!3326664)))

(declare-fun res!2274489 () Bool)

(assert (=> b!5360012 (= res!2274489 (not ((_ is EmptyLang!15063) lt!2183679)))))

(assert (=> b!5360012 (=> (not res!2274489) (not e!3326664))))

(declare-fun bm!383432 () Bool)

(assert (=> bm!383432 (= call!383436 (Exists!2244 (ite c!933396 lambda!275935 lambda!275936)))))

(assert (= (and d!1717565 c!933395) b!5360003))

(assert (= (and d!1717565 (not c!933395)) b!5360012))

(assert (= (and b!5360012 res!2274489) b!5360005))

(assert (= (and b!5360005 c!933398) b!5360006))

(assert (= (and b!5360005 (not c!933398)) b!5360010))

(assert (= (and b!5360010 c!933397) b!5360004))

(assert (= (and b!5360010 (not c!933397)) b!5360009))

(assert (= (and b!5360004 (not res!2274488)) b!5360011))

(assert (= (and b!5360009 c!933396) b!5360007))

(assert (= (and b!5360009 (not c!933396)) b!5360002))

(assert (= (and b!5360007 (not res!2274490)) b!5360008))

(assert (= (or b!5360008 b!5360002) bm!383432))

(assert (= (or b!5360003 b!5360007) bm!383431))

(assert (=> bm!383431 m!6388528))

(declare-fun m!6389036 () Bool)

(assert (=> b!5360011 m!6389036))

(declare-fun m!6389038 () Bool)

(assert (=> b!5360004 m!6389038))

(declare-fun m!6389040 () Bool)

(assert (=> bm!383432 m!6389040))

(assert (=> b!5359220 d!1717565))

(declare-fun d!1717567 () Bool)

(assert (=> d!1717567 (= (matchR!7248 lt!2183679 s!2326) (matchRSpec!2166 lt!2183679 s!2326))))

(declare-fun lt!2183808 () Unit!153770)

(assert (=> d!1717567 (= lt!2183808 (choose!40226 lt!2183679 s!2326))))

(assert (=> d!1717567 (validRegex!6799 lt!2183679)))

(assert (=> d!1717567 (= (mainMatchTheorem!2166 lt!2183679 s!2326) lt!2183808)))

(declare-fun bs!1241710 () Bool)

(assert (= bs!1241710 d!1717567))

(assert (=> bs!1241710 m!6388426))

(assert (=> bs!1241710 m!6388428))

(declare-fun m!6389042 () Bool)

(assert (=> bs!1241710 m!6389042))

(assert (=> bs!1241710 m!6389030))

(assert (=> b!5359220 d!1717567))

(declare-fun d!1717569 () Bool)

(declare-fun lt!2183809 () Regex!15063)

(assert (=> d!1717569 (validRegex!6799 lt!2183809)))

(assert (=> d!1717569 (= lt!2183809 (generalisedUnion!992 (unfocusZipperList!505 zl!343)))))

(assert (=> d!1717569 (= (unfocusZipper!805 zl!343) lt!2183809)))

(declare-fun bs!1241711 () Bool)

(assert (= bs!1241711 d!1717569))

(declare-fun m!6389044 () Bool)

(assert (=> bs!1241711 m!6389044))

(assert (=> bs!1241711 m!6388338))

(assert (=> bs!1241711 m!6388338))

(assert (=> bs!1241711 m!6388340))

(assert (=> b!5359223 d!1717569))

(declare-fun d!1717571 () Bool)

(declare-fun e!3326670 () Bool)

(assert (=> d!1717571 e!3326670))

(declare-fun res!2274493 () Bool)

(assert (=> d!1717571 (=> (not res!2274493) (not e!3326670))))

(declare-fun lt!2183812 () List!61490)

(declare-fun noDuplicate!1342 (List!61490) Bool)

(assert (=> d!1717571 (= res!2274493 (noDuplicate!1342 lt!2183812))))

(declare-fun choose!40232 ((InoxSet Context!8894)) List!61490)

(assert (=> d!1717571 (= lt!2183812 (choose!40232 z!1189))))

(assert (=> d!1717571 (= (toList!8847 z!1189) lt!2183812)))

(declare-fun b!5360015 () Bool)

(declare-fun content!10952 (List!61490) (InoxSet Context!8894))

(assert (=> b!5360015 (= e!3326670 (= (content!10952 lt!2183812) z!1189))))

(assert (= (and d!1717571 res!2274493) b!5360015))

(declare-fun m!6389046 () Bool)

(assert (=> d!1717571 m!6389046))

(declare-fun m!6389048 () Bool)

(assert (=> d!1717571 m!6389048))

(declare-fun m!6389050 () Bool)

(assert (=> b!5360015 m!6389050))

(assert (=> b!5359222 d!1717571))

(declare-fun d!1717573 () Bool)

(declare-fun e!3326673 () Bool)

(assert (=> d!1717573 (= (matchZipper!1307 ((_ map or) lt!2183688 lt!2183703) (t!374709 s!2326)) e!3326673)))

(declare-fun res!2274496 () Bool)

(assert (=> d!1717573 (=> res!2274496 e!3326673)))

(assert (=> d!1717573 (= res!2274496 (matchZipper!1307 lt!2183688 (t!374709 s!2326)))))

(declare-fun lt!2183815 () Unit!153770)

(declare-fun choose!40233 ((InoxSet Context!8894) (InoxSet Context!8894) List!61488) Unit!153770)

(assert (=> d!1717573 (= lt!2183815 (choose!40233 lt!2183688 lt!2183703 (t!374709 s!2326)))))

(assert (=> d!1717573 (= (lemmaZipperConcatMatchesSameAsBothZippers!300 lt!2183688 lt!2183703 (t!374709 s!2326)) lt!2183815)))

(declare-fun b!5360018 () Bool)

(assert (=> b!5360018 (= e!3326673 (matchZipper!1307 lt!2183703 (t!374709 s!2326)))))

(assert (= (and d!1717573 (not res!2274496)) b!5360018))

(assert (=> d!1717573 m!6388384))

(assert (=> d!1717573 m!6388382))

(declare-fun m!6389052 () Bool)

(assert (=> d!1717573 m!6389052))

(assert (=> b!5360018 m!6388362))

(assert (=> b!5359206 d!1717573))

(declare-fun d!1717575 () Bool)

(declare-fun c!933399 () Bool)

(assert (=> d!1717575 (= c!933399 (isEmpty!33339 (t!374709 s!2326)))))

(declare-fun e!3326674 () Bool)

(assert (=> d!1717575 (= (matchZipper!1307 lt!2183688 (t!374709 s!2326)) e!3326674)))

(declare-fun b!5360019 () Bool)

(assert (=> b!5360019 (= e!3326674 (nullableZipper!1387 lt!2183688))))

(declare-fun b!5360020 () Bool)

(assert (=> b!5360020 (= e!3326674 (matchZipper!1307 (derivationStepZipper!1302 lt!2183688 (head!11495 (t!374709 s!2326))) (tail!10592 (t!374709 s!2326))))))

(assert (= (and d!1717575 c!933399) b!5360019))

(assert (= (and d!1717575 (not c!933399)) b!5360020))

(assert (=> d!1717575 m!6388620))

(declare-fun m!6389054 () Bool)

(assert (=> b!5360019 m!6389054))

(assert (=> b!5360020 m!6388624))

(assert (=> b!5360020 m!6388624))

(declare-fun m!6389056 () Bool)

(assert (=> b!5360020 m!6389056))

(assert (=> b!5360020 m!6388628))

(assert (=> b!5360020 m!6389056))

(assert (=> b!5360020 m!6388628))

(declare-fun m!6389058 () Bool)

(assert (=> b!5360020 m!6389058))

(assert (=> b!5359206 d!1717575))

(declare-fun d!1717577 () Bool)

(declare-fun c!933400 () Bool)

(assert (=> d!1717577 (= c!933400 (isEmpty!33339 (t!374709 s!2326)))))

(declare-fun e!3326675 () Bool)

(assert (=> d!1717577 (= (matchZipper!1307 ((_ map or) lt!2183688 lt!2183703) (t!374709 s!2326)) e!3326675)))

(declare-fun b!5360021 () Bool)

(assert (=> b!5360021 (= e!3326675 (nullableZipper!1387 ((_ map or) lt!2183688 lt!2183703)))))

(declare-fun b!5360022 () Bool)

(assert (=> b!5360022 (= e!3326675 (matchZipper!1307 (derivationStepZipper!1302 ((_ map or) lt!2183688 lt!2183703) (head!11495 (t!374709 s!2326))) (tail!10592 (t!374709 s!2326))))))

(assert (= (and d!1717577 c!933400) b!5360021))

(assert (= (and d!1717577 (not c!933400)) b!5360022))

(assert (=> d!1717577 m!6388620))

(declare-fun m!6389060 () Bool)

(assert (=> b!5360021 m!6389060))

(assert (=> b!5360022 m!6388624))

(assert (=> b!5360022 m!6388624))

(declare-fun m!6389062 () Bool)

(assert (=> b!5360022 m!6389062))

(assert (=> b!5360022 m!6388628))

(assert (=> b!5360022 m!6389062))

(assert (=> b!5360022 m!6388628))

(declare-fun m!6389064 () Bool)

(assert (=> b!5360022 m!6389064))

(assert (=> b!5359206 d!1717577))

(declare-fun bs!1241712 () Bool)

(declare-fun d!1717579 () Bool)

(assert (= bs!1241712 (and d!1717579 d!1717363)))

(declare-fun lambda!275939 () Int)

(assert (=> bs!1241712 (= lambda!275939 lambda!275882)))

(declare-fun bs!1241713 () Bool)

(assert (= bs!1241713 (and d!1717579 d!1717413)))

(assert (=> bs!1241713 (= lambda!275939 lambda!275915)))

(declare-fun bs!1241714 () Bool)

(assert (= bs!1241714 (and d!1717579 d!1717561)))

(assert (=> bs!1241714 (= lambda!275939 lambda!275934)))

(declare-fun b!5360043 () Bool)

(declare-fun e!3326693 () Bool)

(declare-fun e!3326689 () Bool)

(assert (=> b!5360043 (= e!3326693 e!3326689)))

(declare-fun c!933412 () Bool)

(assert (=> b!5360043 (= c!933412 (isEmpty!33336 (tail!10591 (unfocusZipperList!505 zl!343))))))

(declare-fun b!5360044 () Bool)

(declare-fun e!3326691 () Regex!15063)

(assert (=> b!5360044 (= e!3326691 EmptyLang!15063)))

(declare-fun b!5360045 () Bool)

(declare-fun e!3326692 () Regex!15063)

(assert (=> b!5360045 (= e!3326692 (h!67813 (unfocusZipperList!505 zl!343)))))

(declare-fun b!5360046 () Bool)

(assert (=> b!5360046 (= e!3326692 e!3326691)))

(declare-fun c!933411 () Bool)

(assert (=> b!5360046 (= c!933411 ((_ is Cons!61365) (unfocusZipperList!505 zl!343)))))

(declare-fun b!5360047 () Bool)

(declare-fun lt!2183818 () Regex!15063)

(declare-fun isEmptyLang!931 (Regex!15063) Bool)

(assert (=> b!5360047 (= e!3326693 (isEmptyLang!931 lt!2183818))))

(declare-fun e!3326690 () Bool)

(assert (=> d!1717579 e!3326690))

(declare-fun res!2274501 () Bool)

(assert (=> d!1717579 (=> (not res!2274501) (not e!3326690))))

(assert (=> d!1717579 (= res!2274501 (validRegex!6799 lt!2183818))))

(assert (=> d!1717579 (= lt!2183818 e!3326692)))

(declare-fun c!933409 () Bool)

(declare-fun e!3326688 () Bool)

(assert (=> d!1717579 (= c!933409 e!3326688)))

(declare-fun res!2274502 () Bool)

(assert (=> d!1717579 (=> (not res!2274502) (not e!3326688))))

(assert (=> d!1717579 (= res!2274502 ((_ is Cons!61365) (unfocusZipperList!505 zl!343)))))

(assert (=> d!1717579 (forall!14475 (unfocusZipperList!505 zl!343) lambda!275939)))

(assert (=> d!1717579 (= (generalisedUnion!992 (unfocusZipperList!505 zl!343)) lt!2183818)))

(declare-fun b!5360048 () Bool)

(assert (=> b!5360048 (= e!3326688 (isEmpty!33336 (t!374710 (unfocusZipperList!505 zl!343))))))

(declare-fun b!5360049 () Bool)

(assert (=> b!5360049 (= e!3326691 (Union!15063 (h!67813 (unfocusZipperList!505 zl!343)) (generalisedUnion!992 (t!374710 (unfocusZipperList!505 zl!343)))))))

(declare-fun b!5360050 () Bool)

(assert (=> b!5360050 (= e!3326690 e!3326693)))

(declare-fun c!933410 () Bool)

(assert (=> b!5360050 (= c!933410 (isEmpty!33336 (unfocusZipperList!505 zl!343)))))

(declare-fun b!5360051 () Bool)

(declare-fun isUnion!363 (Regex!15063) Bool)

(assert (=> b!5360051 (= e!3326689 (isUnion!363 lt!2183818))))

(declare-fun b!5360052 () Bool)

(assert (=> b!5360052 (= e!3326689 (= lt!2183818 (head!11494 (unfocusZipperList!505 zl!343))))))

(assert (= (and d!1717579 res!2274502) b!5360048))

(assert (= (and d!1717579 c!933409) b!5360045))

(assert (= (and d!1717579 (not c!933409)) b!5360046))

(assert (= (and b!5360046 c!933411) b!5360049))

(assert (= (and b!5360046 (not c!933411)) b!5360044))

(assert (= (and d!1717579 res!2274501) b!5360050))

(assert (= (and b!5360050 c!933410) b!5360047))

(assert (= (and b!5360050 (not c!933410)) b!5360043))

(assert (= (and b!5360043 c!933412) b!5360052))

(assert (= (and b!5360043 (not c!933412)) b!5360051))

(assert (=> b!5360050 m!6388338))

(declare-fun m!6389066 () Bool)

(assert (=> b!5360050 m!6389066))

(assert (=> b!5360052 m!6388338))

(declare-fun m!6389068 () Bool)

(assert (=> b!5360052 m!6389068))

(declare-fun m!6389070 () Bool)

(assert (=> b!5360047 m!6389070))

(declare-fun m!6389072 () Bool)

(assert (=> b!5360048 m!6389072))

(declare-fun m!6389074 () Bool)

(assert (=> d!1717579 m!6389074))

(assert (=> d!1717579 m!6388338))

(declare-fun m!6389076 () Bool)

(assert (=> d!1717579 m!6389076))

(declare-fun m!6389078 () Bool)

(assert (=> b!5360051 m!6389078))

(declare-fun m!6389080 () Bool)

(assert (=> b!5360049 m!6389080))

(assert (=> b!5360043 m!6388338))

(declare-fun m!6389082 () Bool)

(assert (=> b!5360043 m!6389082))

(assert (=> b!5360043 m!6389082))

(declare-fun m!6389084 () Bool)

(assert (=> b!5360043 m!6389084))

(assert (=> b!5359205 d!1717579))

(declare-fun bs!1241715 () Bool)

(declare-fun d!1717581 () Bool)

(assert (= bs!1241715 (and d!1717581 d!1717363)))

(declare-fun lambda!275942 () Int)

(assert (=> bs!1241715 (= lambda!275942 lambda!275882)))

(declare-fun bs!1241716 () Bool)

(assert (= bs!1241716 (and d!1717581 d!1717413)))

(assert (=> bs!1241716 (= lambda!275942 lambda!275915)))

(declare-fun bs!1241717 () Bool)

(assert (= bs!1241717 (and d!1717581 d!1717561)))

(assert (=> bs!1241717 (= lambda!275942 lambda!275934)))

(declare-fun bs!1241718 () Bool)

(assert (= bs!1241718 (and d!1717581 d!1717579)))

(assert (=> bs!1241718 (= lambda!275942 lambda!275939)))

(declare-fun lt!2183821 () List!61489)

(assert (=> d!1717581 (forall!14475 lt!2183821 lambda!275942)))

(declare-fun e!3326696 () List!61489)

(assert (=> d!1717581 (= lt!2183821 e!3326696)))

(declare-fun c!933415 () Bool)

(assert (=> d!1717581 (= c!933415 ((_ is Cons!61366) zl!343))))

(assert (=> d!1717581 (= (unfocusZipperList!505 zl!343) lt!2183821)))

(declare-fun b!5360057 () Bool)

(assert (=> b!5360057 (= e!3326696 (Cons!61365 (generalisedConcat!732 (exprs!4947 (h!67814 zl!343))) (unfocusZipperList!505 (t!374711 zl!343))))))

(declare-fun b!5360058 () Bool)

(assert (=> b!5360058 (= e!3326696 Nil!61365)))

(assert (= (and d!1717581 c!933415) b!5360057))

(assert (= (and d!1717581 (not c!933415)) b!5360058))

(declare-fun m!6389086 () Bool)

(assert (=> d!1717581 m!6389086))

(assert (=> b!5360057 m!6388318))

(declare-fun m!6389088 () Bool)

(assert (=> b!5360057 m!6389088))

(assert (=> b!5359205 d!1717581))

(declare-fun d!1717583 () Bool)

(assert (=> d!1717583 (= (flatMap!790 lt!2183698 lambda!275871) (choose!40222 lt!2183698 lambda!275871))))

(declare-fun bs!1241719 () Bool)

(assert (= bs!1241719 d!1717583))

(declare-fun m!6389090 () Bool)

(assert (=> bs!1241719 m!6389090))

(assert (=> b!5359204 d!1717583))

(declare-fun b!5360059 () Bool)

(declare-fun e!3326698 () Bool)

(assert (=> b!5360059 (= e!3326698 (nullable!5232 (h!67813 (exprs!4947 lt!2183695))))))

(declare-fun d!1717585 () Bool)

(declare-fun c!933416 () Bool)

(assert (=> d!1717585 (= c!933416 e!3326698)))

(declare-fun res!2274503 () Bool)

(assert (=> d!1717585 (=> (not res!2274503) (not e!3326698))))

(assert (=> d!1717585 (= res!2274503 ((_ is Cons!61365) (exprs!4947 lt!2183695)))))

(declare-fun e!3326699 () (InoxSet Context!8894))

(assert (=> d!1717585 (= (derivationStepZipperUp!435 lt!2183695 (h!67812 s!2326)) e!3326699)))

(declare-fun b!5360060 () Bool)

(declare-fun e!3326697 () (InoxSet Context!8894))

(declare-fun call!383438 () (InoxSet Context!8894))

(assert (=> b!5360060 (= e!3326697 call!383438)))

(declare-fun b!5360061 () Bool)

(assert (=> b!5360061 (= e!3326699 e!3326697)))

(declare-fun c!933417 () Bool)

(assert (=> b!5360061 (= c!933417 ((_ is Cons!61365) (exprs!4947 lt!2183695)))))

(declare-fun b!5360062 () Bool)

(assert (=> b!5360062 (= e!3326697 ((as const (Array Context!8894 Bool)) false))))

(declare-fun bm!383433 () Bool)

(assert (=> bm!383433 (= call!383438 (derivationStepZipperDown!511 (h!67813 (exprs!4947 lt!2183695)) (Context!8895 (t!374710 (exprs!4947 lt!2183695))) (h!67812 s!2326)))))

(declare-fun b!5360063 () Bool)

(assert (=> b!5360063 (= e!3326699 ((_ map or) call!383438 (derivationStepZipperUp!435 (Context!8895 (t!374710 (exprs!4947 lt!2183695))) (h!67812 s!2326))))))

(assert (= (and d!1717585 res!2274503) b!5360059))

(assert (= (and d!1717585 c!933416) b!5360063))

(assert (= (and d!1717585 (not c!933416)) b!5360061))

(assert (= (and b!5360061 c!933417) b!5360060))

(assert (= (and b!5360061 (not c!933417)) b!5360062))

(assert (= (or b!5360063 b!5360060) bm!383433))

(declare-fun m!6389092 () Bool)

(assert (=> b!5360059 m!6389092))

(declare-fun m!6389094 () Bool)

(assert (=> bm!383433 m!6389094))

(declare-fun m!6389096 () Bool)

(assert (=> b!5360063 m!6389096))

(assert (=> b!5359204 d!1717585))

(declare-fun d!1717587 () Bool)

(assert (=> d!1717587 (= (flatMap!790 lt!2183698 lambda!275871) (dynLambda!24240 lambda!275871 lt!2183695))))

(declare-fun lt!2183822 () Unit!153770)

(assert (=> d!1717587 (= lt!2183822 (choose!40223 lt!2183698 lt!2183695 lambda!275871))))

(assert (=> d!1717587 (= lt!2183698 (store ((as const (Array Context!8894 Bool)) false) lt!2183695 true))))

(assert (=> d!1717587 (= (lemmaFlatMapOnSingletonSet!322 lt!2183698 lt!2183695 lambda!275871) lt!2183822)))

(declare-fun b_lambda!205539 () Bool)

(assert (=> (not b_lambda!205539) (not d!1717587)))

(declare-fun bs!1241720 () Bool)

(assert (= bs!1241720 d!1717587))

(assert (=> bs!1241720 m!6388352))

(declare-fun m!6389098 () Bool)

(assert (=> bs!1241720 m!6389098))

(declare-fun m!6389100 () Bool)

(assert (=> bs!1241720 m!6389100))

(assert (=> bs!1241720 m!6388354))

(assert (=> b!5359204 d!1717587))

(declare-fun bs!1241721 () Bool)

(declare-fun d!1717589 () Bool)

(assert (= bs!1241721 (and d!1717589 b!5359213)))

(declare-fun lambda!275945 () Int)

(assert (=> bs!1241721 (= lambda!275945 lambda!275871)))

(assert (=> d!1717589 true))

(assert (=> d!1717589 (= (derivationStepZipper!1302 lt!2183698 (h!67812 s!2326)) (flatMap!790 lt!2183698 lambda!275945))))

(declare-fun bs!1241722 () Bool)

(assert (= bs!1241722 d!1717589))

(declare-fun m!6389102 () Bool)

(assert (=> bs!1241722 m!6389102))

(assert (=> b!5359204 d!1717589))

(declare-fun b!5360070 () Bool)

(declare-fun e!3326702 () Bool)

(declare-fun tp!1488290 () Bool)

(assert (=> b!5360070 (= e!3326702 (and tp_is_empty!39379 tp!1488290))))

(assert (=> b!5359214 (= tp!1488228 e!3326702)))

(assert (= (and b!5359214 ((_ is Cons!61364) (t!374709 s!2326))) b!5360070))

(declare-fun b!5360083 () Bool)

(declare-fun e!3326705 () Bool)

(declare-fun tp!1488304 () Bool)

(assert (=> b!5360083 (= e!3326705 tp!1488304)))

(assert (=> b!5359203 (= tp!1488220 e!3326705)))

(declare-fun b!5360081 () Bool)

(assert (=> b!5360081 (= e!3326705 tp_is_empty!39379)))

(declare-fun b!5360084 () Bool)

(declare-fun tp!1488301 () Bool)

(declare-fun tp!1488302 () Bool)

(assert (=> b!5360084 (= e!3326705 (and tp!1488301 tp!1488302))))

(declare-fun b!5360082 () Bool)

(declare-fun tp!1488303 () Bool)

(declare-fun tp!1488305 () Bool)

(assert (=> b!5360082 (= e!3326705 (and tp!1488303 tp!1488305))))

(assert (= (and b!5359203 ((_ is ElementMatch!15063) (regOne!30638 r!7292))) b!5360081))

(assert (= (and b!5359203 ((_ is Concat!23908) (regOne!30638 r!7292))) b!5360082))

(assert (= (and b!5359203 ((_ is Star!15063) (regOne!30638 r!7292))) b!5360083))

(assert (= (and b!5359203 ((_ is Union!15063) (regOne!30638 r!7292))) b!5360084))

(declare-fun b!5360087 () Bool)

(declare-fun e!3326706 () Bool)

(declare-fun tp!1488309 () Bool)

(assert (=> b!5360087 (= e!3326706 tp!1488309)))

(assert (=> b!5359203 (= tp!1488227 e!3326706)))

(declare-fun b!5360085 () Bool)

(assert (=> b!5360085 (= e!3326706 tp_is_empty!39379)))

(declare-fun b!5360088 () Bool)

(declare-fun tp!1488306 () Bool)

(declare-fun tp!1488307 () Bool)

(assert (=> b!5360088 (= e!3326706 (and tp!1488306 tp!1488307))))

(declare-fun b!5360086 () Bool)

(declare-fun tp!1488308 () Bool)

(declare-fun tp!1488310 () Bool)

(assert (=> b!5360086 (= e!3326706 (and tp!1488308 tp!1488310))))

(assert (= (and b!5359203 ((_ is ElementMatch!15063) (regTwo!30638 r!7292))) b!5360085))

(assert (= (and b!5359203 ((_ is Concat!23908) (regTwo!30638 r!7292))) b!5360086))

(assert (= (and b!5359203 ((_ is Star!15063) (regTwo!30638 r!7292))) b!5360087))

(assert (= (and b!5359203 ((_ is Union!15063) (regTwo!30638 r!7292))) b!5360088))

(declare-fun b!5360093 () Bool)

(declare-fun e!3326709 () Bool)

(declare-fun tp!1488315 () Bool)

(declare-fun tp!1488316 () Bool)

(assert (=> b!5360093 (= e!3326709 (and tp!1488315 tp!1488316))))

(assert (=> b!5359218 (= tp!1488222 e!3326709)))

(assert (= (and b!5359218 ((_ is Cons!61365) (exprs!4947 (h!67814 zl!343)))) b!5360093))

(declare-fun b!5360096 () Bool)

(declare-fun e!3326710 () Bool)

(declare-fun tp!1488320 () Bool)

(assert (=> b!5360096 (= e!3326710 tp!1488320)))

(assert (=> b!5359227 (= tp!1488225 e!3326710)))

(declare-fun b!5360094 () Bool)

(assert (=> b!5360094 (= e!3326710 tp_is_empty!39379)))

(declare-fun b!5360097 () Bool)

(declare-fun tp!1488317 () Bool)

(declare-fun tp!1488318 () Bool)

(assert (=> b!5360097 (= e!3326710 (and tp!1488317 tp!1488318))))

(declare-fun b!5360095 () Bool)

(declare-fun tp!1488319 () Bool)

(declare-fun tp!1488321 () Bool)

(assert (=> b!5360095 (= e!3326710 (and tp!1488319 tp!1488321))))

(assert (= (and b!5359227 ((_ is ElementMatch!15063) (regOne!30639 r!7292))) b!5360094))

(assert (= (and b!5359227 ((_ is Concat!23908) (regOne!30639 r!7292))) b!5360095))

(assert (= (and b!5359227 ((_ is Star!15063) (regOne!30639 r!7292))) b!5360096))

(assert (= (and b!5359227 ((_ is Union!15063) (regOne!30639 r!7292))) b!5360097))

(declare-fun b!5360100 () Bool)

(declare-fun e!3326711 () Bool)

(declare-fun tp!1488325 () Bool)

(assert (=> b!5360100 (= e!3326711 tp!1488325)))

(assert (=> b!5359227 (= tp!1488226 e!3326711)))

(declare-fun b!5360098 () Bool)

(assert (=> b!5360098 (= e!3326711 tp_is_empty!39379)))

(declare-fun b!5360101 () Bool)

(declare-fun tp!1488322 () Bool)

(declare-fun tp!1488323 () Bool)

(assert (=> b!5360101 (= e!3326711 (and tp!1488322 tp!1488323))))

(declare-fun b!5360099 () Bool)

(declare-fun tp!1488324 () Bool)

(declare-fun tp!1488326 () Bool)

(assert (=> b!5360099 (= e!3326711 (and tp!1488324 tp!1488326))))

(assert (= (and b!5359227 ((_ is ElementMatch!15063) (regTwo!30639 r!7292))) b!5360098))

(assert (= (and b!5359227 ((_ is Concat!23908) (regTwo!30639 r!7292))) b!5360099))

(assert (= (and b!5359227 ((_ is Star!15063) (regTwo!30639 r!7292))) b!5360100))

(assert (= (and b!5359227 ((_ is Union!15063) (regTwo!30639 r!7292))) b!5360101))

(declare-fun condSetEmpty!34687 () Bool)

(assert (=> setNonEmpty!34681 (= condSetEmpty!34687 (= setRest!34681 ((as const (Array Context!8894 Bool)) false)))))

(declare-fun setRes!34687 () Bool)

(assert (=> setNonEmpty!34681 (= tp!1488224 setRes!34687)))

(declare-fun setIsEmpty!34687 () Bool)

(assert (=> setIsEmpty!34687 setRes!34687))

(declare-fun tp!1488332 () Bool)

(declare-fun setElem!34687 () Context!8894)

(declare-fun setNonEmpty!34687 () Bool)

(declare-fun e!3326714 () Bool)

(assert (=> setNonEmpty!34687 (= setRes!34687 (and tp!1488332 (inv!80904 setElem!34687) e!3326714))))

(declare-fun setRest!34687 () (InoxSet Context!8894))

(assert (=> setNonEmpty!34687 (= setRest!34681 ((_ map or) (store ((as const (Array Context!8894 Bool)) false) setElem!34687 true) setRest!34687))))

(declare-fun b!5360106 () Bool)

(declare-fun tp!1488331 () Bool)

(assert (=> b!5360106 (= e!3326714 tp!1488331)))

(assert (= (and setNonEmpty!34681 condSetEmpty!34687) setIsEmpty!34687))

(assert (= (and setNonEmpty!34681 (not condSetEmpty!34687)) setNonEmpty!34687))

(assert (= setNonEmpty!34687 b!5360106))

(declare-fun m!6389104 () Bool)

(assert (=> setNonEmpty!34687 m!6389104))

(declare-fun b!5360109 () Bool)

(declare-fun e!3326715 () Bool)

(declare-fun tp!1488336 () Bool)

(assert (=> b!5360109 (= e!3326715 tp!1488336)))

(assert (=> b!5359221 (= tp!1488221 e!3326715)))

(declare-fun b!5360107 () Bool)

(assert (=> b!5360107 (= e!3326715 tp_is_empty!39379)))

(declare-fun b!5360110 () Bool)

(declare-fun tp!1488333 () Bool)

(declare-fun tp!1488334 () Bool)

(assert (=> b!5360110 (= e!3326715 (and tp!1488333 tp!1488334))))

(declare-fun b!5360108 () Bool)

(declare-fun tp!1488335 () Bool)

(declare-fun tp!1488337 () Bool)

(assert (=> b!5360108 (= e!3326715 (and tp!1488335 tp!1488337))))

(assert (= (and b!5359221 ((_ is ElementMatch!15063) (reg!15392 r!7292))) b!5360107))

(assert (= (and b!5359221 ((_ is Concat!23908) (reg!15392 r!7292))) b!5360108))

(assert (= (and b!5359221 ((_ is Star!15063) (reg!15392 r!7292))) b!5360109))

(assert (= (and b!5359221 ((_ is Union!15063) (reg!15392 r!7292))) b!5360110))

(declare-fun b!5360111 () Bool)

(declare-fun e!3326716 () Bool)

(declare-fun tp!1488338 () Bool)

(declare-fun tp!1488339 () Bool)

(assert (=> b!5360111 (= e!3326716 (and tp!1488338 tp!1488339))))

(assert (=> b!5359195 (= tp!1488223 e!3326716)))

(assert (= (and b!5359195 ((_ is Cons!61365) (exprs!4947 setElem!34681))) b!5360111))

(declare-fun b!5360119 () Bool)

(declare-fun e!3326722 () Bool)

(declare-fun tp!1488344 () Bool)

(assert (=> b!5360119 (= e!3326722 tp!1488344)))

(declare-fun b!5360118 () Bool)

(declare-fun tp!1488345 () Bool)

(declare-fun e!3326721 () Bool)

(assert (=> b!5360118 (= e!3326721 (and (inv!80904 (h!67814 (t!374711 zl!343))) e!3326722 tp!1488345))))

(assert (=> b!5359230 (= tp!1488229 e!3326721)))

(assert (= b!5360118 b!5360119))

(assert (= (and b!5359230 ((_ is Cons!61366) (t!374711 zl!343))) b!5360118))

(declare-fun m!6389106 () Bool)

(assert (=> b!5360118 m!6389106))

(declare-fun b_lambda!205541 () Bool)

(assert (= b_lambda!205517 (or b!5359213 b_lambda!205541)))

(declare-fun bs!1241723 () Bool)

(declare-fun d!1717591 () Bool)

(assert (= bs!1241723 (and d!1717591 b!5359213)))

(assert (=> bs!1241723 (= (dynLambda!24240 lambda!275871 lt!2183676) (derivationStepZipperUp!435 lt!2183676 (h!67812 s!2326)))))

(assert (=> bs!1241723 m!6388332))

(assert (=> d!1717353 d!1717591))

(declare-fun b_lambda!205543 () Bool)

(assert (= b_lambda!205523 (or b!5359213 b_lambda!205543)))

(declare-fun bs!1241724 () Bool)

(declare-fun d!1717593 () Bool)

(assert (= bs!1241724 (and d!1717593 b!5359213)))

(assert (=> bs!1241724 (= (dynLambda!24240 lambda!275871 (h!67814 zl!343)) (derivationStepZipperUp!435 (h!67814 zl!343) (h!67812 s!2326)))))

(assert (=> bs!1241724 m!6388390))

(assert (=> d!1717447 d!1717593))

(declare-fun b_lambda!205545 () Bool)

(assert (= b_lambda!205519 (or b!5359213 b_lambda!205545)))

(declare-fun bs!1241725 () Bool)

(declare-fun d!1717595 () Bool)

(assert (= bs!1241725 (and d!1717595 b!5359213)))

(assert (=> bs!1241725 (= (dynLambda!24240 lambda!275871 lt!2183699) (derivationStepZipperUp!435 lt!2183699 (h!67812 s!2326)))))

(assert (=> bs!1241725 m!6388322))

(assert (=> d!1717361 d!1717595))

(declare-fun b_lambda!205547 () Bool)

(assert (= b_lambda!205539 (or b!5359213 b_lambda!205547)))

(declare-fun bs!1241726 () Bool)

(declare-fun d!1717597 () Bool)

(assert (= bs!1241726 (and d!1717597 b!5359213)))

(assert (=> bs!1241726 (= (dynLambda!24240 lambda!275871 lt!2183695) (derivationStepZipperUp!435 lt!2183695 (h!67812 s!2326)))))

(assert (=> bs!1241726 m!6388350))

(assert (=> d!1717587 d!1717597))

(check-sat (not bm!383431) (not b!5360118) (not b!5360110) (not setNonEmpty!34687) (not b!5359257) (not b!5359713) (not d!1717479) (not bm!383432) (not bs!1241726) (not d!1717485) (not b_lambda!205541) (not b!5360050) (not b!5359708) (not d!1717539) (not bm!383424) (not d!1717533) (not d!1717403) (not bm!383388) (not d!1717357) (not b!5360109) (not d!1717567) (not bs!1241725) (not d!1717537) (not b!5360015) (not d!1717589) (not b!5359996) (not b!5360022) (not b!5359564) (not d!1717569) (not b!5359253) (not b!5360095) (not d!1717583) (not b!5360111) (not d!1717559) (not b!5359718) (not b!5359994) (not b!5360084) (not d!1717363) (not d!1717573) (not bs!1241723) (not bm!383376) (not b!5360097) (not b!5359961) (not b!5359939) (not b!5359363) tp_is_empty!39379 (not d!1717571) (not b!5360051) (not d!1717387) (not bm!383418) (not bm!383433) (not bm!383374) (not b!5360048) (not b!5360018) (not b!5360086) (not b!5360093) (not b_lambda!205547) (not b!5359868) (not d!1717543) (not b!5359453) (not d!1717579) (not b!5360096) (not b!5359562) (not b!5360049) (not d!1717549) (not bm!383318) (not b!5360070) (not b!5359365) (not b!5359941) (not bm!383370) (not d!1717535) (not d!1717477) (not d!1717575) (not bm!383342) (not bm!383349) (not bm!383421) (not b!5359768) (not bm!383375) (not b!5359600) (not b!5359997) (not b!5359601) (not b!5359556) (not b!5359446) (not b!5360021) (not b!5360020) (not bm!383390) (not b!5359866) (not b!5359559) (not b!5359717) (not b!5359978) (not b!5360004) (not b!5359938) (not b!5360087) (not b!5360052) (not d!1717449) (not b!5360063) (not b!5359870) (not b!5360101) (not d!1717447) (not bm!383430) (not d!1717587) (not d!1717413) (not d!1717545) (not b!5360059) (not d!1717409) (not d!1717351) (not b!5359935) (not b!5359248) (not b!5360057) (not b!5359722) (not b!5360106) (not b!5359976) (not b!5359687) (not d!1717577) (not b!5359992) (not b!5359934) (not d!1717553) (not b!5359712) (not b!5360019) (not b!5360099) (not b!5359864) (not b!5359252) (not d!1717581) (not d!1717561) (not d!1717353) (not b!5359863) (not d!1717523) (not bm!383427) (not b!5359937) (not b!5360083) (not b!5359975) (not bm!383319) (not d!1717439) (not b!5359369) (not b!5359947) (not b!5359983) (not b!5359965) (not bm!383343) (not b!5360108) (not b!5359368) (not b!5359563) (not b!5359867) (not b!5359561) (not d!1717415) (not bm!383369) (not bm!383366) (not b!5359995) (not b!5360011) (not d!1717359) (not b!5359367) (not b!5360119) (not b!5360100) (not d!1717361) (not d!1717555) (not b!5360088) (not d!1717481) (not d!1717563) (not b_lambda!205545) (not b!5359989) (not bm!383429) (not b_lambda!205543) (not b!5359366) (not bm!383420) (not d!1717541) (not b!5359364) (not b!5360082) (not b!5359977) (not d!1717373) (not b!5360043) (not b!5359962) (not bs!1241724) (not bm!383425) (not b!5360047))
(check-sat)
