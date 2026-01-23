; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!578582 () Bool)

(assert start!578582)

(declare-fun b!5557710 () Bool)

(assert (=> b!5557710 true))

(assert (=> b!5557710 true))

(declare-fun lambda!298272 () Int)

(declare-fun lambda!298271 () Int)

(assert (=> b!5557710 (not (= lambda!298272 lambda!298271))))

(assert (=> b!5557710 true))

(assert (=> b!5557710 true))

(declare-fun b!5557721 () Bool)

(assert (=> b!5557721 true))

(declare-fun b!5557705 () Bool)

(declare-fun res!2362261 () Bool)

(declare-fun e!3432231 () Bool)

(assert (=> b!5557705 (=> res!2362261 e!3432231)))

(declare-datatypes ((C!31360 0))(
  ( (C!31361 (val!25382 Int)) )
))
(declare-datatypes ((Regex!15545 0))(
  ( (ElementMatch!15545 (c!973037 C!31360)) (Concat!24390 (regOne!31602 Regex!15545) (regTwo!31602 Regex!15545)) (EmptyExpr!15545) (Star!15545 (reg!15874 Regex!15545)) (EmptyLang!15545) (Union!15545 (regOne!31603 Regex!15545) (regTwo!31603 Regex!15545)) )
))
(declare-datatypes ((List!62934 0))(
  ( (Nil!62810) (Cons!62810 (h!69258 Regex!15545) (t!376201 List!62934)) )
))
(declare-datatypes ((Context!9858 0))(
  ( (Context!9859 (exprs!5429 List!62934)) )
))
(declare-datatypes ((List!62935 0))(
  ( (Nil!62811) (Cons!62811 (h!69259 Context!9858) (t!376202 List!62935)) )
))
(declare-fun zl!343 () List!62935)

(declare-fun isEmpty!34608 (List!62935) Bool)

(assert (=> b!5557705 (= res!2362261 (not (isEmpty!34608 (t!376202 zl!343))))))

(declare-fun b!5557706 () Bool)

(declare-fun res!2362259 () Bool)

(assert (=> b!5557706 (=> res!2362259 e!3432231)))

(declare-fun r!7292 () Regex!15545)

(declare-fun generalisedUnion!1408 (List!62934) Regex!15545)

(declare-fun unfocusZipperList!973 (List!62935) List!62934)

(assert (=> b!5557706 (= res!2362259 (not (= r!7292 (generalisedUnion!1408 (unfocusZipperList!973 zl!343)))))))

(declare-fun b!5557708 () Bool)

(declare-datatypes ((Unit!155552 0))(
  ( (Unit!155553) )
))
(declare-fun e!3432235 () Unit!155552)

(declare-fun Unit!155554 () Unit!155552)

(assert (=> b!5557708 (= e!3432235 Unit!155554)))

(declare-datatypes ((List!62936 0))(
  ( (Nil!62812) (Cons!62812 (h!69260 C!31360) (t!376203 List!62936)) )
))
(declare-fun s!2326 () List!62936)

(declare-fun lt!2251287 () Unit!155552)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2251280 () (InoxSet Context!9858))

(declare-fun lt!2251279 () (InoxSet Context!9858))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!570 ((InoxSet Context!9858) (InoxSet Context!9858) List!62936) Unit!155552)

(assert (=> b!5557708 (= lt!2251287 (lemmaZipperConcatMatchesSameAsBothZippers!570 lt!2251280 lt!2251279 (t!376203 s!2326)))))

(declare-fun res!2362254 () Bool)

(declare-fun matchZipper!1683 ((InoxSet Context!9858) List!62936) Bool)

(assert (=> b!5557708 (= res!2362254 (matchZipper!1683 lt!2251280 (t!376203 s!2326)))))

(declare-fun e!3432238 () Bool)

(assert (=> b!5557708 (=> res!2362254 e!3432238)))

(assert (=> b!5557708 (= (matchZipper!1683 ((_ map or) lt!2251280 lt!2251279) (t!376203 s!2326)) e!3432238)))

(declare-fun b!5557709 () Bool)

(declare-fun res!2362252 () Bool)

(declare-fun e!3432237 () Bool)

(assert (=> b!5557709 (=> res!2362252 e!3432237)))

(declare-fun isEmpty!34609 (List!62934) Bool)

(assert (=> b!5557709 (= res!2362252 (isEmpty!34609 (t!376201 (exprs!5429 (h!69259 zl!343)))))))

(assert (=> b!5557710 (= e!3432231 e!3432237)))

(declare-fun res!2362260 () Bool)

(assert (=> b!5557710 (=> res!2362260 e!3432237)))

(declare-fun lt!2251286 () Bool)

(declare-fun lt!2251285 () Bool)

(get-info :version)

(assert (=> b!5557710 (= res!2362260 (or (not (= lt!2251286 lt!2251285)) ((_ is Nil!62812) s!2326)))))

(declare-fun Exists!2645 (Int) Bool)

(assert (=> b!5557710 (= (Exists!2645 lambda!298271) (Exists!2645 lambda!298272))))

(declare-fun lt!2251284 () Unit!155552)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1274 (Regex!15545 Regex!15545 List!62936) Unit!155552)

(assert (=> b!5557710 (= lt!2251284 (lemmaExistCutMatchRandMatchRSpecEquivalent!1274 (regOne!31602 r!7292) (regTwo!31602 r!7292) s!2326))))

(assert (=> b!5557710 (= lt!2251285 (Exists!2645 lambda!298271))))

(declare-datatypes ((tuple2!65284 0))(
  ( (tuple2!65285 (_1!35945 List!62936) (_2!35945 List!62936)) )
))
(declare-datatypes ((Option!15554 0))(
  ( (None!15553) (Some!15553 (v!51592 tuple2!65284)) )
))
(declare-fun isDefined!12257 (Option!15554) Bool)

(declare-fun findConcatSeparation!1968 (Regex!15545 Regex!15545 List!62936 List!62936 List!62936) Option!15554)

(assert (=> b!5557710 (= lt!2251285 (isDefined!12257 (findConcatSeparation!1968 (regOne!31602 r!7292) (regTwo!31602 r!7292) Nil!62812 s!2326 s!2326)))))

(declare-fun lt!2251282 () Unit!155552)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1732 (Regex!15545 Regex!15545 List!62936) Unit!155552)

(assert (=> b!5557710 (= lt!2251282 (lemmaFindConcatSeparationEquivalentToExists!1732 (regOne!31602 r!7292) (regTwo!31602 r!7292) s!2326))))

(declare-fun b!5557711 () Bool)

(declare-fun e!3432229 () Bool)

(declare-fun tp!1533340 () Bool)

(declare-fun tp!1533342 () Bool)

(assert (=> b!5557711 (= e!3432229 (and tp!1533340 tp!1533342))))

(declare-fun b!5557712 () Bool)

(declare-fun res!2362255 () Bool)

(assert (=> b!5557712 (=> res!2362255 e!3432231)))

(declare-fun generalisedConcat!1160 (List!62934) Regex!15545)

(assert (=> b!5557712 (= res!2362255 (not (= r!7292 (generalisedConcat!1160 (exprs!5429 (h!69259 zl!343))))))))

(declare-fun b!5557713 () Bool)

(declare-fun res!2362256 () Bool)

(assert (=> b!5557713 (=> res!2362256 e!3432231)))

(assert (=> b!5557713 (= res!2362256 (or ((_ is EmptyExpr!15545) r!7292) ((_ is EmptyLang!15545) r!7292) ((_ is ElementMatch!15545) r!7292) ((_ is Union!15545) r!7292) (not ((_ is Concat!24390) r!7292))))))

(declare-fun b!5557714 () Bool)

(declare-fun e!3432232 () Bool)

(declare-fun tp_is_empty!40343 () Bool)

(declare-fun tp!1533344 () Bool)

(assert (=> b!5557714 (= e!3432232 (and tp_is_empty!40343 tp!1533344))))

(declare-fun b!5557715 () Bool)

(declare-fun res!2362262 () Bool)

(declare-fun e!3432233 () Bool)

(assert (=> b!5557715 (=> (not res!2362262) (not e!3432233))))

(declare-fun z!1189 () (InoxSet Context!9858))

(declare-fun toList!9329 ((InoxSet Context!9858)) List!62935)

(assert (=> b!5557715 (= res!2362262 (= (toList!9329 z!1189) zl!343))))

(declare-fun res!2362251 () Bool)

(assert (=> start!578582 (=> (not res!2362251) (not e!3432233))))

(declare-fun validRegex!7281 (Regex!15545) Bool)

(assert (=> start!578582 (= res!2362251 (validRegex!7281 r!7292))))

(assert (=> start!578582 e!3432233))

(assert (=> start!578582 e!3432229))

(declare-fun condSetEmpty!37001 () Bool)

(assert (=> start!578582 (= condSetEmpty!37001 (= z!1189 ((as const (Array Context!9858 Bool)) false)))))

(declare-fun setRes!37001 () Bool)

(assert (=> start!578582 setRes!37001))

(declare-fun e!3432230 () Bool)

(assert (=> start!578582 e!3432230))

(assert (=> start!578582 e!3432232))

(declare-fun b!5557707 () Bool)

(declare-fun res!2362253 () Bool)

(assert (=> b!5557707 (=> (not res!2362253) (not e!3432233))))

(declare-fun unfocusZipper!1287 (List!62935) Regex!15545)

(assert (=> b!5557707 (= res!2362253 (= r!7292 (unfocusZipper!1287 zl!343)))))

(declare-fun b!5557716 () Bool)

(assert (=> b!5557716 (= e!3432229 tp_is_empty!40343)))

(declare-fun b!5557717 () Bool)

(declare-fun tp!1533339 () Bool)

(assert (=> b!5557717 (= e!3432229 tp!1533339)))

(declare-fun tp!1533338 () Bool)

(declare-fun e!3432236 () Bool)

(declare-fun b!5557718 () Bool)

(declare-fun inv!82109 (Context!9858) Bool)

(assert (=> b!5557718 (= e!3432230 (and (inv!82109 (h!69259 zl!343)) e!3432236 tp!1533338))))

(declare-fun b!5557719 () Bool)

(assert (=> b!5557719 (= e!3432238 (matchZipper!1683 lt!2251279 (t!376203 s!2326)))))

(declare-fun b!5557720 () Bool)

(assert (=> b!5557720 (= e!3432233 (not e!3432231))))

(declare-fun res!2362257 () Bool)

(assert (=> b!5557720 (=> res!2362257 e!3432231)))

(assert (=> b!5557720 (= res!2362257 (not ((_ is Cons!62811) zl!343)))))

(declare-fun matchRSpec!2648 (Regex!15545 List!62936) Bool)

(assert (=> b!5557720 (= lt!2251286 (matchRSpec!2648 r!7292 s!2326))))

(declare-fun matchR!7730 (Regex!15545 List!62936) Bool)

(assert (=> b!5557720 (= lt!2251286 (matchR!7730 r!7292 s!2326))))

(declare-fun lt!2251278 () Unit!155552)

(declare-fun mainMatchTheorem!2648 (Regex!15545 List!62936) Unit!155552)

(assert (=> b!5557720 (= lt!2251278 (mainMatchTheorem!2648 r!7292 s!2326))))

(declare-fun lt!2251283 () Context!9858)

(assert (=> b!5557721 (= e!3432237 (or (not ((_ is ElementMatch!15545) (regOne!31602 r!7292))) (not (= (c!973037 (regOne!31602 r!7292)) (h!69260 s!2326))) (= lt!2251280 (store ((as const (Array Context!9858 Bool)) false) lt!2251283 true))))))

(declare-fun lt!2251276 () Unit!155552)

(assert (=> b!5557721 (= lt!2251276 e!3432235)))

(declare-fun c!973036 () Bool)

(declare-fun nullable!5577 (Regex!15545) Bool)

(assert (=> b!5557721 (= c!973036 (nullable!5577 (h!69258 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun lambda!298273 () Int)

(declare-fun flatMap!1158 ((InoxSet Context!9858) Int) (InoxSet Context!9858))

(declare-fun derivationStepZipperUp!813 (Context!9858 C!31360) (InoxSet Context!9858))

(assert (=> b!5557721 (= (flatMap!1158 z!1189 lambda!298273) (derivationStepZipperUp!813 (h!69259 zl!343) (h!69260 s!2326)))))

(declare-fun lt!2251277 () Unit!155552)

(declare-fun lemmaFlatMapOnSingletonSet!690 ((InoxSet Context!9858) Context!9858 Int) Unit!155552)

(assert (=> b!5557721 (= lt!2251277 (lemmaFlatMapOnSingletonSet!690 z!1189 (h!69259 zl!343) lambda!298273))))

(assert (=> b!5557721 (= lt!2251279 (derivationStepZipperUp!813 lt!2251283 (h!69260 s!2326)))))

(declare-fun derivationStepZipperDown!887 (Regex!15545 Context!9858 C!31360) (InoxSet Context!9858))

(assert (=> b!5557721 (= lt!2251280 (derivationStepZipperDown!887 (h!69258 (exprs!5429 (h!69259 zl!343))) lt!2251283 (h!69260 s!2326)))))

(assert (=> b!5557721 (= lt!2251283 (Context!9859 (t!376201 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun lt!2251281 () (InoxSet Context!9858))

(assert (=> b!5557721 (= lt!2251281 (derivationStepZipperUp!813 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343))))) (h!69260 s!2326)))))

(declare-fun b!5557722 () Bool)

(declare-fun res!2362258 () Bool)

(assert (=> b!5557722 (=> res!2362258 e!3432231)))

(assert (=> b!5557722 (= res!2362258 (not ((_ is Cons!62810) (exprs!5429 (h!69259 zl!343)))))))

(declare-fun b!5557723 () Bool)

(declare-fun tp!1533341 () Bool)

(declare-fun tp!1533346 () Bool)

(assert (=> b!5557723 (= e!3432229 (and tp!1533341 tp!1533346))))

(declare-fun setElem!37001 () Context!9858)

(declare-fun tp!1533343 () Bool)

(declare-fun e!3432234 () Bool)

(declare-fun setNonEmpty!37001 () Bool)

(assert (=> setNonEmpty!37001 (= setRes!37001 (and tp!1533343 (inv!82109 setElem!37001) e!3432234))))

(declare-fun setRest!37001 () (InoxSet Context!9858))

(assert (=> setNonEmpty!37001 (= z!1189 ((_ map or) (store ((as const (Array Context!9858 Bool)) false) setElem!37001 true) setRest!37001))))

(declare-fun setIsEmpty!37001 () Bool)

(assert (=> setIsEmpty!37001 setRes!37001))

(declare-fun b!5557724 () Bool)

(declare-fun tp!1533345 () Bool)

(assert (=> b!5557724 (= e!3432236 tp!1533345)))

(declare-fun b!5557725 () Bool)

(declare-fun tp!1533347 () Bool)

(assert (=> b!5557725 (= e!3432234 tp!1533347)))

(declare-fun b!5557726 () Bool)

(declare-fun Unit!155555 () Unit!155552)

(assert (=> b!5557726 (= e!3432235 Unit!155555)))

(assert (= (and start!578582 res!2362251) b!5557715))

(assert (= (and b!5557715 res!2362262) b!5557707))

(assert (= (and b!5557707 res!2362253) b!5557720))

(assert (= (and b!5557720 (not res!2362257)) b!5557705))

(assert (= (and b!5557705 (not res!2362261)) b!5557712))

(assert (= (and b!5557712 (not res!2362255)) b!5557722))

(assert (= (and b!5557722 (not res!2362258)) b!5557706))

(assert (= (and b!5557706 (not res!2362259)) b!5557713))

(assert (= (and b!5557713 (not res!2362256)) b!5557710))

(assert (= (and b!5557710 (not res!2362260)) b!5557709))

(assert (= (and b!5557709 (not res!2362252)) b!5557721))

(assert (= (and b!5557721 c!973036) b!5557708))

(assert (= (and b!5557721 (not c!973036)) b!5557726))

(assert (= (and b!5557708 (not res!2362254)) b!5557719))

(assert (= (and start!578582 ((_ is ElementMatch!15545) r!7292)) b!5557716))

(assert (= (and start!578582 ((_ is Concat!24390) r!7292)) b!5557711))

(assert (= (and start!578582 ((_ is Star!15545) r!7292)) b!5557717))

(assert (= (and start!578582 ((_ is Union!15545) r!7292)) b!5557723))

(assert (= (and start!578582 condSetEmpty!37001) setIsEmpty!37001))

(assert (= (and start!578582 (not condSetEmpty!37001)) setNonEmpty!37001))

(assert (= setNonEmpty!37001 b!5557725))

(assert (= b!5557718 b!5557724))

(assert (= (and start!578582 ((_ is Cons!62811) zl!343)) b!5557718))

(assert (= (and start!578582 ((_ is Cons!62812) s!2326)) b!5557714))

(declare-fun m!6549198 () Bool)

(assert (=> b!5557705 m!6549198))

(declare-fun m!6549200 () Bool)

(assert (=> b!5557715 m!6549200))

(declare-fun m!6549202 () Bool)

(assert (=> b!5557708 m!6549202))

(declare-fun m!6549204 () Bool)

(assert (=> b!5557708 m!6549204))

(declare-fun m!6549206 () Bool)

(assert (=> b!5557708 m!6549206))

(declare-fun m!6549208 () Bool)

(assert (=> b!5557706 m!6549208))

(assert (=> b!5557706 m!6549208))

(declare-fun m!6549210 () Bool)

(assert (=> b!5557706 m!6549210))

(declare-fun m!6549212 () Bool)

(assert (=> b!5557721 m!6549212))

(declare-fun m!6549214 () Bool)

(assert (=> b!5557721 m!6549214))

(declare-fun m!6549216 () Bool)

(assert (=> b!5557721 m!6549216))

(declare-fun m!6549218 () Bool)

(assert (=> b!5557721 m!6549218))

(declare-fun m!6549220 () Bool)

(assert (=> b!5557721 m!6549220))

(declare-fun m!6549222 () Bool)

(assert (=> b!5557721 m!6549222))

(declare-fun m!6549224 () Bool)

(assert (=> b!5557721 m!6549224))

(declare-fun m!6549226 () Bool)

(assert (=> b!5557721 m!6549226))

(declare-fun m!6549228 () Bool)

(assert (=> b!5557707 m!6549228))

(declare-fun m!6549230 () Bool)

(assert (=> b!5557709 m!6549230))

(declare-fun m!6549232 () Bool)

(assert (=> b!5557712 m!6549232))

(declare-fun m!6549234 () Bool)

(assert (=> setNonEmpty!37001 m!6549234))

(declare-fun m!6549236 () Bool)

(assert (=> start!578582 m!6549236))

(declare-fun m!6549238 () Bool)

(assert (=> b!5557710 m!6549238))

(declare-fun m!6549240 () Bool)

(assert (=> b!5557710 m!6549240))

(declare-fun m!6549242 () Bool)

(assert (=> b!5557710 m!6549242))

(declare-fun m!6549244 () Bool)

(assert (=> b!5557710 m!6549244))

(declare-fun m!6549246 () Bool)

(assert (=> b!5557710 m!6549246))

(assert (=> b!5557710 m!6549244))

(assert (=> b!5557710 m!6549238))

(declare-fun m!6549248 () Bool)

(assert (=> b!5557710 m!6549248))

(declare-fun m!6549250 () Bool)

(assert (=> b!5557719 m!6549250))

(declare-fun m!6549252 () Bool)

(assert (=> b!5557720 m!6549252))

(declare-fun m!6549254 () Bool)

(assert (=> b!5557720 m!6549254))

(declare-fun m!6549256 () Bool)

(assert (=> b!5557720 m!6549256))

(declare-fun m!6549258 () Bool)

(assert (=> b!5557718 m!6549258))

(check-sat (not b!5557717) tp_is_empty!40343 (not b!5557711) (not b!5557724) (not b!5557708) (not b!5557715) (not b!5557719) (not b!5557714) (not b!5557712) (not b!5557725) (not b!5557707) (not b!5557705) (not setNonEmpty!37001) (not b!5557721) (not b!5557720) (not b!5557718) (not b!5557723) (not b!5557709) (not start!578582) (not b!5557710) (not b!5557706))
(check-sat)
(get-model)

(declare-fun d!1759038 () Bool)

(declare-fun e!3432274 () Bool)

(assert (=> d!1759038 e!3432274))

(declare-fun res!2362275 () Bool)

(assert (=> d!1759038 (=> (not res!2362275) (not e!3432274))))

(declare-fun lt!2251296 () List!62935)

(declare-fun noDuplicate!1528 (List!62935) Bool)

(assert (=> d!1759038 (= res!2362275 (noDuplicate!1528 lt!2251296))))

(declare-fun choose!42170 ((InoxSet Context!9858)) List!62935)

(assert (=> d!1759038 (= lt!2251296 (choose!42170 z!1189))))

(assert (=> d!1759038 (= (toList!9329 z!1189) lt!2251296)))

(declare-fun b!5557791 () Bool)

(declare-fun content!11314 (List!62935) (InoxSet Context!9858))

(assert (=> b!5557791 (= e!3432274 (= (content!11314 lt!2251296) z!1189))))

(assert (= (and d!1759038 res!2362275) b!5557791))

(declare-fun m!6549302 () Bool)

(assert (=> d!1759038 m!6549302))

(declare-fun m!6549304 () Bool)

(assert (=> d!1759038 m!6549304))

(declare-fun m!6549306 () Bool)

(assert (=> b!5557791 m!6549306))

(assert (=> b!5557715 d!1759038))

(declare-fun d!1759040 () Bool)

(declare-fun lambda!298279 () Int)

(declare-fun forall!14717 (List!62934 Int) Bool)

(assert (=> d!1759040 (= (inv!82109 setElem!37001) (forall!14717 (exprs!5429 setElem!37001) lambda!298279))))

(declare-fun bs!1287012 () Bool)

(assert (= bs!1287012 d!1759040))

(declare-fun m!6549322 () Bool)

(assert (=> bs!1287012 m!6549322))

(assert (=> setNonEmpty!37001 d!1759040))

(declare-fun bs!1287016 () Bool)

(declare-fun d!1759046 () Bool)

(assert (= bs!1287016 (and d!1759046 d!1759040)))

(declare-fun lambda!298290 () Int)

(assert (=> bs!1287016 (= lambda!298290 lambda!298279)))

(declare-fun b!5557879 () Bool)

(declare-fun e!3432327 () Regex!15545)

(assert (=> b!5557879 (= e!3432327 (Union!15545 (h!69258 (unfocusZipperList!973 zl!343)) (generalisedUnion!1408 (t!376201 (unfocusZipperList!973 zl!343)))))))

(declare-fun b!5557880 () Bool)

(declare-fun e!3432330 () Bool)

(declare-fun e!3432329 () Bool)

(assert (=> b!5557880 (= e!3432330 e!3432329)))

(declare-fun c!973097 () Bool)

(declare-fun tail!10968 (List!62934) List!62934)

(assert (=> b!5557880 (= c!973097 (isEmpty!34609 (tail!10968 (unfocusZipperList!973 zl!343))))))

(declare-fun b!5557881 () Bool)

(declare-fun lt!2251310 () Regex!15545)

(declare-fun isUnion!548 (Regex!15545) Bool)

(assert (=> b!5557881 (= e!3432329 (isUnion!548 lt!2251310))))

(declare-fun b!5557882 () Bool)

(declare-fun head!11873 (List!62934) Regex!15545)

(assert (=> b!5557882 (= e!3432329 (= lt!2251310 (head!11873 (unfocusZipperList!973 zl!343))))))

(declare-fun b!5557884 () Bool)

(declare-fun e!3432331 () Regex!15545)

(assert (=> b!5557884 (= e!3432331 (h!69258 (unfocusZipperList!973 zl!343)))))

(declare-fun b!5557885 () Bool)

(declare-fun e!3432326 () Bool)

(assert (=> b!5557885 (= e!3432326 e!3432330)))

(declare-fun c!973098 () Bool)

(assert (=> b!5557885 (= c!973098 (isEmpty!34609 (unfocusZipperList!973 zl!343)))))

(declare-fun b!5557886 () Bool)

(declare-fun isEmptyLang!1118 (Regex!15545) Bool)

(assert (=> b!5557886 (= e!3432330 (isEmptyLang!1118 lt!2251310))))

(declare-fun b!5557883 () Bool)

(assert (=> b!5557883 (= e!3432327 EmptyLang!15545)))

(assert (=> d!1759046 e!3432326))

(declare-fun res!2362291 () Bool)

(assert (=> d!1759046 (=> (not res!2362291) (not e!3432326))))

(assert (=> d!1759046 (= res!2362291 (validRegex!7281 lt!2251310))))

(assert (=> d!1759046 (= lt!2251310 e!3432331)))

(declare-fun c!973100 () Bool)

(declare-fun e!3432328 () Bool)

(assert (=> d!1759046 (= c!973100 e!3432328)))

(declare-fun res!2362292 () Bool)

(assert (=> d!1759046 (=> (not res!2362292) (not e!3432328))))

(assert (=> d!1759046 (= res!2362292 ((_ is Cons!62810) (unfocusZipperList!973 zl!343)))))

(assert (=> d!1759046 (forall!14717 (unfocusZipperList!973 zl!343) lambda!298290)))

(assert (=> d!1759046 (= (generalisedUnion!1408 (unfocusZipperList!973 zl!343)) lt!2251310)))

(declare-fun b!5557887 () Bool)

(assert (=> b!5557887 (= e!3432328 (isEmpty!34609 (t!376201 (unfocusZipperList!973 zl!343))))))

(declare-fun b!5557888 () Bool)

(assert (=> b!5557888 (= e!3432331 e!3432327)))

(declare-fun c!973099 () Bool)

(assert (=> b!5557888 (= c!973099 ((_ is Cons!62810) (unfocusZipperList!973 zl!343)))))

(assert (= (and d!1759046 res!2362292) b!5557887))

(assert (= (and d!1759046 c!973100) b!5557884))

(assert (= (and d!1759046 (not c!973100)) b!5557888))

(assert (= (and b!5557888 c!973099) b!5557879))

(assert (= (and b!5557888 (not c!973099)) b!5557883))

(assert (= (and d!1759046 res!2362291) b!5557885))

(assert (= (and b!5557885 c!973098) b!5557886))

(assert (= (and b!5557885 (not c!973098)) b!5557880))

(assert (= (and b!5557880 c!973097) b!5557882))

(assert (= (and b!5557880 (not c!973097)) b!5557881))

(assert (=> b!5557885 m!6549208))

(declare-fun m!6549348 () Bool)

(assert (=> b!5557885 m!6549348))

(declare-fun m!6549350 () Bool)

(assert (=> b!5557881 m!6549350))

(assert (=> b!5557880 m!6549208))

(declare-fun m!6549352 () Bool)

(assert (=> b!5557880 m!6549352))

(assert (=> b!5557880 m!6549352))

(declare-fun m!6549354 () Bool)

(assert (=> b!5557880 m!6549354))

(declare-fun m!6549356 () Bool)

(assert (=> b!5557887 m!6549356))

(declare-fun m!6549358 () Bool)

(assert (=> d!1759046 m!6549358))

(assert (=> d!1759046 m!6549208))

(declare-fun m!6549360 () Bool)

(assert (=> d!1759046 m!6549360))

(declare-fun m!6549362 () Bool)

(assert (=> b!5557886 m!6549362))

(assert (=> b!5557882 m!6549208))

(declare-fun m!6549364 () Bool)

(assert (=> b!5557882 m!6549364))

(declare-fun m!6549366 () Bool)

(assert (=> b!5557879 m!6549366))

(assert (=> b!5557706 d!1759046))

(declare-fun bs!1287025 () Bool)

(declare-fun d!1759052 () Bool)

(assert (= bs!1287025 (and d!1759052 d!1759040)))

(declare-fun lambda!298295 () Int)

(assert (=> bs!1287025 (= lambda!298295 lambda!298279)))

(declare-fun bs!1287026 () Bool)

(assert (= bs!1287026 (and d!1759052 d!1759046)))

(assert (=> bs!1287026 (= lambda!298295 lambda!298290)))

(declare-fun lt!2251317 () List!62934)

(assert (=> d!1759052 (forall!14717 lt!2251317 lambda!298295)))

(declare-fun e!3432345 () List!62934)

(assert (=> d!1759052 (= lt!2251317 e!3432345)))

(declare-fun c!973109 () Bool)

(assert (=> d!1759052 (= c!973109 ((_ is Cons!62811) zl!343))))

(assert (=> d!1759052 (= (unfocusZipperList!973 zl!343) lt!2251317)))

(declare-fun b!5557910 () Bool)

(assert (=> b!5557910 (= e!3432345 (Cons!62810 (generalisedConcat!1160 (exprs!5429 (h!69259 zl!343))) (unfocusZipperList!973 (t!376202 zl!343))))))

(declare-fun b!5557911 () Bool)

(assert (=> b!5557911 (= e!3432345 Nil!62810)))

(assert (= (and d!1759052 c!973109) b!5557910))

(assert (= (and d!1759052 (not c!973109)) b!5557911))

(declare-fun m!6549402 () Bool)

(assert (=> d!1759052 m!6549402))

(assert (=> b!5557910 m!6549232))

(declare-fun m!6549404 () Bool)

(assert (=> b!5557910 m!6549404))

(assert (=> b!5557706 d!1759052))

(declare-fun d!1759064 () Bool)

(declare-fun lt!2251320 () Regex!15545)

(assert (=> d!1759064 (validRegex!7281 lt!2251320)))

(assert (=> d!1759064 (= lt!2251320 (generalisedUnion!1408 (unfocusZipperList!973 zl!343)))))

(assert (=> d!1759064 (= (unfocusZipper!1287 zl!343) lt!2251320)))

(declare-fun bs!1287027 () Bool)

(assert (= bs!1287027 d!1759064))

(declare-fun m!6549406 () Bool)

(assert (=> bs!1287027 m!6549406))

(assert (=> bs!1287027 m!6549208))

(assert (=> bs!1287027 m!6549208))

(assert (=> bs!1287027 m!6549210))

(assert (=> b!5557707 d!1759064))

(declare-fun d!1759066 () Bool)

(assert (=> d!1759066 (= (isEmpty!34608 (t!376202 zl!343)) ((_ is Nil!62811) (t!376202 zl!343)))))

(assert (=> b!5557705 d!1759066))

(declare-fun d!1759068 () Bool)

(assert (=> d!1759068 (= (isEmpty!34609 (t!376201 (exprs!5429 (h!69259 zl!343)))) ((_ is Nil!62810) (t!376201 (exprs!5429 (h!69259 zl!343)))))))

(assert (=> b!5557709 d!1759068))

(declare-fun b!5557962 () Bool)

(declare-fun e!3432382 () Bool)

(declare-fun call!414479 () Bool)

(assert (=> b!5557962 (= e!3432382 call!414479)))

(declare-fun b!5557963 () Bool)

(declare-fun e!3432381 () Bool)

(declare-fun call!414481 () Bool)

(assert (=> b!5557963 (= e!3432381 call!414481)))

(declare-fun b!5557964 () Bool)

(declare-fun e!3432377 () Bool)

(assert (=> b!5557964 (= e!3432377 call!414481)))

(declare-fun b!5557965 () Bool)

(declare-fun e!3432383 () Bool)

(declare-fun e!3432378 () Bool)

(assert (=> b!5557965 (= e!3432383 e!3432378)))

(declare-fun c!973120 () Bool)

(assert (=> b!5557965 (= c!973120 ((_ is Star!15545) r!7292))))

(declare-fun b!5557966 () Bool)

(declare-fun res!2362330 () Bool)

(assert (=> b!5557966 (=> (not res!2362330) (not e!3432377))))

(declare-fun call!414480 () Bool)

(assert (=> b!5557966 (= res!2362330 call!414480)))

(declare-fun e!3432380 () Bool)

(assert (=> b!5557966 (= e!3432380 e!3432377)))

(declare-fun b!5557961 () Bool)

(assert (=> b!5557961 (= e!3432378 e!3432380)))

(declare-fun c!973121 () Bool)

(assert (=> b!5557961 (= c!973121 ((_ is Union!15545) r!7292))))

(declare-fun d!1759070 () Bool)

(declare-fun res!2362331 () Bool)

(assert (=> d!1759070 (=> res!2362331 e!3432383)))

(assert (=> d!1759070 (= res!2362331 ((_ is ElementMatch!15545) r!7292))))

(assert (=> d!1759070 (= (validRegex!7281 r!7292) e!3432383)))

(declare-fun b!5557967 () Bool)

(assert (=> b!5557967 (= e!3432378 e!3432382)))

(declare-fun res!2362327 () Bool)

(assert (=> b!5557967 (= res!2362327 (not (nullable!5577 (reg!15874 r!7292))))))

(assert (=> b!5557967 (=> (not res!2362327) (not e!3432382))))

(declare-fun bm!414474 () Bool)

(assert (=> bm!414474 (= call!414481 (validRegex!7281 (ite c!973121 (regTwo!31603 r!7292) (regTwo!31602 r!7292))))))

(declare-fun bm!414475 () Bool)

(assert (=> bm!414475 (= call!414480 call!414479)))

(declare-fun b!5557968 () Bool)

(declare-fun e!3432379 () Bool)

(assert (=> b!5557968 (= e!3432379 e!3432381)))

(declare-fun res!2362328 () Bool)

(assert (=> b!5557968 (=> (not res!2362328) (not e!3432381))))

(assert (=> b!5557968 (= res!2362328 call!414480)))

(declare-fun bm!414476 () Bool)

(assert (=> bm!414476 (= call!414479 (validRegex!7281 (ite c!973120 (reg!15874 r!7292) (ite c!973121 (regOne!31603 r!7292) (regOne!31602 r!7292)))))))

(declare-fun b!5557969 () Bool)

(declare-fun res!2362329 () Bool)

(assert (=> b!5557969 (=> res!2362329 e!3432379)))

(assert (=> b!5557969 (= res!2362329 (not ((_ is Concat!24390) r!7292)))))

(assert (=> b!5557969 (= e!3432380 e!3432379)))

(assert (= (and d!1759070 (not res!2362331)) b!5557965))

(assert (= (and b!5557965 c!973120) b!5557967))

(assert (= (and b!5557965 (not c!973120)) b!5557961))

(assert (= (and b!5557967 res!2362327) b!5557962))

(assert (= (and b!5557961 c!973121) b!5557966))

(assert (= (and b!5557961 (not c!973121)) b!5557969))

(assert (= (and b!5557966 res!2362330) b!5557964))

(assert (= (and b!5557969 (not res!2362329)) b!5557968))

(assert (= (and b!5557968 res!2362328) b!5557963))

(assert (= (or b!5557964 b!5557963) bm!414474))

(assert (= (or b!5557966 b!5557968) bm!414475))

(assert (= (or b!5557962 bm!414475) bm!414476))

(declare-fun m!6549436 () Bool)

(assert (=> b!5557967 m!6549436))

(declare-fun m!6549438 () Bool)

(assert (=> bm!414474 m!6549438))

(declare-fun m!6549444 () Bool)

(assert (=> bm!414476 m!6549444))

(assert (=> start!578582 d!1759070))

(declare-fun bs!1287043 () Bool)

(declare-fun b!5558059 () Bool)

(assert (= bs!1287043 (and b!5558059 b!5557710)))

(declare-fun lambda!298315 () Int)

(assert (=> bs!1287043 (not (= lambda!298315 lambda!298271))))

(assert (=> bs!1287043 (not (= lambda!298315 lambda!298272))))

(assert (=> b!5558059 true))

(assert (=> b!5558059 true))

(declare-fun bs!1287044 () Bool)

(declare-fun b!5558062 () Bool)

(assert (= bs!1287044 (and b!5558062 b!5557710)))

(declare-fun lambda!298316 () Int)

(assert (=> bs!1287044 (not (= lambda!298316 lambda!298271))))

(assert (=> bs!1287044 (= lambda!298316 lambda!298272)))

(declare-fun bs!1287045 () Bool)

(assert (= bs!1287045 (and b!5558062 b!5558059)))

(assert (=> bs!1287045 (not (= lambda!298316 lambda!298315))))

(assert (=> b!5558062 true))

(assert (=> b!5558062 true))

(declare-fun bm!414487 () Bool)

(declare-fun call!414493 () Bool)

(declare-fun isEmpty!34612 (List!62936) Bool)

(assert (=> bm!414487 (= call!414493 (isEmpty!34612 s!2326))))

(declare-fun d!1759080 () Bool)

(declare-fun c!973145 () Bool)

(assert (=> d!1759080 (= c!973145 ((_ is EmptyExpr!15545) r!7292))))

(declare-fun e!3432435 () Bool)

(assert (=> d!1759080 (= (matchRSpec!2648 r!7292 s!2326) e!3432435)))

(declare-fun b!5558053 () Bool)

(declare-fun e!3432437 () Bool)

(declare-fun e!3432431 () Bool)

(assert (=> b!5558053 (= e!3432437 e!3432431)))

(declare-fun res!2362377 () Bool)

(assert (=> b!5558053 (= res!2362377 (matchRSpec!2648 (regOne!31603 r!7292) s!2326))))

(assert (=> b!5558053 (=> res!2362377 e!3432431)))

(declare-fun b!5558054 () Bool)

(declare-fun e!3432433 () Bool)

(assert (=> b!5558054 (= e!3432433 (= s!2326 (Cons!62812 (c!973037 r!7292) Nil!62812)))))

(declare-fun b!5558055 () Bool)

(declare-fun e!3432436 () Bool)

(assert (=> b!5558055 (= e!3432435 e!3432436)))

(declare-fun res!2362375 () Bool)

(assert (=> b!5558055 (= res!2362375 (not ((_ is EmptyLang!15545) r!7292)))))

(assert (=> b!5558055 (=> (not res!2362375) (not e!3432436))))

(declare-fun b!5558056 () Bool)

(declare-fun c!973143 () Bool)

(assert (=> b!5558056 (= c!973143 ((_ is ElementMatch!15545) r!7292))))

(assert (=> b!5558056 (= e!3432436 e!3432433)))

(declare-fun b!5558057 () Bool)

(assert (=> b!5558057 (= e!3432431 (matchRSpec!2648 (regTwo!31603 r!7292) s!2326))))

(declare-fun b!5558058 () Bool)

(declare-fun e!3432432 () Bool)

(assert (=> b!5558058 (= e!3432437 e!3432432)))

(declare-fun c!973144 () Bool)

(assert (=> b!5558058 (= c!973144 ((_ is Star!15545) r!7292))))

(declare-fun e!3432434 () Bool)

(declare-fun call!414492 () Bool)

(assert (=> b!5558059 (= e!3432434 call!414492)))

(declare-fun b!5558060 () Bool)

(declare-fun c!973142 () Bool)

(assert (=> b!5558060 (= c!973142 ((_ is Union!15545) r!7292))))

(assert (=> b!5558060 (= e!3432433 e!3432437)))

(declare-fun b!5558061 () Bool)

(declare-fun res!2362376 () Bool)

(assert (=> b!5558061 (=> res!2362376 e!3432434)))

(assert (=> b!5558061 (= res!2362376 call!414493)))

(assert (=> b!5558061 (= e!3432432 e!3432434)))

(declare-fun bm!414488 () Bool)

(assert (=> bm!414488 (= call!414492 (Exists!2645 (ite c!973144 lambda!298315 lambda!298316)))))

(assert (=> b!5558062 (= e!3432432 call!414492)))

(declare-fun b!5558063 () Bool)

(assert (=> b!5558063 (= e!3432435 call!414493)))

(assert (= (and d!1759080 c!973145) b!5558063))

(assert (= (and d!1759080 (not c!973145)) b!5558055))

(assert (= (and b!5558055 res!2362375) b!5558056))

(assert (= (and b!5558056 c!973143) b!5558054))

(assert (= (and b!5558056 (not c!973143)) b!5558060))

(assert (= (and b!5558060 c!973142) b!5558053))

(assert (= (and b!5558060 (not c!973142)) b!5558058))

(assert (= (and b!5558053 (not res!2362377)) b!5558057))

(assert (= (and b!5558058 c!973144) b!5558061))

(assert (= (and b!5558058 (not c!973144)) b!5558062))

(assert (= (and b!5558061 (not res!2362376)) b!5558059))

(assert (= (or b!5558059 b!5558062) bm!414488))

(assert (= (or b!5558063 b!5558061) bm!414487))

(declare-fun m!6549462 () Bool)

(assert (=> bm!414487 m!6549462))

(declare-fun m!6549464 () Bool)

(assert (=> b!5558053 m!6549464))

(declare-fun m!6549466 () Bool)

(assert (=> b!5558057 m!6549466))

(declare-fun m!6549468 () Bool)

(assert (=> bm!414488 m!6549468))

(assert (=> b!5557720 d!1759080))

(declare-fun b!5558214 () Bool)

(declare-fun e!3432518 () Bool)

(declare-fun e!3432521 () Bool)

(assert (=> b!5558214 (= e!3432518 e!3432521)))

(declare-fun c!973168 () Bool)

(assert (=> b!5558214 (= c!973168 ((_ is EmptyLang!15545) r!7292))))

(declare-fun b!5558215 () Bool)

(declare-fun e!3432520 () Bool)

(assert (=> b!5558215 (= e!3432520 (nullable!5577 r!7292))))

(declare-fun b!5558216 () Bool)

(declare-fun res!2362438 () Bool)

(declare-fun e!3432517 () Bool)

(assert (=> b!5558216 (=> (not res!2362438) (not e!3432517))))

(declare-fun tail!10969 (List!62936) List!62936)

(assert (=> b!5558216 (= res!2362438 (isEmpty!34612 (tail!10969 s!2326)))))

(declare-fun b!5558217 () Bool)

(declare-fun res!2362433 () Bool)

(declare-fun e!3432516 () Bool)

(assert (=> b!5558217 (=> res!2362433 e!3432516)))

(assert (=> b!5558217 (= res!2362433 (not ((_ is ElementMatch!15545) r!7292)))))

(assert (=> b!5558217 (= e!3432521 e!3432516)))

(declare-fun b!5558218 () Bool)

(declare-fun derivativeStep!4400 (Regex!15545 C!31360) Regex!15545)

(declare-fun head!11874 (List!62936) C!31360)

(assert (=> b!5558218 (= e!3432520 (matchR!7730 (derivativeStep!4400 r!7292 (head!11874 s!2326)) (tail!10969 s!2326)))))

(declare-fun b!5558219 () Bool)

(declare-fun res!2362439 () Bool)

(assert (=> b!5558219 (=> (not res!2362439) (not e!3432517))))

(declare-fun call!414508 () Bool)

(assert (=> b!5558219 (= res!2362439 (not call!414508))))

(declare-fun b!5558220 () Bool)

(declare-fun e!3432522 () Bool)

(assert (=> b!5558220 (= e!3432516 e!3432522)))

(declare-fun res!2362436 () Bool)

(assert (=> b!5558220 (=> (not res!2362436) (not e!3432522))))

(declare-fun lt!2251344 () Bool)

(assert (=> b!5558220 (= res!2362436 (not lt!2251344))))

(declare-fun b!5558221 () Bool)

(assert (=> b!5558221 (= e!3432521 (not lt!2251344))))

(declare-fun b!5558222 () Bool)

(declare-fun res!2362440 () Bool)

(assert (=> b!5558222 (=> res!2362440 e!3432516)))

(assert (=> b!5558222 (= res!2362440 e!3432517)))

(declare-fun res!2362434 () Bool)

(assert (=> b!5558222 (=> (not res!2362434) (not e!3432517))))

(assert (=> b!5558222 (= res!2362434 lt!2251344)))

(declare-fun b!5558223 () Bool)

(assert (=> b!5558223 (= e!3432517 (= (head!11874 s!2326) (c!973037 r!7292)))))

(declare-fun b!5558224 () Bool)

(declare-fun res!2362435 () Bool)

(declare-fun e!3432519 () Bool)

(assert (=> b!5558224 (=> res!2362435 e!3432519)))

(assert (=> b!5558224 (= res!2362435 (not (isEmpty!34612 (tail!10969 s!2326))))))

(declare-fun b!5558225 () Bool)

(assert (=> b!5558225 (= e!3432519 (not (= (head!11874 s!2326) (c!973037 r!7292))))))

(declare-fun b!5558227 () Bool)

(assert (=> b!5558227 (= e!3432518 (= lt!2251344 call!414508))))

(declare-fun bm!414503 () Bool)

(assert (=> bm!414503 (= call!414508 (isEmpty!34612 s!2326))))

(declare-fun d!1759088 () Bool)

(assert (=> d!1759088 e!3432518))

(declare-fun c!973169 () Bool)

(assert (=> d!1759088 (= c!973169 ((_ is EmptyExpr!15545) r!7292))))

(assert (=> d!1759088 (= lt!2251344 e!3432520)))

(declare-fun c!973167 () Bool)

(assert (=> d!1759088 (= c!973167 (isEmpty!34612 s!2326))))

(assert (=> d!1759088 (validRegex!7281 r!7292)))

(assert (=> d!1759088 (= (matchR!7730 r!7292 s!2326) lt!2251344)))

(declare-fun b!5558226 () Bool)

(assert (=> b!5558226 (= e!3432522 e!3432519)))

(declare-fun res!2362437 () Bool)

(assert (=> b!5558226 (=> res!2362437 e!3432519)))

(assert (=> b!5558226 (= res!2362437 call!414508)))

(assert (= (and d!1759088 c!973167) b!5558215))

(assert (= (and d!1759088 (not c!973167)) b!5558218))

(assert (= (and d!1759088 c!973169) b!5558227))

(assert (= (and d!1759088 (not c!973169)) b!5558214))

(assert (= (and b!5558214 c!973168) b!5558221))

(assert (= (and b!5558214 (not c!973168)) b!5558217))

(assert (= (and b!5558217 (not res!2362433)) b!5558222))

(assert (= (and b!5558222 res!2362434) b!5558219))

(assert (= (and b!5558219 res!2362439) b!5558216))

(assert (= (and b!5558216 res!2362438) b!5558223))

(assert (= (and b!5558222 (not res!2362440)) b!5558220))

(assert (= (and b!5558220 res!2362436) b!5558226))

(assert (= (and b!5558226 (not res!2362437)) b!5558224))

(assert (= (and b!5558224 (not res!2362435)) b!5558225))

(assert (= (or b!5558227 b!5558219 b!5558226) bm!414503))

(declare-fun m!6549494 () Bool)

(assert (=> b!5558224 m!6549494))

(assert (=> b!5558224 m!6549494))

(declare-fun m!6549496 () Bool)

(assert (=> b!5558224 m!6549496))

(assert (=> bm!414503 m!6549462))

(assert (=> d!1759088 m!6549462))

(assert (=> d!1759088 m!6549236))

(assert (=> b!5558216 m!6549494))

(assert (=> b!5558216 m!6549494))

(assert (=> b!5558216 m!6549496))

(declare-fun m!6549498 () Bool)

(assert (=> b!5558215 m!6549498))

(declare-fun m!6549500 () Bool)

(assert (=> b!5558225 m!6549500))

(assert (=> b!5558223 m!6549500))

(assert (=> b!5558218 m!6549500))

(assert (=> b!5558218 m!6549500))

(declare-fun m!6549502 () Bool)

(assert (=> b!5558218 m!6549502))

(assert (=> b!5558218 m!6549494))

(assert (=> b!5558218 m!6549502))

(assert (=> b!5558218 m!6549494))

(declare-fun m!6549504 () Bool)

(assert (=> b!5558218 m!6549504))

(assert (=> b!5557720 d!1759088))

(declare-fun d!1759098 () Bool)

(assert (=> d!1759098 (= (matchR!7730 r!7292 s!2326) (matchRSpec!2648 r!7292 s!2326))))

(declare-fun lt!2251347 () Unit!155552)

(declare-fun choose!42173 (Regex!15545 List!62936) Unit!155552)

(assert (=> d!1759098 (= lt!2251347 (choose!42173 r!7292 s!2326))))

(assert (=> d!1759098 (validRegex!7281 r!7292)))

(assert (=> d!1759098 (= (mainMatchTheorem!2648 r!7292 s!2326) lt!2251347)))

(declare-fun bs!1287048 () Bool)

(assert (= bs!1287048 d!1759098))

(assert (=> bs!1287048 m!6549254))

(assert (=> bs!1287048 m!6549252))

(declare-fun m!6549506 () Bool)

(assert (=> bs!1287048 m!6549506))

(assert (=> bs!1287048 m!6549236))

(assert (=> b!5557720 d!1759098))

(declare-fun bs!1287049 () Bool)

(declare-fun d!1759100 () Bool)

(assert (= bs!1287049 (and d!1759100 d!1759040)))

(declare-fun lambda!298317 () Int)

(assert (=> bs!1287049 (= lambda!298317 lambda!298279)))

(declare-fun bs!1287050 () Bool)

(assert (= bs!1287050 (and d!1759100 d!1759046)))

(assert (=> bs!1287050 (= lambda!298317 lambda!298290)))

(declare-fun bs!1287051 () Bool)

(assert (= bs!1287051 (and d!1759100 d!1759052)))

(assert (=> bs!1287051 (= lambda!298317 lambda!298295)))

(assert (=> d!1759100 (= (inv!82109 (h!69259 zl!343)) (forall!14717 (exprs!5429 (h!69259 zl!343)) lambda!298317))))

(declare-fun bs!1287052 () Bool)

(assert (= bs!1287052 d!1759100))

(declare-fun m!6549508 () Bool)

(assert (=> bs!1287052 m!6549508))

(assert (=> b!5557718 d!1759100))

(declare-fun d!1759102 () Bool)

(declare-fun c!973172 () Bool)

(assert (=> d!1759102 (= c!973172 (isEmpty!34612 (t!376203 s!2326)))))

(declare-fun e!3432526 () Bool)

(assert (=> d!1759102 (= (matchZipper!1683 lt!2251279 (t!376203 s!2326)) e!3432526)))

(declare-fun b!5558233 () Bool)

(declare-fun nullableZipper!1547 ((InoxSet Context!9858)) Bool)

(assert (=> b!5558233 (= e!3432526 (nullableZipper!1547 lt!2251279))))

(declare-fun b!5558234 () Bool)

(declare-fun derivationStepZipper!1646 ((InoxSet Context!9858) C!31360) (InoxSet Context!9858))

(assert (=> b!5558234 (= e!3432526 (matchZipper!1683 (derivationStepZipper!1646 lt!2251279 (head!11874 (t!376203 s!2326))) (tail!10969 (t!376203 s!2326))))))

(assert (= (and d!1759102 c!973172) b!5558233))

(assert (= (and d!1759102 (not c!973172)) b!5558234))

(declare-fun m!6549510 () Bool)

(assert (=> d!1759102 m!6549510))

(declare-fun m!6549512 () Bool)

(assert (=> b!5558233 m!6549512))

(declare-fun m!6549514 () Bool)

(assert (=> b!5558234 m!6549514))

(assert (=> b!5558234 m!6549514))

(declare-fun m!6549516 () Bool)

(assert (=> b!5558234 m!6549516))

(declare-fun m!6549518 () Bool)

(assert (=> b!5558234 m!6549518))

(assert (=> b!5558234 m!6549516))

(assert (=> b!5558234 m!6549518))

(declare-fun m!6549520 () Bool)

(assert (=> b!5558234 m!6549520))

(assert (=> b!5557719 d!1759102))

(declare-fun e!3432529 () Bool)

(declare-fun d!1759104 () Bool)

(assert (=> d!1759104 (= (matchZipper!1683 ((_ map or) lt!2251280 lt!2251279) (t!376203 s!2326)) e!3432529)))

(declare-fun res!2362443 () Bool)

(assert (=> d!1759104 (=> res!2362443 e!3432529)))

(assert (=> d!1759104 (= res!2362443 (matchZipper!1683 lt!2251280 (t!376203 s!2326)))))

(declare-fun lt!2251350 () Unit!155552)

(declare-fun choose!42174 ((InoxSet Context!9858) (InoxSet Context!9858) List!62936) Unit!155552)

(assert (=> d!1759104 (= lt!2251350 (choose!42174 lt!2251280 lt!2251279 (t!376203 s!2326)))))

(assert (=> d!1759104 (= (lemmaZipperConcatMatchesSameAsBothZippers!570 lt!2251280 lt!2251279 (t!376203 s!2326)) lt!2251350)))

(declare-fun b!5558237 () Bool)

(assert (=> b!5558237 (= e!3432529 (matchZipper!1683 lt!2251279 (t!376203 s!2326)))))

(assert (= (and d!1759104 (not res!2362443)) b!5558237))

(assert (=> d!1759104 m!6549206))

(assert (=> d!1759104 m!6549204))

(declare-fun m!6549522 () Bool)

(assert (=> d!1759104 m!6549522))

(assert (=> b!5558237 m!6549250))

(assert (=> b!5557708 d!1759104))

(declare-fun d!1759106 () Bool)

(declare-fun c!973173 () Bool)

(assert (=> d!1759106 (= c!973173 (isEmpty!34612 (t!376203 s!2326)))))

(declare-fun e!3432530 () Bool)

(assert (=> d!1759106 (= (matchZipper!1683 lt!2251280 (t!376203 s!2326)) e!3432530)))

(declare-fun b!5558238 () Bool)

(assert (=> b!5558238 (= e!3432530 (nullableZipper!1547 lt!2251280))))

(declare-fun b!5558239 () Bool)

(assert (=> b!5558239 (= e!3432530 (matchZipper!1683 (derivationStepZipper!1646 lt!2251280 (head!11874 (t!376203 s!2326))) (tail!10969 (t!376203 s!2326))))))

(assert (= (and d!1759106 c!973173) b!5558238))

(assert (= (and d!1759106 (not c!973173)) b!5558239))

(assert (=> d!1759106 m!6549510))

(declare-fun m!6549524 () Bool)

(assert (=> b!5558238 m!6549524))

(assert (=> b!5558239 m!6549514))

(assert (=> b!5558239 m!6549514))

(declare-fun m!6549526 () Bool)

(assert (=> b!5558239 m!6549526))

(assert (=> b!5558239 m!6549518))

(assert (=> b!5558239 m!6549526))

(assert (=> b!5558239 m!6549518))

(declare-fun m!6549528 () Bool)

(assert (=> b!5558239 m!6549528))

(assert (=> b!5557708 d!1759106))

(declare-fun d!1759108 () Bool)

(declare-fun c!973174 () Bool)

(assert (=> d!1759108 (= c!973174 (isEmpty!34612 (t!376203 s!2326)))))

(declare-fun e!3432531 () Bool)

(assert (=> d!1759108 (= (matchZipper!1683 ((_ map or) lt!2251280 lt!2251279) (t!376203 s!2326)) e!3432531)))

(declare-fun b!5558240 () Bool)

(assert (=> b!5558240 (= e!3432531 (nullableZipper!1547 ((_ map or) lt!2251280 lt!2251279)))))

(declare-fun b!5558241 () Bool)

(assert (=> b!5558241 (= e!3432531 (matchZipper!1683 (derivationStepZipper!1646 ((_ map or) lt!2251280 lt!2251279) (head!11874 (t!376203 s!2326))) (tail!10969 (t!376203 s!2326))))))

(assert (= (and d!1759108 c!973174) b!5558240))

(assert (= (and d!1759108 (not c!973174)) b!5558241))

(assert (=> d!1759108 m!6549510))

(declare-fun m!6549530 () Bool)

(assert (=> b!5558240 m!6549530))

(assert (=> b!5558241 m!6549514))

(assert (=> b!5558241 m!6549514))

(declare-fun m!6549532 () Bool)

(assert (=> b!5558241 m!6549532))

(assert (=> b!5558241 m!6549518))

(assert (=> b!5558241 m!6549532))

(assert (=> b!5558241 m!6549518))

(declare-fun m!6549534 () Bool)

(assert (=> b!5558241 m!6549534))

(assert (=> b!5557708 d!1759108))

(declare-fun bs!1287053 () Bool)

(declare-fun d!1759110 () Bool)

(assert (= bs!1287053 (and d!1759110 d!1759040)))

(declare-fun lambda!298320 () Int)

(assert (=> bs!1287053 (= lambda!298320 lambda!298279)))

(declare-fun bs!1287054 () Bool)

(assert (= bs!1287054 (and d!1759110 d!1759046)))

(assert (=> bs!1287054 (= lambda!298320 lambda!298290)))

(declare-fun bs!1287055 () Bool)

(assert (= bs!1287055 (and d!1759110 d!1759052)))

(assert (=> bs!1287055 (= lambda!298320 lambda!298295)))

(declare-fun bs!1287056 () Bool)

(assert (= bs!1287056 (and d!1759110 d!1759100)))

(assert (=> bs!1287056 (= lambda!298320 lambda!298317)))

(declare-fun b!5558262 () Bool)

(declare-fun e!3432548 () Bool)

(declare-fun lt!2251353 () Regex!15545)

(assert (=> b!5558262 (= e!3432548 (= lt!2251353 (head!11873 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun b!5558263 () Bool)

(declare-fun e!3432546 () Regex!15545)

(declare-fun e!3432549 () Regex!15545)

(assert (=> b!5558263 (= e!3432546 e!3432549)))

(declare-fun c!973183 () Bool)

(assert (=> b!5558263 (= c!973183 ((_ is Cons!62810) (exprs!5429 (h!69259 zl!343))))))

(declare-fun b!5558264 () Bool)

(declare-fun e!3432544 () Bool)

(assert (=> b!5558264 (= e!3432544 e!3432548)))

(declare-fun c!973185 () Bool)

(assert (=> b!5558264 (= c!973185 (isEmpty!34609 (tail!10968 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun e!3432547 () Bool)

(assert (=> d!1759110 e!3432547))

(declare-fun res!2362448 () Bool)

(assert (=> d!1759110 (=> (not res!2362448) (not e!3432547))))

(assert (=> d!1759110 (= res!2362448 (validRegex!7281 lt!2251353))))

(assert (=> d!1759110 (= lt!2251353 e!3432546)))

(declare-fun c!973186 () Bool)

(declare-fun e!3432545 () Bool)

(assert (=> d!1759110 (= c!973186 e!3432545)))

(declare-fun res!2362449 () Bool)

(assert (=> d!1759110 (=> (not res!2362449) (not e!3432545))))

(assert (=> d!1759110 (= res!2362449 ((_ is Cons!62810) (exprs!5429 (h!69259 zl!343))))))

(assert (=> d!1759110 (forall!14717 (exprs!5429 (h!69259 zl!343)) lambda!298320)))

(assert (=> d!1759110 (= (generalisedConcat!1160 (exprs!5429 (h!69259 zl!343))) lt!2251353)))

(declare-fun b!5558265 () Bool)

(declare-fun isEmptyExpr!1107 (Regex!15545) Bool)

(assert (=> b!5558265 (= e!3432544 (isEmptyExpr!1107 lt!2251353))))

(declare-fun b!5558266 () Bool)

(assert (=> b!5558266 (= e!3432549 (Concat!24390 (h!69258 (exprs!5429 (h!69259 zl!343))) (generalisedConcat!1160 (t!376201 (exprs!5429 (h!69259 zl!343))))))))

(declare-fun b!5558267 () Bool)

(assert (=> b!5558267 (= e!3432546 (h!69258 (exprs!5429 (h!69259 zl!343))))))

(declare-fun b!5558268 () Bool)

(declare-fun isConcat!630 (Regex!15545) Bool)

(assert (=> b!5558268 (= e!3432548 (isConcat!630 lt!2251353))))

(declare-fun b!5558269 () Bool)

(assert (=> b!5558269 (= e!3432547 e!3432544)))

(declare-fun c!973184 () Bool)

(assert (=> b!5558269 (= c!973184 (isEmpty!34609 (exprs!5429 (h!69259 zl!343))))))

(declare-fun b!5558270 () Bool)

(assert (=> b!5558270 (= e!3432545 (isEmpty!34609 (t!376201 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun b!5558271 () Bool)

(assert (=> b!5558271 (= e!3432549 EmptyExpr!15545)))

(assert (= (and d!1759110 res!2362449) b!5558270))

(assert (= (and d!1759110 c!973186) b!5558267))

(assert (= (and d!1759110 (not c!973186)) b!5558263))

(assert (= (and b!5558263 c!973183) b!5558266))

(assert (= (and b!5558263 (not c!973183)) b!5558271))

(assert (= (and d!1759110 res!2362448) b!5558269))

(assert (= (and b!5558269 c!973184) b!5558265))

(assert (= (and b!5558269 (not c!973184)) b!5558264))

(assert (= (and b!5558264 c!973185) b!5558262))

(assert (= (and b!5558264 (not c!973185)) b!5558268))

(declare-fun m!6549536 () Bool)

(assert (=> b!5558265 m!6549536))

(declare-fun m!6549538 () Bool)

(assert (=> b!5558269 m!6549538))

(declare-fun m!6549540 () Bool)

(assert (=> b!5558262 m!6549540))

(declare-fun m!6549542 () Bool)

(assert (=> b!5558266 m!6549542))

(assert (=> b!5558270 m!6549230))

(declare-fun m!6549544 () Bool)

(assert (=> d!1759110 m!6549544))

(declare-fun m!6549546 () Bool)

(assert (=> d!1759110 m!6549546))

(declare-fun m!6549548 () Bool)

(assert (=> b!5558268 m!6549548))

(declare-fun m!6549550 () Bool)

(assert (=> b!5558264 m!6549550))

(assert (=> b!5558264 m!6549550))

(declare-fun m!6549552 () Bool)

(assert (=> b!5558264 m!6549552))

(assert (=> b!5557712 d!1759110))

(declare-fun b!5558294 () Bool)

(declare-fun e!3432565 () (InoxSet Context!9858))

(declare-fun e!3432562 () (InoxSet Context!9858))

(assert (=> b!5558294 (= e!3432565 e!3432562)))

(declare-fun c!973200 () Bool)

(assert (=> b!5558294 (= c!973200 ((_ is Concat!24390) (h!69258 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun b!5558295 () Bool)

(declare-fun e!3432564 () Bool)

(assert (=> b!5558295 (= e!3432564 (nullable!5577 (regOne!31602 (h!69258 (exprs!5429 (h!69259 zl!343))))))))

(declare-fun b!5558296 () Bool)

(declare-fun c!973199 () Bool)

(assert (=> b!5558296 (= c!973199 e!3432564)))

(declare-fun res!2362452 () Bool)

(assert (=> b!5558296 (=> (not res!2362452) (not e!3432564))))

(assert (=> b!5558296 (= res!2362452 ((_ is Concat!24390) (h!69258 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun e!3432563 () (InoxSet Context!9858))

(assert (=> b!5558296 (= e!3432563 e!3432565)))

(declare-fun b!5558297 () Bool)

(declare-fun e!3432566 () (InoxSet Context!9858))

(declare-fun call!414522 () (InoxSet Context!9858))

(assert (=> b!5558297 (= e!3432566 call!414522)))

(declare-fun b!5558298 () Bool)

(declare-fun e!3432567 () (InoxSet Context!9858))

(assert (=> b!5558298 (= e!3432567 e!3432563)))

(declare-fun c!973201 () Bool)

(assert (=> b!5558298 (= c!973201 ((_ is Union!15545) (h!69258 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun call!414521 () List!62934)

(declare-fun call!414526 () (InoxSet Context!9858))

(declare-fun bm!414516 () Bool)

(assert (=> bm!414516 (= call!414526 (derivationStepZipperDown!887 (ite c!973201 (regTwo!31603 (h!69258 (exprs!5429 (h!69259 zl!343)))) (regOne!31602 (h!69258 (exprs!5429 (h!69259 zl!343))))) (ite c!973201 lt!2251283 (Context!9859 call!414521)) (h!69260 s!2326)))))

(declare-fun bm!414517 () Bool)

(declare-fun call!414523 () (InoxSet Context!9858))

(declare-fun call!414524 () (InoxSet Context!9858))

(assert (=> bm!414517 (= call!414523 call!414524)))

(declare-fun bm!414518 () Bool)

(assert (=> bm!414518 (= call!414522 call!414523)))

(declare-fun b!5558299 () Bool)

(assert (=> b!5558299 (= e!3432565 ((_ map or) call!414526 call!414523))))

(declare-fun b!5558300 () Bool)

(declare-fun c!973197 () Bool)

(assert (=> b!5558300 (= c!973197 ((_ is Star!15545) (h!69258 (exprs!5429 (h!69259 zl!343)))))))

(assert (=> b!5558300 (= e!3432562 e!3432566)))

(declare-fun b!5558301 () Bool)

(assert (=> b!5558301 (= e!3432563 ((_ map or) call!414524 call!414526))))

(declare-fun b!5558302 () Bool)

(assert (=> b!5558302 (= e!3432562 call!414522)))

(declare-fun bm!414519 () Bool)

(declare-fun call!414525 () List!62934)

(assert (=> bm!414519 (= call!414525 call!414521)))

(declare-fun d!1759112 () Bool)

(declare-fun c!973198 () Bool)

(assert (=> d!1759112 (= c!973198 (and ((_ is ElementMatch!15545) (h!69258 (exprs!5429 (h!69259 zl!343)))) (= (c!973037 (h!69258 (exprs!5429 (h!69259 zl!343)))) (h!69260 s!2326))))))

(assert (=> d!1759112 (= (derivationStepZipperDown!887 (h!69258 (exprs!5429 (h!69259 zl!343))) lt!2251283 (h!69260 s!2326)) e!3432567)))

(declare-fun b!5558303 () Bool)

(assert (=> b!5558303 (= e!3432567 (store ((as const (Array Context!9858 Bool)) false) lt!2251283 true))))

(declare-fun b!5558304 () Bool)

(assert (=> b!5558304 (= e!3432566 ((as const (Array Context!9858 Bool)) false))))

(declare-fun bm!414520 () Bool)

(assert (=> bm!414520 (= call!414524 (derivationStepZipperDown!887 (ite c!973201 (regOne!31603 (h!69258 (exprs!5429 (h!69259 zl!343)))) (ite c!973199 (regTwo!31602 (h!69258 (exprs!5429 (h!69259 zl!343)))) (ite c!973200 (regOne!31602 (h!69258 (exprs!5429 (h!69259 zl!343)))) (reg!15874 (h!69258 (exprs!5429 (h!69259 zl!343))))))) (ite (or c!973201 c!973199) lt!2251283 (Context!9859 call!414525)) (h!69260 s!2326)))))

(declare-fun bm!414521 () Bool)

(declare-fun $colon$colon!1614 (List!62934 Regex!15545) List!62934)

(assert (=> bm!414521 (= call!414521 ($colon$colon!1614 (exprs!5429 lt!2251283) (ite (or c!973199 c!973200) (regTwo!31602 (h!69258 (exprs!5429 (h!69259 zl!343)))) (h!69258 (exprs!5429 (h!69259 zl!343))))))))

(assert (= (and d!1759112 c!973198) b!5558303))

(assert (= (and d!1759112 (not c!973198)) b!5558298))

(assert (= (and b!5558298 c!973201) b!5558301))

(assert (= (and b!5558298 (not c!973201)) b!5558296))

(assert (= (and b!5558296 res!2362452) b!5558295))

(assert (= (and b!5558296 c!973199) b!5558299))

(assert (= (and b!5558296 (not c!973199)) b!5558294))

(assert (= (and b!5558294 c!973200) b!5558302))

(assert (= (and b!5558294 (not c!973200)) b!5558300))

(assert (= (and b!5558300 c!973197) b!5558297))

(assert (= (and b!5558300 (not c!973197)) b!5558304))

(assert (= (or b!5558302 b!5558297) bm!414519))

(assert (= (or b!5558302 b!5558297) bm!414518))

(assert (= (or b!5558299 bm!414519) bm!414521))

(assert (= (or b!5558299 bm!414518) bm!414517))

(assert (= (or b!5558301 b!5558299) bm!414516))

(assert (= (or b!5558301 bm!414517) bm!414520))

(declare-fun m!6549554 () Bool)

(assert (=> bm!414521 m!6549554))

(declare-fun m!6549556 () Bool)

(assert (=> bm!414520 m!6549556))

(declare-fun m!6549558 () Bool)

(assert (=> b!5558295 m!6549558))

(assert (=> b!5558303 m!6549214))

(declare-fun m!6549560 () Bool)

(assert (=> bm!414516 m!6549560))

(assert (=> b!5557721 d!1759112))

(declare-fun d!1759114 () Bool)

(declare-fun nullableFct!1693 (Regex!15545) Bool)

(assert (=> d!1759114 (= (nullable!5577 (h!69258 (exprs!5429 (h!69259 zl!343)))) (nullableFct!1693 (h!69258 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun bs!1287057 () Bool)

(assert (= bs!1287057 d!1759114))

(declare-fun m!6549562 () Bool)

(assert (=> bs!1287057 m!6549562))

(assert (=> b!5557721 d!1759114))

(declare-fun e!3432576 () (InoxSet Context!9858))

(declare-fun b!5558315 () Bool)

(declare-fun call!414529 () (InoxSet Context!9858))

(assert (=> b!5558315 (= e!3432576 ((_ map or) call!414529 (derivationStepZipperUp!813 (Context!9859 (t!376201 (exprs!5429 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343)))))))) (h!69260 s!2326))))))

(declare-fun b!5558316 () Bool)

(declare-fun e!3432575 () Bool)

(assert (=> b!5558316 (= e!3432575 (nullable!5577 (h!69258 (exprs!5429 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343)))))))))))

(declare-fun b!5558317 () Bool)

(declare-fun e!3432574 () (InoxSet Context!9858))

(assert (=> b!5558317 (= e!3432576 e!3432574)))

(declare-fun c!973207 () Bool)

(assert (=> b!5558317 (= c!973207 ((_ is Cons!62810) (exprs!5429 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343))))))))))

(declare-fun d!1759116 () Bool)

(declare-fun c!973206 () Bool)

(assert (=> d!1759116 (= c!973206 e!3432575)))

(declare-fun res!2362455 () Bool)

(assert (=> d!1759116 (=> (not res!2362455) (not e!3432575))))

(assert (=> d!1759116 (= res!2362455 ((_ is Cons!62810) (exprs!5429 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343))))))))))

(assert (=> d!1759116 (= (derivationStepZipperUp!813 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343))))) (h!69260 s!2326)) e!3432576)))

(declare-fun b!5558318 () Bool)

(assert (=> b!5558318 (= e!3432574 ((as const (Array Context!9858 Bool)) false))))

(declare-fun b!5558319 () Bool)

(assert (=> b!5558319 (= e!3432574 call!414529)))

(declare-fun bm!414524 () Bool)

(assert (=> bm!414524 (= call!414529 (derivationStepZipperDown!887 (h!69258 (exprs!5429 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343))))))) (Context!9859 (t!376201 (exprs!5429 (Context!9859 (Cons!62810 (h!69258 (exprs!5429 (h!69259 zl!343))) (t!376201 (exprs!5429 (h!69259 zl!343)))))))) (h!69260 s!2326)))))

(assert (= (and d!1759116 res!2362455) b!5558316))

(assert (= (and d!1759116 c!973206) b!5558315))

(assert (= (and d!1759116 (not c!973206)) b!5558317))

(assert (= (and b!5558317 c!973207) b!5558319))

(assert (= (and b!5558317 (not c!973207)) b!5558318))

(assert (= (or b!5558315 b!5558319) bm!414524))

(declare-fun m!6549564 () Bool)

(assert (=> b!5558315 m!6549564))

(declare-fun m!6549566 () Bool)

(assert (=> b!5558316 m!6549566))

(declare-fun m!6549568 () Bool)

(assert (=> bm!414524 m!6549568))

(assert (=> b!5557721 d!1759116))

(declare-fun d!1759118 () Bool)

(declare-fun dynLambda!24566 (Int Context!9858) (InoxSet Context!9858))

(assert (=> d!1759118 (= (flatMap!1158 z!1189 lambda!298273) (dynLambda!24566 lambda!298273 (h!69259 zl!343)))))

(declare-fun lt!2251356 () Unit!155552)

(declare-fun choose!42175 ((InoxSet Context!9858) Context!9858 Int) Unit!155552)

(assert (=> d!1759118 (= lt!2251356 (choose!42175 z!1189 (h!69259 zl!343) lambda!298273))))

(assert (=> d!1759118 (= z!1189 (store ((as const (Array Context!9858 Bool)) false) (h!69259 zl!343) true))))

(assert (=> d!1759118 (= (lemmaFlatMapOnSingletonSet!690 z!1189 (h!69259 zl!343) lambda!298273) lt!2251356)))

(declare-fun b_lambda!211039 () Bool)

(assert (=> (not b_lambda!211039) (not d!1759118)))

(declare-fun bs!1287058 () Bool)

(assert (= bs!1287058 d!1759118))

(assert (=> bs!1287058 m!6549220))

(declare-fun m!6549570 () Bool)

(assert (=> bs!1287058 m!6549570))

(declare-fun m!6549572 () Bool)

(assert (=> bs!1287058 m!6549572))

(declare-fun m!6549574 () Bool)

(assert (=> bs!1287058 m!6549574))

(assert (=> b!5557721 d!1759118))

(declare-fun d!1759120 () Bool)

(declare-fun choose!42176 ((InoxSet Context!9858) Int) (InoxSet Context!9858))

(assert (=> d!1759120 (= (flatMap!1158 z!1189 lambda!298273) (choose!42176 z!1189 lambda!298273))))

(declare-fun bs!1287059 () Bool)

(assert (= bs!1287059 d!1759120))

(declare-fun m!6549576 () Bool)

(assert (=> bs!1287059 m!6549576))

(assert (=> b!5557721 d!1759120))

(declare-fun call!414530 () (InoxSet Context!9858))

(declare-fun b!5558320 () Bool)

(declare-fun e!3432579 () (InoxSet Context!9858))

(assert (=> b!5558320 (= e!3432579 ((_ map or) call!414530 (derivationStepZipperUp!813 (Context!9859 (t!376201 (exprs!5429 (h!69259 zl!343)))) (h!69260 s!2326))))))

(declare-fun b!5558321 () Bool)

(declare-fun e!3432578 () Bool)

(assert (=> b!5558321 (= e!3432578 (nullable!5577 (h!69258 (exprs!5429 (h!69259 zl!343)))))))

(declare-fun b!5558322 () Bool)

(declare-fun e!3432577 () (InoxSet Context!9858))

(assert (=> b!5558322 (= e!3432579 e!3432577)))

(declare-fun c!973209 () Bool)

(assert (=> b!5558322 (= c!973209 ((_ is Cons!62810) (exprs!5429 (h!69259 zl!343))))))

(declare-fun d!1759122 () Bool)

(declare-fun c!973208 () Bool)

(assert (=> d!1759122 (= c!973208 e!3432578)))

(declare-fun res!2362456 () Bool)

(assert (=> d!1759122 (=> (not res!2362456) (not e!3432578))))

(assert (=> d!1759122 (= res!2362456 ((_ is Cons!62810) (exprs!5429 (h!69259 zl!343))))))

(assert (=> d!1759122 (= (derivationStepZipperUp!813 (h!69259 zl!343) (h!69260 s!2326)) e!3432579)))

(declare-fun b!5558323 () Bool)

(assert (=> b!5558323 (= e!3432577 ((as const (Array Context!9858 Bool)) false))))

(declare-fun b!5558324 () Bool)

(assert (=> b!5558324 (= e!3432577 call!414530)))

(declare-fun bm!414525 () Bool)

(assert (=> bm!414525 (= call!414530 (derivationStepZipperDown!887 (h!69258 (exprs!5429 (h!69259 zl!343))) (Context!9859 (t!376201 (exprs!5429 (h!69259 zl!343)))) (h!69260 s!2326)))))

(assert (= (and d!1759122 res!2362456) b!5558321))

(assert (= (and d!1759122 c!973208) b!5558320))

(assert (= (and d!1759122 (not c!973208)) b!5558322))

(assert (= (and b!5558322 c!973209) b!5558324))

(assert (= (and b!5558322 (not c!973209)) b!5558323))

(assert (= (or b!5558320 b!5558324) bm!414525))

(declare-fun m!6549578 () Bool)

(assert (=> b!5558320 m!6549578))

(assert (=> b!5558321 m!6549216))

(declare-fun m!6549580 () Bool)

(assert (=> bm!414525 m!6549580))

(assert (=> b!5557721 d!1759122))

(declare-fun b!5558325 () Bool)

(declare-fun e!3432582 () (InoxSet Context!9858))

(declare-fun call!414531 () (InoxSet Context!9858))

(assert (=> b!5558325 (= e!3432582 ((_ map or) call!414531 (derivationStepZipperUp!813 (Context!9859 (t!376201 (exprs!5429 lt!2251283))) (h!69260 s!2326))))))

(declare-fun b!5558326 () Bool)

(declare-fun e!3432581 () Bool)

(assert (=> b!5558326 (= e!3432581 (nullable!5577 (h!69258 (exprs!5429 lt!2251283))))))

(declare-fun b!5558327 () Bool)

(declare-fun e!3432580 () (InoxSet Context!9858))

(assert (=> b!5558327 (= e!3432582 e!3432580)))

(declare-fun c!973211 () Bool)

(assert (=> b!5558327 (= c!973211 ((_ is Cons!62810) (exprs!5429 lt!2251283)))))

(declare-fun d!1759124 () Bool)

(declare-fun c!973210 () Bool)

(assert (=> d!1759124 (= c!973210 e!3432581)))

(declare-fun res!2362457 () Bool)

(assert (=> d!1759124 (=> (not res!2362457) (not e!3432581))))

(assert (=> d!1759124 (= res!2362457 ((_ is Cons!62810) (exprs!5429 lt!2251283)))))

(assert (=> d!1759124 (= (derivationStepZipperUp!813 lt!2251283 (h!69260 s!2326)) e!3432582)))

(declare-fun b!5558328 () Bool)

(assert (=> b!5558328 (= e!3432580 ((as const (Array Context!9858 Bool)) false))))

(declare-fun b!5558329 () Bool)

(assert (=> b!5558329 (= e!3432580 call!414531)))

(declare-fun bm!414526 () Bool)

(assert (=> bm!414526 (= call!414531 (derivationStepZipperDown!887 (h!69258 (exprs!5429 lt!2251283)) (Context!9859 (t!376201 (exprs!5429 lt!2251283))) (h!69260 s!2326)))))

(assert (= (and d!1759124 res!2362457) b!5558326))

(assert (= (and d!1759124 c!973210) b!5558325))

(assert (= (and d!1759124 (not c!973210)) b!5558327))

(assert (= (and b!5558327 c!973211) b!5558329))

(assert (= (and b!5558327 (not c!973211)) b!5558328))

(assert (= (or b!5558325 b!5558329) bm!414526))

(declare-fun m!6549582 () Bool)

(assert (=> b!5558325 m!6549582))

(declare-fun m!6549584 () Bool)

(assert (=> b!5558326 m!6549584))

(declare-fun m!6549586 () Bool)

(assert (=> bm!414526 m!6549586))

(assert (=> b!5557721 d!1759124))

(declare-fun b!5558348 () Bool)

(declare-fun e!3432595 () Bool)

(assert (=> b!5558348 (= e!3432595 (matchR!7730 (regTwo!31602 r!7292) s!2326))))

(declare-fun b!5558349 () Bool)

(declare-fun e!3432596 () Option!15554)

(assert (=> b!5558349 (= e!3432596 (Some!15553 (tuple2!65285 Nil!62812 s!2326)))))

(declare-fun b!5558350 () Bool)

(declare-fun e!3432594 () Bool)

(declare-fun lt!2251365 () Option!15554)

(declare-fun ++!13782 (List!62936 List!62936) List!62936)

(declare-fun get!21622 (Option!15554) tuple2!65284)

(assert (=> b!5558350 (= e!3432594 (= (++!13782 (_1!35945 (get!21622 lt!2251365)) (_2!35945 (get!21622 lt!2251365))) s!2326))))

(declare-fun d!1759126 () Bool)

(declare-fun e!3432593 () Bool)

(assert (=> d!1759126 e!3432593))

(declare-fun res!2362471 () Bool)

(assert (=> d!1759126 (=> res!2362471 e!3432593)))

(assert (=> d!1759126 (= res!2362471 e!3432594)))

(declare-fun res!2362470 () Bool)

(assert (=> d!1759126 (=> (not res!2362470) (not e!3432594))))

(assert (=> d!1759126 (= res!2362470 (isDefined!12257 lt!2251365))))

(assert (=> d!1759126 (= lt!2251365 e!3432596)))

(declare-fun c!973216 () Bool)

(assert (=> d!1759126 (= c!973216 e!3432595)))

(declare-fun res!2362472 () Bool)

(assert (=> d!1759126 (=> (not res!2362472) (not e!3432595))))

(assert (=> d!1759126 (= res!2362472 (matchR!7730 (regOne!31602 r!7292) Nil!62812))))

(assert (=> d!1759126 (validRegex!7281 (regOne!31602 r!7292))))

(assert (=> d!1759126 (= (findConcatSeparation!1968 (regOne!31602 r!7292) (regTwo!31602 r!7292) Nil!62812 s!2326 s!2326) lt!2251365)))

(declare-fun b!5558351 () Bool)

(declare-fun e!3432597 () Option!15554)

(assert (=> b!5558351 (= e!3432597 None!15553)))

(declare-fun b!5558352 () Bool)

(declare-fun res!2362469 () Bool)

(assert (=> b!5558352 (=> (not res!2362469) (not e!3432594))))

(assert (=> b!5558352 (= res!2362469 (matchR!7730 (regOne!31602 r!7292) (_1!35945 (get!21622 lt!2251365))))))

(declare-fun b!5558353 () Bool)

(declare-fun lt!2251363 () Unit!155552)

(declare-fun lt!2251364 () Unit!155552)

(assert (=> b!5558353 (= lt!2251363 lt!2251364)))

(assert (=> b!5558353 (= (++!13782 (++!13782 Nil!62812 (Cons!62812 (h!69260 s!2326) Nil!62812)) (t!376203 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1951 (List!62936 C!31360 List!62936 List!62936) Unit!155552)

(assert (=> b!5558353 (= lt!2251364 (lemmaMoveElementToOtherListKeepsConcatEq!1951 Nil!62812 (h!69260 s!2326) (t!376203 s!2326) s!2326))))

(assert (=> b!5558353 (= e!3432597 (findConcatSeparation!1968 (regOne!31602 r!7292) (regTwo!31602 r!7292) (++!13782 Nil!62812 (Cons!62812 (h!69260 s!2326) Nil!62812)) (t!376203 s!2326) s!2326))))

(declare-fun b!5558354 () Bool)

(assert (=> b!5558354 (= e!3432593 (not (isDefined!12257 lt!2251365)))))

(declare-fun b!5558355 () Bool)

(assert (=> b!5558355 (= e!3432596 e!3432597)))

(declare-fun c!973217 () Bool)

(assert (=> b!5558355 (= c!973217 ((_ is Nil!62812) s!2326))))

(declare-fun b!5558356 () Bool)

(declare-fun res!2362468 () Bool)

(assert (=> b!5558356 (=> (not res!2362468) (not e!3432594))))

(assert (=> b!5558356 (= res!2362468 (matchR!7730 (regTwo!31602 r!7292) (_2!35945 (get!21622 lt!2251365))))))

(assert (= (and d!1759126 res!2362472) b!5558348))

(assert (= (and d!1759126 c!973216) b!5558349))

(assert (= (and d!1759126 (not c!973216)) b!5558355))

(assert (= (and b!5558355 c!973217) b!5558351))

(assert (= (and b!5558355 (not c!973217)) b!5558353))

(assert (= (and d!1759126 res!2362470) b!5558352))

(assert (= (and b!5558352 res!2362469) b!5558356))

(assert (= (and b!5558356 res!2362468) b!5558350))

(assert (= (and d!1759126 (not res!2362471)) b!5558354))

(declare-fun m!6549588 () Bool)

(assert (=> b!5558354 m!6549588))

(declare-fun m!6549590 () Bool)

(assert (=> b!5558352 m!6549590))

(declare-fun m!6549592 () Bool)

(assert (=> b!5558352 m!6549592))

(assert (=> b!5558356 m!6549590))

(declare-fun m!6549594 () Bool)

(assert (=> b!5558356 m!6549594))

(declare-fun m!6549596 () Bool)

(assert (=> b!5558353 m!6549596))

(assert (=> b!5558353 m!6549596))

(declare-fun m!6549598 () Bool)

(assert (=> b!5558353 m!6549598))

(declare-fun m!6549600 () Bool)

(assert (=> b!5558353 m!6549600))

(assert (=> b!5558353 m!6549596))

(declare-fun m!6549602 () Bool)

(assert (=> b!5558353 m!6549602))

(assert (=> d!1759126 m!6549588))

(declare-fun m!6549604 () Bool)

(assert (=> d!1759126 m!6549604))

(declare-fun m!6549606 () Bool)

(assert (=> d!1759126 m!6549606))

(assert (=> b!5558350 m!6549590))

(declare-fun m!6549608 () Bool)

(assert (=> b!5558350 m!6549608))

(declare-fun m!6549610 () Bool)

(assert (=> b!5558348 m!6549610))

(assert (=> b!5557710 d!1759126))

(declare-fun d!1759128 () Bool)

(declare-fun choose!42177 (Int) Bool)

(assert (=> d!1759128 (= (Exists!2645 lambda!298271) (choose!42177 lambda!298271))))

(declare-fun bs!1287060 () Bool)

(assert (= bs!1287060 d!1759128))

(declare-fun m!6549612 () Bool)

(assert (=> bs!1287060 m!6549612))

(assert (=> b!5557710 d!1759128))

(declare-fun d!1759130 () Bool)

(assert (=> d!1759130 (= (Exists!2645 lambda!298272) (choose!42177 lambda!298272))))

(declare-fun bs!1287061 () Bool)

(assert (= bs!1287061 d!1759130))

(declare-fun m!6549614 () Bool)

(assert (=> bs!1287061 m!6549614))

(assert (=> b!5557710 d!1759130))

(declare-fun bs!1287062 () Bool)

(declare-fun d!1759132 () Bool)

(assert (= bs!1287062 (and d!1759132 b!5557710)))

(declare-fun lambda!298323 () Int)

(assert (=> bs!1287062 (= lambda!298323 lambda!298271)))

(assert (=> bs!1287062 (not (= lambda!298323 lambda!298272))))

(declare-fun bs!1287063 () Bool)

(assert (= bs!1287063 (and d!1759132 b!5558059)))

(assert (=> bs!1287063 (not (= lambda!298323 lambda!298315))))

(declare-fun bs!1287064 () Bool)

(assert (= bs!1287064 (and d!1759132 b!5558062)))

(assert (=> bs!1287064 (not (= lambda!298323 lambda!298316))))

(assert (=> d!1759132 true))

(assert (=> d!1759132 true))

(assert (=> d!1759132 true))

(assert (=> d!1759132 (= (isDefined!12257 (findConcatSeparation!1968 (regOne!31602 r!7292) (regTwo!31602 r!7292) Nil!62812 s!2326 s!2326)) (Exists!2645 lambda!298323))))

(declare-fun lt!2251368 () Unit!155552)

(declare-fun choose!42178 (Regex!15545 Regex!15545 List!62936) Unit!155552)

(assert (=> d!1759132 (= lt!2251368 (choose!42178 (regOne!31602 r!7292) (regTwo!31602 r!7292) s!2326))))

(assert (=> d!1759132 (validRegex!7281 (regOne!31602 r!7292))))

(assert (=> d!1759132 (= (lemmaFindConcatSeparationEquivalentToExists!1732 (regOne!31602 r!7292) (regTwo!31602 r!7292) s!2326) lt!2251368)))

(declare-fun bs!1287065 () Bool)

(assert (= bs!1287065 d!1759132))

(assert (=> bs!1287065 m!6549238))

(assert (=> bs!1287065 m!6549606))

(assert (=> bs!1287065 m!6549238))

(assert (=> bs!1287065 m!6549240))

(declare-fun m!6549616 () Bool)

(assert (=> bs!1287065 m!6549616))

(declare-fun m!6549618 () Bool)

(assert (=> bs!1287065 m!6549618))

(assert (=> b!5557710 d!1759132))

(declare-fun bs!1287066 () Bool)

(declare-fun d!1759134 () Bool)

(assert (= bs!1287066 (and d!1759134 b!5558059)))

(declare-fun lambda!298328 () Int)

(assert (=> bs!1287066 (not (= lambda!298328 lambda!298315))))

(declare-fun bs!1287067 () Bool)

(assert (= bs!1287067 (and d!1759134 b!5557710)))

(assert (=> bs!1287067 (= lambda!298328 lambda!298271)))

(assert (=> bs!1287067 (not (= lambda!298328 lambda!298272))))

(declare-fun bs!1287068 () Bool)

(assert (= bs!1287068 (and d!1759134 d!1759132)))

(assert (=> bs!1287068 (= lambda!298328 lambda!298323)))

(declare-fun bs!1287069 () Bool)

(assert (= bs!1287069 (and d!1759134 b!5558062)))

(assert (=> bs!1287069 (not (= lambda!298328 lambda!298316))))

(assert (=> d!1759134 true))

(assert (=> d!1759134 true))

(assert (=> d!1759134 true))

(declare-fun lambda!298329 () Int)

(assert (=> bs!1287066 (not (= lambda!298329 lambda!298315))))

(declare-fun bs!1287070 () Bool)

(assert (= bs!1287070 d!1759134))

(assert (=> bs!1287070 (not (= lambda!298329 lambda!298328))))

(assert (=> bs!1287067 (not (= lambda!298329 lambda!298271))))

(assert (=> bs!1287067 (= lambda!298329 lambda!298272)))

(assert (=> bs!1287068 (not (= lambda!298329 lambda!298323))))

(assert (=> bs!1287069 (= lambda!298329 lambda!298316)))

(assert (=> d!1759134 true))

(assert (=> d!1759134 true))

(assert (=> d!1759134 true))

(assert (=> d!1759134 (= (Exists!2645 lambda!298328) (Exists!2645 lambda!298329))))

(declare-fun lt!2251371 () Unit!155552)

(declare-fun choose!42179 (Regex!15545 Regex!15545 List!62936) Unit!155552)

(assert (=> d!1759134 (= lt!2251371 (choose!42179 (regOne!31602 r!7292) (regTwo!31602 r!7292) s!2326))))

(assert (=> d!1759134 (validRegex!7281 (regOne!31602 r!7292))))

(assert (=> d!1759134 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1274 (regOne!31602 r!7292) (regTwo!31602 r!7292) s!2326) lt!2251371)))

(declare-fun m!6549620 () Bool)

(assert (=> bs!1287070 m!6549620))

(declare-fun m!6549622 () Bool)

(assert (=> bs!1287070 m!6549622))

(declare-fun m!6549624 () Bool)

(assert (=> bs!1287070 m!6549624))

(assert (=> bs!1287070 m!6549606))

(assert (=> b!5557710 d!1759134))

(declare-fun d!1759136 () Bool)

(declare-fun isEmpty!34613 (Option!15554) Bool)

(assert (=> d!1759136 (= (isDefined!12257 (findConcatSeparation!1968 (regOne!31602 r!7292) (regTwo!31602 r!7292) Nil!62812 s!2326 s!2326)) (not (isEmpty!34613 (findConcatSeparation!1968 (regOne!31602 r!7292) (regTwo!31602 r!7292) Nil!62812 s!2326 s!2326))))))

(declare-fun bs!1287071 () Bool)

(assert (= bs!1287071 d!1759136))

(assert (=> bs!1287071 m!6549238))

(declare-fun m!6549626 () Bool)

(assert (=> bs!1287071 m!6549626))

(assert (=> b!5557710 d!1759136))

(declare-fun b!5558373 () Bool)

(declare-fun e!3432606 () Bool)

(declare-fun tp!1533408 () Bool)

(assert (=> b!5558373 (= e!3432606 (and tp_is_empty!40343 tp!1533408))))

(assert (=> b!5557714 (= tp!1533344 e!3432606)))

(assert (= (and b!5557714 ((_ is Cons!62812) (t!376203 s!2326))) b!5558373))

(declare-fun b!5558381 () Bool)

(declare-fun e!3432612 () Bool)

(declare-fun tp!1533413 () Bool)

(assert (=> b!5558381 (= e!3432612 tp!1533413)))

(declare-fun e!3432611 () Bool)

(declare-fun tp!1533414 () Bool)

(declare-fun b!5558380 () Bool)

(assert (=> b!5558380 (= e!3432611 (and (inv!82109 (h!69259 (t!376202 zl!343))) e!3432612 tp!1533414))))

(assert (=> b!5557718 (= tp!1533338 e!3432611)))

(assert (= b!5558380 b!5558381))

(assert (= (and b!5557718 ((_ is Cons!62811) (t!376202 zl!343))) b!5558380))

(declare-fun m!6549628 () Bool)

(assert (=> b!5558380 m!6549628))

(declare-fun condSetEmpty!37007 () Bool)

(assert (=> setNonEmpty!37001 (= condSetEmpty!37007 (= setRest!37001 ((as const (Array Context!9858 Bool)) false)))))

(declare-fun setRes!37007 () Bool)

(assert (=> setNonEmpty!37001 (= tp!1533343 setRes!37007)))

(declare-fun setIsEmpty!37007 () Bool)

(assert (=> setIsEmpty!37007 setRes!37007))

(declare-fun setNonEmpty!37007 () Bool)

(declare-fun setElem!37007 () Context!9858)

(declare-fun tp!1533419 () Bool)

(declare-fun e!3432615 () Bool)

(assert (=> setNonEmpty!37007 (= setRes!37007 (and tp!1533419 (inv!82109 setElem!37007) e!3432615))))

(declare-fun setRest!37007 () (InoxSet Context!9858))

(assert (=> setNonEmpty!37007 (= setRest!37001 ((_ map or) (store ((as const (Array Context!9858 Bool)) false) setElem!37007 true) setRest!37007))))

(declare-fun b!5558386 () Bool)

(declare-fun tp!1533420 () Bool)

(assert (=> b!5558386 (= e!3432615 tp!1533420)))

(assert (= (and setNonEmpty!37001 condSetEmpty!37007) setIsEmpty!37007))

(assert (= (and setNonEmpty!37001 (not condSetEmpty!37007)) setNonEmpty!37007))

(assert (= setNonEmpty!37007 b!5558386))

(declare-fun m!6549630 () Bool)

(assert (=> setNonEmpty!37007 m!6549630))

(declare-fun b!5558400 () Bool)

(declare-fun e!3432618 () Bool)

(declare-fun tp!1533434 () Bool)

(declare-fun tp!1533432 () Bool)

(assert (=> b!5558400 (= e!3432618 (and tp!1533434 tp!1533432))))

(declare-fun b!5558399 () Bool)

(declare-fun tp!1533435 () Bool)

(assert (=> b!5558399 (= e!3432618 tp!1533435)))

(declare-fun b!5558398 () Bool)

(declare-fun tp!1533431 () Bool)

(declare-fun tp!1533433 () Bool)

(assert (=> b!5558398 (= e!3432618 (and tp!1533431 tp!1533433))))

(assert (=> b!5557717 (= tp!1533339 e!3432618)))

(declare-fun b!5558397 () Bool)

(assert (=> b!5558397 (= e!3432618 tp_is_empty!40343)))

(assert (= (and b!5557717 ((_ is ElementMatch!15545) (reg!15874 r!7292))) b!5558397))

(assert (= (and b!5557717 ((_ is Concat!24390) (reg!15874 r!7292))) b!5558398))

(assert (= (and b!5557717 ((_ is Star!15545) (reg!15874 r!7292))) b!5558399))

(assert (= (and b!5557717 ((_ is Union!15545) (reg!15874 r!7292))) b!5558400))

(declare-fun b!5558404 () Bool)

(declare-fun e!3432619 () Bool)

(declare-fun tp!1533439 () Bool)

(declare-fun tp!1533437 () Bool)

(assert (=> b!5558404 (= e!3432619 (and tp!1533439 tp!1533437))))

(declare-fun b!5558403 () Bool)

(declare-fun tp!1533440 () Bool)

(assert (=> b!5558403 (= e!3432619 tp!1533440)))

(declare-fun b!5558402 () Bool)

(declare-fun tp!1533436 () Bool)

(declare-fun tp!1533438 () Bool)

(assert (=> b!5558402 (= e!3432619 (and tp!1533436 tp!1533438))))

(assert (=> b!5557723 (= tp!1533341 e!3432619)))

(declare-fun b!5558401 () Bool)

(assert (=> b!5558401 (= e!3432619 tp_is_empty!40343)))

(assert (= (and b!5557723 ((_ is ElementMatch!15545) (regOne!31603 r!7292))) b!5558401))

(assert (= (and b!5557723 ((_ is Concat!24390) (regOne!31603 r!7292))) b!5558402))

(assert (= (and b!5557723 ((_ is Star!15545) (regOne!31603 r!7292))) b!5558403))

(assert (= (and b!5557723 ((_ is Union!15545) (regOne!31603 r!7292))) b!5558404))

(declare-fun b!5558408 () Bool)

(declare-fun e!3432620 () Bool)

(declare-fun tp!1533444 () Bool)

(declare-fun tp!1533442 () Bool)

(assert (=> b!5558408 (= e!3432620 (and tp!1533444 tp!1533442))))

(declare-fun b!5558407 () Bool)

(declare-fun tp!1533445 () Bool)

(assert (=> b!5558407 (= e!3432620 tp!1533445)))

(declare-fun b!5558406 () Bool)

(declare-fun tp!1533441 () Bool)

(declare-fun tp!1533443 () Bool)

(assert (=> b!5558406 (= e!3432620 (and tp!1533441 tp!1533443))))

(assert (=> b!5557723 (= tp!1533346 e!3432620)))

(declare-fun b!5558405 () Bool)

(assert (=> b!5558405 (= e!3432620 tp_is_empty!40343)))

(assert (= (and b!5557723 ((_ is ElementMatch!15545) (regTwo!31603 r!7292))) b!5558405))

(assert (= (and b!5557723 ((_ is Concat!24390) (regTwo!31603 r!7292))) b!5558406))

(assert (= (and b!5557723 ((_ is Star!15545) (regTwo!31603 r!7292))) b!5558407))

(assert (= (and b!5557723 ((_ is Union!15545) (regTwo!31603 r!7292))) b!5558408))

(declare-fun b!5558413 () Bool)

(declare-fun e!3432623 () Bool)

(declare-fun tp!1533450 () Bool)

(declare-fun tp!1533451 () Bool)

(assert (=> b!5558413 (= e!3432623 (and tp!1533450 tp!1533451))))

(assert (=> b!5557724 (= tp!1533345 e!3432623)))

(assert (= (and b!5557724 ((_ is Cons!62810) (exprs!5429 (h!69259 zl!343)))) b!5558413))

(declare-fun b!5558414 () Bool)

(declare-fun e!3432624 () Bool)

(declare-fun tp!1533452 () Bool)

(declare-fun tp!1533453 () Bool)

(assert (=> b!5558414 (= e!3432624 (and tp!1533452 tp!1533453))))

(assert (=> b!5557725 (= tp!1533347 e!3432624)))

(assert (= (and b!5557725 ((_ is Cons!62810) (exprs!5429 setElem!37001))) b!5558414))

(declare-fun b!5558418 () Bool)

(declare-fun e!3432625 () Bool)

(declare-fun tp!1533457 () Bool)

(declare-fun tp!1533455 () Bool)

(assert (=> b!5558418 (= e!3432625 (and tp!1533457 tp!1533455))))

(declare-fun b!5558417 () Bool)

(declare-fun tp!1533458 () Bool)

(assert (=> b!5558417 (= e!3432625 tp!1533458)))

(declare-fun b!5558416 () Bool)

(declare-fun tp!1533454 () Bool)

(declare-fun tp!1533456 () Bool)

(assert (=> b!5558416 (= e!3432625 (and tp!1533454 tp!1533456))))

(assert (=> b!5557711 (= tp!1533340 e!3432625)))

(declare-fun b!5558415 () Bool)

(assert (=> b!5558415 (= e!3432625 tp_is_empty!40343)))

(assert (= (and b!5557711 ((_ is ElementMatch!15545) (regOne!31602 r!7292))) b!5558415))

(assert (= (and b!5557711 ((_ is Concat!24390) (regOne!31602 r!7292))) b!5558416))

(assert (= (and b!5557711 ((_ is Star!15545) (regOne!31602 r!7292))) b!5558417))

(assert (= (and b!5557711 ((_ is Union!15545) (regOne!31602 r!7292))) b!5558418))

(declare-fun b!5558422 () Bool)

(declare-fun e!3432626 () Bool)

(declare-fun tp!1533462 () Bool)

(declare-fun tp!1533460 () Bool)

(assert (=> b!5558422 (= e!3432626 (and tp!1533462 tp!1533460))))

(declare-fun b!5558421 () Bool)

(declare-fun tp!1533463 () Bool)

(assert (=> b!5558421 (= e!3432626 tp!1533463)))

(declare-fun b!5558420 () Bool)

(declare-fun tp!1533459 () Bool)

(declare-fun tp!1533461 () Bool)

(assert (=> b!5558420 (= e!3432626 (and tp!1533459 tp!1533461))))

(assert (=> b!5557711 (= tp!1533342 e!3432626)))

(declare-fun b!5558419 () Bool)

(assert (=> b!5558419 (= e!3432626 tp_is_empty!40343)))

(assert (= (and b!5557711 ((_ is ElementMatch!15545) (regTwo!31602 r!7292))) b!5558419))

(assert (= (and b!5557711 ((_ is Concat!24390) (regTwo!31602 r!7292))) b!5558420))

(assert (= (and b!5557711 ((_ is Star!15545) (regTwo!31602 r!7292))) b!5558421))

(assert (= (and b!5557711 ((_ is Union!15545) (regTwo!31602 r!7292))) b!5558422))

(declare-fun b_lambda!211041 () Bool)

(assert (= b_lambda!211039 (or b!5557721 b_lambda!211041)))

(declare-fun bs!1287072 () Bool)

(declare-fun d!1759138 () Bool)

(assert (= bs!1287072 (and d!1759138 b!5557721)))

(assert (=> bs!1287072 (= (dynLambda!24566 lambda!298273 (h!69259 zl!343)) (derivationStepZipperUp!813 (h!69259 zl!343) (h!69260 s!2326)))))

(assert (=> bs!1287072 m!6549222))

(assert (=> d!1759118 d!1759138))

(check-sat (not bm!414521) (not bm!414520) (not b!5558381) (not b!5558399) (not d!1759136) (not b!5558380) (not b!5558240) (not b!5557886) (not b!5558356) (not b!5558234) (not b!5558265) (not b!5558223) (not b!5558353) (not d!1759098) (not b!5558224) tp_is_empty!40343 (not b!5557791) (not b!5558407) (not b!5557967) (not d!1759046) (not d!1759064) (not d!1759088) (not b!5558270) (not b!5558325) (not bm!414516) (not d!1759104) (not d!1759110) (not b!5558404) (not d!1759100) (not b!5558398) (not d!1759038) (not d!1759132) (not d!1759114) (not b!5558402) (not b!5558400) (not d!1759106) (not b!5558350) (not b!5557885) (not b!5558215) (not d!1759040) (not b!5558373) (not d!1759134) (not b!5558266) (not b!5558406) (not b!5558057) (not b!5558352) (not b!5558408) (not b!5558420) (not b!5558233) (not b!5558421) (not b!5558403) (not b!5558354) (not b!5558418) (not b!5558422) (not d!1759102) (not b!5557887) (not b!5558262) (not b!5557910) (not setNonEmpty!37007) (not b!5557882) (not bm!414524) (not d!1759130) (not d!1759108) (not b!5558321) (not b!5557881) (not d!1759052) (not b!5558416) (not bm!414476) (not b!5558326) (not b!5558216) (not b!5558225) (not bm!414474) (not b!5557880) (not bm!414525) (not b!5558417) (not b!5558414) (not b!5558348) (not bm!414487) (not d!1759128) (not b!5558413) (not b!5558241) (not bm!414488) (not b!5558239) (not b!5558053) (not d!1759118) (not b!5558264) (not b!5558237) (not b!5557879) (not b!5558320) (not b!5558295) (not b!5558315) (not b!5558386) (not b_lambda!211041) (not d!1759126) (not b!5558268) (not b!5558316) (not d!1759120) (not bs!1287072) (not b!5558238) (not b!5558269) (not bm!414526) (not bm!414503) (not b!5558218))
(check-sat)
