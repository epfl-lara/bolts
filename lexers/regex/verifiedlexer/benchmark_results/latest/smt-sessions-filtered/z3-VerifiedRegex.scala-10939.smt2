; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566162 () Bool)

(assert start!566162)

(declare-fun b!5386332 () Bool)

(assert (=> b!5386332 true))

(assert (=> b!5386332 true))

(declare-fun lambda!279344 () Int)

(declare-fun lambda!279343 () Int)

(assert (=> b!5386332 (not (= lambda!279344 lambda!279343))))

(assert (=> b!5386332 true))

(assert (=> b!5386332 true))

(declare-fun b!5386322 () Bool)

(assert (=> b!5386322 true))

(declare-fun bs!1246532 () Bool)

(declare-fun b!5386343 () Bool)

(assert (= bs!1246532 (and b!5386343 b!5386332)))

(declare-datatypes ((C!30520 0))(
  ( (C!30521 (val!24962 Int)) )
))
(declare-datatypes ((Regex!15125 0))(
  ( (ElementMatch!15125 (c!938591 C!30520)) (Concat!23970 (regOne!30762 Regex!15125) (regTwo!30762 Regex!15125)) (EmptyExpr!15125) (Star!15125 (reg!15454 Regex!15125)) (EmptyLang!15125) (Union!15125 (regOne!30763 Regex!15125) (regTwo!30763 Regex!15125)) )
))
(declare-fun r!7292 () Regex!15125)

(declare-fun lambda!279346 () Int)

(declare-fun lt!2194192 () Regex!15125)

(assert (=> bs!1246532 (= (= lt!2194192 (regOne!30762 r!7292)) (= lambda!279346 lambda!279343))))

(assert (=> bs!1246532 (not (= lambda!279346 lambda!279344))))

(assert (=> b!5386343 true))

(assert (=> b!5386343 true))

(assert (=> b!5386343 true))

(declare-fun lambda!279347 () Int)

(assert (=> bs!1246532 (not (= lambda!279347 lambda!279343))))

(assert (=> bs!1246532 (= (= lt!2194192 (regOne!30762 r!7292)) (= lambda!279347 lambda!279344))))

(assert (=> b!5386343 (not (= lambda!279347 lambda!279346))))

(assert (=> b!5386343 true))

(assert (=> b!5386343 true))

(assert (=> b!5386343 true))

(declare-fun bs!1246533 () Bool)

(declare-fun b!5386329 () Bool)

(assert (= bs!1246533 (and b!5386329 b!5386332)))

(declare-datatypes ((List!61674 0))(
  ( (Nil!61550) (Cons!61550 (h!67998 C!30520) (t!374897 List!61674)) )
))
(declare-fun s!2326 () List!61674)

(declare-datatypes ((tuple2!64648 0))(
  ( (tuple2!64649 (_1!35627 List!61674) (_2!35627 List!61674)) )
))
(declare-fun lt!2194158 () tuple2!64648)

(declare-fun lambda!279348 () Int)

(assert (=> bs!1246533 (= (and (= (_1!35627 lt!2194158) s!2326) (= (reg!15454 (regOne!30762 r!7292)) (regOne!30762 r!7292)) (= lt!2194192 (regTwo!30762 r!7292))) (= lambda!279348 lambda!279343))))

(assert (=> bs!1246533 (not (= lambda!279348 lambda!279344))))

(declare-fun bs!1246534 () Bool)

(assert (= bs!1246534 (and b!5386329 b!5386343)))

(assert (=> bs!1246534 (= (and (= (_1!35627 lt!2194158) s!2326) (= (reg!15454 (regOne!30762 r!7292)) lt!2194192) (= lt!2194192 (regTwo!30762 r!7292))) (= lambda!279348 lambda!279346))))

(assert (=> bs!1246534 (not (= lambda!279348 lambda!279347))))

(assert (=> b!5386329 true))

(assert (=> b!5386329 true))

(assert (=> b!5386329 true))

(declare-fun lambda!279349 () Int)

(assert (=> bs!1246534 (not (= lambda!279349 lambda!279346))))

(assert (=> b!5386329 (not (= lambda!279349 lambda!279348))))

(assert (=> bs!1246533 (not (= lambda!279349 lambda!279344))))

(assert (=> bs!1246533 (not (= lambda!279349 lambda!279343))))

(assert (=> bs!1246534 (not (= lambda!279349 lambda!279347))))

(assert (=> b!5386329 true))

(assert (=> b!5386329 true))

(assert (=> b!5386329 true))

(declare-fun lambda!279350 () Int)

(assert (=> bs!1246534 (not (= lambda!279350 lambda!279346))))

(assert (=> b!5386329 (not (= lambda!279350 lambda!279348))))

(assert (=> bs!1246533 (= (and (= (_1!35627 lt!2194158) s!2326) (= (reg!15454 (regOne!30762 r!7292)) (regOne!30762 r!7292)) (= lt!2194192 (regTwo!30762 r!7292))) (= lambda!279350 lambda!279344))))

(assert (=> bs!1246533 (not (= lambda!279350 lambda!279343))))

(assert (=> b!5386329 (not (= lambda!279350 lambda!279349))))

(assert (=> bs!1246534 (= (and (= (_1!35627 lt!2194158) s!2326) (= (reg!15454 (regOne!30762 r!7292)) lt!2194192) (= lt!2194192 (regTwo!30762 r!7292))) (= lambda!279350 lambda!279347))))

(assert (=> b!5386329 true))

(assert (=> b!5386329 true))

(assert (=> b!5386329 true))

(declare-fun b!5386314 () Bool)

(declare-fun e!3340816 () Bool)

(declare-fun tp!1492157 () Bool)

(declare-fun tp!1492163 () Bool)

(assert (=> b!5386314 (= e!3340816 (and tp!1492157 tp!1492163))))

(declare-fun b!5386315 () Bool)

(declare-fun e!3340819 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61675 0))(
  ( (Nil!61551) (Cons!61551 (h!67999 Regex!15125) (t!374898 List!61675)) )
))
(declare-datatypes ((Context!9018 0))(
  ( (Context!9019 (exprs!5009 List!61675)) )
))
(declare-fun lt!2194179 () (InoxSet Context!9018))

(declare-fun matchZipper!1369 ((InoxSet Context!9018) List!61674) Bool)

(assert (=> b!5386315 (= e!3340819 (matchZipper!1369 lt!2194179 (t!374897 s!2326)))))

(declare-fun tp!1492165 () Bool)

(declare-fun e!3340820 () Bool)

(declare-fun e!3340821 () Bool)

(declare-datatypes ((List!61676 0))(
  ( (Nil!61552) (Cons!61552 (h!68000 Context!9018) (t!374899 List!61676)) )
))
(declare-fun zl!343 () List!61676)

(declare-fun b!5386316 () Bool)

(declare-fun inv!81059 (Context!9018) Bool)

(assert (=> b!5386316 (= e!3340821 (and (inv!81059 (h!68000 zl!343)) e!3340820 tp!1492165))))

(declare-fun tp!1492158 () Bool)

(declare-fun setRes!34973 () Bool)

(declare-fun setElem!34973 () Context!9018)

(declare-fun setNonEmpty!34973 () Bool)

(declare-fun e!3340809 () Bool)

(assert (=> setNonEmpty!34973 (= setRes!34973 (and tp!1492158 (inv!81059 setElem!34973) e!3340809))))

(declare-fun z!1189 () (InoxSet Context!9018))

(declare-fun setRest!34973 () (InoxSet Context!9018))

(assert (=> setNonEmpty!34973 (= z!1189 ((_ map or) (store ((as const (Array Context!9018 Bool)) false) setElem!34973 true) setRest!34973))))

(declare-fun b!5386317 () Bool)

(declare-fun e!3340824 () Bool)

(declare-fun lt!2194175 () Bool)

(declare-fun lt!2194151 () Bool)

(assert (=> b!5386317 (= e!3340824 (or (not lt!2194175) lt!2194151))))

(declare-fun b!5386318 () Bool)

(declare-fun e!3340832 () Bool)

(declare-fun e!3340811 () Bool)

(assert (=> b!5386318 (= e!3340832 e!3340811)))

(declare-fun res!2288151 () Bool)

(assert (=> b!5386318 (=> res!2288151 e!3340811)))

(declare-fun lt!2194181 () Regex!15125)

(assert (=> b!5386318 (= res!2288151 (not (= r!7292 lt!2194181)))))

(assert (=> b!5386318 (= lt!2194181 (Concat!23970 lt!2194192 (regTwo!30762 r!7292)))))

(declare-fun b!5386319 () Bool)

(declare-fun e!3340828 () Bool)

(declare-fun e!3340810 () Bool)

(assert (=> b!5386319 (= e!3340828 e!3340810)))

(declare-fun res!2288134 () Bool)

(assert (=> b!5386319 (=> res!2288134 e!3340810)))

(declare-fun lt!2194155 () List!61676)

(declare-fun unfocusZipper!867 (List!61676) Regex!15125)

(assert (=> b!5386319 (= res!2288134 (not (= (unfocusZipper!867 lt!2194155) lt!2194181)))))

(declare-fun lt!2194202 () Context!9018)

(assert (=> b!5386319 (= lt!2194155 (Cons!61552 lt!2194202 Nil!61552))))

(declare-fun b!5386320 () Bool)

(declare-fun res!2288130 () Bool)

(declare-fun e!3340814 () Bool)

(assert (=> b!5386320 (=> res!2288130 e!3340814)))

(declare-fun matchR!7310 (Regex!15125 List!61674) Bool)

(assert (=> b!5386320 (= res!2288130 (not (matchR!7310 (regTwo!30762 r!7292) (_2!35627 lt!2194158))))))

(declare-fun b!5386321 () Bool)

(declare-fun res!2288124 () Bool)

(declare-fun e!3340817 () Bool)

(assert (=> b!5386321 (=> res!2288124 e!3340817)))

(declare-fun isEmpty!33546 (List!61675) Bool)

(assert (=> b!5386321 (= res!2288124 (isEmpty!33546 (t!374898 (exprs!5009 (h!68000 zl!343)))))))

(declare-fun res!2288123 () Bool)

(declare-fun e!3340823 () Bool)

(assert (=> start!566162 (=> (not res!2288123) (not e!3340823))))

(declare-fun validRegex!6861 (Regex!15125) Bool)

(assert (=> start!566162 (= res!2288123 (validRegex!6861 r!7292))))

(assert (=> start!566162 e!3340823))

(assert (=> start!566162 e!3340816))

(declare-fun condSetEmpty!34973 () Bool)

(assert (=> start!566162 (= condSetEmpty!34973 (= z!1189 ((as const (Array Context!9018 Bool)) false)))))

(assert (=> start!566162 setRes!34973))

(assert (=> start!566162 e!3340821))

(declare-fun e!3340830 () Bool)

(assert (=> start!566162 e!3340830))

(declare-fun e!3340815 () Bool)

(assert (=> b!5386322 (= e!3340817 e!3340815)))

(declare-fun res!2288144 () Bool)

(assert (=> b!5386322 (=> res!2288144 e!3340815)))

(get-info :version)

(assert (=> b!5386322 (= res!2288144 (or (and ((_ is ElementMatch!15125) (regOne!30762 r!7292)) (= (c!938591 (regOne!30762 r!7292)) (h!67998 s!2326))) ((_ is Union!15125) (regOne!30762 r!7292))))))

(declare-datatypes ((Unit!154018 0))(
  ( (Unit!154019) )
))
(declare-fun lt!2194194 () Unit!154018)

(declare-fun e!3340831 () Unit!154018)

(assert (=> b!5386322 (= lt!2194194 e!3340831)))

(declare-fun c!938590 () Bool)

(declare-fun nullable!5294 (Regex!15125) Bool)

(assert (=> b!5386322 (= c!938590 (nullable!5294 (h!67999 (exprs!5009 (h!68000 zl!343)))))))

(declare-fun lambda!279345 () Int)

(declare-fun flatMap!852 ((InoxSet Context!9018) Int) (InoxSet Context!9018))

(declare-fun derivationStepZipperUp!497 (Context!9018 C!30520) (InoxSet Context!9018))

(assert (=> b!5386322 (= (flatMap!852 z!1189 lambda!279345) (derivationStepZipperUp!497 (h!68000 zl!343) (h!67998 s!2326)))))

(declare-fun lt!2194149 () Unit!154018)

(declare-fun lemmaFlatMapOnSingletonSet!384 ((InoxSet Context!9018) Context!9018 Int) Unit!154018)

(assert (=> b!5386322 (= lt!2194149 (lemmaFlatMapOnSingletonSet!384 z!1189 (h!68000 zl!343) lambda!279345))))

(declare-fun lt!2194172 () Context!9018)

(assert (=> b!5386322 (= lt!2194179 (derivationStepZipperUp!497 lt!2194172 (h!67998 s!2326)))))

(declare-fun lt!2194195 () (InoxSet Context!9018))

(declare-fun derivationStepZipperDown!573 (Regex!15125 Context!9018 C!30520) (InoxSet Context!9018))

(assert (=> b!5386322 (= lt!2194195 (derivationStepZipperDown!573 (h!67999 (exprs!5009 (h!68000 zl!343))) lt!2194172 (h!67998 s!2326)))))

(assert (=> b!5386322 (= lt!2194172 (Context!9019 (t!374898 (exprs!5009 (h!68000 zl!343)))))))

(declare-fun lt!2194162 () (InoxSet Context!9018))

(assert (=> b!5386322 (= lt!2194162 (derivationStepZipperUp!497 (Context!9019 (Cons!61551 (h!67999 (exprs!5009 (h!68000 zl!343))) (t!374898 (exprs!5009 (h!68000 zl!343))))) (h!67998 s!2326)))))

(declare-fun b!5386323 () Bool)

(declare-fun res!2288153 () Bool)

(assert (=> b!5386323 (=> res!2288153 e!3340815)))

(declare-fun e!3340812 () Bool)

(assert (=> b!5386323 (= res!2288153 e!3340812)))

(declare-fun res!2288141 () Bool)

(assert (=> b!5386323 (=> (not res!2288141) (not e!3340812))))

(assert (=> b!5386323 (= res!2288141 ((_ is Concat!23970) (regOne!30762 r!7292)))))

(declare-fun b!5386324 () Bool)

(declare-fun e!3340826 () Bool)

(assert (=> b!5386324 (= e!3340811 e!3340826)))

(declare-fun res!2288147 () Bool)

(assert (=> b!5386324 (=> res!2288147 e!3340826)))

(declare-fun lt!2194193 () Context!9018)

(declare-fun lt!2194168 () Regex!15125)

(assert (=> b!5386324 (= res!2288147 (not (= (unfocusZipper!867 (Cons!61552 lt!2194193 Nil!61552)) lt!2194168)))))

(assert (=> b!5386324 (= lt!2194168 (Concat!23970 (reg!15454 (regOne!30762 r!7292)) lt!2194181))))

(declare-fun b!5386325 () Bool)

(declare-fun res!2288133 () Bool)

(declare-fun e!3340825 () Bool)

(assert (=> b!5386325 (=> res!2288133 e!3340825)))

(declare-fun generalisedConcat!794 (List!61675) Regex!15125)

(assert (=> b!5386325 (= res!2288133 (not (= r!7292 (generalisedConcat!794 (exprs!5009 (h!68000 zl!343))))))))

(declare-fun b!5386326 () Bool)

(declare-fun tp!1492156 () Bool)

(assert (=> b!5386326 (= e!3340820 tp!1492156)))

(declare-fun b!5386327 () Bool)

(declare-fun res!2288149 () Bool)

(assert (=> b!5386327 (=> res!2288149 e!3340825)))

(declare-fun generalisedUnion!1054 (List!61675) Regex!15125)

(declare-fun unfocusZipperList!567 (List!61676) List!61675)

(assert (=> b!5386327 (= res!2288149 (not (= r!7292 (generalisedUnion!1054 (unfocusZipperList!567 zl!343)))))))

(declare-fun b!5386328 () Bool)

(declare-fun res!2288128 () Bool)

(assert (=> b!5386328 (=> res!2288128 e!3340814)))

(assert (=> b!5386328 (= res!2288128 (not (matchR!7310 lt!2194192 (_1!35627 lt!2194158))))))

(declare-fun e!3340813 () Bool)

(assert (=> b!5386329 (= e!3340814 e!3340813)))

(declare-fun res!2288155 () Bool)

(assert (=> b!5386329 (=> res!2288155 e!3340813)))

(declare-fun lt!2194187 () List!61674)

(assert (=> b!5386329 (= res!2288155 (not (= (_1!35627 lt!2194158) lt!2194187)))))

(declare-fun lt!2194171 () tuple2!64648)

(declare-fun ++!13435 (List!61674 List!61674) List!61674)

(assert (=> b!5386329 (= lt!2194187 (++!13435 (_1!35627 lt!2194171) (_2!35627 lt!2194171)))))

(declare-datatypes ((Option!15236 0))(
  ( (None!15235) (Some!15235 (v!51264 tuple2!64648)) )
))
(declare-fun lt!2194206 () Option!15236)

(declare-fun get!21196 (Option!15236) tuple2!64648)

(assert (=> b!5386329 (= lt!2194171 (get!21196 lt!2194206))))

(declare-fun Exists!2306 (Int) Bool)

(assert (=> b!5386329 (= (Exists!2306 lambda!279348) (Exists!2306 lambda!279350))))

(declare-fun lt!2194201 () Unit!154018)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!960 (Regex!15125 Regex!15125 List!61674) Unit!154018)

(assert (=> b!5386329 (= lt!2194201 (lemmaExistCutMatchRandMatchRSpecEquivalent!960 (reg!15454 (regOne!30762 r!7292)) lt!2194192 (_1!35627 lt!2194158)))))

(assert (=> b!5386329 (= (Exists!2306 lambda!279348) (Exists!2306 lambda!279349))))

(declare-fun lt!2194197 () Unit!154018)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!390 (Regex!15125 List!61674) Unit!154018)

(assert (=> b!5386329 (= lt!2194197 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!390 (reg!15454 (regOne!30762 r!7292)) (_1!35627 lt!2194158)))))

(declare-fun isDefined!11939 (Option!15236) Bool)

(assert (=> b!5386329 (= (isDefined!11939 lt!2194206) (Exists!2306 lambda!279348))))

(declare-fun findConcatSeparation!1650 (Regex!15125 Regex!15125 List!61674 List!61674 List!61674) Option!15236)

(assert (=> b!5386329 (= lt!2194206 (findConcatSeparation!1650 (reg!15454 (regOne!30762 r!7292)) lt!2194192 Nil!61550 (_1!35627 lt!2194158) (_1!35627 lt!2194158)))))

(declare-fun lt!2194196 () Unit!154018)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1414 (Regex!15125 Regex!15125 List!61674) Unit!154018)

(assert (=> b!5386329 (= lt!2194196 (lemmaFindConcatSeparationEquivalentToExists!1414 (reg!15454 (regOne!30762 r!7292)) lt!2194192 (_1!35627 lt!2194158)))))

(declare-fun matchRSpec!2228 (Regex!15125 List!61674) Bool)

(assert (=> b!5386329 (matchRSpec!2228 lt!2194192 (_1!35627 lt!2194158))))

(declare-fun lt!2194184 () Unit!154018)

(declare-fun mainMatchTheorem!2228 (Regex!15125 List!61674) Unit!154018)

(assert (=> b!5386329 (= lt!2194184 (mainMatchTheorem!2228 lt!2194192 (_1!35627 lt!2194158)))))

(declare-fun b!5386330 () Bool)

(declare-fun res!2288152 () Bool)

(assert (=> b!5386330 (=> res!2288152 e!3340825)))

(assert (=> b!5386330 (= res!2288152 (or ((_ is EmptyExpr!15125) r!7292) ((_ is EmptyLang!15125) r!7292) ((_ is ElementMatch!15125) r!7292) ((_ is Union!15125) r!7292) (not ((_ is Concat!23970) r!7292))))))

(declare-fun b!5386331 () Bool)

(declare-fun Unit!154020 () Unit!154018)

(assert (=> b!5386331 (= e!3340831 Unit!154020)))

(declare-fun lt!2194150 () Unit!154018)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!362 ((InoxSet Context!9018) (InoxSet Context!9018) List!61674) Unit!154018)

(assert (=> b!5386331 (= lt!2194150 (lemmaZipperConcatMatchesSameAsBothZippers!362 lt!2194195 lt!2194179 (t!374897 s!2326)))))

(declare-fun res!2288139 () Bool)

(assert (=> b!5386331 (= res!2288139 (matchZipper!1369 lt!2194195 (t!374897 s!2326)))))

(assert (=> b!5386331 (=> res!2288139 e!3340819)))

(assert (=> b!5386331 (= (matchZipper!1369 ((_ map or) lt!2194195 lt!2194179) (t!374897 s!2326)) e!3340819)))

(assert (=> b!5386332 (= e!3340825 e!3340817)))

(declare-fun res!2288132 () Bool)

(assert (=> b!5386332 (=> res!2288132 e!3340817)))

(declare-fun lt!2194160 () Bool)

(assert (=> b!5386332 (= res!2288132 (or (not (= lt!2194175 lt!2194160)) ((_ is Nil!61550) s!2326)))))

(assert (=> b!5386332 (= (Exists!2306 lambda!279343) (Exists!2306 lambda!279344))))

(declare-fun lt!2194166 () Unit!154018)

(assert (=> b!5386332 (= lt!2194166 (lemmaExistCutMatchRandMatchRSpecEquivalent!960 (regOne!30762 r!7292) (regTwo!30762 r!7292) s!2326))))

(assert (=> b!5386332 (= lt!2194160 (Exists!2306 lambda!279343))))

(assert (=> b!5386332 (= lt!2194160 (isDefined!11939 (findConcatSeparation!1650 (regOne!30762 r!7292) (regTwo!30762 r!7292) Nil!61550 s!2326 s!2326)))))

(declare-fun lt!2194182 () Unit!154018)

(assert (=> b!5386332 (= lt!2194182 (lemmaFindConcatSeparationEquivalentToExists!1414 (regOne!30762 r!7292) (regTwo!30762 r!7292) s!2326))))

(declare-fun b!5386333 () Bool)

(declare-fun e!3340829 () Bool)

(assert (=> b!5386333 (= e!3340829 e!3340832)))

(declare-fun res!2288143 () Bool)

(assert (=> b!5386333 (=> res!2288143 e!3340832)))

(declare-fun lt!2194190 () (InoxSet Context!9018))

(declare-fun lt!2194174 () (InoxSet Context!9018))

(assert (=> b!5386333 (= res!2288143 (not (= lt!2194190 lt!2194174)))))

(declare-fun lt!2194152 () (InoxSet Context!9018))

(assert (=> b!5386333 (= (flatMap!852 lt!2194152 lambda!279345) (derivationStepZipperUp!497 lt!2194193 (h!67998 s!2326)))))

(declare-fun lt!2194165 () Unit!154018)

(assert (=> b!5386333 (= lt!2194165 (lemmaFlatMapOnSingletonSet!384 lt!2194152 lt!2194193 lambda!279345))))

(declare-fun lt!2194185 () (InoxSet Context!9018))

(assert (=> b!5386333 (= lt!2194185 (derivationStepZipperUp!497 lt!2194193 (h!67998 s!2326)))))

(declare-fun derivationStepZipper!1364 ((InoxSet Context!9018) C!30520) (InoxSet Context!9018))

(assert (=> b!5386333 (= lt!2194190 (derivationStepZipper!1364 lt!2194152 (h!67998 s!2326)))))

(assert (=> b!5386333 (= lt!2194152 (store ((as const (Array Context!9018 Bool)) false) lt!2194193 true))))

(declare-fun lt!2194199 () List!61675)

(assert (=> b!5386333 (= lt!2194193 (Context!9019 (Cons!61551 (reg!15454 (regOne!30762 r!7292)) lt!2194199)))))

(declare-fun b!5386334 () Bool)

(declare-fun res!2288136 () Bool)

(assert (=> b!5386334 (=> res!2288136 e!3340815)))

(assert (=> b!5386334 (= res!2288136 (or ((_ is Concat!23970) (regOne!30762 r!7292)) (not ((_ is Star!15125) (regOne!30762 r!7292)))))))

(declare-fun b!5386335 () Bool)

(declare-fun e!3340827 () Bool)

(assert (=> b!5386335 (= e!3340823 e!3340827)))

(declare-fun res!2288135 () Bool)

(assert (=> b!5386335 (=> (not res!2288135) (not e!3340827))))

(declare-fun lt!2194203 () Regex!15125)

(assert (=> b!5386335 (= res!2288135 (= r!7292 lt!2194203))))

(assert (=> b!5386335 (= lt!2194203 (unfocusZipper!867 zl!343))))

(declare-fun b!5386336 () Bool)

(declare-fun e!3340818 () Bool)

(assert (=> b!5386336 (= e!3340810 e!3340818)))

(declare-fun res!2288145 () Bool)

(assert (=> b!5386336 (=> res!2288145 e!3340818)))

(assert (=> b!5386336 (= res!2288145 (not lt!2194175))))

(assert (=> b!5386336 e!3340824))

(declare-fun res!2288126 () Bool)

(assert (=> b!5386336 (=> (not res!2288126) (not e!3340824))))

(assert (=> b!5386336 (= res!2288126 (= (matchR!7310 lt!2194168 s!2326) (matchRSpec!2228 lt!2194168 s!2326)))))

(declare-fun lt!2194164 () Unit!154018)

(assert (=> b!5386336 (= lt!2194164 (mainMatchTheorem!2228 lt!2194168 s!2326))))

(declare-fun b!5386337 () Bool)

(declare-fun res!2288154 () Bool)

(declare-fun e!3340822 () Bool)

(assert (=> b!5386337 (=> res!2288154 e!3340822)))

(assert (=> b!5386337 (= res!2288154 (not (matchR!7310 lt!2194192 (_2!35627 lt!2194171))))))

(declare-fun b!5386338 () Bool)

(declare-fun res!2288142 () Bool)

(assert (=> b!5386338 (=> res!2288142 e!3340825)))

(declare-fun isEmpty!33547 (List!61676) Bool)

(assert (=> b!5386338 (= res!2288142 (not (isEmpty!33547 (t!374899 zl!343))))))

(declare-fun b!5386339 () Bool)

(declare-fun res!2288148 () Bool)

(assert (=> b!5386339 (=> res!2288148 e!3340814)))

(declare-fun isEmpty!33548 (List!61674) Bool)

(assert (=> b!5386339 (= res!2288148 (isEmpty!33548 (_1!35627 lt!2194158)))))

(declare-fun b!5386340 () Bool)

(assert (=> b!5386340 (= e!3340827 (not e!3340825))))

(declare-fun res!2288137 () Bool)

(assert (=> b!5386340 (=> res!2288137 e!3340825)))

(assert (=> b!5386340 (= res!2288137 (not ((_ is Cons!61552) zl!343)))))

(assert (=> b!5386340 (= lt!2194175 lt!2194151)))

(assert (=> b!5386340 (= lt!2194151 (matchRSpec!2228 r!7292 s!2326))))

(assert (=> b!5386340 (= lt!2194175 (matchR!7310 r!7292 s!2326))))

(declare-fun lt!2194198 () Unit!154018)

(assert (=> b!5386340 (= lt!2194198 (mainMatchTheorem!2228 r!7292 s!2326))))

(declare-fun b!5386341 () Bool)

(declare-fun Unit!154021 () Unit!154018)

(assert (=> b!5386341 (= e!3340831 Unit!154021)))

(declare-fun b!5386342 () Bool)

(assert (=> b!5386342 (= e!3340822 true)))

(declare-fun lt!2194154 () List!61674)

(assert (=> b!5386342 (matchR!7310 lt!2194168 lt!2194154)))

(declare-fun lt!2194178 () List!61674)

(declare-fun lt!2194191 () Unit!154018)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!172 (Regex!15125 Regex!15125 List!61674 List!61674) Unit!154018)

(assert (=> b!5386342 (= lt!2194191 (lemmaTwoRegexMatchThenConcatMatchesConcatString!172 (reg!15454 (regOne!30762 r!7292)) lt!2194181 (_1!35627 lt!2194171) lt!2194178))))

(declare-fun lt!2194180 () List!61675)

(declare-fun ++!13436 (List!61675 List!61675) List!61675)

(assert (=> b!5386342 (matchZipper!1369 (store ((as const (Array Context!9018 Bool)) false) (Context!9019 (++!13436 lt!2194180 lt!2194199)) true) lt!2194154)))

(declare-fun lambda!279351 () Int)

(declare-fun lt!2194163 () Unit!154018)

(declare-fun lemmaConcatPreservesForall!156 (List!61675 List!61675 Int) Unit!154018)

(assert (=> b!5386342 (= lt!2194163 (lemmaConcatPreservesForall!156 lt!2194180 lt!2194199 lambda!279351))))

(declare-fun lt!2194204 () Unit!154018)

(declare-fun lt!2194177 () Context!9018)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!12 (Context!9018 Context!9018 List!61674 List!61674) Unit!154018)

(assert (=> b!5386342 (= lt!2194204 (lemmaConcatenateContextMatchesConcatOfStrings!12 lt!2194177 lt!2194202 (_1!35627 lt!2194171) lt!2194178))))

(declare-fun lt!2194169 () (InoxSet Context!9018))

(assert (=> b!5386342 (matchZipper!1369 lt!2194169 lt!2194178)))

(declare-fun lt!2194153 () Unit!154018)

(declare-fun theoremZipperRegexEquiv!455 ((InoxSet Context!9018) List!61676 Regex!15125 List!61674) Unit!154018)

(assert (=> b!5386342 (= lt!2194153 (theoremZipperRegexEquiv!455 lt!2194169 lt!2194155 lt!2194181 lt!2194178))))

(declare-fun lt!2194161 () (InoxSet Context!9018))

(assert (=> b!5386342 (matchZipper!1369 lt!2194161 (_1!35627 lt!2194171))))

(declare-fun lt!2194188 () List!61676)

(declare-fun lt!2194173 () Unit!154018)

(assert (=> b!5386342 (= lt!2194173 (theoremZipperRegexEquiv!455 lt!2194161 lt!2194188 (reg!15454 (regOne!30762 r!7292)) (_1!35627 lt!2194171)))))

(assert (=> b!5386342 (matchR!7310 lt!2194181 lt!2194178)))

(declare-fun lt!2194200 () Unit!154018)

(assert (=> b!5386342 (= lt!2194200 (lemmaTwoRegexMatchThenConcatMatchesConcatString!172 lt!2194192 (regTwo!30762 r!7292) (_2!35627 lt!2194171) (_2!35627 lt!2194158)))))

(assert (=> b!5386342 (matchR!7310 lt!2194192 lt!2194187)))

(declare-fun lt!2194183 () Unit!154018)

(declare-fun lemmaStarApp!46 (Regex!15125 List!61674 List!61674) Unit!154018)

(assert (=> b!5386342 (= lt!2194183 (lemmaStarApp!46 (reg!15454 (regOne!30762 r!7292)) (_1!35627 lt!2194171) (_2!35627 lt!2194171)))))

(assert (=> b!5386343 (= e!3340818 e!3340814)))

(declare-fun res!2288131 () Bool)

(assert (=> b!5386343 (=> res!2288131 e!3340814)))

(assert (=> b!5386343 (= res!2288131 (not (= (++!13435 (_1!35627 lt!2194158) (_2!35627 lt!2194158)) s!2326)))))

(declare-fun lt!2194159 () Option!15236)

(assert (=> b!5386343 (= lt!2194158 (get!21196 lt!2194159))))

(assert (=> b!5386343 (= (Exists!2306 lambda!279346) (Exists!2306 lambda!279347))))

(declare-fun lt!2194170 () Unit!154018)

(assert (=> b!5386343 (= lt!2194170 (lemmaExistCutMatchRandMatchRSpecEquivalent!960 lt!2194192 (regTwo!30762 r!7292) s!2326))))

(assert (=> b!5386343 (= (isDefined!11939 lt!2194159) (Exists!2306 lambda!279346))))

(assert (=> b!5386343 (= lt!2194159 (findConcatSeparation!1650 lt!2194192 (regTwo!30762 r!7292) Nil!61550 s!2326 s!2326))))

(declare-fun lt!2194186 () Unit!154018)

(assert (=> b!5386343 (= lt!2194186 (lemmaFindConcatSeparationEquivalentToExists!1414 lt!2194192 (regTwo!30762 r!7292) s!2326))))

(declare-fun setIsEmpty!34973 () Bool)

(assert (=> setIsEmpty!34973 setRes!34973))

(declare-fun b!5386344 () Bool)

(declare-fun res!2288140 () Bool)

(assert (=> b!5386344 (=> (not res!2288140) (not e!3340823))))

(declare-fun toList!8909 ((InoxSet Context!9018)) List!61676)

(assert (=> b!5386344 (= res!2288140 (= (toList!8909 z!1189) zl!343))))

(declare-fun b!5386345 () Bool)

(assert (=> b!5386345 (= e!3340813 e!3340822)))

(declare-fun res!2288146 () Bool)

(assert (=> b!5386345 (=> res!2288146 e!3340822)))

(declare-fun lt!2194167 () List!61674)

(assert (=> b!5386345 (= res!2288146 (not (= lt!2194167 s!2326)))))

(assert (=> b!5386345 (= lt!2194167 lt!2194154)))

(assert (=> b!5386345 (= lt!2194154 (++!13435 (_1!35627 lt!2194171) lt!2194178))))

(assert (=> b!5386345 (= lt!2194167 (++!13435 lt!2194187 (_2!35627 lt!2194158)))))

(assert (=> b!5386345 (= lt!2194178 (++!13435 (_2!35627 lt!2194171) (_2!35627 lt!2194158)))))

(declare-fun lt!2194157 () Unit!154018)

(declare-fun lemmaConcatAssociativity!2822 (List!61674 List!61674 List!61674) Unit!154018)

(assert (=> b!5386345 (= lt!2194157 (lemmaConcatAssociativity!2822 (_1!35627 lt!2194171) (_2!35627 lt!2194171) (_2!35627 lt!2194158)))))

(declare-fun b!5386346 () Bool)

(assert (=> b!5386346 (= e!3340826 e!3340828)))

(declare-fun res!2288122 () Bool)

(assert (=> b!5386346 (=> res!2288122 e!3340828)))

(assert (=> b!5386346 (= res!2288122 (not (= (unfocusZipper!867 lt!2194188) (reg!15454 (regOne!30762 r!7292)))))))

(assert (=> b!5386346 (= lt!2194188 (Cons!61552 lt!2194177 Nil!61552))))

(assert (=> b!5386346 (= (flatMap!852 lt!2194169 lambda!279345) (derivationStepZipperUp!497 lt!2194202 (h!67998 s!2326)))))

(declare-fun lt!2194205 () Unit!154018)

(assert (=> b!5386346 (= lt!2194205 (lemmaFlatMapOnSingletonSet!384 lt!2194169 lt!2194202 lambda!279345))))

(assert (=> b!5386346 (= (flatMap!852 lt!2194161 lambda!279345) (derivationStepZipperUp!497 lt!2194177 (h!67998 s!2326)))))

(declare-fun lt!2194189 () Unit!154018)

(assert (=> b!5386346 (= lt!2194189 (lemmaFlatMapOnSingletonSet!384 lt!2194161 lt!2194177 lambda!279345))))

(declare-fun lt!2194176 () (InoxSet Context!9018))

(assert (=> b!5386346 (= lt!2194176 (derivationStepZipperUp!497 lt!2194202 (h!67998 s!2326)))))

(declare-fun lt!2194156 () (InoxSet Context!9018))

(assert (=> b!5386346 (= lt!2194156 (derivationStepZipperUp!497 lt!2194177 (h!67998 s!2326)))))

(assert (=> b!5386346 (= lt!2194169 (store ((as const (Array Context!9018 Bool)) false) lt!2194202 true))))

(assert (=> b!5386346 (= lt!2194161 (store ((as const (Array Context!9018 Bool)) false) lt!2194177 true))))

(assert (=> b!5386346 (= lt!2194177 (Context!9019 lt!2194180))))

(assert (=> b!5386346 (= lt!2194180 (Cons!61551 (reg!15454 (regOne!30762 r!7292)) Nil!61551))))

(declare-fun b!5386347 () Bool)

(declare-fun tp_is_empty!39503 () Bool)

(assert (=> b!5386347 (= e!3340816 tp_is_empty!39503)))

(declare-fun b!5386348 () Bool)

(declare-fun tp!1492162 () Bool)

(assert (=> b!5386348 (= e!3340816 tp!1492162)))

(declare-fun b!5386349 () Bool)

(declare-fun res!2288127 () Bool)

(assert (=> b!5386349 (=> res!2288127 e!3340832)))

(assert (=> b!5386349 (= res!2288127 (not (= lt!2194203 r!7292)))))

(declare-fun b!5386350 () Bool)

(declare-fun tp!1492164 () Bool)

(assert (=> b!5386350 (= e!3340809 tp!1492164)))

(declare-fun b!5386351 () Bool)

(declare-fun res!2288125 () Bool)

(assert (=> b!5386351 (=> res!2288125 e!3340822)))

(assert (=> b!5386351 (= res!2288125 (not (matchR!7310 (reg!15454 (regOne!30762 r!7292)) (_1!35627 lt!2194171))))))

(declare-fun b!5386352 () Bool)

(assert (=> b!5386352 (= e!3340812 (nullable!5294 (regOne!30762 (regOne!30762 r!7292))))))

(declare-fun b!5386353 () Bool)

(declare-fun res!2288129 () Bool)

(assert (=> b!5386353 (=> res!2288129 e!3340825)))

(assert (=> b!5386353 (= res!2288129 (not ((_ is Cons!61551) (exprs!5009 (h!68000 zl!343)))))))

(declare-fun b!5386354 () Bool)

(assert (=> b!5386354 (= e!3340815 e!3340829)))

(declare-fun res!2288138 () Bool)

(assert (=> b!5386354 (=> res!2288138 e!3340829)))

(assert (=> b!5386354 (= res!2288138 (not (= lt!2194195 lt!2194174)))))

(assert (=> b!5386354 (= lt!2194174 (derivationStepZipperDown!573 (reg!15454 (regOne!30762 r!7292)) lt!2194202 (h!67998 s!2326)))))

(assert (=> b!5386354 (= lt!2194202 (Context!9019 lt!2194199))))

(assert (=> b!5386354 (= lt!2194199 (Cons!61551 lt!2194192 (t!374898 (exprs!5009 (h!68000 zl!343)))))))

(assert (=> b!5386354 (= lt!2194192 (Star!15125 (reg!15454 (regOne!30762 r!7292))))))

(declare-fun b!5386355 () Bool)

(declare-fun res!2288150 () Bool)

(assert (=> b!5386355 (=> res!2288150 e!3340832)))

(assert (=> b!5386355 (= res!2288150 (not (= (matchZipper!1369 lt!2194152 s!2326) (matchZipper!1369 lt!2194190 (t!374897 s!2326)))))))

(declare-fun b!5386356 () Bool)

(declare-fun tp!1492160 () Bool)

(assert (=> b!5386356 (= e!3340830 (and tp_is_empty!39503 tp!1492160))))

(declare-fun b!5386357 () Bool)

(declare-fun tp!1492161 () Bool)

(declare-fun tp!1492159 () Bool)

(assert (=> b!5386357 (= e!3340816 (and tp!1492161 tp!1492159))))

(assert (= (and start!566162 res!2288123) b!5386344))

(assert (= (and b!5386344 res!2288140) b!5386335))

(assert (= (and b!5386335 res!2288135) b!5386340))

(assert (= (and b!5386340 (not res!2288137)) b!5386338))

(assert (= (and b!5386338 (not res!2288142)) b!5386325))

(assert (= (and b!5386325 (not res!2288133)) b!5386353))

(assert (= (and b!5386353 (not res!2288129)) b!5386327))

(assert (= (and b!5386327 (not res!2288149)) b!5386330))

(assert (= (and b!5386330 (not res!2288152)) b!5386332))

(assert (= (and b!5386332 (not res!2288132)) b!5386321))

(assert (= (and b!5386321 (not res!2288124)) b!5386322))

(assert (= (and b!5386322 c!938590) b!5386331))

(assert (= (and b!5386322 (not c!938590)) b!5386341))

(assert (= (and b!5386331 (not res!2288139)) b!5386315))

(assert (= (and b!5386322 (not res!2288144)) b!5386323))

(assert (= (and b!5386323 res!2288141) b!5386352))

(assert (= (and b!5386323 (not res!2288153)) b!5386334))

(assert (= (and b!5386334 (not res!2288136)) b!5386354))

(assert (= (and b!5386354 (not res!2288138)) b!5386333))

(assert (= (and b!5386333 (not res!2288143)) b!5386355))

(assert (= (and b!5386355 (not res!2288150)) b!5386349))

(assert (= (and b!5386349 (not res!2288127)) b!5386318))

(assert (= (and b!5386318 (not res!2288151)) b!5386324))

(assert (= (and b!5386324 (not res!2288147)) b!5386346))

(assert (= (and b!5386346 (not res!2288122)) b!5386319))

(assert (= (and b!5386319 (not res!2288134)) b!5386336))

(assert (= (and b!5386336 res!2288126) b!5386317))

(assert (= (and b!5386336 (not res!2288145)) b!5386343))

(assert (= (and b!5386343 (not res!2288131)) b!5386328))

(assert (= (and b!5386328 (not res!2288128)) b!5386320))

(assert (= (and b!5386320 (not res!2288130)) b!5386339))

(assert (= (and b!5386339 (not res!2288148)) b!5386329))

(assert (= (and b!5386329 (not res!2288155)) b!5386345))

(assert (= (and b!5386345 (not res!2288146)) b!5386351))

(assert (= (and b!5386351 (not res!2288125)) b!5386337))

(assert (= (and b!5386337 (not res!2288154)) b!5386342))

(assert (= (and start!566162 ((_ is ElementMatch!15125) r!7292)) b!5386347))

(assert (= (and start!566162 ((_ is Concat!23970) r!7292)) b!5386357))

(assert (= (and start!566162 ((_ is Star!15125) r!7292)) b!5386348))

(assert (= (and start!566162 ((_ is Union!15125) r!7292)) b!5386314))

(assert (= (and start!566162 condSetEmpty!34973) setIsEmpty!34973))

(assert (= (and start!566162 (not condSetEmpty!34973)) setNonEmpty!34973))

(assert (= setNonEmpty!34973 b!5386350))

(assert (= b!5386316 b!5386326))

(assert (= (and start!566162 ((_ is Cons!61552) zl!343)) b!5386316))

(assert (= (and start!566162 ((_ is Cons!61550) s!2326)) b!5386356))

(declare-fun m!6412078 () Bool)

(assert (=> b!5386352 m!6412078))

(declare-fun m!6412080 () Bool)

(assert (=> b!5386332 m!6412080))

(declare-fun m!6412082 () Bool)

(assert (=> b!5386332 m!6412082))

(declare-fun m!6412084 () Bool)

(assert (=> b!5386332 m!6412084))

(declare-fun m!6412086 () Bool)

(assert (=> b!5386332 m!6412086))

(declare-fun m!6412088 () Bool)

(assert (=> b!5386332 m!6412088))

(assert (=> b!5386332 m!6412082))

(assert (=> b!5386332 m!6412084))

(declare-fun m!6412090 () Bool)

(assert (=> b!5386332 m!6412090))

(declare-fun m!6412092 () Bool)

(assert (=> b!5386337 m!6412092))

(declare-fun m!6412094 () Bool)

(assert (=> b!5386355 m!6412094))

(declare-fun m!6412096 () Bool)

(assert (=> b!5386355 m!6412096))

(declare-fun m!6412098 () Bool)

(assert (=> b!5386354 m!6412098))

(declare-fun m!6412100 () Bool)

(assert (=> b!5386329 m!6412100))

(declare-fun m!6412102 () Bool)

(assert (=> b!5386329 m!6412102))

(declare-fun m!6412104 () Bool)

(assert (=> b!5386329 m!6412104))

(declare-fun m!6412106 () Bool)

(assert (=> b!5386329 m!6412106))

(declare-fun m!6412108 () Bool)

(assert (=> b!5386329 m!6412108))

(declare-fun m!6412110 () Bool)

(assert (=> b!5386329 m!6412110))

(declare-fun m!6412112 () Bool)

(assert (=> b!5386329 m!6412112))

(declare-fun m!6412114 () Bool)

(assert (=> b!5386329 m!6412114))

(declare-fun m!6412116 () Bool)

(assert (=> b!5386329 m!6412116))

(declare-fun m!6412118 () Bool)

(assert (=> b!5386329 m!6412118))

(declare-fun m!6412120 () Bool)

(assert (=> b!5386329 m!6412120))

(assert (=> b!5386329 m!6412102))

(declare-fun m!6412122 () Bool)

(assert (=> b!5386329 m!6412122))

(assert (=> b!5386329 m!6412102))

(declare-fun m!6412124 () Bool)

(assert (=> b!5386339 m!6412124))

(declare-fun m!6412126 () Bool)

(assert (=> b!5386340 m!6412126))

(declare-fun m!6412128 () Bool)

(assert (=> b!5386340 m!6412128))

(declare-fun m!6412130 () Bool)

(assert (=> b!5386340 m!6412130))

(declare-fun m!6412132 () Bool)

(assert (=> setNonEmpty!34973 m!6412132))

(declare-fun m!6412134 () Bool)

(assert (=> b!5386315 m!6412134))

(declare-fun m!6412136 () Bool)

(assert (=> b!5386328 m!6412136))

(declare-fun m!6412138 () Bool)

(assert (=> b!5386338 m!6412138))

(declare-fun m!6412140 () Bool)

(assert (=> b!5386345 m!6412140))

(declare-fun m!6412142 () Bool)

(assert (=> b!5386345 m!6412142))

(declare-fun m!6412144 () Bool)

(assert (=> b!5386345 m!6412144))

(declare-fun m!6412146 () Bool)

(assert (=> b!5386345 m!6412146))

(declare-fun m!6412148 () Bool)

(assert (=> b!5386331 m!6412148))

(declare-fun m!6412150 () Bool)

(assert (=> b!5386331 m!6412150))

(declare-fun m!6412152 () Bool)

(assert (=> b!5386331 m!6412152))

(declare-fun m!6412154 () Bool)

(assert (=> b!5386333 m!6412154))

(declare-fun m!6412156 () Bool)

(assert (=> b!5386333 m!6412156))

(declare-fun m!6412158 () Bool)

(assert (=> b!5386333 m!6412158))

(declare-fun m!6412160 () Bool)

(assert (=> b!5386333 m!6412160))

(declare-fun m!6412162 () Bool)

(assert (=> b!5386333 m!6412162))

(declare-fun m!6412164 () Bool)

(assert (=> b!5386346 m!6412164))

(declare-fun m!6412166 () Bool)

(assert (=> b!5386346 m!6412166))

(declare-fun m!6412168 () Bool)

(assert (=> b!5386346 m!6412168))

(declare-fun m!6412170 () Bool)

(assert (=> b!5386346 m!6412170))

(declare-fun m!6412172 () Bool)

(assert (=> b!5386346 m!6412172))

(declare-fun m!6412174 () Bool)

(assert (=> b!5386346 m!6412174))

(declare-fun m!6412176 () Bool)

(assert (=> b!5386346 m!6412176))

(declare-fun m!6412178 () Bool)

(assert (=> b!5386346 m!6412178))

(declare-fun m!6412180 () Bool)

(assert (=> b!5386346 m!6412180))

(declare-fun m!6412182 () Bool)

(assert (=> b!5386322 m!6412182))

(declare-fun m!6412184 () Bool)

(assert (=> b!5386322 m!6412184))

(declare-fun m!6412186 () Bool)

(assert (=> b!5386322 m!6412186))

(declare-fun m!6412188 () Bool)

(assert (=> b!5386322 m!6412188))

(declare-fun m!6412190 () Bool)

(assert (=> b!5386322 m!6412190))

(declare-fun m!6412192 () Bool)

(assert (=> b!5386322 m!6412192))

(declare-fun m!6412194 () Bool)

(assert (=> b!5386322 m!6412194))

(declare-fun m!6412196 () Bool)

(assert (=> b!5386344 m!6412196))

(declare-fun m!6412198 () Bool)

(assert (=> start!566162 m!6412198))

(declare-fun m!6412200 () Bool)

(assert (=> b!5386327 m!6412200))

(assert (=> b!5386327 m!6412200))

(declare-fun m!6412202 () Bool)

(assert (=> b!5386327 m!6412202))

(declare-fun m!6412204 () Bool)

(assert (=> b!5386336 m!6412204))

(declare-fun m!6412206 () Bool)

(assert (=> b!5386336 m!6412206))

(declare-fun m!6412208 () Bool)

(assert (=> b!5386336 m!6412208))

(declare-fun m!6412210 () Bool)

(assert (=> b!5386321 m!6412210))

(declare-fun m!6412212 () Bool)

(assert (=> b!5386324 m!6412212))

(declare-fun m!6412214 () Bool)

(assert (=> b!5386343 m!6412214))

(declare-fun m!6412216 () Bool)

(assert (=> b!5386343 m!6412216))

(declare-fun m!6412218 () Bool)

(assert (=> b!5386343 m!6412218))

(assert (=> b!5386343 m!6412216))

(declare-fun m!6412220 () Bool)

(assert (=> b!5386343 m!6412220))

(declare-fun m!6412222 () Bool)

(assert (=> b!5386343 m!6412222))

(declare-fun m!6412224 () Bool)

(assert (=> b!5386343 m!6412224))

(declare-fun m!6412226 () Bool)

(assert (=> b!5386343 m!6412226))

(declare-fun m!6412228 () Bool)

(assert (=> b!5386343 m!6412228))

(declare-fun m!6412230 () Bool)

(assert (=> b!5386325 m!6412230))

(declare-fun m!6412232 () Bool)

(assert (=> b!5386335 m!6412232))

(declare-fun m!6412234 () Bool)

(assert (=> b!5386342 m!6412234))

(declare-fun m!6412236 () Bool)

(assert (=> b!5386342 m!6412236))

(declare-fun m!6412238 () Bool)

(assert (=> b!5386342 m!6412238))

(declare-fun m!6412240 () Bool)

(assert (=> b!5386342 m!6412240))

(declare-fun m!6412242 () Bool)

(assert (=> b!5386342 m!6412242))

(declare-fun m!6412244 () Bool)

(assert (=> b!5386342 m!6412244))

(declare-fun m!6412246 () Bool)

(assert (=> b!5386342 m!6412246))

(declare-fun m!6412248 () Bool)

(assert (=> b!5386342 m!6412248))

(declare-fun m!6412250 () Bool)

(assert (=> b!5386342 m!6412250))

(declare-fun m!6412252 () Bool)

(assert (=> b!5386342 m!6412252))

(assert (=> b!5386342 m!6412250))

(declare-fun m!6412254 () Bool)

(assert (=> b!5386342 m!6412254))

(declare-fun m!6412256 () Bool)

(assert (=> b!5386342 m!6412256))

(declare-fun m!6412258 () Bool)

(assert (=> b!5386342 m!6412258))

(declare-fun m!6412260 () Bool)

(assert (=> b!5386342 m!6412260))

(declare-fun m!6412262 () Bool)

(assert (=> b!5386342 m!6412262))

(declare-fun m!6412264 () Bool)

(assert (=> b!5386319 m!6412264))

(declare-fun m!6412266 () Bool)

(assert (=> b!5386320 m!6412266))

(declare-fun m!6412268 () Bool)

(assert (=> b!5386316 m!6412268))

(declare-fun m!6412270 () Bool)

(assert (=> b!5386351 m!6412270))

(check-sat (not b!5386350) (not b!5386340) (not b!5386316) (not b!5386337) (not b!5386328) (not b!5386315) (not b!5386332) (not b!5386322) (not b!5386338) (not b!5386336) (not b!5386335) (not b!5386351) (not b!5386343) (not b!5386327) (not b!5386326) (not b!5386342) (not b!5386356) (not b!5386331) (not b!5386319) (not setNonEmpty!34973) (not b!5386346) (not b!5386348) (not b!5386325) (not b!5386339) (not b!5386355) (not b!5386345) (not b!5386354) (not b!5386352) (not b!5386314) (not b!5386333) (not b!5386321) (not b!5386329) (not b!5386357) (not b!5386324) tp_is_empty!39503 (not b!5386320) (not start!566162) (not b!5386344))
(check-sat)
