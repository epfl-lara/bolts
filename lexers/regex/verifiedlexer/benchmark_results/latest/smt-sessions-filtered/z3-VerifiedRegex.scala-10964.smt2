; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!567486 () Bool)

(assert start!567486)

(declare-fun b!5403370 () Bool)

(assert (=> b!5403370 true))

(assert (=> b!5403370 true))

(declare-fun lambda!281550 () Int)

(declare-fun lambda!281549 () Int)

(assert (=> b!5403370 (not (= lambda!281550 lambda!281549))))

(assert (=> b!5403370 true))

(assert (=> b!5403370 true))

(declare-fun b!5403354 () Bool)

(assert (=> b!5403354 true))

(declare-fun b!5403379 () Bool)

(assert (=> b!5403379 true))

(declare-fun bs!1248458 () Bool)

(declare-fun b!5403380 () Bool)

(assert (= bs!1248458 (and b!5403380 b!5403370)))

(declare-fun lambda!281554 () Int)

(declare-datatypes ((C!30620 0))(
  ( (C!30621 (val!25012 Int)) )
))
(declare-datatypes ((Regex!15175 0))(
  ( (ElementMatch!15175 (c!941773 C!30620)) (Concat!24020 (regOne!30862 Regex!15175) (regTwo!30862 Regex!15175)) (EmptyExpr!15175) (Star!15175 (reg!15504 Regex!15175)) (EmptyLang!15175) (Union!15175 (regOne!30863 Regex!15175) (regTwo!30863 Regex!15175)) )
))
(declare-fun r!7292 () Regex!15175)

(declare-fun lt!2203072 () Regex!15175)

(assert (=> bs!1248458 (= (= lt!2203072 (regOne!30862 r!7292)) (= lambda!281554 lambda!281549))))

(assert (=> bs!1248458 (not (= lambda!281554 lambda!281550))))

(assert (=> b!5403380 true))

(assert (=> b!5403380 true))

(assert (=> b!5403380 true))

(declare-fun lambda!281555 () Int)

(assert (=> bs!1248458 (not (= lambda!281555 lambda!281549))))

(assert (=> bs!1248458 (= (= lt!2203072 (regOne!30862 r!7292)) (= lambda!281555 lambda!281550))))

(assert (=> b!5403380 (not (= lambda!281555 lambda!281554))))

(assert (=> b!5403380 true))

(assert (=> b!5403380 true))

(assert (=> b!5403380 true))

(declare-fun b!5403350 () Bool)

(declare-fun e!3350069 () Bool)

(declare-fun e!3350062 () Bool)

(assert (=> b!5403350 (= e!3350069 e!3350062)))

(declare-fun res!2297424 () Bool)

(assert (=> b!5403350 (=> res!2297424 e!3350062)))

(declare-fun lt!2203077 () Regex!15175)

(assert (=> b!5403350 (= res!2297424 (not (= r!7292 lt!2203077)))))

(declare-fun lt!2203037 () Regex!15175)

(assert (=> b!5403350 (= lt!2203077 (Concat!24020 lt!2203037 (regTwo!30862 r!7292)))))

(declare-fun b!5403351 () Bool)

(declare-fun e!3350064 () Bool)

(declare-fun e!3350076 () Bool)

(assert (=> b!5403351 (= e!3350064 e!3350076)))

(declare-fun res!2297414 () Bool)

(assert (=> b!5403351 (=> res!2297414 e!3350076)))

(declare-datatypes ((List!61824 0))(
  ( (Nil!61700) (Cons!61700 (h!68148 C!30620) (t!375047 List!61824)) )
))
(declare-fun s!2326 () List!61824)

(declare-fun lt!2203092 () List!61824)

(assert (=> b!5403351 (= res!2297414 (not (= s!2326 lt!2203092)))))

(declare-datatypes ((tuple2!64748 0))(
  ( (tuple2!64749 (_1!35677 List!61824) (_2!35677 List!61824)) )
))
(declare-fun lt!2203042 () tuple2!64748)

(declare-fun ++!13523 (List!61824 List!61824) List!61824)

(assert (=> b!5403351 (= lt!2203092 (++!13523 (_1!35677 lt!2203042) (_2!35677 lt!2203042)))))

(declare-datatypes ((Option!15286 0))(
  ( (None!15285) (Some!15285 (v!51314 tuple2!64748)) )
))
(declare-fun lt!2203055 () Option!15286)

(declare-fun get!21265 (Option!15286) tuple2!64748)

(assert (=> b!5403351 (= lt!2203042 (get!21265 lt!2203055))))

(declare-fun isDefined!11989 (Option!15286) Bool)

(assert (=> b!5403351 (isDefined!11989 lt!2203055)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61825 0))(
  ( (Nil!61701) (Cons!61701 (h!68149 Regex!15175) (t!375048 List!61825)) )
))
(declare-datatypes ((Context!9118 0))(
  ( (Context!9119 (exprs!5059 List!61825)) )
))
(declare-fun lt!2203069 () (InoxSet Context!9118))

(declare-fun lt!2203057 () (InoxSet Context!9118))

(declare-fun findConcatSeparationZippers!32 ((InoxSet Context!9118) (InoxSet Context!9118) List!61824 List!61824 List!61824) Option!15286)

(assert (=> b!5403351 (= lt!2203055 (findConcatSeparationZippers!32 lt!2203057 lt!2203069 Nil!61700 s!2326 s!2326))))

(declare-fun lt!2203086 () Context!9118)

(declare-datatypes ((Unit!154222 0))(
  ( (Unit!154223) )
))
(declare-fun lt!2203041 () Unit!154222)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!32 ((InoxSet Context!9118) Context!9118 List!61824) Unit!154222)

(assert (=> b!5403351 (= lt!2203041 (lemmaConcatZipperMatchesStringThenFindConcatDefined!32 lt!2203057 lt!2203086 s!2326))))

(declare-fun b!5403352 () Bool)

(declare-fun e!3350071 () Bool)

(declare-fun e!3350078 () Bool)

(assert (=> b!5403352 (= e!3350071 e!3350078)))

(declare-fun res!2297407 () Bool)

(assert (=> b!5403352 (=> res!2297407 e!3350078)))

(declare-datatypes ((List!61826 0))(
  ( (Nil!61702) (Cons!61702 (h!68150 Context!9118) (t!375049 List!61826)) )
))
(declare-fun lt!2203090 () List!61826)

(declare-fun unfocusZipper!917 (List!61826) Regex!15175)

(assert (=> b!5403352 (= res!2297407 (not (= (unfocusZipper!917 lt!2203090) lt!2203077)))))

(assert (=> b!5403352 (= lt!2203090 (Cons!61702 lt!2203086 Nil!61702))))

(declare-fun b!5403353 () Bool)

(declare-fun e!3350074 () Unit!154222)

(declare-fun Unit!154224 () Unit!154222)

(assert (=> b!5403353 (= e!3350074 Unit!154224)))

(declare-fun lt!2203071 () (InoxSet Context!9118))

(declare-fun lt!2203050 () (InoxSet Context!9118))

(declare-fun lt!2203075 () Unit!154222)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!412 ((InoxSet Context!9118) (InoxSet Context!9118) List!61824) Unit!154222)

(assert (=> b!5403353 (= lt!2203075 (lemmaZipperConcatMatchesSameAsBothZippers!412 lt!2203071 lt!2203050 (t!375047 s!2326)))))

(declare-fun res!2297419 () Bool)

(declare-fun matchZipper!1419 ((InoxSet Context!9118) List!61824) Bool)

(assert (=> b!5403353 (= res!2297419 (matchZipper!1419 lt!2203071 (t!375047 s!2326)))))

(declare-fun e!3350058 () Bool)

(assert (=> b!5403353 (=> res!2297419 e!3350058)))

(assert (=> b!5403353 (= (matchZipper!1419 ((_ map or) lt!2203071 lt!2203050) (t!375047 s!2326)) e!3350058)))

(declare-fun e!3350053 () Bool)

(declare-fun e!3350068 () Bool)

(assert (=> b!5403354 (= e!3350053 e!3350068)))

(declare-fun res!2297422 () Bool)

(assert (=> b!5403354 (=> res!2297422 e!3350068)))

(get-info :version)

(assert (=> b!5403354 (= res!2297422 (or (and ((_ is ElementMatch!15175) (regOne!30862 r!7292)) (= (c!941773 (regOne!30862 r!7292)) (h!68148 s!2326))) ((_ is Union!15175) (regOne!30862 r!7292))))))

(declare-fun lt!2203082 () Unit!154222)

(assert (=> b!5403354 (= lt!2203082 e!3350074)))

(declare-fun c!941772 () Bool)

(declare-fun lt!2203056 () Bool)

(assert (=> b!5403354 (= c!941772 lt!2203056)))

(declare-fun zl!343 () List!61826)

(declare-fun nullable!5344 (Regex!15175) Bool)

(assert (=> b!5403354 (= lt!2203056 (nullable!5344 (h!68149 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun lambda!281551 () Int)

(declare-fun z!1189 () (InoxSet Context!9118))

(declare-fun flatMap!902 ((InoxSet Context!9118) Int) (InoxSet Context!9118))

(declare-fun derivationStepZipperUp!547 (Context!9118 C!30620) (InoxSet Context!9118))

(assert (=> b!5403354 (= (flatMap!902 z!1189 lambda!281551) (derivationStepZipperUp!547 (h!68150 zl!343) (h!68148 s!2326)))))

(declare-fun lt!2203083 () Unit!154222)

(declare-fun lemmaFlatMapOnSingletonSet!434 ((InoxSet Context!9118) Context!9118 Int) Unit!154222)

(assert (=> b!5403354 (= lt!2203083 (lemmaFlatMapOnSingletonSet!434 z!1189 (h!68150 zl!343) lambda!281551))))

(declare-fun lt!2203045 () Context!9118)

(assert (=> b!5403354 (= lt!2203050 (derivationStepZipperUp!547 lt!2203045 (h!68148 s!2326)))))

(declare-fun derivationStepZipperDown!623 (Regex!15175 Context!9118 C!30620) (InoxSet Context!9118))

(assert (=> b!5403354 (= lt!2203071 (derivationStepZipperDown!623 (h!68149 (exprs!5059 (h!68150 zl!343))) lt!2203045 (h!68148 s!2326)))))

(assert (=> b!5403354 (= lt!2203045 (Context!9119 (t!375048 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun lt!2203091 () (InoxSet Context!9118))

(assert (=> b!5403354 (= lt!2203091 (derivationStepZipperUp!547 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343))))) (h!68148 s!2326)))))

(declare-fun b!5403355 () Bool)

(declare-fun res!2297441 () Bool)

(declare-fun e!3350060 () Bool)

(assert (=> b!5403355 (=> res!2297441 e!3350060)))

(assert (=> b!5403355 (= res!2297441 (not ((_ is Cons!61701) (exprs!5059 (h!68150 zl!343)))))))

(declare-fun b!5403356 () Bool)

(declare-fun e!3350059 () Bool)

(assert (=> b!5403356 (= e!3350059 e!3350069)))

(declare-fun res!2297412 () Bool)

(assert (=> b!5403356 (=> res!2297412 e!3350069)))

(declare-fun lt!2203087 () (InoxSet Context!9118))

(declare-fun lt!2203039 () Bool)

(assert (=> b!5403356 (= res!2297412 (not (= lt!2203039 (matchZipper!1419 lt!2203087 (t!375047 s!2326)))))))

(declare-fun lt!2203046 () (InoxSet Context!9118))

(assert (=> b!5403356 (= lt!2203039 (matchZipper!1419 lt!2203046 s!2326))))

(declare-fun res!2297413 () Bool)

(declare-fun e!3350070 () Bool)

(assert (=> start!567486 (=> (not res!2297413) (not e!3350070))))

(declare-fun validRegex!6911 (Regex!15175) Bool)

(assert (=> start!567486 (= res!2297413 (validRegex!6911 r!7292))))

(assert (=> start!567486 e!3350070))

(declare-fun e!3350054 () Bool)

(assert (=> start!567486 e!3350054))

(declare-fun condSetEmpty!35177 () Bool)

(assert (=> start!567486 (= condSetEmpty!35177 (= z!1189 ((as const (Array Context!9118 Bool)) false)))))

(declare-fun setRes!35177 () Bool)

(assert (=> start!567486 setRes!35177))

(declare-fun e!3350055 () Bool)

(assert (=> start!567486 e!3350055))

(declare-fun e!3350072 () Bool)

(assert (=> start!567486 e!3350072))

(declare-fun b!5403349 () Bool)

(declare-fun res!2297417 () Bool)

(assert (=> b!5403349 (=> res!2297417 e!3350076)))

(assert (=> b!5403349 (= res!2297417 (not (matchZipper!1419 lt!2203069 (_2!35677 lt!2203042))))))

(declare-fun b!5403357 () Bool)

(declare-fun tp_is_empty!39603 () Bool)

(declare-fun tp!1494726 () Bool)

(assert (=> b!5403357 (= e!3350072 (and tp_is_empty!39603 tp!1494726))))

(declare-fun b!5403358 () Bool)

(declare-fun res!2297423 () Bool)

(assert (=> b!5403358 (=> res!2297423 e!3350068)))

(assert (=> b!5403358 (= res!2297423 (or ((_ is Concat!24020) (regOne!30862 r!7292)) (not ((_ is Star!15175) (regOne!30862 r!7292)))))))

(declare-fun b!5403359 () Bool)

(declare-fun res!2297420 () Bool)

(declare-fun e!3350061 () Bool)

(assert (=> b!5403359 (=> res!2297420 e!3350061)))

(assert (=> b!5403359 (= res!2297420 (not lt!2203056))))

(declare-fun b!5403360 () Bool)

(declare-fun e!3350065 () Bool)

(assert (=> b!5403360 (= e!3350070 e!3350065)))

(declare-fun res!2297418 () Bool)

(assert (=> b!5403360 (=> (not res!2297418) (not e!3350065))))

(declare-fun lt!2203070 () Regex!15175)

(assert (=> b!5403360 (= res!2297418 (= r!7292 lt!2203070))))

(assert (=> b!5403360 (= lt!2203070 (unfocusZipper!917 zl!343))))

(declare-fun b!5403361 () Bool)

(declare-fun res!2297431 () Bool)

(assert (=> b!5403361 (=> res!2297431 e!3350076)))

(assert (=> b!5403361 (= res!2297431 (not (matchZipper!1419 lt!2203057 (_1!35677 lt!2203042))))))

(declare-fun b!5403362 () Bool)

(declare-fun res!2297432 () Bool)

(assert (=> b!5403362 (=> res!2297432 e!3350069)))

(assert (=> b!5403362 (= res!2297432 (not (= lt!2203070 r!7292)))))

(declare-fun b!5403363 () Bool)

(declare-fun tp!1494720 () Bool)

(declare-fun tp!1494729 () Bool)

(assert (=> b!5403363 (= e!3350054 (and tp!1494720 tp!1494729))))

(declare-fun b!5403364 () Bool)

(declare-fun res!2297435 () Bool)

(assert (=> b!5403364 (=> res!2297435 e!3350060)))

(declare-fun generalisedUnion!1104 (List!61825) Regex!15175)

(declare-fun unfocusZipperList!617 (List!61826) List!61825)

(assert (=> b!5403364 (= res!2297435 (not (= r!7292 (generalisedUnion!1104 (unfocusZipperList!617 zl!343)))))))

(declare-fun b!5403365 () Bool)

(declare-fun e!3350075 () Bool)

(assert (=> b!5403365 (= e!3350062 e!3350075)))

(declare-fun res!2297416 () Bool)

(assert (=> b!5403365 (=> res!2297416 e!3350075)))

(declare-fun lt!2203058 () Context!9118)

(declare-fun lt!2203048 () Regex!15175)

(assert (=> b!5403365 (= res!2297416 (not (= (unfocusZipper!917 (Cons!61702 lt!2203058 Nil!61702)) lt!2203048)))))

(assert (=> b!5403365 (= lt!2203048 (Concat!24020 (reg!15504 (regOne!30862 r!7292)) lt!2203077))))

(declare-fun b!5403366 () Bool)

(declare-fun res!2297439 () Bool)

(declare-fun e!3350066 () Bool)

(assert (=> b!5403366 (=> res!2297439 e!3350066)))

(declare-fun lt!2203067 () Bool)

(assert (=> b!5403366 (= res!2297439 (or (not lt!2203067) (not lt!2203039)))))

(declare-fun setIsEmpty!35177 () Bool)

(assert (=> setIsEmpty!35177 setRes!35177))

(declare-fun b!5403367 () Bool)

(declare-fun res!2297409 () Bool)

(assert (=> b!5403367 (=> res!2297409 e!3350060)))

(declare-fun isEmpty!33688 (List!61826) Bool)

(assert (=> b!5403367 (= res!2297409 (not (isEmpty!33688 (t!375049 zl!343))))))

(declare-fun b!5403368 () Bool)

(declare-fun tp!1494727 () Bool)

(declare-fun tp!1494723 () Bool)

(assert (=> b!5403368 (= e!3350054 (and tp!1494727 tp!1494723))))

(declare-fun b!5403369 () Bool)

(declare-fun e!3350067 () Bool)

(assert (=> b!5403369 (= e!3350067 (not (matchZipper!1419 lt!2203050 (t!375047 s!2326))))))

(assert (=> b!5403370 (= e!3350060 e!3350053)))

(declare-fun res!2297427 () Bool)

(assert (=> b!5403370 (=> res!2297427 e!3350053)))

(declare-fun lt!2203081 () Bool)

(declare-fun lt!2203051 () Bool)

(assert (=> b!5403370 (= res!2297427 (or (not (= lt!2203081 lt!2203051)) ((_ is Nil!61700) s!2326)))))

(declare-fun Exists!2356 (Int) Bool)

(assert (=> b!5403370 (= (Exists!2356 lambda!281549) (Exists!2356 lambda!281550))))

(declare-fun lt!2203084 () Unit!154222)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1010 (Regex!15175 Regex!15175 List!61824) Unit!154222)

(assert (=> b!5403370 (= lt!2203084 (lemmaExistCutMatchRandMatchRSpecEquivalent!1010 (regOne!30862 r!7292) (regTwo!30862 r!7292) s!2326))))

(assert (=> b!5403370 (= lt!2203051 (Exists!2356 lambda!281549))))

(declare-fun findConcatSeparation!1700 (Regex!15175 Regex!15175 List!61824 List!61824 List!61824) Option!15286)

(assert (=> b!5403370 (= lt!2203051 (isDefined!11989 (findConcatSeparation!1700 (regOne!30862 r!7292) (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326)))))

(declare-fun lt!2203047 () Unit!154222)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1464 (Regex!15175 Regex!15175 List!61824) Unit!154222)

(assert (=> b!5403370 (= lt!2203047 (lemmaFindConcatSeparationEquivalentToExists!1464 (regOne!30862 r!7292) (regTwo!30862 r!7292) s!2326))))

(declare-fun b!5403371 () Bool)

(declare-fun e!3350056 () Bool)

(declare-fun tp!1494721 () Bool)

(assert (=> b!5403371 (= e!3350056 tp!1494721)))

(declare-fun b!5403372 () Bool)

(declare-fun res!2297410 () Bool)

(assert (=> b!5403372 (=> res!2297410 e!3350053)))

(declare-fun isEmpty!33689 (List!61825) Bool)

(assert (=> b!5403372 (= res!2297410 (isEmpty!33689 (t!375048 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun b!5403373 () Bool)

(declare-fun res!2297438 () Bool)

(assert (=> b!5403373 (=> res!2297438 e!3350060)))

(assert (=> b!5403373 (= res!2297438 (or ((_ is EmptyExpr!15175) r!7292) ((_ is EmptyLang!15175) r!7292) ((_ is ElementMatch!15175) r!7292) ((_ is Union!15175) r!7292) (not ((_ is Concat!24020) r!7292))))))

(declare-fun b!5403374 () Bool)

(assert (=> b!5403374 (= e!3350078 e!3350061)))

(declare-fun res!2297440 () Bool)

(assert (=> b!5403374 (=> res!2297440 e!3350061)))

(assert (=> b!5403374 (= res!2297440 lt!2203081)))

(declare-fun lt!2203073 () Bool)

(declare-fun matchRSpec!2278 (Regex!15175 List!61824) Bool)

(assert (=> b!5403374 (= lt!2203073 (matchRSpec!2278 lt!2203048 s!2326))))

(declare-fun matchR!7360 (Regex!15175 List!61824) Bool)

(assert (=> b!5403374 (= lt!2203073 (matchR!7360 lt!2203048 s!2326))))

(declare-fun lt!2203074 () Unit!154222)

(declare-fun mainMatchTheorem!2278 (Regex!15175 List!61824) Unit!154222)

(assert (=> b!5403374 (= lt!2203074 (mainMatchTheorem!2278 lt!2203048 s!2326))))

(declare-fun b!5403375 () Bool)

(declare-fun e!3350077 () Bool)

(declare-fun tp!1494724 () Bool)

(assert (=> b!5403375 (= e!3350077 tp!1494724)))

(declare-fun b!5403376 () Bool)

(declare-fun tp!1494725 () Bool)

(assert (=> b!5403376 (= e!3350054 tp!1494725)))

(declare-fun tp!1494722 () Bool)

(declare-fun setElem!35177 () Context!9118)

(declare-fun setNonEmpty!35177 () Bool)

(declare-fun inv!81184 (Context!9118) Bool)

(assert (=> setNonEmpty!35177 (= setRes!35177 (and tp!1494722 (inv!81184 setElem!35177) e!3350056))))

(declare-fun setRest!35177 () (InoxSet Context!9118))

(assert (=> setNonEmpty!35177 (= z!1189 ((_ map or) (store ((as const (Array Context!9118 Bool)) false) setElem!35177 true) setRest!35177))))

(declare-fun tp!1494728 () Bool)

(declare-fun b!5403377 () Bool)

(assert (=> b!5403377 (= e!3350055 (and (inv!81184 (h!68150 zl!343)) e!3350077 tp!1494728))))

(declare-fun b!5403378 () Bool)

(declare-fun res!2297437 () Bool)

(assert (=> b!5403378 (=> res!2297437 e!3350068)))

(declare-fun e!3350063 () Bool)

(assert (=> b!5403378 (= res!2297437 e!3350063)))

(declare-fun res!2297421 () Bool)

(assert (=> b!5403378 (=> (not res!2297421) (not e!3350063))))

(assert (=> b!5403378 (= res!2297421 ((_ is Concat!24020) (regOne!30862 r!7292)))))

(assert (=> b!5403379 (= e!3350066 e!3350064)))

(declare-fun res!2297408 () Bool)

(assert (=> b!5403379 (=> res!2297408 e!3350064)))

(declare-fun appendTo!34 ((InoxSet Context!9118) Context!9118) (InoxSet Context!9118))

(assert (=> b!5403379 (= res!2297408 (not (= (appendTo!34 lt!2203057 lt!2203086) lt!2203046)))))

(declare-fun lambda!281552 () Int)

(declare-fun lt!2203065 () List!61825)

(declare-fun lt!2203085 () List!61825)

(declare-fun map!14147 ((InoxSet Context!9118) Int) (InoxSet Context!9118))

(declare-fun ++!13524 (List!61825 List!61825) List!61825)

(assert (=> b!5403379 (= (map!14147 lt!2203057 lambda!281552) (store ((as const (Array Context!9118 Bool)) false) (Context!9119 (++!13524 lt!2203085 lt!2203065)) true))))

(declare-fun lambda!281553 () Int)

(declare-fun lt!2203053 () Unit!154222)

(declare-fun lemmaConcatPreservesForall!200 (List!61825 List!61825 Int) Unit!154222)

(assert (=> b!5403379 (= lt!2203053 (lemmaConcatPreservesForall!200 lt!2203085 lt!2203065 lambda!281553))))

(declare-fun lt!2203064 () Unit!154222)

(declare-fun lt!2203068 () Context!9118)

(declare-fun lemmaMapOnSingletonSet!34 ((InoxSet Context!9118) Context!9118 Int) Unit!154222)

(assert (=> b!5403379 (= lt!2203064 (lemmaMapOnSingletonSet!34 lt!2203057 lt!2203068 lambda!281552))))

(assert (=> b!5403380 (= e!3350076 (validRegex!6911 lt!2203072))))

(assert (=> b!5403380 (= (Exists!2356 lambda!281554) (Exists!2356 lambda!281555))))

(declare-fun lt!2203088 () Unit!154222)

(assert (=> b!5403380 (= lt!2203088 (lemmaExistCutMatchRandMatchRSpecEquivalent!1010 lt!2203072 (regTwo!30862 r!7292) s!2326))))

(assert (=> b!5403380 (= (isDefined!11989 (findConcatSeparation!1700 lt!2203072 (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326)) (Exists!2356 lambda!281554))))

(declare-fun lt!2203066 () Unit!154222)

(assert (=> b!5403380 (= lt!2203066 (lemmaFindConcatSeparationEquivalentToExists!1464 lt!2203072 (regTwo!30862 r!7292) s!2326))))

(declare-fun lt!2203063 () Regex!15175)

(assert (=> b!5403380 (matchRSpec!2278 lt!2203063 s!2326)))

(declare-fun lt!2203059 () Unit!154222)

(assert (=> b!5403380 (= lt!2203059 (mainMatchTheorem!2278 lt!2203063 s!2326))))

(assert (=> b!5403380 (matchR!7360 lt!2203063 s!2326)))

(assert (=> b!5403380 (= lt!2203063 (Concat!24020 lt!2203072 (regTwo!30862 r!7292)))))

(assert (=> b!5403380 (= lt!2203072 (Concat!24020 (reg!15504 (regOne!30862 r!7292)) lt!2203037))))

(declare-fun lt!2203076 () Unit!154222)

(declare-fun lemmaConcatAssociative!28 (Regex!15175 Regex!15175 Regex!15175 List!61824) Unit!154222)

(assert (=> b!5403380 (= lt!2203076 (lemmaConcatAssociative!28 (reg!15504 (regOne!30862 r!7292)) lt!2203037 (regTwo!30862 r!7292) s!2326))))

(declare-fun e!3350073 () Bool)

(assert (=> b!5403380 e!3350073))

(declare-fun res!2297430 () Bool)

(assert (=> b!5403380 (=> (not res!2297430) (not e!3350073))))

(assert (=> b!5403380 (= res!2297430 (matchR!7360 lt!2203048 lt!2203092))))

(declare-fun lt!2203052 () Unit!154222)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!198 (Regex!15175 Regex!15175 List!61824 List!61824) Unit!154222)

(assert (=> b!5403380 (= lt!2203052 (lemmaTwoRegexMatchThenConcatMatchesConcatString!198 (reg!15504 (regOne!30862 r!7292)) lt!2203077 (_1!35677 lt!2203042) (_2!35677 lt!2203042)))))

(assert (=> b!5403380 (matchR!7360 lt!2203077 (_2!35677 lt!2203042))))

(declare-fun lt!2203044 () Unit!154222)

(declare-fun theoremZipperRegexEquiv!489 ((InoxSet Context!9118) List!61826 Regex!15175 List!61824) Unit!154222)

(assert (=> b!5403380 (= lt!2203044 (theoremZipperRegexEquiv!489 lt!2203069 lt!2203090 lt!2203077 (_2!35677 lt!2203042)))))

(assert (=> b!5403380 (matchR!7360 (reg!15504 (regOne!30862 r!7292)) (_1!35677 lt!2203042))))

(declare-fun lt!2203040 () List!61826)

(declare-fun lt!2203061 () Unit!154222)

(assert (=> b!5403380 (= lt!2203061 (theoremZipperRegexEquiv!489 lt!2203057 lt!2203040 (reg!15504 (regOne!30862 r!7292)) (_1!35677 lt!2203042)))))

(assert (=> b!5403380 (matchZipper!1419 (store ((as const (Array Context!9118 Bool)) false) (Context!9119 (++!13524 lt!2203085 lt!2203065)) true) lt!2203092)))

(declare-fun lt!2203043 () Unit!154222)

(assert (=> b!5403380 (= lt!2203043 (lemmaConcatPreservesForall!200 lt!2203085 lt!2203065 lambda!281553))))

(declare-fun lt!2203060 () Unit!154222)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!48 (Context!9118 Context!9118 List!61824 List!61824) Unit!154222)

(assert (=> b!5403380 (= lt!2203060 (lemmaConcatenateContextMatchesConcatOfStrings!48 lt!2203068 lt!2203086 (_1!35677 lt!2203042) (_2!35677 lt!2203042)))))

(declare-fun b!5403381 () Bool)

(assert (=> b!5403381 (= e!3350054 tp_is_empty!39603)))

(declare-fun b!5403382 () Bool)

(assert (=> b!5403382 (= e!3350073 lt!2203073)))

(declare-fun b!5403383 () Bool)

(declare-fun res!2297428 () Bool)

(assert (=> b!5403383 (=> res!2297428 e!3350061)))

(assert (=> b!5403383 (= res!2297428 (not (matchZipper!1419 z!1189 s!2326)))))

(declare-fun b!5403384 () Bool)

(assert (=> b!5403384 (= e!3350063 (nullable!5344 (regOne!30862 (regOne!30862 r!7292))))))

(declare-fun b!5403385 () Bool)

(declare-fun res!2297433 () Bool)

(assert (=> b!5403385 (=> (not res!2297433) (not e!3350070))))

(declare-fun toList!8959 ((InoxSet Context!9118)) List!61826)

(assert (=> b!5403385 (= res!2297433 (= (toList!8959 z!1189) zl!343))))

(declare-fun b!5403386 () Bool)

(declare-fun res!2297415 () Bool)

(assert (=> b!5403386 (=> res!2297415 e!3350060)))

(declare-fun generalisedConcat!844 (List!61825) Regex!15175)

(assert (=> b!5403386 (= res!2297415 (not (= r!7292 (generalisedConcat!844 (exprs!5059 (h!68150 zl!343))))))))

(declare-fun b!5403387 () Bool)

(declare-fun e!3350057 () Bool)

(assert (=> b!5403387 (= e!3350068 e!3350057)))

(declare-fun res!2297429 () Bool)

(assert (=> b!5403387 (=> res!2297429 e!3350057)))

(declare-fun lt!2203080 () (InoxSet Context!9118))

(assert (=> b!5403387 (= res!2297429 (not (= lt!2203071 lt!2203080)))))

(assert (=> b!5403387 (= lt!2203080 (derivationStepZipperDown!623 (reg!15504 (regOne!30862 r!7292)) lt!2203086 (h!68148 s!2326)))))

(assert (=> b!5403387 (= lt!2203086 (Context!9119 lt!2203065))))

(assert (=> b!5403387 (= lt!2203065 (Cons!61701 lt!2203037 (t!375048 (exprs!5059 (h!68150 zl!343)))))))

(assert (=> b!5403387 (= lt!2203037 (Star!15175 (reg!15504 (regOne!30862 r!7292))))))

(declare-fun b!5403388 () Bool)

(assert (=> b!5403388 (= e!3350057 e!3350059)))

(declare-fun res!2297426 () Bool)

(assert (=> b!5403388 (=> res!2297426 e!3350059)))

(assert (=> b!5403388 (= res!2297426 (not (= lt!2203087 lt!2203080)))))

(assert (=> b!5403388 (= (flatMap!902 lt!2203046 lambda!281551) (derivationStepZipperUp!547 lt!2203058 (h!68148 s!2326)))))

(declare-fun lt!2203038 () Unit!154222)

(assert (=> b!5403388 (= lt!2203038 (lemmaFlatMapOnSingletonSet!434 lt!2203046 lt!2203058 lambda!281551))))

(declare-fun lt!2203049 () (InoxSet Context!9118))

(assert (=> b!5403388 (= lt!2203049 (derivationStepZipperUp!547 lt!2203058 (h!68148 s!2326)))))

(declare-fun derivationStepZipper!1414 ((InoxSet Context!9118) C!30620) (InoxSet Context!9118))

(assert (=> b!5403388 (= lt!2203087 (derivationStepZipper!1414 lt!2203046 (h!68148 s!2326)))))

(assert (=> b!5403388 (= lt!2203046 (store ((as const (Array Context!9118 Bool)) false) lt!2203058 true))))

(assert (=> b!5403388 (= lt!2203058 (Context!9119 (Cons!61701 (reg!15504 (regOne!30862 r!7292)) lt!2203065)))))

(declare-fun b!5403389 () Bool)

(assert (=> b!5403389 (= e!3350075 e!3350071)))

(declare-fun res!2297436 () Bool)

(assert (=> b!5403389 (=> res!2297436 e!3350071)))

(assert (=> b!5403389 (= res!2297436 (not (= (unfocusZipper!917 lt!2203040) (reg!15504 (regOne!30862 r!7292)))))))

(assert (=> b!5403389 (= lt!2203040 (Cons!61702 lt!2203068 Nil!61702))))

(assert (=> b!5403389 (= (flatMap!902 lt!2203069 lambda!281551) (derivationStepZipperUp!547 lt!2203086 (h!68148 s!2326)))))

(declare-fun lt!2203089 () Unit!154222)

(assert (=> b!5403389 (= lt!2203089 (lemmaFlatMapOnSingletonSet!434 lt!2203069 lt!2203086 lambda!281551))))

(assert (=> b!5403389 (= (flatMap!902 lt!2203057 lambda!281551) (derivationStepZipperUp!547 lt!2203068 (h!68148 s!2326)))))

(declare-fun lt!2203078 () Unit!154222)

(assert (=> b!5403389 (= lt!2203078 (lemmaFlatMapOnSingletonSet!434 lt!2203057 lt!2203068 lambda!281551))))

(declare-fun lt!2203062 () (InoxSet Context!9118))

(assert (=> b!5403389 (= lt!2203062 (derivationStepZipperUp!547 lt!2203086 (h!68148 s!2326)))))

(declare-fun lt!2203054 () (InoxSet Context!9118))

(assert (=> b!5403389 (= lt!2203054 (derivationStepZipperUp!547 lt!2203068 (h!68148 s!2326)))))

(assert (=> b!5403389 (= lt!2203069 (store ((as const (Array Context!9118 Bool)) false) lt!2203086 true))))

(assert (=> b!5403389 (= lt!2203057 (store ((as const (Array Context!9118 Bool)) false) lt!2203068 true))))

(assert (=> b!5403389 (= lt!2203068 (Context!9119 lt!2203085))))

(assert (=> b!5403389 (= lt!2203085 (Cons!61701 (reg!15504 (regOne!30862 r!7292)) Nil!61701))))

(declare-fun b!5403390 () Bool)

(assert (=> b!5403390 (= e!3350065 (not e!3350060))))

(declare-fun res!2297425 () Bool)

(assert (=> b!5403390 (=> res!2297425 e!3350060)))

(assert (=> b!5403390 (= res!2297425 (not ((_ is Cons!61702) zl!343)))))

(assert (=> b!5403390 (= lt!2203081 (matchRSpec!2278 r!7292 s!2326))))

(assert (=> b!5403390 (= lt!2203081 (matchR!7360 r!7292 s!2326))))

(declare-fun lt!2203079 () Unit!154222)

(assert (=> b!5403390 (= lt!2203079 (mainMatchTheorem!2278 r!7292 s!2326))))

(declare-fun b!5403391 () Bool)

(declare-fun Unit!154225 () Unit!154222)

(assert (=> b!5403391 (= e!3350074 Unit!154225)))

(declare-fun b!5403392 () Bool)

(assert (=> b!5403392 (= e!3350058 (matchZipper!1419 lt!2203050 (t!375047 s!2326)))))

(declare-fun b!5403393 () Bool)

(assert (=> b!5403393 (= e!3350061 e!3350066)))

(declare-fun res!2297434 () Bool)

(assert (=> b!5403393 (=> res!2297434 e!3350066)))

(assert (=> b!5403393 (= res!2297434 e!3350067)))

(declare-fun res!2297411 () Bool)

(assert (=> b!5403393 (=> (not res!2297411) (not e!3350067))))

(assert (=> b!5403393 (= res!2297411 (not lt!2203067))))

(assert (=> b!5403393 (= lt!2203067 (matchZipper!1419 lt!2203071 (t!375047 s!2326)))))

(assert (= (and start!567486 res!2297413) b!5403385))

(assert (= (and b!5403385 res!2297433) b!5403360))

(assert (= (and b!5403360 res!2297418) b!5403390))

(assert (= (and b!5403390 (not res!2297425)) b!5403367))

(assert (= (and b!5403367 (not res!2297409)) b!5403386))

(assert (= (and b!5403386 (not res!2297415)) b!5403355))

(assert (= (and b!5403355 (not res!2297441)) b!5403364))

(assert (= (and b!5403364 (not res!2297435)) b!5403373))

(assert (= (and b!5403373 (not res!2297438)) b!5403370))

(assert (= (and b!5403370 (not res!2297427)) b!5403372))

(assert (= (and b!5403372 (not res!2297410)) b!5403354))

(assert (= (and b!5403354 c!941772) b!5403353))

(assert (= (and b!5403354 (not c!941772)) b!5403391))

(assert (= (and b!5403353 (not res!2297419)) b!5403392))

(assert (= (and b!5403354 (not res!2297422)) b!5403378))

(assert (= (and b!5403378 res!2297421) b!5403384))

(assert (= (and b!5403378 (not res!2297437)) b!5403358))

(assert (= (and b!5403358 (not res!2297423)) b!5403387))

(assert (= (and b!5403387 (not res!2297429)) b!5403388))

(assert (= (and b!5403388 (not res!2297426)) b!5403356))

(assert (= (and b!5403356 (not res!2297412)) b!5403362))

(assert (= (and b!5403362 (not res!2297432)) b!5403350))

(assert (= (and b!5403350 (not res!2297424)) b!5403365))

(assert (= (and b!5403365 (not res!2297416)) b!5403389))

(assert (= (and b!5403389 (not res!2297436)) b!5403352))

(assert (= (and b!5403352 (not res!2297407)) b!5403374))

(assert (= (and b!5403374 (not res!2297440)) b!5403383))

(assert (= (and b!5403383 (not res!2297428)) b!5403359))

(assert (= (and b!5403359 (not res!2297420)) b!5403393))

(assert (= (and b!5403393 res!2297411) b!5403369))

(assert (= (and b!5403393 (not res!2297434)) b!5403366))

(assert (= (and b!5403366 (not res!2297439)) b!5403379))

(assert (= (and b!5403379 (not res!2297408)) b!5403351))

(assert (= (and b!5403351 (not res!2297414)) b!5403361))

(assert (= (and b!5403361 (not res!2297431)) b!5403349))

(assert (= (and b!5403349 (not res!2297417)) b!5403380))

(assert (= (and b!5403380 res!2297430) b!5403382))

(assert (= (and start!567486 ((_ is ElementMatch!15175) r!7292)) b!5403381))

(assert (= (and start!567486 ((_ is Concat!24020) r!7292)) b!5403363))

(assert (= (and start!567486 ((_ is Star!15175) r!7292)) b!5403376))

(assert (= (and start!567486 ((_ is Union!15175) r!7292)) b!5403368))

(assert (= (and start!567486 condSetEmpty!35177) setIsEmpty!35177))

(assert (= (and start!567486 (not condSetEmpty!35177)) setNonEmpty!35177))

(assert (= setNonEmpty!35177 b!5403371))

(assert (= b!5403377 b!5403375))

(assert (= (and start!567486 ((_ is Cons!61702) zl!343)) b!5403377))

(assert (= (and start!567486 ((_ is Cons!61700) s!2326)) b!5403357))

(declare-fun m!6427704 () Bool)

(assert (=> b!5403369 m!6427704))

(declare-fun m!6427706 () Bool)

(assert (=> b!5403387 m!6427706))

(declare-fun m!6427708 () Bool)

(assert (=> b!5403360 m!6427708))

(declare-fun m!6427710 () Bool)

(assert (=> setNonEmpty!35177 m!6427710))

(declare-fun m!6427712 () Bool)

(assert (=> b!5403374 m!6427712))

(declare-fun m!6427714 () Bool)

(assert (=> b!5403374 m!6427714))

(declare-fun m!6427716 () Bool)

(assert (=> b!5403374 m!6427716))

(declare-fun m!6427718 () Bool)

(assert (=> b!5403364 m!6427718))

(assert (=> b!5403364 m!6427718))

(declare-fun m!6427720 () Bool)

(assert (=> b!5403364 m!6427720))

(declare-fun m!6427722 () Bool)

(assert (=> b!5403389 m!6427722))

(declare-fun m!6427724 () Bool)

(assert (=> b!5403389 m!6427724))

(declare-fun m!6427726 () Bool)

(assert (=> b!5403389 m!6427726))

(declare-fun m!6427728 () Bool)

(assert (=> b!5403389 m!6427728))

(declare-fun m!6427730 () Bool)

(assert (=> b!5403389 m!6427730))

(declare-fun m!6427732 () Bool)

(assert (=> b!5403389 m!6427732))

(declare-fun m!6427734 () Bool)

(assert (=> b!5403389 m!6427734))

(declare-fun m!6427736 () Bool)

(assert (=> b!5403389 m!6427736))

(declare-fun m!6427738 () Bool)

(assert (=> b!5403389 m!6427738))

(declare-fun m!6427740 () Bool)

(assert (=> b!5403377 m!6427740))

(declare-fun m!6427742 () Bool)

(assert (=> b!5403351 m!6427742))

(declare-fun m!6427744 () Bool)

(assert (=> b!5403351 m!6427744))

(declare-fun m!6427746 () Bool)

(assert (=> b!5403351 m!6427746))

(declare-fun m!6427748 () Bool)

(assert (=> b!5403351 m!6427748))

(declare-fun m!6427750 () Bool)

(assert (=> b!5403351 m!6427750))

(declare-fun m!6427752 () Bool)

(assert (=> b!5403385 m!6427752))

(declare-fun m!6427754 () Bool)

(assert (=> b!5403390 m!6427754))

(declare-fun m!6427756 () Bool)

(assert (=> b!5403390 m!6427756))

(declare-fun m!6427758 () Bool)

(assert (=> b!5403390 m!6427758))

(declare-fun m!6427760 () Bool)

(assert (=> b!5403353 m!6427760))

(declare-fun m!6427762 () Bool)

(assert (=> b!5403353 m!6427762))

(declare-fun m!6427764 () Bool)

(assert (=> b!5403353 m!6427764))

(declare-fun m!6427766 () Bool)

(assert (=> b!5403379 m!6427766))

(declare-fun m!6427768 () Bool)

(assert (=> b!5403379 m!6427768))

(declare-fun m!6427770 () Bool)

(assert (=> b!5403379 m!6427770))

(declare-fun m!6427772 () Bool)

(assert (=> b!5403379 m!6427772))

(declare-fun m!6427774 () Bool)

(assert (=> b!5403379 m!6427774))

(declare-fun m!6427776 () Bool)

(assert (=> b!5403379 m!6427776))

(declare-fun m!6427778 () Bool)

(assert (=> b!5403380 m!6427778))

(declare-fun m!6427780 () Bool)

(assert (=> b!5403380 m!6427780))

(declare-fun m!6427782 () Bool)

(assert (=> b!5403380 m!6427782))

(assert (=> b!5403380 m!6427772))

(declare-fun m!6427784 () Bool)

(assert (=> b!5403380 m!6427784))

(declare-fun m!6427786 () Bool)

(assert (=> b!5403380 m!6427786))

(declare-fun m!6427788 () Bool)

(assert (=> b!5403380 m!6427788))

(declare-fun m!6427790 () Bool)

(assert (=> b!5403380 m!6427790))

(declare-fun m!6427792 () Bool)

(assert (=> b!5403380 m!6427792))

(assert (=> b!5403380 m!6427776))

(assert (=> b!5403380 m!6427790))

(declare-fun m!6427794 () Bool)

(assert (=> b!5403380 m!6427794))

(declare-fun m!6427796 () Bool)

(assert (=> b!5403380 m!6427796))

(declare-fun m!6427798 () Bool)

(assert (=> b!5403380 m!6427798))

(declare-fun m!6427800 () Bool)

(assert (=> b!5403380 m!6427800))

(declare-fun m!6427802 () Bool)

(assert (=> b!5403380 m!6427802))

(declare-fun m!6427804 () Bool)

(assert (=> b!5403380 m!6427804))

(assert (=> b!5403380 m!6427774))

(declare-fun m!6427806 () Bool)

(assert (=> b!5403380 m!6427806))

(declare-fun m!6427808 () Bool)

(assert (=> b!5403380 m!6427808))

(assert (=> b!5403380 m!6427774))

(declare-fun m!6427810 () Bool)

(assert (=> b!5403380 m!6427810))

(declare-fun m!6427812 () Bool)

(assert (=> b!5403380 m!6427812))

(assert (=> b!5403380 m!6427782))

(declare-fun m!6427814 () Bool)

(assert (=> b!5403380 m!6427814))

(declare-fun m!6427816 () Bool)

(assert (=> b!5403356 m!6427816))

(declare-fun m!6427818 () Bool)

(assert (=> b!5403356 m!6427818))

(declare-fun m!6427820 () Bool)

(assert (=> b!5403367 m!6427820))

(declare-fun m!6427822 () Bool)

(assert (=> b!5403352 m!6427822))

(declare-fun m!6427824 () Bool)

(assert (=> b!5403372 m!6427824))

(declare-fun m!6427826 () Bool)

(assert (=> b!5403365 m!6427826))

(declare-fun m!6427828 () Bool)

(assert (=> b!5403383 m!6427828))

(assert (=> b!5403393 m!6427762))

(declare-fun m!6427830 () Bool)

(assert (=> b!5403349 m!6427830))

(declare-fun m!6427832 () Bool)

(assert (=> b!5403370 m!6427832))

(declare-fun m!6427834 () Bool)

(assert (=> b!5403370 m!6427834))

(declare-fun m!6427836 () Bool)

(assert (=> b!5403370 m!6427836))

(declare-fun m!6427838 () Bool)

(assert (=> b!5403370 m!6427838))

(assert (=> b!5403370 m!6427832))

(declare-fun m!6427840 () Bool)

(assert (=> b!5403370 m!6427840))

(assert (=> b!5403370 m!6427836))

(declare-fun m!6427842 () Bool)

(assert (=> b!5403370 m!6427842))

(declare-fun m!6427844 () Bool)

(assert (=> b!5403388 m!6427844))

(declare-fun m!6427846 () Bool)

(assert (=> b!5403388 m!6427846))

(declare-fun m!6427848 () Bool)

(assert (=> b!5403388 m!6427848))

(declare-fun m!6427850 () Bool)

(assert (=> b!5403388 m!6427850))

(declare-fun m!6427852 () Bool)

(assert (=> b!5403388 m!6427852))

(declare-fun m!6427854 () Bool)

(assert (=> b!5403361 m!6427854))

(declare-fun m!6427856 () Bool)

(assert (=> b!5403354 m!6427856))

(declare-fun m!6427858 () Bool)

(assert (=> b!5403354 m!6427858))

(declare-fun m!6427860 () Bool)

(assert (=> b!5403354 m!6427860))

(declare-fun m!6427862 () Bool)

(assert (=> b!5403354 m!6427862))

(declare-fun m!6427864 () Bool)

(assert (=> b!5403354 m!6427864))

(declare-fun m!6427866 () Bool)

(assert (=> b!5403354 m!6427866))

(declare-fun m!6427868 () Bool)

(assert (=> b!5403354 m!6427868))

(assert (=> b!5403392 m!6427704))

(declare-fun m!6427870 () Bool)

(assert (=> b!5403384 m!6427870))

(declare-fun m!6427872 () Bool)

(assert (=> b!5403386 m!6427872))

(declare-fun m!6427874 () Bool)

(assert (=> start!567486 m!6427874))

(check-sat (not b!5403379) (not start!567486) (not b!5403372) (not b!5403364) (not b!5403354) (not b!5403369) (not b!5403387) (not b!5403376) (not setNonEmpty!35177) (not b!5403367) (not b!5403365) (not b!5403389) (not b!5403386) (not b!5403375) (not b!5403392) (not b!5403361) (not b!5403363) (not b!5403371) (not b!5403380) (not b!5403384) (not b!5403353) (not b!5403356) (not b!5403357) (not b!5403368) (not b!5403349) (not b!5403370) (not b!5403352) (not b!5403377) (not b!5403393) (not b!5403360) (not b!5403351) (not b!5403390) (not b!5403385) tp_is_empty!39603 (not b!5403388) (not b!5403383) (not b!5403374))
(check-sat)
(get-model)

(declare-fun d!1725453 () Bool)

(declare-fun c!941829 () Bool)

(declare-fun isEmpty!33691 (List!61824) Bool)

(assert (=> d!1725453 (= c!941829 (isEmpty!33691 (t!375047 s!2326)))))

(declare-fun e!3350173 () Bool)

(assert (=> d!1725453 (= (matchZipper!1419 lt!2203087 (t!375047 s!2326)) e!3350173)))

(declare-fun b!5403573 () Bool)

(declare-fun nullableZipper!1436 ((InoxSet Context!9118)) Bool)

(assert (=> b!5403573 (= e!3350173 (nullableZipper!1436 lt!2203087))))

(declare-fun b!5403574 () Bool)

(declare-fun head!11589 (List!61824) C!30620)

(declare-fun tail!10686 (List!61824) List!61824)

(assert (=> b!5403574 (= e!3350173 (matchZipper!1419 (derivationStepZipper!1414 lt!2203087 (head!11589 (t!375047 s!2326))) (tail!10686 (t!375047 s!2326))))))

(assert (= (and d!1725453 c!941829) b!5403573))

(assert (= (and d!1725453 (not c!941829)) b!5403574))

(declare-fun m!6427962 () Bool)

(assert (=> d!1725453 m!6427962))

(declare-fun m!6427964 () Bool)

(assert (=> b!5403573 m!6427964))

(declare-fun m!6427966 () Bool)

(assert (=> b!5403574 m!6427966))

(assert (=> b!5403574 m!6427966))

(declare-fun m!6427968 () Bool)

(assert (=> b!5403574 m!6427968))

(declare-fun m!6427970 () Bool)

(assert (=> b!5403574 m!6427970))

(assert (=> b!5403574 m!6427968))

(assert (=> b!5403574 m!6427970))

(declare-fun m!6427972 () Bool)

(assert (=> b!5403574 m!6427972))

(assert (=> b!5403356 d!1725453))

(declare-fun d!1725455 () Bool)

(declare-fun c!941832 () Bool)

(assert (=> d!1725455 (= c!941832 (isEmpty!33691 s!2326))))

(declare-fun e!3350179 () Bool)

(assert (=> d!1725455 (= (matchZipper!1419 lt!2203046 s!2326) e!3350179)))

(declare-fun b!5403584 () Bool)

(assert (=> b!5403584 (= e!3350179 (nullableZipper!1436 lt!2203046))))

(declare-fun b!5403585 () Bool)

(assert (=> b!5403585 (= e!3350179 (matchZipper!1419 (derivationStepZipper!1414 lt!2203046 (head!11589 s!2326)) (tail!10686 s!2326)))))

(assert (= (and d!1725455 c!941832) b!5403584))

(assert (= (and d!1725455 (not c!941832)) b!5403585))

(declare-fun m!6427980 () Bool)

(assert (=> d!1725455 m!6427980))

(declare-fun m!6427986 () Bool)

(assert (=> b!5403584 m!6427986))

(declare-fun m!6427990 () Bool)

(assert (=> b!5403585 m!6427990))

(assert (=> b!5403585 m!6427990))

(declare-fun m!6427996 () Bool)

(assert (=> b!5403585 m!6427996))

(declare-fun m!6428000 () Bool)

(assert (=> b!5403585 m!6428000))

(assert (=> b!5403585 m!6427996))

(assert (=> b!5403585 m!6428000))

(declare-fun m!6428006 () Bool)

(assert (=> b!5403585 m!6428006))

(assert (=> b!5403356 d!1725455))

(declare-fun bs!1248475 () Bool)

(declare-fun b!5403673 () Bool)

(assert (= bs!1248475 (and b!5403673 b!5403370)))

(declare-fun lambda!281572 () Int)

(assert (=> bs!1248475 (not (= lambda!281572 lambda!281549))))

(assert (=> bs!1248475 (not (= lambda!281572 lambda!281550))))

(declare-fun bs!1248476 () Bool)

(assert (= bs!1248476 (and b!5403673 b!5403380)))

(assert (=> bs!1248476 (not (= lambda!281572 lambda!281554))))

(assert (=> bs!1248476 (not (= lambda!281572 lambda!281555))))

(assert (=> b!5403673 true))

(assert (=> b!5403673 true))

(declare-fun bs!1248477 () Bool)

(declare-fun b!5403667 () Bool)

(assert (= bs!1248477 (and b!5403667 b!5403370)))

(declare-fun lambda!281573 () Int)

(assert (=> bs!1248477 (= (and (= (regOne!30862 lt!2203048) (regOne!30862 r!7292)) (= (regTwo!30862 lt!2203048) (regTwo!30862 r!7292))) (= lambda!281573 lambda!281550))))

(declare-fun bs!1248478 () Bool)

(assert (= bs!1248478 (and b!5403667 b!5403380)))

(assert (=> bs!1248478 (= (and (= (regOne!30862 lt!2203048) lt!2203072) (= (regTwo!30862 lt!2203048) (regTwo!30862 r!7292))) (= lambda!281573 lambda!281555))))

(declare-fun bs!1248479 () Bool)

(assert (= bs!1248479 (and b!5403667 b!5403673)))

(assert (=> bs!1248479 (not (= lambda!281573 lambda!281572))))

(assert (=> bs!1248477 (not (= lambda!281573 lambda!281549))))

(assert (=> bs!1248478 (not (= lambda!281573 lambda!281554))))

(assert (=> b!5403667 true))

(assert (=> b!5403667 true))

(declare-fun b!5403664 () Bool)

(declare-fun e!3350227 () Bool)

(assert (=> b!5403664 (= e!3350227 (matchRSpec!2278 (regTwo!30863 lt!2203048) s!2326))))

(declare-fun b!5403665 () Bool)

(declare-fun res!2297539 () Bool)

(declare-fun e!3350225 () Bool)

(assert (=> b!5403665 (=> res!2297539 e!3350225)))

(declare-fun call!386674 () Bool)

(assert (=> b!5403665 (= res!2297539 call!386674)))

(declare-fun e!3350230 () Bool)

(assert (=> b!5403665 (= e!3350230 e!3350225)))

(declare-fun d!1725457 () Bool)

(declare-fun c!941859 () Bool)

(assert (=> d!1725457 (= c!941859 ((_ is EmptyExpr!15175) lt!2203048))))

(declare-fun e!3350229 () Bool)

(assert (=> d!1725457 (= (matchRSpec!2278 lt!2203048 s!2326) e!3350229)))

(declare-fun c!941860 () Bool)

(declare-fun bm!386668 () Bool)

(declare-fun call!386673 () Bool)

(assert (=> bm!386668 (= call!386673 (Exists!2356 (ite c!941860 lambda!281572 lambda!281573)))))

(declare-fun b!5403666 () Bool)

(declare-fun e!3350224 () Bool)

(assert (=> b!5403666 (= e!3350224 (= s!2326 (Cons!61700 (c!941773 lt!2203048) Nil!61700)))))

(assert (=> b!5403667 (= e!3350230 call!386673)))

(declare-fun b!5403668 () Bool)

(declare-fun e!3350226 () Bool)

(assert (=> b!5403668 (= e!3350226 e!3350227)))

(declare-fun res!2297538 () Bool)

(assert (=> b!5403668 (= res!2297538 (matchRSpec!2278 (regOne!30863 lt!2203048) s!2326))))

(assert (=> b!5403668 (=> res!2297538 e!3350227)))

(declare-fun b!5403669 () Bool)

(declare-fun c!941858 () Bool)

(assert (=> b!5403669 (= c!941858 ((_ is Union!15175) lt!2203048))))

(assert (=> b!5403669 (= e!3350224 e!3350226)))

(declare-fun b!5403670 () Bool)

(declare-fun e!3350228 () Bool)

(assert (=> b!5403670 (= e!3350229 e!3350228)))

(declare-fun res!2297540 () Bool)

(assert (=> b!5403670 (= res!2297540 (not ((_ is EmptyLang!15175) lt!2203048)))))

(assert (=> b!5403670 (=> (not res!2297540) (not e!3350228))))

(declare-fun b!5403671 () Bool)

(assert (=> b!5403671 (= e!3350229 call!386674)))

(declare-fun b!5403672 () Bool)

(assert (=> b!5403672 (= e!3350226 e!3350230)))

(assert (=> b!5403672 (= c!941860 ((_ is Star!15175) lt!2203048))))

(assert (=> b!5403673 (= e!3350225 call!386673)))

(declare-fun b!5403674 () Bool)

(declare-fun c!941861 () Bool)

(assert (=> b!5403674 (= c!941861 ((_ is ElementMatch!15175) lt!2203048))))

(assert (=> b!5403674 (= e!3350228 e!3350224)))

(declare-fun bm!386669 () Bool)

(assert (=> bm!386669 (= call!386674 (isEmpty!33691 s!2326))))

(assert (= (and d!1725457 c!941859) b!5403671))

(assert (= (and d!1725457 (not c!941859)) b!5403670))

(assert (= (and b!5403670 res!2297540) b!5403674))

(assert (= (and b!5403674 c!941861) b!5403666))

(assert (= (and b!5403674 (not c!941861)) b!5403669))

(assert (= (and b!5403669 c!941858) b!5403668))

(assert (= (and b!5403669 (not c!941858)) b!5403672))

(assert (= (and b!5403668 (not res!2297538)) b!5403664))

(assert (= (and b!5403672 c!941860) b!5403665))

(assert (= (and b!5403672 (not c!941860)) b!5403667))

(assert (= (and b!5403665 (not res!2297539)) b!5403673))

(assert (= (or b!5403673 b!5403667) bm!386668))

(assert (= (or b!5403671 b!5403665) bm!386669))

(declare-fun m!6428064 () Bool)

(assert (=> b!5403664 m!6428064))

(declare-fun m!6428066 () Bool)

(assert (=> bm!386668 m!6428066))

(declare-fun m!6428068 () Bool)

(assert (=> b!5403668 m!6428068))

(assert (=> bm!386669 m!6427980))

(assert (=> b!5403374 d!1725457))

(declare-fun b!5403703 () Bool)

(declare-fun e!3350248 () Bool)

(assert (=> b!5403703 (= e!3350248 (not (= (head!11589 s!2326) (c!941773 lt!2203048))))))

(declare-fun b!5403704 () Bool)

(declare-fun e!3350247 () Bool)

(declare-fun lt!2203125 () Bool)

(assert (=> b!5403704 (= e!3350247 (not lt!2203125))))

(declare-fun b!5403705 () Bool)

(declare-fun e!3350245 () Bool)

(assert (=> b!5403705 (= e!3350245 e!3350247)))

(declare-fun c!941868 () Bool)

(assert (=> b!5403705 (= c!941868 ((_ is EmptyLang!15175) lt!2203048))))

(declare-fun b!5403706 () Bool)

(declare-fun res!2297562 () Bool)

(assert (=> b!5403706 (=> res!2297562 e!3350248)))

(assert (=> b!5403706 (= res!2297562 (not (isEmpty!33691 (tail!10686 s!2326))))))

(declare-fun b!5403707 () Bool)

(declare-fun res!2297559 () Bool)

(declare-fun e!3350250 () Bool)

(assert (=> b!5403707 (=> res!2297559 e!3350250)))

(assert (=> b!5403707 (= res!2297559 (not ((_ is ElementMatch!15175) lt!2203048)))))

(assert (=> b!5403707 (= e!3350247 e!3350250)))

(declare-fun bm!386672 () Bool)

(declare-fun call!386677 () Bool)

(assert (=> bm!386672 (= call!386677 (isEmpty!33691 s!2326))))

(declare-fun b!5403708 () Bool)

(declare-fun res!2297564 () Bool)

(assert (=> b!5403708 (=> res!2297564 e!3350250)))

(declare-fun e!3350246 () Bool)

(assert (=> b!5403708 (= res!2297564 e!3350246)))

(declare-fun res!2297558 () Bool)

(assert (=> b!5403708 (=> (not res!2297558) (not e!3350246))))

(assert (=> b!5403708 (= res!2297558 lt!2203125)))

(declare-fun b!5403709 () Bool)

(declare-fun e!3350251 () Bool)

(assert (=> b!5403709 (= e!3350251 (nullable!5344 lt!2203048))))

(declare-fun d!1725475 () Bool)

(assert (=> d!1725475 e!3350245))

(declare-fun c!941869 () Bool)

(assert (=> d!1725475 (= c!941869 ((_ is EmptyExpr!15175) lt!2203048))))

(assert (=> d!1725475 (= lt!2203125 e!3350251)))

(declare-fun c!941870 () Bool)

(assert (=> d!1725475 (= c!941870 (isEmpty!33691 s!2326))))

(assert (=> d!1725475 (validRegex!6911 lt!2203048)))

(assert (=> d!1725475 (= (matchR!7360 lt!2203048 s!2326) lt!2203125)))

(declare-fun b!5403710 () Bool)

(declare-fun res!2297561 () Bool)

(assert (=> b!5403710 (=> (not res!2297561) (not e!3350246))))

(assert (=> b!5403710 (= res!2297561 (isEmpty!33691 (tail!10686 s!2326)))))

(declare-fun b!5403711 () Bool)

(assert (=> b!5403711 (= e!3350246 (= (head!11589 s!2326) (c!941773 lt!2203048)))))

(declare-fun b!5403712 () Bool)

(declare-fun e!3350249 () Bool)

(assert (=> b!5403712 (= e!3350249 e!3350248)))

(declare-fun res!2297557 () Bool)

(assert (=> b!5403712 (=> res!2297557 e!3350248)))

(assert (=> b!5403712 (= res!2297557 call!386677)))

(declare-fun b!5403713 () Bool)

(declare-fun res!2297563 () Bool)

(assert (=> b!5403713 (=> (not res!2297563) (not e!3350246))))

(assert (=> b!5403713 (= res!2297563 (not call!386677))))

(declare-fun b!5403714 () Bool)

(assert (=> b!5403714 (= e!3350245 (= lt!2203125 call!386677))))

(declare-fun b!5403715 () Bool)

(assert (=> b!5403715 (= e!3350250 e!3350249)))

(declare-fun res!2297560 () Bool)

(assert (=> b!5403715 (=> (not res!2297560) (not e!3350249))))

(assert (=> b!5403715 (= res!2297560 (not lt!2203125))))

(declare-fun b!5403716 () Bool)

(declare-fun derivativeStep!4257 (Regex!15175 C!30620) Regex!15175)

(assert (=> b!5403716 (= e!3350251 (matchR!7360 (derivativeStep!4257 lt!2203048 (head!11589 s!2326)) (tail!10686 s!2326)))))

(assert (= (and d!1725475 c!941870) b!5403709))

(assert (= (and d!1725475 (not c!941870)) b!5403716))

(assert (= (and d!1725475 c!941869) b!5403714))

(assert (= (and d!1725475 (not c!941869)) b!5403705))

(assert (= (and b!5403705 c!941868) b!5403704))

(assert (= (and b!5403705 (not c!941868)) b!5403707))

(assert (= (and b!5403707 (not res!2297559)) b!5403708))

(assert (= (and b!5403708 res!2297558) b!5403713))

(assert (= (and b!5403713 res!2297563) b!5403710))

(assert (= (and b!5403710 res!2297561) b!5403711))

(assert (= (and b!5403708 (not res!2297564)) b!5403715))

(assert (= (and b!5403715 res!2297560) b!5403712))

(assert (= (and b!5403712 (not res!2297557)) b!5403706))

(assert (= (and b!5403706 (not res!2297562)) b!5403703))

(assert (= (or b!5403714 b!5403713 b!5403712) bm!386672))

(assert (=> b!5403716 m!6427990))

(assert (=> b!5403716 m!6427990))

(declare-fun m!6428070 () Bool)

(assert (=> b!5403716 m!6428070))

(assert (=> b!5403716 m!6428000))

(assert (=> b!5403716 m!6428070))

(assert (=> b!5403716 m!6428000))

(declare-fun m!6428072 () Bool)

(assert (=> b!5403716 m!6428072))

(assert (=> bm!386672 m!6427980))

(declare-fun m!6428074 () Bool)

(assert (=> b!5403709 m!6428074))

(assert (=> d!1725475 m!6427980))

(declare-fun m!6428076 () Bool)

(assert (=> d!1725475 m!6428076))

(assert (=> b!5403706 m!6428000))

(assert (=> b!5403706 m!6428000))

(declare-fun m!6428078 () Bool)

(assert (=> b!5403706 m!6428078))

(assert (=> b!5403710 m!6428000))

(assert (=> b!5403710 m!6428000))

(assert (=> b!5403710 m!6428078))

(assert (=> b!5403703 m!6427990))

(assert (=> b!5403711 m!6427990))

(assert (=> b!5403374 d!1725475))

(declare-fun d!1725477 () Bool)

(assert (=> d!1725477 (= (matchR!7360 lt!2203048 s!2326) (matchRSpec!2278 lt!2203048 s!2326))))

(declare-fun lt!2203134 () Unit!154222)

(declare-fun choose!40723 (Regex!15175 List!61824) Unit!154222)

(assert (=> d!1725477 (= lt!2203134 (choose!40723 lt!2203048 s!2326))))

(assert (=> d!1725477 (validRegex!6911 lt!2203048)))

(assert (=> d!1725477 (= (mainMatchTheorem!2278 lt!2203048 s!2326) lt!2203134)))

(declare-fun bs!1248480 () Bool)

(assert (= bs!1248480 d!1725477))

(assert (=> bs!1248480 m!6427714))

(assert (=> bs!1248480 m!6427712))

(declare-fun m!6428080 () Bool)

(assert (=> bs!1248480 m!6428080))

(assert (=> bs!1248480 m!6428076))

(assert (=> b!5403374 d!1725477))

(declare-fun b!5403770 () Bool)

(declare-fun e!3350282 () (InoxSet Context!9118))

(declare-fun call!386693 () (InoxSet Context!9118))

(assert (=> b!5403770 (= e!3350282 call!386693)))

(declare-fun b!5403771 () Bool)

(declare-fun e!3350281 () Bool)

(assert (=> b!5403771 (= e!3350281 (nullable!5344 (regOne!30862 (h!68149 (exprs!5059 (h!68150 zl!343))))))))

(declare-fun d!1725479 () Bool)

(declare-fun c!941887 () Bool)

(assert (=> d!1725479 (= c!941887 (and ((_ is ElementMatch!15175) (h!68149 (exprs!5059 (h!68150 zl!343)))) (= (c!941773 (h!68149 (exprs!5059 (h!68150 zl!343)))) (h!68148 s!2326))))))

(declare-fun e!3350286 () (InoxSet Context!9118))

(assert (=> d!1725479 (= (derivationStepZipperDown!623 (h!68149 (exprs!5059 (h!68150 zl!343))) lt!2203045 (h!68148 s!2326)) e!3350286)))

(declare-fun bm!386685 () Bool)

(declare-fun c!941890 () Bool)

(declare-fun c!941889 () Bool)

(declare-fun call!386695 () List!61825)

(declare-fun $colon$colon!1486 (List!61825 Regex!15175) List!61825)

(assert (=> bm!386685 (= call!386695 ($colon$colon!1486 (exprs!5059 lt!2203045) (ite (or c!941889 c!941890) (regTwo!30862 (h!68149 (exprs!5059 (h!68150 zl!343)))) (h!68149 (exprs!5059 (h!68150 zl!343))))))))

(declare-fun b!5403772 () Bool)

(declare-fun e!3350285 () (InoxSet Context!9118))

(assert (=> b!5403772 (= e!3350285 call!386693)))

(declare-fun b!5403773 () Bool)

(assert (=> b!5403773 (= e!3350286 (store ((as const (Array Context!9118 Bool)) false) lt!2203045 true))))

(declare-fun b!5403774 () Bool)

(assert (=> b!5403774 (= c!941889 e!3350281)))

(declare-fun res!2297586 () Bool)

(assert (=> b!5403774 (=> (not res!2297586) (not e!3350281))))

(assert (=> b!5403774 (= res!2297586 ((_ is Concat!24020) (h!68149 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun e!3350284 () (InoxSet Context!9118))

(declare-fun e!3350283 () (InoxSet Context!9118))

(assert (=> b!5403774 (= e!3350284 e!3350283)))

(declare-fun b!5403775 () Bool)

(assert (=> b!5403775 (= e!3350282 ((as const (Array Context!9118 Bool)) false))))

(declare-fun bm!386686 () Bool)

(declare-fun call!386694 () List!61825)

(assert (=> bm!386686 (= call!386694 call!386695)))

(declare-fun bm!386687 () Bool)

(declare-fun call!386691 () (InoxSet Context!9118))

(assert (=> bm!386687 (= call!386693 call!386691)))

(declare-fun c!941888 () Bool)

(declare-fun bm!386688 () Bool)

(declare-fun call!386690 () (InoxSet Context!9118))

(assert (=> bm!386688 (= call!386690 (derivationStepZipperDown!623 (ite c!941888 (regTwo!30863 (h!68149 (exprs!5059 (h!68150 zl!343)))) (regOne!30862 (h!68149 (exprs!5059 (h!68150 zl!343))))) (ite c!941888 lt!2203045 (Context!9119 call!386695)) (h!68148 s!2326)))))

(declare-fun b!5403776 () Bool)

(declare-fun c!941891 () Bool)

(assert (=> b!5403776 (= c!941891 ((_ is Star!15175) (h!68149 (exprs!5059 (h!68150 zl!343)))))))

(assert (=> b!5403776 (= e!3350285 e!3350282)))

(declare-fun b!5403777 () Bool)

(assert (=> b!5403777 (= e!3350283 e!3350285)))

(assert (=> b!5403777 (= c!941890 ((_ is Concat!24020) (h!68149 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun b!5403778 () Bool)

(declare-fun call!386692 () (InoxSet Context!9118))

(assert (=> b!5403778 (= e!3350284 ((_ map or) call!386692 call!386690))))

(declare-fun b!5403779 () Bool)

(assert (=> b!5403779 (= e!3350283 ((_ map or) call!386690 call!386691))))

(declare-fun bm!386689 () Bool)

(assert (=> bm!386689 (= call!386692 (derivationStepZipperDown!623 (ite c!941888 (regOne!30863 (h!68149 (exprs!5059 (h!68150 zl!343)))) (ite c!941889 (regTwo!30862 (h!68149 (exprs!5059 (h!68150 zl!343)))) (ite c!941890 (regOne!30862 (h!68149 (exprs!5059 (h!68150 zl!343)))) (reg!15504 (h!68149 (exprs!5059 (h!68150 zl!343))))))) (ite (or c!941888 c!941889) lt!2203045 (Context!9119 call!386694)) (h!68148 s!2326)))))

(declare-fun bm!386690 () Bool)

(assert (=> bm!386690 (= call!386691 call!386692)))

(declare-fun b!5403780 () Bool)

(assert (=> b!5403780 (= e!3350286 e!3350284)))

(assert (=> b!5403780 (= c!941888 ((_ is Union!15175) (h!68149 (exprs!5059 (h!68150 zl!343)))))))

(assert (= (and d!1725479 c!941887) b!5403773))

(assert (= (and d!1725479 (not c!941887)) b!5403780))

(assert (= (and b!5403780 c!941888) b!5403778))

(assert (= (and b!5403780 (not c!941888)) b!5403774))

(assert (= (and b!5403774 res!2297586) b!5403771))

(assert (= (and b!5403774 c!941889) b!5403779))

(assert (= (and b!5403774 (not c!941889)) b!5403777))

(assert (= (and b!5403777 c!941890) b!5403772))

(assert (= (and b!5403777 (not c!941890)) b!5403776))

(assert (= (and b!5403776 c!941891) b!5403770))

(assert (= (and b!5403776 (not c!941891)) b!5403775))

(assert (= (or b!5403772 b!5403770) bm!386686))

(assert (= (or b!5403772 b!5403770) bm!386687))

(assert (= (or b!5403779 bm!386686) bm!386685))

(assert (= (or b!5403779 bm!386687) bm!386690))

(assert (= (or b!5403778 b!5403779) bm!386688))

(assert (= (or b!5403778 bm!386690) bm!386689))

(declare-fun m!6428108 () Bool)

(assert (=> b!5403773 m!6428108))

(declare-fun m!6428110 () Bool)

(assert (=> bm!386688 m!6428110))

(declare-fun m!6428112 () Bool)

(assert (=> bm!386685 m!6428112))

(declare-fun m!6428114 () Bool)

(assert (=> bm!386689 m!6428114))

(declare-fun m!6428116 () Bool)

(assert (=> b!5403771 m!6428116))

(assert (=> b!5403354 d!1725479))

(declare-fun d!1725489 () Bool)

(declare-fun choose!40725 ((InoxSet Context!9118) Int) (InoxSet Context!9118))

(assert (=> d!1725489 (= (flatMap!902 z!1189 lambda!281551) (choose!40725 z!1189 lambda!281551))))

(declare-fun bs!1248488 () Bool)

(assert (= bs!1248488 d!1725489))

(declare-fun m!6428118 () Bool)

(assert (=> bs!1248488 m!6428118))

(assert (=> b!5403354 d!1725489))

(declare-fun e!3350297 () (InoxSet Context!9118))

(declare-fun call!386698 () (InoxSet Context!9118))

(declare-fun b!5403799 () Bool)

(assert (=> b!5403799 (= e!3350297 ((_ map or) call!386698 (derivationStepZipperUp!547 (Context!9119 (t!375048 (exprs!5059 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343)))))))) (h!68148 s!2326))))))

(declare-fun bm!386693 () Bool)

(assert (=> bm!386693 (= call!386698 (derivationStepZipperDown!623 (h!68149 (exprs!5059 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343))))))) (Context!9119 (t!375048 (exprs!5059 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343)))))))) (h!68148 s!2326)))))

(declare-fun b!5403800 () Bool)

(declare-fun e!3350298 () (InoxSet Context!9118))

(assert (=> b!5403800 (= e!3350298 call!386698)))

(declare-fun d!1725491 () Bool)

(declare-fun c!941896 () Bool)

(declare-fun e!3350299 () Bool)

(assert (=> d!1725491 (= c!941896 e!3350299)))

(declare-fun res!2297597 () Bool)

(assert (=> d!1725491 (=> (not res!2297597) (not e!3350299))))

(assert (=> d!1725491 (= res!2297597 ((_ is Cons!61701) (exprs!5059 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343))))))))))

(assert (=> d!1725491 (= (derivationStepZipperUp!547 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343))))) (h!68148 s!2326)) e!3350297)))

(declare-fun b!5403801 () Bool)

(assert (=> b!5403801 (= e!3350297 e!3350298)))

(declare-fun c!941897 () Bool)

(assert (=> b!5403801 (= c!941897 ((_ is Cons!61701) (exprs!5059 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343))))))))))

(declare-fun b!5403802 () Bool)

(assert (=> b!5403802 (= e!3350298 ((as const (Array Context!9118 Bool)) false))))

(declare-fun b!5403803 () Bool)

(assert (=> b!5403803 (= e!3350299 (nullable!5344 (h!68149 (exprs!5059 (Context!9119 (Cons!61701 (h!68149 (exprs!5059 (h!68150 zl!343))) (t!375048 (exprs!5059 (h!68150 zl!343)))))))))))

(assert (= (and d!1725491 res!2297597) b!5403803))

(assert (= (and d!1725491 c!941896) b!5403799))

(assert (= (and d!1725491 (not c!941896)) b!5403801))

(assert (= (and b!5403801 c!941897) b!5403800))

(assert (= (and b!5403801 (not c!941897)) b!5403802))

(assert (= (or b!5403799 b!5403800) bm!386693))

(declare-fun m!6428120 () Bool)

(assert (=> b!5403799 m!6428120))

(declare-fun m!6428122 () Bool)

(assert (=> bm!386693 m!6428122))

(declare-fun m!6428124 () Bool)

(assert (=> b!5403803 m!6428124))

(assert (=> b!5403354 d!1725491))

(declare-fun e!3350300 () (InoxSet Context!9118))

(declare-fun call!386699 () (InoxSet Context!9118))

(declare-fun b!5403804 () Bool)

(assert (=> b!5403804 (= e!3350300 ((_ map or) call!386699 (derivationStepZipperUp!547 (Context!9119 (t!375048 (exprs!5059 (h!68150 zl!343)))) (h!68148 s!2326))))))

(declare-fun bm!386694 () Bool)

(assert (=> bm!386694 (= call!386699 (derivationStepZipperDown!623 (h!68149 (exprs!5059 (h!68150 zl!343))) (Context!9119 (t!375048 (exprs!5059 (h!68150 zl!343)))) (h!68148 s!2326)))))

(declare-fun b!5403805 () Bool)

(declare-fun e!3350301 () (InoxSet Context!9118))

(assert (=> b!5403805 (= e!3350301 call!386699)))

(declare-fun d!1725493 () Bool)

(declare-fun c!941898 () Bool)

(declare-fun e!3350302 () Bool)

(assert (=> d!1725493 (= c!941898 e!3350302)))

(declare-fun res!2297598 () Bool)

(assert (=> d!1725493 (=> (not res!2297598) (not e!3350302))))

(assert (=> d!1725493 (= res!2297598 ((_ is Cons!61701) (exprs!5059 (h!68150 zl!343))))))

(assert (=> d!1725493 (= (derivationStepZipperUp!547 (h!68150 zl!343) (h!68148 s!2326)) e!3350300)))

(declare-fun b!5403806 () Bool)

(assert (=> b!5403806 (= e!3350300 e!3350301)))

(declare-fun c!941899 () Bool)

(assert (=> b!5403806 (= c!941899 ((_ is Cons!61701) (exprs!5059 (h!68150 zl!343))))))

(declare-fun b!5403807 () Bool)

(assert (=> b!5403807 (= e!3350301 ((as const (Array Context!9118 Bool)) false))))

(declare-fun b!5403808 () Bool)

(assert (=> b!5403808 (= e!3350302 (nullable!5344 (h!68149 (exprs!5059 (h!68150 zl!343)))))))

(assert (= (and d!1725493 res!2297598) b!5403808))

(assert (= (and d!1725493 c!941898) b!5403804))

(assert (= (and d!1725493 (not c!941898)) b!5403806))

(assert (= (and b!5403806 c!941899) b!5403805))

(assert (= (and b!5403806 (not c!941899)) b!5403807))

(assert (= (or b!5403804 b!5403805) bm!386694))

(declare-fun m!6428126 () Bool)

(assert (=> b!5403804 m!6428126))

(declare-fun m!6428128 () Bool)

(assert (=> bm!386694 m!6428128))

(assert (=> b!5403808 m!6427866))

(assert (=> b!5403354 d!1725493))

(declare-fun d!1725495 () Bool)

(declare-fun dynLambda!24310 (Int Context!9118) (InoxSet Context!9118))

(assert (=> d!1725495 (= (flatMap!902 z!1189 lambda!281551) (dynLambda!24310 lambda!281551 (h!68150 zl!343)))))

(declare-fun lt!2203146 () Unit!154222)

(declare-fun choose!40728 ((InoxSet Context!9118) Context!9118 Int) Unit!154222)

(assert (=> d!1725495 (= lt!2203146 (choose!40728 z!1189 (h!68150 zl!343) lambda!281551))))

(assert (=> d!1725495 (= z!1189 (store ((as const (Array Context!9118 Bool)) false) (h!68150 zl!343) true))))

(assert (=> d!1725495 (= (lemmaFlatMapOnSingletonSet!434 z!1189 (h!68150 zl!343) lambda!281551) lt!2203146)))

(declare-fun b_lambda!206511 () Bool)

(assert (=> (not b_lambda!206511) (not d!1725495)))

(declare-fun bs!1248496 () Bool)

(assert (= bs!1248496 d!1725495))

(assert (=> bs!1248496 m!6427868))

(declare-fun m!6428138 () Bool)

(assert (=> bs!1248496 m!6428138))

(declare-fun m!6428140 () Bool)

(assert (=> bs!1248496 m!6428140))

(declare-fun m!6428142 () Bool)

(assert (=> bs!1248496 m!6428142))

(assert (=> b!5403354 d!1725495))

(declare-fun d!1725501 () Bool)

(declare-fun nullableFct!1587 (Regex!15175) Bool)

(assert (=> d!1725501 (= (nullable!5344 (h!68149 (exprs!5059 (h!68150 zl!343)))) (nullableFct!1587 (h!68149 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun bs!1248497 () Bool)

(assert (= bs!1248497 d!1725501))

(declare-fun m!6428144 () Bool)

(assert (=> bs!1248497 m!6428144))

(assert (=> b!5403354 d!1725501))

(declare-fun e!3350303 () (InoxSet Context!9118))

(declare-fun call!386700 () (InoxSet Context!9118))

(declare-fun b!5403809 () Bool)

(assert (=> b!5403809 (= e!3350303 ((_ map or) call!386700 (derivationStepZipperUp!547 (Context!9119 (t!375048 (exprs!5059 lt!2203045))) (h!68148 s!2326))))))

(declare-fun bm!386695 () Bool)

(assert (=> bm!386695 (= call!386700 (derivationStepZipperDown!623 (h!68149 (exprs!5059 lt!2203045)) (Context!9119 (t!375048 (exprs!5059 lt!2203045))) (h!68148 s!2326)))))

(declare-fun b!5403810 () Bool)

(declare-fun e!3350304 () (InoxSet Context!9118))

(assert (=> b!5403810 (= e!3350304 call!386700)))

(declare-fun d!1725503 () Bool)

(declare-fun c!941900 () Bool)

(declare-fun e!3350305 () Bool)

(assert (=> d!1725503 (= c!941900 e!3350305)))

(declare-fun res!2297599 () Bool)

(assert (=> d!1725503 (=> (not res!2297599) (not e!3350305))))

(assert (=> d!1725503 (= res!2297599 ((_ is Cons!61701) (exprs!5059 lt!2203045)))))

(assert (=> d!1725503 (= (derivationStepZipperUp!547 lt!2203045 (h!68148 s!2326)) e!3350303)))

(declare-fun b!5403811 () Bool)

(assert (=> b!5403811 (= e!3350303 e!3350304)))

(declare-fun c!941901 () Bool)

(assert (=> b!5403811 (= c!941901 ((_ is Cons!61701) (exprs!5059 lt!2203045)))))

(declare-fun b!5403812 () Bool)

(assert (=> b!5403812 (= e!3350304 ((as const (Array Context!9118 Bool)) false))))

(declare-fun b!5403813 () Bool)

(assert (=> b!5403813 (= e!3350305 (nullable!5344 (h!68149 (exprs!5059 lt!2203045))))))

(assert (= (and d!1725503 res!2297599) b!5403813))

(assert (= (and d!1725503 c!941900) b!5403809))

(assert (= (and d!1725503 (not c!941900)) b!5403811))

(assert (= (and b!5403811 c!941901) b!5403810))

(assert (= (and b!5403811 (not c!941901)) b!5403812))

(assert (= (or b!5403809 b!5403810) bm!386695))

(declare-fun m!6428146 () Bool)

(assert (=> b!5403809 m!6428146))

(declare-fun m!6428148 () Bool)

(assert (=> bm!386695 m!6428148))

(declare-fun m!6428150 () Bool)

(assert (=> b!5403813 m!6428150))

(assert (=> b!5403354 d!1725503))

(declare-fun d!1725505 () Bool)

(declare-fun c!941902 () Bool)

(assert (=> d!1725505 (= c!941902 (isEmpty!33691 (t!375047 s!2326)))))

(declare-fun e!3350308 () Bool)

(assert (=> d!1725505 (= (matchZipper!1419 lt!2203071 (t!375047 s!2326)) e!3350308)))

(declare-fun b!5403816 () Bool)

(assert (=> b!5403816 (= e!3350308 (nullableZipper!1436 lt!2203071))))

(declare-fun b!5403817 () Bool)

(assert (=> b!5403817 (= e!3350308 (matchZipper!1419 (derivationStepZipper!1414 lt!2203071 (head!11589 (t!375047 s!2326))) (tail!10686 (t!375047 s!2326))))))

(assert (= (and d!1725505 c!941902) b!5403816))

(assert (= (and d!1725505 (not c!941902)) b!5403817))

(assert (=> d!1725505 m!6427962))

(declare-fun m!6428152 () Bool)

(assert (=> b!5403816 m!6428152))

(assert (=> b!5403817 m!6427966))

(assert (=> b!5403817 m!6427966))

(declare-fun m!6428154 () Bool)

(assert (=> b!5403817 m!6428154))

(assert (=> b!5403817 m!6427970))

(assert (=> b!5403817 m!6428154))

(assert (=> b!5403817 m!6427970))

(declare-fun m!6428156 () Bool)

(assert (=> b!5403817 m!6428156))

(assert (=> b!5403393 d!1725505))

(declare-fun e!3350318 () Bool)

(declare-fun d!1725507 () Bool)

(assert (=> d!1725507 (= (matchZipper!1419 ((_ map or) lt!2203071 lt!2203050) (t!375047 s!2326)) e!3350318)))

(declare-fun res!2297606 () Bool)

(assert (=> d!1725507 (=> res!2297606 e!3350318)))

(assert (=> d!1725507 (= res!2297606 (matchZipper!1419 lt!2203071 (t!375047 s!2326)))))

(declare-fun lt!2203153 () Unit!154222)

(declare-fun choose!40730 ((InoxSet Context!9118) (InoxSet Context!9118) List!61824) Unit!154222)

(assert (=> d!1725507 (= lt!2203153 (choose!40730 lt!2203071 lt!2203050 (t!375047 s!2326)))))

(assert (=> d!1725507 (= (lemmaZipperConcatMatchesSameAsBothZippers!412 lt!2203071 lt!2203050 (t!375047 s!2326)) lt!2203153)))

(declare-fun b!5403832 () Bool)

(assert (=> b!5403832 (= e!3350318 (matchZipper!1419 lt!2203050 (t!375047 s!2326)))))

(assert (= (and d!1725507 (not res!2297606)) b!5403832))

(assert (=> d!1725507 m!6427764))

(assert (=> d!1725507 m!6427762))

(declare-fun m!6428178 () Bool)

(assert (=> d!1725507 m!6428178))

(assert (=> b!5403832 m!6427704))

(assert (=> b!5403353 d!1725507))

(assert (=> b!5403353 d!1725505))

(declare-fun d!1725515 () Bool)

(declare-fun c!941908 () Bool)

(assert (=> d!1725515 (= c!941908 (isEmpty!33691 (t!375047 s!2326)))))

(declare-fun e!3350319 () Bool)

(assert (=> d!1725515 (= (matchZipper!1419 ((_ map or) lt!2203071 lt!2203050) (t!375047 s!2326)) e!3350319)))

(declare-fun b!5403833 () Bool)

(assert (=> b!5403833 (= e!3350319 (nullableZipper!1436 ((_ map or) lt!2203071 lt!2203050)))))

(declare-fun b!5403834 () Bool)

(assert (=> b!5403834 (= e!3350319 (matchZipper!1419 (derivationStepZipper!1414 ((_ map or) lt!2203071 lt!2203050) (head!11589 (t!375047 s!2326))) (tail!10686 (t!375047 s!2326))))))

(assert (= (and d!1725515 c!941908) b!5403833))

(assert (= (and d!1725515 (not c!941908)) b!5403834))

(assert (=> d!1725515 m!6427962))

(declare-fun m!6428180 () Bool)

(assert (=> b!5403833 m!6428180))

(assert (=> b!5403834 m!6427966))

(assert (=> b!5403834 m!6427966))

(declare-fun m!6428182 () Bool)

(assert (=> b!5403834 m!6428182))

(assert (=> b!5403834 m!6427970))

(assert (=> b!5403834 m!6428182))

(assert (=> b!5403834 m!6427970))

(declare-fun m!6428184 () Bool)

(assert (=> b!5403834 m!6428184))

(assert (=> b!5403353 d!1725515))

(declare-fun b!5403851 () Bool)

(declare-fun e!3350328 () Bool)

(declare-fun lt!2203159 () List!61824)

(assert (=> b!5403851 (= e!3350328 (or (not (= (_2!35677 lt!2203042) Nil!61700)) (= lt!2203159 (_1!35677 lt!2203042))))))

(declare-fun b!5403848 () Bool)

(declare-fun e!3350329 () List!61824)

(assert (=> b!5403848 (= e!3350329 (_2!35677 lt!2203042))))

(declare-fun b!5403849 () Bool)

(assert (=> b!5403849 (= e!3350329 (Cons!61700 (h!68148 (_1!35677 lt!2203042)) (++!13523 (t!375047 (_1!35677 lt!2203042)) (_2!35677 lt!2203042))))))

(declare-fun b!5403850 () Bool)

(declare-fun res!2297615 () Bool)

(assert (=> b!5403850 (=> (not res!2297615) (not e!3350328))))

(declare-fun size!39838 (List!61824) Int)

(assert (=> b!5403850 (= res!2297615 (= (size!39838 lt!2203159) (+ (size!39838 (_1!35677 lt!2203042)) (size!39838 (_2!35677 lt!2203042)))))))

(declare-fun d!1725517 () Bool)

(assert (=> d!1725517 e!3350328))

(declare-fun res!2297614 () Bool)

(assert (=> d!1725517 (=> (not res!2297614) (not e!3350328))))

(declare-fun content!11054 (List!61824) (InoxSet C!30620))

(assert (=> d!1725517 (= res!2297614 (= (content!11054 lt!2203159) ((_ map or) (content!11054 (_1!35677 lt!2203042)) (content!11054 (_2!35677 lt!2203042)))))))

(assert (=> d!1725517 (= lt!2203159 e!3350329)))

(declare-fun c!941912 () Bool)

(assert (=> d!1725517 (= c!941912 ((_ is Nil!61700) (_1!35677 lt!2203042)))))

(assert (=> d!1725517 (= (++!13523 (_1!35677 lt!2203042) (_2!35677 lt!2203042)) lt!2203159)))

(assert (= (and d!1725517 c!941912) b!5403848))

(assert (= (and d!1725517 (not c!941912)) b!5403849))

(assert (= (and d!1725517 res!2297614) b!5403850))

(assert (= (and b!5403850 res!2297615) b!5403851))

(declare-fun m!6428194 () Bool)

(assert (=> b!5403849 m!6428194))

(declare-fun m!6428196 () Bool)

(assert (=> b!5403850 m!6428196))

(declare-fun m!6428198 () Bool)

(assert (=> b!5403850 m!6428198))

(declare-fun m!6428200 () Bool)

(assert (=> b!5403850 m!6428200))

(declare-fun m!6428202 () Bool)

(assert (=> d!1725517 m!6428202))

(declare-fun m!6428204 () Bool)

(assert (=> d!1725517 m!6428204))

(declare-fun m!6428206 () Bool)

(assert (=> d!1725517 m!6428206))

(assert (=> b!5403351 d!1725517))

(declare-fun d!1725523 () Bool)

(declare-fun isEmpty!33693 (Option!15286) Bool)

(assert (=> d!1725523 (= (isDefined!11989 lt!2203055) (not (isEmpty!33693 lt!2203055)))))

(declare-fun bs!1248499 () Bool)

(assert (= bs!1248499 d!1725523))

(declare-fun m!6428208 () Bool)

(assert (=> bs!1248499 m!6428208))

(assert (=> b!5403351 d!1725523))

(declare-fun d!1725525 () Bool)

(assert (=> d!1725525 (= (get!21265 lt!2203055) (v!51314 lt!2203055))))

(assert (=> b!5403351 d!1725525))

(declare-fun d!1725527 () Bool)

(assert (=> d!1725527 (isDefined!11989 (findConcatSeparationZippers!32 lt!2203057 (store ((as const (Array Context!9118 Bool)) false) lt!2203086 true) Nil!61700 s!2326 s!2326))))

(declare-fun lt!2203166 () Unit!154222)

(declare-fun choose!40732 ((InoxSet Context!9118) Context!9118 List!61824) Unit!154222)

(assert (=> d!1725527 (= lt!2203166 (choose!40732 lt!2203057 lt!2203086 s!2326))))

(assert (=> d!1725527 (matchZipper!1419 (appendTo!34 lt!2203057 lt!2203086) s!2326)))

(assert (=> d!1725527 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!32 lt!2203057 lt!2203086 s!2326) lt!2203166)))

(declare-fun bs!1248513 () Bool)

(assert (= bs!1248513 d!1725527))

(assert (=> bs!1248513 m!6427738))

(assert (=> bs!1248513 m!6427738))

(declare-fun m!6428232 () Bool)

(assert (=> bs!1248513 m!6428232))

(assert (=> bs!1248513 m!6428232))

(declare-fun m!6428238 () Bool)

(assert (=> bs!1248513 m!6428238))

(assert (=> bs!1248513 m!6427768))

(declare-fun m!6428242 () Bool)

(assert (=> bs!1248513 m!6428242))

(assert (=> bs!1248513 m!6427768))

(declare-fun m!6428246 () Bool)

(assert (=> bs!1248513 m!6428246))

(assert (=> b!5403351 d!1725527))

(declare-fun b!5403913 () Bool)

(declare-fun res!2297651 () Bool)

(declare-fun e!3350367 () Bool)

(assert (=> b!5403913 (=> (not res!2297651) (not e!3350367))))

(declare-fun lt!2203182 () Option!15286)

(assert (=> b!5403913 (= res!2297651 (matchZipper!1419 lt!2203069 (_2!35677 (get!21265 lt!2203182))))))

(declare-fun b!5403914 () Bool)

(declare-fun e!3350365 () Bool)

(assert (=> b!5403914 (= e!3350365 (not (isDefined!11989 lt!2203182)))))

(declare-fun b!5403915 () Bool)

(assert (=> b!5403915 (= e!3350367 (= (++!13523 (_1!35677 (get!21265 lt!2203182)) (_2!35677 (get!21265 lt!2203182))) s!2326))))

(declare-fun b!5403916 () Bool)

(declare-fun e!3350366 () Option!15286)

(declare-fun e!3350363 () Option!15286)

(assert (=> b!5403916 (= e!3350366 e!3350363)))

(declare-fun c!941928 () Bool)

(assert (=> b!5403916 (= c!941928 ((_ is Nil!61700) s!2326))))

(declare-fun b!5403918 () Bool)

(assert (=> b!5403918 (= e!3350366 (Some!15285 (tuple2!64749 Nil!61700 s!2326)))))

(declare-fun b!5403919 () Bool)

(declare-fun lt!2203183 () Unit!154222)

(declare-fun lt!2203181 () Unit!154222)

(assert (=> b!5403919 (= lt!2203183 lt!2203181)))

(assert (=> b!5403919 (= (++!13523 (++!13523 Nil!61700 (Cons!61700 (h!68148 s!2326) Nil!61700)) (t!375047 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1831 (List!61824 C!30620 List!61824 List!61824) Unit!154222)

(assert (=> b!5403919 (= lt!2203181 (lemmaMoveElementToOtherListKeepsConcatEq!1831 Nil!61700 (h!68148 s!2326) (t!375047 s!2326) s!2326))))

(assert (=> b!5403919 (= e!3350363 (findConcatSeparationZippers!32 lt!2203057 lt!2203069 (++!13523 Nil!61700 (Cons!61700 (h!68148 s!2326) Nil!61700)) (t!375047 s!2326) s!2326))))

(declare-fun d!1725533 () Bool)

(assert (=> d!1725533 e!3350365))

(declare-fun res!2297653 () Bool)

(assert (=> d!1725533 (=> res!2297653 e!3350365)))

(assert (=> d!1725533 (= res!2297653 e!3350367)))

(declare-fun res!2297652 () Bool)

(assert (=> d!1725533 (=> (not res!2297652) (not e!3350367))))

(assert (=> d!1725533 (= res!2297652 (isDefined!11989 lt!2203182))))

(assert (=> d!1725533 (= lt!2203182 e!3350366)))

(declare-fun c!941927 () Bool)

(declare-fun e!3350364 () Bool)

(assert (=> d!1725533 (= c!941927 e!3350364)))

(declare-fun res!2297649 () Bool)

(assert (=> d!1725533 (=> (not res!2297649) (not e!3350364))))

(assert (=> d!1725533 (= res!2297649 (matchZipper!1419 lt!2203057 Nil!61700))))

(assert (=> d!1725533 (= (++!13523 Nil!61700 s!2326) s!2326)))

(assert (=> d!1725533 (= (findConcatSeparationZippers!32 lt!2203057 lt!2203069 Nil!61700 s!2326 s!2326) lt!2203182)))

(declare-fun b!5403917 () Bool)

(assert (=> b!5403917 (= e!3350363 None!15285)))

(declare-fun b!5403920 () Bool)

(declare-fun res!2297650 () Bool)

(assert (=> b!5403920 (=> (not res!2297650) (not e!3350367))))

(assert (=> b!5403920 (= res!2297650 (matchZipper!1419 lt!2203057 (_1!35677 (get!21265 lt!2203182))))))

(declare-fun b!5403921 () Bool)

(assert (=> b!5403921 (= e!3350364 (matchZipper!1419 lt!2203069 s!2326))))

(assert (= (and d!1725533 res!2297649) b!5403921))

(assert (= (and d!1725533 c!941927) b!5403918))

(assert (= (and d!1725533 (not c!941927)) b!5403916))

(assert (= (and b!5403916 c!941928) b!5403917))

(assert (= (and b!5403916 (not c!941928)) b!5403919))

(assert (= (and d!1725533 res!2297652) b!5403920))

(assert (= (and b!5403920 res!2297650) b!5403913))

(assert (= (and b!5403913 res!2297651) b!5403915))

(assert (= (and d!1725533 (not res!2297653)) b!5403914))

(declare-fun m!6428268 () Bool)

(assert (=> b!5403920 m!6428268))

(declare-fun m!6428270 () Bool)

(assert (=> b!5403920 m!6428270))

(declare-fun m!6428272 () Bool)

(assert (=> b!5403921 m!6428272))

(declare-fun m!6428274 () Bool)

(assert (=> d!1725533 m!6428274))

(declare-fun m!6428276 () Bool)

(assert (=> d!1725533 m!6428276))

(declare-fun m!6428278 () Bool)

(assert (=> d!1725533 m!6428278))

(assert (=> b!5403914 m!6428274))

(assert (=> b!5403915 m!6428268))

(declare-fun m!6428280 () Bool)

(assert (=> b!5403915 m!6428280))

(assert (=> b!5403913 m!6428268))

(declare-fun m!6428282 () Bool)

(assert (=> b!5403913 m!6428282))

(declare-fun m!6428284 () Bool)

(assert (=> b!5403919 m!6428284))

(assert (=> b!5403919 m!6428284))

(declare-fun m!6428286 () Bool)

(assert (=> b!5403919 m!6428286))

(declare-fun m!6428288 () Bool)

(assert (=> b!5403919 m!6428288))

(assert (=> b!5403919 m!6428284))

(declare-fun m!6428290 () Bool)

(assert (=> b!5403919 m!6428290))

(assert (=> b!5403351 d!1725533))

(declare-fun d!1725541 () Bool)

(declare-fun c!941929 () Bool)

(assert (=> d!1725541 (= c!941929 (isEmpty!33691 (t!375047 s!2326)))))

(declare-fun e!3350368 () Bool)

(assert (=> d!1725541 (= (matchZipper!1419 lt!2203050 (t!375047 s!2326)) e!3350368)))

(declare-fun b!5403922 () Bool)

(assert (=> b!5403922 (= e!3350368 (nullableZipper!1436 lt!2203050))))

(declare-fun b!5403923 () Bool)

(assert (=> b!5403923 (= e!3350368 (matchZipper!1419 (derivationStepZipper!1414 lt!2203050 (head!11589 (t!375047 s!2326))) (tail!10686 (t!375047 s!2326))))))

(assert (= (and d!1725541 c!941929) b!5403922))

(assert (= (and d!1725541 (not c!941929)) b!5403923))

(assert (=> d!1725541 m!6427962))

(declare-fun m!6428300 () Bool)

(assert (=> b!5403922 m!6428300))

(assert (=> b!5403923 m!6427966))

(assert (=> b!5403923 m!6427966))

(declare-fun m!6428304 () Bool)

(assert (=> b!5403923 m!6428304))

(assert (=> b!5403923 m!6427970))

(assert (=> b!5403923 m!6428304))

(assert (=> b!5403923 m!6427970))

(declare-fun m!6428308 () Bool)

(assert (=> b!5403923 m!6428308))

(assert (=> b!5403392 d!1725541))

(declare-fun d!1725545 () Bool)

(assert (=> d!1725545 (= (isEmpty!33689 (t!375048 (exprs!5059 (h!68150 zl!343)))) ((_ is Nil!61701) (t!375048 (exprs!5059 (h!68150 zl!343)))))))

(assert (=> b!5403372 d!1725545))

(declare-fun d!1725549 () Bool)

(declare-fun lt!2203193 () Regex!15175)

(assert (=> d!1725549 (validRegex!6911 lt!2203193)))

(assert (=> d!1725549 (= lt!2203193 (generalisedUnion!1104 (unfocusZipperList!617 lt!2203090)))))

(assert (=> d!1725549 (= (unfocusZipper!917 lt!2203090) lt!2203193)))

(declare-fun bs!1248528 () Bool)

(assert (= bs!1248528 d!1725549))

(declare-fun m!6428328 () Bool)

(assert (=> bs!1248528 m!6428328))

(declare-fun m!6428330 () Bool)

(assert (=> bs!1248528 m!6428330))

(assert (=> bs!1248528 m!6428330))

(declare-fun m!6428332 () Bool)

(assert (=> bs!1248528 m!6428332))

(assert (=> b!5403352 d!1725549))

(declare-fun d!1725553 () Bool)

(assert (=> d!1725553 (= (isDefined!11989 (findConcatSeparation!1700 lt!2203072 (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326)) (not (isEmpty!33693 (findConcatSeparation!1700 lt!2203072 (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326))))))

(declare-fun bs!1248529 () Bool)

(assert (= bs!1248529 d!1725553))

(assert (=> bs!1248529 m!6427790))

(declare-fun m!6428338 () Bool)

(assert (=> bs!1248529 m!6428338))

(assert (=> b!5403380 d!1725553))

(declare-fun b!5403947 () Bool)

(declare-fun e!3350384 () Bool)

(assert (=> b!5403947 (= e!3350384 (not (= (head!11589 (_1!35677 lt!2203042)) (c!941773 (reg!15504 (regOne!30862 r!7292))))))))

(declare-fun b!5403948 () Bool)

(declare-fun e!3350383 () Bool)

(declare-fun lt!2203194 () Bool)

(assert (=> b!5403948 (= e!3350383 (not lt!2203194))))

(declare-fun b!5403949 () Bool)

(declare-fun e!3350381 () Bool)

(assert (=> b!5403949 (= e!3350381 e!3350383)))

(declare-fun c!941935 () Bool)

(assert (=> b!5403949 (= c!941935 ((_ is EmptyLang!15175) (reg!15504 (regOne!30862 r!7292))))))

(declare-fun b!5403950 () Bool)

(declare-fun res!2297672 () Bool)

(assert (=> b!5403950 (=> res!2297672 e!3350384)))

(assert (=> b!5403950 (= res!2297672 (not (isEmpty!33691 (tail!10686 (_1!35677 lt!2203042)))))))

(declare-fun b!5403951 () Bool)

(declare-fun res!2297669 () Bool)

(declare-fun e!3350386 () Bool)

(assert (=> b!5403951 (=> res!2297669 e!3350386)))

(assert (=> b!5403951 (= res!2297669 (not ((_ is ElementMatch!15175) (reg!15504 (regOne!30862 r!7292)))))))

(assert (=> b!5403951 (= e!3350383 e!3350386)))

(declare-fun bm!386706 () Bool)

(declare-fun call!386711 () Bool)

(assert (=> bm!386706 (= call!386711 (isEmpty!33691 (_1!35677 lt!2203042)))))

(declare-fun b!5403952 () Bool)

(declare-fun res!2297674 () Bool)

(assert (=> b!5403952 (=> res!2297674 e!3350386)))

(declare-fun e!3350382 () Bool)

(assert (=> b!5403952 (= res!2297674 e!3350382)))

(declare-fun res!2297668 () Bool)

(assert (=> b!5403952 (=> (not res!2297668) (not e!3350382))))

(assert (=> b!5403952 (= res!2297668 lt!2203194)))

(declare-fun b!5403953 () Bool)

(declare-fun e!3350387 () Bool)

(assert (=> b!5403953 (= e!3350387 (nullable!5344 (reg!15504 (regOne!30862 r!7292))))))

(declare-fun d!1725555 () Bool)

(assert (=> d!1725555 e!3350381))

(declare-fun c!941936 () Bool)

(assert (=> d!1725555 (= c!941936 ((_ is EmptyExpr!15175) (reg!15504 (regOne!30862 r!7292))))))

(assert (=> d!1725555 (= lt!2203194 e!3350387)))

(declare-fun c!941937 () Bool)

(assert (=> d!1725555 (= c!941937 (isEmpty!33691 (_1!35677 lt!2203042)))))

(assert (=> d!1725555 (validRegex!6911 (reg!15504 (regOne!30862 r!7292)))))

(assert (=> d!1725555 (= (matchR!7360 (reg!15504 (regOne!30862 r!7292)) (_1!35677 lt!2203042)) lt!2203194)))

(declare-fun b!5403954 () Bool)

(declare-fun res!2297671 () Bool)

(assert (=> b!5403954 (=> (not res!2297671) (not e!3350382))))

(assert (=> b!5403954 (= res!2297671 (isEmpty!33691 (tail!10686 (_1!35677 lt!2203042))))))

(declare-fun b!5403955 () Bool)

(assert (=> b!5403955 (= e!3350382 (= (head!11589 (_1!35677 lt!2203042)) (c!941773 (reg!15504 (regOne!30862 r!7292)))))))

(declare-fun b!5403956 () Bool)

(declare-fun e!3350385 () Bool)

(assert (=> b!5403956 (= e!3350385 e!3350384)))

(declare-fun res!2297667 () Bool)

(assert (=> b!5403956 (=> res!2297667 e!3350384)))

(assert (=> b!5403956 (= res!2297667 call!386711)))

(declare-fun b!5403957 () Bool)

(declare-fun res!2297673 () Bool)

(assert (=> b!5403957 (=> (not res!2297673) (not e!3350382))))

(assert (=> b!5403957 (= res!2297673 (not call!386711))))

(declare-fun b!5403958 () Bool)

(assert (=> b!5403958 (= e!3350381 (= lt!2203194 call!386711))))

(declare-fun b!5403959 () Bool)

(assert (=> b!5403959 (= e!3350386 e!3350385)))

(declare-fun res!2297670 () Bool)

(assert (=> b!5403959 (=> (not res!2297670) (not e!3350385))))

(assert (=> b!5403959 (= res!2297670 (not lt!2203194))))

(declare-fun b!5403960 () Bool)

(assert (=> b!5403960 (= e!3350387 (matchR!7360 (derivativeStep!4257 (reg!15504 (regOne!30862 r!7292)) (head!11589 (_1!35677 lt!2203042))) (tail!10686 (_1!35677 lt!2203042))))))

(assert (= (and d!1725555 c!941937) b!5403953))

(assert (= (and d!1725555 (not c!941937)) b!5403960))

(assert (= (and d!1725555 c!941936) b!5403958))

(assert (= (and d!1725555 (not c!941936)) b!5403949))

(assert (= (and b!5403949 c!941935) b!5403948))

(assert (= (and b!5403949 (not c!941935)) b!5403951))

(assert (= (and b!5403951 (not res!2297669)) b!5403952))

(assert (= (and b!5403952 res!2297668) b!5403957))

(assert (= (and b!5403957 res!2297673) b!5403954))

(assert (= (and b!5403954 res!2297671) b!5403955))

(assert (= (and b!5403952 (not res!2297674)) b!5403959))

(assert (= (and b!5403959 res!2297670) b!5403956))

(assert (= (and b!5403956 (not res!2297667)) b!5403950))

(assert (= (and b!5403950 (not res!2297672)) b!5403947))

(assert (= (or b!5403958 b!5403957 b!5403956) bm!386706))

(declare-fun m!6428344 () Bool)

(assert (=> b!5403960 m!6428344))

(assert (=> b!5403960 m!6428344))

(declare-fun m!6428346 () Bool)

(assert (=> b!5403960 m!6428346))

(declare-fun m!6428352 () Bool)

(assert (=> b!5403960 m!6428352))

(assert (=> b!5403960 m!6428346))

(assert (=> b!5403960 m!6428352))

(declare-fun m!6428356 () Bool)

(assert (=> b!5403960 m!6428356))

(declare-fun m!6428358 () Bool)

(assert (=> bm!386706 m!6428358))

(declare-fun m!6428362 () Bool)

(assert (=> b!5403953 m!6428362))

(assert (=> d!1725555 m!6428358))

(declare-fun m!6428364 () Bool)

(assert (=> d!1725555 m!6428364))

(assert (=> b!5403950 m!6428352))

(assert (=> b!5403950 m!6428352))

(declare-fun m!6428366 () Bool)

(assert (=> b!5403950 m!6428366))

(assert (=> b!5403954 m!6428352))

(assert (=> b!5403954 m!6428352))

(assert (=> b!5403954 m!6428366))

(assert (=> b!5403947 m!6428344))

(assert (=> b!5403955 m!6428344))

(assert (=> b!5403380 d!1725555))

(declare-fun b!5403975 () Bool)

(declare-fun e!3350398 () Bool)

(assert (=> b!5403975 (= e!3350398 (not (= (head!11589 s!2326) (c!941773 lt!2203063))))))

(declare-fun b!5403976 () Bool)

(declare-fun e!3350397 () Bool)

(declare-fun lt!2203196 () Bool)

(assert (=> b!5403976 (= e!3350397 (not lt!2203196))))

(declare-fun b!5403977 () Bool)

(declare-fun e!3350395 () Bool)

(assert (=> b!5403977 (= e!3350395 e!3350397)))

(declare-fun c!941941 () Bool)

(assert (=> b!5403977 (= c!941941 ((_ is EmptyLang!15175) lt!2203063))))

(declare-fun b!5403978 () Bool)

(declare-fun res!2297688 () Bool)

(assert (=> b!5403978 (=> res!2297688 e!3350398)))

(assert (=> b!5403978 (= res!2297688 (not (isEmpty!33691 (tail!10686 s!2326))))))

(declare-fun b!5403979 () Bool)

(declare-fun res!2297685 () Bool)

(declare-fun e!3350400 () Bool)

(assert (=> b!5403979 (=> res!2297685 e!3350400)))

(assert (=> b!5403979 (= res!2297685 (not ((_ is ElementMatch!15175) lt!2203063)))))

(assert (=> b!5403979 (= e!3350397 e!3350400)))

(declare-fun bm!386708 () Bool)

(declare-fun call!386713 () Bool)

(assert (=> bm!386708 (= call!386713 (isEmpty!33691 s!2326))))

(declare-fun b!5403980 () Bool)

(declare-fun res!2297690 () Bool)

(assert (=> b!5403980 (=> res!2297690 e!3350400)))

(declare-fun e!3350396 () Bool)

(assert (=> b!5403980 (= res!2297690 e!3350396)))

(declare-fun res!2297684 () Bool)

(assert (=> b!5403980 (=> (not res!2297684) (not e!3350396))))

(assert (=> b!5403980 (= res!2297684 lt!2203196)))

(declare-fun b!5403981 () Bool)

(declare-fun e!3350401 () Bool)

(assert (=> b!5403981 (= e!3350401 (nullable!5344 lt!2203063))))

(declare-fun d!1725561 () Bool)

(assert (=> d!1725561 e!3350395))

(declare-fun c!941942 () Bool)

(assert (=> d!1725561 (= c!941942 ((_ is EmptyExpr!15175) lt!2203063))))

(assert (=> d!1725561 (= lt!2203196 e!3350401)))

(declare-fun c!941943 () Bool)

(assert (=> d!1725561 (= c!941943 (isEmpty!33691 s!2326))))

(assert (=> d!1725561 (validRegex!6911 lt!2203063)))

(assert (=> d!1725561 (= (matchR!7360 lt!2203063 s!2326) lt!2203196)))

(declare-fun b!5403982 () Bool)

(declare-fun res!2297687 () Bool)

(assert (=> b!5403982 (=> (not res!2297687) (not e!3350396))))

(assert (=> b!5403982 (= res!2297687 (isEmpty!33691 (tail!10686 s!2326)))))

(declare-fun b!5403983 () Bool)

(assert (=> b!5403983 (= e!3350396 (= (head!11589 s!2326) (c!941773 lt!2203063)))))

(declare-fun b!5403984 () Bool)

(declare-fun e!3350399 () Bool)

(assert (=> b!5403984 (= e!3350399 e!3350398)))

(declare-fun res!2297683 () Bool)

(assert (=> b!5403984 (=> res!2297683 e!3350398)))

(assert (=> b!5403984 (= res!2297683 call!386713)))

(declare-fun b!5403985 () Bool)

(declare-fun res!2297689 () Bool)

(assert (=> b!5403985 (=> (not res!2297689) (not e!3350396))))

(assert (=> b!5403985 (= res!2297689 (not call!386713))))

(declare-fun b!5403986 () Bool)

(assert (=> b!5403986 (= e!3350395 (= lt!2203196 call!386713))))

(declare-fun b!5403987 () Bool)

(assert (=> b!5403987 (= e!3350400 e!3350399)))

(declare-fun res!2297686 () Bool)

(assert (=> b!5403987 (=> (not res!2297686) (not e!3350399))))

(assert (=> b!5403987 (= res!2297686 (not lt!2203196))))

(declare-fun b!5403988 () Bool)

(assert (=> b!5403988 (= e!3350401 (matchR!7360 (derivativeStep!4257 lt!2203063 (head!11589 s!2326)) (tail!10686 s!2326)))))

(assert (= (and d!1725561 c!941943) b!5403981))

(assert (= (and d!1725561 (not c!941943)) b!5403988))

(assert (= (and d!1725561 c!941942) b!5403986))

(assert (= (and d!1725561 (not c!941942)) b!5403977))

(assert (= (and b!5403977 c!941941) b!5403976))

(assert (= (and b!5403977 (not c!941941)) b!5403979))

(assert (= (and b!5403979 (not res!2297685)) b!5403980))

(assert (= (and b!5403980 res!2297684) b!5403985))

(assert (= (and b!5403985 res!2297689) b!5403982))

(assert (= (and b!5403982 res!2297687) b!5403983))

(assert (= (and b!5403980 (not res!2297690)) b!5403987))

(assert (= (and b!5403987 res!2297686) b!5403984))

(assert (= (and b!5403984 (not res!2297683)) b!5403978))

(assert (= (and b!5403978 (not res!2297688)) b!5403975))

(assert (= (or b!5403986 b!5403985 b!5403984) bm!386708))

(assert (=> b!5403988 m!6427990))

(assert (=> b!5403988 m!6427990))

(declare-fun m!6428370 () Bool)

(assert (=> b!5403988 m!6428370))

(assert (=> b!5403988 m!6428000))

(assert (=> b!5403988 m!6428370))

(assert (=> b!5403988 m!6428000))

(declare-fun m!6428372 () Bool)

(assert (=> b!5403988 m!6428372))

(assert (=> bm!386708 m!6427980))

(declare-fun m!6428374 () Bool)

(assert (=> b!5403981 m!6428374))

(assert (=> d!1725561 m!6427980))

(declare-fun m!6428376 () Bool)

(assert (=> d!1725561 m!6428376))

(assert (=> b!5403978 m!6428000))

(assert (=> b!5403978 m!6428000))

(assert (=> b!5403978 m!6428078))

(assert (=> b!5403982 m!6428000))

(assert (=> b!5403982 m!6428000))

(assert (=> b!5403982 m!6428078))

(assert (=> b!5403975 m!6427990))

(assert (=> b!5403983 m!6427990))

(assert (=> b!5403380 d!1725561))

(declare-fun b!5404048 () Bool)

(declare-fun e!3350444 () Bool)

(assert (=> b!5404048 (= e!3350444 (matchR!7360 (regTwo!30862 r!7292) s!2326))))

(declare-fun b!5404049 () Bool)

(declare-fun e!3350443 () Option!15286)

(assert (=> b!5404049 (= e!3350443 None!15285)))

(declare-fun b!5404050 () Bool)

(declare-fun e!3350441 () Option!15286)

(assert (=> b!5404050 (= e!3350441 (Some!15285 (tuple2!64749 Nil!61700 s!2326)))))

(declare-fun b!5404051 () Bool)

(declare-fun res!2297727 () Bool)

(declare-fun e!3350442 () Bool)

(assert (=> b!5404051 (=> (not res!2297727) (not e!3350442))))

(declare-fun lt!2203212 () Option!15286)

(assert (=> b!5404051 (= res!2297727 (matchR!7360 (regTwo!30862 r!7292) (_2!35677 (get!21265 lt!2203212))))))

(declare-fun b!5404052 () Bool)

(declare-fun e!3350440 () Bool)

(assert (=> b!5404052 (= e!3350440 (not (isDefined!11989 lt!2203212)))))

(declare-fun b!5404053 () Bool)

(assert (=> b!5404053 (= e!3350441 e!3350443)))

(declare-fun c!941958 () Bool)

(assert (=> b!5404053 (= c!941958 ((_ is Nil!61700) s!2326))))

(declare-fun d!1725565 () Bool)

(assert (=> d!1725565 e!3350440))

(declare-fun res!2297728 () Bool)

(assert (=> d!1725565 (=> res!2297728 e!3350440)))

(assert (=> d!1725565 (= res!2297728 e!3350442)))

(declare-fun res!2297725 () Bool)

(assert (=> d!1725565 (=> (not res!2297725) (not e!3350442))))

(assert (=> d!1725565 (= res!2297725 (isDefined!11989 lt!2203212))))

(assert (=> d!1725565 (= lt!2203212 e!3350441)))

(declare-fun c!941957 () Bool)

(assert (=> d!1725565 (= c!941957 e!3350444)))

(declare-fun res!2297724 () Bool)

(assert (=> d!1725565 (=> (not res!2297724) (not e!3350444))))

(assert (=> d!1725565 (= res!2297724 (matchR!7360 lt!2203072 Nil!61700))))

(assert (=> d!1725565 (validRegex!6911 lt!2203072)))

(assert (=> d!1725565 (= (findConcatSeparation!1700 lt!2203072 (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326) lt!2203212)))

(declare-fun b!5404054 () Bool)

(declare-fun lt!2203210 () Unit!154222)

(declare-fun lt!2203211 () Unit!154222)

(assert (=> b!5404054 (= lt!2203210 lt!2203211)))

(assert (=> b!5404054 (= (++!13523 (++!13523 Nil!61700 (Cons!61700 (h!68148 s!2326) Nil!61700)) (t!375047 s!2326)) s!2326)))

(assert (=> b!5404054 (= lt!2203211 (lemmaMoveElementToOtherListKeepsConcatEq!1831 Nil!61700 (h!68148 s!2326) (t!375047 s!2326) s!2326))))

(assert (=> b!5404054 (= e!3350443 (findConcatSeparation!1700 lt!2203072 (regTwo!30862 r!7292) (++!13523 Nil!61700 (Cons!61700 (h!68148 s!2326) Nil!61700)) (t!375047 s!2326) s!2326))))

(declare-fun b!5404055 () Bool)

(assert (=> b!5404055 (= e!3350442 (= (++!13523 (_1!35677 (get!21265 lt!2203212)) (_2!35677 (get!21265 lt!2203212))) s!2326))))

(declare-fun b!5404056 () Bool)

(declare-fun res!2297726 () Bool)

(assert (=> b!5404056 (=> (not res!2297726) (not e!3350442))))

(assert (=> b!5404056 (= res!2297726 (matchR!7360 lt!2203072 (_1!35677 (get!21265 lt!2203212))))))

(assert (= (and d!1725565 res!2297724) b!5404048))

(assert (= (and d!1725565 c!941957) b!5404050))

(assert (= (and d!1725565 (not c!941957)) b!5404053))

(assert (= (and b!5404053 c!941958) b!5404049))

(assert (= (and b!5404053 (not c!941958)) b!5404054))

(assert (= (and d!1725565 res!2297725) b!5404056))

(assert (= (and b!5404056 res!2297726) b!5404051))

(assert (= (and b!5404051 res!2297727) b!5404055))

(assert (= (and d!1725565 (not res!2297728)) b!5404052))

(declare-fun m!6428406 () Bool)

(assert (=> b!5404051 m!6428406))

(declare-fun m!6428408 () Bool)

(assert (=> b!5404051 m!6428408))

(assert (=> b!5404056 m!6428406))

(declare-fun m!6428410 () Bool)

(assert (=> b!5404056 m!6428410))

(declare-fun m!6428412 () Bool)

(assert (=> d!1725565 m!6428412))

(declare-fun m!6428414 () Bool)

(assert (=> d!1725565 m!6428414))

(assert (=> d!1725565 m!6427814))

(assert (=> b!5404054 m!6428284))

(assert (=> b!5404054 m!6428284))

(assert (=> b!5404054 m!6428286))

(assert (=> b!5404054 m!6428288))

(assert (=> b!5404054 m!6428284))

(declare-fun m!6428416 () Bool)

(assert (=> b!5404054 m!6428416))

(declare-fun m!6428418 () Bool)

(assert (=> b!5404048 m!6428418))

(assert (=> b!5404055 m!6428406))

(declare-fun m!6428420 () Bool)

(assert (=> b!5404055 m!6428420))

(assert (=> b!5404052 m!6428412))

(assert (=> b!5403380 d!1725565))

(declare-fun d!1725575 () Bool)

(assert (=> d!1725575 (= (matchR!7360 (reg!15504 (regOne!30862 r!7292)) (_1!35677 lt!2203042)) (matchZipper!1419 lt!2203057 (_1!35677 lt!2203042)))))

(declare-fun lt!2203218 () Unit!154222)

(declare-fun choose!40735 ((InoxSet Context!9118) List!61826 Regex!15175 List!61824) Unit!154222)

(assert (=> d!1725575 (= lt!2203218 (choose!40735 lt!2203057 lt!2203040 (reg!15504 (regOne!30862 r!7292)) (_1!35677 lt!2203042)))))

(assert (=> d!1725575 (validRegex!6911 (reg!15504 (regOne!30862 r!7292)))))

(assert (=> d!1725575 (= (theoremZipperRegexEquiv!489 lt!2203057 lt!2203040 (reg!15504 (regOne!30862 r!7292)) (_1!35677 lt!2203042)) lt!2203218)))

(declare-fun bs!1248543 () Bool)

(assert (= bs!1248543 d!1725575))

(assert (=> bs!1248543 m!6427800))

(assert (=> bs!1248543 m!6427854))

(declare-fun m!6428426 () Bool)

(assert (=> bs!1248543 m!6428426))

(assert (=> bs!1248543 m!6428364))

(assert (=> b!5403380 d!1725575))

(declare-fun bs!1248545 () Bool)

(declare-fun b!5404069 () Bool)

(assert (= bs!1248545 (and b!5404069 b!5403370)))

(declare-fun lambda!281591 () Int)

(assert (=> bs!1248545 (not (= lambda!281591 lambda!281550))))

(declare-fun bs!1248546 () Bool)

(assert (= bs!1248546 (and b!5404069 b!5403380)))

(assert (=> bs!1248546 (not (= lambda!281591 lambda!281555))))

(assert (=> bs!1248545 (not (= lambda!281591 lambda!281549))))

(assert (=> bs!1248546 (not (= lambda!281591 lambda!281554))))

(declare-fun bs!1248549 () Bool)

(assert (= bs!1248549 (and b!5404069 b!5403667)))

(assert (=> bs!1248549 (not (= lambda!281591 lambda!281573))))

(declare-fun bs!1248551 () Bool)

(assert (= bs!1248551 (and b!5404069 b!5403673)))

(assert (=> bs!1248551 (= (and (= (reg!15504 lt!2203063) (reg!15504 lt!2203048)) (= lt!2203063 lt!2203048)) (= lambda!281591 lambda!281572))))

(assert (=> b!5404069 true))

(assert (=> b!5404069 true))

(declare-fun bs!1248552 () Bool)

(declare-fun b!5404063 () Bool)

(assert (= bs!1248552 (and b!5404063 b!5404069)))

(declare-fun lambda!281592 () Int)

(assert (=> bs!1248552 (not (= lambda!281592 lambda!281591))))

(declare-fun bs!1248553 () Bool)

(assert (= bs!1248553 (and b!5404063 b!5403370)))

(assert (=> bs!1248553 (= (and (= (regOne!30862 lt!2203063) (regOne!30862 r!7292)) (= (regTwo!30862 lt!2203063) (regTwo!30862 r!7292))) (= lambda!281592 lambda!281550))))

(declare-fun bs!1248555 () Bool)

(assert (= bs!1248555 (and b!5404063 b!5403380)))

(assert (=> bs!1248555 (= (and (= (regOne!30862 lt!2203063) lt!2203072) (= (regTwo!30862 lt!2203063) (regTwo!30862 r!7292))) (= lambda!281592 lambda!281555))))

(assert (=> bs!1248553 (not (= lambda!281592 lambda!281549))))

(assert (=> bs!1248555 (not (= lambda!281592 lambda!281554))))

(declare-fun bs!1248559 () Bool)

(assert (= bs!1248559 (and b!5404063 b!5403667)))

(assert (=> bs!1248559 (= (and (= (regOne!30862 lt!2203063) (regOne!30862 lt!2203048)) (= (regTwo!30862 lt!2203063) (regTwo!30862 lt!2203048))) (= lambda!281592 lambda!281573))))

(declare-fun bs!1248561 () Bool)

(assert (= bs!1248561 (and b!5404063 b!5403673)))

(assert (=> bs!1248561 (not (= lambda!281592 lambda!281572))))

(assert (=> b!5404063 true))

(assert (=> b!5404063 true))

(declare-fun b!5404060 () Bool)

(declare-fun e!3350451 () Bool)

(assert (=> b!5404060 (= e!3350451 (matchRSpec!2278 (regTwo!30863 lt!2203063) s!2326))))

(declare-fun b!5404061 () Bool)

(declare-fun res!2297733 () Bool)

(declare-fun e!3350449 () Bool)

(assert (=> b!5404061 (=> res!2297733 e!3350449)))

(declare-fun call!386725 () Bool)

(assert (=> b!5404061 (= res!2297733 call!386725)))

(declare-fun e!3350454 () Bool)

(assert (=> b!5404061 (= e!3350454 e!3350449)))

(declare-fun d!1725579 () Bool)

(declare-fun c!941960 () Bool)

(assert (=> d!1725579 (= c!941960 ((_ is EmptyExpr!15175) lt!2203063))))

(declare-fun e!3350453 () Bool)

(assert (=> d!1725579 (= (matchRSpec!2278 lt!2203063 s!2326) e!3350453)))

(declare-fun bm!386719 () Bool)

(declare-fun c!941961 () Bool)

(declare-fun call!386724 () Bool)

(assert (=> bm!386719 (= call!386724 (Exists!2356 (ite c!941961 lambda!281591 lambda!281592)))))

(declare-fun b!5404062 () Bool)

(declare-fun e!3350448 () Bool)

(assert (=> b!5404062 (= e!3350448 (= s!2326 (Cons!61700 (c!941773 lt!2203063) Nil!61700)))))

(assert (=> b!5404063 (= e!3350454 call!386724)))

(declare-fun b!5404064 () Bool)

(declare-fun e!3350450 () Bool)

(assert (=> b!5404064 (= e!3350450 e!3350451)))

(declare-fun res!2297732 () Bool)

(assert (=> b!5404064 (= res!2297732 (matchRSpec!2278 (regOne!30863 lt!2203063) s!2326))))

(assert (=> b!5404064 (=> res!2297732 e!3350451)))

(declare-fun b!5404065 () Bool)

(declare-fun c!941959 () Bool)

(assert (=> b!5404065 (= c!941959 ((_ is Union!15175) lt!2203063))))

(assert (=> b!5404065 (= e!3350448 e!3350450)))

(declare-fun b!5404066 () Bool)

(declare-fun e!3350452 () Bool)

(assert (=> b!5404066 (= e!3350453 e!3350452)))

(declare-fun res!2297734 () Bool)

(assert (=> b!5404066 (= res!2297734 (not ((_ is EmptyLang!15175) lt!2203063)))))

(assert (=> b!5404066 (=> (not res!2297734) (not e!3350452))))

(declare-fun b!5404067 () Bool)

(assert (=> b!5404067 (= e!3350453 call!386725)))

(declare-fun b!5404068 () Bool)

(assert (=> b!5404068 (= e!3350450 e!3350454)))

(assert (=> b!5404068 (= c!941961 ((_ is Star!15175) lt!2203063))))

(assert (=> b!5404069 (= e!3350449 call!386724)))

(declare-fun b!5404070 () Bool)

(declare-fun c!941962 () Bool)

(assert (=> b!5404070 (= c!941962 ((_ is ElementMatch!15175) lt!2203063))))

(assert (=> b!5404070 (= e!3350452 e!3350448)))

(declare-fun bm!386720 () Bool)

(assert (=> bm!386720 (= call!386725 (isEmpty!33691 s!2326))))

(assert (= (and d!1725579 c!941960) b!5404067))

(assert (= (and d!1725579 (not c!941960)) b!5404066))

(assert (= (and b!5404066 res!2297734) b!5404070))

(assert (= (and b!5404070 c!941962) b!5404062))

(assert (= (and b!5404070 (not c!941962)) b!5404065))

(assert (= (and b!5404065 c!941959) b!5404064))

(assert (= (and b!5404065 (not c!941959)) b!5404068))

(assert (= (and b!5404064 (not res!2297732)) b!5404060))

(assert (= (and b!5404068 c!941961) b!5404061))

(assert (= (and b!5404068 (not c!941961)) b!5404063))

(assert (= (and b!5404061 (not res!2297733)) b!5404069))

(assert (= (or b!5404069 b!5404063) bm!386719))

(assert (= (or b!5404067 b!5404061) bm!386720))

(declare-fun m!6428462 () Bool)

(assert (=> b!5404060 m!6428462))

(declare-fun m!6428464 () Bool)

(assert (=> bm!386719 m!6428464))

(declare-fun m!6428466 () Bool)

(assert (=> b!5404064 m!6428466))

(assert (=> bm!386720 m!6427980))

(assert (=> b!5403380 d!1725579))

(declare-fun bs!1248588 () Bool)

(declare-fun d!1725601 () Bool)

(assert (= bs!1248588 (and d!1725601 b!5404069)))

(declare-fun lambda!281603 () Int)

(assert (=> bs!1248588 (not (= lambda!281603 lambda!281591))))

(declare-fun bs!1248589 () Bool)

(assert (= bs!1248589 (and d!1725601 b!5404063)))

(assert (=> bs!1248589 (not (= lambda!281603 lambda!281592))))

(declare-fun bs!1248590 () Bool)

(assert (= bs!1248590 (and d!1725601 b!5403370)))

(assert (=> bs!1248590 (not (= lambda!281603 lambda!281550))))

(declare-fun bs!1248592 () Bool)

(assert (= bs!1248592 (and d!1725601 b!5403380)))

(assert (=> bs!1248592 (not (= lambda!281603 lambda!281555))))

(assert (=> bs!1248590 (= (= lt!2203072 (regOne!30862 r!7292)) (= lambda!281603 lambda!281549))))

(assert (=> bs!1248592 (= lambda!281603 lambda!281554)))

(declare-fun bs!1248593 () Bool)

(assert (= bs!1248593 (and d!1725601 b!5403667)))

(assert (=> bs!1248593 (not (= lambda!281603 lambda!281573))))

(declare-fun bs!1248594 () Bool)

(assert (= bs!1248594 (and d!1725601 b!5403673)))

(assert (=> bs!1248594 (not (= lambda!281603 lambda!281572))))

(assert (=> d!1725601 true))

(assert (=> d!1725601 true))

(assert (=> d!1725601 true))

(declare-fun lambda!281604 () Int)

(assert (=> bs!1248588 (not (= lambda!281604 lambda!281591))))

(declare-fun bs!1248595 () Bool)

(assert (= bs!1248595 d!1725601))

(assert (=> bs!1248595 (not (= lambda!281604 lambda!281603))))

(assert (=> bs!1248589 (= (and (= lt!2203072 (regOne!30862 lt!2203063)) (= (regTwo!30862 r!7292) (regTwo!30862 lt!2203063))) (= lambda!281604 lambda!281592))))

(assert (=> bs!1248590 (= (= lt!2203072 (regOne!30862 r!7292)) (= lambda!281604 lambda!281550))))

(assert (=> bs!1248592 (= lambda!281604 lambda!281555)))

(assert (=> bs!1248590 (not (= lambda!281604 lambda!281549))))

(assert (=> bs!1248592 (not (= lambda!281604 lambda!281554))))

(assert (=> bs!1248593 (= (and (= lt!2203072 (regOne!30862 lt!2203048)) (= (regTwo!30862 r!7292) (regTwo!30862 lt!2203048))) (= lambda!281604 lambda!281573))))

(assert (=> bs!1248594 (not (= lambda!281604 lambda!281572))))

(assert (=> d!1725601 true))

(assert (=> d!1725601 true))

(assert (=> d!1725601 true))

(assert (=> d!1725601 (= (Exists!2356 lambda!281603) (Exists!2356 lambda!281604))))

(declare-fun lt!2203226 () Unit!154222)

(declare-fun choose!40736 (Regex!15175 Regex!15175 List!61824) Unit!154222)

(assert (=> d!1725601 (= lt!2203226 (choose!40736 lt!2203072 (regTwo!30862 r!7292) s!2326))))

(assert (=> d!1725601 (validRegex!6911 lt!2203072)))

(assert (=> d!1725601 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1010 lt!2203072 (regTwo!30862 r!7292) s!2326) lt!2203226)))

(declare-fun m!6428496 () Bool)

(assert (=> bs!1248595 m!6428496))

(declare-fun m!6428498 () Bool)

(assert (=> bs!1248595 m!6428498))

(declare-fun m!6428500 () Bool)

(assert (=> bs!1248595 m!6428500))

(assert (=> bs!1248595 m!6427814))

(assert (=> b!5403380 d!1725601))

(declare-fun d!1725617 () Bool)

(assert (=> d!1725617 (matchR!7360 (Concat!24020 (reg!15504 (regOne!30862 r!7292)) lt!2203077) (++!13523 (_1!35677 lt!2203042) (_2!35677 lt!2203042)))))

(declare-fun lt!2203232 () Unit!154222)

(declare-fun choose!40737 (Regex!15175 Regex!15175 List!61824 List!61824) Unit!154222)

(assert (=> d!1725617 (= lt!2203232 (choose!40737 (reg!15504 (regOne!30862 r!7292)) lt!2203077 (_1!35677 lt!2203042) (_2!35677 lt!2203042)))))

(declare-fun e!3350487 () Bool)

(assert (=> d!1725617 e!3350487))

(declare-fun res!2297762 () Bool)

(assert (=> d!1725617 (=> (not res!2297762) (not e!3350487))))

(assert (=> d!1725617 (= res!2297762 (validRegex!6911 (reg!15504 (regOne!30862 r!7292))))))

(assert (=> d!1725617 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!198 (reg!15504 (regOne!30862 r!7292)) lt!2203077 (_1!35677 lt!2203042) (_2!35677 lt!2203042)) lt!2203232)))

(declare-fun b!5404128 () Bool)

(assert (=> b!5404128 (= e!3350487 (validRegex!6911 lt!2203077))))

(assert (= (and d!1725617 res!2297762) b!5404128))

(assert (=> d!1725617 m!6427744))

(assert (=> d!1725617 m!6427744))

(declare-fun m!6428504 () Bool)

(assert (=> d!1725617 m!6428504))

(declare-fun m!6428506 () Bool)

(assert (=> d!1725617 m!6428506))

(assert (=> d!1725617 m!6428364))

(declare-fun m!6428508 () Bool)

(assert (=> b!5404128 m!6428508))

(assert (=> b!5403380 d!1725617))

(declare-fun d!1725621 () Bool)

(declare-fun c!941979 () Bool)

(assert (=> d!1725621 (= c!941979 (isEmpty!33691 lt!2203092))))

(declare-fun e!3350488 () Bool)

(assert (=> d!1725621 (= (matchZipper!1419 (store ((as const (Array Context!9118 Bool)) false) (Context!9119 (++!13524 lt!2203085 lt!2203065)) true) lt!2203092) e!3350488)))

(declare-fun b!5404129 () Bool)

(assert (=> b!5404129 (= e!3350488 (nullableZipper!1436 (store ((as const (Array Context!9118 Bool)) false) (Context!9119 (++!13524 lt!2203085 lt!2203065)) true)))))

(declare-fun b!5404130 () Bool)

(assert (=> b!5404130 (= e!3350488 (matchZipper!1419 (derivationStepZipper!1414 (store ((as const (Array Context!9118 Bool)) false) (Context!9119 (++!13524 lt!2203085 lt!2203065)) true) (head!11589 lt!2203092)) (tail!10686 lt!2203092)))))

(assert (= (and d!1725621 c!941979) b!5404129))

(assert (= (and d!1725621 (not c!941979)) b!5404130))

(declare-fun m!6428510 () Bool)

(assert (=> d!1725621 m!6428510))

(assert (=> b!5404129 m!6427774))

(declare-fun m!6428512 () Bool)

(assert (=> b!5404129 m!6428512))

(declare-fun m!6428514 () Bool)

(assert (=> b!5404130 m!6428514))

(assert (=> b!5404130 m!6427774))

(assert (=> b!5404130 m!6428514))

(declare-fun m!6428516 () Bool)

(assert (=> b!5404130 m!6428516))

(declare-fun m!6428518 () Bool)

(assert (=> b!5404130 m!6428518))

(assert (=> b!5404130 m!6428516))

(assert (=> b!5404130 m!6428518))

(declare-fun m!6428520 () Bool)

(assert (=> b!5404130 m!6428520))

(assert (=> b!5403380 d!1725621))

(declare-fun b!5404140 () Bool)

(declare-fun e!3350494 () List!61825)

(assert (=> b!5404140 (= e!3350494 (Cons!61701 (h!68149 lt!2203085) (++!13524 (t!375048 lt!2203085) lt!2203065)))))

(declare-fun d!1725623 () Bool)

(declare-fun e!3350493 () Bool)

(assert (=> d!1725623 e!3350493))

(declare-fun res!2297768 () Bool)

(assert (=> d!1725623 (=> (not res!2297768) (not e!3350493))))

(declare-fun lt!2203238 () List!61825)

(declare-fun content!11056 (List!61825) (InoxSet Regex!15175))

(assert (=> d!1725623 (= res!2297768 (= (content!11056 lt!2203238) ((_ map or) (content!11056 lt!2203085) (content!11056 lt!2203065))))))

(assert (=> d!1725623 (= lt!2203238 e!3350494)))

(declare-fun c!941982 () Bool)

(assert (=> d!1725623 (= c!941982 ((_ is Nil!61701) lt!2203085))))

(assert (=> d!1725623 (= (++!13524 lt!2203085 lt!2203065) lt!2203238)))

(declare-fun b!5404141 () Bool)

(declare-fun res!2297767 () Bool)

(assert (=> b!5404141 (=> (not res!2297767) (not e!3350493))))

(declare-fun size!39840 (List!61825) Int)

(assert (=> b!5404141 (= res!2297767 (= (size!39840 lt!2203238) (+ (size!39840 lt!2203085) (size!39840 lt!2203065))))))

(declare-fun b!5404142 () Bool)

(assert (=> b!5404142 (= e!3350493 (or (not (= lt!2203065 Nil!61701)) (= lt!2203238 lt!2203085)))))

(declare-fun b!5404139 () Bool)

(assert (=> b!5404139 (= e!3350494 lt!2203065)))

(assert (= (and d!1725623 c!941982) b!5404139))

(assert (= (and d!1725623 (not c!941982)) b!5404140))

(assert (= (and d!1725623 res!2297768) b!5404141))

(assert (= (and b!5404141 res!2297767) b!5404142))

(declare-fun m!6428528 () Bool)

(assert (=> b!5404140 m!6428528))

(declare-fun m!6428530 () Bool)

(assert (=> d!1725623 m!6428530))

(declare-fun m!6428532 () Bool)

(assert (=> d!1725623 m!6428532))

(declare-fun m!6428534 () Bool)

(assert (=> d!1725623 m!6428534))

(declare-fun m!6428536 () Bool)

(assert (=> b!5404141 m!6428536))

(declare-fun m!6428538 () Bool)

(assert (=> b!5404141 m!6428538))

(declare-fun m!6428540 () Bool)

(assert (=> b!5404141 m!6428540))

(assert (=> b!5403380 d!1725623))

(declare-fun d!1725627 () Bool)

(declare-fun choose!40738 (Int) Bool)

(assert (=> d!1725627 (= (Exists!2356 lambda!281554) (choose!40738 lambda!281554))))

(declare-fun bs!1248599 () Bool)

(assert (= bs!1248599 d!1725627))

(declare-fun m!6428542 () Bool)

(assert (=> bs!1248599 m!6428542))

(assert (=> b!5403380 d!1725627))

(declare-fun d!1725629 () Bool)

(declare-fun forall!14529 (List!61825 Int) Bool)

(assert (=> d!1725629 (forall!14529 (++!13524 lt!2203085 lt!2203065) lambda!281553)))

(declare-fun lt!2203243 () Unit!154222)

(declare-fun choose!40739 (List!61825 List!61825 Int) Unit!154222)

(assert (=> d!1725629 (= lt!2203243 (choose!40739 lt!2203085 lt!2203065 lambda!281553))))

(assert (=> d!1725629 (forall!14529 lt!2203085 lambda!281553)))

(assert (=> d!1725629 (= (lemmaConcatPreservesForall!200 lt!2203085 lt!2203065 lambda!281553) lt!2203243)))

(declare-fun bs!1248600 () Bool)

(assert (= bs!1248600 d!1725629))

(assert (=> bs!1248600 m!6427776))

(assert (=> bs!1248600 m!6427776))

(declare-fun m!6428544 () Bool)

(assert (=> bs!1248600 m!6428544))

(declare-fun m!6428546 () Bool)

(assert (=> bs!1248600 m!6428546))

(declare-fun m!6428548 () Bool)

(assert (=> bs!1248600 m!6428548))

(assert (=> b!5403380 d!1725629))

(declare-fun b!5404163 () Bool)

(declare-fun e!3350510 () Bool)

(assert (=> b!5404163 (= e!3350510 (not (= (head!11589 (_2!35677 lt!2203042)) (c!941773 lt!2203077))))))

(declare-fun b!5404164 () Bool)

(declare-fun e!3350509 () Bool)

(declare-fun lt!2203244 () Bool)

(assert (=> b!5404164 (= e!3350509 (not lt!2203244))))

(declare-fun b!5404165 () Bool)

(declare-fun e!3350507 () Bool)

(assert (=> b!5404165 (= e!3350507 e!3350509)))

(declare-fun c!941991 () Bool)

(assert (=> b!5404165 (= c!941991 ((_ is EmptyLang!15175) lt!2203077))))

(declare-fun b!5404166 () Bool)

(declare-fun res!2297778 () Bool)

(assert (=> b!5404166 (=> res!2297778 e!3350510)))

(assert (=> b!5404166 (= res!2297778 (not (isEmpty!33691 (tail!10686 (_2!35677 lt!2203042)))))))

(declare-fun b!5404167 () Bool)

(declare-fun res!2297775 () Bool)

(declare-fun e!3350512 () Bool)

(assert (=> b!5404167 (=> res!2297775 e!3350512)))

(assert (=> b!5404167 (= res!2297775 (not ((_ is ElementMatch!15175) lt!2203077)))))

(assert (=> b!5404167 (= e!3350509 e!3350512)))

(declare-fun bm!386728 () Bool)

(declare-fun call!386733 () Bool)

(assert (=> bm!386728 (= call!386733 (isEmpty!33691 (_2!35677 lt!2203042)))))

(declare-fun b!5404168 () Bool)

(declare-fun res!2297780 () Bool)

(assert (=> b!5404168 (=> res!2297780 e!3350512)))

(declare-fun e!3350508 () Bool)

(assert (=> b!5404168 (= res!2297780 e!3350508)))

(declare-fun res!2297774 () Bool)

(assert (=> b!5404168 (=> (not res!2297774) (not e!3350508))))

(assert (=> b!5404168 (= res!2297774 lt!2203244)))

(declare-fun b!5404169 () Bool)

(declare-fun e!3350513 () Bool)

(assert (=> b!5404169 (= e!3350513 (nullable!5344 lt!2203077))))

(declare-fun d!1725631 () Bool)

(assert (=> d!1725631 e!3350507))

(declare-fun c!941992 () Bool)

(assert (=> d!1725631 (= c!941992 ((_ is EmptyExpr!15175) lt!2203077))))

(assert (=> d!1725631 (= lt!2203244 e!3350513)))

(declare-fun c!941993 () Bool)

(assert (=> d!1725631 (= c!941993 (isEmpty!33691 (_2!35677 lt!2203042)))))

(assert (=> d!1725631 (validRegex!6911 lt!2203077)))

(assert (=> d!1725631 (= (matchR!7360 lt!2203077 (_2!35677 lt!2203042)) lt!2203244)))

(declare-fun b!5404170 () Bool)

(declare-fun res!2297777 () Bool)

(assert (=> b!5404170 (=> (not res!2297777) (not e!3350508))))

(assert (=> b!5404170 (= res!2297777 (isEmpty!33691 (tail!10686 (_2!35677 lt!2203042))))))

(declare-fun b!5404171 () Bool)

(assert (=> b!5404171 (= e!3350508 (= (head!11589 (_2!35677 lt!2203042)) (c!941773 lt!2203077)))))

(declare-fun b!5404172 () Bool)

(declare-fun e!3350511 () Bool)

(assert (=> b!5404172 (= e!3350511 e!3350510)))

(declare-fun res!2297773 () Bool)

(assert (=> b!5404172 (=> res!2297773 e!3350510)))

(assert (=> b!5404172 (= res!2297773 call!386733)))

(declare-fun b!5404173 () Bool)

(declare-fun res!2297779 () Bool)

(assert (=> b!5404173 (=> (not res!2297779) (not e!3350508))))

(assert (=> b!5404173 (= res!2297779 (not call!386733))))

(declare-fun b!5404174 () Bool)

(assert (=> b!5404174 (= e!3350507 (= lt!2203244 call!386733))))

(declare-fun b!5404175 () Bool)

(assert (=> b!5404175 (= e!3350512 e!3350511)))

(declare-fun res!2297776 () Bool)

(assert (=> b!5404175 (=> (not res!2297776) (not e!3350511))))

(assert (=> b!5404175 (= res!2297776 (not lt!2203244))))

(declare-fun b!5404176 () Bool)

(assert (=> b!5404176 (= e!3350513 (matchR!7360 (derivativeStep!4257 lt!2203077 (head!11589 (_2!35677 lt!2203042))) (tail!10686 (_2!35677 lt!2203042))))))

(assert (= (and d!1725631 c!941993) b!5404169))

(assert (= (and d!1725631 (not c!941993)) b!5404176))

(assert (= (and d!1725631 c!941992) b!5404174))

(assert (= (and d!1725631 (not c!941992)) b!5404165))

(assert (= (and b!5404165 c!941991) b!5404164))

(assert (= (and b!5404165 (not c!941991)) b!5404167))

(assert (= (and b!5404167 (not res!2297775)) b!5404168))

(assert (= (and b!5404168 res!2297774) b!5404173))

(assert (= (and b!5404173 res!2297779) b!5404170))

(assert (= (and b!5404170 res!2297777) b!5404171))

(assert (= (and b!5404168 (not res!2297780)) b!5404175))

(assert (= (and b!5404175 res!2297776) b!5404172))

(assert (= (and b!5404172 (not res!2297773)) b!5404166))

(assert (= (and b!5404166 (not res!2297778)) b!5404163))

(assert (= (or b!5404174 b!5404173 b!5404172) bm!386728))

(declare-fun m!6428550 () Bool)

(assert (=> b!5404176 m!6428550))

(assert (=> b!5404176 m!6428550))

(declare-fun m!6428552 () Bool)

(assert (=> b!5404176 m!6428552))

(declare-fun m!6428554 () Bool)

(assert (=> b!5404176 m!6428554))

(assert (=> b!5404176 m!6428552))

(assert (=> b!5404176 m!6428554))

(declare-fun m!6428556 () Bool)

(assert (=> b!5404176 m!6428556))

(declare-fun m!6428558 () Bool)

(assert (=> bm!386728 m!6428558))

(declare-fun m!6428560 () Bool)

(assert (=> b!5404169 m!6428560))

(assert (=> d!1725631 m!6428558))

(assert (=> d!1725631 m!6428508))

(assert (=> b!5404166 m!6428554))

(assert (=> b!5404166 m!6428554))

(declare-fun m!6428562 () Bool)

(assert (=> b!5404166 m!6428562))

(assert (=> b!5404170 m!6428554))

(assert (=> b!5404170 m!6428554))

(assert (=> b!5404170 m!6428562))

(assert (=> b!5404163 m!6428550))

(assert (=> b!5404171 m!6428550))

(assert (=> b!5403380 d!1725631))

(declare-fun bs!1248617 () Bool)

(declare-fun d!1725633 () Bool)

(assert (= bs!1248617 (and d!1725633 b!5403379)))

(declare-fun lambda!281618 () Int)

(assert (=> bs!1248617 (= lambda!281618 lambda!281553)))

(assert (=> d!1725633 (matchZipper!1419 (store ((as const (Array Context!9118 Bool)) false) (Context!9119 (++!13524 (exprs!5059 lt!2203068) (exprs!5059 lt!2203086))) true) (++!13523 (_1!35677 lt!2203042) (_2!35677 lt!2203042)))))

(declare-fun lt!2203257 () Unit!154222)

(assert (=> d!1725633 (= lt!2203257 (lemmaConcatPreservesForall!200 (exprs!5059 lt!2203068) (exprs!5059 lt!2203086) lambda!281618))))

(declare-fun lt!2203256 () Unit!154222)

(declare-fun choose!40742 (Context!9118 Context!9118 List!61824 List!61824) Unit!154222)

(assert (=> d!1725633 (= lt!2203256 (choose!40742 lt!2203068 lt!2203086 (_1!35677 lt!2203042) (_2!35677 lt!2203042)))))

(assert (=> d!1725633 (matchZipper!1419 (store ((as const (Array Context!9118 Bool)) false) lt!2203068 true) (_1!35677 lt!2203042))))

(assert (=> d!1725633 (= (lemmaConcatenateContextMatchesConcatOfStrings!48 lt!2203068 lt!2203086 (_1!35677 lt!2203042) (_2!35677 lt!2203042)) lt!2203256)))

(declare-fun bs!1248618 () Bool)

(assert (= bs!1248618 d!1725633))

(assert (=> bs!1248618 m!6427724))

(declare-fun m!6428624 () Bool)

(assert (=> bs!1248618 m!6428624))

(declare-fun m!6428626 () Bool)

(assert (=> bs!1248618 m!6428626))

(declare-fun m!6428628 () Bool)

(assert (=> bs!1248618 m!6428628))

(assert (=> bs!1248618 m!6428628))

(assert (=> bs!1248618 m!6427744))

(declare-fun m!6428632 () Bool)

(assert (=> bs!1248618 m!6428632))

(assert (=> bs!1248618 m!6427744))

(assert (=> bs!1248618 m!6427724))

(declare-fun m!6428636 () Bool)

(assert (=> bs!1248618 m!6428636))

(declare-fun m!6428640 () Bool)

(assert (=> bs!1248618 m!6428640))

(assert (=> b!5403380 d!1725633))

(declare-fun d!1725657 () Bool)

(assert (=> d!1725657 (= (matchR!7360 lt!2203077 (_2!35677 lt!2203042)) (matchZipper!1419 lt!2203069 (_2!35677 lt!2203042)))))

(declare-fun lt!2203258 () Unit!154222)

(assert (=> d!1725657 (= lt!2203258 (choose!40735 lt!2203069 lt!2203090 lt!2203077 (_2!35677 lt!2203042)))))

(assert (=> d!1725657 (validRegex!6911 lt!2203077)))

(assert (=> d!1725657 (= (theoremZipperRegexEquiv!489 lt!2203069 lt!2203090 lt!2203077 (_2!35677 lt!2203042)) lt!2203258)))

(declare-fun bs!1248620 () Bool)

(assert (= bs!1248620 d!1725657))

(assert (=> bs!1248620 m!6427786))

(assert (=> bs!1248620 m!6427830))

(declare-fun m!6428644 () Bool)

(assert (=> bs!1248620 m!6428644))

(assert (=> bs!1248620 m!6428508))

(assert (=> b!5403380 d!1725657))

(declare-fun b!5404281 () Bool)

(declare-fun res!2297798 () Bool)

(declare-fun e!3350572 () Bool)

(assert (=> b!5404281 (=> (not res!2297798) (not e!3350572))))

(declare-fun call!386743 () Bool)

(assert (=> b!5404281 (= res!2297798 call!386743)))

(declare-fun e!3350569 () Bool)

(assert (=> b!5404281 (= e!3350569 e!3350572)))

(declare-fun d!1725661 () Bool)

(declare-fun res!2297799 () Bool)

(declare-fun e!3350575 () Bool)

(assert (=> d!1725661 (=> res!2297799 e!3350575)))

(assert (=> d!1725661 (= res!2297799 ((_ is ElementMatch!15175) lt!2203072))))

(assert (=> d!1725661 (= (validRegex!6911 lt!2203072) e!3350575)))

(declare-fun b!5404282 () Bool)

(declare-fun e!3350571 () Bool)

(declare-fun e!3350570 () Bool)

(assert (=> b!5404282 (= e!3350571 e!3350570)))

(declare-fun res!2297797 () Bool)

(assert (=> b!5404282 (=> (not res!2297797) (not e!3350570))))

(assert (=> b!5404282 (= res!2297797 call!386743)))

(declare-fun b!5404283 () Bool)

(declare-fun call!386744 () Bool)

(assert (=> b!5404283 (= e!3350570 call!386744)))

(declare-fun b!5404284 () Bool)

(declare-fun e!3350574 () Bool)

(assert (=> b!5404284 (= e!3350574 e!3350569)))

(declare-fun c!942013 () Bool)

(assert (=> b!5404284 (= c!942013 ((_ is Union!15175) lt!2203072))))

(declare-fun b!5404285 () Bool)

(declare-fun e!3350573 () Bool)

(assert (=> b!5404285 (= e!3350574 e!3350573)))

(declare-fun res!2297796 () Bool)

(assert (=> b!5404285 (= res!2297796 (not (nullable!5344 (reg!15504 lt!2203072))))))

(assert (=> b!5404285 (=> (not res!2297796) (not e!3350573))))

(declare-fun call!386742 () Bool)

(declare-fun c!942012 () Bool)

(declare-fun bm!386737 () Bool)

(assert (=> bm!386737 (= call!386742 (validRegex!6911 (ite c!942012 (reg!15504 lt!2203072) (ite c!942013 (regTwo!30863 lt!2203072) (regTwo!30862 lt!2203072)))))))

(declare-fun b!5404286 () Bool)

(assert (=> b!5404286 (= e!3350573 call!386742)))

(declare-fun b!5404287 () Bool)

(declare-fun res!2297795 () Bool)

(assert (=> b!5404287 (=> res!2297795 e!3350571)))

(assert (=> b!5404287 (= res!2297795 (not ((_ is Concat!24020) lt!2203072)))))

(assert (=> b!5404287 (= e!3350569 e!3350571)))

(declare-fun bm!386738 () Bool)

(assert (=> bm!386738 (= call!386743 (validRegex!6911 (ite c!942013 (regOne!30863 lt!2203072) (regOne!30862 lt!2203072))))))

(declare-fun b!5404288 () Bool)

(assert (=> b!5404288 (= e!3350575 e!3350574)))

(assert (=> b!5404288 (= c!942012 ((_ is Star!15175) lt!2203072))))

(declare-fun bm!386739 () Bool)

(assert (=> bm!386739 (= call!386744 call!386742)))

(declare-fun b!5404289 () Bool)

(assert (=> b!5404289 (= e!3350572 call!386744)))

(assert (= (and d!1725661 (not res!2297799)) b!5404288))

(assert (= (and b!5404288 c!942012) b!5404285))

(assert (= (and b!5404288 (not c!942012)) b!5404284))

(assert (= (and b!5404285 res!2297796) b!5404286))

(assert (= (and b!5404284 c!942013) b!5404281))

(assert (= (and b!5404284 (not c!942013)) b!5404287))

(assert (= (and b!5404281 res!2297798) b!5404289))

(assert (= (and b!5404287 (not res!2297795)) b!5404282))

(assert (= (and b!5404282 res!2297797) b!5404283))

(assert (= (or b!5404289 b!5404283) bm!386739))

(assert (= (or b!5404281 b!5404282) bm!386738))

(assert (= (or b!5404286 bm!386739) bm!386737))

(declare-fun m!6428656 () Bool)

(assert (=> b!5404285 m!6428656))

(declare-fun m!6428658 () Bool)

(assert (=> bm!386737 m!6428658))

(declare-fun m!6428660 () Bool)

(assert (=> bm!386738 m!6428660))

(assert (=> b!5403380 d!1725661))

(declare-fun d!1725669 () Bool)

(assert (=> d!1725669 (= (matchR!7360 (Concat!24020 (Concat!24020 (reg!15504 (regOne!30862 r!7292)) lt!2203037) (regTwo!30862 r!7292)) s!2326) (matchR!7360 (Concat!24020 (reg!15504 (regOne!30862 r!7292)) (Concat!24020 lt!2203037 (regTwo!30862 r!7292))) s!2326))))

(declare-fun lt!2203262 () Unit!154222)

(declare-fun choose!40743 (Regex!15175 Regex!15175 Regex!15175 List!61824) Unit!154222)

(assert (=> d!1725669 (= lt!2203262 (choose!40743 (reg!15504 (regOne!30862 r!7292)) lt!2203037 (regTwo!30862 r!7292) s!2326))))

(declare-fun e!3350578 () Bool)

(assert (=> d!1725669 e!3350578))

(declare-fun res!2297804 () Bool)

(assert (=> d!1725669 (=> (not res!2297804) (not e!3350578))))

(assert (=> d!1725669 (= res!2297804 (validRegex!6911 (reg!15504 (regOne!30862 r!7292))))))

(assert (=> d!1725669 (= (lemmaConcatAssociative!28 (reg!15504 (regOne!30862 r!7292)) lt!2203037 (regTwo!30862 r!7292) s!2326) lt!2203262)))

(declare-fun b!5404294 () Bool)

(declare-fun res!2297805 () Bool)

(assert (=> b!5404294 (=> (not res!2297805) (not e!3350578))))

(assert (=> b!5404294 (= res!2297805 (validRegex!6911 lt!2203037))))

(declare-fun b!5404295 () Bool)

(assert (=> b!5404295 (= e!3350578 (validRegex!6911 (regTwo!30862 r!7292)))))

(assert (= (and d!1725669 res!2297804) b!5404294))

(assert (= (and b!5404294 res!2297805) b!5404295))

(declare-fun m!6428666 () Bool)

(assert (=> d!1725669 m!6428666))

(declare-fun m!6428668 () Bool)

(assert (=> d!1725669 m!6428668))

(declare-fun m!6428670 () Bool)

(assert (=> d!1725669 m!6428670))

(assert (=> d!1725669 m!6428364))

(declare-fun m!6428672 () Bool)

(assert (=> b!5404294 m!6428672))

(declare-fun m!6428674 () Bool)

(assert (=> b!5404295 m!6428674))

(assert (=> b!5403380 d!1725669))

(declare-fun d!1725677 () Bool)

(assert (=> d!1725677 (= (Exists!2356 lambda!281555) (choose!40738 lambda!281555))))

(declare-fun bs!1248626 () Bool)

(assert (= bs!1248626 d!1725677))

(declare-fun m!6428676 () Bool)

(assert (=> bs!1248626 m!6428676))

(assert (=> b!5403380 d!1725677))

(declare-fun b!5404296 () Bool)

(declare-fun e!3350582 () Bool)

(assert (=> b!5404296 (= e!3350582 (not (= (head!11589 lt!2203092) (c!941773 lt!2203048))))))

(declare-fun b!5404297 () Bool)

(declare-fun e!3350581 () Bool)

(declare-fun lt!2203263 () Bool)

(assert (=> b!5404297 (= e!3350581 (not lt!2203263))))

(declare-fun b!5404298 () Bool)

(declare-fun e!3350579 () Bool)

(assert (=> b!5404298 (= e!3350579 e!3350581)))

(declare-fun c!942014 () Bool)

(assert (=> b!5404298 (= c!942014 ((_ is EmptyLang!15175) lt!2203048))))

(declare-fun b!5404299 () Bool)

(declare-fun res!2297811 () Bool)

(assert (=> b!5404299 (=> res!2297811 e!3350582)))

(assert (=> b!5404299 (= res!2297811 (not (isEmpty!33691 (tail!10686 lt!2203092))))))

(declare-fun b!5404300 () Bool)

(declare-fun res!2297808 () Bool)

(declare-fun e!3350584 () Bool)

(assert (=> b!5404300 (=> res!2297808 e!3350584)))

(assert (=> b!5404300 (= res!2297808 (not ((_ is ElementMatch!15175) lt!2203048)))))

(assert (=> b!5404300 (= e!3350581 e!3350584)))

(declare-fun bm!386740 () Bool)

(declare-fun call!386745 () Bool)

(assert (=> bm!386740 (= call!386745 (isEmpty!33691 lt!2203092))))

(declare-fun b!5404301 () Bool)

(declare-fun res!2297813 () Bool)

(assert (=> b!5404301 (=> res!2297813 e!3350584)))

(declare-fun e!3350580 () Bool)

(assert (=> b!5404301 (= res!2297813 e!3350580)))

(declare-fun res!2297807 () Bool)

(assert (=> b!5404301 (=> (not res!2297807) (not e!3350580))))

(assert (=> b!5404301 (= res!2297807 lt!2203263)))

(declare-fun b!5404302 () Bool)

(declare-fun e!3350585 () Bool)

(assert (=> b!5404302 (= e!3350585 (nullable!5344 lt!2203048))))

(declare-fun d!1725679 () Bool)

(assert (=> d!1725679 e!3350579))

(declare-fun c!942015 () Bool)

(assert (=> d!1725679 (= c!942015 ((_ is EmptyExpr!15175) lt!2203048))))

(assert (=> d!1725679 (= lt!2203263 e!3350585)))

(declare-fun c!942016 () Bool)

(assert (=> d!1725679 (= c!942016 (isEmpty!33691 lt!2203092))))

(assert (=> d!1725679 (validRegex!6911 lt!2203048)))

(assert (=> d!1725679 (= (matchR!7360 lt!2203048 lt!2203092) lt!2203263)))

(declare-fun b!5404303 () Bool)

(declare-fun res!2297810 () Bool)

(assert (=> b!5404303 (=> (not res!2297810) (not e!3350580))))

(assert (=> b!5404303 (= res!2297810 (isEmpty!33691 (tail!10686 lt!2203092)))))

(declare-fun b!5404304 () Bool)

(assert (=> b!5404304 (= e!3350580 (= (head!11589 lt!2203092) (c!941773 lt!2203048)))))

(declare-fun b!5404305 () Bool)

(declare-fun e!3350583 () Bool)

(assert (=> b!5404305 (= e!3350583 e!3350582)))

(declare-fun res!2297806 () Bool)

(assert (=> b!5404305 (=> res!2297806 e!3350582)))

(assert (=> b!5404305 (= res!2297806 call!386745)))

(declare-fun b!5404306 () Bool)

(declare-fun res!2297812 () Bool)

(assert (=> b!5404306 (=> (not res!2297812) (not e!3350580))))

(assert (=> b!5404306 (= res!2297812 (not call!386745))))

(declare-fun b!5404307 () Bool)

(assert (=> b!5404307 (= e!3350579 (= lt!2203263 call!386745))))

(declare-fun b!5404308 () Bool)

(assert (=> b!5404308 (= e!3350584 e!3350583)))

(declare-fun res!2297809 () Bool)

(assert (=> b!5404308 (=> (not res!2297809) (not e!3350583))))

(assert (=> b!5404308 (= res!2297809 (not lt!2203263))))

(declare-fun b!5404309 () Bool)

(assert (=> b!5404309 (= e!3350585 (matchR!7360 (derivativeStep!4257 lt!2203048 (head!11589 lt!2203092)) (tail!10686 lt!2203092)))))

(assert (= (and d!1725679 c!942016) b!5404302))

(assert (= (and d!1725679 (not c!942016)) b!5404309))

(assert (= (and d!1725679 c!942015) b!5404307))

(assert (= (and d!1725679 (not c!942015)) b!5404298))

(assert (= (and b!5404298 c!942014) b!5404297))

(assert (= (and b!5404298 (not c!942014)) b!5404300))

(assert (= (and b!5404300 (not res!2297808)) b!5404301))

(assert (= (and b!5404301 res!2297807) b!5404306))

(assert (= (and b!5404306 res!2297812) b!5404303))

(assert (= (and b!5404303 res!2297810) b!5404304))

(assert (= (and b!5404301 (not res!2297813)) b!5404308))

(assert (= (and b!5404308 res!2297809) b!5404305))

(assert (= (and b!5404305 (not res!2297806)) b!5404299))

(assert (= (and b!5404299 (not res!2297811)) b!5404296))

(assert (= (or b!5404307 b!5404306 b!5404305) bm!386740))

(assert (=> b!5404309 m!6428514))

(assert (=> b!5404309 m!6428514))

(declare-fun m!6428678 () Bool)

(assert (=> b!5404309 m!6428678))

(assert (=> b!5404309 m!6428518))

(assert (=> b!5404309 m!6428678))

(assert (=> b!5404309 m!6428518))

(declare-fun m!6428680 () Bool)

(assert (=> b!5404309 m!6428680))

(assert (=> bm!386740 m!6428510))

(assert (=> b!5404302 m!6428074))

(assert (=> d!1725679 m!6428510))

(assert (=> d!1725679 m!6428076))

(assert (=> b!5404299 m!6428518))

(assert (=> b!5404299 m!6428518))

(declare-fun m!6428682 () Bool)

(assert (=> b!5404299 m!6428682))

(assert (=> b!5404303 m!6428518))

(assert (=> b!5404303 m!6428518))

(assert (=> b!5404303 m!6428682))

(assert (=> b!5404296 m!6428514))

(assert (=> b!5404304 m!6428514))

(assert (=> b!5403380 d!1725679))

(declare-fun bs!1248627 () Bool)

(declare-fun d!1725681 () Bool)

(assert (= bs!1248627 (and d!1725681 b!5404069)))

(declare-fun lambda!281621 () Int)

(assert (=> bs!1248627 (not (= lambda!281621 lambda!281591))))

(declare-fun bs!1248628 () Bool)

(assert (= bs!1248628 (and d!1725681 d!1725601)))

(assert (=> bs!1248628 (= lambda!281621 lambda!281603)))

(declare-fun bs!1248629 () Bool)

(assert (= bs!1248629 (and d!1725681 b!5404063)))

(assert (=> bs!1248629 (not (= lambda!281621 lambda!281592))))

(declare-fun bs!1248630 () Bool)

(assert (= bs!1248630 (and d!1725681 b!5403370)))

(assert (=> bs!1248630 (not (= lambda!281621 lambda!281550))))

(declare-fun bs!1248631 () Bool)

(assert (= bs!1248631 (and d!1725681 b!5403380)))

(assert (=> bs!1248631 (not (= lambda!281621 lambda!281555))))

(assert (=> bs!1248630 (= (= lt!2203072 (regOne!30862 r!7292)) (= lambda!281621 lambda!281549))))

(assert (=> bs!1248628 (not (= lambda!281621 lambda!281604))))

(assert (=> bs!1248631 (= lambda!281621 lambda!281554)))

(declare-fun bs!1248632 () Bool)

(assert (= bs!1248632 (and d!1725681 b!5403667)))

(assert (=> bs!1248632 (not (= lambda!281621 lambda!281573))))

(declare-fun bs!1248633 () Bool)

(assert (= bs!1248633 (and d!1725681 b!5403673)))

(assert (=> bs!1248633 (not (= lambda!281621 lambda!281572))))

(assert (=> d!1725681 true))

(assert (=> d!1725681 true))

(assert (=> d!1725681 true))

(assert (=> d!1725681 (= (isDefined!11989 (findConcatSeparation!1700 lt!2203072 (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326)) (Exists!2356 lambda!281621))))

(declare-fun lt!2203266 () Unit!154222)

(declare-fun choose!40745 (Regex!15175 Regex!15175 List!61824) Unit!154222)

(assert (=> d!1725681 (= lt!2203266 (choose!40745 lt!2203072 (regTwo!30862 r!7292) s!2326))))

(assert (=> d!1725681 (validRegex!6911 lt!2203072)))

(assert (=> d!1725681 (= (lemmaFindConcatSeparationEquivalentToExists!1464 lt!2203072 (regTwo!30862 r!7292) s!2326) lt!2203266)))

(declare-fun bs!1248634 () Bool)

(assert (= bs!1248634 d!1725681))

(declare-fun m!6428684 () Bool)

(assert (=> bs!1248634 m!6428684))

(declare-fun m!6428686 () Bool)

(assert (=> bs!1248634 m!6428686))

(assert (=> bs!1248634 m!6427814))

(assert (=> bs!1248634 m!6427790))

(assert (=> bs!1248634 m!6427790))

(assert (=> bs!1248634 m!6427792))

(assert (=> b!5403380 d!1725681))

(declare-fun d!1725683 () Bool)

(assert (=> d!1725683 (= (matchR!7360 lt!2203063 s!2326) (matchRSpec!2278 lt!2203063 s!2326))))

(declare-fun lt!2203267 () Unit!154222)

(assert (=> d!1725683 (= lt!2203267 (choose!40723 lt!2203063 s!2326))))

(assert (=> d!1725683 (validRegex!6911 lt!2203063)))

(assert (=> d!1725683 (= (mainMatchTheorem!2278 lt!2203063 s!2326) lt!2203267)))

(declare-fun bs!1248635 () Bool)

(assert (= bs!1248635 d!1725683))

(assert (=> bs!1248635 m!6427794))

(assert (=> bs!1248635 m!6427798))

(declare-fun m!6428688 () Bool)

(assert (=> bs!1248635 m!6428688))

(assert (=> bs!1248635 m!6428376))

(assert (=> b!5403380 d!1725683))

(declare-fun d!1725685 () Bool)

(declare-fun c!942017 () Bool)

(assert (=> d!1725685 (= c!942017 (isEmpty!33691 (_1!35677 lt!2203042)))))

(declare-fun e!3350588 () Bool)

(assert (=> d!1725685 (= (matchZipper!1419 lt!2203057 (_1!35677 lt!2203042)) e!3350588)))

(declare-fun b!5404314 () Bool)

(assert (=> b!5404314 (= e!3350588 (nullableZipper!1436 lt!2203057))))

(declare-fun b!5404315 () Bool)

(assert (=> b!5404315 (= e!3350588 (matchZipper!1419 (derivationStepZipper!1414 lt!2203057 (head!11589 (_1!35677 lt!2203042))) (tail!10686 (_1!35677 lt!2203042))))))

(assert (= (and d!1725685 c!942017) b!5404314))

(assert (= (and d!1725685 (not c!942017)) b!5404315))

(assert (=> d!1725685 m!6428358))

(declare-fun m!6428690 () Bool)

(assert (=> b!5404314 m!6428690))

(assert (=> b!5404315 m!6428344))

(assert (=> b!5404315 m!6428344))

(declare-fun m!6428692 () Bool)

(assert (=> b!5404315 m!6428692))

(assert (=> b!5404315 m!6428352))

(assert (=> b!5404315 m!6428692))

(assert (=> b!5404315 m!6428352))

(declare-fun m!6428694 () Bool)

(assert (=> b!5404315 m!6428694))

(assert (=> b!5403361 d!1725685))

(declare-fun d!1725687 () Bool)

(declare-fun choose!40746 ((InoxSet Context!9118) Int) (InoxSet Context!9118))

(assert (=> d!1725687 (= (map!14147 lt!2203057 lambda!281552) (choose!40746 lt!2203057 lambda!281552))))

(declare-fun bs!1248636 () Bool)

(assert (= bs!1248636 d!1725687))

(declare-fun m!6428696 () Bool)

(assert (=> bs!1248636 m!6428696))

(assert (=> b!5403379 d!1725687))

(declare-fun bs!1248637 () Bool)

(declare-fun d!1725689 () Bool)

(assert (= bs!1248637 (and d!1725689 b!5403379)))

(declare-fun lambda!281626 () Int)

(assert (=> bs!1248637 (= (= (exprs!5059 lt!2203086) lt!2203065) (= lambda!281626 lambda!281552))))

(assert (=> d!1725689 true))

(assert (=> d!1725689 (= (appendTo!34 lt!2203057 lt!2203086) (map!14147 lt!2203057 lambda!281626))))

(declare-fun bs!1248638 () Bool)

(assert (= bs!1248638 d!1725689))

(declare-fun m!6428698 () Bool)

(assert (=> bs!1248638 m!6428698))

(assert (=> b!5403379 d!1725689))

(assert (=> b!5403379 d!1725623))

(assert (=> b!5403379 d!1725629))

(declare-fun d!1725691 () Bool)

(declare-fun dynLambda!24311 (Int Context!9118) Context!9118)

(assert (=> d!1725691 (= (map!14147 lt!2203057 lambda!281552) (store ((as const (Array Context!9118 Bool)) false) (dynLambda!24311 lambda!281552 lt!2203068) true))))

(declare-fun lt!2203272 () Unit!154222)

(declare-fun choose!40747 ((InoxSet Context!9118) Context!9118 Int) Unit!154222)

(assert (=> d!1725691 (= lt!2203272 (choose!40747 lt!2203057 lt!2203068 lambda!281552))))

(assert (=> d!1725691 (= lt!2203057 (store ((as const (Array Context!9118 Bool)) false) lt!2203068 true))))

(assert (=> d!1725691 (= (lemmaMapOnSingletonSet!34 lt!2203057 lt!2203068 lambda!281552) lt!2203272)))

(declare-fun b_lambda!206531 () Bool)

(assert (=> (not b_lambda!206531) (not d!1725691)))

(declare-fun bs!1248639 () Bool)

(assert (= bs!1248639 d!1725691))

(assert (=> bs!1248639 m!6427766))

(assert (=> bs!1248639 m!6427724))

(declare-fun m!6428700 () Bool)

(assert (=> bs!1248639 m!6428700))

(declare-fun m!6428702 () Bool)

(assert (=> bs!1248639 m!6428702))

(assert (=> bs!1248639 m!6428702))

(declare-fun m!6428704 () Bool)

(assert (=> bs!1248639 m!6428704))

(assert (=> b!5403379 d!1725691))

(declare-fun d!1725693 () Bool)

(declare-fun lt!2203273 () Regex!15175)

(assert (=> d!1725693 (validRegex!6911 lt!2203273)))

(assert (=> d!1725693 (= lt!2203273 (generalisedUnion!1104 (unfocusZipperList!617 zl!343)))))

(assert (=> d!1725693 (= (unfocusZipper!917 zl!343) lt!2203273)))

(declare-fun bs!1248640 () Bool)

(assert (= bs!1248640 d!1725693))

(declare-fun m!6428706 () Bool)

(assert (=> bs!1248640 m!6428706))

(assert (=> bs!1248640 m!6427718))

(assert (=> bs!1248640 m!6427718))

(assert (=> bs!1248640 m!6427720))

(assert (=> b!5403360 d!1725693))

(declare-fun bs!1248641 () Bool)

(declare-fun d!1725695 () Bool)

(assert (= bs!1248641 (and d!1725695 b!5403379)))

(declare-fun lambda!281629 () Int)

(assert (=> bs!1248641 (= lambda!281629 lambda!281553)))

(declare-fun bs!1248642 () Bool)

(assert (= bs!1248642 (and d!1725695 d!1725633)))

(assert (=> bs!1248642 (= lambda!281629 lambda!281618)))

(assert (=> d!1725695 (= (inv!81184 (h!68150 zl!343)) (forall!14529 (exprs!5059 (h!68150 zl!343)) lambda!281629))))

(declare-fun bs!1248643 () Bool)

(assert (= bs!1248643 d!1725695))

(declare-fun m!6428708 () Bool)

(assert (=> bs!1248643 m!6428708))

(assert (=> b!5403377 d!1725695))

(declare-fun b!5404318 () Bool)

(declare-fun res!2297821 () Bool)

(declare-fun e!3350592 () Bool)

(assert (=> b!5404318 (=> (not res!2297821) (not e!3350592))))

(declare-fun call!386747 () Bool)

(assert (=> b!5404318 (= res!2297821 call!386747)))

(declare-fun e!3350589 () Bool)

(assert (=> b!5404318 (= e!3350589 e!3350592)))

(declare-fun d!1725697 () Bool)

(declare-fun res!2297822 () Bool)

(declare-fun e!3350595 () Bool)

(assert (=> d!1725697 (=> res!2297822 e!3350595)))

(assert (=> d!1725697 (= res!2297822 ((_ is ElementMatch!15175) r!7292))))

(assert (=> d!1725697 (= (validRegex!6911 r!7292) e!3350595)))

(declare-fun b!5404319 () Bool)

(declare-fun e!3350591 () Bool)

(declare-fun e!3350590 () Bool)

(assert (=> b!5404319 (= e!3350591 e!3350590)))

(declare-fun res!2297820 () Bool)

(assert (=> b!5404319 (=> (not res!2297820) (not e!3350590))))

(assert (=> b!5404319 (= res!2297820 call!386747)))

(declare-fun b!5404320 () Bool)

(declare-fun call!386748 () Bool)

(assert (=> b!5404320 (= e!3350590 call!386748)))

(declare-fun b!5404321 () Bool)

(declare-fun e!3350594 () Bool)

(assert (=> b!5404321 (= e!3350594 e!3350589)))

(declare-fun c!942020 () Bool)

(assert (=> b!5404321 (= c!942020 ((_ is Union!15175) r!7292))))

(declare-fun b!5404322 () Bool)

(declare-fun e!3350593 () Bool)

(assert (=> b!5404322 (= e!3350594 e!3350593)))

(declare-fun res!2297819 () Bool)

(assert (=> b!5404322 (= res!2297819 (not (nullable!5344 (reg!15504 r!7292))))))

(assert (=> b!5404322 (=> (not res!2297819) (not e!3350593))))

(declare-fun c!942019 () Bool)

(declare-fun call!386746 () Bool)

(declare-fun bm!386741 () Bool)

(assert (=> bm!386741 (= call!386746 (validRegex!6911 (ite c!942019 (reg!15504 r!7292) (ite c!942020 (regTwo!30863 r!7292) (regTwo!30862 r!7292)))))))

(declare-fun b!5404323 () Bool)

(assert (=> b!5404323 (= e!3350593 call!386746)))

(declare-fun b!5404324 () Bool)

(declare-fun res!2297818 () Bool)

(assert (=> b!5404324 (=> res!2297818 e!3350591)))

(assert (=> b!5404324 (= res!2297818 (not ((_ is Concat!24020) r!7292)))))

(assert (=> b!5404324 (= e!3350589 e!3350591)))

(declare-fun bm!386742 () Bool)

(assert (=> bm!386742 (= call!386747 (validRegex!6911 (ite c!942020 (regOne!30863 r!7292) (regOne!30862 r!7292))))))

(declare-fun b!5404325 () Bool)

(assert (=> b!5404325 (= e!3350595 e!3350594)))

(assert (=> b!5404325 (= c!942019 ((_ is Star!15175) r!7292))))

(declare-fun bm!386743 () Bool)

(assert (=> bm!386743 (= call!386748 call!386746)))

(declare-fun b!5404326 () Bool)

(assert (=> b!5404326 (= e!3350592 call!386748)))

(assert (= (and d!1725697 (not res!2297822)) b!5404325))

(assert (= (and b!5404325 c!942019) b!5404322))

(assert (= (and b!5404325 (not c!942019)) b!5404321))

(assert (= (and b!5404322 res!2297819) b!5404323))

(assert (= (and b!5404321 c!942020) b!5404318))

(assert (= (and b!5404321 (not c!942020)) b!5404324))

(assert (= (and b!5404318 res!2297821) b!5404326))

(assert (= (and b!5404324 (not res!2297818)) b!5404319))

(assert (= (and b!5404319 res!2297820) b!5404320))

(assert (= (or b!5404326 b!5404320) bm!386743))

(assert (= (or b!5404318 b!5404319) bm!386742))

(assert (= (or b!5404323 bm!386743) bm!386741))

(declare-fun m!6428710 () Bool)

(assert (=> b!5404322 m!6428710))

(declare-fun m!6428712 () Bool)

(assert (=> bm!386741 m!6428712))

(declare-fun m!6428714 () Bool)

(assert (=> bm!386742 m!6428714))

(assert (=> start!567486 d!1725697))

(declare-fun bs!1248644 () Bool)

(declare-fun d!1725699 () Bool)

(assert (= bs!1248644 (and d!1725699 b!5403379)))

(declare-fun lambda!281630 () Int)

(assert (=> bs!1248644 (= lambda!281630 lambda!281553)))

(declare-fun bs!1248645 () Bool)

(assert (= bs!1248645 (and d!1725699 d!1725633)))

(assert (=> bs!1248645 (= lambda!281630 lambda!281618)))

(declare-fun bs!1248646 () Bool)

(assert (= bs!1248646 (and d!1725699 d!1725695)))

(assert (=> bs!1248646 (= lambda!281630 lambda!281629)))

(assert (=> d!1725699 (= (inv!81184 setElem!35177) (forall!14529 (exprs!5059 setElem!35177) lambda!281630))))

(declare-fun bs!1248647 () Bool)

(assert (= bs!1248647 d!1725699))

(declare-fun m!6428716 () Bool)

(assert (=> bs!1248647 m!6428716))

(assert (=> setNonEmpty!35177 d!1725699))

(declare-fun d!1725701 () Bool)

(declare-fun e!3350598 () Bool)

(assert (=> d!1725701 e!3350598))

(declare-fun res!2297825 () Bool)

(assert (=> d!1725701 (=> (not res!2297825) (not e!3350598))))

(declare-fun lt!2203276 () List!61826)

(declare-fun noDuplicate!1386 (List!61826) Bool)

(assert (=> d!1725701 (= res!2297825 (noDuplicate!1386 lt!2203276))))

(declare-fun choose!40748 ((InoxSet Context!9118)) List!61826)

(assert (=> d!1725701 (= lt!2203276 (choose!40748 z!1189))))

(assert (=> d!1725701 (= (toList!8959 z!1189) lt!2203276)))

(declare-fun b!5404329 () Bool)

(declare-fun content!11057 (List!61826) (InoxSet Context!9118))

(assert (=> b!5404329 (= e!3350598 (= (content!11057 lt!2203276) z!1189))))

(assert (= (and d!1725701 res!2297825) b!5404329))

(declare-fun m!6428718 () Bool)

(assert (=> d!1725701 m!6428718))

(declare-fun m!6428720 () Bool)

(assert (=> d!1725701 m!6428720))

(declare-fun m!6428722 () Bool)

(assert (=> b!5404329 m!6428722))

(assert (=> b!5403385 d!1725701))

(declare-fun bs!1248648 () Bool)

(declare-fun d!1725703 () Bool)

(assert (= bs!1248648 (and d!1725703 b!5403379)))

(declare-fun lambda!281633 () Int)

(assert (=> bs!1248648 (= lambda!281633 lambda!281553)))

(declare-fun bs!1248649 () Bool)

(assert (= bs!1248649 (and d!1725703 d!1725633)))

(assert (=> bs!1248649 (= lambda!281633 lambda!281618)))

(declare-fun bs!1248650 () Bool)

(assert (= bs!1248650 (and d!1725703 d!1725695)))

(assert (=> bs!1248650 (= lambda!281633 lambda!281629)))

(declare-fun bs!1248651 () Bool)

(assert (= bs!1248651 (and d!1725703 d!1725699)))

(assert (=> bs!1248651 (= lambda!281633 lambda!281630)))

(declare-fun e!3350612 () Bool)

(assert (=> d!1725703 e!3350612))

(declare-fun res!2297830 () Bool)

(assert (=> d!1725703 (=> (not res!2297830) (not e!3350612))))

(declare-fun lt!2203279 () Regex!15175)

(assert (=> d!1725703 (= res!2297830 (validRegex!6911 lt!2203279))))

(declare-fun e!3350614 () Regex!15175)

(assert (=> d!1725703 (= lt!2203279 e!3350614)))

(declare-fun c!942029 () Bool)

(declare-fun e!3350611 () Bool)

(assert (=> d!1725703 (= c!942029 e!3350611)))

(declare-fun res!2297831 () Bool)

(assert (=> d!1725703 (=> (not res!2297831) (not e!3350611))))

(assert (=> d!1725703 (= res!2297831 ((_ is Cons!61701) (exprs!5059 (h!68150 zl!343))))))

(assert (=> d!1725703 (forall!14529 (exprs!5059 (h!68150 zl!343)) lambda!281633)))

(assert (=> d!1725703 (= (generalisedConcat!844 (exprs!5059 (h!68150 zl!343))) lt!2203279)))

(declare-fun b!5404350 () Bool)

(declare-fun e!3350616 () Bool)

(declare-fun isConcat!492 (Regex!15175) Bool)

(assert (=> b!5404350 (= e!3350616 (isConcat!492 lt!2203279))))

(declare-fun b!5404351 () Bool)

(declare-fun head!11591 (List!61825) Regex!15175)

(assert (=> b!5404351 (= e!3350616 (= lt!2203279 (head!11591 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun b!5404352 () Bool)

(assert (=> b!5404352 (= e!3350611 (isEmpty!33689 (t!375048 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun b!5404353 () Bool)

(declare-fun e!3350615 () Regex!15175)

(assert (=> b!5404353 (= e!3350614 e!3350615)))

(declare-fun c!942031 () Bool)

(assert (=> b!5404353 (= c!942031 ((_ is Cons!61701) (exprs!5059 (h!68150 zl!343))))))

(declare-fun b!5404354 () Bool)

(assert (=> b!5404354 (= e!3350614 (h!68149 (exprs!5059 (h!68150 zl!343))))))

(declare-fun b!5404355 () Bool)

(declare-fun e!3350613 () Bool)

(assert (=> b!5404355 (= e!3350613 e!3350616)))

(declare-fun c!942030 () Bool)

(declare-fun tail!10688 (List!61825) List!61825)

(assert (=> b!5404355 (= c!942030 (isEmpty!33689 (tail!10688 (exprs!5059 (h!68150 zl!343)))))))

(declare-fun b!5404356 () Bool)

(declare-fun isEmptyExpr!969 (Regex!15175) Bool)

(assert (=> b!5404356 (= e!3350613 (isEmptyExpr!969 lt!2203279))))

(declare-fun b!5404357 () Bool)

(assert (=> b!5404357 (= e!3350612 e!3350613)))

(declare-fun c!942032 () Bool)

(assert (=> b!5404357 (= c!942032 (isEmpty!33689 (exprs!5059 (h!68150 zl!343))))))

(declare-fun b!5404358 () Bool)

(assert (=> b!5404358 (= e!3350615 EmptyExpr!15175)))

(declare-fun b!5404359 () Bool)

(assert (=> b!5404359 (= e!3350615 (Concat!24020 (h!68149 (exprs!5059 (h!68150 zl!343))) (generalisedConcat!844 (t!375048 (exprs!5059 (h!68150 zl!343))))))))

(assert (= (and d!1725703 res!2297831) b!5404352))

(assert (= (and d!1725703 c!942029) b!5404354))

(assert (= (and d!1725703 (not c!942029)) b!5404353))

(assert (= (and b!5404353 c!942031) b!5404359))

(assert (= (and b!5404353 (not c!942031)) b!5404358))

(assert (= (and d!1725703 res!2297830) b!5404357))

(assert (= (and b!5404357 c!942032) b!5404356))

(assert (= (and b!5404357 (not c!942032)) b!5404355))

(assert (= (and b!5404355 c!942030) b!5404351))

(assert (= (and b!5404355 (not c!942030)) b!5404350))

(declare-fun m!6428724 () Bool)

(assert (=> b!5404351 m!6428724))

(assert (=> b!5404352 m!6427824))

(declare-fun m!6428726 () Bool)

(assert (=> b!5404356 m!6428726))

(declare-fun m!6428728 () Bool)

(assert (=> b!5404355 m!6428728))

(assert (=> b!5404355 m!6428728))

(declare-fun m!6428730 () Bool)

(assert (=> b!5404355 m!6428730))

(declare-fun m!6428732 () Bool)

(assert (=> b!5404350 m!6428732))

(declare-fun m!6428734 () Bool)

(assert (=> d!1725703 m!6428734))

(declare-fun m!6428736 () Bool)

(assert (=> d!1725703 m!6428736))

(declare-fun m!6428738 () Bool)

(assert (=> b!5404357 m!6428738))

(declare-fun m!6428740 () Bool)

(assert (=> b!5404359 m!6428740))

(assert (=> b!5403386 d!1725703))

(declare-fun d!1725705 () Bool)

(assert (=> d!1725705 (= (nullable!5344 (regOne!30862 (regOne!30862 r!7292))) (nullableFct!1587 (regOne!30862 (regOne!30862 r!7292))))))

(declare-fun bs!1248652 () Bool)

(assert (= bs!1248652 d!1725705))

(declare-fun m!6428742 () Bool)

(assert (=> bs!1248652 m!6428742))

(assert (=> b!5403384 d!1725705))

(declare-fun d!1725707 () Bool)

(declare-fun lt!2203280 () Regex!15175)

(assert (=> d!1725707 (validRegex!6911 lt!2203280)))

(assert (=> d!1725707 (= lt!2203280 (generalisedUnion!1104 (unfocusZipperList!617 (Cons!61702 lt!2203058 Nil!61702))))))

(assert (=> d!1725707 (= (unfocusZipper!917 (Cons!61702 lt!2203058 Nil!61702)) lt!2203280)))

(declare-fun bs!1248653 () Bool)

(assert (= bs!1248653 d!1725707))

(declare-fun m!6428744 () Bool)

(assert (=> bs!1248653 m!6428744))

(declare-fun m!6428746 () Bool)

(assert (=> bs!1248653 m!6428746))

(assert (=> bs!1248653 m!6428746))

(declare-fun m!6428748 () Bool)

(assert (=> bs!1248653 m!6428748))

(assert (=> b!5403365 d!1725707))

(declare-fun d!1725709 () Bool)

(declare-fun c!942033 () Bool)

(assert (=> d!1725709 (= c!942033 (isEmpty!33691 s!2326))))

(declare-fun e!3350617 () Bool)

(assert (=> d!1725709 (= (matchZipper!1419 z!1189 s!2326) e!3350617)))

(declare-fun b!5404360 () Bool)

(assert (=> b!5404360 (= e!3350617 (nullableZipper!1436 z!1189))))

(declare-fun b!5404361 () Bool)

(assert (=> b!5404361 (= e!3350617 (matchZipper!1419 (derivationStepZipper!1414 z!1189 (head!11589 s!2326)) (tail!10686 s!2326)))))

(assert (= (and d!1725709 c!942033) b!5404360))

(assert (= (and d!1725709 (not c!942033)) b!5404361))

(assert (=> d!1725709 m!6427980))

(declare-fun m!6428750 () Bool)

(assert (=> b!5404360 m!6428750))

(assert (=> b!5404361 m!6427990))

(assert (=> b!5404361 m!6427990))

(declare-fun m!6428752 () Bool)

(assert (=> b!5404361 m!6428752))

(assert (=> b!5404361 m!6428000))

(assert (=> b!5404361 m!6428752))

(assert (=> b!5404361 m!6428000))

(declare-fun m!6428754 () Bool)

(assert (=> b!5404361 m!6428754))

(assert (=> b!5403383 d!1725709))

(declare-fun bs!1248654 () Bool)

(declare-fun d!1725711 () Bool)

(assert (= bs!1248654 (and d!1725711 d!1725703)))

(declare-fun lambda!281636 () Int)

(assert (=> bs!1248654 (= lambda!281636 lambda!281633)))

(declare-fun bs!1248655 () Bool)

(assert (= bs!1248655 (and d!1725711 d!1725695)))

(assert (=> bs!1248655 (= lambda!281636 lambda!281629)))

(declare-fun bs!1248656 () Bool)

(assert (= bs!1248656 (and d!1725711 d!1725699)))

(assert (=> bs!1248656 (= lambda!281636 lambda!281630)))

(declare-fun bs!1248657 () Bool)

(assert (= bs!1248657 (and d!1725711 b!5403379)))

(assert (=> bs!1248657 (= lambda!281636 lambda!281553)))

(declare-fun bs!1248658 () Bool)

(assert (= bs!1248658 (and d!1725711 d!1725633)))

(assert (=> bs!1248658 (= lambda!281636 lambda!281618)))

(declare-fun e!3350630 () Bool)

(assert (=> d!1725711 e!3350630))

(declare-fun res!2297837 () Bool)

(assert (=> d!1725711 (=> (not res!2297837) (not e!3350630))))

(declare-fun lt!2203283 () Regex!15175)

(assert (=> d!1725711 (= res!2297837 (validRegex!6911 lt!2203283))))

(declare-fun e!3350631 () Regex!15175)

(assert (=> d!1725711 (= lt!2203283 e!3350631)))

(declare-fun c!942044 () Bool)

(declare-fun e!3350632 () Bool)

(assert (=> d!1725711 (= c!942044 e!3350632)))

(declare-fun res!2297836 () Bool)

(assert (=> d!1725711 (=> (not res!2297836) (not e!3350632))))

(assert (=> d!1725711 (= res!2297836 ((_ is Cons!61701) (unfocusZipperList!617 zl!343)))))

(assert (=> d!1725711 (forall!14529 (unfocusZipperList!617 zl!343) lambda!281636)))

(assert (=> d!1725711 (= (generalisedUnion!1104 (unfocusZipperList!617 zl!343)) lt!2203283)))

(declare-fun b!5404382 () Bool)

(declare-fun e!3350635 () Regex!15175)

(assert (=> b!5404382 (= e!3350635 (Union!15175 (h!68149 (unfocusZipperList!617 zl!343)) (generalisedUnion!1104 (t!375048 (unfocusZipperList!617 zl!343)))))))

(declare-fun b!5404383 () Bool)

(assert (=> b!5404383 (= e!3350632 (isEmpty!33689 (t!375048 (unfocusZipperList!617 zl!343))))))

(declare-fun b!5404384 () Bool)

(declare-fun e!3350633 () Bool)

(declare-fun isUnion!409 (Regex!15175) Bool)

(assert (=> b!5404384 (= e!3350633 (isUnion!409 lt!2203283))))

(declare-fun b!5404385 () Bool)

(assert (=> b!5404385 (= e!3350631 e!3350635)))

(declare-fun c!942045 () Bool)

(assert (=> b!5404385 (= c!942045 ((_ is Cons!61701) (unfocusZipperList!617 zl!343)))))

(declare-fun b!5404386 () Bool)

(declare-fun e!3350634 () Bool)

(declare-fun isEmptyLang!977 (Regex!15175) Bool)

(assert (=> b!5404386 (= e!3350634 (isEmptyLang!977 lt!2203283))))

(declare-fun b!5404387 () Bool)

(assert (=> b!5404387 (= e!3350634 e!3350633)))

(declare-fun c!942043 () Bool)

(assert (=> b!5404387 (= c!942043 (isEmpty!33689 (tail!10688 (unfocusZipperList!617 zl!343))))))

(declare-fun b!5404388 () Bool)

(assert (=> b!5404388 (= e!3350630 e!3350634)))

(declare-fun c!942042 () Bool)

(assert (=> b!5404388 (= c!942042 (isEmpty!33689 (unfocusZipperList!617 zl!343)))))

(declare-fun b!5404389 () Bool)

(assert (=> b!5404389 (= e!3350633 (= lt!2203283 (head!11591 (unfocusZipperList!617 zl!343))))))

(declare-fun b!5404390 () Bool)

(assert (=> b!5404390 (= e!3350631 (h!68149 (unfocusZipperList!617 zl!343)))))

(declare-fun b!5404391 () Bool)

(assert (=> b!5404391 (= e!3350635 EmptyLang!15175)))

(assert (= (and d!1725711 res!2297836) b!5404383))

(assert (= (and d!1725711 c!942044) b!5404390))

(assert (= (and d!1725711 (not c!942044)) b!5404385))

(assert (= (and b!5404385 c!942045) b!5404382))

(assert (= (and b!5404385 (not c!942045)) b!5404391))

(assert (= (and d!1725711 res!2297837) b!5404388))

(assert (= (and b!5404388 c!942042) b!5404386))

(assert (= (and b!5404388 (not c!942042)) b!5404387))

(assert (= (and b!5404387 c!942043) b!5404389))

(assert (= (and b!5404387 (not c!942043)) b!5404384))

(assert (=> b!5404389 m!6427718))

(declare-fun m!6428756 () Bool)

(assert (=> b!5404389 m!6428756))

(declare-fun m!6428758 () Bool)

(assert (=> b!5404382 m!6428758))

(declare-fun m!6428760 () Bool)

(assert (=> b!5404383 m!6428760))

(assert (=> b!5404388 m!6427718))

(declare-fun m!6428762 () Bool)

(assert (=> b!5404388 m!6428762))

(declare-fun m!6428764 () Bool)

(assert (=> b!5404386 m!6428764))

(declare-fun m!6428766 () Bool)

(assert (=> d!1725711 m!6428766))

(assert (=> d!1725711 m!6427718))

(declare-fun m!6428768 () Bool)

(assert (=> d!1725711 m!6428768))

(assert (=> b!5404387 m!6427718))

(declare-fun m!6428770 () Bool)

(assert (=> b!5404387 m!6428770))

(assert (=> b!5404387 m!6428770))

(declare-fun m!6428772 () Bool)

(assert (=> b!5404387 m!6428772))

(declare-fun m!6428774 () Bool)

(assert (=> b!5404384 m!6428774))

(assert (=> b!5403364 d!1725711))

(declare-fun bs!1248659 () Bool)

(declare-fun d!1725713 () Bool)

(assert (= bs!1248659 (and d!1725713 d!1725703)))

(declare-fun lambda!281639 () Int)

(assert (=> bs!1248659 (= lambda!281639 lambda!281633)))

(declare-fun bs!1248660 () Bool)

(assert (= bs!1248660 (and d!1725713 d!1725695)))

(assert (=> bs!1248660 (= lambda!281639 lambda!281629)))

(declare-fun bs!1248661 () Bool)

(assert (= bs!1248661 (and d!1725713 d!1725699)))

(assert (=> bs!1248661 (= lambda!281639 lambda!281630)))

(declare-fun bs!1248662 () Bool)

(assert (= bs!1248662 (and d!1725713 d!1725711)))

(assert (=> bs!1248662 (= lambda!281639 lambda!281636)))

(declare-fun bs!1248663 () Bool)

(assert (= bs!1248663 (and d!1725713 b!5403379)))

(assert (=> bs!1248663 (= lambda!281639 lambda!281553)))

(declare-fun bs!1248664 () Bool)

(assert (= bs!1248664 (and d!1725713 d!1725633)))

(assert (=> bs!1248664 (= lambda!281639 lambda!281618)))

(declare-fun lt!2203286 () List!61825)

(assert (=> d!1725713 (forall!14529 lt!2203286 lambda!281639)))

(declare-fun e!3350638 () List!61825)

(assert (=> d!1725713 (= lt!2203286 e!3350638)))

(declare-fun c!942048 () Bool)

(assert (=> d!1725713 (= c!942048 ((_ is Cons!61702) zl!343))))

(assert (=> d!1725713 (= (unfocusZipperList!617 zl!343) lt!2203286)))

(declare-fun b!5404396 () Bool)

(assert (=> b!5404396 (= e!3350638 (Cons!61701 (generalisedConcat!844 (exprs!5059 (h!68150 zl!343))) (unfocusZipperList!617 (t!375049 zl!343))))))

(declare-fun b!5404397 () Bool)

(assert (=> b!5404397 (= e!3350638 Nil!61701)))

(assert (= (and d!1725713 c!942048) b!5404396))

(assert (= (and d!1725713 (not c!942048)) b!5404397))

(declare-fun m!6428776 () Bool)

(assert (=> d!1725713 m!6428776))

(assert (=> b!5404396 m!6427872))

(declare-fun m!6428778 () Bool)

(assert (=> b!5404396 m!6428778))

(assert (=> b!5403364 d!1725713))

(declare-fun b!5404398 () Bool)

(declare-fun e!3350643 () Bool)

(assert (=> b!5404398 (= e!3350643 (matchR!7360 (regTwo!30862 r!7292) s!2326))))

(declare-fun b!5404399 () Bool)

(declare-fun e!3350642 () Option!15286)

(assert (=> b!5404399 (= e!3350642 None!15285)))

(declare-fun b!5404400 () Bool)

(declare-fun e!3350640 () Option!15286)

(assert (=> b!5404400 (= e!3350640 (Some!15285 (tuple2!64749 Nil!61700 s!2326)))))

(declare-fun b!5404401 () Bool)

(declare-fun res!2297841 () Bool)

(declare-fun e!3350641 () Bool)

(assert (=> b!5404401 (=> (not res!2297841) (not e!3350641))))

(declare-fun lt!2203289 () Option!15286)

(assert (=> b!5404401 (= res!2297841 (matchR!7360 (regTwo!30862 r!7292) (_2!35677 (get!21265 lt!2203289))))))

(declare-fun b!5404402 () Bool)

(declare-fun e!3350639 () Bool)

(assert (=> b!5404402 (= e!3350639 (not (isDefined!11989 lt!2203289)))))

(declare-fun b!5404403 () Bool)

(assert (=> b!5404403 (= e!3350640 e!3350642)))

(declare-fun c!942050 () Bool)

(assert (=> b!5404403 (= c!942050 ((_ is Nil!61700) s!2326))))

(declare-fun d!1725715 () Bool)

(assert (=> d!1725715 e!3350639))

(declare-fun res!2297842 () Bool)

(assert (=> d!1725715 (=> res!2297842 e!3350639)))

(assert (=> d!1725715 (= res!2297842 e!3350641)))

(declare-fun res!2297839 () Bool)

(assert (=> d!1725715 (=> (not res!2297839) (not e!3350641))))

(assert (=> d!1725715 (= res!2297839 (isDefined!11989 lt!2203289))))

(assert (=> d!1725715 (= lt!2203289 e!3350640)))

(declare-fun c!942049 () Bool)

(assert (=> d!1725715 (= c!942049 e!3350643)))

(declare-fun res!2297838 () Bool)

(assert (=> d!1725715 (=> (not res!2297838) (not e!3350643))))

(assert (=> d!1725715 (= res!2297838 (matchR!7360 (regOne!30862 r!7292) Nil!61700))))

(assert (=> d!1725715 (validRegex!6911 (regOne!30862 r!7292))))

(assert (=> d!1725715 (= (findConcatSeparation!1700 (regOne!30862 r!7292) (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326) lt!2203289)))

(declare-fun b!5404404 () Bool)

(declare-fun lt!2203287 () Unit!154222)

(declare-fun lt!2203288 () Unit!154222)

(assert (=> b!5404404 (= lt!2203287 lt!2203288)))

(assert (=> b!5404404 (= (++!13523 (++!13523 Nil!61700 (Cons!61700 (h!68148 s!2326) Nil!61700)) (t!375047 s!2326)) s!2326)))

(assert (=> b!5404404 (= lt!2203288 (lemmaMoveElementToOtherListKeepsConcatEq!1831 Nil!61700 (h!68148 s!2326) (t!375047 s!2326) s!2326))))

(assert (=> b!5404404 (= e!3350642 (findConcatSeparation!1700 (regOne!30862 r!7292) (regTwo!30862 r!7292) (++!13523 Nil!61700 (Cons!61700 (h!68148 s!2326) Nil!61700)) (t!375047 s!2326) s!2326))))

(declare-fun b!5404405 () Bool)

(assert (=> b!5404405 (= e!3350641 (= (++!13523 (_1!35677 (get!21265 lt!2203289)) (_2!35677 (get!21265 lt!2203289))) s!2326))))

(declare-fun b!5404406 () Bool)

(declare-fun res!2297840 () Bool)

(assert (=> b!5404406 (=> (not res!2297840) (not e!3350641))))

(assert (=> b!5404406 (= res!2297840 (matchR!7360 (regOne!30862 r!7292) (_1!35677 (get!21265 lt!2203289))))))

(assert (= (and d!1725715 res!2297838) b!5404398))

(assert (= (and d!1725715 c!942049) b!5404400))

(assert (= (and d!1725715 (not c!942049)) b!5404403))

(assert (= (and b!5404403 c!942050) b!5404399))

(assert (= (and b!5404403 (not c!942050)) b!5404404))

(assert (= (and d!1725715 res!2297839) b!5404406))

(assert (= (and b!5404406 res!2297840) b!5404401))

(assert (= (and b!5404401 res!2297841) b!5404405))

(assert (= (and d!1725715 (not res!2297842)) b!5404402))

(declare-fun m!6428780 () Bool)

(assert (=> b!5404401 m!6428780))

(declare-fun m!6428782 () Bool)

(assert (=> b!5404401 m!6428782))

(assert (=> b!5404406 m!6428780))

(declare-fun m!6428784 () Bool)

(assert (=> b!5404406 m!6428784))

(declare-fun m!6428786 () Bool)

(assert (=> d!1725715 m!6428786))

(declare-fun m!6428788 () Bool)

(assert (=> d!1725715 m!6428788))

(declare-fun m!6428790 () Bool)

(assert (=> d!1725715 m!6428790))

(assert (=> b!5404404 m!6428284))

(assert (=> b!5404404 m!6428284))

(assert (=> b!5404404 m!6428286))

(assert (=> b!5404404 m!6428288))

(assert (=> b!5404404 m!6428284))

(declare-fun m!6428792 () Bool)

(assert (=> b!5404404 m!6428792))

(assert (=> b!5404398 m!6428418))

(assert (=> b!5404405 m!6428780))

(declare-fun m!6428794 () Bool)

(assert (=> b!5404405 m!6428794))

(assert (=> b!5404402 m!6428786))

(assert (=> b!5403370 d!1725715))

(declare-fun bs!1248665 () Bool)

(declare-fun d!1725717 () Bool)

(assert (= bs!1248665 (and d!1725717 b!5404069)))

(declare-fun lambda!281640 () Int)

(assert (=> bs!1248665 (not (= lambda!281640 lambda!281591))))

(declare-fun bs!1248666 () Bool)

(assert (= bs!1248666 (and d!1725717 d!1725601)))

(assert (=> bs!1248666 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281640 lambda!281603))))

(declare-fun bs!1248667 () Bool)

(assert (= bs!1248667 (and d!1725717 b!5404063)))

(assert (=> bs!1248667 (not (= lambda!281640 lambda!281592))))

(declare-fun bs!1248668 () Bool)

(assert (= bs!1248668 (and d!1725717 b!5403370)))

(assert (=> bs!1248668 (not (= lambda!281640 lambda!281550))))

(declare-fun bs!1248669 () Bool)

(assert (= bs!1248669 (and d!1725717 b!5403380)))

(assert (=> bs!1248669 (not (= lambda!281640 lambda!281555))))

(assert (=> bs!1248668 (= lambda!281640 lambda!281549)))

(assert (=> bs!1248669 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281640 lambda!281554))))

(declare-fun bs!1248670 () Bool)

(assert (= bs!1248670 (and d!1725717 b!5403667)))

(assert (=> bs!1248670 (not (= lambda!281640 lambda!281573))))

(declare-fun bs!1248671 () Bool)

(assert (= bs!1248671 (and d!1725717 b!5403673)))

(assert (=> bs!1248671 (not (= lambda!281640 lambda!281572))))

(declare-fun bs!1248672 () Bool)

(assert (= bs!1248672 (and d!1725717 d!1725681)))

(assert (=> bs!1248672 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281640 lambda!281621))))

(assert (=> bs!1248666 (not (= lambda!281640 lambda!281604))))

(assert (=> d!1725717 true))

(assert (=> d!1725717 true))

(assert (=> d!1725717 true))

(declare-fun lambda!281641 () Int)

(assert (=> bs!1248665 (not (= lambda!281641 lambda!281591))))

(assert (=> bs!1248666 (not (= lambda!281641 lambda!281603))))

(assert (=> bs!1248667 (= (and (= (regOne!30862 r!7292) (regOne!30862 lt!2203063)) (= (regTwo!30862 r!7292) (regTwo!30862 lt!2203063))) (= lambda!281641 lambda!281592))))

(declare-fun bs!1248673 () Bool)

(assert (= bs!1248673 d!1725717))

(assert (=> bs!1248673 (not (= lambda!281641 lambda!281640))))

(assert (=> bs!1248668 (= lambda!281641 lambda!281550)))

(assert (=> bs!1248669 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281641 lambda!281555))))

(assert (=> bs!1248668 (not (= lambda!281641 lambda!281549))))

(assert (=> bs!1248669 (not (= lambda!281641 lambda!281554))))

(assert (=> bs!1248670 (= (and (= (regOne!30862 r!7292) (regOne!30862 lt!2203048)) (= (regTwo!30862 r!7292) (regTwo!30862 lt!2203048))) (= lambda!281641 lambda!281573))))

(assert (=> bs!1248671 (not (= lambda!281641 lambda!281572))))

(assert (=> bs!1248672 (not (= lambda!281641 lambda!281621))))

(assert (=> bs!1248666 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281641 lambda!281604))))

(assert (=> d!1725717 true))

(assert (=> d!1725717 true))

(assert (=> d!1725717 true))

(assert (=> d!1725717 (= (Exists!2356 lambda!281640) (Exists!2356 lambda!281641))))

(declare-fun lt!2203290 () Unit!154222)

(assert (=> d!1725717 (= lt!2203290 (choose!40736 (regOne!30862 r!7292) (regTwo!30862 r!7292) s!2326))))

(assert (=> d!1725717 (validRegex!6911 (regOne!30862 r!7292))))

(assert (=> d!1725717 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1010 (regOne!30862 r!7292) (regTwo!30862 r!7292) s!2326) lt!2203290)))

(declare-fun m!6428796 () Bool)

(assert (=> bs!1248673 m!6428796))

(declare-fun m!6428798 () Bool)

(assert (=> bs!1248673 m!6428798))

(declare-fun m!6428800 () Bool)

(assert (=> bs!1248673 m!6428800))

(assert (=> bs!1248673 m!6428790))

(assert (=> b!5403370 d!1725717))

(declare-fun d!1725719 () Bool)

(assert (=> d!1725719 (= (isDefined!11989 (findConcatSeparation!1700 (regOne!30862 r!7292) (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326)) (not (isEmpty!33693 (findConcatSeparation!1700 (regOne!30862 r!7292) (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326))))))

(declare-fun bs!1248674 () Bool)

(assert (= bs!1248674 d!1725719))

(assert (=> bs!1248674 m!6427836))

(declare-fun m!6428802 () Bool)

(assert (=> bs!1248674 m!6428802))

(assert (=> b!5403370 d!1725719))

(declare-fun bs!1248675 () Bool)

(declare-fun d!1725721 () Bool)

(assert (= bs!1248675 (and d!1725721 b!5404069)))

(declare-fun lambda!281642 () Int)

(assert (=> bs!1248675 (not (= lambda!281642 lambda!281591))))

(declare-fun bs!1248676 () Bool)

(assert (= bs!1248676 (and d!1725721 d!1725601)))

(assert (=> bs!1248676 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281642 lambda!281603))))

(declare-fun bs!1248677 () Bool)

(assert (= bs!1248677 (and d!1725721 b!5404063)))

(assert (=> bs!1248677 (not (= lambda!281642 lambda!281592))))

(declare-fun bs!1248678 () Bool)

(assert (= bs!1248678 (and d!1725721 d!1725717)))

(assert (=> bs!1248678 (= lambda!281642 lambda!281640)))

(declare-fun bs!1248679 () Bool)

(assert (= bs!1248679 (and d!1725721 b!5403370)))

(assert (=> bs!1248679 (not (= lambda!281642 lambda!281550))))

(declare-fun bs!1248680 () Bool)

(assert (= bs!1248680 (and d!1725721 b!5403380)))

(assert (=> bs!1248680 (not (= lambda!281642 lambda!281555))))

(assert (=> bs!1248679 (= lambda!281642 lambda!281549)))

(assert (=> bs!1248680 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281642 lambda!281554))))

(assert (=> bs!1248678 (not (= lambda!281642 lambda!281641))))

(declare-fun bs!1248681 () Bool)

(assert (= bs!1248681 (and d!1725721 b!5403667)))

(assert (=> bs!1248681 (not (= lambda!281642 lambda!281573))))

(declare-fun bs!1248682 () Bool)

(assert (= bs!1248682 (and d!1725721 b!5403673)))

(assert (=> bs!1248682 (not (= lambda!281642 lambda!281572))))

(declare-fun bs!1248683 () Bool)

(assert (= bs!1248683 (and d!1725721 d!1725681)))

(assert (=> bs!1248683 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281642 lambda!281621))))

(assert (=> bs!1248676 (not (= lambda!281642 lambda!281604))))

(assert (=> d!1725721 true))

(assert (=> d!1725721 true))

(assert (=> d!1725721 true))

(assert (=> d!1725721 (= (isDefined!11989 (findConcatSeparation!1700 (regOne!30862 r!7292) (regTwo!30862 r!7292) Nil!61700 s!2326 s!2326)) (Exists!2356 lambda!281642))))

(declare-fun lt!2203291 () Unit!154222)

(assert (=> d!1725721 (= lt!2203291 (choose!40745 (regOne!30862 r!7292) (regTwo!30862 r!7292) s!2326))))

(assert (=> d!1725721 (validRegex!6911 (regOne!30862 r!7292))))

(assert (=> d!1725721 (= (lemmaFindConcatSeparationEquivalentToExists!1464 (regOne!30862 r!7292) (regTwo!30862 r!7292) s!2326) lt!2203291)))

(declare-fun bs!1248684 () Bool)

(assert (= bs!1248684 d!1725721))

(declare-fun m!6428804 () Bool)

(assert (=> bs!1248684 m!6428804))

(declare-fun m!6428806 () Bool)

(assert (=> bs!1248684 m!6428806))

(assert (=> bs!1248684 m!6428790))

(assert (=> bs!1248684 m!6427836))

(assert (=> bs!1248684 m!6427836))

(assert (=> bs!1248684 m!6427838))

(assert (=> b!5403370 d!1725721))

(declare-fun d!1725723 () Bool)

(assert (=> d!1725723 (= (Exists!2356 lambda!281550) (choose!40738 lambda!281550))))

(declare-fun bs!1248685 () Bool)

(assert (= bs!1248685 d!1725723))

(declare-fun m!6428808 () Bool)

(assert (=> bs!1248685 m!6428808))

(assert (=> b!5403370 d!1725723))

(declare-fun d!1725725 () Bool)

(assert (=> d!1725725 (= (Exists!2356 lambda!281549) (choose!40738 lambda!281549))))

(declare-fun bs!1248686 () Bool)

(assert (= bs!1248686 d!1725725))

(declare-fun m!6428810 () Bool)

(assert (=> bs!1248686 m!6428810))

(assert (=> b!5403370 d!1725725))

(declare-fun d!1725727 () Bool)

(assert (=> d!1725727 (= (flatMap!902 lt!2203069 lambda!281551) (dynLambda!24310 lambda!281551 lt!2203086))))

(declare-fun lt!2203292 () Unit!154222)

(assert (=> d!1725727 (= lt!2203292 (choose!40728 lt!2203069 lt!2203086 lambda!281551))))

(assert (=> d!1725727 (= lt!2203069 (store ((as const (Array Context!9118 Bool)) false) lt!2203086 true))))

(assert (=> d!1725727 (= (lemmaFlatMapOnSingletonSet!434 lt!2203069 lt!2203086 lambda!281551) lt!2203292)))

(declare-fun b_lambda!206533 () Bool)

(assert (=> (not b_lambda!206533) (not d!1725727)))

(declare-fun bs!1248687 () Bool)

(assert (= bs!1248687 d!1725727))

(assert (=> bs!1248687 m!6427732))

(declare-fun m!6428812 () Bool)

(assert (=> bs!1248687 m!6428812))

(declare-fun m!6428814 () Bool)

(assert (=> bs!1248687 m!6428814))

(assert (=> bs!1248687 m!6427738))

(assert (=> b!5403389 d!1725727))

(declare-fun b!5404407 () Bool)

(declare-fun call!386749 () (InoxSet Context!9118))

(declare-fun e!3350644 () (InoxSet Context!9118))

(assert (=> b!5404407 (= e!3350644 ((_ map or) call!386749 (derivationStepZipperUp!547 (Context!9119 (t!375048 (exprs!5059 lt!2203086))) (h!68148 s!2326))))))

(declare-fun bm!386744 () Bool)

(assert (=> bm!386744 (= call!386749 (derivationStepZipperDown!623 (h!68149 (exprs!5059 lt!2203086)) (Context!9119 (t!375048 (exprs!5059 lt!2203086))) (h!68148 s!2326)))))

(declare-fun b!5404408 () Bool)

(declare-fun e!3350645 () (InoxSet Context!9118))

(assert (=> b!5404408 (= e!3350645 call!386749)))

(declare-fun d!1725729 () Bool)

(declare-fun c!942051 () Bool)

(declare-fun e!3350646 () Bool)

(assert (=> d!1725729 (= c!942051 e!3350646)))

(declare-fun res!2297843 () Bool)

(assert (=> d!1725729 (=> (not res!2297843) (not e!3350646))))

(assert (=> d!1725729 (= res!2297843 ((_ is Cons!61701) (exprs!5059 lt!2203086)))))

(assert (=> d!1725729 (= (derivationStepZipperUp!547 lt!2203086 (h!68148 s!2326)) e!3350644)))

(declare-fun b!5404409 () Bool)

(assert (=> b!5404409 (= e!3350644 e!3350645)))

(declare-fun c!942052 () Bool)

(assert (=> b!5404409 (= c!942052 ((_ is Cons!61701) (exprs!5059 lt!2203086)))))

(declare-fun b!5404410 () Bool)

(assert (=> b!5404410 (= e!3350645 ((as const (Array Context!9118 Bool)) false))))

(declare-fun b!5404411 () Bool)

(assert (=> b!5404411 (= e!3350646 (nullable!5344 (h!68149 (exprs!5059 lt!2203086))))))

(assert (= (and d!1725729 res!2297843) b!5404411))

(assert (= (and d!1725729 c!942051) b!5404407))

(assert (= (and d!1725729 (not c!942051)) b!5404409))

(assert (= (and b!5404409 c!942052) b!5404408))

(assert (= (and b!5404409 (not c!942052)) b!5404410))

(assert (= (or b!5404407 b!5404408) bm!386744))

(declare-fun m!6428816 () Bool)

(assert (=> b!5404407 m!6428816))

(declare-fun m!6428818 () Bool)

(assert (=> bm!386744 m!6428818))

(declare-fun m!6428820 () Bool)

(assert (=> b!5404411 m!6428820))

(assert (=> b!5403389 d!1725729))

(declare-fun d!1725731 () Bool)

(declare-fun lt!2203293 () Regex!15175)

(assert (=> d!1725731 (validRegex!6911 lt!2203293)))

(assert (=> d!1725731 (= lt!2203293 (generalisedUnion!1104 (unfocusZipperList!617 lt!2203040)))))

(assert (=> d!1725731 (= (unfocusZipper!917 lt!2203040) lt!2203293)))

(declare-fun bs!1248688 () Bool)

(assert (= bs!1248688 d!1725731))

(declare-fun m!6428822 () Bool)

(assert (=> bs!1248688 m!6428822))

(declare-fun m!6428824 () Bool)

(assert (=> bs!1248688 m!6428824))

(assert (=> bs!1248688 m!6428824))

(declare-fun m!6428826 () Bool)

(assert (=> bs!1248688 m!6428826))

(assert (=> b!5403389 d!1725731))

(declare-fun d!1725733 () Bool)

(assert (=> d!1725733 (= (flatMap!902 lt!2203069 lambda!281551) (choose!40725 lt!2203069 lambda!281551))))

(declare-fun bs!1248689 () Bool)

(assert (= bs!1248689 d!1725733))

(declare-fun m!6428828 () Bool)

(assert (=> bs!1248689 m!6428828))

(assert (=> b!5403389 d!1725733))

(declare-fun d!1725735 () Bool)

(assert (=> d!1725735 (= (flatMap!902 lt!2203057 lambda!281551) (choose!40725 lt!2203057 lambda!281551))))

(declare-fun bs!1248690 () Bool)

(assert (= bs!1248690 d!1725735))

(declare-fun m!6428830 () Bool)

(assert (=> bs!1248690 m!6428830))

(assert (=> b!5403389 d!1725735))

(declare-fun b!5404412 () Bool)

(declare-fun call!386750 () (InoxSet Context!9118))

(declare-fun e!3350647 () (InoxSet Context!9118))

(assert (=> b!5404412 (= e!3350647 ((_ map or) call!386750 (derivationStepZipperUp!547 (Context!9119 (t!375048 (exprs!5059 lt!2203068))) (h!68148 s!2326))))))

(declare-fun bm!386745 () Bool)

(assert (=> bm!386745 (= call!386750 (derivationStepZipperDown!623 (h!68149 (exprs!5059 lt!2203068)) (Context!9119 (t!375048 (exprs!5059 lt!2203068))) (h!68148 s!2326)))))

(declare-fun b!5404413 () Bool)

(declare-fun e!3350648 () (InoxSet Context!9118))

(assert (=> b!5404413 (= e!3350648 call!386750)))

(declare-fun d!1725737 () Bool)

(declare-fun c!942053 () Bool)

(declare-fun e!3350649 () Bool)

(assert (=> d!1725737 (= c!942053 e!3350649)))

(declare-fun res!2297844 () Bool)

(assert (=> d!1725737 (=> (not res!2297844) (not e!3350649))))

(assert (=> d!1725737 (= res!2297844 ((_ is Cons!61701) (exprs!5059 lt!2203068)))))

(assert (=> d!1725737 (= (derivationStepZipperUp!547 lt!2203068 (h!68148 s!2326)) e!3350647)))

(declare-fun b!5404414 () Bool)

(assert (=> b!5404414 (= e!3350647 e!3350648)))

(declare-fun c!942054 () Bool)

(assert (=> b!5404414 (= c!942054 ((_ is Cons!61701) (exprs!5059 lt!2203068)))))

(declare-fun b!5404415 () Bool)

(assert (=> b!5404415 (= e!3350648 ((as const (Array Context!9118 Bool)) false))))

(declare-fun b!5404416 () Bool)

(assert (=> b!5404416 (= e!3350649 (nullable!5344 (h!68149 (exprs!5059 lt!2203068))))))

(assert (= (and d!1725737 res!2297844) b!5404416))

(assert (= (and d!1725737 c!942053) b!5404412))

(assert (= (and d!1725737 (not c!942053)) b!5404414))

(assert (= (and b!5404414 c!942054) b!5404413))

(assert (= (and b!5404414 (not c!942054)) b!5404415))

(assert (= (or b!5404412 b!5404413) bm!386745))

(declare-fun m!6428832 () Bool)

(assert (=> b!5404412 m!6428832))

(declare-fun m!6428834 () Bool)

(assert (=> bm!386745 m!6428834))

(declare-fun m!6428836 () Bool)

(assert (=> b!5404416 m!6428836))

(assert (=> b!5403389 d!1725737))

(declare-fun d!1725739 () Bool)

(assert (=> d!1725739 (= (flatMap!902 lt!2203057 lambda!281551) (dynLambda!24310 lambda!281551 lt!2203068))))

(declare-fun lt!2203294 () Unit!154222)

(assert (=> d!1725739 (= lt!2203294 (choose!40728 lt!2203057 lt!2203068 lambda!281551))))

(assert (=> d!1725739 (= lt!2203057 (store ((as const (Array Context!9118 Bool)) false) lt!2203068 true))))

(assert (=> d!1725739 (= (lemmaFlatMapOnSingletonSet!434 lt!2203057 lt!2203068 lambda!281551) lt!2203294)))

(declare-fun b_lambda!206535 () Bool)

(assert (=> (not b_lambda!206535) (not d!1725739)))

(declare-fun bs!1248691 () Bool)

(assert (= bs!1248691 d!1725739))

(assert (=> bs!1248691 m!6427730))

(declare-fun m!6428838 () Bool)

(assert (=> bs!1248691 m!6428838))

(declare-fun m!6428840 () Bool)

(assert (=> bs!1248691 m!6428840))

(assert (=> bs!1248691 m!6427724))

(assert (=> b!5403389 d!1725739))

(assert (=> b!5403369 d!1725541))

(declare-fun d!1725741 () Bool)

(declare-fun c!942055 () Bool)

(assert (=> d!1725741 (= c!942055 (isEmpty!33691 (_2!35677 lt!2203042)))))

(declare-fun e!3350650 () Bool)

(assert (=> d!1725741 (= (matchZipper!1419 lt!2203069 (_2!35677 lt!2203042)) e!3350650)))

(declare-fun b!5404417 () Bool)

(assert (=> b!5404417 (= e!3350650 (nullableZipper!1436 lt!2203069))))

(declare-fun b!5404418 () Bool)

(assert (=> b!5404418 (= e!3350650 (matchZipper!1419 (derivationStepZipper!1414 lt!2203069 (head!11589 (_2!35677 lt!2203042))) (tail!10686 (_2!35677 lt!2203042))))))

(assert (= (and d!1725741 c!942055) b!5404417))

(assert (= (and d!1725741 (not c!942055)) b!5404418))

(assert (=> d!1725741 m!6428558))

(declare-fun m!6428842 () Bool)

(assert (=> b!5404417 m!6428842))

(assert (=> b!5404418 m!6428550))

(assert (=> b!5404418 m!6428550))

(declare-fun m!6428844 () Bool)

(assert (=> b!5404418 m!6428844))

(assert (=> b!5404418 m!6428554))

(assert (=> b!5404418 m!6428844))

(assert (=> b!5404418 m!6428554))

(declare-fun m!6428846 () Bool)

(assert (=> b!5404418 m!6428846))

(assert (=> b!5403349 d!1725741))

(declare-fun bs!1248692 () Bool)

(declare-fun b!5404428 () Bool)

(assert (= bs!1248692 (and b!5404428 b!5404069)))

(declare-fun lambda!281643 () Int)

(assert (=> bs!1248692 (= (and (= (reg!15504 r!7292) (reg!15504 lt!2203063)) (= r!7292 lt!2203063)) (= lambda!281643 lambda!281591))))

(declare-fun bs!1248693 () Bool)

(assert (= bs!1248693 (and b!5404428 d!1725601)))

(assert (=> bs!1248693 (not (= lambda!281643 lambda!281603))))

(declare-fun bs!1248694 () Bool)

(assert (= bs!1248694 (and b!5404428 d!1725721)))

(assert (=> bs!1248694 (not (= lambda!281643 lambda!281642))))

(declare-fun bs!1248695 () Bool)

(assert (= bs!1248695 (and b!5404428 b!5404063)))

(assert (=> bs!1248695 (not (= lambda!281643 lambda!281592))))

(declare-fun bs!1248696 () Bool)

(assert (= bs!1248696 (and b!5404428 d!1725717)))

(assert (=> bs!1248696 (not (= lambda!281643 lambda!281640))))

(declare-fun bs!1248697 () Bool)

(assert (= bs!1248697 (and b!5404428 b!5403370)))

(assert (=> bs!1248697 (not (= lambda!281643 lambda!281550))))

(declare-fun bs!1248698 () Bool)

(assert (= bs!1248698 (and b!5404428 b!5403380)))

(assert (=> bs!1248698 (not (= lambda!281643 lambda!281555))))

(assert (=> bs!1248697 (not (= lambda!281643 lambda!281549))))

(assert (=> bs!1248698 (not (= lambda!281643 lambda!281554))))

(assert (=> bs!1248696 (not (= lambda!281643 lambda!281641))))

(declare-fun bs!1248699 () Bool)

(assert (= bs!1248699 (and b!5404428 b!5403667)))

(assert (=> bs!1248699 (not (= lambda!281643 lambda!281573))))

(declare-fun bs!1248700 () Bool)

(assert (= bs!1248700 (and b!5404428 b!5403673)))

(assert (=> bs!1248700 (= (and (= (reg!15504 r!7292) (reg!15504 lt!2203048)) (= r!7292 lt!2203048)) (= lambda!281643 lambda!281572))))

(declare-fun bs!1248701 () Bool)

(assert (= bs!1248701 (and b!5404428 d!1725681)))

(assert (=> bs!1248701 (not (= lambda!281643 lambda!281621))))

(assert (=> bs!1248693 (not (= lambda!281643 lambda!281604))))

(assert (=> b!5404428 true))

(assert (=> b!5404428 true))

(declare-fun bs!1248702 () Bool)

(declare-fun b!5404422 () Bool)

(assert (= bs!1248702 (and b!5404422 b!5404069)))

(declare-fun lambda!281644 () Int)

(assert (=> bs!1248702 (not (= lambda!281644 lambda!281591))))

(declare-fun bs!1248703 () Bool)

(assert (= bs!1248703 (and b!5404422 d!1725601)))

(assert (=> bs!1248703 (not (= lambda!281644 lambda!281603))))

(declare-fun bs!1248704 () Bool)

(assert (= bs!1248704 (and b!5404422 d!1725721)))

(assert (=> bs!1248704 (not (= lambda!281644 lambda!281642))))

(declare-fun bs!1248705 () Bool)

(assert (= bs!1248705 (and b!5404422 b!5404063)))

(assert (=> bs!1248705 (= (and (= (regOne!30862 r!7292) (regOne!30862 lt!2203063)) (= (regTwo!30862 r!7292) (regTwo!30862 lt!2203063))) (= lambda!281644 lambda!281592))))

(declare-fun bs!1248706 () Bool)

(assert (= bs!1248706 (and b!5404422 d!1725717)))

(assert (=> bs!1248706 (not (= lambda!281644 lambda!281640))))

(declare-fun bs!1248707 () Bool)

(assert (= bs!1248707 (and b!5404422 b!5403370)))

(assert (=> bs!1248707 (= lambda!281644 lambda!281550)))

(declare-fun bs!1248708 () Bool)

(assert (= bs!1248708 (and b!5404422 b!5403380)))

(assert (=> bs!1248708 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281644 lambda!281555))))

(assert (=> bs!1248707 (not (= lambda!281644 lambda!281549))))

(declare-fun bs!1248709 () Bool)

(assert (= bs!1248709 (and b!5404422 b!5404428)))

(assert (=> bs!1248709 (not (= lambda!281644 lambda!281643))))

(assert (=> bs!1248708 (not (= lambda!281644 lambda!281554))))

(assert (=> bs!1248706 (= lambda!281644 lambda!281641)))

(declare-fun bs!1248710 () Bool)

(assert (= bs!1248710 (and b!5404422 b!5403667)))

(assert (=> bs!1248710 (= (and (= (regOne!30862 r!7292) (regOne!30862 lt!2203048)) (= (regTwo!30862 r!7292) (regTwo!30862 lt!2203048))) (= lambda!281644 lambda!281573))))

(declare-fun bs!1248711 () Bool)

(assert (= bs!1248711 (and b!5404422 b!5403673)))

(assert (=> bs!1248711 (not (= lambda!281644 lambda!281572))))

(declare-fun bs!1248712 () Bool)

(assert (= bs!1248712 (and b!5404422 d!1725681)))

(assert (=> bs!1248712 (not (= lambda!281644 lambda!281621))))

(assert (=> bs!1248703 (= (= (regOne!30862 r!7292) lt!2203072) (= lambda!281644 lambda!281604))))

(assert (=> b!5404422 true))

(assert (=> b!5404422 true))

(declare-fun b!5404419 () Bool)

(declare-fun e!3350654 () Bool)

(assert (=> b!5404419 (= e!3350654 (matchRSpec!2278 (regTwo!30863 r!7292) s!2326))))

(declare-fun b!5404420 () Bool)

(declare-fun res!2297846 () Bool)

(declare-fun e!3350652 () Bool)

(assert (=> b!5404420 (=> res!2297846 e!3350652)))

(declare-fun call!386752 () Bool)

(assert (=> b!5404420 (= res!2297846 call!386752)))

(declare-fun e!3350657 () Bool)

(assert (=> b!5404420 (= e!3350657 e!3350652)))

(declare-fun d!1725743 () Bool)

(declare-fun c!942057 () Bool)

(assert (=> d!1725743 (= c!942057 ((_ is EmptyExpr!15175) r!7292))))

(declare-fun e!3350656 () Bool)

(assert (=> d!1725743 (= (matchRSpec!2278 r!7292 s!2326) e!3350656)))

(declare-fun call!386751 () Bool)

(declare-fun bm!386746 () Bool)

(declare-fun c!942058 () Bool)

(assert (=> bm!386746 (= call!386751 (Exists!2356 (ite c!942058 lambda!281643 lambda!281644)))))

(declare-fun b!5404421 () Bool)

(declare-fun e!3350651 () Bool)

(assert (=> b!5404421 (= e!3350651 (= s!2326 (Cons!61700 (c!941773 r!7292) Nil!61700)))))

(assert (=> b!5404422 (= e!3350657 call!386751)))

(declare-fun b!5404423 () Bool)

(declare-fun e!3350653 () Bool)

(assert (=> b!5404423 (= e!3350653 e!3350654)))

(declare-fun res!2297845 () Bool)

(assert (=> b!5404423 (= res!2297845 (matchRSpec!2278 (regOne!30863 r!7292) s!2326))))

(assert (=> b!5404423 (=> res!2297845 e!3350654)))

(declare-fun b!5404424 () Bool)

(declare-fun c!942056 () Bool)

(assert (=> b!5404424 (= c!942056 ((_ is Union!15175) r!7292))))

(assert (=> b!5404424 (= e!3350651 e!3350653)))

(declare-fun b!5404425 () Bool)

(declare-fun e!3350655 () Bool)

(assert (=> b!5404425 (= e!3350656 e!3350655)))

(declare-fun res!2297847 () Bool)

(assert (=> b!5404425 (= res!2297847 (not ((_ is EmptyLang!15175) r!7292)))))

(assert (=> b!5404425 (=> (not res!2297847) (not e!3350655))))

(declare-fun b!5404426 () Bool)

(assert (=> b!5404426 (= e!3350656 call!386752)))

(declare-fun b!5404427 () Bool)

(assert (=> b!5404427 (= e!3350653 e!3350657)))

(assert (=> b!5404427 (= c!942058 ((_ is Star!15175) r!7292))))

(assert (=> b!5404428 (= e!3350652 call!386751)))

(declare-fun b!5404429 () Bool)

(declare-fun c!942059 () Bool)

(assert (=> b!5404429 (= c!942059 ((_ is ElementMatch!15175) r!7292))))

(assert (=> b!5404429 (= e!3350655 e!3350651)))

(declare-fun bm!386747 () Bool)

(assert (=> bm!386747 (= call!386752 (isEmpty!33691 s!2326))))

(assert (= (and d!1725743 c!942057) b!5404426))

(assert (= (and d!1725743 (not c!942057)) b!5404425))

(assert (= (and b!5404425 res!2297847) b!5404429))

(assert (= (and b!5404429 c!942059) b!5404421))

(assert (= (and b!5404429 (not c!942059)) b!5404424))

(assert (= (and b!5404424 c!942056) b!5404423))

(assert (= (and b!5404424 (not c!942056)) b!5404427))

(assert (= (and b!5404423 (not res!2297845)) b!5404419))

(assert (= (and b!5404427 c!942058) b!5404420))

(assert (= (and b!5404427 (not c!942058)) b!5404422))

(assert (= (and b!5404420 (not res!2297846)) b!5404428))

(assert (= (or b!5404428 b!5404422) bm!386746))

(assert (= (or b!5404426 b!5404420) bm!386747))

(declare-fun m!6428848 () Bool)

(assert (=> b!5404419 m!6428848))

(declare-fun m!6428850 () Bool)

(assert (=> bm!386746 m!6428850))

(declare-fun m!6428852 () Bool)

(assert (=> b!5404423 m!6428852))

(assert (=> bm!386747 m!6427980))

(assert (=> b!5403390 d!1725743))

(declare-fun b!5404430 () Bool)

(declare-fun e!3350661 () Bool)

(assert (=> b!5404430 (= e!3350661 (not (= (head!11589 s!2326) (c!941773 r!7292))))))

(declare-fun b!5404431 () Bool)

(declare-fun e!3350660 () Bool)

(declare-fun lt!2203295 () Bool)

(assert (=> b!5404431 (= e!3350660 (not lt!2203295))))

(declare-fun b!5404432 () Bool)

(declare-fun e!3350658 () Bool)

(assert (=> b!5404432 (= e!3350658 e!3350660)))

(declare-fun c!942060 () Bool)

(assert (=> b!5404432 (= c!942060 ((_ is EmptyLang!15175) r!7292))))

(declare-fun b!5404433 () Bool)

(declare-fun res!2297853 () Bool)

(assert (=> b!5404433 (=> res!2297853 e!3350661)))

(assert (=> b!5404433 (= res!2297853 (not (isEmpty!33691 (tail!10686 s!2326))))))

(declare-fun b!5404434 () Bool)

(declare-fun res!2297850 () Bool)

(declare-fun e!3350663 () Bool)

(assert (=> b!5404434 (=> res!2297850 e!3350663)))

(assert (=> b!5404434 (= res!2297850 (not ((_ is ElementMatch!15175) r!7292)))))

(assert (=> b!5404434 (= e!3350660 e!3350663)))

(declare-fun bm!386748 () Bool)

(declare-fun call!386753 () Bool)

(assert (=> bm!386748 (= call!386753 (isEmpty!33691 s!2326))))

(declare-fun b!5404435 () Bool)

(declare-fun res!2297855 () Bool)

(assert (=> b!5404435 (=> res!2297855 e!3350663)))

(declare-fun e!3350659 () Bool)

(assert (=> b!5404435 (= res!2297855 e!3350659)))

(declare-fun res!2297849 () Bool)

(assert (=> b!5404435 (=> (not res!2297849) (not e!3350659))))

(assert (=> b!5404435 (= res!2297849 lt!2203295)))

(declare-fun b!5404436 () Bool)

(declare-fun e!3350664 () Bool)

(assert (=> b!5404436 (= e!3350664 (nullable!5344 r!7292))))

(declare-fun d!1725745 () Bool)

(assert (=> d!1725745 e!3350658))

(declare-fun c!942061 () Bool)

(assert (=> d!1725745 (= c!942061 ((_ is EmptyExpr!15175) r!7292))))

(assert (=> d!1725745 (= lt!2203295 e!3350664)))

(declare-fun c!942062 () Bool)

(assert (=> d!1725745 (= c!942062 (isEmpty!33691 s!2326))))

(assert (=> d!1725745 (validRegex!6911 r!7292)))

(assert (=> d!1725745 (= (matchR!7360 r!7292 s!2326) lt!2203295)))

(declare-fun b!5404437 () Bool)

(declare-fun res!2297852 () Bool)

(assert (=> b!5404437 (=> (not res!2297852) (not e!3350659))))

(assert (=> b!5404437 (= res!2297852 (isEmpty!33691 (tail!10686 s!2326)))))

(declare-fun b!5404438 () Bool)

(assert (=> b!5404438 (= e!3350659 (= (head!11589 s!2326) (c!941773 r!7292)))))

(declare-fun b!5404439 () Bool)

(declare-fun e!3350662 () Bool)

(assert (=> b!5404439 (= e!3350662 e!3350661)))

(declare-fun res!2297848 () Bool)

(assert (=> b!5404439 (=> res!2297848 e!3350661)))

(assert (=> b!5404439 (= res!2297848 call!386753)))

(declare-fun b!5404440 () Bool)

(declare-fun res!2297854 () Bool)

(assert (=> b!5404440 (=> (not res!2297854) (not e!3350659))))

(assert (=> b!5404440 (= res!2297854 (not call!386753))))

(declare-fun b!5404441 () Bool)

(assert (=> b!5404441 (= e!3350658 (= lt!2203295 call!386753))))

(declare-fun b!5404442 () Bool)

(assert (=> b!5404442 (= e!3350663 e!3350662)))

(declare-fun res!2297851 () Bool)

(assert (=> b!5404442 (=> (not res!2297851) (not e!3350662))))

(assert (=> b!5404442 (= res!2297851 (not lt!2203295))))

(declare-fun b!5404443 () Bool)

(assert (=> b!5404443 (= e!3350664 (matchR!7360 (derivativeStep!4257 r!7292 (head!11589 s!2326)) (tail!10686 s!2326)))))

(assert (= (and d!1725745 c!942062) b!5404436))

(assert (= (and d!1725745 (not c!942062)) b!5404443))

(assert (= (and d!1725745 c!942061) b!5404441))

(assert (= (and d!1725745 (not c!942061)) b!5404432))

(assert (= (and b!5404432 c!942060) b!5404431))

(assert (= (and b!5404432 (not c!942060)) b!5404434))

(assert (= (and b!5404434 (not res!2297850)) b!5404435))

(assert (= (and b!5404435 res!2297849) b!5404440))

(assert (= (and b!5404440 res!2297854) b!5404437))

(assert (= (and b!5404437 res!2297852) b!5404438))

(assert (= (and b!5404435 (not res!2297855)) b!5404442))

(assert (= (and b!5404442 res!2297851) b!5404439))

(assert (= (and b!5404439 (not res!2297848)) b!5404433))

(assert (= (and b!5404433 (not res!2297853)) b!5404430))

(assert (= (or b!5404441 b!5404440 b!5404439) bm!386748))

(assert (=> b!5404443 m!6427990))

(assert (=> b!5404443 m!6427990))

(declare-fun m!6428854 () Bool)

(assert (=> b!5404443 m!6428854))

(assert (=> b!5404443 m!6428000))

(assert (=> b!5404443 m!6428854))

(assert (=> b!5404443 m!6428000))

(declare-fun m!6428856 () Bool)

(assert (=> b!5404443 m!6428856))

(assert (=> bm!386748 m!6427980))

(declare-fun m!6428858 () Bool)

(assert (=> b!5404436 m!6428858))

(assert (=> d!1725745 m!6427980))

(assert (=> d!1725745 m!6427874))

(assert (=> b!5404433 m!6428000))

(assert (=> b!5404433 m!6428000))

(assert (=> b!5404433 m!6428078))

(assert (=> b!5404437 m!6428000))

(assert (=> b!5404437 m!6428000))

(assert (=> b!5404437 m!6428078))

(assert (=> b!5404430 m!6427990))

(assert (=> b!5404438 m!6427990))

(assert (=> b!5403390 d!1725745))

(declare-fun d!1725747 () Bool)

(assert (=> d!1725747 (= (matchR!7360 r!7292 s!2326) (matchRSpec!2278 r!7292 s!2326))))

(declare-fun lt!2203296 () Unit!154222)

(assert (=> d!1725747 (= lt!2203296 (choose!40723 r!7292 s!2326))))

(assert (=> d!1725747 (validRegex!6911 r!7292)))

(assert (=> d!1725747 (= (mainMatchTheorem!2278 r!7292 s!2326) lt!2203296)))

(declare-fun bs!1248713 () Bool)

(assert (= bs!1248713 d!1725747))

(assert (=> bs!1248713 m!6427756))

(assert (=> bs!1248713 m!6427754))

(declare-fun m!6428860 () Bool)

(assert (=> bs!1248713 m!6428860))

(assert (=> bs!1248713 m!6427874))

(assert (=> b!5403390 d!1725747))

(declare-fun d!1725749 () Bool)

(assert (=> d!1725749 (= (flatMap!902 lt!2203046 lambda!281551) (choose!40725 lt!2203046 lambda!281551))))

(declare-fun bs!1248714 () Bool)

(assert (= bs!1248714 d!1725749))

(declare-fun m!6428862 () Bool)

(assert (=> bs!1248714 m!6428862))

(assert (=> b!5403388 d!1725749))

(declare-fun call!386754 () (InoxSet Context!9118))

(declare-fun b!5404444 () Bool)

(declare-fun e!3350665 () (InoxSet Context!9118))

(assert (=> b!5404444 (= e!3350665 ((_ map or) call!386754 (derivationStepZipperUp!547 (Context!9119 (t!375048 (exprs!5059 lt!2203058))) (h!68148 s!2326))))))

(declare-fun bm!386749 () Bool)

(assert (=> bm!386749 (= call!386754 (derivationStepZipperDown!623 (h!68149 (exprs!5059 lt!2203058)) (Context!9119 (t!375048 (exprs!5059 lt!2203058))) (h!68148 s!2326)))))

(declare-fun b!5404445 () Bool)

(declare-fun e!3350666 () (InoxSet Context!9118))

(assert (=> b!5404445 (= e!3350666 call!386754)))

(declare-fun d!1725751 () Bool)

(declare-fun c!942063 () Bool)

(declare-fun e!3350667 () Bool)

(assert (=> d!1725751 (= c!942063 e!3350667)))

(declare-fun res!2297856 () Bool)

(assert (=> d!1725751 (=> (not res!2297856) (not e!3350667))))

(assert (=> d!1725751 (= res!2297856 ((_ is Cons!61701) (exprs!5059 lt!2203058)))))

(assert (=> d!1725751 (= (derivationStepZipperUp!547 lt!2203058 (h!68148 s!2326)) e!3350665)))

(declare-fun b!5404446 () Bool)

(assert (=> b!5404446 (= e!3350665 e!3350666)))

(declare-fun c!942064 () Bool)

(assert (=> b!5404446 (= c!942064 ((_ is Cons!61701) (exprs!5059 lt!2203058)))))

(declare-fun b!5404447 () Bool)

(assert (=> b!5404447 (= e!3350666 ((as const (Array Context!9118 Bool)) false))))

(declare-fun b!5404448 () Bool)

(assert (=> b!5404448 (= e!3350667 (nullable!5344 (h!68149 (exprs!5059 lt!2203058))))))

(assert (= (and d!1725751 res!2297856) b!5404448))

(assert (= (and d!1725751 c!942063) b!5404444))

(assert (= (and d!1725751 (not c!942063)) b!5404446))

(assert (= (and b!5404446 c!942064) b!5404445))

(assert (= (and b!5404446 (not c!942064)) b!5404447))

(assert (= (or b!5404444 b!5404445) bm!386749))

(declare-fun m!6428864 () Bool)

(assert (=> b!5404444 m!6428864))

(declare-fun m!6428866 () Bool)

(assert (=> bm!386749 m!6428866))

(declare-fun m!6428868 () Bool)

(assert (=> b!5404448 m!6428868))

(assert (=> b!5403388 d!1725751))

(declare-fun d!1725753 () Bool)

(assert (=> d!1725753 (= (flatMap!902 lt!2203046 lambda!281551) (dynLambda!24310 lambda!281551 lt!2203058))))

(declare-fun lt!2203297 () Unit!154222)

(assert (=> d!1725753 (= lt!2203297 (choose!40728 lt!2203046 lt!2203058 lambda!281551))))

(assert (=> d!1725753 (= lt!2203046 (store ((as const (Array Context!9118 Bool)) false) lt!2203058 true))))

(assert (=> d!1725753 (= (lemmaFlatMapOnSingletonSet!434 lt!2203046 lt!2203058 lambda!281551) lt!2203297)))

(declare-fun b_lambda!206537 () Bool)

(assert (=> (not b_lambda!206537) (not d!1725753)))

(declare-fun bs!1248715 () Bool)

(assert (= bs!1248715 d!1725753))

(assert (=> bs!1248715 m!6427848))

(declare-fun m!6428870 () Bool)

(assert (=> bs!1248715 m!6428870))

(declare-fun m!6428872 () Bool)

(assert (=> bs!1248715 m!6428872))

(assert (=> bs!1248715 m!6427850))

(assert (=> b!5403388 d!1725753))

(declare-fun bs!1248716 () Bool)

(declare-fun d!1725755 () Bool)

(assert (= bs!1248716 (and d!1725755 b!5403354)))

(declare-fun lambda!281647 () Int)

(assert (=> bs!1248716 (= lambda!281647 lambda!281551)))

(assert (=> d!1725755 true))

(assert (=> d!1725755 (= (derivationStepZipper!1414 lt!2203046 (h!68148 s!2326)) (flatMap!902 lt!2203046 lambda!281647))))

(declare-fun bs!1248717 () Bool)

(assert (= bs!1248717 d!1725755))

(declare-fun m!6428874 () Bool)

(assert (=> bs!1248717 m!6428874))

(assert (=> b!5403388 d!1725755))

(declare-fun b!5404451 () Bool)

(declare-fun e!3350669 () (InoxSet Context!9118))

(declare-fun call!386758 () (InoxSet Context!9118))

(assert (=> b!5404451 (= e!3350669 call!386758)))

(declare-fun b!5404452 () Bool)

(declare-fun e!3350668 () Bool)

(assert (=> b!5404452 (= e!3350668 (nullable!5344 (regOne!30862 (reg!15504 (regOne!30862 r!7292)))))))

(declare-fun d!1725757 () Bool)

(declare-fun c!942067 () Bool)

(assert (=> d!1725757 (= c!942067 (and ((_ is ElementMatch!15175) (reg!15504 (regOne!30862 r!7292))) (= (c!941773 (reg!15504 (regOne!30862 r!7292))) (h!68148 s!2326))))))

(declare-fun e!3350673 () (InoxSet Context!9118))

(assert (=> d!1725757 (= (derivationStepZipperDown!623 (reg!15504 (regOne!30862 r!7292)) lt!2203086 (h!68148 s!2326)) e!3350673)))

(declare-fun c!942069 () Bool)

(declare-fun bm!386750 () Bool)

(declare-fun c!942070 () Bool)

(declare-fun call!386760 () List!61825)

(assert (=> bm!386750 (= call!386760 ($colon$colon!1486 (exprs!5059 lt!2203086) (ite (or c!942069 c!942070) (regTwo!30862 (reg!15504 (regOne!30862 r!7292))) (reg!15504 (regOne!30862 r!7292)))))))

(declare-fun b!5404453 () Bool)

(declare-fun e!3350672 () (InoxSet Context!9118))

(assert (=> b!5404453 (= e!3350672 call!386758)))

(declare-fun b!5404454 () Bool)

(assert (=> b!5404454 (= e!3350673 (store ((as const (Array Context!9118 Bool)) false) lt!2203086 true))))

(declare-fun b!5404455 () Bool)

(assert (=> b!5404455 (= c!942069 e!3350668)))

(declare-fun res!2297857 () Bool)

(assert (=> b!5404455 (=> (not res!2297857) (not e!3350668))))

(assert (=> b!5404455 (= res!2297857 ((_ is Concat!24020) (reg!15504 (regOne!30862 r!7292))))))

(declare-fun e!3350671 () (InoxSet Context!9118))

(declare-fun e!3350670 () (InoxSet Context!9118))

(assert (=> b!5404455 (= e!3350671 e!3350670)))

(declare-fun b!5404456 () Bool)

(assert (=> b!5404456 (= e!3350669 ((as const (Array Context!9118 Bool)) false))))

(declare-fun bm!386751 () Bool)

(declare-fun call!386759 () List!61825)

(assert (=> bm!386751 (= call!386759 call!386760)))

(declare-fun bm!386752 () Bool)

(declare-fun call!386756 () (InoxSet Context!9118))

(assert (=> bm!386752 (= call!386758 call!386756)))

(declare-fun call!386755 () (InoxSet Context!9118))

(declare-fun bm!386753 () Bool)

(declare-fun c!942068 () Bool)

(assert (=> bm!386753 (= call!386755 (derivationStepZipperDown!623 (ite c!942068 (regTwo!30863 (reg!15504 (regOne!30862 r!7292))) (regOne!30862 (reg!15504 (regOne!30862 r!7292)))) (ite c!942068 lt!2203086 (Context!9119 call!386760)) (h!68148 s!2326)))))

(declare-fun b!5404457 () Bool)

(declare-fun c!942071 () Bool)

(assert (=> b!5404457 (= c!942071 ((_ is Star!15175) (reg!15504 (regOne!30862 r!7292))))))

(assert (=> b!5404457 (= e!3350672 e!3350669)))

(declare-fun b!5404458 () Bool)

(assert (=> b!5404458 (= e!3350670 e!3350672)))

(assert (=> b!5404458 (= c!942070 ((_ is Concat!24020) (reg!15504 (regOne!30862 r!7292))))))

(declare-fun b!5404459 () Bool)

(declare-fun call!386757 () (InoxSet Context!9118))

(assert (=> b!5404459 (= e!3350671 ((_ map or) call!386757 call!386755))))

(declare-fun b!5404460 () Bool)

(assert (=> b!5404460 (= e!3350670 ((_ map or) call!386755 call!386756))))

(declare-fun bm!386754 () Bool)

(assert (=> bm!386754 (= call!386757 (derivationStepZipperDown!623 (ite c!942068 (regOne!30863 (reg!15504 (regOne!30862 r!7292))) (ite c!942069 (regTwo!30862 (reg!15504 (regOne!30862 r!7292))) (ite c!942070 (regOne!30862 (reg!15504 (regOne!30862 r!7292))) (reg!15504 (reg!15504 (regOne!30862 r!7292)))))) (ite (or c!942068 c!942069) lt!2203086 (Context!9119 call!386759)) (h!68148 s!2326)))))

(declare-fun bm!386755 () Bool)

(assert (=> bm!386755 (= call!386756 call!386757)))

(declare-fun b!5404461 () Bool)

(assert (=> b!5404461 (= e!3350673 e!3350671)))

(assert (=> b!5404461 (= c!942068 ((_ is Union!15175) (reg!15504 (regOne!30862 r!7292))))))

(assert (= (and d!1725757 c!942067) b!5404454))

(assert (= (and d!1725757 (not c!942067)) b!5404461))

(assert (= (and b!5404461 c!942068) b!5404459))

(assert (= (and b!5404461 (not c!942068)) b!5404455))

(assert (= (and b!5404455 res!2297857) b!5404452))

(assert (= (and b!5404455 c!942069) b!5404460))

(assert (= (and b!5404455 (not c!942069)) b!5404458))

(assert (= (and b!5404458 c!942070) b!5404453))

(assert (= (and b!5404458 (not c!942070)) b!5404457))

(assert (= (and b!5404457 c!942071) b!5404451))

(assert (= (and b!5404457 (not c!942071)) b!5404456))

(assert (= (or b!5404453 b!5404451) bm!386751))

(assert (= (or b!5404453 b!5404451) bm!386752))

(assert (= (or b!5404460 bm!386751) bm!386750))

(assert (= (or b!5404460 bm!386752) bm!386755))

(assert (= (or b!5404459 b!5404460) bm!386753))

(assert (= (or b!5404459 bm!386755) bm!386754))

(assert (=> b!5404454 m!6427738))

(declare-fun m!6428876 () Bool)

(assert (=> bm!386753 m!6428876))

(declare-fun m!6428878 () Bool)

(assert (=> bm!386750 m!6428878))

(declare-fun m!6428880 () Bool)

(assert (=> bm!386754 m!6428880))

(declare-fun m!6428882 () Bool)

(assert (=> b!5404452 m!6428882))

(assert (=> b!5403387 d!1725757))

(declare-fun d!1725759 () Bool)

(assert (=> d!1725759 (= (isEmpty!33688 (t!375049 zl!343)) ((_ is Nil!61702) (t!375049 zl!343)))))

(assert (=> b!5403367 d!1725759))

(declare-fun e!3350676 () Bool)

(assert (=> b!5403376 (= tp!1494725 e!3350676)))

(declare-fun b!5404473 () Bool)

(declare-fun tp!1494799 () Bool)

(declare-fun tp!1494802 () Bool)

(assert (=> b!5404473 (= e!3350676 (and tp!1494799 tp!1494802))))

(declare-fun b!5404474 () Bool)

(declare-fun tp!1494798 () Bool)

(assert (=> b!5404474 (= e!3350676 tp!1494798)))

(declare-fun b!5404472 () Bool)

(assert (=> b!5404472 (= e!3350676 tp_is_empty!39603)))

(declare-fun b!5404475 () Bool)

(declare-fun tp!1494800 () Bool)

(declare-fun tp!1494801 () Bool)

(assert (=> b!5404475 (= e!3350676 (and tp!1494800 tp!1494801))))

(assert (= (and b!5403376 ((_ is ElementMatch!15175) (reg!15504 r!7292))) b!5404472))

(assert (= (and b!5403376 ((_ is Concat!24020) (reg!15504 r!7292))) b!5404473))

(assert (= (and b!5403376 ((_ is Star!15175) (reg!15504 r!7292))) b!5404474))

(assert (= (and b!5403376 ((_ is Union!15175) (reg!15504 r!7292))) b!5404475))

(declare-fun b!5404480 () Bool)

(declare-fun e!3350679 () Bool)

(declare-fun tp!1494807 () Bool)

(declare-fun tp!1494808 () Bool)

(assert (=> b!5404480 (= e!3350679 (and tp!1494807 tp!1494808))))

(assert (=> b!5403371 (= tp!1494721 e!3350679)))

(assert (= (and b!5403371 ((_ is Cons!61701) (exprs!5059 setElem!35177))) b!5404480))

(declare-fun b!5404481 () Bool)

(declare-fun e!3350680 () Bool)

(declare-fun tp!1494809 () Bool)

(declare-fun tp!1494810 () Bool)

(assert (=> b!5404481 (= e!3350680 (and tp!1494809 tp!1494810))))

(assert (=> b!5403375 (= tp!1494724 e!3350680)))

(assert (= (and b!5403375 ((_ is Cons!61701) (exprs!5059 (h!68150 zl!343)))) b!5404481))

(declare-fun b!5404489 () Bool)

(declare-fun e!3350686 () Bool)

(declare-fun tp!1494815 () Bool)

(assert (=> b!5404489 (= e!3350686 tp!1494815)))

(declare-fun b!5404488 () Bool)

(declare-fun tp!1494816 () Bool)

(declare-fun e!3350685 () Bool)

(assert (=> b!5404488 (= e!3350685 (and (inv!81184 (h!68150 (t!375049 zl!343))) e!3350686 tp!1494816))))

(assert (=> b!5403377 (= tp!1494728 e!3350685)))

(assert (= b!5404488 b!5404489))

(assert (= (and b!5403377 ((_ is Cons!61702) (t!375049 zl!343))) b!5404488))

(declare-fun m!6428884 () Bool)

(assert (=> b!5404488 m!6428884))

(declare-fun e!3350687 () Bool)

(assert (=> b!5403363 (= tp!1494720 e!3350687)))

(declare-fun b!5404491 () Bool)

(declare-fun tp!1494818 () Bool)

(declare-fun tp!1494821 () Bool)

(assert (=> b!5404491 (= e!3350687 (and tp!1494818 tp!1494821))))

(declare-fun b!5404492 () Bool)

(declare-fun tp!1494817 () Bool)

(assert (=> b!5404492 (= e!3350687 tp!1494817)))

(declare-fun b!5404490 () Bool)

(assert (=> b!5404490 (= e!3350687 tp_is_empty!39603)))

(declare-fun b!5404493 () Bool)

(declare-fun tp!1494819 () Bool)

(declare-fun tp!1494820 () Bool)

(assert (=> b!5404493 (= e!3350687 (and tp!1494819 tp!1494820))))

(assert (= (and b!5403363 ((_ is ElementMatch!15175) (regOne!30862 r!7292))) b!5404490))

(assert (= (and b!5403363 ((_ is Concat!24020) (regOne!30862 r!7292))) b!5404491))

(assert (= (and b!5403363 ((_ is Star!15175) (regOne!30862 r!7292))) b!5404492))

(assert (= (and b!5403363 ((_ is Union!15175) (regOne!30862 r!7292))) b!5404493))

(declare-fun e!3350688 () Bool)

(assert (=> b!5403363 (= tp!1494729 e!3350688)))

(declare-fun b!5404495 () Bool)

(declare-fun tp!1494823 () Bool)

(declare-fun tp!1494826 () Bool)

(assert (=> b!5404495 (= e!3350688 (and tp!1494823 tp!1494826))))

(declare-fun b!5404496 () Bool)

(declare-fun tp!1494822 () Bool)

(assert (=> b!5404496 (= e!3350688 tp!1494822)))

(declare-fun b!5404494 () Bool)

(assert (=> b!5404494 (= e!3350688 tp_is_empty!39603)))

(declare-fun b!5404497 () Bool)

(declare-fun tp!1494824 () Bool)

(declare-fun tp!1494825 () Bool)

(assert (=> b!5404497 (= e!3350688 (and tp!1494824 tp!1494825))))

(assert (= (and b!5403363 ((_ is ElementMatch!15175) (regTwo!30862 r!7292))) b!5404494))

(assert (= (and b!5403363 ((_ is Concat!24020) (regTwo!30862 r!7292))) b!5404495))

(assert (= (and b!5403363 ((_ is Star!15175) (regTwo!30862 r!7292))) b!5404496))

(assert (= (and b!5403363 ((_ is Union!15175) (regTwo!30862 r!7292))) b!5404497))

(declare-fun e!3350689 () Bool)

(assert (=> b!5403368 (= tp!1494727 e!3350689)))

(declare-fun b!5404499 () Bool)

(declare-fun tp!1494828 () Bool)

(declare-fun tp!1494831 () Bool)

(assert (=> b!5404499 (= e!3350689 (and tp!1494828 tp!1494831))))

(declare-fun b!5404500 () Bool)

(declare-fun tp!1494827 () Bool)

(assert (=> b!5404500 (= e!3350689 tp!1494827)))

(declare-fun b!5404498 () Bool)

(assert (=> b!5404498 (= e!3350689 tp_is_empty!39603)))

(declare-fun b!5404501 () Bool)

(declare-fun tp!1494829 () Bool)

(declare-fun tp!1494830 () Bool)

(assert (=> b!5404501 (= e!3350689 (and tp!1494829 tp!1494830))))

(assert (= (and b!5403368 ((_ is ElementMatch!15175) (regOne!30863 r!7292))) b!5404498))

(assert (= (and b!5403368 ((_ is Concat!24020) (regOne!30863 r!7292))) b!5404499))

(assert (= (and b!5403368 ((_ is Star!15175) (regOne!30863 r!7292))) b!5404500))

(assert (= (and b!5403368 ((_ is Union!15175) (regOne!30863 r!7292))) b!5404501))

(declare-fun e!3350690 () Bool)

(assert (=> b!5403368 (= tp!1494723 e!3350690)))

(declare-fun b!5404503 () Bool)

(declare-fun tp!1494833 () Bool)

(declare-fun tp!1494836 () Bool)

(assert (=> b!5404503 (= e!3350690 (and tp!1494833 tp!1494836))))

(declare-fun b!5404504 () Bool)

(declare-fun tp!1494832 () Bool)

(assert (=> b!5404504 (= e!3350690 tp!1494832)))

(declare-fun b!5404502 () Bool)

(assert (=> b!5404502 (= e!3350690 tp_is_empty!39603)))

(declare-fun b!5404505 () Bool)

(declare-fun tp!1494834 () Bool)

(declare-fun tp!1494835 () Bool)

(assert (=> b!5404505 (= e!3350690 (and tp!1494834 tp!1494835))))

(assert (= (and b!5403368 ((_ is ElementMatch!15175) (regTwo!30863 r!7292))) b!5404502))

(assert (= (and b!5403368 ((_ is Concat!24020) (regTwo!30863 r!7292))) b!5404503))

(assert (= (and b!5403368 ((_ is Star!15175) (regTwo!30863 r!7292))) b!5404504))

(assert (= (and b!5403368 ((_ is Union!15175) (regTwo!30863 r!7292))) b!5404505))

(declare-fun condSetEmpty!35183 () Bool)

(assert (=> setNonEmpty!35177 (= condSetEmpty!35183 (= setRest!35177 ((as const (Array Context!9118 Bool)) false)))))

(declare-fun setRes!35183 () Bool)

(assert (=> setNonEmpty!35177 (= tp!1494722 setRes!35183)))

(declare-fun setIsEmpty!35183 () Bool)

(assert (=> setIsEmpty!35183 setRes!35183))

(declare-fun setNonEmpty!35183 () Bool)

(declare-fun setElem!35183 () Context!9118)

(declare-fun tp!1494842 () Bool)

(declare-fun e!3350693 () Bool)

(assert (=> setNonEmpty!35183 (= setRes!35183 (and tp!1494842 (inv!81184 setElem!35183) e!3350693))))

(declare-fun setRest!35183 () (InoxSet Context!9118))

(assert (=> setNonEmpty!35183 (= setRest!35177 ((_ map or) (store ((as const (Array Context!9118 Bool)) false) setElem!35183 true) setRest!35183))))

(declare-fun b!5404510 () Bool)

(declare-fun tp!1494841 () Bool)

(assert (=> b!5404510 (= e!3350693 tp!1494841)))

(assert (= (and setNonEmpty!35177 condSetEmpty!35183) setIsEmpty!35183))

(assert (= (and setNonEmpty!35177 (not condSetEmpty!35183)) setNonEmpty!35183))

(assert (= setNonEmpty!35183 b!5404510))

(declare-fun m!6428886 () Bool)

(assert (=> setNonEmpty!35183 m!6428886))

(declare-fun b!5404515 () Bool)

(declare-fun e!3350696 () Bool)

(declare-fun tp!1494845 () Bool)

(assert (=> b!5404515 (= e!3350696 (and tp_is_empty!39603 tp!1494845))))

(assert (=> b!5403357 (= tp!1494726 e!3350696)))

(assert (= (and b!5403357 ((_ is Cons!61700) (t!375047 s!2326))) b!5404515))

(declare-fun b_lambda!206539 () Bool)

(assert (= b_lambda!206511 (or b!5403354 b_lambda!206539)))

(declare-fun bs!1248718 () Bool)

(declare-fun d!1725761 () Bool)

(assert (= bs!1248718 (and d!1725761 b!5403354)))

(assert (=> bs!1248718 (= (dynLambda!24310 lambda!281551 (h!68150 zl!343)) (derivationStepZipperUp!547 (h!68150 zl!343) (h!68148 s!2326)))))

(assert (=> bs!1248718 m!6427858))

(assert (=> d!1725495 d!1725761))

(declare-fun b_lambda!206541 () Bool)

(assert (= b_lambda!206537 (or b!5403354 b_lambda!206541)))

(declare-fun bs!1248719 () Bool)

(declare-fun d!1725763 () Bool)

(assert (= bs!1248719 (and d!1725763 b!5403354)))

(assert (=> bs!1248719 (= (dynLambda!24310 lambda!281551 lt!2203058) (derivationStepZipperUp!547 lt!2203058 (h!68148 s!2326)))))

(assert (=> bs!1248719 m!6427844))

(assert (=> d!1725753 d!1725763))

(declare-fun b_lambda!206543 () Bool)

(assert (= b_lambda!206535 (or b!5403354 b_lambda!206543)))

(declare-fun bs!1248720 () Bool)

(declare-fun d!1725765 () Bool)

(assert (= bs!1248720 (and d!1725765 b!5403354)))

(assert (=> bs!1248720 (= (dynLambda!24310 lambda!281551 lt!2203068) (derivationStepZipperUp!547 lt!2203068 (h!68148 s!2326)))))

(assert (=> bs!1248720 m!6427728))

(assert (=> d!1725739 d!1725765))

(declare-fun b_lambda!206545 () Bool)

(assert (= b_lambda!206533 (or b!5403354 b_lambda!206545)))

(declare-fun bs!1248721 () Bool)

(declare-fun d!1725767 () Bool)

(assert (= bs!1248721 (and d!1725767 b!5403354)))

(assert (=> bs!1248721 (= (dynLambda!24310 lambda!281551 lt!2203086) (derivationStepZipperUp!547 lt!2203086 (h!68148 s!2326)))))

(assert (=> bs!1248721 m!6427726))

(assert (=> d!1725727 d!1725767))

(declare-fun b_lambda!206547 () Bool)

(assert (= b_lambda!206531 (or b!5403379 b_lambda!206547)))

(declare-fun bs!1248722 () Bool)

(declare-fun d!1725769 () Bool)

(assert (= bs!1248722 (and d!1725769 b!5403379)))

(declare-fun lt!2203298 () Unit!154222)

(assert (=> bs!1248722 (= lt!2203298 (lemmaConcatPreservesForall!200 (exprs!5059 lt!2203068) lt!2203065 lambda!281553))))

(assert (=> bs!1248722 (= (dynLambda!24311 lambda!281552 lt!2203068) (Context!9119 (++!13524 (exprs!5059 lt!2203068) lt!2203065)))))

(declare-fun m!6428888 () Bool)

(assert (=> bs!1248722 m!6428888))

(declare-fun m!6428890 () Bool)

(assert (=> bs!1248722 m!6428890))

(assert (=> d!1725691 d!1725769))

(check-sat (not d!1725677) (not b!5404452) (not b!5404299) (not b!5403668) (not b!5404329) (not b!5404163) (not b!5403953) (not b!5404417) (not b!5403922) (not b!5404416) (not d!1725533) (not d!1725693) (not b!5404357) (not b!5404356) (not b!5404294) (not bm!386728) (not b!5404444) (not b!5403834) (not bm!386689) (not d!1725453) (not bs!1248718) (not b!5404504) (not bm!386740) (not b!5404510) (not d!1725679) (not d!1725701) (not d!1725669) (not bm!386672) (not b!5404491) (not d!1725621) (not b!5404309) (not d!1725703) (not b!5404474) (not d!1725695) (not d!1725495) (not d!1725709) (not b!5403585) (not setNonEmpty!35183) (not d!1725541) (not b!5403923) (not b!5404501) (not b!5404051) (not b!5403584) (not bm!386688) (not d!1725699) (not b_lambda!206539) (not b!5404064) (not b!5404322) (not b!5403832) (not d!1725601) (not b!5403706) (not b!5404171) (not d!1725505) (not bm!386748) (not b!5404437) (not b!5404488) (not b!5404389) (not d!1725707) (not b!5404495) (not b!5404129) (not d!1725561) (not d!1725753) (not b!5403919) (not b!5403849) (not bm!386685) (not d!1725691) (not b!5403833) (not b!5403978) (not b!5403809) (not d!1725555) (not b!5404355) (not bm!386754) (not d!1725631) (not b!5404436) (not b!5404303) (not b!5404315) (not b!5404515) (not d!1725731) (not b!5403817) (not bm!386749) (not b!5404500) (not b!5403799) (not d!1725617) (not bm!386706) (not b!5403921) (not d!1725681) (not b!5404401) (not b_lambda!206541) (not b!5404060) (not b!5403709) (not d!1725549) (not b!5403981) (not d!1725717) (not b!5404140) (not d!1725683) (not b!5403913) (not bm!386742) (not b!5403954) (not b_lambda!206545) (not b!5404384) (not b!5404475) (not d!1725719) (not b!5404360) (not b!5404351) (not bm!386741) (not bs!1248722) (not b!5404412) (not d!1725477) (not bm!386719) (not b!5403703) (not d!1725733) (not b!5403804) (not bm!386695) (not b!5404480) (not b!5403573) (not b!5404383) (not d!1725721) (not d!1725705) (not b!5404304) (not b!5404419) (not d!1725517) (not bm!386668) (not b!5404166) (not bm!386693) (not b!5404398) (not b!5404170) (not b!5404128) (not b!5404438) (not b!5403803) (not b_lambda!206547) (not d!1725475) (not b!5404359) (not b!5403975) (not b!5404418) (not b!5403771) (not d!1725657) (not b!5403914) (not b!5403710) (not b!5403574) (not d!1725739) (not b!5404056) (not b!5403950) (not b!5404499) (not b_lambda!206543) (not bm!386708) (not d!1725749) (not b!5404407) (not b!5404443) (not b!5404388) (not b!5404052) (not b!5404448) (not b!5403988) (not bm!386737) (not b!5403982) (not d!1725741) (not d!1725507) (not b!5403664) (not bm!386738) (not bm!386750) (not b!5404169) (not d!1725713) (not bm!386747) (not b!5404405) (not b!5403808) (not d!1725711) (not d!1725755) (not d!1725455) (not b!5404433) (not bs!1248720) (not b!5403983) (not b!5404352) (not b!5404503) (not b!5404496) (not bm!386744) (not d!1725523) (not b!5404411) (not b!5404295) (not d!1725633) (not b!5404430) (not d!1725735) (not b!5404054) (not d!1725501) (not d!1725553) (not b!5404402) (not b!5404481) (not b!5404492) (not d!1725515) (not d!1725685) (not d!1725747) (not d!1725687) (not bm!386746) (not b!5404396) (not b!5403960) (not b!5404285) (not d!1725629) (not b!5404404) (not d!1725727) (not b!5404302) (not d!1725489) (not d!1725575) (not b!5404489) (not b!5403947) (not d!1725527) (not b!5404493) (not b!5404423) (not b!5404296) (not bm!386669) (not b!5404350) (not b!5403920) (not d!1725623) (not bm!386720) (not b!5404473) (not b!5404314) (not b!5404176) tp_is_empty!39603 (not d!1725715) (not b!5404055) (not b!5404382) (not b!5404141) (not b!5404048) (not b!5403711) (not bm!386745) (not b!5403716) (not bm!386694) (not b!5403816) (not b!5404387) (not d!1725745) (not d!1725627) (not b!5403915) (not d!1725725) (not d!1725565) (not b!5404130) (not b!5403955) (not b!5404386) (not b!5404497) (not d!1725723) (not bs!1248721) (not bm!386753) (not b!5404361) (not d!1725689) (not b!5404406) (not bs!1248719) (not b!5403813) (not b!5404505) (not b!5403850))
(check-sat)
