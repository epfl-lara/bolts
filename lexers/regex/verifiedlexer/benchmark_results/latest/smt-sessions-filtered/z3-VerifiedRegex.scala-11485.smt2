; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!625550 () Bool)

(assert start!625550)

(declare-fun b!6295367 () Bool)

(assert (=> b!6295367 true))

(assert (=> b!6295367 true))

(declare-fun lambda!345916 () Int)

(declare-fun lambda!345915 () Int)

(assert (=> b!6295367 (not (= lambda!345916 lambda!345915))))

(assert (=> b!6295367 true))

(assert (=> b!6295367 true))

(declare-fun b!6295355 () Bool)

(assert (=> b!6295355 true))

(declare-fun e!3827715 () Bool)

(declare-fun e!3827719 () Bool)

(assert (=> b!6295355 (= e!3827715 e!3827719)))

(declare-fun res!2596051 () Bool)

(assert (=> b!6295355 (=> res!2596051 e!3827719)))

(declare-datatypes ((C!32704 0))(
  ( (C!32705 (val!26054 Int)) )
))
(declare-datatypes ((Regex!16217 0))(
  ( (ElementMatch!16217 (c!1142690 C!32704)) (Concat!25062 (regOne!32946 Regex!16217) (regTwo!32946 Regex!16217)) (EmptyExpr!16217) (Star!16217 (reg!16546 Regex!16217)) (EmptyLang!16217) (Union!16217 (regOne!32947 Regex!16217) (regTwo!32947 Regex!16217)) )
))
(declare-fun r!7292 () Regex!16217)

(declare-datatypes ((List!64950 0))(
  ( (Nil!64826) (Cons!64826 (h!71274 C!32704) (t!378516 List!64950)) )
))
(declare-fun s!2326 () List!64950)

(get-info :version)

(assert (=> b!6295355 (= res!2596051 (or (and ((_ is ElementMatch!16217) (regOne!32946 r!7292)) (= (c!1142690 (regOne!32946 r!7292)) (h!71274 s!2326))) ((_ is Union!16217) (regOne!32946 r!7292))))))

(declare-datatypes ((Unit!158199 0))(
  ( (Unit!158200) )
))
(declare-fun lt!2357745 () Unit!158199)

(declare-fun e!3827714 () Unit!158199)

(assert (=> b!6295355 (= lt!2357745 e!3827714)))

(declare-fun c!1142689 () Bool)

(declare-datatypes ((List!64951 0))(
  ( (Nil!64827) (Cons!64827 (h!71275 Regex!16217) (t!378517 List!64951)) )
))
(declare-datatypes ((Context!11202 0))(
  ( (Context!11203 (exprs!6101 List!64951)) )
))
(declare-datatypes ((List!64952 0))(
  ( (Nil!64828) (Cons!64828 (h!71276 Context!11202) (t!378518 List!64952)) )
))
(declare-fun zl!343 () List!64952)

(declare-fun nullable!6210 (Regex!16217) Bool)

(assert (=> b!6295355 (= c!1142689 (nullable!6210 (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11202))

(declare-fun lambda!345917 () Int)

(declare-fun flatMap!1722 ((InoxSet Context!11202) Int) (InoxSet Context!11202))

(declare-fun derivationStepZipperUp!1391 (Context!11202 C!32704) (InoxSet Context!11202))

(assert (=> b!6295355 (= (flatMap!1722 z!1189 lambda!345917) (derivationStepZipperUp!1391 (h!71276 zl!343) (h!71274 s!2326)))))

(declare-fun lt!2357740 () Unit!158199)

(declare-fun lemmaFlatMapOnSingletonSet!1248 ((InoxSet Context!11202) Context!11202 Int) Unit!158199)

(assert (=> b!6295355 (= lt!2357740 (lemmaFlatMapOnSingletonSet!1248 z!1189 (h!71276 zl!343) lambda!345917))))

(declare-fun lt!2357739 () (InoxSet Context!11202))

(declare-fun lt!2357738 () Context!11202)

(assert (=> b!6295355 (= lt!2357739 (derivationStepZipperUp!1391 lt!2357738 (h!71274 s!2326)))))

(declare-fun lt!2357744 () (InoxSet Context!11202))

(declare-fun derivationStepZipperDown!1465 (Regex!16217 Context!11202 C!32704) (InoxSet Context!11202))

(assert (=> b!6295355 (= lt!2357744 (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (h!71276 zl!343))) lt!2357738 (h!71274 s!2326)))))

(assert (=> b!6295355 (= lt!2357738 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun lt!2357750 () (InoxSet Context!11202))

(assert (=> b!6295355 (= lt!2357750 (derivationStepZipperUp!1391 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))) (h!71274 s!2326)))))

(declare-fun b!6295356 () Bool)

(declare-fun res!2596049 () Bool)

(declare-fun e!3827716 () Bool)

(assert (=> b!6295356 (=> res!2596049 e!3827716)))

(declare-fun generalisedUnion!2061 (List!64951) Regex!16217)

(declare-fun unfocusZipperList!1638 (List!64952) List!64951)

(assert (=> b!6295356 (= res!2596049 (not (= r!7292 (generalisedUnion!2061 (unfocusZipperList!1638 zl!343)))))))

(declare-fun b!6295357 () Bool)

(declare-fun e!3827720 () Bool)

(declare-fun tp!1752680 () Bool)

(assert (=> b!6295357 (= e!3827720 tp!1752680)))

(declare-fun b!6295358 () Bool)

(declare-fun res!2596036 () Bool)

(assert (=> b!6295358 (=> res!2596036 e!3827715)))

(declare-fun isEmpty!36885 (List!64951) Bool)

(assert (=> b!6295358 (= res!2596036 (isEmpty!36885 (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6295359 () Bool)

(declare-fun res!2596048 () Bool)

(declare-fun e!3827718 () Bool)

(assert (=> b!6295359 (=> (not res!2596048) (not e!3827718))))

(declare-fun unfocusZipper!1959 (List!64952) Regex!16217)

(assert (=> b!6295359 (= res!2596048 (= r!7292 (unfocusZipper!1959 zl!343)))))

(declare-fun b!6295360 () Bool)

(declare-fun e!3827717 () Bool)

(declare-fun matchZipper!2229 ((InoxSet Context!11202) List!64950) Bool)

(assert (=> b!6295360 (= e!3827717 (matchZipper!2229 lt!2357739 (t!378516 s!2326)))))

(declare-fun b!6295361 () Bool)

(declare-fun e!3827708 () Bool)

(declare-fun tp!1752681 () Bool)

(declare-fun tp!1752678 () Bool)

(assert (=> b!6295361 (= e!3827708 (and tp!1752681 tp!1752678))))

(declare-fun b!6295362 () Bool)

(declare-fun res!2596050 () Bool)

(assert (=> b!6295362 (=> res!2596050 e!3827716)))

(declare-fun generalisedConcat!1814 (List!64951) Regex!16217)

(assert (=> b!6295362 (= res!2596050 (not (= r!7292 (generalisedConcat!1814 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun b!6295363 () Bool)

(declare-fun tp!1752677 () Bool)

(assert (=> b!6295363 (= e!3827708 tp!1752677)))

(declare-fun b!6295364 () Bool)

(declare-fun Unit!158201 () Unit!158199)

(assert (=> b!6295364 (= e!3827714 Unit!158201)))

(declare-fun lt!2357748 () Unit!158199)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1048 ((InoxSet Context!11202) (InoxSet Context!11202) List!64950) Unit!158199)

(assert (=> b!6295364 (= lt!2357748 (lemmaZipperConcatMatchesSameAsBothZippers!1048 lt!2357744 lt!2357739 (t!378516 s!2326)))))

(declare-fun res!2596042 () Bool)

(assert (=> b!6295364 (= res!2596042 (matchZipper!2229 lt!2357744 (t!378516 s!2326)))))

(assert (=> b!6295364 (=> res!2596042 e!3827717)))

(assert (=> b!6295364 (= (matchZipper!2229 ((_ map or) lt!2357744 lt!2357739) (t!378516 s!2326)) e!3827717)))

(declare-fun b!6295365 () Bool)

(declare-fun e!3827709 () Bool)

(declare-fun tp!1752673 () Bool)

(declare-fun inv!83789 (Context!11202) Bool)

(assert (=> b!6295365 (= e!3827709 (and (inv!83789 (h!71276 zl!343)) e!3827720 tp!1752673))))

(declare-fun setNonEmpty!42856 () Bool)

(declare-fun e!3827713 () Bool)

(declare-fun setRes!42856 () Bool)

(declare-fun setElem!42856 () Context!11202)

(declare-fun tp!1752676 () Bool)

(assert (=> setNonEmpty!42856 (= setRes!42856 (and tp!1752676 (inv!83789 setElem!42856) e!3827713))))

(declare-fun setRest!42856 () (InoxSet Context!11202))

(assert (=> setNonEmpty!42856 (= z!1189 ((_ map or) (store ((as const (Array Context!11202 Bool)) false) setElem!42856 true) setRest!42856))))

(declare-fun b!6295366 () Bool)

(declare-fun tp_is_empty!41687 () Bool)

(assert (=> b!6295366 (= e!3827708 tp_is_empty!41687)))

(assert (=> b!6295367 (= e!3827716 e!3827715)))

(declare-fun res!2596041 () Bool)

(assert (=> b!6295367 (=> res!2596041 e!3827715)))

(declare-fun lt!2357747 () Bool)

(declare-fun lt!2357741 () Bool)

(assert (=> b!6295367 (= res!2596041 (or (not (= lt!2357747 lt!2357741)) ((_ is Nil!64826) s!2326)))))

(declare-fun Exists!3287 (Int) Bool)

(assert (=> b!6295367 (= (Exists!3287 lambda!345915) (Exists!3287 lambda!345916))))

(declare-fun lt!2357743 () Unit!158199)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1824 (Regex!16217 Regex!16217 List!64950) Unit!158199)

(assert (=> b!6295367 (= lt!2357743 (lemmaExistCutMatchRandMatchRSpecEquivalent!1824 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326))))

(assert (=> b!6295367 (= lt!2357741 (Exists!3287 lambda!345915))))

(declare-datatypes ((tuple2!66392 0))(
  ( (tuple2!66393 (_1!36499 List!64950) (_2!36499 List!64950)) )
))
(declare-datatypes ((Option!16108 0))(
  ( (None!16107) (Some!16107 (v!52262 tuple2!66392)) )
))
(declare-fun isDefined!12811 (Option!16108) Bool)

(declare-fun findConcatSeparation!2522 (Regex!16217 Regex!16217 List!64950 List!64950 List!64950) Option!16108)

(assert (=> b!6295367 (= lt!2357741 (isDefined!12811 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326)))))

(declare-fun lt!2357749 () Unit!158199)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2286 (Regex!16217 Regex!16217 List!64950) Unit!158199)

(assert (=> b!6295367 (= lt!2357749 (lemmaFindConcatSeparationEquivalentToExists!2286 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326))))

(declare-fun b!6295368 () Bool)

(declare-fun res!2596047 () Bool)

(assert (=> b!6295368 (=> res!2596047 e!3827716)))

(assert (=> b!6295368 (= res!2596047 (or ((_ is EmptyExpr!16217) r!7292) ((_ is EmptyLang!16217) r!7292) ((_ is ElementMatch!16217) r!7292) ((_ is Union!16217) r!7292) (not ((_ is Concat!25062) r!7292))))))

(declare-fun res!2596037 () Bool)

(assert (=> start!625550 (=> (not res!2596037) (not e!3827718))))

(declare-fun validRegex!7953 (Regex!16217) Bool)

(assert (=> start!625550 (= res!2596037 (validRegex!7953 r!7292))))

(assert (=> start!625550 e!3827718))

(assert (=> start!625550 e!3827708))

(declare-fun condSetEmpty!42856 () Bool)

(assert (=> start!625550 (= condSetEmpty!42856 (= z!1189 ((as const (Array Context!11202 Bool)) false)))))

(assert (=> start!625550 setRes!42856))

(assert (=> start!625550 e!3827709))

(declare-fun e!3827711 () Bool)

(assert (=> start!625550 e!3827711))

(declare-fun setIsEmpty!42856 () Bool)

(assert (=> setIsEmpty!42856 setRes!42856))

(declare-fun b!6295369 () Bool)

(declare-fun res!2596052 () Bool)

(assert (=> b!6295369 (=> res!2596052 e!3827719)))

(assert (=> b!6295369 (= res!2596052 (not ((_ is Concat!25062) (regOne!32946 r!7292))))))

(declare-fun b!6295370 () Bool)

(declare-fun res!2596040 () Bool)

(assert (=> b!6295370 (=> (not res!2596040) (not e!3827718))))

(declare-fun toList!10001 ((InoxSet Context!11202)) List!64952)

(assert (=> b!6295370 (= res!2596040 (= (toList!10001 z!1189) zl!343))))

(declare-fun b!6295371 () Bool)

(assert (=> b!6295371 (= e!3827718 (not e!3827716))))

(declare-fun res!2596044 () Bool)

(assert (=> b!6295371 (=> res!2596044 e!3827716)))

(assert (=> b!6295371 (= res!2596044 (not ((_ is Cons!64828) zl!343)))))

(declare-fun matchRSpec!3318 (Regex!16217 List!64950) Bool)

(assert (=> b!6295371 (= lt!2357747 (matchRSpec!3318 r!7292 s!2326))))

(declare-fun matchR!8400 (Regex!16217 List!64950) Bool)

(assert (=> b!6295371 (= lt!2357747 (matchR!8400 r!7292 s!2326))))

(declare-fun lt!2357746 () Unit!158199)

(declare-fun mainMatchTheorem!3318 (Regex!16217 List!64950) Unit!158199)

(assert (=> b!6295371 (= lt!2357746 (mainMatchTheorem!3318 r!7292 s!2326))))

(declare-fun b!6295372 () Bool)

(declare-fun tp!1752674 () Bool)

(assert (=> b!6295372 (= e!3827711 (and tp_is_empty!41687 tp!1752674))))

(declare-fun b!6295373 () Bool)

(declare-fun res!2596038 () Bool)

(assert (=> b!6295373 (=> res!2596038 e!3827716)))

(declare-fun isEmpty!36886 (List!64952) Bool)

(assert (=> b!6295373 (= res!2596038 (not (isEmpty!36886 (t!378518 zl!343))))))

(declare-fun b!6295374 () Bool)

(declare-fun res!2596046 () Bool)

(assert (=> b!6295374 (=> res!2596046 e!3827716)))

(assert (=> b!6295374 (= res!2596046 (not ((_ is Cons!64827) (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6295375 () Bool)

(declare-fun tp!1752679 () Bool)

(declare-fun tp!1752675 () Bool)

(assert (=> b!6295375 (= e!3827708 (and tp!1752679 tp!1752675))))

(declare-fun b!6295376 () Bool)

(declare-fun res!2596045 () Bool)

(assert (=> b!6295376 (=> res!2596045 e!3827719)))

(declare-fun e!3827710 () Bool)

(assert (=> b!6295376 (= res!2596045 e!3827710)))

(declare-fun res!2596039 () Bool)

(assert (=> b!6295376 (=> (not res!2596039) (not e!3827710))))

(assert (=> b!6295376 (= res!2596039 ((_ is Concat!25062) (regOne!32946 r!7292)))))

(declare-fun b!6295377 () Bool)

(declare-fun tp!1752682 () Bool)

(assert (=> b!6295377 (= e!3827713 tp!1752682)))

(declare-fun b!6295378 () Bool)

(declare-fun e!3827712 () Bool)

(declare-fun lt!2357742 () Context!11202)

(assert (=> b!6295378 (= e!3827712 (inv!83789 lt!2357742))))

(declare-fun b!6295379 () Bool)

(assert (=> b!6295379 (= e!3827710 (nullable!6210 (regOne!32946 (regOne!32946 r!7292))))))

(declare-fun b!6295380 () Bool)

(declare-fun Unit!158202 () Unit!158199)

(assert (=> b!6295380 (= e!3827714 Unit!158202)))

(declare-fun b!6295381 () Bool)

(assert (=> b!6295381 (= e!3827719 e!3827712)))

(declare-fun res!2596043 () Bool)

(assert (=> b!6295381 (=> res!2596043 e!3827712)))

(assert (=> b!6295381 (= res!2596043 (not (= lt!2357744 (derivationStepZipperDown!1465 (regOne!32946 (regOne!32946 r!7292)) lt!2357742 (h!71274 s!2326)))))))

(assert (=> b!6295381 (= lt!2357742 (Context!11203 (Cons!64827 (regTwo!32946 (regOne!32946 r!7292)) (t!378517 (exprs!6101 (h!71276 zl!343))))))))

(assert (= (and start!625550 res!2596037) b!6295370))

(assert (= (and b!6295370 res!2596040) b!6295359))

(assert (= (and b!6295359 res!2596048) b!6295371))

(assert (= (and b!6295371 (not res!2596044)) b!6295373))

(assert (= (and b!6295373 (not res!2596038)) b!6295362))

(assert (= (and b!6295362 (not res!2596050)) b!6295374))

(assert (= (and b!6295374 (not res!2596046)) b!6295356))

(assert (= (and b!6295356 (not res!2596049)) b!6295368))

(assert (= (and b!6295368 (not res!2596047)) b!6295367))

(assert (= (and b!6295367 (not res!2596041)) b!6295358))

(assert (= (and b!6295358 (not res!2596036)) b!6295355))

(assert (= (and b!6295355 c!1142689) b!6295364))

(assert (= (and b!6295355 (not c!1142689)) b!6295380))

(assert (= (and b!6295364 (not res!2596042)) b!6295360))

(assert (= (and b!6295355 (not res!2596051)) b!6295376))

(assert (= (and b!6295376 res!2596039) b!6295379))

(assert (= (and b!6295376 (not res!2596045)) b!6295369))

(assert (= (and b!6295369 (not res!2596052)) b!6295381))

(assert (= (and b!6295381 (not res!2596043)) b!6295378))

(assert (= (and start!625550 ((_ is ElementMatch!16217) r!7292)) b!6295366))

(assert (= (and start!625550 ((_ is Concat!25062) r!7292)) b!6295361))

(assert (= (and start!625550 ((_ is Star!16217) r!7292)) b!6295363))

(assert (= (and start!625550 ((_ is Union!16217) r!7292)) b!6295375))

(assert (= (and start!625550 condSetEmpty!42856) setIsEmpty!42856))

(assert (= (and start!625550 (not condSetEmpty!42856)) setNonEmpty!42856))

(assert (= setNonEmpty!42856 b!6295377))

(assert (= b!6295365 b!6295357))

(assert (= (and start!625550 ((_ is Cons!64828) zl!343)) b!6295365))

(assert (= (and start!625550 ((_ is Cons!64826) s!2326)) b!6295372))

(declare-fun m!7115262 () Bool)

(assert (=> b!6295365 m!7115262))

(declare-fun m!7115264 () Bool)

(assert (=> b!6295371 m!7115264))

(declare-fun m!7115266 () Bool)

(assert (=> b!6295371 m!7115266))

(declare-fun m!7115268 () Bool)

(assert (=> b!6295371 m!7115268))

(declare-fun m!7115270 () Bool)

(assert (=> b!6295359 m!7115270))

(declare-fun m!7115272 () Bool)

(assert (=> b!6295356 m!7115272))

(assert (=> b!6295356 m!7115272))

(declare-fun m!7115274 () Bool)

(assert (=> b!6295356 m!7115274))

(declare-fun m!7115276 () Bool)

(assert (=> b!6295379 m!7115276))

(declare-fun m!7115278 () Bool)

(assert (=> b!6295373 m!7115278))

(declare-fun m!7115280 () Bool)

(assert (=> b!6295358 m!7115280))

(declare-fun m!7115282 () Bool)

(assert (=> b!6295367 m!7115282))

(assert (=> b!6295367 m!7115282))

(declare-fun m!7115284 () Bool)

(assert (=> b!6295367 m!7115284))

(declare-fun m!7115286 () Bool)

(assert (=> b!6295367 m!7115286))

(declare-fun m!7115288 () Bool)

(assert (=> b!6295367 m!7115288))

(declare-fun m!7115290 () Bool)

(assert (=> b!6295367 m!7115290))

(assert (=> b!6295367 m!7115284))

(declare-fun m!7115292 () Bool)

(assert (=> b!6295367 m!7115292))

(declare-fun m!7115294 () Bool)

(assert (=> b!6295360 m!7115294))

(declare-fun m!7115296 () Bool)

(assert (=> b!6295355 m!7115296))

(declare-fun m!7115298 () Bool)

(assert (=> b!6295355 m!7115298))

(declare-fun m!7115300 () Bool)

(assert (=> b!6295355 m!7115300))

(declare-fun m!7115302 () Bool)

(assert (=> b!6295355 m!7115302))

(declare-fun m!7115304 () Bool)

(assert (=> b!6295355 m!7115304))

(declare-fun m!7115306 () Bool)

(assert (=> b!6295355 m!7115306))

(declare-fun m!7115308 () Bool)

(assert (=> b!6295355 m!7115308))

(declare-fun m!7115310 () Bool)

(assert (=> setNonEmpty!42856 m!7115310))

(declare-fun m!7115312 () Bool)

(assert (=> b!6295364 m!7115312))

(declare-fun m!7115314 () Bool)

(assert (=> b!6295364 m!7115314))

(declare-fun m!7115316 () Bool)

(assert (=> b!6295364 m!7115316))

(declare-fun m!7115318 () Bool)

(assert (=> b!6295381 m!7115318))

(declare-fun m!7115320 () Bool)

(assert (=> b!6295378 m!7115320))

(declare-fun m!7115322 () Bool)

(assert (=> b!6295370 m!7115322))

(declare-fun m!7115324 () Bool)

(assert (=> b!6295362 m!7115324))

(declare-fun m!7115326 () Bool)

(assert (=> start!625550 m!7115326))

(check-sat (not b!6295362) (not b!6295357) (not b!6295371) (not b!6295375) tp_is_empty!41687 (not b!6295363) (not b!6295372) (not b!6295360) (not b!6295356) (not b!6295364) (not b!6295378) (not b!6295355) (not b!6295358) (not b!6295365) (not b!6295373) (not b!6295377) (not b!6295361) (not start!625550) (not setNonEmpty!42856) (not b!6295370) (not b!6295381) (not b!6295359) (not b!6295367) (not b!6295379))
(check-sat)
(get-model)

(declare-fun d!1975764 () Bool)

(declare-fun lambda!345929 () Int)

(declare-fun forall!15367 (List!64951 Int) Bool)

(assert (=> d!1975764 (= (inv!83789 lt!2357742) (forall!15367 (exprs!6101 lt!2357742) lambda!345929))))

(declare-fun bs!1574677 () Bool)

(assert (= bs!1574677 d!1975764))

(declare-fun m!7115390 () Bool)

(assert (=> bs!1574677 m!7115390))

(assert (=> b!6295378 d!1975764))

(declare-fun d!1975766 () Bool)

(declare-fun lt!2357771 () Regex!16217)

(assert (=> d!1975766 (validRegex!7953 lt!2357771)))

(assert (=> d!1975766 (= lt!2357771 (generalisedUnion!2061 (unfocusZipperList!1638 zl!343)))))

(assert (=> d!1975766 (= (unfocusZipper!1959 zl!343) lt!2357771)))

(declare-fun bs!1574678 () Bool)

(assert (= bs!1574678 d!1975766))

(declare-fun m!7115392 () Bool)

(assert (=> bs!1574678 m!7115392))

(assert (=> bs!1574678 m!7115272))

(assert (=> bs!1574678 m!7115272))

(assert (=> bs!1574678 m!7115274))

(assert (=> b!6295359 d!1975766))

(declare-fun d!1975768 () Bool)

(declare-fun e!3827814 () Bool)

(assert (=> d!1975768 e!3827814))

(declare-fun res!2596107 () Bool)

(assert (=> d!1975768 (=> res!2596107 e!3827814)))

(declare-fun e!3827812 () Bool)

(assert (=> d!1975768 (= res!2596107 e!3827812)))

(declare-fun res!2596110 () Bool)

(assert (=> d!1975768 (=> (not res!2596110) (not e!3827812))))

(declare-fun lt!2357788 () Option!16108)

(assert (=> d!1975768 (= res!2596110 (isDefined!12811 lt!2357788))))

(declare-fun e!3827811 () Option!16108)

(assert (=> d!1975768 (= lt!2357788 e!3827811)))

(declare-fun c!1142743 () Bool)

(declare-fun e!3827813 () Bool)

(assert (=> d!1975768 (= c!1142743 e!3827813)))

(declare-fun res!2596108 () Bool)

(assert (=> d!1975768 (=> (not res!2596108) (not e!3827813))))

(assert (=> d!1975768 (= res!2596108 (matchR!8400 (regOne!32946 r!7292) Nil!64826))))

(assert (=> d!1975768 (validRegex!7953 (regOne!32946 r!7292))))

(assert (=> d!1975768 (= (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326) lt!2357788)))

(declare-fun b!6295544 () Bool)

(assert (=> b!6295544 (= e!3827811 (Some!16107 (tuple2!66393 Nil!64826 s!2326)))))

(declare-fun b!6295545 () Bool)

(declare-fun res!2596111 () Bool)

(assert (=> b!6295545 (=> (not res!2596111) (not e!3827812))))

(declare-fun get!22414 (Option!16108) tuple2!66392)

(assert (=> b!6295545 (= res!2596111 (matchR!8400 (regTwo!32946 r!7292) (_2!36499 (get!22414 lt!2357788))))))

(declare-fun b!6295546 () Bool)

(assert (=> b!6295546 (= e!3827814 (not (isDefined!12811 lt!2357788)))))

(declare-fun b!6295547 () Bool)

(assert (=> b!6295547 (= e!3827813 (matchR!8400 (regTwo!32946 r!7292) s!2326))))

(declare-fun b!6295548 () Bool)

(declare-fun e!3827810 () Option!16108)

(assert (=> b!6295548 (= e!3827811 e!3827810)))

(declare-fun c!1142742 () Bool)

(assert (=> b!6295548 (= c!1142742 ((_ is Nil!64826) s!2326))))

(declare-fun b!6295549 () Bool)

(declare-fun ++!14290 (List!64950 List!64950) List!64950)

(assert (=> b!6295549 (= e!3827812 (= (++!14290 (_1!36499 (get!22414 lt!2357788)) (_2!36499 (get!22414 lt!2357788))) s!2326))))

(declare-fun b!6295550 () Bool)

(declare-fun lt!2357789 () Unit!158199)

(declare-fun lt!2357787 () Unit!158199)

(assert (=> b!6295550 (= lt!2357789 lt!2357787)))

(assert (=> b!6295550 (= (++!14290 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (t!378516 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2385 (List!64950 C!32704 List!64950 List!64950) Unit!158199)

(assert (=> b!6295550 (= lt!2357787 (lemmaMoveElementToOtherListKeepsConcatEq!2385 Nil!64826 (h!71274 s!2326) (t!378516 s!2326) s!2326))))

(assert (=> b!6295550 (= e!3827810 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (t!378516 s!2326) s!2326))))

(declare-fun b!6295551 () Bool)

(assert (=> b!6295551 (= e!3827810 None!16107)))

(declare-fun b!6295552 () Bool)

(declare-fun res!2596109 () Bool)

(assert (=> b!6295552 (=> (not res!2596109) (not e!3827812))))

(assert (=> b!6295552 (= res!2596109 (matchR!8400 (regOne!32946 r!7292) (_1!36499 (get!22414 lt!2357788))))))

(assert (= (and d!1975768 res!2596108) b!6295547))

(assert (= (and d!1975768 c!1142743) b!6295544))

(assert (= (and d!1975768 (not c!1142743)) b!6295548))

(assert (= (and b!6295548 c!1142742) b!6295551))

(assert (= (and b!6295548 (not c!1142742)) b!6295550))

(assert (= (and d!1975768 res!2596110) b!6295552))

(assert (= (and b!6295552 res!2596109) b!6295545))

(assert (= (and b!6295545 res!2596111) b!6295549))

(assert (= (and d!1975768 (not res!2596107)) b!6295546))

(declare-fun m!7115444 () Bool)

(assert (=> b!6295546 m!7115444))

(declare-fun m!7115446 () Bool)

(assert (=> b!6295549 m!7115446))

(declare-fun m!7115448 () Bool)

(assert (=> b!6295549 m!7115448))

(assert (=> d!1975768 m!7115444))

(declare-fun m!7115450 () Bool)

(assert (=> d!1975768 m!7115450))

(declare-fun m!7115452 () Bool)

(assert (=> d!1975768 m!7115452))

(assert (=> b!6295545 m!7115446))

(declare-fun m!7115454 () Bool)

(assert (=> b!6295545 m!7115454))

(declare-fun m!7115456 () Bool)

(assert (=> b!6295550 m!7115456))

(assert (=> b!6295550 m!7115456))

(declare-fun m!7115458 () Bool)

(assert (=> b!6295550 m!7115458))

(declare-fun m!7115460 () Bool)

(assert (=> b!6295550 m!7115460))

(assert (=> b!6295550 m!7115456))

(declare-fun m!7115462 () Bool)

(assert (=> b!6295550 m!7115462))

(declare-fun m!7115464 () Bool)

(assert (=> b!6295547 m!7115464))

(assert (=> b!6295552 m!7115446))

(declare-fun m!7115466 () Bool)

(assert (=> b!6295552 m!7115466))

(assert (=> b!6295367 d!1975768))

(declare-fun d!1975784 () Bool)

(declare-fun choose!46776 (Int) Bool)

(assert (=> d!1975784 (= (Exists!3287 lambda!345915) (choose!46776 lambda!345915))))

(declare-fun bs!1574696 () Bool)

(assert (= bs!1574696 d!1975784))

(declare-fun m!7115472 () Bool)

(assert (=> bs!1574696 m!7115472))

(assert (=> b!6295367 d!1975784))

(declare-fun d!1975790 () Bool)

(assert (=> d!1975790 (= (Exists!3287 lambda!345916) (choose!46776 lambda!345916))))

(declare-fun bs!1574697 () Bool)

(assert (= bs!1574697 d!1975790))

(declare-fun m!7115474 () Bool)

(assert (=> bs!1574697 m!7115474))

(assert (=> b!6295367 d!1975790))

(declare-fun bs!1574706 () Bool)

(declare-fun d!1975794 () Bool)

(assert (= bs!1574706 (and d!1975794 b!6295367)))

(declare-fun lambda!345946 () Int)

(assert (=> bs!1574706 (= lambda!345946 lambda!345915)))

(assert (=> bs!1574706 (not (= lambda!345946 lambda!345916))))

(assert (=> d!1975794 true))

(assert (=> d!1975794 true))

(assert (=> d!1975794 true))

(assert (=> d!1975794 (= (isDefined!12811 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326)) (Exists!3287 lambda!345946))))

(declare-fun lt!2357798 () Unit!158199)

(declare-fun choose!46777 (Regex!16217 Regex!16217 List!64950) Unit!158199)

(assert (=> d!1975794 (= lt!2357798 (choose!46777 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326))))

(assert (=> d!1975794 (validRegex!7953 (regOne!32946 r!7292))))

(assert (=> d!1975794 (= (lemmaFindConcatSeparationEquivalentToExists!2286 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326) lt!2357798)))

(declare-fun bs!1574707 () Bool)

(assert (= bs!1574707 d!1975794))

(assert (=> bs!1574707 m!7115452))

(declare-fun m!7115500 () Bool)

(assert (=> bs!1574707 m!7115500))

(assert (=> bs!1574707 m!7115284))

(assert (=> bs!1574707 m!7115286))

(assert (=> bs!1574707 m!7115284))

(declare-fun m!7115502 () Bool)

(assert (=> bs!1574707 m!7115502))

(assert (=> b!6295367 d!1975794))

(declare-fun bs!1574715 () Bool)

(declare-fun d!1975810 () Bool)

(assert (= bs!1574715 (and d!1975810 b!6295367)))

(declare-fun lambda!345957 () Int)

(assert (=> bs!1574715 (= lambda!345957 lambda!345915)))

(assert (=> bs!1574715 (not (= lambda!345957 lambda!345916))))

(declare-fun bs!1574716 () Bool)

(assert (= bs!1574716 (and d!1975810 d!1975794)))

(assert (=> bs!1574716 (= lambda!345957 lambda!345946)))

(assert (=> d!1975810 true))

(assert (=> d!1975810 true))

(assert (=> d!1975810 true))

(declare-fun lambda!345958 () Int)

(assert (=> bs!1574715 (not (= lambda!345958 lambda!345915))))

(assert (=> bs!1574715 (= lambda!345958 lambda!345916)))

(assert (=> bs!1574716 (not (= lambda!345958 lambda!345946))))

(declare-fun bs!1574718 () Bool)

(assert (= bs!1574718 d!1975810))

(assert (=> bs!1574718 (not (= lambda!345958 lambda!345957))))

(assert (=> d!1975810 true))

(assert (=> d!1975810 true))

(assert (=> d!1975810 true))

(assert (=> d!1975810 (= (Exists!3287 lambda!345957) (Exists!3287 lambda!345958))))

(declare-fun lt!2357804 () Unit!158199)

(declare-fun choose!46778 (Regex!16217 Regex!16217 List!64950) Unit!158199)

(assert (=> d!1975810 (= lt!2357804 (choose!46778 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326))))

(assert (=> d!1975810 (validRegex!7953 (regOne!32946 r!7292))))

(assert (=> d!1975810 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1824 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326) lt!2357804)))

(declare-fun m!7115526 () Bool)

(assert (=> bs!1574718 m!7115526))

(declare-fun m!7115528 () Bool)

(assert (=> bs!1574718 m!7115528))

(declare-fun m!7115530 () Bool)

(assert (=> bs!1574718 m!7115530))

(assert (=> bs!1574718 m!7115452))

(assert (=> b!6295367 d!1975810))

(declare-fun d!1975818 () Bool)

(declare-fun isEmpty!36889 (Option!16108) Bool)

(assert (=> d!1975818 (= (isDefined!12811 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326)) (not (isEmpty!36889 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326))))))

(declare-fun bs!1574720 () Bool)

(assert (= bs!1574720 d!1975818))

(assert (=> bs!1574720 m!7115284))

(declare-fun m!7115544 () Bool)

(assert (=> bs!1574720 m!7115544))

(assert (=> b!6295367 d!1975818))

(declare-fun d!1975824 () Bool)

(assert (=> d!1975824 (= (isEmpty!36885 (t!378517 (exprs!6101 (h!71276 zl!343)))) ((_ is Nil!64827) (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> b!6295358 d!1975824))

(declare-fun d!1975826 () Bool)

(declare-fun e!3827918 () Bool)

(assert (=> d!1975826 e!3827918))

(declare-fun res!2596193 () Bool)

(assert (=> d!1975826 (=> (not res!2596193) (not e!3827918))))

(declare-fun lt!2357810 () List!64952)

(declare-fun noDuplicate!2051 (List!64952) Bool)

(assert (=> d!1975826 (= res!2596193 (noDuplicate!2051 lt!2357810))))

(declare-fun choose!46779 ((InoxSet Context!11202)) List!64952)

(assert (=> d!1975826 (= lt!2357810 (choose!46779 z!1189))))

(assert (=> d!1975826 (= (toList!10001 z!1189) lt!2357810)))

(declare-fun b!6295726 () Bool)

(declare-fun content!12198 (List!64952) (InoxSet Context!11202))

(assert (=> b!6295726 (= e!3827918 (= (content!12198 lt!2357810) z!1189))))

(assert (= (and d!1975826 res!2596193) b!6295726))

(declare-fun m!7115556 () Bool)

(assert (=> d!1975826 m!7115556))

(declare-fun m!7115558 () Bool)

(assert (=> d!1975826 m!7115558))

(declare-fun m!7115560 () Bool)

(assert (=> b!6295726 m!7115560))

(assert (=> b!6295370 d!1975826))

(declare-fun bs!1574724 () Bool)

(declare-fun d!1975832 () Bool)

(assert (= bs!1574724 (and d!1975832 d!1975764)))

(declare-fun lambda!345961 () Int)

(assert (=> bs!1574724 (= lambda!345961 lambda!345929)))

(declare-fun b!6295806 () Bool)

(declare-fun e!3827962 () Bool)

(declare-fun lt!2357816 () Regex!16217)

(declare-fun head!12934 (List!64951) Regex!16217)

(assert (=> b!6295806 (= e!3827962 (= lt!2357816 (head!12934 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6295807 () Bool)

(declare-fun e!3827959 () Regex!16217)

(assert (=> b!6295807 (= e!3827959 (h!71275 (exprs!6101 (h!71276 zl!343))))))

(declare-fun b!6295808 () Bool)

(declare-fun e!3827960 () Bool)

(assert (=> b!6295808 (= e!3827960 e!3827962)))

(declare-fun c!1142802 () Bool)

(declare-fun tail!12019 (List!64951) List!64951)

(assert (=> b!6295808 (= c!1142802 (isEmpty!36885 (tail!12019 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6295809 () Bool)

(declare-fun e!3827958 () Bool)

(assert (=> b!6295809 (= e!3827958 (isEmpty!36885 (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6295810 () Bool)

(declare-fun isEmptyExpr!1623 (Regex!16217) Bool)

(assert (=> b!6295810 (= e!3827960 (isEmptyExpr!1623 lt!2357816))))

(declare-fun b!6295811 () Bool)

(declare-fun e!3827957 () Regex!16217)

(assert (=> b!6295811 (= e!3827957 EmptyExpr!16217)))

(declare-fun b!6295812 () Bool)

(declare-fun e!3827961 () Bool)

(assert (=> b!6295812 (= e!3827961 e!3827960)))

(declare-fun c!1142803 () Bool)

(assert (=> b!6295812 (= c!1142803 (isEmpty!36885 (exprs!6101 (h!71276 zl!343))))))

(declare-fun b!6295813 () Bool)

(assert (=> b!6295813 (= e!3827959 e!3827957)))

(declare-fun c!1142800 () Bool)

(assert (=> b!6295813 (= c!1142800 ((_ is Cons!64827) (exprs!6101 (h!71276 zl!343))))))

(assert (=> d!1975832 e!3827961))

(declare-fun res!2596199 () Bool)

(assert (=> d!1975832 (=> (not res!2596199) (not e!3827961))))

(assert (=> d!1975832 (= res!2596199 (validRegex!7953 lt!2357816))))

(assert (=> d!1975832 (= lt!2357816 e!3827959)))

(declare-fun c!1142801 () Bool)

(assert (=> d!1975832 (= c!1142801 e!3827958)))

(declare-fun res!2596200 () Bool)

(assert (=> d!1975832 (=> (not res!2596200) (not e!3827958))))

(assert (=> d!1975832 (= res!2596200 ((_ is Cons!64827) (exprs!6101 (h!71276 zl!343))))))

(assert (=> d!1975832 (forall!15367 (exprs!6101 (h!71276 zl!343)) lambda!345961)))

(assert (=> d!1975832 (= (generalisedConcat!1814 (exprs!6101 (h!71276 zl!343))) lt!2357816)))

(declare-fun b!6295814 () Bool)

(assert (=> b!6295814 (= e!3827957 (Concat!25062 (h!71275 (exprs!6101 (h!71276 zl!343))) (generalisedConcat!1814 (t!378517 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun b!6295815 () Bool)

(declare-fun isConcat!1146 (Regex!16217) Bool)

(assert (=> b!6295815 (= e!3827962 (isConcat!1146 lt!2357816))))

(assert (= (and d!1975832 res!2596200) b!6295809))

(assert (= (and d!1975832 c!1142801) b!6295807))

(assert (= (and d!1975832 (not c!1142801)) b!6295813))

(assert (= (and b!6295813 c!1142800) b!6295814))

(assert (= (and b!6295813 (not c!1142800)) b!6295811))

(assert (= (and d!1975832 res!2596199) b!6295812))

(assert (= (and b!6295812 c!1142803) b!6295810))

(assert (= (and b!6295812 (not c!1142803)) b!6295808))

(assert (= (and b!6295808 c!1142802) b!6295806))

(assert (= (and b!6295808 (not c!1142802)) b!6295815))

(declare-fun m!7115580 () Bool)

(assert (=> b!6295806 m!7115580))

(assert (=> b!6295809 m!7115280))

(declare-fun m!7115582 () Bool)

(assert (=> b!6295810 m!7115582))

(declare-fun m!7115584 () Bool)

(assert (=> d!1975832 m!7115584))

(declare-fun m!7115586 () Bool)

(assert (=> d!1975832 m!7115586))

(declare-fun m!7115588 () Bool)

(assert (=> b!6295814 m!7115588))

(declare-fun m!7115590 () Bool)

(assert (=> b!6295812 m!7115590))

(declare-fun m!7115592 () Bool)

(assert (=> b!6295815 m!7115592))

(declare-fun m!7115594 () Bool)

(assert (=> b!6295808 m!7115594))

(assert (=> b!6295808 m!7115594))

(declare-fun m!7115596 () Bool)

(assert (=> b!6295808 m!7115596))

(assert (=> b!6295362 d!1975832))

(declare-fun b!6295838 () Bool)

(declare-fun c!1142818 () Bool)

(assert (=> b!6295838 (= c!1142818 ((_ is Star!16217) (regOne!32946 (regOne!32946 r!7292))))))

(declare-fun e!3827980 () (InoxSet Context!11202))

(declare-fun e!3827979 () (InoxSet Context!11202))

(assert (=> b!6295838 (= e!3827980 e!3827979)))

(declare-fun bm!533387 () Bool)

(declare-fun call!533397 () List!64951)

(declare-fun call!533395 () List!64951)

(assert (=> bm!533387 (= call!533397 call!533395)))

(declare-fun d!1975840 () Bool)

(declare-fun c!1142815 () Bool)

(assert (=> d!1975840 (= c!1142815 (and ((_ is ElementMatch!16217) (regOne!32946 (regOne!32946 r!7292))) (= (c!1142690 (regOne!32946 (regOne!32946 r!7292))) (h!71274 s!2326))))))

(declare-fun e!3827978 () (InoxSet Context!11202))

(assert (=> d!1975840 (= (derivationStepZipperDown!1465 (regOne!32946 (regOne!32946 r!7292)) lt!2357742 (h!71274 s!2326)) e!3827978)))

(declare-fun b!6295839 () Bool)

(declare-fun call!533394 () (InoxSet Context!11202))

(assert (=> b!6295839 (= e!3827979 call!533394)))

(declare-fun b!6295840 () Bool)

(declare-fun e!3827977 () (InoxSet Context!11202))

(assert (=> b!6295840 (= e!3827977 e!3827980)))

(declare-fun c!1142816 () Bool)

(assert (=> b!6295840 (= c!1142816 ((_ is Concat!25062) (regOne!32946 (regOne!32946 r!7292))))))

(declare-fun b!6295841 () Bool)

(declare-fun e!3827975 () Bool)

(assert (=> b!6295841 (= e!3827975 (nullable!6210 (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))))))

(declare-fun bm!533388 () Bool)

(declare-fun c!1142814 () Bool)

(declare-fun call!533396 () (InoxSet Context!11202))

(assert (=> bm!533388 (= call!533396 (derivationStepZipperDown!1465 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))) (ite c!1142814 lt!2357742 (Context!11203 call!533395)) (h!71274 s!2326)))))

(declare-fun b!6295842 () Bool)

(assert (=> b!6295842 (= e!3827978 (store ((as const (Array Context!11202 Bool)) false) lt!2357742 true))))

(declare-fun b!6295843 () Bool)

(declare-fun e!3827976 () (InoxSet Context!11202))

(assert (=> b!6295843 (= e!3827978 e!3827976)))

(assert (=> b!6295843 (= c!1142814 ((_ is Union!16217) (regOne!32946 (regOne!32946 r!7292))))))

(declare-fun b!6295844 () Bool)

(assert (=> b!6295844 (= e!3827980 call!533394)))

(declare-fun c!1142817 () Bool)

(declare-fun bm!533389 () Bool)

(declare-fun $colon$colon!2082 (List!64951 Regex!16217) List!64951)

(assert (=> bm!533389 (= call!533395 ($colon$colon!2082 (exprs!6101 lt!2357742) (ite (or c!1142817 c!1142816) (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 r!7292)))))))

(declare-fun b!6295845 () Bool)

(assert (=> b!6295845 (= c!1142817 e!3827975)))

(declare-fun res!2596203 () Bool)

(assert (=> b!6295845 (=> (not res!2596203) (not e!3827975))))

(assert (=> b!6295845 (= res!2596203 ((_ is Concat!25062) (regOne!32946 (regOne!32946 r!7292))))))

(assert (=> b!6295845 (= e!3827976 e!3827977)))

(declare-fun b!6295846 () Bool)

(assert (=> b!6295846 (= e!3827979 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533390 () Bool)

(declare-fun call!533393 () (InoxSet Context!11202))

(declare-fun call!533392 () (InoxSet Context!11202))

(assert (=> bm!533390 (= call!533393 call!533392)))

(declare-fun b!6295847 () Bool)

(assert (=> b!6295847 (= e!3827977 ((_ map or) call!533396 call!533393))))

(declare-fun bm!533391 () Bool)

(assert (=> bm!533391 (= call!533392 (derivationStepZipperDown!1465 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292)))))) (ite (or c!1142814 c!1142817) lt!2357742 (Context!11203 call!533397)) (h!71274 s!2326)))))

(declare-fun bm!533392 () Bool)

(assert (=> bm!533392 (= call!533394 call!533393)))

(declare-fun b!6295848 () Bool)

(assert (=> b!6295848 (= e!3827976 ((_ map or) call!533396 call!533392))))

(assert (= (and d!1975840 c!1142815) b!6295842))

(assert (= (and d!1975840 (not c!1142815)) b!6295843))

(assert (= (and b!6295843 c!1142814) b!6295848))

(assert (= (and b!6295843 (not c!1142814)) b!6295845))

(assert (= (and b!6295845 res!2596203) b!6295841))

(assert (= (and b!6295845 c!1142817) b!6295847))

(assert (= (and b!6295845 (not c!1142817)) b!6295840))

(assert (= (and b!6295840 c!1142816) b!6295844))

(assert (= (and b!6295840 (not c!1142816)) b!6295838))

(assert (= (and b!6295838 c!1142818) b!6295839))

(assert (= (and b!6295838 (not c!1142818)) b!6295846))

(assert (= (or b!6295844 b!6295839) bm!533387))

(assert (= (or b!6295844 b!6295839) bm!533392))

(assert (= (or b!6295847 bm!533387) bm!533389))

(assert (= (or b!6295847 bm!533392) bm!533390))

(assert (= (or b!6295848 bm!533390) bm!533391))

(assert (= (or b!6295848 b!6295847) bm!533388))

(declare-fun m!7115598 () Bool)

(assert (=> bm!533388 m!7115598))

(declare-fun m!7115600 () Bool)

(assert (=> bm!533389 m!7115600))

(declare-fun m!7115602 () Bool)

(assert (=> b!6295841 m!7115602))

(declare-fun m!7115604 () Bool)

(assert (=> bm!533391 m!7115604))

(declare-fun m!7115606 () Bool)

(assert (=> b!6295842 m!7115606))

(assert (=> b!6295381 d!1975840))

(declare-fun d!1975842 () Bool)

(declare-fun c!1142821 () Bool)

(declare-fun isEmpty!36890 (List!64950) Bool)

(assert (=> d!1975842 (= c!1142821 (isEmpty!36890 (t!378516 s!2326)))))

(declare-fun e!3827983 () Bool)

(assert (=> d!1975842 (= (matchZipper!2229 lt!2357739 (t!378516 s!2326)) e!3827983)))

(declare-fun b!6295853 () Bool)

(declare-fun nullableZipper!1987 ((InoxSet Context!11202)) Bool)

(assert (=> b!6295853 (= e!3827983 (nullableZipper!1987 lt!2357739))))

(declare-fun b!6295854 () Bool)

(declare-fun derivationStepZipper!2183 ((InoxSet Context!11202) C!32704) (InoxSet Context!11202))

(declare-fun head!12935 (List!64950) C!32704)

(declare-fun tail!12020 (List!64950) List!64950)

(assert (=> b!6295854 (= e!3827983 (matchZipper!2229 (derivationStepZipper!2183 lt!2357739 (head!12935 (t!378516 s!2326))) (tail!12020 (t!378516 s!2326))))))

(assert (= (and d!1975842 c!1142821) b!6295853))

(assert (= (and d!1975842 (not c!1142821)) b!6295854))

(declare-fun m!7115608 () Bool)

(assert (=> d!1975842 m!7115608))

(declare-fun m!7115610 () Bool)

(assert (=> b!6295853 m!7115610))

(declare-fun m!7115612 () Bool)

(assert (=> b!6295854 m!7115612))

(assert (=> b!6295854 m!7115612))

(declare-fun m!7115614 () Bool)

(assert (=> b!6295854 m!7115614))

(declare-fun m!7115616 () Bool)

(assert (=> b!6295854 m!7115616))

(assert (=> b!6295854 m!7115614))

(assert (=> b!6295854 m!7115616))

(declare-fun m!7115618 () Bool)

(assert (=> b!6295854 m!7115618))

(assert (=> b!6295360 d!1975842))

(declare-fun d!1975844 () Bool)

(declare-fun nullableFct!2161 (Regex!16217) Bool)

(assert (=> d!1975844 (= (nullable!6210 (regOne!32946 (regOne!32946 r!7292))) (nullableFct!2161 (regOne!32946 (regOne!32946 r!7292))))))

(declare-fun bs!1574725 () Bool)

(assert (= bs!1574725 d!1975844))

(declare-fun m!7115620 () Bool)

(assert (=> bs!1574725 m!7115620))

(assert (=> b!6295379 d!1975844))

(declare-fun d!1975846 () Bool)

(declare-fun e!3827986 () Bool)

(assert (=> d!1975846 (= (matchZipper!2229 ((_ map or) lt!2357744 lt!2357739) (t!378516 s!2326)) e!3827986)))

(declare-fun res!2596206 () Bool)

(assert (=> d!1975846 (=> res!2596206 e!3827986)))

(assert (=> d!1975846 (= res!2596206 (matchZipper!2229 lt!2357744 (t!378516 s!2326)))))

(declare-fun lt!2357819 () Unit!158199)

(declare-fun choose!46782 ((InoxSet Context!11202) (InoxSet Context!11202) List!64950) Unit!158199)

(assert (=> d!1975846 (= lt!2357819 (choose!46782 lt!2357744 lt!2357739 (t!378516 s!2326)))))

(assert (=> d!1975846 (= (lemmaZipperConcatMatchesSameAsBothZippers!1048 lt!2357744 lt!2357739 (t!378516 s!2326)) lt!2357819)))

(declare-fun b!6295857 () Bool)

(assert (=> b!6295857 (= e!3827986 (matchZipper!2229 lt!2357739 (t!378516 s!2326)))))

(assert (= (and d!1975846 (not res!2596206)) b!6295857))

(assert (=> d!1975846 m!7115316))

(assert (=> d!1975846 m!7115314))

(declare-fun m!7115622 () Bool)

(assert (=> d!1975846 m!7115622))

(assert (=> b!6295857 m!7115294))

(assert (=> b!6295364 d!1975846))

(declare-fun d!1975848 () Bool)

(declare-fun c!1142822 () Bool)

(assert (=> d!1975848 (= c!1142822 (isEmpty!36890 (t!378516 s!2326)))))

(declare-fun e!3827987 () Bool)

(assert (=> d!1975848 (= (matchZipper!2229 lt!2357744 (t!378516 s!2326)) e!3827987)))

(declare-fun b!6295858 () Bool)

(assert (=> b!6295858 (= e!3827987 (nullableZipper!1987 lt!2357744))))

(declare-fun b!6295859 () Bool)

(assert (=> b!6295859 (= e!3827987 (matchZipper!2229 (derivationStepZipper!2183 lt!2357744 (head!12935 (t!378516 s!2326))) (tail!12020 (t!378516 s!2326))))))

(assert (= (and d!1975848 c!1142822) b!6295858))

(assert (= (and d!1975848 (not c!1142822)) b!6295859))

(assert (=> d!1975848 m!7115608))

(declare-fun m!7115624 () Bool)

(assert (=> b!6295858 m!7115624))

(assert (=> b!6295859 m!7115612))

(assert (=> b!6295859 m!7115612))

(declare-fun m!7115626 () Bool)

(assert (=> b!6295859 m!7115626))

(assert (=> b!6295859 m!7115616))

(assert (=> b!6295859 m!7115626))

(assert (=> b!6295859 m!7115616))

(declare-fun m!7115628 () Bool)

(assert (=> b!6295859 m!7115628))

(assert (=> b!6295364 d!1975848))

(declare-fun d!1975850 () Bool)

(declare-fun c!1142823 () Bool)

(assert (=> d!1975850 (= c!1142823 (isEmpty!36890 (t!378516 s!2326)))))

(declare-fun e!3827988 () Bool)

(assert (=> d!1975850 (= (matchZipper!2229 ((_ map or) lt!2357744 lt!2357739) (t!378516 s!2326)) e!3827988)))

(declare-fun b!6295860 () Bool)

(assert (=> b!6295860 (= e!3827988 (nullableZipper!1987 ((_ map or) lt!2357744 lt!2357739)))))

(declare-fun b!6295861 () Bool)

(assert (=> b!6295861 (= e!3827988 (matchZipper!2229 (derivationStepZipper!2183 ((_ map or) lt!2357744 lt!2357739) (head!12935 (t!378516 s!2326))) (tail!12020 (t!378516 s!2326))))))

(assert (= (and d!1975850 c!1142823) b!6295860))

(assert (= (and d!1975850 (not c!1142823)) b!6295861))

(assert (=> d!1975850 m!7115608))

(declare-fun m!7115630 () Bool)

(assert (=> b!6295860 m!7115630))

(assert (=> b!6295861 m!7115612))

(assert (=> b!6295861 m!7115612))

(declare-fun m!7115632 () Bool)

(assert (=> b!6295861 m!7115632))

(assert (=> b!6295861 m!7115616))

(assert (=> b!6295861 m!7115632))

(assert (=> b!6295861 m!7115616))

(declare-fun m!7115634 () Bool)

(assert (=> b!6295861 m!7115634))

(assert (=> b!6295364 d!1975850))

(declare-fun d!1975852 () Bool)

(assert (=> d!1975852 (= (isEmpty!36886 (t!378518 zl!343)) ((_ is Nil!64828) (t!378518 zl!343)))))

(assert (=> b!6295373 d!1975852))

(declare-fun b!6295880 () Bool)

(declare-fun e!3828008 () Bool)

(declare-fun call!533405 () Bool)

(assert (=> b!6295880 (= e!3828008 call!533405)))

(declare-fun b!6295881 () Bool)

(declare-fun e!3828006 () Bool)

(declare-fun e!3828009 () Bool)

(assert (=> b!6295881 (= e!3828006 e!3828009)))

(declare-fun res!2596217 () Bool)

(assert (=> b!6295881 (= res!2596217 (not (nullable!6210 (reg!16546 r!7292))))))

(assert (=> b!6295881 (=> (not res!2596217) (not e!3828009))))

(declare-fun b!6295882 () Bool)

(declare-fun e!3828005 () Bool)

(assert (=> b!6295882 (= e!3828005 call!533405)))

(declare-fun b!6295883 () Bool)

(declare-fun e!3828007 () Bool)

(assert (=> b!6295883 (= e!3828007 e!3828005)))

(declare-fun res!2596219 () Bool)

(assert (=> b!6295883 (=> (not res!2596219) (not e!3828005))))

(declare-fun call!533404 () Bool)

(assert (=> b!6295883 (= res!2596219 call!533404)))

(declare-fun bm!533399 () Bool)

(declare-fun call!533406 () Bool)

(assert (=> bm!533399 (= call!533404 call!533406)))

(declare-fun b!6295884 () Bool)

(assert (=> b!6295884 (= e!3828009 call!533406)))

(declare-fun b!6295885 () Bool)

(declare-fun res!2596221 () Bool)

(assert (=> b!6295885 (=> res!2596221 e!3828007)))

(assert (=> b!6295885 (= res!2596221 (not ((_ is Concat!25062) r!7292)))))

(declare-fun e!3828004 () Bool)

(assert (=> b!6295885 (= e!3828004 e!3828007)))

(declare-fun bm!533400 () Bool)

(declare-fun c!1142829 () Bool)

(declare-fun c!1142828 () Bool)

(assert (=> bm!533400 (= call!533406 (validRegex!7953 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))))))

(declare-fun b!6295886 () Bool)

(declare-fun e!3828003 () Bool)

(assert (=> b!6295886 (= e!3828003 e!3828006)))

(assert (=> b!6295886 (= c!1142828 ((_ is Star!16217) r!7292))))

(declare-fun bm!533401 () Bool)

(assert (=> bm!533401 (= call!533405 (validRegex!7953 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))))))

(declare-fun d!1975854 () Bool)

(declare-fun res!2596220 () Bool)

(assert (=> d!1975854 (=> res!2596220 e!3828003)))

(assert (=> d!1975854 (= res!2596220 ((_ is ElementMatch!16217) r!7292))))

(assert (=> d!1975854 (= (validRegex!7953 r!7292) e!3828003)))

(declare-fun b!6295887 () Bool)

(assert (=> b!6295887 (= e!3828006 e!3828004)))

(assert (=> b!6295887 (= c!1142829 ((_ is Union!16217) r!7292))))

(declare-fun b!6295888 () Bool)

(declare-fun res!2596218 () Bool)

(assert (=> b!6295888 (=> (not res!2596218) (not e!3828008))))

(assert (=> b!6295888 (= res!2596218 call!533404)))

(assert (=> b!6295888 (= e!3828004 e!3828008)))

(assert (= (and d!1975854 (not res!2596220)) b!6295886))

(assert (= (and b!6295886 c!1142828) b!6295881))

(assert (= (and b!6295886 (not c!1142828)) b!6295887))

(assert (= (and b!6295881 res!2596217) b!6295884))

(assert (= (and b!6295887 c!1142829) b!6295888))

(assert (= (and b!6295887 (not c!1142829)) b!6295885))

(assert (= (and b!6295888 res!2596218) b!6295880))

(assert (= (and b!6295885 (not res!2596221)) b!6295883))

(assert (= (and b!6295883 res!2596219) b!6295882))

(assert (= (or b!6295880 b!6295882) bm!533401))

(assert (= (or b!6295888 b!6295883) bm!533399))

(assert (= (or b!6295884 bm!533399) bm!533400))

(declare-fun m!7115636 () Bool)

(assert (=> b!6295881 m!7115636))

(declare-fun m!7115638 () Bool)

(assert (=> bm!533400 m!7115638))

(declare-fun m!7115640 () Bool)

(assert (=> bm!533401 m!7115640))

(assert (=> start!625550 d!1975854))

(declare-fun bs!1574726 () Bool)

(declare-fun b!6295930 () Bool)

(assert (= bs!1574726 (and b!6295930 d!1975794)))

(declare-fun lambda!345966 () Int)

(assert (=> bs!1574726 (not (= lambda!345966 lambda!345946))))

(declare-fun bs!1574727 () Bool)

(assert (= bs!1574727 (and b!6295930 d!1975810)))

(assert (=> bs!1574727 (not (= lambda!345966 lambda!345958))))

(declare-fun bs!1574728 () Bool)

(assert (= bs!1574728 (and b!6295930 b!6295367)))

(assert (=> bs!1574728 (not (= lambda!345966 lambda!345916))))

(assert (=> bs!1574728 (not (= lambda!345966 lambda!345915))))

(assert (=> bs!1574727 (not (= lambda!345966 lambda!345957))))

(assert (=> b!6295930 true))

(assert (=> b!6295930 true))

(declare-fun bs!1574729 () Bool)

(declare-fun b!6295928 () Bool)

(assert (= bs!1574729 (and b!6295928 d!1975794)))

(declare-fun lambda!345967 () Int)

(assert (=> bs!1574729 (not (= lambda!345967 lambda!345946))))

(declare-fun bs!1574730 () Bool)

(assert (= bs!1574730 (and b!6295928 d!1975810)))

(assert (=> bs!1574730 (= lambda!345967 lambda!345958)))

(declare-fun bs!1574731 () Bool)

(assert (= bs!1574731 (and b!6295928 b!6295930)))

(assert (=> bs!1574731 (not (= lambda!345967 lambda!345966))))

(declare-fun bs!1574732 () Bool)

(assert (= bs!1574732 (and b!6295928 b!6295367)))

(assert (=> bs!1574732 (= lambda!345967 lambda!345916)))

(assert (=> bs!1574732 (not (= lambda!345967 lambda!345915))))

(assert (=> bs!1574730 (not (= lambda!345967 lambda!345957))))

(assert (=> b!6295928 true))

(assert (=> b!6295928 true))

(declare-fun b!6295921 () Bool)

(declare-fun res!2596239 () Bool)

(declare-fun e!3828030 () Bool)

(assert (=> b!6295921 (=> res!2596239 e!3828030)))

(declare-fun call!533412 () Bool)

(assert (=> b!6295921 (= res!2596239 call!533412)))

(declare-fun e!3828033 () Bool)

(assert (=> b!6295921 (= e!3828033 e!3828030)))

(declare-fun b!6295922 () Bool)

(declare-fun e!3828032 () Bool)

(assert (=> b!6295922 (= e!3828032 (= s!2326 (Cons!64826 (c!1142690 r!7292) Nil!64826)))))

(declare-fun b!6295923 () Bool)

(declare-fun e!3828028 () Bool)

(assert (=> b!6295923 (= e!3828028 e!3828033)))

(declare-fun c!1142840 () Bool)

(assert (=> b!6295923 (= c!1142840 ((_ is Star!16217) r!7292))))

(declare-fun b!6295924 () Bool)

(declare-fun e!3828034 () Bool)

(assert (=> b!6295924 (= e!3828028 e!3828034)))

(declare-fun res!2596240 () Bool)

(assert (=> b!6295924 (= res!2596240 (matchRSpec!3318 (regOne!32947 r!7292) s!2326))))

(assert (=> b!6295924 (=> res!2596240 e!3828034)))

(declare-fun bm!533406 () Bool)

(assert (=> bm!533406 (= call!533412 (isEmpty!36890 s!2326))))

(declare-fun b!6295925 () Bool)

(declare-fun e!3828029 () Bool)

(assert (=> b!6295925 (= e!3828029 call!533412)))

(declare-fun b!6295926 () Bool)

(declare-fun c!1142838 () Bool)

(assert (=> b!6295926 (= c!1142838 ((_ is ElementMatch!16217) r!7292))))

(declare-fun e!3828031 () Bool)

(assert (=> b!6295926 (= e!3828031 e!3828032)))

(declare-fun b!6295927 () Bool)

(assert (=> b!6295927 (= e!3828029 e!3828031)))

(declare-fun res!2596238 () Bool)

(assert (=> b!6295927 (= res!2596238 (not ((_ is EmptyLang!16217) r!7292)))))

(assert (=> b!6295927 (=> (not res!2596238) (not e!3828031))))

(declare-fun call!533411 () Bool)

(assert (=> b!6295928 (= e!3828033 call!533411)))

(declare-fun b!6295929 () Bool)

(declare-fun c!1142839 () Bool)

(assert (=> b!6295929 (= c!1142839 ((_ is Union!16217) r!7292))))

(assert (=> b!6295929 (= e!3828032 e!3828028)))

(declare-fun bm!533407 () Bool)

(assert (=> bm!533407 (= call!533411 (Exists!3287 (ite c!1142840 lambda!345966 lambda!345967)))))

(declare-fun d!1975856 () Bool)

(declare-fun c!1142841 () Bool)

(assert (=> d!1975856 (= c!1142841 ((_ is EmptyExpr!16217) r!7292))))

(assert (=> d!1975856 (= (matchRSpec!3318 r!7292 s!2326) e!3828029)))

(assert (=> b!6295930 (= e!3828030 call!533411)))

(declare-fun b!6295931 () Bool)

(assert (=> b!6295931 (= e!3828034 (matchRSpec!3318 (regTwo!32947 r!7292) s!2326))))

(assert (= (and d!1975856 c!1142841) b!6295925))

(assert (= (and d!1975856 (not c!1142841)) b!6295927))

(assert (= (and b!6295927 res!2596238) b!6295926))

(assert (= (and b!6295926 c!1142838) b!6295922))

(assert (= (and b!6295926 (not c!1142838)) b!6295929))

(assert (= (and b!6295929 c!1142839) b!6295924))

(assert (= (and b!6295929 (not c!1142839)) b!6295923))

(assert (= (and b!6295924 (not res!2596240)) b!6295931))

(assert (= (and b!6295923 c!1142840) b!6295921))

(assert (= (and b!6295923 (not c!1142840)) b!6295928))

(assert (= (and b!6295921 (not res!2596239)) b!6295930))

(assert (= (or b!6295930 b!6295928) bm!533407))

(assert (= (or b!6295925 b!6295921) bm!533406))

(declare-fun m!7115642 () Bool)

(assert (=> b!6295924 m!7115642))

(declare-fun m!7115644 () Bool)

(assert (=> bm!533406 m!7115644))

(declare-fun m!7115646 () Bool)

(assert (=> bm!533407 m!7115646))

(declare-fun m!7115648 () Bool)

(assert (=> b!6295931 m!7115648))

(assert (=> b!6295371 d!1975856))

(declare-fun b!6295960 () Bool)

(declare-fun e!3828050 () Bool)

(declare-fun e!3828049 () Bool)

(assert (=> b!6295960 (= e!3828050 e!3828049)))

(declare-fun res!2596260 () Bool)

(assert (=> b!6295960 (=> (not res!2596260) (not e!3828049))))

(declare-fun lt!2357822 () Bool)

(assert (=> b!6295960 (= res!2596260 (not lt!2357822))))

(declare-fun b!6295961 () Bool)

(declare-fun e!3828051 () Bool)

(assert (=> b!6295961 (= e!3828051 (nullable!6210 r!7292))))

(declare-fun b!6295962 () Bool)

(declare-fun e!3828053 () Bool)

(assert (=> b!6295962 (= e!3828053 (not lt!2357822))))

(declare-fun b!6295963 () Bool)

(declare-fun res!2596263 () Bool)

(declare-fun e!3828052 () Bool)

(assert (=> b!6295963 (=> (not res!2596263) (not e!3828052))))

(declare-fun call!533415 () Bool)

(assert (=> b!6295963 (= res!2596263 (not call!533415))))

(declare-fun bm!533410 () Bool)

(assert (=> bm!533410 (= call!533415 (isEmpty!36890 s!2326))))

(declare-fun b!6295964 () Bool)

(declare-fun res!2596257 () Bool)

(declare-fun e!3828055 () Bool)

(assert (=> b!6295964 (=> res!2596257 e!3828055)))

(assert (=> b!6295964 (= res!2596257 (not (isEmpty!36890 (tail!12020 s!2326))))))

(declare-fun b!6295965 () Bool)

(declare-fun derivativeStep!4926 (Regex!16217 C!32704) Regex!16217)

(assert (=> b!6295965 (= e!3828051 (matchR!8400 (derivativeStep!4926 r!7292 (head!12935 s!2326)) (tail!12020 s!2326)))))

(declare-fun b!6295966 () Bool)

(assert (=> b!6295966 (= e!3828049 e!3828055)))

(declare-fun res!2596261 () Bool)

(assert (=> b!6295966 (=> res!2596261 e!3828055)))

(assert (=> b!6295966 (= res!2596261 call!533415)))

(declare-fun b!6295967 () Bool)

(declare-fun res!2596262 () Bool)

(assert (=> b!6295967 (=> res!2596262 e!3828050)))

(assert (=> b!6295967 (= res!2596262 e!3828052)))

(declare-fun res!2596259 () Bool)

(assert (=> b!6295967 (=> (not res!2596259) (not e!3828052))))

(assert (=> b!6295967 (= res!2596259 lt!2357822)))

(declare-fun b!6295968 () Bool)

(assert (=> b!6295968 (= e!3828055 (not (= (head!12935 s!2326) (c!1142690 r!7292))))))

(declare-fun b!6295970 () Bool)

(declare-fun e!3828054 () Bool)

(assert (=> b!6295970 (= e!3828054 (= lt!2357822 call!533415))))

(declare-fun b!6295971 () Bool)

(declare-fun res!2596258 () Bool)

(assert (=> b!6295971 (=> (not res!2596258) (not e!3828052))))

(assert (=> b!6295971 (= res!2596258 (isEmpty!36890 (tail!12020 s!2326)))))

(declare-fun b!6295972 () Bool)

(assert (=> b!6295972 (= e!3828052 (= (head!12935 s!2326) (c!1142690 r!7292)))))

(declare-fun b!6295973 () Bool)

(declare-fun res!2596264 () Bool)

(assert (=> b!6295973 (=> res!2596264 e!3828050)))

(assert (=> b!6295973 (= res!2596264 (not ((_ is ElementMatch!16217) r!7292)))))

(assert (=> b!6295973 (= e!3828053 e!3828050)))

(declare-fun d!1975858 () Bool)

(assert (=> d!1975858 e!3828054))

(declare-fun c!1142849 () Bool)

(assert (=> d!1975858 (= c!1142849 ((_ is EmptyExpr!16217) r!7292))))

(assert (=> d!1975858 (= lt!2357822 e!3828051)))

(declare-fun c!1142850 () Bool)

(assert (=> d!1975858 (= c!1142850 (isEmpty!36890 s!2326))))

(assert (=> d!1975858 (validRegex!7953 r!7292)))

(assert (=> d!1975858 (= (matchR!8400 r!7292 s!2326) lt!2357822)))

(declare-fun b!6295969 () Bool)

(assert (=> b!6295969 (= e!3828054 e!3828053)))

(declare-fun c!1142848 () Bool)

(assert (=> b!6295969 (= c!1142848 ((_ is EmptyLang!16217) r!7292))))

(assert (= (and d!1975858 c!1142850) b!6295961))

(assert (= (and d!1975858 (not c!1142850)) b!6295965))

(assert (= (and d!1975858 c!1142849) b!6295970))

(assert (= (and d!1975858 (not c!1142849)) b!6295969))

(assert (= (and b!6295969 c!1142848) b!6295962))

(assert (= (and b!6295969 (not c!1142848)) b!6295973))

(assert (= (and b!6295973 (not res!2596264)) b!6295967))

(assert (= (and b!6295967 res!2596259) b!6295963))

(assert (= (and b!6295963 res!2596263) b!6295971))

(assert (= (and b!6295971 res!2596258) b!6295972))

(assert (= (and b!6295967 (not res!2596262)) b!6295960))

(assert (= (and b!6295960 res!2596260) b!6295966))

(assert (= (and b!6295966 (not res!2596261)) b!6295964))

(assert (= (and b!6295964 (not res!2596257)) b!6295968))

(assert (= (or b!6295970 b!6295963 b!6295966) bm!533410))

(declare-fun m!7115650 () Bool)

(assert (=> b!6295965 m!7115650))

(assert (=> b!6295965 m!7115650))

(declare-fun m!7115652 () Bool)

(assert (=> b!6295965 m!7115652))

(declare-fun m!7115654 () Bool)

(assert (=> b!6295965 m!7115654))

(assert (=> b!6295965 m!7115652))

(assert (=> b!6295965 m!7115654))

(declare-fun m!7115656 () Bool)

(assert (=> b!6295965 m!7115656))

(assert (=> b!6295971 m!7115654))

(assert (=> b!6295971 m!7115654))

(declare-fun m!7115658 () Bool)

(assert (=> b!6295971 m!7115658))

(assert (=> d!1975858 m!7115644))

(assert (=> d!1975858 m!7115326))

(declare-fun m!7115660 () Bool)

(assert (=> b!6295961 m!7115660))

(assert (=> b!6295968 m!7115650))

(assert (=> b!6295972 m!7115650))

(assert (=> bm!533410 m!7115644))

(assert (=> b!6295964 m!7115654))

(assert (=> b!6295964 m!7115654))

(assert (=> b!6295964 m!7115658))

(assert (=> b!6295371 d!1975858))

(declare-fun d!1975860 () Bool)

(assert (=> d!1975860 (= (matchR!8400 r!7292 s!2326) (matchRSpec!3318 r!7292 s!2326))))

(declare-fun lt!2357825 () Unit!158199)

(declare-fun choose!46783 (Regex!16217 List!64950) Unit!158199)

(assert (=> d!1975860 (= lt!2357825 (choose!46783 r!7292 s!2326))))

(assert (=> d!1975860 (validRegex!7953 r!7292)))

(assert (=> d!1975860 (= (mainMatchTheorem!3318 r!7292 s!2326) lt!2357825)))

(declare-fun bs!1574733 () Bool)

(assert (= bs!1574733 d!1975860))

(assert (=> bs!1574733 m!7115266))

(assert (=> bs!1574733 m!7115264))

(declare-fun m!7115662 () Bool)

(assert (=> bs!1574733 m!7115662))

(assert (=> bs!1574733 m!7115326))

(assert (=> b!6295371 d!1975860))

(declare-fun bs!1574734 () Bool)

(declare-fun d!1975862 () Bool)

(assert (= bs!1574734 (and d!1975862 d!1975764)))

(declare-fun lambda!345970 () Int)

(assert (=> bs!1574734 (= lambda!345970 lambda!345929)))

(declare-fun bs!1574735 () Bool)

(assert (= bs!1574735 (and d!1975862 d!1975832)))

(assert (=> bs!1574735 (= lambda!345970 lambda!345961)))

(declare-fun b!6295994 () Bool)

(declare-fun e!3828068 () Bool)

(declare-fun lt!2357828 () Regex!16217)

(assert (=> b!6295994 (= e!3828068 (= lt!2357828 (head!12934 (unfocusZipperList!1638 zl!343))))))

(declare-fun b!6295995 () Bool)

(declare-fun e!3828069 () Bool)

(assert (=> b!6295995 (= e!3828069 (isEmpty!36885 (t!378517 (unfocusZipperList!1638 zl!343))))))

(declare-fun b!6295996 () Bool)

(declare-fun e!3828071 () Regex!16217)

(assert (=> b!6295996 (= e!3828071 EmptyLang!16217)))

(declare-fun b!6295997 () Bool)

(declare-fun e!3828073 () Bool)

(declare-fun e!3828070 () Bool)

(assert (=> b!6295997 (= e!3828073 e!3828070)))

(declare-fun c!1142859 () Bool)

(assert (=> b!6295997 (= c!1142859 (isEmpty!36885 (unfocusZipperList!1638 zl!343)))))

(declare-fun b!6295998 () Bool)

(declare-fun e!3828072 () Regex!16217)

(assert (=> b!6295998 (= e!3828072 (h!71275 (unfocusZipperList!1638 zl!343)))))

(declare-fun b!6295999 () Bool)

(assert (=> b!6295999 (= e!3828072 e!3828071)))

(declare-fun c!1142862 () Bool)

(assert (=> b!6295999 (= c!1142862 ((_ is Cons!64827) (unfocusZipperList!1638 zl!343)))))

(declare-fun b!6296000 () Bool)

(declare-fun isEmptyLang!1630 (Regex!16217) Bool)

(assert (=> b!6296000 (= e!3828070 (isEmptyLang!1630 lt!2357828))))

(declare-fun b!6296001 () Bool)

(declare-fun isUnion!1060 (Regex!16217) Bool)

(assert (=> b!6296001 (= e!3828068 (isUnion!1060 lt!2357828))))

(declare-fun b!6296002 () Bool)

(assert (=> b!6296002 (= e!3828071 (Union!16217 (h!71275 (unfocusZipperList!1638 zl!343)) (generalisedUnion!2061 (t!378517 (unfocusZipperList!1638 zl!343)))))))

(declare-fun b!6296003 () Bool)

(assert (=> b!6296003 (= e!3828070 e!3828068)))

(declare-fun c!1142861 () Bool)

(assert (=> b!6296003 (= c!1142861 (isEmpty!36885 (tail!12019 (unfocusZipperList!1638 zl!343))))))

(assert (=> d!1975862 e!3828073))

(declare-fun res!2596270 () Bool)

(assert (=> d!1975862 (=> (not res!2596270) (not e!3828073))))

(assert (=> d!1975862 (= res!2596270 (validRegex!7953 lt!2357828))))

(assert (=> d!1975862 (= lt!2357828 e!3828072)))

(declare-fun c!1142860 () Bool)

(assert (=> d!1975862 (= c!1142860 e!3828069)))

(declare-fun res!2596269 () Bool)

(assert (=> d!1975862 (=> (not res!2596269) (not e!3828069))))

(assert (=> d!1975862 (= res!2596269 ((_ is Cons!64827) (unfocusZipperList!1638 zl!343)))))

(assert (=> d!1975862 (forall!15367 (unfocusZipperList!1638 zl!343) lambda!345970)))

(assert (=> d!1975862 (= (generalisedUnion!2061 (unfocusZipperList!1638 zl!343)) lt!2357828)))

(assert (= (and d!1975862 res!2596269) b!6295995))

(assert (= (and d!1975862 c!1142860) b!6295998))

(assert (= (and d!1975862 (not c!1142860)) b!6295999))

(assert (= (and b!6295999 c!1142862) b!6296002))

(assert (= (and b!6295999 (not c!1142862)) b!6295996))

(assert (= (and d!1975862 res!2596270) b!6295997))

(assert (= (and b!6295997 c!1142859) b!6296000))

(assert (= (and b!6295997 (not c!1142859)) b!6296003))

(assert (= (and b!6296003 c!1142861) b!6295994))

(assert (= (and b!6296003 (not c!1142861)) b!6296001))

(declare-fun m!7115664 () Bool)

(assert (=> b!6296000 m!7115664))

(assert (=> b!6295994 m!7115272))

(declare-fun m!7115666 () Bool)

(assert (=> b!6295994 m!7115666))

(declare-fun m!7115668 () Bool)

(assert (=> b!6296001 m!7115668))

(declare-fun m!7115670 () Bool)

(assert (=> d!1975862 m!7115670))

(assert (=> d!1975862 m!7115272))

(declare-fun m!7115672 () Bool)

(assert (=> d!1975862 m!7115672))

(assert (=> b!6296003 m!7115272))

(declare-fun m!7115674 () Bool)

(assert (=> b!6296003 m!7115674))

(assert (=> b!6296003 m!7115674))

(declare-fun m!7115676 () Bool)

(assert (=> b!6296003 m!7115676))

(declare-fun m!7115678 () Bool)

(assert (=> b!6296002 m!7115678))

(declare-fun m!7115680 () Bool)

(assert (=> b!6295995 m!7115680))

(assert (=> b!6295997 m!7115272))

(declare-fun m!7115682 () Bool)

(assert (=> b!6295997 m!7115682))

(assert (=> b!6295356 d!1975862))

(declare-fun bs!1574736 () Bool)

(declare-fun d!1975864 () Bool)

(assert (= bs!1574736 (and d!1975864 d!1975764)))

(declare-fun lambda!345973 () Int)

(assert (=> bs!1574736 (= lambda!345973 lambda!345929)))

(declare-fun bs!1574737 () Bool)

(assert (= bs!1574737 (and d!1975864 d!1975832)))

(assert (=> bs!1574737 (= lambda!345973 lambda!345961)))

(declare-fun bs!1574738 () Bool)

(assert (= bs!1574738 (and d!1975864 d!1975862)))

(assert (=> bs!1574738 (= lambda!345973 lambda!345970)))

(declare-fun lt!2357831 () List!64951)

(assert (=> d!1975864 (forall!15367 lt!2357831 lambda!345973)))

(declare-fun e!3828076 () List!64951)

(assert (=> d!1975864 (= lt!2357831 e!3828076)))

(declare-fun c!1142865 () Bool)

(assert (=> d!1975864 (= c!1142865 ((_ is Cons!64828) zl!343))))

(assert (=> d!1975864 (= (unfocusZipperList!1638 zl!343) lt!2357831)))

(declare-fun b!6296008 () Bool)

(assert (=> b!6296008 (= e!3828076 (Cons!64827 (generalisedConcat!1814 (exprs!6101 (h!71276 zl!343))) (unfocusZipperList!1638 (t!378518 zl!343))))))

(declare-fun b!6296009 () Bool)

(assert (=> b!6296009 (= e!3828076 Nil!64827)))

(assert (= (and d!1975864 c!1142865) b!6296008))

(assert (= (and d!1975864 (not c!1142865)) b!6296009))

(declare-fun m!7115684 () Bool)

(assert (=> d!1975864 m!7115684))

(assert (=> b!6296008 m!7115324))

(declare-fun m!7115686 () Bool)

(assert (=> b!6296008 m!7115686))

(assert (=> b!6295356 d!1975864))

(declare-fun bs!1574739 () Bool)

(declare-fun d!1975866 () Bool)

(assert (= bs!1574739 (and d!1975866 d!1975764)))

(declare-fun lambda!345974 () Int)

(assert (=> bs!1574739 (= lambda!345974 lambda!345929)))

(declare-fun bs!1574740 () Bool)

(assert (= bs!1574740 (and d!1975866 d!1975832)))

(assert (=> bs!1574740 (= lambda!345974 lambda!345961)))

(declare-fun bs!1574741 () Bool)

(assert (= bs!1574741 (and d!1975866 d!1975862)))

(assert (=> bs!1574741 (= lambda!345974 lambda!345970)))

(declare-fun bs!1574742 () Bool)

(assert (= bs!1574742 (and d!1975866 d!1975864)))

(assert (=> bs!1574742 (= lambda!345974 lambda!345973)))

(assert (=> d!1975866 (= (inv!83789 (h!71276 zl!343)) (forall!15367 (exprs!6101 (h!71276 zl!343)) lambda!345974))))

(declare-fun bs!1574743 () Bool)

(assert (= bs!1574743 d!1975866))

(declare-fun m!7115688 () Bool)

(assert (=> bs!1574743 m!7115688))

(assert (=> b!6295365 d!1975866))

(declare-fun bs!1574744 () Bool)

(declare-fun d!1975868 () Bool)

(assert (= bs!1574744 (and d!1975868 d!1975832)))

(declare-fun lambda!345975 () Int)

(assert (=> bs!1574744 (= lambda!345975 lambda!345961)))

(declare-fun bs!1574745 () Bool)

(assert (= bs!1574745 (and d!1975868 d!1975764)))

(assert (=> bs!1574745 (= lambda!345975 lambda!345929)))

(declare-fun bs!1574746 () Bool)

(assert (= bs!1574746 (and d!1975868 d!1975866)))

(assert (=> bs!1574746 (= lambda!345975 lambda!345974)))

(declare-fun bs!1574747 () Bool)

(assert (= bs!1574747 (and d!1975868 d!1975864)))

(assert (=> bs!1574747 (= lambda!345975 lambda!345973)))

(declare-fun bs!1574748 () Bool)

(assert (= bs!1574748 (and d!1975868 d!1975862)))

(assert (=> bs!1574748 (= lambda!345975 lambda!345970)))

(assert (=> d!1975868 (= (inv!83789 setElem!42856) (forall!15367 (exprs!6101 setElem!42856) lambda!345975))))

(declare-fun bs!1574749 () Bool)

(assert (= bs!1574749 d!1975868))

(declare-fun m!7115690 () Bool)

(assert (=> bs!1574749 m!7115690))

(assert (=> setNonEmpty!42856 d!1975868))

(declare-fun b!6296010 () Bool)

(declare-fun c!1142870 () Bool)

(assert (=> b!6296010 (= c!1142870 ((_ is Star!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun e!3828082 () (InoxSet Context!11202))

(declare-fun e!3828081 () (InoxSet Context!11202))

(assert (=> b!6296010 (= e!3828082 e!3828081)))

(declare-fun bm!533411 () Bool)

(declare-fun call!533421 () List!64951)

(declare-fun call!533419 () List!64951)

(assert (=> bm!533411 (= call!533421 call!533419)))

(declare-fun d!1975870 () Bool)

(declare-fun c!1142867 () Bool)

(assert (=> d!1975870 (= c!1142867 (and ((_ is ElementMatch!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))) (= (c!1142690 (h!71275 (exprs!6101 (h!71276 zl!343)))) (h!71274 s!2326))))))

(declare-fun e!3828080 () (InoxSet Context!11202))

(assert (=> d!1975870 (= (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (h!71276 zl!343))) lt!2357738 (h!71274 s!2326)) e!3828080)))

(declare-fun b!6296011 () Bool)

(declare-fun call!533418 () (InoxSet Context!11202))

(assert (=> b!6296011 (= e!3828081 call!533418)))

(declare-fun b!6296012 () Bool)

(declare-fun e!3828079 () (InoxSet Context!11202))

(assert (=> b!6296012 (= e!3828079 e!3828082)))

(declare-fun c!1142868 () Bool)

(assert (=> b!6296012 (= c!1142868 ((_ is Concat!25062) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296013 () Bool)

(declare-fun e!3828077 () Bool)

(assert (=> b!6296013 (= e!3828077 (nullable!6210 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun c!1142866 () Bool)

(declare-fun bm!533412 () Bool)

(declare-fun call!533420 () (InoxSet Context!11202))

(assert (=> bm!533412 (= call!533420 (derivationStepZipperDown!1465 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))) (ite c!1142866 lt!2357738 (Context!11203 call!533419)) (h!71274 s!2326)))))

(declare-fun b!6296014 () Bool)

(assert (=> b!6296014 (= e!3828080 (store ((as const (Array Context!11202 Bool)) false) lt!2357738 true))))

(declare-fun b!6296015 () Bool)

(declare-fun e!3828078 () (InoxSet Context!11202))

(assert (=> b!6296015 (= e!3828080 e!3828078)))

(assert (=> b!6296015 (= c!1142866 ((_ is Union!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296016 () Bool)

(assert (=> b!6296016 (= e!3828082 call!533418)))

(declare-fun c!1142869 () Bool)

(declare-fun bm!533413 () Bool)

(assert (=> bm!533413 (= call!533419 ($colon$colon!2082 (exprs!6101 lt!2357738) (ite (or c!1142869 c!1142868) (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (h!71275 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun b!6296017 () Bool)

(assert (=> b!6296017 (= c!1142869 e!3828077)))

(declare-fun res!2596271 () Bool)

(assert (=> b!6296017 (=> (not res!2596271) (not e!3828077))))

(assert (=> b!6296017 (= res!2596271 ((_ is Concat!25062) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> b!6296017 (= e!3828078 e!3828079)))

(declare-fun b!6296018 () Bool)

(assert (=> b!6296018 (= e!3828081 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533414 () Bool)

(declare-fun call!533417 () (InoxSet Context!11202))

(declare-fun call!533416 () (InoxSet Context!11202))

(assert (=> bm!533414 (= call!533417 call!533416)))

(declare-fun b!6296019 () Bool)

(assert (=> b!6296019 (= e!3828079 ((_ map or) call!533420 call!533417))))

(declare-fun bm!533415 () Bool)

(assert (=> bm!533415 (= call!533416 (derivationStepZipperDown!1465 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343))))))) (ite (or c!1142866 c!1142869) lt!2357738 (Context!11203 call!533421)) (h!71274 s!2326)))))

(declare-fun bm!533416 () Bool)

(assert (=> bm!533416 (= call!533418 call!533417)))

(declare-fun b!6296020 () Bool)

(assert (=> b!6296020 (= e!3828078 ((_ map or) call!533420 call!533416))))

(assert (= (and d!1975870 c!1142867) b!6296014))

(assert (= (and d!1975870 (not c!1142867)) b!6296015))

(assert (= (and b!6296015 c!1142866) b!6296020))

(assert (= (and b!6296015 (not c!1142866)) b!6296017))

(assert (= (and b!6296017 res!2596271) b!6296013))

(assert (= (and b!6296017 c!1142869) b!6296019))

(assert (= (and b!6296017 (not c!1142869)) b!6296012))

(assert (= (and b!6296012 c!1142868) b!6296016))

(assert (= (and b!6296012 (not c!1142868)) b!6296010))

(assert (= (and b!6296010 c!1142870) b!6296011))

(assert (= (and b!6296010 (not c!1142870)) b!6296018))

(assert (= (or b!6296016 b!6296011) bm!533411))

(assert (= (or b!6296016 b!6296011) bm!533416))

(assert (= (or b!6296019 bm!533411) bm!533413))

(assert (= (or b!6296019 bm!533416) bm!533414))

(assert (= (or b!6296020 bm!533414) bm!533415))

(assert (= (or b!6296020 b!6296019) bm!533412))

(declare-fun m!7115692 () Bool)

(assert (=> bm!533412 m!7115692))

(declare-fun m!7115694 () Bool)

(assert (=> bm!533413 m!7115694))

(declare-fun m!7115696 () Bool)

(assert (=> b!6296013 m!7115696))

(declare-fun m!7115698 () Bool)

(assert (=> bm!533415 m!7115698))

(declare-fun m!7115700 () Bool)

(assert (=> b!6296014 m!7115700))

(assert (=> b!6295355 d!1975870))

(declare-fun d!1975872 () Bool)

(assert (=> d!1975872 (= (nullable!6210 (h!71275 (exprs!6101 (h!71276 zl!343)))) (nullableFct!2161 (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun bs!1574750 () Bool)

(assert (= bs!1574750 d!1975872))

(declare-fun m!7115702 () Bool)

(assert (=> bs!1574750 m!7115702))

(assert (=> b!6295355 d!1975872))

(declare-fun d!1975874 () Bool)

(declare-fun c!1142875 () Bool)

(declare-fun e!3828091 () Bool)

(assert (=> d!1975874 (= c!1142875 e!3828091)))

(declare-fun res!2596274 () Bool)

(assert (=> d!1975874 (=> (not res!2596274) (not e!3828091))))

(assert (=> d!1975874 (= res!2596274 ((_ is Cons!64827) (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))

(declare-fun e!3828090 () (InoxSet Context!11202))

(assert (=> d!1975874 (= (derivationStepZipperUp!1391 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))) (h!71274 s!2326)) e!3828090)))

(declare-fun b!6296031 () Bool)

(declare-fun e!3828089 () (InoxSet Context!11202))

(declare-fun call!533424 () (InoxSet Context!11202))

(assert (=> b!6296031 (= e!3828089 call!533424)))

(declare-fun b!6296032 () Bool)

(assert (=> b!6296032 (= e!3828090 ((_ map or) call!533424 (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (h!71274 s!2326))))))

(declare-fun b!6296033 () Bool)

(assert (=> b!6296033 (= e!3828090 e!3828089)))

(declare-fun c!1142876 () Bool)

(assert (=> b!6296033 (= c!1142876 ((_ is Cons!64827) (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))

(declare-fun b!6296034 () Bool)

(assert (=> b!6296034 (= e!3828091 (nullable!6210 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun b!6296035 () Bool)

(assert (=> b!6296035 (= e!3828089 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533419 () Bool)

(assert (=> bm!533419 (= call!533424 (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))) (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (h!71274 s!2326)))))

(assert (= (and d!1975874 res!2596274) b!6296034))

(assert (= (and d!1975874 c!1142875) b!6296032))

(assert (= (and d!1975874 (not c!1142875)) b!6296033))

(assert (= (and b!6296033 c!1142876) b!6296031))

(assert (= (and b!6296033 (not c!1142876)) b!6296035))

(assert (= (or b!6296032 b!6296031) bm!533419))

(declare-fun m!7115704 () Bool)

(assert (=> b!6296032 m!7115704))

(declare-fun m!7115706 () Bool)

(assert (=> b!6296034 m!7115706))

(declare-fun m!7115708 () Bool)

(assert (=> bm!533419 m!7115708))

(assert (=> b!6295355 d!1975874))

(declare-fun d!1975876 () Bool)

(declare-fun dynLambda!25661 (Int Context!11202) (InoxSet Context!11202))

(assert (=> d!1975876 (= (flatMap!1722 z!1189 lambda!345917) (dynLambda!25661 lambda!345917 (h!71276 zl!343)))))

(declare-fun lt!2357834 () Unit!158199)

(declare-fun choose!46784 ((InoxSet Context!11202) Context!11202 Int) Unit!158199)

(assert (=> d!1975876 (= lt!2357834 (choose!46784 z!1189 (h!71276 zl!343) lambda!345917))))

(assert (=> d!1975876 (= z!1189 (store ((as const (Array Context!11202 Bool)) false) (h!71276 zl!343) true))))

(assert (=> d!1975876 (= (lemmaFlatMapOnSingletonSet!1248 z!1189 (h!71276 zl!343) lambda!345917) lt!2357834)))

(declare-fun b_lambda!239553 () Bool)

(assert (=> (not b_lambda!239553) (not d!1975876)))

(declare-fun bs!1574751 () Bool)

(assert (= bs!1574751 d!1975876))

(assert (=> bs!1574751 m!7115300))

(declare-fun m!7115710 () Bool)

(assert (=> bs!1574751 m!7115710))

(declare-fun m!7115712 () Bool)

(assert (=> bs!1574751 m!7115712))

(declare-fun m!7115714 () Bool)

(assert (=> bs!1574751 m!7115714))

(assert (=> b!6295355 d!1975876))

(declare-fun d!1975878 () Bool)

(declare-fun choose!46785 ((InoxSet Context!11202) Int) (InoxSet Context!11202))

(assert (=> d!1975878 (= (flatMap!1722 z!1189 lambda!345917) (choose!46785 z!1189 lambda!345917))))

(declare-fun bs!1574752 () Bool)

(assert (= bs!1574752 d!1975878))

(declare-fun m!7115716 () Bool)

(assert (=> bs!1574752 m!7115716))

(assert (=> b!6295355 d!1975878))

(declare-fun d!1975880 () Bool)

(declare-fun c!1142877 () Bool)

(declare-fun e!3828094 () Bool)

(assert (=> d!1975880 (= c!1142877 e!3828094)))

(declare-fun res!2596275 () Bool)

(assert (=> d!1975880 (=> (not res!2596275) (not e!3828094))))

(assert (=> d!1975880 (= res!2596275 ((_ is Cons!64827) (exprs!6101 lt!2357738)))))

(declare-fun e!3828093 () (InoxSet Context!11202))

(assert (=> d!1975880 (= (derivationStepZipperUp!1391 lt!2357738 (h!71274 s!2326)) e!3828093)))

(declare-fun b!6296036 () Bool)

(declare-fun e!3828092 () (InoxSet Context!11202))

(declare-fun call!533425 () (InoxSet Context!11202))

(assert (=> b!6296036 (= e!3828092 call!533425)))

(declare-fun b!6296037 () Bool)

(assert (=> b!6296037 (= e!3828093 ((_ map or) call!533425 (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 lt!2357738))) (h!71274 s!2326))))))

(declare-fun b!6296038 () Bool)

(assert (=> b!6296038 (= e!3828093 e!3828092)))

(declare-fun c!1142878 () Bool)

(assert (=> b!6296038 (= c!1142878 ((_ is Cons!64827) (exprs!6101 lt!2357738)))))

(declare-fun b!6296039 () Bool)

(assert (=> b!6296039 (= e!3828094 (nullable!6210 (h!71275 (exprs!6101 lt!2357738))))))

(declare-fun b!6296040 () Bool)

(assert (=> b!6296040 (= e!3828092 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533420 () Bool)

(assert (=> bm!533420 (= call!533425 (derivationStepZipperDown!1465 (h!71275 (exprs!6101 lt!2357738)) (Context!11203 (t!378517 (exprs!6101 lt!2357738))) (h!71274 s!2326)))))

(assert (= (and d!1975880 res!2596275) b!6296039))

(assert (= (and d!1975880 c!1142877) b!6296037))

(assert (= (and d!1975880 (not c!1142877)) b!6296038))

(assert (= (and b!6296038 c!1142878) b!6296036))

(assert (= (and b!6296038 (not c!1142878)) b!6296040))

(assert (= (or b!6296037 b!6296036) bm!533420))

(declare-fun m!7115718 () Bool)

(assert (=> b!6296037 m!7115718))

(declare-fun m!7115720 () Bool)

(assert (=> b!6296039 m!7115720))

(declare-fun m!7115722 () Bool)

(assert (=> bm!533420 m!7115722))

(assert (=> b!6295355 d!1975880))

(declare-fun d!1975882 () Bool)

(declare-fun c!1142879 () Bool)

(declare-fun e!3828097 () Bool)

(assert (=> d!1975882 (= c!1142879 e!3828097)))

(declare-fun res!2596276 () Bool)

(assert (=> d!1975882 (=> (not res!2596276) (not e!3828097))))

(assert (=> d!1975882 (= res!2596276 ((_ is Cons!64827) (exprs!6101 (h!71276 zl!343))))))

(declare-fun e!3828096 () (InoxSet Context!11202))

(assert (=> d!1975882 (= (derivationStepZipperUp!1391 (h!71276 zl!343) (h!71274 s!2326)) e!3828096)))

(declare-fun b!6296041 () Bool)

(declare-fun e!3828095 () (InoxSet Context!11202))

(declare-fun call!533426 () (InoxSet Context!11202))

(assert (=> b!6296041 (= e!3828095 call!533426)))

(declare-fun b!6296042 () Bool)

(assert (=> b!6296042 (= e!3828096 ((_ map or) call!533426 (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))) (h!71274 s!2326))))))

(declare-fun b!6296043 () Bool)

(assert (=> b!6296043 (= e!3828096 e!3828095)))

(declare-fun c!1142880 () Bool)

(assert (=> b!6296043 (= c!1142880 ((_ is Cons!64827) (exprs!6101 (h!71276 zl!343))))))

(declare-fun b!6296044 () Bool)

(assert (=> b!6296044 (= e!3828097 (nullable!6210 (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296045 () Bool)

(assert (=> b!6296045 (= e!3828095 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533421 () Bool)

(assert (=> bm!533421 (= call!533426 (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (h!71276 zl!343))) (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))) (h!71274 s!2326)))))

(assert (= (and d!1975882 res!2596276) b!6296044))

(assert (= (and d!1975882 c!1142879) b!6296042))

(assert (= (and d!1975882 (not c!1142879)) b!6296043))

(assert (= (and b!6296043 c!1142880) b!6296041))

(assert (= (and b!6296043 (not c!1142880)) b!6296045))

(assert (= (or b!6296042 b!6296041) bm!533421))

(declare-fun m!7115724 () Bool)

(assert (=> b!6296042 m!7115724))

(assert (=> b!6296044 m!7115304))

(declare-fun m!7115726 () Bool)

(assert (=> bm!533421 m!7115726))

(assert (=> b!6295355 d!1975882))

(declare-fun b!6296050 () Bool)

(declare-fun e!3828100 () Bool)

(declare-fun tp!1752745 () Bool)

(declare-fun tp!1752746 () Bool)

(assert (=> b!6296050 (= e!3828100 (and tp!1752745 tp!1752746))))

(assert (=> b!6295357 (= tp!1752680 e!3828100)))

(assert (= (and b!6295357 ((_ is Cons!64827) (exprs!6101 (h!71276 zl!343)))) b!6296050))

(declare-fun b!6296055 () Bool)

(declare-fun e!3828103 () Bool)

(declare-fun tp!1752749 () Bool)

(assert (=> b!6296055 (= e!3828103 (and tp_is_empty!41687 tp!1752749))))

(assert (=> b!6295372 (= tp!1752674 e!3828103)))

(assert (= (and b!6295372 ((_ is Cons!64826) (t!378516 s!2326))) b!6296055))

(declare-fun b!6296066 () Bool)

(declare-fun e!3828106 () Bool)

(assert (=> b!6296066 (= e!3828106 tp_is_empty!41687)))

(declare-fun b!6296068 () Bool)

(declare-fun tp!1752763 () Bool)

(assert (=> b!6296068 (= e!3828106 tp!1752763)))

(declare-fun b!6296067 () Bool)

(declare-fun tp!1752760 () Bool)

(declare-fun tp!1752761 () Bool)

(assert (=> b!6296067 (= e!3828106 (and tp!1752760 tp!1752761))))

(assert (=> b!6295363 (= tp!1752677 e!3828106)))

(declare-fun b!6296069 () Bool)

(declare-fun tp!1752764 () Bool)

(declare-fun tp!1752762 () Bool)

(assert (=> b!6296069 (= e!3828106 (and tp!1752764 tp!1752762))))

(assert (= (and b!6295363 ((_ is ElementMatch!16217) (reg!16546 r!7292))) b!6296066))

(assert (= (and b!6295363 ((_ is Concat!25062) (reg!16546 r!7292))) b!6296067))

(assert (= (and b!6295363 ((_ is Star!16217) (reg!16546 r!7292))) b!6296068))

(assert (= (and b!6295363 ((_ is Union!16217) (reg!16546 r!7292))) b!6296069))

(declare-fun b!6296070 () Bool)

(declare-fun e!3828107 () Bool)

(declare-fun tp!1752765 () Bool)

(declare-fun tp!1752766 () Bool)

(assert (=> b!6296070 (= e!3828107 (and tp!1752765 tp!1752766))))

(assert (=> b!6295377 (= tp!1752682 e!3828107)))

(assert (= (and b!6295377 ((_ is Cons!64827) (exprs!6101 setElem!42856))) b!6296070))

(declare-fun b!6296071 () Bool)

(declare-fun e!3828108 () Bool)

(assert (=> b!6296071 (= e!3828108 tp_is_empty!41687)))

(declare-fun b!6296073 () Bool)

(declare-fun tp!1752770 () Bool)

(assert (=> b!6296073 (= e!3828108 tp!1752770)))

(declare-fun b!6296072 () Bool)

(declare-fun tp!1752767 () Bool)

(declare-fun tp!1752768 () Bool)

(assert (=> b!6296072 (= e!3828108 (and tp!1752767 tp!1752768))))

(assert (=> b!6295375 (= tp!1752679 e!3828108)))

(declare-fun b!6296074 () Bool)

(declare-fun tp!1752771 () Bool)

(declare-fun tp!1752769 () Bool)

(assert (=> b!6296074 (= e!3828108 (and tp!1752771 tp!1752769))))

(assert (= (and b!6295375 ((_ is ElementMatch!16217) (regOne!32947 r!7292))) b!6296071))

(assert (= (and b!6295375 ((_ is Concat!25062) (regOne!32947 r!7292))) b!6296072))

(assert (= (and b!6295375 ((_ is Star!16217) (regOne!32947 r!7292))) b!6296073))

(assert (= (and b!6295375 ((_ is Union!16217) (regOne!32947 r!7292))) b!6296074))

(declare-fun b!6296075 () Bool)

(declare-fun e!3828109 () Bool)

(assert (=> b!6296075 (= e!3828109 tp_is_empty!41687)))

(declare-fun b!6296077 () Bool)

(declare-fun tp!1752775 () Bool)

(assert (=> b!6296077 (= e!3828109 tp!1752775)))

(declare-fun b!6296076 () Bool)

(declare-fun tp!1752772 () Bool)

(declare-fun tp!1752773 () Bool)

(assert (=> b!6296076 (= e!3828109 (and tp!1752772 tp!1752773))))

(assert (=> b!6295375 (= tp!1752675 e!3828109)))

(declare-fun b!6296078 () Bool)

(declare-fun tp!1752776 () Bool)

(declare-fun tp!1752774 () Bool)

(assert (=> b!6296078 (= e!3828109 (and tp!1752776 tp!1752774))))

(assert (= (and b!6295375 ((_ is ElementMatch!16217) (regTwo!32947 r!7292))) b!6296075))

(assert (= (and b!6295375 ((_ is Concat!25062) (regTwo!32947 r!7292))) b!6296076))

(assert (= (and b!6295375 ((_ is Star!16217) (regTwo!32947 r!7292))) b!6296077))

(assert (= (and b!6295375 ((_ is Union!16217) (regTwo!32947 r!7292))) b!6296078))

(declare-fun b!6296079 () Bool)

(declare-fun e!3828110 () Bool)

(assert (=> b!6296079 (= e!3828110 tp_is_empty!41687)))

(declare-fun b!6296081 () Bool)

(declare-fun tp!1752780 () Bool)

(assert (=> b!6296081 (= e!3828110 tp!1752780)))

(declare-fun b!6296080 () Bool)

(declare-fun tp!1752777 () Bool)

(declare-fun tp!1752778 () Bool)

(assert (=> b!6296080 (= e!3828110 (and tp!1752777 tp!1752778))))

(assert (=> b!6295361 (= tp!1752681 e!3828110)))

(declare-fun b!6296082 () Bool)

(declare-fun tp!1752781 () Bool)

(declare-fun tp!1752779 () Bool)

(assert (=> b!6296082 (= e!3828110 (and tp!1752781 tp!1752779))))

(assert (= (and b!6295361 ((_ is ElementMatch!16217) (regOne!32946 r!7292))) b!6296079))

(assert (= (and b!6295361 ((_ is Concat!25062) (regOne!32946 r!7292))) b!6296080))

(assert (= (and b!6295361 ((_ is Star!16217) (regOne!32946 r!7292))) b!6296081))

(assert (= (and b!6295361 ((_ is Union!16217) (regOne!32946 r!7292))) b!6296082))

(declare-fun b!6296083 () Bool)

(declare-fun e!3828111 () Bool)

(assert (=> b!6296083 (= e!3828111 tp_is_empty!41687)))

(declare-fun b!6296085 () Bool)

(declare-fun tp!1752785 () Bool)

(assert (=> b!6296085 (= e!3828111 tp!1752785)))

(declare-fun b!6296084 () Bool)

(declare-fun tp!1752782 () Bool)

(declare-fun tp!1752783 () Bool)

(assert (=> b!6296084 (= e!3828111 (and tp!1752782 tp!1752783))))

(assert (=> b!6295361 (= tp!1752678 e!3828111)))

(declare-fun b!6296086 () Bool)

(declare-fun tp!1752786 () Bool)

(declare-fun tp!1752784 () Bool)

(assert (=> b!6296086 (= e!3828111 (and tp!1752786 tp!1752784))))

(assert (= (and b!6295361 ((_ is ElementMatch!16217) (regTwo!32946 r!7292))) b!6296083))

(assert (= (and b!6295361 ((_ is Concat!25062) (regTwo!32946 r!7292))) b!6296084))

(assert (= (and b!6295361 ((_ is Star!16217) (regTwo!32946 r!7292))) b!6296085))

(assert (= (and b!6295361 ((_ is Union!16217) (regTwo!32946 r!7292))) b!6296086))

(declare-fun b!6296094 () Bool)

(declare-fun e!3828117 () Bool)

(declare-fun tp!1752791 () Bool)

(assert (=> b!6296094 (= e!3828117 tp!1752791)))

(declare-fun tp!1752792 () Bool)

(declare-fun e!3828116 () Bool)

(declare-fun b!6296093 () Bool)

(assert (=> b!6296093 (= e!3828116 (and (inv!83789 (h!71276 (t!378518 zl!343))) e!3828117 tp!1752792))))

(assert (=> b!6295365 (= tp!1752673 e!3828116)))

(assert (= b!6296093 b!6296094))

(assert (= (and b!6295365 ((_ is Cons!64828) (t!378518 zl!343))) b!6296093))

(declare-fun m!7115728 () Bool)

(assert (=> b!6296093 m!7115728))

(declare-fun condSetEmpty!42862 () Bool)

(assert (=> setNonEmpty!42856 (= condSetEmpty!42862 (= setRest!42856 ((as const (Array Context!11202 Bool)) false)))))

(declare-fun setRes!42862 () Bool)

(assert (=> setNonEmpty!42856 (= tp!1752676 setRes!42862)))

(declare-fun setIsEmpty!42862 () Bool)

(assert (=> setIsEmpty!42862 setRes!42862))

(declare-fun e!3828120 () Bool)

(declare-fun setElem!42862 () Context!11202)

(declare-fun tp!1752797 () Bool)

(declare-fun setNonEmpty!42862 () Bool)

(assert (=> setNonEmpty!42862 (= setRes!42862 (and tp!1752797 (inv!83789 setElem!42862) e!3828120))))

(declare-fun setRest!42862 () (InoxSet Context!11202))

(assert (=> setNonEmpty!42862 (= setRest!42856 ((_ map or) (store ((as const (Array Context!11202 Bool)) false) setElem!42862 true) setRest!42862))))

(declare-fun b!6296099 () Bool)

(declare-fun tp!1752798 () Bool)

(assert (=> b!6296099 (= e!3828120 tp!1752798)))

(assert (= (and setNonEmpty!42856 condSetEmpty!42862) setIsEmpty!42862))

(assert (= (and setNonEmpty!42856 (not condSetEmpty!42862)) setNonEmpty!42862))

(assert (= setNonEmpty!42862 b!6296099))

(declare-fun m!7115730 () Bool)

(assert (=> setNonEmpty!42862 m!7115730))

(declare-fun b_lambda!239555 () Bool)

(assert (= b_lambda!239553 (or b!6295355 b_lambda!239555)))

(declare-fun bs!1574753 () Bool)

(declare-fun d!1975884 () Bool)

(assert (= bs!1574753 (and d!1975884 b!6295355)))

(assert (=> bs!1574753 (= (dynLambda!25661 lambda!345917 (h!71276 zl!343)) (derivationStepZipperUp!1391 (h!71276 zl!343) (h!71274 s!2326)))))

(assert (=> bs!1574753 m!7115302))

(assert (=> d!1975876 d!1975884))

(check-sat (not b!6296068) (not b!6296073) (not b!6295861) (not bm!533420) (not d!1975844) (not b!6296082) (not b!6296055) (not b!6296077) (not bm!533413) (not b!6295971) (not b!6295924) (not d!1975826) (not b!6295965) (not d!1975832) (not b!6296067) (not b!6296084) (not bm!533415) (not b!6295546) (not b!6295931) (not d!1975864) (not d!1975768) (not b!6295812) (not setNonEmpty!42862) (not b!6296086) (not bm!533391) (not b!6296008) (not b!6295994) (not b!6295841) (not d!1975764) (not d!1975868) (not b!6295552) (not d!1975862) (not bm!533389) (not bm!533388) (not d!1975842) (not d!1975858) (not d!1975878) (not bm!533421) (not b!6296003) (not b!6295857) (not b!6295858) (not d!1975866) (not b!6296076) tp_is_empty!41687 (not b!6295806) (not b!6295815) (not b!6296085) (not b!6295968) (not b!6295853) (not b!6295961) (not d!1975876) (not b!6295972) (not b!6295854) (not b!6296069) (not bm!533412) (not b!6296037) (not b!6295549) (not bs!1574753) (not d!1975850) (not b!6296080) (not b!6295881) (not d!1975846) (not bm!533406) (not d!1975818) (not d!1975810) (not b!6295550) (not b!6296002) (not b!6296099) (not b!6296039) (not b!6296078) (not b!6295859) (not b!6295809) (not b!6295995) (not d!1975784) (not d!1975872) (not d!1975848) (not b!6296000) (not b!6295814) (not b!6296001) (not b!6296034) (not b!6295997) (not b!6296093) (not bm!533407) (not b!6296081) (not b!6295860) (not b!6296094) (not d!1975860) (not bm!533400) (not b!6295810) (not b!6296070) (not b!6295964) (not bm!533410) (not b!6296044) (not b!6295726) (not b!6296013) (not d!1975766) (not b!6296072) (not b!6296050) (not d!1975790) (not b!6295545) (not b!6296042) (not bm!533401) (not b!6296074) (not bm!533419) (not b!6296032) (not b!6295547) (not b_lambda!239555) (not b!6295808) (not d!1975794))
(check-sat)
(get-model)

(declare-fun d!1975986 () Bool)

(assert (=> d!1975986 (= (Exists!3287 lambda!345957) (choose!46776 lambda!345957))))

(declare-fun bs!1574783 () Bool)

(assert (= bs!1574783 d!1975986))

(declare-fun m!7115938 () Bool)

(assert (=> bs!1574783 m!7115938))

(assert (=> d!1975810 d!1975986))

(declare-fun d!1975992 () Bool)

(assert (=> d!1975992 (= (Exists!3287 lambda!345958) (choose!46776 lambda!345958))))

(declare-fun bs!1574784 () Bool)

(assert (= bs!1574784 d!1975992))

(declare-fun m!7115940 () Bool)

(assert (=> bs!1574784 m!7115940))

(assert (=> d!1975810 d!1975992))

(declare-fun bs!1574815 () Bool)

(declare-fun d!1975994 () Bool)

(assert (= bs!1574815 (and d!1975994 d!1975794)))

(declare-fun lambda!346001 () Int)

(assert (=> bs!1574815 (= lambda!346001 lambda!345946)))

(declare-fun bs!1574816 () Bool)

(assert (= bs!1574816 (and d!1975994 b!6295928)))

(assert (=> bs!1574816 (not (= lambda!346001 lambda!345967))))

(declare-fun bs!1574818 () Bool)

(assert (= bs!1574818 (and d!1975994 d!1975810)))

(assert (=> bs!1574818 (not (= lambda!346001 lambda!345958))))

(declare-fun bs!1574821 () Bool)

(assert (= bs!1574821 (and d!1975994 b!6295930)))

(assert (=> bs!1574821 (not (= lambda!346001 lambda!345966))))

(declare-fun bs!1574824 () Bool)

(assert (= bs!1574824 (and d!1975994 b!6295367)))

(assert (=> bs!1574824 (not (= lambda!346001 lambda!345916))))

(assert (=> bs!1574824 (= lambda!346001 lambda!345915)))

(assert (=> bs!1574818 (= lambda!346001 lambda!345957)))

(assert (=> d!1975994 true))

(assert (=> d!1975994 true))

(assert (=> d!1975994 true))

(declare-fun lambda!346003 () Int)

(assert (=> bs!1574816 (= lambda!346003 lambda!345967)))

(assert (=> bs!1574818 (= lambda!346003 lambda!345958)))

(assert (=> bs!1574821 (not (= lambda!346003 lambda!345966))))

(assert (=> bs!1574824 (= lambda!346003 lambda!345916)))

(assert (=> bs!1574824 (not (= lambda!346003 lambda!345915))))

(assert (=> bs!1574818 (not (= lambda!346003 lambda!345957))))

(assert (=> bs!1574815 (not (= lambda!346003 lambda!345946))))

(declare-fun bs!1574837 () Bool)

(assert (= bs!1574837 d!1975994))

(assert (=> bs!1574837 (not (= lambda!346003 lambda!346001))))

(assert (=> d!1975994 true))

(assert (=> d!1975994 true))

(assert (=> d!1975994 true))

(assert (=> d!1975994 (= (Exists!3287 lambda!346001) (Exists!3287 lambda!346003))))

(assert (=> d!1975994 true))

(declare-fun _$90!2127 () Unit!158199)

(assert (=> d!1975994 (= (choose!46778 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326) _$90!2127)))

(declare-fun m!7115998 () Bool)

(assert (=> bs!1574837 m!7115998))

(declare-fun m!7116000 () Bool)

(assert (=> bs!1574837 m!7116000))

(assert (=> d!1975810 d!1975994))

(declare-fun b!6296389 () Bool)

(declare-fun e!3828307 () Bool)

(declare-fun call!533504 () Bool)

(assert (=> b!6296389 (= e!3828307 call!533504)))

(declare-fun b!6296390 () Bool)

(declare-fun e!3828305 () Bool)

(declare-fun e!3828308 () Bool)

(assert (=> b!6296390 (= e!3828305 e!3828308)))

(declare-fun res!2596399 () Bool)

(assert (=> b!6296390 (= res!2596399 (not (nullable!6210 (reg!16546 (regOne!32946 r!7292)))))))

(assert (=> b!6296390 (=> (not res!2596399) (not e!3828308))))

(declare-fun b!6296391 () Bool)

(declare-fun e!3828304 () Bool)

(assert (=> b!6296391 (= e!3828304 call!533504)))

(declare-fun b!6296392 () Bool)

(declare-fun e!3828306 () Bool)

(assert (=> b!6296392 (= e!3828306 e!3828304)))

(declare-fun res!2596401 () Bool)

(assert (=> b!6296392 (=> (not res!2596401) (not e!3828304))))

(declare-fun call!533503 () Bool)

(assert (=> b!6296392 (= res!2596401 call!533503)))

(declare-fun bm!533498 () Bool)

(declare-fun call!533505 () Bool)

(assert (=> bm!533498 (= call!533503 call!533505)))

(declare-fun b!6296393 () Bool)

(assert (=> b!6296393 (= e!3828308 call!533505)))

(declare-fun b!6296394 () Bool)

(declare-fun res!2596403 () Bool)

(assert (=> b!6296394 (=> res!2596403 e!3828306)))

(assert (=> b!6296394 (= res!2596403 (not ((_ is Concat!25062) (regOne!32946 r!7292))))))

(declare-fun e!3828303 () Bool)

(assert (=> b!6296394 (= e!3828303 e!3828306)))

(declare-fun bm!533499 () Bool)

(declare-fun c!1142969 () Bool)

(declare-fun c!1142970 () Bool)

(assert (=> bm!533499 (= call!533505 (validRegex!7953 (ite c!1142969 (reg!16546 (regOne!32946 r!7292)) (ite c!1142970 (regOne!32947 (regOne!32946 r!7292)) (regOne!32946 (regOne!32946 r!7292))))))))

(declare-fun b!6296395 () Bool)

(declare-fun e!3828302 () Bool)

(assert (=> b!6296395 (= e!3828302 e!3828305)))

(assert (=> b!6296395 (= c!1142969 ((_ is Star!16217) (regOne!32946 r!7292)))))

(declare-fun bm!533500 () Bool)

(assert (=> bm!533500 (= call!533504 (validRegex!7953 (ite c!1142970 (regTwo!32947 (regOne!32946 r!7292)) (regTwo!32946 (regOne!32946 r!7292)))))))

(declare-fun d!1976028 () Bool)

(declare-fun res!2596402 () Bool)

(assert (=> d!1976028 (=> res!2596402 e!3828302)))

(assert (=> d!1976028 (= res!2596402 ((_ is ElementMatch!16217) (regOne!32946 r!7292)))))

(assert (=> d!1976028 (= (validRegex!7953 (regOne!32946 r!7292)) e!3828302)))

(declare-fun b!6296396 () Bool)

(assert (=> b!6296396 (= e!3828305 e!3828303)))

(assert (=> b!6296396 (= c!1142970 ((_ is Union!16217) (regOne!32946 r!7292)))))

(declare-fun b!6296397 () Bool)

(declare-fun res!2596400 () Bool)

(assert (=> b!6296397 (=> (not res!2596400) (not e!3828307))))

(assert (=> b!6296397 (= res!2596400 call!533503)))

(assert (=> b!6296397 (= e!3828303 e!3828307)))

(assert (= (and d!1976028 (not res!2596402)) b!6296395))

(assert (= (and b!6296395 c!1142969) b!6296390))

(assert (= (and b!6296395 (not c!1142969)) b!6296396))

(assert (= (and b!6296390 res!2596399) b!6296393))

(assert (= (and b!6296396 c!1142970) b!6296397))

(assert (= (and b!6296396 (not c!1142970)) b!6296394))

(assert (= (and b!6296397 res!2596400) b!6296389))

(assert (= (and b!6296394 (not res!2596403)) b!6296392))

(assert (= (and b!6296392 res!2596401) b!6296391))

(assert (= (or b!6296389 b!6296391) bm!533500))

(assert (= (or b!6296397 b!6296392) bm!533498))

(assert (= (or b!6296393 bm!533498) bm!533499))

(declare-fun m!7116004 () Bool)

(assert (=> b!6296390 m!7116004))

(declare-fun m!7116006 () Bool)

(assert (=> bm!533499 m!7116006))

(declare-fun m!7116008 () Bool)

(assert (=> bm!533500 m!7116008))

(assert (=> d!1975810 d!1976028))

(declare-fun d!1976032 () Bool)

(assert (=> d!1976032 (= (isEmpty!36889 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326)) (not ((_ is Some!16107) (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326))))))

(assert (=> d!1975818 d!1976032))

(declare-fun d!1976034 () Bool)

(declare-fun c!1142975 () Bool)

(assert (=> d!1976034 (= c!1142975 (isEmpty!36890 (tail!12020 (t!378516 s!2326))))))

(declare-fun e!3828316 () Bool)

(assert (=> d!1976034 (= (matchZipper!2229 (derivationStepZipper!2183 ((_ map or) lt!2357744 lt!2357739) (head!12935 (t!378516 s!2326))) (tail!12020 (t!378516 s!2326))) e!3828316)))

(declare-fun b!6296409 () Bool)

(assert (=> b!6296409 (= e!3828316 (nullableZipper!1987 (derivationStepZipper!2183 ((_ map or) lt!2357744 lt!2357739) (head!12935 (t!378516 s!2326)))))))

(declare-fun b!6296410 () Bool)

(assert (=> b!6296410 (= e!3828316 (matchZipper!2229 (derivationStepZipper!2183 (derivationStepZipper!2183 ((_ map or) lt!2357744 lt!2357739) (head!12935 (t!378516 s!2326))) (head!12935 (tail!12020 (t!378516 s!2326)))) (tail!12020 (tail!12020 (t!378516 s!2326)))))))

(assert (= (and d!1976034 c!1142975) b!6296409))

(assert (= (and d!1976034 (not c!1142975)) b!6296410))

(assert (=> d!1976034 m!7115616))

(declare-fun m!7116010 () Bool)

(assert (=> d!1976034 m!7116010))

(assert (=> b!6296409 m!7115632))

(declare-fun m!7116012 () Bool)

(assert (=> b!6296409 m!7116012))

(assert (=> b!6296410 m!7115616))

(declare-fun m!7116014 () Bool)

(assert (=> b!6296410 m!7116014))

(assert (=> b!6296410 m!7115632))

(assert (=> b!6296410 m!7116014))

(declare-fun m!7116016 () Bool)

(assert (=> b!6296410 m!7116016))

(assert (=> b!6296410 m!7115616))

(declare-fun m!7116018 () Bool)

(assert (=> b!6296410 m!7116018))

(assert (=> b!6296410 m!7116016))

(assert (=> b!6296410 m!7116018))

(declare-fun m!7116020 () Bool)

(assert (=> b!6296410 m!7116020))

(assert (=> b!6295861 d!1976034))

(declare-fun bs!1574861 () Bool)

(declare-fun d!1976036 () Bool)

(assert (= bs!1574861 (and d!1976036 b!6295355)))

(declare-fun lambda!346010 () Int)

(assert (=> bs!1574861 (= (= (head!12935 (t!378516 s!2326)) (h!71274 s!2326)) (= lambda!346010 lambda!345917))))

(assert (=> d!1976036 true))

(assert (=> d!1976036 (= (derivationStepZipper!2183 ((_ map or) lt!2357744 lt!2357739) (head!12935 (t!378516 s!2326))) (flatMap!1722 ((_ map or) lt!2357744 lt!2357739) lambda!346010))))

(declare-fun bs!1574862 () Bool)

(assert (= bs!1574862 d!1976036))

(declare-fun m!7116022 () Bool)

(assert (=> bs!1574862 m!7116022))

(assert (=> b!6295861 d!1976036))

(declare-fun d!1976038 () Bool)

(assert (=> d!1976038 (= (head!12935 (t!378516 s!2326)) (h!71274 (t!378516 s!2326)))))

(assert (=> b!6295861 d!1976038))

(declare-fun d!1976040 () Bool)

(assert (=> d!1976040 (= (tail!12020 (t!378516 s!2326)) (t!378516 (t!378516 s!2326)))))

(assert (=> b!6295861 d!1976040))

(declare-fun d!1976046 () Bool)

(assert (=> d!1976046 (= (isEmpty!36890 s!2326) ((_ is Nil!64826) s!2326))))

(assert (=> bm!533410 d!1976046))

(declare-fun bs!1574863 () Bool)

(declare-fun b!6296427 () Bool)

(assert (= bs!1574863 (and b!6296427 d!1975994)))

(declare-fun lambda!346011 () Int)

(assert (=> bs!1574863 (not (= lambda!346011 lambda!346003))))

(declare-fun bs!1574864 () Bool)

(assert (= bs!1574864 (and b!6296427 b!6295928)))

(assert (=> bs!1574864 (not (= lambda!346011 lambda!345967))))

(declare-fun bs!1574865 () Bool)

(assert (= bs!1574865 (and b!6296427 d!1975810)))

(assert (=> bs!1574865 (not (= lambda!346011 lambda!345958))))

(declare-fun bs!1574866 () Bool)

(assert (= bs!1574866 (and b!6296427 b!6295930)))

(assert (=> bs!1574866 (= (and (= (reg!16546 (regOne!32947 r!7292)) (reg!16546 r!7292)) (= (regOne!32947 r!7292) r!7292)) (= lambda!346011 lambda!345966))))

(declare-fun bs!1574867 () Bool)

(assert (= bs!1574867 (and b!6296427 b!6295367)))

(assert (=> bs!1574867 (not (= lambda!346011 lambda!345916))))

(assert (=> bs!1574867 (not (= lambda!346011 lambda!345915))))

(assert (=> bs!1574865 (not (= lambda!346011 lambda!345957))))

(declare-fun bs!1574868 () Bool)

(assert (= bs!1574868 (and b!6296427 d!1975794)))

(assert (=> bs!1574868 (not (= lambda!346011 lambda!345946))))

(assert (=> bs!1574863 (not (= lambda!346011 lambda!346001))))

(assert (=> b!6296427 true))

(assert (=> b!6296427 true))

(declare-fun bs!1574869 () Bool)

(declare-fun b!6296425 () Bool)

(assert (= bs!1574869 (and b!6296425 d!1975994)))

(declare-fun lambda!346012 () Int)

(assert (=> bs!1574869 (= (and (= (regOne!32946 (regOne!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regOne!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346012 lambda!346003))))

(declare-fun bs!1574870 () Bool)

(assert (= bs!1574870 (and b!6296425 b!6295928)))

(assert (=> bs!1574870 (= (and (= (regOne!32946 (regOne!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regOne!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346012 lambda!345967))))

(declare-fun bs!1574871 () Bool)

(assert (= bs!1574871 (and b!6296425 d!1975810)))

(assert (=> bs!1574871 (= (and (= (regOne!32946 (regOne!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regOne!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346012 lambda!345958))))

(declare-fun bs!1574872 () Bool)

(assert (= bs!1574872 (and b!6296425 b!6295930)))

(assert (=> bs!1574872 (not (= lambda!346012 lambda!345966))))

(declare-fun bs!1574873 () Bool)

(assert (= bs!1574873 (and b!6296425 b!6295367)))

(assert (=> bs!1574873 (= (and (= (regOne!32946 (regOne!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regOne!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346012 lambda!345916))))

(assert (=> bs!1574873 (not (= lambda!346012 lambda!345915))))

(assert (=> bs!1574871 (not (= lambda!346012 lambda!345957))))

(declare-fun bs!1574874 () Bool)

(assert (= bs!1574874 (and b!6296425 d!1975794)))

(assert (=> bs!1574874 (not (= lambda!346012 lambda!345946))))

(declare-fun bs!1574875 () Bool)

(assert (= bs!1574875 (and b!6296425 b!6296427)))

(assert (=> bs!1574875 (not (= lambda!346012 lambda!346011))))

(assert (=> bs!1574869 (not (= lambda!346012 lambda!346001))))

(assert (=> b!6296425 true))

(assert (=> b!6296425 true))

(declare-fun b!6296418 () Bool)

(declare-fun res!2596410 () Bool)

(declare-fun e!3828322 () Bool)

(assert (=> b!6296418 (=> res!2596410 e!3828322)))

(declare-fun call!533510 () Bool)

(assert (=> b!6296418 (= res!2596410 call!533510)))

(declare-fun e!3828325 () Bool)

(assert (=> b!6296418 (= e!3828325 e!3828322)))

(declare-fun b!6296419 () Bool)

(declare-fun e!3828324 () Bool)

(assert (=> b!6296419 (= e!3828324 (= s!2326 (Cons!64826 (c!1142690 (regOne!32947 r!7292)) Nil!64826)))))

(declare-fun b!6296420 () Bool)

(declare-fun e!3828320 () Bool)

(assert (=> b!6296420 (= e!3828320 e!3828325)))

(declare-fun c!1142982 () Bool)

(assert (=> b!6296420 (= c!1142982 ((_ is Star!16217) (regOne!32947 r!7292)))))

(declare-fun b!6296421 () Bool)

(declare-fun e!3828326 () Bool)

(assert (=> b!6296421 (= e!3828320 e!3828326)))

(declare-fun res!2596411 () Bool)

(assert (=> b!6296421 (= res!2596411 (matchRSpec!3318 (regOne!32947 (regOne!32947 r!7292)) s!2326))))

(assert (=> b!6296421 (=> res!2596411 e!3828326)))

(declare-fun bm!533504 () Bool)

(assert (=> bm!533504 (= call!533510 (isEmpty!36890 s!2326))))

(declare-fun b!6296422 () Bool)

(declare-fun e!3828321 () Bool)

(assert (=> b!6296422 (= e!3828321 call!533510)))

(declare-fun b!6296423 () Bool)

(declare-fun c!1142980 () Bool)

(assert (=> b!6296423 (= c!1142980 ((_ is ElementMatch!16217) (regOne!32947 r!7292)))))

(declare-fun e!3828323 () Bool)

(assert (=> b!6296423 (= e!3828323 e!3828324)))

(declare-fun b!6296424 () Bool)

(assert (=> b!6296424 (= e!3828321 e!3828323)))

(declare-fun res!2596409 () Bool)

(assert (=> b!6296424 (= res!2596409 (not ((_ is EmptyLang!16217) (regOne!32947 r!7292))))))

(assert (=> b!6296424 (=> (not res!2596409) (not e!3828323))))

(declare-fun call!533509 () Bool)

(assert (=> b!6296425 (= e!3828325 call!533509)))

(declare-fun b!6296426 () Bool)

(declare-fun c!1142981 () Bool)

(assert (=> b!6296426 (= c!1142981 ((_ is Union!16217) (regOne!32947 r!7292)))))

(assert (=> b!6296426 (= e!3828324 e!3828320)))

(declare-fun bm!533505 () Bool)

(assert (=> bm!533505 (= call!533509 (Exists!3287 (ite c!1142982 lambda!346011 lambda!346012)))))

(declare-fun d!1976048 () Bool)

(declare-fun c!1142983 () Bool)

(assert (=> d!1976048 (= c!1142983 ((_ is EmptyExpr!16217) (regOne!32947 r!7292)))))

(assert (=> d!1976048 (= (matchRSpec!3318 (regOne!32947 r!7292) s!2326) e!3828321)))

(assert (=> b!6296427 (= e!3828322 call!533509)))

(declare-fun b!6296428 () Bool)

(assert (=> b!6296428 (= e!3828326 (matchRSpec!3318 (regTwo!32947 (regOne!32947 r!7292)) s!2326))))

(assert (= (and d!1976048 c!1142983) b!6296422))

(assert (= (and d!1976048 (not c!1142983)) b!6296424))

(assert (= (and b!6296424 res!2596409) b!6296423))

(assert (= (and b!6296423 c!1142980) b!6296419))

(assert (= (and b!6296423 (not c!1142980)) b!6296426))

(assert (= (and b!6296426 c!1142981) b!6296421))

(assert (= (and b!6296426 (not c!1142981)) b!6296420))

(assert (= (and b!6296421 (not res!2596411)) b!6296428))

(assert (= (and b!6296420 c!1142982) b!6296418))

(assert (= (and b!6296420 (not c!1142982)) b!6296425))

(assert (= (and b!6296418 (not res!2596410)) b!6296427))

(assert (= (or b!6296427 b!6296425) bm!533505))

(assert (= (or b!6296422 b!6296418) bm!533504))

(declare-fun m!7116036 () Bool)

(assert (=> b!6296421 m!7116036))

(assert (=> bm!533504 m!7115644))

(declare-fun m!7116038 () Bool)

(assert (=> bm!533505 m!7116038))

(declare-fun m!7116040 () Bool)

(assert (=> b!6296428 m!7116040))

(assert (=> b!6295924 d!1976048))

(declare-fun b!6296437 () Bool)

(declare-fun c!1142990 () Bool)

(assert (=> b!6296437 (= c!1142990 ((_ is Star!16217) (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))))))

(declare-fun e!3828337 () (InoxSet Context!11202))

(declare-fun e!3828335 () (InoxSet Context!11202))

(assert (=> b!6296437 (= e!3828337 e!3828335)))

(declare-fun bm!533506 () Bool)

(declare-fun call!533516 () List!64951)

(declare-fun call!533514 () List!64951)

(assert (=> bm!533506 (= call!533516 call!533514)))

(declare-fun d!1976052 () Bool)

(declare-fun c!1142987 () Bool)

(assert (=> d!1976052 (= c!1142987 (and ((_ is ElementMatch!16217) (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))) (= (c!1142690 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))) (h!71274 s!2326))))))

(declare-fun e!3828334 () (InoxSet Context!11202))

(assert (=> d!1976052 (= (derivationStepZipperDown!1465 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))) (ite c!1142814 lt!2357742 (Context!11203 call!533395)) (h!71274 s!2326)) e!3828334)))

(declare-fun b!6296438 () Bool)

(declare-fun call!533513 () (InoxSet Context!11202))

(assert (=> b!6296438 (= e!3828335 call!533513)))

(declare-fun b!6296440 () Bool)

(declare-fun e!3828333 () (InoxSet Context!11202))

(assert (=> b!6296440 (= e!3828333 e!3828337)))

(declare-fun c!1142988 () Bool)

(assert (=> b!6296440 (= c!1142988 ((_ is Concat!25062) (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))))))

(declare-fun b!6296442 () Bool)

(declare-fun e!3828331 () Bool)

(assert (=> b!6296442 (= e!3828331 (nullable!6210 (regOne!32946 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))))))))

(declare-fun bm!533507 () Bool)

(declare-fun call!533515 () (InoxSet Context!11202))

(declare-fun c!1142986 () Bool)

(assert (=> bm!533507 (= call!533515 (derivationStepZipperDown!1465 (ite c!1142986 (regOne!32947 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))) (regOne!32946 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))))) (ite c!1142986 (ite c!1142814 lt!2357742 (Context!11203 call!533395)) (Context!11203 call!533514)) (h!71274 s!2326)))))

(declare-fun b!6296445 () Bool)

(assert (=> b!6296445 (= e!3828334 (store ((as const (Array Context!11202 Bool)) false) (ite c!1142814 lt!2357742 (Context!11203 call!533395)) true))))

(declare-fun b!6296446 () Bool)

(declare-fun e!3828332 () (InoxSet Context!11202))

(assert (=> b!6296446 (= e!3828334 e!3828332)))

(assert (=> b!6296446 (= c!1142986 ((_ is Union!16217) (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))))))

(declare-fun b!6296447 () Bool)

(assert (=> b!6296447 (= e!3828337 call!533513)))

(declare-fun bm!533508 () Bool)

(declare-fun c!1142989 () Bool)

(assert (=> bm!533508 (= call!533514 ($colon$colon!2082 (exprs!6101 (ite c!1142814 lt!2357742 (Context!11203 call!533395))) (ite (or c!1142989 c!1142988) (regTwo!32946 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))) (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))))))))

(declare-fun b!6296448 () Bool)

(assert (=> b!6296448 (= c!1142989 e!3828331)))

(declare-fun res!2596416 () Bool)

(assert (=> b!6296448 (=> (not res!2596416) (not e!3828331))))

(assert (=> b!6296448 (= res!2596416 ((_ is Concat!25062) (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))))))

(assert (=> b!6296448 (= e!3828332 e!3828333)))

(declare-fun b!6296449 () Bool)

(assert (=> b!6296449 (= e!3828335 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533509 () Bool)

(declare-fun call!533512 () (InoxSet Context!11202))

(declare-fun call!533511 () (InoxSet Context!11202))

(assert (=> bm!533509 (= call!533512 call!533511)))

(declare-fun b!6296450 () Bool)

(assert (=> b!6296450 (= e!3828333 ((_ map or) call!533515 call!533512))))

(declare-fun bm!533510 () Bool)

(assert (=> bm!533510 (= call!533511 (derivationStepZipperDown!1465 (ite c!1142986 (regTwo!32947 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))) (ite c!1142989 (regTwo!32946 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))) (ite c!1142988 (regOne!32946 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))) (reg!16546 (ite c!1142814 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))))))) (ite (or c!1142986 c!1142989) (ite c!1142814 lt!2357742 (Context!11203 call!533395)) (Context!11203 call!533516)) (h!71274 s!2326)))))

(declare-fun bm!533511 () Bool)

(assert (=> bm!533511 (= call!533513 call!533512)))

(declare-fun b!6296451 () Bool)

(assert (=> b!6296451 (= e!3828332 ((_ map or) call!533515 call!533511))))

(assert (= (and d!1976052 c!1142987) b!6296445))

(assert (= (and d!1976052 (not c!1142987)) b!6296446))

(assert (= (and b!6296446 c!1142986) b!6296451))

(assert (= (and b!6296446 (not c!1142986)) b!6296448))

(assert (= (and b!6296448 res!2596416) b!6296442))

(assert (= (and b!6296448 c!1142989) b!6296450))

(assert (= (and b!6296448 (not c!1142989)) b!6296440))

(assert (= (and b!6296440 c!1142988) b!6296447))

(assert (= (and b!6296440 (not c!1142988)) b!6296437))

(assert (= (and b!6296437 c!1142990) b!6296438))

(assert (= (and b!6296437 (not c!1142990)) b!6296449))

(assert (= (or b!6296447 b!6296438) bm!533506))

(assert (= (or b!6296447 b!6296438) bm!533511))

(assert (= (or b!6296450 bm!533506) bm!533508))

(assert (= (or b!6296450 bm!533511) bm!533509))

(assert (= (or b!6296451 bm!533509) bm!533510))

(assert (= (or b!6296451 b!6296450) bm!533507))

(declare-fun m!7116060 () Bool)

(assert (=> bm!533507 m!7116060))

(declare-fun m!7116062 () Bool)

(assert (=> bm!533508 m!7116062))

(declare-fun m!7116064 () Bool)

(assert (=> b!6296442 m!7116064))

(declare-fun m!7116066 () Bool)

(assert (=> bm!533510 m!7116066))

(declare-fun m!7116068 () Bool)

(assert (=> b!6296445 m!7116068))

(assert (=> bm!533388 d!1976052))

(declare-fun d!1976060 () Bool)

(assert (=> d!1976060 (= (isConcat!1146 lt!2357816) ((_ is Concat!25062) lt!2357816))))

(assert (=> b!6295815 d!1976060))

(declare-fun d!1976062 () Bool)

(declare-fun lambda!346016 () Int)

(declare-fun exists!2533 ((InoxSet Context!11202) Int) Bool)

(assert (=> d!1976062 (= (nullableZipper!1987 lt!2357739) (exists!2533 lt!2357739 lambda!346016))))

(declare-fun bs!1574889 () Bool)

(assert (= bs!1574889 d!1976062))

(declare-fun m!7116084 () Bool)

(assert (=> bs!1574889 m!7116084))

(assert (=> b!6295853 d!1976062))

(declare-fun d!1976070 () Bool)

(declare-fun c!1142999 () Bool)

(assert (=> d!1976070 (= c!1142999 ((_ is Nil!64828) lt!2357810))))

(declare-fun e!3828348 () (InoxSet Context!11202))

(assert (=> d!1976070 (= (content!12198 lt!2357810) e!3828348)))

(declare-fun b!6296470 () Bool)

(assert (=> b!6296470 (= e!3828348 ((as const (Array Context!11202 Bool)) false))))

(declare-fun b!6296471 () Bool)

(assert (=> b!6296471 (= e!3828348 ((_ map or) (store ((as const (Array Context!11202 Bool)) false) (h!71276 lt!2357810) true) (content!12198 (t!378518 lt!2357810))))))

(assert (= (and d!1976070 c!1142999) b!6296470))

(assert (= (and d!1976070 (not c!1142999)) b!6296471))

(declare-fun m!7116086 () Bool)

(assert (=> b!6296471 m!7116086))

(declare-fun m!7116088 () Bool)

(assert (=> b!6296471 m!7116088))

(assert (=> b!6295726 d!1976070))

(declare-fun d!1976072 () Bool)

(assert (=> d!1976072 (= (isEmptyLang!1630 lt!2357828) ((_ is EmptyLang!16217) lt!2357828))))

(assert (=> b!6296000 d!1976072))

(declare-fun d!1976074 () Bool)

(assert (=> d!1976074 (= (nullable!6210 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))) (nullableFct!2161 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun bs!1574890 () Bool)

(assert (= bs!1574890 d!1976074))

(declare-fun m!7116090 () Bool)

(assert (=> bs!1574890 m!7116090))

(assert (=> b!6296013 d!1976074))

(declare-fun b!6296474 () Bool)

(declare-fun e!3828352 () Bool)

(declare-fun e!3828351 () Bool)

(assert (=> b!6296474 (= e!3828352 e!3828351)))

(declare-fun res!2596432 () Bool)

(assert (=> b!6296474 (=> (not res!2596432) (not e!3828351))))

(declare-fun lt!2357848 () Bool)

(assert (=> b!6296474 (= res!2596432 (not lt!2357848))))

(declare-fun b!6296475 () Bool)

(declare-fun e!3828353 () Bool)

(assert (=> b!6296475 (= e!3828353 (nullable!6210 (derivativeStep!4926 r!7292 (head!12935 s!2326))))))

(declare-fun b!6296476 () Bool)

(declare-fun e!3828355 () Bool)

(assert (=> b!6296476 (= e!3828355 (not lt!2357848))))

(declare-fun b!6296477 () Bool)

(declare-fun res!2596435 () Bool)

(declare-fun e!3828354 () Bool)

(assert (=> b!6296477 (=> (not res!2596435) (not e!3828354))))

(declare-fun call!533518 () Bool)

(assert (=> b!6296477 (= res!2596435 (not call!533518))))

(declare-fun bm!533513 () Bool)

(assert (=> bm!533513 (= call!533518 (isEmpty!36890 (tail!12020 s!2326)))))

(declare-fun b!6296478 () Bool)

(declare-fun res!2596429 () Bool)

(declare-fun e!3828357 () Bool)

(assert (=> b!6296478 (=> res!2596429 e!3828357)))

(assert (=> b!6296478 (= res!2596429 (not (isEmpty!36890 (tail!12020 (tail!12020 s!2326)))))))

(declare-fun b!6296479 () Bool)

(assert (=> b!6296479 (= e!3828353 (matchR!8400 (derivativeStep!4926 (derivativeStep!4926 r!7292 (head!12935 s!2326)) (head!12935 (tail!12020 s!2326))) (tail!12020 (tail!12020 s!2326))))))

(declare-fun b!6296480 () Bool)

(assert (=> b!6296480 (= e!3828351 e!3828357)))

(declare-fun res!2596433 () Bool)

(assert (=> b!6296480 (=> res!2596433 e!3828357)))

(assert (=> b!6296480 (= res!2596433 call!533518)))

(declare-fun b!6296481 () Bool)

(declare-fun res!2596434 () Bool)

(assert (=> b!6296481 (=> res!2596434 e!3828352)))

(assert (=> b!6296481 (= res!2596434 e!3828354)))

(declare-fun res!2596431 () Bool)

(assert (=> b!6296481 (=> (not res!2596431) (not e!3828354))))

(assert (=> b!6296481 (= res!2596431 lt!2357848)))

(declare-fun b!6296482 () Bool)

(assert (=> b!6296482 (= e!3828357 (not (= (head!12935 (tail!12020 s!2326)) (c!1142690 (derivativeStep!4926 r!7292 (head!12935 s!2326))))))))

(declare-fun b!6296484 () Bool)

(declare-fun e!3828356 () Bool)

(assert (=> b!6296484 (= e!3828356 (= lt!2357848 call!533518))))

(declare-fun b!6296485 () Bool)

(declare-fun res!2596430 () Bool)

(assert (=> b!6296485 (=> (not res!2596430) (not e!3828354))))

(assert (=> b!6296485 (= res!2596430 (isEmpty!36890 (tail!12020 (tail!12020 s!2326))))))

(declare-fun b!6296486 () Bool)

(assert (=> b!6296486 (= e!3828354 (= (head!12935 (tail!12020 s!2326)) (c!1142690 (derivativeStep!4926 r!7292 (head!12935 s!2326)))))))

(declare-fun b!6296487 () Bool)

(declare-fun res!2596436 () Bool)

(assert (=> b!6296487 (=> res!2596436 e!3828352)))

(assert (=> b!6296487 (= res!2596436 (not ((_ is ElementMatch!16217) (derivativeStep!4926 r!7292 (head!12935 s!2326)))))))

(assert (=> b!6296487 (= e!3828355 e!3828352)))

(declare-fun d!1976076 () Bool)

(assert (=> d!1976076 e!3828356))

(declare-fun c!1143001 () Bool)

(assert (=> d!1976076 (= c!1143001 ((_ is EmptyExpr!16217) (derivativeStep!4926 r!7292 (head!12935 s!2326))))))

(assert (=> d!1976076 (= lt!2357848 e!3828353)))

(declare-fun c!1143002 () Bool)

(assert (=> d!1976076 (= c!1143002 (isEmpty!36890 (tail!12020 s!2326)))))

(assert (=> d!1976076 (validRegex!7953 (derivativeStep!4926 r!7292 (head!12935 s!2326)))))

(assert (=> d!1976076 (= (matchR!8400 (derivativeStep!4926 r!7292 (head!12935 s!2326)) (tail!12020 s!2326)) lt!2357848)))

(declare-fun b!6296483 () Bool)

(assert (=> b!6296483 (= e!3828356 e!3828355)))

(declare-fun c!1143000 () Bool)

(assert (=> b!6296483 (= c!1143000 ((_ is EmptyLang!16217) (derivativeStep!4926 r!7292 (head!12935 s!2326))))))

(assert (= (and d!1976076 c!1143002) b!6296475))

(assert (= (and d!1976076 (not c!1143002)) b!6296479))

(assert (= (and d!1976076 c!1143001) b!6296484))

(assert (= (and d!1976076 (not c!1143001)) b!6296483))

(assert (= (and b!6296483 c!1143000) b!6296476))

(assert (= (and b!6296483 (not c!1143000)) b!6296487))

(assert (= (and b!6296487 (not res!2596436)) b!6296481))

(assert (= (and b!6296481 res!2596431) b!6296477))

(assert (= (and b!6296477 res!2596435) b!6296485))

(assert (= (and b!6296485 res!2596430) b!6296486))

(assert (= (and b!6296481 (not res!2596434)) b!6296474))

(assert (= (and b!6296474 res!2596432) b!6296480))

(assert (= (and b!6296480 (not res!2596433)) b!6296478))

(assert (= (and b!6296478 (not res!2596429)) b!6296482))

(assert (= (or b!6296484 b!6296477 b!6296480) bm!533513))

(assert (=> b!6296479 m!7115654))

(declare-fun m!7116092 () Bool)

(assert (=> b!6296479 m!7116092))

(assert (=> b!6296479 m!7115652))

(assert (=> b!6296479 m!7116092))

(declare-fun m!7116094 () Bool)

(assert (=> b!6296479 m!7116094))

(assert (=> b!6296479 m!7115654))

(declare-fun m!7116096 () Bool)

(assert (=> b!6296479 m!7116096))

(assert (=> b!6296479 m!7116094))

(assert (=> b!6296479 m!7116096))

(declare-fun m!7116098 () Bool)

(assert (=> b!6296479 m!7116098))

(assert (=> b!6296485 m!7115654))

(assert (=> b!6296485 m!7116096))

(assert (=> b!6296485 m!7116096))

(declare-fun m!7116100 () Bool)

(assert (=> b!6296485 m!7116100))

(assert (=> d!1976076 m!7115654))

(assert (=> d!1976076 m!7115658))

(assert (=> d!1976076 m!7115652))

(declare-fun m!7116102 () Bool)

(assert (=> d!1976076 m!7116102))

(assert (=> b!6296475 m!7115652))

(declare-fun m!7116104 () Bool)

(assert (=> b!6296475 m!7116104))

(assert (=> b!6296482 m!7115654))

(assert (=> b!6296482 m!7116092))

(assert (=> b!6296486 m!7115654))

(assert (=> b!6296486 m!7116092))

(assert (=> bm!533513 m!7115654))

(assert (=> bm!533513 m!7115658))

(assert (=> b!6296478 m!7115654))

(assert (=> b!6296478 m!7116096))

(assert (=> b!6296478 m!7116096))

(assert (=> b!6296478 m!7116100))

(assert (=> b!6295965 d!1976076))

(declare-fun b!6296565 () Bool)

(declare-fun e!3828409 () Regex!16217)

(declare-fun e!3828407 () Regex!16217)

(assert (=> b!6296565 (= e!3828409 e!3828407)))

(declare-fun c!1143030 () Bool)

(assert (=> b!6296565 (= c!1143030 ((_ is ElementMatch!16217) r!7292))))

(declare-fun b!6296566 () Bool)

(assert (=> b!6296566 (= e!3828407 (ite (= (head!12935 s!2326) (c!1142690 r!7292)) EmptyExpr!16217 EmptyLang!16217))))

(declare-fun b!6296567 () Bool)

(declare-fun e!3828410 () Regex!16217)

(declare-fun call!533537 () Regex!16217)

(assert (=> b!6296567 (= e!3828410 (Union!16217 (Concat!25062 call!533537 (regTwo!32946 r!7292)) EmptyLang!16217))))

(declare-fun c!1143032 () Bool)

(declare-fun bm!533531 () Bool)

(declare-fun c!1143028 () Bool)

(declare-fun call!533536 () Regex!16217)

(assert (=> bm!533531 (= call!533536 (derivativeStep!4926 (ite c!1143032 (regOne!32947 r!7292) (ite c!1143028 (reg!16546 r!7292) (regOne!32946 r!7292))) (head!12935 s!2326)))))

(declare-fun bm!533532 () Bool)

(declare-fun call!533538 () Regex!16217)

(assert (=> bm!533532 (= call!533538 call!533536)))

(declare-fun b!6296568 () Bool)

(declare-fun c!1143029 () Bool)

(assert (=> b!6296568 (= c!1143029 (nullable!6210 (regOne!32946 r!7292)))))

(declare-fun e!3828408 () Regex!16217)

(assert (=> b!6296568 (= e!3828408 e!3828410)))

(declare-fun bm!533533 () Bool)

(declare-fun call!533539 () Regex!16217)

(assert (=> bm!533533 (= call!533537 call!533539)))

(declare-fun b!6296570 () Bool)

(declare-fun e!3828406 () Regex!16217)

(assert (=> b!6296570 (= e!3828406 e!3828408)))

(assert (=> b!6296570 (= c!1143028 ((_ is Star!16217) r!7292))))

(declare-fun bm!533534 () Bool)

(assert (=> bm!533534 (= call!533539 (derivativeStep!4926 (ite c!1143032 (regTwo!32947 r!7292) (ite c!1143029 (regTwo!32946 r!7292) (regOne!32946 r!7292))) (head!12935 s!2326)))))

(declare-fun b!6296571 () Bool)

(assert (=> b!6296571 (= e!3828410 (Union!16217 (Concat!25062 call!533538 (regTwo!32946 r!7292)) call!533537))))

(declare-fun b!6296572 () Bool)

(assert (=> b!6296572 (= e!3828408 (Concat!25062 call!533538 r!7292))))

(declare-fun b!6296569 () Bool)

(assert (=> b!6296569 (= c!1143032 ((_ is Union!16217) r!7292))))

(assert (=> b!6296569 (= e!3828407 e!3828406)))

(declare-fun d!1976080 () Bool)

(declare-fun lt!2357852 () Regex!16217)

(assert (=> d!1976080 (validRegex!7953 lt!2357852)))

(assert (=> d!1976080 (= lt!2357852 e!3828409)))

(declare-fun c!1143031 () Bool)

(assert (=> d!1976080 (= c!1143031 (or ((_ is EmptyExpr!16217) r!7292) ((_ is EmptyLang!16217) r!7292)))))

(assert (=> d!1976080 (validRegex!7953 r!7292)))

(assert (=> d!1976080 (= (derivativeStep!4926 r!7292 (head!12935 s!2326)) lt!2357852)))

(declare-fun b!6296573 () Bool)

(assert (=> b!6296573 (= e!3828409 EmptyLang!16217)))

(declare-fun b!6296574 () Bool)

(assert (=> b!6296574 (= e!3828406 (Union!16217 call!533536 call!533539))))

(assert (= (and d!1976080 c!1143031) b!6296573))

(assert (= (and d!1976080 (not c!1143031)) b!6296565))

(assert (= (and b!6296565 c!1143030) b!6296566))

(assert (= (and b!6296565 (not c!1143030)) b!6296569))

(assert (= (and b!6296569 c!1143032) b!6296574))

(assert (= (and b!6296569 (not c!1143032)) b!6296570))

(assert (= (and b!6296570 c!1143028) b!6296572))

(assert (= (and b!6296570 (not c!1143028)) b!6296568))

(assert (= (and b!6296568 c!1143029) b!6296571))

(assert (= (and b!6296568 (not c!1143029)) b!6296567))

(assert (= (or b!6296571 b!6296567) bm!533533))

(assert (= (or b!6296572 b!6296571) bm!533532))

(assert (= (or b!6296574 bm!533533) bm!533534))

(assert (= (or b!6296574 bm!533532) bm!533531))

(assert (=> bm!533531 m!7115650))

(declare-fun m!7116160 () Bool)

(assert (=> bm!533531 m!7116160))

(declare-fun m!7116162 () Bool)

(assert (=> b!6296568 m!7116162))

(assert (=> bm!533534 m!7115650))

(declare-fun m!7116166 () Bool)

(assert (=> bm!533534 m!7116166))

(declare-fun m!7116170 () Bool)

(assert (=> d!1976080 m!7116170))

(assert (=> d!1976080 m!7115326))

(assert (=> b!6295965 d!1976080))

(declare-fun d!1976108 () Bool)

(assert (=> d!1976108 (= (head!12935 s!2326) (h!71274 s!2326))))

(assert (=> b!6295965 d!1976108))

(declare-fun d!1976110 () Bool)

(assert (=> d!1976110 (= (tail!12020 s!2326) (t!378516 s!2326))))

(assert (=> b!6295965 d!1976110))

(declare-fun bs!1574896 () Bool)

(declare-fun d!1976114 () Bool)

(assert (= bs!1574896 (and d!1976114 d!1975832)))

(declare-fun lambda!346018 () Int)

(assert (=> bs!1574896 (= lambda!346018 lambda!345961)))

(declare-fun bs!1574897 () Bool)

(assert (= bs!1574897 (and d!1976114 d!1975764)))

(assert (=> bs!1574897 (= lambda!346018 lambda!345929)))

(declare-fun bs!1574898 () Bool)

(assert (= bs!1574898 (and d!1976114 d!1975868)))

(assert (=> bs!1574898 (= lambda!346018 lambda!345975)))

(declare-fun bs!1574899 () Bool)

(assert (= bs!1574899 (and d!1976114 d!1975866)))

(assert (=> bs!1574899 (= lambda!346018 lambda!345974)))

(declare-fun bs!1574900 () Bool)

(assert (= bs!1574900 (and d!1976114 d!1975864)))

(assert (=> bs!1574900 (= lambda!346018 lambda!345973)))

(declare-fun bs!1574901 () Bool)

(assert (= bs!1574901 (and d!1976114 d!1975862)))

(assert (=> bs!1574901 (= lambda!346018 lambda!345970)))

(assert (=> d!1976114 (= (inv!83789 setElem!42862) (forall!15367 (exprs!6101 setElem!42862) lambda!346018))))

(declare-fun bs!1574902 () Bool)

(assert (= bs!1574902 d!1976114))

(declare-fun m!7116196 () Bool)

(assert (=> bs!1574902 m!7116196))

(assert (=> setNonEmpty!42862 d!1976114))

(declare-fun b!6296583 () Bool)

(declare-fun e!3828416 () Bool)

(declare-fun e!3828415 () Bool)

(assert (=> b!6296583 (= e!3828416 e!3828415)))

(declare-fun res!2596468 () Bool)

(assert (=> b!6296583 (=> (not res!2596468) (not e!3828415))))

(declare-fun lt!2357855 () Bool)

(assert (=> b!6296583 (= res!2596468 (not lt!2357855))))

(declare-fun b!6296584 () Bool)

(declare-fun e!3828417 () Bool)

(assert (=> b!6296584 (= e!3828417 (nullable!6210 (regTwo!32946 r!7292)))))

(declare-fun b!6296585 () Bool)

(declare-fun e!3828419 () Bool)

(assert (=> b!6296585 (= e!3828419 (not lt!2357855))))

(declare-fun b!6296586 () Bool)

(declare-fun res!2596471 () Bool)

(declare-fun e!3828418 () Bool)

(assert (=> b!6296586 (=> (not res!2596471) (not e!3828418))))

(declare-fun call!533540 () Bool)

(assert (=> b!6296586 (= res!2596471 (not call!533540))))

(declare-fun bm!533535 () Bool)

(assert (=> bm!533535 (= call!533540 (isEmpty!36890 s!2326))))

(declare-fun b!6296587 () Bool)

(declare-fun res!2596465 () Bool)

(declare-fun e!3828421 () Bool)

(assert (=> b!6296587 (=> res!2596465 e!3828421)))

(assert (=> b!6296587 (= res!2596465 (not (isEmpty!36890 (tail!12020 s!2326))))))

(declare-fun b!6296588 () Bool)

(assert (=> b!6296588 (= e!3828417 (matchR!8400 (derivativeStep!4926 (regTwo!32946 r!7292) (head!12935 s!2326)) (tail!12020 s!2326)))))

(declare-fun b!6296589 () Bool)

(assert (=> b!6296589 (= e!3828415 e!3828421)))

(declare-fun res!2596469 () Bool)

(assert (=> b!6296589 (=> res!2596469 e!3828421)))

(assert (=> b!6296589 (= res!2596469 call!533540)))

(declare-fun b!6296590 () Bool)

(declare-fun res!2596470 () Bool)

(assert (=> b!6296590 (=> res!2596470 e!3828416)))

(assert (=> b!6296590 (= res!2596470 e!3828418)))

(declare-fun res!2596467 () Bool)

(assert (=> b!6296590 (=> (not res!2596467) (not e!3828418))))

(assert (=> b!6296590 (= res!2596467 lt!2357855)))

(declare-fun b!6296591 () Bool)

(assert (=> b!6296591 (= e!3828421 (not (= (head!12935 s!2326) (c!1142690 (regTwo!32946 r!7292)))))))

(declare-fun b!6296593 () Bool)

(declare-fun e!3828420 () Bool)

(assert (=> b!6296593 (= e!3828420 (= lt!2357855 call!533540))))

(declare-fun b!6296594 () Bool)

(declare-fun res!2596466 () Bool)

(assert (=> b!6296594 (=> (not res!2596466) (not e!3828418))))

(assert (=> b!6296594 (= res!2596466 (isEmpty!36890 (tail!12020 s!2326)))))

(declare-fun b!6296595 () Bool)

(assert (=> b!6296595 (= e!3828418 (= (head!12935 s!2326) (c!1142690 (regTwo!32946 r!7292))))))

(declare-fun b!6296596 () Bool)

(declare-fun res!2596472 () Bool)

(assert (=> b!6296596 (=> res!2596472 e!3828416)))

(assert (=> b!6296596 (= res!2596472 (not ((_ is ElementMatch!16217) (regTwo!32946 r!7292))))))

(assert (=> b!6296596 (= e!3828419 e!3828416)))

(declare-fun d!1976118 () Bool)

(assert (=> d!1976118 e!3828420))

(declare-fun c!1143036 () Bool)

(assert (=> d!1976118 (= c!1143036 ((_ is EmptyExpr!16217) (regTwo!32946 r!7292)))))

(assert (=> d!1976118 (= lt!2357855 e!3828417)))

(declare-fun c!1143037 () Bool)

(assert (=> d!1976118 (= c!1143037 (isEmpty!36890 s!2326))))

(assert (=> d!1976118 (validRegex!7953 (regTwo!32946 r!7292))))

(assert (=> d!1976118 (= (matchR!8400 (regTwo!32946 r!7292) s!2326) lt!2357855)))

(declare-fun b!6296592 () Bool)

(assert (=> b!6296592 (= e!3828420 e!3828419)))

(declare-fun c!1143035 () Bool)

(assert (=> b!6296592 (= c!1143035 ((_ is EmptyLang!16217) (regTwo!32946 r!7292)))))

(assert (= (and d!1976118 c!1143037) b!6296584))

(assert (= (and d!1976118 (not c!1143037)) b!6296588))

(assert (= (and d!1976118 c!1143036) b!6296593))

(assert (= (and d!1976118 (not c!1143036)) b!6296592))

(assert (= (and b!6296592 c!1143035) b!6296585))

(assert (= (and b!6296592 (not c!1143035)) b!6296596))

(assert (= (and b!6296596 (not res!2596472)) b!6296590))

(assert (= (and b!6296590 res!2596467) b!6296586))

(assert (= (and b!6296586 res!2596471) b!6296594))

(assert (= (and b!6296594 res!2596466) b!6296595))

(assert (= (and b!6296590 (not res!2596470)) b!6296583))

(assert (= (and b!6296583 res!2596468) b!6296589))

(assert (= (and b!6296589 (not res!2596469)) b!6296587))

(assert (= (and b!6296587 (not res!2596465)) b!6296591))

(assert (= (or b!6296593 b!6296586 b!6296589) bm!533535))

(assert (=> b!6296588 m!7115650))

(assert (=> b!6296588 m!7115650))

(declare-fun m!7116198 () Bool)

(assert (=> b!6296588 m!7116198))

(assert (=> b!6296588 m!7115654))

(assert (=> b!6296588 m!7116198))

(assert (=> b!6296588 m!7115654))

(declare-fun m!7116200 () Bool)

(assert (=> b!6296588 m!7116200))

(assert (=> b!6296594 m!7115654))

(assert (=> b!6296594 m!7115654))

(assert (=> b!6296594 m!7115658))

(assert (=> d!1976118 m!7115644))

(declare-fun m!7116202 () Bool)

(assert (=> d!1976118 m!7116202))

(declare-fun m!7116204 () Bool)

(assert (=> b!6296584 m!7116204))

(assert (=> b!6296591 m!7115650))

(assert (=> b!6296595 m!7115650))

(assert (=> bm!533535 m!7115644))

(assert (=> b!6296587 m!7115654))

(assert (=> b!6296587 m!7115654))

(assert (=> b!6296587 m!7115658))

(assert (=> b!6295547 d!1976118))

(declare-fun d!1976120 () Bool)

(assert (=> d!1976120 (= ($colon$colon!2082 (exprs!6101 lt!2357742) (ite (or c!1142817 c!1142816) (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 r!7292)))) (Cons!64827 (ite (or c!1142817 c!1142816) (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 r!7292))) (exprs!6101 lt!2357742)))))

(assert (=> bm!533389 d!1976120))

(assert (=> d!1975794 d!1975768))

(assert (=> d!1975794 d!1976028))

(assert (=> d!1975794 d!1975818))

(declare-fun bs!1574904 () Bool)

(declare-fun d!1976122 () Bool)

(assert (= bs!1574904 (and d!1976122 d!1975994)))

(declare-fun lambda!346021 () Int)

(assert (=> bs!1574904 (not (= lambda!346021 lambda!346003))))

(declare-fun bs!1574905 () Bool)

(assert (= bs!1574905 (and d!1976122 b!6295928)))

(assert (=> bs!1574905 (not (= lambda!346021 lambda!345967))))

(declare-fun bs!1574906 () Bool)

(assert (= bs!1574906 (and d!1976122 d!1975810)))

(assert (=> bs!1574906 (not (= lambda!346021 lambda!345958))))

(declare-fun bs!1574907 () Bool)

(assert (= bs!1574907 (and d!1976122 b!6295930)))

(assert (=> bs!1574907 (not (= lambda!346021 lambda!345966))))

(declare-fun bs!1574908 () Bool)

(assert (= bs!1574908 (and d!1976122 b!6296425)))

(assert (=> bs!1574908 (not (= lambda!346021 lambda!346012))))

(declare-fun bs!1574909 () Bool)

(assert (= bs!1574909 (and d!1976122 b!6295367)))

(assert (=> bs!1574909 (not (= lambda!346021 lambda!345916))))

(assert (=> bs!1574909 (= lambda!346021 lambda!345915)))

(assert (=> bs!1574906 (= lambda!346021 lambda!345957)))

(declare-fun bs!1574910 () Bool)

(assert (= bs!1574910 (and d!1976122 d!1975794)))

(assert (=> bs!1574910 (= lambda!346021 lambda!345946)))

(declare-fun bs!1574911 () Bool)

(assert (= bs!1574911 (and d!1976122 b!6296427)))

(assert (=> bs!1574911 (not (= lambda!346021 lambda!346011))))

(assert (=> bs!1574904 (= lambda!346021 lambda!346001)))

(assert (=> d!1976122 true))

(assert (=> d!1976122 true))

(assert (=> d!1976122 true))

(assert (=> d!1976122 (= (isDefined!12811 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) Nil!64826 s!2326 s!2326)) (Exists!3287 lambda!346021))))

(assert (=> d!1976122 true))

(declare-fun _$89!2503 () Unit!158199)

(assert (=> d!1976122 (= (choose!46777 (regOne!32946 r!7292) (regTwo!32946 r!7292) s!2326) _$89!2503)))

(declare-fun bs!1574912 () Bool)

(assert (= bs!1574912 d!1976122))

(assert (=> bs!1574912 m!7115284))

(assert (=> bs!1574912 m!7115284))

(assert (=> bs!1574912 m!7115286))

(declare-fun m!7116244 () Bool)

(assert (=> bs!1574912 m!7116244))

(assert (=> d!1975794 d!1976122))

(declare-fun d!1976130 () Bool)

(assert (=> d!1976130 (= (Exists!3287 lambda!345946) (choose!46776 lambda!345946))))

(declare-fun bs!1574913 () Bool)

(assert (= bs!1574913 d!1976130))

(declare-fun m!7116246 () Bool)

(assert (=> bs!1574913 m!7116246))

(assert (=> d!1975794 d!1976130))

(declare-fun b!6296695 () Bool)

(declare-fun e!3828459 () Bool)

(declare-fun e!3828458 () Bool)

(assert (=> b!6296695 (= e!3828459 e!3828458)))

(declare-fun res!2596492 () Bool)

(assert (=> b!6296695 (=> (not res!2596492) (not e!3828458))))

(declare-fun lt!2357862 () Bool)

(assert (=> b!6296695 (= res!2596492 (not lt!2357862))))

(declare-fun b!6296696 () Bool)

(declare-fun e!3828460 () Bool)

(assert (=> b!6296696 (= e!3828460 (nullable!6210 (regTwo!32946 r!7292)))))

(declare-fun b!6296697 () Bool)

(declare-fun e!3828462 () Bool)

(assert (=> b!6296697 (= e!3828462 (not lt!2357862))))

(declare-fun b!6296698 () Bool)

(declare-fun res!2596495 () Bool)

(declare-fun e!3828461 () Bool)

(assert (=> b!6296698 (=> (not res!2596495) (not e!3828461))))

(declare-fun call!533544 () Bool)

(assert (=> b!6296698 (= res!2596495 (not call!533544))))

(declare-fun bm!533539 () Bool)

(assert (=> bm!533539 (= call!533544 (isEmpty!36890 (_2!36499 (get!22414 lt!2357788))))))

(declare-fun b!6296699 () Bool)

(declare-fun res!2596489 () Bool)

(declare-fun e!3828464 () Bool)

(assert (=> b!6296699 (=> res!2596489 e!3828464)))

(assert (=> b!6296699 (= res!2596489 (not (isEmpty!36890 (tail!12020 (_2!36499 (get!22414 lt!2357788))))))))

(declare-fun b!6296700 () Bool)

(assert (=> b!6296700 (= e!3828460 (matchR!8400 (derivativeStep!4926 (regTwo!32946 r!7292) (head!12935 (_2!36499 (get!22414 lt!2357788)))) (tail!12020 (_2!36499 (get!22414 lt!2357788)))))))

(declare-fun b!6296701 () Bool)

(assert (=> b!6296701 (= e!3828458 e!3828464)))

(declare-fun res!2596493 () Bool)

(assert (=> b!6296701 (=> res!2596493 e!3828464)))

(assert (=> b!6296701 (= res!2596493 call!533544)))

(declare-fun b!6296702 () Bool)

(declare-fun res!2596494 () Bool)

(assert (=> b!6296702 (=> res!2596494 e!3828459)))

(assert (=> b!6296702 (= res!2596494 e!3828461)))

(declare-fun res!2596491 () Bool)

(assert (=> b!6296702 (=> (not res!2596491) (not e!3828461))))

(assert (=> b!6296702 (= res!2596491 lt!2357862)))

(declare-fun b!6296703 () Bool)

(assert (=> b!6296703 (= e!3828464 (not (= (head!12935 (_2!36499 (get!22414 lt!2357788))) (c!1142690 (regTwo!32946 r!7292)))))))

(declare-fun b!6296705 () Bool)

(declare-fun e!3828463 () Bool)

(assert (=> b!6296705 (= e!3828463 (= lt!2357862 call!533544))))

(declare-fun b!6296706 () Bool)

(declare-fun res!2596490 () Bool)

(assert (=> b!6296706 (=> (not res!2596490) (not e!3828461))))

(assert (=> b!6296706 (= res!2596490 (isEmpty!36890 (tail!12020 (_2!36499 (get!22414 lt!2357788)))))))

(declare-fun b!6296707 () Bool)

(assert (=> b!6296707 (= e!3828461 (= (head!12935 (_2!36499 (get!22414 lt!2357788))) (c!1142690 (regTwo!32946 r!7292))))))

(declare-fun b!6296708 () Bool)

(declare-fun res!2596496 () Bool)

(assert (=> b!6296708 (=> res!2596496 e!3828459)))

(assert (=> b!6296708 (= res!2596496 (not ((_ is ElementMatch!16217) (regTwo!32946 r!7292))))))

(assert (=> b!6296708 (= e!3828462 e!3828459)))

(declare-fun d!1976132 () Bool)

(assert (=> d!1976132 e!3828463))

(declare-fun c!1143043 () Bool)

(assert (=> d!1976132 (= c!1143043 ((_ is EmptyExpr!16217) (regTwo!32946 r!7292)))))

(assert (=> d!1976132 (= lt!2357862 e!3828460)))

(declare-fun c!1143044 () Bool)

(assert (=> d!1976132 (= c!1143044 (isEmpty!36890 (_2!36499 (get!22414 lt!2357788))))))

(assert (=> d!1976132 (validRegex!7953 (regTwo!32946 r!7292))))

(assert (=> d!1976132 (= (matchR!8400 (regTwo!32946 r!7292) (_2!36499 (get!22414 lt!2357788))) lt!2357862)))

(declare-fun b!6296704 () Bool)

(assert (=> b!6296704 (= e!3828463 e!3828462)))

(declare-fun c!1143042 () Bool)

(assert (=> b!6296704 (= c!1143042 ((_ is EmptyLang!16217) (regTwo!32946 r!7292)))))

(assert (= (and d!1976132 c!1143044) b!6296696))

(assert (= (and d!1976132 (not c!1143044)) b!6296700))

(assert (= (and d!1976132 c!1143043) b!6296705))

(assert (= (and d!1976132 (not c!1143043)) b!6296704))

(assert (= (and b!6296704 c!1143042) b!6296697))

(assert (= (and b!6296704 (not c!1143042)) b!6296708))

(assert (= (and b!6296708 (not res!2596496)) b!6296702))

(assert (= (and b!6296702 res!2596491) b!6296698))

(assert (= (and b!6296698 res!2596495) b!6296706))

(assert (= (and b!6296706 res!2596490) b!6296707))

(assert (= (and b!6296702 (not res!2596494)) b!6296695))

(assert (= (and b!6296695 res!2596492) b!6296701))

(assert (= (and b!6296701 (not res!2596493)) b!6296699))

(assert (= (and b!6296699 (not res!2596489)) b!6296703))

(assert (= (or b!6296705 b!6296698 b!6296701) bm!533539))

(declare-fun m!7116250 () Bool)

(assert (=> b!6296700 m!7116250))

(assert (=> b!6296700 m!7116250))

(declare-fun m!7116252 () Bool)

(assert (=> b!6296700 m!7116252))

(declare-fun m!7116254 () Bool)

(assert (=> b!6296700 m!7116254))

(assert (=> b!6296700 m!7116252))

(assert (=> b!6296700 m!7116254))

(declare-fun m!7116256 () Bool)

(assert (=> b!6296700 m!7116256))

(assert (=> b!6296706 m!7116254))

(assert (=> b!6296706 m!7116254))

(declare-fun m!7116258 () Bool)

(assert (=> b!6296706 m!7116258))

(declare-fun m!7116260 () Bool)

(assert (=> d!1976132 m!7116260))

(assert (=> d!1976132 m!7116202))

(assert (=> b!6296696 m!7116204))

(assert (=> b!6296703 m!7116250))

(assert (=> b!6296707 m!7116250))

(assert (=> bm!533539 m!7116260))

(assert (=> b!6296699 m!7116254))

(assert (=> b!6296699 m!7116254))

(assert (=> b!6296699 m!7116258))

(assert (=> b!6295545 d!1976132))

(declare-fun d!1976134 () Bool)

(assert (=> d!1976134 (= (get!22414 lt!2357788) (v!52262 lt!2357788))))

(assert (=> b!6295545 d!1976134))

(declare-fun bs!1574914 () Bool)

(declare-fun d!1976136 () Bool)

(assert (= bs!1574914 (and d!1976136 d!1976114)))

(declare-fun lambda!346022 () Int)

(assert (=> bs!1574914 (= lambda!346022 lambda!346018)))

(declare-fun bs!1574915 () Bool)

(assert (= bs!1574915 (and d!1976136 d!1975832)))

(assert (=> bs!1574915 (= lambda!346022 lambda!345961)))

(declare-fun bs!1574916 () Bool)

(assert (= bs!1574916 (and d!1976136 d!1975764)))

(assert (=> bs!1574916 (= lambda!346022 lambda!345929)))

(declare-fun bs!1574917 () Bool)

(assert (= bs!1574917 (and d!1976136 d!1975868)))

(assert (=> bs!1574917 (= lambda!346022 lambda!345975)))

(declare-fun bs!1574918 () Bool)

(assert (= bs!1574918 (and d!1976136 d!1975866)))

(assert (=> bs!1574918 (= lambda!346022 lambda!345974)))

(declare-fun bs!1574919 () Bool)

(assert (= bs!1574919 (and d!1976136 d!1975864)))

(assert (=> bs!1574919 (= lambda!346022 lambda!345973)))

(declare-fun bs!1574921 () Bool)

(assert (= bs!1574921 (and d!1976136 d!1975862)))

(assert (=> bs!1574921 (= lambda!346022 lambda!345970)))

(declare-fun b!6296746 () Bool)

(declare-fun e!3828478 () Bool)

(declare-fun lt!2357863 () Regex!16217)

(assert (=> b!6296746 (= e!3828478 (= lt!2357863 (head!12934 (t!378517 (unfocusZipperList!1638 zl!343)))))))

(declare-fun b!6296747 () Bool)

(declare-fun e!3828479 () Bool)

(assert (=> b!6296747 (= e!3828479 (isEmpty!36885 (t!378517 (t!378517 (unfocusZipperList!1638 zl!343)))))))

(declare-fun b!6296748 () Bool)

(declare-fun e!3828481 () Regex!16217)

(assert (=> b!6296748 (= e!3828481 EmptyLang!16217)))

(declare-fun b!6296749 () Bool)

(declare-fun e!3828483 () Bool)

(declare-fun e!3828480 () Bool)

(assert (=> b!6296749 (= e!3828483 e!3828480)))

(declare-fun c!1143045 () Bool)

(assert (=> b!6296749 (= c!1143045 (isEmpty!36885 (t!378517 (unfocusZipperList!1638 zl!343))))))

(declare-fun b!6296750 () Bool)

(declare-fun e!3828482 () Regex!16217)

(assert (=> b!6296750 (= e!3828482 (h!71275 (t!378517 (unfocusZipperList!1638 zl!343))))))

(declare-fun b!6296751 () Bool)

(assert (=> b!6296751 (= e!3828482 e!3828481)))

(declare-fun c!1143048 () Bool)

(assert (=> b!6296751 (= c!1143048 ((_ is Cons!64827) (t!378517 (unfocusZipperList!1638 zl!343))))))

(declare-fun b!6296752 () Bool)

(assert (=> b!6296752 (= e!3828480 (isEmptyLang!1630 lt!2357863))))

(declare-fun b!6296753 () Bool)

(assert (=> b!6296753 (= e!3828478 (isUnion!1060 lt!2357863))))

(declare-fun b!6296754 () Bool)

(assert (=> b!6296754 (= e!3828481 (Union!16217 (h!71275 (t!378517 (unfocusZipperList!1638 zl!343))) (generalisedUnion!2061 (t!378517 (t!378517 (unfocusZipperList!1638 zl!343))))))))

(declare-fun b!6296755 () Bool)

(assert (=> b!6296755 (= e!3828480 e!3828478)))

(declare-fun c!1143047 () Bool)

(assert (=> b!6296755 (= c!1143047 (isEmpty!36885 (tail!12019 (t!378517 (unfocusZipperList!1638 zl!343)))))))

(assert (=> d!1976136 e!3828483))

(declare-fun res!2596498 () Bool)

(assert (=> d!1976136 (=> (not res!2596498) (not e!3828483))))

(assert (=> d!1976136 (= res!2596498 (validRegex!7953 lt!2357863))))

(assert (=> d!1976136 (= lt!2357863 e!3828482)))

(declare-fun c!1143046 () Bool)

(assert (=> d!1976136 (= c!1143046 e!3828479)))

(declare-fun res!2596497 () Bool)

(assert (=> d!1976136 (=> (not res!2596497) (not e!3828479))))

(assert (=> d!1976136 (= res!2596497 ((_ is Cons!64827) (t!378517 (unfocusZipperList!1638 zl!343))))))

(assert (=> d!1976136 (forall!15367 (t!378517 (unfocusZipperList!1638 zl!343)) lambda!346022)))

(assert (=> d!1976136 (= (generalisedUnion!2061 (t!378517 (unfocusZipperList!1638 zl!343))) lt!2357863)))

(assert (= (and d!1976136 res!2596497) b!6296747))

(assert (= (and d!1976136 c!1143046) b!6296750))

(assert (= (and d!1976136 (not c!1143046)) b!6296751))

(assert (= (and b!6296751 c!1143048) b!6296754))

(assert (= (and b!6296751 (not c!1143048)) b!6296748))

(assert (= (and d!1976136 res!2596498) b!6296749))

(assert (= (and b!6296749 c!1143045) b!6296752))

(assert (= (and b!6296749 (not c!1143045)) b!6296755))

(assert (= (and b!6296755 c!1143047) b!6296746))

(assert (= (and b!6296755 (not c!1143047)) b!6296753))

(declare-fun m!7116272 () Bool)

(assert (=> b!6296752 m!7116272))

(declare-fun m!7116274 () Bool)

(assert (=> b!6296746 m!7116274))

(declare-fun m!7116276 () Bool)

(assert (=> b!6296753 m!7116276))

(declare-fun m!7116278 () Bool)

(assert (=> d!1976136 m!7116278))

(declare-fun m!7116280 () Bool)

(assert (=> d!1976136 m!7116280))

(declare-fun m!7116282 () Bool)

(assert (=> b!6296755 m!7116282))

(assert (=> b!6296755 m!7116282))

(declare-fun m!7116284 () Bool)

(assert (=> b!6296755 m!7116284))

(declare-fun m!7116286 () Bool)

(assert (=> b!6296754 m!7116286))

(declare-fun m!7116288 () Bool)

(assert (=> b!6296747 m!7116288))

(assert (=> b!6296749 m!7115680))

(assert (=> b!6296002 d!1976136))

(assert (=> d!1975846 d!1975850))

(assert (=> d!1975846 d!1975848))

(declare-fun e!3828488 () Bool)

(declare-fun d!1976150 () Bool)

(assert (=> d!1976150 (= (matchZipper!2229 ((_ map or) lt!2357744 lt!2357739) (t!378516 s!2326)) e!3828488)))

(declare-fun res!2596501 () Bool)

(assert (=> d!1976150 (=> res!2596501 e!3828488)))

(assert (=> d!1976150 (= res!2596501 (matchZipper!2229 lt!2357744 (t!378516 s!2326)))))

(assert (=> d!1976150 true))

(declare-fun _$48!2066 () Unit!158199)

(assert (=> d!1976150 (= (choose!46782 lt!2357744 lt!2357739 (t!378516 s!2326)) _$48!2066)))

(declare-fun b!6296763 () Bool)

(assert (=> b!6296763 (= e!3828488 (matchZipper!2229 lt!2357739 (t!378516 s!2326)))))

(assert (= (and d!1976150 (not res!2596501)) b!6296763))

(assert (=> d!1976150 m!7115316))

(assert (=> d!1976150 m!7115314))

(assert (=> b!6296763 m!7115294))

(assert (=> d!1975846 d!1976150))

(declare-fun b!6296773 () Bool)

(declare-fun e!3828494 () List!64950)

(assert (=> b!6296773 (= e!3828494 (Cons!64826 (h!71274 (_1!36499 (get!22414 lt!2357788))) (++!14290 (t!378516 (_1!36499 (get!22414 lt!2357788))) (_2!36499 (get!22414 lt!2357788)))))))

(declare-fun b!6296772 () Bool)

(assert (=> b!6296772 (= e!3828494 (_2!36499 (get!22414 lt!2357788)))))

(declare-fun b!6296774 () Bool)

(declare-fun res!2596507 () Bool)

(declare-fun e!3828493 () Bool)

(assert (=> b!6296774 (=> (not res!2596507) (not e!3828493))))

(declare-fun lt!2357866 () List!64950)

(declare-fun size!40319 (List!64950) Int)

(assert (=> b!6296774 (= res!2596507 (= (size!40319 lt!2357866) (+ (size!40319 (_1!36499 (get!22414 lt!2357788))) (size!40319 (_2!36499 (get!22414 lt!2357788))))))))

(declare-fun d!1976152 () Bool)

(assert (=> d!1976152 e!3828493))

(declare-fun res!2596506 () Bool)

(assert (=> d!1976152 (=> (not res!2596506) (not e!3828493))))

(declare-fun content!12199 (List!64950) (InoxSet C!32704))

(assert (=> d!1976152 (= res!2596506 (= (content!12199 lt!2357866) ((_ map or) (content!12199 (_1!36499 (get!22414 lt!2357788))) (content!12199 (_2!36499 (get!22414 lt!2357788))))))))

(assert (=> d!1976152 (= lt!2357866 e!3828494)))

(declare-fun c!1143051 () Bool)

(assert (=> d!1976152 (= c!1143051 ((_ is Nil!64826) (_1!36499 (get!22414 lt!2357788))))))

(assert (=> d!1976152 (= (++!14290 (_1!36499 (get!22414 lt!2357788)) (_2!36499 (get!22414 lt!2357788))) lt!2357866)))

(declare-fun b!6296775 () Bool)

(assert (=> b!6296775 (= e!3828493 (or (not (= (_2!36499 (get!22414 lt!2357788)) Nil!64826)) (= lt!2357866 (_1!36499 (get!22414 lt!2357788)))))))

(assert (= (and d!1976152 c!1143051) b!6296772))

(assert (= (and d!1976152 (not c!1143051)) b!6296773))

(assert (= (and d!1976152 res!2596506) b!6296774))

(assert (= (and b!6296774 res!2596507) b!6296775))

(declare-fun m!7116290 () Bool)

(assert (=> b!6296773 m!7116290))

(declare-fun m!7116292 () Bool)

(assert (=> b!6296774 m!7116292))

(declare-fun m!7116294 () Bool)

(assert (=> b!6296774 m!7116294))

(declare-fun m!7116296 () Bool)

(assert (=> b!6296774 m!7116296))

(declare-fun m!7116298 () Bool)

(assert (=> d!1976152 m!7116298))

(declare-fun m!7116300 () Bool)

(assert (=> d!1976152 m!7116300))

(declare-fun m!7116302 () Bool)

(assert (=> d!1976152 m!7116302))

(assert (=> b!6295549 d!1976152))

(assert (=> b!6295549 d!1976134))

(declare-fun bs!1574927 () Bool)

(declare-fun d!1976154 () Bool)

(assert (= bs!1574927 (and d!1976154 d!1976062)))

(declare-fun lambda!346023 () Int)

(assert (=> bs!1574927 (= lambda!346023 lambda!346016)))

(assert (=> d!1976154 (= (nullableZipper!1987 lt!2357744) (exists!2533 lt!2357744 lambda!346023))))

(declare-fun bs!1574928 () Bool)

(assert (= bs!1574928 d!1976154))

(declare-fun m!7116304 () Bool)

(assert (=> bs!1574928 m!7116304))

(assert (=> b!6295858 d!1976154))

(assert (=> d!1975858 d!1976046))

(assert (=> d!1975858 d!1975854))

(declare-fun d!1976156 () Bool)

(declare-fun c!1143052 () Bool)

(declare-fun e!3828497 () Bool)

(assert (=> d!1976156 (= c!1143052 e!3828497)))

(declare-fun res!2596508 () Bool)

(assert (=> d!1976156 (=> (not res!2596508) (not e!3828497))))

(assert (=> d!1976156 (= res!2596508 ((_ is Cons!64827) (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))))

(declare-fun e!3828496 () (InoxSet Context!11202))

(assert (=> d!1976156 (= (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (h!71274 s!2326)) e!3828496)))

(declare-fun b!6296776 () Bool)

(declare-fun e!3828495 () (InoxSet Context!11202))

(declare-fun call!533545 () (InoxSet Context!11202))

(assert (=> b!6296776 (= e!3828495 call!533545)))

(declare-fun b!6296777 () Bool)

(assert (=> b!6296777 (= e!3828496 ((_ map or) call!533545 (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))) (h!71274 s!2326))))))

(declare-fun b!6296778 () Bool)

(assert (=> b!6296778 (= e!3828496 e!3828495)))

(declare-fun c!1143053 () Bool)

(assert (=> b!6296778 (= c!1143053 ((_ is Cons!64827) (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))))

(declare-fun b!6296779 () Bool)

(assert (=> b!6296779 (= e!3828497 (nullable!6210 (h!71275 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))))))

(declare-fun b!6296780 () Bool)

(assert (=> b!6296780 (= e!3828495 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533540 () Bool)

(assert (=> bm!533540 (= call!533545 (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))) (Context!11203 (t!378517 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))) (h!71274 s!2326)))))

(assert (= (and d!1976156 res!2596508) b!6296779))

(assert (= (and d!1976156 c!1143052) b!6296777))

(assert (= (and d!1976156 (not c!1143052)) b!6296778))

(assert (= (and b!6296778 c!1143053) b!6296776))

(assert (= (and b!6296778 (not c!1143053)) b!6296780))

(assert (= (or b!6296777 b!6296776) bm!533540))

(declare-fun m!7116306 () Bool)

(assert (=> b!6296777 m!7116306))

(declare-fun m!7116308 () Bool)

(assert (=> b!6296779 m!7116308))

(declare-fun m!7116310 () Bool)

(assert (=> bm!533540 m!7116310))

(assert (=> b!6296032 d!1976156))

(declare-fun d!1976158 () Bool)

(assert (=> d!1976158 (= (isEmpty!36890 (tail!12020 s!2326)) ((_ is Nil!64826) (tail!12020 s!2326)))))

(assert (=> b!6295971 d!1976158))

(assert (=> b!6295971 d!1976110))

(declare-fun bs!1574929 () Bool)

(declare-fun d!1976160 () Bool)

(assert (= bs!1574929 (and d!1976160 d!1976114)))

(declare-fun lambda!346024 () Int)

(assert (=> bs!1574929 (= lambda!346024 lambda!346018)))

(declare-fun bs!1574930 () Bool)

(assert (= bs!1574930 (and d!1976160 d!1975832)))

(assert (=> bs!1574930 (= lambda!346024 lambda!345961)))

(declare-fun bs!1574931 () Bool)

(assert (= bs!1574931 (and d!1976160 d!1975764)))

(assert (=> bs!1574931 (= lambda!346024 lambda!345929)))

(declare-fun bs!1574932 () Bool)

(assert (= bs!1574932 (and d!1976160 d!1975868)))

(assert (=> bs!1574932 (= lambda!346024 lambda!345975)))

(declare-fun bs!1574933 () Bool)

(assert (= bs!1574933 (and d!1976160 d!1975866)))

(assert (=> bs!1574933 (= lambda!346024 lambda!345974)))

(declare-fun bs!1574934 () Bool)

(assert (= bs!1574934 (and d!1976160 d!1976136)))

(assert (=> bs!1574934 (= lambda!346024 lambda!346022)))

(declare-fun bs!1574935 () Bool)

(assert (= bs!1574935 (and d!1976160 d!1975864)))

(assert (=> bs!1574935 (= lambda!346024 lambda!345973)))

(declare-fun bs!1574936 () Bool)

(assert (= bs!1574936 (and d!1976160 d!1975862)))

(assert (=> bs!1574936 (= lambda!346024 lambda!345970)))

(assert (=> d!1976160 (= (inv!83789 (h!71276 (t!378518 zl!343))) (forall!15367 (exprs!6101 (h!71276 (t!378518 zl!343))) lambda!346024))))

(declare-fun bs!1574937 () Bool)

(assert (= bs!1574937 d!1976160))

(declare-fun m!7116312 () Bool)

(assert (=> bs!1574937 m!7116312))

(assert (=> b!6296093 d!1976160))

(declare-fun d!1976162 () Bool)

(assert (=> d!1976162 (= (nullable!6210 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (nullableFct!2161 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun bs!1574938 () Bool)

(assert (= bs!1574938 d!1976162))

(declare-fun m!7116314 () Bool)

(assert (=> bs!1574938 m!7116314))

(assert (=> b!6296034 d!1976162))

(assert (=> bs!1574753 d!1975882))

(declare-fun b!6296781 () Bool)

(declare-fun c!1143058 () Bool)

(assert (=> b!6296781 (= c!1143058 ((_ is Star!16217) (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun e!3828503 () (InoxSet Context!11202))

(declare-fun e!3828502 () (InoxSet Context!11202))

(assert (=> b!6296781 (= e!3828503 e!3828502)))

(declare-fun bm!533541 () Bool)

(declare-fun call!533551 () List!64951)

(declare-fun call!533549 () List!64951)

(assert (=> bm!533541 (= call!533551 call!533549)))

(declare-fun d!1976164 () Bool)

(declare-fun c!1143055 () Bool)

(assert (=> d!1976164 (= c!1143055 (and ((_ is ElementMatch!16217) (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (= (c!1142690 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (h!71274 s!2326))))))

(declare-fun e!3828501 () (InoxSet Context!11202))

(assert (=> d!1976164 (= (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))) (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (h!71274 s!2326)) e!3828501)))

(declare-fun b!6296782 () Bool)

(declare-fun call!533548 () (InoxSet Context!11202))

(assert (=> b!6296782 (= e!3828502 call!533548)))

(declare-fun b!6296783 () Bool)

(declare-fun e!3828500 () (InoxSet Context!11202))

(assert (=> b!6296783 (= e!3828500 e!3828503)))

(declare-fun c!1143056 () Bool)

(assert (=> b!6296783 (= c!1143056 ((_ is Concat!25062) (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun b!6296784 () Bool)

(declare-fun e!3828498 () Bool)

(assert (=> b!6296784 (= e!3828498 (nullable!6210 (regOne!32946 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))))

(declare-fun c!1143054 () Bool)

(declare-fun bm!533542 () Bool)

(declare-fun call!533550 () (InoxSet Context!11202))

(assert (=> bm!533542 (= call!533550 (derivationStepZipperDown!1465 (ite c!1143054 (regOne!32947 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (regOne!32946 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))) (ite c!1143054 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (Context!11203 call!533549)) (h!71274 s!2326)))))

(declare-fun b!6296785 () Bool)

(assert (=> b!6296785 (= e!3828501 (store ((as const (Array Context!11202 Bool)) false) (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) true))))

(declare-fun b!6296786 () Bool)

(declare-fun e!3828499 () (InoxSet Context!11202))

(assert (=> b!6296786 (= e!3828501 e!3828499)))

(assert (=> b!6296786 (= c!1143054 ((_ is Union!16217) (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun b!6296787 () Bool)

(assert (=> b!6296787 (= e!3828503 call!533548)))

(declare-fun bm!533543 () Bool)

(declare-fun c!1143057 () Bool)

(assert (=> bm!533543 (= call!533549 ($colon$colon!2082 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))) (ite (or c!1143057 c!1143056) (regTwo!32946 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))))

(declare-fun b!6296788 () Bool)

(assert (=> b!6296788 (= c!1143057 e!3828498)))

(declare-fun res!2596509 () Bool)

(assert (=> b!6296788 (=> (not res!2596509) (not e!3828498))))

(assert (=> b!6296788 (= res!2596509 ((_ is Concat!25062) (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))))))

(assert (=> b!6296788 (= e!3828499 e!3828500)))

(declare-fun b!6296789 () Bool)

(assert (=> b!6296789 (= e!3828502 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533544 () Bool)

(declare-fun call!533547 () (InoxSet Context!11202))

(declare-fun call!533546 () (InoxSet Context!11202))

(assert (=> bm!533544 (= call!533547 call!533546)))

(declare-fun b!6296790 () Bool)

(assert (=> b!6296790 (= e!3828500 ((_ map or) call!533550 call!533547))))

(declare-fun bm!533545 () Bool)

(assert (=> bm!533545 (= call!533546 (derivationStepZipperDown!1465 (ite c!1143054 (regTwo!32947 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (ite c!1143057 (regTwo!32946 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (ite c!1143056 (regOne!32946 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (reg!16546 (h!71275 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))))))) (ite (or c!1143054 c!1143057) (Context!11203 (t!378517 (exprs!6101 (Context!11203 (Cons!64827 (h!71275 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343)))))))) (Context!11203 call!533551)) (h!71274 s!2326)))))

(declare-fun bm!533546 () Bool)

(assert (=> bm!533546 (= call!533548 call!533547)))

(declare-fun b!6296791 () Bool)

(assert (=> b!6296791 (= e!3828499 ((_ map or) call!533550 call!533546))))

(assert (= (and d!1976164 c!1143055) b!6296785))

(assert (= (and d!1976164 (not c!1143055)) b!6296786))

(assert (= (and b!6296786 c!1143054) b!6296791))

(assert (= (and b!6296786 (not c!1143054)) b!6296788))

(assert (= (and b!6296788 res!2596509) b!6296784))

(assert (= (and b!6296788 c!1143057) b!6296790))

(assert (= (and b!6296788 (not c!1143057)) b!6296783))

(assert (= (and b!6296783 c!1143056) b!6296787))

(assert (= (and b!6296783 (not c!1143056)) b!6296781))

(assert (= (and b!6296781 c!1143058) b!6296782))

(assert (= (and b!6296781 (not c!1143058)) b!6296789))

(assert (= (or b!6296787 b!6296782) bm!533541))

(assert (= (or b!6296787 b!6296782) bm!533546))

(assert (= (or b!6296790 bm!533541) bm!533543))

(assert (= (or b!6296790 bm!533546) bm!533544))

(assert (= (or b!6296791 bm!533544) bm!533545))

(assert (= (or b!6296791 b!6296790) bm!533542))

(declare-fun m!7116316 () Bool)

(assert (=> bm!533542 m!7116316))

(declare-fun m!7116318 () Bool)

(assert (=> bm!533543 m!7116318))

(declare-fun m!7116320 () Bool)

(assert (=> b!6296784 m!7116320))

(declare-fun m!7116322 () Bool)

(assert (=> bm!533545 m!7116322))

(declare-fun m!7116324 () Bool)

(assert (=> b!6296785 m!7116324))

(assert (=> bm!533419 d!1976164))

(declare-fun d!1976166 () Bool)

(assert (=> d!1976166 true))

(assert (=> d!1976166 true))

(declare-fun res!2596512 () Bool)

(assert (=> d!1976166 (= (choose!46776 lambda!345916) res!2596512)))

(assert (=> d!1975790 d!1976166))

(declare-fun d!1976168 () Bool)

(declare-fun res!2596517 () Bool)

(declare-fun e!3828508 () Bool)

(assert (=> d!1976168 (=> res!2596517 e!3828508)))

(assert (=> d!1976168 (= res!2596517 ((_ is Nil!64827) (exprs!6101 setElem!42856)))))

(assert (=> d!1976168 (= (forall!15367 (exprs!6101 setElem!42856) lambda!345975) e!3828508)))

(declare-fun b!6296796 () Bool)

(declare-fun e!3828509 () Bool)

(assert (=> b!6296796 (= e!3828508 e!3828509)))

(declare-fun res!2596518 () Bool)

(assert (=> b!6296796 (=> (not res!2596518) (not e!3828509))))

(declare-fun dynLambda!25663 (Int Regex!16217) Bool)

(assert (=> b!6296796 (= res!2596518 (dynLambda!25663 lambda!345975 (h!71275 (exprs!6101 setElem!42856))))))

(declare-fun b!6296797 () Bool)

(assert (=> b!6296797 (= e!3828509 (forall!15367 (t!378517 (exprs!6101 setElem!42856)) lambda!345975))))

(assert (= (and d!1976168 (not res!2596517)) b!6296796))

(assert (= (and b!6296796 res!2596518) b!6296797))

(declare-fun b_lambda!239585 () Bool)

(assert (=> (not b_lambda!239585) (not b!6296796)))

(declare-fun m!7116326 () Bool)

(assert (=> b!6296796 m!7116326))

(declare-fun m!7116328 () Bool)

(assert (=> b!6296797 m!7116328))

(assert (=> d!1975868 d!1976168))

(declare-fun b!6296798 () Bool)

(declare-fun c!1143063 () Bool)

(assert (=> b!6296798 (= c!1143063 ((_ is Star!16217) (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun e!3828515 () (InoxSet Context!11202))

(declare-fun e!3828514 () (InoxSet Context!11202))

(assert (=> b!6296798 (= e!3828515 e!3828514)))

(declare-fun bm!533547 () Bool)

(declare-fun call!533557 () List!64951)

(declare-fun call!533555 () List!64951)

(assert (=> bm!533547 (= call!533557 call!533555)))

(declare-fun c!1143060 () Bool)

(declare-fun d!1976170 () Bool)

(assert (=> d!1976170 (= c!1143060 (and ((_ is ElementMatch!16217) (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))) (= (c!1142690 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))) (h!71274 s!2326))))))

(declare-fun e!3828513 () (InoxSet Context!11202))

(assert (=> d!1976170 (= (derivationStepZipperDown!1465 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343))))))) (ite (or c!1142866 c!1142869) lt!2357738 (Context!11203 call!533421)) (h!71274 s!2326)) e!3828513)))

(declare-fun b!6296799 () Bool)

(declare-fun call!533554 () (InoxSet Context!11202))

(assert (=> b!6296799 (= e!3828514 call!533554)))

(declare-fun b!6296800 () Bool)

(declare-fun e!3828512 () (InoxSet Context!11202))

(assert (=> b!6296800 (= e!3828512 e!3828515)))

(declare-fun c!1143061 () Bool)

(assert (=> b!6296800 (= c!1143061 ((_ is Concat!25062) (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun b!6296801 () Bool)

(declare-fun e!3828510 () Bool)

(assert (=> b!6296801 (= e!3828510 (nullable!6210 (regOne!32946 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343))))))))))))

(declare-fun c!1143059 () Bool)

(declare-fun call!533556 () (InoxSet Context!11202))

(declare-fun bm!533548 () Bool)

(assert (=> bm!533548 (= call!533556 (derivationStepZipperDown!1465 (ite c!1143059 (regOne!32947 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))) (regOne!32946 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343))))))))) (ite c!1143059 (ite (or c!1142866 c!1142869) lt!2357738 (Context!11203 call!533421)) (Context!11203 call!533555)) (h!71274 s!2326)))))

(declare-fun b!6296802 () Bool)

(assert (=> b!6296802 (= e!3828513 (store ((as const (Array Context!11202 Bool)) false) (ite (or c!1142866 c!1142869) lt!2357738 (Context!11203 call!533421)) true))))

(declare-fun b!6296803 () Bool)

(declare-fun e!3828511 () (InoxSet Context!11202))

(assert (=> b!6296803 (= e!3828513 e!3828511)))

(assert (=> b!6296803 (= c!1143059 ((_ is Union!16217) (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))))

(declare-fun b!6296804 () Bool)

(assert (=> b!6296804 (= e!3828515 call!533554)))

(declare-fun c!1143062 () Bool)

(declare-fun bm!533549 () Bool)

(assert (=> bm!533549 (= call!533555 ($colon$colon!2082 (exprs!6101 (ite (or c!1142866 c!1142869) lt!2357738 (Context!11203 call!533421))) (ite (or c!1143062 c!1143061) (regTwo!32946 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))) (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343))))))))))))

(declare-fun b!6296805 () Bool)

(assert (=> b!6296805 (= c!1143062 e!3828510)))

(declare-fun res!2596519 () Bool)

(assert (=> b!6296805 (=> (not res!2596519) (not e!3828510))))

(assert (=> b!6296805 (= res!2596519 ((_ is Concat!25062) (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))))

(assert (=> b!6296805 (= e!3828511 e!3828512)))

(declare-fun b!6296806 () Bool)

(assert (=> b!6296806 (= e!3828514 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533550 () Bool)

(declare-fun call!533553 () (InoxSet Context!11202))

(declare-fun call!533552 () (InoxSet Context!11202))

(assert (=> bm!533550 (= call!533553 call!533552)))

(declare-fun b!6296807 () Bool)

(assert (=> b!6296807 (= e!3828512 ((_ map or) call!533556 call!533553))))

(declare-fun bm!533551 () Bool)

(assert (=> bm!533551 (= call!533552 (derivationStepZipperDown!1465 (ite c!1143059 (regTwo!32947 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))) (ite c!1143062 (regTwo!32946 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))) (ite c!1143061 (regOne!32946 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343)))))))) (reg!16546 (ite c!1142866 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142869 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1142868 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343))))))))))) (ite (or c!1143059 c!1143062) (ite (or c!1142866 c!1142869) lt!2357738 (Context!11203 call!533421)) (Context!11203 call!533557)) (h!71274 s!2326)))))

(declare-fun bm!533552 () Bool)

(assert (=> bm!533552 (= call!533554 call!533553)))

(declare-fun b!6296808 () Bool)

(assert (=> b!6296808 (= e!3828511 ((_ map or) call!533556 call!533552))))

(assert (= (and d!1976170 c!1143060) b!6296802))

(assert (= (and d!1976170 (not c!1143060)) b!6296803))

(assert (= (and b!6296803 c!1143059) b!6296808))

(assert (= (and b!6296803 (not c!1143059)) b!6296805))

(assert (= (and b!6296805 res!2596519) b!6296801))

(assert (= (and b!6296805 c!1143062) b!6296807))

(assert (= (and b!6296805 (not c!1143062)) b!6296800))

(assert (= (and b!6296800 c!1143061) b!6296804))

(assert (= (and b!6296800 (not c!1143061)) b!6296798))

(assert (= (and b!6296798 c!1143063) b!6296799))

(assert (= (and b!6296798 (not c!1143063)) b!6296806))

(assert (= (or b!6296804 b!6296799) bm!533547))

(assert (= (or b!6296804 b!6296799) bm!533552))

(assert (= (or b!6296807 bm!533547) bm!533549))

(assert (= (or b!6296807 bm!533552) bm!533550))

(assert (= (or b!6296808 bm!533550) bm!533551))

(assert (= (or b!6296808 b!6296807) bm!533548))

(declare-fun m!7116330 () Bool)

(assert (=> bm!533548 m!7116330))

(declare-fun m!7116332 () Bool)

(assert (=> bm!533549 m!7116332))

(declare-fun m!7116334 () Bool)

(assert (=> b!6296801 m!7116334))

(declare-fun m!7116336 () Bool)

(assert (=> bm!533551 m!7116336))

(declare-fun m!7116338 () Bool)

(assert (=> b!6296802 m!7116338))

(assert (=> bm!533415 d!1976170))

(declare-fun b!6296809 () Bool)

(declare-fun e!3828521 () Bool)

(declare-fun call!533559 () Bool)

(assert (=> b!6296809 (= e!3828521 call!533559)))

(declare-fun b!6296810 () Bool)

(declare-fun e!3828519 () Bool)

(declare-fun e!3828522 () Bool)

(assert (=> b!6296810 (= e!3828519 e!3828522)))

(declare-fun res!2596520 () Bool)

(assert (=> b!6296810 (= res!2596520 (not (nullable!6210 (reg!16546 lt!2357816))))))

(assert (=> b!6296810 (=> (not res!2596520) (not e!3828522))))

(declare-fun b!6296811 () Bool)

(declare-fun e!3828518 () Bool)

(assert (=> b!6296811 (= e!3828518 call!533559)))

(declare-fun b!6296812 () Bool)

(declare-fun e!3828520 () Bool)

(assert (=> b!6296812 (= e!3828520 e!3828518)))

(declare-fun res!2596522 () Bool)

(assert (=> b!6296812 (=> (not res!2596522) (not e!3828518))))

(declare-fun call!533558 () Bool)

(assert (=> b!6296812 (= res!2596522 call!533558)))

(declare-fun bm!533553 () Bool)

(declare-fun call!533560 () Bool)

(assert (=> bm!533553 (= call!533558 call!533560)))

(declare-fun b!6296813 () Bool)

(assert (=> b!6296813 (= e!3828522 call!533560)))

(declare-fun b!6296814 () Bool)

(declare-fun res!2596524 () Bool)

(assert (=> b!6296814 (=> res!2596524 e!3828520)))

(assert (=> b!6296814 (= res!2596524 (not ((_ is Concat!25062) lt!2357816)))))

(declare-fun e!3828517 () Bool)

(assert (=> b!6296814 (= e!3828517 e!3828520)))

(declare-fun c!1143064 () Bool)

(declare-fun bm!533554 () Bool)

(declare-fun c!1143065 () Bool)

(assert (=> bm!533554 (= call!533560 (validRegex!7953 (ite c!1143064 (reg!16546 lt!2357816) (ite c!1143065 (regOne!32947 lt!2357816) (regOne!32946 lt!2357816)))))))

(declare-fun b!6296815 () Bool)

(declare-fun e!3828516 () Bool)

(assert (=> b!6296815 (= e!3828516 e!3828519)))

(assert (=> b!6296815 (= c!1143064 ((_ is Star!16217) lt!2357816))))

(declare-fun bm!533555 () Bool)

(assert (=> bm!533555 (= call!533559 (validRegex!7953 (ite c!1143065 (regTwo!32947 lt!2357816) (regTwo!32946 lt!2357816))))))

(declare-fun d!1976172 () Bool)

(declare-fun res!2596523 () Bool)

(assert (=> d!1976172 (=> res!2596523 e!3828516)))

(assert (=> d!1976172 (= res!2596523 ((_ is ElementMatch!16217) lt!2357816))))

(assert (=> d!1976172 (= (validRegex!7953 lt!2357816) e!3828516)))

(declare-fun b!6296816 () Bool)

(assert (=> b!6296816 (= e!3828519 e!3828517)))

(assert (=> b!6296816 (= c!1143065 ((_ is Union!16217) lt!2357816))))

(declare-fun b!6296817 () Bool)

(declare-fun res!2596521 () Bool)

(assert (=> b!6296817 (=> (not res!2596521) (not e!3828521))))

(assert (=> b!6296817 (= res!2596521 call!533558)))

(assert (=> b!6296817 (= e!3828517 e!3828521)))

(assert (= (and d!1976172 (not res!2596523)) b!6296815))

(assert (= (and b!6296815 c!1143064) b!6296810))

(assert (= (and b!6296815 (not c!1143064)) b!6296816))

(assert (= (and b!6296810 res!2596520) b!6296813))

(assert (= (and b!6296816 c!1143065) b!6296817))

(assert (= (and b!6296816 (not c!1143065)) b!6296814))

(assert (= (and b!6296817 res!2596521) b!6296809))

(assert (= (and b!6296814 (not res!2596524)) b!6296812))

(assert (= (and b!6296812 res!2596522) b!6296811))

(assert (= (or b!6296809 b!6296811) bm!533555))

(assert (= (or b!6296817 b!6296812) bm!533553))

(assert (= (or b!6296813 bm!533553) bm!533554))

(declare-fun m!7116340 () Bool)

(assert (=> b!6296810 m!7116340))

(declare-fun m!7116342 () Bool)

(assert (=> bm!533554 m!7116342))

(declare-fun m!7116344 () Bool)

(assert (=> bm!533555 m!7116344))

(assert (=> d!1975832 d!1976172))

(declare-fun d!1976174 () Bool)

(declare-fun res!2596525 () Bool)

(declare-fun e!3828523 () Bool)

(assert (=> d!1976174 (=> res!2596525 e!3828523)))

(assert (=> d!1976174 (= res!2596525 ((_ is Nil!64827) (exprs!6101 (h!71276 zl!343))))))

(assert (=> d!1976174 (= (forall!15367 (exprs!6101 (h!71276 zl!343)) lambda!345961) e!3828523)))

(declare-fun b!6296818 () Bool)

(declare-fun e!3828524 () Bool)

(assert (=> b!6296818 (= e!3828523 e!3828524)))

(declare-fun res!2596526 () Bool)

(assert (=> b!6296818 (=> (not res!2596526) (not e!3828524))))

(assert (=> b!6296818 (= res!2596526 (dynLambda!25663 lambda!345961 (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296819 () Bool)

(assert (=> b!6296819 (= e!3828524 (forall!15367 (t!378517 (exprs!6101 (h!71276 zl!343))) lambda!345961))))

(assert (= (and d!1976174 (not res!2596525)) b!6296818))

(assert (= (and b!6296818 res!2596526) b!6296819))

(declare-fun b_lambda!239587 () Bool)

(assert (=> (not b_lambda!239587) (not b!6296818)))

(declare-fun m!7116346 () Bool)

(assert (=> b!6296818 m!7116346))

(declare-fun m!7116348 () Bool)

(assert (=> b!6296819 m!7116348))

(assert (=> d!1975832 d!1976174))

(declare-fun d!1976176 () Bool)

(assert (=> d!1976176 (= (isDefined!12811 lt!2357788) (not (isEmpty!36889 lt!2357788)))))

(declare-fun bs!1574939 () Bool)

(assert (= bs!1574939 d!1976176))

(declare-fun m!7116350 () Bool)

(assert (=> bs!1574939 m!7116350))

(assert (=> d!1975768 d!1976176))

(declare-fun b!6296820 () Bool)

(declare-fun e!3828526 () Bool)

(declare-fun e!3828525 () Bool)

(assert (=> b!6296820 (= e!3828526 e!3828525)))

(declare-fun res!2596530 () Bool)

(assert (=> b!6296820 (=> (not res!2596530) (not e!3828525))))

(declare-fun lt!2357867 () Bool)

(assert (=> b!6296820 (= res!2596530 (not lt!2357867))))

(declare-fun b!6296821 () Bool)

(declare-fun e!3828527 () Bool)

(assert (=> b!6296821 (= e!3828527 (nullable!6210 (regOne!32946 r!7292)))))

(declare-fun b!6296822 () Bool)

(declare-fun e!3828529 () Bool)

(assert (=> b!6296822 (= e!3828529 (not lt!2357867))))

(declare-fun b!6296823 () Bool)

(declare-fun res!2596533 () Bool)

(declare-fun e!3828528 () Bool)

(assert (=> b!6296823 (=> (not res!2596533) (not e!3828528))))

(declare-fun call!533561 () Bool)

(assert (=> b!6296823 (= res!2596533 (not call!533561))))

(declare-fun bm!533556 () Bool)

(assert (=> bm!533556 (= call!533561 (isEmpty!36890 Nil!64826))))

(declare-fun b!6296824 () Bool)

(declare-fun res!2596527 () Bool)

(declare-fun e!3828531 () Bool)

(assert (=> b!6296824 (=> res!2596527 e!3828531)))

(assert (=> b!6296824 (= res!2596527 (not (isEmpty!36890 (tail!12020 Nil!64826))))))

(declare-fun b!6296825 () Bool)

(assert (=> b!6296825 (= e!3828527 (matchR!8400 (derivativeStep!4926 (regOne!32946 r!7292) (head!12935 Nil!64826)) (tail!12020 Nil!64826)))))

(declare-fun b!6296826 () Bool)

(assert (=> b!6296826 (= e!3828525 e!3828531)))

(declare-fun res!2596531 () Bool)

(assert (=> b!6296826 (=> res!2596531 e!3828531)))

(assert (=> b!6296826 (= res!2596531 call!533561)))

(declare-fun b!6296827 () Bool)

(declare-fun res!2596532 () Bool)

(assert (=> b!6296827 (=> res!2596532 e!3828526)))

(assert (=> b!6296827 (= res!2596532 e!3828528)))

(declare-fun res!2596529 () Bool)

(assert (=> b!6296827 (=> (not res!2596529) (not e!3828528))))

(assert (=> b!6296827 (= res!2596529 lt!2357867)))

(declare-fun b!6296828 () Bool)

(assert (=> b!6296828 (= e!3828531 (not (= (head!12935 Nil!64826) (c!1142690 (regOne!32946 r!7292)))))))

(declare-fun b!6296830 () Bool)

(declare-fun e!3828530 () Bool)

(assert (=> b!6296830 (= e!3828530 (= lt!2357867 call!533561))))

(declare-fun b!6296831 () Bool)

(declare-fun res!2596528 () Bool)

(assert (=> b!6296831 (=> (not res!2596528) (not e!3828528))))

(assert (=> b!6296831 (= res!2596528 (isEmpty!36890 (tail!12020 Nil!64826)))))

(declare-fun b!6296832 () Bool)

(assert (=> b!6296832 (= e!3828528 (= (head!12935 Nil!64826) (c!1142690 (regOne!32946 r!7292))))))

(declare-fun b!6296833 () Bool)

(declare-fun res!2596534 () Bool)

(assert (=> b!6296833 (=> res!2596534 e!3828526)))

(assert (=> b!6296833 (= res!2596534 (not ((_ is ElementMatch!16217) (regOne!32946 r!7292))))))

(assert (=> b!6296833 (= e!3828529 e!3828526)))

(declare-fun d!1976178 () Bool)

(assert (=> d!1976178 e!3828530))

(declare-fun c!1143067 () Bool)

(assert (=> d!1976178 (= c!1143067 ((_ is EmptyExpr!16217) (regOne!32946 r!7292)))))

(assert (=> d!1976178 (= lt!2357867 e!3828527)))

(declare-fun c!1143068 () Bool)

(assert (=> d!1976178 (= c!1143068 (isEmpty!36890 Nil!64826))))

(assert (=> d!1976178 (validRegex!7953 (regOne!32946 r!7292))))

(assert (=> d!1976178 (= (matchR!8400 (regOne!32946 r!7292) Nil!64826) lt!2357867)))

(declare-fun b!6296829 () Bool)

(assert (=> b!6296829 (= e!3828530 e!3828529)))

(declare-fun c!1143066 () Bool)

(assert (=> b!6296829 (= c!1143066 ((_ is EmptyLang!16217) (regOne!32946 r!7292)))))

(assert (= (and d!1976178 c!1143068) b!6296821))

(assert (= (and d!1976178 (not c!1143068)) b!6296825))

(assert (= (and d!1976178 c!1143067) b!6296830))

(assert (= (and d!1976178 (not c!1143067)) b!6296829))

(assert (= (and b!6296829 c!1143066) b!6296822))

(assert (= (and b!6296829 (not c!1143066)) b!6296833))

(assert (= (and b!6296833 (not res!2596534)) b!6296827))

(assert (= (and b!6296827 res!2596529) b!6296823))

(assert (= (and b!6296823 res!2596533) b!6296831))

(assert (= (and b!6296831 res!2596528) b!6296832))

(assert (= (and b!6296827 (not res!2596532)) b!6296820))

(assert (= (and b!6296820 res!2596530) b!6296826))

(assert (= (and b!6296826 (not res!2596531)) b!6296824))

(assert (= (and b!6296824 (not res!2596527)) b!6296828))

(assert (= (or b!6296830 b!6296823 b!6296826) bm!533556))

(declare-fun m!7116352 () Bool)

(assert (=> b!6296825 m!7116352))

(assert (=> b!6296825 m!7116352))

(declare-fun m!7116354 () Bool)

(assert (=> b!6296825 m!7116354))

(declare-fun m!7116356 () Bool)

(assert (=> b!6296825 m!7116356))

(assert (=> b!6296825 m!7116354))

(assert (=> b!6296825 m!7116356))

(declare-fun m!7116358 () Bool)

(assert (=> b!6296825 m!7116358))

(assert (=> b!6296831 m!7116356))

(assert (=> b!6296831 m!7116356))

(declare-fun m!7116360 () Bool)

(assert (=> b!6296831 m!7116360))

(declare-fun m!7116362 () Bool)

(assert (=> d!1976178 m!7116362))

(assert (=> d!1976178 m!7115452))

(assert (=> b!6296821 m!7116162))

(assert (=> b!6296828 m!7116352))

(assert (=> b!6296832 m!7116352))

(assert (=> bm!533556 m!7116362))

(assert (=> b!6296824 m!7116356))

(assert (=> b!6296824 m!7116356))

(assert (=> b!6296824 m!7116360))

(assert (=> d!1975768 d!1976178))

(assert (=> d!1975768 d!1976028))

(declare-fun d!1976180 () Bool)

(assert (=> d!1976180 (= (head!12934 (exprs!6101 (h!71276 zl!343))) (h!71275 (exprs!6101 (h!71276 zl!343))))))

(assert (=> b!6295806 d!1976180))

(declare-fun d!1976182 () Bool)

(assert (=> d!1976182 (= (isEmpty!36885 (tail!12019 (exprs!6101 (h!71276 zl!343)))) ((_ is Nil!64827) (tail!12019 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> b!6295808 d!1976182))

(declare-fun d!1976184 () Bool)

(assert (=> d!1976184 (= (tail!12019 (exprs!6101 (h!71276 zl!343))) (t!378517 (exprs!6101 (h!71276 zl!343))))))

(assert (=> b!6295808 d!1976184))

(declare-fun d!1976186 () Bool)

(assert (=> d!1976186 true))

(declare-fun setRes!42869 () Bool)

(assert (=> d!1976186 setRes!42869))

(declare-fun condSetEmpty!42869 () Bool)

(declare-fun res!2596537 () (InoxSet Context!11202))

(assert (=> d!1976186 (= condSetEmpty!42869 (= res!2596537 ((as const (Array Context!11202 Bool)) false)))))

(assert (=> d!1976186 (= (choose!46785 z!1189 lambda!345917) res!2596537)))

(declare-fun setIsEmpty!42869 () Bool)

(assert (=> setIsEmpty!42869 setRes!42869))

(declare-fun setNonEmpty!42869 () Bool)

(declare-fun tp!1752964 () Bool)

(declare-fun setElem!42869 () Context!11202)

(declare-fun e!3828534 () Bool)

(assert (=> setNonEmpty!42869 (= setRes!42869 (and tp!1752964 (inv!83789 setElem!42869) e!3828534))))

(declare-fun setRest!42869 () (InoxSet Context!11202))

(assert (=> setNonEmpty!42869 (= res!2596537 ((_ map or) (store ((as const (Array Context!11202 Bool)) false) setElem!42869 true) setRest!42869))))

(declare-fun b!6296836 () Bool)

(declare-fun tp!1752963 () Bool)

(assert (=> b!6296836 (= e!3828534 tp!1752963)))

(assert (= (and d!1976186 condSetEmpty!42869) setIsEmpty!42869))

(assert (= (and d!1976186 (not condSetEmpty!42869)) setNonEmpty!42869))

(assert (= setNonEmpty!42869 b!6296836))

(declare-fun m!7116364 () Bool)

(assert (=> setNonEmpty!42869 m!7116364))

(assert (=> d!1975878 d!1976186))

(declare-fun d!1976188 () Bool)

(assert (=> d!1976188 (= (nullable!6210 r!7292) (nullableFct!2161 r!7292))))

(declare-fun bs!1574940 () Bool)

(assert (= bs!1574940 d!1976188))

(declare-fun m!7116366 () Bool)

(assert (=> bs!1574940 m!7116366))

(assert (=> b!6295961 d!1976188))

(declare-fun d!1976190 () Bool)

(assert (=> d!1976190 (= (isEmpty!36885 (t!378517 (unfocusZipperList!1638 zl!343))) ((_ is Nil!64827) (t!378517 (unfocusZipperList!1638 zl!343))))))

(assert (=> b!6295995 d!1976190))

(declare-fun d!1976192 () Bool)

(assert (=> d!1976192 (= (isEmptyExpr!1623 lt!2357816) ((_ is EmptyExpr!16217) lt!2357816))))

(assert (=> b!6295810 d!1976192))

(declare-fun bs!1574941 () Bool)

(declare-fun d!1976194 () Bool)

(assert (= bs!1574941 (and d!1976194 d!1976062)))

(declare-fun lambda!346025 () Int)

(assert (=> bs!1574941 (= lambda!346025 lambda!346016)))

(declare-fun bs!1574942 () Bool)

(assert (= bs!1574942 (and d!1976194 d!1976154)))

(assert (=> bs!1574942 (= lambda!346025 lambda!346023)))

(assert (=> d!1976194 (= (nullableZipper!1987 ((_ map or) lt!2357744 lt!2357739)) (exists!2533 ((_ map or) lt!2357744 lt!2357739) lambda!346025))))

(declare-fun bs!1574943 () Bool)

(assert (= bs!1574943 d!1976194))

(declare-fun m!7116368 () Bool)

(assert (=> bs!1574943 m!7116368))

(assert (=> b!6295860 d!1976194))

(assert (=> d!1975876 d!1975878))

(declare-fun d!1976196 () Bool)

(assert (=> d!1976196 (= (flatMap!1722 z!1189 lambda!345917) (dynLambda!25661 lambda!345917 (h!71276 zl!343)))))

(assert (=> d!1976196 true))

(declare-fun _$13!3424 () Unit!158199)

(assert (=> d!1976196 (= (choose!46784 z!1189 (h!71276 zl!343) lambda!345917) _$13!3424)))

(declare-fun b_lambda!239589 () Bool)

(assert (=> (not b_lambda!239589) (not d!1976196)))

(declare-fun bs!1574944 () Bool)

(assert (= bs!1574944 d!1976196))

(assert (=> bs!1574944 m!7115300))

(assert (=> bs!1574944 m!7115710))

(assert (=> d!1975876 d!1976196))

(declare-fun d!1976198 () Bool)

(assert (=> d!1976198 (= (nullable!6210 (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))) (nullableFct!2161 (regOne!32946 (regOne!32946 (regOne!32946 r!7292)))))))

(declare-fun bs!1574945 () Bool)

(assert (= bs!1574945 d!1976198))

(declare-fun m!7116370 () Bool)

(assert (=> bs!1574945 m!7116370))

(assert (=> b!6295841 d!1976198))

(declare-fun d!1976200 () Bool)

(assert (=> d!1976200 (= (isEmpty!36885 (exprs!6101 (h!71276 zl!343))) ((_ is Nil!64827) (exprs!6101 (h!71276 zl!343))))))

(assert (=> b!6295812 d!1976200))

(declare-fun d!1976202 () Bool)

(assert (=> d!1976202 (= (isEmpty!36885 (unfocusZipperList!1638 zl!343)) ((_ is Nil!64827) (unfocusZipperList!1638 zl!343)))))

(assert (=> b!6295997 d!1976202))

(assert (=> b!6295964 d!1976158))

(assert (=> b!6295964 d!1976110))

(assert (=> bm!533406 d!1976046))

(assert (=> b!6295857 d!1975842))

(declare-fun d!1976204 () Bool)

(declare-fun res!2596538 () Bool)

(declare-fun e!3828535 () Bool)

(assert (=> d!1976204 (=> res!2596538 e!3828535)))

(assert (=> d!1976204 (= res!2596538 ((_ is Nil!64827) (exprs!6101 (h!71276 zl!343))))))

(assert (=> d!1976204 (= (forall!15367 (exprs!6101 (h!71276 zl!343)) lambda!345974) e!3828535)))

(declare-fun b!6296837 () Bool)

(declare-fun e!3828536 () Bool)

(assert (=> b!6296837 (= e!3828535 e!3828536)))

(declare-fun res!2596539 () Bool)

(assert (=> b!6296837 (=> (not res!2596539) (not e!3828536))))

(assert (=> b!6296837 (= res!2596539 (dynLambda!25663 lambda!345974 (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296838 () Bool)

(assert (=> b!6296838 (= e!3828536 (forall!15367 (t!378517 (exprs!6101 (h!71276 zl!343))) lambda!345974))))

(assert (= (and d!1976204 (not res!2596538)) b!6296837))

(assert (= (and b!6296837 res!2596539) b!6296838))

(declare-fun b_lambda!239591 () Bool)

(assert (=> (not b_lambda!239591) (not b!6296837)))

(declare-fun m!7116372 () Bool)

(assert (=> b!6296837 m!7116372))

(declare-fun m!7116374 () Bool)

(assert (=> b!6296838 m!7116374))

(assert (=> d!1975866 d!1976204))

(declare-fun bs!1574946 () Bool)

(declare-fun d!1976206 () Bool)

(assert (= bs!1574946 (and d!1976206 d!1976114)))

(declare-fun lambda!346026 () Int)

(assert (=> bs!1574946 (= lambda!346026 lambda!346018)))

(declare-fun bs!1574947 () Bool)

(assert (= bs!1574947 (and d!1976206 d!1975832)))

(assert (=> bs!1574947 (= lambda!346026 lambda!345961)))

(declare-fun bs!1574948 () Bool)

(assert (= bs!1574948 (and d!1976206 d!1975764)))

(assert (=> bs!1574948 (= lambda!346026 lambda!345929)))

(declare-fun bs!1574949 () Bool)

(assert (= bs!1574949 (and d!1976206 d!1975868)))

(assert (=> bs!1574949 (= lambda!346026 lambda!345975)))

(declare-fun bs!1574950 () Bool)

(assert (= bs!1574950 (and d!1976206 d!1975866)))

(assert (=> bs!1574950 (= lambda!346026 lambda!345974)))

(declare-fun bs!1574951 () Bool)

(assert (= bs!1574951 (and d!1976206 d!1976136)))

(assert (=> bs!1574951 (= lambda!346026 lambda!346022)))

(declare-fun bs!1574952 () Bool)

(assert (= bs!1574952 (and d!1976206 d!1975864)))

(assert (=> bs!1574952 (= lambda!346026 lambda!345973)))

(declare-fun bs!1574953 () Bool)

(assert (= bs!1574953 (and d!1976206 d!1975862)))

(assert (=> bs!1574953 (= lambda!346026 lambda!345970)))

(declare-fun bs!1574954 () Bool)

(assert (= bs!1574954 (and d!1976206 d!1976160)))

(assert (=> bs!1574954 (= lambda!346026 lambda!346024)))

(declare-fun b!6296839 () Bool)

(declare-fun e!3828542 () Bool)

(declare-fun lt!2357868 () Regex!16217)

(assert (=> b!6296839 (= e!3828542 (= lt!2357868 (head!12934 (t!378517 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun b!6296840 () Bool)

(declare-fun e!3828539 () Regex!16217)

(assert (=> b!6296840 (= e!3828539 (h!71275 (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296841 () Bool)

(declare-fun e!3828540 () Bool)

(assert (=> b!6296841 (= e!3828540 e!3828542)))

(declare-fun c!1143071 () Bool)

(assert (=> b!6296841 (= c!1143071 (isEmpty!36885 (tail!12019 (t!378517 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun b!6296842 () Bool)

(declare-fun e!3828538 () Bool)

(assert (=> b!6296842 (= e!3828538 (isEmpty!36885 (t!378517 (t!378517 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun b!6296843 () Bool)

(assert (=> b!6296843 (= e!3828540 (isEmptyExpr!1623 lt!2357868))))

(declare-fun b!6296844 () Bool)

(declare-fun e!3828537 () Regex!16217)

(assert (=> b!6296844 (= e!3828537 EmptyExpr!16217)))

(declare-fun b!6296845 () Bool)

(declare-fun e!3828541 () Bool)

(assert (=> b!6296845 (= e!3828541 e!3828540)))

(declare-fun c!1143072 () Bool)

(assert (=> b!6296845 (= c!1143072 (isEmpty!36885 (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296846 () Bool)

(assert (=> b!6296846 (= e!3828539 e!3828537)))

(declare-fun c!1143069 () Bool)

(assert (=> b!6296846 (= c!1143069 ((_ is Cons!64827) (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> d!1976206 e!3828541))

(declare-fun res!2596540 () Bool)

(assert (=> d!1976206 (=> (not res!2596540) (not e!3828541))))

(assert (=> d!1976206 (= res!2596540 (validRegex!7953 lt!2357868))))

(assert (=> d!1976206 (= lt!2357868 e!3828539)))

(declare-fun c!1143070 () Bool)

(assert (=> d!1976206 (= c!1143070 e!3828538)))

(declare-fun res!2596541 () Bool)

(assert (=> d!1976206 (=> (not res!2596541) (not e!3828538))))

(assert (=> d!1976206 (= res!2596541 ((_ is Cons!64827) (t!378517 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> d!1976206 (forall!15367 (t!378517 (exprs!6101 (h!71276 zl!343))) lambda!346026)))

(assert (=> d!1976206 (= (generalisedConcat!1814 (t!378517 (exprs!6101 (h!71276 zl!343)))) lt!2357868)))

(declare-fun b!6296847 () Bool)

(assert (=> b!6296847 (= e!3828537 (Concat!25062 (h!71275 (t!378517 (exprs!6101 (h!71276 zl!343)))) (generalisedConcat!1814 (t!378517 (t!378517 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun b!6296848 () Bool)

(assert (=> b!6296848 (= e!3828542 (isConcat!1146 lt!2357868))))

(assert (= (and d!1976206 res!2596541) b!6296842))

(assert (= (and d!1976206 c!1143070) b!6296840))

(assert (= (and d!1976206 (not c!1143070)) b!6296846))

(assert (= (and b!6296846 c!1143069) b!6296847))

(assert (= (and b!6296846 (not c!1143069)) b!6296844))

(assert (= (and d!1976206 res!2596540) b!6296845))

(assert (= (and b!6296845 c!1143072) b!6296843))

(assert (= (and b!6296845 (not c!1143072)) b!6296841))

(assert (= (and b!6296841 c!1143071) b!6296839))

(assert (= (and b!6296841 (not c!1143071)) b!6296848))

(declare-fun m!7116376 () Bool)

(assert (=> b!6296839 m!7116376))

(declare-fun m!7116378 () Bool)

(assert (=> b!6296842 m!7116378))

(declare-fun m!7116380 () Bool)

(assert (=> b!6296843 m!7116380))

(declare-fun m!7116382 () Bool)

(assert (=> d!1976206 m!7116382))

(declare-fun m!7116384 () Bool)

(assert (=> d!1976206 m!7116384))

(declare-fun m!7116386 () Bool)

(assert (=> b!6296847 m!7116386))

(assert (=> b!6296845 m!7115280))

(declare-fun m!7116388 () Bool)

(assert (=> b!6296848 m!7116388))

(declare-fun m!7116390 () Bool)

(assert (=> b!6296841 m!7116390))

(assert (=> b!6296841 m!7116390))

(declare-fun m!7116392 () Bool)

(assert (=> b!6296841 m!7116392))

(assert (=> b!6295814 d!1976206))

(assert (=> d!1975860 d!1975858))

(assert (=> d!1975860 d!1975856))

(declare-fun d!1976208 () Bool)

(assert (=> d!1976208 (= (matchR!8400 r!7292 s!2326) (matchRSpec!3318 r!7292 s!2326))))

(assert (=> d!1976208 true))

(declare-fun _$88!4953 () Unit!158199)

(assert (=> d!1976208 (= (choose!46783 r!7292 s!2326) _$88!4953)))

(declare-fun bs!1574955 () Bool)

(assert (= bs!1574955 d!1976208))

(assert (=> bs!1574955 m!7115266))

(assert (=> bs!1574955 m!7115264))

(assert (=> d!1975860 d!1976208))

(assert (=> d!1975860 d!1975854))

(declare-fun d!1976210 () Bool)

(assert (=> d!1976210 (= (isEmpty!36890 (t!378516 s!2326)) ((_ is Nil!64826) (t!378516 s!2326)))))

(assert (=> d!1975842 d!1976210))

(declare-fun d!1976212 () Bool)

(declare-fun c!1143073 () Bool)

(assert (=> d!1976212 (= c!1143073 (isEmpty!36890 (tail!12020 (t!378516 s!2326))))))

(declare-fun e!3828543 () Bool)

(assert (=> d!1976212 (= (matchZipper!2229 (derivationStepZipper!2183 lt!2357739 (head!12935 (t!378516 s!2326))) (tail!12020 (t!378516 s!2326))) e!3828543)))

(declare-fun b!6296849 () Bool)

(assert (=> b!6296849 (= e!3828543 (nullableZipper!1987 (derivationStepZipper!2183 lt!2357739 (head!12935 (t!378516 s!2326)))))))

(declare-fun b!6296850 () Bool)

(assert (=> b!6296850 (= e!3828543 (matchZipper!2229 (derivationStepZipper!2183 (derivationStepZipper!2183 lt!2357739 (head!12935 (t!378516 s!2326))) (head!12935 (tail!12020 (t!378516 s!2326)))) (tail!12020 (tail!12020 (t!378516 s!2326)))))))

(assert (= (and d!1976212 c!1143073) b!6296849))

(assert (= (and d!1976212 (not c!1143073)) b!6296850))

(assert (=> d!1976212 m!7115616))

(assert (=> d!1976212 m!7116010))

(assert (=> b!6296849 m!7115614))

(declare-fun m!7116394 () Bool)

(assert (=> b!6296849 m!7116394))

(assert (=> b!6296850 m!7115616))

(assert (=> b!6296850 m!7116014))

(assert (=> b!6296850 m!7115614))

(assert (=> b!6296850 m!7116014))

(declare-fun m!7116396 () Bool)

(assert (=> b!6296850 m!7116396))

(assert (=> b!6296850 m!7115616))

(assert (=> b!6296850 m!7116018))

(assert (=> b!6296850 m!7116396))

(assert (=> b!6296850 m!7116018))

(declare-fun m!7116398 () Bool)

(assert (=> b!6296850 m!7116398))

(assert (=> b!6295854 d!1976212))

(declare-fun bs!1574956 () Bool)

(declare-fun d!1976214 () Bool)

(assert (= bs!1574956 (and d!1976214 b!6295355)))

(declare-fun lambda!346027 () Int)

(assert (=> bs!1574956 (= (= (head!12935 (t!378516 s!2326)) (h!71274 s!2326)) (= lambda!346027 lambda!345917))))

(declare-fun bs!1574957 () Bool)

(assert (= bs!1574957 (and d!1976214 d!1976036)))

(assert (=> bs!1574957 (= lambda!346027 lambda!346010)))

(assert (=> d!1976214 true))

(assert (=> d!1976214 (= (derivationStepZipper!2183 lt!2357739 (head!12935 (t!378516 s!2326))) (flatMap!1722 lt!2357739 lambda!346027))))

(declare-fun bs!1574958 () Bool)

(assert (= bs!1574958 d!1976214))

(declare-fun m!7116400 () Bool)

(assert (=> bs!1574958 m!7116400))

(assert (=> b!6295854 d!1976214))

(assert (=> b!6295854 d!1976038))

(assert (=> b!6295854 d!1976040))

(declare-fun b!6296851 () Bool)

(declare-fun c!1143078 () Bool)

(assert (=> b!6296851 (= c!1143078 ((_ is Star!16217) (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun e!3828549 () (InoxSet Context!11202))

(declare-fun e!3828548 () (InoxSet Context!11202))

(assert (=> b!6296851 (= e!3828549 e!3828548)))

(declare-fun bm!533557 () Bool)

(declare-fun call!533567 () List!64951)

(declare-fun call!533565 () List!64951)

(assert (=> bm!533557 (= call!533567 call!533565)))

(declare-fun d!1976216 () Bool)

(declare-fun c!1143075 () Bool)

(assert (=> d!1976216 (= c!1143075 (and ((_ is ElementMatch!16217) (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))) (= (c!1142690 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))) (h!71274 s!2326))))))

(declare-fun e!3828547 () (InoxSet Context!11202))

(assert (=> d!1976216 (= (derivationStepZipperDown!1465 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))) (ite c!1142866 lt!2357738 (Context!11203 call!533419)) (h!71274 s!2326)) e!3828547)))

(declare-fun b!6296852 () Bool)

(declare-fun call!533564 () (InoxSet Context!11202))

(assert (=> b!6296852 (= e!3828548 call!533564)))

(declare-fun b!6296853 () Bool)

(declare-fun e!3828546 () (InoxSet Context!11202))

(assert (=> b!6296853 (= e!3828546 e!3828549)))

(declare-fun c!1143076 () Bool)

(assert (=> b!6296853 (= c!1143076 ((_ is Concat!25062) (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun b!6296854 () Bool)

(declare-fun e!3828544 () Bool)

(assert (=> b!6296854 (= e!3828544 (nullable!6210 (regOne!32946 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))))))))

(declare-fun call!533566 () (InoxSet Context!11202))

(declare-fun c!1143074 () Bool)

(declare-fun bm!533558 () Bool)

(assert (=> bm!533558 (= call!533566 (derivationStepZipperDown!1465 (ite c!1143074 (regOne!32947 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))) (regOne!32946 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))))) (ite c!1143074 (ite c!1142866 lt!2357738 (Context!11203 call!533419)) (Context!11203 call!533565)) (h!71274 s!2326)))))

(declare-fun b!6296855 () Bool)

(assert (=> b!6296855 (= e!3828547 (store ((as const (Array Context!11202 Bool)) false) (ite c!1142866 lt!2357738 (Context!11203 call!533419)) true))))

(declare-fun b!6296856 () Bool)

(declare-fun e!3828545 () (InoxSet Context!11202))

(assert (=> b!6296856 (= e!3828547 e!3828545)))

(assert (=> b!6296856 (= c!1143074 ((_ is Union!16217) (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun b!6296857 () Bool)

(assert (=> b!6296857 (= e!3828549 call!533564)))

(declare-fun bm!533559 () Bool)

(declare-fun c!1143077 () Bool)

(assert (=> bm!533559 (= call!533565 ($colon$colon!2082 (exprs!6101 (ite c!1142866 lt!2357738 (Context!11203 call!533419))) (ite (or c!1143077 c!1143076) (regTwo!32946 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))) (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))))))))

(declare-fun b!6296858 () Bool)

(assert (=> b!6296858 (= c!1143077 e!3828544)))

(declare-fun res!2596542 () Bool)

(assert (=> b!6296858 (=> (not res!2596542) (not e!3828544))))

(assert (=> b!6296858 (= res!2596542 ((_ is Concat!25062) (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))

(assert (=> b!6296858 (= e!3828545 e!3828546)))

(declare-fun b!6296859 () Bool)

(assert (=> b!6296859 (= e!3828548 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533560 () Bool)

(declare-fun call!533563 () (InoxSet Context!11202))

(declare-fun call!533562 () (InoxSet Context!11202))

(assert (=> bm!533560 (= call!533563 call!533562)))

(declare-fun b!6296860 () Bool)

(assert (=> b!6296860 (= e!3828546 ((_ map or) call!533566 call!533563))))

(declare-fun bm!533561 () Bool)

(assert (=> bm!533561 (= call!533562 (derivationStepZipperDown!1465 (ite c!1143074 (regTwo!32947 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))) (ite c!1143077 (regTwo!32946 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))) (ite c!1143076 (regOne!32946 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))) (reg!16546 (ite c!1142866 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))))))) (ite (or c!1143074 c!1143077) (ite c!1142866 lt!2357738 (Context!11203 call!533419)) (Context!11203 call!533567)) (h!71274 s!2326)))))

(declare-fun bm!533562 () Bool)

(assert (=> bm!533562 (= call!533564 call!533563)))

(declare-fun b!6296861 () Bool)

(assert (=> b!6296861 (= e!3828545 ((_ map or) call!533566 call!533562))))

(assert (= (and d!1976216 c!1143075) b!6296855))

(assert (= (and d!1976216 (not c!1143075)) b!6296856))

(assert (= (and b!6296856 c!1143074) b!6296861))

(assert (= (and b!6296856 (not c!1143074)) b!6296858))

(assert (= (and b!6296858 res!2596542) b!6296854))

(assert (= (and b!6296858 c!1143077) b!6296860))

(assert (= (and b!6296858 (not c!1143077)) b!6296853))

(assert (= (and b!6296853 c!1143076) b!6296857))

(assert (= (and b!6296853 (not c!1143076)) b!6296851))

(assert (= (and b!6296851 c!1143078) b!6296852))

(assert (= (and b!6296851 (not c!1143078)) b!6296859))

(assert (= (or b!6296857 b!6296852) bm!533557))

(assert (= (or b!6296857 b!6296852) bm!533562))

(assert (= (or b!6296860 bm!533557) bm!533559))

(assert (= (or b!6296860 bm!533562) bm!533560))

(assert (= (or b!6296861 bm!533560) bm!533561))

(assert (= (or b!6296861 b!6296860) bm!533558))

(declare-fun m!7116402 () Bool)

(assert (=> bm!533558 m!7116402))

(declare-fun m!7116404 () Bool)

(assert (=> bm!533559 m!7116404))

(declare-fun m!7116406 () Bool)

(assert (=> b!6296854 m!7116406))

(declare-fun m!7116408 () Bool)

(assert (=> bm!533561 m!7116408))

(declare-fun m!7116410 () Bool)

(assert (=> b!6296855 m!7116410))

(assert (=> bm!533412 d!1976216))

(declare-fun d!1976218 () Bool)

(assert (=> d!1976218 true))

(assert (=> d!1976218 true))

(declare-fun res!2596543 () Bool)

(assert (=> d!1976218 (= (choose!46776 lambda!345915) res!2596543)))

(assert (=> d!1975784 d!1976218))

(declare-fun d!1976220 () Bool)

(assert (=> d!1976220 (= (Exists!3287 (ite c!1142840 lambda!345966 lambda!345967)) (choose!46776 (ite c!1142840 lambda!345966 lambda!345967)))))

(declare-fun bs!1574959 () Bool)

(assert (= bs!1574959 d!1976220))

(declare-fun m!7116412 () Bool)

(assert (=> bs!1574959 m!7116412))

(assert (=> bm!533407 d!1976220))

(declare-fun d!1976222 () Bool)

(assert (=> d!1976222 (= (isUnion!1060 lt!2357828) ((_ is Union!16217) lt!2357828))))

(assert (=> b!6296001 d!1976222))

(assert (=> b!6295968 d!1976108))

(assert (=> d!1975848 d!1976210))

(declare-fun d!1976224 () Bool)

(assert (=> d!1976224 (= (isEmpty!36885 (tail!12019 (unfocusZipperList!1638 zl!343))) ((_ is Nil!64827) (tail!12019 (unfocusZipperList!1638 zl!343))))))

(assert (=> b!6296003 d!1976224))

(declare-fun d!1976226 () Bool)

(assert (=> d!1976226 (= (tail!12019 (unfocusZipperList!1638 zl!343)) (t!378517 (unfocusZipperList!1638 zl!343)))))

(assert (=> b!6296003 d!1976226))

(declare-fun b!6296876 () Bool)

(declare-fun e!3828564 () Bool)

(declare-fun e!3828563 () Bool)

(assert (=> b!6296876 (= e!3828564 e!3828563)))

(declare-fun c!1143081 () Bool)

(assert (=> b!6296876 (= c!1143081 ((_ is Union!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6296877 () Bool)

(declare-fun e!3828567 () Bool)

(declare-fun call!533572 () Bool)

(assert (=> b!6296877 (= e!3828567 call!533572)))

(declare-fun b!6296878 () Bool)

(declare-fun e!3828565 () Bool)

(declare-fun e!3828566 () Bool)

(assert (=> b!6296878 (= e!3828565 e!3828566)))

(declare-fun res!2596556 () Bool)

(assert (=> b!6296878 (=> (not res!2596556) (not e!3828566))))

(assert (=> b!6296878 (= res!2596556 (and (not ((_ is EmptyLang!16217) (h!71275 (exprs!6101 (h!71276 zl!343))))) (not ((_ is ElementMatch!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun b!6296879 () Bool)

(declare-fun e!3828562 () Bool)

(assert (=> b!6296879 (= e!3828563 e!3828562)))

(declare-fun res!2596557 () Bool)

(declare-fun call!533573 () Bool)

(assert (=> b!6296879 (= res!2596557 call!533573)))

(assert (=> b!6296879 (=> (not res!2596557) (not e!3828562))))

(declare-fun bm!533567 () Bool)

(assert (=> bm!533567 (= call!533573 (nullable!6210 (ite c!1143081 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun b!6296880 () Bool)

(assert (=> b!6296880 (= e!3828562 call!533572)))

(declare-fun b!6296881 () Bool)

(assert (=> b!6296881 (= e!3828566 e!3828564)))

(declare-fun res!2596554 () Bool)

(assert (=> b!6296881 (=> res!2596554 e!3828564)))

(assert (=> b!6296881 (= res!2596554 ((_ is Star!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun d!1976228 () Bool)

(declare-fun res!2596558 () Bool)

(assert (=> d!1976228 (=> res!2596558 e!3828565)))

(assert (=> d!1976228 (= res!2596558 ((_ is EmptyExpr!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> d!1976228 (= (nullableFct!2161 (h!71275 (exprs!6101 (h!71276 zl!343)))) e!3828565)))

(declare-fun bm!533568 () Bool)

(assert (=> bm!533568 (= call!533572 (nullable!6210 (ite c!1143081 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun b!6296882 () Bool)

(assert (=> b!6296882 (= e!3828563 e!3828567)))

(declare-fun res!2596555 () Bool)

(assert (=> b!6296882 (= res!2596555 call!533573)))

(assert (=> b!6296882 (=> res!2596555 e!3828567)))

(assert (= (and d!1976228 (not res!2596558)) b!6296878))

(assert (= (and b!6296878 res!2596556) b!6296881))

(assert (= (and b!6296881 (not res!2596554)) b!6296876))

(assert (= (and b!6296876 c!1143081) b!6296882))

(assert (= (and b!6296876 (not c!1143081)) b!6296879))

(assert (= (and b!6296882 (not res!2596555)) b!6296877))

(assert (= (and b!6296879 res!2596557) b!6296880))

(assert (= (or b!6296877 b!6296880) bm!533568))

(assert (= (or b!6296882 b!6296879) bm!533567))

(declare-fun m!7116414 () Bool)

(assert (=> bm!533567 m!7116414))

(declare-fun m!7116416 () Bool)

(assert (=> bm!533568 m!7116416))

(assert (=> d!1975872 d!1976228))

(assert (=> b!6295546 d!1976176))

(declare-fun d!1976230 () Bool)

(declare-fun res!2596563 () Bool)

(declare-fun e!3828572 () Bool)

(assert (=> d!1976230 (=> res!2596563 e!3828572)))

(assert (=> d!1976230 (= res!2596563 ((_ is Nil!64828) lt!2357810))))

(assert (=> d!1976230 (= (noDuplicate!2051 lt!2357810) e!3828572)))

(declare-fun b!6296887 () Bool)

(declare-fun e!3828573 () Bool)

(assert (=> b!6296887 (= e!3828572 e!3828573)))

(declare-fun res!2596564 () Bool)

(assert (=> b!6296887 (=> (not res!2596564) (not e!3828573))))

(declare-fun contains!20130 (List!64952 Context!11202) Bool)

(assert (=> b!6296887 (= res!2596564 (not (contains!20130 (t!378518 lt!2357810) (h!71276 lt!2357810))))))

(declare-fun b!6296888 () Bool)

(assert (=> b!6296888 (= e!3828573 (noDuplicate!2051 (t!378518 lt!2357810)))))

(assert (= (and d!1976230 (not res!2596563)) b!6296887))

(assert (= (and b!6296887 res!2596564) b!6296888))

(declare-fun m!7116418 () Bool)

(assert (=> b!6296887 m!7116418))

(declare-fun m!7116420 () Bool)

(assert (=> b!6296888 m!7116420))

(assert (=> d!1975826 d!1976230))

(declare-fun d!1976232 () Bool)

(declare-fun e!3828582 () Bool)

(assert (=> d!1976232 e!3828582))

(declare-fun res!2596570 () Bool)

(assert (=> d!1976232 (=> (not res!2596570) (not e!3828582))))

(declare-fun res!2596569 () List!64952)

(assert (=> d!1976232 (= res!2596570 (noDuplicate!2051 res!2596569))))

(declare-fun e!3828580 () Bool)

(assert (=> d!1976232 e!3828580))

(assert (=> d!1976232 (= (choose!46779 z!1189) res!2596569)))

(declare-fun b!6296896 () Bool)

(declare-fun e!3828581 () Bool)

(declare-fun tp!1752970 () Bool)

(assert (=> b!6296896 (= e!3828581 tp!1752970)))

(declare-fun tp!1752969 () Bool)

(declare-fun b!6296895 () Bool)

(assert (=> b!6296895 (= e!3828580 (and (inv!83789 (h!71276 res!2596569)) e!3828581 tp!1752969))))

(declare-fun b!6296897 () Bool)

(assert (=> b!6296897 (= e!3828582 (= (content!12198 res!2596569) z!1189))))

(assert (= b!6296895 b!6296896))

(assert (= (and d!1976232 ((_ is Cons!64828) res!2596569)) b!6296895))

(assert (= (and d!1976232 res!2596570) b!6296897))

(declare-fun m!7116422 () Bool)

(assert (=> d!1976232 m!7116422))

(declare-fun m!7116424 () Bool)

(assert (=> b!6296895 m!7116424))

(declare-fun m!7116426 () Bool)

(assert (=> b!6296897 m!7116426))

(assert (=> d!1975826 d!1976232))

(declare-fun b!6296899 () Bool)

(declare-fun e!3828584 () List!64950)

(assert (=> b!6296899 (= e!3828584 (Cons!64826 (h!71274 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826))) (++!14290 (t!378516 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826))) (t!378516 s!2326))))))

(declare-fun b!6296898 () Bool)

(assert (=> b!6296898 (= e!3828584 (t!378516 s!2326))))

(declare-fun b!6296900 () Bool)

(declare-fun res!2596572 () Bool)

(declare-fun e!3828583 () Bool)

(assert (=> b!6296900 (=> (not res!2596572) (not e!3828583))))

(declare-fun lt!2357869 () List!64950)

(assert (=> b!6296900 (= res!2596572 (= (size!40319 lt!2357869) (+ (size!40319 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826))) (size!40319 (t!378516 s!2326)))))))

(declare-fun d!1976234 () Bool)

(assert (=> d!1976234 e!3828583))

(declare-fun res!2596571 () Bool)

(assert (=> d!1976234 (=> (not res!2596571) (not e!3828583))))

(assert (=> d!1976234 (= res!2596571 (= (content!12199 lt!2357869) ((_ map or) (content!12199 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826))) (content!12199 (t!378516 s!2326)))))))

(assert (=> d!1976234 (= lt!2357869 e!3828584)))

(declare-fun c!1143082 () Bool)

(assert (=> d!1976234 (= c!1143082 ((_ is Nil!64826) (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826))))))

(assert (=> d!1976234 (= (++!14290 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (t!378516 s!2326)) lt!2357869)))

(declare-fun b!6296901 () Bool)

(assert (=> b!6296901 (= e!3828583 (or (not (= (t!378516 s!2326) Nil!64826)) (= lt!2357869 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)))))))

(assert (= (and d!1976234 c!1143082) b!6296898))

(assert (= (and d!1976234 (not c!1143082)) b!6296899))

(assert (= (and d!1976234 res!2596571) b!6296900))

(assert (= (and b!6296900 res!2596572) b!6296901))

(declare-fun m!7116428 () Bool)

(assert (=> b!6296899 m!7116428))

(declare-fun m!7116430 () Bool)

(assert (=> b!6296900 m!7116430))

(assert (=> b!6296900 m!7115456))

(declare-fun m!7116432 () Bool)

(assert (=> b!6296900 m!7116432))

(declare-fun m!7116434 () Bool)

(assert (=> b!6296900 m!7116434))

(declare-fun m!7116436 () Bool)

(assert (=> d!1976234 m!7116436))

(assert (=> d!1976234 m!7115456))

(declare-fun m!7116438 () Bool)

(assert (=> d!1976234 m!7116438))

(declare-fun m!7116440 () Bool)

(assert (=> d!1976234 m!7116440))

(assert (=> b!6295550 d!1976234))

(declare-fun b!6296903 () Bool)

(declare-fun e!3828586 () List!64950)

(assert (=> b!6296903 (= e!3828586 (Cons!64826 (h!71274 Nil!64826) (++!14290 (t!378516 Nil!64826) (Cons!64826 (h!71274 s!2326) Nil!64826))))))

(declare-fun b!6296902 () Bool)

(assert (=> b!6296902 (= e!3828586 (Cons!64826 (h!71274 s!2326) Nil!64826))))

(declare-fun b!6296904 () Bool)

(declare-fun res!2596574 () Bool)

(declare-fun e!3828585 () Bool)

(assert (=> b!6296904 (=> (not res!2596574) (not e!3828585))))

(declare-fun lt!2357870 () List!64950)

(assert (=> b!6296904 (= res!2596574 (= (size!40319 lt!2357870) (+ (size!40319 Nil!64826) (size!40319 (Cons!64826 (h!71274 s!2326) Nil!64826)))))))

(declare-fun d!1976236 () Bool)

(assert (=> d!1976236 e!3828585))

(declare-fun res!2596573 () Bool)

(assert (=> d!1976236 (=> (not res!2596573) (not e!3828585))))

(assert (=> d!1976236 (= res!2596573 (= (content!12199 lt!2357870) ((_ map or) (content!12199 Nil!64826) (content!12199 (Cons!64826 (h!71274 s!2326) Nil!64826)))))))

(assert (=> d!1976236 (= lt!2357870 e!3828586)))

(declare-fun c!1143083 () Bool)

(assert (=> d!1976236 (= c!1143083 ((_ is Nil!64826) Nil!64826))))

(assert (=> d!1976236 (= (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) lt!2357870)))

(declare-fun b!6296905 () Bool)

(assert (=> b!6296905 (= e!3828585 (or (not (= (Cons!64826 (h!71274 s!2326) Nil!64826) Nil!64826)) (= lt!2357870 Nil!64826)))))

(assert (= (and d!1976236 c!1143083) b!6296902))

(assert (= (and d!1976236 (not c!1143083)) b!6296903))

(assert (= (and d!1976236 res!2596573) b!6296904))

(assert (= (and b!6296904 res!2596574) b!6296905))

(declare-fun m!7116442 () Bool)

(assert (=> b!6296903 m!7116442))

(declare-fun m!7116444 () Bool)

(assert (=> b!6296904 m!7116444))

(declare-fun m!7116446 () Bool)

(assert (=> b!6296904 m!7116446))

(declare-fun m!7116448 () Bool)

(assert (=> b!6296904 m!7116448))

(declare-fun m!7116450 () Bool)

(assert (=> d!1976236 m!7116450))

(declare-fun m!7116452 () Bool)

(assert (=> d!1976236 m!7116452))

(declare-fun m!7116454 () Bool)

(assert (=> d!1976236 m!7116454))

(assert (=> b!6295550 d!1976236))

(declare-fun d!1976238 () Bool)

(assert (=> d!1976238 (= (++!14290 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (t!378516 s!2326)) s!2326)))

(declare-fun lt!2357873 () Unit!158199)

(declare-fun choose!46786 (List!64950 C!32704 List!64950 List!64950) Unit!158199)

(assert (=> d!1976238 (= lt!2357873 (choose!46786 Nil!64826 (h!71274 s!2326) (t!378516 s!2326) s!2326))))

(assert (=> d!1976238 (= (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) (t!378516 s!2326))) s!2326)))

(assert (=> d!1976238 (= (lemmaMoveElementToOtherListKeepsConcatEq!2385 Nil!64826 (h!71274 s!2326) (t!378516 s!2326) s!2326) lt!2357873)))

(declare-fun bs!1574960 () Bool)

(assert (= bs!1574960 d!1976238))

(assert (=> bs!1574960 m!7115456))

(assert (=> bs!1574960 m!7115456))

(assert (=> bs!1574960 m!7115458))

(declare-fun m!7116456 () Bool)

(assert (=> bs!1574960 m!7116456))

(declare-fun m!7116458 () Bool)

(assert (=> bs!1574960 m!7116458))

(assert (=> b!6295550 d!1976238))

(declare-fun d!1976240 () Bool)

(declare-fun e!3828591 () Bool)

(assert (=> d!1976240 e!3828591))

(declare-fun res!2596575 () Bool)

(assert (=> d!1976240 (=> res!2596575 e!3828591)))

(declare-fun e!3828589 () Bool)

(assert (=> d!1976240 (= res!2596575 e!3828589)))

(declare-fun res!2596578 () Bool)

(assert (=> d!1976240 (=> (not res!2596578) (not e!3828589))))

(declare-fun lt!2357875 () Option!16108)

(assert (=> d!1976240 (= res!2596578 (isDefined!12811 lt!2357875))))

(declare-fun e!3828588 () Option!16108)

(assert (=> d!1976240 (= lt!2357875 e!3828588)))

(declare-fun c!1143085 () Bool)

(declare-fun e!3828590 () Bool)

(assert (=> d!1976240 (= c!1143085 e!3828590)))

(declare-fun res!2596576 () Bool)

(assert (=> d!1976240 (=> (not res!2596576) (not e!3828590))))

(assert (=> d!1976240 (= res!2596576 (matchR!8400 (regOne!32946 r!7292) (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826))))))

(assert (=> d!1976240 (validRegex!7953 (regOne!32946 r!7292))))

(assert (=> d!1976240 (= (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (t!378516 s!2326) s!2326) lt!2357875)))

(declare-fun b!6296906 () Bool)

(assert (=> b!6296906 (= e!3828588 (Some!16107 (tuple2!66393 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (t!378516 s!2326))))))

(declare-fun b!6296907 () Bool)

(declare-fun res!2596579 () Bool)

(assert (=> b!6296907 (=> (not res!2596579) (not e!3828589))))

(assert (=> b!6296907 (= res!2596579 (matchR!8400 (regTwo!32946 r!7292) (_2!36499 (get!22414 lt!2357875))))))

(declare-fun b!6296908 () Bool)

(assert (=> b!6296908 (= e!3828591 (not (isDefined!12811 lt!2357875)))))

(declare-fun b!6296909 () Bool)

(assert (=> b!6296909 (= e!3828590 (matchR!8400 (regTwo!32946 r!7292) (t!378516 s!2326)))))

(declare-fun b!6296910 () Bool)

(declare-fun e!3828587 () Option!16108)

(assert (=> b!6296910 (= e!3828588 e!3828587)))

(declare-fun c!1143084 () Bool)

(assert (=> b!6296910 (= c!1143084 ((_ is Nil!64826) (t!378516 s!2326)))))

(declare-fun b!6296911 () Bool)

(assert (=> b!6296911 (= e!3828589 (= (++!14290 (_1!36499 (get!22414 lt!2357875)) (_2!36499 (get!22414 lt!2357875))) s!2326))))

(declare-fun b!6296912 () Bool)

(declare-fun lt!2357876 () Unit!158199)

(declare-fun lt!2357874 () Unit!158199)

(assert (=> b!6296912 (= lt!2357876 lt!2357874)))

(assert (=> b!6296912 (= (++!14290 (++!14290 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (Cons!64826 (h!71274 (t!378516 s!2326)) Nil!64826)) (t!378516 (t!378516 s!2326))) s!2326)))

(assert (=> b!6296912 (= lt!2357874 (lemmaMoveElementToOtherListKeepsConcatEq!2385 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (h!71274 (t!378516 s!2326)) (t!378516 (t!378516 s!2326)) s!2326))))

(assert (=> b!6296912 (= e!3828587 (findConcatSeparation!2522 (regOne!32946 r!7292) (regTwo!32946 r!7292) (++!14290 (++!14290 Nil!64826 (Cons!64826 (h!71274 s!2326) Nil!64826)) (Cons!64826 (h!71274 (t!378516 s!2326)) Nil!64826)) (t!378516 (t!378516 s!2326)) s!2326))))

(declare-fun b!6296913 () Bool)

(assert (=> b!6296913 (= e!3828587 None!16107)))

(declare-fun b!6296914 () Bool)

(declare-fun res!2596577 () Bool)

(assert (=> b!6296914 (=> (not res!2596577) (not e!3828589))))

(assert (=> b!6296914 (= res!2596577 (matchR!8400 (regOne!32946 r!7292) (_1!36499 (get!22414 lt!2357875))))))

(assert (= (and d!1976240 res!2596576) b!6296909))

(assert (= (and d!1976240 c!1143085) b!6296906))

(assert (= (and d!1976240 (not c!1143085)) b!6296910))

(assert (= (and b!6296910 c!1143084) b!6296913))

(assert (= (and b!6296910 (not c!1143084)) b!6296912))

(assert (= (and d!1976240 res!2596578) b!6296914))

(assert (= (and b!6296914 res!2596577) b!6296907))

(assert (= (and b!6296907 res!2596579) b!6296911))

(assert (= (and d!1976240 (not res!2596575)) b!6296908))

(declare-fun m!7116460 () Bool)

(assert (=> b!6296908 m!7116460))

(declare-fun m!7116462 () Bool)

(assert (=> b!6296911 m!7116462))

(declare-fun m!7116464 () Bool)

(assert (=> b!6296911 m!7116464))

(assert (=> d!1976240 m!7116460))

(assert (=> d!1976240 m!7115456))

(declare-fun m!7116466 () Bool)

(assert (=> d!1976240 m!7116466))

(assert (=> d!1976240 m!7115452))

(assert (=> b!6296907 m!7116462))

(declare-fun m!7116468 () Bool)

(assert (=> b!6296907 m!7116468))

(assert (=> b!6296912 m!7115456))

(declare-fun m!7116470 () Bool)

(assert (=> b!6296912 m!7116470))

(assert (=> b!6296912 m!7116470))

(declare-fun m!7116472 () Bool)

(assert (=> b!6296912 m!7116472))

(assert (=> b!6296912 m!7115456))

(declare-fun m!7116474 () Bool)

(assert (=> b!6296912 m!7116474))

(assert (=> b!6296912 m!7116470))

(declare-fun m!7116476 () Bool)

(assert (=> b!6296912 m!7116476))

(declare-fun m!7116478 () Bool)

(assert (=> b!6296909 m!7116478))

(assert (=> b!6296914 m!7116462))

(declare-fun m!7116480 () Bool)

(assert (=> b!6296914 m!7116480))

(assert (=> b!6295550 d!1976240))

(declare-fun d!1976242 () Bool)

(assert (=> d!1976242 (= ($colon$colon!2082 (exprs!6101 lt!2357738) (ite (or c!1142869 c!1142868) (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (h!71275 (exprs!6101 (h!71276 zl!343))))) (Cons!64827 (ite (or c!1142869 c!1142868) (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (h!71275 (exprs!6101 (h!71276 zl!343)))) (exprs!6101 lt!2357738)))))

(assert (=> bm!533413 d!1976242))

(declare-fun d!1976244 () Bool)

(declare-fun res!2596580 () Bool)

(declare-fun e!3828592 () Bool)

(assert (=> d!1976244 (=> res!2596580 e!3828592)))

(assert (=> d!1976244 (= res!2596580 ((_ is Nil!64827) lt!2357831))))

(assert (=> d!1976244 (= (forall!15367 lt!2357831 lambda!345973) e!3828592)))

(declare-fun b!6296915 () Bool)

(declare-fun e!3828593 () Bool)

(assert (=> b!6296915 (= e!3828592 e!3828593)))

(declare-fun res!2596581 () Bool)

(assert (=> b!6296915 (=> (not res!2596581) (not e!3828593))))

(assert (=> b!6296915 (= res!2596581 (dynLambda!25663 lambda!345973 (h!71275 lt!2357831)))))

(declare-fun b!6296916 () Bool)

(assert (=> b!6296916 (= e!3828593 (forall!15367 (t!378517 lt!2357831) lambda!345973))))

(assert (= (and d!1976244 (not res!2596580)) b!6296915))

(assert (= (and b!6296915 res!2596581) b!6296916))

(declare-fun b_lambda!239593 () Bool)

(assert (=> (not b_lambda!239593) (not b!6296915)))

(declare-fun m!7116482 () Bool)

(assert (=> b!6296915 m!7116482))

(declare-fun m!7116484 () Bool)

(assert (=> b!6296916 m!7116484))

(assert (=> d!1975864 d!1976244))

(assert (=> b!6295972 d!1976108))

(declare-fun bs!1574961 () Bool)

(declare-fun b!6296926 () Bool)

(assert (= bs!1574961 (and b!6296926 d!1975994)))

(declare-fun lambda!346028 () Int)

(assert (=> bs!1574961 (not (= lambda!346028 lambda!346003))))

(declare-fun bs!1574962 () Bool)

(assert (= bs!1574962 (and b!6296926 d!1975810)))

(assert (=> bs!1574962 (not (= lambda!346028 lambda!345958))))

(declare-fun bs!1574963 () Bool)

(assert (= bs!1574963 (and b!6296926 b!6295930)))

(assert (=> bs!1574963 (= (and (= (reg!16546 (regTwo!32947 r!7292)) (reg!16546 r!7292)) (= (regTwo!32947 r!7292) r!7292)) (= lambda!346028 lambda!345966))))

(declare-fun bs!1574964 () Bool)

(assert (= bs!1574964 (and b!6296926 b!6296425)))

(assert (=> bs!1574964 (not (= lambda!346028 lambda!346012))))

(declare-fun bs!1574965 () Bool)

(assert (= bs!1574965 (and b!6296926 b!6295367)))

(assert (=> bs!1574965 (not (= lambda!346028 lambda!345916))))

(assert (=> bs!1574965 (not (= lambda!346028 lambda!345915))))

(assert (=> bs!1574962 (not (= lambda!346028 lambda!345957))))

(declare-fun bs!1574966 () Bool)

(assert (= bs!1574966 (and b!6296926 d!1975794)))

(assert (=> bs!1574966 (not (= lambda!346028 lambda!345946))))

(declare-fun bs!1574967 () Bool)

(assert (= bs!1574967 (and b!6296926 b!6296427)))

(assert (=> bs!1574967 (= (and (= (reg!16546 (regTwo!32947 r!7292)) (reg!16546 (regOne!32947 r!7292))) (= (regTwo!32947 r!7292) (regOne!32947 r!7292))) (= lambda!346028 lambda!346011))))

(assert (=> bs!1574961 (not (= lambda!346028 lambda!346001))))

(declare-fun bs!1574968 () Bool)

(assert (= bs!1574968 (and b!6296926 b!6295928)))

(assert (=> bs!1574968 (not (= lambda!346028 lambda!345967))))

(declare-fun bs!1574969 () Bool)

(assert (= bs!1574969 (and b!6296926 d!1976122)))

(assert (=> bs!1574969 (not (= lambda!346028 lambda!346021))))

(assert (=> b!6296926 true))

(assert (=> b!6296926 true))

(declare-fun bs!1574970 () Bool)

(declare-fun b!6296924 () Bool)

(assert (= bs!1574970 (and b!6296924 d!1975994)))

(declare-fun lambda!346029 () Int)

(assert (=> bs!1574970 (= (and (= (regOne!32946 (regTwo!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regTwo!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346029 lambda!346003))))

(declare-fun bs!1574971 () Bool)

(assert (= bs!1574971 (and b!6296924 b!6296926)))

(assert (=> bs!1574971 (not (= lambda!346029 lambda!346028))))

(declare-fun bs!1574972 () Bool)

(assert (= bs!1574972 (and b!6296924 d!1975810)))

(assert (=> bs!1574972 (= (and (= (regOne!32946 (regTwo!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regTwo!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346029 lambda!345958))))

(declare-fun bs!1574973 () Bool)

(assert (= bs!1574973 (and b!6296924 b!6295930)))

(assert (=> bs!1574973 (not (= lambda!346029 lambda!345966))))

(declare-fun bs!1574974 () Bool)

(assert (= bs!1574974 (and b!6296924 b!6296425)))

(assert (=> bs!1574974 (= (and (= (regOne!32946 (regTwo!32947 r!7292)) (regOne!32946 (regOne!32947 r!7292))) (= (regTwo!32946 (regTwo!32947 r!7292)) (regTwo!32946 (regOne!32947 r!7292)))) (= lambda!346029 lambda!346012))))

(declare-fun bs!1574975 () Bool)

(assert (= bs!1574975 (and b!6296924 b!6295367)))

(assert (=> bs!1574975 (= (and (= (regOne!32946 (regTwo!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regTwo!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346029 lambda!345916))))

(assert (=> bs!1574975 (not (= lambda!346029 lambda!345915))))

(assert (=> bs!1574972 (not (= lambda!346029 lambda!345957))))

(declare-fun bs!1574976 () Bool)

(assert (= bs!1574976 (and b!6296924 d!1975794)))

(assert (=> bs!1574976 (not (= lambda!346029 lambda!345946))))

(declare-fun bs!1574977 () Bool)

(assert (= bs!1574977 (and b!6296924 b!6296427)))

(assert (=> bs!1574977 (not (= lambda!346029 lambda!346011))))

(assert (=> bs!1574970 (not (= lambda!346029 lambda!346001))))

(declare-fun bs!1574978 () Bool)

(assert (= bs!1574978 (and b!6296924 b!6295928)))

(assert (=> bs!1574978 (= (and (= (regOne!32946 (regTwo!32947 r!7292)) (regOne!32946 r!7292)) (= (regTwo!32946 (regTwo!32947 r!7292)) (regTwo!32946 r!7292))) (= lambda!346029 lambda!345967))))

(declare-fun bs!1574979 () Bool)

(assert (= bs!1574979 (and b!6296924 d!1976122)))

(assert (=> bs!1574979 (not (= lambda!346029 lambda!346021))))

(assert (=> b!6296924 true))

(assert (=> b!6296924 true))

(declare-fun b!6296917 () Bool)

(declare-fun res!2596583 () Bool)

(declare-fun e!3828596 () Bool)

(assert (=> b!6296917 (=> res!2596583 e!3828596)))

(declare-fun call!533575 () Bool)

(assert (=> b!6296917 (= res!2596583 call!533575)))

(declare-fun e!3828599 () Bool)

(assert (=> b!6296917 (= e!3828599 e!3828596)))

(declare-fun b!6296918 () Bool)

(declare-fun e!3828598 () Bool)

(assert (=> b!6296918 (= e!3828598 (= s!2326 (Cons!64826 (c!1142690 (regTwo!32947 r!7292)) Nil!64826)))))

(declare-fun b!6296919 () Bool)

(declare-fun e!3828594 () Bool)

(assert (=> b!6296919 (= e!3828594 e!3828599)))

(declare-fun c!1143088 () Bool)

(assert (=> b!6296919 (= c!1143088 ((_ is Star!16217) (regTwo!32947 r!7292)))))

(declare-fun b!6296920 () Bool)

(declare-fun e!3828600 () Bool)

(assert (=> b!6296920 (= e!3828594 e!3828600)))

(declare-fun res!2596584 () Bool)

(assert (=> b!6296920 (= res!2596584 (matchRSpec!3318 (regOne!32947 (regTwo!32947 r!7292)) s!2326))))

(assert (=> b!6296920 (=> res!2596584 e!3828600)))

(declare-fun bm!533569 () Bool)

(assert (=> bm!533569 (= call!533575 (isEmpty!36890 s!2326))))

(declare-fun b!6296921 () Bool)

(declare-fun e!3828595 () Bool)

(assert (=> b!6296921 (= e!3828595 call!533575)))

(declare-fun b!6296922 () Bool)

(declare-fun c!1143086 () Bool)

(assert (=> b!6296922 (= c!1143086 ((_ is ElementMatch!16217) (regTwo!32947 r!7292)))))

(declare-fun e!3828597 () Bool)

(assert (=> b!6296922 (= e!3828597 e!3828598)))

(declare-fun b!6296923 () Bool)

(assert (=> b!6296923 (= e!3828595 e!3828597)))

(declare-fun res!2596582 () Bool)

(assert (=> b!6296923 (= res!2596582 (not ((_ is EmptyLang!16217) (regTwo!32947 r!7292))))))

(assert (=> b!6296923 (=> (not res!2596582) (not e!3828597))))

(declare-fun call!533574 () Bool)

(assert (=> b!6296924 (= e!3828599 call!533574)))

(declare-fun b!6296925 () Bool)

(declare-fun c!1143087 () Bool)

(assert (=> b!6296925 (= c!1143087 ((_ is Union!16217) (regTwo!32947 r!7292)))))

(assert (=> b!6296925 (= e!3828598 e!3828594)))

(declare-fun bm!533570 () Bool)

(assert (=> bm!533570 (= call!533574 (Exists!3287 (ite c!1143088 lambda!346028 lambda!346029)))))

(declare-fun d!1976246 () Bool)

(declare-fun c!1143089 () Bool)

(assert (=> d!1976246 (= c!1143089 ((_ is EmptyExpr!16217) (regTwo!32947 r!7292)))))

(assert (=> d!1976246 (= (matchRSpec!3318 (regTwo!32947 r!7292) s!2326) e!3828595)))

(assert (=> b!6296926 (= e!3828596 call!533574)))

(declare-fun b!6296927 () Bool)

(assert (=> b!6296927 (= e!3828600 (matchRSpec!3318 (regTwo!32947 (regTwo!32947 r!7292)) s!2326))))

(assert (= (and d!1976246 c!1143089) b!6296921))

(assert (= (and d!1976246 (not c!1143089)) b!6296923))

(assert (= (and b!6296923 res!2596582) b!6296922))

(assert (= (and b!6296922 c!1143086) b!6296918))

(assert (= (and b!6296922 (not c!1143086)) b!6296925))

(assert (= (and b!6296925 c!1143087) b!6296920))

(assert (= (and b!6296925 (not c!1143087)) b!6296919))

(assert (= (and b!6296920 (not res!2596584)) b!6296927))

(assert (= (and b!6296919 c!1143088) b!6296917))

(assert (= (and b!6296919 (not c!1143088)) b!6296924))

(assert (= (and b!6296917 (not res!2596583)) b!6296926))

(assert (= (or b!6296926 b!6296924) bm!533570))

(assert (= (or b!6296921 b!6296917) bm!533569))

(declare-fun m!7116486 () Bool)

(assert (=> b!6296920 m!7116486))

(assert (=> bm!533569 m!7115644))

(declare-fun m!7116488 () Bool)

(assert (=> bm!533570 m!7116488))

(declare-fun m!7116490 () Bool)

(assert (=> b!6296927 m!7116490))

(assert (=> b!6295931 d!1976246))

(declare-fun b!6296928 () Bool)

(declare-fun e!3828602 () Bool)

(declare-fun e!3828601 () Bool)

(assert (=> b!6296928 (= e!3828602 e!3828601)))

(declare-fun res!2596588 () Bool)

(assert (=> b!6296928 (=> (not res!2596588) (not e!3828601))))

(declare-fun lt!2357877 () Bool)

(assert (=> b!6296928 (= res!2596588 (not lt!2357877))))

(declare-fun b!6296929 () Bool)

(declare-fun e!3828603 () Bool)

(assert (=> b!6296929 (= e!3828603 (nullable!6210 (regOne!32946 r!7292)))))

(declare-fun b!6296930 () Bool)

(declare-fun e!3828605 () Bool)

(assert (=> b!6296930 (= e!3828605 (not lt!2357877))))

(declare-fun b!6296931 () Bool)

(declare-fun res!2596591 () Bool)

(declare-fun e!3828604 () Bool)

(assert (=> b!6296931 (=> (not res!2596591) (not e!3828604))))

(declare-fun call!533576 () Bool)

(assert (=> b!6296931 (= res!2596591 (not call!533576))))

(declare-fun bm!533571 () Bool)

(assert (=> bm!533571 (= call!533576 (isEmpty!36890 (_1!36499 (get!22414 lt!2357788))))))

(declare-fun b!6296932 () Bool)

(declare-fun res!2596585 () Bool)

(declare-fun e!3828607 () Bool)

(assert (=> b!6296932 (=> res!2596585 e!3828607)))

(assert (=> b!6296932 (= res!2596585 (not (isEmpty!36890 (tail!12020 (_1!36499 (get!22414 lt!2357788))))))))

(declare-fun b!6296933 () Bool)

(assert (=> b!6296933 (= e!3828603 (matchR!8400 (derivativeStep!4926 (regOne!32946 r!7292) (head!12935 (_1!36499 (get!22414 lt!2357788)))) (tail!12020 (_1!36499 (get!22414 lt!2357788)))))))

(declare-fun b!6296934 () Bool)

(assert (=> b!6296934 (= e!3828601 e!3828607)))

(declare-fun res!2596589 () Bool)

(assert (=> b!6296934 (=> res!2596589 e!3828607)))

(assert (=> b!6296934 (= res!2596589 call!533576)))

(declare-fun b!6296935 () Bool)

(declare-fun res!2596590 () Bool)

(assert (=> b!6296935 (=> res!2596590 e!3828602)))

(assert (=> b!6296935 (= res!2596590 e!3828604)))

(declare-fun res!2596587 () Bool)

(assert (=> b!6296935 (=> (not res!2596587) (not e!3828604))))

(assert (=> b!6296935 (= res!2596587 lt!2357877)))

(declare-fun b!6296936 () Bool)

(assert (=> b!6296936 (= e!3828607 (not (= (head!12935 (_1!36499 (get!22414 lt!2357788))) (c!1142690 (regOne!32946 r!7292)))))))

(declare-fun b!6296938 () Bool)

(declare-fun e!3828606 () Bool)

(assert (=> b!6296938 (= e!3828606 (= lt!2357877 call!533576))))

(declare-fun b!6296939 () Bool)

(declare-fun res!2596586 () Bool)

(assert (=> b!6296939 (=> (not res!2596586) (not e!3828604))))

(assert (=> b!6296939 (= res!2596586 (isEmpty!36890 (tail!12020 (_1!36499 (get!22414 lt!2357788)))))))

(declare-fun b!6296940 () Bool)

(assert (=> b!6296940 (= e!3828604 (= (head!12935 (_1!36499 (get!22414 lt!2357788))) (c!1142690 (regOne!32946 r!7292))))))

(declare-fun b!6296941 () Bool)

(declare-fun res!2596592 () Bool)

(assert (=> b!6296941 (=> res!2596592 e!3828602)))

(assert (=> b!6296941 (= res!2596592 (not ((_ is ElementMatch!16217) (regOne!32946 r!7292))))))

(assert (=> b!6296941 (= e!3828605 e!3828602)))

(declare-fun d!1976248 () Bool)

(assert (=> d!1976248 e!3828606))

(declare-fun c!1143091 () Bool)

(assert (=> d!1976248 (= c!1143091 ((_ is EmptyExpr!16217) (regOne!32946 r!7292)))))

(assert (=> d!1976248 (= lt!2357877 e!3828603)))

(declare-fun c!1143092 () Bool)

(assert (=> d!1976248 (= c!1143092 (isEmpty!36890 (_1!36499 (get!22414 lt!2357788))))))

(assert (=> d!1976248 (validRegex!7953 (regOne!32946 r!7292))))

(assert (=> d!1976248 (= (matchR!8400 (regOne!32946 r!7292) (_1!36499 (get!22414 lt!2357788))) lt!2357877)))

(declare-fun b!6296937 () Bool)

(assert (=> b!6296937 (= e!3828606 e!3828605)))

(declare-fun c!1143090 () Bool)

(assert (=> b!6296937 (= c!1143090 ((_ is EmptyLang!16217) (regOne!32946 r!7292)))))

(assert (= (and d!1976248 c!1143092) b!6296929))

(assert (= (and d!1976248 (not c!1143092)) b!6296933))

(assert (= (and d!1976248 c!1143091) b!6296938))

(assert (= (and d!1976248 (not c!1143091)) b!6296937))

(assert (= (and b!6296937 c!1143090) b!6296930))

(assert (= (and b!6296937 (not c!1143090)) b!6296941))

(assert (= (and b!6296941 (not res!2596592)) b!6296935))

(assert (= (and b!6296935 res!2596587) b!6296931))

(assert (= (and b!6296931 res!2596591) b!6296939))

(assert (= (and b!6296939 res!2596586) b!6296940))

(assert (= (and b!6296935 (not res!2596590)) b!6296928))

(assert (= (and b!6296928 res!2596588) b!6296934))

(assert (= (and b!6296934 (not res!2596589)) b!6296932))

(assert (= (and b!6296932 (not res!2596585)) b!6296936))

(assert (= (or b!6296938 b!6296931 b!6296934) bm!533571))

(declare-fun m!7116492 () Bool)

(assert (=> b!6296933 m!7116492))

(assert (=> b!6296933 m!7116492))

(declare-fun m!7116494 () Bool)

(assert (=> b!6296933 m!7116494))

(declare-fun m!7116496 () Bool)

(assert (=> b!6296933 m!7116496))

(assert (=> b!6296933 m!7116494))

(assert (=> b!6296933 m!7116496))

(declare-fun m!7116498 () Bool)

(assert (=> b!6296933 m!7116498))

(assert (=> b!6296939 m!7116496))

(assert (=> b!6296939 m!7116496))

(declare-fun m!7116500 () Bool)

(assert (=> b!6296939 m!7116500))

(declare-fun m!7116502 () Bool)

(assert (=> d!1976248 m!7116502))

(assert (=> d!1976248 m!7115452))

(assert (=> b!6296929 m!7116162))

(assert (=> b!6296936 m!7116492))

(assert (=> b!6296940 m!7116492))

(assert (=> bm!533571 m!7116502))

(assert (=> b!6296932 m!7116496))

(assert (=> b!6296932 m!7116496))

(assert (=> b!6296932 m!7116500))

(assert (=> b!6295552 d!1976248))

(assert (=> b!6295552 d!1976134))

(declare-fun d!1976250 () Bool)

(declare-fun c!1143093 () Bool)

(assert (=> d!1976250 (= c!1143093 (isEmpty!36890 (tail!12020 (t!378516 s!2326))))))

(declare-fun e!3828608 () Bool)

(assert (=> d!1976250 (= (matchZipper!2229 (derivationStepZipper!2183 lt!2357744 (head!12935 (t!378516 s!2326))) (tail!12020 (t!378516 s!2326))) e!3828608)))

(declare-fun b!6296942 () Bool)

(assert (=> b!6296942 (= e!3828608 (nullableZipper!1987 (derivationStepZipper!2183 lt!2357744 (head!12935 (t!378516 s!2326)))))))

(declare-fun b!6296943 () Bool)

(assert (=> b!6296943 (= e!3828608 (matchZipper!2229 (derivationStepZipper!2183 (derivationStepZipper!2183 lt!2357744 (head!12935 (t!378516 s!2326))) (head!12935 (tail!12020 (t!378516 s!2326)))) (tail!12020 (tail!12020 (t!378516 s!2326)))))))

(assert (= (and d!1976250 c!1143093) b!6296942))

(assert (= (and d!1976250 (not c!1143093)) b!6296943))

(assert (=> d!1976250 m!7115616))

(assert (=> d!1976250 m!7116010))

(assert (=> b!6296942 m!7115626))

(declare-fun m!7116504 () Bool)

(assert (=> b!6296942 m!7116504))

(assert (=> b!6296943 m!7115616))

(assert (=> b!6296943 m!7116014))

(assert (=> b!6296943 m!7115626))

(assert (=> b!6296943 m!7116014))

(declare-fun m!7116506 () Bool)

(assert (=> b!6296943 m!7116506))

(assert (=> b!6296943 m!7115616))

(assert (=> b!6296943 m!7116018))

(assert (=> b!6296943 m!7116506))

(assert (=> b!6296943 m!7116018))

(declare-fun m!7116508 () Bool)

(assert (=> b!6296943 m!7116508))

(assert (=> b!6295859 d!1976250))

(declare-fun bs!1574980 () Bool)

(declare-fun d!1976252 () Bool)

(assert (= bs!1574980 (and d!1976252 b!6295355)))

(declare-fun lambda!346030 () Int)

(assert (=> bs!1574980 (= (= (head!12935 (t!378516 s!2326)) (h!71274 s!2326)) (= lambda!346030 lambda!345917))))

(declare-fun bs!1574981 () Bool)

(assert (= bs!1574981 (and d!1976252 d!1976036)))

(assert (=> bs!1574981 (= lambda!346030 lambda!346010)))

(declare-fun bs!1574982 () Bool)

(assert (= bs!1574982 (and d!1976252 d!1976214)))

(assert (=> bs!1574982 (= lambda!346030 lambda!346027)))

(assert (=> d!1976252 true))

(assert (=> d!1976252 (= (derivationStepZipper!2183 lt!2357744 (head!12935 (t!378516 s!2326))) (flatMap!1722 lt!2357744 lambda!346030))))

(declare-fun bs!1574983 () Bool)

(assert (= bs!1574983 d!1976252))

(declare-fun m!7116510 () Bool)

(assert (=> bs!1574983 m!7116510))

(assert (=> b!6295859 d!1976252))

(assert (=> b!6295859 d!1976038))

(assert (=> b!6295859 d!1976040))

(declare-fun d!1976254 () Bool)

(assert (=> d!1976254 (= (nullable!6210 (reg!16546 r!7292)) (nullableFct!2161 (reg!16546 r!7292)))))

(declare-fun bs!1574984 () Bool)

(assert (= bs!1574984 d!1976254))

(declare-fun m!7116512 () Bool)

(assert (=> bs!1574984 m!7116512))

(assert (=> b!6295881 d!1976254))

(declare-fun b!6296944 () Bool)

(declare-fun c!1143098 () Bool)

(assert (=> b!6296944 (= c!1143098 ((_ is Star!16217) (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))))))

(declare-fun e!3828614 () (InoxSet Context!11202))

(declare-fun e!3828613 () (InoxSet Context!11202))

(assert (=> b!6296944 (= e!3828614 e!3828613)))

(declare-fun bm!533572 () Bool)

(declare-fun call!533582 () List!64951)

(declare-fun call!533580 () List!64951)

(assert (=> bm!533572 (= call!533582 call!533580)))

(declare-fun d!1976256 () Bool)

(declare-fun c!1143095 () Bool)

(assert (=> d!1976256 (= c!1143095 (and ((_ is ElementMatch!16217) (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))) (= (c!1142690 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))) (h!71274 s!2326))))))

(declare-fun e!3828612 () (InoxSet Context!11202))

(assert (=> d!1976256 (= (derivationStepZipperDown!1465 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292)))))) (ite (or c!1142814 c!1142817) lt!2357742 (Context!11203 call!533397)) (h!71274 s!2326)) e!3828612)))

(declare-fun b!6296945 () Bool)

(declare-fun call!533579 () (InoxSet Context!11202))

(assert (=> b!6296945 (= e!3828613 call!533579)))

(declare-fun b!6296946 () Bool)

(declare-fun e!3828611 () (InoxSet Context!11202))

(assert (=> b!6296946 (= e!3828611 e!3828614)))

(declare-fun c!1143096 () Bool)

(assert (=> b!6296946 (= c!1143096 ((_ is Concat!25062) (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))))))

(declare-fun b!6296947 () Bool)

(declare-fun e!3828609 () Bool)

(assert (=> b!6296947 (= e!3828609 (nullable!6210 (regOne!32946 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292)))))))))))

(declare-fun call!533581 () (InoxSet Context!11202))

(declare-fun c!1143094 () Bool)

(declare-fun bm!533573 () Bool)

(assert (=> bm!533573 (= call!533581 (derivationStepZipperDown!1465 (ite c!1143094 (regOne!32947 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))) (regOne!32946 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292)))))))) (ite c!1143094 (ite (or c!1142814 c!1142817) lt!2357742 (Context!11203 call!533397)) (Context!11203 call!533580)) (h!71274 s!2326)))))

(declare-fun b!6296948 () Bool)

(assert (=> b!6296948 (= e!3828612 (store ((as const (Array Context!11202 Bool)) false) (ite (or c!1142814 c!1142817) lt!2357742 (Context!11203 call!533397)) true))))

(declare-fun b!6296949 () Bool)

(declare-fun e!3828610 () (InoxSet Context!11202))

(assert (=> b!6296949 (= e!3828612 e!3828610)))

(assert (=> b!6296949 (= c!1143094 ((_ is Union!16217) (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))))))

(declare-fun b!6296950 () Bool)

(assert (=> b!6296950 (= e!3828614 call!533579)))

(declare-fun bm!533574 () Bool)

(declare-fun c!1143097 () Bool)

(assert (=> bm!533574 (= call!533580 ($colon$colon!2082 (exprs!6101 (ite (or c!1142814 c!1142817) lt!2357742 (Context!11203 call!533397))) (ite (or c!1143097 c!1143096) (regTwo!32946 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))) (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292)))))))))))

(declare-fun b!6296951 () Bool)

(assert (=> b!6296951 (= c!1143097 e!3828609)))

(declare-fun res!2596593 () Bool)

(assert (=> b!6296951 (=> (not res!2596593) (not e!3828609))))

(assert (=> b!6296951 (= res!2596593 ((_ is Concat!25062) (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))))))

(assert (=> b!6296951 (= e!3828610 e!3828611)))

(declare-fun b!6296952 () Bool)

(assert (=> b!6296952 (= e!3828613 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533575 () Bool)

(declare-fun call!533578 () (InoxSet Context!11202))

(declare-fun call!533577 () (InoxSet Context!11202))

(assert (=> bm!533575 (= call!533578 call!533577)))

(declare-fun b!6296953 () Bool)

(assert (=> b!6296953 (= e!3828611 ((_ map or) call!533581 call!533578))))

(declare-fun bm!533576 () Bool)

(assert (=> bm!533576 (= call!533577 (derivationStepZipperDown!1465 (ite c!1143094 (regTwo!32947 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))) (ite c!1143097 (regTwo!32946 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))) (ite c!1143096 (regOne!32946 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292))))))) (reg!16546 (ite c!1142814 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142817 (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))) (ite c!1142816 (regOne!32946 (regOne!32946 (regOne!32946 r!7292))) (reg!16546 (regOne!32946 (regOne!32946 r!7292)))))))))) (ite (or c!1143094 c!1143097) (ite (or c!1142814 c!1142817) lt!2357742 (Context!11203 call!533397)) (Context!11203 call!533582)) (h!71274 s!2326)))))

(declare-fun bm!533577 () Bool)

(assert (=> bm!533577 (= call!533579 call!533578)))

(declare-fun b!6296954 () Bool)

(assert (=> b!6296954 (= e!3828610 ((_ map or) call!533581 call!533577))))

(assert (= (and d!1976256 c!1143095) b!6296948))

(assert (= (and d!1976256 (not c!1143095)) b!6296949))

(assert (= (and b!6296949 c!1143094) b!6296954))

(assert (= (and b!6296949 (not c!1143094)) b!6296951))

(assert (= (and b!6296951 res!2596593) b!6296947))

(assert (= (and b!6296951 c!1143097) b!6296953))

(assert (= (and b!6296951 (not c!1143097)) b!6296946))

(assert (= (and b!6296946 c!1143096) b!6296950))

(assert (= (and b!6296946 (not c!1143096)) b!6296944))

(assert (= (and b!6296944 c!1143098) b!6296945))

(assert (= (and b!6296944 (not c!1143098)) b!6296952))

(assert (= (or b!6296950 b!6296945) bm!533572))

(assert (= (or b!6296950 b!6296945) bm!533577))

(assert (= (or b!6296953 bm!533572) bm!533574))

(assert (= (or b!6296953 bm!533577) bm!533575))

(assert (= (or b!6296954 bm!533575) bm!533576))

(assert (= (or b!6296954 b!6296953) bm!533573))

(declare-fun m!7116514 () Bool)

(assert (=> bm!533573 m!7116514))

(declare-fun m!7116516 () Bool)

(assert (=> bm!533574 m!7116516))

(declare-fun m!7116518 () Bool)

(assert (=> b!6296947 m!7116518))

(declare-fun m!7116520 () Bool)

(assert (=> bm!533576 m!7116520))

(declare-fun m!7116522 () Bool)

(assert (=> b!6296948 m!7116522))

(assert (=> bm!533391 d!1976256))

(assert (=> b!6296008 d!1975832))

(declare-fun bs!1574985 () Bool)

(declare-fun d!1976258 () Bool)

(assert (= bs!1574985 (and d!1976258 d!1976114)))

(declare-fun lambda!346031 () Int)

(assert (=> bs!1574985 (= lambda!346031 lambda!346018)))

(declare-fun bs!1574986 () Bool)

(assert (= bs!1574986 (and d!1976258 d!1975832)))

(assert (=> bs!1574986 (= lambda!346031 lambda!345961)))

(declare-fun bs!1574987 () Bool)

(assert (= bs!1574987 (and d!1976258 d!1976206)))

(assert (=> bs!1574987 (= lambda!346031 lambda!346026)))

(declare-fun bs!1574988 () Bool)

(assert (= bs!1574988 (and d!1976258 d!1975764)))

(assert (=> bs!1574988 (= lambda!346031 lambda!345929)))

(declare-fun bs!1574989 () Bool)

(assert (= bs!1574989 (and d!1976258 d!1975868)))

(assert (=> bs!1574989 (= lambda!346031 lambda!345975)))

(declare-fun bs!1574990 () Bool)

(assert (= bs!1574990 (and d!1976258 d!1975866)))

(assert (=> bs!1574990 (= lambda!346031 lambda!345974)))

(declare-fun bs!1574991 () Bool)

(assert (= bs!1574991 (and d!1976258 d!1976136)))

(assert (=> bs!1574991 (= lambda!346031 lambda!346022)))

(declare-fun bs!1574992 () Bool)

(assert (= bs!1574992 (and d!1976258 d!1975864)))

(assert (=> bs!1574992 (= lambda!346031 lambda!345973)))

(declare-fun bs!1574993 () Bool)

(assert (= bs!1574993 (and d!1976258 d!1975862)))

(assert (=> bs!1574993 (= lambda!346031 lambda!345970)))

(declare-fun bs!1574994 () Bool)

(assert (= bs!1574994 (and d!1976258 d!1976160)))

(assert (=> bs!1574994 (= lambda!346031 lambda!346024)))

(declare-fun lt!2357878 () List!64951)

(assert (=> d!1976258 (forall!15367 lt!2357878 lambda!346031)))

(declare-fun e!3828615 () List!64951)

(assert (=> d!1976258 (= lt!2357878 e!3828615)))

(declare-fun c!1143099 () Bool)

(assert (=> d!1976258 (= c!1143099 ((_ is Cons!64828) (t!378518 zl!343)))))

(assert (=> d!1976258 (= (unfocusZipperList!1638 (t!378518 zl!343)) lt!2357878)))

(declare-fun b!6296955 () Bool)

(assert (=> b!6296955 (= e!3828615 (Cons!64827 (generalisedConcat!1814 (exprs!6101 (h!71276 (t!378518 zl!343)))) (unfocusZipperList!1638 (t!378518 (t!378518 zl!343)))))))

(declare-fun b!6296956 () Bool)

(assert (=> b!6296956 (= e!3828615 Nil!64827)))

(assert (= (and d!1976258 c!1143099) b!6296955))

(assert (= (and d!1976258 (not c!1143099)) b!6296956))

(declare-fun m!7116524 () Bool)

(assert (=> d!1976258 m!7116524))

(declare-fun m!7116526 () Bool)

(assert (=> b!6296955 m!7116526))

(declare-fun m!7116528 () Bool)

(assert (=> b!6296955 m!7116528))

(assert (=> b!6296008 d!1976258))

(declare-fun b!6296957 () Bool)

(declare-fun e!3828621 () Bool)

(declare-fun call!533584 () Bool)

(assert (=> b!6296957 (= e!3828621 call!533584)))

(declare-fun b!6296958 () Bool)

(declare-fun e!3828619 () Bool)

(declare-fun e!3828622 () Bool)

(assert (=> b!6296958 (= e!3828619 e!3828622)))

(declare-fun res!2596594 () Bool)

(assert (=> b!6296958 (= res!2596594 (not (nullable!6210 (reg!16546 lt!2357828))))))

(assert (=> b!6296958 (=> (not res!2596594) (not e!3828622))))

(declare-fun b!6296959 () Bool)

(declare-fun e!3828618 () Bool)

(assert (=> b!6296959 (= e!3828618 call!533584)))

(declare-fun b!6296960 () Bool)

(declare-fun e!3828620 () Bool)

(assert (=> b!6296960 (= e!3828620 e!3828618)))

(declare-fun res!2596596 () Bool)

(assert (=> b!6296960 (=> (not res!2596596) (not e!3828618))))

(declare-fun call!533583 () Bool)

(assert (=> b!6296960 (= res!2596596 call!533583)))

(declare-fun bm!533578 () Bool)

(declare-fun call!533585 () Bool)

(assert (=> bm!533578 (= call!533583 call!533585)))

(declare-fun b!6296961 () Bool)

(assert (=> b!6296961 (= e!3828622 call!533585)))

(declare-fun b!6296962 () Bool)

(declare-fun res!2596598 () Bool)

(assert (=> b!6296962 (=> res!2596598 e!3828620)))

(assert (=> b!6296962 (= res!2596598 (not ((_ is Concat!25062) lt!2357828)))))

(declare-fun e!3828617 () Bool)

(assert (=> b!6296962 (= e!3828617 e!3828620)))

(declare-fun c!1143100 () Bool)

(declare-fun c!1143101 () Bool)

(declare-fun bm!533579 () Bool)

(assert (=> bm!533579 (= call!533585 (validRegex!7953 (ite c!1143100 (reg!16546 lt!2357828) (ite c!1143101 (regOne!32947 lt!2357828) (regOne!32946 lt!2357828)))))))

(declare-fun b!6296963 () Bool)

(declare-fun e!3828616 () Bool)

(assert (=> b!6296963 (= e!3828616 e!3828619)))

(assert (=> b!6296963 (= c!1143100 ((_ is Star!16217) lt!2357828))))

(declare-fun bm!533580 () Bool)

(assert (=> bm!533580 (= call!533584 (validRegex!7953 (ite c!1143101 (regTwo!32947 lt!2357828) (regTwo!32946 lt!2357828))))))

(declare-fun d!1976260 () Bool)

(declare-fun res!2596597 () Bool)

(assert (=> d!1976260 (=> res!2596597 e!3828616)))

(assert (=> d!1976260 (= res!2596597 ((_ is ElementMatch!16217) lt!2357828))))

(assert (=> d!1976260 (= (validRegex!7953 lt!2357828) e!3828616)))

(declare-fun b!6296964 () Bool)

(assert (=> b!6296964 (= e!3828619 e!3828617)))

(assert (=> b!6296964 (= c!1143101 ((_ is Union!16217) lt!2357828))))

(declare-fun b!6296965 () Bool)

(declare-fun res!2596595 () Bool)

(assert (=> b!6296965 (=> (not res!2596595) (not e!3828621))))

(assert (=> b!6296965 (= res!2596595 call!533583)))

(assert (=> b!6296965 (= e!3828617 e!3828621)))

(assert (= (and d!1976260 (not res!2596597)) b!6296963))

(assert (= (and b!6296963 c!1143100) b!6296958))

(assert (= (and b!6296963 (not c!1143100)) b!6296964))

(assert (= (and b!6296958 res!2596594) b!6296961))

(assert (= (and b!6296964 c!1143101) b!6296965))

(assert (= (and b!6296964 (not c!1143101)) b!6296962))

(assert (= (and b!6296965 res!2596595) b!6296957))

(assert (= (and b!6296962 (not res!2596598)) b!6296960))

(assert (= (and b!6296960 res!2596596) b!6296959))

(assert (= (or b!6296957 b!6296959) bm!533580))

(assert (= (or b!6296965 b!6296960) bm!533578))

(assert (= (or b!6296961 bm!533578) bm!533579))

(declare-fun m!7116530 () Bool)

(assert (=> b!6296958 m!7116530))

(declare-fun m!7116532 () Bool)

(assert (=> bm!533579 m!7116532))

(declare-fun m!7116534 () Bool)

(assert (=> bm!533580 m!7116534))

(assert (=> d!1975862 d!1976260))

(declare-fun d!1976262 () Bool)

(declare-fun res!2596599 () Bool)

(declare-fun e!3828623 () Bool)

(assert (=> d!1976262 (=> res!2596599 e!3828623)))

(assert (=> d!1976262 (= res!2596599 ((_ is Nil!64827) (unfocusZipperList!1638 zl!343)))))

(assert (=> d!1976262 (= (forall!15367 (unfocusZipperList!1638 zl!343) lambda!345970) e!3828623)))

(declare-fun b!6296966 () Bool)

(declare-fun e!3828624 () Bool)

(assert (=> b!6296966 (= e!3828623 e!3828624)))

(declare-fun res!2596600 () Bool)

(assert (=> b!6296966 (=> (not res!2596600) (not e!3828624))))

(assert (=> b!6296966 (= res!2596600 (dynLambda!25663 lambda!345970 (h!71275 (unfocusZipperList!1638 zl!343))))))

(declare-fun b!6296967 () Bool)

(assert (=> b!6296967 (= e!3828624 (forall!15367 (t!378517 (unfocusZipperList!1638 zl!343)) lambda!345970))))

(assert (= (and d!1976262 (not res!2596599)) b!6296966))

(assert (= (and b!6296966 res!2596600) b!6296967))

(declare-fun b_lambda!239595 () Bool)

(assert (=> (not b_lambda!239595) (not b!6296966)))

(declare-fun m!7116536 () Bool)

(assert (=> b!6296966 m!7116536))

(declare-fun m!7116538 () Bool)

(assert (=> b!6296967 m!7116538))

(assert (=> d!1975862 d!1976262))

(declare-fun d!1976264 () Bool)

(declare-fun c!1143102 () Bool)

(declare-fun e!3828627 () Bool)

(assert (=> d!1976264 (= c!1143102 e!3828627)))

(declare-fun res!2596601 () Bool)

(assert (=> d!1976264 (=> (not res!2596601) (not e!3828627))))

(assert (=> d!1976264 (= res!2596601 ((_ is Cons!64827) (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun e!3828626 () (InoxSet Context!11202))

(assert (=> d!1976264 (= (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))) (h!71274 s!2326)) e!3828626)))

(declare-fun b!6296968 () Bool)

(declare-fun e!3828625 () (InoxSet Context!11202))

(declare-fun call!533586 () (InoxSet Context!11202))

(assert (=> b!6296968 (= e!3828625 call!533586)))

(declare-fun b!6296969 () Bool)

(assert (=> b!6296969 (= e!3828626 ((_ map or) call!533586 (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343))))))) (h!71274 s!2326))))))

(declare-fun b!6296970 () Bool)

(assert (=> b!6296970 (= e!3828626 e!3828625)))

(declare-fun c!1143103 () Bool)

(assert (=> b!6296970 (= c!1143103 ((_ is Cons!64827) (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))))))))

(declare-fun b!6296971 () Bool)

(assert (=> b!6296971 (= e!3828627 (nullable!6210 (h!71275 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343))))))))))

(declare-fun b!6296972 () Bool)

(assert (=> b!6296972 (= e!3828625 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533581 () Bool)

(assert (=> bm!533581 (= call!533586 (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))))) (Context!11203 (t!378517 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343))))))) (h!71274 s!2326)))))

(assert (= (and d!1976264 res!2596601) b!6296971))

(assert (= (and d!1976264 c!1143102) b!6296969))

(assert (= (and d!1976264 (not c!1143102)) b!6296970))

(assert (= (and b!6296970 c!1143103) b!6296968))

(assert (= (and b!6296970 (not c!1143103)) b!6296972))

(assert (= (or b!6296969 b!6296968) bm!533581))

(declare-fun m!7116540 () Bool)

(assert (=> b!6296969 m!7116540))

(declare-fun m!7116542 () Bool)

(assert (=> b!6296971 m!7116542))

(declare-fun m!7116544 () Bool)

(assert (=> bm!533581 m!7116544))

(assert (=> b!6296042 d!1976264))

(declare-fun d!1976266 () Bool)

(declare-fun c!1143104 () Bool)

(declare-fun e!3828630 () Bool)

(assert (=> d!1976266 (= c!1143104 e!3828630)))

(declare-fun res!2596602 () Bool)

(assert (=> d!1976266 (=> (not res!2596602) (not e!3828630))))

(assert (=> d!1976266 (= res!2596602 ((_ is Cons!64827) (exprs!6101 (Context!11203 (t!378517 (exprs!6101 lt!2357738))))))))

(declare-fun e!3828629 () (InoxSet Context!11202))

(assert (=> d!1976266 (= (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 lt!2357738))) (h!71274 s!2326)) e!3828629)))

(declare-fun b!6296973 () Bool)

(declare-fun e!3828628 () (InoxSet Context!11202))

(declare-fun call!533587 () (InoxSet Context!11202))

(assert (=> b!6296973 (= e!3828628 call!533587)))

(declare-fun b!6296974 () Bool)

(assert (=> b!6296974 (= e!3828629 ((_ map or) call!533587 (derivationStepZipperUp!1391 (Context!11203 (t!378517 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 lt!2357738)))))) (h!71274 s!2326))))))

(declare-fun b!6296975 () Bool)

(assert (=> b!6296975 (= e!3828629 e!3828628)))

(declare-fun c!1143105 () Bool)

(assert (=> b!6296975 (= c!1143105 ((_ is Cons!64827) (exprs!6101 (Context!11203 (t!378517 (exprs!6101 lt!2357738))))))))

(declare-fun b!6296976 () Bool)

(assert (=> b!6296976 (= e!3828630 (nullable!6210 (h!71275 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 lt!2357738)))))))))

(declare-fun b!6296977 () Bool)

(assert (=> b!6296977 (= e!3828628 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533582 () Bool)

(assert (=> bm!533582 (= call!533587 (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 lt!2357738))))) (Context!11203 (t!378517 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 lt!2357738)))))) (h!71274 s!2326)))))

(assert (= (and d!1976266 res!2596602) b!6296976))

(assert (= (and d!1976266 c!1143104) b!6296974))

(assert (= (and d!1976266 (not c!1143104)) b!6296975))

(assert (= (and b!6296975 c!1143105) b!6296973))

(assert (= (and b!6296975 (not c!1143105)) b!6296977))

(assert (= (or b!6296974 b!6296973) bm!533582))

(declare-fun m!7116546 () Bool)

(assert (=> b!6296974 m!7116546))

(declare-fun m!7116548 () Bool)

(assert (=> b!6296976 m!7116548))

(declare-fun m!7116550 () Bool)

(assert (=> bm!533582 m!7116550))

(assert (=> b!6296037 d!1976266))

(assert (=> b!6296044 d!1975872))

(declare-fun b!6296978 () Bool)

(declare-fun e!3828636 () Bool)

(declare-fun call!533589 () Bool)

(assert (=> b!6296978 (= e!3828636 call!533589)))

(declare-fun b!6296979 () Bool)

(declare-fun e!3828634 () Bool)

(declare-fun e!3828637 () Bool)

(assert (=> b!6296979 (= e!3828634 e!3828637)))

(declare-fun res!2596603 () Bool)

(assert (=> b!6296979 (= res!2596603 (not (nullable!6210 (reg!16546 lt!2357771))))))

(assert (=> b!6296979 (=> (not res!2596603) (not e!3828637))))

(declare-fun b!6296980 () Bool)

(declare-fun e!3828633 () Bool)

(assert (=> b!6296980 (= e!3828633 call!533589)))

(declare-fun b!6296981 () Bool)

(declare-fun e!3828635 () Bool)

(assert (=> b!6296981 (= e!3828635 e!3828633)))

(declare-fun res!2596605 () Bool)

(assert (=> b!6296981 (=> (not res!2596605) (not e!3828633))))

(declare-fun call!533588 () Bool)

(assert (=> b!6296981 (= res!2596605 call!533588)))

(declare-fun bm!533583 () Bool)

(declare-fun call!533590 () Bool)

(assert (=> bm!533583 (= call!533588 call!533590)))

(declare-fun b!6296982 () Bool)

(assert (=> b!6296982 (= e!3828637 call!533590)))

(declare-fun b!6296983 () Bool)

(declare-fun res!2596607 () Bool)

(assert (=> b!6296983 (=> res!2596607 e!3828635)))

(assert (=> b!6296983 (= res!2596607 (not ((_ is Concat!25062) lt!2357771)))))

(declare-fun e!3828632 () Bool)

(assert (=> b!6296983 (= e!3828632 e!3828635)))

(declare-fun c!1143106 () Bool)

(declare-fun c!1143107 () Bool)

(declare-fun bm!533584 () Bool)

(assert (=> bm!533584 (= call!533590 (validRegex!7953 (ite c!1143106 (reg!16546 lt!2357771) (ite c!1143107 (regOne!32947 lt!2357771) (regOne!32946 lt!2357771)))))))

(declare-fun b!6296984 () Bool)

(declare-fun e!3828631 () Bool)

(assert (=> b!6296984 (= e!3828631 e!3828634)))

(assert (=> b!6296984 (= c!1143106 ((_ is Star!16217) lt!2357771))))

(declare-fun bm!533585 () Bool)

(assert (=> bm!533585 (= call!533589 (validRegex!7953 (ite c!1143107 (regTwo!32947 lt!2357771) (regTwo!32946 lt!2357771))))))

(declare-fun d!1976268 () Bool)

(declare-fun res!2596606 () Bool)

(assert (=> d!1976268 (=> res!2596606 e!3828631)))

(assert (=> d!1976268 (= res!2596606 ((_ is ElementMatch!16217) lt!2357771))))

(assert (=> d!1976268 (= (validRegex!7953 lt!2357771) e!3828631)))

(declare-fun b!6296985 () Bool)

(assert (=> b!6296985 (= e!3828634 e!3828632)))

(assert (=> b!6296985 (= c!1143107 ((_ is Union!16217) lt!2357771))))

(declare-fun b!6296986 () Bool)

(declare-fun res!2596604 () Bool)

(assert (=> b!6296986 (=> (not res!2596604) (not e!3828636))))

(assert (=> b!6296986 (= res!2596604 call!533588)))

(assert (=> b!6296986 (= e!3828632 e!3828636)))

(assert (= (and d!1976268 (not res!2596606)) b!6296984))

(assert (= (and b!6296984 c!1143106) b!6296979))

(assert (= (and b!6296984 (not c!1143106)) b!6296985))

(assert (= (and b!6296979 res!2596603) b!6296982))

(assert (= (and b!6296985 c!1143107) b!6296986))

(assert (= (and b!6296985 (not c!1143107)) b!6296983))

(assert (= (and b!6296986 res!2596604) b!6296978))

(assert (= (and b!6296983 (not res!2596607)) b!6296981))

(assert (= (and b!6296981 res!2596605) b!6296980))

(assert (= (or b!6296978 b!6296980) bm!533585))

(assert (= (or b!6296986 b!6296981) bm!533583))

(assert (= (or b!6296982 bm!533583) bm!533584))

(declare-fun m!7116552 () Bool)

(assert (=> b!6296979 m!7116552))

(declare-fun m!7116554 () Bool)

(assert (=> bm!533584 m!7116554))

(declare-fun m!7116556 () Bool)

(assert (=> bm!533585 m!7116556))

(assert (=> d!1975766 d!1976268))

(assert (=> d!1975766 d!1975862))

(assert (=> d!1975766 d!1975864))

(declare-fun b!6296987 () Bool)

(declare-fun e!3828640 () Bool)

(declare-fun e!3828639 () Bool)

(assert (=> b!6296987 (= e!3828640 e!3828639)))

(declare-fun c!1143108 () Bool)

(assert (=> b!6296987 (= c!1143108 ((_ is Union!16217) (regOne!32946 (regOne!32946 r!7292))))))

(declare-fun b!6296988 () Bool)

(declare-fun e!3828643 () Bool)

(declare-fun call!533591 () Bool)

(assert (=> b!6296988 (= e!3828643 call!533591)))

(declare-fun b!6296989 () Bool)

(declare-fun e!3828641 () Bool)

(declare-fun e!3828642 () Bool)

(assert (=> b!6296989 (= e!3828641 e!3828642)))

(declare-fun res!2596610 () Bool)

(assert (=> b!6296989 (=> (not res!2596610) (not e!3828642))))

(assert (=> b!6296989 (= res!2596610 (and (not ((_ is EmptyLang!16217) (regOne!32946 (regOne!32946 r!7292)))) (not ((_ is ElementMatch!16217) (regOne!32946 (regOne!32946 r!7292))))))))

(declare-fun b!6296990 () Bool)

(declare-fun e!3828638 () Bool)

(assert (=> b!6296990 (= e!3828639 e!3828638)))

(declare-fun res!2596611 () Bool)

(declare-fun call!533592 () Bool)

(assert (=> b!6296990 (= res!2596611 call!533592)))

(assert (=> b!6296990 (=> (not res!2596611) (not e!3828638))))

(declare-fun bm!533586 () Bool)

(assert (=> bm!533586 (= call!533592 (nullable!6210 (ite c!1143108 (regOne!32947 (regOne!32946 (regOne!32946 r!7292))) (regOne!32946 (regOne!32946 (regOne!32946 r!7292))))))))

(declare-fun b!6296991 () Bool)

(assert (=> b!6296991 (= e!3828638 call!533591)))

(declare-fun b!6296992 () Bool)

(assert (=> b!6296992 (= e!3828642 e!3828640)))

(declare-fun res!2596608 () Bool)

(assert (=> b!6296992 (=> res!2596608 e!3828640)))

(assert (=> b!6296992 (= res!2596608 ((_ is Star!16217) (regOne!32946 (regOne!32946 r!7292))))))

(declare-fun d!1976270 () Bool)

(declare-fun res!2596612 () Bool)

(assert (=> d!1976270 (=> res!2596612 e!3828641)))

(assert (=> d!1976270 (= res!2596612 ((_ is EmptyExpr!16217) (regOne!32946 (regOne!32946 r!7292))))))

(assert (=> d!1976270 (= (nullableFct!2161 (regOne!32946 (regOne!32946 r!7292))) e!3828641)))

(declare-fun bm!533587 () Bool)

(assert (=> bm!533587 (= call!533591 (nullable!6210 (ite c!1143108 (regTwo!32947 (regOne!32946 (regOne!32946 r!7292))) (regTwo!32946 (regOne!32946 (regOne!32946 r!7292))))))))

(declare-fun b!6296993 () Bool)

(assert (=> b!6296993 (= e!3828639 e!3828643)))

(declare-fun res!2596609 () Bool)

(assert (=> b!6296993 (= res!2596609 call!533592)))

(assert (=> b!6296993 (=> res!2596609 e!3828643)))

(assert (= (and d!1976270 (not res!2596612)) b!6296989))

(assert (= (and b!6296989 res!2596610) b!6296992))

(assert (= (and b!6296992 (not res!2596608)) b!6296987))

(assert (= (and b!6296987 c!1143108) b!6296993))

(assert (= (and b!6296987 (not c!1143108)) b!6296990))

(assert (= (and b!6296993 (not res!2596609)) b!6296988))

(assert (= (and b!6296990 res!2596611) b!6296991))

(assert (= (or b!6296988 b!6296991) bm!533587))

(assert (= (or b!6296993 b!6296990) bm!533586))

(declare-fun m!7116558 () Bool)

(assert (=> bm!533586 m!7116558))

(declare-fun m!7116560 () Bool)

(assert (=> bm!533587 m!7116560))

(assert (=> d!1975844 d!1976270))

(declare-fun d!1976272 () Bool)

(assert (=> d!1976272 (= (nullable!6210 (h!71275 (exprs!6101 lt!2357738))) (nullableFct!2161 (h!71275 (exprs!6101 lt!2357738))))))

(declare-fun bs!1574995 () Bool)

(assert (= bs!1574995 d!1976272))

(declare-fun m!7116562 () Bool)

(assert (=> bs!1574995 m!7116562))

(assert (=> b!6296039 d!1976272))

(declare-fun b!6296994 () Bool)

(declare-fun e!3828649 () Bool)

(declare-fun call!533594 () Bool)

(assert (=> b!6296994 (= e!3828649 call!533594)))

(declare-fun b!6296995 () Bool)

(declare-fun e!3828647 () Bool)

(declare-fun e!3828650 () Bool)

(assert (=> b!6296995 (= e!3828647 e!3828650)))

(declare-fun res!2596613 () Bool)

(assert (=> b!6296995 (= res!2596613 (not (nullable!6210 (reg!16546 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))))))))

(assert (=> b!6296995 (=> (not res!2596613) (not e!3828650))))

(declare-fun b!6296996 () Bool)

(declare-fun e!3828646 () Bool)

(assert (=> b!6296996 (= e!3828646 call!533594)))

(declare-fun b!6296997 () Bool)

(declare-fun e!3828648 () Bool)

(assert (=> b!6296997 (= e!3828648 e!3828646)))

(declare-fun res!2596615 () Bool)

(assert (=> b!6296997 (=> (not res!2596615) (not e!3828646))))

(declare-fun call!533593 () Bool)

(assert (=> b!6296997 (= res!2596615 call!533593)))

(declare-fun bm!533588 () Bool)

(declare-fun call!533595 () Bool)

(assert (=> bm!533588 (= call!533593 call!533595)))

(declare-fun b!6296998 () Bool)

(assert (=> b!6296998 (= e!3828650 call!533595)))

(declare-fun b!6296999 () Bool)

(declare-fun res!2596617 () Bool)

(assert (=> b!6296999 (=> res!2596617 e!3828648)))

(assert (=> b!6296999 (= res!2596617 (not ((_ is Concat!25062) (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292))))))))

(declare-fun e!3828645 () Bool)

(assert (=> b!6296999 (= e!3828645 e!3828648)))

(declare-fun c!1143109 () Bool)

(declare-fun bm!533589 () Bool)

(declare-fun c!1143110 () Bool)

(assert (=> bm!533589 (= call!533595 (validRegex!7953 (ite c!1143109 (reg!16546 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))) (ite c!1143110 (regOne!32947 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))) (regOne!32946 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292))))))))))

(declare-fun b!6297000 () Bool)

(declare-fun e!3828644 () Bool)

(assert (=> b!6297000 (= e!3828644 e!3828647)))

(assert (=> b!6297000 (= c!1143109 ((_ is Star!16217) (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))))))

(declare-fun bm!533590 () Bool)

(assert (=> bm!533590 (= call!533594 (validRegex!7953 (ite c!1143110 (regTwo!32947 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))) (regTwo!32946 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))))))))

(declare-fun d!1976274 () Bool)

(declare-fun res!2596616 () Bool)

(assert (=> d!1976274 (=> res!2596616 e!3828644)))

(assert (=> d!1976274 (= res!2596616 ((_ is ElementMatch!16217) (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))))))

(assert (=> d!1976274 (= (validRegex!7953 (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))) e!3828644)))

(declare-fun b!6297001 () Bool)

(assert (=> b!6297001 (= e!3828647 e!3828645)))

(assert (=> b!6297001 (= c!1143110 ((_ is Union!16217) (ite c!1142828 (reg!16546 r!7292) (ite c!1142829 (regOne!32947 r!7292) (regOne!32946 r!7292)))))))

(declare-fun b!6297002 () Bool)

(declare-fun res!2596614 () Bool)

(assert (=> b!6297002 (=> (not res!2596614) (not e!3828649))))

(assert (=> b!6297002 (= res!2596614 call!533593)))

(assert (=> b!6297002 (= e!3828645 e!3828649)))

(assert (= (and d!1976274 (not res!2596616)) b!6297000))

(assert (= (and b!6297000 c!1143109) b!6296995))

(assert (= (and b!6297000 (not c!1143109)) b!6297001))

(assert (= (and b!6296995 res!2596613) b!6296998))

(assert (= (and b!6297001 c!1143110) b!6297002))

(assert (= (and b!6297001 (not c!1143110)) b!6296999))

(assert (= (and b!6297002 res!2596614) b!6296994))

(assert (= (and b!6296999 (not res!2596617)) b!6296997))

(assert (= (and b!6296997 res!2596615) b!6296996))

(assert (= (or b!6296994 b!6296996) bm!533590))

(assert (= (or b!6297002 b!6296997) bm!533588))

(assert (= (or b!6296998 bm!533588) bm!533589))

(declare-fun m!7116564 () Bool)

(assert (=> b!6296995 m!7116564))

(declare-fun m!7116566 () Bool)

(assert (=> bm!533589 m!7116566))

(declare-fun m!7116568 () Bool)

(assert (=> bm!533590 m!7116568))

(assert (=> bm!533400 d!1976274))

(assert (=> d!1975850 d!1976210))

(declare-fun b!6297003 () Bool)

(declare-fun e!3828656 () Bool)

(declare-fun call!533597 () Bool)

(assert (=> b!6297003 (= e!3828656 call!533597)))

(declare-fun b!6297004 () Bool)

(declare-fun e!3828654 () Bool)

(declare-fun e!3828657 () Bool)

(assert (=> b!6297004 (= e!3828654 e!3828657)))

(declare-fun res!2596618 () Bool)

(assert (=> b!6297004 (= res!2596618 (not (nullable!6210 (reg!16546 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))))))))

(assert (=> b!6297004 (=> (not res!2596618) (not e!3828657))))

(declare-fun b!6297005 () Bool)

(declare-fun e!3828653 () Bool)

(assert (=> b!6297005 (= e!3828653 call!533597)))

(declare-fun b!6297006 () Bool)

(declare-fun e!3828655 () Bool)

(assert (=> b!6297006 (= e!3828655 e!3828653)))

(declare-fun res!2596620 () Bool)

(assert (=> b!6297006 (=> (not res!2596620) (not e!3828653))))

(declare-fun call!533596 () Bool)

(assert (=> b!6297006 (= res!2596620 call!533596)))

(declare-fun bm!533591 () Bool)

(declare-fun call!533598 () Bool)

(assert (=> bm!533591 (= call!533596 call!533598)))

(declare-fun b!6297007 () Bool)

(assert (=> b!6297007 (= e!3828657 call!533598)))

(declare-fun b!6297008 () Bool)

(declare-fun res!2596622 () Bool)

(assert (=> b!6297008 (=> res!2596622 e!3828655)))

(assert (=> b!6297008 (= res!2596622 (not ((_ is Concat!25062) (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292)))))))

(declare-fun e!3828652 () Bool)

(assert (=> b!6297008 (= e!3828652 e!3828655)))

(declare-fun c!1143112 () Bool)

(declare-fun c!1143111 () Bool)

(declare-fun bm!533592 () Bool)

(assert (=> bm!533592 (= call!533598 (validRegex!7953 (ite c!1143111 (reg!16546 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))) (ite c!1143112 (regOne!32947 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))) (regOne!32946 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292)))))))))

(declare-fun b!6297009 () Bool)

(declare-fun e!3828651 () Bool)

(assert (=> b!6297009 (= e!3828651 e!3828654)))

(assert (=> b!6297009 (= c!1143111 ((_ is Star!16217) (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))))))

(declare-fun bm!533593 () Bool)

(assert (=> bm!533593 (= call!533597 (validRegex!7953 (ite c!1143112 (regTwo!32947 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))) (regTwo!32946 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))))))))

(declare-fun d!1976276 () Bool)

(declare-fun res!2596621 () Bool)

(assert (=> d!1976276 (=> res!2596621 e!3828651)))

(assert (=> d!1976276 (= res!2596621 ((_ is ElementMatch!16217) (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))))))

(assert (=> d!1976276 (= (validRegex!7953 (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))) e!3828651)))

(declare-fun b!6297010 () Bool)

(assert (=> b!6297010 (= e!3828654 e!3828652)))

(assert (=> b!6297010 (= c!1143112 ((_ is Union!16217) (ite c!1142829 (regTwo!32947 r!7292) (regTwo!32946 r!7292))))))

(declare-fun b!6297011 () Bool)

(declare-fun res!2596619 () Bool)

(assert (=> b!6297011 (=> (not res!2596619) (not e!3828656))))

(assert (=> b!6297011 (= res!2596619 call!533596)))

(assert (=> b!6297011 (= e!3828652 e!3828656)))

(assert (= (and d!1976276 (not res!2596621)) b!6297009))

(assert (= (and b!6297009 c!1143111) b!6297004))

(assert (= (and b!6297009 (not c!1143111)) b!6297010))

(assert (= (and b!6297004 res!2596618) b!6297007))

(assert (= (and b!6297010 c!1143112) b!6297011))

(assert (= (and b!6297010 (not c!1143112)) b!6297008))

(assert (= (and b!6297011 res!2596619) b!6297003))

(assert (= (and b!6297008 (not res!2596622)) b!6297006))

(assert (= (and b!6297006 res!2596620) b!6297005))

(assert (= (or b!6297003 b!6297005) bm!533593))

(assert (= (or b!6297011 b!6297006) bm!533591))

(assert (= (or b!6297007 bm!533591) bm!533592))

(declare-fun m!7116570 () Bool)

(assert (=> b!6297004 m!7116570))

(declare-fun m!7116572 () Bool)

(assert (=> bm!533592 m!7116572))

(declare-fun m!7116574 () Bool)

(assert (=> bm!533593 m!7116574))

(assert (=> bm!533401 d!1976276))

(declare-fun d!1976278 () Bool)

(declare-fun res!2596623 () Bool)

(declare-fun e!3828658 () Bool)

(assert (=> d!1976278 (=> res!2596623 e!3828658)))

(assert (=> d!1976278 (= res!2596623 ((_ is Nil!64827) (exprs!6101 lt!2357742)))))

(assert (=> d!1976278 (= (forall!15367 (exprs!6101 lt!2357742) lambda!345929) e!3828658)))

(declare-fun b!6297012 () Bool)

(declare-fun e!3828659 () Bool)

(assert (=> b!6297012 (= e!3828658 e!3828659)))

(declare-fun res!2596624 () Bool)

(assert (=> b!6297012 (=> (not res!2596624) (not e!3828659))))

(assert (=> b!6297012 (= res!2596624 (dynLambda!25663 lambda!345929 (h!71275 (exprs!6101 lt!2357742))))))

(declare-fun b!6297013 () Bool)

(assert (=> b!6297013 (= e!3828659 (forall!15367 (t!378517 (exprs!6101 lt!2357742)) lambda!345929))))

(assert (= (and d!1976278 (not res!2596623)) b!6297012))

(assert (= (and b!6297012 res!2596624) b!6297013))

(declare-fun b_lambda!239597 () Bool)

(assert (=> (not b_lambda!239597) (not b!6297012)))

(declare-fun m!7116576 () Bool)

(assert (=> b!6297012 m!7116576))

(declare-fun m!7116578 () Bool)

(assert (=> b!6297013 m!7116578))

(assert (=> d!1975764 d!1976278))

(assert (=> b!6295809 d!1975824))

(declare-fun d!1976280 () Bool)

(assert (=> d!1976280 (= (head!12934 (unfocusZipperList!1638 zl!343)) (h!71275 (unfocusZipperList!1638 zl!343)))))

(assert (=> b!6295994 d!1976280))

(declare-fun b!6297014 () Bool)

(declare-fun c!1143117 () Bool)

(assert (=> b!6297014 (= c!1143117 ((_ is Star!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun e!3828665 () (InoxSet Context!11202))

(declare-fun e!3828664 () (InoxSet Context!11202))

(assert (=> b!6297014 (= e!3828665 e!3828664)))

(declare-fun bm!533594 () Bool)

(declare-fun call!533604 () List!64951)

(declare-fun call!533602 () List!64951)

(assert (=> bm!533594 (= call!533604 call!533602)))

(declare-fun d!1976282 () Bool)

(declare-fun c!1143114 () Bool)

(assert (=> d!1976282 (= c!1143114 (and ((_ is ElementMatch!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))) (= (c!1142690 (h!71275 (exprs!6101 (h!71276 zl!343)))) (h!71274 s!2326))))))

(declare-fun e!3828663 () (InoxSet Context!11202))

(assert (=> d!1976282 (= (derivationStepZipperDown!1465 (h!71275 (exprs!6101 (h!71276 zl!343))) (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))) (h!71274 s!2326)) e!3828663)))

(declare-fun b!6297015 () Bool)

(declare-fun call!533601 () (InoxSet Context!11202))

(assert (=> b!6297015 (= e!3828664 call!533601)))

(declare-fun b!6297016 () Bool)

(declare-fun e!3828662 () (InoxSet Context!11202))

(assert (=> b!6297016 (= e!3828662 e!3828665)))

(declare-fun c!1143115 () Bool)

(assert (=> b!6297016 (= c!1143115 ((_ is Concat!25062) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6297017 () Bool)

(declare-fun e!3828660 () Bool)

(assert (=> b!6297017 (= e!3828660 (nullable!6210 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun call!533603 () (InoxSet Context!11202))

(declare-fun c!1143113 () Bool)

(declare-fun bm!533595 () Bool)

(assert (=> bm!533595 (= call!533603 (derivationStepZipperDown!1465 (ite c!1143113 (regOne!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343))))) (ite c!1143113 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))) (Context!11203 call!533602)) (h!71274 s!2326)))))

(declare-fun b!6297018 () Bool)

(assert (=> b!6297018 (= e!3828663 (store ((as const (Array Context!11202 Bool)) false) (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))) true))))

(declare-fun b!6297019 () Bool)

(declare-fun e!3828661 () (InoxSet Context!11202))

(assert (=> b!6297019 (= e!3828663 e!3828661)))

(assert (=> b!6297019 (= c!1143113 ((_ is Union!16217) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun b!6297020 () Bool)

(assert (=> b!6297020 (= e!3828665 call!533601)))

(declare-fun c!1143116 () Bool)

(declare-fun bm!533596 () Bool)

(assert (=> bm!533596 (= call!533602 ($colon$colon!2082 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343))))) (ite (or c!1143116 c!1143115) (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (h!71275 (exprs!6101 (h!71276 zl!343))))))))

(declare-fun b!6297021 () Bool)

(assert (=> b!6297021 (= c!1143116 e!3828660)))

(declare-fun res!2596625 () Bool)

(assert (=> b!6297021 (=> (not res!2596625) (not e!3828660))))

(assert (=> b!6297021 (= res!2596625 ((_ is Concat!25062) (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> b!6297021 (= e!3828661 e!3828662)))

(declare-fun b!6297022 () Bool)

(assert (=> b!6297022 (= e!3828664 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533597 () Bool)

(declare-fun call!533600 () (InoxSet Context!11202))

(declare-fun call!533599 () (InoxSet Context!11202))

(assert (=> bm!533597 (= call!533600 call!533599)))

(declare-fun b!6297023 () Bool)

(assert (=> b!6297023 (= e!3828662 ((_ map or) call!533603 call!533600))))

(declare-fun bm!533598 () Bool)

(assert (=> bm!533598 (= call!533599 (derivationStepZipperDown!1465 (ite c!1143113 (regTwo!32947 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1143116 (regTwo!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (ite c!1143115 (regOne!32946 (h!71275 (exprs!6101 (h!71276 zl!343)))) (reg!16546 (h!71275 (exprs!6101 (h!71276 zl!343))))))) (ite (or c!1143113 c!1143116) (Context!11203 (t!378517 (exprs!6101 (h!71276 zl!343)))) (Context!11203 call!533604)) (h!71274 s!2326)))))

(declare-fun bm!533599 () Bool)

(assert (=> bm!533599 (= call!533601 call!533600)))

(declare-fun b!6297024 () Bool)

(assert (=> b!6297024 (= e!3828661 ((_ map or) call!533603 call!533599))))

(assert (= (and d!1976282 c!1143114) b!6297018))

(assert (= (and d!1976282 (not c!1143114)) b!6297019))

(assert (= (and b!6297019 c!1143113) b!6297024))

(assert (= (and b!6297019 (not c!1143113)) b!6297021))

(assert (= (and b!6297021 res!2596625) b!6297017))

(assert (= (and b!6297021 c!1143116) b!6297023))

(assert (= (and b!6297021 (not c!1143116)) b!6297016))

(assert (= (and b!6297016 c!1143115) b!6297020))

(assert (= (and b!6297016 (not c!1143115)) b!6297014))

(assert (= (and b!6297014 c!1143117) b!6297015))

(assert (= (and b!6297014 (not c!1143117)) b!6297022))

(assert (= (or b!6297020 b!6297015) bm!533594))

(assert (= (or b!6297020 b!6297015) bm!533599))

(assert (= (or b!6297023 bm!533594) bm!533596))

(assert (= (or b!6297023 bm!533599) bm!533597))

(assert (= (or b!6297024 bm!533597) bm!533598))

(assert (= (or b!6297024 b!6297023) bm!533595))

(declare-fun m!7116580 () Bool)

(assert (=> bm!533595 m!7116580))

(declare-fun m!7116582 () Bool)

(assert (=> bm!533596 m!7116582))

(assert (=> b!6297017 m!7115696))

(declare-fun m!7116584 () Bool)

(assert (=> bm!533598 m!7116584))

(declare-fun m!7116586 () Bool)

(assert (=> b!6297018 m!7116586))

(assert (=> bm!533421 d!1976282))

(declare-fun b!6297025 () Bool)

(declare-fun c!1143122 () Bool)

(assert (=> b!6297025 (= c!1143122 ((_ is Star!16217) (h!71275 (exprs!6101 lt!2357738))))))

(declare-fun e!3828671 () (InoxSet Context!11202))

(declare-fun e!3828670 () (InoxSet Context!11202))

(assert (=> b!6297025 (= e!3828671 e!3828670)))

(declare-fun bm!533600 () Bool)

(declare-fun call!533610 () List!64951)

(declare-fun call!533608 () List!64951)

(assert (=> bm!533600 (= call!533610 call!533608)))

(declare-fun d!1976284 () Bool)

(declare-fun c!1143119 () Bool)

(assert (=> d!1976284 (= c!1143119 (and ((_ is ElementMatch!16217) (h!71275 (exprs!6101 lt!2357738))) (= (c!1142690 (h!71275 (exprs!6101 lt!2357738))) (h!71274 s!2326))))))

(declare-fun e!3828669 () (InoxSet Context!11202))

(assert (=> d!1976284 (= (derivationStepZipperDown!1465 (h!71275 (exprs!6101 lt!2357738)) (Context!11203 (t!378517 (exprs!6101 lt!2357738))) (h!71274 s!2326)) e!3828669)))

(declare-fun b!6297026 () Bool)

(declare-fun call!533607 () (InoxSet Context!11202))

(assert (=> b!6297026 (= e!3828670 call!533607)))

(declare-fun b!6297027 () Bool)

(declare-fun e!3828668 () (InoxSet Context!11202))

(assert (=> b!6297027 (= e!3828668 e!3828671)))

(declare-fun c!1143120 () Bool)

(assert (=> b!6297027 (= c!1143120 ((_ is Concat!25062) (h!71275 (exprs!6101 lt!2357738))))))

(declare-fun b!6297028 () Bool)

(declare-fun e!3828666 () Bool)

(assert (=> b!6297028 (= e!3828666 (nullable!6210 (regOne!32946 (h!71275 (exprs!6101 lt!2357738)))))))

(declare-fun c!1143118 () Bool)

(declare-fun bm!533601 () Bool)

(declare-fun call!533609 () (InoxSet Context!11202))

(assert (=> bm!533601 (= call!533609 (derivationStepZipperDown!1465 (ite c!1143118 (regOne!32947 (h!71275 (exprs!6101 lt!2357738))) (regOne!32946 (h!71275 (exprs!6101 lt!2357738)))) (ite c!1143118 (Context!11203 (t!378517 (exprs!6101 lt!2357738))) (Context!11203 call!533608)) (h!71274 s!2326)))))

(declare-fun b!6297029 () Bool)

(assert (=> b!6297029 (= e!3828669 (store ((as const (Array Context!11202 Bool)) false) (Context!11203 (t!378517 (exprs!6101 lt!2357738))) true))))

(declare-fun b!6297030 () Bool)

(declare-fun e!3828667 () (InoxSet Context!11202))

(assert (=> b!6297030 (= e!3828669 e!3828667)))

(assert (=> b!6297030 (= c!1143118 ((_ is Union!16217) (h!71275 (exprs!6101 lt!2357738))))))

(declare-fun b!6297031 () Bool)

(assert (=> b!6297031 (= e!3828671 call!533607)))

(declare-fun c!1143121 () Bool)

(declare-fun bm!533602 () Bool)

(assert (=> bm!533602 (= call!533608 ($colon$colon!2082 (exprs!6101 (Context!11203 (t!378517 (exprs!6101 lt!2357738)))) (ite (or c!1143121 c!1143120) (regTwo!32946 (h!71275 (exprs!6101 lt!2357738))) (h!71275 (exprs!6101 lt!2357738)))))))

(declare-fun b!6297032 () Bool)

(assert (=> b!6297032 (= c!1143121 e!3828666)))

(declare-fun res!2596626 () Bool)

(assert (=> b!6297032 (=> (not res!2596626) (not e!3828666))))

(assert (=> b!6297032 (= res!2596626 ((_ is Concat!25062) (h!71275 (exprs!6101 lt!2357738))))))

(assert (=> b!6297032 (= e!3828667 e!3828668)))

(declare-fun b!6297033 () Bool)

(assert (=> b!6297033 (= e!3828670 ((as const (Array Context!11202 Bool)) false))))

(declare-fun bm!533603 () Bool)

(declare-fun call!533606 () (InoxSet Context!11202))

(declare-fun call!533605 () (InoxSet Context!11202))

(assert (=> bm!533603 (= call!533606 call!533605)))

(declare-fun b!6297034 () Bool)

(assert (=> b!6297034 (= e!3828668 ((_ map or) call!533609 call!533606))))

(declare-fun bm!533604 () Bool)

(assert (=> bm!533604 (= call!533605 (derivationStepZipperDown!1465 (ite c!1143118 (regTwo!32947 (h!71275 (exprs!6101 lt!2357738))) (ite c!1143121 (regTwo!32946 (h!71275 (exprs!6101 lt!2357738))) (ite c!1143120 (regOne!32946 (h!71275 (exprs!6101 lt!2357738))) (reg!16546 (h!71275 (exprs!6101 lt!2357738)))))) (ite (or c!1143118 c!1143121) (Context!11203 (t!378517 (exprs!6101 lt!2357738))) (Context!11203 call!533610)) (h!71274 s!2326)))))

(declare-fun bm!533605 () Bool)

(assert (=> bm!533605 (= call!533607 call!533606)))

(declare-fun b!6297035 () Bool)

(assert (=> b!6297035 (= e!3828667 ((_ map or) call!533609 call!533605))))

(assert (= (and d!1976284 c!1143119) b!6297029))

(assert (= (and d!1976284 (not c!1143119)) b!6297030))

(assert (= (and b!6297030 c!1143118) b!6297035))

(assert (= (and b!6297030 (not c!1143118)) b!6297032))

(assert (= (and b!6297032 res!2596626) b!6297028))

(assert (= (and b!6297032 c!1143121) b!6297034))

(assert (= (and b!6297032 (not c!1143121)) b!6297027))

(assert (= (and b!6297027 c!1143120) b!6297031))

(assert (= (and b!6297027 (not c!1143120)) b!6297025))

(assert (= (and b!6297025 c!1143122) b!6297026))

(assert (= (and b!6297025 (not c!1143122)) b!6297033))

(assert (= (or b!6297031 b!6297026) bm!533600))

(assert (= (or b!6297031 b!6297026) bm!533605))

(assert (= (or b!6297034 bm!533600) bm!533602))

(assert (= (or b!6297034 bm!533605) bm!533603))

(assert (= (or b!6297035 bm!533603) bm!533604))

(assert (= (or b!6297035 b!6297034) bm!533601))

(declare-fun m!7116588 () Bool)

(assert (=> bm!533601 m!7116588))

(declare-fun m!7116590 () Bool)

(assert (=> bm!533602 m!7116590))

(declare-fun m!7116592 () Bool)

(assert (=> b!6297028 m!7116592))

(declare-fun m!7116594 () Bool)

(assert (=> bm!533604 m!7116594))

(declare-fun m!7116596 () Bool)

(assert (=> b!6297029 m!7116596))

(assert (=> bm!533420 d!1976284))

(declare-fun b!6297036 () Bool)

(declare-fun e!3828672 () Bool)

(assert (=> b!6297036 (= e!3828672 tp_is_empty!41687)))

(declare-fun b!6297038 () Bool)

(declare-fun tp!1752974 () Bool)

(assert (=> b!6297038 (= e!3828672 tp!1752974)))

(declare-fun b!6297037 () Bool)

(declare-fun tp!1752971 () Bool)

(declare-fun tp!1752972 () Bool)

(assert (=> b!6297037 (= e!3828672 (and tp!1752971 tp!1752972))))

(assert (=> b!6296074 (= tp!1752771 e!3828672)))

(declare-fun b!6297039 () Bool)

(declare-fun tp!1752975 () Bool)

(declare-fun tp!1752973 () Bool)

(assert (=> b!6297039 (= e!3828672 (and tp!1752975 tp!1752973))))

(assert (= (and b!6296074 ((_ is ElementMatch!16217) (regOne!32947 (regOne!32947 r!7292)))) b!6297036))

(assert (= (and b!6296074 ((_ is Concat!25062) (regOne!32947 (regOne!32947 r!7292)))) b!6297037))

(assert (= (and b!6296074 ((_ is Star!16217) (regOne!32947 (regOne!32947 r!7292)))) b!6297038))

(assert (= (and b!6296074 ((_ is Union!16217) (regOne!32947 (regOne!32947 r!7292)))) b!6297039))

(declare-fun b!6297040 () Bool)

(declare-fun e!3828673 () Bool)

(assert (=> b!6297040 (= e!3828673 tp_is_empty!41687)))

(declare-fun b!6297042 () Bool)

(declare-fun tp!1752979 () Bool)

(assert (=> b!6297042 (= e!3828673 tp!1752979)))

(declare-fun b!6297041 () Bool)

(declare-fun tp!1752976 () Bool)

(declare-fun tp!1752977 () Bool)

(assert (=> b!6297041 (= e!3828673 (and tp!1752976 tp!1752977))))

(assert (=> b!6296074 (= tp!1752769 e!3828673)))

(declare-fun b!6297043 () Bool)

(declare-fun tp!1752980 () Bool)

(declare-fun tp!1752978 () Bool)

(assert (=> b!6297043 (= e!3828673 (and tp!1752980 tp!1752978))))

(assert (= (and b!6296074 ((_ is ElementMatch!16217) (regTwo!32947 (regOne!32947 r!7292)))) b!6297040))

(assert (= (and b!6296074 ((_ is Concat!25062) (regTwo!32947 (regOne!32947 r!7292)))) b!6297041))

(assert (= (and b!6296074 ((_ is Star!16217) (regTwo!32947 (regOne!32947 r!7292)))) b!6297042))

(assert (= (and b!6296074 ((_ is Union!16217) (regTwo!32947 (regOne!32947 r!7292)))) b!6297043))

(declare-fun condSetEmpty!42870 () Bool)

(assert (=> setNonEmpty!42862 (= condSetEmpty!42870 (= setRest!42862 ((as const (Array Context!11202 Bool)) false)))))

(declare-fun setRes!42870 () Bool)

(assert (=> setNonEmpty!42862 (= tp!1752797 setRes!42870)))

(declare-fun setIsEmpty!42870 () Bool)

(assert (=> setIsEmpty!42870 setRes!42870))

(declare-fun e!3828674 () Bool)

(declare-fun setNonEmpty!42870 () Bool)

(declare-fun setElem!42870 () Context!11202)

(declare-fun tp!1752981 () Bool)

(assert (=> setNonEmpty!42870 (= setRes!42870 (and tp!1752981 (inv!83789 setElem!42870) e!3828674))))

(declare-fun setRest!42870 () (InoxSet Context!11202))

(assert (=> setNonEmpty!42870 (= setRest!42862 ((_ map or) (store ((as const (Array Context!11202 Bool)) false) setElem!42870 true) setRest!42870))))

(declare-fun b!6297044 () Bool)

(declare-fun tp!1752982 () Bool)

(assert (=> b!6297044 (= e!3828674 tp!1752982)))

(assert (= (and setNonEmpty!42862 condSetEmpty!42870) setIsEmpty!42870))

(assert (= (and setNonEmpty!42862 (not condSetEmpty!42870)) setNonEmpty!42870))

(assert (= setNonEmpty!42870 b!6297044))

(declare-fun m!7116598 () Bool)

(assert (=> setNonEmpty!42870 m!7116598))

(declare-fun b!6297045 () Bool)

(declare-fun e!3828675 () Bool)

(assert (=> b!6297045 (= e!3828675 tp_is_empty!41687)))

(declare-fun b!6297047 () Bool)

(declare-fun tp!1752986 () Bool)

(assert (=> b!6297047 (= e!3828675 tp!1752986)))

(declare-fun b!6297046 () Bool)

(declare-fun tp!1752983 () Bool)

(declare-fun tp!1752984 () Bool)

(assert (=> b!6297046 (= e!3828675 (and tp!1752983 tp!1752984))))

(assert (=> b!6296067 (= tp!1752760 e!3828675)))

(declare-fun b!6297048 () Bool)

(declare-fun tp!1752987 () Bool)

(declare-fun tp!1752985 () Bool)

(assert (=> b!6297048 (= e!3828675 (and tp!1752987 tp!1752985))))

(assert (= (and b!6296067 ((_ is ElementMatch!16217) (regOne!32946 (reg!16546 r!7292)))) b!6297045))

(assert (= (and b!6296067 ((_ is Concat!25062) (regOne!32946 (reg!16546 r!7292)))) b!6297046))

(assert (= (and b!6296067 ((_ is Star!16217) (regOne!32946 (reg!16546 r!7292)))) b!6297047))

(assert (= (and b!6296067 ((_ is Union!16217) (regOne!32946 (reg!16546 r!7292)))) b!6297048))

(declare-fun b!6297049 () Bool)

(declare-fun e!3828676 () Bool)

(assert (=> b!6297049 (= e!3828676 tp_is_empty!41687)))

(declare-fun b!6297051 () Bool)

(declare-fun tp!1752991 () Bool)

(assert (=> b!6297051 (= e!3828676 tp!1752991)))

(declare-fun b!6297050 () Bool)

(declare-fun tp!1752988 () Bool)

(declare-fun tp!1752989 () Bool)

(assert (=> b!6297050 (= e!3828676 (and tp!1752988 tp!1752989))))

(assert (=> b!6296067 (= tp!1752761 e!3828676)))

(declare-fun b!6297052 () Bool)

(declare-fun tp!1752992 () Bool)

(declare-fun tp!1752990 () Bool)

(assert (=> b!6297052 (= e!3828676 (and tp!1752992 tp!1752990))))

(assert (= (and b!6296067 ((_ is ElementMatch!16217) (regTwo!32946 (reg!16546 r!7292)))) b!6297049))

(assert (= (and b!6296067 ((_ is Concat!25062) (regTwo!32946 (reg!16546 r!7292)))) b!6297050))

(assert (= (and b!6296067 ((_ is Star!16217) (regTwo!32946 (reg!16546 r!7292)))) b!6297051))

(assert (= (and b!6296067 ((_ is Union!16217) (regTwo!32946 (reg!16546 r!7292)))) b!6297052))

(declare-fun b!6297053 () Bool)

(declare-fun e!3828677 () Bool)

(assert (=> b!6297053 (= e!3828677 tp_is_empty!41687)))

(declare-fun b!6297055 () Bool)

(declare-fun tp!1752996 () Bool)

(assert (=> b!6297055 (= e!3828677 tp!1752996)))

(declare-fun b!6297054 () Bool)

(declare-fun tp!1752993 () Bool)

(declare-fun tp!1752994 () Bool)

(assert (=> b!6297054 (= e!3828677 (and tp!1752993 tp!1752994))))

(assert (=> b!6296069 (= tp!1752764 e!3828677)))

(declare-fun b!6297056 () Bool)

(declare-fun tp!1752997 () Bool)

(declare-fun tp!1752995 () Bool)

(assert (=> b!6297056 (= e!3828677 (and tp!1752997 tp!1752995))))

(assert (= (and b!6296069 ((_ is ElementMatch!16217) (regOne!32947 (reg!16546 r!7292)))) b!6297053))

(assert (= (and b!6296069 ((_ is Concat!25062) (regOne!32947 (reg!16546 r!7292)))) b!6297054))

(assert (= (and b!6296069 ((_ is Star!16217) (regOne!32947 (reg!16546 r!7292)))) b!6297055))

(assert (= (and b!6296069 ((_ is Union!16217) (regOne!32947 (reg!16546 r!7292)))) b!6297056))

(declare-fun b!6297057 () Bool)

(declare-fun e!3828678 () Bool)

(assert (=> b!6297057 (= e!3828678 tp_is_empty!41687)))

(declare-fun b!6297059 () Bool)

(declare-fun tp!1753001 () Bool)

(assert (=> b!6297059 (= e!3828678 tp!1753001)))

(declare-fun b!6297058 () Bool)

(declare-fun tp!1752998 () Bool)

(declare-fun tp!1752999 () Bool)

(assert (=> b!6297058 (= e!3828678 (and tp!1752998 tp!1752999))))

(assert (=> b!6296069 (= tp!1752762 e!3828678)))

(declare-fun b!6297060 () Bool)

(declare-fun tp!1753002 () Bool)

(declare-fun tp!1753000 () Bool)

(assert (=> b!6297060 (= e!3828678 (and tp!1753002 tp!1753000))))

(assert (= (and b!6296069 ((_ is ElementMatch!16217) (regTwo!32947 (reg!16546 r!7292)))) b!6297057))

(assert (= (and b!6296069 ((_ is Concat!25062) (regTwo!32947 (reg!16546 r!7292)))) b!6297058))

(assert (= (and b!6296069 ((_ is Star!16217) (regTwo!32947 (reg!16546 r!7292)))) b!6297059))

(assert (= (and b!6296069 ((_ is Union!16217) (regTwo!32947 (reg!16546 r!7292)))) b!6297060))

(declare-fun b!6297061 () Bool)

(declare-fun e!3828679 () Bool)

(assert (=> b!6297061 (= e!3828679 tp_is_empty!41687)))

(declare-fun b!6297063 () Bool)

(declare-fun tp!1753006 () Bool)

(assert (=> b!6297063 (= e!3828679 tp!1753006)))

(declare-fun b!6297062 () Bool)

(declare-fun tp!1753003 () Bool)

(declare-fun tp!1753004 () Bool)

(assert (=> b!6297062 (= e!3828679 (and tp!1753003 tp!1753004))))

(assert (=> b!6296068 (= tp!1752763 e!3828679)))

(declare-fun b!6297064 () Bool)

(declare-fun tp!1753007 () Bool)

(declare-fun tp!1753005 () Bool)

(assert (=> b!6297064 (= e!3828679 (and tp!1753007 tp!1753005))))

(assert (= (and b!6296068 ((_ is ElementMatch!16217) (reg!16546 (reg!16546 r!7292)))) b!6297061))

(assert (= (and b!6296068 ((_ is Concat!25062) (reg!16546 (reg!16546 r!7292)))) b!6297062))

(assert (= (and b!6296068 ((_ is Star!16217) (reg!16546 (reg!16546 r!7292)))) b!6297063))

(assert (= (and b!6296068 ((_ is Union!16217) (reg!16546 (reg!16546 r!7292)))) b!6297064))

(declare-fun b!6297065 () Bool)

(declare-fun e!3828680 () Bool)

(declare-fun tp!1753008 () Bool)

(declare-fun tp!1753009 () Bool)

(assert (=> b!6297065 (= e!3828680 (and tp!1753008 tp!1753009))))

(assert (=> b!6296099 (= tp!1752798 e!3828680)))

(assert (= (and b!6296099 ((_ is Cons!64827) (exprs!6101 setElem!42862))) b!6297065))

(declare-fun b!6297066 () Bool)

(declare-fun e!3828681 () Bool)

(assert (=> b!6297066 (= e!3828681 tp_is_empty!41687)))

(declare-fun b!6297068 () Bool)

(declare-fun tp!1753013 () Bool)

(assert (=> b!6297068 (= e!3828681 tp!1753013)))

(declare-fun b!6297067 () Bool)

(declare-fun tp!1753010 () Bool)

(declare-fun tp!1753011 () Bool)

(assert (=> b!6297067 (= e!3828681 (and tp!1753010 tp!1753011))))

(assert (=> b!6296084 (= tp!1752782 e!3828681)))

(declare-fun b!6297069 () Bool)

(declare-fun tp!1753014 () Bool)

(declare-fun tp!1753012 () Bool)

(assert (=> b!6297069 (= e!3828681 (and tp!1753014 tp!1753012))))

(assert (= (and b!6296084 ((_ is ElementMatch!16217) (regOne!32946 (regTwo!32946 r!7292)))) b!6297066))

(assert (= (and b!6296084 ((_ is Concat!25062) (regOne!32946 (regTwo!32946 r!7292)))) b!6297067))

(assert (= (and b!6296084 ((_ is Star!16217) (regOne!32946 (regTwo!32946 r!7292)))) b!6297068))

(assert (= (and b!6296084 ((_ is Union!16217) (regOne!32946 (regTwo!32946 r!7292)))) b!6297069))

(declare-fun b!6297070 () Bool)

(declare-fun e!3828682 () Bool)

(assert (=> b!6297070 (= e!3828682 tp_is_empty!41687)))

(declare-fun b!6297072 () Bool)

(declare-fun tp!1753018 () Bool)

(assert (=> b!6297072 (= e!3828682 tp!1753018)))

(declare-fun b!6297071 () Bool)

(declare-fun tp!1753015 () Bool)

(declare-fun tp!1753016 () Bool)

(assert (=> b!6297071 (= e!3828682 (and tp!1753015 tp!1753016))))

(assert (=> b!6296084 (= tp!1752783 e!3828682)))

(declare-fun b!6297073 () Bool)

(declare-fun tp!1753019 () Bool)

(declare-fun tp!1753017 () Bool)

(assert (=> b!6297073 (= e!3828682 (and tp!1753019 tp!1753017))))

(assert (= (and b!6296084 ((_ is ElementMatch!16217) (regTwo!32946 (regTwo!32946 r!7292)))) b!6297070))

(assert (= (and b!6296084 ((_ is Concat!25062) (regTwo!32946 (regTwo!32946 r!7292)))) b!6297071))

(assert (= (and b!6296084 ((_ is Star!16217) (regTwo!32946 (regTwo!32946 r!7292)))) b!6297072))

(assert (= (and b!6296084 ((_ is Union!16217) (regTwo!32946 (regTwo!32946 r!7292)))) b!6297073))

(declare-fun b!6297074 () Bool)

(declare-fun e!3828683 () Bool)

(assert (=> b!6297074 (= e!3828683 tp_is_empty!41687)))

(declare-fun b!6297076 () Bool)

(declare-fun tp!1753023 () Bool)

(assert (=> b!6297076 (= e!3828683 tp!1753023)))

(declare-fun b!6297075 () Bool)

(declare-fun tp!1753020 () Bool)

(declare-fun tp!1753021 () Bool)

(assert (=> b!6297075 (= e!3828683 (and tp!1753020 tp!1753021))))

(assert (=> b!6296086 (= tp!1752786 e!3828683)))

(declare-fun b!6297077 () Bool)

(declare-fun tp!1753024 () Bool)

(declare-fun tp!1753022 () Bool)

(assert (=> b!6297077 (= e!3828683 (and tp!1753024 tp!1753022))))

(assert (= (and b!6296086 ((_ is ElementMatch!16217) (regOne!32947 (regTwo!32946 r!7292)))) b!6297074))

(assert (= (and b!6296086 ((_ is Concat!25062) (regOne!32947 (regTwo!32946 r!7292)))) b!6297075))

(assert (= (and b!6296086 ((_ is Star!16217) (regOne!32947 (regTwo!32946 r!7292)))) b!6297076))

(assert (= (and b!6296086 ((_ is Union!16217) (regOne!32947 (regTwo!32946 r!7292)))) b!6297077))

(declare-fun b!6297078 () Bool)

(declare-fun e!3828684 () Bool)

(assert (=> b!6297078 (= e!3828684 tp_is_empty!41687)))

(declare-fun b!6297080 () Bool)

(declare-fun tp!1753028 () Bool)

(assert (=> b!6297080 (= e!3828684 tp!1753028)))

(declare-fun b!6297079 () Bool)

(declare-fun tp!1753025 () Bool)

(declare-fun tp!1753026 () Bool)

(assert (=> b!6297079 (= e!3828684 (and tp!1753025 tp!1753026))))

(assert (=> b!6296086 (= tp!1752784 e!3828684)))

(declare-fun b!6297081 () Bool)

(declare-fun tp!1753029 () Bool)

(declare-fun tp!1753027 () Bool)

(assert (=> b!6297081 (= e!3828684 (and tp!1753029 tp!1753027))))

(assert (= (and b!6296086 ((_ is ElementMatch!16217) (regTwo!32947 (regTwo!32946 r!7292)))) b!6297078))

(assert (= (and b!6296086 ((_ is Concat!25062) (regTwo!32947 (regTwo!32946 r!7292)))) b!6297079))

(assert (= (and b!6296086 ((_ is Star!16217) (regTwo!32947 (regTwo!32946 r!7292)))) b!6297080))

(assert (= (and b!6296086 ((_ is Union!16217) (regTwo!32947 (regTwo!32946 r!7292)))) b!6297081))

(declare-fun b!6297082 () Bool)

(declare-fun e!3828685 () Bool)

(assert (=> b!6297082 (= e!3828685 tp_is_empty!41687)))

(declare-fun b!6297084 () Bool)

(declare-fun tp!1753033 () Bool)

(assert (=> b!6297084 (= e!3828685 tp!1753033)))

(declare-fun b!6297083 () Bool)

(declare-fun tp!1753030 () Bool)

(declare-fun tp!1753031 () Bool)

(assert (=> b!6297083 (= e!3828685 (and tp!1753030 tp!1753031))))

(assert (=> b!6296085 (= tp!1752785 e!3828685)))

(declare-fun b!6297085 () Bool)

(declare-fun tp!1753034 () Bool)

(declare-fun tp!1753032 () Bool)

(assert (=> b!6297085 (= e!3828685 (and tp!1753034 tp!1753032))))

(assert (= (and b!6296085 ((_ is ElementMatch!16217) (reg!16546 (regTwo!32946 r!7292)))) b!6297082))

(assert (= (and b!6296085 ((_ is Concat!25062) (reg!16546 (regTwo!32946 r!7292)))) b!6297083))

(assert (= (and b!6296085 ((_ is Star!16217) (reg!16546 (regTwo!32946 r!7292)))) b!6297084))

(assert (= (and b!6296085 ((_ is Union!16217) (reg!16546 (regTwo!32946 r!7292)))) b!6297085))

(declare-fun b!6297086 () Bool)

(declare-fun e!3828686 () Bool)

(assert (=> b!6297086 (= e!3828686 tp_is_empty!41687)))

(declare-fun b!6297088 () Bool)

(declare-fun tp!1753038 () Bool)

(assert (=> b!6297088 (= e!3828686 tp!1753038)))

(declare-fun b!6297087 () Bool)

(declare-fun tp!1753035 () Bool)

(declare-fun tp!1753036 () Bool)

(assert (=> b!6297087 (= e!3828686 (and tp!1753035 tp!1753036))))

(assert (=> b!6296076 (= tp!1752772 e!3828686)))

(declare-fun b!6297089 () Bool)

(declare-fun tp!1753039 () Bool)

(declare-fun tp!1753037 () Bool)

(assert (=> b!6297089 (= e!3828686 (and tp!1753039 tp!1753037))))

(assert (= (and b!6296076 ((_ is ElementMatch!16217) (regOne!32946 (regTwo!32947 r!7292)))) b!6297086))

(assert (= (and b!6296076 ((_ is Concat!25062) (regOne!32946 (regTwo!32947 r!7292)))) b!6297087))

(assert (= (and b!6296076 ((_ is Star!16217) (regOne!32946 (regTwo!32947 r!7292)))) b!6297088))

(assert (= (and b!6296076 ((_ is Union!16217) (regOne!32946 (regTwo!32947 r!7292)))) b!6297089))

(declare-fun b!6297090 () Bool)

(declare-fun e!3828687 () Bool)

(assert (=> b!6297090 (= e!3828687 tp_is_empty!41687)))

(declare-fun b!6297092 () Bool)

(declare-fun tp!1753043 () Bool)

(assert (=> b!6297092 (= e!3828687 tp!1753043)))

(declare-fun b!6297091 () Bool)

(declare-fun tp!1753040 () Bool)

(declare-fun tp!1753041 () Bool)

(assert (=> b!6297091 (= e!3828687 (and tp!1753040 tp!1753041))))

(assert (=> b!6296076 (= tp!1752773 e!3828687)))

(declare-fun b!6297093 () Bool)

(declare-fun tp!1753044 () Bool)

(declare-fun tp!1753042 () Bool)

(assert (=> b!6297093 (= e!3828687 (and tp!1753044 tp!1753042))))

(assert (= (and b!6296076 ((_ is ElementMatch!16217) (regTwo!32946 (regTwo!32947 r!7292)))) b!6297090))

(assert (= (and b!6296076 ((_ is Concat!25062) (regTwo!32946 (regTwo!32947 r!7292)))) b!6297091))

(assert (= (and b!6296076 ((_ is Star!16217) (regTwo!32946 (regTwo!32947 r!7292)))) b!6297092))

(assert (= (and b!6296076 ((_ is Union!16217) (regTwo!32946 (regTwo!32947 r!7292)))) b!6297093))

(declare-fun b!6297094 () Bool)

(declare-fun e!3828688 () Bool)

(assert (=> b!6297094 (= e!3828688 tp_is_empty!41687)))

(declare-fun b!6297096 () Bool)

(declare-fun tp!1753048 () Bool)

(assert (=> b!6297096 (= e!3828688 tp!1753048)))

(declare-fun b!6297095 () Bool)

(declare-fun tp!1753045 () Bool)

(declare-fun tp!1753046 () Bool)

(assert (=> b!6297095 (= e!3828688 (and tp!1753045 tp!1753046))))

(assert (=> b!6296078 (= tp!1752776 e!3828688)))

(declare-fun b!6297097 () Bool)

(declare-fun tp!1753049 () Bool)

(declare-fun tp!1753047 () Bool)

(assert (=> b!6297097 (= e!3828688 (and tp!1753049 tp!1753047))))

(assert (= (and b!6296078 ((_ is ElementMatch!16217) (regOne!32947 (regTwo!32947 r!7292)))) b!6297094))

(assert (= (and b!6296078 ((_ is Concat!25062) (regOne!32947 (regTwo!32947 r!7292)))) b!6297095))

(assert (= (and b!6296078 ((_ is Star!16217) (regOne!32947 (regTwo!32947 r!7292)))) b!6297096))

(assert (= (and b!6296078 ((_ is Union!16217) (regOne!32947 (regTwo!32947 r!7292)))) b!6297097))

(declare-fun b!6297098 () Bool)

(declare-fun e!3828689 () Bool)

(assert (=> b!6297098 (= e!3828689 tp_is_empty!41687)))

(declare-fun b!6297100 () Bool)

(declare-fun tp!1753053 () Bool)

(assert (=> b!6297100 (= e!3828689 tp!1753053)))

(declare-fun b!6297099 () Bool)

(declare-fun tp!1753050 () Bool)

(declare-fun tp!1753051 () Bool)

(assert (=> b!6297099 (= e!3828689 (and tp!1753050 tp!1753051))))

(assert (=> b!6296078 (= tp!1752774 e!3828689)))

(declare-fun b!6297101 () Bool)

(declare-fun tp!1753054 () Bool)

(declare-fun tp!1753052 () Bool)

(assert (=> b!6297101 (= e!3828689 (and tp!1753054 tp!1753052))))

(assert (= (and b!6296078 ((_ is ElementMatch!16217) (regTwo!32947 (regTwo!32947 r!7292)))) b!6297098))

(assert (= (and b!6296078 ((_ is Concat!25062) (regTwo!32947 (regTwo!32947 r!7292)))) b!6297099))

(assert (= (and b!6296078 ((_ is Star!16217) (regTwo!32947 (regTwo!32947 r!7292)))) b!6297100))

(assert (= (and b!6296078 ((_ is Union!16217) (regTwo!32947 (regTwo!32947 r!7292)))) b!6297101))

(declare-fun b!6297102 () Bool)

(declare-fun e!3828690 () Bool)

(assert (=> b!6297102 (= e!3828690 tp_is_empty!41687)))

(declare-fun b!6297104 () Bool)

(declare-fun tp!1753058 () Bool)

(assert (=> b!6297104 (= e!3828690 tp!1753058)))

(declare-fun b!6297103 () Bool)

(declare-fun tp!1753055 () Bool)

(declare-fun tp!1753056 () Bool)

(assert (=> b!6297103 (= e!3828690 (and tp!1753055 tp!1753056))))

(assert (=> b!6296077 (= tp!1752775 e!3828690)))

(declare-fun b!6297105 () Bool)

(declare-fun tp!1753059 () Bool)

(declare-fun tp!1753057 () Bool)

(assert (=> b!6297105 (= e!3828690 (and tp!1753059 tp!1753057))))

(assert (= (and b!6296077 ((_ is ElementMatch!16217) (reg!16546 (regTwo!32947 r!7292)))) b!6297102))

(assert (= (and b!6296077 ((_ is Concat!25062) (reg!16546 (regTwo!32947 r!7292)))) b!6297103))

(assert (= (and b!6296077 ((_ is Star!16217) (reg!16546 (regTwo!32947 r!7292)))) b!6297104))

(assert (= (and b!6296077 ((_ is Union!16217) (reg!16546 (regTwo!32947 r!7292)))) b!6297105))

(declare-fun b!6297106 () Bool)

(declare-fun e!3828691 () Bool)

(declare-fun tp!1753060 () Bool)

(declare-fun tp!1753061 () Bool)

(assert (=> b!6297106 (= e!3828691 (and tp!1753060 tp!1753061))))

(assert (=> b!6296094 (= tp!1752791 e!3828691)))

(assert (= (and b!6296094 ((_ is Cons!64827) (exprs!6101 (h!71276 (t!378518 zl!343))))) b!6297106))

(declare-fun b!6297107 () Bool)

(declare-fun e!3828692 () Bool)

(assert (=> b!6297107 (= e!3828692 tp_is_empty!41687)))

(declare-fun b!6297109 () Bool)

(declare-fun tp!1753065 () Bool)

(assert (=> b!6297109 (= e!3828692 tp!1753065)))

(declare-fun b!6297108 () Bool)

(declare-fun tp!1753062 () Bool)

(declare-fun tp!1753063 () Bool)

(assert (=> b!6297108 (= e!3828692 (and tp!1753062 tp!1753063))))

(assert (=> b!6296070 (= tp!1752765 e!3828692)))

(declare-fun b!6297110 () Bool)

(declare-fun tp!1753066 () Bool)

(declare-fun tp!1753064 () Bool)

(assert (=> b!6297110 (= e!3828692 (and tp!1753066 tp!1753064))))

(assert (= (and b!6296070 ((_ is ElementMatch!16217) (h!71275 (exprs!6101 setElem!42856)))) b!6297107))

(assert (= (and b!6296070 ((_ is Concat!25062) (h!71275 (exprs!6101 setElem!42856)))) b!6297108))

(assert (= (and b!6296070 ((_ is Star!16217) (h!71275 (exprs!6101 setElem!42856)))) b!6297109))

(assert (= (and b!6296070 ((_ is Union!16217) (h!71275 (exprs!6101 setElem!42856)))) b!6297110))

(declare-fun b!6297111 () Bool)

(declare-fun e!3828693 () Bool)

(declare-fun tp!1753067 () Bool)

(declare-fun tp!1753068 () Bool)

(assert (=> b!6297111 (= e!3828693 (and tp!1753067 tp!1753068))))

(assert (=> b!6296070 (= tp!1752766 e!3828693)))

(assert (= (and b!6296070 ((_ is Cons!64827) (t!378517 (exprs!6101 setElem!42856)))) b!6297111))

(declare-fun b!6297113 () Bool)

(declare-fun e!3828695 () Bool)

(declare-fun tp!1753069 () Bool)

(assert (=> b!6297113 (= e!3828695 tp!1753069)))

(declare-fun tp!1753070 () Bool)

(declare-fun b!6297112 () Bool)

(declare-fun e!3828694 () Bool)

(assert (=> b!6297112 (= e!3828694 (and (inv!83789 (h!71276 (t!378518 (t!378518 zl!343)))) e!3828695 tp!1753070))))

(assert (=> b!6296093 (= tp!1752792 e!3828694)))

(assert (= b!6297112 b!6297113))

(assert (= (and b!6296093 ((_ is Cons!64828) (t!378518 (t!378518 zl!343)))) b!6297112))

(declare-fun m!7116600 () Bool)

(assert (=> b!6297112 m!7116600))

(declare-fun b!6297114 () Bool)

(declare-fun e!3828696 () Bool)

(declare-fun tp!1753071 () Bool)

(assert (=> b!6297114 (= e!3828696 (and tp_is_empty!41687 tp!1753071))))

(assert (=> b!6296055 (= tp!1752749 e!3828696)))

(assert (= (and b!6296055 ((_ is Cons!64826) (t!378516 (t!378516 s!2326)))) b!6297114))

(declare-fun b!6297115 () Bool)

(declare-fun e!3828697 () Bool)

(assert (=> b!6297115 (= e!3828697 tp_is_empty!41687)))

(declare-fun b!6297117 () Bool)

(declare-fun tp!1753075 () Bool)

(assert (=> b!6297117 (= e!3828697 tp!1753075)))

(declare-fun b!6297116 () Bool)

(declare-fun tp!1753072 () Bool)

(declare-fun tp!1753073 () Bool)

(assert (=> b!6297116 (= e!3828697 (and tp!1753072 tp!1753073))))

(assert (=> b!6296080 (= tp!1752777 e!3828697)))

(declare-fun b!6297118 () Bool)

(declare-fun tp!1753076 () Bool)

(declare-fun tp!1753074 () Bool)

(assert (=> b!6297118 (= e!3828697 (and tp!1753076 tp!1753074))))

(assert (= (and b!6296080 ((_ is ElementMatch!16217) (regOne!32946 (regOne!32946 r!7292)))) b!6297115))

(assert (= (and b!6296080 ((_ is Concat!25062) (regOne!32946 (regOne!32946 r!7292)))) b!6297116))

(assert (= (and b!6296080 ((_ is Star!16217) (regOne!32946 (regOne!32946 r!7292)))) b!6297117))

(assert (= (and b!6296080 ((_ is Union!16217) (regOne!32946 (regOne!32946 r!7292)))) b!6297118))

(declare-fun b!6297119 () Bool)

(declare-fun e!3828698 () Bool)

(assert (=> b!6297119 (= e!3828698 tp_is_empty!41687)))

(declare-fun b!6297121 () Bool)

(declare-fun tp!1753080 () Bool)

(assert (=> b!6297121 (= e!3828698 tp!1753080)))

(declare-fun b!6297120 () Bool)

(declare-fun tp!1753077 () Bool)

(declare-fun tp!1753078 () Bool)

(assert (=> b!6297120 (= e!3828698 (and tp!1753077 tp!1753078))))

(assert (=> b!6296080 (= tp!1752778 e!3828698)))

(declare-fun b!6297122 () Bool)

(declare-fun tp!1753081 () Bool)

(declare-fun tp!1753079 () Bool)

(assert (=> b!6297122 (= e!3828698 (and tp!1753081 tp!1753079))))

(assert (= (and b!6296080 ((_ is ElementMatch!16217) (regTwo!32946 (regOne!32946 r!7292)))) b!6297119))

(assert (= (and b!6296080 ((_ is Concat!25062) (regTwo!32946 (regOne!32946 r!7292)))) b!6297120))

(assert (= (and b!6296080 ((_ is Star!16217) (regTwo!32946 (regOne!32946 r!7292)))) b!6297121))

(assert (= (and b!6296080 ((_ is Union!16217) (regTwo!32946 (regOne!32946 r!7292)))) b!6297122))

(declare-fun b!6297123 () Bool)

(declare-fun e!3828699 () Bool)

(assert (=> b!6297123 (= e!3828699 tp_is_empty!41687)))

(declare-fun b!6297125 () Bool)

(declare-fun tp!1753085 () Bool)

(assert (=> b!6297125 (= e!3828699 tp!1753085)))

(declare-fun b!6297124 () Bool)

(declare-fun tp!1753082 () Bool)

(declare-fun tp!1753083 () Bool)

(assert (=> b!6297124 (= e!3828699 (and tp!1753082 tp!1753083))))

(assert (=> b!6296081 (= tp!1752780 e!3828699)))

(declare-fun b!6297126 () Bool)

(declare-fun tp!1753086 () Bool)

(declare-fun tp!1753084 () Bool)

(assert (=> b!6297126 (= e!3828699 (and tp!1753086 tp!1753084))))

(assert (= (and b!6296081 ((_ is ElementMatch!16217) (reg!16546 (regOne!32946 r!7292)))) b!6297123))

(assert (= (and b!6296081 ((_ is Concat!25062) (reg!16546 (regOne!32946 r!7292)))) b!6297124))

(assert (= (and b!6296081 ((_ is Star!16217) (reg!16546 (regOne!32946 r!7292)))) b!6297125))

(assert (= (and b!6296081 ((_ is Union!16217) (reg!16546 (regOne!32946 r!7292)))) b!6297126))

(declare-fun b!6297127 () Bool)

(declare-fun e!3828700 () Bool)

(assert (=> b!6297127 (= e!3828700 tp_is_empty!41687)))

(declare-fun b!6297129 () Bool)

(declare-fun tp!1753090 () Bool)

(assert (=> b!6297129 (= e!3828700 tp!1753090)))

(declare-fun b!6297128 () Bool)

(declare-fun tp!1753087 () Bool)

(declare-fun tp!1753088 () Bool)

(assert (=> b!6297128 (= e!3828700 (and tp!1753087 tp!1753088))))

(assert (=> b!6296072 (= tp!1752767 e!3828700)))

(declare-fun b!6297130 () Bool)

(declare-fun tp!1753091 () Bool)

(declare-fun tp!1753089 () Bool)

(assert (=> b!6297130 (= e!3828700 (and tp!1753091 tp!1753089))))

(assert (= (and b!6296072 ((_ is ElementMatch!16217) (regOne!32946 (regOne!32947 r!7292)))) b!6297127))

(assert (= (and b!6296072 ((_ is Concat!25062) (regOne!32946 (regOne!32947 r!7292)))) b!6297128))

(assert (= (and b!6296072 ((_ is Star!16217) (regOne!32946 (regOne!32947 r!7292)))) b!6297129))

(assert (= (and b!6296072 ((_ is Union!16217) (regOne!32946 (regOne!32947 r!7292)))) b!6297130))

(declare-fun b!6297131 () Bool)

(declare-fun e!3828701 () Bool)

(assert (=> b!6297131 (= e!3828701 tp_is_empty!41687)))

(declare-fun b!6297133 () Bool)

(declare-fun tp!1753095 () Bool)

(assert (=> b!6297133 (= e!3828701 tp!1753095)))

(declare-fun b!6297132 () Bool)

(declare-fun tp!1753092 () Bool)

(declare-fun tp!1753093 () Bool)

(assert (=> b!6297132 (= e!3828701 (and tp!1753092 tp!1753093))))

(assert (=> b!6296072 (= tp!1752768 e!3828701)))

(declare-fun b!6297134 () Bool)

(declare-fun tp!1753096 () Bool)

(declare-fun tp!1753094 () Bool)

(assert (=> b!6297134 (= e!3828701 (and tp!1753096 tp!1753094))))

(assert (= (and b!6296072 ((_ is ElementMatch!16217) (regTwo!32946 (regOne!32947 r!7292)))) b!6297131))

(assert (= (and b!6296072 ((_ is Concat!25062) (regTwo!32946 (regOne!32947 r!7292)))) b!6297132))

(assert (= (and b!6296072 ((_ is Star!16217) (regTwo!32946 (regOne!32947 r!7292)))) b!6297133))

(assert (= (and b!6296072 ((_ is Union!16217) (regTwo!32946 (regOne!32947 r!7292)))) b!6297134))

(declare-fun b!6297135 () Bool)

(declare-fun e!3828702 () Bool)

(assert (=> b!6297135 (= e!3828702 tp_is_empty!41687)))

(declare-fun b!6297137 () Bool)

(declare-fun tp!1753100 () Bool)

(assert (=> b!6297137 (= e!3828702 tp!1753100)))

(declare-fun b!6297136 () Bool)

(declare-fun tp!1753097 () Bool)

(declare-fun tp!1753098 () Bool)

(assert (=> b!6297136 (= e!3828702 (and tp!1753097 tp!1753098))))

(assert (=> b!6296073 (= tp!1752770 e!3828702)))

(declare-fun b!6297138 () Bool)

(declare-fun tp!1753101 () Bool)

(declare-fun tp!1753099 () Bool)

(assert (=> b!6297138 (= e!3828702 (and tp!1753101 tp!1753099))))

(assert (= (and b!6296073 ((_ is ElementMatch!16217) (reg!16546 (regOne!32947 r!7292)))) b!6297135))

(assert (= (and b!6296073 ((_ is Concat!25062) (reg!16546 (regOne!32947 r!7292)))) b!6297136))

(assert (= (and b!6296073 ((_ is Star!16217) (reg!16546 (regOne!32947 r!7292)))) b!6297137))

(assert (= (and b!6296073 ((_ is Union!16217) (reg!16546 (regOne!32947 r!7292)))) b!6297138))

(declare-fun b!6297139 () Bool)

(declare-fun e!3828703 () Bool)

(assert (=> b!6297139 (= e!3828703 tp_is_empty!41687)))

(declare-fun b!6297141 () Bool)

(declare-fun tp!1753105 () Bool)

(assert (=> b!6297141 (= e!3828703 tp!1753105)))

(declare-fun b!6297140 () Bool)

(declare-fun tp!1753102 () Bool)

(declare-fun tp!1753103 () Bool)

(assert (=> b!6297140 (= e!3828703 (and tp!1753102 tp!1753103))))

(assert (=> b!6296050 (= tp!1752745 e!3828703)))

(declare-fun b!6297142 () Bool)

(declare-fun tp!1753106 () Bool)

(declare-fun tp!1753104 () Bool)

(assert (=> b!6297142 (= e!3828703 (and tp!1753106 tp!1753104))))

(assert (= (and b!6296050 ((_ is ElementMatch!16217) (h!71275 (exprs!6101 (h!71276 zl!343))))) b!6297139))

(assert (= (and b!6296050 ((_ is Concat!25062) (h!71275 (exprs!6101 (h!71276 zl!343))))) b!6297140))

(assert (= (and b!6296050 ((_ is Star!16217) (h!71275 (exprs!6101 (h!71276 zl!343))))) b!6297141))

(assert (= (and b!6296050 ((_ is Union!16217) (h!71275 (exprs!6101 (h!71276 zl!343))))) b!6297142))

(declare-fun b!6297143 () Bool)

(declare-fun e!3828704 () Bool)

(declare-fun tp!1753107 () Bool)

(declare-fun tp!1753108 () Bool)

(assert (=> b!6297143 (= e!3828704 (and tp!1753107 tp!1753108))))

(assert (=> b!6296050 (= tp!1752746 e!3828704)))

(assert (= (and b!6296050 ((_ is Cons!64827) (t!378517 (exprs!6101 (h!71276 zl!343))))) b!6297143))

(declare-fun b!6297144 () Bool)

(declare-fun e!3828705 () Bool)

(assert (=> b!6297144 (= e!3828705 tp_is_empty!41687)))

(declare-fun b!6297146 () Bool)

(declare-fun tp!1753112 () Bool)

(assert (=> b!6297146 (= e!3828705 tp!1753112)))

(declare-fun b!6297145 () Bool)

(declare-fun tp!1753109 () Bool)

(declare-fun tp!1753110 () Bool)

(assert (=> b!6297145 (= e!3828705 (and tp!1753109 tp!1753110))))

(assert (=> b!6296082 (= tp!1752781 e!3828705)))

(declare-fun b!6297147 () Bool)

(declare-fun tp!1753113 () Bool)

(declare-fun tp!1753111 () Bool)

(assert (=> b!6297147 (= e!3828705 (and tp!1753113 tp!1753111))))

(assert (= (and b!6296082 ((_ is ElementMatch!16217) (regOne!32947 (regOne!32946 r!7292)))) b!6297144))

(assert (= (and b!6296082 ((_ is Concat!25062) (regOne!32947 (regOne!32946 r!7292)))) b!6297145))

(assert (= (and b!6296082 ((_ is Star!16217) (regOne!32947 (regOne!32946 r!7292)))) b!6297146))

(assert (= (and b!6296082 ((_ is Union!16217) (regOne!32947 (regOne!32946 r!7292)))) b!6297147))

(declare-fun b!6297148 () Bool)

(declare-fun e!3828706 () Bool)

(assert (=> b!6297148 (= e!3828706 tp_is_empty!41687)))

(declare-fun b!6297150 () Bool)

(declare-fun tp!1753117 () Bool)

(assert (=> b!6297150 (= e!3828706 tp!1753117)))

(declare-fun b!6297149 () Bool)

(declare-fun tp!1753114 () Bool)

(declare-fun tp!1753115 () Bool)

(assert (=> b!6297149 (= e!3828706 (and tp!1753114 tp!1753115))))

(assert (=> b!6296082 (= tp!1752779 e!3828706)))

(declare-fun b!6297151 () Bool)

(declare-fun tp!1753118 () Bool)

(declare-fun tp!1753116 () Bool)

(assert (=> b!6297151 (= e!3828706 (and tp!1753118 tp!1753116))))

(assert (= (and b!6296082 ((_ is ElementMatch!16217) (regTwo!32947 (regOne!32946 r!7292)))) b!6297148))

(assert (= (and b!6296082 ((_ is Concat!25062) (regTwo!32947 (regOne!32946 r!7292)))) b!6297149))

(assert (= (and b!6296082 ((_ is Star!16217) (regTwo!32947 (regOne!32946 r!7292)))) b!6297150))

(assert (= (and b!6296082 ((_ is Union!16217) (regTwo!32947 (regOne!32946 r!7292)))) b!6297151))

(declare-fun b_lambda!239599 () Bool)

(assert (= b_lambda!239589 (or b!6295355 b_lambda!239599)))

(assert (=> d!1976196 d!1975884))

(declare-fun b_lambda!239601 () Bool)

(assert (= b_lambda!239595 (or d!1975862 b_lambda!239601)))

(declare-fun bs!1574996 () Bool)

(declare-fun d!1976286 () Bool)

(assert (= bs!1574996 (and d!1976286 d!1975862)))

(assert (=> bs!1574996 (= (dynLambda!25663 lambda!345970 (h!71275 (unfocusZipperList!1638 zl!343))) (validRegex!7953 (h!71275 (unfocusZipperList!1638 zl!343))))))

(declare-fun m!7116602 () Bool)

(assert (=> bs!1574996 m!7116602))

(assert (=> b!6296966 d!1976286))

(declare-fun b_lambda!239603 () Bool)

(assert (= b_lambda!239593 (or d!1975864 b_lambda!239603)))

(declare-fun bs!1574997 () Bool)

(declare-fun d!1976288 () Bool)

(assert (= bs!1574997 (and d!1976288 d!1975864)))

(assert (=> bs!1574997 (= (dynLambda!25663 lambda!345973 (h!71275 lt!2357831)) (validRegex!7953 (h!71275 lt!2357831)))))

(declare-fun m!7116604 () Bool)

(assert (=> bs!1574997 m!7116604))

(assert (=> b!6296915 d!1976288))

(declare-fun b_lambda!239605 () Bool)

(assert (= b_lambda!239587 (or d!1975832 b_lambda!239605)))

(declare-fun bs!1574998 () Bool)

(declare-fun d!1976290 () Bool)

(assert (= bs!1574998 (and d!1976290 d!1975832)))

(assert (=> bs!1574998 (= (dynLambda!25663 lambda!345961 (h!71275 (exprs!6101 (h!71276 zl!343)))) (validRegex!7953 (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(declare-fun m!7116606 () Bool)

(assert (=> bs!1574998 m!7116606))

(assert (=> b!6296818 d!1976290))

(declare-fun b_lambda!239607 () Bool)

(assert (= b_lambda!239585 (or d!1975868 b_lambda!239607)))

(declare-fun bs!1574999 () Bool)

(declare-fun d!1976292 () Bool)

(assert (= bs!1574999 (and d!1976292 d!1975868)))

(assert (=> bs!1574999 (= (dynLambda!25663 lambda!345975 (h!71275 (exprs!6101 setElem!42856))) (validRegex!7953 (h!71275 (exprs!6101 setElem!42856))))))

(declare-fun m!7116608 () Bool)

(assert (=> bs!1574999 m!7116608))

(assert (=> b!6296796 d!1976292))

(declare-fun b_lambda!239609 () Bool)

(assert (= b_lambda!239597 (or d!1975764 b_lambda!239609)))

(declare-fun bs!1575000 () Bool)

(declare-fun d!1976294 () Bool)

(assert (= bs!1575000 (and d!1976294 d!1975764)))

(assert (=> bs!1575000 (= (dynLambda!25663 lambda!345929 (h!71275 (exprs!6101 lt!2357742))) (validRegex!7953 (h!71275 (exprs!6101 lt!2357742))))))

(declare-fun m!7116610 () Bool)

(assert (=> bs!1575000 m!7116610))

(assert (=> b!6297012 d!1976294))

(declare-fun b_lambda!239611 () Bool)

(assert (= b_lambda!239591 (or d!1975866 b_lambda!239611)))

(declare-fun bs!1575001 () Bool)

(declare-fun d!1976296 () Bool)

(assert (= bs!1575001 (and d!1976296 d!1975866)))

(assert (=> bs!1575001 (= (dynLambda!25663 lambda!345974 (h!71275 (exprs!6101 (h!71276 zl!343)))) (validRegex!7953 (h!71275 (exprs!6101 (h!71276 zl!343)))))))

(assert (=> bs!1575001 m!7116606))

(assert (=> b!6296837 d!1976296))

(check-sat (not b!6296754) (not b!6297087) (not b!6297129) (not b!6296703) (not b!6296410) (not b!6296888) (not b!6297099) (not b!6297056) (not bm!533567) (not bm!533570) (not b!6296848) (not b!6297130) (not b!6297104) (not bm!533596) (not b!6297085) (not b!6296969) (not b!6296936) (not b!6296839) (not bm!533576) (not b!6297140) (not b!6296774) (not b!6296847) (not b!6297109) (not bm!533585) (not b!6296707) (not setNonEmpty!42869) (not b_lambda!239599) (not b!6296752) (not bs!1575000) (not bm!533589) (not b!6296824) (not b!6297017) (not b!6297076) (not b!6296825) (not b!6297055) (not b!6296486) (not b!6297072) (not bm!533598) (not b!6297068) (not d!1976238) (not b!6296479) (not d!1976220) (not b!6296850) (not b!6296842) (not b!6296749) (not b!6296801) (not bm!533555) (not b!6297146) (not d!1976194) (not d!1976272) (not b!6296907) (not d!1976234) (not b!6297077) (not bm!533579) (not b!6296995) (not setNonEmpty!42870) (not b!6297047) (not bm!533587) (not b!6296932) (not b!6297134) (not b!6297013) (not d!1976034) (not d!1976236) (not d!1976150) (not b_lambda!239601) (not bs!1574998) (not b!6296971) (not b!6296929) (not bm!533568) (not b!6297063) (not b!6296828) (not d!1976212) (not b!6296897) (not d!1976248) (not bs!1574997) (not b!6297133) (not b!6297124) (not bm!533559) (not b!6296699) (not bm!533539) (not b!6296912) (not b!6297141) (not b!6297051) (not b!6296779) (not b!6297004) (not bm!533551) (not b!6297120) (not b!6296908) tp_is_empty!41687 (not b!6296594) (not b!6296763) (not b_lambda!239609) (not b_lambda!239607) (not b!6296777) (not b!6296442) (not b!6297136) (not bm!533571) (not b!6297080) (not b!6296836) (not b!6296940) (not d!1976152) (not b!6296896) (not bm!533573) (not d!1976176) (not b_lambda!239611) (not b!6296838) (not b!6297149) (not d!1976198) (not b!6296568) (not b!6296927) (not bm!533590) (not b!6296914) (not b!6296947) (not b!6296390) (not b!6297038) (not b!6296746) (not bm!533543) (not b!6297064) (not b!6297111) (not d!1975992) (not b!6297079) (not b!6296845) (not b!6297106) (not b!6296942) (not d!1976130) (not d!1976254) (not b!6296904) (not bs!1574996) (not b!6297150) (not bs!1574999) (not b!6296843) (not d!1976258) (not b_lambda!239605) (not bm!533508) (not bm!533507) (not d!1976080) (not b!6297138) (not d!1976196) (not b!6297151) (not b!6296831) (not bm!533540) (not b!6296939) (not b!6296421) (not bm!533602) (not bm!533574) (not b!6297067) (not b!6296700) (not b!6297075) (not bm!533595) (not b!6296899) (not bm!533500) (not b!6296900) (not b!6297091) (not d!1976132) (not d!1976122) (not b!6297142) (not bm!533558) (not b!6297065) (not b!6296821) (not bm!533561) (not d!1975994) (not b!6297092) (not b!6296753) (not b!6296903) (not bm!533580) (not d!1976074) (not b!6297062) (not b!6296428) (not b!6297117) (not d!1976252) (not d!1976160) (not d!1976062) (not b!6296475) (not d!1976188) (not bm!533592) (not b!6297100) (not bm!533499) (not b!6296841) (not b!6297041) (not bm!533604) (not bm!533542) (not d!1975986) (not b!6296854) (not b!6296747) (not b!6297048) (not b!6297108) (not bm!533581) (not b!6296478) (not b!6296706) (not b!6296591) (not b!6297118) (not d!1976114) (not b!6297128) (not b!6297110) (not b!6296967) (not bm!533556) (not b!6297054) (not b!6296849) (not b!6297145) (not b!6297071) (not b!6297083) (not bm!533545) (not b_lambda!239603) (not bm!533584) (not b!6297101) (not d!1976208) (not bm!533582) (not b!6296755) (not bm!533549) (not b!6296920) (not b!6296887) (not d!1976136) (not bm!533601) (not b!6297060) (not b!6296696) (not b!6297073) (not b!6296895) (not b!6297037) (not b!6297059) (not b!6296909) (not bm!533504) (not bm!533531) (not b!6297137) (not bm!533586) (not b!6296773) (not b!6297147) (not b!6297125) (not d!1976162) (not b!6297050) (not b!6297042) (not d!1976232) (not b!6297096) (not b!6296819) (not bm!533535) (not b!6296976) (not b!6297116) (not d!1976076) (not b!6297039) (not b!6296933) (not b!6297143) (not d!1976178) (not b!6296958) (not b!6297028) (not b!6296974) (not bm!533548) (not b!6297058) (not b!6296784) (not b!6297046) (not bm!533510) (not b!6296955) (not d!1976214) (not b!6296797) (not b!6296409) (not b!6297121) (not d!1976250) (not b!6296595) (not b!6297093) (not d!1976206) (not b!6297097) (not b!6296584) (not b!6297069) (not b!6297088) (not b!6297112) (not b!6296911) (not bm!533554) (not b!6297081) (not b!6297103) (not b!6297132) (not b!6297052) (not b!6297044) (not b!6296471) (not d!1976154) (not d!1976118) (not b!6297113) (not b!6297122) (not b!6297089) (not bm!533513) (not b!6296810) (not bm!533534) (not b!6297105) (not b!6296832) (not bm!533593) (not b!6297095) (not b!6296482) (not b!6296943) (not b!6296916) (not b!6297043) (not b!6296587) (not bm!533569) (not b!6296485) (not d!1976240) (not bs!1575001) (not b!6297126) (not b!6297084) (not bm!533505) (not b_lambda!239555) (not b!6296588) (not d!1976036) (not b!6296979) (not b!6297114))
(check-sat)
